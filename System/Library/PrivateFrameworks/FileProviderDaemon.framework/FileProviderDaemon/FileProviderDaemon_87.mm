void sub_1CF915D74(void *a1, int a2, void (*a3)(void), objc_class *a4)
{
  v376 = a3;
  LODWORD(v370) = a2;
  v6 = sub_1CF9E63A8();
  v349 = *(v6 - 8);
  v350 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v348 = &v347 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E53C8();
  v367 = *(v8 - 8);
  v368 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v366 = &v347 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6388();
  v362 = *(v10 - 8);
  v363 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v358 = (&v347 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v359 = &v347 - v13;
  v14 = sub_1CF9E6498();
  v360 = *(v14 - 8);
  v361 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v357 = &v347 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v347 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v347 - v20;
  v22 = sub_1CF9E63D8();
  v355 = *(v22 - 8);
  v356 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v347 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v351 = &v347 - v26;
  v27 = sub_1CF9E6448();
  v364 = *(v27 - 8);
  v365 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v347 = &v347 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v352 = &v347 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v353 = &v347 - v32;
  v33 = sub_1CF9E73D8();
  v354 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v347 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v371 = &v347 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5268();
  v39 = *(v38 - 1);
  v373 = v38;
  v374 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v372 = &v347 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413[0] = a1;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v394 = v410;
    v395 = v411;
    v390 = v407;
    v391 = v408;
    v392 = *v409;
    v393 = *&v409[16];
    v388 = aBlock;
    v389 = v406;
    v402 = v410;
    v403 = v411;
    v399 = v407;
    v400 = v408;
    v401[0] = *v409;
    v401[1] = *&v409[16];
    v396 = v412;
    v404 = v412;
    v397 = aBlock;
    v398 = v406;
    if (sub_1CF2B971C(&v397))
    {
      sub_1CEFCCC44(&v388, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v60 = v59;
    v61 = *v59;
    v62 = *(v59 + 8);
    v63 = *(v59 + 112);

    v64 = sub_1CEFCCC44(v60 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v62 != 2 || v61)
    {
      v66 = v376;
      if (v62 == 2 && v61 == 1)
      {
        v65 = *MEMORY[0x1E6967280];
        if (v63)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *&v379 = 0x2F73662F70665F5FLL;
        *(&v379 + 1) = 0xE800000000000000;
        v377 = v61;
        v378 = v62;
        v111 = VFSItemID.description.getter(v64);
        v113 = v112;
        MEMORY[0x1D3868CC0](v111);
        v113, v114, v115, v116, v117, v118, v119, v120;
        v121 = *(&v379 + 1);
        v65 = sub_1CF9E6888();
        v121, v122, v123, v124, v125, v126, v127, v128;
        if (v63)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v65 = *MEMORY[0x1E6967258];
      v66 = v376;
      if (v63)
      {
LABEL_16:
        v67 = v63;
LABEL_53:
        v129 = v63;
        (v66)(v67);

        v108 = v413[0];
        goto LABEL_72;
      }
    }

    v67 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_53;
  }

LABEL_4:
  v375 = a4;

  *&v388 = a1;
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v401 + 9) = *&v409[9];
    v400 = v408;
    v401[0] = *v409;
    v398 = v406;
    v399 = v407;
    v397 = aBlock;
    if (!v409[24])
    {
      v68 = *(&v401[0] + 1);
      v69 = *&v401[0];
      v70 = *(&v400 + 1);
      v71 = v400;
      v72 = *(&v399 + 1);
      v73 = v399;
      v74 = *(&v398 + 1);
      v75 = v398;
      v76 = *(&v397 + 1);
      v374 = v397;

      sub_1CF1D56D0(v76, v75, v74, v73, v72, v71, v70, v69);
      if (v68)
      {
        v77 = v68;
        v78 = v376;
        v79 = v374;
      }

      else
      {
        v109 = objc_opt_self();
        v79 = v374;
        v77 = [v109 fileProviderErrorForNonExistentItemWithIdentifier_];
        v78 = v376;
      }

      v110 = v68;
      (v78)(v77);

      v108 = v388;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v397, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v379 = a1;
  v44 = a1;
  if (swift_dynamicCast())
  {
    v394 = v410;
    v395 = v411;
    v390 = v407;
    v391 = v408;
    v392 = *v409;
    v393 = *&v409[16];
    v388 = aBlock;
    v389 = v406;
    v402 = v410;
    v403 = v411;
    v399 = v407;
    v400 = v408;
    v401[0] = *v409;
    v401[1] = *&v409[16];
    v396 = v412;
    v404 = v412;
    v397 = aBlock;
    v398 = v406;
    v45 = sub_1CF2B971C(&v397);
    switch(v45)
    {
      case 5:
        nullsub_1();
        v87 = v379;
LABEL_30:

        v89 = v376;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v81 = *v80;
        v82 = *(v80 + 8);
        sub_1CEFCCC44(&v388, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v370)
        {
          LODWORD(v377) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v83 = v366;
          v84 = v368;
          sub_1CF9E57D8();
          v85 = sub_1CF9E53A8();
          v86 = v367;
LABEL_47:
          (v86[1].isa)(v83, v84);
          (v376)(v85);

          v108 = v379;
LABEL_72:

          return;
        }

        LODWORD(v372) = v82;
        v373 = v81;
        v130 = v369;
        v131 = *(*(*(v369 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v132 = swift_dynamicCastClassUnconditional();
        v133 = swift_allocObject();
        v134 = v375;
        v133[2].isa = v376;
        v133[3].isa = v134;
        v374 = v133;
        v133[4].isa = v130;
        v370 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v371 = v132;
        v135 = *(v132 + 216);
        v377 = MEMORY[0x1E69E7CC0];
        v368 = sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v376 = v131;

        v136 = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
        sub_1CF9E77B8();
        v137 = sub_1CF9E73E8();

        (*(v354 + 8))(v35, v33);
        qos_class_self();
        sub_1CF9E63B8();
        v139 = v355;
        v138 = v356;
        v140 = *(v355 + 48);
        if (v140(v18, 1, v356) == 1)
        {
          (*(v139 + 104))(v24, *MEMORY[0x1E69E7FA0], v138);
          if (v140(v18, 1, v138) != 1)
          {
            sub_1CEFCCC44(v18, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v139 + 32))(v24, v18, v138);
        }

        ObjectType = swift_getObjectType();
        v156 = v352;
        sub_1CF9E6428();
        v157 = swift_allocObject();
        v158 = v373;
        v159 = v374;
        *(v157 + 16) = v371;
        *(v157 + 24) = v158;
        *(v157 + 32) = v372;
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

        sub_1CEFD5828(0, v156, sub_1CF72A328, v157, ObjectType);

        (*(v364 + 8))(v156, v365);
        v160 = v357;
        sub_1CF9E6478();
        v161 = v359;
        sub_1CEFD5B64(v359);
        v162 = v358;
        sub_1CEFD5BD8(v358);
        MEMORY[0x1D3869770](v160, v161, v162, ObjectType);
        v163 = *(v362 + 8);
        v164 = v162;
        v165 = v363;
        v163(v164, v363);
        v163(v161, v165);
        (*(v360 + 8))(v160, v361);
        goto LABEL_66;
      case 1:
        nullsub_1();
        v47 = *v46;
        v48 = *(v46 + 8);
        v49 = *(v46 + 24);
        v50 = *(v46 + 48);
        v51 = *(v46 + 56);

        sub_1CF480620(v50, v51);
        v49, v52, v53, v54, v55, v56, v57, v58;
        if (v370)
        {
          sub_1CF9E5128();
LABEL_46:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v83 = v372;
          v84 = v373;
          sub_1CF9E57D8();
          v85 = sub_1CF9E50D8();
          v86 = v374;
          goto LABEL_47;
        }

        LODWORD(v372) = v48;
        v373 = v47;
        v141 = v369;
        v142 = *(*(*(v369 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v143 = swift_dynamicCastClassUnconditional();
        v144 = swift_allocObject();
        v145 = v375;
        v144[2].isa = v376;
        v144[3].isa = v145;
        v374 = v144;
        v144[4].isa = v141;
        v370 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v371 = v143;
        v146 = *(v143 + 216);
        v377 = MEMORY[0x1E69E7CC0];
        sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v376 = v142;

        v147 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
        sub_1CF9E77B8();
        v148 = sub_1CF9E73E8();

        (*(v354 + 8))(v35, v33);
        qos_class_self();
        sub_1CF9E63B8();
        v150 = v355;
        v149 = v356;
        v151 = *(v355 + 48);
        if (v151(v21, 1, v356) == 1)
        {
          (*(v150 + 104))(v351, *MEMORY[0x1E69E7FA0], v149);
          if (v151(v21, 1, v149) != 1)
          {
            sub_1CEFCCC44(v21, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v150 + 32))(v351, v21, v149);
        }

        v166 = swift_getObjectType();
        v167 = v353;
        sub_1CF9E6428();
        v168 = swift_allocObject();
        v169 = v373;
        v170 = v374;
        *(v168 + 16) = v371;
        *(v168 + 24) = v169;
        *(v168 + 32) = v372;
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

        (*(v364 + 8))(v167, v365);
        v171 = v357;
        sub_1CF9E6478();
        v172 = v359;
        sub_1CEFD5B64(v359);
        v173 = v358;
        sub_1CEFD5BD8(v358);
        MEMORY[0x1D3869770](v171, v172, v173, v166);
        v174 = *(v362 + 8);
        v175 = v173;
        v176 = v363;
        v174(v175, v363);
        v174(v172, v176);
        (*(v360 + 8))(v171, v361);
LABEL_66:
        sub_1CF9E7448();

        swift_unknownObjectRelease();
        v108 = v379;
        goto LABEL_72;
    }

    sub_1CEFCCC44(&v388, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v388 = a1;
  v88 = a1;
  if (swift_dynamicCast())
  {
    *(v401 + 9) = *&v409[9];
    v399 = v407;
    v400 = v408;
    v401[0] = *v409;
    v397 = aBlock;
    v398 = v406;
    if (v409[24] == 5)
    {
      v87 = v388;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v397, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v93 = a1;
  if (swift_dynamicCast())
  {
    if (v397 <= 2u)
    {
      v89 = v376;
      if (v397 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v91 = v372;
      v90 = v373;
      sub_1CF9E57D8();
      v92 = sub_1CF9E50D8();
      (v374[1].isa)(v91, v90);
      (v89)(v92);

      return;
    }

    v89 = v376;
    if (v397 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v105 = v372;
    v104 = v373;
    sub_1CF9E57D8();
    v106 = sub_1CF9E50D8();
    (v374[1].isa)(v105, v104);
    (v89)(v106);
LABEL_71:

    v108 = aBlock;
    goto LABEL_72;
  }

  *&v397 = a1;
  v94 = a1;
  if (swift_dynamicCast())
  {
    if ((v406 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v406);
      LODWORD(v388) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v152 = v366;
      v153 = v368;
      sub_1CF9E57D8();
      v154 = sub_1CF9E53A8();
      (*(v367 + 8))(v152, v153);
      (v376)(v154);

      v108 = v397;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v397 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1CF9FA450;
    *(v95 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v95 + 40) = v96;
    v97 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v98 = FPLocv();

    v99 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v101 = v100;

    *(v95 + 72) = MEMORY[0x1E69E6158];
    *(v95 + 48) = v99;
    *(v95 + 56) = v101;
    sub_1CF4E04E8(v95);
    swift_setDeallocating();
    sub_1CEFCCC44(v95 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF927324(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v102 = aBlock;
    v103 = aBlock;
LABEL_84:
    (v376)(v103);

    return;
  }

  *&v379 = a1;
  v107 = a1;
  if (swift_dynamicCast())
  {
    v394 = v410;
    v395 = v411;
    v390 = v407;
    v391 = v408;
    v392 = *v409;
    v393 = *&v409[16];
    v388 = aBlock;
    v389 = v406;
    v402 = v410;
    v403 = v411;
    v399 = v407;
    v400 = v408;
    v401[0] = *v409;
    v401[1] = *&v409[16];
    v396 = v412;
    v404 = v412;
    v397 = aBlock;
    v398 = v406;
    if (sub_1CF2B971C(&v397) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_46;
    }

    sub_1CEFCCC44(&v388, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v177 = a1;
  if (swift_dynamicCast())
  {
    v178 = FPDomainUnavailableError();
    if (!v178)
    {
LABEL_119:
      __break(1u);
LABEL_120:
      MEMORY[0x1EEE9AC00](v178);
      *(&v347 - 2) = v42;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v347 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v106 = v178;
    v376();
    goto LABEL_71;
  }

  v377 = a1;
  v179 = a1;
  if (swift_dynamicCast())
  {
    v394 = v410;
    v395 = v411;
    v390 = v407;
    v391 = v408;
    v392 = *v409;
    v393 = *&v409[16];
    v388 = aBlock;
    v389 = v406;
    v402 = v410;
    v403 = v411;
    v399 = v407;
    v400 = v408;
    v401[0] = *v409;
    v401[1] = *&v409[16];
    v396 = v412;
    v404 = v412;
    v397 = aBlock;
    v398 = v406;
    if (sub_1CF2B971C(&v397) == 10)
    {
      nullsub_1();
      v181 = *(v180 + 16);
      if (!v181)
      {
        LODWORD(v379) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v182 = v366;
        v183 = v368;
        sub_1CF9E57D8();
        v181 = sub_1CF9E53A8();
        (*(v367 + 8))(v182, v183);
      }

      v184 = v376;
      v385 = v394;
      v386 = v395;
      v387 = v396;
      v381 = v390;
      v382 = v391;
      v383 = v392;
      v384 = v393;
      v379 = v388;
      v380 = v389;
      nullsub_1();
      v186 = *(v185 + 16);
      (v184)(v181);
      sub_1CEFCCC44(&v388, &unk_1EC4BE320, &unk_1CFA08B50);

      v108 = v377;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v388, &unk_1EC4BE320, &unk_1CFA08B50);
    v188 = v377;
    goto LABEL_81;
  }

  *&v388 = a1;
  v187 = a1;
  if (swift_dynamicCast())
  {
    v399 = v407;
    v400 = v408;
    v401[0] = *v409;
    *(v401 + 9) = *&v409[9];
    v397 = aBlock;
    v398 = v406;
    sub_1CEFCCC44(&v397, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_83:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v192 = v372;
    v191 = v373;
    sub_1CF9E57D8();
    v102 = sub_1CF9E50D8();
    (v374[1].isa)(v192, v191);
    v103 = v102;
    goto LABEL_84;
  }

  *&aBlock = a1;
  v189 = a1;
  v190 = swift_dynamicCast();

  if (v190)
  {
    goto LABEL_83;
  }

  *&v397 = a1;
  v193 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v406, *(&v406 + 1), v407, v194, v195, v196);
    v188 = v397;
LABEL_81:

    goto LABEL_83;
  }

  *&v397 = a1;
  v197 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v406, SBYTE8(v406));
    v188 = v397;
    goto LABEL_81;
  }

  *&v397 = a1;
  v198 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    v188 = v397;
    goto LABEL_81;
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
LABEL_97:
    v238, v220, v221, v222, v223, v224, v225, v226;
    goto LABEL_98;
  }

  v211 = sub_1CEFE4328(v202, v203);
  v213 = v212;
  v210, v212, v214, v215, v216, v217, v218, v219;
  if ((v213 & 1) == 0)
  {
    v238 = v201;
    goto LABEL_97;
  }

  sub_1CEFD1104(*v201[1].tester + 32 * v211, &aBlock);
  v201, v227, v228, v229, v230, v231, v232, v233;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v234 = v397;
    v235 = v375;

    v236 = v199;
    v237 = v234;
    sub_1CF7725F0(v237, v370 & 1, v369, v236, v376, v235);

    return;
  }

LABEL_98:
  v239 = swift_allocObject();
  v240 = [v199 userInfo];
  v42 = sub_1CF9E6638();

  v241 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v249 = v242;
  if (!*v42->tree)
  {
    v42, v242, v243, v244, v245, v246, v247, v248;
    v283 = v249;
LABEL_114:
    v283, v259, v260, v261, v262, v263, v264, v265;
    goto LABEL_115;
  }

  v250 = sub_1CEFE4328(v241, v242);
  v252 = v251;
  v249, v251, v253, v254, v255, v256, v257, v258;
  if ((v252 & 1) == 0)
  {
    v283 = v42;
    goto LABEL_114;
  }

  sub_1CEFD1104(*v42[1].tester + 32 * v250, &aBlock);
  v42, v266, v267, v268, v269, v270, v271, v272;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_115:
    v284 = v376;
    swift_deallocUninitializedObject();
    (v284)(a1);

    return;
  }

  v239[2] = v397;
  v374 = dispatch_group_create();
  v273 = v239[2];
  if (v273 >> 62)
  {
    goto LABEL_117;
  }

  v274 = *((v273 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v275 = v369;
  if (!v274)
  {
    goto LABEL_123;
  }

  do
  {
    v276 = 0;
    while (1)
    {
      v42 = v374;
      v178 = objc_sync_enter(v42);
      if (v178)
      {
        goto LABEL_120;
      }

      swift_beginAccess();
      v277 = v239[2];
      if ((v277 & 0xC000000000000001) != 0)
      {
        v278 = MEMORY[0x1D3869C30](v276);
        goto LABEL_108;
      }

      if (v276 >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v278 = *(v277 + 8 * v276 + 32);
LABEL_108:
      v279 = v278;
      swift_endAccess();
      v280 = objc_sync_exit(v42);
      if (v280)
      {
        MEMORY[0x1EEE9AC00](v280);
        *(&v347 - 2) = v42;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v347 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v42);
      v281 = v42;

      v282 = v279;
      sub_1CF774BF8(v282, v370 & 1, v275, v281, v239, v276);

      if (v274 == ++v276)
      {
        goto LABEL_123;
      }
    }

    __break(1u);
LABEL_117:
    v178 = sub_1CF9E7818();
    if (v178 < 0)
    {
      __break(1u);
      goto LABEL_119;
    }

    v274 = v178;
    v275 = v369;
  }

  while (v178);
LABEL_123:
  if (v370)
  {
    v285 = [v199 userInfo];
    v286 = sub_1CF9E6638();

    v287 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v289 = v288;
    swift_beginAccess();
    v290 = v239[2];
    *(&v406 + 1) = v373;
    *&aBlock = v290;
    sub_1CEFE9EB8(&aBlock, &v397);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v379 = v286;
    sub_1CF1D154C(&v397, v287, v289, isUniquelyReferenced_nonNull_native);
    v289, v292, v293, v294, v295, v296, v297, v298;
    v299 = [v199 domain];
    if (!v299)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v301 = v300;
      v299 = sub_1CF9E6888();
      v301, v302, v303, v304, v305, v306, v307, v308;
    }

    v309 = [v199 code];
    v310 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v311 = sub_1CF9E6618();

    v312 = [v310 initWithDomain:v299 code:v309 userInfo:v311];

    (v376)(v312);
  }

  else
  {
    v313 = *(*(v369 + 16) + 64);
    v314 = swift_allocObject();
    v314[2] = v199;
    v314[3] = v239;
    v314[4] = v376;
    v314[5] = v375;

    v315 = v313;
    v376 = v199;

    v316 = fpfs_current_log();
    v375 = fpfs_adopt_log();
    v317 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v318;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v319 = sub_1CF9E7988();
    v321 = v320;
    MEMORY[0x1D3868CC0](v319);
    v321, v322, v323, v324, v325, v326, v327, v328;
    v329 = *(&aBlock + 1);
    sub_1CF9E6978();
    v329, v330, v331, v332, v333, v334, v335, v336;
    v337 = __fp_log_fork();

    *(v317 + 16) = v337;
    v338 = swift_allocObject();
    *(v338 + 16) = v316;
    *(v338 + 24) = v317;
    v372 = v317;
    *(v338 + 32) = v315;
    *(v338 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v338 + 48) = 48;
    *(v338 + 56) = 2;
    *(v338 + 64) = sub_1CF77E684;
    *(v338 + 72) = v314;
    *&v407 = sub_1CF2B9F54;
    *(&v407 + 1) = v338;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v406 = sub_1CEFCA444;
    *(&v406 + 1) = &block_descriptor_798;
    v339 = _Block_copy(&aBlock);
    v371 = v315;
    v373 = v316;

    v340 = v347;
    sub_1CF9E63F8();
    *&v397 = MEMORY[0x1E69E7CC0];
    sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v341 = v348;
    v342 = v350;
    sub_1CF9E77B8();
    v343 = v371;
    v344 = v374;
    sub_1CF9E7308();
    _Block_release(v339);
    (*(v349 + 8))(v341, v342);
    (*(v364 + 8))(v340, v365);

    v345 = v375;
    v346 = fpfs_adopt_log();
  }
}

void sub_1CF9183B0(void *a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;

      v9 = a1;
      sub_1CF77A9C8(a1, 0, v8, a2, a3);
    }

    else
    {
      v10 = a1;
      v11 = FPDomainUnavailableError();
      (a2)();
    }
  }

  else
  {
    (a2)(0, a2, a3, a4);
  }
}

void sub_1CF9184DC(uint64_t a1, void *a2, void (*a3)(uint64_t *, id), uint64_t a4, uint64_t a5)
{
  v13 = a1;
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v9 = swift_allocObject();
      *(v9 + 2) = a3;
      *(v9 + 3) = a4;
      *(v9 + 4) = a1;
      v10 = a2;

      sub_1CF915D74(a2, 0, sub_1CF928300, v9);
    }

    else
    {
      v11 = a2;
      v12 = FPDomainUnavailableError();
      a3(&v13, v12);
    }
  }

  else
  {
    (a3)(&v13, 0, a3, a4, a5);
  }
}

void sub_1CF918630(void *a1, void *a2, void (*a3)(void **, id), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v17 = a1;
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = swift_allocObject();
      *(v12 + 2) = a3;
      *(v12 + 3) = a4;
      *(v12 + 4) = a1;
      v13 = a2;
      v14 = a1;

      sub_1CF915D74(a2, 0, a7, v12);
    }

    else
    {
      v15 = a2;
      v16 = FPDomainUnavailableError();
      a3(&v17, v16);
    }
  }

  else
  {
    (a3)(&v17, 0, a3, a4, a5, a6, a7);
  }
}

void sub_1CF91875C(uint64_t a1, void *a2, void (*a3)(uint64_t *, id), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(void))
{
  v18 = a1;
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v14 = swift_allocObject();
      *(v14 + 2) = a3;
      *(v14 + 3) = a4;
      *(v14 + 4) = a1;
      v15 = a2;
      a7(a1);

      sub_1CF915D74(a2, 0, a8, v14);
    }

    else
    {
      v16 = a2;
      v17 = FPDomainUnavailableError();
      a3(&v18, v17);
    }
  }

  else
  {
    (a3)(&v18, 0, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1CF918894(_TtC18FileProviderDaemon8FSTester *a1, const char *a2, uint64_t a3, char a4, void (*a5)(uint64_t *), void *a6, uint64_t a7)
{
  v30[0] = a1;
  v30[1] = a2;
  v30[2] = a3;
  v31 = a4 & 1;
  if ((a4 & 1) == 0)
  {
    a5(v30);
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    sub_1CF7B9A40(a1, a2, a3, 1);
    sub_1CF7850C0(a1, 0, v13, a5, a6);

    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = 1;
  }

  else
  {
    v22 = a1;
    v23 = FPDomainUnavailableError();
    if (!v23)
    {
      __break(1u);
      return;
    }

    v28[0] = v23;
    v29 = 1;
    a5(v28);
    sub_1CF7B9940(a1, a2, a3, 1, v24, v25, v26, v27);
    v18 = v28[0];
    v19 = v28[1];
    v20 = v28[2];
    v21 = v29;
  }

  sub_1CF7B9940(v18, v19, v20, v21, v14, v15, v16, v17);
}

void sub_1CF9189D8(uint64_t a1, void (*a2)(uint64_t *), void *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v7;
  v19 = *(a1 + 32);
  if (v19)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;

      sub_1CEFCCBDC(a1, v16, &qword_1EC4C48D8, &qword_1CFA16E68);
      sub_1CF7879EC(v6, 0, v10, a2, a3);

      sub_1CEFCCC44(a1, &qword_1EC4C48D8, &qword_1CFA16E68);
    }

    else
    {
      v11 = v6;
      v12 = FPDomainUnavailableError();
      if (v12)
      {
        v16[0] = v12;
        v17 = 1;
        a2(v16);
        sub_1CEFCCC44(a1, &qword_1EC4C48D8, &qword_1CFA16E68);
        sub_1CF060D50(v16[0], v16[1], v16[2], v16[3], v17, v13, v14, v15);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    (a2)(v18, a2, a3, a4);
  }
}

void sub_1CF918B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v94 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5290, &qword_1CFA18A30);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v94 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5298, &qword_1CFA18A38);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = (&v94 - v13);
  v110 = sub_1CF9E5A58();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v94 - v25;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C52A0, &qword_1CFA18A40);
    v109 = sub_1CF9E7BE8();
  }

  else
  {
    v109 = MEMORY[0x1E69E7CC8];
  }

  v26 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v27 = *(a1 + 64);
  v111 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & v27;
  v103 = a1;
  v31 = (v28 + 63) >> 6;
  if (v26 == MEMORY[0x1E69E6158])
  {
    v101 = (v108 + 56);
    v102 = (v108 + 32);
    v97 = (v109 + 64);
    v99 = (v108 + 40);

    v63 = 0;
    v94 = v7;
    v100 = v31;
    if (v30)
    {
      goto LABEL_31;
    }

LABEL_32:
    while (1)
    {
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v67 >= v31)
      {
LABEL_27:

        return;
      }

      v30 = *(v111 + 8 * v67);
      ++v63;
      if (v30)
      {
        while (1)
        {
          v68 = __clz(__rbit64(v30)) | (v67 << 6);
          sub_1CF0272BC(*(a1 + 48) + 40 * v68, &v118);
          sub_1CEFD1104(*(a1 + 56) + 32 * v68, &v120 + 8);
          v115 = v120;
          v116 = v121;
          v117 = v122;
          v113 = v118;
          v114 = v119;
          v69 = sub_1CF9E7858();
          objc_opt_self();
          v70 = swift_dynamicCastObjCClass();
          if (!v70)
          {
            break;
          }

          v71 = v70;
          sub_1CEFD1104(&v115 + 8, v112);
          sub_1CEFCCC44(&v113, &qword_1EC4C52A8, &qword_1CFA18A48);
          if ((swift_dynamicCast() & 1) == 0)
          {

            (*v101)(v7, 1, 1, v110);
            v91 = &unk_1EC4BE310;
            v92 = qword_1CF9FCBE0;
            v93 = v7;
            goto LABEL_48;
          }

          v30 &= v30 - 1;
          v72 = v110;
          (*v101)(v7, 0, 1, v110);
          v73 = *v102;
          v74 = v96;
          (*v102)(v96, v7, v72);
          v107 = v71;
          v75 = *(v105 + 48);
          v76 = v106;
          v73(&v106[v75], v74, v72);
          v77 = v104;
          v78 = *(v104 + 48);
          v79 = v21;
          v80 = v98;
          *v98 = v107;
          v73(v80 + v78, &v76[v75], v72);
          v81 = *(v77 + 48);
          v82 = *v80;
          v83 = v80 + v81;
          v21 = v79;
          v84 = v95;
          v73(v95, v83, v72);
          v73(v79, v84, v72);
          v85 = v109;
          v86 = sub_1CF7BF8D8(v82);
          if (v87)
          {
            v64 = v85[6];
            v65 = *(v64 + 8 * v86);
            *(v64 + 8 * v86) = v82;
            v66 = v86;

            (*(v108 + 40))(v85[7] + *(v108 + 72) * v66, v79, v110);
            v63 = v67;
            a1 = v103;
            v7 = v94;
            v31 = v100;
            if (!v30)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v31 = v100;
            if (v85[2] >= v85[3])
            {
              goto LABEL_52;
            }

            *&v97[(v86 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v86;
            *(v85[6] + 8 * v86) = v82;
            v73((v85[7] + *(v108 + 72) * v86), v79, v110);
            v88 = v85[2];
            v89 = __OFADD__(v88, 1);
            v90 = v88 + 1;
            if (v89)
            {
              goto LABEL_53;
            }

            v85[2] = v90;
            v63 = v67;
            a1 = v103;
            v7 = v94;
            if (!v30)
            {
              goto LABEL_32;
            }
          }

LABEL_31:
          v67 = v63;
        }

LABEL_46:
        v91 = &qword_1EC4C52A8;
        v92 = &qword_1CFA18A48;
        v93 = &v113;
LABEL_48:
        sub_1CEFCCC44(v93, v91, v92);

        return;
      }
    }
  }

  else
  {
    v98 = (v108 + 56);
    v106 = (v108 + 32);
    v32 = v109;

    v33 = 0;
    v97 = v4;
    v96 = v31;
    v95 = (v32 + 64);
    v34 = v106;
    while (v30)
    {
LABEL_16:
      v37 = __clz(__rbit64(v30)) | (v33 << 6);
      sub_1CF0272BC(*(a1 + 48) + 40 * v37, &v118);
      sub_1CEFD1104(*(a1 + 56) + 32 * v37, &v120 + 8);
      v115 = v120;
      v116 = v121;
      v117 = v122;
      v113 = v118;
      v114 = v119;
      v38 = sub_1CF9E7858();
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (!v39)
      {

        goto LABEL_46;
      }

      v40 = v39;
      sub_1CEFD1104(&v115 + 8, v112);
      sub_1CEFCCC44(&v113, &qword_1EC4C52A8, &qword_1CFA18A48);
      if ((swift_dynamicCast() & 1) == 0)
      {

        (*v98)(v4, 1, 1, v110);
        v91 = &unk_1EC4BE310;
        v92 = qword_1CF9FCBE0;
        v93 = v4;
        goto LABEL_48;
      }

      v41 = v110;
      (*v98)(v4, 0, 1, v110);
      v42 = *v34;
      v43 = v100;
      (*v34)(v100, v4, v41);
      v44 = *(v105 + 48);
      v45 = v102;
      v42(&v102[v44], v43, v41);
      v46 = v41;
      v47 = v104;
      v48 = *(v104 + 48);
      v49 = v101;
      *v101 = v40;
      v42(&v49[v48], &v45[v44], v46);
      v50 = *(v47 + 48);
      v51 = v95;
      v52 = *v49;
      v53 = v99;
      v42(v99, &v49[v50], v46);
      v42(v107, v53, v46);
      v54 = v109;
      v55 = sub_1CF9E7558();
      v56 = -1 << *(v54 + 32);
      v57 = v55 & ~v56;
      v58 = v57 >> 6;
      if (((-1 << v57) & ~*&v51[8 * (v57 >> 6)]) == 0)
      {
        v59 = 0;
        v60 = (63 - v56) >> 6;
        v4 = v97;
        v31 = v96;
        while (++v58 != v60 || (v59 & 1) == 0)
        {
          v61 = v58 == v60;
          if (v58 == v60)
          {
            v58 = 0;
          }

          v59 |= v61;
          v62 = *&v51[8 * v58];
          if (v62 != -1)
          {
            v35 = __clz(__rbit64(~v62)) + (v58 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_50;
      }

      v35 = __clz(__rbit64((-1 << v57) & ~*&v51[8 * (v57 >> 6)])) | v57 & 0x7FFFFFFFFFFFFFC0;
      v4 = v97;
      v31 = v96;
LABEL_10:
      v30 &= v30 - 1;
      *&v51[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
      *(*(v54 + 48) + 8 * v35) = v52;
      v42((*(v54 + 56) + *(v108 + 72) * v35), v107, v110);
      ++*(v54 + 16);
      a1 = v103;
    }

    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v36 >= v31)
      {
        goto LABEL_27;
      }

      v30 = *(v111 + 8 * v36);
      ++v33;
      if (v30)
      {
        v33 = v36;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_1CF919738(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B88, &unk_1CFA07A20);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v23 = v8 >> 6;

    v24 = 0;
    if (v7)
    {
      goto LABEL_29;
    }

LABEL_30:
    while (1)
    {
      v37 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v37 >= v23)
      {
        goto LABEL_41;
      }

      v7 = *(v4 + 8 * v37);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v38 = *(*(a1 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v7)))));

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5280, &qword_1CFA18A20);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v7 &= v7 - 1;
          v39 = sub_1CF7BF8D8(v38);
          if (v40)
          {
            v25 = *(v2 + 48);
            v26 = *(v25 + 8 * v39);
            *(v25 + 8 * v39) = v38;
            v27 = v39;

            v28 = *(v2 + 56);
            v29 = *(v28 + 8 * v27);
            *(v28 + 8 * v27) = v42;
            v29, v30, v31, v32, v33, v34, v35, v36;
            v24 = v37;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v41 = *(v2 + 16);
            if (v41 >= *(v2 + 24))
            {
              goto LABEL_45;
            }

            *(v2 + 64 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
            *(*(v2 + 48) + 8 * v39) = v38;
            *(*(v2 + 56) + 8 * v39) = v42;
            *(v2 + 16) = v41 + 1;
            v24 = v37;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

LABEL_29:
          v37 = v24;
        }

LABEL_41:

        return;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5280, &qword_1CFA18A20);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_41;
      }

      v15 = sub_1CF9E7558();
      v16 = -1 << *(v2 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_43;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v14;
      *(*(v2 + 56) + 8 * v12) = v42;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_41;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_1CF919C90(uint64_t a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);
    v4 = type metadata accessor for ProxyCancellable();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A16ProxyCancellable_cancellable] = a1;
    v8.receiver = v5;
    v8.super_class = v4;
    swift_unknownObjectRetain_n();
    v6 = objc_msgSendSuper2(&v8, sel_init);
    [v3 setCancellationHandler_];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);

    [v7 setCancellationHandler_];
  }
}

void sub_1CF919DF0(_TtC18FileProviderDaemon8FSTester *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *&v33[0] = 0x696669746E656469;
  *(&v33[0] + 1) = 0xEA00000000007265;

  sub_1CF9E7898();
  if (*a1->tree && (v10 = sub_1CF0271B0(&aBlock), (v11 & 1) != 0))
  {
    sub_1CEFD1104(*a1[1].tester + 32 * v10, v38);
    sub_1CF027318(&aBlock);
    if (swift_dynamicCast())
    {
      if (*(&v40 + 1))
      {
        aBlock = v39;
        v35 = v40;
        v36 = v41;
        v12 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_idMap);
        if (v12 && *(v12 + 16) && (v13 = sub_1CF0271B0(&aBlock), (v14 & 1) != 0))
        {
          sub_1CEFD1104(*(v12 + 56) + 32 * v13, &v39);
          sub_1CEFE9EB8(&v39, v38);
          *&v33[0] = 0x696669746E656469;
          *(&v33[0] + 1) = 0xEA00000000007265;
          sub_1CF9E7898();
          sub_1CEFD1104(v38, v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1CF1D456C(v33, &v39, isUniquelyReferenced_nonNull_native);
          sub_1CF027318(&v39);
          __swift_destroy_boxed_opaque_existential_1(v38);
          sub_1CF027318(&aBlock);
        }

        else
        {
          sub_1CF027318(&aBlock);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v41 = 0;
      v40 = 0u;
      v39 = 0u;
    }
  }

  else
  {
    sub_1CF027318(&aBlock);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
  }

  sub_1CEFCCC44(&v39, &qword_1EC4C5288, &qword_1CFA18A28);
LABEL_11:
  v16 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);
  if ([v16 respondsToSelector_])
  {
    v24 = sub_1CF9E6618();
    if (a2)
    {
      a2 = sub_1CF9E57E8();
    }

    v36 = a3;
    v37 = a4;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v35 = sub_1CEFCA444;
    *(&v35 + 1) = &block_descriptor_872;
    v25 = _Block_copy(&aBlock);

    [v16 operationDidProgressWithInfo:v24 error:a2 completionHandler:v25];
    _Block_release(v25);

    a1, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    a1, v17, v18, v19, v20, v21, v22, v23;
  }
}

unint64_t sub_1CF91A300()
{
  sub_1CF9E7948();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSServicerExtender_request) shortDescription];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  return 0xD000000000000012;
}

id sub_1CF91A400(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1CF91A514(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, double, double), uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  if (a1)
  {
    v15 = a2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = [Strong session];

      v20 = [v19 newFileProviderProxyWithTimeout:objc_msgSend(*(a6 + 32) pid:{"pid"), -1.0}];
      swift_unknownObjectRelease();
      if (v15)
      {
        sub_1CF7BC4CC(v15);
        v15 = v21;
      }

      v22 = type metadata accessor for ProxyOperationClient();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client] = a7;
      *&v23[OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_idMap] = v15;
      v37.receiver = v23;
      v37.super_class = v22;
      swift_unknownObjectRetain();
      v24 = objc_msgSendSuper2(&v37, sel_init);
      sub_1CF7BC0F4(a1);
      v26 = v25;
      sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
      sub_1CF2F5F80();
      v27 = sub_1CF9E6618();
      v26, v28, v29, v30, v31, v32, v33, v34;
      v36[4] = a4;
      v36[5] = a5;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 1107296256;
      v36[2] = sub_1CF00A468;
      v36[3] = &block_descriptor_849_0;
      v35 = _Block_copy(v36);

      [v20 startOperation:v24 toFetchThumbnailsWithDictionary:v27 size:v35 completionHandler:{a8, a9}];
      _Block_release(v35);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a4(a3, a2, a8, a9);
  }
}

double sub_1CF91A870(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v9 = a2;
  MEMORY[0x1D3868FA0]();
  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v5;

  sub_1CF8406A8(a1, sub_1CF927500, v10);
  a1, v11, v12, v13, v14, v15, v16, v17;

  return result;
}

void sub_1CF91A988(unint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = a1 >> 62;
    if (a1 >> 62)
    {
      v20 = a6;
      v21 = sub_1CF9E7818();
      a6 = v20;
      if (v21 < 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_4;
    }

    v22 = a6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_27;
    }

    v24 = Strong;
    v25 = [Strong session];

    v26 = [v25 newFileProviderProxyWithTimeout:objc_msgSend(*(v22 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v27 = sub_1CF9E6D28();
    if (v10)
    {
      v28 = sub_1CF9E7818();
    }

    else
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28)
    {
      if (!__OFSUB__(v28--, 1))
      {
        if ((a1 & 0xC000000000000001) == 0)
        {
          if ((v28 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v28 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v30 = *(a1 + 8 * v28 + 32);
LABEL_21:
            v31 = v30;
            v33[4] = a4;
            v33[5] = a5;
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 1107296256;
            v33[2] = sub_1CF91AC3C;
            v33[3] = &block_descriptor_481;
            v32 = _Block_copy(v33);

            [v26 preflightReparentItemIDs:v27 underParentID:v31 reply:v32];
            swift_unknownObjectRelease();

            _Block_release(v32);
            return;
          }

          __break(1u);
LABEL_27:
          __break(1u);
          return;
        }

LABEL_24:
        v30 = MEMORY[0x1D3869C30](v28, a1);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_4:
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1CF9FA450;
    *(v11 + 32) = a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  a4(v11);

  v11, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1CF91AC3C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v2 = sub_1CF9E6D48();
  }

  v3(v2);

  v2, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1CF91ADA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v3 = sub_1CF9E6D28();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

double sub_1CF91AE28(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = [a1 itemIdentifier];
  *(v11 + 24) = 256;
  v12 = *(v5 + 32);
  *(v11 + 32) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  *(v14 + 32) = v11 | 0x4000000000000004;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = v10;
  *(v14 + 64) = 1;
  *(v14 + 65) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF9274F8;
  *(v15 + 24) = v13;
  swift_retain_n();
  v16 = v12;
  v17 = a1;

  v18 = v10;

  sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF7BA950, v15, sub_1CF8FD83C, v14);

  return result;
}

void sub_1CF91B0AC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
    v4 = sub_1CF9E6638();
  }

  if (a3)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
    a3 = sub_1CF9E6638();
  }

  v5(v4, a3);

  a3, v6, v7, v8, v9, v10, v11, v12;

  v4, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1CF91B370(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
    v7 = sub_1CF9E6618();
  }

  if (a2)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
    a2 = sub_1CF9E6618();
  }

  if (a3)
  {
    v8 = sub_1CF9E57E8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

void sub_1CF91B4F0(void *a1, id a2, void (*a3)(_TtC18FileProviderDaemon8FSTester *, id), uint64_t a4, id a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  if (a1)
  {
    if (!a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFA00250;
      *(inited + 32) = a1;
      aBlock[0] = a6;
      v16 = a1;

      sub_1CF1E90D4(inited);
      v17 = a6;
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v18 = [v16 parentItemID];
      LOBYTE(a6) = sub_1CF9E7568();

      if ((a6 & 1) != 0 || a7 == 1)
      {
        a3(v17, 0);

        v17, v30, v31, v32, v33, v34, v35, v36;
      }

      else
      {
        v19 = [v16 parentItemID];
        v20 = __OFSUB__(a7, 1);
        v21 = a7 - 1;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          v22 = v19;
          v23 = *(a8 + 16);
          v24 = *(a8 + 32);
          v25 = swift_allocObject();
          v25[2] = a3;
          v25[3] = a4;
          v25[4] = v22;
          v25[5] = v17;
          v25[6] = v21;
          v25[7] = a8;
          aBlock[4] = sub_1CF9284B4;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CEFF9A6C;
          aBlock[3] = &block_descriptor_773;
          v26 = _Block_copy(aBlock);

          v27 = v22;

          [v23 itemForItemID:v27 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:0 request:v24 completionHandler:v26];
          _Block_release(v26);
        }
      }

      return;
    }
  }

  else if (!a2)
  {
    v28 = [a5 identifier];
    v10 = FPItemNotFoundError();

    a2 = 0;
  }

  v29 = a2;
  a3(0, v10);
}

double sub_1CF91B7F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, char a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF927A5C;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = sub_1CF903264;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF927AB0;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FF2D8;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a1;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  *(v18 + 56) = sub_1CF8FF2D8;
  *(v18 + 64) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF903264;
  *(v19 + 24) = v17;
  swift_retain_n();

  v20 = a4;

  sub_1CF7AAF88("fetchHierarchy(for:recursively:ignoreAlternateContentURL:reply:)", 64, 2, 2, sub_1CF9002F4, v19, sub_1CF927B04, v18);

  return result;
}

void sub_1CF91BA60(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, int a6, void (*a7)(void, void *), uint64_t a8)
{
  v96 = a7;
  v107 = a8;
  v94 = a6;
  v95 = a4;
  v93 = a5;
  v11 = sub_1CF9E6118();
  v92 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CEFD4E9C([a2 identifier]);
  v20 = v97;
  sub_1CF554678(*(a3 + 16), 0, v19, v17, v18, &v104);
  if (v20)
  {

    v21 = v20;
    v96(0, v20);
  }

  else
  {
    v22 = a2;
    v97 = v11;

    if (v106)
    {
      sub_1CEFD0994(v104, v105, 1);
      v23 = fpfs_current_or_default_log();
      v24 = v13;
      sub_1CF9E6128();
      v25 = v22;
      v26 = sub_1CF9E6108();
      v27 = sub_1CF9E7298();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v97;
      v91 = v25;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock = v31;
        *v30 = 136315394;
        v32 = [v25 identifier];
        v33 = NSFileProviderItemIdentifier.description.getter(v32);
        v90 = v24;
        v34 = v33;
        v36 = v35;

        v37 = sub_1CEFD0DF0(v34, v36, &aBlock);
        v36, v38, v39, v40, v41, v42, v43, v44;
        *(v30 + 4) = v37;
        *(v30 + 12) = 1024;
        *(v30 + 14) = v95 & 1;
        _os_log_impl(&dword_1CEFC7000, v26, v27, "fetching hierarchy from provider: %s (recursive: %{BOOL}d)", v30, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1D386CDC0](v31, -1, -1);
        MEMORY[0x1D386CDC0](v30, -1, -1);

        (*(v92 + 8))(v90, v29);
      }

      else
      {

        (*(v92 + 8))(v24, v29);
      }

      v71 = v94;
      v72 = v107;
      v73 = v93;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v75 = Strong;
        v76 = [Strong session];

        v77 = [v76 newFileProviderProxyWithTimeout:objc_msgSend(*(v73 + 32) pid:{"pid"), -1.0}];
        swift_unknownObjectRelease();
        v78 = swift_allocObject();
        v78[2] = v96;
        v78[3] = v72;
        v78[4] = v73;
        v102 = sub_1CF927B30;
        v103 = v78;
        aBlock = MEMORY[0x1E69E9820];
        v99 = 1107296256;
        v100 = sub_1CF919B5C;
        v101 = &block_descriptor_760;
        v79 = _Block_copy(&aBlock);

        [v77 fetchHierarchyForItemID:v91 recursively:v95 & 1 ignoreAlternateContentURL:v71 & 1 reply:v79];
        _Block_release(v79);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v45 = fpfs_current_or_default_log();
      v46 = v16;
      sub_1CF9E6128();
      v47 = a2;
      v48 = sub_1CF9E6108();
      v49 = sub_1CF9E7298();

      v50 = os_log_type_enabled(v48, v49);
      v51 = v92;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v91 = v46;
        v54 = v53;
        aBlock = v53;
        *v52 = 136315394;
        v55 = [v47 identifier];
        v90 = v47;
        v56 = v55;
        v57 = NSFileProviderItemIdentifier.description.getter(v55);
        v59 = v58;

        v60 = sub_1CEFD0DF0(v57, v59, &aBlock);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v52 + 4) = v60;
        *(v52 + 12) = 1024;
        v68 = v95;
        *(v52 + 14) = v95 & 1;
        _os_log_impl(&dword_1CEFC7000, v48, v49, "fetching hierarchy from cache: %s (recursive: %{BOOL}d)", v52, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1D386CDC0](v54, -1, -1);
        MEMORY[0x1D386CDC0](v52, -1, -1);

        (*(v51 + 8))(v91, v97);
        v69 = v90;
        v70 = v93;
      }

      else
      {

        (*(v51 + 8))(v46, v97);
        v70 = v93;
        v69 = v47;
        v68 = v95;
      }

      v80 = v96;
      if (v68)
      {
        v81 = 200;
      }

      else
      {
        v81 = 2;
      }

      v82 = *(v70 + 16);
      v83 = *(v70 + 32);
      v84 = swift_allocObject();
      v85 = v107;
      v84[2] = v80;
      v84[3] = v85;
      v86 = MEMORY[0x1E69E7CC0];
      v84[4] = v69;
      v84[5] = v86;
      v84[6] = v81;
      v84[7] = v70;
      v102 = sub_1CF927B3C;
      v103 = v84;
      aBlock = MEMORY[0x1E69E9820];
      v99 = 1107296256;
      v100 = sub_1CEFF9A6C;
      v101 = &block_descriptor_766_0;
      v87 = _Block_copy(&aBlock);
      v88 = v69;

      [v82 itemForItemID:v88 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:v94 & 1 request:v83 completionHandler:v87];
      _Block_release(v87);
    }
  }
}

void sub_1CF91C15C(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = *(a5 + 16);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v9 = sub_1CF9E6D28();
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a2;
    v13[4] = sub_1CF927BBC;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1CF91C2A4;
    v13[3] = &block_descriptor_779;
    v11 = _Block_copy(v13);

    v12 = a2;

    [v8 decorateItems:v9 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    (a3)(0, a2, a3, a4, a5);
  }
}

void sub_1CF91C2A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v3 = sub_1CF9E6D48();

  v2(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1CF91C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong session];

    v14 = [v13 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v15 = sub_1CF9E6888();
    v17[4] = a6;
    v17[5] = a7;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1CF00A468;
    v17[3] = &block_descriptor_716_0;
    v16 = _Block_copy(v17);

    [v14 userCheckedSuppressionCheckboxForUserInteractionIdentifier:v15 domainIdentifier:a5 completionHandler:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong session];

    v17 = [v16 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v18 = sub_1CF9E6888();
    v19 = sub_1CF9E6888();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a8;
    v20[4] = a9;
    v20[5] = a1;
    v20[6] = a5;
    v20[7] = a6;
    aBlock[4] = sub_1CF9279BC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFF99E0;
    aBlock[3] = &block_descriptor_674;
    v21 = _Block_copy(aBlock);

    [v17 fetchDefaultContainerForBundleIdentifier:v18 defaultName:v19 inDomainIdentifier:a7 lookupOnly:1 reply:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91C9A0(void *a1, void *a2, uint64_t a3, void (*a4)(void, id), void *a5, uint64_t a6, void *a7, _TtC18FileProviderDaemon8FSTester *a8)
{
  v62 = a5;
  v63 = a4;
  v14 = sub_1CF9E6118();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  if (a1)
  {
    v21 = a1;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E7288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1CEFC7000, v23, v24, "received special default container from extension process, looking up and returning", v25, 2u);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    (*(v15 + 8))(v17, v14);
    v26 = swift_allocObject();
    v27 = v62;
    v26[2] = v63;
    v26[3] = v27;
    v26[4] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1CFA00250;
    *(v28 + 32) = v21;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1CF9279D4;
    *(v29 + 24) = v26;
    v30 = swift_allocObject();
    v30[2] = sub_1CF9284BC;
    v30[3] = v29;
    v30[4] = v28;
    v31 = swift_allocObject();
    v31[2] = v28;
    v31[3] = 0;
    v31[4] = sub_1CF9284BC;
    v31[5] = v29;
    v32 = v21;
    swift_retain_n();
    v33 = v32;
    v34 = a2;

    sub_1CEFD4024("decorate(_:options:completionHandler:)", 38, 2, sub_1CF9283E4, v30, sub_1CF9283C8, v31);
  }

  else
  {
    v61 = a7;
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E7298();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "didn't receive a special default container from extension process, creating a folder", v38, 2u);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    (*(v15 + 8))(v20, v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v40 = a6, v41 = Strong, v42 = [Strong provider], v41, v42))
    {
      v43 = [v42 identifier];

      v44 = [v43 fp_isiCloudDriveIdentifier];
      v45 = MEMORY[0x1E6967258];
      if (v44)
      {
        v45 = MEMORY[0x1E6967160];
      }

      v46 = *v45;
      v47 = sub_1CEFD4E9C(v46);
      v48 = swift_allocObject();
      v49 = *(a3 + 32);
      *(v48 + 16) = v46;
      *(v48 + 24) = v49;
      v50 = v62;
      swift_retain_n();

      v51 = v49;
      sub_1CF795294(v47, 0, v48 | 6, v40, v61, a8, a3, v63, v50);

      a8, v52, v53, v54, v55, v56, v57, v58;
    }

    else
    {
      v59 = FPDomainUnavailableError();
      v63(0, v59);
    }
  }
}

void sub_1CF91CEE4(char *a1, void *a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, void (*a5)(void, id), uint64_t a6)
{
  v120 = a5;
  v121 = a6;
  v116 = a4;
  v118 = a2;
  v119 = a3;
  v122 = a1;
  v131[1] = *MEMORY[0x1E69E9840];
  v115 = sub_1CF9E53C8();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1CF9E6118();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1CF9E5868();
  v8 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v109 - v12);
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v109 - v19;
  sub_1CEFCCBDC(v122, v13, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v13;
    aBlock = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
LABEL_9:
    v55 = v120;
    v56 = v21;
    v55(0, v21);

    return;
  }

  v22 = v14;
  (*(v15 + 32))(v20, v13, v14);
  aBlock = v118;
  v126 = v119;
  v23 = v117;
  (*(v8 + 104))(v10, *MEMORY[0x1E6968F70], v117);
  sub_1CEFE4E68();
  sub_1CF9E5A48();
  (*(v8 + 8))(v10, v23);
  v24 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v25 = sub_1CF9E5928();
  aBlock = 0;
  v26 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v27 = v15;
  if ((v26 & 1) == 0)
  {
    v53 = aBlock;
    v21 = sub_1CF9E57F8();

    swift_willThrow();
    v54 = *(v15 + 8);
    v54(v17, v22);
    v54(v20, v22);
    goto LABEL_9;
  }

  v122 = v20;
  v28 = aBlock;
  sub_1CF9E5A18();
  v30 = v29;
  v124 = 1;
  v131[0] = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = &v124;
  *(v31 + 24) = sub_1CF91D9A4;
  *(v31 + 32) = 0;
  *(v31 + 40) = v131;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF50E0C0;
  *(v32 + 24) = v31;
  v129 = sub_1CF005DC8;
  v130 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v126 = 1107296256;
  v33 = v30;
  v127 = sub_1CF005DF8;
  v128 = &block_descriptor_699;
  v34 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v35 = fpfs_openat();

  _Block_release(v34);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  v21 = v131[0];
  if (v131[0])
  {
    swift_willThrow();
    v51 = v122;
LABEL_7:
    v33, v44, v45, v46, v47, v48, v49, v50;
    v52 = *(v27 + 8);
    v52(v17, v22);
    v52(v51, v22);
    goto LABEL_9;
  }

  if (v35 < 0)
  {
    v63 = MEMORY[0x1D38683F0](v36);
    v51 = v122;
    if (v63)
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        v21 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        swift_willThrow();
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v64 = sub_1CF9E6138();
        if ((v64 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v64;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v65 = v113;
        v66 = v115;
        sub_1CF9E57D8();
        v21 = sub_1CF9E53A8();
        (*(v114 + 8))(v65, v66);
        swift_willThrow();
      }

      goto LABEL_7;
    }
  }

  else
  {
    if ((v124 & 1) == 0)
    {
      v33, v37, v38, v39, v40, v41, v42, v43;
      v57 = v116;
      v58 = *(v116 + 16);
      v59 = sub_1CF9E5928();
      v60 = *(v57 + 32);
      v129 = v120;
      v130 = v121;
      aBlock = MEMORY[0x1E69E9820];
      v126 = 1107296256;
      v127 = sub_1CEFF9A6C;
      v128 = &block_descriptor_702;
      v61 = _Block_copy(&aBlock);

      [v58 itemForURL:v59 options:0 request:v60 completionHandler:v61];
      _Block_release(v61);

      v62 = *(v15 + 8);
      v62(v17, v22);
      v62(v122, v22);
      return;
    }

    __break(1u);
  }

  aBlock = 0;
  v126 = 0xE000000000000000;
  sub_1CF9E7948();
  v126, v67, v68, v69, v70, v71, v72, v73;
  aBlock = 0xD00000000000001ALL;
  v126 = 0x80000001CFA2DF30;
  v123 = v35;
  v74 = sub_1CF9E7F98();
  v76 = v75;
  MEMORY[0x1D3868CC0](v74);
  v76, v77, v78, v79, v80, v81, v82, v83;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v84 = aBlock;
  v85 = v126;
  v86 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v87 = sub_1CF9E6108();
  v88 = sub_1CF9E72B8();
  v85, v89, v90, v91, v92, v93, v94, v95;
  if (os_log_type_enabled(v87, v88))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock = v97;
    *v96 = 136315650;
    v98 = sub_1CF9E7988();
    v100 = v99;
    v101 = sub_1CEFD0DF0(v98, v99, &aBlock);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v96 + 4) = v101;
    *(v96 + 12) = 2048;
    *(v96 + 14) = 315;
    *(v96 + 22) = 2080;
    *(v96 + 24) = sub_1CEFD0DF0(v84, v85, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v87, v88, "[ASSERT] ‼️  %s:%lu: %s", v96, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v97, -1, -1);
    MEMORY[0x1D386CDC0](v96, -1, -1);
  }

  (*(v111 + 8))(v110, v112);
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF91DBB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong session];

      v12 = [v11 newFileProviderProxyWithTimeout:objc_msgSend(*(a6 + 32) pid:{"pid"), -1.0}];
      swift_unknownObjectRelease();
      sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v13 = sub_1CF9E6D28();
      v15[4] = a4;
      v15[5] = a5;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1CF91AC3C;
      v15[3] = &block_descriptor_650;
      v14 = _Block_copy(v15);

      [v12 preflightTrashItemIDs:v13 completionHandler:v14];
      _Block_release(v14);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (a4)(0, a2, a3, a4, a5, a6);
  }
}

