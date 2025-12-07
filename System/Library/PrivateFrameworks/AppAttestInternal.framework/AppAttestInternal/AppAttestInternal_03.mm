void sub_2261BC6D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v352 = a6;
  v353 = a8;
  v351 = a5;
  v11 = sub_2261E3CDC();
  v349 = *(v11 - 8);
  v350 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v315 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v348 = v315 - v15;
  v16 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v16);
  v18 = v315 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v315 - v20;
  v22 = sub_2261E3C3C();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v315 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v31 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v31 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    goto LABEL_15;
  }

  v32 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_15;
  }

  v33 = v352 >> 62;
  if ((v352 >> 62) > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_15;
    }

    v34 = *(v351 + 16);
    v35 = *(v351 + 24);
LABEL_14:
    if (v34 != v35)
    {
      goto LABEL_19;
    }

LABEL_15:
    v36 = sub_2261E3FFC();
    sub_2261A4EAC(v36, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 337);
    v37 = 0x80000002261EC1F0;
    v38 = 1;
    v39 = 0xD000000000000013;
LABEL_16:
    v352 = sub_2261A9CDC(v38, v39, v37);
    (*(v353 + 16))(v353, 0, v352);
    v40 = v352;

    return;
  }

  if (v33)
  {
    v34 = v351;
    v35 = v351 >> 32;
    goto LABEL_14;
  }

  if ((v352 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v345 = v30;
  v346 = v29;
  v340 = v18;
  v341 = v315 - v27;
  v343 = v28;
  v344 = v26;
  v41 = sub_2261AA444();
  v43 = sub_22619DFA0(v41, v42);
  v347 = a7;
  v44 = v43;

  v45 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v44 & 1) == 0)
  {
    v47 = sub_2261E3FFC();
    v374.n128_u64[0] = 0;
    v374.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v345, v346);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v48 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v48);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v47, v374.n128_i64[0], v374.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 343);

    v39 = 0xD000000000000020;
    v37 = 0x80000002261EBEA0;
    v38 = 3;
    goto LABEL_16;
  }

  LODWORD(v338) = sub_2261E400C();
  v374.n128_u64[0] = 0;
  v374.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v369 = v374;
  v336 = 0xD000000000000023;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v345, v346);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v342 = v45;
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v374 = v363;
  v375 = v364;
  v376 = v365;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v46 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v46);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v339 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v338, v369.n128_i64[0], v369.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 348);

  sub_2261AC2DC(a1, a2, v21);
  v49 = v343;
  v50 = (*(v343 + 48))(v21, 1, v344);
  if (v50 != 1)
  {
    (*(v49 + 32))(v341, v21, v344);
    if (sub_2261E3C1C() == a1 && v59 == a2)
    {
    }

    else
    {
      v60 = sub_2261E425C();

      if ((v60 & 1) == 0)
      {
        v80 = sub_2261E3FFC();
        v374.n128_u64[0] = 0;
        v374.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v358 = v374;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v81 = v341;
        v82 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v82);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v345, v346);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v369 = v374;
        v370 = v375;
        v371 = v376;
        v83 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v83);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v80, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 358);

        v84 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        (*(v353 + 16))(v353, 0, v84);

LABEL_34:
        (*(v343 + 8))(v81, v344);
        return;
      }
    }

    v61 = sub_2261E400C();
    v374.n128_u64[0] = 0;
    v374.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v62 = v341;
    v63 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v63);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v61, v374.n128_i64[0], v374.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 363);

    v64 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;

    v65 = sub_22619C044();

    (*(v343 + 16))(v25, v62, v344);
    v66 = v346;

    v67 = v340;
    sub_2261C3918(v65 & 1, v25, 0, v345, v66, v340);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    v375.n128_u64[1] = v16;
    v376.n128_u64[0] = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v374);
    sub_2261AC9D4(v67, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v374, v69, &v369);
    v338 = v64;

    sub_22619A7B4(&v374, &qword_27D78DFD0, &qword_2261E6FF0);
    v70 = v369;
    v71 = v370.n128_u8[0];
    if (v370.n128_u8[1])
    {
      v374 = v369;
      v375.n128_u8[0] = v370.n128_u8[0] & 1;
      sub_22619C838(v369.n128_i64[0], v369.n128_i64[1]);
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      LODWORD(v352) = sub_2261E3FFC();
      v374.n128_u64[0] = 0;
      v374.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v358 = v374;
      MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261EC6B0);
      v374 = v70;
      v375.n128_u8[0] = v71 & 1;
      v72 = sub_2261E429C();
      MEMORY[0x22AA782B0](v72);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v73 = v341;
      v74 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v74);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v345, v346);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v369 = v374;
      v370 = v375;
      v371 = v376;
      v75 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v75);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v352, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 379);

      v358.n128_u64[0] = 0xD000000000000017;
      v358.n128_u64[1] = 0x80000002261EC700;
      v369 = v70;
      v370.n128_u8[0] = v71 & 1;
      v76 = sub_2261E429C();
      v78 = v77;
      sub_2261795CC(v70.n128_i64[0], v70.n128_i64[1], v71, 1);
      MEMORY[0x22AA782B0](v76, v78);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v79 = sub_2261A9CDC(2, v358.n128_i64[0], v358.n128_i64[1]);

      (*(v353 + 16))(v353, 0, v79);

      sub_2261795CC(v70.n128_i64[0], v70.n128_i64[1], v71, 1);
LABEL_32:
      sub_2261AC974(v340, type metadata accessor for Key);
      (*(v343 + 8))(v73, v344);
      return;
    }

    if (v369.n128_u64[0])
    {
      sub_2261790A8(v369.n128_i64[0], v369.n128_i64[1], v370.n128_i8[0], 0);
      v85 = v70.n128_u64[0];
      v86 = sub_2261C9E2C(v85);
      if (v87)
      {
        v88 = v87;
        v334 = v71;
        v335 = v70;
        v90 = v348;
        v89 = v349;
        v91 = *(v349 + 16);
        v336 = v86;
        v92 = v350;
        v91(v348, v347 + v342, v350);
        v93 = sub_2261E400C();
        v374.n128_u64[0] = 0;
        v374.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v333 = 0xD00000000000002FLL;
        v94 = MEMORY[0x22AA782B0]();
        v332 = v85;
        v95 = sub_2261C9E2C(v94);
        if (v96)
        {
          v97 = v96;
        }

        else
        {
          v95 = 7104878;
          v97 = 0xE300000000000000;
        }

        MEMORY[0x22AA782B0](v95, v97);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v93, v374.n128_i64[0], v374.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 396);

        (*(v89 + 8))(v90, v92);

        v98 = sub_22619C044();

        v99 = sub_2261E3C1C();
        v101 = v100;

        v374.n128_u8[0] = 1;
        v348 = v88;
        sub_2261C378C(v98 & 1, 0x100000000, v99, v101, v336, v88, &v366);
        v102 = v367.n128_u64[0];
        v103 = v368;
        v104 = v366.n128_u8[0];
        v350 = v367.n128_i64[1];

        v349 = v103.n128_u64[1];

        sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
        v375.n128_u64[1] = &type metadata for AssertionCounter;
        v376.n128_u64[0] = &off_28395C888;
        v105 = swift_allocObject();
        v374.n128_u64[0] = v105;
        v106 = v367;
        v105[1] = v366;
        v105[2] = v106;
        v105[3] = v368;
        sub_2261A8A9C(&v374, MEMORY[0x277D84CC0], &v369);
        v114 = v333;
        v331 = v104;

        sub_22619A7B4(&v374, &qword_27D78DFD0, &qword_2261E6FF0);
        v115 = v335.n128_u64[0];
        v116 = v334;
        sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);
        v117 = v369.n128_u64[0];
        if (v370.n128_u8[1])
        {
          v118 = v369.n128_i64[1];
          v119 = v370.n128_u8[0];
          v374 = v369;
          v375.n128_u8[0] = v370.n128_u8[0] & 1;
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          sub_226179098(v117, v118, v119, 1);
          v120 = v335.n128_i64[1];
LABEL_50:
          v130 = sub_2261E3FFC();
          v374.n128_u64[0] = 0;
          v374.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v358 = v374;
          MEMORY[0x22AA782B0](0xD000000000000038, 0x80000002261EC7D0);
          v122 = v341;
          v131 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v131);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v336, v348);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v374 = v366;
          v375 = v367;
          v376 = v368;
          sub_2261A65DC();
          v132 = sub_2261E423C();
          v134 = v133;

          MEMORY[0x22AA782B0](v132, v134);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);

          sub_22619C448();

          v369 = v374;
          v370 = v375;
          v371 = v376;
          v135 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v135);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v130, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 410);

          v136 = sub_2261A9CDC(0, 0xD000000000000030, 0x80000002261EC810);
          (*(v353 + 16))(v353, 0, v136);
          sub_2261795CC(v115, v120, v116, 0);

          v137 = v115;
          v138 = v120;
LABEL_51:
          sub_2261795CC(v137, v138, v116, 0);
          sub_2261AC974(v340, type metadata accessor for Key);
          (*(v343 + 8))(v122, v344);
          return;
        }

        v330 = v102;
        v120 = v335.n128_i64[1];
        if ((v369.n128_u64[0] & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        if (v369.n128_u32[0] == -1)
        {
          v139 = sub_2261E3FFC();
          v374.n128_u64[0] = 0;
          v374.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v358 = v374;
          MEMORY[0x22AA782B0](0xD000000000000030, 0x80000002261EC8C0);
          v122 = v341;
          v140 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v140);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v336, v348);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v374 = v366;
          v375 = v367;
          v376 = v368;
          sub_2261A65DC();
          v141 = sub_2261E423C();
          v143 = v142;

          MEMORY[0x22AA782B0](v141, v143);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);

          sub_22619C448();

          v369 = v374;
          v370 = v375;
          v371 = v376;
          v144 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v144);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v139, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 422);

          v128 = "reached. { uuid=";
          v129 = 0xD000000000000028;
          goto LABEL_53;
        }

        if (!v369.n128_u32[0])
        {
          v121 = sub_2261E3FFC();
          v374.n128_u64[0] = 0;
          v374.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v358 = v374;
          MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261EC850);
          v122 = v341;
          v123 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v123);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v336, v348);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v374 = v366;
          v375 = v367;
          v376 = v368;
          sub_2261A65DC();
          v124 = sub_2261E423C();
          v126 = v125;

          MEMORY[0x22AA782B0](v124, v126);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);

          sub_22619C448();

          v369 = v374;
          v370 = v375;
          v371 = v376;
          v127 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v127);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v121, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 416);

          v128 = "ssertion. { uuid=";
          v129 = 0xD000000000000029;
