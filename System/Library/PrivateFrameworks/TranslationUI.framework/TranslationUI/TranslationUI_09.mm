uint64_t (*sub_26F48981C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F407368;
}

uint64_t sub_26F4898C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_26F489A74(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_26F489BAC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F4077B4;
}

uint64_t sub_26F489D44(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F489DDC(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*sub_26F489E48(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

uint64_t (*sub_26F489F14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}

double sub_26F48A084()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26F48A0C8()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream;
  if (*(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream);
  }

  else
  {
    v3 = v0;
    type metadata accessor for VisualTranslationStream();
    swift_allocObject();
    v2 = sub_26F4848C0();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t VisualTranslationObservable.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-v7];
  v9 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v10 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1518, &qword_26F4AB488);
  sub_26F49DD68();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  *(v0 + v11) = sub_26F3BE714(v10);
  v12 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_translationInProgressModels;
  type metadata accessor for OngoingTranslationActor();
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = MEMORY[0x277D84FA0];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v21[7] = 0;
  sub_26F49DD68();
  v15 = *(v2 + 32);
  v15(v0 + v14, v4, v1);
  v16 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent;
  v21[6] = 0;
  sub_26F49DD68();
  v15(v0 + v16, v4, v1);
  *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale) = 0x3FF0000000000000;
  v17 = (v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  *v17 = 0;
  v17[1] = 0;
  *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream) = 0;
  v18 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest;
  v19 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
  (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  return VisualTranslationErrorViewModel.init()();
}

void sub_26F48A444(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v107 - v4;
  v6 = sub_26F49D968();
  v119 = *(v6 - 8);
  v120 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualTranslationModel(0);
  v118 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v114 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v107 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v107 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v107 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v107 - v20;
  MEMORY[0x28223BE20](v22);
  v117 = &v107 - v23;
  v24 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v116 = v1;
  v25 = *(v1 + v24);
  if (*(v25 + 16))
  {

    v26 = sub_26F45FF48(a1);
    if ((v27 & 1) == 0)
    {

      return;
    }

    v28 = *(v25 + 56);
    v111 = *(v118 + 72);
    v112 = v15;
    sub_26F49B18C(v28 + v111 * v26, v21, type metadata accessor for VisualTranslationModel);

    v29 = v117;
    sub_26F49C978(v21, v117, type metadata accessor for VisualTranslationModel);
    v30 = v29 + v9[5];
    v31 = *(v30 + 144);
    v152 = *(v30 + 128);
    v153 = v31;
    v154 = *(v30 + 160);
    v32 = *(v30 + 80);
    v148 = *(v30 + 64);
    v149 = v32;
    v33 = *(v30 + 112);
    v150 = *(v30 + 96);
    v151 = v33;
    v34 = *(v30 + 48);
    v146 = *(v30 + 32);
    v147 = v34;
    v35 = *(v30 + 16);
    v144 = *v30;
    v145 = v35;
    v36 = v9[6];
    sub_26F49D8F8();
    if (v37 <= 0.0)
    {
      v113 = *(v119 + 16);
      v119 = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v113(v18, a1, v120);
      v40 = v9[6];
      v41 = sub_26F49D918();
      (*(*(v41 - 8) + 16))(&v18[v40], v29 + v36, v41);
      v42 = *(a1 + v9[7]);
      v43 = *(a1 + v9[8]);
      v44 = *(a1 + v9[9]);
      v45 = *(a1 + v9[10]);
      v46 = &v18[v9[5]];
      v47 = v153;
      *(v46 + 8) = v152;
      *(v46 + 9) = v47;
      *(v46 + 20) = v154;
      v48 = v149;
      *(v46 + 4) = v148;
      *(v46 + 5) = v48;
      v49 = v151;
      *(v46 + 6) = v150;
      *(v46 + 7) = v49;
      v50 = v145;
      *v46 = v144;
      *(v46 + 1) = v50;
      v51 = v147;
      *(v46 + 2) = v146;
      *(v46 + 3) = v51;
      *&v18[v9[7]] = v42;
      *&v18[v9[8]] = v43;
      v18[v9[9]] = v44;
      v18[v9[10]] = v45;
      v18[v9[11]] = 0;

      v38 = v113;
      v39 = v119;
    }

    else
    {
      sub_26F49B18C(a1, v18, type metadata accessor for VisualTranslationModel);
      v38 = *(v119 + 16);
      v39 = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    v119 = v39;
    v113 = v38;
    v38(v8, a1, v120);
    sub_26F49B18C(v18, v5, type metadata accessor for VisualTranslationModel);
    (*(v118 + 56))(v5, 0, 1, v9);
    v52 = v116;
    swift_beginAccess();
    sub_26F48806C(v5, v8);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    v54 = v133;
    MEMORY[0x28223BE20](v53);
    *(&v107 - 2) = v18;
    v55 = sub_26F48AE7C(sub_26F49CBA0, (&v107 - 4), v54);
    v57 = v56;

    v59 = v112;
    v60 = v120;
    if (v57)
    {
      MEMORY[0x28223BE20](v58);
      *(&v107 - 2) = v52;
      *(&v107 - 1) = v18;
      sub_26F49F5F8();
      sub_26F49E1F8();

      v61 = v117;
LABEL_17:
      sub_26F499BA4(v61, type metadata accessor for VisualTranslationModel);
      sub_26F499BA4(v18, type metadata accessor for VisualTranslationModel);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    if ((v55 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v62 = v55 >= *(v133 + 16);
      v63 = v55;
      v64 = v115;
      if (!v62)
      {
        v110 = (*(v118 + 80) + 32) & ~*(v118 + 80);
        v118 = v63;
        v111 *= v63;
        v65 = v114;
        sub_26F49B18C(v133 + v110 + v111, v114, type metadata accessor for VisualTranslationModel);

        v113(v64, v65, v60);
        v66 = v65 + v9[5];
        v67 = *(v66 + 144);
        v130 = *(v66 + 128);
        v131 = v67;
        v132 = *(v66 + 160);
        v68 = *(v66 + 80);
        v126 = *(v66 + 64);
        v127 = v68;
        v69 = *(v66 + 112);
        v128 = *(v66 + 96);
        v129 = v69;
        v70 = *(v66 + 48);
        v124 = *(v66 + 32);
        v125 = v70;
        v71 = *(v66 + 16);
        v122 = *v66;
        v123 = v71;
        v72 = v9[6];
        v73 = sub_26F49D918();
        v74 = *(v73 - 8);
        v75 = *(v74 + 16);
        v107 = v74 + 16;
        v108 = v75;
        v75(v64 + v72, (v65 + v72), v73);
        sub_26F499BA4(v65, type metadata accessor for VisualTranslationModel);
        v76 = *&v18[v9[7]];
        v77 = *&v18[v9[8]];
        v78 = v18[v9[9]];
        v79 = v18[v9[10]];
        v80 = v64 + v9[5];
        v81 = v123;
        *v80 = v122;
        *(v80 + 16) = v81;
        v82 = v127;
        *(v80 + 64) = v126;
        *(v80 + 80) = v82;
        v83 = v125;
        *(v80 + 32) = v124;
        *(v80 + 48) = v83;
        *(v80 + 160) = v132;
        v84 = v131;
        *(v80 + 128) = v130;
        *(v80 + 144) = v84;
        v85 = v129;
        *(v80 + 96) = v128;
        *(v80 + 112) = v85;
        *(v64 + v9[7]) = v76;
        v86 = v9[8];
        v114 = v77;
        *(v64 + v86) = v77;
        v87 = v9[9];
        v109 = v78;
        *(v64 + v87) = v78;
        v88 = v9[10];
        *(v64 + v88) = v79;
        *(v64 + v9[11]) = 0;
        v89 = &v18[v9[5]];
        v90 = *(v89 + 9);
        v141 = *(v89 + 8);
        v142 = v90;
        v143 = *(v89 + 20);
        v91 = *(v89 + 5);
        v137 = *(v89 + 4);
        v138 = v91;
        v92 = *(v89 + 7);
        v139 = *(v89 + 6);
        v140 = v92;
        v93 = *(v89 + 3);
        v135 = *(v89 + 2);
        v136 = v93;
        v94 = *(v89 + 1);
        v133 = *v89;
        v134 = v94;
        v95 = v9[6];

        sub_26F49D8F8();
        if (v96 <= 0.0)
        {
          v113(v59, v64, v120);
          v108(v59 + v9[6], &v18[v95], v73);
          v97 = *(v64 + v88);

          sub_26F499BA4(v64, type metadata accessor for VisualTranslationModel);
          v98 = v59 + v9[5];
          v99 = v142;
          *(v98 + 128) = v141;
          *(v98 + 144) = v99;
          *(v98 + 160) = v143;
          v100 = v138;
          *(v98 + 64) = v137;
          *(v98 + 80) = v100;
          v101 = v140;
          *(v98 + 96) = v139;
          *(v98 + 112) = v101;
          v102 = v134;
          *v98 = v133;
          *(v98 + 16) = v102;
          v103 = v136;
          *(v98 + 32) = v135;
          *(v98 + 48) = v103;
          *(v59 + v9[7]) = v76;
          *(v59 + v9[8]) = v114;
          *(v59 + v9[9]) = v109;
          *(v59 + v9[10]) = v97;
          *(v59 + v9[11]) = 0;
        }

        else
        {
          sub_26F49C978(v64, v59, type metadata accessor for VisualTranslationModel);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v60 = sub_26F49DD98();
        v52 = v104;
        v57 = *v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v52 = v57;
        v9 = v118;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    v57 = sub_26F446D78(v57);
    *v52 = v57;
LABEL_15:
    v106 = v117;
    if (v9 >= v57[2])
    {
      __break(1u);
      return;
    }

    sub_26F49CF68(v59, v57 + v110 + v111, type metadata accessor for VisualTranslationModel);
    v60(&v121, 0);

    v61 = v106;
    goto LABEL_17;
  }
}

uint64_t sub_26F48AE7C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_26F48AF68(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VisualTranslationModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26F49B18C(a2, v6, type metadata accessor for VisualTranslationModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = sub_26F49DD98();
  v9 = v8;
  v10 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26F44650C(0, v10[2] + 1, 1, v10);
    *v9 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26F44650C((v12 > 1), v13 + 1, 1, v10);
    *v9 = v10;
  }

  v10[2] = v13 + 1;
  sub_26F49C978(v6, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, type metadata accessor for VisualTranslationModel);
  v7(v15, 0);
}

double sub_26F48B154()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_26F49DD98();
  *v2 = MEMORY[0x277D84F90];

  v1(&v5, 0);

  v3 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  *(v0 + v3) = MEMORY[0x277D84F98];

  return result;
}

void sub_26F48B22C(void *a1)
{
  v104 = type metadata accessor for VisualTranslationModel(0);
  v113 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v97 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v94 - v5;
  MEMORY[0x28223BE20](v6);
  v103 = &v94 - v7;
  MEMORY[0x28223BE20](v8);
  v105 = &v94 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  MEMORY[0x28223BE20](v114);
  v98 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v94 - v12;
  MEMORY[0x28223BE20](v13);
  v117 = &v94 - v14;
  MEMORY[0x28223BE20](v15);
  v111 = &v94 - v16;
  v17 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v101 = v1;
  v100 = v17;
  v18 = *(v1 + v17);
  v118 = a1;
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;

  v116 = v18;

  v24 = 0;
  v102 = a1;
  v110 = v23;
  v109 = v18 + 64;
  while (v22)
  {
LABEL_11:
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = v26 | (v24 << 6);
      v28 = v116;
      v29 = *(v116 + 48);
      v30 = sub_26F49D968();
      v31 = *(v30 - 8);
      v32 = v31;
      v106 = *(v31 + 72);
      v33 = v111;
      v108 = *(v31 + 16);
      v107 = v31 + 16;
      v108(v111, v29 + v106 * v27, v30);
      v34 = *(v28 + 56);
      v115 = *(v113 + 72);
      v35 = v34 + v115 * v27;
      v36 = v114;
      v37 = *(v114 + 48);
      sub_26F49B18C(v35, &v33[v37], type metadata accessor for VisualTranslationModel);
      v38 = v117;
      v39 = v117 + *(v36 + 48);
      (*(v32 + 32))(v117, v33, v30);
      sub_26F49C978(&v33[v37], v39, type metadata accessor for VisualTranslationModel);
      v40 = v38;
      v41 = v112;
      sub_26F3B8DD4(v40, v112, &qword_2806E1750, &qword_26F4ABFA8);
      v42 = *(v36 + 48);
      if (v118[2])
      {
        v43 = sub_26F45FF48(v41);
        if (v44)
        {
          break;
        }
      }

      sub_26F3B6B4C(v117, &qword_2806E1750, &qword_26F4ABFA8);
      sub_26F499BA4(v41 + v42, type metadata accessor for VisualTranslationModel);
      (*(v32 + 8))(v41, v30);
LABEL_6:
      v23 = v110;
      v19 = v109;
      if (!v22)
      {
        goto LABEL_7;
      }
    }

    v99 = v39;
    v45 = v103;
    sub_26F49B18C(v118[7] + v43 * v115, v103, type metadata accessor for VisualTranslationModel);
    v46 = v45;
    v47 = v105;
    sub_26F49C978(v46, v105, type metadata accessor for VisualTranslationModel);
    sub_26F499BA4(v41 + v42, type metadata accessor for VisualTranslationModel);
    v48 = *(v32 + 8);
    v49 = v30;
    v48(v41, v30);
    v50 = v47;
    v51 = v104;
    if (*(v50 + *(v104 + 44)))
    {
      sub_26F499BA4(v50, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v117, &qword_2806E1750, &qword_26F4ABFA8);
      goto LABEL_6;
    }

    v52 = v50;
    sub_26F3B8DD4(v117, v98, &qword_2806E1750, &qword_26F4ABFA8);
    v53 = v52 + v51[5];
    v54 = *(v53 + 144);
    v128 = *(v53 + 128);
    v129 = v54;
    v130 = *(v53 + 160);
    v55 = *(v53 + 80);
    v124 = *(v53 + 64);
    v125 = v55;
    v56 = *(v53 + 112);
    v126 = *(v53 + 96);
    v127 = v56;
    v57 = *(v53 + 48);
    v122 = *(v53 + 32);
    v123 = v57;
    v58 = *v53;
    v121 = *(v53 + 16);
    v120 = v58;
    v59 = v51[6];
    v60 = v99;
    v61 = v51;
    sub_26F49D8F8();
    v95 = v48;
    v63 = v96;
    if (v62 <= 0.0)
    {
      v108(v96, v60, v30);
      v64 = v61[6];
      v65 = sub_26F49D918();
      (*(*(v65 - 8) + 16))(v63 + v64, v105 + v59, v65);
      v66 = *(v60 + v61[7]);
      v67 = *(v60 + v61[8]);
      v68 = *(v60 + v61[9]);
      v69 = *(v60 + v61[10]);
      v70 = v63 + v61[5];
      v71 = v129;
      *(v70 + 128) = v128;
      *(v70 + 144) = v71;
      *(v70 + 160) = v130;
      v72 = v125;
      *(v70 + 64) = v124;
      *(v70 + 80) = v72;
      v73 = v127;
      *(v70 + 96) = v126;
      *(v70 + 112) = v73;
      v74 = v121;
      *v70 = v120;
      *(v70 + 16) = v74;
      v75 = v123;
      *(v70 + 32) = v122;
      *(v70 + 48) = v75;
      *(v63 + v61[7]) = v66;
      *(v63 + v61[8]) = v67;
      *(v63 + v61[9]) = v68;
      *(v63 + v61[10]) = v69;
      *(v63 + v61[11]) = 0;
    }

    else
    {
      sub_26F49B18C(v60, v96, type metadata accessor for VisualTranslationModel);
    }

    sub_26F49C978(v63, v97, type metadata accessor for VisualTranslationModel);
    v76 = v102;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v76;
    v78 = sub_26F45FF48(v98);
    v80 = v76[2];
    v81 = (v79 & 1) == 0;
    v82 = __OFADD__(v80, v81);
    v83 = v80 + v81;
    if (v82)
    {
      goto LABEL_32;
    }

    v84 = v79;
    if (v76[3] >= v83)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = v78;
        sub_26F3C77D4();
        v78 = v93;
      }
    }

    else
    {
      sub_26F3C6314(v83, isUniquelyReferenced_nonNull_native);
      v78 = sub_26F45FF48(v98);
      if ((v84 & 1) != (v85 & 1))
      {
        goto LABEL_34;
      }
    }

    v86 = v115;
    v87 = v119;
    v102 = v119;
    if (v84)
    {
      sub_26F49CF68(v97, v119[7] + v78 * v115, type metadata accessor for VisualTranslationModel);
      sub_26F499BA4(v105, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v117, &qword_2806E1750, &qword_26F4ABFA8);
    }

    else
    {
      v119[(v78 >> 6) + 8] |= 1 << v78;
      v88 = v78;
      v108((v87[6] + v78 * v106), v98, v30);
      sub_26F49C978(v97, v87[7] + v88 * v86, type metadata accessor for VisualTranslationModel);
      sub_26F499BA4(v105, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v117, &qword_2806E1750, &qword_26F4ABFA8);
      v89 = v87[2];
      v82 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v82)
      {
        goto LABEL_33;
      }

      v87[2] = v90;
    }

    v23 = v110;
    v19 = v109;
    v91 = *(v114 + 48);
    v92 = v98;
    v95(v98, v49);
    sub_26F499BA4(v92 + v91, type metadata accessor for VisualTranslationModel);
  }

LABEL_7:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      *(v101 + v100) = v102;

      return;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_26F4A04A8();
  __break(1u);
}

uint64_t sub_26F48BCAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1650, &qword_26F4AB9F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (qword_2806DE788 != -1)
  {
    swift_once();
  }

  v14 = sub_26F49DCA8();
  __swift_project_value_buffer(v14, qword_2806EA8A8);
  v15 = sub_26F49DC88();
  v16 = sub_26F49FDF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26F39E000, v15, v16, "User confirmed first use consent, continuing visual translation", v17, 2u);
    MEMORY[0x274391F70](v17, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = 0;

  sub_26F49DDB8();
  v18 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest;
  swift_beginAccess();
  sub_26F3B8DD4(v1 + v18, v6, &qword_2806E1650, &qword_26F4AB9F8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_26F3B6B4C(v6, &qword_2806E1650, &qword_26F4AB9F8);
  }

  sub_26F49C978(v6, v13, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);
  v20 = sub_26F49FC08();
  v21 = v24;
  (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
  sub_26F49B18C(v13, v10, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v1;
  sub_26F49C978(v10, v23 + v22, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);

  sub_26F405D00(0, 0, v21, &unk_26F4ABEE8, v23);

  return sub_26F499BA4(v13, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);
}

uint64_t sub_26F48C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_26F49D968();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F48C170, 0, 0);
}

uint64_t sub_26F48C170()
{
  v1 = *(v0 + 32);
  v2 = *v1;
  v3 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
  v4 = *(v3 + 20);
  v5 = *(v3 + 24);
  *(v0 + 80) = 1;
  sub_26F49D958();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_26F48C250;
  v7 = *(v0 + 56);

  return sub_26F48C80C(v2, v1 + v4, v1 + v5, (v0 + 80), v7);
}

uint64_t sub_26F48C250(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);

  v6 = (v5 + 8);
  if (v1)
  {
    v7 = v4[7];
    v8 = v4[5];

    (*v6)(v7, v8);
    v9 = sub_26F48C434;
  }

  else
  {
    v10 = v4[7];
    v11 = v4[5];
    v4[9] = a1;
    (*v6)(v10, v11);
    v9 = sub_26F48C3C8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26F48C3C8()
{
  **(v0 + 16) = *(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F48C434()
{
  **(v0 + 16) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F48C49C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_26F49D968();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 89) = *a4;

  return MEMORY[0x2822009F8](sub_26F48C56C, 0, 0);
}

uint64_t sub_26F48C56C(__n128 a1)
{
  *(v1 + 88) = *(v1 + 89);
  sub_26F49D958();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_26F48C620;
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_26F48C80C(v6, v5, v4, (v1 + 88), v3);
}

uint64_t sub_26F48C620(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  if (v1)
  {
    (*(v4[7] + 8))(v4[8], v4[6]);

    return MEMORY[0x2822009F8](sub_26F48C7A8, 0, 0);
  }

  else
  {
    (*(v4[7] + 8))(v4[8], v4[6]);

    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_26F48C7A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F48C80C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 424) = a5;
  *(v6 + 432) = v5;
  *(v6 + 408) = a2;
  *(v6 + 416) = a3;
  *(v6 + 400) = a1;
  type metadata accessor for TextDiagnosticsModel(0);
  *(v6 + 440) = swift_task_alloc();
  v8 = type metadata accessor for VisualTranslationModel(0);
  *(v6 + 448) = v8;
  *(v6 + 456) = *(v8 - 8);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  *(v6 + 488) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v6 + 496) = v9;
  *(v6 + 504) = *(v9 - 8);
  *(v6 + 512) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v6 + 520) = v10;
  *(v6 + 528) = *(v10 - 8);
  *(v6 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1650, &qword_26F4AB9F8);
  *(v6 + 544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 666) = *a4;

  return MEMORY[0x2822009F8](sub_26F48CAC0, 0, 0);
}

uint64_t sub_26F48CAC0()
{
  v50 = v0;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  v2 = v0[71];
  v4 = v0[51];
  v3 = v0[52];
  v5 = sub_26F49DCA8();
  v0[73] = v5;
  v0[74] = __swift_project_value_buffer(v5, qword_280F67ED0);
  sub_26F3B8DD4(v4, v1, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(v3, v2, &qword_2806DEFD8, &qword_26F4A3670);

  v6 = sub_26F49DC88();
  v7 = sub_26F49FDF8();
  if (os_log_type_enabled(v6, v7))
  {
    v46 = v7;
    v8 = v0[50];
    v9 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    buf = v9;
    *v9 = 134349570;
    if (v8 >> 62)
    {
      v10 = sub_26F4A00A8();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v0[72];
    v12 = v0[70];
    *(v9 + 4) = v10;

    *(v9 + 12) = 2082;
    sub_26F3B8DD4(v11, v12, &qword_2806DEFD8, &qword_26F4A3670);
    v13 = sub_26F49DAB8();
    v14 = *(v13 - 8);
    v44 = *(v14 + 48);
    v15 = v44(v12, 1, v13);
    v16 = v0[70];
    log = v6;
    if (v15 == 1)
    {
      sub_26F3B6B4C(v16, &qword_2806DEFD8, &qword_26F4A3670);
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v0[42] = sub_26F49D988();
      v0[43] = v21;
      v0[44] = 45;
      v0[45] = 0xE100000000000000;
      v0[46] = 95;
      v0[47] = 0xE100000000000000;
      sub_26F3BDC0C();
      v17 = sub_26F49FFF8();
      v18 = v22;

      (*(v14 + 8))(v16, v13);
    }

    v23 = v0[72];
    v24 = v0[71];
    v25 = v0[69];
    v0[32] = v17;
    v0[33] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1658, &unk_26F4ABA00);
    v26 = sub_26F49F938();
    v28 = v27;
    sub_26F3B6B4C(v23, &qword_2806DEFD8, &qword_26F4A3670);
    v29 = sub_26F3B38D0(v26, v28, &v49);

    *(buf + 14) = v29;
    *(buf + 11) = 2082;
    sub_26F3B8DD4(v24, v25, &qword_2806DEFD8, &qword_26F4A3670);
    if (v44(v25, 1, v13) == 1)
    {
      sub_26F3B6B4C(v0[69], &qword_2806DEFD8, &qword_26F4A3670);
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v32 = v13;
      v33 = v0[69];
      v0[36] = sub_26F49D988();
      v0[37] = v34;
      v0[38] = 45;
      v0[39] = 0xE100000000000000;
      v0[40] = 95;
      v0[41] = 0xE100000000000000;
      sub_26F3BDC0C();
      v30 = sub_26F49FFF8();
      v31 = v35;

      (*(v14 + 8))(v33, v32);
    }

    v36 = v0[71];
    v0[34] = v30;
    v0[35] = v31;
    v37 = sub_26F49F938();
    v39 = v38;
    sub_26F3B6B4C(v36, &qword_2806DEFD8, &qword_26F4A3670);
    v40 = sub_26F3B38D0(v37, v39, &v49);

    *(buf + 3) = v40;
    _os_log_impl(&dword_26F39E000, log, v46, "Got request to translate %{public}ld observations; sourceLocale: %{public}s; targetLocale: %{public}s", buf, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v45, -1, -1);
    MEMORY[0x274391F70](buf, -1, -1);
  }

  else
  {
    v19 = v0[72];
    v20 = v0[71];

    sub_26F3B6B4C(v20, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v19, &qword_2806DEFD8, &qword_26F4A3670);
  }

  v0[75] = _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(v0[50], 1, v0[51], v0[52]);
  v0[76] = sub_26F49FBD8();
  v0[77] = sub_26F49FBC8();
  v42 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48D0A4, v42, v41);
}

uint64_t sub_26F48D0A4()
{
  v1 = *(v0 + 432);

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_26F49DD98();
  *v3 = MEMORY[0x277D84F90];

  v2(v0 + 144, 0);

  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  *(v1 + v4) = MEMORY[0x277D84F98];

  return MEMORY[0x2822009F8](sub_26F48D1C4, 0, 0);
}

uint64_t sub_26F48D1C4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 83;
  v0[3] = sub_26F48D2F0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F48828C;
  v0[13] = &block_descriptor_12;
  v0[14] = v2;
  [v1 shouldPresentSystemFirstUseConsentWithDedicatedMachPort:1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F48D2F0()
{

  return MEMORY[0x2822009F8](sub_26F48D3D0, 0, 0);
}

uint64_t sub_26F48D3D0()
{
  v24 = v0;
  if (*(v0 + 664) == 1)
  {

    if (qword_2806DE788 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 584), qword_2806EA8A8);
    v1 = sub_26F49DC88();
    v2 = sub_26F49FDB8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_26F39E000, v1, v2, "Present first use experience and delay translation", v3, 2u);
      MEMORY[0x274391F70](v3, -1, -1);
    }

    v4 = *(v0 + 544);
    v5 = *(v0 + 432);
    v7 = *(v0 + 408);
    v6 = *(v0 + 416);
    v8 = *(v0 + 400);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 665) = 1;

    sub_26F49DDB8();
    v9 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
    sub_26F3B8DD4(v7, v4 + *(v9 + 20), &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B8DD4(v6, v4 + *(v9 + 24), &qword_2806DEFD8, &qword_26F4A3670);
    *v4 = v8;
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest;
    swift_beginAccess();

    sub_26F49CFD0(v4, v5 + v10, &qword_2806E1650, &qword_26F4AB9F8);
    swift_endAccess();

    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }

  else
  {
    v14 = *(v0 + 600);
    v15 = *(v0 + 666);
    v17 = *(v0 + 504);
    v16 = *(v0 + 512);
    v18 = *(v0 + 496);
    v19 = MEMORY[0x277D84F90];
    *(v0 + 384) = MEMORY[0x277D84F90];
    type metadata accessor for VisualTranslationService();
    v23 = v15;
    static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v14, 0, &v23, v16);

    sub_26F49FC58();
    (*(v17 + 8))(v16, v18);
    *(v0 + 624) = v19;
    v20 = swift_task_alloc();
    *(v0 + 632) = v20;
    *v20 = v0;
    v20[1] = sub_26F48D7DC;
    v21 = *(v0 + 520);
    v22 = *(v0 + 488);

    return MEMORY[0x2822005A8](v22, 0, 0, v21, v0 + 392);
  }
}