void *sub_1CF91DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [result session];

    v10 = [v9 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1CF91DF90;
    v12[3] = &block_descriptor_641;
    v11 = _Block_copy(v12);

    [v10 fetchTrashIdentifiersWithCompletionHandler_];
    _Block_release(v11);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF91DFA4(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1CEFD57E0(0, a4, a5);
    v6 = sub_1CF9E6D48();
  }

  v8 = a3;
  v7(v6, a3);

  v6, v9, v10, v11, v12, v13, v14, v15;
}

void sub_1CF91E1B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v5 = sub_1CF9E6D28();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1CF91E25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong session];

    v12 = [v11 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v15[4] = a4;
    v15[5] = a5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1CF90535C;
    v15[3] = &block_descriptor_626_0;
    v13 = _Block_copy(v15);

    v14 = [v12 fetchPublishingURLForItemID:a3 completionHandler:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91E510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong session];

    v14 = [v13 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v17[4] = a5;
    v17[5] = a6;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1CF00A468;
    v17[3] = &block_descriptor_614_0;
    v15 = _Block_copy(v17);

    v16 = [v14 disconnectDomainID:a3 options:a4 completionHandler:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91E7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong session];

    v12 = [v11 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v13 = sub_1CF9E6888();
    v15[4] = a5;
    v15[5] = a6;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1CF00A468;
    v15[3] = &block_descriptor_600;
    v14 = _Block_copy(v15);

    [v12 wakeForSessionIdentifier:v13 completionHandler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong session];

    v13 = [v12 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v14 = sub_1CF9E57E8();
    v16[4] = a5;
    v16[5] = a6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1CF91EC00;
    v16[3] = &block_descriptor_586;
    v15 = _Block_copy(v16);

    [v13 attemptRecoveryFromError:v14 optionIndex:a4 completionHandler:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91EC00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_1CF91ED84(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1CFA00250;
    *(v15 + 32) = a3;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v14;
  }

  v28 = v16;

  v24 = a3;
  sub_1CF1E90D4(v15);
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a6;
  v17[9] = a7;
  v17[10] = a8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF9274A8;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  v19[2] = v28;
  v19[3] = sub_1CF9274A8;
  v19[4] = v17;

  swift_retain_n();

  v20 = v24;

  v21 = a1;
  v22 = a4;

  sub_1CEFD4024("attachInheritedUserInfo(_:completionHandler:)", 45, 2, sub_1CF8F6DD8, v18, sub_1CF9274E0, v19);

  return result;
}

void sub_1CF91EFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = [Strong session];

    v20 = [v19 newFileProviderProxyWithTimeout:objc_msgSend(*(a1 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    if (a3)
    {
      sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
      a3 = sub_1CF9E6D28();
    }

    if (a6)
    {
      a6 = sub_1CF9E6F88();
    }

    if (a7)
    {
      a7 = sub_1CF9E6F88();
    }

    aBlock[4] = a8;
    aBlock[5] = a9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF91F19C;
    aBlock[3] = &block_descriptor_445;
    v21 = _Block_copy(aBlock);

    [v20 userInteractionErrorsForPerformingAction:a2 sourceItems:a3 destinationItem:a4 fpProviderDomainId:a5 sourceItemKeysAllowList:a6 destinationItemKeysAllowList:a7 completionHandler:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91F19C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = sub_1CF9E6D48();

  v2(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1CF91F39C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = sub_1CF9E6D28();
  (*(a2 + 16))(a2, v3);
}

void sub_1CF91F414(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v125 = a7;
  v135 = a5;
  v136 = a6;
  v12 = sub_1CF9E63A8();
  v130 = *(v12 - 8);
  v131 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1CF9E6448();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v134 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v132 = &v121 - v19;
  v20 = sub_1CEFD4E9C([a2 identifier]);
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v137 = v20;
  sub_1CF554B9C(a3, v23, v21, v22, aBlock);
  if (v7)
  {

    v24 = 0;
  }

  else
  {
    v25 = aBlock[0];
    if (aBlock[0])
    {
      v26 = *(*(a4 + 16) + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
      v27 = objc_allocWithZone(MEMORY[0x1E69673A0]);
      v28 = v26;
      v24 = [v27 initWithProviderDomainID:v28 itemIdentifier:v25];
    }

    else
    {
      v24 = 0;
    }
  }

  aBlock[10] = a2;
  aBlock[11] = v24;
  v29 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v30 = v24;
  v31 = a2;
  v32 = 0;
  v33 = v29;
  while (v32 != 2)
  {
    v34 = aBlock[v32++ + 10];
    if (v34)
    {
      v35 = v34;
      MEMORY[0x1D3868FA0]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CF9E6D88();
      }

      sub_1CF9E6DE8();
      v33 = aBlock[0];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5260, &qword_1CFA18A18);
  swift_arrayDestroy();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [Strong indexer];

    if (v38)
    {
      type metadata accessor for FPFSIndexer(0);
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        v40 = v39;
        if (v33 >> 62)
        {
          if (sub_1CF9E7818() >= 1)
          {
            goto LABEL_17;
          }
        }

        else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
LABEL_17:
          v124 = v15;
          v133 = v30;
          v41 = fpfs_current_or_default_log();
          v42 = v132;
          sub_1CF9E6128();

          v43 = v38;
          v44 = sub_1CF9E6108();
          v45 = sub_1CF9E7298();

          v33, v46, v47, v48, v49, v50, v51, v52;
          if (os_log_type_enabled(v44, v45))
          {
            v53 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            aBlock[0] = v123;
            *v53 = 136315394;
            v54 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
            v55 = MEMORY[0x1D3868FE0](v33, v54);
            v57 = v56;
            v58 = sub_1CEFD0DF0(v55, v56, aBlock);
            v57, v59, v60, v61, v62, v63, v64, v65;
            *(v53 + 4) = v58;
            *(v53 + 12) = 2112;
            *(v53 + 14) = v40;
            v66 = v122;
            *v122 = v40;
            v67 = v43;
            _os_log_impl(&dword_1CEFC7000, v44, v45, "Deleting item ids:%s, with indexer %@", v53, 0x16u);
            sub_1CEFCCC44(v66, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v66, -1, -1);
            v68 = v123;
            __swift_destroy_boxed_opaque_existential_1(v123);
            MEMORY[0x1D386CDC0](v68, -1, -1);
            MEMORY[0x1D386CDC0](v53, -1, -1);

            (*(v134 + 8))(v132, v124);
          }

          else
          {

            (*(v134 + 8))(v42, v124);
          }

          v69 = swift_allocObject();
          v70 = v135;
          v71 = v136;
          v69[2] = v33;
          v69[3] = v70;
          v69[4] = v71;

          v136 = [v40 queue];
          v72 = swift_allocObject();
          v72[2] = v40;
          v72[3] = sub_1CF927394;
          v72[4] = v69;
          v73 = MEMORY[0x1E69E7CC0];
          v72[5] = MEMORY[0x1E69E7CC0];
          v72[6] = v33;
          v72[7] = v125;
          aBlock[4] = sub_1CF927410;
          aBlock[5] = v72;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CEFCA444;
          aBlock[3] = &block_descriptor_419_0;
          v74 = _Block_copy(aBlock);
          v135 = v43;

          v75 = v126;
          sub_1CF9E63F8();
          aBlock[14] = v73;
          sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
          sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
          v76 = v128;
          v77 = v131;
          sub_1CF9E77B8();
          v78 = v136;
          MEMORY[0x1D3869630](0, v75, v76, v74);
          _Block_release(v74);

          (*(v130 + 8))(v76, v77);
          (*(v127 + 8))(v75, v129);

          return;
        }
      }
    }
  }

  v79 = fpfs_current_or_default_log();
  v80 = v133;
  sub_1CF9E6128();

  v81 = sub_1CF9E6108();
  v82 = sub_1CF9E72A8();
  v33, v83, v84, v85, v86, v87, v88, v89;
  if (os_log_type_enabled(v81, v82))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v124 = v15;
    v132 = 0;
    v92 = v30;
    v93 = v91;
    aBlock[0] = v91;
    *v90 = 136315138;
    v94 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v95 = v80;
    v96 = MEMORY[0x1D3868FE0](v33, v94);
    v98 = v97;
    v33, v97, v99, v100, v101, v102, v103, v104;
    v105 = sub_1CEFD0DF0(v96, v98, aBlock);
    v98, v106, v107, v108, v109, v110, v111, v112;
    *(v90 + 4) = v105;
    _os_log_impl(&dword_1CEFC7000, v81, v82, "FPFSIndexer is missing for fpfs backed or no ids to delete: %s.", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v113 = v93;
    v30 = v92;
    MEMORY[0x1D386CDC0](v113, -1, -1);
    MEMORY[0x1D386CDC0](v90, -1, -1);

    (*(v134 + 8))(v95, v124);
  }

  else
  {

    v33, v114, v115, v116, v117, v118, v119, v120;
    (*(v134 + 8))(v80, v15);
  }

  (v135)(0);
}

void sub_1CF91FDEC(void *a1, _TtC18FileProviderDaemon8FSTester *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  if (!a1)
  {
    v48 = v9;
    v49 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v50 = sub_1CF9E6108();
    v51 = sub_1CF9E7298();
    a2, v52, v53, v54, v55, v56, v57, v58;
    if (os_log_type_enabled(v50, v51))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v82 = v8;
      v61 = v60;
      v85 = v60;
      *v59 = 136315138;
      v62 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v63 = MEMORY[0x1D3868FE0](a2, v62);
      v65 = v64;
      v66 = sub_1CEFD0DF0(v63, v64, &v85);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v59 + 4) = v66;
      _os_log_impl(&dword_1CEFC7000, v50, v51, "Succeeded deleting %s from spotlight index.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v59, -1, -1);

      (*(v48 + 8))(v11, v82);
    }

    else
    {

      (*(v48 + 8))(v11, v8);
    }

    a3(0);
    return;
  }

  v15 = a1;
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v17 = a1;

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  a2, v20, v21, v22, v23, v24, v25, v26;

  if (os_log_type_enabled(v18, v19))
  {
    v27 = swift_slowAlloc();
    v81 = a3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v80 = a4;
    v30 = v29;
    v31 = swift_slowAlloc();
    v79 = v9;
    v32 = v31;
    v85 = v31;
    *v28 = 136315394;
    v33 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v34 = MEMORY[0x1D3868FE0](a2, v33);
    v36 = v35;
    v37 = sub_1CEFD0DF0(v34, v35, &v85);
    v82 = v8;
    v38 = v37;
    v36, v39, v40, v41, v42, v43, v44, v45;
    *(v28 + 4) = v38;
    *(v28 + 12) = 2112;
    swift_getErrorValue();
    v46 = Error.prettyDescription.getter(v83, v84);
    *(v28 + 14) = v46;
    *v30 = v46;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "Could not delete %s from spotlight index: %@", v28, 0x16u);
    sub_1CEFCCC44(v30, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D386CDC0](v32, -1, -1);
    v47 = v28;
    a3 = v81;
    MEMORY[0x1D386CDC0](v47, -1, -1);

    (*(v79 + 8))(v14, v82);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!sub_1CF9E7818())
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v74 = MEMORY[0x1D3869C30](0, a2);
    goto LABEL_12;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v74 = a2[1].super.isa;
LABEL_12:
    v75 = v74;
    v76 = [(objc_class *)v74 identifier];

    v77 = FPItemNotFoundError();
    a3(v77);

    return;
  }

  __break(1u);
}

uint64_t sub_1CF9202B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v127 = sub_1CF9E6118();
  v12 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v117 - v15;
  v126 = (a2 & 1);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v19 = v18;
  v18[4] = v17;

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = a5;
  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E7298();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v126;
    v26 = v21;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "Request to delete item with ID: %@; recursively %{BOOL}d", v24, 0x12u);
    sub_1CEFCCC44(v25, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v25, -1, -1);
    MEMORY[0x1D386CDC0](v24, -1, -1);
  }

  v28 = *(v12 + 8);
  v27 = v12 + 8;
  v121 = v28;
  v28(v16, v127);
  v29 = swift_allocObject();
  *(v29 + 16) = [v21 identifier];
  *(v29 + 24) = [objc_opt_self() requestForSelf];
  v124 = *(a1 + 16);
  v30 = sub_1CEFD4E9C([v21 identifier]);
  v31 = swift_allocObject();
  *(v31 + 16) = v21;
  *(v31 + 24) = a6;
  *(v31 + 32) = a1;
  *(v31 + 40) = sub_1CF5523F4;
  *(v31 + 48) = v19;
  *(v31 + 56) = v126;
  v32 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  v33 = v21;

  v34 = [v32 init];
  v35 = swift_allocObject();
  v35[2] = sub_1CF9264E8;
  v35[3] = v31;
  v122 = v29 | 2;
  v123 = v35;
  v35[4] = v29 | 2;
  swift_retain_n();
  swift_retain_n();
  v36 = fpfs_current_or_default_log();
  v37 = v125;
  sub_1CF9E6128();
  swift_retain_n();

  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E7298();
  v40 = os_log_type_enabled(v38, v39);
  v126 = v34;
  if (v40)
  {
    v119 = v27;
    v120 = v19;
    v41 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v128[0] = v118;
    *v41 = 136315906;
    v42 = swift_beginAccess();
    v43 = *(v30 + 32);
    v44 = *(v30 + 40);
    if (*(v30 + 41))
    {
      v45 = NSFileProviderItemIdentifier.description.getter(v43);
      v47 = v46;
      sub_1CEFD0994(v43, v44, 1);
    }

    else
    {
      v128[1] = *(v30 + 32);
      v129 = v44;
      v45 = VFSItemID.description.getter(v42);
      v47 = v49;
    }

    v50 = sub_1CEFD0DF0(v45, v47, v128);
    v47, v51, v52, v53, v54, v55, v56, v57;
    *(v41 + 4) = v50;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v128);
    *(v41 + 22) = 2080;
    v48 = v122;
    v58 = sub_1CEFD11AC(v122);
    v60 = v59;

    v61 = sub_1CEFD0DF0(v58, v60, v128);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v41 + 24) = v61;
    *(v41 + 32) = 2048;
    *(v41 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "Lookup itemID %s with behavior %s request %s iteration %ld", v41, 0x2Au);
    v69 = v118;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v69, -1, -1);
    MEMORY[0x1D386CDC0](v41, -1, -1);

    v121(v125, v127);
    v19 = v120;
    v34 = v126;
  }

  else
  {

    v121(v37, v127);
    v48 = v122;
  }

  swift_beginAccess();
  v70 = *(v30 + 32);
  v71 = *(v30 + 40);
  if ((*(v30 + 41) & 1) == 0)
  {
    if (!v70 && v71 == 2)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v72 = qword_1EDEA34B0;
  v73 = v70;
  if (v72 != -1)
  {
    swift_once();
  }

  v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v76 = v75;
  v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v84 = v77;
  if (v74 != v78 || v76 != v77)
  {
    v92 = sub_1CF9E8048();
    v76, v93, v94, v95, v96, v97, v98, v99;
    v84, v100, v101, v102, v103, v104, v105, v106;
    sub_1CEFD0994(v70, v71, 1);
    v34 = v126;
    if (v92)
    {
      goto LABEL_17;
    }

LABEL_19:
    v107 = swift_allocObject();
    *(v107 + 16) = v48;
    v108 = v107 | 0x7000000000000004;
    v109 = swift_allocObject();
    v120 = v19;
    v110 = v123;
    *(v109 + 16) = sub_1CF795FDC;
    *(v109 + 24) = v110;
    v111 = v48;
    v112 = v124;
    *(v109 + 32) = v124;
    *(v109 + 40) = 1;
    *(v109 + 48) = v111;
    *(v109 + 56) = v30;
    *(v109 + 64) = 0;
    *(v109 + 72) = v34;
    *(v109 + 80) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v30;
    *(v113 + 24) = v112;
    *(v113 + 32) = 0;
    *(v113 + 40) = sub_1CF795FE8;
    *(v113 + 48) = v109;
    *(v113 + 56) = v108;
    v114 = swift_allocObject();
    *(v114 + 16) = sub_1CF795FE8;
    *(v114 + 24) = v109;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v115 = v126;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v114, sub_1CF795FEC, v113);

    v34 = v126;

    goto LABEL_20;
  }

  v76, v77, v78, v79, v80, v81, v82, v83;
  v84, v85, v86, v87, v88, v89, v90, v91;
  sub_1CEFD0994(v70, v71, 1);
  v34 = v126;
