uint64_t sub_21E035E0C(uint64_t a1, uint64_t *a2)
{
  v30 = a2;
  v29 = sub_21E13F9F4();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v26[0] = v2;
  v38 = MEMORY[0x277D84F90];
  sub_21DF5C118(0, v7, 0);
  v8 = v38;
  v26[1] = v4 + 32;
  v27 = v6;
  v9 = (a1 + 56);
  v28 = v4;
  do
  {
    v31 = v9;
    v35 = v8;
    v36 = v7;
    v10 = *(v9 - 2);
    v11 = *v9;
    v33 = *v30;
    v34 = v10;
    swift_bridgeObjectRetain_n();

    sub_21E140AA4();
    sub_21E140A04();
    sub_21E140A54();

    v32 = v11;
    v12 = sub_21E140C44();
    v14 = v13;
    LOBYTE(v11) = v15;

    v37 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v16 = sub_21E140C24();
    v18 = v17;
    v20 = v19;
    v21 = v11 & 1;
    v22 = v27;
    sub_21DF3DE8C(v12, v14, v21);
    v8 = v35;

    sub_21E13FAF4();
    sub_21DF3DE8C(v16, v18, v20 & 1);

    v38 = v8;
    v24 = *(v8 + 16);
    v23 = *(v8 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_21DF5C118((v23 > 1), v24 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v24 + 1;
    (*(v28 + 32))(v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v22, v29);
    v9 = v31 + 4;
    v7 = v36 - 1;
  }

  while (v36 != 1);
  return v8;
}

uint64_t sub_21E036108(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_21E13E244();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v21, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v22;
      if (v22)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v23;
    v19 = v21;
    v20 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    if ((result & 1) == 0)
    {
      result = sub_21E06A6D4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v16 = v8[2];
    v15 = v8[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_21E06A6D4((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    v8[2] = v17;
    v18 = &v8[4 * v16];
    v18[4] = v19;
    v18[5] = v13;
    v18[6] = v25;
    v18[7] = v20;
  }

  while (v7 != v4);
  return v8;
}

uint64_t AnnotationViewConfiguration.wantsAnnotationCanvas.getter(uint64_t a1)
{
  if (sub_21E13E944() & 1) != 0 || (sub_21E13E8D4() & 1) != 0 || (sub_21E13E964())
  {
    return 1;
  }

  return sub_21E13E9A4();
}

uint64_t VIUIAnnotationCanvas.init(entryPoint:configuration:renderable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21E13D834();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for VIUIAnnotationCanvas(0);
  v10 = *(v9 + 20);
  v11 = sub_21E13E9C4();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = a4 + *(v9 + 24);

  return sub_21DF0DBF0(a3, v12);
}

uint64_t type metadata accessor for VIUIAnnotationCanvas(uint64_t a1)
{
  result = qword_280F69E38;
  if (!qword_280F69E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E03642C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB058, &unk_21E14FB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_21E13DD54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D79168])
  {
    (*(v6 + 96))(v9, v5);
    v11 = sub_21E13EB14();
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = 544501582;
    return v12 | 0x6966655200000000;
  }

  if (v10 == *MEMORY[0x277D79170])
  {
    (*(v6 + 96))(v9, v5);
    sub_21DF3DE9C(v9, v4, &qword_27CEAB058, &unk_21E14FB60);
    v14 = sub_21E13E264();
    v15 = (*(*(v14 - 8) + 48))(v4, 1, v14);
    sub_21DF23614(v4, &qword_27CEAB058, &unk_21E14FB60);
    if (v15 == 1)
    {
      return 0x676E696E69666552;
    }

    else
    {
      return 0x6574656C706D6F43;
    }
  }

  else if (v10 == *MEMORY[0x277D79180])
  {
    (*(v6 + 8))(v9, v5);
    return 0x6574656C706D6F43;
  }

  else
  {
    if (v10 == *MEMORY[0x277D79178])
    {
      v12 = 544104771;
      return v12 | 0x6966655200000000;
    }

    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E036750()
{
  v0 = sub_21E13E254();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13EAF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21E13EB04();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D795D8])
  {
    (*(v5 + 96))(v7, v4);
    (*(v1 + 32))(v3, v7, v0);
    v9 = sub_21E036A00();
    (*(v1 + 8))(v3, v0);
    return v9;
  }

  if (v8 == *MEMORY[0x277D795C0])
  {
    (*(v5 + 96))(v7, v4);
    v11 = *v7;
    v12 = v7[1];
    v13 = 0x203A636F7270;
    v14 = 0xE600000000000000;
LABEL_7:
    v15[0] = v13;
    v15[1] = v14;
    MEMORY[0x223D52A60](v11, v12);

    return v15[0];
  }

  if (v8 == *MEMORY[0x277D795C8])
  {
    (*(v5 + 96))(v7, v4);
    v11 = *v7;
    v12 = v7[1];
    v13 = 0x203A74656D6E75;
    v14 = 0xE700000000000000;
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D795D0])
  {
    return 0x64657269707865;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21E036A00()
{
  v1 = sub_21E13E254();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D793D8])
  {
    v7 = 0x64656C6261736964;
LABEL_5:
    (*(v2 + 8))(v5, v1);
    return v7;
  }

  if (v6 == *MEMORY[0x277D793E0])
  {
    v7 = 0x616C696176616E75;
    goto LABEL_5;
  }

  if (v6 == *MEMORY[0x277D793E8])
  {
    return 0x73656D617266;
  }

  if (v6 == *MEMORY[0x277D793D0])
  {
    return 0x6D61657274737075;
  }

  if (v6 == *MEMORY[0x277D793C0])
  {
    return 0x7275746375727473;
  }

  if (v6 == *MEMORY[0x277D793F0])
  {
    return 0x6D656C7469746E65;
  }

  if (v6 == *MEMORY[0x277D793C8])
  {
    return 0x6D696C2065746172;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t VIUIAnnotationCanvas.body.getter()
{
  v1 = v0;
  v2 = sub_21E140034();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for VIUIAnnotationCanvas(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21E03AD58(v1, &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_21E03ADBC(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = v1;
  (*(v3 + 104))(v5, *MEMORY[0x277CE00F0], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFA8, &qword_21E14F9C0);
  sub_21E03C930();
  return sub_21E1417A4();
}

uint64_t sub_21E036E5C(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v484 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFF0, &qword_21E14FAB8);
  v530 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v510 = (&v415 - v8);
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFF8, &qword_21E14FAC0);
  MEMORY[0x28223BE20](v556);
  v564 = &v415 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v509 = &v415 - v11;
  MEMORY[0x28223BE20](v12);
  v508 = &v415 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB000, &qword_21E14FAC8);
  MEMORY[0x28223BE20](v14 - 8);
  v557 = &v415 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v551 = &v415 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB008, &qword_21E14FAD0);
  MEMORY[0x28223BE20](v18 - 8);
  v459 = &v415 - v19;
  v20 = sub_21E13D844();
  v533 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v498 = &v415 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v519 = &v415 - v23;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB010, &qword_21E14FAD8);
  v529 = *(v501 - 8);
  MEMORY[0x28223BE20](v501);
  v474 = (&v415 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB018, &qword_21E14FAE0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v415 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v500 = &v415 - v29;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7758, &qword_21E147770);
  v479 = *(v520 - 8);
  MEMORY[0x28223BE20](v520);
  v518 = &v415 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v505 = &v415 - v32;
  MEMORY[0x28223BE20](v33);
  v504 = &v415 - v34;
  MEMORY[0x28223BE20](v35);
  v503 = &v415 - v36;
  v466 = sub_21E140144();
  v527 = *(v466 - 8);
  MEMORY[0x28223BE20](v466);
  v465 = &v415 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21E13F9F4();
  v522 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v528 = &v415 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v561 = &v415 - v41;
  MEMORY[0x28223BE20](v42);
  v481 = &v415 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  MEMORY[0x28223BE20](v44 - 8);
  v464 = &v415 - v45;
  v488 = sub_21E13E2F4();
  v526 = *(v488 - 8);
  MEMORY[0x28223BE20](v488);
  v487 = &v415 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB020, &qword_21E14FAE8);
  v523 = *(v539 - 8);
  MEMORY[0x28223BE20](v539);
  v538 = &v415 - v47;
  v489 = sub_21E13D344();
  v521 = *(v489 - 8);
  MEMORY[0x28223BE20](v489);
  v447 = &v415 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v463 = &v415 - v50;
  MEMORY[0x28223BE20](v51);
  v462 = &v415 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA50, &qword_21E14FAF0);
  MEMORY[0x28223BE20](v53 - 8);
  v461 = &v415 - v54;
  v460 = sub_21E13FA14();
  v513 = *(v460 - 8);
  MEMORY[0x28223BE20](v460);
  v446 = &v415 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v546 = sub_21E13FAD4();
  v437 = *(v546 - 8);
  MEMORY[0x28223BE20](v546);
  v497 = &v415 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v512 = &v415 - v58;
  MEMORY[0x28223BE20](v59);
  v537 = &v415 - v60;
  MEMORY[0x28223BE20](v61);
  v482 = &v415 - v62;
  v544 = sub_21E13ED04();
  v436 = *(v544 - 8);
  MEMORY[0x28223BE20](v544);
  v536 = &v415 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v499 = &v415 - v65;
  v532 = sub_21E13D874();
  v540 = *(v532 - 8);
  MEMORY[0x28223BE20](v532);
  v535 = &v415 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v541 = &v415 - v68;
  MEMORY[0x28223BE20](v69);
  v483 = &v415 - v70;
  v517 = sub_21E13EDA4();
  v471 = *(v517 - 8);
  MEMORY[0x28223BE20](v517);
  v515 = &v415 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB028, &qword_21E14FAF8);
  MEMORY[0x28223BE20](v559);
  i = &v415 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v555 = &v415 - v74;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7790, &unk_21E14FB00);
  v552 = *(v553 - 8);
  MEMORY[0x28223BE20](v553);
  v560 = (&v415 - v75);
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
  *&v567 = *(v516 - 8);
  MEMORY[0x28223BE20](v516);
  v550 = (&v415 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v77);
  v549 = (&v415 - v78);
  MEMORY[0x28223BE20](v79);
  v563 = &v415 - v80;
  MEMORY[0x28223BE20](v81);
  v562 = &v415 - v82;
  v83 = sub_21E13DB54();
  v434 = *(v83 - 8);
  v435 = v83;
  MEMORY[0x28223BE20](v83);
  v440 = &v415 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB030, &unk_21E14FB10);
  MEMORY[0x28223BE20](v85 - 8);
  v87 = &v415 - v86;
  v88 = sub_21E13E844();
  v443 = *(v88 - 8);
  v444 = v88;
  MEMORY[0x28223BE20](v88);
  v439 = &v415 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for VIUIAnnotationCanvas(0);
  v91 = *(v90 + 20);
  if (sub_21E13E944() & 1) != 0 || (sub_21E13E8D4() & 1) != 0 || (sub_21E13E964() & 1) != 0 || (result = sub_21E13E9A4(), (result))
  {
    v470 = v91;
    v565 = v38;
    v502 = v27;
    v496 = v20;
    v93 = *(v90 + 24);
    *&v568 = a2;
    v94 = (a2 + v93);
    v95 = *(a2 + v93 + 24);
    v96 = *(a2 + v93 + 32);
    __swift_project_boxed_opaque_existential_1((a2 + v93), v95);
    (*(v96 + 88))(v95, v96);
    v98 = v443;
    v97 = v444;
    if ((*(v443 + 48))(v87, 1, v444) == 1)
    {
      return sub_21DF23614(v87, &qword_27CEAB030, &unk_21E14FB10);
    }

    (*(v98 + 32))(v439, v87, v97);
    v99 = v94[3];
    v100 = v94[4];
    __swift_project_boxed_opaque_existential_1(v94, v99);
    (*(v100 + 104))(v99, v100);
    v101 = v94[3];
    v102 = v94[4];
    __swift_project_boxed_opaque_existential_1(v94, v101);
    v579 = COERCE_DOUBLE((*(v102 + 24))(v101, v102));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFD8, &unk_21E14FA70);
    sub_21DF23E5C(&qword_27CEAB038, &qword_27CEAAFD8, &unk_21E14FA70, MEMORY[0x277D83988]);
    v103 = sub_21E13DB44();

    v104 = v103;
    v105 = *(v103 + 16);
    *&v106 = MEMORY[0x277D84F90];
    v554 = v7;
    v548 = v105;
    v511 = v104;
    if (v105)
    {
      v107 = 0;
      v108 = v532;
      v109 = v516;
      v110 = v562;
      while (v107 < *(v104 + 16))
      {
        v111 = (*(v567 + 80) + 32) & ~*(v567 + 80);
        v566 = *(v567 + 72);
        sub_21DF236C0(v104 + v111 + *&v566 * v107, v110, &qword_27CEA7778, &unk_21E147790);
        if (*(v110 + *(v109 + 48)) <= 0.0)
        {
          sub_21DF23614(v110, &qword_27CEA7778, &unk_21E147790);
        }

        else
        {
          sub_21DF3DE9C(v110, v563, &qword_27CEA7778, &unk_21E147790);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v579 = *&v106;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21DF5C1DC(0, *(v106 + 16) + 1, 1);
            *&v106 = v579;
          }

          v114 = *(v106 + 16);
          v113 = *(v106 + 24);
          if (v114 >= v113 >> 1)
          {
            sub_21DF5C1DC((v113 > 1), v114 + 1, 1);
            *&v106 = v579;
          }

          *(v106 + 16) = v114 + 1;
          sub_21DF3DE9C(v563, v106 + v111 + v114 * *&v566, &qword_27CEA7778, &unk_21E147790);
          v108 = v532;
          v109 = v516;
        }

        ++v107;
        v104 = v511;
        if (v548 == v107)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_248;
    }

    v108 = v532;