LABEL_53:
          v145 = sub_2261A9CDC(2, v129, v128 | 0x8000000000000000);
          (*(v353 + 16))(v353, 0, v145);
          v146 = v335.n128_i64[1];
          v147 = v335.n128_u64[0];
          v116 = v334;
          sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);

          v137 = v147;
          v138 = v146;
          goto LABEL_51;
        }

        v148 = v369.n128_u32[0] + 1;
        v327 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager;
        v375.n128_u64[1] = &type metadata for AssertionCounter;
        v376.n128_u64[0] = &off_28395C888;
        v149 = swift_allocObject();
        v374.n128_u64[0] = v149;
        *(v149 + 16) = v331;
        v328 = v148;
        *(v149 + 20) = v148;
        *(v149 + 24) = 0;
        v151 = v349;
        v150 = v350;
        *(v149 + 32) = v330;
        *(v149 + 40) = v150;
        *(v149 + 48) = v103.n128_u64[0];
        *(v149 + 56) = v151;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v152 = MEMORY[0x277CC9318];
        nullsub_1();
        sub_2261A5998(&v374, v152, &v369);

        __swift_destroy_boxed_opaque_existential_0(&v374);
        v329 = v369;
        v326 = v370.n128_u8[0];
        if (v370.n128_u8[1])
        {
          v163 = 256;
        }

        else
        {
          v163 = 0;
        }

        if (v370.n128_u8[1] == 1)
        {
          v164 = v326;
          v165 = v326 & 1;
          v166 = v329;
          sub_22619C838(v329.n128_i64[0], v329.n128_i64[1]);
          v167 = v349;

          v168 = v350;

          LODWORD(v352) = sub_2261E3FFC();
          v374.n128_u64[0] = 0;
          v374.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v358 = v374;
          MEMORY[0x22AA782B0](0xD00000000000003ALL, 0x80000002261ECBB0);
          v374 = v166;
          v375.n128_u8[0] = v165;
          sub_22619C7B4();
          v169 = sub_2261E429C();
          v171 = v170;
          v351 = sub_22619C830;
          sub_2261B5424(v166.n128_i64[0], v166.n128_i64[1], v164, 1, sub_2261A28B8, sub_22619C830);
          MEMORY[0x22AA782B0](v169, v171);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v81 = v341;
          v172 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v172);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v336, v348);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v374.n128_u8[0] = v331;
          v374.n128_u32[1] = v328;
          v374.n128_u8[8] = 0;
          v375.n128_u64[0] = v330;
          v375.n128_u64[1] = v168;
          v376.n128_u64[0] = v103.n128_u64[0];
          v376.n128_u64[1] = v167;
          sub_2261A65DC();
          v173 = sub_2261E423C();
          v175 = v174;

          MEMORY[0x22AA782B0](v173, v175);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);

          sub_22619C448();

          v369 = v374;
          v370 = v375;
          v371 = v376;
          v176 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v176);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v352, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 432);

          v177 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
          (*(v353 + 16))(v353, 0, v177);
          v178 = v335.n128_i64[1];
          v179 = v335.n128_u64[0];
          LOBYTE(v168) = v334;
          sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);

          sub_2261795CC(v179, v178, v168, 0);
          sub_2261B5424(v329.n128_i64[0], v329.n128_i64[1], v326, 1, sub_2261A28B8, v351);
          goto LABEL_43;
        }

        if (v329.n128_u64[1] >> 60 == 15)
        {
          v180 = v326;
          v181 = v163 | v326;

          sub_2261B5424(v329.n128_i64[0], v329.n128_i64[1], v180, 0, sub_2261A28B8, sub_22619C830);
          v153 = sub_2261E3FFC();
          v374.n128_u64[0] = 0;
          v374.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v358 = v374;
          MEMORY[0x22AA782B0](0xD000000000000039, 0x80000002261EC930);
          v73 = v341;
          v154 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v154);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v336, v348);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v374.n128_u8[0] = v331;
          v374.n128_u32[1] = v328;
          v374.n128_u8[8] = 0;
          v375.n128_u64[0] = v330;
          v375.n128_u64[1] = v350;
          v376.n128_u64[0] = v103.n128_u64[0];
          v376.n128_u64[1] = v349;
          sub_2261A65DC();
          v155 = sub_2261E423C();
          v157 = v156;

          MEMORY[0x22AA782B0](v155, v157);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);

          sub_22619C448();

          v369 = v374;
          v370 = v375;
          v371 = v376;
          v158 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v158);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v153, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 439);

          v159 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
          (*(v353 + 16))(v353, 0, v159);
          v160 = v335.n128_i64[1];
          v161 = v335.n128_u64[0];
          v162 = v334;
          sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);

          sub_2261795CC(v161, v160, v162, 0);
          sub_2261ACA3C(v329.n128_i64[0], v329.n128_i64[1], v181);
          goto LABEL_32;
        }

        v182 = sub_22619C044();

        v358.n128_u8[0] = v182 & 1;
        v382.n128_u8[0] = 0;
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        if (*&v374 == *&v369)
        {
        }

        else
        {
          v183 = sub_2261E425C();

          if ((v183 & 1) == 0)
          {
            v184 = sub_2261CDAC8();
LABEL_66:
            v186 = *v184;
            v185 = v184[1];
            sub_22619D8F4(*v184, v185);
            v187 = sub_2261CDBE8();
            v382.n128_u8[0] = v331;
            v382.n128_u32[1] = v117;
            v382.n128_u8[8] = 0;
            v383.n128_u64[0] = v330;
            v383.n128_u64[1] = v350;
            v384.n128_u64[0] = v103.n128_u64[0];
            v384.n128_u64[1] = v349;
            v188 = *v187;
            sub_2261790A8(v335.n128_i64[0], v335.n128_i64[1], v334, 0);

            sub_2261CD7CC(v186, v185, v188, &v382, v332, &v369);
            sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
            v189 = sub_2261CBA0C(0, &v369);
            v322 = v190;
            v323 = v189;
            v324 = v191;
            v325 = 0;

            if ((v324 & 0x100) != 0)
            {
              v203 = v324;
              v204 = v324 & 1;
              v206 = v322;
              v205 = v323;
              sub_22619C838(v323, v322);
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              v207 = sub_2261E3FFC();
              v374.n128_u64[0] = 0;
              v374.n128_u64[1] = 0xE000000000000000;
              sub_2261E410C();
              v354 = v374;
              MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
              v374.n128_u64[0] = v205;
              v374.n128_u64[1] = v206;
              v375.n128_u8[0] = v204;
              sub_22619C7B4();
              v208 = sub_2261E429C();
              v210 = v209;
              v352 = sub_22619C840;
              sub_2261B5424(v205, v206, v203, 1, sub_22619C840, sub_22619C830);
              MEMORY[0x22AA782B0](v208, v210);

              MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
              v211 = sub_2261E3C1C();
              MEMORY[0x22AA782B0](v211);

              MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
              MEMORY[0x22AA782B0](v336, v348);

              MEMORY[0x22AA782B0](8236, 0xE200000000000000);
              v360 = v371;
              v361 = v372;
              v362 = v373;
              v358 = v369;
              v359 = v370;
              sub_2261B50AC(&v369, &v374);
              sub_2261B5108();
              v212 = sub_2261E423C();
              v214 = v213;
              v376 = v360;
              v377 = v361;
              v378 = v362;
              v374 = v358;
              v375 = v359;
              sub_2261AF4E8(&v374);
              MEMORY[0x22AA782B0](v212, v214);

              MEMORY[0x22AA782B0](32, 0xE100000000000000);

              sub_22619C448();

              v379 = v358;
              v380 = v359;
              v381 = v360;
              v215 = sub_2261E3E3C();
              MEMORY[0x22AA782B0](v215);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v207, v354.n128_i64[0], v354.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 452);

              v216 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
              (*(v353 + 16))(v353, 0, v216);
              v217 = v335.n128_i64[1];
              v218 = v335.n128_u64[0];
              v219 = v334;
              sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);

              sub_2261AF4E8(&v369);
              sub_2261B5424(v205, v206, v203, 1, v352, sub_22619C830);
              v220 = v218;
              v221 = v217;
              goto LABEL_71;
            }

            sub_22619D8F4(v323, v322);
            v192 = sub_2261E400C();
            v374.n128_u64[0] = 0;
            v374.n128_u64[1] = 0xE000000000000000;
            sub_2261E410C();
            MEMORY[0x22AA782B0](v114, 0x80000002261EC9B0);
            v193 = sub_2261E3B9C();
            MEMORY[0x22AA782B0](v193);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v194 = v347;
            sub_2261A4EAC(v192, v374.n128_i64[0], v374.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 464);

            type metadata accessor for SecurityController(0);
            v318 = sub_2261A0FCC(*(v194 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v194 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v194 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v194 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
            if (sub_2261B515C())
            {
              v195 = v325;
              v196 = sub_2261A2234();
              v319 = v197;
              v320 = v196;
              v321 = v198;
              v333 = v199;
              v325 = v195;
              if (!v195)
              {
LABEL_75:
                sub_2261790A8(v335.n128_i64[0], v335.n128_i64[1], v334, 0);
                v225 = v322;
                sub_2261B5424(v323, v322, v324, 0, sub_22619D8F4, sub_22619C838);
                v226 = v351;
                v227 = v352;
                sub_22619D8F4(v351, v352);
                v229 = v319;
                v228 = v320;
                v230 = v321;
                v231 = v333;
                sub_22619D9F4(v320, v319, v321, v333);
                sub_22619D664(v332, v323, v225, v226, v227, v228, v229, v230, &v358, v231);
                v232 = v325;
                v351 = sub_22619D21C(&v358);
                v352 = v233;
                if (v232)
                {

LABEL_78:

                  v234 = sub_2261E3FFC();
                  v374.n128_u64[0] = 0;
                  v374.n128_u64[1] = 0xE000000000000000;
                  sub_2261E410C();
                  v354 = v374;
                  MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EC9E0);
                  v235 = v341;
                  v236 = sub_2261E3C1C();
                  MEMORY[0x22AA782B0](v236);

                  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
                  MEMORY[0x22AA782B0](v336, v348);

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  v374 = v382;
                  v375 = v383;
                  v376 = v384;
                  sub_2261A65DC();
                  v237 = sub_2261E423C();
                  v239 = v238;

                  MEMORY[0x22AA782B0](v237, v239);

                  MEMORY[0x22AA782B0](32, 0xE100000000000000);

                  sub_22619C448();

                  v379 = v374;
                  v380 = v375;
                  v381 = v376;
                  v240 = sub_2261E3E3C();
                  MEMORY[0x22AA782B0](v240);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v234, v354.n128_i64[0], v354.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 499);

                  v241 = sub_2261A9CDC(0, 0xD000000000000022, 0x80000002261ECA10);
                  (*(v353 + 16))(v353, 0, v241);
                  v242 = v335.n128_i64[1];
                  v243 = v335.n128_u64[0];
                  v244 = v334;
                  sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);

                  sub_2261B5258(&v358);
                  sub_2261B52AC(v320, v319, v321, v333);
                  v246 = v322;
                  v245 = v323;
                  v247 = v324;
                  sub_2261B5424(v323, v322, v324, 0, sub_22619C840, sub_22619C830);

                  sub_2261B5424(v245, v246, v247, 0, sub_22619C840, sub_22619C830);
                  sub_2261AF4E8(&v369);
                  sub_2261795CC(v243, v242, v244, 0);
                  sub_2261B5424(v329.n128_i64[0], v329.n128_i64[1], v326, 0, sub_2261A28B8, sub_22619C830);
                  sub_2261AC974(v340, type metadata accessor for Key);
                  (*(v343 + 8))(v235, v344);
                  return;
                }

                if (v352 >> 60 == 15)
                {
                  goto LABEL_78;
                }

                v249 = v351;
                v248 = v352;
                sub_2261A74CC(v351, v352);
                sub_2261B52FC(&v358, &v374);
                sub_2261CDF10(v249, v248, &v358, &v374);
                sub_2261B5358(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionCborManager, type metadata accessor for AssertionCBORManager, sub_2261CE6A0);
                v325 = sub_2261CDF30(&v374);
                v332 = v250;

                v251 = sub_2261E400C();
                v379.n128_u64[0] = 0xD00000000000002CLL;
                v379.n128_u64[1] = 0x80000002261ECA70;
                v252 = sub_2261E3B9C();
                MEMORY[0x22AA782B0](v252);

                MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                sub_2261A4EAC(v251, v379.n128_i64[0], v379.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 514);

                sub_2261B53D0(&v374);
                v380.n128_u64[1] = &type metadata for AssertionCounter;
                v381.n128_u64[0] = &off_28395C888;
                v253 = swift_allocObject();
                v379.n128_u64[0] = v253;
                *(v253 + 16) = v331;
                *(v253 + 20) = v328;
                *(v253 + 24) = 0;
                v254 = v349;
                v255 = v350;
                *(v253 + 32) = v330;
                *(v253 + 40) = v255;
                *(v253 + 48) = v103.n128_u64[0];
                *(v253 + 56) = v254;

                v256 = MEMORY[0x277CC9318];
                nullsub_1();
                sub_2261A5998(&v379, v256, &v354);

                __swift_destroy_boxed_opaque_existential_0(&v379);
                v274 = v354.n128_i64[1];
                v346 = v354.n128_u64[0];
                v275 = v355.n128_u8[0];
                if (v355.n128_u8[1] == 1)
                {
                  LODWORD(v345) = v355.n128_u8[0];
                  v276 = v346;
                  LODWORD(v327) = v355.n128_u8[0] & 1;
                  sub_22619C838(v346, v354.n128_i64[1]);
                  v316 = sub_2261E3FFC();
                  v379.n128_u64[0] = 0;
                  v379.n128_u64[1] = 0xE000000000000000;
                  sub_2261E410C();
                  v357 = v379;
                  v317 = 0xD000000000000042;
                  MEMORY[0x22AA782B0]();
                  v379.n128_u64[0] = v276;
                  v379.n128_u64[1] = v274;
                  v380.n128_u8[0] = v275 & 1;
                  v315[1] = sub_22619C7B4();
                  v277 = sub_2261E429C();
                  MEMORY[0x22AA782B0](v277);

                  MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
                  v278 = sub_2261E3C1C();
                  MEMORY[0x22AA782B0](v278);

                  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
                  MEMORY[0x22AA782B0](v336, v348);

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  v379.n128_u8[0] = v331;
                  v379.n128_u32[1] = v328;
                  v379.n128_u8[8] = 0;
                  v380.n128_u64[0] = v330;
                  v380.n128_u64[1] = v350;
                  v381.n128_u64[0] = v103.n128_u64[0];
                  v381.n128_u64[1] = v349;
                  sub_2261A65DC();
                  v279 = sub_2261E423C();
                  v281 = v280;

                  MEMORY[0x22AA782B0](v279, v281);

                  MEMORY[0x22AA782B0](32, 0xE100000000000000);

                  sub_22619C448();

                  v354 = v379;
                  v355 = v380;
                  v356 = v381;
                  v282 = sub_2261E3E3C();
                  MEMORY[0x22AA782B0](v282);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v316, v357.n128_i64[0], v357.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 530);

                  v354.n128_u64[0] = 0;
                  v354.n128_u64[1] = 0xE000000000000000;
                  sub_2261E410C();
                  v357 = v354;
                  MEMORY[0x22AA782B0](v317, 0x80000002261ECB60);
                  v283 = v276;
                  v354.n128_u64[0] = v276;
                  v354.n128_u64[1] = v274;
                  v355.n128_u8[0] = v327;
                  v284 = sub_2261E429C();
                  v286 = v285;
                  v287 = v345;
                  sub_2261B5424(v283, v274, v345, 1, sub_2261A28B8, sub_22619C830);
                  MEMORY[0x22AA782B0](v284, v286);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  v288 = sub_2261A9CDC(0, v357.n128_i64[0], v357.n128_i64[1]);

                  v289 = v353;
                  v290 = (v353 + 16);
                  (*(v353 + 16))(v353, 0, v288);

                  sub_2261B5424(v283, v274, v287, 1, sub_2261A28B8, sub_22619C830);
                  v291 = v325;
                  v292 = v332;
                  v293 = sub_2261E3B8C();
                  (*v290)(v289, v293, 0);

                  v294 = v335.n128_i64[1];
                  v295 = v335.n128_u64[0];
                  v296 = v334;
                  sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);
                  sub_22619C840(v291, v292);
                  sub_2261B5258(&v358);
                  sub_2261A28B8(v351, v352);
                  sub_2261B52AC(v320, v319, v321, v333);
                  v298 = v322;
                  v297 = v323;
                  v299 = v324;
                  sub_2261B5424(v323, v322, v324, 0, sub_22619C840, sub_22619C830);

                  sub_2261B5424(v297, v298, v299, 0, sub_22619C840, sub_22619C830);
                  sub_2261AF4E8(&v369);
                  sub_2261795CC(v295, v294, v296, 0);
                  v223 = v329.n128_i64[1];
                  v222 = v329.n128_u64[0];
                  v224 = v326;
                  goto LABEL_72;
                }

                if (v354.n128_u64[1] >> 60 != 15)
                {
                  v300 = v355.n128_u8[0];
                  sub_2261B5424(v346, v354.n128_i64[1], v355.n128_u8[0], 0, sub_2261A74CC, sub_22619C838);

                  v301 = sub_2261E400C();
                  v354.n128_u64[0] = 0xD000000000000025;
                  v354.n128_u64[1] = 0x80000002261ECB30;
                  v379.n128_u8[0] = v331;
                  v379.n128_u32[1] = v328;
                  v379.n128_u8[8] = 0;
                  v380.n128_u64[0] = v330;
                  v380.n128_u64[1] = v350;
                  v381.n128_u64[0] = v103.n128_u64[0];
                  v381.n128_u64[1] = v349;
                  sub_2261A65DC();
                  v302 = sub_2261E423C();
                  v304 = v303;

                  MEMORY[0x22AA782B0](v302, v304);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v301, v354.n128_i64[0], v354.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 542);

                  v305 = v346;
                  sub_2261B5424(v346, v274, v300, 0, sub_2261A28B8, sub_22619C830);
                  sub_2261B5424(v305, v274, v300, 0, sub_2261A28B8, sub_22619C830);
                  v306 = v325;
                  v307 = v332;
                  v308 = sub_2261E3B8C();
                  (*(v353 + 16))(v353, v308, 0);

                  v309 = v335.n128_i64[1];
                  v310 = v335.n128_u64[0];
                  v311 = v334;
                  sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);
                  sub_22619C840(v306, v307);
                  sub_2261B5258(&v358);
                  sub_2261A28B8(v351, v352);
                  sub_2261B52AC(v320, v319, v321, v333);
                  v313 = v322;
                  v312 = v323;
                  v314 = v324;
                  sub_2261B5424(v323, v322, v324, 0, sub_22619C840, sub_22619C830);

                  sub_2261B5424(v312, v313, v314, 0, sub_22619C840, sub_22619C830);
                  sub_2261AF4E8(&v369);
                  sub_2261795CC(v310, v309, v311, 0);
                  v223 = v329.n128_i64[1];
                  v222 = v329.n128_u64[0];
                  v224 = v326;
                  goto LABEL_72;
                }

                v257 = sub_2261E3FFC();
                v379.n128_u64[0] = 0;
                v379.n128_u64[1] = 0xE000000000000000;
                sub_2261E410C();
                v357 = v379;
                MEMORY[0x22AA782B0](0xD000000000000041, 0x80000002261ECAA0);
                v258 = sub_2261E3C1C();
                MEMORY[0x22AA782B0](v258);

                MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
                MEMORY[0x22AA782B0](v336, v348);

                MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                v379.n128_u8[0] = v331;
                v379.n128_u32[1] = v328;
                v379.n128_u8[8] = 0;
                v380.n128_u64[0] = v330;
                v380.n128_u64[1] = v350;
                v381.n128_u64[0] = v103.n128_u64[0];
                v381.n128_u64[1] = v349;
                sub_2261A65DC();
                v259 = sub_2261E423C();
                v261 = v260;

                MEMORY[0x22AA782B0](v259, v261);

                MEMORY[0x22AA782B0](32, 0xE100000000000000);

                sub_22619C448();

                v354 = v379;
                v355 = v380;
                v356 = v381;
                v262 = sub_2261E3E3C();
                MEMORY[0x22AA782B0](v262);

                MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                sub_2261A4EAC(v257, v357.n128_i64[0], v357.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 537);

                v263 = sub_2261A9CDC(0, 0xD000000000000039, 0x80000002261ECAF0);
                v264 = v353;
                v265 = (v353 + 16);
                (*(v353 + 16))(v353, 0, v263);

                sub_2261ACA3C(v346, v274, v275);
                v266 = v325;
                v267 = v332;
                v268 = sub_2261E3B8C();
                (*v265)(v264, v268, 0);

                v269 = v335.n128_i64[1];
                v270 = v335.n128_u64[0];
                v219 = v334;
                sub_2261795CC(v335.n128_i64[0], v335.n128_i64[1], v334, 0);
                sub_22619C840(v266, v267);
                sub_2261B5258(&v358);
                sub_2261A28B8(v351, v352);
                sub_2261B52AC(v320, v319, v321, v333);
                v272 = v322;
                v271 = v323;
                v273 = v324;
                sub_2261B5424(v323, v322, v324, 0, sub_22619C840, sub_22619C830);

                sub_2261B5424(v271, v272, v273, 0, sub_22619C840, sub_22619C830);
                sub_2261AF4E8(&v369);
                v220 = v270;
                v221 = v269;
LABEL_71:
                sub_2261795CC(v220, v221, v219, 0);
                v223 = v329.n128_i64[1];
                v222 = v329.n128_u64[0];
                v224 = v326;
LABEL_72:
                sub_2261B5424(v222, v223, v224, 0, sub_2261A28B8, sub_22619C830);
                sub_2261AC974(v340, type metadata accessor for Key);
                (*(v343 + 8))(v341, v344);
                return;
              }

              v200 = sub_2261E3FFC();
              v374.n128_u64[0] = 0xD000000000000021;
              v374.n128_u64[1] = 0x80000002261EB5E0;
              v201 = v325;
              swift_getErrorValue();
              v202 = sub_2261E429C();
              MEMORY[0x22AA782B0](v202);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v200, v374.n128_i64[0], v374.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 482);

              v320 = 0;
              v321 = 0;
              v333 = 0;
              v325 = 0;
            }

            else
            {
              v320 = 0;
              v321 = 0;
              v333 = 0;
            }

            v319 = 0xF000000000000000;
            goto LABEL_75;
          }
        }

        v184 = sub_2261CDB98();
        goto LABEL_66;
      }

      sub_2261795CC(v70.n128_i64[0], v70.n128_i64[1], v71, 0);
      v111 = sub_2261E3FFC();
      v374.n128_u64[0] = 0;
      v374.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](v336, 0x80000002261EC7A0);
      v81 = v341;
      v112 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v112);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v345, v346);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v111, v374.n128_i64[0], v374.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 391);

      v113 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      (*(v353 + 16))(v353, 0, v113);
      sub_2261795CC(v70.n128_i64[0], v70.n128_i64[1], v71, 0);

      sub_2261795CC(v70.n128_i64[0], v70.n128_i64[1], v71, 0);
    }

    else
    {
      sub_2261795CC(0, v369.n128_i64[1], v370.n128_i8[0], 0);
      v107 = sub_2261E3FFC();
      v374.n128_u64[0] = 0;
      v374.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v358 = v374;
      MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC720);
      v81 = v341;
      v108 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v108);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v345, v346);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v369 = v374;
      v370 = v375;
      v371 = v376;
      v109 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v109);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v107, v358.n128_i64[0], v358.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 385);

      v110 = sub_2261A9CDC(2, 0xD000000000000034, 0x80000002261EC760);
      (*(v353 + 16))(v353, 0, v110);
      sub_2261795CC(0, v70.n128_i64[1], v71, 0);
    }

LABEL_43:
    sub_2261AC974(v340, type metadata accessor for Key);
    goto LABEL_34;
  }

  sub_22619A7B4(v21, &qword_27D78DF28, &unk_2261E6FD0);
  v52 = v349;
  v51 = v350;
  (*(v349 + 16))(v14, v347 + v342, v350);
  v53 = sub_2261E3FFC();
  v374.n128_u64[0] = 0;
  v374.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v366 = v374;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v345, v346);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);

  sub_22619C448();

  v54 = 0;
  v55 = 0;
  if (v369.n128_u64[1] != 1)
  {
    v374 = v369;
    v375 = v370;
    v376 = v371;
    v54 = sub_2261A5660();
    v55 = v56;
    v379 = v374;
    sub_22619A7B4(&v379, &qword_27D78DE20, &unk_2261E6280);
    v382 = v375;
    sub_22619A7B4(&v382, &qword_27D78DE20, &unk_2261E6280);
    v358 = v376;
    sub_22619A7B4(&v358, &qword_27D78DE20, &unk_2261E6280);
  }

  v354.n128_u64[0] = v54;
  v354.n128_u64[1] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v57 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v57);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v53, v366.n128_i64[0], v366.n128_u64[1], 0xD000000000000061, v339 | 0x8000000000000000, 352);

  (*(v52 + 8))(v14, v51);
  v58 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  (*(v353 + 16))(v353, 0, v58);
}

void sub_2261C09C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v122 = a8;
  v121 = a5;
  v120 = a4;
  v119 = a3;
  v117 = sub_2261E3CDC();
  v118 = *(v117 - 8);
  v12 = MEMORY[0x28223BE20](v117);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v106 - v15;
  v17 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v106 - v21;
  v23 = sub_2261E3C3C();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v30 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v30 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    goto LABEL_15;
  }

  v31 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v31 = v121 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    goto LABEL_15;
  }

  v32 = v120 >> 62;
  if ((v120 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_15;
    }

    v33 = *(v119 + 16);
    v34 = *(v119 + 24);
LABEL_14:
    if (v33 != v34)
    {
      goto LABEL_19;
    }

LABEL_15:
    v35 = sub_2261E3FFC();
    sub_2261A4EAC(v35, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 549);
    v36 = 0x80000002261EC1F0;
    v37 = 1;
    v38 = 0xD000000000000013;
LABEL_16:
    v121 = sub_2261A9CDC(v37, v38, v36);
    (*(v122 + 16))(v122, 0, v121);
    v39 = v121;

    return;
  }

  if (v32)
  {
    v33 = v119;
    v34 = v119 >> 32;
    goto LABEL_14;
  }

  if ((v120 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v110 = v16;
  v111 = v19;
  v112 = &v106 - v28;
  v113 = v29;
  v114 = v27;
  v116 = a7;
  v40 = sub_2261AA444();
  v42 = sub_22619DFA0(v40, v41);

  v115 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v42 & 1) == 0)
  {
    v44 = sub_2261E3FFC();
    *&v129 = 0;
    *(&v129 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v121, a6);
    MEMORY[0x22AA782B0](0x3D626F6C62202CLL, 0xE700000000000000);
    v45 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v45);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v44, v129, *(&v129 + 1), 0xD000000000000061, 0x80000002261EBE30, 555);

    v38 = 0xD000000000000020;
    v36 = 0x80000002261EBEA0;
    v37 = 3;
    goto LABEL_16;
  }

  v108 = sub_2261E3FEC();
  *&v129 = 0;
  *(&v129 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v126 = v129;
  MEMORY[0x22AA782B0](0xD000000000000023, 0x80000002261ECBF0);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v121, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v43 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v43);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v109 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v108, v126, *(&v126 + 1), 0xD000000000000061, 0x80000002261EBE30, 560);

  sub_2261AC2DC(a1, a2, v22);
  v46 = v113;
  if ((*(v113 + 48))(v22, 1, v114) != 1)
  {
    (*(v46 + 32))(v112, v22, v114);
    if (sub_2261E3C1C() == a1 && v54 == a2)
    {

      v55 = v110;
    }

    else
    {
      v56 = sub_2261E425C();

      v55 = v110;
      if ((v56 & 1) == 0)
      {
        v74 = sub_2261E3FFC();
        *&v129 = 0;
        *(&v129 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v134 = v129;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v75 = v112;
        v76 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v76);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v121, a6);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v126 = v129;
        v127 = v130;
        v128 = v131;
        v77 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v77);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v74, v134, *(&v134 + 1), 0xD000000000000061, v109 | 0x8000000000000000, 570);

        v78 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        (*(v122 + 16))(v122, 0, v78);

        (*(v113 + 8))(v75, v114);
        return;
      }
    }

    v57 = v55;
    v58 = sub_2261E3FEC();
    *&v129 = 0;
    *(&v129 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v59 = v112;
    v60 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v60);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v58, v129, *(&v129 + 1), 0xD000000000000061, v109 | 0x8000000000000000, 575);

    v61 = sub_22619C044();

    (*(v113 + 16))(v26, v59, v114);

    v62 = v61 & 1;
    v63 = v111;
    sub_2261C3918(v62, v26, 0, v121, a6, v111);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v130 + 1) = v17;
    *&v131 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v129);
    sub_2261AC9D4(v63, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v129, v65, &v126);

    v66 = sub_22619A7B4(&v129, &qword_27D78DFD0, &qword_2261E6FF0);
    v67 = v126;
    LODWORD(v121) = v127;
    if (BYTE1(v127))
    {
      v129 = v126;
      v68 = v121;
      LOBYTE(v130) = v121 & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      sub_2261795CC(v67, *(&v67 + 1), v68, 1);
      v69 = v109;
    }

    else
    {
      v79 = v115;
      v69 = v109;
      if (v126)
      {
        v80 = sub_2261C9E2C(v66);
        if (v81)
        {
          v110 = v81;
          v107 = v80;
          v82 = v118;
          v83 = v117;
          (*(v118 + 16))(v57, v116 + v79, v117);
          v108 = sub_2261E3FEC();
          *&v129 = 0;
          *(&v129 + 1) = 0xE000000000000000;
          sub_2261E410C();
          v84 = MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
          v85 = sub_2261C9E2C(v84);
          if (v86)
          {
            v87 = v86;
          }

          else
          {
            v85 = 7104878;
            v87 = 0xE300000000000000;
          }

          MEMORY[0x22AA782B0](v85, v87);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v108, v129, *(&v129 + 1), 0xD000000000000061, v69 | 0x8000000000000000, 587);

          (*(v82 + 8))(v57, v83);
          v88 = sub_2261E3B8C();
          v89 = sub_2261C8E9C(v67, v88);
          v91 = v90;
          v93 = v92;

          if ((v93 & 0x100) != 0)
          {
            *&v129 = v89;
            *(&v129 + 1) = v91;
            LOBYTE(v130) = v93 & 1;
            LODWORD(v120) = v93 & 1;
            sub_22619C838(v89, v91);
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            LODWORD(v119) = sub_2261E3FFC();
            *&v129 = 0;
            *(&v129 + 1) = 0xE000000000000000;
            sub_2261E410C();
            v126 = v129;
            MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261ECC20);
            *&v129 = v89;
            *(&v129 + 1) = v91;
            LOBYTE(v130) = v93 & 1;
            v94 = sub_2261E429C();
            MEMORY[0x22AA782B0](v94);

            MEMORY[0x22AA782B0](0x3D644979656B202CLL, 0xE800000000000000);
            MEMORY[0x22AA782B0](v107, v110);

            MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
            v95 = v112;
            v96 = sub_2261E3C1C();
            MEMORY[0x22AA782B0](v96);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v119, v126, *(&v126 + 1), 0xD000000000000061, v109 | 0x8000000000000000, 594);

            *&v129 = 0;
            *(&v129 + 1) = 0xE000000000000000;
            sub_2261E410C();

            *&v126 = 0xD000000000000017;
            *(&v126 + 1) = 0x80000002261ECC40;
            *&v129 = v89;
            *(&v129 + 1) = v91;
            LOBYTE(v130) = v120;
            v97 = sub_2261E429C();
            v99 = v98;
            sub_2261795CC(v89, v91, v93, 1);
            MEMORY[0x22AA782B0](v97, v99);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v100 = sub_2261A9CDC(0, v126, *(&v126 + 1));

            (*(v122 + 16))(v122, 0, v100);
            sub_2261795CC(v67, *(&v67 + 1), v121, 0);
          }

          else
          {
            sub_2261790A8(v89, v91, v93, 0);

            if (v89)
            {
              v101 = v89;
              v102 = sub_2261E3BBC();
              v104 = v103;
              sub_2261795CC(v89, v91, v93, 0);
              v105 = sub_2261E3B8C();
            }

            else
            {
              v105 = 0;
              v102 = 0;
              v104 = 0xF000000000000000;
            }

            (*(v122 + 16))(v122, v105, 0);

            sub_2261795CC(v67, *(&v67 + 1), v121, 0);
            sub_2261A28B8(v102, v104);
            sub_2261795CC(v89, v91, v93, 0);
            v95 = v112;
          }

          sub_2261795CC(v89, v91, v93, HIBYTE(v93) & 1);
          sub_2261AC974(v111, type metadata accessor for Key);
          (*(v113 + 8))(v95, v114);
          return;
        }

        sub_2261795CC(v67, *(&v67 + 1), v121, 0);
      }
    }

    v70 = sub_2261E3FFC();
    *&v129 = 0;
    *(&v129 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v129 = 0xD00000000000001CLL;
    *(&v129 + 1) = 0x80000002261EC3E0;
    v71 = v112;
    v72 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v72);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v70, v129, *(&v129 + 1), 0xD000000000000061, v69 | 0x8000000000000000, 582);

    v73 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    (*(v122 + 16))(v122, 0, v73);

    sub_2261AC974(v111, type metadata accessor for Key);
    (*(v113 + 8))(v71, v114);
    return;
  }

  sub_22619A7B4(v22, &qword_27D78DF28, &unk_2261E6FD0);
  v47 = v117;
  (*(v118 + 16))(v14, v116 + v115, v117);
  v48 = sub_2261E3FFC();
  *&v129 = 0;
  *(&v129 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v125 = v129;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v121, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);

  sub_22619C448();

  v49 = 0;
  v50 = 0;
  if (*(&v126 + 1) != 1)
  {
    v129 = v126;
    v130 = v127;
    v131 = v128;
    v49 = sub_2261A5660();
    v50 = v51;
    v132 = v129;
    sub_22619A7B4(&v132, &qword_27D78DE20, &unk_2261E6280);
    v133 = v130;
    sub_22619A7B4(&v133, &qword_27D78DE20, &unk_2261E6280);
    v134 = v131;
    sub_22619A7B4(&v134, &qword_27D78DE20, &unk_2261E6280);
  }

  v123 = v49;
  v124 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v52 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v52);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v48, v125, *(&v125 + 1), 0xD000000000000061, v109 | 0x8000000000000000, 564);

  (*(v118 + 8))(v14, v47);
  v53 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  (*(v122 + 16))(v122, 0, v53);
}