LABEL_17:
  sub_1CF90CAC8(v48, sub_1CF795FDC, v123);

LABEL_20:
}

void sub_1CF920B9C(char *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, int a7)
{
  LODWORD(v115) = a7;
  v135 = a6;
  v133 = a5;
  v131 = a3;
  v134 = a2;
  v132 = a1;
  v130 = sub_1CF9E6388();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = (v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v126 = v102 - v10;
  v127 = sub_1CF9E6498();
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v120 = v102 - v13;
  v118 = sub_1CF9E63D8();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v119 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1CF9E6448();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E73D8();
  v116 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1CF9E6118();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v22 = v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v102 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v102 - v27);
  sub_1CEFCCBDC(v132, v102 - v27, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v134;
    v30 = v133;
    v31 = v135;
    v32 = *v28;
    _s3__C4CodeOMa_1(0);
    *&v140 = -1005;
    v33 = v32;
    sub_1CF927324(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    v34 = sub_1CF9E5658();

    if (v34)
    {

      v35 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v36 = v29;
      v37 = sub_1CF9E6108();
      v38 = sub_1CF9E7298();

      v39 = v31;
      if (os_log_type_enabled(v37, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v36;
        *v41 = v36;
        v42 = v36;
        _os_log_impl(&dword_1CEFC7000, v37, v38, "Item %@ does not exist, deleting from index", v40, 0xCu);
        sub_1CEFCCC44(v41, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v41, -1, -1);
        MEMORY[0x1D386CDC0](v40, -1, -1);
      }

      (*(v113 + 8))(v25, v114);
      v43 = *(a4 + 16);
      v44 = swift_allocObject();
      *(v44 + 16) = v30;
      *(v44 + 24) = v39;
      v45 = swift_allocObject();
      v45[2] = v36;
      v45[3] = v43;
      v45[4] = v131;
      v45[5] = v30;
      v45[6] = v39;
      v45[7] = 0;
      swift_retain_n();
      v46 = v36;

      sub_1CF7AAF88("deleteSearchableItem(itemID:db:indexReason:completionHandler:)", 62, 2, 2, sub_1CF2BA174, v44, sub_1CF92737C, v45);
    }

    else
    {
      v80 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v81 = v32;
      v82 = v29;
      v83 = sub_1CF9E6108();
      v84 = sub_1CF9E72A8();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412546;
        *(v85 + 4) = v82;
        *v86 = v82;
        *(v85 + 12) = 2112;
        v87 = v32;
        v88 = v82;
        v89 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 14) = v89;
        v86[1] = v89;
        _os_log_impl(&dword_1CEFC7000, v83, v84, "Can't find %@ error %@", v85, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v86, -1, -1);
        MEMORY[0x1D386CDC0](v85, -1, -1);
      }

      (*(v113 + 8))(v22, v114);
      v90 = v32;
      v30(v32);
    }
  }

  else
  {
    sub_1CEFDA05C(v28, v20, type metadata accessor for VFSItem);
    v47 = *(a4 + 16);
    v48 = a4;
    v102[1] = a4;
    v49 = *(*(v47 + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v50 = swift_dynamicCastClassUnconditional();
    v51 = *v20;
    v52 = v20[8];
    v53 = &v20[*(v18 + 36)];
    v54 = *v53;
    v55 = *(v53 + 2);
    v56 = *(v53 + 2);
    v57 = v53[24];
    v58 = *(v20 + 2);
    v59 = v20[24];
    v132 = v20;
    v60 = *(v20 + 4);
    v103 = *(v20 + 5);
    v138 = v57;
    v108 = v54;
    *&v140 = v54;
    v107 = v55;
    DWORD2(v140) = v55;
    v106 = v56;
    *&v141 = v56;
    v105 = v57;
    BYTE8(v141) = v57;
    *&v142 = 0;
    *(&v142 + 1) = v58;
    v110 = v58;
    v109 = v59;
    LOBYTE(v143) = v59;
    v113 = v60;
    *(&v143 + 1) = v60;
    v144 = v103;
    v145 = 0uLL;
    v61 = swift_allocObject();
    v104 = v16;
    v62 = v134;
    v63 = v133;
    v61[2] = v134;
    v61[3] = v63;
    v64 = v131;
    v61[4] = v135;
    v61[5] = v64;
    v61[6] = v48;
    v65 = swift_allocObject();
    v114 = v51;
    *(v65 + 16) = v51;
    v111 = v52;
    *(v65 + 24) = v52;
    v66 = v143;
    *(v65 + 88) = v142;
    *(v65 + 104) = v66;
    v67 = v145;
    *(v65 + 120) = v144;
    *(v65 + 136) = v67;
    v68 = v141;
    *(v65 + 56) = v140;
    *(v65 + 32) = v50;
    *(v65 + 40) = sub_1CF92736C;
    *(v65 + 48) = v61;
    *(v65 + 72) = v68;
    *(v65 + 152) = v115 & 1;
    *(v65 + 160) = 0;
    *(v65 + 168) = 0;
    *(v65 + 176) = 0;
    *(v65 + 184) = 0xB000000000000000;
    v115 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    *(v65 + 192) = 0u;
    *(v65 + 208) = 0u;
    v133 = v50;
    v69 = *(v50 + 216);
    v137 = MEMORY[0x1E69E7CC0];

    sub_1CEFCCBDC(&v140, v136, &unk_1EC4BE330, &unk_1CF9FF010);
    v70 = v62;

    v135 = v49;

    sub_1CEFCCBDC(&v140, v136, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    v71 = v103;

    v134 = v61;

    v72 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
    v73 = v112;
    v74 = v104;
    sub_1CF9E77B8();
    v75 = sub_1CF9E73E8();

    (*(v116 + 8))(v73, v74);
    qos_class_self();
    v76 = v120;
    sub_1CF9E63B8();
    v77 = v117;
    v78 = *(v117 + 48);
    v79 = v118;
    if (v78(v76, 1, v118) == 1)
    {
      (*(v77 + 104))(v119, *MEMORY[0x1E69E7FA0], v79);
      if (v78(v76, 1, v79) != 1)
      {
        sub_1CEFCCC44(v76, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v77 + 32))(v119, v76, v79);
    }

    ObjectType = swift_getObjectType();
    v92 = v121;
    sub_1CF9E6428();
    v93 = swift_allocObject();
    v94 = v114;
    *(v93 + 16) = v133;
    *(v93 + 24) = v94;
    *(v93 + 32) = v111;
    *(v93 + 40) = v108;
    *(v93 + 48) = v107;
    *(v93 + 56) = v106;
    *(v93 + 64) = v105;
    *(v93 + 65) = v137;
    *(v93 + 68) = *(&v137 + 3);
    v95 = v110;
    *(v93 + 72) = 0;
    *(v93 + 80) = v95;
    *(v93 + 88) = v109;
    *(v93 + 89) = *v139;
    *(v93 + 92) = *&v139[3];
    *(v93 + 96) = v113;
    *(v93 + 104) = v71;
    *(v93 + 112) = 0u;
    *(v93 + 128) = 0u;
    *(v93 + 144) = 0;
    *(v93 + 152) = v75;
    *(v93 + 160) = sub_1CF2B064C;
    *(v93 + 168) = v65;

    sub_1CEFCCBDC(&v140, v136, &unk_1EC4BE330, &unk_1CF9FF010);
    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v92, sub_1CEFD5D08, v93, ObjectType);

    (*(v122 + 8))(v92, v123);
    v96 = v124;
    sub_1CF9E6478();
    v97 = v126;
    sub_1CEFD5B64(v126);
    v98 = v128;
    sub_1CEFD5BD8(v128);
    MEMORY[0x1D3869770](v96, v97, v98, ObjectType);
    v99 = *(v129 + 8);
    v100 = v98;
    v101 = v130;
    v99(v100, v130);
    v99(v97, v101);
    (*(v125 + 8))(v96, v127);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
    sub_1CEFCCC44(&v140, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFCCC44(&v140, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFD5398(v132, type metadata accessor for VFSItem);
  }
}

void sub_1CF921B8C(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v56 = a3;
  v10 = sub_1CF9E6118();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC10, &unk_1CFA00660);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v53 - v17);
  sub_1CEFCCBDC(a1, &v53 - v17, &unk_1EC4BEC10, &unk_1CFA00660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = a2;
    v22 = v19;
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E72A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      *(v25 + 4) = v21;
      *v26 = v21;
      *(v25 + 12) = 2112;
      swift_getErrorValue();
      LODWORD(v53) = v24;
      v27 = v57;
      v28 = v58;
      v29 = v21;
      v30 = Error.prettyDescription.getter(v27, v28);
      *(v25 + 14) = v30;
      v26[1] = v30;
      _os_log_impl(&dword_1CEFC7000, v23, v53, "Failed to delete item %@ with error %@", v25, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    (*(v54 + 8))(v15, v55);
    v31 = v19;
    v56(v19);
  }

  else
  {
    v32 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v33 = a2;
    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E7298();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = a4;
      v38 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v38 = v33;
      v39 = v33;
      _os_log_impl(&dword_1CEFC7000, v34, v35, "Succeeded deleting item with itemID %@, not wating on ingestion", v36, 0xCu);
      sub_1CEFCCC44(v38, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v40 = v38;
      a4 = v37;
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v36, -1, -1);
    }

    (*(v54 + 8))(v12, v55);
    v41 = *(v53 + 16);
    v42 = swift_allocObject();
    v43 = v56;
    *(v42 + 16) = v56;
    *(v42 + 24) = a4;
    v44 = swift_allocObject();
    v45 = a4;
    v46 = v44;
    v44[2] = v33;
    v44[3] = v41;
    v44[4] = a5;
    v44[5] = v43;
    v44[6] = v45;
    v44[7] = 0;
    swift_retain_n();
    v47 = v33;

    sub_1CF7AAF88("deleteSearchableItem(itemID:db:indexReason:completionHandler:)", 62, 2, 2, sub_1CF2BA174, v42, sub_1CF92849C, v46);

    v48 = *(a5 + 16);
    v49 = [objc_opt_self() requestForSelf];
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    aBlock[4] = sub_1CF9274A0;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFF9A6C;
    aBlock[3] = &block_descriptor_433_0;
    v51 = _Block_copy(aBlock);
    v52 = v47;

    [v48 forceFSIngestionForItemID:v52 request:v49 completionHandler:v51];
    _Block_release(v51);

    sub_1CEFCCC44(v18, &unk_1EC4BEC10, &unk_1CFA00660);
  }
}

uint64_t sub_1CF922144(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  if (a2)
  {
    v12 = a2;
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = a2;
    v15 = a3;
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E72A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v5;
      v20 = v19;
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2112;
      swift_getErrorValue();
      v21 = v6;
      v22 = v39;
      v37 = v16;
      v23 = v40;
      v24 = v15;
      v25 = v22;
      v6 = v21;
      v26 = Error.prettyDescription.getter(v25, v23);
      *(v18 + 14) = v26;
      v20[1] = v26;
      v27 = v37;
      _os_log_impl(&dword_1CEFC7000, v37, v17, "Failed to force ingestion of item %@ with error %@", v18, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      v28 = v20;
      v5 = v38;
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }

    else
    {
    }

    v8 = v11;
  }

  else
  {
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = a3;
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E7298();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Succeeded ingesting deletion for item with itemID %@", v33, 0xCu);
      sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1CF922488(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v93 = a3;
  v94 = a4;
  v103 = a2;
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6448();
  v96 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7298();
  a1, v18, v19, v20, v21, v22, v23, v24;
  v25 = os_log_type_enabled(v16, v17);
  v99 = v6;
  v100 = v5;
  v97 = v8;
  v98 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315138;
    v28 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v29 = MEMORY[0x1D3868FE0](a1, v28);
    v31 = v30;
    v32 = sub_1CEFD0DF0(v29, v30, &aBlock);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v32;
    _os_log_impl(&dword_1CEFC7000, v16, v17, "Request to delete items: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D386CDC0](v27, -1, -1);
    MEMORY[0x1D386CDC0](v26, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  v104 = dispatch_group_create();
  v40 = a1;
  if (!(a1 >> 62))
  {
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_5;
    }

LABEL_12:
    v53 = v106[2];
    v54 = *(v53 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log);
    v55 = *(v53 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
    v56 = v40;
    v57 = swift_allocObject();
    v57[2] = v105;
    v57[3] = v56;
    v58 = v94;
    v57[4] = v93;
    v57[5] = v58;
    v59 = v54;

    v60 = v59;
    v61 = v55;

    v106 = fpfs_adopt_log();
    v62 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v109 = v63;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v64 = sub_1CF9E7988();
    v66 = v65;
    MEMORY[0x1D3868CC0](v64);
    v66, v67, v68, v69, v70, v71, v72, v73;
    v74 = v109;
    sub_1CF9E6978();
    v74, v75, v76, v77, v78, v79, v80, v81;
    v82 = __fp_log_fork();

    *(v62 + 16) = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = v54;
    *(v83 + 24) = v62;
    *(v83 + 32) = v61;
    *(v83 + 40) = "deleteItems(with:options:completionHandler:)";
    *(v83 + 48) = 44;
    *(v83 + 56) = 2;
    *(v83 + 64) = sub_1CF9264DC;
    *(v83 + 72) = v57;
    v112 = sub_1CEFD5064;
    v113 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v109 = 1107296256;
    v110 = sub_1CEFCA444;
    v111 = &block_descriptor_66;
    v84 = _Block_copy(&aBlock);
    v103 = v60;
    v85 = v61;

    v86 = v95;
    sub_1CF9E63F8();
    v107 = MEMORY[0x1E69E7CC0];
    sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v87 = v97;
    v88 = v100;
    sub_1CF9E77B8();
    v89 = v104;
    sub_1CF9E7308();
    _Block_release(v84);
    (*(v99 + 8))(v87, v88);
    (*(v96 + 8))(v86, v98);

    v90 = v106;
    v91 = fpfs_adopt_log();

    v92 = v103;

    return;
  }

  v52 = sub_1CF9E7818();
  v40 = a1;
  v41 = v52;
  if (!v52)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v41 >= 1)
  {
    v42 = 0;
    v101 = v40 & 0xC000000000000001;
    v102 = v40;
    v43 = v105;
    v44 = v104;
    do
    {
      if (v101)
      {
        v45 = MEMORY[0x1D3869C30](v42);
      }

      else
      {
        v45 = *(v40 + 8 * v42 + 32);
      }

      v46 = v45;
      ++v42;
      dispatch_group_enter(v44);
      v47 = swift_allocObject();
      *(v47 + 16) = v43;
      *(v47 + 24) = v44;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1CF9264BC;
      *(v48 + 24) = v47;
      v49 = swift_allocObject();
      v49[2] = v103;
      v49[3] = sub_1CF9264BC;
      v49[4] = v47;
      v49[5] = v46;
      v49[6] = v106;
      swift_retain_n();

      v50 = v44;
      v51 = v46;

      sub_1CEFD4024("deleteItem(with:options:completionHandler:)", 43, 2, sub_1CF2AF9D0, v48, sub_1CF9264C4, v49);

      v40 = v102;
    }

    while (v41 != v42);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1CF922C84(void *a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = a1;
    v7 = a1;
  }

  dispatch_group_leave(group);
}

void sub_1CF922CF4(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  swift_beginAccess();
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = v14;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = v14;

    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();
    a2, v20, v21, v22, v23, v24, v25, v26;

    if (os_log_type_enabled(v18, v19))
    {
      v27 = swift_slowAlloc();
      v76 = a3;
      v28 = v27;
      v29 = swift_slowAlloc();
      v77 = a4;
      v30 = v29;
      v31 = swift_slowAlloc();
      v75 = v8;
      v32 = v31;
      v81[0] = v31;
      *v28 = 136315394;
      v33 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v34 = MEMORY[0x1D3868FE0](a2, v33);
      v36 = v35;
      v37 = sub_1CEFD0DF0(v34, v35, v81);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v28 + 4) = v37;
      *(v28 + 12) = 2112;
      swift_getErrorValue();
      v45 = Error.prettyDescription.getter(v79, v80);
      *(v28 + 14) = v45;
      *v30 = v45;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Failed to delete items %s with error %@", v28, 0x16u);
      sub_1CEFCCC44(v30, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D386CDC0](v32, -1, -1);
      v46 = v28;
      a3 = v76;
      MEMORY[0x1D386CDC0](v46, -1, -1);

      (*(v78 + 8))(v13, v75);
    }

    else
    {

      (*(v78 + 8))(v13, v8);
    }
  }

  else
  {
    v47 = v8;
    v48 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v49 = sub_1CF9E6108();
    v50 = sub_1CF9E7298();
    a2, v51, v52, v53, v54, v55, v56, v57;
    if (os_log_type_enabled(v49, v50))
    {
      v58 = swift_slowAlloc();
      v77 = a4;
      v59 = v58;
      v60 = swift_slowAlloc();
      v81[0] = v60;
      *v59 = 136315138;
      v61 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v62 = MEMORY[0x1D3868FE0](a2, v61);
      v64 = v63;
      v65 = sub_1CEFD0DF0(v62, v63, v81);
      v64, v66, v67, v68, v69, v70, v71, v72;
      *(v59 + 4) = v65;
      _os_log_impl(&dword_1CEFC7000, v49, v50, "Succeeded deleting items: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1D386CDC0](v60, -1, -1);
      MEMORY[0x1D386CDC0](v59, -1, -1);
    }

    (*(v78 + 8))(v10, v47);
  }

  swift_beginAccess();
  v73 = *(a1 + 16);
  v74 = v73;
  a3(v73);
}

id sub_1CF923210(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a2;
  v11 = a1;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v15 = *(v6 + 16);
    v16 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
    v17 = (a3 + 32);
    do
    {
      v18 = *v17++;
      [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v15 + v16) itemIdentifier:v18];
      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      --v12;
    }

    while (v12);
    v9 = a4;
    v13 = v36;
    v7 = a6;
    v10 = a2;
    v11 = a1;
    v8 = a5;
  }

  v19 = [objc_opt_self() progressWithTotalUnitCount_];
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v8;
  v20[4] = v7;
  v20[5] = v6;
  v20[6] = v11;
  v20[7] = v10;
  v20[8] = v9;
  v21 = v19;

  v22 = v9;
  sub_1CF8406A8(v13, sub_1CF9261CC, v20);
  v13, v23, v24, v25, v26, v27, v28, v29;

  return v21;
}

void sub_1CF9233CC(unint64_t a1, int a2, uint64_t a3, id a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a5;
  v12 = a4;
  if (!a1)
  {
    [a4 setCompletedUnitCount_];
    v11(a3);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v16 = Strong;
  v17 = [Strong session];

  v18 = [v17 newFileProviderProxyWithTimeout:objc_msgSend(*(a7 + 32) pid:{"pid"), -1.0}];
  swift_unknownObjectRelease();
  v19 = sub_1CF9E6888();
  if (a1 >> 62)
  {
    v20 = sub_1CF9E7818();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  v42 = v19;
  if (v20)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CF680D2C(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v39 = v18;
      v40 = v11;
      v41 = v12;
      v22 = 0;
      v21 = aBlock[0];
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1D3869C30](v22, a1);
        }

        else
        {
          v23 = *(a1 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = [v23 identifier];

        aBlock[0] = v21;
        v27 = *v21->tree;
        v26 = *v21->tester;
        if (v27 >= v26 >> 1)
        {
          sub_1CF680D2C((v26 > 1), v27 + 1, 1);
          v21 = aBlock[0];
        }

        ++v22;
        *v21->tree = v27 + 1;
        *(&v21[1].super.isa + v27) = v25;
      }

      while (v20 != v22);
      v11 = v40;
      v12 = v41;
      v18 = v39;
      goto LABEL_15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_15:
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v28 = sub_1CF9E6D28();
  v21, v29, v30, v31, v32, v33, v34, v35;
  aBlock[4] = v11;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_49;
  v36 = _Block_copy(aBlock);

  v37 = [v18 performActionWithIdentifier:v42 onItemsWithIdentifiers:v28 domainIdentifier:a10 completionHandler:v36];
  swift_unknownObjectRelease();
  _Block_release(v36);

  if (v37)
  {
    [v12 addChild:v37 withPendingUnitCount:1];
  }
}

void sub_1CF9237E0(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v126 = a6;
  v127 = a4;
  LODWORD(v125) = a5;
  v128 = a2;
  v129 = a3;
  v7 = sub_1CF9E6388();
  v124 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v123 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v98 - v10;
  v122 = sub_1CF9E6498();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v115 = &v98 - v13;
  v14 = sub_1CF9E63D8();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v117 = *(v16 - 8);
  v118 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E73D8();
  v110 = *(v18 - 8);
  v111 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VFSItem(0);
  v107 = *(v20 - 8);
  v21 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v98 - v26);
  sub_1CEFCCBDC(a1, &v98 - v26, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    v29 = *v27;
    v128(v28, 1);
  }

  else
  {
    v105 = v7;
    sub_1CEFDA05C(v27, v24, type metadata accessor for VFSItem);
    v30 = *(v127 + 16);
    v31 = v24;
    v32 = type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();
    v33 = v31[8];
    v130 = *v31;
    v131 = v33;
    v34 = &v31[*(v20 + 36)];
    v35 = *v34;
    v36 = *(v34 + 2);
    v37 = *(v34 + 2);
    v38 = v34[24];
    v39 = *(v31 + 2);
    v40 = v31[24];
    v41 = *(v31 + 4);
    v42 = *(v31 + 5);
    v106 = v31;
    v140 = v38;
    v102 = v35;
    *&v142 = v35;
    v101 = v36;
    DWORD2(v142) = v36;
    v100 = v37;
    *&v143 = v37;
    v99 = v38;
    BYTE8(v143) = v38;
    *&v144 = 0;
    *(&v144 + 1) = v39;
    LOBYTE(v145) = v40;
    *(&v145 + 1) = v41;
    v146 = v42;
    v147 = 0uLL;

    sub_1CEFDAA48(&v130, &v142, &v132, v43, v44, v45, v46, v47, v48);

    v141[2] = v144;
    v141[3] = v145;
    v141[4] = v146;
    v141[5] = v147;
    v141[0] = v142;
    v141[1] = v143;
    sub_1CEFCCC44(v141, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v49 = v132;
    v51 = v133;
    v50 = v134;
    v103 = v32;
    v104 = v30;
    v52 = swift_dynamicCastClassUnconditional();

    v53 = objc_sync_enter(v52);
    if (v53)
    {
      MEMORY[0x1EEE9AC00](v53);
      *(&v98 - 2) = v52;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v98 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v54 = v52[20];

    v55 = objc_sync_exit(v52);
    if (v55)
    {
      MEMORY[0x1EEE9AC00](v55);
      *(&v98 - 2) = v52;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v98 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v56 = *(v54 + 16);

    v142 = v49;
    v143 = v51;
    *&v144 = v50;
    v57 = sub_1CEFDADE0(&v142, v56, 0x200000);
    v50, v58, v59, v60, v61, v62, v63, v64;
    v65 = v106;
    MEMORY[0x1EEE9AC00](v66);
    *(&v98 - 4) = v57;
    *(&v98 - 12) = v125 & 1;
    v67 = v126;
    *(&v98 - 1) = v126;
    sub_1CEFE1894(sub_1CF9275F4);
    v68 = v128;
    if ((v57 & 0x80000000) == 0)
    {
      close(v57);
    }

    v69 = *(*(v104 + 32) + 16);
    v125 = swift_dynamicCastClassUnconditional();
    v104 = *v65;
    LODWORD(v103) = *(v65 + 8);
    v70 = *(v65 + 16);
    v71 = *(v65 + 24);
    v72 = *(v65 + 32);
    v98 = *(v65 + 40);
    v140 = v99;
    *&v132 = v102;
    DWORD2(v132) = v101;
    *&v133 = v100;
    BYTE8(v133) = v99;
    *&v134 = 0;
    *(&v134 + 1) = v70;
    LOBYTE(v135) = v71;
    *(&v135 + 1) = v72;
    v136 = v98;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v142 = v132;
    v143 = v133;
    v146 = v98;
    v147 = 0u;
    v144 = v134;
    v145 = v135;
    v73 = v108;
    sub_1CEFDA2E4(v65, v108, type metadata accessor for VFSItem);
    v74 = (*(v107 + 80) + 48) & ~*(v107 + 80);
    v75 = swift_allocObject();
    v75[2] = v127;
    v75[3] = v68;
    v75[4] = v129;
    v75[5] = v67;
    sub_1CEFDA05C(v73, v75 + v74, type metadata accessor for VFSItem);
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v76 = *(v125 + 216);
    v130 = MEMORY[0x1E69E7CC0];
    sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    v128 = v69;

    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
    v78 = v109;
    v79 = v111;
    sub_1CF9E77B8();
    v80 = sub_1CF9E73E8();

    (*(v110 + 8))(v78, v79);
    qos_class_self();
    v81 = v115;
    sub_1CF9E63B8();
    v83 = v112;
    v82 = v113;
    v84 = *(v112 + 48);
    if (v84(v81, 1, v113) == 1)
    {
      (*(v83 + 104))(v114, *MEMORY[0x1E69E7FA0], v82);
      if (v84(v81, 1, v82) != 1)
      {
        sub_1CEFCCC44(v81, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v83 + 32))(v114, v81, v82);
    }

    ObjectType = swift_getObjectType();
    v86 = v116;
    sub_1CF9E6428();
    v87 = swift_allocObject();
    v88 = v145;
    *(v87 + 72) = v144;
    *(v87 + 88) = v88;
    v89 = v147;
    *(v87 + 104) = v146;
    *(v87 + 120) = v89;
    v90 = v143;
    *(v87 + 40) = v142;
    v91 = v104;
    *(v87 + 16) = v125;
    *(v87 + 24) = v91;
    *(v87 + 32) = v103;
    *(v87 + 56) = v90;
    *(v87 + 136) = xmmword_1CFA188F0;
    *(v87 + 152) = v80;
    *(v87 + 160) = sub_1CF927618;
    *(v87 + 168) = v75;

    sub_1CEFCCBDC(&v132, &v130, &unk_1EC4BE330, &unk_1CF9FF010);
    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v86, sub_1CF72A328, v87, ObjectType);

    (*(v117 + 8))(v86, v118);
    v92 = v119;
    sub_1CF9E6478();
    v93 = v121;
    sub_1CEFD5B64(v121);
    v94 = v123;
    sub_1CEFD5BD8(v123);
    MEMORY[0x1D3869770](v92, v93, v94, ObjectType);
    v95 = *(v124 + 8);
    v96 = v94;
    v97 = v105;
    v95(v96, v105);
    v95(v93, v97);
    (*(v120 + 8))(v92, v122);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
    sub_1CEFCCC44(&v132, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFD5398(v65, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF9244D0@<X0>(char a2@<W1>, _DWORD *a4@<X8>)
{
  if (a2)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v6 = v5;
    sub_1CF9E6978();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  is_ignore_root = fpfs_set_is_ignore_root();
  result = swift_unknownObjectRelease();
  *a4 = is_ignore_root;
  return result;
}

double sub_1CF924568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v9 = type metadata accessor for VFSItem(0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v24 - v14;
  v31 = *(a2 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1CEFCCBDC(v27, v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  sub_1CEFDA2E4(v29, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VFSItem);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v28 + 80) + v19 + 8) & ~*(v28 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a4;
  sub_1CEFE55D0(v15, v21 + v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  *(v21 + v18) = v26;
  *(v21 + v19) = v30;
  sub_1CEFDA05C(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for VFSItem);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CEFF9D98;
  *(v22 + 24) = v16;
  swift_retain_n();

  sub_1CF7AAF88("updateIgnoreStateOfItem(_:ignoreState:fpfs:completionHandler:)", 62, 2, 2, sub_1CF7968B4, v22, sub_1CF927690, v21);

  return result;
}

void sub_1CF924868(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v57 = a7;
  v58 = a6;
  v60 = a5;
  v61 = a3;
  v62 = a2;
  v56 = a1;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v55 - v18);
  sub_1CEFCCBDC(a4, &v55 - v18, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
LABEL_5:
    v35 = 1;
    goto LABEL_13;
  }

  sub_1CEFE55D0(v19, v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v9 + 48))(v13, 1, v8) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v21 = v16;
    v22 = *v57;
    v23 = *(v57 + 8);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v20 = swift_allocError();
    v26 = v25;
    sub_1CF1B8150();
    v27 = swift_allocError();
    *v28 = v24;
    *&v63 = v22;
    BYTE8(v63) = v23;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = v27;
    sub_1CF2A8DE0(&v63);
    *v26 = v63;
    v29 = v64;
    v30 = v65;
    v31 = v67;
    *(v26 + 48) = v66;
    *(v26 + 64) = v31;
    *(v26 + 16) = v29;
    *(v26 + 32) = v30;
    v32 = v68;
    v33 = v69;
    v34 = v70;
    *(v26 + 128) = v71;
    *(v26 + 96) = v33;
    *(v26 + 112) = v34;
    *(v26 + 80) = v32;
    sub_1CEFCCC44(v21, &unk_1EC4BEC00, &unk_1CF9FCB60);
    goto LABEL_5;
  }

  v36 = v59;
  sub_1CEFDA05C(v13, v59, type metadata accessor for VFSItem);
  v38 = v56[3];
  v37 = v56[4];
  v39 = __swift_project_boxed_opaque_existential_1(v56, v38);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v41 = Strong, v42 = [Strong indexer], v41, v42))
  {
    v43 = [v42 needsAuthentication];

    if (v43)
    {
      v44 = 29;
    }

    else
    {
      v44 = 21;
    }
  }

  else
  {
    v44 = 21;
  }

  v45 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v46 = sub_1CF927324(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v47 = sub_1CF927324(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v20 = sub_1CF76BB00(v36, v44, 0, v45, v39, v8, v38, v46, &off_1F4BF8588, v47, v37);
  v45, v48, v49, v50, v51, v52, v53, v54;
  sub_1CEFD5398(v36, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v35 = 0;
LABEL_13:
  v62(v20, v35);
  sub_1CF091F00(v20);
}

void sub_1CF924DC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v207 = a6;
  v206 = a5;
  v222 = a3;
  v221 = a1;
  v213 = sub_1CF9E63A8();
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v211 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1CF9E6448();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1CF9E6118();
  v10 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v12 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1CF4E43E0(MEMORY[0x1E69E7CC0]);
  v234 = v13;
  *(v13 + 16) = v15;
  v16 = swift_allocObject();
  v17 = sub_1CF4E4A24(v14);
  v233 = v16;
  *(v16 + 16) = v17;
  v18 = dispatch_group_create();
  v20 = *(a2 + 16);
  v224 = v18;
  if (v20)
  {
    v21 = v18;
    v22 = (a2 + 32);
    v219 = a4 & 1;
    v218 = *(v221 + 16);
    v217 = (v10 + 8);
    v23 = 0x4000000000000002;
    if (a4)
    {
      v23 = 0x4000000000000000;
    }

    v216 = v23;
    *&v19 = 136315906;
    v214 = v19;
    v225 = v12;
    do
    {
      v231 = v22;
      v232 = v20;
      v31 = *v22;
      dispatch_group_enter(v21);
      v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = v33;
      v35 = v31;
      LOBYTE(v32) = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v32, v34);
      v34, v36, v37, v38, v39, v40, v41, v42;
      if ((v32 & 1) == 0 || (v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0(), v45 = v44, v46 = sub_1CF025150(0x80007uLL, v43, v44), v48 = v47, v50 = v49, v52 = v51, v45, v47, v49, v51, v53, v54, v55, v56, v57 = MEMORY[0x1D3868C10](v46, v48, v50, v52), v59 = v58, v52, v58, v60, v61, v62, v63, v64, v65, VFSItemID.init(parsing:)(v57, v59, &aBlock, v66, v67, v68, v69, v70, v71), v72 = v237, v237 == 255))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v73 = swift_allocObject();
        *(v73 + 42) = 0;
        *(v73 + 32) = v31;
        *(v73 + 40) = 256;
        *(v73 + 16) = v31;
        *(v73 + 24) = 256;
        v75 = v35;
        v72 = 0;
        v74 = 1;
      }

      else
      {

        v31 = aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v73 = swift_allocObject();
        v74 = 0;
        *(v73 + 32) = v31;
        *(v73 + 40) = v72;
        *(v73 + 41) = 0;
        *(v73 + 16) = v31;
        *(v73 + 24) = v72;
        *(v73 + 25) = 0;
      }

      v76 = swift_allocObject();
      v78 = v233;
      v77 = v234;
      v76[2] = v21;
      v76[3] = v78;
      v76[4] = v35;
      v76[5] = v77;
      v79 = swift_allocObject();
      *(v79 + 16) = v31;
      *(v79 + 24) = v72;
      *(v79 + 25) = v74;
      v80 = v222;
      v81 = *(v222 + 32);
      *(v79 + 32) = v81;
      sub_1CEFD0988(v31, v72, v74);
      v82 = v81;
      v223 = v79;
      v83 = v216 | v79;
      v84 = swift_allocObject();
      *(v84 + 16) = sub_1CF92755C;
      *(v84 + 24) = v76;
      v85 = swift_allocObject();
      v86 = v221;
      swift_weakInit();
      v87 = swift_allocObject();
      v87[2] = sub_1CF2B1400;
      v87[3] = v84;
      v87[4] = v85;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_1CF92756C;
      *(v88 + 24) = v87;
      v89 = swift_allocObject();
      *(v89 + 16) = sub_1CEFF9944;
      *(v89 + 24) = v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v219;
      *(v89 + 48) = v80;
      v90 = objc_allocWithZone(MEMORY[0x1E696AE38]);
      v227 = v35;
      v91 = v21;

      v230 = v76;
      v92 = v83;

      v228 = v88;

      v226 = [v90 init];
      v93 = swift_allocObject();
      v93[2] = sub_1CF9275D4;
      v93[3] = v89;
      v93[4] = v83;
      v229 = v89;

      sub_1CEFD09A0(v83);
      v94 = fpfs_current_or_default_log();
      v95 = v225;
      sub_1CF9E6128();
      sub_1CEFD09A0(v92);
      sub_1CEFD09A0(v92);

      v96 = sub_1CF9E6108();
      v97 = sub_1CF9E7298();
      if (os_log_type_enabled(v96, v97))
      {
        v215 = v93;
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v235 = v99;
        *v98 = v214;
        v100 = swift_beginAccess();
        v101 = *(v73 + 32);
        v102 = *(v73 + 40);
        if (*(v73 + 41))
        {
          v103 = NSFileProviderItemIdentifier.description.getter(v101);
          v105 = v104;
          sub_1CEFD0994(v101, v102, 1);
        }

        else
        {
          aBlock = *(v73 + 32);
          LOBYTE(v237) = v102;
          v103 = VFSItemID.description.getter(v100);
          v105 = v106;
        }

        v107 = sub_1CEFD0DF0(v103, v105, &v235);
        v105, v108, v109, v110, v111, v112, v113, v114;
        *(v98 + 4) = v107;
        *(v98 + 12) = 2080;
        *(v98 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v235);
        *(v98 + 22) = 2080;
        v115 = sub_1CEFD11AC(v92);
        v117 = v116;
        sub_1CEFD0A98(v92);
        sub_1CEFD0A98(v92);
        v118 = sub_1CEFD0DF0(v115, v117, &v235);
        v117, v119, v120, v121, v122, v123, v124, v125;
        *(v98 + 24) = v118;
        *(v98 + 32) = 2048;
        *(v98 + 34) = 0;
        _os_log_impl(&dword_1CEFC7000, v96, v97, "Lookup itemID %s with behavior %s request %s iteration %ld", v98, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v99, -1, -1);
        MEMORY[0x1D386CDC0](v98, -1, -1);

        (*v217)(v225, v220);
        v21 = v224;
        v93 = v215;
      }

      else
      {
        sub_1CEFD0A98(v92);
        sub_1CEFD0A98(v92);

        (*v217)(v95, v220);
        v21 = v224;
      }

      swift_beginAccess();
      v126 = *(v73 + 32);
      v127 = *(v73 + 40);
      if (*(v73 + 41))
      {
        v128 = qword_1EDEA34B0;
        v129 = v126;
        if (v128 != -1)
        {
          swift_once();
        }

        v130 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v132 = v131;
        v134 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v140 = v130;
        v141 = v133;
        if (v140 == v134 && v132 == v133)
        {
          v132, v133, v134, v135, v136, v137, v138, v139;
          v141, v24, v25, v26, v27, v28, v29, v30;
          sub_1CEFD0994(v126, v127, 1);
        }

        else
        {
          v142 = sub_1CF9E8048();
          v132, v143, v144, v145, v146, v147, v148, v149;
          v141, v150, v151, v152, v153, v154, v155, v156;
          sub_1CEFD0994(v126, v127, 1);
          if ((v142 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else if (v126 || v127 != 2)
      {
LABEL_27:
        if (((v92 >> 58) & 0x3C | (v92 >> 1) & 3) == 0x1E)
        {
          v157 = *((v223 & 0xFFFFFFFFFFFFFF9) + 0x10);
          v158 = v157;
        }

        else
        {
          v159 = swift_allocObject();
          *(v159 + 16) = v92;
          v158 = v159 | 0x7000000000000004;
          v157 = v92;
        }

        sub_1CEFD09A0(v157);
        v160 = swift_allocObject();
        *(v160 + 16) = sub_1CF796A0C;
        *(v160 + 24) = v93;
        v161 = v218;
        *(v160 + 32) = v218;
        *(v160 + 40) = 1;
        *(v160 + 48) = v92;
        *(v160 + 56) = v73;
        *(v160 + 64) = 0;
        v162 = v226;
        *(v160 + 72) = v226;
        *(v160 + 80) = 0;
        v163 = swift_allocObject();
        *(v163 + 16) = v73;
        *(v163 + 24) = v161;
        *(v163 + 32) = 0;
        *(v163 + 40) = sub_1CF796A90;
        *(v163 + 48) = v160;
        *(v163 + 56) = v158;
        v164 = swift_allocObject();
        *(v164 + 16) = sub_1CF796A90;
        *(v164 + 24) = v160;

        sub_1CEFD09A0(v92);

        v165 = v162;
        sub_1CEFD09A0(v158);
        sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v164, sub_1CF796A9C, v163);

        sub_1CEFD0A98(v158);
        v21 = v224;
        goto LABEL_7;
      }

      sub_1CF90CAC8(v92, sub_1CF796A0C, v93);

LABEL_7:
      sub_1CEFD0A98(v92);
      v22 = v231 + 1;
      v20 = v232 - 1;
    }

    while (v232 != 1);
  }

  v166 = *(v222 + 16);
  v167 = *(v166 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log);
  v168 = *(v166 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v169 = swift_allocObject();
  v170 = v207;
  v169[2] = v206;
  v169[3] = v170;
  v171 = v233;
  v169[4] = v234;
  v169[5] = v171;
  v172 = v167;

  v173 = v172;
  v174 = v168;

  v232 = fpfs_adopt_log();
  v175 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v237 = v176;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v177 = sub_1CF9E7988();
  v179 = v178;
  MEMORY[0x1D3868CC0](v177);
  v179, v180, v181, v182, v183, v184, v185, v186;
  v187 = v237;
  sub_1CF9E6978();
  v187, v188, v189, v190, v191, v192, v193, v194;
  v195 = __fp_log_fork();

  *(v175 + 16) = v195;
  v196 = swift_allocObject();
  *(v196 + 16) = v167;
  *(v196 + 24) = v175;
  *(v196 + 32) = v174;
  *(v196 + 40) = "updateIgnoreStateOfItem(withIdentifiers:ignoreState:completionHandler:)";
  *(v196 + 48) = 71;
  *(v196 + 56) = 2;
  *(v196 + 64) = sub_1CF9275E8;
  *(v196 + 72) = v169;
  v240 = sub_1CF2B9F54;
  v241 = v196;
  aBlock = MEMORY[0x1E69E9820];
  v237 = 1107296256;
  v238 = sub_1CEFCA444;
  v239 = &block_descriptor_546;
  v197 = _Block_copy(&aBlock);
  v231 = v173;
  v198 = v174;

  v199 = v208;
  sub_1CF9E63F8();
  v235 = MEMORY[0x1E69E7CC0];
  sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v200 = v211;
  v201 = v213;
  sub_1CF9E77B8();
  v202 = v224;
  sub_1CF9E7308();
  _Block_release(v197);
  (*(v212 + 8))(v200, v201);
  (*(v209 + 8))(v199, v210);

  v203 = v232;
  v204 = fpfs_adopt_log();

  v205 = v231;
}

void sub_1CF925DB0(void *a1, char a2, NSObject *a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1CF0BA8A4(a1);
  v12 = a5;
  if (objc_sync_enter(a3))
  {
    swift_unknownObjectRetain();
    sub_1CF091F00(a1);

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a3);
  }

  swift_beginAccess();
  sub_1CF0BA8A4(a1);
  if (a2)
  {
    v13 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1CF1D40B0(a1, v13, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v17;
  }

  else
  {
    v15 = v12;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_1CF1D2E08(a1, v15, v16);

    *(a6 + 16) = v18;
  }

  swift_endAccess();
  if (objc_sync_exit(a3))
  {
    swift_unknownObjectRetain();
    sub_1CF091F00(a1);

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a3);
  }

  sub_1CF091F00(a1);

  dispatch_group_leave(a3);
}

void sub_1CF925F84(void (*a1)(_TtC18FileProviderDaemon8FSTester *, _TtC18FileProviderDaemon8FSTester *, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);

  (a1)(v7, v8, 0);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_1CF926228(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  (a3)(v9, a2);
  return sub_1CEFCCC44(v9, a5, a6);
}

uint64_t sub_1CF926288(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3[0] = 0;
  v3[1] = 0;
  return a2(v3, a1);
}

uint64_t sub_1CF9262C8(void *a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  *(&v9 - v5) = a1;
  swift_storeEnumTagMultiPayload();
  v7 = a1;
  a2(v6);
  return sub_1CEFCCC44(v6, &qword_1EC4C5020, &qword_1CFA0A278);
}

void sub_1CF926394(void *a1, void (*a2)(void *))
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v6 = 1;
  v4 = a1;
  a2(v5);
}

void sub_1CF926400(void *a1, void (*a2)(void **))
{
  v5 = a1;
  v6 = 1;
  v4 = a1;
  a2(&v5);
}

void sub_1CF926514(uint64_t a1, void (*a2)(void *), uint64_t a3, void **a4)
{
  v5 = *a1;
  if (*(a1 + 8))
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v9 = *a4;
    v10 = v5;
    v11 = sub_1CF906288(v5, v9);
    v7 = v12;
    v8 = v13;
    sub_1CF091F00(v5);
    v5 = v11;
  }

  v15[0] = v5;
  v15[1] = v7;
  v14 = v8 & 1;
  v16 = v14;
  a2(v15);

  sub_1CF9272D8(v5, v7, v14);
}

uint64_t objectdestroy_56Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return swift_deallocObject();
}

void sub_1CF92672C(void *a1)
{
  v3 = *(v1 + 16);
  v5[0] = a1;
  v5[1] = 0;
  v6 = 1;
  v4 = a1;
  v3(v5);
}

uint64_t sub_1CF9267E4(uint64_t a1, char a2, unint64_t a3)
{
  v6 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  v15 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v87 - v24;
  if (*(a1 + *(v9 + 56)) == 1)
  {
    v88 = v23;
    v89 = v22;
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(a1, v14, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFD09A0(a3);
    sub_1CEFD09A0(a3);
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E7298();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v90 = v30;
      *v29 = 136315394;
      sub_1CEFDA2E4(v14, v8, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v14, &qword_1EC4C5220, &qword_1CFA0A270);
      v31 = sub_1CF255338();
      v33 = v32;
      sub_1CEFD5398(v8, type metadata accessor for VFSItem);
      v34 = sub_1CEFD0DF0(v31, v33, &v90);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v42 = sub_1CEFD11AC(a3);
      v44 = v43;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v45 = sub_1CEFD0DF0(v42, v44, &v90);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v29 + 14) = v45;
      _os_log_impl(&dword_1CEFC7000, v27, v28, "Found item on disk, but item is not accessible yet %s, request %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v30, -1, -1);
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(a3);
      sub_1CEFCCC44(v14, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(a3);
    }

    (*(v88 + 8))(v25, v89);
    return 0;
  }

  if ((a2 & 1) != 0 && !*(a1 + *(v9 + 52)))
  {
    v88 = v23;
    v89 = v22;
    v60 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(a1, v11, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFD09A0(a3);
    sub_1CEFD09A0(a3);
    v61 = sub_1CF9E6108();
    v62 = sub_1CF9E7298();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v90 = v64;
      *v63 = 136315394;
      sub_1CEFDA2E4(v11, v8, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v11, &qword_1EC4C5220, &qword_1CFA0A270);
      v65 = sub_1CF255338();
      v67 = v66;
      sub_1CEFD5398(v8, type metadata accessor for VFSItem);
      v68 = sub_1CEFD0DF0(v65, v67, &v90);
      v67, v69, v70, v71, v72, v73, v74, v75;
      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      v76 = sub_1CEFD11AC(a3);
      v78 = v77;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v79 = sub_1CEFD0DF0(v76, v78, &v90);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v63 + 14) = v79;
      _os_log_impl(&dword_1CEFC7000, v61, v62, "Found item on disk, but item is not reconciled yet %s, request %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v64, -1, -1);
      MEMORY[0x1D386CDC0](v63, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(a3);
      sub_1CEFCCC44(v11, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(a3);
    }

    (*(v88 + 8))(v20, v89);
    return 0;
  }

  v53 = v22;
  result = 1;
  if (*(a1 + 8) == 2 && *a1 == 1)
  {
    v55 = v23;
    v56 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v57 = sub_1CF9E6108();
    v58 = sub_1CF9E7298();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1CEFC7000, v57, v58, "Found item on the trash, lookup the root to make sure it's materialized", v59, 2u);
      MEMORY[0x1D386CDC0](v59, -1, -1);
    }

    (*(v55 + 8))(v17, v53);
    return 0;
  }

  return result;
}

uint64_t sub_1CF926E84(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF91200C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *v5, *(v5 + 8), *(v5 + 9));
}

uint64_t objectdestroy_183Tm()
{

  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF927098()
{
  v1 = *(v0 + 16);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1(v3);
  return sub_1CEFCCC44(v3, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t objectdestroy_284Tm()
{

  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_166Tm_0()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

void sub_1CF9272D8(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_1CF927324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_396Tm(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 40));
  (a1)(*(v2 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_77Tm_1(uint64_t a1)
{

  return swift_deallocObject();
}

double sub_1CF927618(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1CF924568(a1, v4, v5, v6, v7, v8);
}

void sub_1CF927690(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for VFSItem(0) - 8);
  sub_1CF924868(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), (v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80))));
}

void sub_1CF92779C()
{
  v1 = *(v0 + 16);
  v2 = sub_1CF9E57E8();
  (*(v1 + 16))(v1, v2);
}

uint64_t objectdestroy_489Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_447Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_412Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_462Tm(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

void sub_1CF927A5C(unint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1CF7D9384(a1);
  v4 = v3;
  v2();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t objectdestroy_762Tm()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

void sub_1CF927C18(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void), double a5, double a6)
{
  v63 = swift_allocObject();
  *(v63 + 16) = a4;
  _Block_copy(a4);
  v10 = sub_1CF4E40EC(MEMORY[0x1E69E7CC0]);
  if (a2 >> 62)
  {
LABEL_26:
    v11 = sub_1CF9E7818();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1D3869C30](v12, a2);
        }

        else
        {
          if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v22 = *(a2 + 8 * v12 + 32);
        }

        v23 = v22;
        v24 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = sub_1CF7BF8D8(v23);
        v28 = *v10->tree;
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_23;
        }

        v31 = v26;
        if (*v10->tester >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v26)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1CF7D338C();
            if (v31)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1CF7CBBA8(v30, isUniquelyReferenced_nonNull_native);
          v32 = sub_1CF7BF8D8(v23);
          if ((v31 & 1) != (v33 & 1))
          {

            sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
            _Block_release(a4);
            sub_1CF9E8108();
            __break(1u);
            return;
          }

          v27 = v32;
          if (v31)
          {
LABEL_4:
            v13 = *v10[1].tester;
            v14 = *(v13 + 8 * v27);
            *(v13 + 8 * v27) = MEMORY[0x1E69E7CC0];

            v14, v15, v16, v17, v18, v19, v20, v21;
            goto LABEL_5;
          }
        }

        *(&v10[2].super.isa + (v27 >> 6)) |= 1 << v27;
        *(*v10[1].tree + 8 * v27) = v23;
        *(*v10[1].tester + 8 * v27) = MEMORY[0x1E69E7CC0];
        v34 = *v10->tree;
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_24;
        }

        *v10->tree = v36;
LABEL_5:
        ++v12;
      }

      while (v24 != v11);
    }
  }

  sub_1CF7BC0F4(v10);
  v38 = v37;
  v10, v39, v40, v41, v42, v43, v44, v45;
  sub_1CF919738(v38);
  v47 = v46;
  v38, v48, v49, v50, v51, v52, v53, v54;
  if (v47)
  {
    v55 = *(a3 + 16);
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1CF067718;
    *(v56 + 24) = v63;
    *(v56 + 32) = a3;
    *(v56 + 40) = a1;
    *(v56 + 48) = a5;
    *(v56 + 56) = a6;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1CF9283D4;
    *(v57 + 24) = v56;
    v58 = swift_allocObject();
    v58[2] = v47;
    v58[3] = sub_1CF9283D4;
    v58[4] = v56;
    v58[5] = v55;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1CF9283E8;
    *(v59 + 24) = v57;
    swift_retain_n();

    swift_unknownObjectRetain();
    v60 = v55;

    sub_1CEFD4024("withFPItemIdentifier(forDictionary:cb:)", 39, 2, sub_1CF9284C0, v59, sub_1CF9283CC, v58);
  }

  else
  {
    a4[2](a4, 0);
  }
}

double sub_1CF928030(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), double a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  _Block_copy(a4);
  sub_1CF919738(a2);
  if (v13)
  {
    v14 = v13;
    v15 = *(a3 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1CF067718;
    *(v16 + 24) = v12;
    *(v16 + 32) = a3;
    *(v16 + 40) = a1;
    *(v16 + 48) = a5;
    *(v16 + 56) = a6;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1CF92823C;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = sub_1CF92823C;
    v18[4] = v16;
    v18[5] = v15;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1CF9283E8;
    *(v19 + 24) = v17;
    swift_retain_n();

    swift_unknownObjectRetain();
    v20 = v15;

    sub_1CEFD4024("withFPItemIdentifier(forDictionary:cb:)", 39, 2, sub_1CF927554, v19, sub_1CF8F89E4, v18);
  }

  else
  {
    a4[2](a4, 0);
  }

  return result;
}

uint64_t objectdestroy_537Tm(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_842Tm_0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF928300(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 32);
  return v2(&v4, a1);
}

void sub_1CF9284C8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = *(a1 + 32);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v11 = sub_1CF9E6D48();

  v22 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v10(v11, a3, a4, a5, a6);

  v11, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1CF9285C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1CF92865C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)())
{
  v100 = a4;
  v101 = a5;
  LODWORD(v104) = a3;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v5;
  v94 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  (*(v9 + 56))(v16, 1, 1, v8);
  aBlock = 0x74616220636E7973;
  v106 = 0xEB00000000206863;
  v98 = a1;
  v99 = a2;
  v20 = sub_1CF9E7988();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v95 = v106;
  v96 = aBlock;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(v9 + 48);
  if (v30(v13, 1, v8) == 1)
  {
    v31 = v19;
    v32 = v97;
    sub_1CF9E6048();
    if (v30(v13, 1, v8) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v32 = v97;
    (*(v9 + 32))(v97, v13, v8);
  }

  v33 = v103;
  (*(v9 + 16))(v103, v32, v8);
  *(v33 + *(v17 + 20)) = v19;
  v34 = v33 + *(v17 + 24);
  *v34 = "DB queue wait";
  *(v34 + 8) = 13;
  *(v34 + 16) = 2;
  v35 = v19;
  v36 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1CEFD51C4();
  v38 = v95;
  *(v37 + 32) = v96;
  *(v37 + 40) = v38;
  v91 = v37;
  LOBYTE(v90) = 2;
  sub_1CF9E6028(v36, &dword_1CEFC7000, v35, "DB queue wait", 13, 2, v33, "%s", 2);
  v37, v39, v40, v41, v42, v43, v44, v45;
  (*(v9 + 8))(v32, v8);
  v46 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v97 = &v93;
  v47 = v102[8];
  MEMORY[0x1EEE9AC00](v46);
  v49 = v98;
  v48 = v99;
  *(&v93 - 8) = v33;
  *(&v93 - 7) = v49;
  *(&v93 - 6) = v48;
  *(&v93 - 40) = v104;
  v89 = v50;
  v90 = v100;
  v91 = v101;
  v51 = fpfs_current_log();
  v104 = fpfs_adopt_log();
  v112 = 0;
  v113 = 1;
  aBlock = sub_1CF9E73C8();
  v106 = v52;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v53 = sub_1CF9E7988();
  v55 = v54;
  MEMORY[0x1D3868CC0](v53);
  v55, v56, v57, v58, v59, v60, v61, v62;
  v63 = v106;
  sub_1CF9E6978();
  v63, v64, v65, v66, v67, v68, v69, v70;
  v71 = __fp_log_fork();

  v112 = v71;
  v113 = 0;
  MEMORY[0x1EEE9AC00](v72);
  *(&v93 - 8) = v51;
  *(&v93 - 7) = &v112;
  *(&v93 - 6) = v47;
  *(&v93 - 5) = "syncBatch(function:updateBlock:)";
  v89 = 32;
  LOBYTE(v90) = 2;
  v91 = sub_1CF92C308;
  v92 = &v93 - 10;
  v114 = 1;
  v111 = 0;
  v73 = swift_allocObject();
  v73[2] = &v114;
  v73[3] = sub_1CF2B16F4;
  v73[4] = &v93 - 10;
  v73[5] = &v111;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1CF2B16B0;
  *(v74 + 24) = v73;
  v109 = sub_1CEFFD054;
  v110 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1CEFFD02C;
  v108 = &block_descriptor_50;
  v75 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v47, v75);
  _Block_release(v75);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v76 = v111;
  if (!v111)
  {
    if ((v114 & 1) == 0)
    {

      v81 = v104;
      v82 = fpfs_adopt_log();

      sub_1CF0593C8(v103);
      v83 = v94;
      v84 = fpfs_adopt_log();

      return;
    }

    goto LABEL_16;
  }

  swift_willThrow();

  v77 = v104;
  v78 = fpfs_adopt_log();

  sub_1CF0593C8(v103);
  aBlock = v76;
  v79 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {

    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
    v80 = aBlock;
  }

  else
  {

    v85 = *(*v102 + 496);
    v86 = v76;
    v85(v76, 1, "syncBatch(function:updateBlock:)", 32, 2);

    v80 = v76;
  }

  v87 = v94;
  v88 = fpfs_adopt_log();
}

void sub_1CF928EDC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t a6@<X8>)
{
  v112 = a4;
  v113 = a5;
  LODWORD(v117) = a3;
  v104[0] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = v104 - v12;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v109 = (v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v104 - v20;
  v22 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v22);
  v116 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v6;
  v106 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v14 + 56))(v21, 1, 1, v13);
  aBlock = 0x74616220636E7973;
  v119 = 0xEB00000000206863;
  v110 = a1;
  v111 = a2;
  v25 = sub_1CF9E7988();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  v107 = v119;
  v108 = aBlock;
  sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v14 + 48);
  if (v35(v18, 1, v13) == 1)
  {
    v36 = v24;
    v37 = v109;
    sub_1CF9E6048();
    v38 = v37;
    if (v35(v18, 1, v13) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v38 = v109;
    (*(v14 + 32))(v109, v18, v13);
  }

  v39 = v116;
  (*(v14 + 16))(v116, v38, v13);
  *(v39 + *(v22 + 20)) = v24;
  v40 = v39 + *(v22 + 24);
  *v40 = "DB queue wait";
  *(v40 + 8) = 13;
  *(v40 + 16) = 2;
  v41 = v24;
  v42 = v38;
  v43 = v41;
  v44 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA450;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = sub_1CEFD51C4();
  v46 = v107;
  *(v45 + 32) = v108;
  *(v45 + 40) = v46;
  v102 = v45;
  LOBYTE(v101) = 2;
  sub_1CF9E6028(v44, &dword_1CEFC7000, v43, "DB queue wait", 13, 2, v39, "%s", 2);
  v45, v47, v48, v49, v50, v51, v52, v53;
  (*(v14 + 8))(v42, v13);
  v54 = sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
  v109 = v104;
  v55 = v115[8];
  MEMORY[0x1EEE9AC00](v54);
  v57 = v110;
  v56 = v111;
  v104[-8] = v39;
  v104[-7] = v57;
  v104[-6] = v56;
  LOBYTE(v104[-5]) = v117;
  v100 = v58;
  v101 = v112;
  v102 = v113;
  v59 = fpfs_current_log();
  v60 = fpfs_adopt_log();
  v124 = 0;
  v125 = 1;
  aBlock = sub_1CF9E73C8();
  v119 = v61;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v62 = sub_1CF9E7988();
  v64 = v63;
  MEMORY[0x1D3868CC0](v62);
  v64, v65, v66, v67, v68, v69, v70, v71;
  v72 = v119;
  sub_1CF9E6978();
  v72, v73, v74, v75, v76, v77, v78, v79;
  v80 = __fp_log_fork();

  v117 = v104;
  v124 = v80;
  v125 = 0;
  MEMORY[0x1EEE9AC00](v81);
  v104[-8] = v59;
  v104[-7] = &v124;
  v104[-6] = v55;
  v104[-5] = "syncBatch(function:updateBlock:)";
  v100 = 32;
  LOBYTE(v101) = 2;
  v102 = sub_1CF92D9EC;
  v103 = &v104[-10];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v83 = *(v82 - 8);
  v84 = v114;
  (*(v83 + 56))(v114, 1, 1, v82);
  v126 = 0;
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = sub_1CF2B16F4;
  v85[4] = &v104[-10];
  v85[5] = &v126;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1CF92DA18;
  *(v86 + 24) = v85;
  v122 = sub_1CF1C0B54;
  v123 = v86;
  aBlock = MEMORY[0x1E69E9820];
  v119 = 1107296256;
  v120 = sub_1CEFFD02C;
  v121 = &block_descriptor_89_0;
  v87 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v55, v87);
  _Block_release(v87);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v88 = v126;
  if (!v126)
  {
    v92 = v105;
    sub_1CEFCCBDC(v84, v105, &qword_1EC4C45C8, qword_1CFA164E8);
    if ((*(v83 + 48))(v92, 1, v82) != 1)
    {
      sub_1CF92DA24(v92, v104[0]);
      sub_1CEFCCC44(v84, &qword_1EC4C45C8, qword_1CFA164E8);

      v93 = fpfs_adopt_log();

      sub_1CF0593C8(v116);
      v94 = v106;
      v95 = fpfs_adopt_log();

      return;
    }

    goto LABEL_16;
  }

  swift_willThrow();
  sub_1CEFCCC44(v84, &qword_1EC4C45C8, qword_1CFA164E8);

  v89 = fpfs_adopt_log();

  sub_1CF0593C8(v116);
  aBlock = v88;
  v90 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {

    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
    v91 = aBlock;
  }

  else
  {

    v96 = *(*v115 + 496);
    v97 = v88;
    v96(v88, 1, "syncBatch(function:updateBlock:)", 32, 2);

    v91 = v88;
  }

  v98 = v106;
  v99 = fpfs_adopt_log();
}