LABEL_19:
    v579 = *&v106;

    sub_21E03D768(&v579);
    v534 = 0;

    *&v109 = v579;
    v115 = *(*&v579 + 16);
    if (*&v115 == 0.0)
    {

      v117 = MEMORY[0x277D84F90];
    }

    else
    {
      v579 = MEMORY[0x277D84F90];
      sub_21DF5C19C(0, v115, 0);
      v116 = 0;
      v117 = v579;
      v545 = (v109 + ((*(v567 + 80) + 32) & ~*(v567 + 80)));
      v543 = (v471 + 16);
      v542 = (v471 + 8);
      v562 = *(v109 + 16);
      v548 = v109;
      v547 = *&v115;
      v118 = v549;
      do
      {
        if (v562 == v116)
        {
          goto LABEL_249;
        }

        if (v116 >= *(v109 + 16))
        {
          goto LABEL_250;
        }

        v563 = v116 + 1;
        v119 = v559;
        v120 = *(v559 + 48);
        v121 = v545 + *(v567 + 72) * v116;
        v122 = v555;
        v566 = v117;
        sub_21DF236C0(v121, &v555[v120], &qword_27CEA7778, &unk_21E147790);
        v123 = i;
        *i = v116;
        v124 = v123 + *(v119 + 48);
        sub_21DF3DE9C(&v122[v120], v124, &qword_27CEA7778, &unk_21E147790);
        v125 = v516;
        v126 = *(v124 + *(v516 + 48));
        v127 = *(v553 + 48);
        v128 = v517;
        (*v543)(v118, v124, v517);
        *(v118 + *(v125 + 48)) = v126;
        v129 = v550;
        sub_21DF236C0(v118, v550, &qword_27CEA7778, &unk_21E147790);
        v130 = v560;
        sub_21E13ED84();
        v117 = v566;
        v131 = v563;
        sub_21DF23614(v118, &qword_27CEA7778, &unk_21E147790);
        (*v542)(v129, v128);
        *(v130 + v127) = v131;
        sub_21DF23614(v123, &qword_27CEAB028, &qword_21E14FAF8);
        v579 = v117;
        v133 = *(*&v117 + 16);
        v132 = *(*&v117 + 24);
        if (v133 >= v132 >> 1)
        {
          sub_21DF5C19C((v132 > 1), v133 + 1, 1);
          v130 = v560;
          v117 = v579;
        }

        *(*&v117 + 16) = v133 + 1;
        sub_21DF3DE9C(v130, *&v117 + ((*(*&v552 + 80) + 32) & ~*(*&v552 + 80)) + *(*&v552 + 72) * v133, &qword_27CEA7790, &unk_21E14FB00);
        v116 = v131;
        v108 = v532;
        v109 = v548;
      }

      while (*&v547 != v131);
    }

    v134 = v541;
    if (*(*&v117 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB040, &unk_21E1580B0);
      *&v135 = COERCE_DOUBLE(sub_21E142A14());
    }

    else
    {
      *&v135 = MEMORY[0x277D84F98];
    }

    v579 = *&v135;

    v109 = v534;
    sub_21E041918(v136, 1, &v579);
    v480 = v109;
    if (*&v109 != 0.0)
    {
      goto LABEL_257;
    }

    v458 = *&v579;
    v137 = v94[3];
    v138 = v94[4];
    __swift_project_boxed_opaque_existential_1(v94, v137);
    v139 = (*(v138 + 24))(v137, v138);
    v455 = *(v139 + 16);
    if (v455)
    {
      v140 = 0;
      v457 = v139 + ((*(v471 + 80) + 32) & ~*(v471 + 80));
      v566 = 0.75 / (a3 / a4);
      LODWORD(v534) = *MEMORY[0x277D78EB0];
      v525 = *MEMORY[0x277D78E58];
      v514 = *MEMORY[0x277D78E80];
      v485 = *MEMORY[0x277D78E98];
      v469 = *MEMORY[0x277D78E90];
      v445 = *MEMORY[0x277D78E88];
      v433 = *MEMORY[0x277D78EA0];
      v432 = *MEMORY[0x277D78EA8];
      v430 = *MEMORY[0x277D78E60];
      v428 = *MEMORY[0x277D78E68];
      v427 = *MEMORY[0x277D78DE0];
      v426 = *MEMORY[0x277D78EB8];
      v424 = *MEMORY[0x277D78E70];
      v421 = *MEMORY[0x277D78E78];
      v468 = (v526 + 16);
      v467 = (v526 + 8);
      v524 = (v523 + 2);
      ++v523;
      v486 = (*&v521 + 8);
      v454 = (v513 + 48);
      v442 = (v513 + 32);
      v441 = (v513 + 8);
      v453 = *MEMORY[0x277CE09A0];
      v452 = *MEMORY[0x277CE0118];
      v451 = (v527 + 13);
      v495 = (*&v529 + 56);
      v494 = (*&v529 + 48);
      v493 = *MEMORY[0x277D78E48];
      v492 = (v533 + 2);
      v491 = (v533 + 11);
      v490 = (v533 + 1);
      v450 = (v567 + 48);
      v141 = 0.5;
      v473 = *MEMORY[0x277D78DF0];
      v448 = *MEMORY[0x277D78E18];
      v438 = *MEMORY[0x277D78E30];
      v431 = *MEMORY[0x277D78E28];
      v429 = *MEMORY[0x277D78E20];
      v425 = *MEMORY[0x277D78E38];
      v423 = *MEMORY[0x277D78E40];
      v422 = *MEMORY[0x277D78DF8];
      v420 = *MEMORY[0x277D78E00];
      v419 = *MEMORY[0x277D78DE8];
      v418 = *MEMORY[0x277D78E50];
      v417 = *MEMORY[0x277D78E08];
      v416 = *MEMORY[0x277D78E10];
      v456 = v471 + 16;
      v142 = (v540 + 8);
      v543 = (v436 + 8);
      v559 = v540 + 16;
      v533 = (v540 + 88);
      v527 = (v540 + 96);
      v545 = (v437 + 8);
      v560 = (v522 + 32);
      v555 = (v522 + 8);
      v472 = (v471 + 8);
      v562 = (v522 + 16);
      v550 = (v530 + 56);
      v549 = (v530 + 48);
      *&v567 = a4;
      v531 = a3;
      v449 = v139;
      v542 = (v540 + 8);
      while (2)
      {
        if (v140 >= *(v139 + 16))
        {
LABEL_253:
          __break(1u);
LABEL_254:
          sub_21E142B04();
          __break(1u);
LABEL_255:
          sub_21E142B04();
          __break(1u);
          goto LABEL_256;
        }

        v143 = *(v471 + 72);
        v506 = v140;
        (*(v471 + 16))(v515, v457 + v143 * v140, v517);
        v144 = v483;
        sub_21E13ED24();
        v507 = _s22VisualIntelligenceCore11CVDetectionO0aB2UIE15backgroundColor9isEnabled05SwiftE00G0VSb_tF_0(v145);
        v146 = *v142;
        (*v142)(v144, v108);
        sub_21E13ED24();
        v147 = v499;
        sub_21E13D864();
        v530 = v146;
        v146(v144, v108);
        v148 = sub_21E13ECB4();
        v553 = *v543;
        v149 = (v553)(v147, v544);
        MEMORY[0x28223BE20](v149);
        *(&v415 - 4) = v568;
        *(&v415 - 3) = a3;
        *(&v415 - 2) = a4;
        v109 = v480;
        v150 = sub_21E0B03F0(sub_21E042010, (&v415 - 6), v148);
        v529 = *&v109;

        MEMORY[0x28223BE20](v151);
        *(&v415 - 4) = v150;
        *(&v415 - 3) = a3;
        *(&v415 - 2) = a4;
        sub_21E140BB4();

        sub_21E13FAC4();
        v152 = *v484;
        sub_21E13FAA4();
        v153 = sub_21E13ED34();
        v154 = *(v153 + 16);
        v563 = v152;
        v552 = v154;
        if (v154 != 0.0)
        {
          v155 = 0;
          *&v547 = v153 + ((*(v540 + 80) + 32) & ~*(v540 + 80));
          v156 = v530;
          v548 = v153;
          do
          {
            if (v155 >= *(v153 + 16))
            {
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
              goto LABEL_247;
            }

            v157 = *(v540 + 72);
            i = v155;
            v158 = *(v540 + 16);
            v158(v134, *&v547 + v157 * v155, v108);
            v109 = v536;
            sub_21E13D864();
            v159 = sub_21E13ECB4();
            (v553)(v109, v544);
            v160 = *(v159 + 16);
            if (v160)
            {
              v579 = MEMORY[0x277D84F90];
              sub_21DF5C0E8(0, v160, 0);
              *&v161 = v579;
              v109 = v159 + 40;
              do
              {
                v162 = *(v109 - 8);
                v163 = *v109;
                v164 = v94[3];
                v165 = v94[4];
                __swift_project_boxed_opaque_existential_1(v94, v164);
                v166 = (*(v165 + 56))(v164, v165);
                v168 = v167;
                v170 = v169;
                v172 = v171;
                if (sub_21E13D7F4())
                {
                  if (a4 > 0.0)
                  {
                    v162 = v566 * (v162 + -0.5) + v141;
                  }
                }

                else
                {
                  v583.origin.x = v166;
                  v583.origin.y = v168;
                  v583.size.width = v170;
                  v583.size.height = v172;
                  MinX = CGRectGetMinX(v583);
                  v584.origin.x = v166;
                  v584.origin.y = v168;
                  v584.size.width = v170;
                  v584.size.height = v172;
                  v162 = MinX + v162 * CGRectGetWidth(v584);
                  v585.origin.x = v166;
                  v585.origin.y = v168;
                  v585.size.width = v170;
                  v585.size.height = v172;
                  MinY = CGRectGetMinY(v585);
                  v586.origin.x = v166;
                  v586.origin.y = v168;
                  v586.size.width = v170;
                  v586.size.height = v172;
                  v163 = MinY + v163 * CGRectGetHeight(v586);
                  a4 = *&v567;
                }

                v579 = *&v161;
                v176 = *(v161 + 16);
                v175 = *(v161 + 24);
                if (v176 >= v175 >> 1)
                {
                  sub_21DF5C0E8((v175 > 1), v176 + 1, 1);
                  *&v161 = v579;
                }

                *(v161 + 16) = v176 + 1;
                v177 = v161 + 16 * v176;
                *(v177 + 32) = v162;
                *(v177 + 40) = v163;
                v109 += 16;
                --v160;
              }

              while (v160);

              a3 = v531;
              v108 = v532;
              v156 = v530;
            }

            else
            {

              *&v161 = MEMORY[0x277D84F90];
            }

            MEMORY[0x28223BE20](v178);
            *(&v415 - 4) = v161;
            *(&v415 - 3) = a3;
            *(&v415 - 2) = a4;
            sub_21E140BB4();

            v179 = v535;
            v134 = v541;
            v158(v535, v541, v108);
            v180 = (*v533)(v179, v108);
            v181 = i;
            if (v180 == v534)
            {
              (*v527)(v179, v108);
              v182 = swift_projectBox();
              (*v524)(v538, v182, v539);
              v183 = sub_21E13DD14();
              v185 = sub_21E067B88(v183, v184);
              if (v185 > 4)
              {
                if (v185 > 6)
                {
                  if (v185 == 7)
                  {
                    sub_21E141444();
                  }

                  else if (v185 == 8)
                  {
                    sub_21E141494();
                  }

                  else
                  {
                    sub_21E141474();
                  }

                  goto LABEL_83;
                }

                if (v185 == 5)
                {
                  sub_21E1414B4();
                  goto LABEL_83;
                }
              }

              else
              {
                if (v185 <= 1)
                {
                  if (v185)
                  {
                    sub_21E141504();
                  }

                  else
                  {
                    sub_21E141464();
                  }

                  goto LABEL_83;
                }

                if (v185 == 2)
                {
                  sub_21E141434();
                  goto LABEL_83;
                }

                if (v185 == 3)
                {
                  sub_21E1414D4();
LABEL_83:
                  (*v523)(v538, v539);
                  goto LABEL_84;
                }
              }

              sub_21E141454();
              goto LABEL_83;
            }

            if (v180 == v525)
            {
              goto LABEL_37;
            }

            if (v180 == v514)
            {
              v156(v179, v108);
              _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
              goto LABEL_38;
            }

            if (v180 == v485)
            {
              (*v527)(v179, v108);
              v186 = swift_projectBox();
              (*v468)(v487, v186, v488);
              v187 = sub_21E13E2E4();
              v189 = sub_21E067B88(v187, v188);
              if (v189 > 4)
              {
                if (v189 <= 6)
                {
                  if (v189 != 5)
                  {
                    goto LABEL_97;
                  }

                  sub_21E1414B4();
                }

                else if (v189 == 7)
                {
                  sub_21E141444();
                }

                else if (v189 == 8)
                {
                  sub_21E141494();
                }

                else
                {
                  sub_21E141474();
                }
              }

              else if (v189 <= 1)
              {
                if (v189)
                {
                  sub_21E141504();
                }

                else
                {
                  sub_21E141464();
                }
              }

              else if (v189 == 2)
              {
                sub_21E141434();
              }

              else
              {
                if (v189 == 3)
                {
                  sub_21E1414D4();
                  goto LABEL_103;
                }

LABEL_97:
                sub_21E141454();
              }

LABEL_103:
              (*v467)(v487, v488);
LABEL_84:

              goto LABEL_38;
            }

            if (v180 == v469)
            {
LABEL_37:
              v156(v179, v108);
              sub_21E1414D4();
            }

            else if (v180 == v445)
            {
              v156(v179, v108);
              sub_21E1414E4();
            }

            else if (v180 == v433 || v180 == v432)
            {
              v156(v179, v108);
              sub_21E1414B4();
            }

            else if (v180 == v430)
            {
              v156(v179, v108);
              sub_21E1414F4();
            }

            else if (v180 == v428 || v180 == v427 || v180 == v426)
            {
              v156(v179, v108);
              sub_21E141434();
            }

            else
            {
              if (v180 != v424 && v180 != v421)
              {
                goto LABEL_254;
              }

              v156(v179, v108);
              sub_21E141504();
            }

LABEL_38:
            v155 = v181 + 1;
            v109 = v537;
            sub_21E13FAC4();

            sub_21E13FAA4();
            sub_21DF61704(&v570);
            (*v545)(v109, v546);
            v156(v134, v108);
            v153 = v548;
          }

          while (v155 != *&v552);
        }

        v190 = v462;
        sub_21E13ED84();
        sub_21E041FC4(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v191 = v461;
        v192 = v489;
        sub_21E13FA04();
        v193 = v192;
        v194 = v191;
        i = *v486;
        (i)(v190, v193);
        v195 = v191;
        v196 = v460;
        if ((*v454)(v195, 1, v460) == 1)
        {
          sub_21DF23614(v194, &unk_27CEADA50, &qword_21E14FAF0);
        }

        else
        {
          v197 = v446;
          (*v442)(v446, v194, v196);
          sub_21E13ED94();
          sub_21E142654();
          sub_21E03AE24(v198, v199, a3, a4);
          _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
          sub_21E13FA34();
          (*v441)(v197, v196);
        }

        v200 = v483;
        sub_21E13ED24();
        v201 = v499;
        sub_21E13D864();
        v202 = v530;
        (v530)(v200, v108);
        sub_21E13ECF4();
        v204 = v203;
        v206 = v205;
        (v553)(v201, v544);
        sub_21E03AE24(v204, v206, a3, a4);
        v208 = v207;
        sub_21E13ED24();
        *&v209 = COERCE_DOUBLE(sub_21E13D854());
        v211 = v210;
        v202(v200, v108);
        v579 = *&v209;
        v580 = v211;
        v212 = v463;
        sub_21E13ED84();
        v213 = v458;
        if (*(v458 + 16) && (v214 = sub_21E0E1024(v212), (v215 & 1) != 0))
        {
          v216 = *(*(v213 + 56) + 8 * v214);
          (i)(v212, v489);
          *&v581[0] = 2304032;
          *(&v581[0] + 1) = 0xE300000000000000;
          *&v576 = v216;
          v217 = sub_21E142AB4();
          MEMORY[0x223D52A60](v217);

          MEMORY[0x223D52A60](41, 0xE100000000000000);
          MEMORY[0x223D52A60](*&v581[0], *(&v581[0] + 1));
        }

        else
        {
          (i)(v212, v489);
        }

        v218 = v580;

        sub_21E140994();
        sub_21E1409B4();

        v219 = sub_21E140C44();
        v221 = v220;
        v223 = v222;
        v530 = v218;

        v224 = sub_21E1409D4();
        v225 = *(v224 - 8);
        v226 = v464;
        (*(v225 + 104))(v464, v453, v224);
        (*(v225 + 56))(v226, 0, 1, v224);
        v227 = sub_21E140BC4();
        v552 = v228;
        v230 = v229;
        v548 = v231;
        sub_21DF3DE8C(v219, v221, v223 & 1);

        sub_21DF23614(v226, &unk_27CEAD410, &qword_21E146960);
        *&v581[0] = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v232 = *&v552;
        v233 = sub_21E140C24();
        v235 = v234;
        LODWORD(v225) = v236;
        v238 = v237;
        sub_21DF3DE8C(v227, v232, v230 & 1);

        v475 = v225;
        v476 = v235;
        v477 = v233;
        v478 = v238;
        sub_21E13FAF4();
        sub_21E13F9E4();
        v521 = v208 * a4;
        (*v451)(v465, v452, v466);
        sub_21E140B24();
        v239 = v512;
        sub_21E13FAC4();
        sub_21E13FA54();
        sub_21DF61704(&v571);
        v513 = *v545;
        v513(v239, v546);
        _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
        sub_21E13FA24();
        if (sub_21E13E944())
        {
          v240 = v94[3];
          v241 = v94[4];
          __swift_project_boxed_opaque_existential_1(v94, v240);
          v242 = (*(v241 + 32))(v240, v241);
          v243 = v447;
          sub_21E13ED84();
          v244 = v531;
          v245 = v502;
          if (*(v242 + 16) && (v246 = sub_21E0E1024(v243), (v247 & 1) != 0))
          {
            v248 = *(*(v242 + 56) + 8 * v246);

            (i)(v243, v489);

            if (*(v248 + 16))
            {
              *&v581[0] = sub_21E0AC878(v248);
              *&v109 = v529;
              sub_21E03D6C0(v581);
              if (*&v109 != 0.0)
              {
LABEL_256:

                __break(1u);

                __break(1u);
LABEL_257:
                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

              v249 = sub_21E0355A4(*&v581[0], v484, 1.79769313e308, 1.79769313e308);
              v529 = 0.0;

              v250 = *(v249 + 16);
              v548 = v249;
              if (v250)
              {
                *&v581[0] = MEMORY[0x277D84F90];
                sub_21DF5C098(0, v250, 0);
                v251 = *&v581[0];
                v252 = v249 + ((*(v479 + 80) + 32) & ~*(v479 + 80));
                v552 = *(v479 + 72);
                i = v250;
                v253 = v250;
                do
                {
                  v254 = v503;
                  sub_21DF236C0(v252, v503, &qword_27CEA7758, &qword_21E147770);
                  v255 = v504;
                  sub_21DF236C0(v254, v504, &qword_27CEA7758, &qword_21E147770);
                  v256 = *(v520 + 48);
                  v257 = *(v520 + 64);
                  v258 = *(v255 + v257);
                  v259 = *(v255 + v257 + 8);
                  v260 = v505;
                  v261 = &v505[v257];
                  v262 = sub_21E13DD74();
                  (*(*(v262 - 8) + 32))(v260, v255, v262);
                  (*v560)(v260 + v256, v255 + v256, v565);
                  *v261 = v258;
                  *(v261 + 1) = v259;
                  sub_21DF23614(v260, &qword_27CEA7758, &qword_21E147770);
                  sub_21DF23614(v254, &qword_27CEA7758, &qword_21E147770);
                  *&v581[0] = v251;
                  v264 = *(v251 + 16);
                  v263 = *(v251 + 24);
                  v265 = v264 + 1;
                  if (v264 >= v263 >> 1)
                  {
                    sub_21DF5C098((v263 > 1), v264 + 1, 1);
                    v251 = *&v581[0];
                  }

                  *(v251 + 16) = v265;
                  *(v251 + 8 * v264 + 32) = v259;
                  v252 += *&v552;
                  --v253;
                }

                while (v253);
                v250 = i;
              }

              else
              {
                v265 = *(MEMORY[0x277D84F90] + 16);
                if (!v265)
                {
                  v356 = MEMORY[0x277D84F90];

                  swift_getKeyPath();

                  v352 = 0.0;
                  v109 = v501;
LABEL_195:
                  v370 = v521;
                  v371 = *(*&v356 + 16);
                  if (v371)
                  {
                    v372 = v244;
                    v373 = (*&v356 + 32);
                    v374 = 0.0;
                    v375 = v548;
                    do
                    {
                      v376 = *v373++;
                      v377 = v376;
                      if (v374 <= v376)
                      {
                        v374 = v377;
                      }

                      --v371;
                    }

                    while (v371);
                  }

                  else
                  {
                    v372 = v244;
                    v375 = v548;
                  }

                  v378 = 0;
                  v379 = *(v375 + 2);
                  v552 = v370 + 1.0;
                  v547 = v352 * 0.5;
                  for (i = v379; ; v379 = i)
                  {
                    if (v378 == v379)
                    {
                      v386 = 1;
                      v378 = v379;
                    }

                    else
                    {
                      if ((v378 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_251;
                      }

                      if (v378 >= *(v375 + 2))
                      {
                        goto LABEL_252;
                      }

                      v387 = &v375[((*(v479 + 80) + 32) & ~*(v479 + 80)) + *(v479 + 72) * v378];
                      v388 = *(v109 + 48);
                      v389 = v474;
                      *v474 = v378;
                      sub_21DF236C0(v387, v389 + v388, &qword_27CEA7758, &qword_21E147770);
                      sub_21DF3DE9C(v389, v245, &qword_27CEAB010, &qword_21E14FAD8);
                      v386 = 0;
                      ++v378;
                    }

                    (*v495)(v245, v386, 1, v109);
                    v390 = v500;
                    sub_21DF3DE9C(v245, v500, &qword_27CEAB018, &qword_21E14FAE0);
                    if ((*v494)(v390, 1, v109) == 1)
                    {

                      v266 = v515;
                      v244 = v372;
                      goto LABEL_132;
                    }

                    v391 = v390 + *(v109 + 48);
                    v392 = *(v520 + 48);
                    v393 = sub_21E13DD74();
                    v394 = *(v393 - 8);
                    v395 = v518;
                    (*(v394 + 32))(v518, v391, v393);
                    (*v560)(&v395[v392], v391 + v392, v565);
                    sub_21E140BA4();
                    v396 = v519;
                    sub_21E13DD64();
                    (*(v394 + 8))(v395, v393);
                    v397 = v498;
                    v109 = v496;
                    (*v492)(v498, v396, v496);
                    v398 = (*v491)(v397, v109);
                    if (v398 == v493)
                    {
                      sub_21E141434();
                      goto LABEL_204;
                    }

                    if (v398 == v473)
                    {
                      break;
                    }

                    if (v398 == v448)
                    {
                      _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
                    }

                    else if (v398 == v438)
                    {
                      sub_21E1414E4();
                    }

                    else
                    {
                      if (v398 == v431)
                      {
                        break;
                      }

                      if (v398 == v429)
                      {
                        sub_21E141504();
                      }

                      else if (v398 == v425 || v398 == v423)
                      {
                        sub_21E1414B4();
                      }

                      else if (v398 == v422)
                      {
                        sub_21E1414F4();
                      }

                      else if (v398 == v420 || v398 == v419 || v398 == v418)
                      {
                        sub_21E141444();
                      }

                      else
                      {
                        if (v398 != v417 && v398 != v416)
                        {
                          goto LABEL_255;
                        }

                        sub_21E141454();
                      }
                    }

LABEL_204:
                    (*v490)(v519, v109);
                    v380 = v497;
                    sub_21E13FAC4();

                    sub_21E13FA54();
                    sub_21DF61704(&v572);
                    v381 = v380;
                    v382 = v546;
                    v383 = v513;
                    v513(v381, v546);
                    sub_21E140BA4();
                    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
                    v384 = v512;
                    sub_21E13FAC4();

                    sub_21E13F4E4();
                    sub_21E13FA94();
                    sub_21E041EAC(&v574);
                    sub_21DF61704(&v573);
                    v383(v384, v382);
                    _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
                    v385 = v518;
                    sub_21E13FA24();
                    (*v555)(&v385[v392], v565);
                    v372 = v531;
                    v109 = v501;
                    v245 = v502;
                    v375 = v548;
                  }

                  sub_21E1414D4();
                  goto LABEL_204;
                }

                v251 = MEMORY[0x277D84F90];
              }

              v352 = 0.0;
              v353 = 32;
              do
              {
                if (v352 <= *(v251 + v353))
                {
                  v352 = *(v251 + v353);
                }

                v353 += 8;
                --v265;
              }

              while (v265);

              *&v354 = COERCE_DOUBLE(swift_getKeyPath());
              v355 = v548;
              if (v250)
              {
                v547 = *&v354;
                *&v581[0] = MEMORY[0x277D84F90];
                sub_21DF5C098(0, v250, 0);
                v356 = *v581;
                v357 = &v355[(*(v479 + 80) + 32) & ~*(v479 + 80)];
                v526 = *(v479 + 72);
                do
                {
                  v552 = v356;
                  i = v250;
                  v358 = v503;
                  sub_21DF236C0(v357, v503, &qword_27CEA7758, &qword_21E147770);
                  v359 = v504;
                  sub_21DF236C0(v358, v504, &qword_27CEA7758, &qword_21E147770);
                  v360 = *(v520 + 48);
                  v361 = *(v520 + 64);
                  v362 = *(v359 + v361);
                  v363 = *(v359 + v361 + 8);
                  v364 = v505;
                  v365 = &v505[v361];
                  v366 = sub_21E13DD74();
                  (*(*(v366 - 8) + 32))(v364, v359, v366);
                  (*v560)(v364 + v360, v359 + v360, v565);
                  *v365 = v362;
                  *(v365 + 1) = v363;
                  swift_getAtKeyPath();
                  sub_21DF23614(v364, &qword_27CEA7758, &qword_21E147770);
                  v356 = v552;
                  sub_21DF23614(v358, &qword_27CEA7758, &qword_21E147770);
                  v367 = v576;
                  *v581 = v356;
                  v369 = *(*&v356 + 16);
                  v368 = *(*&v356 + 24);
                  if (v369 >= v368 >> 1)
                  {
                    sub_21DF5C098((v368 > 1), v369 + 1, 1);
                    v356 = *v581;
                  }

                  *(*&v356 + 16) = v369 + 1;
                  *(*&v356 + 8 * v369 + 32) = v367;
                  v357 += v526;
                  v250 = (i - 1);
                }

                while (i != 1);
              }

              else
              {

                v356 = MEMORY[0x277D84F90];
              }

              v109 = v501;
              v245 = v502;
              goto LABEL_195;
            }
          }

          else
          {

            (i)(v243, v489);
          }
        }

        else
        {
          v244 = v531;
        }

        v266 = v515;
LABEL_132:

        v267 = v94[3];
        v268 = v94[4];
        __swift_project_boxed_opaque_existential_1(v94, v267);
        v269 = (*(v268 + 80))(v267, v268);
        MEMORY[0x28223BE20](v269);
        *(&v415 - 2) = v266;
        *&v109 = v529;
        v270 = sub_21E036108(sub_21E041E70, (&v415 - 4), v269);

        MEMORY[0x28223BE20](v271);
        *(&v415 - 2) = v266;
        v272 = v459;
        sub_21DF57A64(sub_21E041E8C, v511, v459);
        v273 = v516;
        v274 = (*v450)(v272, 1, v516);
        v275 = v555;
        if (v274 == 1)
        {
          sub_21DF23614(v272, &qword_27CEAB008, &qword_21E14FAD0);
          v276 = v554;
        }

        else
        {
          v277 = *(v272 + *(v273 + 48));
          (*v472)(v272, v517);
          v276 = v554;
          if (v277 > 0.0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEF8, &qword_21E14FB20);
            v278 = swift_allocObject();
            *(v278 + 16) = xmmword_21E145380;
            *(v278 + 56) = MEMORY[0x277D83A90];
            *(v278 + 64) = MEMORY[0x277D83B08];
            *(v278 + 32) = v277 * 100.0;
            v279 = sub_21E142154();
            v281 = v280;
            v282 = *(v270 + 2);
            v283 = swift_isUniquelyReferenced_nonNull_native();
            *&v581[0] = v270;
            if (!v283 || v282 >= *(v270 + 3) >> 1)
            {
              v270 = sub_21E06A6D4(v283, v282 + 1, 1, v270);
              *&v581[0] = v270;
            }

            sub_21DF5E648(0, 0, 1, 0x79636E65696C6153, 0xE800000000000000, v279, v281);
          }
        }

        v285 = v484;
        v286 = sub_21E035AB8(v284, v484);
        v287 = sub_21E035E0C(v270, v285);
        v480 = v109;
        v288 = *(v286 + 16);
        v530 = v286;
        v526 = v287;
        v548 = v270;
        if (v288)
        {
          *&v576 = MEMORY[0x277D84F90];
          sub_21DF5C098(0, v288, 0);
          v289 = v576;
          v290 = v286 + ((*(v522 + 80) + 32) & ~*(v522 + 80));
          v109 = *(v522 + 72);
          v291 = *(v522 + 16);
          do
          {
            v292 = v289;
            v293 = v561;
            v294 = v565;
            v291(v561, v290, v565);
            sub_21E13F9E4();
            v296 = v295;
            v297 = v293;
            v289 = v292;
            (*v275)(v297, v294);
            *&v576 = v292;
            v298 = *(v292 + 2);
            v299 = *(v289 + 3);
            if (v298 >= v299 >> 1)
            {
              sub_21DF5C098((v299 > 1), v298 + 1, 1);
              v289 = v576;
            }

            *(v289 + 2) = v298 + 1;
            *&v289[8 * v298 + 32] = v296;
            v290 += v109;
            --v288;
          }

          while (v288);
          v276 = v554;
          v300 = MEMORY[0x277D84F90];
          v287 = v526;
        }

        else
        {
          v300 = MEMORY[0x277D84F90];
          v289 = MEMORY[0x277D84F90];
        }

        v301 = *(v287 + 16);
        i = v289;
        if (v301)
        {
          v302 = v287;
          *&v576 = v300;
          sub_21DF5C098(0, v301, 0);
          v300 = *&v576;
          v303 = v302 + ((*(v522 + 80) + 32) & ~*(v522 + 80));
          v552 = *(v522 + 72);
          v304 = *(v522 + 16);
          do
          {
            v305 = v561;
            v306 = v565;
            v304(v561, v303, v565);
            sub_21E13F9E4();
            v308 = v307;
            (*v275)(v305, v306);
            *&v576 = v300;
            v109 = *(*&v300 + 16);
            v309 = *(*&v300 + 24);
            if (v109 >= v309 >> 1)
            {
              sub_21DF5C098((v309 > 1), v109 + 1, 1);
              v300 = *&v576;
            }

            *(*&v300 + 16) = v109 + 1;
            *(*&v300 + 8 * v109 + 32) = v308;
            v303 += *&v552;
            --v301;
          }

          while (v301);
          v141 = 0.5;

          v276 = v554;
          v289 = i;
        }

        else
        {
          v141 = 0.5;
        }

        v310 = *(v289 + 2);
        v311 = v565;
        if (v310)
        {
          v312 = *(v289 + 4);
          v313 = v310 - 1;
          if (v313)
          {
            v314 = (v289 + 40);
            do
            {
              v315 = *v314++;
              v316 = v315;
              if (v312 < v315)
              {
                v312 = v316;
              }

              --v313;
            }

            while (v313);
          }
        }

        v317 = *(*&v300 + 16);
        if (v317)
        {
          v318 = *(*&v300 + 32);
          v319 = v317 - 1;
          if (v319)
          {
            v320 = (*&v300 + 40);
            do
            {
              v321 = *v320++;
              v322 = v321;
              if (v318 < v321)
              {
                v318 = v322;
              }

              --v319;
            }

            while (v319);
          }
        }

        ++v506;
        sub_21E13ED94();
        v323 = v499;
        sub_21E142664();
        sub_21E13ECA4();
        v325 = v324;
        v327 = v326;
        (v553)(v323, v544);
        sub_21E03AE24(v325, v327, v244, *&v567);

        v529 = 0.0;
        v553 = 0;
        v548 = i + 32;
        v552 = v300;
        *&v547 = *&v300 + 32;
LABEL_170:
        v335 = *(v530 + 2);
        if (v553 != v335)
        {
          v336 = v528;
          if (v553 >= v335)
          {
            goto LABEL_246;
          }

          v337 = (*(v522 + 80) + 32) & ~*(v522 + 80);
          v338 = *(v522 + 72);
          v339 = v553;
          v109 = *(v522 + 16);
          (v109)(v528, &v530[v337 + v338 * v553], v311);
          v553 = v339 + 1;
          v340 = *(v526 + 16);
          if (*&v529 == v340)
          {
            (*v275)(v336, v311);
            v341 = 1;
            goto LABEL_177;
          }

          if (*&v529 < v340)
          {
            v342 = v529;
            *&v521 = *&v529 + 1;
            v343 = v526 + v337 + v338 * *&v529;
            v344 = *(v556 + 48);
            v345 = v509;
            (*v560)(v509, v528, v565);
            (v109)(&v345[v344], v343, v565);
            v346 = v345;
            v311 = v565;
            v347 = v508;
            sub_21DF3DE9C(v346, v508, &qword_27CEAAFF8, &qword_21E14FAC0);
            v348 = *(v276 + 48);
            v349 = v510;
            *v510 = v342;
            sub_21DF3DE9C(v347, v349 + v348, &qword_27CEAAFF8, &qword_21E14FAC0);
            sub_21DF3DE9C(v349, v557, &qword_27CEAAFF0, &qword_21E14FAB8);
            v341 = 0;
            v529 = v521;
            goto LABEL_177;
          }

LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        while (1)
        {
          v341 = 1;
LABEL_177:
          v350 = v557;
          (*v550)(v557, v341, 1, v276);
          v351 = v350;
          v109 = v551;
          sub_21DF3DE9C(v351, v551, &qword_27CEAB000, &qword_21E14FAC8);
          if ((*v549)(v109, 1, v276) == 1)
          {
            break;
          }

          v328 = *v109;
          v329 = v109 + *(v276 + 48);
          v109 = *(v556 + 48);
          v330 = *v560;
          v331 = v564;
          (*v560)(v564, v329, v565);
          v332 = &v331[v109];
          v311 = v565;
          v330(v332, v329 + v109, v565);
          if ((*&v328 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
            goto LABEL_245;
          }

          if (*&v328 >= *(i + 2))
          {
            goto LABEL_243;
          }

          _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
          v333 = v564;
          sub_21E13FA24();
          v275 = v555;
          v334 = *v555;
          (*v555)(v333, v311);
          if (*&v328 >= *(*&v552 + 16))
          {
            goto LABEL_244;
          }

          v141 = 0.5;
          _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
          sub_21E13FA24();
          v334(&v333[v109], v311);
          v276 = v554;
          if ((v341 & 1) == 0)
          {
            goto LABEL_170;
          }
        }

        sub_21DF3DE8C(v477, v476, v475 & 1);

        sub_21DF61704(&v569);

        (*v275)(v481, v311);
        v513(v482, v546);
        (*v472)(v515, v517);
        v140 = v506;
        a4 = *&v567;
        v108 = v532;
        v134 = v541;
        v139 = v449;
        a3 = v531;
        v142 = v542;
        if (v506 != v455)
        {
          continue;
        }

        break;
      }
    }

    v399 = v568;
    if (sub_21E13E964())
    {
      v400 = v94[3];
      v401 = v94[4];
      __swift_project_boxed_opaque_existential_1(v94, v400);
      (*(v401 + 40))(v400, v401);
      v402 = v94[3];
      v403 = v94[4];
      __swift_project_boxed_opaque_existential_1(v94, v402);
      (*(v403 + 48))(v402, v403);
      sub_21E03C0F8(v575, a3, a4);
      sub_21E1414B4();
      v404 = v512;
      sub_21E13FAC4();

      sub_21E13FAA4();
      v405 = *(v437 + 8);
      v405(v404, v546);
      v406 = v94[3];
      v407 = v94[4];
      __swift_project_boxed_opaque_existential_1(v94, v406);
      (*(v407 + 96))(v406, v407);
      if (sub_21E13D7F4())
      {
        sub_21E140BA4();
        v568 = v576;
        v567 = v577;
        v408 = v578;
      }

      else
      {
        v409 = v499;
        sub_21E142664();
        v410 = sub_21E13ECB4();
        v411 = (*(v436 + 8))(v409, v544);
        MEMORY[0x28223BE20](v411);
        *(&v415 - 4) = v399;
        *(&v415 - 3) = a3;
        *(&v415 - 2) = a4;
        v412 = sub_21E0B03F0(sub_21E042010, (&v415 - 6), v410);

        MEMORY[0x28223BE20](v413);
        *(&v415 - 4) = v412;
        *(&v415 - 3) = a3;
        *(&v415 - 2) = a4;
        sub_21E140BB4();
        v568 = v576;
        v567 = v577;
        v408 = v578;
      }

      v581[0] = v568;
      v581[1] = v567;
      v582 = v408;
      sub_21E1414B4();
      v414 = v512;
      sub_21E13FAC4();

      sub_21E13F4E4();
      sub_21E13FA94();
      sub_21E041EAC(&v579);
      sub_21E041F00(v568, *(&v568 + 1), v567, *(&v567 + 1), v408);
      sub_21DF61704(v575);
      v405(v414, v546);
    }

    (*(v434 + 8))(v440, v435);
    return (*(v443 + 8))(v439, v444);
  }

  return result;
}

uint64_t sub_21E03AD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VIUIAnnotationCanvas(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E03ADBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VIUIAnnotationCanvas(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21E03AE24(double a1, double a2, double a3, double a4)
{
  v8 = (v4 + *(type metadata accessor for VIUIAnnotationCanvas(0) + 24));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 56))(v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (sub_21E13D7F4())
  {
    if (a4 > 0.0)
    {
      return (a1 + -0.5) * (0.75 / (a3 / a4)) + 0.5;
    }
  }

  else
  {
    v20.origin.x = v11;
    v20.origin.y = v13;
    v20.size.width = v15;
    v20.size.height = v17;
    MinX = CGRectGetMinX(v20);
    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    a1 = MinX + CGRectGetWidth(v21) * a1;
    v22.origin.x = v11;
    v22.origin.y = v13;
    v22.size.width = v15;
    v22.size.height = v17;
    CGRectGetMinY(v22);
    v23.origin.x = v11;
    v23.origin.y = v13;
    v23.size.width = v15;
    v23.size.height = v17;
    CGRectGetHeight(v23);
  }

  return a1;
}

uint64_t sub_21E03AF70()
{
  v0 = sub_21E13D844();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_21E13DD64();
  v21 = v1[2];
  v21(v8, v11, v0);
  v20 = v1[11];
  v12 = v20(v8, v0);
  v13 = *MEMORY[0x277D78E48];
  if (v12 == *MEMORY[0x277D78E48])
  {
    v14 = 100;
  }

  else
  {
    if (v12 == *MEMORY[0x277D78DF0])
    {
      goto LABEL_4;
    }

    if (v12 == *MEMORY[0x277D78E18])
    {
      v14 = 1000;
      goto LABEL_9;
    }

    if (v12 == *MEMORY[0x277D78E30])
    {
      v14 = 150;
      goto LABEL_9;
    }

    if (v12 == *MEMORY[0x277D78E28])
    {
LABEL_4:
      v14 = 300;
    }

    else if (v12 == *MEMORY[0x277D78E20])
    {
      v14 = 600;
    }

    else if (v12 == *MEMORY[0x277D78E38])
    {
      v14 = 200;
    }

    else if (v12 == *MEMORY[0x277D78E40])
    {
      v14 = 201;
    }

    else if (v12 == *MEMORY[0x277D78DF8])
    {
      v14 = 50;
    }

    else if (v12 == *MEMORY[0x277D78E00])
    {
      v14 = 700;
    }

    else if (v12 == *MEMORY[0x277D78DE8])
    {
      v14 = 800;
    }

    else if (v12 == *MEMORY[0x277D78E50])
    {
      v14 = 10;
    }

    else if (v12 == *MEMORY[0x277D78E08])
    {
      v14 = 302;
    }

    else
    {
      if (v12 != *MEMORY[0x277D78E10])
      {
        goto LABEL_56;
      }

      v14 = 301;
    }
  }

LABEL_9:
  v22 = v14;
  v15 = v1[1];
  v15(v11, v0);
  v16 = v23;
  sub_21E13DD64();
  v21(v3, v16, v0);
  v17 = v20(v3, v0);
  if (v17 == v13)
  {
    v18 = 100;
LABEL_17:
    v15(v16, v0);
    return v18 < v22;
  }

  if (v17 == *MEMORY[0x277D78DF0])
  {
    goto LABEL_12;
  }

  if (v17 == *MEMORY[0x277D78E18])
  {
    v18 = 1000;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E30])
  {
    v18 = 150;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E28])
  {
LABEL_12:
    v18 = 300;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E20])
  {
    v18 = 600;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E38])
  {
    v18 = 200;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E40])
  {
    v18 = 201;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78DF8])
  {
    v18 = 50;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E00])
  {
    v18 = 700;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78DE8])
  {
    v18 = 800;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E50])
  {
    v18 = 10;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E08])
  {
    v18 = 302;
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D78E10])
  {
    v18 = 301;
    goto LABEL_17;
  }