void sub_2261C1EA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a6;
  v11 = sub_2261E3CDC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v83 - v16;
  v95 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v95);
  v96 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - v19;
  v21 = sub_2261E3C3C();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v28 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v28 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    goto LABEL_9;
  }

  v29 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v29 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_9:
    v36 = sub_2261E3FFC();
    sub_2261A4EAC(v36, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 602);
    v37 = 0x80000002261EC1F0;
    v38 = 1;
    v39 = 0xD000000000000013;
LABEL_11:
    v96 = sub_2261A9CDC(v38, v39, v37);
    (*(v97 + 16))(v97, 0, v96);
    v41 = v96;

    return;
  }

  v91 = a3;
  v92 = a4;
  v89 = v12;
  v90 = v11;
  v86 = &v83 - v26;
  v87 = v27;
  v88 = v25;
  v30 = sub_2261AA444();
  v32 = sub_22619DFA0(v30, v31);

  v94 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v32 & 1) == 0)
  {
    v40 = sub_2261E3FFC();
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v91, v92);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v40, v104, *(&v104 + 1), 0xD000000000000061, 0x80000002261EBE30, 608);

    v39 = 0xD000000000000020;
    v37 = 0x80000002261EBEA0;
    v38 = 3;
    goto LABEL_11;
  }

  LODWORD(v85) = sub_2261E3FEC();
  *&v104 = 0;
  *(&v104 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v101 = v104;
  MEMORY[0x22AA782B0](0xD000000000000026, 0x80000002261ECC60);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  v33 = v91;
  MEMORY[0x22AA782B0](v91, v92);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v35 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v35);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v84 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v85, v101, *(&v101 + 1), 0xD000000000000061, 0x80000002261EBE30, 613);

  v85 = a5;
  sub_2261AC2DC(a1, a2, v20);
  v83 = v34;
  v42 = v87;
  v43 = v88;
  v44 = (*(v87 + 48))(v20, 1, v88);
  if (v44 == 1)
  {
    sub_22619A7B4(v20, &qword_27D78DF28, &unk_2261E6FD0);
    (*(v89 + 16))(v15, v85 + v94, v90);
    v45 = v33;
    v46 = sub_2261E3FFC();
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v100 = v104;
    MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v45, v92);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);

    sub_22619C448();

    v47 = 0;
    v48 = 0;
    if (*(&v101 + 1) != 1)
    {
      v104 = v101;
      v105 = v102;
      v106 = v103;
      v47 = sub_2261A5660();
      v48 = v49;
      v107 = v104;
      sub_22619A7B4(&v107, &qword_27D78DE20, &unk_2261E6280);
      v108 = v105;
      sub_22619A7B4(&v108, &qword_27D78DE20, &unk_2261E6280);
      v109 = v106;
      sub_22619A7B4(&v109, &qword_27D78DE20, &unk_2261E6280);
    }

    v98 = v47;
    v99 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
    v50 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v50);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v46, v100, *(&v100 + 1), 0xD000000000000061, v84 | 0x8000000000000000, 617);

    (*(v89 + 8))(v15, v90);
    v51 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
    (*(v97 + 16))(v97, 0, v51);

    return;
  }

  (*(v42 + 32))(v86, v20, v43);
  if (sub_2261E3C1C() == a1 && v52 == a2)
  {
  }

  else
  {
    v53 = sub_2261E425C();

    if ((v53 & 1) == 0)
    {
      v69 = sub_2261E3FFC();
      *&v104 = 0;
      *(&v104 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v109 = v104;
      MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
      MEMORY[0x22AA782B0](a1, a2);
      MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
      v70 = v86;
      v71 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v71);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v91, v92);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v101 = v104;
      v102 = v105;
      v103 = v106;
      v72 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v72);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v69, v109, *(&v109 + 1), 0xD000000000000061, v84 | 0x8000000000000000, 623);

      v73 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
      (*(v97 + 16))(v97, 0, v73);

      (*(v87 + 8))(v70, v88);
      return;
    }
  }

  v54 = sub_2261E3FEC();
  *&v104 = 0;
  *(&v104 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
  v55 = v86;
  v56 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v56);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v57 = v84;
  sub_2261A4EAC(v54, v104, *(&v104 + 1), 0xD000000000000061, v84 | 0x8000000000000000, 628);

  v58 = sub_22619C044();

  (*(v87 + 16))(v24, v55, v88);
  v59 = v92;

  v60 = v96;
  sub_2261C3918(v58 & 1, v24, 0, v91, v59, v96);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
  *(&v105 + 1) = v95;
  *&v106 = &off_28395C890;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_2261AC9D4(v60, boxed_opaque_existential_1, type metadata accessor for Key);
  type metadata accessor for SecKey();
  sub_2261C74AC(&v104, v62, &v101);

  sub_22619A7B4(&v104, &qword_27D78DFD0, &qword_2261E6FF0);
  v63 = v101;
  v64 = v102;
  if (BYTE1(v102))
  {
    v104 = v101;
    LOBYTE(v105) = v102 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_2261795CC(v63, *(&v63 + 1), v64, 1);
LABEL_24:
    v65 = sub_2261E3FFC();
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v104 = 0xD00000000000001CLL;
    *(&v104 + 1) = 0x80000002261EC3E0;
    v66 = v86;
    v67 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v67);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v65, v104, *(&v104 + 1), 0xD000000000000061, v57 | 0x8000000000000000, 634);

    v68 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    (*(v97 + 16))(v97, 0, v68);

    sub_2261AC974(v60, type metadata accessor for Key);
    (*(v87 + 8))(v66, v88);
    return;
  }

  if (!v101)
  {
    sub_2261795CC(0, *(&v101 + 1), v102, 0);
    goto LABEL_24;
  }

  v74 = v89;
  v75 = v93;
  v76 = v90;
  (*(v89 + 16))(v93, v85 + v94, v90);
  v77 = v63;
  v78 = sub_2261E3FEC();
  *&v104 = 0;
  *(&v104 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v79 = MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
  v80 = sub_2261C9E2C(v79);
  if (v81)
  {
    v82 = v81;
  }

  else
  {
    v80 = 7104878;
    v82 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v80, v82);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v78, v104, *(&v104 + 1), 0xD000000000000061, v84 | 0x8000000000000000, 639);

  (*(v74 + 8))(v75, v76);
  (*(v97 + 16))(v97, v77, 0);
  sub_2261795CC(v63, *(&v63 + 1), v64, 0);
  sub_2261795CC(v63, *(&v63 + 1), v64, 0);
  sub_2261AC974(v96, type metadata accessor for Key);
  (*(v87 + 8))(v86, v88);
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_2261E3C3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = (*(v2 + 64) + 263) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_22619C840(*(v0 + 192), *(v0 + 200));
  sub_22619C840(*(v0 + 208), *(v0 + 216));

  (*(v2 + 8))(v0 + 256, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v3 | 7);
}

uint64_t sub_2261C30C0()
{
  sub_2261E3C3C();
  v2 = v0[4];
  v3 = v0[28];
  v4 = v0[29];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2261C31BC;

  return sub_2261AF71C(v5, v6, v7, v2, (v0 + 5), (v0 + 20), v3, v4);
}

uint64_t sub_2261C31BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2261C32B0()
{
  result = qword_28136E1B0;
  if (!qword_28136E1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1B0);
  }

  return result;
}

uint64_t sub_2261C32FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2261C336C()
{
  result = qword_28136EA30;
  if (!qword_28136EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA30);
  }

  return result;
}

unint64_t sub_2261C33C0()
{
  result = qword_28136EA20;
  if (!qword_28136EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA20);
  }

  return result;
}

uint64_t sub_2261C3414(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_22619C838(result, a2);
  }
}

unint64_t sub_2261C3440()
{
  result = qword_28136E7E0;
  if (!qword_28136E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E7E0);
  }

  return result;
}

uint64_t sub_2261C34C0@<X0>(uint64_t a2@<X8>)
{
  sub_2261E3C2C();
  v3 = sub_2261E3C1C();
  v5 = v4;
  result = type metadata accessor for AppUUID(0);
  v7 = (a2 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

uint64_t sub_2261C350C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2261E3C3C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AppUUID(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_2261C3590(uint64_t a1)
{
  v1 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v1);

  return 0x3D64697575;
}

uint64_t sub_2261C35E4()
{
  if (*(v0 + 8))
  {
    sub_2261E410C();

    strcpy(v4, "environment=");
    BYTE5(v4[1]) = 0;
    HIWORD(v4[1]) = -5120;
    v1 = sub_22619C4AC(*v0);
  }

  else
  {
    v4[0] = 0;
    v4[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0x6D6E6F7269766E65, 0xEC0000003D746E65);
    v2 = sub_22619C4AC(*v0);
    MEMORY[0x22AA782B0](v2);

    MEMORY[0x22AA782B0](0x65746E756F63202CLL, 0xEA00000000003D72);
    v1 = sub_2261E423C();
  }

  MEMORY[0x22AA782B0](v1);

  MEMORY[0x22AA782B0](0x495555707061202CLL, 0xEA00000000003D44);
  MEMORY[0x22AA782B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](*(v0 + 32), *(v0 + 40));
  return v4[0];
}

uint64_t sub_2261C378C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result & 1;
  *(a7 + 4) = a2;
  *(a7 + 8) = BYTE4(a2) & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_2261C37D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261C3808()
{
  sub_2261E410C();

  strcpy(v5, "environment=");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v1 = sub_22619C4AC(*v0);
  MEMORY[0x22AA782B0](v1);

  MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
  v2 = type metadata accessor for Key(0);
  v3 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v3);

  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](*&v0[*(v2 + 28)], *&v0[*(v2 + 28) + 8]);
  return v5[0];
}