uint64_t sub_26F48D7DC()
{
  *(*v1 + 640) = v0;

  if (v0)
  {

    v2 = sub_26F48E08C;
  }

  else
  {
    v2 = sub_26F48D8F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F48D8F8()
{
  v37 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 448);
  if ((*(*(v0 + 456) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
    v35 = *(v0 + 624);

    v3 = *(v0 + 8);

    return v3(v35);
  }

  else
  {
    v5 = *(v0 + 472);
    v6 = *(v0 + 480);
    sub_26F49C978(v1, v6, type metadata accessor for VisualTranslationModel);
    sub_26F49B18C(v6, v5, type metadata accessor for VisualTranslationModel);
    v7 = type metadata accessor for VisualTranslationResult(0);
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid;
    v10 = sub_26F49D968();
    (*(*(v10 - 8) + 16))(&v8[v9], v5, v10);
    v11 = Array<A>.targetParagraph.getter(*(v5 + *(v2 + 28)));
    v12 = &v8[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string];
    *v12 = v11;
    v12[1] = v13;
    v8[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_isPassthrough] = sub_26F46DC20() & 1;
    v14 = (v5 + *(v2 + 20));
    *&v8[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft] = v14[1];
    *&v8[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight] = v14[2];
    *&v8[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft] = v14[3];
    *&v8[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight] = v14[4];
    *(v0 + 224) = v8;
    *(v0 + 232) = v7;
    objc_msgSendSuper2((v0 + 224), sel_init);
    v15 = sub_26F499BA4(v5, type metadata accessor for VisualTranslationModel);
    MEMORY[0x2743908C0](v15);
    if (*((*(v0 + 384) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 384) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26F49FB18();
    }

    sub_26F49FB38();
    *(v0 + 648) = *(v0 + 384);
    if (sub_26F46D23C())
    {
      *(v0 + 656) = sub_26F49FBC8();
      v17 = sub_26F49FB68();

      return MEMORY[0x2822009F8](sub_26F48DEE8, v17, v16);
    }

    else
    {
      sub_26F49B18C(*(v0 + 480), *(v0 + 464), type metadata accessor for VisualTranslationModel);
      v18 = sub_26F49DC88();
      v19 = sub_26F49FDC8();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 480);
      if (v20)
      {
        v23 = *(v0 + 464);
        v22 = *(v0 + 472);
        v24 = *(v0 + 440);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36 = v26;
        *v25 = 136315138;
        sub_26F49B18C(v23, v22, type metadata accessor for VisualTranslationModel);
        TextDiagnosticsModel.init(model:)(v22, v24);
        *(v0 + 240) = TextDiagnosticsModel.json.getter();
        *(v0 + 248) = v27;
        MEMORY[0x2743907E0](10, 0xE100000000000000);
        v28 = *(v0 + 240);
        v29 = *(v0 + 248);
        sub_26F499BA4(v24, type metadata accessor for TextDiagnosticsModel);
        sub_26F499BA4(v23, type metadata accessor for VisualTranslationModel);
        v30 = sub_26F3B38D0(v28, v29, &v36);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_26F39E000, v18, v19, "No translation for %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x274391F70](v26, -1, -1);
        MEMORY[0x274391F70](v25, -1, -1);
      }

      else
      {
        v31 = *(v0 + 464);

        sub_26F499BA4(v31, type metadata accessor for VisualTranslationModel);
      }

      sub_26F499BA4(v21, type metadata accessor for VisualTranslationModel);
      *(v0 + 624) = *(v0 + 648);
      v32 = swift_task_alloc();
      *(v0 + 632) = v32;
      *v32 = v0;
      v32[1] = sub_26F48D7DC;
      v33 = *(v0 + 520);
      v34 = *(v0 + 488);

      return MEMORY[0x2822005A8](v34, 0, 0, v33, v0 + 392);
    }
  }
}

uint64_t sub_26F48DEE8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 432);

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_26F49F5F8();
  sub_26F49E1F8();

  return MEMORY[0x2822009F8](sub_26F48DFBC, 0, 0);
}

uint64_t sub_26F48DFBC()
{
  sub_26F499BA4(v0[60], type metadata accessor for VisualTranslationModel);
  v0[78] = v0[81];
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_26F48D7DC;
  v2 = v0[65];
  v3 = v0[61];

  return MEMORY[0x2822005A8](v3, 0, 0, v2, v0 + 49);
}

uint64_t sub_26F48E08C()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26F48E1BC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_26F49D968();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 81) = *a4;

  return MEMORY[0x2822009F8](sub_26F48E28C, 0, 0);
}