void *sub_1CF9298C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50[2] = a7;
  v50[1] = a6;
  v57 = a5;
  LODWORD(v54) = a4;
  v52 = a3;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  (*(v8 + 56))(v15, 1, 1, v7);
  v55 = 0x74616220636E7973;
  v56 = 0xEB00000000206863;
  v20 = sub_1CF9E7988();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v51 = v56;
  v52 = v55;
  v54 = v15;
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(v8 + 48);
  if (v30(v12, 1, v7) == 1)
  {
    v31 = v19;
    v32 = v53;
    sub_1CF9E6048();
    if (v30(v12, 1, v7) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v32 = v53;
    (*(v8 + 32))(v53, v12, v7);
  }

  (*(v8 + 16))(v18, v32, v7);
  *&v18[*(v16 + 20)] = v19;
  v33 = &v18[*(v16 + 24)];
  *v33 = "DB queue";
  *(v33 + 1) = 8;
  v33[16] = 2;
  v34 = v19;
  v35 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1CEFD51C4();
  v37 = v51;
  *(v36 + 32) = v52;
  *(v36 + 40) = v37;
  sub_1CF9E6028(v35, &dword_1CEFC7000, v34, "DB queue", 8, 2, v18, "%s", 2);
  v36, v38, v39, v40, v41, v42, v43, v44;
  (*(v8 + 8))(v32, v7);
  sub_1CEFCCC44(v54, &unk_1EC4BED20, &unk_1CFA00700);
  v45 = v57;
  is_cancelled = fp_task_tracker_is_cancelled(*(*(v57 + 168) + 16));
  if (is_cancelled)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_11:
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF0593C8(v18);
  }

  v47 = MEMORY[0x1EEE9AC00](is_cancelled);
  v48 = v50[3];
  result = (*(*v45 + 2528))(&v55, sub_1CF8F9348, v47);
  if (v48 || (v55 & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF929E14@<X0>(uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a7;
  v58 = a8;
  v59 = a6;
  v69 = a5;
  LODWORD(v66) = a4;
  v64 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C45C8, qword_1CFA164E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v57 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  (*(v11 + 56))(v18, 1, 1, v10);
  v67 = 0x74616220636E7973;
  v68 = 0xEB00000000206863;
  v23 = sub_1CF9E7988();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  v63 = v68;
  v64 = v67;
  v66 = v18;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v33 = *(v11 + 48);
  if (v33(v15, 1, v10) == 1)
  {
    v34 = v22;
    v35 = v65;
    sub_1CF9E6048();
    if (v33(v15, 1, v10) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v35 = v65;
    (*(v11 + 32))(v65, v15, v10);
  }

  (*(v11 + 16))(v21, v35, v10);
  *&v21[*(v19 + 20)] = v22;
  v36 = *(v19 + 24);
  v37 = v35;
  v38 = &v21[v36];
  *v38 = "DB queue";
  *(v38 + 1) = 8;
  v38[16] = 2;
  v39 = v22;
  v40 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CF9FA450;
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = sub_1CEFD51C4();
  v42 = v63;
  *(v41 + 32) = v64;
  *(v41 + 40) = v42;
  sub_1CF9E6028(v40, &dword_1CEFC7000, v39, "DB queue", 8, 2, v21, "%s", 2);
  v41, v43, v44, v45, v46, v47, v48, v49;
  (*(v11 + 8))(v37, v10);
  sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
  v50 = v69;
  is_cancelled = fp_task_tracker_is_cancelled(*(*(v69 + 168) + 16));
  if (is_cancelled)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_10:
    sub_1CF9E7458();
LABEL_11:
    sub_1CF9E6038();
    return sub_1CF0593C8(v21);
  }

  MEMORY[0x1EEE9AC00](is_cancelled);
  v52 = *(*v50 + 2528);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v54 = v61;
  v55 = v62;
  v52(sub_1CF92DA94, &v57 - 6, v53);
  if (v54)
  {
    goto LABEL_10;
  }

  result = (*(*(v53 - 8) + 48))(v55, 1, v53);
  if (result != 1)
  {
    sub_1CF92DA24(v55, v58);
    sub_1CF9E7458();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF92A42C(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
    return sub_1CF5A62B4(v7, v5, v6);
  }

  return result;
}

void sub_1CF92A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v11 = sub_1CF9E6D28();
  if (a5)
  {
    v12 = sub_1CF9E57E8();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a6 + 16))(a6, v11, a2, a3, a4);
}

void sub_1CF92A588(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v5 = sub_1CF9E6D28();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1CF92A634(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v12 = sub_1CF9E6D28();
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v13 = sub_1CF9E6D28();
  if (a6)
  {
    v14 = sub_1CF9E57E8();
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  (*(a7 + 16))(a7, v12, v13, a3 & 1, a4, a5);
}

id sub_1CF92A738()
{
  sub_1CF92A904();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPFSSearchEnumerator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FPFSSearchEnumerator(uint64_t a1)
{
  result = qword_1EC4C52F8;
  if (!qword_1EC4C52F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF92A904()
{
  v1 = v0;
  v2 = objc_sync_enter(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v19 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v18, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v3 = v0[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated];
  v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated] = 1;
  v4 = objc_sync_exit(v1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v19 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v18, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v3 & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive];
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive + 8];

      v5(v7);
      sub_1CF045404(v5, v6);
    }

    [*&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator] invalidate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_unknownObjectWeakLoadStrong();

      if (v10)
      {
        v11 = [v10 session];

        [v11 asyncUnregisterLifetimeExtensionForObject_];
        swift_unknownObjectRelease();
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v20 = [v14 log];
      }

      else
      {
        v20 = 0;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      *(v16 + 24) = v1;
      v17 = v13;
      sub_1CF01001C(v20, "enumeratorHasBeenInvalidated(_:)", 32, 2, sub_1CF7B9C00, v16);
    }
  }
}

uint64_t sub_1CF92AC74(unint64_t a1, void *a2, void *a3, uint64_t a4, id a5, int a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, void *, void *, uint64_t, void), uint64_t a10)
{
  v13 = a4;
  v15 = a9;
  if (a5)
  {
    v16 = a5;
    v17 = a7;
    v18 = a8;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();

    if (os_log_type_enabled(v19, v20))
    {
      v105 = v13;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v111 = v23;
      *v21 = 138412802;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2080;
      v24 = v17;
      v25 = NSFileProviderPage.description.getter(v18);
      v27 = v26;
      v28 = sub_1CEFD0DF0(v25, v26, &v111);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v21 + 14) = v28;
      *(v21 + 22) = 2112;
      swift_getErrorValue();
      v36 = Error.prettyDescription.getter(v109, v110);
      *(v21 + 24) = v36;
      v22[1] = v36;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "📖  %@: enumerating page %s failed: %@", v21, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      v37 = v21;
      v13 = v105;
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    else
    {
    }

    return a9(a1, a2, a3, v13, a5);
  }

  else
  {
    v39 = a3;
    swift_bridgeObjectRetain_n();
    v40 = a7;
    v41 = a8;
    v42 = a2;
    v43 = sub_1CF9E6108();
    v44 = sub_1CF9E7298();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111 = v104;
      *v45 = 138413314;
      *(v45 + 4) = v40;
      v103 = v46;
      *v46 = v40;
      *(v45 + 12) = 2080;
      v47 = v40;
      v48 = NSFileProviderPage.description.getter(v41);
      v50 = v49;
      v51 = sub_1CEFD0DF0(v48, v49, &v111);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v45 + 14) = v51;
      *(v45 + 22) = 2048;
      if (a1 >> 62)
      {
        v66 = sub_1CF9E7818();
      }

      else
      {
        v66 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v67 = 0x3E6C696E3CLL;
      a1, v59, v60, v61, v62, v63, v64, v65;
      *(v45 + 24) = v66;
      a1, v68, v69, v70, v71, v72, v73, v74;
      *(v45 + 32) = 2080;
      if (a2)
      {
        v75 = NSFileProviderPage.description.getter(v42);
        v77 = v76;
      }

      else
      {
        v77 = 0xE500000000000000;
        v75 = 0x3E6C696E3CLL;
      }

      v81 = sub_1CEFD0DF0(v75, v77, &v111);
      v77, v82, v83, v84, v85, v86, v87, v88;
      *(v45 + 34) = v81;
      *(v45 + 42) = 2080;
      if (a3)
      {
        v89 = a3;
        v90 = sub_1CF9E5B88();
        v92 = v91;
        v67 = sub_1CF9E5AB8();
        v94 = v93;
        sub_1CEFE4714(v90, v92);
      }

      else
      {
        v89 = 0;
        v94 = 0xE500000000000000;
      }

      v95 = sub_1CEFD0DF0(v67, v94, &v111);
      v94, v96, v97, v98, v99, v100, v101, v102;
      *(v45 + 44) = v95;
      _os_log_impl(&dword_1CEFC7000, v43, v44, "📖  %@: enumerating page %s done: %ld items next %s anchor:%s", v45, 0x34u);
      sub_1CEFCCC44(v103, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v103, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v104, -1, -1);
      MEMORY[0x1D386CDC0](v45, -1, -1);

      v79 = a4;
      v15 = a9;
      v80 = v89;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v79 = a4;
      v80 = a3;
    }

    return v15(a1, a2, v80, v79, 0);
  }
}

void sub_1CF92B46C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_sync_enter(Strong);
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v4);
      v12 = v3;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v5 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

    v6 = objc_sync_exit(v3);
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v6);
      v12 = v3;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    if (v5)
    {

LABEL_7:
      MEMORY[0x1EEE9AC00](v7);
      v12 = v5;
      v13 = a1;

      sub_1CF92865C("decorateItems(items:)", 21, 2, sub_1CF92C2EC, v11);

      return;
    }

    MEMORY[0x1EEE9AC00](v6);
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60);
    sub_1CF9E7398();

    v5 = v15;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_1CF9E6108();
  v9 = sub_1CF9E72A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CEFC7000, v8, v9, "backend or FPFS is invalidated, returning error", v10, 2u);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  type metadata accessor for NSFileProviderError(0);
  v14 = -1002;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
  sub_1CF9E57D8();
  swift_willThrow();
}