uint64_t sub_2261C3918@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1 & 1;
  v11 = type metadata accessor for Key(0);
  v12 = v11[5];
  v13 = sub_2261E3C3C();
  result = (*(*(v13 - 8) + 32))(&a6[v12], a2, v13);
  *&a6[v11[6]] = a3;
  v15 = &a6[v11[7]];
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_2261C39F4(uint64_t a1)
{
  result = sub_2261E3C3C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2261C3A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2261C3AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2261C3B34(uint64_t a1)
{
  sub_2261E3C3C();
  if (v1 <= 0x3F)
  {
    sub_2261C3BD0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2261C3BD0(uint64_t a1)
{
  if (!qword_28136E178)
  {
    type metadata accessor for SecKey();
    v1 = sub_2261E406C();
    if (!v2)
    {
      atomic_store(v1, &qword_28136E178);
    }
  }
}

char *sub_2261C3C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  v9 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v10 = sub_2261A51D8();
  v11 = sub_2261E3CDC();
  (*(*(v11 - 8) + 16))(&v8[v9], v10, v11);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

uint64_t sub_2261C3CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2261E406C();
  v69 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v70 = &v58[-v8];
  v73 = a2;
  v72 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v71 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v58[-v14];
  v16 = type metadata accessor for Key(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2261A6578(a1, &v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  v20 = swift_dynamicCast();
  v21 = *(v17 + 56);
  if (v20)
  {
    v67 = a3;
    v68 = v6;
    v21(v15, 0, 1, v16);
    sub_2261C4730(v15, v19);
    v22 = sub_2261E3C1C();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25 && (v26 = *&v19[*(v16 + 24)]) != 0)
    {
      sub_2261C47F0(v19, v13);
      v21(v13, 0, 1, v16);
      v27 = v26;
      v28 = v77;
      v29 = sub_2261C4854(v13);
      v77 = v28;
      if (v28)
      {

        sub_22619A7B4(v13, &qword_27D78E060, &unk_2261E71B0);
        return sub_2261C4794(v19);
      }

      v36 = v29;
      v37 = v30;
      v38 = v31;
      sub_22619A7B4(v13, &qword_27D78E060, &unk_2261E71B0);
      if ((v38 & 0x100) != 0)
      {
        v74 = v36;
        v75 = v37;
        v76 = v38 & 1;
        sub_22619C7B4();
        swift_willThrowTypedImpl();
        v77 = swift_allocError();
        *v52 = v36;
        *(v52 + 8) = v37;
        *(v52 + 16) = v38 & 1;

        return sub_2261C4794(v19);
      }

      v65 = v38;
      sub_22619B938();
      type metadata accessor for SecKey();
      v66 = sub_2261E09C4(v27, v36, v37, v39);
      v41 = v40;
      v43 = v42;

      if ((v43 & 0x100) != 0)
      {
        v53 = v66;
        sub_2261C349C(v66, v41, v43, 1);
        sub_22619C81C(v36, v37, v65, 0);
        v74 = v53;
        v75 = v41;
        v76 = v43 & 1;
        sub_22619C7B4();
        swift_willThrowTypedImpl();
        v77 = swift_allocError();
        *v54 = v53;
        *(v54 + 8) = v41;
        *(v54 + 16) = v43 & 1;

        sub_2261C3498(v53, v41, v43, 1);
        return sub_2261C4794(v19);
      }

      v60 = v36;
      v61 = v37;
      v62 = v41;
      v63 = v43;
      v64 = v27;
      v74 = v66;
      v44 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E068, qword_2261E71C0);
      v45 = v70;
      v46 = v73;
      if (swift_dynamicCast())
      {
        v47 = v72;
        v69 = *(v72 + 56);
        (v69)(v45, 0, 1, v46);
        v72 = *(v47 + 32);
        (v72)(v71, v45, v46);
        v70 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
        v59 = sub_2261E400C();
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_2261E410C();

        v74 = 0xD00000000000001ELL;
        v75 = 0x80000002261ED2B0;
        sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
        v48 = sub_2261E423C();
        MEMORY[0x22AA782B0](v48);

        MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
        v50 = v60;
        v49 = v61;
        MEMORY[0x22AA782B0](v60, v61);
        sub_22619C81C(v50, v49, v65, 0);
        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v59, v74, v75, 0xD000000000000068, 0x80000002261ED1B0, 46);

        sub_2261C3498(v66, v62, v63, 0);
        sub_2261C4794(v19);
        v51 = v67;
        (v72)(v67, v71, v46);
        (v69)(v51, 0, 1, v46);
        sub_22619C7B4();
        sub_2261E434C();
        return swift_storeEnumTagMultiPayload();
      }

      sub_22619C81C(v60, v61, v65, 0);
      (*(v72 + 56))(v45, 1, 1, v46);
      (*(v69 + 8))(v45, v68);
      v55 = sub_2261E3FEC();
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000032, 0x80000002261ED240);
      sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
      v56 = sub_2261E423C();
      MEMORY[0x22AA782B0](v56);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v55, v74, v75, 0xD000000000000068, 0x80000002261ED1B0, 42);

      sub_2261C3498(v66, v62, v63, 0);
      sub_2261C4794(v19);
      v57 = v67;
      *v67 = 0xD00000000000002ALL;
      v57[1] = 0x80000002261ED280;
      *(v57 + 16) = 1;
      sub_22619C7B4();
    }

    else
    {
      v32 = sub_2261E3FEC();
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_2261E410C();

      v74 = 0xD00000000000001CLL;
      v75 = 0x80000002261ED190;
      sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
      v33 = sub_2261E423C();
      MEMORY[0x22AA782B0](v33);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v32, v74, v75, 0xD000000000000068, 0x80000002261ED1B0, 34);

      sub_2261C4794(v19);
      v34 = v67;
      *v67 = 0xD000000000000019;
      v34[1] = 0x80000002261ED220;
      *(v34 + 16) = 0;
      sub_22619C7B4();
    }

    sub_2261E434C();
  }

  else
  {
    v21(v15, 1, 1, v16);
    sub_22619A7B4(v15, &qword_27D78E060, &unk_2261E71B0);
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x80000002261EBA10;
    *(a3 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261C4730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Key(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2261C4794(uint64_t a1)
{
  v2 = type metadata accessor for Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261C47F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2261C4854(uint64_t a1)
{
  v105 = sub_2261E3D3C();
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2261E3D2C();
  v108 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2261E3E2C();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v5 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v88 - v7;
  v9 = type metadata accessor for Key(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v88 - v14;
  sub_22619A73C(a1, v8, &qword_27D78E060, &unk_2261E71B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22619A7B4(v8, &qword_27D78E060, &unk_2261E71B0);
    LOBYTE(v113) = 0;
    return 0xD000000000000017;
  }

  else
  {
    sub_2261C4730(v8, v13);
    sub_2261C4730(v13, v15);
    v17 = sub_22619AC3C();
    sub_2261A2CB8(v118, v17);

    v18 = v15;
    if (*(&v118[0] + 1) == 1)
    {
      v19 = sub_2261E3FEC();
      *&v119 = 0;
      *(&v119 + 1) = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000034, 0x80000002261ED2D0);
      sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
      v20 = sub_2261E423C();
      MEMORY[0x22AA782B0](v20);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v19, v119, *(&v119 + 1), 0xD000000000000068, 0x80000002261ED1B0, 89);

      sub_2261C4794(v15);
      LOBYTE(v113) = 1;
      return 0xD000000000000031;
    }

    else
    {
      v119 = v118[0];
      v120 = v118[1];
      v121 = v118[2];
      sub_2261A54B0();
      if (v21 && (sub_2261E3E1C(), v102 = sub_2261E3DEC(), v23 = v22, , v24 = *(v109 + 8), v24(v5, v110), v23 >> 60 != 15))
      {
        v101 = v23;
        sub_2261E3C1C();
        sub_2261E3E1C();
        v30 = sub_2261E3DEC();
        v109 = v18;
        v32 = v31;

        v33 = v110;
        v24(v5, v110);
        if (v32 >> 60 == 15)
        {
          v34 = sub_2261E3FEC();
          *&v113 = 0;
          *(&v113 + 1) = 0xE000000000000000;
          sub_2261E410C();

          v116 = 0xD000000000000024;
          v117 = 0x80000002261ED350;
          sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
          v35 = v109;
          v36 = sub_2261E423C();
          MEMORY[0x22AA782B0](v36);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v122 = v121;
          v123 = v120;
          v124 = v119;
          v113 = v119;
          v114 = v120;
          v115 = v121;
          sub_22619C894();
          v37 = sub_2261E423C();
          v39 = v38;
          sub_22619A7B4(&v124, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v123, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v122, &qword_27D78DE20, &unk_2261E6280);
          MEMORY[0x22AA782B0](v37, v39);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v34, v116, v117, 0xD000000000000068, 0x80000002261ED1B0, 100);

          sub_2261A28B8(v102, v101);
          sub_2261C4794(v35);
          LOBYTE(v113) = 0;
          return 0xD000000000000021;
        }

        else
        {
          v100 = v30;
          sub_2261E3E1C();
          v40 = sub_2261E3DEC();
          v42 = v41;
          v24(v5, v33);
          if (v42 >> 60 == 15)
          {
            v43 = v32;
            v44 = sub_2261E3FEC();
            *&v113 = 0;
            *(&v113 + 1) = 0xE000000000000000;
            sub_2261E410C();

            v116 = 0xD000000000000026;
            v117 = 0x80000002261ED3B0;
            sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
            v45 = v109;
            v46 = sub_2261E423C();
            MEMORY[0x22AA782B0](v46);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            v122 = v121;
            v123 = v120;
            v124 = v119;
            v113 = v119;
            v114 = v120;
            v115 = v121;
            sub_22619C894();
            v47 = sub_2261E423C();
            v49 = v48;
            sub_22619A7B4(&v124, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v123, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v122, &qword_27D78DE20, &unk_2261E6280);
            MEMORY[0x22AA782B0](v47, v49);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v44, v116, v117, 0xD000000000000068, 0x80000002261ED1B0, 105);

            sub_2261A28B8(v100, v43);
            sub_2261A28B8(v102, v101);
            sub_2261C4794(v45);
            LOBYTE(v113) = 0;
            return 0xD000000000000023;
          }

          else
          {
            v122 = v119;
            v99 = v40;
            v98 = v42;
            sub_22619A7B4(&v122, &qword_27D78DE20, &unk_2261E6280);
            v123 = v120;
            sub_22619A7B4(&v123, &qword_27D78DE20, &unk_2261E6280);
            v124 = v121;
            sub_22619A7B4(&v124, &qword_27D78DE20, &unk_2261E6280);
            v94 = sub_22619C4AC(*v109);
            v93 = v50;
            v51 = sub_2261C8280(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
            v52 = v103;
            v53 = v105;
            v88[1] = v51;
            sub_2261E3D1C();
            v54 = v100;
            sub_22619D8F4(v100, v32);
            sub_22619D714(v54, v32, v52);
            sub_2261A28B8(v54, v32);
            v55 = v104;
            sub_2261E3D0C();
            v56 = *(v107 + 8);
            v107 += 8;
            v112 = v56;
            v56(v52, v53);
            v57 = v106;
            *(&v114 + 1) = v106;
            v58 = sub_2261C8280(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
            v95 = v32;
            v59 = v58;
            *&v115 = v58;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v113);
            v61 = v108;
            v62 = *(v108 + 16);
            v110 = v108 + 16;
            v111 = v62;
            v62(boxed_opaque_existential_1, v55, v57);
            __swift_project_boxed_opaque_existential_0(&v113, *(&v114 + 1));
            v97 = sub_22619D680;
            sub_2261E3ADC();
            v63 = *(v61 + 8);
            v108 = v61 + 8;
            v96 = v63;
            v63(v55, v57);
            v64 = v116;
            v65 = v117;
            __swift_destroy_boxed_opaque_existential_0(&v113);
            v92 = sub_2261E3B9C();
            v91 = v66;
            sub_22619C840(v64, v65);
            sub_2261E3D1C();
            v67 = v102;
            v68 = v101;
            sub_22619D8F4(v102, v101);
            sub_22619D714(v67, v68, v52);
            sub_2261A28B8(v67, v68);
            sub_2261E3D0C();
            v112(v52, v53);
            *(&v114 + 1) = v57;
            *&v115 = v59;
            v69 = __swift_allocate_boxed_opaque_existential_1(&v113);
            v111(v69, v55, v57);
            __swift_project_boxed_opaque_existential_0(&v113, *(&v114 + 1));
            sub_2261E3ADC();
            v96(v55, v57);
            v70 = v116;
            v71 = v117;
            __swift_destroy_boxed_opaque_existential_0(&v113);
            v90 = sub_2261E3B9C();
            v89 = v72;
            sub_22619C840(v70, v71);
            sub_2261E3D1C();
            v73 = v99;
            v74 = v98;
            sub_22619D8F4(v99, v98);
            sub_22619D714(v73, v74, v52);
            sub_2261A28B8(v73, v74);
            sub_2261E3D0C();
            v112(v52, v53);
            *(&v114 + 1) = v57;
            *&v115 = v59;
            v75 = __swift_allocate_boxed_opaque_existential_1(&v113);
            v111(v75, v55, v57);
            __swift_project_boxed_opaque_existential_0(&v113, *(&v114 + 1));
            sub_2261E3ADC();
            v96(v55, v57);
            v76 = v116;
            v77 = v117;
            __swift_destroy_boxed_opaque_existential_0(&v113);
            v78 = sub_2261E3B9C();
            v80 = v79;
            sub_22619C840(v76, v77);
            *&v113 = 0;
            *(&v113 + 1) = 0xE000000000000000;
            sub_2261E410C();

            v81 = sub_2261A2B60();
            v83 = *v81;
            v82 = v81[1];
            *&v113 = v83;
            *(&v113 + 1) = v82;

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            MEMORY[0x22AA782B0](v92, v91);

            MEMORY[0x22AA782B0](v94, v93);

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            MEMORY[0x22AA782B0](v90, v89);

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            MEMORY[0x22AA782B0](v78, v80);

            MEMORY[0x22AA782B0](58, 0xE100000000000000);
            v84 = sub_2261A2B78();
            v86 = *v84;
            v85 = v84[1];

            MEMORY[0x22AA782B0](v86, v85);

            sub_2261A28B8(v99, v98);
            sub_2261A28B8(v102, v101);
            sub_2261A28B8(v100, v95);
            v87 = v113;
            sub_2261C4794(v109);
            return v87;
          }
        }
      }

      else
      {
        v25 = sub_2261E3FEC();
        *&v113 = 0;
        *(&v113 + 1) = 0xE000000000000000;
        sub_2261E410C();

        v116 = 0xD000000000000019;
        v117 = 0x80000002261EBB90;
        sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
        v26 = sub_2261E423C();
        MEMORY[0x22AA782B0](v26);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v122 = v121;
        v123 = v120;
        v124 = v119;
        v113 = v119;
        v114 = v120;
        v115 = v121;
        sub_22619C894();
        v27 = sub_2261E423C();
        v29 = v28;
        sub_22619A7B4(&v124, &qword_27D78DE20, &unk_2261E6280);
        sub_22619A7B4(&v123, &qword_27D78DE20, &unk_2261E6280);
        sub_22619A7B4(&v122, &qword_27D78DE20, &unk_2261E6280);
        MEMORY[0x22AA782B0](v27, v29);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v25, v116, v117, 0xD000000000000068, 0x80000002261ED1B0, 95);

        sub_2261C4794(v18);
        LOBYTE(v113) = 1;
        return 0xD000000000000016;
      }
    }
  }
}

uint64_t sub_2261C5B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v152 = a4;
  v126 = sub_2261E406C();
  v125 = *(v126 - 8);
  v7 = MEMORY[0x28223BE20](v126);
  v133 = v109 - v8;
  v140 = a3;
  v132 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v127 = v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2261E3D3C();
  v134 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_2261E3D2C();
  v135 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2261E3E2C();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2261E406C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v109 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v109 - v18;
  v20 = type metadata accessor for Key(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  if ((*(*(a2 - 8) + 48))(v16, 1, a2) == 1)
  {
    (*(v14 + 8))(v16, v13);
    (*(v21 + 56))(v19, 1, 1, v20);
LABEL_4:
    sub_22619A7B4(v19, &qword_27D78E060, &unk_2261E71B0);
    v25 = v152;
    *v152 = 0xD000000000000017;
    v25[1] = 0x80000002261EBA10;
    *(v25 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v24 = swift_dynamicCast();
  (*(v21 + 56))(v19, v24 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_4;
  }

  v27 = v23;
  sub_2261C4730(v19, v23);
  v28 = sub_22619AC3C();
  sub_2261A2CB8(v145, v28);

  if (*(&v145[0] + 1) == 1)
  {
    v29 = sub_2261E3FEC();
    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000034, 0x80000002261ED2D0);
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
    v30 = sub_2261E423C();
    MEMORY[0x22AA782B0](v30);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v29, v146, *(&v146 + 1), 0xD000000000000068, 0x80000002261ED1B0, 89);

    v31 = 0x80000002261ED310;
    sub_2261C4794(v23);
    v32 = 0xD000000000000031;
LABEL_10:
    v44 = v152;
    *v152 = v32;
    v44[1] = v31;
    *(v44 + 16) = 1;
LABEL_11:
    sub_22619C7B4();
    goto LABEL_12;
  }

  v146 = v145[0];
  v147 = v145[1];
  v148 = v145[2];
  sub_2261A54B0();
  v33 = v138;
  if (!v34 || (v35 = v137, sub_2261E3E1C(), v124 = sub_2261E3DEC(), v37 = v36, , v38 = *(v136 + 8), v38(v35, v33), v136 = v37, v37 >> 60 == 15))
  {
    v39 = sub_2261E3FEC();
    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v144 = 0xD000000000000019;
    *(&v144 + 1) = 0x80000002261EBB90;
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
    v40 = sub_2261E423C();
    MEMORY[0x22AA782B0](v40);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v149 = v148;
    v150 = v147;
    v151 = v146;
    v141 = v146;
    v142 = v147;
    v143 = v148;
    sub_22619C894();
    v41 = sub_2261E423C();
    v43 = v42;
    sub_22619A7B4(&v151, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v41, v43);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v39, v144, *(&v144 + 1), 0xD000000000000068, 0x80000002261ED1B0, 95);

    v31 = 0x80000002261EBBB0;
    sub_2261C4794(v27);
    v32 = 0xD000000000000016;
    goto LABEL_10;
  }

  sub_2261E3C1C();
  v45 = v137;
  sub_2261E3E1C();
  v123 = sub_2261E3DEC();
  v47 = v46;

  v38(v45, v33);
  if (v47 >> 60 == 15)
  {
    v48 = sub_2261E3FEC();
    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v144 = 0xD000000000000024;
    *(&v144 + 1) = 0x80000002261ED350;
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
    v49 = sub_2261E423C();
    MEMORY[0x22AA782B0](v49);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v149 = v148;
    v150 = v147;
    v151 = v146;
    v141 = v146;
    v142 = v147;
    v143 = v148;
    sub_22619C894();
    v50 = sub_2261E423C();
    v52 = v51;
    sub_22619A7B4(&v151, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v50, v52);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v48, v144, *(&v144 + 1), 0xD000000000000068, 0x80000002261ED1B0, 100);

    v53 = 0x80000002261ED380;
    sub_2261A28B8(v124, v136);
    sub_2261C4794(v27);
    v54 = 0xD000000000000021;
LABEL_18:
    v62 = v152;
    *v152 = v54;
    v62[1] = v53;
    *(v62 + 16) = 0;
    goto LABEL_11;
  }

  v122 = v47;
  sub_2261E3E1C();
  v121 = sub_2261E3DEC();
  v56 = v55;
  v38(v45, v33);
  v138 = v56;
  if (v56 >> 60 == 15)
  {
    v57 = sub_2261E3FEC();
    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v144 = 0xD000000000000026;
    *(&v144 + 1) = 0x80000002261ED3B0;
    sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
    v58 = sub_2261E423C();
    MEMORY[0x22AA782B0](v58);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v149 = v148;
    v150 = v147;
    v151 = v146;
    v141 = v146;
    v142 = v147;
    v143 = v148;
    sub_22619C894();
    v59 = sub_2261E423C();
    v61 = v60;
    sub_22619A7B4(&v151, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v59, v61);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v57, v144, *(&v144 + 1), 0xD000000000000068, 0x80000002261ED1B0, 105);

    v53 = 0x80000002261ED3E0;
    sub_2261A28B8(v123, v122);
    sub_2261A28B8(v124, v136);
    sub_2261C4794(v27);
    v54 = 0xD000000000000023;
    goto LABEL_18;
  }

  v109[0] = v20;
  v116 = sub_22619C4AC(*v27);
  v115 = v63;
  v64 = sub_2261C8280(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v65 = v128;
  v66 = v130;
  v109[1] = v64;
  sub_2261E3D1C();
  v67 = v123;
  v68 = v122;
  sub_22619D8F4(v123, v122);
  sub_22619D714(v67, v68, v65);
  sub_2261A28B8(v67, v68);
  v69 = v129;
  sub_2261E3D0C();
  v110 = *(v134 + 8);
  v134 += 8;
  v110(v65, v66);
  v70 = v131;
  *(&v142 + 1) = v131;
  *&v143 = sub_2261C8280(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v118 = v143;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v141);
  v117 = v27;
  v72 = v135;
  v73 = *(v135 + 16);
  v137 = (v135 + 16);
  v139 = v73;
  v73(boxed_opaque_existential_1, v69, v70);
  __swift_project_boxed_opaque_existential_0(&v141, *(&v142 + 1));
  v120 = sub_22619D680;
  sub_2261E3ADC();
  v74 = v124;
  v75 = *(v72 + 8);
  v135 = v72 + 8;
  v119 = v75;
  v75(v69, v70);
  v76 = v151;
  __swift_destroy_boxed_opaque_existential_0(&v141);
  v114 = sub_2261E3B9C();
  v113 = v77;
  sub_22619C840(v76, *(&v76 + 1));
  sub_2261E3D1C();
  v78 = v136;
  sub_22619D8F4(v74, v136);
  sub_22619D714(v74, v78, v65);
  sub_2261A28B8(v74, v78);
  sub_2261E3D0C();
  v79 = v110;
  v110(v65, v66);
  *(&v142 + 1) = v70;
  *&v143 = v118;
  v80 = __swift_allocate_boxed_opaque_existential_1(&v141);
  v139(v80, v69, v70);
  __swift_project_boxed_opaque_existential_0(&v141, *(&v142 + 1));
  sub_2261E3ADC();
  v119(v69, v70);
  v81 = v151;
  __swift_destroy_boxed_opaque_existential_0(&v141);
  v112 = sub_2261E3B9C();
  v111 = v82;
  sub_22619C840(v81, *(&v81 + 1));
  sub_2261E3D1C();
  v83 = v121;
  v84 = v138;
  sub_22619D8F4(v121, v138);
  sub_22619D714(v83, v84, v65);
  sub_2261A28B8(v83, v84);
  sub_2261E3D0C();
  v79(v65, v66);
  *(&v142 + 1) = v70;
  *&v143 = v118;
  v85 = __swift_allocate_boxed_opaque_existential_1(&v141);
  v139(v85, v69, v70);
  __swift_project_boxed_opaque_existential_0(&v141, *(&v142 + 1));
  sub_2261E3ADC();
  v119(v69, v70);
  v86 = v151;
  __swift_destroy_boxed_opaque_existential_0(&v141);
  v87 = sub_2261E3B9C();
  v89 = v88;
  sub_22619C840(v86, *(&v86 + 1));
  *&v141 = 0;
  *(&v141 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v90 = sub_2261A2B60();
  v92 = *v90;
  v91 = v90[1];

  *&v141 = v92;
  *(&v141 + 1) = v91;
  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v114, v113);

  MEMORY[0x22AA782B0](v116, v115);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v112, v111);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v87, v89);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  v93 = sub_2261A2B78();
  v95 = *v93;
  v94 = v93[1];

  MEMORY[0x22AA782B0](v95, v94);

  v96 = v141;
  v149 = v141;

  v97 = v133;
  v98 = v140;
  if (swift_dynamicCast())
  {

    sub_2261A28B8(v121, v138);
    sub_2261A28B8(v123, v122);
    sub_2261A28B8(v124, v136);
    v150 = v146;
    sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
    v151 = v147;
    sub_22619A7B4(&v151, &qword_27D78DE20, &unk_2261E6280);
    v141 = v148;
    sub_22619A7B4(&v141, &qword_27D78DE20, &unk_2261E6280);
    v99 = v132;
    (*(v132 + 56))(v97, 0, 1, v98);
    sub_2261C4794(v117);
    v100 = *(v99 + 32);
    v101 = v127;
    v100(v127, v97, v98);
    v100(v152, v101, v98);
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v132 + 56))(v97, 1, 1, v98);
  (*(v125 + 8))(v97, v126);
  v139 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v102 = sub_2261E3FEC();
  *&v141 = 0;
  *(&v141 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v144 = v141;
  MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBC30);
  MEMORY[0x22AA782B0](v96, *(&v96 + 1));

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
  v103 = v117;
  v104 = sub_2261E423C();
  MEMORY[0x22AA782B0](v104);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v149 = v148;
  v150 = v147;
  v151 = v146;
  v141 = v146;
  v142 = v147;
  v143 = v148;
  sub_22619C894();
  v105 = sub_2261E423C();
  v107 = v106;
  sub_22619A7B4(&v151, &qword_27D78DE20, &unk_2261E6280);
  sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
  sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
  MEMORY[0x22AA782B0](v105, v107);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v102, v144, *(&v144 + 1), 0xD000000000000068, 0x80000002261ED1B0, 117);

  sub_2261A28B8(v121, v138);
  sub_2261A28B8(v123, v122);
  sub_2261A28B8(v124, v136);
  sub_2261C4794(v103);
  v108 = v152;
  *v152 = 0xD000000000000025;
  v108[1] = 0x80000002261EBC60;
  *(v108 + 16) = 1;
  sub_22619C7B4();