uint64_t sub_26F48E28C(__n128 a1)
{
  *(v1 + 80) = *(v1 + 81);
  sub_26F49D958();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_26F48E340;
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_26F48E498(v6, v5, v4, (v1 + 80), v3);
}

uint64_t sub_26F48E340()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26F48E498(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 208) = a5;
  *(v6 + 216) = v5;
  *(v6 + 192) = a2;
  *(v6 + 200) = a3;
  *(v6 + 184) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228);
  *(v6 + 224) = swift_task_alloc();
  v8 = type metadata accessor for VisualTranslationModel(0);
  *(v6 + 232) = v8;
  *(v6 + 240) = *(v8 - 8);
  *(v6 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  *(v6 + 256) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  *(v6 + 264) = v9;
  *(v6 + 272) = *(v9 - 8);
  *(v6 + 280) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v6 + 288) = v10;
  *(v6 + 296) = *(v10 - 8);
  *(v6 + 304) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v6 + 312) = v11;
  *(v6 + 320) = *(v11 - 8);
  *(v6 + 328) = swift_task_alloc();
  v12 = sub_26F49DAB8();
  *(v6 + 336) = v12;
  *(v6 + 344) = *(v12 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 544) = *a4;

  return MEMORY[0x2822009F8](sub_26F48E77C, 0, 0);
}

uint64_t sub_26F48E77C()
{
  v34 = v0;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[24];
  v5 = v0[25];
  v7 = sub_26F49DCA8();
  v0[46] = __swift_project_value_buffer(v7, qword_280F67ED0);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);

  v9 = sub_26F49DC88();
  v10 = sub_26F49FDC8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[44];
  v12 = v0[45];
  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[23];
  if (v11)
  {
    v31 = v10;
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 134218498;
    *(v17 + 4) = *(v16 + 16);

    *(v17 + 12) = 2082;
    sub_26F49AAC4(&unk_280F66398, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v18 = sub_26F4A0428();
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v12, v15);
    v22 = sub_26F3B38D0(v18, v20, &v33);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    v23 = sub_26F4A0428();
    v25 = v24;
    v21(v13, v15);
    v26 = sub_26F3B38D0(v23, v25, &v33);

    *(v17 + 24) = v26;
    _os_log_impl(&dword_26F39E000, v9, v31, "Translate %ld items from source %{public}s to target %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v32, -1, -1);
    MEMORY[0x274391F70](v17, -1, -1);
  }

  else
  {

    v27 = *(v14 + 8);
    v27(v13, v15);
    v27(v12, v15);
  }

  v0[47] = sub_26F49FBD8();
  v0[48] = sub_26F49FBC8();
  v29 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48EAC8, v29, v28);
}

uint64_t sub_26F48EAC8()
{
  v1 = v0[27];

  v2 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  v0[49] = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v0[50] = *(v1 + v2);

  return MEMORY[0x2822009F8](sub_26F48EB64, 0, 0);
}

uint64_t sub_26F48EB64()
{
  v1 = v0[25].n128_u64[0];
  v2 = v0[11].n128_i64[1];
  v3 = swift_task_alloc();
  v4 = v0[12];
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  sub_26F46C864(MEMORY[0x277D84F98], sub_26F475C90, v4, v5, v3, v2);
  v7 = v6;
  v0[25].n128_u64[1] = v6;

  sub_26F499C20(v7);
  v0[26].n128_u64[0] = v8;
  if (v8)
  {

    v0[26].n128_u64[1] = sub_26F49FBC8();
    v9 = sub_26F49FB68();
    v11 = v10;
    v12 = sub_26F48ED04;
  }

  else if (*(v0[11].n128_u64[1] + 16))
  {
    v0[27].n128_u64[0] = sub_26F49FBC8();
    v9 = sub_26F49FB68();
    v11 = v13;
    v12 = sub_26F48EE18;
  }

  else
  {

    v0[32].n128_u64[1] = sub_26F49FBC8();
    v9 = sub_26F49FB68();
    v11 = v14;
    v12 = sub_26F48FB98;
  }

  return MEMORY[0x2822009F8](v12, v9, v11);
}

uint64_t sub_26F48ED04()
{
  v1 = v0[52];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[22] = v1;

  sub_26F49DDB8();

  v2 = v0[1];

  return v2();
}

uint64_t sub_26F48EE18()
{
  v1 = *(v0 + 408);

  sub_26F48B22C(v1);

  return MEMORY[0x2822009F8](sub_26F48EE98, 0, 0);
}

uint64_t sub_26F48EE98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1518, &qword_26F4AB488);
  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  *v3 = v0;
  v3[1] = sub_26F48EF94;
  v4 = *(v0 + 216);

  return MEMORY[0x282200600](v0 + 152, v1, v2, 0, 0, &unk_26F4ABA28, v4, v1);
}

uint64_t sub_26F48EF94()
{

  return MEMORY[0x2822009F8](sub_26F48F090, 0, 0);
}

uint64_t sub_26F48F090(uint64_t a1)
{
  v1[56] = v1[19];
  v1[57] = sub_26F49FBC8();
  v3 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48F124, v3, v2);
}

uint64_t sub_26F48F124()
{
  v1 = *(v0 + 448);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 160) = v1;

  sub_26F49DDB8();

  return MEMORY[0x2822009F8](sub_26F48F1E4, 0, 0);
}

uint64_t sub_26F48F1E4(uint64_t a1)
{
  v1[58] = *(v1[27] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_translationInProgressModels);
  v1[59] = sub_26F49FBC8();
  v3 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48F284, v3, v2);
}

uint64_t sub_26F48F284()
{
  v1 = v0[49];
  v2 = v0[27];

  v0[60] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_26F48F304, 0, 0);
}

uint64_t sub_26F48F304()
{
  v10 = v0;
  v1 = v0[60];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[30];
    v4 = sub_26F497184(*(v1 + 16), 0, &qword_2806E0120, &qword_26F4A6650, type metadata accessor for VisualTranslationModel);
    sub_26F499820(&v9, v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, v1);
    v6 = v5;
    sub_26F3C8E34(v9);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[61] = v4;
  v7 = v0[58];

  return MEMORY[0x2822009F8](sub_26F48F40C, v7, 0);
}

uint64_t sub_26F48F40C()
{
  *(v0 + 496) = sub_26F4811D4(*(v0 + 488));

  return MEMORY[0x2822009F8](sub_26F48F488, 0, 0);
}