void sub_1CF92B7B4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v7 = sub_1CF01C4BC(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  sub_1CF769068(a3, 0, v6, v4, v7, &off_1F4BF8588, *(v5 + 8));
}

uint64_t sub_1CF92B85C(_TtC18FileProviderDaemon8FSTester *a1, _TtC18FileProviderDaemon8FSTester *a2, char a3, void *a4, uint64_t a5, id a6, int a7, void *a8, uint64_t a9, unint64_t a10, uint64_t (*a11)(uint64_t, _TtC18FileProviderDaemon8FSTester *, void, void *, uint64_t, id), uint64_t a12)
{
  v13 = a5;
  v14 = a4;
  v15 = a2;
  v17 = a11;
  if (a6)
  {
    v18 = a6;
    v19 = a6;
    v20 = a8;
    sub_1CEFE42D4(a9, a10);
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();

    sub_1CEFE4714(a9, a10);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v124 = v25;
      *v23 = 138412802;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 2080;
      v26 = v20;
      v27 = sub_1CF9E5AB8();
      v29 = v28;
      v30 = sub_1CEFD0DF0(v27, v28, &v124);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v23 + 14) = v30;
      *(v23 + 22) = 2112;
      swift_getErrorValue();
      v38 = Error.prettyDescription.getter(v122, v123);
      *(v23 + 24) = v38;
      v24[1] = v38;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "📖  %@: enumerating from change %s failed: %@", v23, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D386CDC0](v25, -1, -1);
      v39 = v23;
      v17 = a11;
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    else
    {
    }

    v14 = a4;
    v13 = a5;
    v104 = a1;
    v15 = a2;
  }

  else
  {

    v40 = a8;
    sub_1CEFE42D4(a9, a10);
    v41 = v14;

    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E7298();

    sub_1CEFE4714(a9, a10);
    if (os_log_type_enabled(v42, v43))
    {
      v120 = v15;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v124 = v116;
      *v44 = 138413570;
      *(v44 + 4) = v40;
      v114 = v45;
      *v45 = v40;
      *(v44 + 12) = 2080;
      v46 = v40;
      v47 = sub_1CF9E5AB8();
      v49 = v48;
      v50 = sub_1CEFD0DF0(v47, v48, &v124);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v44 + 14) = v50;
      *(v44 + 22) = 2048;
      if (a1 >> 62)
      {
        v65 = sub_1CF9E7818();
      }

      else
      {
        v65 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1, v58, v59, v60, v61, v62, v63, v64;
      *(v44 + 24) = v65;
      a1, v66, v67, v68, v69, v70, v71, v72;
      *(v44 + 32) = 2048;
      if (v120 >> 62)
      {
        v80 = sub_1CF9E7818();
      }

      else
      {
        v80 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v120, v73, v74, v75, v76, v77, v78, v79;
      *(v44 + 34) = v80;
      v120, v81, v82, v83, v84, v85, v86, v87;
      *(v44 + 42) = 2080;
      if (a3)
      {
        v88 = 0x6F6D20736168202CLL;
      }

      else
      {
        v88 = 0;
      }

      if (a3)
      {
        v89 = 0xEA00000000006572;
      }

      else
      {
        v89 = 0xE000000000000000;
      }

      v90 = sub_1CEFD0DF0(v88, v89, &v124);
      v89, v91, v92, v93, v94, v95, v96, v97;
      *(v44 + 44) = v90;
      *(v44 + 52) = 2080;
      if (v14)
      {
        v98 = sub_1CF9E5B88();
        v100 = v99;
        v101 = sub_1CF9E5AB8();
        v103 = v102;
        sub_1CEFE4714(v98, v100);
      }

      else
      {
        v103 = 0xE500000000000000;
        v101 = 0x3E6C696E3CLL;
      }

      v105 = sub_1CEFD0DF0(v101, v103, &v124);
      v103, v106, v107, v108, v109, v110, v111, v112;
      *(v44 + 54) = v105;
      _os_log_impl(&dword_1CEFC7000, v42, v43, "📖  %@: enumerating from change %s done: %ld updated, %ld deleted%s, next anchor:%s", v44, 0x3Eu);
      sub_1CEFCCC44(v114, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v114, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v116, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);

      v17 = a11;
      v104 = a1;
      v15 = v120;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v17 = a11;
      v104 = a1;
    }

    v18 = 0;
  }

  return v17(v104, v15, a3 & 1, v14, v13, v18);
}