LABEL_56:
  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21E03B498()
{
  v1 = sub_21E13D844();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D78E48])
  {
    return 0xD000000000000012;
  }

  v8 = v6;
  result = 0x746E697270776170;
  if (v8 != *MEMORY[0x277D78DF0])
  {
    if (v8 == *MEMORY[0x277D78E18])
    {
      return 0x646E696677656976;
    }

    else if (v8 == *MEMORY[0x277D78E30])
    {
      return 0x6C732E656C707061;
    }

    else if (v8 != *MEMORY[0x277D78E28])
    {
      result = 0x6574636172616863;
      if (v8 != *MEMORY[0x277D78E20])
      {
        if (v8 == *MEMORY[0x277D78E38])
        {
          return 0x65646F637271;
        }

        else if (v8 == *MEMORY[0x277D78E40])
        {
          return 0x70696C63707061;
        }

        else if (v8 != *MEMORY[0x277D78DF8])
        {
          if (v8 == *MEMORY[0x277D78E00])
          {
            return 0xD000000000000019;
          }

          else if (v8 == *MEMORY[0x277D78DE8])
          {
            return 0xD000000000000013;
          }

          else if (v8 == *MEMORY[0x277D78E50])
          {
            return 0x6F7373616CLL;
          }

          else
          {
            result = 0x732E796C6B656577;
            if (v8 != *MEMORY[0x277D78E08] && v8 != *MEMORY[0x277D78E10])
            {
              result = sub_21E142B04();
              __break(1u);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21E03B7CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21E13EAF4();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21E13E254();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v61 - v10;
  MEMORY[0x28223BE20](v11);
  v65 = &v61 - v12;
  v13 = sub_21E13EB14();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x28223BE20](v13);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB048, &qword_21E14FB58);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - v16;
  v18 = sub_21E13DD54();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v69 = a1;
  sub_21E13ED44();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    result = sub_21DF23614(v17, &qword_27CEAB048, &qword_21E14FB58);
LABEL_10:
    v49 = 0uLL;
    goto LABEL_11;
  }

  v61 = a2;
  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v21, v24, v18);
  if ((*(v19 + 88))(v21, v18) != *MEMORY[0x277D79168])
  {
    v41 = *(v19 + 8);
    v41(v21, v18);
    v42 = sub_21E13E234();
    v44 = v43;
    v45 = sub_21E03642C();
    v47 = v46;
    result = (v41)(v24, v18);
    v48 = v61;
    *v61 = v42;
    v48[1] = v44;
    v48[2] = v45;
    v48[3] = v47;
    return result;
  }

  (*(v19 + 96))(v21, v18);
  v26 = v70;
  v27 = v71;
  v28 = v21;
  v29 = v72;
  (*(v71 + 32))(v70, v28, v72);
  sub_21E13EB04();
  v31 = v67;
  v30 = v68;
  if ((*(v67 + 88))(v7, v68) != *MEMORY[0x277D795D8])
  {
    (*(v27 + 8))(v26, v29);
    (*(v19 + 8))(v24, v18);
    result = (*(v31 + 8))(v7, v30);
    goto LABEL_9;
  }

  (*(v31 + 96))(v7, v30);
  v32 = v64;
  v33 = v65;
  v34 = v66;
  (*(v64 + 32))(v65, v7, v66);
  v35 = *(v32 + 104);
  v36 = v63;
  LODWORD(v68) = *MEMORY[0x277D793C0];
  v35(v63);
  sub_21E041FC4(&qword_27CEAB050, MEMORY[0x277D793F8], MEMORY[0x277D79400]);
  v37 = sub_21E142074();
  v38 = v36;
  v39 = v34;
  v40 = *(v32 + 8);
  v40(v38, v39);
  if (v37)
  {
    v40(v33, v39);
    (*(v71 + 8))(v70, v72);
    result = (*(v19 + 8))(v24, v18);
LABEL_9:
    a2 = v61;
    goto LABEL_10;
  }

  v50 = v62;
  (*(v32 + 16))(v62, v33, v39);
  v51 = (*(v32 + 88))(v50, v39);
  if (v51 != *MEMORY[0x277D793D0] && v51 != v68)
  {
    v52 = v40;
    v53 = sub_21E13E234();
    v68 = v54;
    v69 = v53;
    v55 = v70;
    v67 = sub_21E036750();
    v64 = v56;
    v52(v33, v39);
    (*(v71 + 8))(v55, v72);
    (*(v19 + 8))(v24, v18);
    v58 = v61;
    v57 = v62;
    v59 = v68;
    *v61 = v69;
    v58[1] = v59;
    v60 = v64;
    v58[2] = v67;
    v58[3] = v60;
    return (v52)(v57, v39);
  }

  v40(v33, v39);
  (*(v71 + 8))(v70, v72);
  result = (*(v19 + 8))(v24, v18);
  v49 = 0uLL;
  a2 = v61;
LABEL_11:
  *a2 = v49;
  *(a2 + 1) = v49;
  return result;
}

uint64_t sub_21E03BF18(uint64_t a1)
{
  v2 = sub_21E13D344();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  sub_21DF236C0(a1, &v15 - v10, &qword_27CEA7778, &unk_21E147790);
  sub_21E13ED84();
  v12 = sub_21E13EDA4();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_21E13ED84();
  LOBYTE(a1) = sub_21E13D324();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v13(v8, v2);
  return a1 & 1;
}

void sub_21E03C0F8(uint64_t a1@<X8>, double a2@<D4>, double a3@<D5>)
{
  v7 = sub_21E13ED04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13DB54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E142634();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(type metadata accessor for VIUIAnnotationCanvas(0) + 24);
  *&v47 = v3;
  v24 = *(v3 + v23 + 24);
  v25 = *(v3 + v23 + 32);
  __swift_project_boxed_opaque_existential_1((v3 + v23), v24);
  (*(v25 + 112))(v24, v25);
  v26 = (*(v12 + 88))(v14, v11);
  if (v26 == *MEMORY[0x277D79088])
  {
    goto LABEL_2;
  }

  if (v26 == *MEMORY[0x277D79078])
  {
    MEMORY[0x28223BE20](v26);
    *(&v46 - 4) = v16;
    *(&v46 - 3) = v18;
    *(&v46 - 2) = v20;
    *(&v46 - 1) = v22;
    sub_21E140BB4();
    v34 = v48;
    v35 = v49;
    v33 = v50;
    goto LABEL_7;
  }

  if (v26 != *MEMORY[0x277D79080])
  {
    if (v26 != *MEMORY[0x277D79070])
    {
      sub_21E142B04();
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_2:
    sub_21E142664();
    v27 = sub_21E13ECC4();
    (*(v8 + 8))(v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7780, &qword_21E14FB50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E145380;
    if (*(v27 + 16))
    {
      *(inited + 32) = *(v27 + 32);
      *&v48 = v27;
      v29 = sub_21DF5B264(inited);
      v30 = v48;
      MEMORY[0x28223BE20](v29);
      *(&v46 - 4) = v47;
      *(&v46 - 3) = a2;
      *(&v46 - 2) = a3;
      v31 = sub_21E0B03F0(sub_21E042010, (&v46 - 3), v30);

      MEMORY[0x28223BE20](v32);
      *(&v46 - 4) = v31;
      *(&v46 - 3) = a2;
      *(&v46 - 2) = a3;
LABEL_4:
      sub_21E140BB4();
      v47 = v49;
      v46 = v48;
      v33 = v50;

      v34 = v46;
      v35 = v47;
LABEL_7:
      *a1 = v34;
      *(a1 + 16) = v35;
      *(a1 + 32) = v33;
      return;
    }

    goto LABEL_19;
  }

  sub_21E142664();
  v11 = sub_21E13ECC4();
  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7780, &qword_21E14FB50);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_21E145380;
  if (!*(v11 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v36 + 32) = *(v11 + 32);
  *&v48 = v11;
  v37 = v36;

  sub_21DF5B264(v37);
  v7 = v48;
  v38 = *(v48 + 16);
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v38 != 1)
  {
    v46 = *(v48 + 32);
    v22 = *(v48 + 48);
    v20 = *(v48 + 56);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  v7 = sub_21E00E488(v7);
LABEL_13:
  *(v7 + 32) = v22;
  *(v7 + 40) = v20;
  v39 = *(v7 + 16);
  if (v39 < 2)
  {
    __break(1u);
    goto LABEL_25;
  }

  *(v7 + 48) = v46;
  if (v39 < 4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v39 != 4)
  {
    v40 = *(v7 + 80);
    *(v7 + 80) = *(v7 + 96);
    *(v7 + 96) = v40;
    *&v48 = v11;

    v42 = sub_21DF5B264(v41);
    v43 = v48;
    MEMORY[0x28223BE20](v42);
    *(&v46 - 4) = v47;
    *(&v46 - 3) = a2;
    *(&v46 - 2) = a3;
    v44 = sub_21E0B03F0(sub_21E041F64, (&v46 - 3), v43);

    MEMORY[0x28223BE20](v45);
    *(&v46 - 4) = v44;
    *(&v46 - 3) = a2;
    *(&v46 - 2) = a3;
    goto LABEL_4;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_21E03C6E0(uint64_t a1)
{
  v2 = type metadata accessor for VIUIAnnotationCanvas(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (a1 + *(v5 + 32));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v12[1] = (*(v8 + 24))(v7, v8);
  sub_21E03AD58(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_21E03ADBC(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFD8, &unk_21E14FA70);
  sub_21E13D344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFC0, &qword_21E14F9C8);
  sub_21DF23E5C(&qword_27CEAAFE0, &qword_27CEAAFD8, &unk_21E14FA70, MEMORY[0x277D83980]);
  sub_21DF23E5C(&qword_27CEAAFB8, &qword_27CEAAFC0, &qword_21E14F9C8, MEMORY[0x277CE1148]);
  sub_21E041FC4(&qword_27CEAAFE8, MEMORY[0x277D79630], MEMORY[0x277D79638]);
  return sub_21E141A84();
}

unint64_t sub_21E03C930()
{
  result = qword_27CEAAFB0;
  if (!qword_27CEAAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAFA8, &qword_21E14F9C0);
    sub_21DF23E5C(&qword_27CEAAFB8, &qword_27CEAAFC0, &qword_21E14F9C8, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAAFB0);
  }

  return result;
}

uint64_t sub_21E03C9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = sub_21E13D344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8430, &unk_21E148ED0);
  MEMORY[0x28223BE20](v50);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8438, &qword_21E148EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = sub_21E13D874();
  v53 = *(v21 - 8);
  v54 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAF40, &qword_21E14F880);
  MEMORY[0x28223BE20](v51);
  v25 = &v47 - v24;
  v52 = v23;
  sub_21E13ED24();
  v56 = a1;
  sub_21E13ED84();
  v58 = v6;
  v26 = *(v6 + 56);
  v55 = v5;
  v26(v20, 0, 1, v5);
  v27 = (a2 + *(type metadata accessor for VIUIAnnotationCanvas(0) + 24));
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v29 + 120))(v28, v29);
  v30 = sub_21E13EF04();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v12, 1, v30) == 1)
  {
    sub_21DF23614(v12, &qword_27CEACB50, &qword_21E14FA80);
    v32 = 1;
  }

  else
  {
    sub_21E13EE24();
    (*(v31 + 8))(v12, v30);
    v32 = 0;
  }

  v33 = v55;
  v26(v17, v32, 1, v55);
  v34 = *(v50 + 48);
  sub_21DF236C0(v20, v9, &qword_27CEA8438, &qword_21E148EE0);
  sub_21DF236C0(v17, &v9[v34], &qword_27CEA8438, &qword_21E148EE0);
  v35 = *(v58 + 48);
  if (v35(v9, 1, v33) != 1)
  {
    v37 = v49;
    sub_21DF236C0(v9, v49, &qword_27CEA8438, &qword_21E148EE0);
    if (v35(&v9[v34], 1, v33) != 1)
    {
      v38 = v58;
      v39 = v48;
      (*(v58 + 32))(v48, &v9[v34], v33);
      sub_21E041FC4(&qword_280F6C088, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v36 = sub_21E142074();
      v40 = *(v38 + 8);
      v40(v39, v33);
      sub_21DF23614(v17, &qword_27CEA8438, &qword_21E148EE0);
      sub_21DF23614(v20, &qword_27CEA8438, &qword_21E148EE0);
      v40(v49, v33);
      sub_21DF23614(v9, &qword_27CEA8438, &qword_21E148EE0);
      goto LABEL_11;
    }

    sub_21DF23614(v17, &qword_27CEA8438, &qword_21E148EE0);
    sub_21DF23614(v20, &qword_27CEA8438, &qword_21E148EE0);
    (*(v58 + 8))(v37, v33);
    goto LABEL_9;
  }

  sub_21DF23614(v17, &qword_27CEA8438, &qword_21E148EE0);
  sub_21DF23614(v20, &qword_27CEA8438, &qword_21E148EE0);
  if (v35(&v9[v34], 1, v33) != 1)
  {
LABEL_9:
    sub_21DF23614(v9, &qword_27CEA8430, &unk_21E148ED0);
    v36 = 0;
    goto LABEL_11;
  }

  sub_21DF23614(v9, &qword_27CEA8438, &qword_21E148EE0);
  v36 = 1;
LABEL_11:
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v42 = v51;
  v41 = v52;
  v43 = *(v51 + 40);
  v25[v43] = 1;
  v44 = &v25[*(v42 + 44)];
  (*(v53 + 32))(&v25[*(v42 + 36)], v41, v54);
  v25[v43] = v36 & 1;
  *v44 = 0;
  v44[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFC0, &qword_21E14F9C8);
  v45 = v57;
  sub_21E13ED84();
  return sub_21DF3DE9C(v25, v45, &qword_27CEAAF40, &qword_21E14F880);
}