uint64_t sub_26F48F488()
{
  v1 = *(v0 + 496);
  v13 = *(v0 + 544);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v15 = *(v0 + 288);
  v5 = *(v0 + 272);
  v14 = *(v0 + 264);
  v6 = *(v0 + 208);
  v7 = sub_26F48A0C8();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v8 + 32) = v13;
  *(v8 + 40) = v6;
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v14);
  sub_26F49FD08();

  sub_26F49FC58();
  (*(v3 + 8))(v2, v15);
  v9 = swift_task_alloc();
  *(v0 + 504) = v9;
  *v9 = v0;
  v9[1] = sub_26F48F634;
  v10 = *(v0 + 312);
  v11 = *(v0 + 256);

  return MEMORY[0x2822005A8](v11, 0, 0, v10, v0 + 168);
}

uint64_t sub_26F48F634()
{

  if (v0)
  {
    v1 = sub_26F48FCF4;
  }

  else
  {
    v1 = sub_26F48F744;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26F48F744()
{
  v1 = v0[32];
  if ((*(v0[30] + 48))(v1, 1, v0[29]) == 1)
  {
    (*(v0[40] + 8))(v0[41], v0[39]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_26F49C978(v1, v0[31], type metadata accessor for VisualTranslationModel);
    if (sub_26F46D23C())
    {
      v0[64] = sub_26F49FBC8();
      v5 = sub_26F49FB68();

      return MEMORY[0x2822009F8](sub_26F48F994, v5, v4);
    }

    else
    {
      sub_26F499BA4(v0[31], type metadata accessor for VisualTranslationModel);
      v6 = swift_task_alloc();
      v0[63] = v6;
      *v6 = v0;
      v6[1] = sub_26F48F634;
      v7 = v0[39];
      v8 = v0[32];

      return MEMORY[0x2822005A8](v8, 0, 0, v7, v0 + 21);
    }
  }
}

uint64_t sub_26F48F994()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 248);

  sub_26F48A444(v2);

  return MEMORY[0x2822009F8](sub_26F48FA18, v1, 0);
}

uint64_t sub_26F48FA18()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  swift_beginAccess();
  sub_26F498FE8(v1, v2);
  sub_26F3B6B4C(v2, &qword_2806E1470, &qword_26F4AB228);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F48FAD0, 0, 0);
}

uint64_t sub_26F48FAD0()
{
  sub_26F499BA4(v0[31], type metadata accessor for VisualTranslationModel);
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_26F48F634;
  v2 = v0[39];
  v3 = v0[32];

  return MEMORY[0x2822005A8](v3, 0, 0, v2, v0 + 21);
}

uint64_t sub_26F48FB98()
{
  v1 = v0[49];
  v2 = v0[27];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_26F49DD98();
  *v4 = MEMORY[0x277D84F90];

  v3(v0 + 6, 0);

  *(v2 + v1) = MEMORY[0x277D84F98];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26F48FCF4()
{
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[21];
  v0[66] = v1;
  v2 = v1;
  v3 = sub_26F49DC88();
  v4 = sub_26F49FDD8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = sub_26F49D7E8();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_26F39E000, v3, v4, "Failed to translate in stream: %@", v5, 0xCu);
    sub_26F3B6B4C(v6, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v6, -1, -1);
    MEMORY[0x274391F70](v5, -1, -1);
  }

  v8 = v0[58];

  return MEMORY[0x2822009F8](sub_26F48FE58, v8, 0);
}

uint64_t sub_26F48FE58()
{
  v1 = *(v0 + 464);
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x277D84FA0];

  return MEMORY[0x2822009F8](sub_26F48FEE4, 0, 0);
}

uint64_t sub_26F48FEE4(uint64_t a1)
{
  *(v1 + 536) = sub_26F49FBC8();
  v3 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48FF70, v3, v2);
}

uint64_t sub_26F48FF70()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 216);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_26F49DD98();
  *v4 = MEMORY[0x277D84F90];

  v3(v0 + 16, 0);

  *(v2 + v1) = MEMORY[0x277D84F98];

  return MEMORY[0x2822009F8](sub_26F490078, 0, 0);
}

uint64_t sub_26F490078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F490144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1740, &qword_26F4ABF98);
  v3[25] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18);
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1748, &qword_26F4ABFA0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v6 = sub_26F49D968();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  v3[40] = v7;
  v8 = *(v7 - 8);
  v3[41] = v8;
  v3[42] = *(v8 + 64);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v9 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v3[46] = v9;
  v3[47] = *(v9 + 64);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F49046C, 0, 0);
}

uint64_t sub_26F49046C()
{
  v0[19] = MEMORY[0x277D84FA0];
  v0[50] = sub_26F49FBD8();
  v0[51] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F490510, v2, v1);
}

uint64_t sub_26F490510()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *(v0 + 416) = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_26F4905D0, 0, 0);
}

uint64_t sub_26F4905D0()
{
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 296);
    v33 = **(v0 + 184);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = v1 + v5;
    v30 = (v4 + 8);
    v31 = (v4 + 16);
    v32 = v5;
    v28 = *(v3 + 72);
    v29 = (*(v0 + 376) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v35 = v6;
      v36 = v2;
      v9 = *(v0 + 384);
      v10 = *(v0 + 392);
      v11 = *(v0 + 304);
      v12 = *(v0 + 312);
      v14 = *(v0 + 280);
      v13 = *(v0 + 288);
      v15 = *(v0 + 272);
      v34 = *(v0 + 192);
      sub_26F49B18C(v6, v10, type metadata accessor for VisualTranslationModel);
      (*v31)(v11, v10, v13);
      sub_26F485190(v12, v11);
      (*v30)(v12, v13);
      v16 = sub_26F49FC08();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v14, 1, 1, v16);
      sub_26F49C978(v10, v9, type metadata accessor for VisualTranslationModel);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      v19 = (v18 + 16);
      *(v18 + 24) = 0;
      sub_26F49C978(v9, v18 + v32, type metadata accessor for VisualTranslationModel);
      *(v18 + v29) = v34;
      sub_26F3B8DD4(v14, v15, &unk_2806E0710, &qword_26F4A60A0);
      LODWORD(v13) = (*(v17 + 48))(v15, 1, v16);

      v20 = *(v0 + 272);
      if (v13 == 1)
      {
        sub_26F3B6B4C(*(v0 + 272), &unk_2806E0710, &qword_26F4A60A0);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_26F49FBF8();
        (*(v17 + 8))(v20, v16);
        if (*v19)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_26F49FB68();
          v22 = v23;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_10:
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_26F4ABFC0;
      *(v24 + 24) = v18;

      if (v22 | v21)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v22;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 280);
      *(v0 + 80) = 1;
      *(v0 + 88) = v7;
      *(v0 + 96) = v33;
      swift_task_create();

      sub_26F3B6B4C(v8, &unk_2806E0710, &qword_26F4A60A0);
      v6 = v35 + v28;
      v2 = v36 - 1;
    }

    while (v36 != 1);
  }

  *(v0 + 424) = sub_26F49FBC8();
  v26 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F4909E0, v26, v25);
}

uint64_t sub_26F4909E0()
{
  v1 = *(v0 + 192);

  v2 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  *(v0 + 432) = *(v1 + v2);

  return MEMORY[0x2822009F8](sub_26F490A78, 0, 0);
}

uint64_t sub_26F490A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 432);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v55 = *(v3 + 432);
  v9 = -1 << *(v55 + 32);
  v53 = *(v3 + 368);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v49 = *(v3 + 328);
  v52 = *(v3 + 320);
  v12 = (63 - v9) >> 6;
  v50 = v12;
  v51 = *(v3 + 296);
  v54 = v7;
  if (v11)
  {
    while (1)
    {
LABEL_9:
      v15 = *(v3 + 352);
      v14 = *(v3 + 360);
      v16 = *(v3 + 288);
      v17 = __clz(__rbit64(v11)) | (v4 << 6);
      v57 = *(v51 + 72);
      v56 = *(v51 + 16);
      v56(v14, *(v55 + 48) + v57 * v17, v16);
      v18 = *(v55 + 56) + *(v53 + 72) * v17;
      v19 = *(v52 + 48);
      sub_26F49B18C(v18, v14 + v19, type metadata accessor for VisualTranslationModel);
      v20 = *(v52 + 48);
      (*(v51 + 32))(v15, v14, v16);
      sub_26F49C978(v14 + v19, v15 + v20, type metadata accessor for VisualTranslationModel);
      v21 = *(v3 + 152);
      if (*(v21 + 16))
      {
        sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v22 = sub_26F49F818();
        v23 = -1 << *(v21 + 32);
        v24 = v22 & ~v23;
        if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          do
          {
            v26 = *(v3 + 312);
            v27 = *(v3 + 288);
            v56(v26, *(v21 + 48) + v24 * v57, v27);
            sub_26F49AAC4(&qword_2806E1128, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v28 = sub_26F49F868();
            (*(v51 + 8))(v26, v27);
            if (v28)
            {
              goto LABEL_23;
            }

            v24 = (v24 + 1) & v25;
          }

          while (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
        }
      }

      v30 = *(v3 + 344);
      v29 = *(v3 + 352);
      v31 = *(v3 + 264);
      v58 = *(v3 + 256);
      v32 = sub_26F49FC08();
      v33 = *(v32 - 8);
      (*(v33 + 56))(v31, 1, 1, v32);
      sub_26F3B8DD4(v29, v30, &qword_2806E1750, &qword_26F4ABFA8);
      v34 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v36 = (v35 + 16);
      *(v35 + 24) = 0;
      sub_26F3BBAEC(v30, v35 + v34, &qword_2806E1750, &qword_26F4ABFA8);
      sub_26F3B8DD4(v31, v58, &unk_2806E0710, &qword_26F4A60A0);
      v37 = (*(v33 + 48))(v58, 1, v32);
      v38 = *(v3 + 256);
      if (v37 == 1)
      {
        sub_26F3B6B4C(*(v3 + 256), &unk_2806E0710, &qword_26F4A60A0);
        if (!*v36)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_26F49FBF8();
        (*(v33 + 8))(v38, v32);
        if (!*v36)
        {
LABEL_18:
          v39 = 0;
          v41 = 0;
          goto LABEL_19;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v39 = sub_26F49FB68();
      v41 = v40;
      swift_unknownObjectRelease();
LABEL_19:
      v42 = **(v3 + 184);
      v43 = swift_allocObject();
      *(v43 + 16) = &unk_26F4ABFD8;
      *(v43 + 24) = v35;

      if (v41 | v39)
      {
        v44 = v3 + 48;
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = v39;
        *(v3 + 72) = v41;
      }

      else
      {
        v44 = 0;
      }

      v45 = *(v3 + 264);
      *(v3 + 128) = 1;
      *(v3 + 136) = v44;
      *(v3 + 144) = v42;
      swift_task_create();

      sub_26F3B6B4C(v45, &unk_2806E0710, &qword_26F4A60A0);
LABEL_23:
      v11 &= v11 - 1;
      a1 = sub_26F3B6B4C(*(v3 + 352), &qword_2806E1750, &qword_26F4ABFA8);
      v7 = v54;
      v12 = v50;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](a1, a2, a3);
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v13);
    ++v4;
    if (v11)
    {
      v4 = v13;
      goto LABEL_9;
    }
  }

  *(v3 + 168) = MEMORY[0x277D84F90];
  sub_26F49FB98();
  v46 = sub_26F3B18CC(&qword_2806E1758, &qword_2806E1748, &qword_26F4ABFA0, MEMORY[0x277D856C0]);
  v47 = swift_task_alloc();
  *(v3 + 440) = v47;
  *v47 = v3;
  v47[1] = sub_26F4910EC;
  a2 = *(v3 + 232);
  a1 = *(v3 + 200);
  a3 = v46;

  return MEMORY[0x282200308](a1, a2, a3);
}

uint64_t sub_26F4910EC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[30];
    v3 = v2[31];
    v5 = v2[29];

    (*(v4 + 8))(v3, v5);

    v6 = j__CGPointMake;
  }

  else
  {
    v6 = sub_26F49123C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F49123C()
{
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    v2 = v0[22];
    (*(v0[30] + 8))(v0[31], v0[29]);
    sub_26F3B6B4C(v1, &qword_2806E1740, &qword_26F4ABF98);
    *v2 = v0[21];

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_26F3BBAEC(v1, v0[28], &qword_2806E1660, &qword_26F4ABA18);
    v5 = swift_task_alloc();
    v0[56] = v5;
    *v5 = v0;
    v5[1] = sub_26F491454;
    v6 = v0[28];

    return sub_26F491B2C((v0 + 21), v6);
  }
}