unint64_t sub_1CF92C078()
{
  sub_1CF9E7948();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_lifetimeExtender) requestEffectivePID];
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_1CF92C164(uint64_t a1)
{
  result = sub_1CF9E6118();
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

uint64_t sub_1CF92C244(uint64_t a1)
{
  v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v3 = v2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v5;
  if (v1 == v4 && v3 == v5)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

void sub_1CF92C344(char *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = objc_sync_enter(a1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v15 = a1;

    _Block_release(a2);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v6 = a1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated];
  v7 = objc_sync_exit(a1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v15 = a1;

    _Block_release(a2);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v6 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    aBlock[6] = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v13 = sub_1CF9E57E8();
    (a2)[2](a2, 0, v13);
  }

  else
  {
    v9 = Strong;
    v10 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator];
    v11 = swift_allocObject();
    v11[2] = sub_1CEFFA830;
    v11[3] = v4;
    aBlock[4] = sub_1CF92D9C4;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF9285C4;
    aBlock[3] = &block_descriptor_79_1;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v10 currentSyncAnchorWithCompletion_];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }
}

double sub_1CF92C644(void *a1, uint64_t a2, char *a3, const void *a4)
{
  v94 = a2;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v99 = swift_allocObject();
  *(v99 + 16) = a4;
  v97 = v8;
  v96 = *(v8 + 16);
  v96(v15, &a3[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_logger], v7);
  v95 = a4;
  _Block_copy(a4);
  v16 = a3;
  v17 = a1;
  v98 = v15;
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v92 = v21;
    v93 = swift_slowAlloc();
    aBlock[0] = v93;
    *v20 = 138412546;
    *(v20 + 4) = v16;
    *v21 = v16;
    *(v20 + 12) = 2080;
    v22 = v16;
    v23 = NSFileProviderPage.description.getter(v17);
    v91 = v18;
    v24 = v7;
    v26 = v25;
    v27 = v17;
    v28 = v12;
    v29 = sub_1CEFD0DF0(v23, v25, aBlock);
    v30 = v26;
    v7 = v24;
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v20 + 14) = v29;
    v12 = v28;
    v38 = v19;
    v39 = v91;
    _os_log_impl(&dword_1CEFC7000, v91, v38, "📖  %@: enumerating page %s", v20, 0x16u);
    v40 = v92;
    sub_1CEFCCC44(v92, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    v41 = v93;
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);
  }

  else
  {

    v27 = v17;
  }

  v42 = v96;
  v96(v12, v98, v7);
  v42(v100, v12, v7);
  v43 = v97;
  v44 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v45 = (v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v43 + 32))(v47 + v44, v12, v7);
  *(v47 + v45) = v16;
  *(v47 + v46) = v27;
  v48 = (v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8));
  v49 = v99;
  *v48 = sub_1CF7BA3F0;
  v48[1] = v49;
  v50 = v16;
  v51 = v27;

  v52 = objc_sync_enter(v50);
  if (v52)
  {
    MEMORY[0x1EEE9AC00](v52);
    *(&v91 - 2) = v50;

    _Block_release(v95);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &(&v91)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v53 = *(&v50->isa + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated);
  v54 = objc_sync_exit(v50);
  if (v54)
  {
    MEMORY[0x1EEE9AC00](v54);
    *(&v91 - 2) = v50;

    _Block_release(v95);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &(&v91)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v53 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v102 = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v62 = aBlock[0];
    v63 = v50;
    v64 = v51;
    v65 = v62;
    v66 = sub_1CF9E6108();
    v67 = sub_1CF9E72A8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v96 = v7;
      v70 = v69;
      v71 = swift_slowAlloc();
      v102 = v71;
      *v68 = 138412802;
      *(v68 + 4) = v63;
      *v70 = v63;
      *(v68 + 12) = 2080;
      v72 = v63;
      v73 = NSFileProviderPage.description.getter(v64);
      v75 = v74;
      v76 = sub_1CEFD0DF0(v73, v74, &v102);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v68 + 14) = v76;
      *(v68 + 22) = 2112;
      swift_getErrorValue();
      v84 = Error.prettyDescription.getter(aBlock[7], aBlock[8]);
      *(v68 + 24) = v84;
      v70[1] = v84;
      _os_log_impl(&dword_1CEFC7000, v66, v67, "📖  %@: enumerating page %s failed: %@", v68, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      v85 = v70;
      v7 = v96;
      MEMORY[0x1D386CDC0](v85, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1D386CDC0](v71, -1, -1);
      v86 = v68;
      v43 = v97;
      MEMORY[0x1D386CDC0](v86, -1, -1);
    }

    else
    {
    }

    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v87 = sub_1CF9E6D28();
    v88 = sub_1CF9E57E8();
    (*(v95 + 2))(v95, v87, 0, 0, 0, v88);

    v89 = *(v43 + 8);
    v89(v100, v7);
    v89(v98, v7);
  }

  else
  {
    v56 = Strong;
    v57 = *(v43 + 8);
    v57(v100, v7);
    v58 = *(&v50->isa + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator);
    v59 = swift_allocObject();
    v59[2] = v50;
    v59[3] = sub_1CF92D8D0;
    v59[4] = v47;
    aBlock[4] = sub_1CF92D9B8;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF9284C8;
    aBlock[3] = &block_descriptor_68_1;
    v60 = _Block_copy(aBlock);
    v61 = v50;
    swift_unknownObjectRetain();

    [v58 enumerateItemsFromPage:v51 suggestedPageSize:v94 reply:v60];
    _Block_release(v60);

    swift_unknownObjectRelease();
    v57(v98, v7);
  }

  return result;
}