LABEL_12:
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261C74AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v85 = a3;
  v82 = a2;
  v6 = sub_2261E406C();
  v7 = sub_2261E406C();
  v79 = *(v7 - 1);
  v80 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v81 = v69 - v9;
  v90 = v6;
  v10 = *(v6 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E060, &unk_2261E71B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v69 - v19;
  v21 = type metadata accessor for Key(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v84 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22619A73C(a1, &v86, &qword_27D78DFD0, &qword_2261E6FF0);
  if (!v89)
  {
    sub_22619A7B4(&v86, &qword_27D78DFD0, &qword_2261E6FF0);
    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_6;
  }

  v77 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  v24 = swift_dynamicCast();
  v25 = *(v22 + 56);
  v25(v20, v24 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
LABEL_6:
    sub_22619A7B4(v20, &qword_27D78E060, &unk_2261E71B0);
    v31 = v85;
    *v85 = 0xD000000000000017;
    v31[1] = 0x80000002261EBA10;
    *(v31 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v26 = v20;
  v27 = v84;
  sub_2261C4730(v26, v84);
  sub_2261C47F0(v27, v18);
  v25(v18, 0, 1, v21);
  v76 = v3;
  v28 = sub_2261C4854(v18);
  v78 = v4;
  if (v4)
  {
    sub_22619A7B4(v18, &qword_27D78E060, &unk_2261E71B0);
    return sub_2261C4794(v27);
  }

  v33 = v28;
  v34 = v29;
  v35 = v30;
  sub_22619A7B4(v18, &qword_27D78E060, &unk_2261E71B0);
  if ((v35 & 0x100) != 0)
  {
    v86 = v33;
    v87 = v34;
    v88 = v35 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v78 = swift_allocError();
    *v50 = v33;
    *(v50 + 8) = v34;
    *(v50 + 16) = v35 & 1;
LABEL_14:
    v27 = v84;
    return sub_2261C4794(v27);
  }

  sub_22619B938();
  type metadata accessor for SecKey();
  v37 = v36;

  v75 = v37;
  v38 = sub_2261DFE64(v33, v34, v37);
  v40 = v39;
  v42 = v41;
  sub_22619C81C(v33, v34, v35, 0);

  if ((v42 & 0x100) != 0)
  {
    sub_2261C349C(v38, v40, v42, 1);
    sub_22619C81C(v33, v34, v35, 0);
    v86 = v38;
    v87 = v40;
    v88 = v42 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v78 = swift_allocError();
    *v51 = v38;
    *(v51 + 8) = v40;
    *(v51 + 16) = v42 & 1;
    sub_2261C3498(v38, v40, v42, 1);
    goto LABEL_14;
  }

  v71 = v35;
  v72 = v33;
  v73 = v40;
  v74 = v42;
  if (!v38)
  {
    v79 = v34;
    v80 = 0;
    v49 = v81;
    v44 = v82;
    v47 = *(v82 - 1);
    (*(v47 + 56))(v81, 1, 1, v82);
    v46 = v77;
    goto LABEL_17;
  }

  v86 = v38;
  v43 = v38;
  v44 = v82;
  v45 = swift_dynamicCast();
  v46 = v77;
  if (v45)
  {
    v79 = v34;
    v80 = v38;
    v47 = *(v44 - 1);
    v48 = *(v47 + 56);
    v48(v13, 0, 1, v44);
    v49 = v81;
    (*(v47 + 32))(v81, v13, v44);
    v48(v49, 0, 1, v44);
LABEL_17:
    v52 = v90;
    (*(v46 + 56))(v49, 0, 1, v90);
    v53 = *(v46 + 32);
    v54 = v83;
    v77 = v46 + 32;
    v82 = v53;
    (v53)(v83, v49, v52);
    v55 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
    LODWORD(v81) = sub_2261E400C();
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002CLL, 0x80000002261ED410);
    v69[1] = sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
    v56 = sub_2261E423C();
    MEMORY[0x22AA782B0](v56);

    MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
    v57 = v72;
    v58 = v79;
    MEMORY[0x22AA782B0](v72, v79);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v70 = "Invalid parameter fields. { ";
    v75 = v55;
    sub_2261A4EAC(v81, v86, v87, 0xD000000000000068, 0x80000002261ED1B0, 69);

    if ((*(v47 + 48))(v54, 1, v44) == 1)
    {
      v59 = sub_2261E400C();
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_2261E410C();

      v86 = 0xD000000000000021;
      v87 = 0x80000002261ED440;
      v60 = v84;
      v61 = sub_2261E423C();
      MEMORY[0x22AA782B0](v61);

      MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
      MEMORY[0x22AA782B0](v57, v58);
      sub_22619C81C(v57, v58, v71, 0);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v59, v86, v87, 0xD000000000000068, v70 | 0x8000000000000000, 71);

      sub_2261C3498(v80, v73, v74, 0);
      sub_2261C4794(v60);
    }

    else
    {
      sub_2261C4794(v84);
      sub_2261C3498(v80, v73, v74, 0);
      sub_22619C81C(v57, v58, v71, 0);
    }

    (v82)(v85, v83, v90);
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  sub_22619C81C(v72, v34, v71, 0);
  (*(*(v44 - 1) + 56))(v13, 1, 1, v44);
  v62 = *(v46 + 8);
  v63 = v46;
  v64 = v90;
  v62(v13, v90);
  v65 = v81;
  (*(v63 + 56))(v81, 1, 1, v64);
  (*(v79 + 8))(v65, v80);
  LOBYTE(v63) = sub_2261E3FFC();
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_2261E410C();

  v86 = 0xD00000000000002ELL;
  v87 = 0x80000002261ED470;
  sub_2261C8280(qword_28136E2D0, type metadata accessor for Key, &unk_2261E7100);
  v66 = v84;
  v67 = sub_2261E423C();
  MEMORY[0x22AA782B0](v67);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v63, v86, v87, 0xD000000000000068, 0x80000002261ED1B0, 65);

  sub_2261C3498(v38, v73, v74, 0);
  sub_2261C4794(v66);
  v68 = v85;
  *v85 = 0xD00000000000002BLL;
  v68[1] = 0x80000002261ED4A0;
  *(v68 + 16) = 1;
  sub_22619C7B4();
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261C80B0()
{

  v1 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2261C815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  v11 = OBJC_IVAR____TtC17AppAttestInternal14KeyDataManager_logger;
  v12 = sub_2261A51D8();
  v13 = sub_2261E3CDC();
  result = (*(*(v13 - 8) + 16))(v10 + v11, v12, v13);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = v10;
  return result;
}

uint64_t sub_2261C8280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for KeyDataManager(uint64_t a1)
{
  result = qword_28136F1B0;
  if (!qword_28136F1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261C831C(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261C83C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = v3;
  v14[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E070, &qword_2261E7248);
  v8 = sub_2261E426C();
  objc_sync_enter(v8);
  swift_unknownObjectRelease();
  if (qword_28136EB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_28136EB60;

  v10 = sub_22619F5B4(a1, a2, v9);

  if ((v10 & 1) == 0)
  {
    swift_beginAccess();

    sub_22619FAAC(v14, a1, a2);
    swift_endAccess();

    a3(v11);
  }

  v12 = sub_2261E426C();
  objc_sync_exit(v12);
  return swift_unknownObjectRelease();
}

SecKeyRef sub_2261C854C(void *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E5760;
  v4 = *MEMORY[0x277CDBFD0];
  *(inited + 32) = *MEMORY[0x277CDBFD0];
  v5 = sub_2261A9B48(0, &qword_28136E1A0, 0x277CCABB0);
  v6 = v4;
  *(inited + 40) = sub_2261E402C();
  v7 = *MEMORY[0x277CDC158];
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v8 = *MEMORY[0x277CDC170];
  type metadata accessor for CFString(0);
  *(inited + 80) = v8;
  v9 = *MEMORY[0x277CDC188];
  *(inited + 104) = v10;
  *(inited + 112) = v9;
  v11 = *MEMORY[0x277CDC040];
  *(inited + 144) = v10;
  *(inited + 120) = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v11;
  sub_2261CB294(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
  swift_arrayDestroy();
  if (a1)
  {
    v16 = *MEMORY[0x277CDBEC0];
    type metadata accessor for SecAccessControl(0);
    v53 = v17;
    *&v52 = a1;
    sub_22619A7A4(&v52, error);
    v18 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CAD8C(error, v16, isUniquelyReferenced_nonNull_native);
    if (qword_28136F2D0 != -1)
    {
      swift_once();
    }

    v20 = sub_2261E3CDC();
    __swift_project_value_buffer(v20, qword_28136F2D8);
    v21 = sub_2261E400C();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261ED5A0);
    error[0] = v18;
    sub_2261E413C();
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v21, v52, *(&v52 + 1), 0xD000000000000063, 0x80000002261ED530, 37);

LABEL_5:
    error[0] = 0;
    sub_2261CB6C8(&qword_28136E200, type metadata accessor for CFString, &unk_2261E7344);
    v22 = sub_2261E3D4C();

    RandomKey = SecKeyCreateRandomKey(v22, error);

    v24 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v25 = swift_allocError();
      *v26 = v24;
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      v27 = sub_2261E3CDC();
      __swift_project_value_buffer(v27, qword_28136F2D8);
      v28 = sub_2261E3FFC();
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v52 = 0xD00000000000001ELL;
      *(&v52 + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v29 = sub_2261E429C();
      MEMORY[0x22AA782B0](v29);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v28, v52, *(&v52 + 1), 0xD000000000000063, 0x80000002261ED530, 69);

      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v52 = 0xD00000000000001ELL;
      *(&v52 + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v30 = sub_2261E429C();
      MEMORY[0x22AA782B0](v30);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v31 = v52;
      sub_22619C7B4();
      swift_allocError();
      *v32 = v31;
      *(v32 + 16) = 1;
      swift_willThrow();
    }

    else if (!RandomKey)
    {
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      v48 = sub_2261E3CDC();
      __swift_project_value_buffer(v48, qword_28136F2D8);
      v49 = sub_2261E3FFC();
      RandomKey = 0x80000002261ED5D0;
      sub_2261A4EAC(v49, 0xD000000000000015, 0x80000002261ED5D0, 0xD000000000000063, 0x80000002261ED530, 74);
      sub_22619C7B4();
      swift_allocError();
      *v50 = 0xD000000000000015;
      *(v50 + 8) = 0x80000002261ED5D0;
      *(v50 + 16) = 1;
      swift_willThrow();
    }

    return RandomKey;
  }

  v33 = sub_2261CB3BC();
  if (!v1)
  {
    v40 = qword_28136F2D0;
    v41 = v33;
    if (v40 != -1)
    {
      swift_once();
    }

    v42 = sub_2261E3CDC();
    __swift_project_value_buffer(v42, qword_28136F2D8);
    v43 = sub_2261E400C();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261ED5A0);
    error[0] = v41;
    type metadata accessor for SecAccessControl(0);
    v45 = v44;
    sub_2261E413C();
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v43, 0, 0xE000000000000000, 0xD000000000000063, 0x80000002261ED530, 59);

    v46 = *MEMORY[0x277CDBEC0];
    v53 = v45;
    *&v52 = v41;
    sub_22619A7A4(&v52, error);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CAD8C(error, v46, v47);

    goto LABEL_5;
  }

  if (qword_28136F2D0 != -1)
  {
    swift_once();
  }

  v34 = sub_2261E3CDC();
  __swift_project_value_buffer(v34, qword_28136F2D8);
  v35 = sub_2261E3FFC();
  sub_2261E410C();

  swift_getErrorValue();
  v36 = sub_2261E429C();
  MEMORY[0x22AA782B0](v36);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v35, 0xD000000000000029, 0x80000002261ED500, 0xD000000000000063, 0x80000002261ED530, 55);

  sub_2261E410C();

  swift_getErrorValue();
  v37 = sub_2261E429C();
  MEMORY[0x22AA782B0](v37);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  RandomKey = 0xD000000000000029;
  sub_22619C7B4();
  swift_allocError();
  *v38 = 0xD000000000000029;
  *(v38 + 8) = 0x80000002261ED500;
  *(v38 + 16) = 1;
  swift_willThrow();

  return RandomKey;
}

CFDataRef sub_2261C8E9C(__SecKey *a1, const __CFData *a2)
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC300];
  if (!SecKeyIsAlgorithmSupported(a1, kSecKeyOperationTypeSign, *MEMORY[0x277CDC300]))
  {
    return 0xD000000000000023;
  }

  error[0] = 0;
  result = SecKeyCreateSignature(a1, v4, a2, error);
  v6 = error[0];
  if (error[0])
  {
    v7 = result;
    type metadata accessor for CFError(0);
    sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v8 = swift_allocError();
    *v9 = v6;
    sub_2261E410C();

    swift_getErrorValue();
    v10 = sub_2261E429C();
    MEMORY[0x22AA782B0](v10);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);

    return 0xD000000000000026;
  }

  return result;
}

uint64_t sub_2261C9054(__SecKey *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  v104 = sub_2261E3CDC();
  v2 = *(v104 - 8);
  v3 = MEMORY[0x28223BE20](v104);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v98 - v6;
  v8 = sub_2261E3C6C();
  v103 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v98 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E088, &unk_2261E7270);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v98 - v18;
  error[0] = 0;
  v20 = SecKeyCopyPublicKey(a1);
  if (!v20)
  {
    return 0xD00000000000001DLL;
  }

  v21 = v20;
  v102 = v2;
  v22 = SecKeyCopyExternalRepresentation(v20, error);
  if (!v22)
  {
    goto LABEL_5;
  }

  v23 = v22;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v24 = error[0];
    if (error[0])
    {
      goto LABEL_6;
    }

    return 0xD00000000000001DLL;
  }

  *v106 = xmmword_2261E6D40;
  sub_2261E3BAC();

  if (v106[1] >> 60 == 15)
  {
LABEL_5:

    v24 = error[0];
    if (error[0])
    {
LABEL_6:
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v104, qword_28136F2D8);
      v25 = sub_2261E3CBC();
      v26 = sub_2261E3FFC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v105 = v24;
        v106[0] = v28;
        *v27 = 136315138;
        type metadata accessor for CFError(0);
        sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        v29 = sub_2261E429C();
        v31 = v30;

        v32 = sub_2261A4344(v29, v31, v106);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_226177000, v25, v26, "Failed to extract public key. { error=%s }", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x22AA792E0](v28, -1, -1);
        MEMORY[0x22AA792E0](v27, -1, -1);
      }

      v106[0] = 0;
      v106[1] = 0xE000000000000000;
      sub_2261E410C();

      v106[0] = 0xD000000000000026;
      v106[1] = 0x80000002261ED670;
      v105 = v24;
      type metadata accessor for CFError(0);
      sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v33 = sub_2261E429C();
      v35 = v34;

      MEMORY[0x22AA782B0](v33, v35);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      return v106[0];
    }

    return 0xD00000000000001DLL;
  }

  v100 = *v106;
  v37 = SecKeyCopyAttributes(a1);
  v101 = v21;
  if (v37)
  {
    v38 = v37;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v106[0] = 0;
      v99 = sub_2261A9B48(0, &qword_28136E190, 0x277D82BB8);
      sub_2261CB710();
      sub_2261E3D5C();

      v39 = v106[0];
      v21 = v101;
      if (v106[0])
      {
        if (*(v106[0] + 16) && (v40 = sub_2261CAA68(*MEMORY[0x277CDC018]), (v41 & 1) != 0))
        {
          sub_226198CB8(*(v39 + 56) + 32 * v40, v106);

          if (swift_dynamicCast())
          {
            v42 = v105;
            v43 = v102;
            if ((v105 | 0x80) == 0x180)
            {
              v44 = v105 >> 3;
              if (((v105 >> 3) | 0x10) == 0x30)
              {
                v104 = v105 & 0xFFFFFFFFFFFFFFF8;
                v102 = v105 >> 3;
                v45 = sub_2261E3BDC();
                v47 = v46;
                v48 = sub_2261E3BDC();
                v50 = v48;
                v51 = v49;
                v52 = -35;
                if (v104 == 256)
                {
                  v52 = -7;
                }

                v99 = v52;
                sub_22619D8F4(v48, v49);
                sub_22619D8F4(v45, v47);
                v102 = v45;
                v104 = v47;
                sub_2261E3C4C();
                sub_22619A73C(v19, v17, &qword_27D78E088, &unk_2261E7270);
                v53 = v103;
                if ((*(v103 + 48))(v17, 1, v8) == 1)
                {
                  sub_2261CB778(v17);

                  sub_2261A28B8(v100, *(&v100 + 1));
                  sub_22619C840(v102, v104);
                  sub_22619C840(v50, v51);
                  sub_2261CB778(v19);
                  return 0xD00000000000001ALL;
                }

                else
                {
                  v83 = v102;
                  v99 = v51;
                  (*(v53 + 32))(v13, v17, v8);
                  v84 = sub_2261E3C5C();
                  v85 = v101;
                  if (v84 == 2)
                  {
                    (*(v53 + 16))(v11, v13, v8);
                    v86 = sub_2261E3B3C();

                    sub_2261A28B8(v100, *(&v100 + 1));
                    sub_22619C840(v83, v104);
                    sub_22619C840(v50, v99);
                    (*(v53 + 8))(v13, v8);
                    sub_2261CB778(v19);
                    return v86;
                  }

                  else
                  {

                    sub_2261A28B8(v100, *(&v100 + 1));
                    sub_22619C840(v83, v104);
                    sub_22619C840(v50, v99);
                    (*(v53 + 8))(v13, v8);
                    sub_2261CB778(v19);
                    return 0xD00000000000001CLL;
                  }
                }
              }

              if (qword_28136F2D0 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v104, qword_28136F2D8);
              v74 = a1;
              v75 = sub_2261E3CBC();
              v76 = sub_2261E3FFC();

              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                v106[0] = v78;
                *v77 = 134218242;
                *(v77 + 4) = v44;
                *(v77 + 12) = 2080;
                v79 = sub_2261CA4AC();
                if (v80 >> 60 == 15)
                {
                  v81 = 7104878;
                  v82 = 0xE300000000000000;
                }

                else
                {
                  v93 = v79;
                  v94 = v80;
                  v95 = sub_2261E3B9C();
                  v82 = v96;
                  sub_2261A28B8(v93, v94);
                  v81 = v95;
                }

                v21 = v101;
                v97 = sub_2261A4344(v81, v82, v106);

                *(v77 + 14) = v97;
                _os_log_impl(&dword_226177000, v75, v76, "Invalid key coordinate size. { size=%ld, key=%s }", v77, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v78);
                MEMORY[0x22AA792E0](v78, -1, -1);
                MEMORY[0x22AA792E0](v77, -1, -1);
              }

              else
              {

                v21 = v101;
              }

              v92 = v100;
            }

            else
            {
              if (qword_28136F2D0 != -1)
              {
                swift_once();
              }

              v66 = v104;
              v67 = __swift_project_value_buffer(v104, qword_28136F2D8);
              (*(v43 + 16))(v7, v67, v66);
              v68 = sub_2261E3FEC();
              v106[0] = 0;
              v106[1] = 0xE000000000000000;
              sub_2261E410C();

              v106[0] = 0xD000000000000024;
              v106[1] = 0x80000002261ED700;
              v105 = v42;
              v69 = sub_2261E423C();
              MEMORY[0x22AA782B0](v69);

              MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
              v70 = sub_2261CA4AC();
              if (v71 >> 60 == 15)
              {
                v72 = 7104878;
                v73 = 0xE300000000000000;
              }

              else
              {
                v87 = v70;
                v88 = v71;
                v89 = sub_2261E3B9C();
                v73 = v90;
                sub_2261A28B8(v87, v88);
                v72 = v89;
                v21 = v101;
              }

              v91 = v100;
              MEMORY[0x22AA782B0](v72, v73);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v68, v106[0], v106[1], 0xD000000000000063, 0x80000002261ED530, 130);

              (*(v102 + 8))(v7, v66);
              v92 = v91;
            }

            sub_2261A28B8(v92, *(&v100 + 1));

            return 0xD00000000000001CLL;
          }
        }

        else
        {
        }
      }
    }

    else
    {

      v21 = v101;
    }
  }

  if (qword_28136F2D0 != -1)
  {
    swift_once();
  }

  v54 = v104;
  v55 = __swift_project_value_buffer(v104, qword_28136F2D8);
  (*(v102 + 16))(v5, v55, v54);
  v56 = sub_2261E3FEC();
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  sub_2261E410C();

  v106[0] = 0xD000000000000028;
  v106[1] = 0x80000002261ED6A0;
  v57 = sub_2261CA4AC();
  if (v58 >> 60 == 15)
  {
    v59 = 7104878;
    v60 = 0xE300000000000000;
  }

  else
  {
    v61 = v57;
    v62 = v58;
    v63 = sub_2261E3B9C();
    v60 = v64;
    sub_2261A28B8(v61, v62);
    v59 = v63;
    v21 = v101;
  }

  v65 = v100;
  MEMORY[0x22AA782B0](v59, v60);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v56, v106[0], v106[1], 0xD000000000000063, 0x80000002261ED530, 125);

  (*(v102 + 8))(v5, v54);
  sub_2261A28B8(v65, *(&v100 + 1));

  return 0xD000000000000021;
}

uint64_t sub_2261C9E2C(uint64_t a1)
{
  v1 = sub_2261CA4AC();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  v6 = sub_2261E3B9C();
  sub_2261A28B8(v4, v5);
  return v6;
}

CFDictionaryRef sub_2261C9EA0(__SecKey *a1, char a2)
{
  result = SecKeyCopyAttributes(a1);
  if (result)
  {
    v3 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CFString(0);
      sub_2261CB6C8(&qword_28136E200, type metadata accessor for CFString, &unk_2261E7344);
      sub_2261E3D5C();
    }

    return 0;
  }

  return result;
}