uint64_t sub_26F491454()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[30];
    v3 = v2[31];
    v6 = v2[28];
    v5 = v2[29];

    sub_26F3B6B4C(v6, &qword_2806E1660, &qword_26F4ABA18);
    (*(v4 + 8))(v3, v5);

    v7 = CGPointMake;
  }

  else
  {
    sub_26F3B6B4C(v2[28], &qword_2806E1660, &qword_26F4ABA18);
    v7 = sub_26F4915D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26F4915D4()
{
  v1 = sub_26F3B18CC(&qword_2806E1758, &qword_2806E1748, &qword_26F4ABFA0, MEMORY[0x277D856C0]);
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_26F4910EC;
  v3 = v0[29];
  v4 = v0[25];

  return MEMORY[0x282200308](v4, v3, v1);
}

uint64_t sub_26F4916AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26F4916D0, 0, 0);
}

uint64_t sub_26F4916D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 104) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18) + 48);
  sub_26F49B18C(v2, v1, type metadata accessor for VisualTranslationModel);
  v3 = type metadata accessor for VisualTranslationModel(0);
  *(v0 + 64) = v3;
  v4 = *(v3 - 8);
  *(v0 + 72) = v4;
  v5 = *(v4 + 56);
  *(v0 + 80) = v5;
  *(v0 + 88) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 0, 1, v3);
  sub_26F49FBD8();
  *(v0 + 96) = sub_26F49FBC8();
  v7 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F491808, v7, v6);
}

uint64_t sub_26F491808()
{
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 48);

    v5 = sub_26F45FF48(v4);
    if (v6)
    {
      sub_26F49B18C(*(v3 + 56) + *(*(v0 + 72) + 72) * v5, *(v0 + 40) + *(v0 + 104), type metadata accessor for VisualTranslationModel);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  (*(v0 + 80))(*(v0 + 40) + *(v0 + 104), v7, 1, *(v0 + 64));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26F49191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4919BC, 0, 0);
}

uint64_t sub_26F4919BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18) + 48);
  v6 = type metadata accessor for VisualTranslationModel(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_26F3B8DD4(v3, v1, &qword_2806E1750, &qword_26F4ABFA8);
  sub_26F49C978(v1 + *(v2 + 48), v4 + v5, type metadata accessor for VisualTranslationModel);
  v7(v4 + v5, 0, 1, v6);
  v8 = sub_26F49D968();
  (*(*(v8 - 8) + 8))(v1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26F491B2C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for VisualTranslationModel(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F491CA8, 0, 0);
}

uint64_t sub_26F491CA8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 40);
  v52 = *(v0 + 104);
  v53 = *(v0 + 32);
  v6 = *(v0 + 24);
  sub_26F3B8DD4(v6, v3, &qword_2806E1660, &qword_26F4ABA18);
  v7 = *(v4 + 48);
  sub_26F3BBAEC(v3, v1, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B6B4C(v3 + v7, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B8DD4(v6, v3, &qword_2806E1660, &qword_26F4ABA18);
  sub_26F3BBAEC(v3 + *(v4 + 48), v2, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B6B4C(v3, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B8DD4(v2, v52, &qword_2806E0908, &qword_26F4AB220);
  v8 = *(v5 + 48);
  v9 = v8(v52, 1, v53);
  v10 = *(v0 + 120);
  if (v9 == 1)
  {
    v11 = *(v0 + 104);
    sub_26F3B6B4C(*(v0 + 112), &qword_2806E0908, &qword_26F4AB220);
    sub_26F3B6B4C(v10, &qword_2806E0908, &qword_26F4AB220);
    sub_26F3B6B4C(v11, &qword_2806E0908, &qword_26F4AB220);
    goto LABEL_21;
  }

  v12 = *(v0 + 96);
  v13 = *(v0 + 32);
  sub_26F49C978(*(v0 + 104), *(v0 + 72), type metadata accessor for VisualTranslationModel);
  sub_26F3B8DD4(v10, v12, &qword_2806E0908, &qword_26F4AB220);
  v14 = v8(v12, 1, v13);
  v15 = *(v0 + 96);
  if (v14 == 1)
  {
    sub_26F3B6B4C(v15, &qword_2806E0908, &qword_26F4AB220);
  }

  else
  {
    sub_26F49C978(v15, *(v0 + 64), type metadata accessor for VisualTranslationModel);
    if ((sub_26F46D23C() & 1) == 0)
    {
      v27 = *(v0 + 72);
      v28 = *(v0 + 32);
      v29 = *(v28 + 24);
      v30 = (v27 + *(v28 + 20));
      v64 = *(v30 + 20);
      v62 = v30[8];
      v63 = v30[9];
      v58 = v30[4];
      v59 = v30[5];
      v60 = v30[6];
      v61 = v30[7];
      v54 = *v30;
      v55 = v30[1];
      v56 = v30[2];
      v57 = v30[3];
      sub_26F49D8F8();
      v32 = *(v0 + 56);
      v31 = *(v0 + 64);
      if (v33 <= 0.0)
      {
        v34 = *(v0 + 32);
        v35 = sub_26F49D968();
        (*(*(v35 - 8) + 16))(v32, v31, v35);
        v36 = *(v28 + 24);
        v37 = sub_26F49D918();
        (*(*(v37 - 8) + 16))(v32 + v36, v27 + v29, v37);
        v38 = *(v31 + v34[7]);
        v39 = *(v31 + v34[8]);
        v40 = *(v31 + v34[9]);
        v41 = *(v31 + v34[10]);
        v42 = v32 + *(v28 + 20);
        *v42 = v54;
        *(v42 + 16) = v55;
        *(v42 + 64) = v58;
        *(v42 + 80) = v59;
        *(v42 + 32) = v56;
        *(v42 + 48) = v57;
        *(v42 + 160) = v64;
        *(v42 + 128) = v62;
        *(v42 + 144) = v63;
        *(v42 + 96) = v60;
        *(v42 + 112) = v61;
        *(v32 + v34[7]) = v38;
        *(v32 + v34[8]) = v39;
        *(v32 + v34[9]) = v40;
        *(v32 + v34[10]) = v41;
        *(v32 + v34[11]) = 0;
      }

      else
      {
        sub_26F49B18C(*(v0 + 64), *(v0 + 56), type metadata accessor for VisualTranslationModel);
      }

      v17 = **(v0 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_26F44650C(0, v17[2] + 1, 1, v17);
      }

      v44 = v17[2];
      v43 = v17[3];
      if (v44 >= v43 >> 1)
      {
        v17 = sub_26F44650C((v43 > 1), v44 + 1, 1, v17);
      }

      v46 = *(v0 + 112);
      v45 = *(v0 + 120);
      v47 = *(v0 + 72);
      v48 = *(v0 + 56);
      v49 = *(v0 + 40);
      v24 = *(v0 + 16);
      sub_26F499BA4(*(v0 + 64), type metadata accessor for VisualTranslationModel);
      sub_26F499BA4(v47, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v46, &qword_2806E0908, &qword_26F4AB220);
      sub_26F3B6B4C(v45, &qword_2806E0908, &qword_26F4AB220);
      v17[2] = v44 + 1;
      v25 = v17 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44;
      v26 = v48;
      goto LABEL_20;
    }

    sub_26F499BA4(*(v0 + 64), type metadata accessor for VisualTranslationModel);
  }

  v16 = *(v0 + 16);
  sub_26F49B18C(*(v0 + 72), *(v0 + 48), type metadata accessor for VisualTranslationModel);
  v17 = *v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_26F44650C(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_26F44650C((v18 > 1), v19 + 1, 1, v17);
  }

  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v23 = *(v0 + 40);
  v22 = *(v0 + 48);
  v24 = *(v0 + 16);
  sub_26F499BA4(*(v0 + 72), type metadata accessor for VisualTranslationModel);
  sub_26F3B6B4C(v21, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B6B4C(v20, &qword_2806E0908, &qword_26F4AB220);
  v17[2] = v19 + 1;
  v25 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19;
  v26 = v22;
LABEL_20:
  sub_26F49C978(v26, v25, type metadata accessor for VisualTranslationModel);
  *v24 = v17;
LABEL_21:

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_26F492310(double a1)
{
  v2 = v1;
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable, &protocol conformance descriptor for VisualTranslationErrorViewModel);
  sub_26F49DD48();
  sub_26F49DD58();

  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  if (a1 <= 0.0)
  {
    a1 = COERCE_DOUBLE(1);
  }

  result = swift_beginAccess();
  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_26F4923DC()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent, v4);
  sub_26F3ACE98(*(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler), *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8));

  return sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest, &qword_2806E1650, &qword_26F4AB9F8);
}

uint64_t VisualTranslationObservable.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel, &qword_2806E1200, &qword_26F4AA5C8);
  v5 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent, v8);
  sub_26F3ACE98(*(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler), *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8));

  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest, &qword_2806E1650, &qword_26F4AB9F8);
  return v0;
}

uint64_t VisualTranslationObservable.__deallocating_deinit()
{
  VisualTranslationObservable.deinit();

  return swift_deallocClassInstance();
}

uint64_t SecureHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_26F499A84(a1);
  (*(*(*(v3 + class metadata base offset for SecureHostingController) - 8) + 8))(a1);
  return v4;
}

void *SecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for SecureHostingController);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = sub_26F49E848();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id SecureHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SecureHostingController.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for SecureHostingController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for SecureHostingController + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id SecureHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for SecureHostingController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for SecureHostingController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

Swift::Void __swiftcall VisualTranslationViewBridge.setPresentationAnchor(rect:contentRect:)(__C::CGRect rect, __C::CGRect contentRect)
{
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v7 = rect.size.height;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  v14 = sub_26F49FC08();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0.0;
  v15[3] = 0.0;
  *(v15 + 4) = v2;
  v15[5] = v10;
  v15[6] = v9;
  v15[7] = v8;
  v15[8] = v7;
  v15[9] = x;
  v15[10] = y;
  v15[11] = width;
  v15[12] = height;
  v16 = v2;
  sub_26F40570C(0, 0, v13, &unk_26F4ABA40, v15);
}

uint64_t sub_26F492C9C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 72) = a7;
  *(v12 + 80) = a8;
  *(v12 + 56) = a5;
  *(v12 + 64) = a6;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 16) = a12;
  return MEMORY[0x2822009F8](sub_26F492CCC, 0, 0);
}

uint64_t sub_26F492CCC()
{
  v0[11] = *(v0[2] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  sub_26F49FBD8();
  v0[12] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F492D74, v2, v1);
}

uint64_t sub_26F492D74()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  sub_26F4685E0(v8, v7, v6, v5, v4, v3, v2, v1);
  v9 = *(v0 + 1);

  return v9();
}

uint64_t sub_26F492F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26F492FA4, 0, 0);
}

uint64_t sub_26F492FA4()
{
  v1 = v0[4];
  v0[5] = *(v0[2] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  if (v1)
  {
    v2 = v0[3];
    sub_26F45A980();
    v3 = swift_allocError();
    *v4 = v2;
    *(v4 + 8) = v1;
  }

  else
  {
    v3 = 0;
  }

  v0[6] = v3;
  sub_26F49FBD8();

  v0[7] = sub_26F49FBC8();
  v6 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F4930A0, v6, v5);
}

uint64_t sub_26F4930A0()
{
  v1 = *(v0 + 48);

  sub_26F468204(v1);

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall VisualTranslationViewBridge.dismissErrorUI()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_26F49FC08();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_26F40570C(0, 0, v3, &unk_26F4ABA50, v5);
}

uint64_t sub_26F493218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4932C0, 0, 0);
}

uint64_t sub_26F4932C0()
{
  v0[5] = *(v0[2] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  sub_26F49FBD8();
  v0[6] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F493368, v2, v1);
}

uint64_t sub_26F493368()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = type metadata accessor for TranslationUnavailableModel(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3B8DD4(v1, v2, &qword_2806E1200, &qword_26F4AA5C8);

  sub_26F49DDB8();
  sub_26F3B6B4C(v1, &qword_2806E1200, &qword_26F4AA5C8);

  v4 = v0[1];

  return v4();
}

uint64_t VisualTranslationViewBridge.dismissHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_26F3ACF68(*v1, v1[1]);
  return v2;
}

uint64_t VisualTranslationViewBridge.dismissHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26F3ACE98(v6, v7);
}

uint64_t sub_26F493804@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26F435DA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26F3ACF68(v4, v5);
}

uint64_t sub_26F4938A4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26F435D9C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26F3ACF68(v3, v4);
  return sub_26F3ACE98(v8, v9);
}

id VisualTranslationViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *VisualTranslationViewBridge.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable;
  type metadata accessor for VisualTranslationObservable(0);
  swift_allocObject();
  *&v0[v2] = VisualTranslationObservable.init()();
  v3 = &v0[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController] = 0;
  v0[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_optimizedForExtendedExperience] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_init);
  v5 = *&v4[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v5 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v8 = *(v5 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v9 = *(v5 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8);
  *v7 = sub_26F49D084;
  v7[1] = v6;

  sub_26F3ACE98(v8, v9);

  return v4;
}

char *VisualTranslationViewBridge.__allocating_init(optimizedForExtendedExperience:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return VisualTranslationViewBridge.init(optimizedForExtendedExperience:)(v2);
}

char *VisualTranslationViewBridge.init(optimizedForExtendedExperience:)(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable;
  type metadata accessor for VisualTranslationObservable(0);
  swift_allocObject();
  *&v1[v4] = VisualTranslationObservable.init()();
  v5 = &v1[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController] = 0;
  v1[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_optimizedForExtendedExperience] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = *&v6[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v7 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v10 = *(v7 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v11 = *(v7 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8);
  *v9 = sub_26F49ACE4;
  v9[1] = v8;

  sub_26F3ACE98(v10, v11);

  return v6;
}

void sub_26F493CB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      sub_26F3ACF68(v4, v5);

      v4();
      sub_26F3ACE98(v4, v5);
    }

    else
    {
    }
  }
}