void sub_21E03D0F0(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    sub_21E140B44();
    v6 = v4 - 1;
    if (v6)
    {
      v7 = a4 + 56;
      do
      {
        sub_21E140B64();
        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }
}

uint64_t sub_21E03D16C(uint64_t a1)
{
  v3 = v1;
  v4 = sub_21E140034();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  sub_21E03AD58(v3, &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_21E03ADBC(&v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v15 = v3;
  (*(v5 + 104))(v7, *MEMORY[0x277CE00F0], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAFA8, &qword_21E14F9C0);
  sub_21E03C930();
  return sub_21E1417A4();
}

uint64_t sub_21E03D38C(uint64_t a1)
{
  result = sub_21E13D834();
  if (v2 <= 0x3F)
  {
    result = sub_21E13E9C4();
    if (v3 <= 0x3F)
    {
      result = sub_21E03D428();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_21E03D428()
{
  result = qword_280F69660;
  if (!qword_280F69660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280F69660);
  }

  return result;
}

uint64_t sub_21E03D48C(uint64_t *a1, double a2, double a3)
{
  v7 = *(type metadata accessor for VIUIAnnotationCanvas(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21E036E5C(a1, v8, a2, a3);
}

uint64_t objectdestroyTm_17()
{
  v1 = (type metadata accessor for VIUIAnnotationCanvas(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_21E13D834();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_21E13E9C4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v2 + v1[8]));

  return swift_deallocObject();
}

uint64_t sub_21E03D640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VIUIAnnotationCanvas(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E03C9FC(a1, v6, a2);
}

void sub_21E03D6C0(uint64_t *a1)
{
  v2 = *(sub_21E13DD74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21E101950(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21E03D81C(v5);
  *a1 = v3;
}

void sub_21E03D768(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21E101964(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21E03D948(v5);
  *a1 = v3;
}

void sub_21E03D81C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21E142AA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21E13DD74();
        v6 = sub_21E142314();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21E13DD74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21E03E51C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21E03DA8C(0, v2, 1, a1);
  }
}

void sub_21E03D948(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21E142AA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
        v6 = sub_21E142314();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21E03FA0C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21E03E2B4(0, v2, 1, a1);
  }
}

void sub_21E03DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21E13D844();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v81 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v88 = &v51[-v12];
  MEMORY[0x28223BE20](v13);
  v80 = &v51[-v14];
  MEMORY[0x28223BE20](v15);
  v87 = &v51[-v16];
  v17 = sub_21E13DD74();
  MEMORY[0x28223BE20](v17);
  v73 = &v51[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v89 = &v51[-v20];
  v24 = MEMORY[0x28223BE20](v21);
  v25 = &v51[-v22];
  v62 = a2;
  if (a3 == a2)
  {
    return;
  }

  v27 = *(v23 + 16);
  v26 = v23 + 16;
  v76 = v27;
  v28 = *a4;
  v29 = *(v26 + 56);
  v85 = (v9 + 88);
  v86 = (v9 + 16);
  v84 = *MEMORY[0x277D78E48];
  v75 = *MEMORY[0x277D78DF0];
  v69 = *MEMORY[0x277D78E18];
  v68 = *MEMORY[0x277D78E30];
  v67 = *MEMORY[0x277D78E28];
  v61 = *MEMORY[0x277D78E20];
  v59 = *MEMORY[0x277D78E38];
  v58 = *MEMORY[0x277D78E40];
  v57 = *MEMORY[0x277D78DF8];
  v56 = *MEMORY[0x277D78E00];
  v55 = *MEMORY[0x277D78DE8];
  v83 = (v9 + 8);
  v74 = (v26 - 8);
  v78 = v26;
  v71 = (v26 + 16);
  v54 = *MEMORY[0x277D78E50];
  v30 = v28 + v29 * (a3 - 1);
  v70 = -v29;
  v31 = a1 - a3;
  v53 = *MEMORY[0x277D78E08];
  v72 = v28;
  v60 = v29;
  v32 = v28 + v29 * a3;
  v52 = *MEMORY[0x277D78E10];
  v79 = v17;
  v77 = &v51[-v22];
LABEL_5:
  v66 = a3;
  v63 = v32;
  v64 = v31;
  v65 = v30;
  while (1)
  {
    v33 = v76;
    (v76)(v25, v32, v17, v24);
    v33(v89, v30, v17);
    v34 = v87;
    sub_21E13DD64();
    v35 = *v86;
    v36 = v80;
    (*v86)(v80, v34, v8);
    v37 = *v85;
    v38 = (*v85)(v36, v8);
    if (v38 == v84)
    {
      v39 = 100;
      goto LABEL_14;
    }

    if (v38 == v75)
    {
LABEL_9:
      v39 = 300;
      goto LABEL_14;
    }

    if (v38 == v69)
    {
      v39 = 1000;
    }

    else if (v38 == v68)
    {
      v39 = 150;
    }

    else
    {
      if (v38 == v67)
      {
        goto LABEL_9;
      }

      if (v38 == v61)
      {
        v39 = 600;
      }

      else if (v38 == v59)
      {
        v39 = 200;
      }

      else if (v38 == v58)
      {
        v39 = 201;
      }

      else if (v38 == v57)
      {
        v39 = 50;
      }

      else if (v38 == v56)
      {
        v39 = 700;
      }

      else if (v38 == v55)
      {
        v39 = 800;
      }

      else if (v38 == v54)
      {
        v39 = 10;
      }

      else if (v38 == v53)
      {
        v39 = 302;
      }

      else
      {
        if (v38 != v52)
        {
          goto LABEL_66;
        }

        v39 = 301;
      }
    }

LABEL_14:
    v82 = v39;
    v40 = *v83;
    (*v83)(v87, v8);
    v41 = v8;
    v42 = v88;
    sub_21E13DD64();
    v43 = v81;
    v44 = v42;
    v8 = v41;
    v35(v81, v44, v41);
    v45 = v37(v43, v41);
    if (v45 == v84)
    {
      v46 = 100;
      goto LABEL_22;
    }

    if (v45 == v75)
    {
LABEL_17:
      v46 = 300;
      goto LABEL_22;
    }

    if (v45 == v69)
    {
      v46 = 1000;
    }

    else if (v45 == v68)
    {
      v46 = 150;
    }

    else
    {
      if (v45 == v67)
      {
        goto LABEL_17;
      }

      if (v45 == v61)
      {
        v46 = 600;
      }

      else if (v45 == v59)
      {
        v46 = 200;
      }

      else if (v45 == v58)
      {
        v46 = 201;
      }

      else if (v45 == v57)
      {
        v46 = 50;
      }

      else if (v45 == v56)
      {
        v46 = 700;
      }

      else if (v45 == v55)
      {
        v46 = 800;
      }

      else if (v45 == v54)
      {
        v46 = 10;
      }

      else if (v45 == v53)
      {
        v46 = 302;
      }

      else
      {
        if (v45 != v52)
        {
          goto LABEL_66;
        }

        v46 = 301;
      }
    }

LABEL_22:
    v40(v88, v41);
    v47 = *v74;
    v17 = v79;
    (*v74)(v89, v79);
    v25 = v77;
    v47(v77, v17);
    if (v46 >= v82)
    {
      goto LABEL_4;
    }

    if (!v72)
    {
      break;
    }

    v48 = *v71;
    v49 = v73;
    (*v71)(v73, v32, v17);
    swift_arrayInitWithTakeFrontToBack();
    v48(v30, v49, v17);
    v30 += v70;
    v32 += v70;
    if (__CFADD__(v31++, 1))
    {
LABEL_4:
      a3 = v66 + 1;
      v30 = v65 + v60;
      v31 = v64 - 1;
      v32 = v63 + v60;
      if (v66 + 1 == v62)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_66:
  sub_21E142B04();
  __break(1u);
}

void sub_21E03E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v35 = -v17;
    v36 = v16;
    v19 = a1 - a3;
    v29 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v33 = v18;
    v34 = a3;
    v31 = v20;
    v32 = v19;
    v21 = v19;
    v22 = v38;
    while (1)
    {
      sub_21DF236C0(v20, v15, &qword_27CEA7778, &unk_21E147790);
      sub_21DF236C0(v18, v11, &qword_27CEA7778, &unk_21E147790);
      v23 = *(v22 + 48);
      v24 = *&v15[v23];
      v25 = *&v11[v23];
      sub_21DF23614(v11, &qword_27CEA7778, &unk_21E147790);
      sub_21DF23614(v15, &qword_27CEA7778, &unk_21E147790);
      if (v25 >= v24)
      {
LABEL_4:
        a3 = v34 + 1;
        v18 = v33 + v29;
        v19 = v32 - 1;
        v20 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_21DF3DE9C(v20, v37, &qword_27CEA7778, &unk_21E147790);
      v22 = v38;
      swift_arrayInitWithTakeFrontToBack();
      sub_21DF3DE9C(v26, v18, &qword_27CEA7778, &unk_21E147790);
      v18 += v35;
      v20 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21E03E51C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v163 = a4;
  v161 = a1;
  v206 = sub_21E13D844();
  v7 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v191 = &v151[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v200 = &v151[-v10];
  MEMORY[0x28223BE20](v11);
  v190 = &v151[-v12];
  MEMORY[0x28223BE20](v13);
  v199 = &v151[-v14];
  MEMORY[0x28223BE20](v15);
  v174 = &v151[-v16];
  MEMORY[0x28223BE20](v17);
  v181 = &v151[-v18];
  MEMORY[0x28223BE20](v19);
  v173 = &v151[-v20];
  MEMORY[0x28223BE20](v21);
  v180 = &v151[-v22];
  v23 = sub_21E13DD74();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v167 = &v151[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v188 = &v151[-v27];
  MEMORY[0x28223BE20](v28);
  v205 = &v151[-v29];
  MEMORY[0x28223BE20](v30);
  v198 = &v151[-v31];
  MEMORY[0x28223BE20](v32);
  v184 = &v151[-v33];
  MEMORY[0x28223BE20](v34);
  v179 = &v151[-v35];
  MEMORY[0x28223BE20](v36);
  v40 = MEMORY[0x28223BE20](v37);
  v178 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_204:
    v44 = *v161;
    if (!*v161)
    {
      goto LABEL_244;
    }

    a3 = v43;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v145 = a3;
    }

    else
    {
LABEL_238:
      v145 = sub_21E101914(a3);
    }

    v207 = v145;
    a3 = *(v145 + 2);
    if (a3 >= 2)
    {
      while (*v178)
      {
        v146 = *&v145[16 * a3];
        v147 = v145;
        v148 = *&v145[16 * a3 + 24];
        sub_21E040360(*v178 + *(v24 + 72) * v146, (*v178 + *(v24 + 72) * *&v145[16 * a3 + 16]), *v178 + *(v24 + 72) * v148, v44);
        if (v5)
        {
          goto LABEL_215;
        }

        if (v148 < v146)
        {
          goto LABEL_231;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_21E101914(v147);
        }

        if (a3 - 2 >= *(v147 + 2))
        {
          goto LABEL_232;
        }

        v149 = &v147[16 * a3];
        *v149 = v146;
        *(v149 + 1) = v148;
        v207 = v147;
        sub_21E101888(a3 - 1);
        v145 = v207;
        a3 = *(v207 + 2);
        if (a3 <= 1)
        {
          goto LABEL_215;
        }
      }

      goto LABEL_242;
    }

LABEL_215:

    return;
  }

  v157 = &v151[-v38];
  v158 = v39;
  v42 = 0;
  v204 = *MEMORY[0x277D78E48];
  v195 = v24 + 16;
  v196 = (v24 + 8);
  v202 = (v7 + 88);
  v203 = (v7 + 16);
  v193 = *MEMORY[0x277D78DF0];
  v185 = *MEMORY[0x277D78E18];
  v183 = *MEMORY[0x277D78E30];
  v177 = *MEMORY[0x277D78E28];
  v169 = *MEMORY[0x277D78E20];
  v162 = *MEMORY[0x277D78E38];
  v160 = *MEMORY[0x277D78E40];
  v159 = *MEMORY[0x277D78DF8];
  v156 = *MEMORY[0x277D78E00];
  v155 = *MEMORY[0x277D78DE8];
  v154 = *MEMORY[0x277D78E50];
  v153 = *MEMORY[0x277D78E08];
  v152 = *MEMORY[0x277D78E10];
  v201 = (v7 + 8);
  v192 = (v24 + 32);
  v43 = MEMORY[0x277D84F90];
  v176 = v24;
  v194 = v23;
  while (1)
  {
    v44 = v42;
    v168 = v43;
    v164 = v42;
    if ((v42 + 1) >= v41)
    {
      v57 = (v42 + 1);
      v71 = v163;
      goto LABEL_79;
    }

    v182 = v41;
    v45 = v42;
    v46 = *v178;
    v47 = *(v24 + 72);
    v48 = v24;
    v49 = *v178 + v47 * (v42 + 1);
    v50 = *(v48 + 16);
    v51 = v157;
    (v50)(v157, v49, v23, v40);
    v52 = v46 + v47 * v45;
    a3 = v158;
    v186 = v50;
    v50(v158, v52, v23);
    LODWORD(v187) = sub_21E03AF70();
    if (v5)
    {
      v150 = *v196;
      (*v196)(a3, v23);
      (v150)(v51, v23);
      goto LABEL_215;
    }

    v53 = *v196;
    (*v196)(a3, v23);
    v172 = v53;
    (v53)(v51, v23);
    v54 = (v164 + 2);
    v55 = v46 + v47 * (v164 + 2);
    v175 = 0;
    v189 = v47;
    while (1)
    {
      v57 = v182;
      if (v182 == v54)
      {
        break;
      }

      v58 = v186;
      (v186)(v179, v55, v23);
      v58(v184, v49, v23);
      v59 = v180;
      sub_21E13DD64();
      v60 = *v203;
      v61 = v173;
      v62 = v206;
      (*v203)(v173, v59, v206);
      v63 = *v202;
      v64 = (*v202)(v61, v62);
      if (v64 == v204)
      {
        v65 = 100;
        goto LABEL_18;
      }

      if (v64 == v193)
      {
LABEL_13:
        v65 = 300;
        goto LABEL_18;
      }

      if (v64 == v185)
      {
        v65 = 1000;
      }

      else if (v64 == v183)
      {
        v65 = 150;
      }

      else
      {
        if (v64 == v177)
        {
          goto LABEL_13;
        }

        if (v64 == v169)
        {
          v65 = 600;
        }

        else if (v64 == v162)
        {
          v65 = 200;
        }

        else if (v64 == v160)
        {
          v65 = 201;
        }

        else if (v64 == v159)
        {
          v65 = 50;
        }

        else if (v64 == v156)
        {
          v65 = 700;
        }

        else if (v64 == v155)
        {
          v65 = 800;
        }

        else if (v64 == v154)
        {
          v65 = 10;
        }

        else if (v64 == v153)
        {
          v65 = 302;
        }

        else
        {
          if (v64 != v152)
          {
            goto LABEL_245;
          }

          v65 = 301;
        }
      }

LABEL_18:
      v197 = v65;
      v66 = *v201;
      v67 = v206;
      (*v201)(v180, v206);
      v68 = v181;
      sub_21E13DD64();
      v69 = v174;
      v60(v174, v68, v67);
      v70 = v63(v69, v67);
      if (v70 == v204)
      {
        a3 = 100;
        v5 = v175;
        v23 = v194;
        v47 = v189;
      }

      else
      {
        v5 = v175;
        v23 = v194;
        v47 = v189;
        if (v70 != v193)
        {
          if (v70 == v185)
          {
            a3 = 1000;
            goto LABEL_8;
          }

          if (v70 == v183)
          {
            a3 = 150;
            goto LABEL_8;
          }

          if (v70 != v177)
          {
            if (v70 == v169)
            {
              a3 = 600;
            }

            else if (v70 == v162)
            {
              a3 = 200;
            }

            else if (v70 == v160)
            {
              a3 = 201;
            }

            else if (v70 == v159)
            {
              a3 = 50;
            }

            else if (v70 == v156)
            {
              a3 = 700;
            }

            else if (v70 == v155)
            {
              a3 = 800;
            }

            else if (v70 == v154)
            {
              a3 = 10;
            }

            else if (v70 == v153)
            {
              a3 = 302;
            }

            else
            {
              if (v70 != v152)
              {
                goto LABEL_245;
              }

              a3 = 301;
            }

            goto LABEL_8;
          }
        }

        a3 = 300;
      }

LABEL_8:
      v66(v181, v206);
      v56 = v172;
      (v172)(v184, v23);
      v56(v179, v23);
      ++v54;
      v55 += v47;
      v49 += v47;
      if (((v187 ^ (a3 >= v197)) & 1) == 0)
      {
        v57 = (v54 - 1);
        break;
      }
    }

    v24 = v176;
    v71 = v163;
    v72 = v168;
    v44 = v164;
    if ((v187 & 1) == 0)
    {
      goto LABEL_79;
    }

    if (v57 < v164)
    {
      goto LABEL_237;
    }

    if (v164 < v57)
    {
      a3 = v47 * (v57 - 1);
      v73 = v57 * v47;
      v182 = v57;
      v74 = v164;
      v75 = v164 * v47;
      do
      {
        if (v74 != --v57)
        {
          v76 = *v178;
          if (!*v178)
          {
            goto LABEL_241;
          }

          v77 = *v192;
          (*v192)(v167, v76 + v75, v23, v72);
          if (v75 < a3 || v76 + v75 >= (v76 + v73))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v75 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77(v76 + a3, v167, v23);
          v71 = v163;
          v72 = v168;
          v44 = v164;
          v47 = v189;
        }

        ++v74;
        a3 -= v47;
        v73 -= v47;
        v75 += v47;
      }

      while (v74 < v57);
      v5 = v175;
      v24 = v176;
      v57 = v182;
    }

LABEL_79:
    v78 = v178[1];
    if (v57 >= v78)
    {
      goto LABEL_88;
    }

    if (__OFSUB__(v57, v44))
    {
      goto LABEL_234;
    }

    if (v57 - v44 >= v71)
    {
LABEL_88:
      v42 = v57;
      if (v57 < v44)
      {
        goto LABEL_233;
      }

      goto LABEL_89;
    }

    if (__OFADD__(v44, v71))
    {
      goto LABEL_235;
    }

    if (&v44[v71] >= v78)
    {
      v79 = v178[1];
    }

    else
    {
      v79 = &v44[v71];
    }

    if (v79 < v44)
    {
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

    if (v57 == v79)
    {
      goto LABEL_88;
    }

    v175 = v5;
    v124 = *v178;
    v125 = *(v24 + 72);
    v189 = *(v24 + 16);
    v126 = (v124 + v125 * (v57 - 1));
    v186 = -v125;
    v187 = v124;
    v127 = &v44[-v57];
    v165 = v125;
    v24 = v124 + v57 * v125;
    v166 = v79;
LABEL_140:
    v182 = v57;
    v170 = v24;
    v171 = v127;
    v172 = v126;
    v128 = v126;
LABEL_141:
    v129 = v189;
    (v189)(v198, v24, v23, v40);
    v129(v205, v128, v23);
    v130 = v199;
    sub_21E13DD64();
    v131 = *v203;
    v132 = v190;
    v133 = v206;
    (*v203)(v190, v130, v206);
    v134 = *v202;
    v135 = (*v202)(v132, v133);
    if (v135 == v204)
    {
      v136 = 100;
      goto LABEL_149;
    }

    if (v135 == v193)
    {
LABEL_144:
      v136 = 300;
    }

    else if (v135 == v185)
    {
      v136 = 1000;
    }

    else if (v135 == v183)
    {
      v136 = 150;
    }

    else
    {
      if (v135 == v177)
      {
        goto LABEL_144;
      }

      if (v135 == v169)
      {
        v136 = 600;
      }

      else if (v135 == v162)
      {
        v136 = 200;
      }

      else if (v135 == v160)
      {
        v136 = 201;
      }

      else if (v135 == v159)
      {
        v136 = 50;
      }

      else if (v135 == v156)
      {
        v136 = 700;
      }

      else if (v135 == v155)
      {
        v136 = 800;
      }

      else if (v135 == v154)
      {
        v136 = 10;
      }

      else if (v135 == v153)
      {
        v136 = 302;
      }

      else
      {
        if (v135 != v152)
        {
          goto LABEL_245;
        }

        v136 = 301;
      }
    }

LABEL_149:
    v197 = v136;
    v137 = *v201;
    v138 = v206;
    (*v201)(v199, v206);
    v139 = v200;
    sub_21E13DD64();
    v140 = v191;
    v131(v191, v139, v138);
    v141 = v134(v140, v138);
    if (v141 == v204)
    {
      a3 = 100;
      v23 = v194;
      goto LABEL_157;
    }

    v23 = v194;
    if (v141 == v193)
    {
LABEL_152:
      a3 = 300;
    }

    else if (v141 == v185)
    {
      a3 = 1000;
    }

    else if (v141 == v183)
    {
      a3 = 150;
    }

    else
    {
      if (v141 == v177)
      {
        goto LABEL_152;
      }

      if (v141 == v169)
      {
        a3 = 600;
      }

      else if (v141 == v162)
      {
        a3 = 200;
      }

      else if (v141 == v160)
      {
        a3 = 201;
      }

      else if (v141 == v159)
      {
        a3 = 50;
      }

      else if (v141 == v156)
      {
        a3 = 700;
      }

      else if (v141 == v155)
      {
        a3 = 800;
      }

      else if (v141 == v154)
      {
        a3 = 10;
      }

      else if (v141 == v153)
      {
        a3 = 302;
      }

      else
      {
        if (v141 != v152)
        {
          goto LABEL_245;
        }

        a3 = 301;
      }
    }

LABEL_157:
    v137(v200, v206);
    v142 = *v196;
    (*v196)(v205, v23);
    (v142)(v198, v23);
    if (a3 >= v197)
    {
      goto LABEL_139;
    }

    if (!v187)
    {
      break;
    }

    a3 = *v192;
    v143 = v188;
    (*v192)(v188, v24, v23);
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v128, v143, v23);
    v128 += v186;
    v24 += v186;
    if (!__CFADD__(v127++, 1))
    {
      goto LABEL_141;
    }

LABEL_139:
    v57 = v182 + 1;
    v126 = &v172[v165];
    v127 = v171 - 1;
    v24 = v170 + v165;
    v42 = v166;
    if ((v182 + 1) != v166)
    {
      goto LABEL_140;
    }

    v5 = v175;
    v44 = v164;
    if (v166 < v164)
    {
      goto LABEL_233;
    }

LABEL_89:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v43 = v168;
    }

    else
    {
      v43 = sub_21E06A15C(0, *(v168 + 2) + 1, 1, v168);
    }

    v81 = *(v43 + 2);
    v80 = *(v43 + 3);
    a3 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      v43 = sub_21E06A15C((v80 > 1), v81 + 1, 1, v43);
    }

    *(v43 + 2) = a3;
    v82 = &v43[16 * v81];
    *(v82 + 4) = v44;
    *(v82 + 5) = v42;
    v44 = *v161;
    if (!*v161)
    {
      goto LABEL_243;
    }

    if (v81)
    {
      while (2)
      {
        v24 = a3 - 1;
        if (a3 >= 4)
        {
          v87 = &v43[16 * a3 + 32];
          v88 = *(v87 - 64);
          v89 = *(v87 - 56);
          v93 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          if (v93)
          {
            goto LABEL_220;
          }

          v92 = *(v87 - 48);
          v91 = *(v87 - 40);
          v93 = __OFSUB__(v91, v92);
          v85 = v91 - v92;
          v86 = v93;
          if (v93)
          {
            goto LABEL_221;
          }

          v94 = &v43[16 * a3];
          v96 = *v94;
          v95 = *(v94 + 1);
          v93 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v93)
          {
            goto LABEL_223;
          }

          v93 = __OFADD__(v85, v97);
          v98 = v85 + v97;
          if (v93)
          {
            goto LABEL_226;
          }

          if (v98 >= v90)
          {
            v116 = &v43[16 * v24 + 32];
            v118 = *v116;
            v117 = *(v116 + 1);
            v93 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v93)
            {
              goto LABEL_230;
            }

            if (v85 < v119)
            {
              v24 = a3 - 2;
            }
          }

          else
          {
LABEL_108:
            if (v86)
            {
              goto LABEL_222;
            }

            v99 = &v43[16 * a3];
            v101 = *v99;
            v100 = *(v99 + 1);
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_225;
            }

            v105 = &v43[16 * v24 + 32];
            v107 = *v105;
            v106 = *(v105 + 1);
            v93 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v93)
            {
              goto LABEL_228;
            }

            if (__OFADD__(v103, v108))
            {
              goto LABEL_229;
            }

            if (v103 + v108 < v85)
            {
              goto LABEL_122;
            }

            if (v85 < v108)
            {
              v24 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v83 = *(v43 + 4);
            v84 = *(v43 + 5);
            v93 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            v86 = v93;
            goto LABEL_108;
          }

          v109 = &v43[16 * a3];
          v111 = *v109;
          v110 = *(v109 + 1);
          v93 = __OFSUB__(v110, v111);
          v103 = v110 - v111;
          v104 = v93;
LABEL_122:
          if (v104)
          {
            goto LABEL_224;
          }

          v112 = &v43[16 * v24];
          v114 = *(v112 + 4);
          v113 = *(v112 + 5);
          v93 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v93)
          {
            goto LABEL_227;
          }

          if (v115 < v103)
          {
            break;
          }
        }

        v120 = v24 - 1;
        if (v24 - 1 >= a3)
        {
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
          __break(1u);
LABEL_226:
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
          goto LABEL_236;
        }

        if (!*v178)
        {
          goto LABEL_240;
        }

        v121 = v43;
        a3 = *&v43[16 * v120 + 32];
        v122 = *&v43[16 * v24 + 40];
        sub_21E040360(*v178 + *(v176 + 72) * a3, (*v178 + *(v176 + 72) * *&v43[16 * v24 + 32]), *v178 + *(v176 + 72) * v122, v44);
        if (v5)
        {
          goto LABEL_215;
        }

        if (v122 < a3)
        {
          goto LABEL_218;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_21E101914(v121);
        }

        if (v120 >= *(v121 + 2))
        {
          goto LABEL_219;
        }

        v123 = &v121[16 * v120];
        *(v123 + 4) = a3;
        *(v123 + 5) = v122;
        v207 = v121;
        sub_21E101888(v24);
        v43 = v207;
        a3 = *(v207 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v41 = v178[1];
    v24 = v176;
    if (v42 >= v41)
    {
      goto LABEL_204;
    }
  }

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
  sub_21E142B04();
  __break(1u);
}

void sub_21E03FA0C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
  v120 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v123 = &v108 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = &v108 - v13;
  MEMORY[0x28223BE20](v14);
  v124 = &v108 - v15;
  v121 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_96:
    a3 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = a4;
    }

    else
    {
LABEL_129:
      v103 = sub_21E101914(a4);
    }

    v127 = v103;
    a4 = *(v103 + 2);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *&v103[16 * a4];
        v105 = v103;
        v106 = *&v103[16 * a4 + 24];
        sub_21E041418(*v121 + *(v120 + 72) * v104, *v121 + *(v120 + 72) * *&v103[16 * a4 + 16], *v121 + *(v120 + 72) * v106, a3);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_21E101914(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v127 = v105;
        sub_21E101888(a4 - 1);
        v103 = v127;
        a4 = *(v127 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v108 = a4;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v19 = &qword_27CEA7778;
  v126 = v8;
  while (1)
  {
    v20 = v17;
    v115 = v18;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v110 = v5;
      v21 = *v121;
      v119 = v21;
      v22 = *(v120 + 72);
      a3 = v21 + v22 * (v17 + 1);
      v23 = v124;
      sub_21DF236C0(a3, v124, v19, &unk_21E147790);
      v24 = v21 + v22 * v17;
      v25 = v125;
      sub_21DF236C0(v24, v125, v19, &unk_21E147790);
      v26 = *(v8 + 48);
      v27 = *(v23 + v26);
      v28 = *(v25 + v26);
      sub_21DF23614(v25, v19, &unk_21E147790);
      sub_21DF23614(v23, v19, &unk_21E147790);
      v109 = v17;
      a4 = v17 + 2;
      v122 = v22;
      v29 = v119 + v22 * (v17 + 2);
      while (v16 != a4)
      {
        v30 = v16;
        v31 = v124;
        sub_21DF236C0(v29, v124, v19, &unk_21E147790);
        v32 = v125;
        sub_21DF236C0(a3, v125, v19, &unk_21E147790);
        v33 = *(v126 + 48);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_21DF23614(v32, v19, &unk_21E147790);
        v36 = v31;
        v16 = v30;
        sub_21DF23614(v36, v19, &unk_21E147790);
        ++a4;
        v29 += v122;
        a3 += v122;
        if (v28 < v27 == v35 >= v34)
        {
          v16 = a4 - 1;
          break;
        }
      }

      v5 = v110;
      v20 = v109;
      v8 = v126;
      if (v28 < v27)
      {
        if (v16 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v16)
        {
          a4 = v122 * (v16 - 1);
          v37 = v16 * v122;
          v38 = v16;
          v39 = v109;
          a3 = v109 * v122;
          do
          {
            if (v39 != --v38)
            {
              v40 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              sub_21DF3DE9C(v40 + a3, v114, v19, &unk_21E147790);
              if (a3 < a4 || v40 + a3 >= (v40 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21DF3DE9C(v114, v40 + a4, v19, &unk_21E147790);
            }

            ++v39;
            a4 -= v122;
            v37 -= v122;
            a3 += v122;
          }

          while (v39 < v38);
          v5 = v110;
          v8 = v126;
          v20 = v109;
        }
      }
    }

    v41 = v121[1];
    if (v16 < v41)
    {
      if (__OFSUB__(v16, v20))
      {
        goto LABEL_125;
      }

      if (v16 - v20 < v108)
      {
        if (__OFADD__(v20, v108))
        {
          goto LABEL_127;
        }

        if (v20 + v108 >= v41)
        {
          v42 = v121[1];
        }

        else
        {
          v42 = v20 + v108;
        }

        if (v42 < v20)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v16 != v42)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v20)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v115;
    }

    else
    {
      v18 = sub_21E06A15C(0, *(v115 + 2) + 1, 1, v115);
    }

    a4 = *(v18 + 2);
    v43 = *(v18 + 3);
    a3 = a4 + 1;
    if (a4 >= v43 >> 1)
    {
      v18 = sub_21E06A15C((v43 > 1), a4 + 1, 1, v18);
    }

    *(v18 + 2) = a3;
    v44 = &v18[16 * a4];
    *(v44 + 4) = v20;
    *(v44 + 5) = v17;
    v45 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v46 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v47 = *(v18 + 4);
          v48 = *(v18 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_52:
          if (v50)
          {
            goto LABEL_113;
          }

          v63 = &v18[16 * a3];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_116;
          }

          v69 = &v18[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_120;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v73 = &v18[16 * a3];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_66:
        if (v68)
        {
          goto LABEL_115;
        }

        v76 = &v18[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v46 - 1;
        if (v46 - 1 >= a3)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v84 = v18;
        a3 = *&v18[16 * a4 + 32];
        v85 = *&v18[16 * v46 + 40];
        sub_21E041418(*v121 + *(v120 + 72) * a3, *v121 + *(v120 + 72) * *&v18[16 * v46 + 32], *v121 + *(v120 + 72) * v85, v45);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v85 < a3)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v86 = v84;
        }

        else
        {
          v86 = sub_21E101914(v84);
        }

        v8 = v126;
        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v86[16 * a4];
        *(v87 + 4) = a3;
        *(v87 + 5) = v85;
        v127 = v86;
        a4 = &v127;
        sub_21E101888(v46);
        v18 = v127;
        a3 = *(v127 + 2);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v18[16 * a3 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_111;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_112;
      }

      v58 = &v18[16 * a3];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_114;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_117;
      }

      if (v62 >= v54)
      {
        v80 = &v18[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_121;
        }

        if (v49 < v83)
        {
          v46 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = v121[1];
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v110 = v5;
  v88 = *v121;
  v89 = *(v120 + 72);
  v90 = *v121 + v89 * (v16 - 1);
  v91 = -v89;
  v109 = v20;
  v92 = v20 - v16;
  v122 = v88;
  v112 = v89;
  v113 = v42;
  a3 = v88 + v16 * v89;
LABEL_86:
  v118 = v90;
  v119 = v16;
  v116 = a3;
  v117 = v92;
  v93 = v90;
  v94 = v126;
  while (1)
  {
    a4 = v124;
    sub_21DF236C0(a3, v124, v19, &unk_21E147790);
    v95 = v125;
    sub_21DF236C0(v93, v125, v19, &unk_21E147790);
    v96 = *(v94 + 48);
    v97 = *(a4 + v96);
    v98 = *(v95 + v96);
    sub_21DF23614(v95, v19, &unk_21E147790);
    sub_21DF23614(a4, v19, &unk_21E147790);
    if (v98 >= v97)
    {
LABEL_85:
      v16 = v119 + 1;
      v17 = v113;
      v90 = v118 + v112;
      v92 = v117 - 1;
      a3 = v116 + v112;
      if (v119 + 1 != v113)
      {
        goto LABEL_86;
      }

      v5 = v110;
      v8 = v126;
      v20 = v109;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    v99 = v19;
    v100 = v123;
    sub_21DF3DE9C(a3, v123, v99, &unk_21E147790);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    v101 = v100;
    v19 = v99;
    sub_21DF3DE9C(v101, v93, v99, &unk_21E147790);
    v93 += v91;
    a3 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t sub_21E040360(unint64_t a1, _BYTE *a2, unint64_t a3, _BYTE *a4)
{
  v119 = sub_21E13D844();
  v8 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v105 = &v84[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v112 = &v84[-v11];
  MEMORY[0x28223BE20](v12);
  v103 = &v84[-v13];
  MEMORY[0x28223BE20](v14);
  v111 = &v84[-v15];
  MEMORY[0x28223BE20](v16);
  v107 = &v84[-v17];
  MEMORY[0x28223BE20](v18);
  v116 = &v84[-v19];
  MEMORY[0x28223BE20](v20);
  v106 = &v84[-v21];
  MEMORY[0x28223BE20](v22);
  v115 = &v84[-v23];
  v24 = sub_21E13DD74();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v113 = &v84[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v110 = &v84[-v28];
  MEMORY[0x28223BE20](v29);
  v118 = &v84[-v30];
  MEMORY[0x28223BE20](v31);
  v114 = &v84[-v32];
  v108 = *(v33 + 72);
  if (!v108)
  {
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v34 = &a2[-a1];
  if (&a2[-a1] == 0x8000000000000000 && v108 == -1)
  {
    goto LABEL_170;
  }

  v35 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v108 != -1)
  {
    v122 = a1;
    v121 = a4;
    if (v34 / v108 < v35 / v108)
    {
      v36 = v34 / v108 * v108;
      if (a4 < a1 || a1 + v36 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v105 = &a4[v36];
      v120 = &a4[v36];
      if (v36 >= 1 && a2 < a3)
      {
        v102 = *(v25 + 16);
        v113 = v8 + 16;
        v112 = v8 + 88;
        LODWORD(v111) = *MEMORY[0x277D78E48];
        LODWORD(v101) = *MEMORY[0x277D78DF0];
        LODWORD(v98) = *MEMORY[0x277D78E18];
        v97 = *MEMORY[0x277D78E30];
        v96 = *MEMORY[0x277D78E28];
        v95 = *MEMORY[0x277D78E20];
        LODWORD(v94) = *MEMORY[0x277D78E38];
        v93 = *MEMORY[0x277D78E40];
        v92 = *MEMORY[0x277D78DF8];
        v91 = *MEMORY[0x277D78E00];
        v90 = *MEMORY[0x277D78DE8];
        v89 = *MEMORY[0x277D78E50];
        v88 = *MEMORY[0x277D78E08];
        v110 = v8 + 8;
        v103 = (v25 + 16);
        v100 = (v25 + 8);
        v87 = *MEMORY[0x277D78E10];
        v104 = a3;
        while (1)
        {
          v117 = a2;
          v39 = v102;
          (v102)(v114, a2, v24);
          v40 = v24;
          v41 = a4;
          v42 = v40;
          v39(v118, a4);
          v43 = v115;
          sub_21E13DD64();
          v44 = *v113;
          v45 = v106;
          v46 = v43;
          v47 = v119;
          (*v113)(v106, v46, v119);
          v48 = *v112;
          v49 = (*v112)(v45, v47);
          if (v49 == v111)
          {
            v50 = a1;
            v51 = 100;
          }

          else
          {
            if (v49 != v101)
            {
              if (v49 == v98)
              {
                v50 = a1;
                v51 = 1000;
                goto LABEL_29;
              }

              if (v49 == v97)
              {
                v50 = a1;
                v51 = 150;
                goto LABEL_29;
              }

              if (v49 != v96)
              {
                if (v49 == v95)
                {
                  v50 = a1;
                  v51 = 600;
                }

                else if (v49 == v94)
                {
                  v50 = a1;
                  v51 = 200;
                }

                else if (v49 == v93)
                {
                  v50 = a1;
                  v51 = 201;
                }

                else if (v49 == v92)
                {
                  v50 = a1;
                  v51 = 50;
                }

                else if (v49 == v91)
                {
                  v50 = a1;
                  v51 = 700;
                }

                else if (v49 == v90)
                {
                  v50 = a1;
                  v51 = 800;
                }

                else
                {
                  v50 = a1;
                  if (v49 == v89)
                  {
                    v51 = 10;
                  }

                  else if (v49 == v88)
                  {
                    v51 = 302;
                  }

                  else
                  {
                    if (v49 != v87)
                    {
                      goto LABEL_172;
                    }

                    v51 = 301;
                  }
                }

                goto LABEL_29;
              }
            }

            v50 = a1;
            v51 = 300;
          }

LABEL_29:
          v109 = v51;
          v52 = *v110;
          v53 = v119;
          (*v110)(v115, v119);
          v54 = v116;
          sub_21E13DD64();
          v55 = v107;
          v44(v107, v54, v53);
          v56 = v48(v55, v53);
          if (v56 == v111)
          {
            v57 = 100;
            a2 = v117;
            a4 = v41;
            v24 = v42;
            v58 = v50;
            v59 = v104;
            v60 = v108;
          }

          else
          {
            a2 = v117;
            a4 = v41;
            v58 = v50;
            v60 = v108;
            if (v56 == v101)
            {
              v57 = 300;
              v24 = v42;
              v59 = v104;
            }

            else
            {
              v24 = v42;
              if (v56 == v98)
              {
                v57 = 1000;
                v59 = v104;
              }

              else
              {
                v59 = v104;
                if (v56 == v97)
                {
                  v57 = 150;
                }

                else if (v56 == v96)
                {
                  v57 = 300;
                }

                else if (v56 == v95)
                {
                  v57 = 600;
                }

                else if (v56 == v94)
                {
                  v57 = 200;
                }

                else if (v56 == v93)
                {
                  v57 = 201;
                }

                else if (v56 == v92)
                {
                  v57 = 50;
                }

                else if (v56 == v91)
                {
                  v57 = 700;
                }

                else if (v56 == v90)
                {
                  v57 = 800;
                }

                else if (v56 == v89)
                {
                  v57 = 10;
                }

                else if (v56 == v88)
                {
                  v57 = 302;
                }

                else
                {
                  if (v56 != v87)
                  {
                    goto LABEL_172;
                  }

                  v57 = 301;
                }
              }
            }
          }

          v52(v116, v119);
          v61 = *v100;
          (*v100)(v118, v24);
          v61(v114, v24);
          if (v57 >= v109)
          {
            if (v58 < a4 || v58 >= &a4[v60])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v121 = &a4[v60];
            a4 += v60;
          }

          else
          {
            if (v58 < a2 || v58 >= &a2[v60])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v60;
          }

          a1 = &v58[v60];
          v122 = a1;
          if (a4 >= v105 || a2 >= v59)
          {
            goto LABEL_168;
          }
        }
      }

      goto LABEL_168;
    }

    v37 = v35 / v108 * v108;
    if (a4 < a2 || &a2[v37] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = &a4[v37];
    if (v37 < 1)
    {
LABEL_167:
      v122 = a2;
      v120 = v62;
LABEL_168:
      sub_21E06C5D8(&v122, &v121, &v120);
      return 1;
    }

    v101 = (v25 + 16);
    v118 = v8 + 16;
    LODWORD(v116) = *MEMORY[0x277D78E48];
    v115 = v8 + 88;
    LODWORD(v100) = *MEMORY[0x277D78DF0];
    v97 = *MEMORY[0x277D78E18];
    v96 = *MEMORY[0x277D78E30];
    v95 = *MEMORY[0x277D78E28];
    v93 = *MEMORY[0x277D78E20];
    v92 = *MEMORY[0x277D78E38];
    v91 = *MEMORY[0x277D78E40];
    v90 = *MEMORY[0x277D78DF8];
    v89 = *MEMORY[0x277D78E00];
    v88 = *MEMORY[0x277D78DE8];
    v87 = *MEMORY[0x277D78E50];
    v86 = *MEMORY[0x277D78E08];
    v114 = v8 + 8;
    v98 = (v25 + 8);
    v63 = -v108;
    v64 = &a4[v37];
    v85 = *MEMORY[0x277D78E10];
    v102 = -v108;
    v99 = a4;
LABEL_95:
    v94 = v62;
    v65 = a2;
    a2 += v63;
    v117 = a2;
    v106 = v65;
    while (1)
    {
      if (v65 <= a1)
      {
        v122 = v65;
        v120 = v94;
        goto LABEL_168;
      }

      v66 = a3;
      v109 = v64;
      v67 = *v101;
      v107 = &v64[v63];
      v67(v110);
      (v67)(v113, a2, v24);
      v68 = v111;
      sub_21E13DD64();
      v69 = v119;
      v70 = *v118;
      v71 = v103;
      (*v118)(v103, v68, v119);
      v72 = *v115;
      v73 = (*v115)(v71, v69);
      v104 = v62;
      if (v73 == v116)
      {
        v74 = 100;
        goto LABEL_107;
      }

      if (v73 == v100)
      {
        break;
      }

      if (v73 == v97)
      {
        v74 = 1000;
      }

      else if (v73 == v96)
      {
        v74 = 150;
      }

      else
      {
        if (v73 == v95)
        {
          break;
        }

        if (v73 == v93)
        {
          v74 = 600;
        }

        else if (v73 == v92)
        {
          v74 = 200;
        }

        else if (v73 == v91)
        {
          v74 = 201;
        }

        else if (v73 == v90)
        {
          v74 = 50;
        }

        else if (v73 == v89)
        {
          v74 = 700;
        }

        else if (v73 == v88)
        {
          v74 = 800;
        }

        else if (v73 == v87)
        {
          v74 = 10;
        }

        else if (v73 == v86)
        {
          v74 = 302;
        }

        else
        {
          if (v73 != v85)
          {
            goto LABEL_172;
          }

          v74 = 301;
        }
      }

LABEL_107:
      v108 = v74;
      v75 = *v114;
      v76 = v119;
      (*v114)(v111, v119);
      v77 = v112;
      sub_21E13DD64();
      v78 = v105;
      v70(v105, v77, v76);
      v79 = v72(v78, v76);
      if (v79 == v116)
      {
        v80 = 100;
        a2 = v117;
        v63 = v102;
        goto LABEL_115;
      }

      a2 = v117;
      v63 = v102;
      if (v79 == v100)
      {
LABEL_110:
        v80 = 300;
        goto LABEL_115;
      }

      if (v79 == v97)
      {
        v80 = 1000;
      }

      else if (v79 == v96)
      {
        v80 = 150;
      }

      else
      {
        if (v79 == v95)
        {
          goto LABEL_110;
        }

        if (v79 == v93)
        {
          v80 = 600;
        }

        else if (v79 == v92)
        {
          v80 = 200;
        }

        else if (v79 == v91)
        {
          v80 = 201;
        }

        else if (v79 == v90)
        {
          v80 = 50;
        }

        else if (v79 == v89)
        {
          v80 = 700;
        }

        else if (v79 == v88)
        {
          v80 = 800;
        }

        else if (v79 == v87)
        {
          v80 = 10;
        }

        else if (v79 == v86)
        {
          v80 = 302;
        }

        else
        {
          if (v79 != v85)
          {
            goto LABEL_172;
          }

          v80 = 301;
        }
      }

LABEL_115:
      a3 = v66 + v63;
      v75(v112, v119);
      v81 = *v98;
      (*v98)(v113, v24);
      v81(v110, v24);
      if (v80 < v108)
      {
        if (v66 < v106 || a3 >= v106)
        {
          swift_arrayInitWithTakeFrontToBack();
          v62 = v104;
        }

        else
        {
          v62 = v104;
          if (v66 != v106)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v109;
        if (v109 <= v99)
        {
          goto LABEL_167;
        }

        goto LABEL_95;
      }

      v82 = v107;
      v62 = v107;
      if (v66 < v109 || a3 >= v109)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v66 != v109)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v64 = v62;
      v65 = v106;
      if (v82 <= v99)
      {
        a2 = v106;
        goto LABEL_167;
      }
    }

    v74 = 300;
    goto LABEL_107;
  }

LABEL_171:
  __break(1u);
LABEL_172:
  result = sub_21E142B04();
  __break(1u);
  return result;
}

void sub_21E041418(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v50 = a1;
  v49 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v16;
    if (v16 >= 1)
    {
      v24 = -v12;
      v25 = a4 + v16;
      v42 = v24;
      v43 = a4;
      do
      {
        v40 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v44 = v26;
        while (1)
        {
          v29 = v47;
          if (v26 <= a1)
          {
            v50 = v26;
            v48 = v40;
            goto LABEL_58;
          }

          v41 = v23;
          v47 += v24;
          v30 = v25 + v24;
          sub_21DF236C0(v30, v10, &qword_27CEA7778, &unk_21E147790);
          v31 = v27;
          v32 = v27;
          v33 = v10;
          v34 = v45;
          sub_21DF236C0(v32, v45, &qword_27CEA7778, &unk_21E147790);
          v35 = *(v46 + 48);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35);
          v38 = v34;
          v10 = v33;
          sub_21DF23614(v38, &qword_27CEA7778, &unk_21E147790);
          sub_21DF23614(v33, &qword_27CEA7778, &unk_21E147790);
          if (v37 < v36)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || v47 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v30;
            }
          }

          v25 = v23;
          v26 = v44;
          v28 = v30 > v43;
          v24 = v42;
          if (!v28)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v29 < v44 || v47 >= v44)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v42;
        }

        else
        {
          v24 = v42;
          a2 = v31;
          if (v29 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v23 = v41;
      }

      while (v25 > v43);
    }

LABEL_57:
    v50 = a2;
    v48 = v23;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v17 = a4 + v15;
    v48 = a4 + v15;
    if (v15 >= 1 && a2 < v47)
    {
      do
      {
        sub_21DF236C0(a2, v10, &qword_27CEA7778, &unk_21E147790);
        v19 = v45;
        sub_21DF236C0(a4, v45, &qword_27CEA7778, &unk_21E147790);
        v20 = *(v46 + 48);
        v21 = *&v10[v20];
        v22 = *(v19 + v20);
        sub_21DF23614(v19, &qword_27CEA7778, &unk_21E147790);
        sub_21DF23614(v10, &qword_27CEA7778, &unk_21E147790);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v12;
          a4 += v12;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        a1 += v12;
        v50 = a1;
      }

      while (a4 < v17 && a2 < v47);
    }
  }

LABEL_58:
  sub_21E06C6D8(&v50, &v49, &v48);
}

void sub_21E041918(void *a1, char a2, void *a3)
{
  v7 = sub_21E13D344();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7790, &unk_21E14FB00);
  MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = a1[2];
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  sub_21DF236C0(a1 + v17, v54 - v14, &qword_27CEA7790, &unk_21E14FB00);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_21E0E1024(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_21E0FFAC4(v25, a2 & 1);
    v20 = sub_21E0E1024(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_21E142B84();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_21E100BE0();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8828, &unk_21E1497A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v10, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v17;
    v40 = 1;
    while (v40 < v38[2])
    {
      sub_21DF236C0(v39, v15, &qword_27CEA7790, &unk_21E14FB00);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_21E0E1024(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_21E0FFAC4(v47, 1);
        v43 = sub_21E0E1024(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_21E142884();
  MEMORY[0x223D52A60](0xD00000000000001BLL, 0x800000021E15D3B0);
  sub_21E1429B4();
  MEMORY[0x223D52A60](39, 0xE100000000000000);
  sub_21E1429C4();
  __break(1u);
}

uint64_t sub_21E041F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_21E041FC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E042030()
{
  swift_getKeyPath();
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  return *(v0 + 32);
}

uint64_t sub_21E0420D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21E0421A0(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E0422B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
    sub_21E13D3C4();
  }

  return result;
}

uint64_t (*sub_21E042378(uint64_t a1))()
{
  swift_allocObject();
  swift_weakInit();
  return sub_21E047C88;
}

uint64_t sub_21E0423D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21E1423C4();

  v6 = sub_21E1423B4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_21E0C2E04(0, 0, v4, &unk_21E14FE18, v7);
}

uint64_t sub_21E0424F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_21E1423C4();
  *(v4 + 48) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E042590, v6, v5);
}

uint64_t sub_21E042590()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21E04268C();
    swift_allocObject();
    swift_weakInit();
    sub_21E13D3A4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E04268C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (*(v1 + 16))
  {

    sub_21E142414();
  }

  v8 = sub_21E13DA54();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21E046334(v7);
  v9 = sub_21E1423F4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_21E1423C4();

  v11 = sub_21E1423B4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;

  *(v1 + 16) = sub_21E0C2E04(0, 0, v4, &unk_21E14FE08, v12);
}

uint64_t sub_21E0428C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a4;
  v4[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB088, &qword_21E14FD18);
  v4[47] = swift_task_alloc();
  v5 = sub_21E13DA54();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB098, &qword_21E14FDC0);
  v4[56] = swift_task_alloc();
  v4[57] = sub_21E1423C4();
  v4[58] = sub_21E1423B4();
  v7 = sub_21E142364();
  v4[59] = v7;
  v4[60] = v6;

  return MEMORY[0x2822009F8](sub_21E042A98, v7, v6);
}

uint64_t sub_21E042A98()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 24);
    swift_getKeyPath();
    *(v0 + 344) = v2;
    sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

    sub_21E13D3C4();

    v3 = (v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
    swift_beginAccess();
    v4 = *v3;
    v5 = v3[1];
    swift_unknownObjectRetain();

    if (v4)
    {
      *(v0 + 296) = v4;
      *(v0 + 304) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070, &qword_21E156E40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0A8, &qword_21E14FDD0);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 120);
        if (v6)
        {
          v7 = *(v0 + 448);
          v8 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B0, &qword_21E14FDD8);
          (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
          *(v0 + 312) = v6;
          *(v0 + 320) = v8;
          *(v0 + 80) = swift_getOpaqueTypeMetadata2();
          *(v0 + 328) = v6;
          *(v0 + 336) = v8;
          *(v0 + 88) = swift_getOpaqueTypeConformance2();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
          v11 = swift_task_alloc();
          *(v0 + 488) = v11;
          *v11 = v0;
          v11[1] = sub_21E042E28;
          v12 = *(v0 + 448);

          return MEMORY[0x2821E0D50](boxed_opaque_existential_1, v12, v6, v8);
        }
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }
    }

    else
    {

      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    sub_21DF23614(v0 + 96, &qword_27CEAB0A0, &qword_21E14FDC8);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21E042E28()
{
  v1 = *v0;
  v2 = *(*v0 + 448);

  sub_21DF23614(v2, &qword_27CEAB098, &qword_21E14FDC0);
  v3 = *(v1 + 480);
  v4 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_21E042F7C, v4, v3);
}

uint64_t sub_21E042F7C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (*(v0 + 80))
  {
    sub_21DF0DBF0((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = *(v1 - 8);
    v4 = swift_task_alloc();
    (*(v3 + 16))(v4, v2, v1);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_21E142444();

    swift_beginAccess();
    v5 = sub_21E1423B4();
    *(v0 + 496) = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, *(v0 + 160));
    v6 = swift_task_alloc();
    *(v0 + 504) = v6;
    *v6 = v0;
    v6[1] = sub_21E04322C;
    v7 = *(v0 + 440);
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v7, v5, v8);
  }

  else
  {

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_21E04322C()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (!v0)
  {

    v4 = *(v2 + 472);
    v5 = *(v2 + 480);

    return MEMORY[0x2822009F8](sub_21E043344, v4, v5);
  }

  return result;
}

uint64_t sub_21E043344()
{
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
LABEL_6:

    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v8 = v0[1];

    return v8();
  }

  v5 = *(v3 + 32);
  v5(v0[51], v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v0[49] + 8))(v0[51], v0[48]);
    goto LABEL_6;
  }

  v7 = Strong;
  if (sub_21E142434())
  {
    (*(v0[49] + 8))(v0[51], v0[48]);

    goto LABEL_6;
  }

  v40 = v5;
  v10 = v0[53];
  v11 = v0[54];
  v12 = v0[48];
  v13 = v0[49];
  v42 = v0[47];
  v43 = v0[46];
  (*(v13 + 16))(v11, v0[51], v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  v45 = v7;
  v41 = v14;
  sub_21DF236C0(v7 + v14, v10, &qword_27CEAB080, &qword_21E14FCE8);
  v15 = v10;
  v16 = *(v43 + 48);
  sub_21DF236C0(v15, v42, &qword_27CEAB080, &qword_21E14FCE8);
  sub_21DF236C0(v11, v42 + v16, &qword_27CEAB080, &qword_21E14FCE8);
  if (v4(v42, 1, v12) == 1)
  {
    v17 = v0[48];
    sub_21DF23614(v0[53], &qword_27CEAB080, &qword_21E14FCE8);
    if (v4(v42 + v16, 1, v17) == 1)
    {
      v18 = v0[49];
      sub_21DF23614(v0[47], &qword_27CEAB080, &qword_21E14FCE8);
      v19 = *(v18 + 8);
LABEL_17:
      v35 = v0[54];
      v19(v0[51], v0[48]);
      swift_beginAccess();
      sub_21E047928(v35, v45 + v41);
      swift_endAccess();

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v20 = v0[48];
  sub_21DF236C0(v0[47], v0[52], &qword_27CEAB080, &qword_21E14FCE8);
  v21 = v4(v42 + v16, 1, v20);
  v22 = v0[52];
  v23 = v0[53];
  if (v21 == 1)
  {
    v25 = v0[48];
    v24 = v0[49];
    sub_21DF23614(v0[53], &qword_27CEAB080, &qword_21E14FCE8);
    (*(v24 + 8))(v22, v25);
LABEL_14:
    sub_21DF23614(v0[47], &qword_27CEAB088, &qword_21E14FD18);
    goto LABEL_15;
  }

  v32 = v0[49];
  v31 = v0[50];
  v33 = v0[48];
  v44 = v0[47];
  v40(v31, v42 + v16, v33);
  sub_21E047998(&qword_27CEAB090, MEMORY[0x277D78FF8], MEMORY[0x277D79000]);
  v34 = sub_21E142074();
  v19 = *(v32 + 8);
  v19(v31, v33);
  sub_21DF23614(v23, &qword_27CEAB080, &qword_21E14FCE8);
  v19(v22, v33);
  sub_21DF23614(v44, &qword_27CEAB080, &qword_21E14FCE8);
  if (v34)
  {
    goto LABEL_17;
  }

LABEL_15:
  v26 = v0[54];
  v27 = v0[51];
  v29 = v0[48];
  v28 = v0[49];
  swift_getKeyPath();
  v30 = swift_task_alloc();
  *(v30 + 16) = v45;
  *(v30 + 24) = v26;
  v0[44] = v45;
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3B4();

  (*(v28 + 8))(v27, v29);

LABEL_18:
  sub_21DF23614(v0[54], &qword_27CEAB080, &qword_21E14FCE8);
  v36 = sub_21E1423B4();
  v0[62] = v36;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 17), v0[20]);
  v37 = swift_task_alloc();
  v0[63] = v37;
  *v37 = v0;
  v37[1] = sub_21E04322C;
  v38 = v0[55];
  v39 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v38, v36, v39);
}

uint64_t sub_21E04399C()
{
  v1[27] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v2 = sub_21E13DA54();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB098, &qword_21E14FDC0);
  v1[33] = swift_task_alloc();
  sub_21E1423C4();
  v1[34] = sub_21E1423B4();
  v4 = sub_21E142364();
  v1[35] = v4;
  v1[36] = v3;

  return MEMORY[0x2822009F8](sub_21E043B0C, v4, v3);
}

uint64_t sub_21E043B0C()
{
  v1 = *(*(v0 + 216) + 24);
  swift_getKeyPath();
  *(v0 + 208) = v1;
  v2 = (v0 + 96);
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  v3 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  swift_unknownObjectRetain();

  if (v4)
  {
    *(v0 + 160) = v4;
    *(v0 + 168) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070, &qword_21E156E40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0A8, &qword_21E14FDD0);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 120);
      if (v6)
      {
        v7 = *(v0 + 264);
        v8 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B0, &qword_21E14FDD8);
        (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
        *(v0 + 176) = v6;
        *(v0 + 184) = v8;
        *(v0 + 80) = swift_getOpaqueTypeMetadata2();
        *(v0 + 192) = v6;
        *(v0 + 200) = v8;
        *(v0 + 88) = swift_getOpaqueTypeConformance2();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        v11 = swift_task_alloc();
        *(v0 + 296) = v11;
        *v11 = v0;
        v11[1] = sub_21E043E50;
        v12 = *(v0 + 264);

        return MEMORY[0x2821E0D50](boxed_opaque_existential_1, v12, v6, v8);
      }
    }

    else
    {
      *(v0 + 128) = 0;
      *v2 = 0u;
      *(v0 + 112) = 0u;
    }
  }

  else
  {

    *(v0 + 128) = 0;
    *v2 = 0u;
    *(v0 + 112) = 0u;
  }

  sub_21DF23614(v0 + 96, &qword_27CEAB0A0, &qword_21E14FDC8);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21E043E50()
{
  v1 = *v0;
  v2 = *(*v0 + 264);

  sub_21DF23614(v2, &qword_27CEAB098, &qword_21E14FDC0);
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_21E043FA4, v4, v3);
}