uint64_t sub_2261CA420()
{
  v0 = sub_2261E3CDC();
  __swift_allocate_value_buffer(v0, qword_28136F2D8);
  v1 = __swift_project_value_buffer(v0, qword_28136F2D8);
  v2 = sub_2261A5130();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__SecKey *sub_2261CA4AC()
{
  error[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2261E3D3C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2261E3D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecKeyCopyPublicKey(v0);
  if (result)
  {
    v10 = result;
    error[0] = 0;
    v11 = SecKeyCopyExternalRepresentation(result, error);
    if (v11)
    {
      v12 = v11;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      v20 = xmmword_2261E6D40;
      sub_2261E3BAC();

      v13 = *(&v20 + 1);
      if (*(&v20 + 1) >> 60 != 15)
      {
        v14 = v20;
        if (!error[0])
        {
          v17[1] = sub_2261CB6C8(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          sub_2261E3D1C();
          sub_22619D8F4(v14, v13);
          v18 = v14;
          sub_22619D714(v14, v13, v4);
          sub_2261A28B8(v14, v13);
          sub_2261E3D0C();
          (*(v2 + 8))(v4, v1);
          v21 = v5;
          v22 = sub_2261CB6C8(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
          (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
          __swift_project_boxed_opaque_existential_0(&v20, v21);
          sub_2261E3ADC();

          sub_2261A28B8(v18, v13);
          (*(v6 + 8))(v8, v5);
          v16 = v19;
          __swift_destroy_boxed_opaque_existential_0(&v20);
          return v16;
        }

        sub_2261A28B8(v14, v13);
        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2261CA8E0(uint64_t a1, uint64_t a2)
{
  sub_2261E42EC();
  swift_getWitnessTable();
  sub_2261E3C9C();
  return sub_2261E430C();
}

uint64_t sub_2261CA948(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2261E3C8C();
}

unint64_t sub_2261CA9B4(uint64_t a1)
{
  sub_2261E42EC();
  type metadata accessor for CFString(0);
  sub_2261CB6C8(&qword_28136E208, type metadata accessor for CFString, &unk_2261E7318);
  sub_2261E3C9C();
  v2 = sub_2261E430C();

  return sub_2261CAF34(a1, v2);
}

unint64_t sub_2261CAA68(uint64_t a1)
{
  v2 = sub_2261E403C();

  return sub_2261CB040(a1, v2);
}

uint64_t sub_2261CAAAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E090, &unk_2261E7390);
  result = sub_2261E41AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_22619A7A4(v21, v31);
      }

      else
      {
        sub_226198CB8(v21, v31);
        v22 = v20;
      }

      sub_2261E42EC();
      type metadata accessor for CFString(0);
      sub_2261CB6C8(&qword_28136E208, type metadata accessor for CFString, &unk_2261E7318);
      sub_2261E3C9C();
      result = sub_2261E430C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_22619A7A4(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_2261CAD8C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2261CA9B4(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2261CB114();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2261CAAAC(v13, a3 & 1);
    v8 = sub_2261CA9B4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_2261E428C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_22619A7A4(a1, v19);
  }

  else
  {
    sub_2261CAECC(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_2261CAECC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_22619A7A4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_2261CAF34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2261CB6C8(&qword_28136E208, type metadata accessor for CFString, &unk_2261E7318);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2261E3C8C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2261CB040(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2261A9B48(0, &qword_28136E190, 0x277D82BB8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2261E404C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2261CB114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E090, &unk_2261E7390);
  v2 = *v0;
  v3 = sub_2261E419C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_226198CB8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_22619A7A4(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2261CB294(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E090, &unk_2261E7390);
    v3 = sub_2261E41CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22619A73C(v4, &v11, &qword_27D78E080, &qword_2261E7268);
      v5 = v11;
      result = sub_2261CA9B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22619A7A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

SecAccessControlRef sub_2261CB3BC()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, error);
  if (!result)
  {
    v1 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_2261CB6C8(&qword_28136E218, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v2 = v1;
      v3 = swift_allocError();
      *v4 = v2;
      if (qword_28136F2D0 != -1)
      {
        swift_once();
      }

      v5 = sub_2261E3CDC();
      __swift_project_value_buffer(v5, qword_28136F2D8);
      v6 = sub_2261E3FFC();
      sub_2261E410C();

      swift_getErrorValue();
      v7 = sub_2261E429C();
      MEMORY[0x22AA782B0](v7);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v6, 0xD000000000000029, 0x80000002261ED500, 0xD000000000000063, 0x80000002261ED530, 257);

      sub_2261E410C();

      swift_getErrorValue();
      v8 = sub_2261E429C();
      MEMORY[0x22AA782B0](v8);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_22619C7B4();
      swift_allocError();
      *v9 = 0xD000000000000029;
      *(v9 + 8) = 0x80000002261ED500;
      *(v9 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      sub_22619C7B4();
      swift_allocError();
      *v10 = 0xD000000000000020;
      *(v10 + 8) = 0x80000002261ED790;
      *(v10 + 16) = 1;
      swift_willThrow();
    }

    return 0;
  }

  return result;
}

uint64_t sub_2261CB6C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2261CB710()
{
  result = qword_28136E198;
  if (!qword_28136E198)
  {
    sub_2261A9B48(255, &qword_28136E190, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E198);
  }

  return result;
}

uint64_t sub_2261CB778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E088, &unk_2261E7270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyUtility(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for KeyUtility(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

char *sub_2261CB950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 16;
  v9 = OBJC_IVAR____TtC17AppAttestInternal21AuthenticationManager_logger;
  v10 = sub_2261A5210();
  v11 = sub_2261E3CDC();
  (*(*(v11 - 8) + 16))(&v8[v9], v10, v11);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

uint64_t sub_2261CBA0C(char a1, void *a2)
{
  v200 = *MEMORY[0x277D85DE8];
  v5 = sub_2261E3D3C();
  v153 = *(v5 - 8);
  v154 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v148[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2261E3D2C();
  v156 = *(v8 - 8);
  v157 = v8;
  MEMORY[0x28223BE20](v8);
  v155 = &v148[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2261E3E2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v148[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + 7);
  v160 = *(a2 + 6);
  v15 = *(a2 + 32);
  v16 = *(a2 + 49);
  v170 = *(a2 + 33);
  v171[0] = v16;
  *(v171 + 15) = a2[8];
  v161 = v15;
  v162 = v14;
  if (v15)
  {
    v159 = v2;
    v17 = sub_2261E3FEC();
    *&v172[0] = 0;
    *(&v172[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    v173 = 0xD00000000000001BLL;
    v174 = 0x80000002261ED7D0;
    if (a1)
    {
      v18 = 1819047270;
    }

    else
    {
      v18 = 0x6C616D696E696DLL;
    }

    if (a1)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    MEMORY[0x22AA782B0](v18, v19);

    MEMORY[0x22AA782B0](32, 0xE100000000000000);
    *&v172[0] = 0;
    *(&v172[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v169 = 0x3D646975476161;
    *(&v169 + 1) = 0xE700000000000000;
    v20 = 7104878;
    v21 = 0xE300000000000000;
    if (a2[1] >> 60 != 15)
    {
      v20 = sub_2261E3B9C();
      v21 = v22;
    }

    MEMORY[0x22AA782B0](v20, v21);

    MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
    LOBYTE(v172[0]) = *(a2 + 16);
    v23 = sub_2261E423C();
    MEMORY[0x22AA782B0](v23);

    v24 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
    v25 = sub_2261C9E2C(v24);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v25 = 7104878;
      v27 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v25, v27);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v172[0] = __PAIR64__(v162, v160);
    BYTE8(v172[0]) = v161;
    *(v172 + 9) = v170;
    *(&v172[1] + 9) = v171[0];
    *(&v172[2] + 1) = *(v171 + 15);
    sub_2261A65DC();
    v28 = sub_2261E423C();
    MEMORY[0x22AA782B0](v28);

    MEMORY[0x22AA782B0](v169, *(&v169 + 1));

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v17, v173, v174, 0xD00000000000006FLL, 0x80000002261ED7F0, 34);

    return 0xD000000000000013;
  }

  v158 = a2;
  v30 = sub_22619AC3C();
  sub_2261A2CB8(v175, v30);

  if (*(&v175[0] + 1) == 1)
  {
    v31 = sub_2261E3FEC();
    *&v172[0] = 0;
    *(&v172[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    v173 = 0xD000000000000023;
    v174 = 0x80000002261ED860;
    if (a1)
    {
      v32 = 1819047270;
    }

    else
    {
      v32 = 0x6C616D696E696DLL;
    }

    if (a1)
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    MEMORY[0x22AA782B0](v32, v33);

    MEMORY[0x22AA782B0](32, 0xE100000000000000);
    *&v172[0] = 0;
    *(&v172[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v169 = 0x3D646975476161;
    *(&v169 + 1) = 0xE700000000000000;
    v34 = v158;
    v35 = 7104878;
    v36 = 0xE300000000000000;
    if (v158[1] >> 60 != 15)
    {
      v35 = sub_2261E3B9C();
      v36 = v37;
    }

    MEMORY[0x22AA782B0](v35, v36);

    MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
    LOBYTE(v172[0]) = *(v34 + 16);
    v38 = sub_2261E423C();
    MEMORY[0x22AA782B0](v38);

    v39 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
    v40 = sub_2261C9E2C(v39);
    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v40 = 7104878;
      v42 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v40, v42);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v172[0] = __PAIR64__(v162, v160);
    BYTE8(v172[0]) = v161;
    *(v172 + 9) = v170;
    *(&v172[1] + 9) = v171[0];
    *(&v172[2] + 1) = *(v171 + 15);
    sub_2261A65DC();
    v43 = sub_2261E423C();
    MEMORY[0x22AA782B0](v43);

    MEMORY[0x22AA782B0](v169, *(&v169 + 1));

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v31, v173, v174, 0xD00000000000006FLL, 0x80000002261ED7F0, 39);

    return 0xD00000000000001BLL;
  }

  v176 = v175[0];
  v177 = v175[1];
  v178 = v175[2];
  v159 = v2;

  v44 = sub_2261A30F4();

  if (sub_2261A3324(v44, 4u))
  {
    sub_2261A5588();
  }

  else
  {
    sub_2261A54B0();
  }

  if (!v45 || (sub_2261E3E1C(), v46 = sub_2261E3DEC(), v48 = v47, , v49 = v13, v50 = v48, (*(v11 + 8))(v49, v10), v48 >> 60 == 15))
  {
    v51 = sub_2261E3FEC();
    *&v172[0] = 0;
    *(&v172[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    v173 = 0xD00000000000001ELL;
    v174 = 0x80000002261ED8B0;
    if (a1)
    {
      v52 = 1819047270;
    }

    else
    {
      v52 = 0x6C616D696E696DLL;
    }

    if (a1)
    {
      v53 = 0xE400000000000000;
    }

    else
    {
      v53 = 0xE700000000000000;
    }

    MEMORY[0x22AA782B0](v52, v53);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v172[0] = 0;
    *(&v172[0] + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v169 = 0x3D646975476161;
    *(&v169 + 1) = 0xE700000000000000;
    v54 = v158;
    v55 = 7104878;
    v56 = 0xE300000000000000;
    if (v158[1] >> 60 != 15)
    {
      v55 = sub_2261E3B9C();
      v56 = v57;
    }

    MEMORY[0x22AA782B0](v55, v56);

    MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
    LOBYTE(v172[0]) = *(v54 + 16);
    v58 = sub_2261E423C();
    MEMORY[0x22AA782B0](v58);

    v59 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
    v60 = sub_2261C9E2C(v59);
    if (v61)
    {
      v62 = v61;
    }

    else
    {
      v60 = 7104878;
      v62 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v60, v62);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    *&v172[0] = __PAIR64__(v162, v160);
    BYTE8(v172[0]) = v161;
    *(v172 + 9) = v170;
    *(&v172[1] + 9) = v171[0];
    *(&v172[2] + 1) = *(v171 + 15);
    sub_2261A65DC();
    v63 = sub_2261E423C();
    MEMORY[0x22AA782B0](v63);

    MEMORY[0x22AA782B0](v169, *(&v169 + 1));

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v185 = v178;
    v186 = v177;
    v187 = v176;
    v172[0] = v176;
    v172[1] = v177;
    v172[2] = v178;
    sub_22619C894();
    v64 = sub_2261E423C();
    v66 = v65;
    sub_22619F7EC(&v187);
    sub_22619F7EC(&v186);
    sub_22619F7EC(&v185);
    MEMORY[0x22AA782B0](v64, v66);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v51, v173, v174, 0xD00000000000006FLL, 0x80000002261ED7F0, 45);

    return 0xD000000000000016;
  }

  sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v67 = v154;
  sub_2261E3D1C();
  sub_22619D8F4(v46, v50);
  v68 = v163;
  sub_22619D714(v46, v50, v7);
  v151 = v46;
  v152 = v50;
  sub_2261A28B8(v46, v50);
  v69 = v155;
  sub_2261E3D0C();
  (*(v153 + 8))(v7, v67);
  v70 = v157;
  *(&v172[1] + 1) = v157;
  *&v172[2] = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v172);
  v72 = v156;
  (*(v156 + 16))(boxed_opaque_existential_1, v69, v70);
  __swift_project_boxed_opaque_existential_0(v172, *(&v172[1] + 1));
  sub_2261E3ADC();
  v163 = v68;
  (*(v72 + 8))(v69, v70);
  v74 = v173;
  v73 = v174;
  __swift_destroy_boxed_opaque_existential_0(v172);
  v173 = v74;
  v174 = v73;
  LODWORD(v155) = *(v158 + 16);
  v168[3] = v155;
  v156 = v74;
  v157 = v73;
  sub_22619D8F4(v74, v73);
  sub_2261E3B7C();
  v167 = bswap32(v162);
  v75 = MEMORY[0x277D838B0];
  v76 = MEMORY[0x277CC9C18];
  *(&v172[1] + 1) = MEMORY[0x277D838B0];
  *&v172[2] = MEMORY[0x277CC9C18];
  *&v172[0] = &v167;
  *(&v172[0] + 1) = v168;
  __swift_project_boxed_opaque_existential_0(v172, MEMORY[0x277D838B0]);
  sub_2261E3B7C();
  __swift_destroy_boxed_opaque_existential_0(v172);
  if (a1)
  {
    v77 = 1819047270;
  }

  else
  {
    v77 = 0x6C616D696E696DLL;
  }

  if (a1)
  {
    v78 = 0xE400000000000000;
  }

  else
  {
    v78 = 0xE700000000000000;
  }

  if (a1)
  {

    goto LABEL_53;
  }

  v79 = sub_2261E425C();

  if (v79)
  {
LABEL_53:
    v81 = *v158;
    v80 = v158[1];
    v82 = v80 >> 60;
    v153 = v80;
    v154 = v81;
    if (v80 >> 60 == 15)
    {
LABEL_77:
      v115 = sub_2261E3FEC();
      *&v172[0] = 0;
      *(&v172[0] + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v169 = 0xD00000000000001ALL;
      *(&v169 + 1) = 0x80000002261ED910;
      MEMORY[0x22AA782B0](v77, v78);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      *&v172[0] = 0;
      *(&v172[0] + 1) = 0xE000000000000000;
      sub_2261E410C();

      v165 = 0x3D646975476161;
      v166 = 0xE700000000000000;
      v116 = 7104878;
      v117 = 0xE300000000000000;
      if (v82 <= 0xE)
      {
        v116 = sub_2261E3B9C();
        v117 = v118;
      }

      MEMORY[0x22AA782B0](v116, v117);

      MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
      LOBYTE(v172[0]) = v155;
      v119 = sub_2261E423C();
      MEMORY[0x22AA782B0](v119);

      v120 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
      v121 = sub_2261C9E2C(v120);
      if (v122)
      {
        v123 = v122;
      }

      else
      {
        v121 = 7104878;
        v123 = 0xE300000000000000;
      }

      MEMORY[0x22AA782B0](v121, v123);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      *&v172[0] = __PAIR64__(v162, v160);
      BYTE8(v172[0]) = v161;
      *(v172 + 9) = v170;
      *(&v172[1] + 9) = v171[0];
      *(&v172[2] + 1) = *(v171 + 15);
      sub_2261A65DC();
      v124 = sub_2261E423C();
      MEMORY[0x22AA782B0](v124);

      MEMORY[0x22AA782B0](v165, v166);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v191 = v178;
      v192 = v177;
      v193 = v176;
      v172[0] = v176;
      v172[1] = v177;
      v172[2] = v178;
      sub_22619C894();
      v125 = sub_2261E423C();
      v127 = v126;
      sub_22619F7EC(&v193);
      sub_22619F7EC(&v192);
      sub_22619F7EC(&v191);
      MEMORY[0x22AA782B0](v125, v127);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v115, v169, *(&v169 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 75);

      sub_2261A28B8(v151, v152);
      sub_22619C840(v156, v157);
      sub_22619C840(v173, v174);
      return 0xD000000000000012;
    }

    v83 = v80 >> 62;
    if ((v80 >> 62) > 1)
    {
      if (v83 != 2)
      {
LABEL_76:
        sub_2261A28B8(v154, v153);
        goto LABEL_77;
      }

      v99 = *(v81 + 16);
      v98 = *(v81 + 24);
      v84 = v98 - v99;
      if (!__OFSUB__(v98, v99))
      {
        goto LABEL_69;
      }

      __break(1u);
    }

    else if (!v83)
    {
      v84 = BYTE6(v80);
      goto LABEL_70;
    }

    if (__OFSUB__(HIDWORD(v81), v81))
    {
      __break(1u);
    }

    v84 = HIDWORD(v81) - v81;
LABEL_69:
    sub_22619D8F4(v154, v153);
    v80 = v153;
LABEL_70:
    if (v84 == 16)
    {
      v100 = v80;
      sub_2261E3BCC();
      v101 = v158[9];
      v102 = sub_2261CA4AC();
      if (v103 >> 60 == 15)
      {
        LODWORD(v158) = sub_2261E3FEC();
        *&v172[0] = 0;
        *(&v172[0] + 1) = 0xE000000000000000;
        sub_2261E410C();
        v169 = v172[0];
        MEMORY[0x22AA782B0](0xD000000000000036, 0x80000002261ED950);
        MEMORY[0x22AA782B0](v77, v78);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        *&v172[0] = 0;
        *(&v172[0] + 1) = 0xE000000000000000;
        sub_2261E410C();

        v165 = 0x3D646975476161;
        v166 = 0xE700000000000000;
        v104 = v154;
        v105 = sub_2261E3B9C();
        MEMORY[0x22AA782B0](v105);

        MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
        LOBYTE(v172[0]) = v155;
        v106 = sub_2261E423C();
        MEMORY[0x22AA782B0](v106);

        v107 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
        v108 = sub_2261C9E2C(v107);
        if (v109)
        {
          v110 = v109;
        }

        else
        {
          v108 = 7104878;
          v110 = 0xE300000000000000;
        }

        MEMORY[0x22AA782B0](v108, v110);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        *&v172[0] = __PAIR64__(v162, v160);
        BYTE8(v172[0]) = v161;
        *(v172 + 9) = v170;
        *(&v172[1] + 9) = v171[0];
        *(&v172[2] + 1) = *(v171 + 15);
        sub_2261A65DC();
        v111 = sub_2261E423C();
        MEMORY[0x22AA782B0](v111);

        MEMORY[0x22AA782B0](v165, v166);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v194 = v178;
        v195 = v177;
        v196 = v176;
        v172[0] = v176;
        v172[1] = v177;
        v172[2] = v178;
        sub_22619C894();
        v112 = sub_2261E423C();
        v114 = v113;
        sub_22619F7EC(&v196);
        sub_22619F7EC(&v195);
        sub_22619F7EC(&v194);
        MEMORY[0x22AA782B0](v112, v114);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v158, v169, *(&v169 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 83);

        sub_2261A28B8(v104, v100);
        sub_2261A28B8(v151, v152);
        sub_22619C840(v156, v157);
        sub_22619C840(v173, v174);
        return 0xD00000000000002ELL;
      }

      else
      {
        v128 = v103;
        v164 = 0x2000;
        *(&v172[1] + 1) = v75;
        *&v172[2] = v76;
        *&v172[0] = &v164;
        *(&v172[0] + 1) = &v165;
        v129 = v102;
        __swift_project_boxed_opaque_existential_0(v172, v75);
        sub_2261E3B7C();
        __swift_destroy_boxed_opaque_existential_0(v172);
        sub_2261E3BCC();
        v131 = sub_2261C9054(v101);
        v132 = v130;
        v134 = v133;
        if ((v133 & 0x100) != 0)
        {
          v179 = v176;
          sub_22619F7EC(&v179);
          v180 = v177;
          sub_22619F7EC(&v180);
          v181 = v178;
          sub_22619F7EC(&v181);
          *&v172[0] = v131;
          *(&v172[0] + 1) = v132;
          LOBYTE(v172[1]) = v134 & 1;
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v147 = v131;
          *(v147 + 8) = v132;
          *(v147 + 16) = v134 & 1;
          sub_2261A28B8(v129, v128);
          sub_2261A28B8(v154, v153);
          sub_2261A28B8(v151, v152);
          sub_22619C840(v156, v157);
          return sub_22619C840(v173, v174);
        }

        else
        {
          v150 = v129;
          v158 = v128;
          if (v130 >> 60 == 15)
          {
            v149 = sub_2261E3FFC();
            *&v172[0] = 0;
            *(&v172[0] + 1) = 0xE000000000000000;
            sub_2261E410C();
            v169 = v172[0];
            MEMORY[0x22AA782B0](0xD00000000000002CLL, 0x80000002261ED9C0);
            MEMORY[0x22AA782B0](v77, v78);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            *&v172[0] = 0;
            *(&v172[0] + 1) = 0xE000000000000000;
            sub_2261E410C();

            v165 = 0x3D646975476161;
            v166 = 0xE700000000000000;
            v135 = v153;
            v136 = v154;
            v137 = sub_2261E3B9C();
            MEMORY[0x22AA782B0](v137);

            MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
            LOBYTE(v172[0]) = v155;
            v138 = sub_2261E423C();
            MEMORY[0x22AA782B0](v138);

            v139 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
            v140 = sub_2261C9E2C(v139);
            if (v141)
            {
              v142 = v141;
            }

            else
            {
              v140 = 7104878;
              v142 = 0xE300000000000000;
            }

            MEMORY[0x22AA782B0](v140, v142);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            *&v172[0] = __PAIR64__(v162, v160);
            BYTE8(v172[0]) = v161;
            *(v172 + 9) = v170;
            *(&v172[1] + 9) = v171[0];
            *(&v172[2] + 1) = *(v171 + 15);
            sub_2261A65DC();
            v143 = sub_2261E423C();
            MEMORY[0x22AA782B0](v143);

            MEMORY[0x22AA782B0](v165, v166);

            MEMORY[0x22AA782B0](8236, 0xE200000000000000);
            v197 = v178;
            v198 = v177;
            v199 = v176;
            v172[0] = v176;
            v172[1] = v177;
            v172[2] = v178;
            sub_22619C894();
            v144 = sub_2261E423C();
            v146 = v145;
            sub_22619F7EC(&v199);
            sub_22619F7EC(&v198);
            sub_22619F7EC(&v197);
            MEMORY[0x22AA782B0](v144, v146);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v149, v169, *(&v169 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 96);

            sub_2261A28B8(v150, v158);
            sub_2261A28B8(v136, v135);
            sub_2261A28B8(v151, v152);
            sub_22619C840(v156, v157);
            sub_22619C840(v173, v174);
            return 0xD000000000000024;
          }

          else
          {
            v182 = v176;
            sub_22619F7EC(&v182);
            v183 = v177;
            sub_22619F7EC(&v183);
            v184 = v178;
            sub_22619F7EC(&v184);
            sub_2261E3BCC();
            sub_22619C840(v156, v157);
            sub_2261CDCA0(v131, v132, v134, 0);
            sub_2261A28B8(v150, v158);
            sub_2261A28B8(v154, v153);
            sub_2261A28B8(v151, v152);
            return v173;
          }
        }
      }
    }

    goto LABEL_76;
  }

  v85 = sub_2261E3FEC();
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_2261E410C();
  v169 = v172[0];
  MEMORY[0x22AA782B0](0xD000000000000033, 0x80000002261ED8D0);
  MEMORY[0x22AA782B0](0x6C616D696E696DLL, 0xE700000000000000);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  *&v172[0] = 0;
  *(&v172[0] + 1) = 0xE000000000000000;
  sub_2261E410C();

  v165 = 0x3D646975476161;
  v166 = 0xE700000000000000;
  v86 = 7104878;
  v87 = 0xE300000000000000;
  if (v158[1] >> 60 != 15)
  {
    v86 = sub_2261E3B9C();
    v87 = v88;
  }

  MEMORY[0x22AA782B0](v86, v87);

  MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
  LOBYTE(v172[0]) = v155;
  v89 = sub_2261E423C();
  MEMORY[0x22AA782B0](v89);

  v90 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v91 = sub_2261C9E2C(v90);
  if (v92)
  {
    v93 = v92;
  }

  else
  {
    v91 = 7104878;
    v93 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v91, v93);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  *&v172[0] = __PAIR64__(v162, v160);
  BYTE8(v172[0]) = v161;
  *(v172 + 9) = v170;
  *(&v172[1] + 9) = v171[0];
  *(&v172[2] + 1) = *(v171 + 15);
  sub_2261A65DC();
  v94 = sub_2261E423C();
  MEMORY[0x22AA782B0](v94);

  MEMORY[0x22AA782B0](v165, v166);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v188 = v178;
  v189 = v177;
  v190 = v176;
  v172[0] = v176;
  v172[1] = v177;
  v172[2] = v178;
  sub_22619C894();
  v95 = sub_2261E423C();
  v97 = v96;
  sub_22619F7EC(&v190);
  sub_22619F7EC(&v189);
  sub_22619F7EC(&v188);
  MEMORY[0x22AA782B0](v95, v97);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v85, v169, *(&v169 + 1), 0xD00000000000006FLL, 0x80000002261ED7F0, 69);
  sub_22619C840(v156, v157);
  sub_2261A28B8(v151, v152);

  return v173;
}

uint64_t sub_2261CD630()
{
  sub_2261E410C();

  v1 = 7104878;
  v2 = 0xE300000000000000;
  if (*(v0 + 8) >> 60 != 15)
  {
    v1 = sub_2261E3B9C();
    v2 = v3;
  }

  MEMORY[0x22AA782B0](v1, v2);

  MEMORY[0x22AA782B0](0x3D7367616C66202CLL, 0xE800000000000000);
  v4 = sub_2261E423C();
  MEMORY[0x22AA782B0](v4);

  v5 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v6 = sub_2261C9E2C(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v6, v8);

  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261A65DC();
  v9 = sub_2261E423C();
  MEMORY[0x22AA782B0](v9);

  return 0x3D646975476161;
}

__n128 sub_2261CD7CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4->n128_u32[1];
  result = a4[1];
  v8 = a4[2].n128_u64[0];
  v9 = a4[2].n128_u64[1];
  v10 = a4->n128_u8[0] & 1;
  v11 = a4->n128_u8[8] & 1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v10;
  *(a6 + 28) = v6;
  *(a6 + 32) = v11;
  *(a6 + 40) = result;
  *(a6 + 56) = v8;
  *(a6 + 64) = v9;
  *(a6 + 72) = a5;
  return result;
}

uint64_t sub_2261CD81C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819047270;
  }

  else
  {
    v3 = 0x6C616D696E696DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819047270;
  }

  else
  {
    v5 = 0x6C616D696E696DLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2261E425C();
  }

  return v8 & 1;
}

uint64_t sub_2261CD8BC()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CD938(uint64_t a1)
{
  sub_2261E3E6C();
}

uint64_t sub_2261CD9A0(uint64_t a1)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CDA18@<X0>(char *a2@<X8>)
{
  v3 = sub_2261E41EC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2261CDA78(uint64_t *a1@<X8>)
{
  v2 = 1819047270;
  if (!*v1)
  {
    v2 = 0x6C616D696E696DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_2261CDAC8()
{
  if (qword_28136EEE0 != -1)
  {
    swift_once();
  }

  return &qword_28136FE90;
}

uint64_t sub_2261CDB30(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_2261E3A9C();
  swift_allocObject();
  result = sub_2261E3A5C();
  *a3 = 0x1000000000;
  *a4 = result | 0x4000000000000000;
  return result;
}

void *sub_2261CDB98()
{
  if (qword_27D78FD88 != -1)
  {
    swift_once();
  }

  return &qword_27D791468;
}

uint64_t sub_2261CDBF4()
{

  v1 = OBJC_IVAR____TtC17AppAttestInternal21AuthenticationManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2261CDCA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_22619C830(a1, a2);
  }

  else
  {
    return sub_2261A28B8(a1, a2);
  }
}

unint64_t sub_2261CDCB4()
{
  result = qword_27D78E098;
  if (!qword_27D78E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E098);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticationManager(uint64_t a1)
{
  result = qword_28136EEC0;
  if (!qword_28136EEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261CDD5C(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_2261CDE54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2261CDE9C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 sub_2261CDF10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = v4;
  *(a4 + 80) = *(a3 + 64);
  result = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = result;
  return result;
}

uint64_t sub_2261CDF30(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v3 = sub_2261E3DAC();
  v4 = objc_opt_self();
  v5 = [v4 cborWithUTF8String_];

  *(inited + 32) = v5;
  v6 = a1[8];
  v49 = a1[9];
  v50 = a1[10];
  v51 = a1[7];
  v7 = sub_2261E3B8C();
  v8 = [v4 cborWithData_];

  *(inited + 40) = v8;
  v9 = sub_2261E3DAC();
  v10 = [v4 cborWithUTF8String_];

  *(inited + 48) = v10;
  v11 = sub_2261E3B8C();
  v12 = [v4 cborWithData_];

  *(inited + 56) = v12;
  sub_2261CEFA0(inited);
  v13 = v6;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
  swift_arrayDestroy();
  sub_2261CF098();
  sub_2261CF0E4();
  v14 = sub_2261E3D4C();

  v15 = [v4 cborWithDictionary_];

  if (v13 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2261E6800;
  sub_22619D8F4(v51, v13);
  sub_22619D8F4(v49, v50);
  v17 = sub_2261E3DAC();
  v48 = v15;
  v18 = [v4 cborWithUTF8String_];

  *(v16 + 32) = v18;
  sub_22619D8F4(v51, v13);
  v19 = sub_2261E3B8C();
  v20 = v13;
  v21 = [v4 cborWithData_];

  sub_22619C840(v51, v20);
  *(v16 + 40) = v21;
  v22 = sub_2261E3DAC();
  v23 = [v4 cborWithUTF8String_];

  *(v16 + 48) = v23;
  sub_22619D8F4(v49, v50);
  v24 = sub_2261E3B8C();
  v25 = [v4 cborWithData_];

  sub_22619C840(v49, v50);
  *(v16 + 56) = v25;
  sub_2261CEFA0(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = sub_2261E3D4C();

  v27 = [v4 cborWithDictionary_];

  v28 = [v48 dictionary];
  if (!v28)
  {
    v36 = sub_2261E3FFC();
    v37 = 0x80000002261EDB20;
    sub_2261A4EAC(v36, 0xD000000000000029, 0x80000002261EDB20, 0xD00000000000006ELL, 0x80000002261EDAB0, 59);
    sub_22619C7B4();
    swift_allocError();
    *v38 = 0xD000000000000029;
    *(v38 + 8) = 0x80000002261EDB20;
    *(v38 + 16) = 1;
    swift_willThrow();

    v39 = v48;
    sub_2261B52AC(v51, v20, v49, v50);
    goto LABEL_13;
  }

  v29 = v28;
  v30 = sub_2261E3D6C();

  v31 = sub_2261E3DAC();
  v32 = [v4 cborWithUTF8String_];

  if ((v30 & 0xC000000000000001) == 0)
  {
    v35 = v49;
    v40 = v27;
    goto LABEL_10;
  }

  if (v30 >= 0)
  {
    v30 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v33 = v27;
  result = sub_2261E416C();
  if (!__OFADD__(result, 1))
  {
    v35 = v49;
    sub_2261CE790(v30, result + 1);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CEC14(v27, v32, isUniquelyReferenced_nonNull_native);

    v42 = sub_2261E3D4C();

    v43 = [v4 cborWithDictionary_];

    sub_2261B52AC(v51, v20, v35, v50);
    v15 = v43;
LABEL_11:
    v39 = v15;
    v44 = sub_2261E3B4C();
    if (v45 >> 60 != 15)
    {
      v37 = v44;

      return v37;
    }

    v46 = sub_2261E3FFC();
    v37 = 0x80000002261EDA90;
    sub_2261A4EAC(v46, 0xD00000000000001FLL, 0x80000002261EDA90, 0xD00000000000006ELL, 0x80000002261EDAB0, 82);
    sub_22619C7B4();
    swift_allocError();
    *v47 = 0xD00000000000001FLL;
    *(v47 + 8) = 0x80000002261EDA90;
    *(v47 + 16) = 1;
    swift_willThrow();
LABEL_13:

    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_2261CE604()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal20AssertionCBORManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2261CE6A0()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC17AppAttestInternal20AssertionCBORManager_logger;
  v2 = sub_2261A5280();
  v3 = sub_2261E3CDC();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  return v0;
}

unint64_t sub_2261CE74C(uint64_t a1)
{
  v2 = sub_2261E403C();

  return sub_2261CED7C(a1, v2);
}

uint64_t sub_2261CE790(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
    v2 = sub_2261E41BC();
    v19 = v2;
    sub_2261E415C();
    v3 = sub_2261E417C();
    if (v3)
    {
      v4 = v3;
      sub_2261CF098();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2261CE9AC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2261E403C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2261E417C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2261CE9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
  result = sub_2261E41AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2261E403C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_2261CEC14(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2261CE74C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2261CE9AC(v13, a3 & 1);
      v8 = sub_2261CE74C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_2261CF098();
        sub_2261E428C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_2261CEE40();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

unint64_t sub_2261CED7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2261CF098();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2261E404C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2261CEE40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
  v2 = *v0;
  v3 = sub_2261E419C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2261CEFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B0, &unk_2261E78A0);
    v3 = sub_2261E41CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2261CE74C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2261CF098()
{
  result = qword_28136E1C0;
  if (!qword_28136E1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1C0);
  }

  return result;
}

unint64_t sub_2261CF0E4()
{
  result = qword_28136E1B8;
  if (!qword_28136E1B8)
  {
    sub_2261CF098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E1B8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2261CF160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2261CF1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AssertionCBORManager(uint64_t a1)
{
  result = qword_28136EF10;
  if (!qword_28136EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261CF260(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261CF300@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_2261E406C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  if (qword_28136F1A0 != -1)
  {
    swift_once();
  }

  if (qword_28136F1A8)
  {
    v10 = qword_28136F1A8;
    v11 = sub_2261E3DAC();
    v12 = [v10 valueForKey_];

    if (v12)
    {
      sub_2261E409C();

      swift_unknownObjectRelease();
      sub_22619A7A4(v20, v21);
    }

    else
    {

      memset(v21, 0, sizeof(v21));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0B8, &unk_2261E78B0);
    v15 = swift_dynamicCast();
    v16 = *(*(a3 - 8) + 56);
    if (v15)
    {
      v17 = *(a3 - 8);
      v16(v9, 0, 1, a3);
      (*(v17 + 32))(a4, v9, a3);
      v18 = a4;
      v19 = 0;
    }

    else
    {
      v16(v9, 1, 1, a3);
      (*(v7 + 8))(v9, v6);
      v18 = a4;
      v19 = 1;
    }

    return (v16)(v18, v19, 1, a3);
  }

  else
  {
    v13 = *(*(a3 - 8) + 56);

    return v13(a4, 1, 1, a3);
  }
}

id sub_2261CF5C8(uint64_t a1, uint64_t a2)
{
  if (qword_28136F1A0 != -1)
  {
    swift_once();
  }

  if (!qword_28136F1A8)
  {
    return 0;
  }

  v2 = qword_28136F1A8;
  v3 = sub_2261E3DAC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_2261CF674()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2261E3DAC();
  v2 = [v0 initWithSuiteName_];

  qword_28136F1A8 = v2;
}

uint64_t sub_2261CF6F4(char a1)
{
  if (!a1)
  {
    return 0x7365747461707061;
  }

  if (a1 == 1)
  {
    return 0x6E68747561626577;
  }

  return 0x6972707265746E65;
}

uint64_t sub_2261CF75C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E68747561626577;
  if (v2 != 1)
  {
    v4 = 0x6972707265746E65;
    v3 = 0xEA00000000006573;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7365747461707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE006E6F69746174;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E68747561626577;
  if (*a2 != 1)
  {
    v8 = 0x6972707265746E65;
    v7 = 0xEA00000000006573;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7365747461707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE006E6F69746174;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2261E425C();
  }

  return v11 & 1;
}

uint64_t sub_2261CF870(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E69676972;
  v3 = 0x4F74736575716572;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6144746E65696C63;
    v12 = 0xEE00687361486174;
    if (a1 != 6)
    {
      v11 = 0xD000000000000010;
      v12 = 0x80000002261EDBF0;
    }

    v13 = 0xD000000000000011;
    if (a1 == 4)
    {
      v13 = 0x4345444970696863;
      v14 = 0xEA00000000004449;
    }

    else
    {
      v14 = 0x80000002261EDA70;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
    if (a1 != 2)
    {
      v5 = 0x6F744B4955747461;
      v6 = 0xEB000000004B4942;
    }

    v7 = 0xE500000000000000;
    v8 = 0x4449707061;
    if (!a1)
    {
      v8 = 0x4F74736575716572;
      v7 = 0xED00006E69676972;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE00687361486174;
        if (v9 != 0x6144746E65696C63)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000002261EDBF0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000004449;
      if (v9 != 0x4345444970696863)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x80000002261EDA70;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000746E65;
        if (v9 != 0x6D6E6F7269766E65)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v3 = 0x6F744B4955747461;
      v2 = 0xEB000000004B4942;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v9 != 0x4449707061)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (v9 != v3)
    {
LABEL_45:
      v15 = sub_2261E425C();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_2261CFB28()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CFBDC(uint64_t a1)
{
  sub_2261E3E6C();
}

uint64_t sub_2261CFC7C(uint64_t a1, unsigned __int8 a2)
{
  sub_2261E3E6C();
}

uint64_t sub_2261CFDD8(uint64_t a1)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_2261CFE88(uint64_t a1, unsigned __int8 a2)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

unint64_t sub_2261CFFF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2261D2078(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2261D0028(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F69746174;
  v4 = 0xE800000000000000;
  v5 = 0x6E68747561626577;
  if (v2 != 1)
  {
    v5 = 0x6972707265746E65;
    v4 = 0xEA00000000006573;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365747461707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2261D0098()
{
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x5474736575716572, 0xEC0000003D657079);
  v1 = 0xE800000000000000;
  v2 = 0x6E68747561626577;
  if (*v0 != 1)
  {
    v2 = 0x6972707265746E65;
    v1 = 0xEA00000000006573;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x7365747461707061;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xEE006E6F69746174;
  }

  MEMORY[0x22AA782B0](v3, v4);

  MEMORY[0x22AA782B0](0x3D766E65202CLL, 0xE600000000000000);
  v5 = sub_22619C4AC(*(v0 + 1));
  MEMORY[0x22AA782B0](v5);

  MEMORY[0x22AA782B0](0x3D44497072202CLL, 0xE700000000000000);
  MEMORY[0x22AA782B0](*(v0 + 8), *(v0 + 16));
  v6 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v7 = sub_2261C9E2C(v6);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x22AA782B0](v7, v9);

  MEMORY[0x22AA782B0](0x614468747561202CLL, 0xEB000000003D6174);
  v10 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v10);

  MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
  v11 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v11);

  return 0;
}

uint64_t sub_2261D02A8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 1) = a2 & 1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_2261D02DC()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_2261D0318()
{
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x5474736575716572, 0xEC0000003D657079);
  v1 = 0xE800000000000000;
  v2 = 0x6E68747561626577;
  if (*v0 != 1)
  {
    v2 = 0x6972707265746E65;
    v1 = 0xEA00000000006573;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x7365747461707061;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xEE006E6F69746174;
  }

  MEMORY[0x22AA782B0](v3, v4);

  MEMORY[0x22AA782B0](0x3D766E65202CLL, 0xE600000000000000);
  v5 = sub_22619C4AC(*(v0 + 1));
  MEMORY[0x22AA782B0](v5);

  MEMORY[0x22AA782B0](0x3D44497072202CLL, 0xE700000000000000);
  MEMORY[0x22AA782B0](*(v0 + 8), *(v0 + 16));
  v6 = MEMORY[0x22AA782B0](0x3D79656B202CLL, 0xE600000000000000);
  v7 = sub_2261C9E2C(v6);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x22AA782B0](v7, v9);

  MEMORY[0x22AA782B0](0x6E6F6974706F202CLL, 0xEA00000000003D73);
  v10 = sub_2261E3D7C();
  MEMORY[0x22AA782B0](v10);

  return 0;
}

uint64_t sub_2261D04FC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 1) = a2 & 1;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_2261D0518()
{
  v1 = v0;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x4F74736575716572, 0xEE003D6E69676972);
  MEMORY[0x22AA782B0](*v1, v1[1]);
  MEMORY[0x22AA782B0](0x6F7269766E65202CLL, 0xEE003D746E656D6ELL);
  MEMORY[0x22AA782B0](v1[2], v1[3]);
  MEMORY[0x22AA782B0](0x4B4955747461202CLL, 0xEE003D4B49426F74);
  v2 = v0[4];
  v3 = v1[5];

  v4 = sub_2261D20C4(20, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x22AA78280](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x22AA782B0](v11, v13);

  MEMORY[0x22AA782B0](0xD000000000000010, 0x80000002261EDC10);
  MEMORY[0x22AA782B0](v1[6], v1[7]);
  return 0;
}

uint64_t sub_2261D069C()
{
  v1 = 0x4F74736575716572;
  v2 = 0x6F744B4955747461;
  if (*v0 != 2)
  {
    v2 = 0x4345444970696863;
  }

  if (*v0)
  {
    v1 = 0x6D6E6F7269766E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2261D0738@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2261D21B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2261D0778(uint64_t a1)
{
  v2 = sub_2261D2160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D07B4(uint64_t a1)
{
  v2 = sub_2261D2160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D07F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0C0, &qword_2261E78E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2160();
  sub_2261E437C();
  v8[15] = 0;
  sub_2261E422C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2261E422C();
  v8[13] = 2;
  sub_2261E422C();
  v8[12] = 3;
  sub_2261E422C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2261D09B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_2261D09C4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2261D09F4()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2261D0A24()
{
  v1 = *(v0 + 48);

  return v1;
}

double sub_2261D0A54@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2261D2330(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_2261D0ADC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2261D2624(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2261D0B0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E69676972;
  v4 = 0x4F74736575716572;
  v5 = 0xEE00687361486174;
  v6 = 0x6144746E65696C63;
  if (v2 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000002261EDBF0;
  }

  v7 = 0xEA00000000004449;
  v8 = 0xD000000000000011;
  if (v2 == 4)
  {
    v8 = 0x4345444970696863;
  }

  else
  {
    v7 = 0x80000002261EDA70;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000746E65;
  v10 = 0x6D6E6F7269766E65;
  if (v2 != 2)
  {
    v10 = 0x6F744B4955747461;
    v9 = 0xEB000000004B4942;
  }

  if (*v1)
  {
    v4 = 0x4449707061;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_2261D0C38()
{
  v1 = *v0;
  v2 = 0x4F74736575716572;
  v3 = 0x6144746E65696C63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000011;
  if (v1 == 4)
  {
    v4 = 0x4345444970696863;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6E6F7269766E65;
  if (v1 != 2)
  {
    v5 = 0x6F744B4955747461;
  }

  if (*v0)
  {
    v2 = 0x4449707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2261D0D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2261D2624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2261D0D94(uint64_t a1)
{
  v2 = sub_2261D2670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D0DD0(uint64_t a1)
{
  v2 = sub_2261D2670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D0E0C()
{
  v1 = v0;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0x4F74736575716572, 0xEE003D6E69676972);
  MEMORY[0x22AA782B0](*v1, v1[1]);
  MEMORY[0x22AA782B0](0x3D4449707061202CLL, 0xE800000000000000);
  MEMORY[0x22AA782B0](v1[2], v1[3]);
  MEMORY[0x22AA782B0](0x6F7269766E65202CLL, 0xEE003D746E656D6ELL);
  MEMORY[0x22AA782B0](v1[4], v1[5]);
  MEMORY[0x22AA782B0](0x4B4955747461202CLL, 0xEE003D4B49426F74);
  MEMORY[0x22AA782B0](v1[6], v1[7]);
  MEMORY[0x22AA782B0](0x444970696863202CLL, 0xED00003D44494345);
  MEMORY[0x22AA782B0](v1[8], v1[9]);
  MEMORY[0x22AA782B0](0xD000000000000014, 0x80000002261EDC30);
  MEMORY[0x22AA782B0](v1[10], v1[11]);
  MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
  MEMORY[0x22AA782B0](v1[12], v1[13]);
  return 0;
}

uint64_t sub_2261D0FA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0C8, &qword_2261E78E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2670();
  sub_2261E437C();
  v8[15] = 0;
  sub_2261E422C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2261E422C();
  v8[13] = 2;
  sub_2261E422C();
  v8[12] = 3;
  sub_2261E422C();
  v8[11] = 4;
  sub_2261E422C();
  v8[10] = 5;
  sub_2261E422C();
  v8[9] = 6;
  sub_2261E422C();
  v8[8] = 7;
  sub_2261E421C();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_2261D11E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, char a14)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  return result;
}

uint64_t sub_2261D1214()
{
  v1 = *(v0 + 64);

  return v1;
}

double sub_2261D1244@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2261D26C4(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_2261D12E0()
{
  if (*v0)
  {
    return 0x7374726563;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_2261D131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002261EDCD0 == a2 || (sub_2261E425C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2261E425C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2261D140C(uint64_t a1)
{
  v2 = sub_2261D2CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D1448(uint64_t a1)
{
  v2 = sub_2261D2CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D1484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0D0, &qword_2261E78F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2CD8();
  sub_2261E437C();
  v14 = 0;
  sub_2261E422C();
  if (!v5)
  {
    v13 = 1;
    sub_2261E422C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2261D1618@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2261D2D2C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_2261D1668()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2261E410C();

  MEMORY[0x22AA782B0](v1, v2);
  MEMORY[0x22AA782B0](0x3D7374726563202CLL, 0xE800000000000000);
  MEMORY[0x22AA782B0](v3, v4);
  return 0xD000000000000017;
}

uint64_t sub_2261D1778(uint64_t a1)
{
  v2 = sub_2261D2F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D17B4(uint64_t a1)
{
  v2 = sub_2261D2F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D187C()
{
  sub_2261E42EC();
  MEMORY[0x22AA78720](0);
  return sub_2261E430C();
}

uint64_t sub_2261D18C0(uint64_t a1)
{
  sub_2261E42EC();
  MEMORY[0x22AA78720](0);
  return sub_2261E430C();
}

uint64_t sub_2261D1900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374726563 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2261E425C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2261D1984(uint64_t a1)
{
  v2 = sub_2261D2F64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2261D19C0(uint64_t a1)
{
  v2 = sub_2261D2F64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2261D1A40@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a4();
  sub_2261E436C();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_2261E420C();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_2261D1C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v15();
  sub_2261E437C();
  sub_2261E422C();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_2261D1DBC(unint64_t a1)
{
  sub_2261E410C();

  if (a1 >> 62)
  {
    sub_2261E416C();
  }

  v2 = sub_2261E423C();
  MEMORY[0x22AA782B0](v2);

  return 0xD000000000000012;
}

uint64_t sub_2261D1E7C(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2261D1EC4()
{
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EDC90);
  v1 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v1);

  MEMORY[0x22AA782B0](0xD000000000000014, 0x80000002261EDCB0);
  if (*(v0 + 16) >> 62)
  {
    sub_2261E416C();
  }

  v2 = sub_2261E423C();
  MEMORY[0x22AA782B0](v2);

  MEMORY[0x22AA782B0](0x706965636572202CLL, 0xEA00000000003D74);
  v3 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v3);

  MEMORY[0x22AA782B0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2261D2028(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_2261D2078(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E41EC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2261D20C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2261E3E7C();

    return sub_2261E3EDC();
  }

  return result;
}

unint64_t sub_2261D2160()
{
  result = qword_27D78FF90;
  if (!qword_27D78FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78FF90);
  }

  return result;
}

uint64_t sub_2261D21B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F74736575716572 && a2 == 0xED00006E69676972;
  if (v4 || (sub_2261E425C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_2261E425C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F744B4955747461 && a2 == 0xEB000000004B4942 || (sub_2261E425C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4345444970696863 && a2 == 0xEA00000000004449)
  {

    return 3;
  }

  else
  {
    v6 = sub_2261E425C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2261D2330@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E168, &qword_2261E8968);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2160();
  sub_2261E436C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_2261E420C();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_2261E420C();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_2261E420C();
  v25 = v13;
  v33 = 3;
  v14 = sub_2261E420C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_2261D45A4(&v28, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_2261D45DC(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_2261D2624(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E41EC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2261D2670()
{
  result = qword_28136EA60;
  if (!qword_28136EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA60);
  }

  return result;
}

uint64_t sub_2261D26C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E160, &qword_2261E8960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2670();
  sub_2261E436C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v53[0]) = 0;
  v9 = sub_2261E420C();
  v44 = v10;
  LOBYTE(v53[0]) = 1;
  v11 = sub_2261E420C();
  v43 = v12;
  v41 = v11;
  LOBYTE(v53[0]) = 2;
  v40 = sub_2261E420C();
  v42 = v13;
  LOBYTE(v53[0]) = 3;
  *&v39 = sub_2261E420C();
  *(&v39 + 1) = v14;
  LOBYTE(v53[0]) = 4;
  v15 = sub_2261E420C();
  v17 = v16;
  v35 = v15;
  LOBYTE(v53[0]) = 5;
  v38 = 0;
  v18 = sub_2261E420C();
  v37 = v19;
  v34 = v18;
  LOBYTE(v53[0]) = 6;
  v20 = sub_2261E420C();
  v36 = v21;
  v33 = v20;
  v62 = 7;
  v22 = sub_2261E41FC();
  (*(v6 + 8))(v8, v5);
  *&v45 = v9;
  v23 = v44;
  *(&v45 + 1) = v44;
  *&v46 = v41;
  v24 = v43;
  *(&v46 + 1) = v43;
  *&v47 = v40;
  *(&v47 + 1) = v42;
  v48 = v39;
  *&v49 = v35;
  v32 = v17;
  *(&v49 + 1) = v17;
  v25 = v34;
  *&v50 = v34;
  *(&v50 + 1) = v37;
  v26 = v33;
  *&v51 = v33;
  *(&v51 + 1) = v36;
  v52 = v22;
  sub_2261D453C(&v45, v53);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v53[0] = v9;
  v53[1] = v23;
  v53[2] = v41;
  v53[3] = v24;
  v53[4] = v40;
  v53[5] = v42;
  v54 = v39;
  v55 = v35;
  v56 = v32;
  v57 = v25;
  v58 = v37;
  v59 = v26;
  v60 = v36;
  v61 = v22;
  result = sub_2261D4574(v53);
  v28 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v28;
  *(a2 + 96) = v51;
  *(a2 + 112) = v52;
  v29 = v46;
  *a2 = v45;
  *(a2 + 16) = v29;
  v30 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v30;
  return result;
}

unint64_t sub_2261D2CD8()
{
  result = qword_28136FCD8;
  if (!qword_28136FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136FCD8);
  }

  return result;
}

uint64_t sub_2261D2D2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E158, &qword_2261E8958);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2261D2CD8();
  sub_2261E436C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_2261E420C();
    v10 = 1;
    sub_2261E420C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_2261D2F10()
{
  result = qword_27D78FFA0;
  if (!qword_27D78FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78FFA0);
  }

  return result;
}

unint64_t sub_2261D2F64()
{
  result = qword_27D78FFA8[0];
  if (!qword_27D78FFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D78FFA8);
  }

  return result;
}

unint64_t sub_2261D2FBC()
{
  result = qword_28136E978;
  if (!qword_28136E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E978);
  }

  return result;
}

unint64_t sub_2261D3010(uint64_t a1)
{
  result = sub_2261AF674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D3038(uint64_t a1)
{
  result = sub_2261D3060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D3060()
{
  result = qword_27D78E0F8;
  if (!qword_27D78E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E0F8);
  }

  return result;
}

unint64_t sub_2261D30F4()
{
  result = qword_27D78E100;
  if (!qword_27D78E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E100);
  }

  return result;
}

unint64_t sub_2261D3148()
{
  result = qword_27D78E108;
  if (!qword_27D78E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E108);
  }

  return result;
}

unint64_t sub_2261D319C()
{
  result = qword_27D78E110;
  if (!qword_27D78E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E110);
  }

  return result;
}

unint64_t sub_2261D31F4()
{
  result = qword_27D78E118;
  if (!qword_27D78E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E118);
  }

  return result;
}

unint64_t sub_2261D324C()
{
  result = qword_28136EA50;
  if (!qword_28136EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA50);
  }

  return result;
}

unint64_t sub_2261D32A4()
{
  result = qword_28136EA58;
  if (!qword_28136EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA58);
  }

  return result;
}

unint64_t sub_2261D3338()
{
  result = qword_28136EA38;
  if (!qword_28136EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA38);
  }

  return result;
}

unint64_t sub_2261D338C()
{
  result = qword_28136EA40;
  if (!qword_28136EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA40);
  }

  return result;
}

unint64_t sub_2261D33E0()
{
  result = qword_28136EA48;
  if (!qword_28136EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA48);
  }

  return result;
}

unint64_t sub_2261D3474()
{
  result = qword_28136EB30;
  if (!qword_28136EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB30);
  }

  return result;
}

unint64_t sub_2261D34C8()
{
  result = qword_28136EB40;
  if (!qword_28136EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB40);
  }

  return result;
}

unint64_t sub_2261D351C()
{
  result = qword_28136EB48;
  if (!qword_28136EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB48);
  }

  return result;
}

unint64_t sub_2261D35B0()
{
  result = qword_27D78E120;
  if (!qword_27D78E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E120);
  }

  return result;
}

unint64_t sub_2261D3604()
{
  result = qword_27D78E1F0;
  if (!qword_27D78E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1F0);
  }

  return result;
}

unint64_t sub_2261D3658()
{
  result = qword_27D78E128;
  if (!qword_27D78E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E128);
  }

  return result;
}

uint64_t sub_2261D36EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2261D3740()
{
  result = qword_27D78E130;
  if (!qword_27D78E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E130);
  }

  return result;
}

unint64_t sub_2261D3794()
{
  result = qword_27D78E1D0;
  if (!qword_27D78E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1D0);
  }

  return result;
}

unint64_t sub_2261D37E8()
{
  result = qword_27D78E138;
  if (!qword_27D78E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E138);
  }

  return result;
}

unint64_t sub_2261D383C(uint64_t a1)
{
  result = sub_2261D3864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D3864()
{
  result = qword_27D78E140;
  if (!qword_27D78E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E140);
  }

  return result;
}

unint64_t sub_2261D38B8(uint64_t a1)
{
  result = sub_2261D38E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D38E0()
{
  result = qword_27D78E148;
  if (!qword_27D78E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E148);
  }

  return result;
}

unint64_t sub_2261D3934(uint64_t a1)
{
  result = sub_2261D395C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261D395C()
{
  result = qword_28136EA28;
  if (!qword_28136EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA28);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2261D39D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2261D3A1C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2261D3A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2261D3AD4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2261D3B60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2261D3BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppAttestationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppAttestationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2261D3D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2261D3DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2261D3E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2261D3E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2261D3ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2261D3F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceAttestationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceAttestationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2261D4120()
{
  result = qword_27D790BB0[0];
  if (!qword_27D790BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D790BB0);
  }

  return result;
}

unint64_t sub_2261D4178()
{
  result = qword_27D790CC0[0];
  if (!qword_27D790CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D790CC0);
  }

  return result;
}

unint64_t sub_2261D41D0()
{
  result = qword_27D790ED0[0];
  if (!qword_27D790ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D790ED0);
  }

  return result;
}

unint64_t sub_2261D4228()
{
  result = qword_27D7910E0[0];
  if (!qword_27D7910E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7910E0);
  }

  return result;
}

unint64_t sub_2261D4280()
{
  result = qword_27D7911F0;
  if (!qword_27D7911F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7911F0);
  }

  return result;
}

unint64_t sub_2261D42D8()
{
  result = qword_27D7911F8[0];
  if (!qword_27D7911F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7911F8);
  }

  return result;
}

unint64_t sub_2261D4330()
{
  result = qword_27D791280;
  if (!qword_27D791280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D791280);
  }

  return result;
}

unint64_t sub_2261D4388()
{
  result = qword_27D791288[0];
  if (!qword_27D791288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D791288);
  }

  return result;
}

unint64_t sub_2261D43E0()
{
  result = qword_28136FCC0;
  if (!qword_28136FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136FCC0);
  }

  return result;
}

unint64_t sub_2261D4438()
{
  result = qword_28136FCC8;
  if (!qword_28136FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136FCC8);
  }

  return result;
}

unint64_t sub_2261D4490()
{
  result = qword_27D791310;
  if (!qword_27D791310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D791310);
  }

  return result;
}

unint64_t sub_2261D44E8()
{
  result = qword_27D791318[0];
  if (!qword_27D791318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D791318);
  }

  return result;
}

id sub_2261D4654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController] = 0;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_logger;
  v11 = sub_2261A5248();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v9[v10], v11, v12);
  v13 = &v9[OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_2261D4738(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = *MEMORY[0x277D85DE8];
  v5 = sub_2261A09C0();
  if (v6 >> 60 == 15)
  {
    *a2 = 0xD00000000000001FLL;
    *(a2 + 8) = 0x80000002261EDE30;
LABEL_3:
    *(a2 + 16) = 1;
LABEL_19:
    *(a2 + 40) = 1;
    return;
  }

  v106 = v5;
  v107 = v6;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0x80000002261EDE50;
      sub_2261A28B8(v106, v107);
      v11 = 0xD00000000000001ELL;
LABEL_18:
      *a2 = v11;
      *(a2 + 8) = v10;
      *(a2 + 16) = 0;
      goto LABEL_19;
    }

    sub_2261A6578(a1, &v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
    if (swift_dynamicCast())
    {
      v12 = v119;

      goto LABEL_12;
    }

LABEL_17:
    v10 = 0x80000002261EDE70;
    sub_2261A28B8(v106, v107);
    v11 = 0xD000000000000015;
    goto LABEL_18;
  }

  sub_2261A6578(a1, &v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v127[0] = v121;
  v127[1] = v122;
  v127[2] = v123;
  v127[3] = v124;
  sub_2261AF618(v127, &v121);
  v12 = sub_2261D8C54(v127, v2);
  sub_2261AF6C8(v127);
  if (!v12)
  {
    v41 = sub_2261E3FFC();
    sub_2261A4EAC(v41, 0xD000000000000027, 0x80000002261EDEC0, 0xD00000000000006CLL, 0x80000002261EDEF0, 49);
    sub_2261AF6C8(v127);
    sub_2261A28B8(v106, v107);
    *a2 = 0xD000000000000027;
    *(a2 + 8) = 0x80000002261EDEC0;
    goto LABEL_3;
  }

  sub_2261AF6C8(v127);
LABEL_12:
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v13);
  v15 = (*(v14 + 40))(v13, v14);
  sub_2261D535C(v12);

  v16 = sub_2261E3D4C();

  *&v121 = 0;
  v17 = DeviceIdentityCopyAttestationDictionary();

  v18 = v121;
  if (v17)
  {
    sub_2261E3D6C();
    v19 = v18;

    v20 = objc_opt_self();
    v21 = sub_2261E3D4C();

    *&v121 = 0;
    v22 = [v20 dataWithPropertyList:v21 format:100 options:0 error:&v121];

    v23 = v121;
    if (!v22)
    {
      v40 = v23;
      sub_2261E3AEC();

      swift_willThrow();
      sub_2261A28B8(v106, v107);

      return;
    }

    v24 = sub_2261E3BBC();
    v104 = v25;

    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v26);
    v28 = (*(v27 + 16))(v26, v27);
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = 0x80000002261EDE50;
        sub_2261A28B8(v106, v107);
        sub_22619C840(v24, v104);
        v30 = 0xD00000000000001ELL;
LABEL_33:
        *a2 = v30;
        *(a2 + 8) = v29;
        *(a2 + 16) = 0;
        *(a2 + 40) = 1;

        return;
      }

      sub_2261A6578(a1, &v121);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
      if (swift_dynamicCast())
      {
        v44 = 0x69746375646F7270;
        v45 = BYTE1(v117);
        v103 = v19;
        v99 = *(&v118 + 1);
        v46 = sub_2261CF6F4(v117);
        v95 = v47;
        v97 = v46;
        v125[0] = v45;
        LOBYTE(v113) = 1;
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        if (v121 == v117)
        {

          v48 = 0xEA00000000006E6FLL;
        }

        else
        {
          v56 = sub_2261E425C();

          if ((v56 & 1) == 0)
          {
            v44 = 0x6D706F6C65766564;
          }

          v48 = 0xEA00000000006E6FLL;
          if ((v56 & 1) == 0)
          {
            v48 = 0xEB00000000746E65;
          }
        }

        v57 = sub_2261E3B9C();
        v59 = v58;
        v60 = sub_2261E3B9C();
        sub_2261D09B0(v97, v95, v44, v48, v57, v59, v60, v61, v110);
        *(&v122 + 1) = &type metadata for DeviceAttestationRequest;
        *&v123 = sub_2261D85E8();
        v62 = swift_allocObject();
        *&v121 = v62;
        sub_2261A28B8(v106, v107);
        sub_22619C840(v24, v104);

        v63 = v110[1];
        v62[1] = v110[0];
        v62[2] = v63;
        v64 = v110[3];
        v62[3] = v110[2];
        v62[4] = v64;
        v65 = &v121;
LABEL_58:
        sub_2261795DC(v65, v126);
        sub_2261795DC(v126, a2);
        *(a2 + 40) = 0;

        return;
      }

LABEL_32:
      v29 = 0x80000002261EDE70;
      sub_2261A28B8(v106, v107);
      sub_22619C840(v24, v104);
      v30 = 0xD000000000000015;
      goto LABEL_33;
    }

    sub_2261A6578(a1, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
    if (!swift_dynamicCast())
    {
      goto LABEL_32;
    }

    v117 = v121;
    v118 = v122;
    v119 = v123;
    v120 = v124;
    v42 = sub_2261CF6F4(v121);
    v101 = v43;
    v102 = v42;
    sub_22619F798();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (v113 == v108 && v114 == v109)
    {
    }

    else
    {
      v55 = sub_2261E425C();

      if ((v55 & 1) == 0)
      {
        v98 = 0xE000000000000000;
        v100 = 0;
LABEL_48:
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        v103 = v19;
        if (v113 == v108 && v114 == v109)
        {

          v94 = 0xEA00000000006E6FLL;
          v96 = 0x69746375646F7270;
        }

        else
        {
          v66 = sub_2261E425C();

          if (v66)
          {
            v67 = 0x69746375646F7270;
          }

          else
          {
            v67 = 0x6D706F6C65766564;
          }

          v68 = 0xEA00000000006E6FLL;
          if ((v66 & 1) == 0)
          {
            v68 = 0xEB00000000746E65;
          }

          v94 = v68;
          v96 = v67;
        }

        v69 = sub_2261E3B9C();
        v92 = v70;
        v93 = v69;
        v71 = sub_2261E3B9C();
        v90 = v72;
        v91 = v71;
        v73 = sub_2261E3B9C();
        v75 = v74;
        v76 = sub_2261E3B9C();
        v78 = v77;
        v79 = sub_2261A2BA8();
        v80 = *v79;
        v81 = v79[1];

        v82 = sub_2261CF5C8(v80, v81);

        v89.n128_u64[0] = v73;
        v89.n128_u64[1] = v75;
        *&v88 = v91;
        *(&v88 + 1) = v90;
        sub_2261D11E8(v102, v101, v100, v98, v96, v94, v93, v92, v111, v88, v89, v76, v78, v82 & 1);
        v115 = &type metadata for AppAttestationRequest;
        v116 = sub_2261C336C();
        v83 = swift_allocObject();
        v113 = v83;
        sub_2261A28B8(v106, v107);
        sub_22619C840(v24, v104);
        sub_2261AF6C8(&v117);
        v84 = v111[5];
        v85 = v111[6];
        v86 = v111[3];
        *(v83 + 80) = v111[4];
        *(v83 + 96) = v84;
        *(v83 + 112) = v85;
        *(v83 + 128) = v112;
        v87 = v111[1];
        *(v83 + 16) = v111[0];
        *(v83 + 32) = v87;
        *(v83 + 48) = v111[2];
        *(v83 + 64) = v86;
        v65 = &v113;
        goto LABEL_58;
      }
    }

    v98 = v118;
    v100 = *(&v117 + 1);

    goto LABEL_48;
  }

  v31 = v121;
  v32 = sub_2261E3CBC();
  v33 = sub_2261E3FFC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v121 = v35;
    *v34 = 136315138;
    if (v31)
    {
      v105 = v31;
      v36 = [v31 localizedDescription];
      v37 = sub_2261E3DDC();
      v39 = v38;

      v31 = v105;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v49 = sub_2261A4344(v37, v39, &v121);

    *(v34 + 4) = v49;
    _os_log_impl(&dword_226177000, v32, v33, "Failed to copy attestation dictionary. { error=%s }", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA792E0](v35, -1, -1);
    MEMORY[0x22AA792E0](v34, -1, -1);
  }

  v50 = 0xE000000000000000;
  *&v121 = 0;
  *(&v121 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EDE90);
  if (v31)
  {
    v51 = [v31 localizedDescription];
    v52 = sub_2261E3DDC();
    v50 = v53;
  }

  else
  {
    v52 = 0;
  }

  MEMORY[0x22AA782B0](v52, v50);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A28B8(v106, v107);
  v54 = *(&v121 + 1);
  *a2 = v121;
  *(a2 + 8) = v54;
  *(a2 + 16) = 1;
  *(a2 + 40) = 1;
}