double sub_1CF92CEB4(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, const void *a5)
{
  v96 = a3;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v101 = v10;
  v102 = v9;
  v99 = *(v10 + 16);
  v99(v16, &a4[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_logger], v9);
  v97 = a5;
  _Block_copy(a5);
  v18 = a4;
  sub_1CEFE42D4(a1, a2);
  v103 = v16;
  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();

  sub_1CEFE4714(a1, a2);
  v21 = os_log_type_enabled(v19, v20);
  v98 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v94 = v19;
    v23 = v22;
    v24 = swift_slowAlloc();
    v93 = v24;
    v95 = swift_slowAlloc();
    aBlock[0] = v95;
    *v23 = 138412546;
    *(v23 + 4) = v18;
    *v24 = v18;
    *(v23 + 12) = 2080;
    v25 = v18;
    v26 = sub_1CF9E5AB8();
    v28 = v27;
    v29 = sub_1CEFD0DF0(v26, v27, aBlock);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v23 + 14) = v29;
    v37 = v94;
    _os_log_impl(&dword_1CEFC7000, v94, v20, "📖  %@: enumerating from change %s", v23, 0x16u);
    v38 = v93;
    sub_1CEFCCC44(v93, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v38, -1, -1);
    v39 = v95;
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x1D386CDC0](v39, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);
  }

  else
  {
  }

  v40 = v99;
  v41 = v100;
  v42 = v102;
  v99(v100, v103, v102);
  v40(v104, v41, v42);
  v43 = v101;
  v44 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v45 = (v11 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v41;
  v49 = v47;
  (*(v43 + 32))(v47 + v44, v48, v42);
  *(v49 + v45) = v18;
  v50 = (v49 + v46);
  v51 = v98;
  *v50 = v98;
  v50[1] = a2;
  v52 = (v49 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v52 = sub_1CF7BA270;
  v52[1] = v17;
  v53 = v18;
  sub_1CEFE42D4(v51, a2);

  v54 = objc_sync_enter(v53);
  if (v54)
  {
    MEMORY[0x1EEE9AC00](v54);
    *(&v93 - 2) = v53;

    _Block_release(v97);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v93 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v55 = v53[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated];
  v56 = objc_sync_exit(v53);
  if (v56)
  {
    MEMORY[0x1EEE9AC00](v56);
    *(&v93 - 2) = v53;

    _Block_release(v97);
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v93 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v100 = v17;
  if ((v55 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v106 = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C4BC(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v66 = aBlock[0];
    v67 = v53;
    sub_1CEFE42D4(v51, a2);
    v68 = v66;
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E72A8();

    sub_1CEFE4714(v51, a2);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v106 = v73;
      *v71 = 138412802;
      *(v71 + 4) = v67;
      *v72 = v67;
      *(v71 + 12) = 2080;
      v74 = v67;
      v75 = sub_1CF9E5AB8();
      v77 = v76;
      v78 = sub_1CEFD0DF0(v75, v76, &v106);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v71 + 14) = v78;
      *(v71 + 22) = 2112;
      swift_getErrorValue();
      v86 = Error.prettyDescription.getter(aBlock[7], aBlock[8]);
      *(v71 + 24) = v86;
      v72[1] = v86;
      _os_log_impl(&dword_1CEFC7000, v69, v70, "📖  %@: enumerating from change %s failed: %@", v71, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1D386CDC0](v73, -1, -1);
      MEMORY[0x1D386CDC0](v71, -1, -1);
    }

    else
    {
    }

    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v87 = sub_1CF9E6D28();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v88 = sub_1CF9E6D28();
    v89 = sub_1CF9E57E8();
    (*(v97 + 2))(v97, v87, v88, 0, 0, 0, v89);

    v90 = v102;
    v91 = *(v101 + 8);
    v91(v104, v102);
    v91(v103, v90);
  }

  else
  {
    v58 = Strong;
    v59 = v102;
    v60 = *(v101 + 8);
    v60(v104, v102);
    v61 = *&v53[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator];
    swift_unknownObjectRetain();
    v62 = sub_1CF9E5B48();
    v63 = swift_allocObject();
    v63[2] = v53;
    v63[3] = sub_1CF92D7A4;
    v63[4] = v49;
    aBlock[4] = sub_1CF92D8A4;
    aBlock[5] = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF0407BC;
    aBlock[3] = &block_descriptor_54_0;
    v64 = _Block_copy(aBlock);
    v65 = v53;

    [v61 enumerateChangesFromToken:v62 suggestedBatchSize:v96 reply:v64];
    _Block_release(v64);

    swift_unknownObjectRelease();
    v60(v103, v59);
  }

  return result;
}

uint64_t sub_1CF92D7A4(_TtC18FileProviderDaemon8FSTester *a1, _TtC18FileProviderDaemon8FSTester *a2, char a3, void *a4, uint64_t a5, void *a6)
{
  v13 = *(sub_1CF9E6118() - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF92B85C(a1, a2, a3, a4, a5, a6, v6 + v14, *(v6 + v15), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v6 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF92D8D0(unint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = *(sub_1CF9E6118() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF92AC74(a1, a2, a3, a4, a5, v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF92DA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1CF92DB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *v9;
  v17 = swift_allocObject();
  v17[2] = v16[10];
  v17[3] = v16[11];
  v17[4] = a9;
  v17[5] = v16[12];
  v17[6] = v16[13];
  v17[7] = a5;
  v17[8] = a6;
  v18 = v16[59];

  v18(a1, a2, a3, a4, sub_1CF932164, v17, a7, a8);

  return result;
}

void sub_1CF92DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*v4 + 496))(a1, 1, a2, a3, a4);
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_1CF9E7988();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v22 = Error.prettyDescription.getter(v34, v35);
  v23 = [v22 description];
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  MEMORY[0x1D3868CC0](v24, v26);
  v26, v27, v28, v29, v30, v31, v32, v33;
  sub_1CF9E7B68();
  __break(1u);
}

double sub_1CF92DEA4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  v21 = *(*v13 + 416);

  v21(a1, a2, a3, 0, a12, v19, a13, v20, a8, a9);

  return result;
}

double sub_1CF92DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = *(*v8 + 472);

  v17(a1, a2, a3, a4, sub_1CEFFD05C, v16, a7, a8);

  return result;
}

void sub_1CF92E0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  *&v40 = a1;
  v8 = v7[10];
  v9 = v7[11];
  v10 = v7[12];
  v11 = v7[13];
  *&v43 = v8;
  *(&v43 + 1) = v9;
  v44 = v10;
  v45 = v11;
  type metadata accessor for Mutation(255, &v43);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E6BE8();
  if (!v39)
  {
    v34 = v5[2];
    *&v43 = v8;
    *(&v43 + 1) = v9;
    v44 = v10;
    v45 = v11;
    type metadata accessor for ReconciliationMutation(255, &v43);
    v12 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1D3868E50](&v46, v12, WitnessTable);
    v14 = v46;
    v42 = v46;
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a5;
    v15[4] = v5;
    sub_1CF9E7978();

    swift_getWitnessTable();
    sub_1CF9E7C38();
    v14, v16, v17, v18, v19, v20, v21, v22;

    v35 = v43;
    v40 = v43;
    v41 = v44;
    v23 = *(*v34 + 544);
    v24 = sub_1CF9E7AC8();
    v25 = swift_getWitnessTable();
    v23(&v40, a3, v24, a4, v25, a5);

    v35, v26, v27, v28, v29, v30, v31, v32;
    *&v43 = a1;
    MEMORY[0x1EEE9AC00](v33);
    sub_1CF9E6BE8();
  }
}

double sub_1CF92E514(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *v14;
  v20 = *v14;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v22 = swift_allocObject();
  v22[2] = v19[10];
  v22[3] = v19[11];
  v22[4] = a10;
  v22[5] = v19[12];
  v22[6] = v19[13];
  v22[7] = a6;
  v22[8] = a7;
  v23 = v20[52];

  v23(a1, a2, a3, 0, a13, v21, a14, v22, a8, a9);

  return result;
}

double sub_1CF92E6B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *v11;
  v17 = *v11;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = swift_allocObject();
  v19[2] = v16[10];
  v19[3] = v16[11];
  v19[4] = a10;
  v19[5] = a11;
  v19[6] = v16[12];
  v19[7] = v16[13];
  v19[8] = a6;
  v19[9] = a7;
  v20 = v17[52];

  v20(a1, a2, a3, 0, sub_1CF68C1F4, v18, sub_1CF931F8C, v19, a8, a9);

  return result;
}

void *sub_1CF92E870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  swift_weakAssign();
  swift_weakAssign();
  v7 = *(*v6 + 176);

  swift_unknownObjectRetain();

  v7(v8);

  swift_unknownObjectRelease();
  swift_weakAssign();

  return v6;
}

void *sub_1CF92E98C()
{

  swift_unknownObjectRelease();
  return v0;
}

unint64_t sub_1CF92ED6C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v2;
  v3 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CF1B8600(inited + 32);
  return v5;
}