uint64_t sub_21E043FA4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (*(v0 + 80))
  {
    sub_21DF0DBF0((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v3 = swift_task_alloc();
    *(v0 + 304) = v3;
    *v3 = v0;
    v3[1] = sub_21E0440EC;
    v4 = *(v0 + 232);

    return sub_21E04437C(v4, v2, v1);
  }

  else
  {

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21E0440EC()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_21E04420C, v3, v2);
}

uint64_t sub_21E04420C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(v0[29], &qword_27CEAB080, &qword_21E14FCE8);
  }

  else
  {
    v5 = v0[31];
    v4 = v0[32];
    v6 = v0[30];
    v7 = v0[28];
    (*(v5 + 32))(v4, v0[29], v6);
    (*(v5 + 16))(v7, v4, v6);
    (*(v5 + 56))(v7, 0, 1, v6);
    sub_21E046334(v7);
    (*(v5 + 8))(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21E04437C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21E0443A0, 0, 0);
}

uint64_t sub_21E0443A0()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_21E04446C;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x282200538](v4, &unk_21E14FDF0, v1, v5, v3);
}

uint64_t sub_21E04446C()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21E0445DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21E0445DC()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1, 1, 1, AssociatedTypeWitness);
  v3 = *(v0 + 8);

  return v3();
}