id sub_26F493D60()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController);
  }

  else
  {
    type metadata accessor for VisualTranslationObservable(0);
    sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable, &protocol conformance descriptor for VisualTranslationErrorViewModel);

    sub_26F49E288();
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1738, &qword_26F4ABF90));
    v5 = v0;
    v6 = sub_26F49E858();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t VisualTranslationView.init(observable:options:systemTranslationDismissHandler:)@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a2;
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable, &protocol conformance descriptor for VisualTranslationErrorViewModel);
  result = sub_26F49E288();
  *a5 = result;
  a5[1] = v10;
  a5[2] = v8;
  a5[3] = a3;
  a5[4] = a4;
  return result;
}

id VisualTranslationViewBridge.view.getter()
{
  v0 = sub_26F493D60();
  v1 = [v0 view];

  return v1;
}

double VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v30 = a4;
  v31 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_26F49FC08();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26F3B8DD4(a2, v13, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(a3, v10, &qword_2806DEFD8, &qword_26F4A3670);
  v19 = *(v8 + 80);
  v20 = (v19 + 48) & ~v19;
  v21 = (v9 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v23 = v29;
  v22[4] = v18;
  v22[5] = v23;
  sub_26F3BBAEC(v13, v22 + v20, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3BBAEC(v10, v22 + v21, &qword_2806DEFD8, &qword_26F4A3670);
  v24 = (v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v30;
  v25 = v31;
  *v24 = v30;
  v24[1] = v25;

  sub_26F3ACF68(v26, v25);
  sub_26F40570C(0, 0, v16, &unk_26F4ABA68, v22);

  return result;
}

uint64_t sub_26F49435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[44] = a8;
  v8[45] = v12;
  v8[42] = a6;
  v8[43] = a7;
  v8[40] = a4;
  v8[41] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v8[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v9 = sub_26F49D968();
  v8[49] = v9;
  v8[50] = *(v9 - 8);
  v8[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4944EC, 0, 0);
}

uint64_t sub_26F4944EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(v0 + 432) = *(Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v2 = Strong;

    sub_26F49FBD8();
    *(v0 + 440) = sub_26F49FBC8();
    v3 = sub_26F49FB68();
    v5 = v4;
    v6 = sub_26F4947F4;
LABEL_3:

    return MEMORY[0x2822009F8](v6, v3, v5);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    *(v0 + 448) = *(v7 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v8 = v7;

    *(v0 + 504) = 1;
    sub_26F49D958();
    v9 = swift_task_alloc();
    *(v0 + 456) = v9;
    *v9 = v0;
    v9[1] = sub_26F494C14;
    v10 = *(v0 + 408);
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    v13 = *(v0 + 328);

    return sub_26F48C80C(v13, v11, v12, (v0 + 504), v10);
  }

  else
  {
    if (*(v0 + 352))
    {
      v14 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
        v15 = sub_26F4A0248();
      }

      else
      {

        sub_26F4A0468();
        v15 = v14;
      }

      *(v0 + 480) = v15;

      sub_26F49FBD8();
      *(v0 + 488) = sub_26F49FBC8();
      v3 = sub_26F49FB68();
      v5 = v16;
      v6 = sub_26F49550C;
      goto LABEL_3;
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_26F4947F4()
{
  v1 = v0[54];
  v3 = v0[52];
  v2 = v0[53];

  v4 = type metadata accessor for TranslationUnavailableModel(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3B8DD4(v2, v3, &qword_2806E1200, &qword_26F4AA5C8);

  sub_26F49DDB8();
  sub_26F3B6B4C(v2, &qword_2806E1200, &qword_26F4AA5C8);
  v5(v2, 1, 1, v4);
  v6 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
  swift_beginAccess();
  sub_26F49CFD0(v2, v1 + v6, &qword_2806E1200, &qword_26F4AA5C8);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F494994, 0, 0);
}

uint64_t sub_26F494994()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(v0 + 448) = *(Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v2 = Strong;

    *(v0 + 504) = 1;
    sub_26F49D958();
    v3 = swift_task_alloc();
    *(v0 + 456) = v3;
    *v3 = v0;
    v3[1] = sub_26F494C14;
    v4 = *(v0 + 408);
    v5 = *(v0 + 336);
    v6 = *(v0 + 344);
    v7 = *(v0 + 328);

    return sub_26F48C80C(v7, v5, v6, (v0 + 504), v4);
  }

  else if (*(v0 + 352))
  {
    v9 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
      v10 = sub_26F4A0248();
    }

    else
    {

      sub_26F4A0468();
      v10 = v9;
    }

    *(v0 + 480) = v10;

    sub_26F49FBD8();
    *(v0 + 488) = sub_26F49FBC8();
    v12 = sub_26F49FB68();

    return MEMORY[0x2822009F8](sub_26F49550C, v12, v11);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_26F494C14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    (*(v4[50] + 8))(v4[51], v4[49]);
    v5 = sub_26F494F18;
  }

  else
  {
    v7 = v4[50];
    v6 = v4[51];
    v8 = v4[49];

    v4[59] = a1;
    (*(v7 + 8))(v6, v8);
    v5 = sub_26F494D80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F494D80()
{
  v1 = v0[59];
  if (v0[44])
  {

    if (v1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
      v2 = sub_26F4A0248();
    }

    else
    {
      sub_26F4A0468();
      v2 = v1;
    }

    v0[60] = v2;

    sub_26F49FBD8();
    v0[61] = sub_26F49FBC8();
    v4 = sub_26F49FB68();

    return MEMORY[0x2822009F8](sub_26F49550C, v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_26F494F18()
{

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 464);
  v2 = sub_26F49DCA8();
  __swift_project_value_buffer(v2, qword_280F67ED0);

  v3 = v1;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 328);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134349314;
    if (v7 >> 62)
    {
      v10 = sub_26F4A00A8();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v10;

    *(v8 + 12) = 2112;
    v11 = sub_26F49D7E8();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26F39E000, v4, v5, "Failed to translate %{public}ld observations: %@", v8, 0x16u);
    sub_26F3B6B4C(v9, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v9, -1, -1);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 464);
  v13 = v12;
  sub_26F458904(v12, (v0 + 304));
  if (*(v0 + 312))
  {
    v14 = *(v0 + 384);
    sub_26F3B8DD4(*(v0 + 336), v14, &qword_2806DEFD8, &qword_26F4A3670);
    v15 = sub_26F49DAB8();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v17(v14, 1, v15);
    v19 = *(v0 + 384);
    if (v18 == 1)
    {
      sub_26F3B6B4C(*(v0 + 384), &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F497280(0xD000000000000018, 0x800000026F4AC580, (v0 + 48));
      sub_26F3B6B4C(v0 + 48, &qword_2806E1730, &qword_26F4ABF78);
      if (!*(v0 + 312))
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(v0 + 40) = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      (*(v16 + 32))(boxed_opaque_existential_1, v19, v15);
      sub_26F3BE15C((v0 + 16), (v0 + 176));
      v21 = *(v0 + 312);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26F498178((v0 + 176), 0xD000000000000018, 0x800000026F4AC580, isUniquelyReferenced_nonNull_native);
      *(v0 + 312) = v21;
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    v23 = *(v0 + 376);
    sub_26F3B8DD4(*(v0 + 344), v23, &qword_2806DEFD8, &qword_26F4A3670);
    v24 = v17(v23, 1, v15);
    v25 = *(v0 + 376);
    if (v24 == 1)
    {
      sub_26F3B6B4C(*(v0 + 376), &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F497280(0xD000000000000018, 0x800000026F4AC5A0, (v0 + 112));
      sub_26F3B6B4C(v0 + 112, &qword_2806E1730, &qword_26F4ABF78);
    }

    else
    {
      *(v0 + 104) = v15;
      v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
      (*(v16 + 32))(v26, v25, v15);
      sub_26F3BE15C((v0 + 80), (v0 + 144));
      v27 = *(v0 + 312);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_26F498178((v0 + 144), 0xD000000000000018, 0x800000026F4AC5A0, v28);
      *(v0 + 312) = v27;
    }
  }

LABEL_16:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v31 = *(v0 + 368);
    v33 = *(v0 + 304);
    v32 = *(v0 + 312);
    v34 = sub_26F49FC08();
    (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v30;
    v35[5] = v33;
    v35[6] = v32;

    sub_26F40570C(0, 0, v31, &unk_26F4ABF88, v35);
  }

  if (*(v0 + 352))
  {
    sub_26F49FBD8();
    *(v0 + 496) = sub_26F49FBC8();
    v37 = sub_26F49FB68();

    return MEMORY[0x2822009F8](sub_26F4955D4, v37, v36);
  }

  else
  {

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_26F49550C()
{
  v1 = v0[60];
  v2 = v0[44];

  v2(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F4955D4()
{
  v1 = *(v0 + 352);

  v1(MEMORY[0x277D84F90], 0);

  return MEMORY[0x2822009F8](sub_26F495654, 0, 0);
}

uint64_t sub_26F495654()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26F49596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
  v5 = sub_26F49FAD8();
  if (a2)
  {
    v6 = sub_26F49D7E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:taskHint:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a1;
  v47 = sub_26F49DAB8();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v37 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v42 = &v36 - v11;
  v40 = sub_26F49D968();
  v13 = *(v40 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v41 = *a4;
  v39 = &v36 - v16;
  sub_26F49D958();
  v18 = sub_26F49FC08();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v5 + 16);
  v21 = v9;
  v22 = v47;
  v20(v21, v43, v47);
  v20(v46, v44, v22);
  v23 = v17;
  v24 = v40;
  (*(v13 + 16))(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v40);
  v25 = *(v5 + 80);
  v26 = (v25 + 48) & ~v25;
  v27 = (v6 + v25 + v26) & ~v25;
  v28 = v27 + v6;
  v29 = (*(v13 + 80) + v27 + v6 + 1) & ~*(v13 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v45;
  *(v30 + 4) = v19;
  *(v30 + 5) = v31;
  v32 = *(v5 + 32);
  v33 = &v30[v26];
  v34 = v47;
  v32(v33, v37, v47);
  v32(&v30[v27], v46, v34);
  v30[v28] = v41;
  (*(v13 + 32))(&v30[v29], v38, v24);

  sub_26F406004(0, 0, v42, &unk_26F4ABA78, v30);

  return (*(v13 + 8))(v39, v24);
}

double VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v38 = a3;
  v39 = a5;
  v36 = a2;
  v40 = a1;
  v41 = sub_26F49D968();
  v6 = *(v41 - 8);
  v37 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v31 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v35 = &v30 - v16;
  v34 = *a4;
  v18 = sub_26F49FC08();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v10 + 16);
  v20(v14, v36, v9);
  v20(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v9);
  (*(v6 + 16))(v8, v39, v41);
  v21 = *(v10 + 80);
  v22 = (v21 + 48) & ~v21;
  v23 = (v11 + v21 + v22) & ~v21;
  v24 = v23 + v11;
  v25 = (*(v6 + 80) + v24 + 1) & ~*(v6 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v40;
  *(v26 + 4) = v19;
  *(v26 + 5) = v27;
  v28 = *(v10 + 32);
  v28(&v26[v22], v31, v9);
  v28(&v26[v23], v32, v9);
  v26[v24] = v34;
  (*(v6 + 32))(&v26[v25], v33, v41);

  sub_26F406004(0, 0, v35, &unk_26F4ABA80, v26);

  return result;
}

uint64_t sub_26F496138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 113) = a8;
  *(v8 + 72) = a7;
  *(v8 + 80) = v10;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F49616C, 0, 0);
}

uint64_t sub_26F49616C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 113);
    *(v0 + 96) = *(Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v3 = Strong;

    *(v0 + 112) = v2 & 1;
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_26F4962A8;
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    return sub_26F48E498(v8, v7, v5, (v0 + 112), v6);
  }

  else
  {
    **(v0 + 40) = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_26F4962A8()
{

  return MEMORY[0x2822009F8](sub_26F4963C0, 0, 0);
}

Swift::Void __swiftcall VisualTranslationViewBridge.showDebugMenu()()
{
  if (_LTIsInternalInstall())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26F49DDB8();
  }
}

uint64_t VisualTranslationViewBridge.setZoomScale(_:)(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable, &protocol conformance descriptor for VisualTranslationErrorViewModel);
  sub_26F49DD48();
  sub_26F49DD58();

  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  if (a1 <= 0.0)
  {
    a1 = COERCE_DOUBLE(1);
  }

  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

id VisualTranslationViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VisualTranslationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v52);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = type metadata accessor for VisualTranslationOverlay(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1690, &qword_26F4ABA88);
  MEMORY[0x28223BE20](v54);
  v49 = &v47 - v11;
  v12 = v1[1];
  v59 = *v1;
  v60 = v12;
  v61 = *(v1 + 4);
  v13 = *(&v59 + 1);
  v50 = *(&v59 + 1);
  v51 = v59;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  v48 = v62;
  v14 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v17 = *(&v60 + 1);
  v16 = v61;
  memset(v55, 0, 32);
  sub_26F3ACF68(*(&v60 + 1), v61);
  type metadata accessor for CGRect(0);
  sub_26F49F338();
  v18 = *&v63[16];
  v19 = *v63;
  *(v10 + 2) = v62;
  *(v10 + 3) = v19;
  *(v10 + 8) = v18;
  v20 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_26F3B8DD4(v6, v3, &qword_2806E0908, &qword_26F4AB220);
  sub_26F49F338();
  sub_26F3B6B4C(v6, &qword_2806E0908, &qword_26F4AB220);
  v21 = &v10[*(v8 + 44)];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  *v10 = v48;
  *(v10 + 1) = v15;
  *(v10 + 2) = v17;
  *(v10 + 3) = v16;
  v22 = sub_26F49E328();
  LOBYTE(v8) = sub_26F49EC48();
  v23 = v49;
  sub_26F49B18C(v10, v49, type metadata accessor for VisualTranslationOverlay);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1698, &qword_26F4ABAB8) + 36);
  *v24 = v22;
  *(v24 + 8) = v8;
  sub_26F499BA4(v10, type metadata accessor for VisualTranslationOverlay);
  KeyPath = swift_getKeyPath();
  LOBYTE(v21) = v60;
  v26 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16A0, &qword_26F4ABAE8) + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v21 & 1;
  v27 = swift_getKeyPath();
  v28 = v23 + *(v54 + 36);
  *v28 = v27;
  *(v28 + 8) = (v21 & 2) != 0;
  v48 = type metadata accessor for VisualTranslationObservable(0);
  v52 = &protocol conformance descriptor for VisualTranslationErrorViewModel;
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable, &protocol conformance descriptor for VisualTranslationErrorViewModel);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  type metadata accessor for CameraPreviewDebugView(0);
  sub_26F49B1F4();
  sub_26F49AAC4(&qword_2806E16C8, type metadata accessor for CameraPreviewDebugView, &unk_26F4A25D8);
  v29 = v53;
  sub_26F49F118();

  sub_26F3B6B4C(v23, &qword_2806E1690, &qword_26F4ABA88);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  v30 = v56;
  v31 = v57;
  LOBYTE(v23) = v58;
  v32 = swift_allocObject();
  v33 = v60;
  *(v32 + 16) = v59;
  *(v32 + 32) = v33;
  *(v32 + 48) = v61;
  *&v62 = v30;
  *(&v62 + 1) = v31;
  v63[0] = v23;
  memset(&v63[8], 0, 32);
  *&v63[40] = sub_26F49B420;
  v64 = v32;
  v34 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16D0, &qword_26F4ABAF8) + 36);
  sub_26F49B44C(&v59, v55);
  sub_26F49B484(&v62, v55);

  v35 = *&v63[32];
  *(v34 + 32) = *&v63[16];
  *(v34 + 48) = v35;
  *(v34 + 64) = v64;
  v36 = *v63;
  *v34 = v62;
  *(v34 + 16) = v36;

  v37 = swift_getKeyPath();
  v38 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16D8, &unk_26F4ABB30) + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0) + 28);
  v40 = *MEMORY[0x277CDFA88];
  v41 = sub_26F49E2E8();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = v37;
  type metadata accessor for VisualTranslationErrorViewModel(0);
  sub_26F49AAC4(&qword_2806E1210, type metadata accessor for VisualTranslationErrorViewModel, v52);

  v42 = sub_26F49E288();
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16E0, &qword_26F4ABB40);
  v46 = (v29 + *(result + 36));
  *v46 = v42;
  v46[1] = v44;
  return result;
}