uint64_t sub_1CF92EE28(uint64_t a1)
{
  v2 = sub_1CF932238();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF92EE64(uint64_t a1)
{
  v2 = sub_1CF932238();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void sub_1CF92EEA0()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = 0;
  v170 = 0xE000000000000000;
  sub_1CF9E7948();
  v170, v5, v6, v7, v8, v9, v10, v11;
  v169 = 91;
  v170 = 0xE100000000000000;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v13 = v12;
  (*(v2 + 8))(v4, v1);
  v14 = v13 * 1000000000.0;
  if (COERCE__INT64(fabs(v13 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v168 = v14 / 1000000;
  v15 = sub_1CF9E7F98();
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0x662D74696177205DLL, 0xEF3A6E75722D726FLL);
  v168 = *(v0 + 16);
  v25 = sub_1CF9E7F98();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  v36 = v169;
  v35 = v170;
  v169 = 0x676E696E6E757220;
  v170 = 0xE90000000000003ALL;
  v168 = *(v0 + 24);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  v47 = v169;
  v48 = v170;
  v169 = v36;
  v170 = v35;

  MEMORY[0x1D3868CC0](v47, v48);
  v35, v49, v50, v51, v52, v53, v54, v55;
  v48, v56, v57, v58, v59, v60, v61, v62;
  v64 = v169;
  v63 = v170;
  v169 = 0;
  v170 = 0xE000000000000000;
  sub_1CF9E7948();
  v170, v65, v66, v67, v68, v69, v70, v71;
  v169 = 0xD000000000000013;
  v170 = 0x80000001CFA5FA70;
  v72 = *(v0 + 32);
  v73 = *(v0 + 40);
  v74 = __OFADD__(v72, v73);
  v75 = v72 + v73;
  if (v74)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v76 = 1702195828;
  v168 = v75;
  v77 = sub_1CF9E7F98();
  v79 = v78;
  MEMORY[0x1D3868CC0](v77);
  v79, v80, v81, v82, v83, v84, v85, v86;
  v87 = v169;
  v88 = v170;
  v169 = v64;
  v170 = v63;

  MEMORY[0x1D3868CC0](v87, v88);
  v63, v89, v90, v91, v92, v93, v94, v95;
  v88, v96, v97, v98, v99, v100, v101, v102;
  v104 = v169;
  v103 = v170;
  v169 = 0x6E69767261747320;
  v170 = 0xEA00000000003A67;
  if (*(v0 + 50))
  {
    v105 = 1702195828;
  }

  else
  {
    v105 = 0x65736C6166;
  }

  if (*(v0 + 50))
  {
    v106 = 0xE400000000000000;
  }

  else
  {
    v106 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v105, v106);
  v106, v107, v108, v109, v110, v111, v112, v113;
  v114 = v169;
  v115 = v170;
  v169 = v104;
  v170 = v103;

  MEMORY[0x1D3868CC0](v114, v115);
  v103, v116, v117, v118, v119, v120, v121, v122;
  v115, v123, v124, v125, v126, v127, v128, v129;
  v131 = v169;
  v130 = v170;
  v169 = 0;
  v170 = 0xE000000000000000;
  sub_1CF9E7948();
  v170, v132, v133, v134, v135, v136, v137, v138;
  v169 = 0xD000000000000010;
  v170 = 0x80000001CFA5FA90;
  v139 = *(v0 + 24);
  if (v139 < 1)
  {
    if (*(v0 + 16) < 1 || (*(v0 + 50) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v140 = *(v0 + 32);
  v141 = *(v0 + 40);
  v74 = __OFADD__(v140, v141);
  v142 = v140 + v141;
  if (!v74)
  {
    if (v142 < v139)
    {
LABEL_18:
      v143 = 0xE500000000000000;
      v76 = 0x65736C6166;
      goto LABEL_19;
    }

LABEL_17:
    v143 = 0xE400000000000000;
LABEL_19:
    MEMORY[0x1D3868CC0](v76, v143);
    v143, v144, v145, v146, v147, v148, v149, v150;
    v151 = v169;
    v152 = v170;
    v169 = v131;
    v170 = v130;

    MEMORY[0x1D3868CC0](v151, v152);
    v130, v153, v154, v155, v156, v157, v158, v159;
    v152, v160, v161, v162, v163, v164, v165, v166;
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1CF930308()
{
  sub_1CF92E98C();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF930354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = (*(*v5[3] + 264))(a2, a3, a4, a5);
  if (v6)
  {
    return v7 & 1;
  }

  if (!v10)
  {
    v16 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v16;
    return v7 & 1;
  }

  v11 = v9[10];
  v12 = v9[11];
  v14 = v9[12];
  v13 = v9[13];
  v18 = v11;
  v19 = v12;
  v20 = v14;
  v21 = v13;
  type metadata accessor for Propagation.UpdateItem(0, &v18);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v7 = 0;
    v16 = *(v15 + *(*v15 + 648));
LABEL_12:

    goto LABEL_13;
  }

  v18 = v11;
  v19 = v12;
  v20 = v14;
  v21 = v13;
  type metadata accessor for Propagation.CreateItem(0, &v18);
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v7 = 0;
    v16 = qword_1EDEABDE8;
    goto LABEL_12;
  }

  v18 = v11;
  v19 = v12;
  v20 = v14;
  v21 = v13;
  type metadata accessor for Propagation.DeleteItem(0, &v18);
  if (swift_dynamicCastClass())
  {
    v16 = 0;
    v7 = 1;
    goto LABEL_12;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF930554(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v101 = a6;
  v107 = a4;
  v108 = a5;
  v106 = a3;
  v112 = a1;
  v7 = *a2;
  v8 = *(*a2 + 88);
  v9 = *(*a2 + 104);
  v10 = type metadata accessor for SnapshotMutation(0, v8, v9, a4);
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v101 - v13;
  v15 = *(v7 + 80);
  v105 = a2;
  v16 = *(v7 + 96);
  v18 = type metadata accessor for SnapshotMutation(0, v15, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v101 - v23;
  v109 = v15;
  v110 = v9;
  *&v25 = v15;
  v26 = v16;
  v111 = v8;
  *(&v25 + 1) = v8;
  *&v27 = v16;
  *(&v27 + 1) = v9;
  v113 = v25;
  v114 = v27;
  v28 = type metadata accessor for Mutation(0, &v113);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v101 - v30;
  (*(v32 + 16))(&v101 - v30, v112, v28, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v103;
    v33 = v104;
    (*(v103 + 32))(v14, v31, v104);
    v21 = v102;
    (*(v34 + 16))(v102, v14, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
          strcpy(&v101 - 32, "from to  reason ");
          v38 = v110;
          v37 = v111;
          *&v113 = type metadata accessor for SnapshotItem(255, v111, v110, v39);
          *(&v113 + 1) = v113;
          *&v114 = &type metadata for Fields;
          *(&v114 + 1) = MEMORY[0x1E69E6158];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v41 = *(TupleTypeMetadata + 48);
          *&v21[*(TupleTypeMetadata + 80) + 8], v42, v43, v44, v45, v46, v47, v48;
          v50 = type metadata accessor for SnapshotItem(0, v37, v38, v49);
          v51 = *(*(v50 - 8) + 8);
          v51(&v21[v41], v50);
          v51(v21, v50);
LABEL_29:
          v89 = v115;
          sub_1CF689CB8(v14, v106, v107, v108);
          v90 = v89;
          if (!v89)
          {
            return (*(v34 + 8))(v14, v33);
          }

          result = (*(v34 + 8))(v14, v33);
          goto LABEL_36;
        }

        (*(v34 + 8))(v14, v33);
        goto LABEL_24;
      }

      AssociatedTypeWitness = type metadata accessor for SnapshotItem(255, v111, v110, v36);
LABEL_28:
      v80 = AssociatedTypeWitness;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *&v21[*(TupleTypeMetadata2 + 48) + 8], v82, v83, v84, v85, v86, v87, v88;
      (*(*(v80 - 8) + 8))(v21, v80);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        goto LABEL_28;
      }

      (*(v34 + 8))(v14, v33);
LABEL_16:
      v68 = swift_getAssociatedTypeWitness();
LABEL_25:
      v78 = *(swift_getTupleTypeMetadata3() + 64);
      goto LABEL_26;
    }

    (*(v34 + 8))(v14, v33);
LABEL_21:
    v68 = swift_getAssociatedTypeWitness();
    v78 = *(swift_getTupleTypeMetadata2() + 48);
LABEL_26:
    *&v21[v78 + 8], v71, v72, v73, v74, v75, v76, v77;
    return (*(*(v68 - 8) + 8))(v21, v68);
  }

  (*(v19 + 32))(v24, v31, v18);
  (*(v19 + 16))(v21, v24, v18);
  v52 = swift_getEnumCaseMultiPayload();
  if (v52 > 2)
  {
    if (v52 == 3)
    {
      (*(v19 + 8))(v24, v18);
      goto LABEL_21;
    }

    if (v52 == 4)
    {
      (*(v19 + 8))(v24, v18);
      goto LABEL_16;
    }

    v70 = swift_getAssociatedTypeWitness();
    goto LABEL_33;
  }

  if (!v52)
  {
    v70 = type metadata accessor for SnapshotItem(255, v109, v26, v53);
LABEL_33:
    v91 = v70;
    v92 = swift_getTupleTypeMetadata2();
    *&v21[*(v92 + 48) + 8], v93, v94, v95, v96, v97, v98, v99;
    (*(*(v91 - 8) + 8))(v21, v91);
    goto LABEL_34;
  }

  if (v52 != 1)
  {
    (*(v19 + 8))(v24, v18);
LABEL_24:
    v68 = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](v52);
  strcpy(&v101 - 32, "from to  reason ");
  v54 = v109;
  *&v113 = type metadata accessor for SnapshotItem(255, v109, v26, v55);
  *(&v113 + 1) = v113;
  *&v114 = &type metadata for Fields;
  *(&v114 + 1) = MEMORY[0x1E69E6158];
  v56 = swift_getTupleTypeMetadata();
  v57 = *(v56 + 48);
  *&v21[*(v56 + 80) + 8], v58, v59, v60, v61, v62, v63, v64;
  v66 = type metadata accessor for SnapshotItem(0, v54, v26, v65);
  v67 = *(*(v66 - 8) + 8);
  v67(&v21[v57], v66);
  v67(v21, v66);
LABEL_34:
  v100 = v115;
  sub_1CF689CB8(v24, v106, v107, v108);
  v90 = v100;
  if (v100)
  {
    result = (*(v19 + 8))(v24, v18);
LABEL_36:
    *v101 = v90;
    return result;
  }

  return (*(v19 + 8))(v24, v18);
}

uint64_t sub_1CF930F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a2 + 96);
  v8[0] = *(*a2 + 80);
  v8[1] = v5;
  v6 = type metadata accessor for ReconciliationMutation(0, v8);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *&v8[0] = 0x16180000D034200;
  return sub_1CF0763AC(a3, v8);
}

void sub_1CF930FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v12 = objc_autoreleasePoolPush();
  a6(a1, a2, a3, a4, a5, &v13);
  objc_autoreleasePoolPop(v12);
}

uint64_t sub_1CF931088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v116 = a6;
  v122 = a4;
  v123 = a5;
  v121 = a3;
  v128 = a1;
  v7 = *a2;
  v8 = *(*a2 + 88);
  v9 = *(*a2 + 104);
  v10 = type metadata accessor for SnapshotMutation(0, v8, v9, a4);
  v119 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v115 - v13;
  v15 = *(v7 + 80);
  v120 = a2;
  v16 = *(v7 + 96);
  v18 = type metadata accessor for SnapshotMutation(0, v15, v16, v17);
  v117 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v115 - v22;
  v124 = v16;
  v125 = v15;
  *&v24 = v15;
  v126 = v9;
  v127 = v8;
  *(&v24 + 1) = v8;
  *&v25 = v16;
  *(&v25 + 1) = v9;
  v129 = v24;
  v130 = v25;
  v26 = type metadata accessor for Mutation(0, &v129);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v115 - v28;
  (*(v30 + 16))(&v115 - v28, v128, v26, v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v51 = v117;
    (*(v117 + 32))(v23, v29, v18);
    (*(v51 + 16))(v20, v23, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = v18;
    v54 = v51;
    if (EnumCaseMultiPayload > 2)
    {
      v55 = v131;
      if (EnumCaseMultiPayload == 3)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v95 = 48;
LABEL_27:
        *&v20[*(TupleTypeMetadata2 + v95) + 8], v88, v89, v90, v91, v92, v93, v94;
        (*(*(AssociatedTypeWitness - 8) + 8))(v20, AssociatedTypeWitness);
        sub_1CF689CB8(v23, v121, v122, v123);
        if (v55)
        {
          result = (*(v54 + 8))(v23, v53);
LABEL_29:
          *v116 = v55;
          return result;
        }

        return (*(v54 + 8))(v23, v53);
      }

      if (EnumCaseMultiPayload == 4)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
LABEL_26:
        TupleTypeMetadata2 = swift_getTupleTypeMetadata3();
        v95 = 64;
        goto LABEL_27;
      }

      (*(v51 + 8))(v23, v53);
      v77 = swift_getAssociatedTypeWitness();
    }

    else
    {
      v55 = v131;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v56 = (*(v51 + 8))(v23, v53);
          MEMORY[0x1EEE9AC00](v56);
          strcpy(&v115 - 32, "from to  reason ");
          v58 = v124;
          v57 = v125;
          *&v129 = type metadata accessor for SnapshotItem(255, v125, v124, v59);
          *(&v129 + 1) = v129;
          *&v130 = &type metadata for Fields;
          *(&v130 + 1) = MEMORY[0x1E69E6158];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v61 = *(TupleTypeMetadata + 48);
          *&v20[*(TupleTypeMetadata + 80) + 8], v62, v63, v64, v65, v66, v67, v68;
          v70 = type metadata accessor for SnapshotItem(0, v57, v58, v69);
          v71 = *(*(v70 - 8) + 8);
          v71(&v20[v61], v70);
          return (v71)(v20, v70);
        }

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        goto LABEL_26;
      }

      (*(v51 + 8))(v23, v53);
      v77 = type metadata accessor for SnapshotItem(255, v125, v124, v76);
    }

    v106 = v77;
    v107 = swift_getTupleTypeMetadata2();
    *&v20[*(v107 + 48) + 8], v108, v109, v110, v111, v112, v113, v114;
    return (*(*(v106 - 8) + 8))(v20, v106);
  }

  v31 = v119;
  (*(v119 + 32))(v14, v29, v10);
  v32 = v118;
  (*(v31 + 16))(v118, v14, v10);
  v33 = swift_getEnumCaseMultiPayload();
  if (v33 > 2)
  {
    if (v33 == 3)
    {
      v72 = swift_getAssociatedTypeWitness();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata2();
      v86 = 48;
LABEL_22:
      *&v32[*(TupleTypeMetadata3 + v86) + 8], v79, v80, v81, v82, v83, v84, v85;
      (*(*(v72 - 8) + 8))(v32, v72);
      v96 = v131;
      sub_1CF689CB8(v14, v121, v122, v123);
      v55 = v96;
      if (!v96)
      {
        return (*(v31 + 8))(v14, v10);
      }

      result = (*(v31 + 8))(v14, v10);
      goto LABEL_29;
    }

    if (v33 == 4)
    {
      v72 = swift_getAssociatedTypeWitness();
LABEL_21:
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v86 = 64;
      goto LABEL_22;
    }

    (*(v31 + 8))(v14, v10);
    v75 = swift_getAssociatedTypeWitness();
  }

  else
  {
    if (v33)
    {
      if (v33 == 1)
      {
        v34 = (*(v31 + 8))(v14, v10);
        MEMORY[0x1EEE9AC00](v34);
        strcpy(&v115 - 32, "from to  reason ");
        v36 = v126;
        v35 = v127;
        *&v129 = type metadata accessor for SnapshotItem(255, v127, v126, v37);
        *(&v129 + 1) = v129;
        *&v130 = &type metadata for Fields;
        *(&v130 + 1) = MEMORY[0x1E69E6158];
        v38 = swift_getTupleTypeMetadata();
        v39 = *(v38 + 48);
        *&v32[*(v38 + 80) + 8], v40, v41, v42, v43, v44, v45, v46;
        v48 = type metadata accessor for SnapshotItem(0, v35, v36, v47);
        v49 = *(*(v48 - 8) + 8);
        v49(&v32[v39], v48);
        return (v49)(v32, v48);
      }

      v72 = swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
      goto LABEL_21;
    }

    (*(v31 + 8))(v14, v10);
    v75 = type metadata accessor for SnapshotItem(255, v127, v126, v74);
  }

  v97 = v75;
  v98 = swift_getTupleTypeMetadata2();
  *&v32[*(v98 + 48) + 8], v99, v100, v101, v102, v103, v104, v105;
  return (*(*(v97 - 8) + 8))(v32, v97);
}

uint64_t sub_1CF931B50(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(*(a7 - 8) + 56))(&v16 - v13, 1, 1, a7, v12);
  a3(v14, a2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1CF931C70(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v9 = sub_1CF9E8238();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  *(&v15 - v11) = a2;
  swift_storeEnumTagMultiPayload();
  v13 = a2;
  a3(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1CF931D88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a3;
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = sub_1CF9E75D8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(*(a7 - 8) + 56))(&v22 - v19, 1, 1, a7, v18);
  (*(*(a8 - 8) + 56))(v15, 1, 1, a8);
  v23(a1, v20, v15, a2);
  (*(v13 + 8))(v15, v12);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1CF932034(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v8 = sub_1CF9E8238();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  *(&v14 - v10) = a1;
  swift_storeEnumTagMultiPayload();
  v12 = a1;
  a2(v11);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1CF9321E4()
{
  result = qword_1EC4C5308;
  if (!qword_1EC4C5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5308);
  }

  return result;
}

unint64_t sub_1CF932238()
{
  result = qword_1EDEA5B78;
  if (!qword_1EDEA5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B78);
  }

  return result;
}

void sub_1CF932290(uint64_t result)
{
  if ((*(result + 49) & 1) == 0)
  {
    *(result + 49) = 1;
    v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
    if (v2)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
        *(result + 40) = v2;
        *(result + 48) = 0;
        sub_1CF9323FC(*(result + 32));
        return;
      }

      __break(1u);
    }

    sub_1CF514D8C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/PausableTimer.swift", 102, 2, 32);
  }
}

uint64_t sub_1CF932300(uint64_t result)
{
  if (*(result + 49) != 1)
  {
    return result;
  }

  v1 = result;
  if (*(result + 48))
  {
    return result;
  }

  v2 = *(result + 40);
  *(result + 49) = 0;
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
  if (!v3)
  {
LABEL_18:
    sub_1CF514D8C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/PausableTimer.swift", 102, 2, 32);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(v3, v2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2 - v3;
  if (__OFSUB__(0, v3 - v2))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v1 + 32);
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v1 + 32) = v7;
  if (*(v1 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  *(v1 + 16) = 0;

  return swift_unknownObjectRelease();
}

void sub_1CF9323FC(uint64_t a1)
{
  v52 = a1;
  v2 = sub_1CF9E63A8();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1CF9E6448();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CF9E6388();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v48 = (&v39 - v8);
  v9 = sub_1CF9E6498();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v39 - v13;
  v14 = sub_1CF9E73D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + 56);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18, v20);
  v46 = v23;
  LOBYTE(v23) = sub_1CF9E64D8();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v24 = v1;
    if (*(v1 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }

    sub_1CF1A9160();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CF3387FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CF932C00();
    sub_1CF9E77B8();
    v25 = sub_1CF9E73E8();
    (*(v15 + 8))(v17, v14);
    *(v24 + 16) = v25;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    sub_1CF9E6478();
    v27 = v53;
    v28 = v48;
    *v48 = v52;
    (*(v5 + 104))(v28, *MEMORY[0x1E69E7F28], v27);
    v29 = v47;
    MEMORY[0x1D3868740](v11, v28);
    v30 = *(v5 + 8);
    v30(v28, v27);
    v52 = v24;
    v31 = v50;
    v49 = *(v49 + 8);
    (v49)(v11, v50);
    sub_1CEFD5B64(v28);
    v32 = v51;
    sub_1CEFD5BD8(v51);
    MEMORY[0x1D3869770](v29, v28, v32, ObjectType);
    swift_unknownObjectRelease();
    v30(v32, v27);
    v30(v28, v27);
    (v49)(v29, v31);
    v33 = v52;
    if (*(v52 + 16))
    {
      v34 = swift_getObjectType();
      v35 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1CF932C64;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CEFCA444;
      aBlock[3] = &block_descriptor_51;
      v36 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v37 = v40;
      sub_1CF01C504(v34);
      v38 = v42;
      sub_1CEFD5A30();
      sub_1CF9E7408();
      _Block_release(v36);
      swift_unknownObjectRelease();
      (*(v44 + 8))(v38, v45);
      (*(v41 + 8))(v37, v43);

      if (*(v33 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7428();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1CF932B0C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 49) = 0;
    v3 = *(Strong + 64);
    if (v3)
    {
      v4 = *(Strong + 72);

      v3(v5);
      sub_1CF045404(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1CF932B94()
{
  swift_unknownObjectRelease();

  sub_1CF045404(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_1CF932C00()
{
  result = qword_1EDEAB650;
  if (!qword_1EDEAB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB650);
  }

  return result;
}

uint64_t static FPConflictLoser.== infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 etag];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  v7 = [a2 etag];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1CF9E8048();
  }

  v6, v11, v12, v13, v14, v15, v16, v17;
  v10, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t FPConflictLoser.isEqual(_:)(uint64_t a1)
{
  sub_1CEFF95C8(a1, v27);
  if (!v28)
  {
    sub_1CF0248E0(v27);
    goto LABEL_7;
  }

  sub_1CF932E54();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  v2 = [v1 etag];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  v6 = [v26 etag];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1CF9E8048();
  }

  v5, v10, v11, v12, v13, v14, v15, v16;
  v9, v18, v19, v20, v21, v22, v23, v24;

  return v17 & 1;
}

unint64_t sub_1CF932E54()
{
  result = qword_1EC4C5310;
  if (!qword_1EC4C5310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4C5310);
  }

  return result;
}

uint64_t sub_1CF932EA0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1CF9E7728();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = FPConflictLoser.isEqual(_:)(v8);

  sub_1CF0248E0(v8);
  return v6 & 1;
}

uint64_t sub_1CF932F18(void *a1)
{
  v1 = a1;
  v2 = [v1 etag];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  v6 = MEMORY[0x1D3868D90](v3, v5);
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

uint64_t FPConflictLoser.hash.getter()
{
  v1 = [v0 etag];
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;

  v5 = MEMORY[0x1D3868D90](v2, v4);
  v4, v6, v7, v8, v9, v10, v11, v12;
  return v5;
}

void sub_1CF9330EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (v5)
  {
    v10 = *(*v5 + 152);

    v10(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF933190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (v5)
  {
    v10 = *(*v5 + 160);

    v10(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF933234(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v56 = a5;
  v49 = a3;
  v48 = a2;
  v47 = a1;
  v42 = a6;
  v7 = *v6;
  v8 = *(*v6 + 616);
  v9 = *(*v6 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v7 + 624);
  v12 = *(v7 + 608);
  v13 = swift_getAssociatedTypeWitness();
  v43 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = AssociatedTypeWitness;
  v53 = v13;
  v14 = swift_getAssociatedConformanceWitness();
  v54 = AssociatedConformanceWitness;
  v55 = v14;
  v15 = type metadata accessor for ReconciliationID(0, &v52);
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v40 = v9;
  v41 = v8;
  v52 = v9;
  v53 = v12;
  v38 = v12;
  v39 = v11;
  v54 = v8;
  v55 = v11;
  type metadata accessor for ItemReconciliation(255, &v52);
  swift_getTupleTypeMetadata2();
  v18 = sub_1CF9E75D8();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = v6[3];
  if (v21)
  {
    v52 = v13;
    v53 = v43;
    v54 = v14;
    v55 = AssociatedConformanceWitness;
    v22 = type metadata accessor for ReconciliationID(0, &v52);
    sub_1CF050768(v22, v17);
    v23 = *(*v21 + 168);

    v24 = v50;
    v25 = v51;
    v26 = v56;
    v23(v17, v48 & 1, v49, v51, v56);
    if (v24)
    {
      (*(v45 + 8))(v17, v46);
    }

    else
    {
      (*(v45 + 8))(v17, v46);

      MEMORY[0x1EEE9AC00](v27);
      v29 = v40;
      v28 = v41;
      v31 = v38;
      v30 = v39;
      *(&v35 - 6) = v40;
      *(&v35 - 5) = v31;
      *(&v35 - 4) = v25;
      *(&v35 - 3) = v28;
      *(&v35 - 2) = v30;
      *(&v35 - 1) = v26;
      v52 = v31;
      v53 = v29;
      v54 = v30;
      v55 = v28;
      type metadata accessor for ItemReconciliation(255, &v52);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v33 = v37;
      sub_1CF06E1CC(sub_1CF935CA0, (&v35 - 8), MEMORY[0x1E69E73E0], TupleTypeMetadata2, v34, v42);
      (*(v36 + 8))(v20, v33);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF933644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a1;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v10 = type metadata accessor for ItemReconciliation(255, &v30);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v30 = a3;
  v31 = a2;
  v32 = a5;
  v33 = a4;
  type metadata accessor for ItemReconciliation(255, &v30);
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  v19 = *(v12 + 16);
  v26 = v12 + 16;
  v27 = v18;
  v20 = v28;
  v19(v17, v28, TupleTypeMetadata2);
  v21 = v29;
  sub_1CF07EE34(v10, v22, v29);
  v23 = v10;
  v24 = *(*(v10 - 8) + 8);
  v24(v17, v23);
  v19(v14, v20, TupleTypeMetadata2);
  *(v21 + v27) = *&v14[*(TupleTypeMetadata2 + 48)];
  return (v24)(v14, v23);
}

void sub_1CF93384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v16 = a1;
  v17 = a2;
  v5 = *(*v4 + 600);
  v6 = *(*v4 + 608);
  v7 = *(*v4 + 616);
  v8 = *(*v4 + 624);
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v9 = type metadata accessor for ItemReconciliation(0, &v20);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = v4[3];
  if (v13)
  {

    v20 = v6;
    v21 = v5;
    v22 = v8;
    v23 = v7;
    v14 = type metadata accessor for ItemReconciliation(0, &v20);
    sub_1CF07EE34(v14, v15, v12);
    (*(*v13 + 176))(v12, v17, v18, v19);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    __break(1u);
  }
}