void *sub_21E04468C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v24 - v2);
  v4 = sub_21E13EF04();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  swift_getKeyPath();
  v34 = v6;
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  v8 = *(v6 + v7);

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E1427B4())
  {
    v10 = 0;
    v29 = v8 & 0xFFFFFFFFFFFFFF8;
    v30 = v8 & 0xC000000000000001;
    v28 = (v25 + 48);
    v26 = v3;
    v27 = (v25 + 32);
    v32 = MEMORY[0x277D84F90];
    v3 = &qword_21E14FA80;
    v11 = v26;
    while (v30)
    {
      v12 = MEMORY[0x223D530F0](v10, v8);
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v14 = v8;
      swift_getKeyPath();
      v15 = v4;
      v33 = v12;
      sub_21E047998(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
      sub_21E13D3C4();

      v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
      swift_beginAccess();
      sub_21DF236C0(v12 + v16, v11, &qword_27CEACB50, &qword_21E14FA80);

      if ((*v28)(v11, 1, v4) == 1)
      {
        sub_21DF23614(v11, &qword_27CEACB50, &qword_21E14FA80);
      }

      else
      {
        v17 = *v27;
        (*v27)(v31, v11, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21E06A808(0, v32[2] + 1, 1, v32);
        }

        v19 = v32[2];
        v18 = v32[3];
        if (v19 >= v18 >> 1)
        {
          v32 = sub_21E06A808((v18 > 1), v19 + 1, 1, v32);
        }

        v20 = v31;
        v21 = v32;
        v32[2] = v19 + 1;
        v22 = v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
        v4 = v15;
        v17(v22, v20, v15);
      }

      v8 = v14;
      ++v10;
      if (v13 == i)
      {
        goto LABEL_21;
      }
    }

    if (v10 >= *(v29 + 16))
    {
      goto LABEL_18;
    }

    v12 = *(v8 + 8 * v10 + 32);

    v13 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_21:

  return v32;
}

uint64_t sub_21E044ADC()
{
  v42 = sub_21E13EC94();
  v36 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21E13EDA4();
  v43 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_21E13DA54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v45 = v0;
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_21DF236C0(v0 + v12, v7, &qword_27CEAB080, &qword_21E14FCE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21DF23614(v7, &qword_27CEAB080, &qword_21E14FCE8);
    return MEMORY[0x277D84F90];
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_21E13DA44();
  v14 = *(v13 + 16);
  if (!v14)
  {

    (*(v9 + 8))(v11, v8);
    return MEMORY[0x277D84F90];
  }

  v31 = v11;
  v32 = v9;
  v33 = v8;
  v44 = MEMORY[0x277D84F90];
  sub_21DF5C010(0, v14, 0);
  v15 = v44;
  v16 = *(v43 + 16);
  v17 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v30 = v13;
  v38 = v17;
  v39 = v16;
  v18 = v13 + v17;
  v19 = *(v43 + 72);
  v20 = v35;
  ++v36;
  v37 = v19;
  v21 = (v43 + 8);
  v43 += 16;
  v22 = (v43 + 16);
  v23 = v34;
  do
  {
    v24 = v40;
    v39(v40, v18, v20);
    v25 = v41;
    sub_21E13EC74();
    sub_21E13ED54();
    (*v36)(v25, v42);
    (*v21)(v24, v20);
    v44 = v15;
    v27 = *(v15 + 16);
    v26 = *(v15 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_21DF5C010((v26 > 1), v27 + 1, 1);
      v15 = v44;
    }

    *(v15 + 16) = v27 + 1;
    v28 = v37;
    (*v22)(v15 + v38 + v27 * v37, v23, v20);
    v18 += v28;
    --v14;
  }

  while (v14);
  (*(v32 + 8))(v31, v33);

  return v15;
}

unint64_t sub_21E044FB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_21E13DA54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_21DF236C0(v1 + v9, v4, &qword_27CEAB080, &qword_21E14FCE8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21DF23614(v4, &qword_27CEAB080, &qword_21E14FCE8);
    return sub_21DF26E14(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = sub_21E13DA34();
    (*(v6 + 8))(v8, v5);
    return v11;
  }
}

double sub_21E04522C(double (*a1)(uint64_t))
{
  v22 = a1;
  v2 = sub_21E13E7E4();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21E13DB54();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13DB94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 24);
  swift_getKeyPath();
  v27 = v12;
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  v13 = (v12 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  swift_unknownObjectRetain();

  if (!v14 || (v25 = v14, v26 = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070, &qword_21E156E40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB078, &qword_21E14FCE0), (swift_dynamicCast() & 1) == 0))
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_6;
  }

  if (!*(&v29 + 1))
  {
LABEL_6:
    sub_21DF23614(&v28, &qword_27CEAB068, &unk_21E14FCD0);
    sub_21E13DAF4();
    sub_21E13DB24();
    (*(v9 + 8))(v11, v8);
    sub_21E13DB34();
    v18 = (*(v5 + 8))(v7, v21);
    v17 = v22(v18);
    (*(v23 + 8))(v4, v24);
    return v17;
  }

  __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
  sub_21E13EB64();
  sub_21E13DBA4();

  sub_21E13DB24();
  (*(v9 + 8))(v11, v8);
  sub_21E13DB34();
  v16 = (*(v5 + 8))(v7, v21);
  v17 = v22(v16);
  (*(v23 + 8))(v4, v24);
  __swift_destroy_boxed_opaque_existential_0(&v28);
  return v17;
}