uint64_t sub_26F496EE4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26F49DEF8();
  a1[1] = sub_26F49DEE8();
  a1[2] = sub_26F49DEE8();
  v2 = *(type metadata accessor for CameraPreviewDebugView(0) + 28);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26F496FDC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26F49D088;

  return v6(a1);
}

void *sub_26F4970D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_26F497184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_26F497280@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26F45FD88(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F3C6FEC();
      v10 = v12;
    }

    sub_26F3BE15C((*(v10 + 56) + 32 * v8), a3);
    sub_26F497678(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26F497324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26F45FF48(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F3C7190();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26F49D968();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
    v20 = *(v13 - 8);
    sub_26F3BBAEC(v12 + *(v20 + 72) * v7, a2, &qword_2806DED80, &qword_26F4A3660);
    sub_26F497828(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_26F4974DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26F45FF48(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F3C77D4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26F49D968();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for VisualTranslationModel(0);
    v20 = *(v13 - 8);
    sub_26F49C978(v12 + *(v20 + 72) * v7, a2, type metadata accessor for VisualTranslationModel);
    sub_26F497B78(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for VisualTranslationModel(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_26F497678(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F4A0078() + 1) & ~v5;
    do
    {
      sub_26F4A0528();

      sub_26F49F9A8();
      v10 = sub_26F4A0568();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_26F497828(int64_t a1, uint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_26F4A0078();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_26F49F818();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_26F497B78(int64_t a1, uint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_26F4A0078();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_26F49F818();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for VisualTranslationModel(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

_OWORD *sub_26F497EBC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26F45FE00(a2);
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
      sub_26F3C6CFC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_26F3C51B8(v13, a3 & 1);
    v8 = sub_26F45FE00(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_26F4A04A8();
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

    return sub_26F3BE15C(a1, v19);
  }

  else
  {
    sub_26F498678(v8, a2, a1, v18);

    return a2;
  }
}

void sub_26F497FFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F45FD88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26F3C5488(v16, a4 & 1);
      v11 = sub_26F45FD88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26F4A04A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_26F3C6E7C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_26F498178(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F45FD88(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26F3C6FEC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26F3C5730(v16, a4 & 1);
    v11 = sub_26F45FD88(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_26F4A04A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_26F3BE15C(a1, v22);
  }

  else
  {
    sub_26F4986E0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_26F4982C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26F45FF48(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
      return sub_26F49CFD0(a1, v21 + *(*(v22 - 8) + 72) * v14, &qword_2806DED80, &qword_26F4A3660);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_26F3C7190();
    goto LABEL_7;
  }

  sub_26F3C59E8(v17, a3 & 1);
  v24 = sub_26F45FF48(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_26F4A04A8();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_26F49874C(v14, v11, a1, v20);
}

uint64_t sub_26F4984A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26F45FF48(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for VisualTranslationModel(0);
      return sub_26F49CF68(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for VisualTranslationModel);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_26F3C77D4();
    goto LABEL_7;
  }

  sub_26F3C6314(v17, a3 & 1);
  v24 = sub_26F45FF48(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_26F4A04A8();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_26F498844(v14, v11, a1, v20);
}

_OWORD *sub_26F498678(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_26F3BE15C(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_26F4986E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26F3BE15C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26F49874C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26F49D968();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  result = sub_26F3BBAEC(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_2806DED80, &qword_26F4A3660);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_26F498844(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26F49D968();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for VisualTranslationModel(0);
  result = sub_26F49C978(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for VisualTranslationModel);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_26F498934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
  v2 = *v0;
  v3 = sub_26F4A0108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_26F498AAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1620, &qword_26F4AB8C8);
  v2 = *v0;
  v3 = sub_26F4A0108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_26F498C08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1630, &qword_26F4AB8D8);
  v2 = *v0;
  v3 = sub_26F4A0108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v18 + 40);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_26F498DB0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_26F4A0108();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

uint64_t sub_26F498FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26F49D968();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_26F49F818();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_26F49AAC4(&qword_2806E1128, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_26F49F868();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26F498DB0(MEMORY[0x277CC95F0], &qword_2806E1618, &qword_26F4AB890);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_26F4992B4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_26F4992B4(int64_t a1)
{
  v3 = sub_26F49D968();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_26F4A0078();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v23 = sub_26F49F818();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_26F4995BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TextModel(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_26F49B18C(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for TextModel);
      v23 = v22;
      v24 = v30;
      sub_26F49C978(v23, v30, type metadata accessor for TextModel);
      sub_26F49C978(v24, a2, type metadata accessor for TextModel);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_26F499820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VisualTranslationModel(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_26F49B18C(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for VisualTranslationModel);
      v23 = v22;
      v24 = v30;
      sub_26F49C978(v23, v30, type metadata accessor for VisualTranslationModel);
      sub_26F49C978(v24, a2, type metadata accessor for VisualTranslationModel);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_26F499A84(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_26F49E858();
}

uint64_t sub_26F499BA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26F499C20(uint64_t a1)
{
  v118 = type metadata accessor for TextModel(0);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v3 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  MEMORY[0x28223BE20](v131);
  v119 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v124 = &v115 - v6;
  MEMORY[0x28223BE20](v7);
  v129 = (&v115 - v8);
  MEMORY[0x28223BE20](v9);
  v128 = &v115 - v10;
  MEMORY[0x28223BE20](v11);
  v127 = &v115 - v12;
  v13 = type metadata accessor for VisualTranslationModel(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v123 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v126 = &v115 - v17;
  v18 = objc_opt_self();
  v19 = [v18 standardUserDefaults];
  v20 = sub_26F49F898();
  v21 = [v19 BOOLForKey_];

  if (v21)
  {
    v22 = *(a1 + 16);
    if (!v22)
    {
      return;
    }

    v23 = a1;
    *&v139 = MEMORY[0x277D84F90];
    sub_26F4034EC(0, v22, 0);
    v24 = v139;
    v137 = a1 + 64;
    v25 = sub_26F4A0068();
    v26 = 0;
    v124 = (a1 + 72);
    v132 = a1;
    v130 = v14;
    v125 = v22;
    while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(v23 + 32))
    {
      v30 = v25 >> 6;
      if ((*(v137 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_61;
      }

      v135 = 1 << v25;
      v133 = v26;
      v134 = *(v23 + 36);
      v138 = v24;
      v31 = v131;
      v32 = *(v131 + 48);
      v33 = *(v23 + 48);
      v34 = sub_26F49D968();
      v35 = *(v34 - 8);
      v36 = v127;
      (*(v35 + 16))(v127, v33 + *(v35 + 72) * v25, v34);
      v37 = *(v23 + 56);
      v136 = *(v14 + 72);
      sub_26F49B18C(v37 + v136 * v25, &v36[v32], type metadata accessor for VisualTranslationModel);
      v38 = v128;
      (*(v35 + 32))(v128, v36, v34);
      sub_26F49C978(&v36[v32], v38 + *(v31 + 48), type metadata accessor for VisualTranslationModel);
      v39 = v129;
      sub_26F3BBAEC(v38, v129, &qword_2806E1750, &qword_26F4ABFA8);
      v40 = *(v31 + 48);
      v24 = v138;
      v41 = v126;
      sub_26F49C978(v39 + v40, v126, type metadata accessor for VisualTranslationModel);
      (*(v35 + 8))(v39, v34);
      *&v139 = v24;
      v43 = *(v24 + 16);
      v42 = *(v24 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_26F4034EC((v42 > 1), v43 + 1, 1);
        v24 = v139;
      }

      *(v24 + 16) = v43 + 1;
      v14 = v130;
      sub_26F49C978(v41, v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v43 * v136, type metadata accessor for VisualTranslationModel);
      v23 = v132;
      v27 = 1 << *(v132 + 32);
      if (v25 >= v27)
      {
        goto LABEL_62;
      }

      v44 = *(v137 + 8 * v30);
      if ((v44 & v135) == 0)
      {
        goto LABEL_63;
      }

      if (v134 != *(v132 + 36))
      {
        goto LABEL_64;
      }

      v45 = v44 & (-2 << (v25 & 0x3F));
      if (v45)
      {
        v27 = __clz(__rbit64(v45)) | v25 & 0x7FFFFFFFFFFFFFC0;
        v28 = v125;
        v29 = v133;
      }

      else
      {
        v46 = v30 << 6;
        v47 = v30 + 1;
        v48 = &v124[8 * v30];
        v28 = v125;
        while (v47 < (v27 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_26F49CF5C(v25, v134, 0);
            v27 = __clz(__rbit64(v49)) + v46;
            goto LABEL_20;
          }
        }

        sub_26F49CF5C(v25, v134, 0);
LABEL_20:
        v29 = v133;
      }

      v26 = v29 + 1;
      v25 = v27;
      if (v26 == v28)
      {
        return;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
    v132 = a1;
    v51 = [v18 standardUserDefaults];
    v52 = sub_26F49F898();
    v53 = [v51 BOOLForKey_];

    if (!v53)
    {
      return;
    }

    v54 = v132;
    v55 = *(v132 + 16);
    if (!v55)
    {
      v138 = MEMORY[0x277D84F90];
      return;
    }

    v150 = MEMORY[0x277D84F90];
    sub_26F4034EC(0, v55, 0);
    v138 = v150;
    v56 = v54 + 64;
    v57 = sub_26F4A0068();
    v58 = v119;
    if ((v57 & 0x8000000000000000) == 0)
    {
      v59 = v57;
      if (v57 < 1 << *(v54 + 32))
      {
        v60 = 0;
        v137 = *(v54 + 36);
        v116 = v54 + 72;
        v130 = v14;
        v122 = v13;
        v120 = v55;
        v121 = v54 + 64;
        while ((*(v56 + 8 * (v59 >> 6)) & (1 << v59)) != 0)
        {
          if (v137 != *(v54 + 36))
          {
            goto LABEL_67;
          }

          v126 = 1 << v59;
          v127 = v59 >> 6;
          v125 = v60;
          v61 = v131;
          v136 = *(v131 + 48);
          v62 = *(v54 + 48);
          v63 = v13;
          v64 = v58;
          v65 = sub_26F49D968();
          v66 = *(v65 - 8);
          v67 = v66;
          v68 = v62 + *(v66 + 72) * v59;
          v69 = v124;
          v129 = *(v66 + 16);
          v128 = (v66 + 16);
          (v129)(v124, v68, v65);
          v70 = *(v54 + 56);
          v71 = *(v14 + 72);
          v135 = v59;
          v134 = v71;
          v72 = v136;
          sub_26F49B18C(v70 + v71 * v59, &v69[v136], type metadata accessor for VisualTranslationModel);
          v73 = *(v67 + 32);
          v133 = v65;
          v74 = v65;
          v58 = v64;
          v73(v64, v69, v74);
          v75 = v64 + *(v61 + 48);
          sub_26F49C978(&v69[v72], v75, type metadata accessor for VisualTranslationModel);
          v76 = *(v75 + v63[7]);
          v77 = sub_26F445924(v76);
          v78 = *(v77 + 16);
          if (v78)
          {
            v79 = *(v118 + 20);
            v80 = v117;
            v81 = (*(v117 + 80) + 32) & ~*(v117 + 80);
            v82 = v77 + v81;

            v83 = *(v80 + 72);
            while (1)
            {
              sub_26F49B18C(v82, v3, type metadata accessor for TextModel);
              v84 = *&v3[v79];
              if ((v84 & 0x8000000000000000) != 0 || v84 >= v76[2])
              {
                sub_26F499BA4(v3, type metadata accessor for TextModel);
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v76 = sub_26F4469BC(v76);
                }

                if (v84 >= v76[2])
                {
                  __break(1u);
                  goto LABEL_60;
                }

                sub_26F49CF68(v3, v76 + v81 + v84 * v83, type metadata accessor for TextModel);
              }

              v82 += v83;
              if (!--v78)
              {

                v14 = v130;
                v58 = v119;
                goto LABEL_40;
              }
            }
          }

          v14 = v130;
LABEL_40:
          v85 = v123;
          (v129)(v123, v75, v133);
          v13 = v122;
          v86 = v75 + v122[5];
          v87 = *(v86 + 144);
          v147 = *(v86 + 128);
          v148 = v87;
          v149 = *(v86 + 160);
          v88 = *(v86 + 80);
          v143 = *(v86 + 64);
          v144 = v88;
          v89 = *(v86 + 112);
          v145 = *(v86 + 96);
          v146 = v89;
          v90 = *(v86 + 48);
          v141 = *(v86 + 32);
          v142 = v90;
          v91 = *v86;
          v140 = *(v86 + 16);
          v139 = v91;
          v92 = v122[6];
          v93 = sub_26F49D918();
          (*(*(v93 - 8) + 16))(v85 + v92, v75 + v92, v93);
          v94 = *(v75 + v13[8]);
          v95 = *(v75 + v13[9]);
          v96 = *(v75 + v13[10]);
          v97 = v85 + v13[5];
          v98 = v148;
          *(v97 + 128) = v147;
          *(v97 + 144) = v98;
          *(v97 + 160) = v149;
          v99 = v144;
          *(v97 + 64) = v143;
          *(v97 + 80) = v99;
          v100 = v146;
          *(v97 + 96) = v145;
          *(v97 + 112) = v100;
          v102 = v140;
          v101 = v141;
          *v97 = v139;
          *(v97 + 16) = v102;
          v103 = v142;
          *(v97 + 32) = v101;
          *(v97 + 48) = v103;
          *(v85 + v13[7]) = v76;
          *(v85 + v13[8]) = v94;
          *(v85 + v13[9]) = v95;
          *(v85 + v13[10]) = v96;
          *(v85 + v13[11]) = 0;
          sub_26F3B6B4C(v58, &qword_2806E1750, &qword_26F4ABFA8);
          v104 = v138;
          v150 = v138;
          v106 = *(v138 + 16);
          v105 = *(v138 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_26F4034EC((v105 > 1), v106 + 1, 1);
            v104 = v150;
          }

          *(v104 + 16) = v106 + 1;
          v107 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v138 = v104;
          sub_26F49C978(v85, v104 + v107 + v106 * v134, type metadata accessor for VisualTranslationModel);
          v54 = v132;
          v59 = 1 << *(v132 + 32);
          if (v135 >= v59)
          {
            goto LABEL_68;
          }

          v56 = v121;
          v108 = *(v121 + 8 * v127);
          if ((v108 & v126) == 0)
          {
            goto LABEL_69;
          }

          if (v137 != *(v132 + 36))
          {
            goto LABEL_70;
          }

          v109 = v108 & (-2 << (v135 & 0x3F));
          if (v109)
          {
            v59 = __clz(__rbit64(v109)) | v135 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v110 = v127 << 6;
            v111 = v127 + 1;
            v112 = (v116 + 8 * v127);
            while (v111 < (v59 + 63) >> 6)
            {
              v114 = *v112++;
              v113 = v114;
              v110 += 64;
              ++v111;
              if (v114)
              {
                sub_26F49CF5C(v135, v137, 0);
                v59 = __clz(__rbit64(v113)) + v110;
                goto LABEL_52;
              }
            }

            sub_26F49CF5C(v135, v137, 0);
          }

LABEL_52:
          v60 = v125 + 1;
          if (v125 + 1 == v120)
          {
            return;
          }

          if ((v59 & 0x8000000000000000) != 0 || v59 >= 1 << *(v54 + 32))
          {
            goto LABEL_65;
          }
        }

        goto LABEL_66;
      }
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_26F49A9F8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26F3CF3AC;

  return sub_26F490144(a1, a2, v2);
}

uint64_t sub_26F49AAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F49AB24(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[11];
  v14 = v1[12];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_26F3CF3AC;

  return sub_26F492C9C(v7, v8, v9, v10, v11, v12, v13, v14, a1, v4, v5, v6);
}

uint64_t sub_26F49AC30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F493218(a1, v4, v5, v6);
}

uint64_t sub_26F49AD00(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_26F3CF3AC;

  return sub_26F49435C(a1, v8, v9, v10, v11, v1 + v5, v1 + v7, v12);
}

uint64_t sub_26F49AE68(uint64_t a1)
{
  v3 = *(sub_26F49DAB8() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v7 + v6;
  sub_26F49D968();
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_26F3CF3AC;

  return sub_26F496138(a1, v9, v10, v11, v12, v1 + v5, v1 + v7, v13);
}

uint64_t objectdestroy_41Tm()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_26F49D968();
  v8 = *(v7 - 8);
  v9 = (v5 + *(v8 + 80) + v6 + 1) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_26F49B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F49B1F4()
{
  result = qword_2806E16A8;
  if (!qword_2806E16A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1690, &qword_26F4ABA88);
    sub_26F49B2AC();
    sub_26F3B18CC(&qword_2806E16B8, &qword_2806E16C0, &qword_26F4ABAF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16A8);
  }

  return result;
}

unint64_t sub_26F49B2AC()
{
  result = qword_2806E16B0;
  if (!qword_2806E16B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16A0, &qword_26F4ABAE8);
    sub_26F49B364();
    sub_26F3B18CC(&qword_2806E16B8, &qword_2806E16C0, &qword_26F4ABAF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16B0);
  }

  return result;
}

unint64_t sub_26F49B364()
{
  result = qword_280F65750;
  if (!qword_280F65750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1698, &qword_26F4ABAB8);
    sub_26F49AAC4(&qword_280F66028, type metadata accessor for VisualTranslationOverlay, &protocol conformance descriptor for VisualTranslationOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65750);
  }

  return result;
}

uint64_t sub_26F49B420(uint64_t result)
{
  if (result)
  {
    return sub_26F48BCAC();
  }

  return result;
}

unint64_t sub_26F49B4E4()
{
  result = qword_2806E16E8;
  if (!qword_2806E16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16E8);
  }

  return result;
}

unint64_t sub_26F49B53C()
{
  result = qword_2806E16F0;
  if (!qword_2806E16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16F0);
  }

  return result;
}

unint64_t sub_26F49B594()
{
  result = qword_2806E16F8;
  if (!qword_2806E16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16F8);
  }

  return result;
}

unint64_t sub_26F49B5EC()
{
  result = qword_2806E1700;
  if (!qword_2806E1700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1700);
  }

  return result;
}

void sub_26F49B664(uint64_t a1)
{
  sub_26F49C1C8(319);
  if (v1 <= 0x3F)
  {
    sub_26F3B2A20();
    if (v2 <= 0x3F)
    {
      sub_26F49C798(319, &qword_280F66990, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 728) + **(*v4 + 728));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26F49D08C;

  return v12(a1, a2, a3, a4);
}

{
  v12 = (*(*v4 + 744) + **(*v4 + 744));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26F3CF3AC;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 736) + **(*v5 + 736));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_26F49BE00;

  return v14(a1, a2, a3, a4, a5);
}

{
  v14 = (*(*v5 + 752) + **(*v5 + 752));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_26F3CF3AC;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_26F49BE00(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_26F49C1C8(uint64_t a1)
{
  if (!qword_280F663C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1518, &qword_26F4AB488);
    v1 = sub_26F49DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F663C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for VisualTranslationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VisualTranslationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F49C33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26F49C384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F49C3DC()
{
  result = qword_2806E1708;
  if (!qword_2806E1708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16E0, &qword_26F4ABB40);
    sub_26F49C468();
    sub_26F469DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1708);
  }

  return result;
}

unint64_t sub_26F49C468()
{
  result = qword_2806E1710;
  if (!qword_2806E1710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16D8, &unk_26F4ABB30);
    sub_26F49C520();
    sub_26F3B18CC(&qword_2806DF430, &qword_2806DF3E0, &qword_26F4A82B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1710);
  }

  return result;
}

unint64_t sub_26F49C520()
{
  result = qword_2806E1718;
  if (!qword_2806E1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16D0, &qword_26F4ABAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1690, &qword_26F4ABA88);
    type metadata accessor for CameraPreviewDebugView(255);
    sub_26F49B1F4();
    sub_26F49AAC4(&qword_2806E16C8, type metadata accessor for CameraPreviewDebugView, &unk_26F4A25D8);
    swift_getOpaqueTypeConformance2();
    sub_26F49C638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1718);
  }

  return result;
}

unint64_t sub_26F49C638()
{
  result = qword_2806E1720;
  if (!qword_2806E1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1720);
  }

  return result;
}

void sub_26F49C6B4(uint64_t a1)
{
  sub_26F49C798(319, &qword_280F656B8, sub_26F49C7FC, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26F49C798(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F49C798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F49C7FC()
{
  result = qword_280F66CC0;
  if (!qword_280F66CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F66CC0);
  }

  return result;
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F49C878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F493218(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_14(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F49C978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F49C9E0(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CEEAC;

  return sub_26F48C0AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26F49CAD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CF3AC;

  return sub_26F492F80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26F49CBD0(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CF3AC;

  return sub_26F4916AC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_26F49CCF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CF3AC;

  return sub_26F40C3A4(a1, v4);
}

uint64_t sub_26F49CDA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F3CF3AC;

  return sub_26F49191C(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F49CEA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CEEAC;

  return sub_26F40C3A4(a1, v4);
}

double sub_26F49CF5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26F49CF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F49CFD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_2806EA850 == -1)
  {
    if (qword_2806EA858)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2806EA858)
    {
      return _availability_version_check();
    }
  }

  if (qword_2806EA848 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2806EA83C > a3)
      {
        return 1;
      }

      if (dword_2806EA83C >= a3)
      {
        return dword_2806EA840 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_2806EA858;
  if (qword_2806EA858)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2806EA858 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x274391710](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_2806EA83C, &dword_2806EA840);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}