uint64_t sub_21E045650()
{
  swift_getKeyPath();
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  if (*(v0 + 32) == 1)
  {
    return _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  }

  swift_getKeyPath();
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  sub_21E047998(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E045868(__n128 a1)
{
  v2 = v1;
  v3 = sub_21E13E844();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13DA54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  swift_getKeyPath();
  v20 = v1;
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_21DF236C0(v2 + v13, v12, &qword_27CEAB080, &qword_21E14FCE8);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_21DF23614(v12, &qword_27CEAB080, &qword_21E14FCE8);
    return 0;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_21DF23614(v12, &qword_27CEAB080, &qword_21E14FCE8);
    sub_21E13DA24();
    (*(v7 + 8))(v9, v6);
    sub_21E13E804();
    v16 = v15;
    (*(v18 + 8))(v5, v19);
    return v16;
  }
}

uint64_t sub_21E045B74(__n128 a1)
{
  v2 = v1;
  v3 = sub_21E13E844();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13DA54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  swift_getKeyPath();
  v19 = v1;
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_21DF236C0(v2 + v13, v12, &qword_27CEAB080, &qword_21E14FCE8);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_21DF23614(v12, &qword_27CEAB080, &qword_21E14FCE8);
    v14 = 0;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_21DF23614(v12, &qword_27CEAB080, &qword_21E14FCE8);
    sub_21E13DA24();
    (*(v7 + 8))(v9, v6);
    v14 = sub_21E13E814();
    (*(v17 + 8))(v5, v18);
  }

  return v14 & 1;
}

uint64_t sub_21E045E60()
{
  v1 = sub_21E13DA04();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  swift_getKeyPath();
  v12[3] = v5;
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  v6 = (v5 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  swift_unknownObjectRetain();

  if (!v7 || (v12[1] = v7, v12[2] = v8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070, &qword_21E156E40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB078, &qword_21E14FCE0), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_6;
  }

  if (!*(&v14 + 1))
  {
LABEL_6:
    v10 = sub_21DF23614(&v13, &qword_27CEAB068, &unk_21E14FCD0);
    MEMORY[0x223D4E200](v10);
    v9 = sub_21E13D9F4();
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
  sub_21E13EB54();
  sub_21E13DA14();

  v9 = sub_21E13D9F4();
  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_0(&v13);
  return v9;
}

uint64_t sub_21E0460D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v3, a1, &qword_27CEAB080, &qword_21E14FCE8);
}

uint64_t sub_21E0461B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  return sub_21DF236C0(v3 + v4, a2, &qword_27CEAB080, &qword_21E14FCE8);
}

uint64_t sub_21E046288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21DF236C0(a1, &v6 - v3, &qword_27CEAB080, &qword_21E14FCE8);
  return sub_21E046334(v4);
}

uint64_t sub_21E046334(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEAB080, &qword_21E14FCE8);
  v7 = sub_21E04757C(v5, a1);
  sub_21DF23614(v5, &qword_27CEAB080, &qword_21E14FCE8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
    sub_21E13D3B4();
  }

  else
  {
    sub_21DF236C0(a1, v5, &qword_27CEAB080, &qword_21E14FCE8);
    swift_beginAccess();
    sub_21E04789C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEAB080, &qword_21E14FCE8);
}

uint64_t sub_21E04653C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_21E047928(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21E0465A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13DA54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  swift_getKeyPath();
  v16 = v1;
  sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_21DF236C0(v2 + v11, v10, &qword_27CEAB080, &qword_21E14FCE8);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_21DF23614(v10, &qword_27CEAB080, &qword_21E14FCE8);
    v12 = 1;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_21DF23614(v10, &qword_27CEAB080, &qword_21E14FCE8);
    sub_21E13DA24();
    (*(v5 + 8))(v7, v4);
    v12 = 0;
  }

  v13 = sub_21E13E844();
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

double sub_21E046840()
{
  v1 = sub_21E13DB94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  swift_getKeyPath();
  v13[3] = v5;
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  v6 = (v5 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  swift_unknownObjectRetain();

  if (!v7 || (v13[1] = v7, v13[2] = v8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070, &qword_21E156E40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB078, &qword_21E14FCE0), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_6;
  }

  if (!*(&v15 + 1))
  {
LABEL_6:
    sub_21DF23614(&v14, &qword_27CEAB068, &unk_21E14FCD0);
    sub_21E13DAF4();
    sub_21E13DB14();
    v10 = v11;
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  sub_21E13EB64();
  sub_21E13DBA4();

  sub_21E13DB14();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_0(&v14);
  return v10;
}

uint64_t sub_21E046AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E13DB94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB060, &qword_21E14FCA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v10 = *(v1 + 24);
  swift_getKeyPath();
  v17[3] = v10;
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  v11 = (v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  swift_unknownObjectRetain();

  if (!v12 || (v17[1] = v12, v17[2] = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070, &qword_21E156E40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB078, &qword_21E14FCE0), (swift_dynamicCast() & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_7;
  }

  if (!*(&v19 + 1))
  {
LABEL_7:
    sub_21DF23614(&v18, &qword_27CEAB068, &unk_21E14FCD0);
    v14 = sub_21E13DB54();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  sub_21E13EB64();
  sub_21E13DBA4();

  sub_21E13DB24();
  (*(v4 + 8))(v6, v3);
  v14 = sub_21E13DB54();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v9, 0, 1, v14);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  if ((*(v15 + 48))(v9, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v9, v14);
  }

LABEL_8:
  sub_21E13DAF4();
  sub_21E13DB24();
  (*(v4 + 8))(v6, v3);
  sub_21E13DB54();
  result = (*(*(v14 - 8) + 48))(v9, 1, v14);
  if (result != 1)
  {
    return sub_21DF23614(v9, &qword_27CEAB060, &qword_21E14FCA0);
  }

  return result;
}

uint64_t sub_21E046F00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_getKeyPath();
  sub_21E047998(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  v5 = *(v3 + v4);

  if (v5)
  {
    swift_getKeyPath();
    sub_21E047998(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
    swift_beginAccess();
    sub_21DF236C0(v5 + v6, a1, &qword_27CEACB50, &qword_21E14FA80);
  }

  else
  {
    v8 = sub_21E13EF04();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_21E0470D8()
{

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput, &qword_27CEAB080, &qword_21E14FCE8);
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VIUIAnnotationCanvasController(uint64_t a1)
{
  result = qword_280F69880;
  if (!qword_280F69880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E0471F8(uint64_t a1)
{
  sub_21E0472E8(319);
  if (v1 <= 0x3F)
  {
    sub_21E13D404();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21E0472E8(uint64_t a1)
{
  if (!qword_280F690D8)
  {
    sub_21E13DA54();
    v1 = sub_21E142724();
    if (!v2)
    {
      atomic_store(v1, &qword_280F690D8);
    }
  }
}

uint64_t sub_21E047508(uint64_t a1)
{
  result = sub_21E047998(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController, &unk_21E14FC08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E04757C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13DA54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB088, &qword_21E14FD18);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEAB080, &qword_21E14FCE8);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEAB080, &qword_21E14FCE8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEAB080, &qword_21E14FCE8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21E047998(&qword_27CEAB090, MEMORY[0x277D78FF8], MEMORY[0x277D79000]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEAB080, &qword_21E14FCE8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEAB088, &qword_21E14FD18);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEAB080, &qword_21E14FCE8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21E04789C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E047928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB080, &qword_21E14FCE8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E047998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E0479E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E047A88;

  return sub_21E047560();
}

uint64_t sub_21E047A88(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21E047B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF8DAF8;

  return sub_21E0428C4(a1, v4, v5, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21E047CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF4AA04;

  return sub_21E0424F8(a1, v4, v5, v6);
}

uint64_t (*sub_21E047D84())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_21E047C88;
}

double VIUIAnnotationCanvasRenderable.selectedSubjectBundle.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 24))();
  sub_21DF57890(sub_21E0483E0, v3, a2);

  return result;
}

uint64_t sub_21E047EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a3;
  v5 = sub_21E13D344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8430, &unk_21E148ED0);
  MEMORY[0x28223BE20](v40);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8438, &qword_21E148EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v42 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  sub_21E13ED84();
  v43 = v6;
  v21 = *(v6 + 56);
  v41 = v5;
  v21(v20, 0, 1, v5);
  (*(a4 + 120))(v39, a4);
  v22 = sub_21E13EF04();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {
    sub_21DF23614(v12, &qword_27CEACB50, &qword_21E14FA80);
    v24 = 1;
  }

  else
  {
    sub_21E13EE24();
    (*(v23 + 8))(v12, v22);
    v24 = 0;
  }

  v25 = v41;
  v21(v17, v24, 1, v41);
  v26 = *(v40 + 48);
  sub_21E04853C(v20, v9);
  sub_21E04853C(v17, &v9[v26]);
  v27 = *(v43 + 48);
  v28 = v27(v9, 1, v25);
  v29 = v42;
  if (v28 != 1)
  {
    sub_21E04853C(v9, v42);
    if (v27(&v9[v26], 1, v25) != 1)
    {
      v31 = v43;
      v32 = &v9[v26];
      v33 = v37;
      (*(v43 + 32))(v37, v32, v25);
      sub_21E0485AC();
      v30 = sub_21E142074();
      v34 = *(v31 + 8);
      v34(v33, v25);
      sub_21DF23614(v17, &qword_27CEA8438, &qword_21E148EE0);
      sub_21DF23614(v20, &qword_27CEA8438, &qword_21E148EE0);
      v34(v42, v25);
      sub_21DF23614(v9, &qword_27CEA8438, &qword_21E148EE0);
      return v30 & 1;
    }

    sub_21DF23614(v17, &qword_27CEA8438, &qword_21E148EE0);
    sub_21DF23614(v20, &qword_27CEA8438, &qword_21E148EE0);
    (*(v43 + 8))(v29, v25);
    goto LABEL_9;
  }

  sub_21DF23614(v17, &qword_27CEA8438, &qword_21E148EE0);
  sub_21DF23614(v20, &qword_27CEA8438, &qword_21E148EE0);
  if (v27(&v9[v26], 1, v25) != 1)
  {
LABEL_9:
    sub_21DF23614(v9, &qword_27CEA8430, &unk_21E148ED0);
    v30 = 0;
    return v30 & 1;
  }

  sub_21DF23614(v9, &qword_27CEA8438, &qword_21E148EE0);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_21E04853C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8438, &qword_21E148EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E0485AC()
{
  result = qword_280F6C088;
  if (!qword_280F6C088)
  {
    sub_21E13D344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C088);
  }

  return result;
}

uint64_t AnnotatedVideoViewConfigurationForm.init(configuration:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21E04868C(a1, a3);
  v5 = *(type metadata accessor for AnnotatedVideoViewConfigurationForm(0) + 20);
  v6 = sub_21E13E9C4();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_21E04868C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B8, &qword_21E14FE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AnnotatedVideoViewConfigurationForm(uint64_t a1)
{
  result = qword_27CEAB0D8;
  if (!qword_27CEAB0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnnotatedVideoViewConfigurationForm.body.getter@<X0>(void *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B8, &qword_21E14FE70);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v39 = 0x800000021E15D470;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21E048D24(v3);
  v36 = v86;
  v38 = v87;
  v37 = v88;
  type metadata accessor for AnnotatedVideoViewConfigurationForm(0);
  LOBYTE(v35) = sub_21E13E8D4() & 1;
  v35 = v35;
  v31 = 0x800000021E15D490;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21E048D24(v3);
  v30 = v86;
  v34 = v87;
  v33 = v88;
  LOBYTE(v32) = sub_21E13E944() & 1;
  v32 = v32;
  v27 = 0x800000021E15D4B0;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21E048D24(v3);
  v4 = v86;
  v21 = v86;
  v29 = v87;
  v26 = v88;
  LOBYTE(v28) = sub_21E13E964() & 1;
  v28 = v28;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21E048D24(v3);
  v5 = v86;
  v25 = v87;
  v19 = v88;
  LOBYTE(v18) = sub_21E13E9A4() & 1;
  v18 = v18;
  v20 = 0x800000021E15D4F0;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21E048D24(v3);
  v15 = v87;
  v16 = v86;
  HIDWORD(v14) = v88;
  v6 = sub_21E13E984();
  v23 = 0xD000000000000011;
  *&v41 = 0xD000000000000011;
  *(&v41 + 1) = v39;
  v7 = v6 & 1;
  *&v42 = v36;
  *(&v42 + 1) = v38;
  LOBYTE(v43) = v37;
  BYTE1(v43) = v35;
  v44 = 0;
  v45 = 0;
  *&v40[3] = 0;
  v40[0] = v41;
  v40[1] = v42;
  v40[2] = v43;
  *&v46 = 0xD000000000000017;
  *(&v46 + 1) = v31;
  *&v47 = v30;
  *(&v47 + 1) = v34;
  LOBYTE(v48) = v33;
  BYTE1(v48) = v32;
  v50 = 0;
  v49 = 0;
  *(&v40[6] + 1) = 0;
  *(&v40[5] + 8) = v48;
  *(&v40[4] + 8) = v47;
  *(&v40[3] + 8) = v46;
  v22 = 0xD000000000000019;
  *&v51 = 0xD000000000000019;
  *(&v51 + 1) = v27;
  *&v52 = v4;
  *(&v52 + 1) = v29;
  LOBYTE(v53) = v26;
  BYTE1(v53) = v28;
  v55 = 0;
  v54 = 0;
  v40[8] = v52;
  v40[9] = v53;
  v40[7] = v51;
  v17 = 0xD000000000000014;
  *&v56 = 0xD000000000000014;
  *(&v56 + 1) = 0x800000021E15D4D0;
  v8 = v5;
  *&v57 = v5;
  *(&v57 + 1) = v25;
  LOBYTE(v3) = v18;
  v9 = v19;
  LOBYTE(v58) = v19;
  BYTE1(v58) = v18;
  v60 = 0;
  v59 = 0;
  *&v40[10] = 0;
  *(&v40[13] + 1) = 0;
  *(&v40[12] + 8) = v58;
  *(&v40[11] + 8) = v57;
  *(&v40[10] + 8) = v56;
  *&v61 = 0xD000000000000017;
  v10 = v20;
  *(&v61 + 1) = v20;
  v11 = v15;
  v12 = v16;
  *&v62 = v16;
  *(&v62 + 1) = v15;
  LOBYTE(v4) = BYTE4(v14);
  LOBYTE(v63) = BYTE4(v14);
  BYTE1(v63) = v6 & 1;
  v65 = 0;
  v64 = 0;
  *&v40[17] = 0;
  v40[15] = v62;
  v40[16] = v63;
  v40[14] = v61;
  memcpy(v24, v40, 0x118uLL);
  v66[0] = 0xD000000000000017;
  v66[1] = v10;
  v66[2] = v12;
  v66[3] = v11;
  v67 = v4;
  v68 = v7;
  v70 = 0;
  v69 = 0;
  sub_21E048D8C(&v41, &v86);
  sub_21E048D8C(&v46, &v86);
  sub_21E048D8C(&v51, &v86);
  sub_21E048D8C(&v56, &v86);
  sub_21E048D8C(&v61, &v86);
  sub_21E048DE8(v66);
  v71[0] = v17;
  v71[1] = 0x800000021E15D4D0;
  v71[2] = v8;
  v71[3] = v25;
  v72 = v9;
  v73 = v3;
  v75 = 0;
  v74 = 0;
  sub_21E048DE8(v71);
  v76[0] = v22;
  v76[1] = v27;
  v76[2] = v21;
  v76[3] = v29;
  v77 = v26;
  v78 = v28;
  v80 = 0;
  v79 = 0;
  sub_21E048DE8(v76);
  v81[0] = 0xD000000000000017;
  v81[1] = v31;
  v81[2] = v30;
  v81[3] = v34;
  v82 = v33;
  v83 = v32;
  v84 = 0;
  v85 = 0;
  sub_21E048DE8(v81);
  v86 = v23;
  v87 = v39;
  v88 = v36;
  v89 = v38;
  v90 = v37;
  v91 = v35;
  v92 = 0;
  v93 = 0;
  return sub_21E048DE8(&v86);
}

uint64_t sub_21E048D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B8, &qword_21E14FE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E048E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21E04868C(a1, a4);
  v7 = *(a3 + 20);
  v8 = sub_21E13E9C4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a2, v8);
}

uint64_t sub_21E048F08(uint64_t a1)
{
  result = sub_21E048FC8(&qword_27CEAB0C8, type metadata accessor for AnnotatedVideoViewConfigurationForm, &protocol conformance descriptor for AnnotatedVideoViewConfigurationForm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E048FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E049010(uint64_t a1)
{
  result = sub_21E048FC8(&qword_27CEAB0C0, MEMORY[0x277D795B0], MEMORY[0x277D795A8]);
  *(a1 + 8) = result;
  return result;
}

void sub_21E049090(uint64_t a1)
{
  sub_21E049114(319);
  if (v1 <= 0x3F)
  {
    sub_21E13E9C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E049114(uint64_t a1)
{
  if (!qword_27CEAB0E8)
  {
    sub_21E13E9C4();
    v1 = sub_21E141A24();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEAB0E8);
    }
  }
}

unint64_t sub_21E04916C()
{
  result = qword_27CEAB0F0;
  if (!qword_27CEAB0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB0F8, &qword_21E150048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB0F0);
  }

  return result;
}

uint64_t BundleManagerConfigurationForm.init(configuration:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21E049258(a1, a3);
  v5 = *(type metadata accessor for BundleManagerConfigurationForm(0) + 20);
  v6 = sub_21E13DA04();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_21E049258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB100, &unk_21E150060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BundleManagerConfigurationForm(uint64_t a1)
{
  result = qword_27CEAB168;
  if (!qword_27CEAB168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BundleManagerConfigurationForm.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108, &qword_21E150DD0) - 8;
  MEMORY[0x28223BE20](v68);
  v69 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v66 = (&v56 - v4);
  v5 = sub_21E13D7B4();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB110, &qword_21E150070);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v56 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB118, &qword_21E150078) - 8;
  MEMORY[0x28223BE20](v61);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v56 - v11;
  v12 = sub_21E13DE54();
  v59 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB120, &qword_21E150080);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB100, &unk_21E150060);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB128, &qword_21E150088);
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v56 - v24);
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21DF23614(v19, &qword_27CEAB100, &unk_21E150060);
  v71 = *(type metadata accessor for BundleManagerConfigurationForm(0) + 20);
  v26 = v58;
  sub_21E13D9E4();
  *v25 = 0xD000000000000010;
  v25[1] = 0x800000021E15D510;
  sub_21DF236C0(v16, v25 + v21[13], &qword_27CEAB120, &qword_21E150080);
  v27 = v59;
  v28 = *(v59 + 16);
  v29 = v25 + v21[14];
  v73 = v25;
  v28(v29, v26, v12);
  sub_21E049EBC(&qword_27CEAB130, MEMORY[0x277D79200], MEMORY[0x277D79208]);
  sub_21E142894();
  (*(v27 + 8))(v26, v12);
  sub_21DF23614(v16, &qword_27CEAB120, &qword_21E150080);
  *(v25 + v21[15]) = v74;
  v57 = v1;
  sub_21E1419F4();
  swift_getKeyPath();
  v30 = v60;
  sub_21E1419E4();

  sub_21DF23614(v19, &qword_27CEAB100, &unk_21E150060);
  v31 = v62;
  sub_21E13D9D4();
  v32 = v72;
  *v72 = 0x65646F4D20554C56;
  *(v32 + 1) = 0xE800000000000000;
  v33 = v61;
  v34 = v30;
  sub_21DF236C0(v30, &v32[*(v61 + 52)], &qword_27CEAB110, &qword_21E150070);
  v35 = v63;
  v36 = v31;
  v37 = v31;
  v38 = v64;
  (*(v63 + 16))(&v32[*(v33 + 56)], v36, v64);
  sub_21E049EBC(&qword_27CEAB138, MEMORY[0x277D78D80], MEMORY[0x277D78D88]);
  sub_21E142894();
  (*(v35 + 8))(v37, v38);
  sub_21DF23614(v34, &qword_27CEAB110, &qword_21E150070);
  *&v32[*(v33 + 60)] = v74;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21DF23614(v19, &qword_27CEAB100, &unk_21E150060);
  v39 = v74;
  v40 = v75;
  v41 = v76;
  sub_21E13D9A4();
  v42 = v68;
  v43 = v66;
  v44 = v66 + *(v68 + 72);
  *v44 = v39;
  *(v44 + 1) = v40;
  *(v44 + 4) = v41;
  *(v43 + v42[19]) = v45;
  v46 = v42;
  *(v43 + v42[21]) = 0x3F80000000000000;
  *v43 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v47 = v46[17];
  *(v43 + v47) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB140, &qword_21E150178);
  swift_storeEnumTagMultiPayload();
  v48 = (v43 + v46[20]);
  *v48 = 0xD000000000000015;
  v48[1] = 0x800000021E15D530;
  v49 = (v43 + v46[22]);
  *v49 = nullsub_3;
  v49[1] = 0;
  v50 = v65;
  sub_21DF236C0(v73, v65, &qword_27CEAB128, &qword_21E150088);
  v51 = v67;
  sub_21DF236C0(v32, v67, &qword_27CEAB118, &qword_21E150078);
  v52 = v69;
  sub_21DF236C0(v43, v69, &qword_27CEAB108, &qword_21E150DD0);
  v53 = v70;
  sub_21DF236C0(v50, v70, &qword_27CEAB128, &qword_21E150088);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB148, &qword_21E150180);
  sub_21DF236C0(v51, v53 + *(v54 + 48), &qword_27CEAB118, &qword_21E150078);
  sub_21DF236C0(v52, v53 + *(v54 + 64), &qword_27CEAB108, &qword_21E150DD0);
  sub_21DF23614(v43, &qword_27CEAB108, &qword_21E150DD0);
  sub_21DF23614(v72, &qword_27CEAB118, &qword_21E150078);
  sub_21DF23614(v73, &qword_27CEAB128, &qword_21E150088);
  sub_21DF23614(v52, &qword_27CEAB108, &qword_21E150DD0);
  sub_21DF23614(v51, &qword_27CEAB118, &qword_21E150078);
  return sub_21DF23614(v50, &qword_27CEAB128, &qword_21E150088);
}

uint64_t sub_21E049C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_21E049CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21E049258(a1, a4);
  v7 = *(a3 + 20);
  v8 = sub_21E13DA04();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a2, v8);
}

uint64_t sub_21E049DC4(uint64_t a1)
{
  result = sub_21E049EBC(&qword_27CEAB158, MEMORY[0x277D78FF0], MEMORY[0x277D78FE8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E049E64(uint64_t a1)
{
  result = sub_21E049EBC(&qword_27CEAB160, type metadata accessor for BundleManagerConfigurationForm, &protocol conformance descriptor for BundleManagerConfigurationForm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E049EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21E049F48(uint64_t a1)
{
  sub_21E049FCC(319);
  if (v1 <= 0x3F)
  {
    sub_21E13DA04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E049FCC(uint64_t a1)
{
  if (!qword_27CEAB178)
  {
    sub_21E13DA04();
    v1 = sub_21E141A24();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEAB178);
    }
  }
}

unint64_t sub_21E04A024()
{
  result = qword_27CEAB180;
  if (!qword_27CEAB180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB188, &unk_21E150260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB180);
  }

  return result;
}

uint64_t SubjectSelectorConfigurationForm.init(configuration:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21E04A110(a1, a3);
  v5 = *(type metadata accessor for SubjectSelectorConfigurationForm(0) + 20);
  v6 = sub_21E13DB94();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_21E04A110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB190, &qword_21E150270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SubjectSelectorConfigurationForm(uint64_t a1)
{
  result = qword_27CEAB200;
  if (!qword_27CEAB200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SubjectSelectorConfigurationForm.body.getter@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = sub_21E13DF54();
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x28223BE20](v2);
  v80 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB198, &qword_21E150278);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v64 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB1A0, &qword_21E150280) - 8;
  MEMORY[0x28223BE20](v79);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = (&v64 - v8);
  v74 = sub_21E13DB64();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB1A8, &qword_21E150288);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v64 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB1B0, &qword_21E150290) - 8;
  MEMORY[0x28223BE20](v71);
  v77 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v64 - v14;
  v87 = sub_21E13DB54();
  v92 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB1B8, &qword_21E150298);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB190, &qword_21E150270);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB1C0, &qword_21E1502A0);
  v23 = (v22 - 8);
  MEMORY[0x28223BE20](v22);
  v75 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v64 - v26;
  MEMORY[0x28223BE20](v27);
  v88 = &v64 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = (&v64 - v30);
  v64 = v19;
  v85 = v1;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21DF23614(v21, &qword_27CEAB190, &qword_21E150270);
  v91 = *(type metadata accessor for SubjectSelectorConfigurationForm(0) + 20);
  v32 = v86;
  sub_21E13DB74();
  *v31 = 0xD000000000000011;
  v31[1] = 0x800000021E15D550;
  v33 = v31 + v23[13];
  v65 = v18;
  sub_21DF236C0(v18, v33, &qword_27CEAB1B8, &qword_21E150298);
  v34 = v23[14];
  v35 = v92;
  v36 = *(v92 + 16);
  v68 = v92 + 16;
  v69 = v36;
  v89 = v31;
  v37 = v87;
  v36(v31 + v34, v32, v87);
  v67 = sub_21E04B094(&qword_27CEAB1C8, MEMORY[0x277D79090], MEMORY[0x277D79098]);
  sub_21E142894();
  v38 = *(v35 + 8);
  v92 = v35 + 8;
  v66 = v38;
  v38(v32, v37);
  sub_21DF23614(v18, &qword_27CEAB1B8, &qword_21E150298);
  *(v31 + v23[15]) = v94;
  sub_21E1419F4();
  swift_getKeyPath();
  v39 = v70;
  sub_21E1419E4();

  sub_21DF23614(v21, &qword_27CEAB190, &qword_21E150270);
  v40 = v72;
  sub_21E13DB84();
  v41 = v93;
  *v93 = 0xD000000000000015;
  *(v41 + 1) = 0x800000021E15D570;
  v42 = v71;
  sub_21DF236C0(v39, &v41[*(v71 + 52)], &qword_27CEAB1A8, &qword_21E150288);
  v43 = v73;
  v44 = v74;
  (*(v73 + 16))(&v41[*(v42 + 56)], v40, v74);
  sub_21E04B094(&qword_27CEAB1D0, MEMORY[0x277D790A0], MEMORY[0x277D790A8]);
  sub_21E142894();
  (*(v43 + 8))(v40, v44);
  sub_21DF23614(v39, &qword_27CEAB1A8, &qword_21E150288);
  *&v41[*(v42 + 60)] = v94;
  sub_21E1419F4();
  swift_getKeyPath();
  v45 = v65;
  sub_21E1419E4();

  sub_21DF23614(v21, &qword_27CEAB190, &qword_21E150270);
  v46 = v86;
  sub_21E13DB24();
  v47 = v88;
  *v88 = 0x6152206C6C697453;
  *(v47 + 1) = 0xED0000676E696B6ELL;
  sub_21DF236C0(v45, &v47[v23[13]], &qword_27CEAB1B8, &qword_21E150298);
  v48 = v87;
  v69(&v47[v23[14]], v46, v87);
  sub_21E142894();
  v66(v46, v48);
  sub_21DF23614(v45, &qword_27CEAB1B8, &qword_21E150298);
  *&v47[v23[15]] = v94;
  sub_21E1419F4();
  swift_getKeyPath();
  v49 = v78;
  sub_21E1419E4();

  sub_21DF23614(v21, &qword_27CEAB190, &qword_21E150270);
  v50 = v80;
  sub_21E13DB04();
  v51 = v76;
  *v76 = 0x746163696C627550;
  *(v51 + 8) = 0xEB000000006E6F69;
  v52 = v79;
  sub_21DF236C0(v49, v51 + *(v79 + 52), &qword_27CEAB198, &qword_21E150278);
  v54 = v81;
  v53 = v82;
  (*(v81 + 16))(v51 + *(v52 + 56), v50, v82);
  sub_21E04B094(&qword_27CEAB1D8, MEMORY[0x277D79210], MEMORY[0x277D79218]);
  sub_21E142894();
  (*(v54 + 8))(v50, v53);
  sub_21DF23614(v49, &qword_27CEAB198, &qword_21E150278);
  *(v51 + *(v52 + 60)) = v94;
  v55 = v90;
  sub_21DF236C0(v89, v90, &qword_27CEAB1C0, &qword_21E1502A0);
  v56 = v77;
  sub_21DF236C0(v93, v77, &qword_27CEAB1B0, &qword_21E150290);
  v57 = v88;
  v58 = v75;
  sub_21DF236C0(v88, v75, &qword_27CEAB1C0, &qword_21E1502A0);
  v59 = v83;
  sub_21DF236C0(v51, v83, &qword_27CEAB1A0, &qword_21E150280);
  v60 = v55;
  v61 = v84;
  sub_21DF236C0(v60, v84, &qword_27CEAB1C0, &qword_21E1502A0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB1E0, &qword_21E150368);
  sub_21DF236C0(v56, v61 + v62[12], &qword_27CEAB1B0, &qword_21E150290);
  sub_21DF236C0(v58, v61 + v62[16], &qword_27CEAB1C0, &qword_21E1502A0);
  sub_21DF236C0(v59, v61 + v62[20], &qword_27CEAB1A0, &qword_21E150280);
  sub_21DF23614(v51, &qword_27CEAB1A0, &qword_21E150280);
  sub_21DF23614(v57, &qword_27CEAB1C0, &qword_21E1502A0);
  sub_21DF23614(v93, &qword_27CEAB1B0, &qword_21E150290);
  sub_21DF23614(v89, &qword_27CEAB1C0, &qword_21E1502A0);
  sub_21DF23614(v59, &qword_27CEAB1A0, &qword_21E150280);
  sub_21DF23614(v58, &qword_27CEAB1C0, &qword_21E1502A0);
  sub_21DF23614(v56, &qword_27CEAB1B0, &qword_21E150290);
  return sub_21DF23614(v90, &qword_27CEAB1C0, &qword_21E1502A0);
}

uint64_t sub_21E04AE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_21E04AF18(uint64_t a1)
{
  result = sub_21E04B094(&qword_27CEAB1F0, MEMORY[0x277D790D8], MEMORY[0x277D790D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E04AFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21E04A110(a1, a4);
  v7 = *(a3 + 20);
  v8 = sub_21E13DB94();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a2, v8);
}

uint64_t sub_21E04B03C(uint64_t a1)
{
  result = sub_21E04B094(&qword_27CEAB1F8, type metadata accessor for SubjectSelectorConfigurationForm, &protocol conformance descriptor for SubjectSelectorConfigurationForm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E04B094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21E04B124(uint64_t a1)
{
  sub_21E04B1A8(319);
  if (v1 <= 0x3F)
  {
    sub_21E13DB94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E04B1A8(uint64_t a1)
{
  if (!qword_27CEAB210)
  {
    sub_21E13DB94();
    v1 = sub_21E141A24();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEAB210);
    }
  }
}

unint64_t sub_21E04B200()
{
  result = qword_27CEAB218;
  if (!qword_27CEAB218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEAB220, &unk_21E150448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB218);
  }

  return result;
}

void *sub_21E04B264(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_21E1424E4();
  if (!v19)
  {
    return sub_21E142304();
  }

  v41 = v19;
  v45 = sub_21E142964();
  v32 = sub_21E142974();
  sub_21E142914();
  result = sub_21E1424D4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_21E142524();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_21E142954();
      result = sub_21E142514();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ConfigPicker<>.init(_:selection:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for ConfigPicker(0, a5, a7, a8);
  v18 = v17[11];
  v19 = sub_21E141A24();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&a9[v18], a3, v19);
  v21 = *(a5 - 8);
  (*(v21 + 16))(&a9[v17[12]], a4, a5);
  sub_21E142894();
  sub_21E142344();
  if (swift_dynamicCast())
  {
    (*(v21 + 8))(a4, a5);
    result = (*(v20 + 8))(a3, v19);
    *&a9[v17[13]] = v24;
  }

  else
  {
    result = sub_21E1429C4();
    __break(1u);
  }

  return result;
}

uint64_t ConfigPicker.init(_:selection:initialValue:cases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v14 = type metadata accessor for ConfigPicker(0, a6, a7, a8);
  v15 = v14[11];
  v16 = sub_21E141A24();
  (*(*(v16 - 8) + 32))(&a9[v15], a3, v16);
  result = (*(*(a6 - 8) + 32))(&a9[v14[12]], a4, a6);
  *&a9[v14[13]] = a5;
  return result;
}

uint64_t ConfigPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v2 = *(a1 + 16);
  v65 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v64 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21E141A24();
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = v46 - v6;
  v7 = sub_21E142344();
  v8 = *(a1 + 32);
  v80 = MEMORY[0x277CE0BD8];
  v81 = v2;
  v9 = MEMORY[0x277CE0BD8];
  v82 = MEMORY[0x277CE0BC8];
  v83 = v8;
  v10 = MEMORY[0x277CE0BC8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v80 = v7;
  v81 = v2;
  v82 = OpaqueTypeMetadata2;
  v83 = WitnessTable;
  v84 = v8;
  v13 = sub_21E141A94();
  v56 = v13;
  v80 = v9;
  v81 = v2;
  v82 = v10;
  v83 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = swift_getWitnessTable();
  v80 = v9;
  v81 = v2;
  v82 = v13;
  v83 = v10;
  v84 = v8;
  v85 = v52;
  v14 = sub_21E141854();
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v51 = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CE0, &qword_21E148320);
  v17 = swift_getWitnessTable();
  v18 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0, &qword_21E148320, MEMORY[0x277CDF028]);
  v80 = v14;
  v81 = v16;
  v19 = v16;
  v50 = v16;
  v82 = v17;
  v83 = v18;
  v49 = v17;
  v20 = v18;
  v48 = v18;
  v21 = swift_getOpaqueTypeMetadata2();
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v47 = v46 - v22;
  v80 = v14;
  v81 = v19;
  v82 = v17;
  v83 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v60 = v21;
  v80 = v21;
  v81 = v23;
  v55 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v57 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v53 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v54 = v46 - v28;
  v46[1] = a1;
  v29 = *(v5 + 16);
  v30 = v62;
  v31 = v61;
  v32 = v63;
  v29(v61, v62 + *(a1 + 44), v63, v27);
  v33 = *(a1 + 24);
  v76 = v2;
  v77 = v33;
  v78 = v8;
  v79 = v30;
  v71 = v2;
  v72 = v33;
  v73 = v8;
  v74 = v30;
  v34 = v30;
  v35 = v51;
  v36 = v31;
  v37 = v47;
  sub_21E04C66C(v36, sub_21E04C440, v75, sub_21E04C64C, v56, v51, MEMORY[0x277CE0BC8], v8, v52);
  v67 = v2;
  v68 = v33;
  v69 = v8;
  v70 = v34;
  sub_21E140EA4();
  (*(v58 + 8))(v35, v14);
  v38 = v64;
  MEMORY[0x223D52200](v32);
  v39 = v38;
  LOBYTE(v38) = sub_21E142074();
  (*(v65 + 8))(v39, v2);
  if (v38)
  {
    sub_21E1409F4();
  }

  else
  {
    sub_21E1409E4();
  }

  v40 = v53;
  v41 = v60;
  v42 = v55;
  sub_21E140D84();
  (*(v59 + 8))(v37, v41);
  v80 = v41;
  v81 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v54;
  sub_21DFE2A0C();
  v44 = *(v57 + 8);
  v44(v40, v24);
  sub_21DFE2A0C();
  return (v44)(v43, v24);
}

uint64_t sub_21E04C180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v23 = sub_21E142344();
  v20[1] = &unk_21E198C7C;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v30 = v23;
  v31 = a2;
  v32 = OpaqueTypeMetadata2;
  v33 = WitnessTable;
  v34 = a4;
  v9 = sub_21E141A94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v29 = *(a1 + *(type metadata accessor for ConfigPicker(0, a2, a3, a4) + 52));
  v25 = a2;
  v26 = a3;
  v27 = a4;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;

  v30 = MEMORY[0x277CE0BD8];
  v31 = a2;
  v32 = MEMORY[0x277CE0BC8];
  v33 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21E141A74();
  v28 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_21DFE2A0C();
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_21DFE2A0C();
  return (v17)(v15, v9);
}

uint64_t sub_21E04C44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v25 = a2;
  v24 = MEMORY[0x277CE0BD8];
  v8 = MEMORY[0x277CE0BD8];
  v26 = MEMORY[0x277CE0BC8];
  v27 = a4;
  v23[0] = &unk_21E198C7C;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v24 = sub_21E142AB4();
  v25 = v16;
  LOBYTE(v26) = 0;
  v27 = MEMORY[0x277D84F90];
  v17 = a1;
  v18 = v8;
  v19 = v8;
  v20 = MEMORY[0x277CE0BC8];
  sub_21DF21B1C(v17, 1, v19, a2, MEMORY[0x277CE0BC8]);

  v24 = v18;
  v25 = a2;
  v26 = v20;
  v27 = a4;
  swift_getOpaqueTypeConformance2();
  sub_21DFE2A0C();
  v21 = *(v10 + 8);
  v21(v12, OpaqueTypeMetadata2);
  sub_21DFE2A0C();
  return (v21)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_21E04C64C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_21E04C66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[4] = a3;
  v18[5] = a7;
  v18[0] = a4;
  v18[1] = a8;
  v18[2] = a2;
  v18[3] = a9;
  MEMORY[0x28223BE20](a1);
  v12 = sub_21E141A24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (*(v13 + 16))(v18 - v15, a1, v12, v14);
  (v18[0])(v16);
  sub_21E141834();
  return (*(v13 + 8))(a1, v12);
}

uint64_t sub_21E04C7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v9 = type metadata accessor for ConfigPicker(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8, &qword_21E150740);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v20 - v14;
  sub_21E13F344();
  v16 = sub_21E13F354();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  (*(v10 + 32))(&v18[v17], v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0, &qword_21E148330);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0, &qword_21E148330, MEMORY[0x277CDEFF0]);
  return sub_21E141754();
}

uint64_t sub_21E04CA60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConfigPicker(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1 + *(v10 + 48), a2);
  sub_21E141A24();
  return sub_21E1419D4();
}

double sub_21E04CB48()
{
  sub_21E1400D4();
  sub_21E141684();

  return result;
}

uint64_t (*default argument 3 of ConfigPicker.init<A>(_:selection:initialValue:shouldShowAsNone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  return sub_21DFB1798;
}

uint64_t ConfigPicker.init<A>(_:selection:initialValue:shouldShowAsNone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v89 = a8;
  v94 = a6;
  v74 = a5;
  v83 = a4;
  v95 = a3;
  v86 = a2;
  v85 = a1;
  v84 = a9;
  v92 = a12;
  v93 = a13;
  v88 = a11;
  v90 = a10;
  v73 = sub_21E142724();
  v76 = *(v73 - 8);
  v77 = v73 - 8;
  v96 = v76;
  MEMORY[0x28223BE20](v73);
  v82 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v66 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v78 = &v66 - v18;
  v68 = a7;
  v19 = sub_21E141A24();
  v91 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  v87 = &v66 - v22;
  v24 = sub_21E141A24();
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v97 = &v66 - v26;
  v27 = *(v20 + 16);
  v69 = v20 + 16;
  v72 = v27;
  (v27)(v23, a3, v19, v25);
  v70 = sub_21E1423C4();

  v28 = sub_21E1423B4();
  v29 = *(v20 + 80);
  v75 = v20;
  v30 = (v29 + 80) & ~v29;
  v71 = v30 + v21;
  v67 = v30;
  v31 = (v30 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 2) = v28;
  *(v32 + 3) = v33;
  v35 = v89;
  v34 = v90;
  *(v32 + 4) = a7;
  *(v32 + 5) = v35;
  v36 = v88;
  *(v32 + 6) = v34;
  *(v32 + 7) = v36;
  v38 = v92;
  v37 = v93;
  *(v32 + 8) = v92;
  *(v32 + 9) = v37;
  v66 = *(v20 + 32);
  v39 = v87;
  v40 = v91;
  v66(&v32[v30], v87, v91);
  v41 = &v32[v31];
  v43 = v94;
  v42 = v95;
  *v41 = v74;
  v41[1] = v43;
  v72(v39, v42, v40);
  v44 = sub_21E1423B4();
  v45 = swift_allocObject();
  *(v45 + 2) = v44;
  v46 = v68;
  *(v45 + 3) = MEMORY[0x277D85700];
  *(v45 + 4) = v46;
  *(v45 + 5) = v35;
  *(v45 + 6) = v34;
  v47 = v88;
  *(v45 + 7) = v88;
  *(v45 + 8) = v38;
  v48 = v93;
  *(v45 + 9) = v93;
  v66(&v45[v67], v87, v40);
  v49 = v73;
  sub_21E141A04();
  sub_21E142AC4();
  swift_allocObject();
  v50 = sub_21E1422E4();
  v51 = v46;
  v52 = *(v46 - 8);
  v87 = *(v52 + 56);
  (v87)(v53, 1, 1, v46);
  sub_21E142344();
  v106 = v50;
  v54 = v78;
  v55 = v89;
  sub_21E142894();
  v99 = v51;
  v100 = v55;
  v101 = v90;
  v102 = v47;
  v103 = v92;
  v104 = v48;
  v56 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = sub_21E04B264(sub_21E04DAEC, v98, v56, v49, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v58);
  (*(v80 + 8))(v54, v56);
  v105 = v59;
  swift_getWitnessTable();
  sub_21E142334();

  (*(v75 + 8))(v95, v91);
  v60 = v81;
  (*(v52 + 32))(v81, v83, v51);
  (v87)(v60, 0, 1, v51);
  v61 = v82;
  (*(v96 + 32))(v82, v60, v49);
  v62 = v106;
  WitnessTable = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  return ConfigPicker.init(_:selection:initialValue:cases:)(v85, v86, v97, v61, v62, v49, WitnessTable, v64, v84);
}

uint64_t sub_21E04D438@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E141A24();
  MEMORY[0x223D52200](v10);
  if (a2(v9))
  {
    (*(v7 + 8))(v9, a3);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(a4, v9, a3);
    v11 = 0;
  }

  return (*(v7 + 56))(a4, v11, 1, a3);
}

uint64_t sub_21E04D578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(sub_21E141A24() - 8);
  return sub_21E04D438(*(v1 + 16), *(v1 + ((*(v4 + 64) + ((*(v4 + 80) + 80) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), v3, a1);
}

uint64_t sub_21E04D658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21E142724();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, v7, v16);
  if ((*(v11 + 48))(v10, 1, a5) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v18, v10, a5);
  (*(v11 + 16))(v14, v18, a5);
  sub_21E141A24();
  sub_21E1419D4();
  return (*(v11 + 8))(v18, a5);
}

uint64_t sub_21E04D87C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_21E141A24() - 8);
  return sub_21E04D658(a1, v1[2], v1[3], v1 + ((*(v4 + 80) + 80) & ~*(v4 + 80)), v3);
}

uint64_t Optional<A>.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, v7);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    return 1701736270;
  }

  (*(v3 + 32))(v5, v9, v2);
  v13 = sub_21E142AB4();
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t sub_21E04DAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_21E04DBF4(uint64_t a1)
{
  result = sub_21E141A24();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_21E142344();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21E04DCB0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v7 | 7;
  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  v11 = ((v8 + ((v8 + v7 - (((-17 - v7) | v7) + ((-17 - v7) | v10)) - 2) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = a2 - v9;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_31:
    if (v9 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v10 + 16) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v20 = *(a1 + 8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v9 + (v13 | v19) + 1;
}

void *sub_21E04DE40(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((((v8 + 16) & ~(v8 | 7)) + v8 + ((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((((v8 + 16) & ~(v8 | 7)) + v8 + ((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *result = a2 & 0x7FFFFFFF;
          result[1] = 0;
        }

        else
        {
          result[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);
        v19 = (v8 + ((((result + (v8 | 7) + 16) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v18(v19);
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((((v8 + 16) & ~(v8 | 7)) + v8 + ((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((((v8 + 16) & ~(v8 | 7)) + v8 + ((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_21E04E050()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for ConfigPicker(0, v1, v0[3], v0[4]) - 8);
  v3 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_21E04CA60(v3, v1);
}

uint64_t ConfigSlider.init(value:initialValue:label:range:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v30[0] = a8;
  v30[1] = a10;
  v31 = a11;
  v32 = a12;
  v19 = type metadata accessor for ConfigSlider(0, v30);
  v20 = v19[15];
  *&a9[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB140, &qword_21E150178);
  swift_storeEnumTagMultiPayload();
  v21 = v19[16];
  v22 = sub_21E141A24();
  (*(*(v22 - 8) + 32))(&a9[v21], a1, v22);
  (*(*(a8 - 8) + 32))(&a9[v19[17]], a2, a8);
  v23 = &a9[v19[18]];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = v19[19];
  v25 = sub_21E142064();
  result = (*(*(v25 - 8) + 32))(&a9[v24], a5, v25);
  v27 = &a9[v19[20]];
  *v27 = a6;
  *(v27 + 1) = a7;
  return result;
}

uint64_t sub_21E04E2E8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}