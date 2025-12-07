id sub_29DF6FDE4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  [a1 setZIndex_];
  [a1 setFrame_];
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [a2 adjustedContentInset];
  v21 = v20;
  [a2 contentOffset];
  v23 = v22;
  v25 = v21 + v24;
  v38.origin.x = v13;
  v38.origin.y = v15;
  v38.size.width = v17;
  v38.size.height = v19;
  Height = CGRectGetHeight(v38);
  [a2 safeAreaInsets];
  v28 = v23 + Height - v27 + -54.0;
  v39.origin.x = v13;
  v39.origin.y = v15;
  v39.size.width = v17;
  v39.size.height = v19;
  v29 = CGRectGetWidth(v39) + -64.0;
  [a1 frame];
  [a1 setFrame_];
  v41.origin.x = v13;
  v41.origin.y = v15;
  v41.size.width = v17;
  v41.size.height = v19;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = v13;
  v42.origin.y = v15;
  v42.size.width = v17;
  v42.size.height = v19;
  [a1 frame];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  v34 = v43.size.height;
  CGRectGetMidX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = v34;
  v35 = CGRectGetMidY(v44) - v34 * 0.5;

  return [a1 setFrame_];
}

void sub_29DF6FFE0()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_label;
  *(v0 + v1) = sub_29DF6EDF0();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_background;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [v3 layer];
  [v5 setCornerCurve_];

  v6 = [v3 layer];
  [v6 setMaskedCorners_];

  *(v0 + v2) = v3;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29DF70130(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_29DF70270(0, &qword_2A1819790, MEMORY[0x29EDC78D0], MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF701C4(uint64_t a1, __n128 a2)
{
  sub_29DF70270(0, &qword_2A1819790, MEMORY[0x29EDC78D0], MEMORY[0x29EDC9C68]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF70258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DF70270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DF702D4()
{
  sub_29E2C4584();

  v0 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v0);

  return 0xD000000000000011;
}

uint64_t sub_29DF70374()
{
  sub_29DE8EDC0(v0 + 16);
  sub_29DE8EDC0(v0 + 32);
  sub_29DE8EDC0(v0 + 48);
  sub_29DF707B4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_viewModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleHistoryItem(uint64_t a1)
{
  result = qword_2A18197A0;
  if (!qword_2A18197A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF70444(uint64_t a1)
{
  result = type metadata accessor for CycleHistorySingleCycleViewModel(319);
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

uint64_t sub_29DF704F4()
{
  type metadata accessor for CycleHistoryCell();
  sub_29DF7076C(&unk_2A1820CB0, type metadata accessor for CycleHistoryCell, &unk_29E2E194C);
  return sub_29E2BE2B4();
}

BOOL sub_29DF7055C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (sub_29DFD3B88(*a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_viewModel, *a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_viewModel) & 1) != 0 && *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_containerWidth) == *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryItem_containerWidth);
}

uint64_t sub_29DF705DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29DF70640(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v9[3] = type metadata accessor for CycleHistoryItem(0);
    v9[4] = sub_29DF7076C(&qword_2A18197B0, type metadata accessor for CycleHistoryItem, &unk_29E2D4730);
    v9[0] = v4;
    v8 = *(v6 + 8);

    v8(v9, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

uint64_t sub_29DF7076C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF707B4(uint64_t a1)
{
  v2 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF70880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

uint64_t sub_29DF70928()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

void sub_29DF709C8()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29DF70A90()
{
  sub_29DECE8A4(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD3B0;
  sub_29DEED314();
  *(inited + 32) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA4A0]);
  *(inited + 40) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA470]);
  sub_29DE927B8(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

void sub_29DF70B58()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v152 = &v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_29E2C3384();
  v154 = *(v144 - 8);
  MEMORY[0x2A1C7C4A8](v144);
  v151 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v132 - v4;
  sub_29DEFFE04(0);
  v6 = sub_29E2BDD14();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v153 = *(v7 + 72);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_29E2D47C0;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  v10 = sub_29E2C33A4();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

  v12 = v9;
  if (v11)
  {
    v13 = v137 + v8;
    *v13 = v11;
    *(v13 + 8) = 0;
    v14 = *MEMORY[0x29EDC1608];
    v15 = *(v7 + 104);
    v147 = v7 + 104;
    v15(v13, v14, v6);
    v148 = v15;
    v149 = v13;
    v16 = (v13 + v153);
    v17 = v153;
    v141 = "Spotting Article Hero";
    *v16 = sub_29E2BC6E4();
    v16[1] = v18;
    v15(v16, *MEMORY[0x29EDC1610], v6);
    v139 = (2 * v17);
    v19 = v13 + 2 * v17;
    v143 = 0xD000000000000013;
    sub_29E2C3314();
    v155 = "SpottingArticleLocalizable";
    v20 = v154;
    v21 = *(v154 + 16);
    v145 = v154 + 16;
    v146 = v21;
    v22 = v151;
    v23 = v144;
    v21(v151, v5, v144);
    sub_29E2BCC74();
    v150 = v12;
    v136 = v12;
    v24 = v20;
    v25 = sub_29E2C3414();
    v27 = v26;
    v156 = *(v24 + 8);
    v156(v5, v23);
    v154 = v24 + 8;
    *v19 = v25;
    *(v19 + 8) = v27;
    *(v19 + 16) = 0;
    v140 = *MEMORY[0x29EDC1630];
    v148(v19);
    v28 = (v139 + v153 + v149);
    sub_29E2C3314();
    v146(v22, v5, v23);
    sub_29E2BCC74();
    v136 = v136;
    v29 = sub_29E2C3414();
    v31 = v30;
    v156(v5, v23);
    *v28 = v29;
    v28[1] = v31;
    v28[2] = 0;
    LODWORD(v139) = *MEMORY[0x29EDC15D0];
    v32 = v148;
    v148(v28);
    v33 = v153;
    v34 = v149;
    v35 = v149 + 4 * v153;
    *v35 = sub_29E2BC6E4();
    *(v35 + 8) = v36;
    *(v35 + 16) = 0;
    v37 = v140;
    (v32)(v34 + 4 * v33, v140, v6);
    v38 = v34 + 5 * v33;
    v39 = v5;
    sub_29E2C3314();
    v40 = v5;
    v41 = v144;
    v42 = v146;
    v146(v151, v40, v144);
    sub_29E2BCC74();
    v136 = v136;
    v43 = sub_29E2C3414();
    v45 = v44;
    v156(v39, v41);
    *v38 = v43;
    *(v38 + 8) = v45;
    *(v38 + 16) = 0;
    v46 = v37;
    v47 = v37;
    v142 = v6;
    v48 = v148;
    (v148)(v38, v47, v6);
    v49 = v149;
    v50 = v153;
    v51 = v149 + 6 * v153;
    v52 = v136;
    *v51 = sub_29E2BC6E4();
    *(v51 + 8) = v53;
    *(v51 + 16) = 0;
    v48(v49 + 6 * v50, v46, v6);
    v54 = v50;
    v50 *= 8;
    v133 = v50;
    v55 = (v49 + v50 - v54);
    v56 = v49;
    sub_29E2C3314();
    v138 = v39;
    v57 = v144;
    v42(v151, v39, v144);
    sub_29E2BCC74();
    v58 = v52;
    v59 = sub_29E2C3414();
    v61 = v60;
    v156(v39, v57);
    *v55 = v59;
    v55[1] = v61;
    v55[2] = 0;
    v48(v55, v139, v142);
    v136 = (v56 + v50);
    v135 = sub_29E2BC6E4();
    v134 = v62;
    sub_29DECE8A4(0, &qword_2A1A62780, MEMORY[0x29EDC99B0]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_29E2D47D0;
    *(v63 + 32) = sub_29E2BC6E4();
    *(v63 + 40) = v64;
    *(v63 + 48) = sub_29E2BC6E4();
    *(v63 + 56) = v65;
    *(v63 + 64) = sub_29E2BC6E4();
    *(v63 + 72) = v66;
    *(v63 + 80) = sub_29E2BC6E4();
    *(v63 + 88) = v67;
    *(v63 + 96) = sub_29E2BC6E4();
    *(v63 + 104) = v68;
    v69 = v138;
    sub_29E2C3314();
    v70 = v57;
    v146(v151, v69, v57);
    sub_29E2BCC74();
    v132 = v58;
    v71 = sub_29E2C3414();
    v73 = v72;
    v74 = v69;
    v156(v69, v70);
    *(v63 + 112) = v71;
    *(v63 + 120) = v73;
    *(v63 + 128) = sub_29E2BC6E4();
    *(v63 + 136) = v75;
    v76 = v136;
    v77 = v134;
    *v136 = v135;
    v76[1] = v77;
    v76[2] = v63;
    v78 = v142;
    v79 = v148;
    (v148)();
    v80 = v153;
    v81 = v149;
    v82 = (v149 + v133 + v153);
    sub_29E2C3314();
    v83 = v74;
    v84 = v144;
    v146(v151, v83, v144);
    sub_29E2BCC74();
    v136 = v132;
    v85 = sub_29E2C3414();
    v87 = v86;
    v88 = v138;
    v156(v138, v84);
    *v82 = v85;
    v82[1] = v87;
    v82[2] = 0;
    (v79)(v82, v139, v78);
    v89 = v81 + 10 * v80;
    sub_29E2C3314();
    v90 = v144;
    v91 = v146;
    v146(v151, v88, v144);
    sub_29E2BCC74();
    v136 = v136;
    v92 = sub_29E2C3414();
    v94 = v93;
    v156(v88, v90);
    *v89 = v92;
    *(v89 + 8) = v94;
    *(v89 + 16) = 0;
    (v148)(v89, v140, v142);
    v95 = v149 + 11 * v153;
    sub_29E2C3314();
    v91(v151, v88, v90);
    sub_29E2BCC74();
    v96 = v136;
    v97 = sub_29E2C3414();
    v99 = v98;
    v156(v88, v90);
    *v95 = v97;
    *(v95 + 8) = v99;
    *(v95 + 16) = 0;
    v100 = v140;
    v101 = v142;
    v102 = v148;
    (v148)(v95, v140, v142);
    v103 = v149;
    v104 = v153;
    v105 = v149 + 12 * v153;
    *v105 = sub_29E2BC6E4();
    *(v105 + 8) = v106;
    *(v105 + 16) = 0;
    v102(v103 + 12 * v104, v100, v101);
    v107 = (v103 + 13 * v104);
    v108 = v138;
    sub_29E2C3314();
    v109 = v144;
    v146(v151, v108, v144);
    sub_29E2BCC74();
    v136 = v96;
    v110 = sub_29E2C3414();
    v112 = v111;
    v156(v108, v109);
    *v107 = v110;
    v107[1] = v112;
    v107[2] = 0;
    v113 = v142;
    (v148)(v107, v139, v142);
    v114 = v149 + 14 * v153;
    sub_29E2C3314();
    v115 = v151;
    v146(v151, v108, v109);
    sub_29E2BCC74();
    v139 = v136;
    v116 = sub_29E2C3414();
    v118 = v117;
    v119 = v109;
    v156(v108, v109);
    *v114 = v116;
    *(v114 + 8) = v118;
    *(v114 + 16) = 0;
    v120 = v148;
    (v148)(v114, v140, v113);
    v121 = 16 * v153;
    v122 = v149;
    v123 = v149 + 15 * v153;
    sub_29E2C3314();
    v124 = v119;
    v146(v115, v108, v119);
    sub_29E2BCC74();
    v125 = sub_29E2C3414();
    v127 = v126;
    v156(v108, v124);
    *v123 = v125;
    *(v123 + 8) = v127;
    *(v123 + 16) = 0;
    v128 = v140;
    v129 = v142;
    (v120)(v123, v140, v142);
    v130 = v122 + v121;
    *v130 = sub_29E2BC6E4();
    *(v130 + 8) = v131;
    *(v130 + 16) = 0;
    (v120)(v122 + v121, v128, v129);
  }

  else
  {
    __break(1u);
  }
}

double sub_29DF71D10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for AllFeaturesModel();
    sub_29DF73914(&qword_2A1819818, v3, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);
    sub_29E2C1084();

    sub_29E2C1124();
  }

  return result;
}

uint64_t sub_29DF71DC0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29DF71E2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

double sub_29DF71EA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29DF71EF8();
  }

  return result;
}

double sub_29DF71EF8()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v20 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__fertileWindowEstimatesEnabled);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  swift_beginAccess();

  v2 = sub_29E2B3A9C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v3 = sub_29E232F44();
  swift_beginAccess();

  v4 = sub_29E2B3A9C();

  v5 = 256;
  if (!v23)
  {
    v5 = 0;
  }

  v6 = v5 | v23;
  v7 = 0x10000;
  if (!v22)
  {
    v7 = 0;
  }

  v8 = v6 | v7;
  v9 = 0x1000000;
  if ((v3 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x100000000;
  if (v22)
  {
    v10 = 0;
  }

  v11 = v8 | v9 | v10;
  v12 = 0x10000000000;
  if (!v20)
  {
    v12 = 0;
  }

  v13 = 0x1000000000000;
  if (!v23)
  {
    v13 = 0;
  }

  v14 = 0x100000000000000;
  if ((v2 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = sub_29E1E05F8(v11 | v13 | v14 | v12, v4 & 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  sub_29E143010(v15, v21);
  v17 = v16;

  if (v17)
  {
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v18);
    sub_29E2C2AD4();
    sub_29E2C15E4();
  }

  return result;
}

uint64_t sub_29DF7229C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2BF404();
  return sub_29E2C1224();
}

uint64_t sub_29DF72320()
{

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin12OptionsModel__sections;
  sub_29DF72540(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_29DF723D0()
{
  sub_29DF72320();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OptionsModel(uint64_t a1)
{
  result = qword_2A18197C8;
  if (!qword_2A18197C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF7247C(uint64_t a1, __n128 a2)
{
  sub_29DF72540(319);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29DF72540(uint64_t a1)
{
  if (!qword_2A18197D8)
  {
    sub_29DF73818(255, &qword_2A18197E0, &type metadata for OptionsSection, MEMORY[0x29EDC9A40]);
    v1 = sub_29E2C1234();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18197D8);
    }
  }
}

void sub_29DF725BC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a2 = v3;
}

uint64_t sub_29DF7263C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();

  return sub_29E2C1224();
}

void *sub_29DF726B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_29DF73680(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[4] = MEMORY[0x29EDCA1A0];
  v3[2] = a1;
  v3[3] = a2;
  sub_29DF73818(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CD3B0;
  type metadata accessor for SensorFeatureStatusModel(0);
  sub_29DF73914(&qword_2A1819848, 255, type metadata accessor for SensorFeatureStatusModel, &unk_29E2D3CB8);

  *(v11 + 32) = sub_29E2C1084();
  *(v11 + 40) = sub_29E2C1084();
  v13[1] = v11;
  sub_29E2C1134();
  sub_29DF7361C(0, &qword_2A1819830, MEMORY[0x29EDB8A98], MEMORY[0x29EDC9A40]);
  sub_29DF73868();
  sub_29E2C0FE4();
  swift_allocObject();
  swift_weakInit();
  sub_29DF73914(&qword_2A18197F8, 255, sub_29DF73680, MEMORY[0x29EDB89D8]);
  sub_29E2C1384();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  return v3;
}

char *sub_29DF729A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v65) = a6;
  v60 = a2;
  sub_29DF7361C(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v68 = v59 - v13;
  sub_29DF73680(0);
  v69 = v14;
  v67 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v66 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF736E0(0);
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v70 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF7361C(0, &qword_2A181C0A0, sub_29DF737B0, MEMORY[0x29EDB8B00]);
  v62 = *(v18 - 8);
  v63 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v61 = v59 - v19;
  sub_29DF72540(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin12OptionsModel__sections;
  v74 = MEMORY[0x29EDCA190];
  v26 = MEMORY[0x29EDC9A40];
  sub_29DF73818(0, &qword_2A18197E0, &type metadata for OptionsSection, MEMORY[0x29EDC9A40]);
  sub_29E2C11D4();
  (*(v22 + 32))(&v7[v25], v24, v21);
  *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin12OptionsModel_subscriptions] = MEMORY[0x29EDCA1A0];
  *(v7 + 2) = a3;
  *(v7 + 3) = a4;
  v59[1] = a4;
  type metadata accessor for AnalysisModel(0);
  swift_allocObject();
  v59[0] = a3;

  v27 = a1;
  *(v7 + 4) = sub_29E0FC46C(v27, v65);
  v28 = [v27 healthStore];
  type metadata accessor for SensorFeatureStatusModel(0);
  swift_allocObject();
  v29 = sub_29E2B3F80(0, v28);
  v30 = [v27 healthStore];
  swift_allocObject();
  v31 = sub_29E2B3F80(1, v30);
  type metadata accessor for AllFeaturesModel();
  swift_allocObject();

  v64 = v31;
  v33 = sub_29DF726B8(v32, v31);
  v65 = v29;

  *(v7 + 5) = v33;
  *(v7 + 6) = a5;

  v34 = [v27 healthStore];
  type metadata accessor for PeriodAndCycleLengthModel(0);
  v35 = swift_allocObject();
  *(v35 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PeriodAndCycleLengthModel_healthStore) = v34;
  v36 = [objc_allocWithZone(MEMORY[0x29EDB9F70]) init];
  *(v35 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PeriodAndCycleLengthModel_daysFormatter) = v36;
  v37 = v36;
  [v37 setAllowedUnits_];
  [v37 setUnitsStyle_];

  swift_beginAccess();
  v73 = &unk_2A24AEBE0;
  sub_29DF73818(0, &qword_2A18193E8, &type metadata for PeriodAndCycleLengthRow, v26);
  sub_29E2C11D4();
  swift_endAccess();
  *(v7 + 7) = v35;
  type metadata accessor for HealthNotificationsModel(0);
  swift_allocObject();
  *(v7 + 8) = sub_29E016FE0();
  sub_29DF73818(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_29E2D48B0;
  type metadata accessor for LocalSettingsModel();
  sub_29DF73914(&qword_2A181BBE0, 255, type metadata accessor for LocalSettingsModel, &unk_29E2DC1F4);
  *(v38 + 32) = sub_29E2C1084();
  type metadata accessor for FeatureSettingsModel(0);
  sub_29DF73914(&qword_2A1819800, 255, type metadata accessor for FeatureSettingsModel, &unk_29E2D3CB8);
  *(v38 + 40) = sub_29E2C1084();
  sub_29DF73914(&qword_2A1819808, 255, type metadata accessor for AnalysisModel, &unk_29E2DF480);

  v39 = sub_29E2C1084();

  *(v38 + 48) = v39;
  sub_29DF73914(&qword_2A18193F8, 255, type metadata accessor for PeriodAndCycleLengthModel, &unk_29E2D3530);

  v40 = sub_29E2C1084();

  *(v38 + 56) = v40;
  sub_29DF73914(&qword_2A1819810, 255, type metadata accessor for HealthNotificationsModel, &unk_29E2D928C);

  v41 = sub_29E2C1084();

  *(v38 + 64) = v41;
  sub_29DF73914(&qword_2A1819818, v42, type metadata accessor for AllFeaturesModel, &unk_29E2D4948);

  v43 = sub_29E2C1084();

  *(v38 + 72) = v43;
  type metadata accessor for DeviationsFeatureStatusModel(0);
  v44 = v60;
  sub_29DF73914(&qword_2A1819820, 255, type metadata accessor for DeviationsFeatureStatusModel, &unk_29E2D3CB8);

  v45 = sub_29E2C1084();

  *(v38 + 80) = v45;
  v73 = v38;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v47 = [v27 healthStore];
    v46 = [objc_allocWithZone(MEMORY[0x29EDC33E0]) initWithHealthStore_];
  }

  type metadata accessor for PregnancyModeOptionsModel(0);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeOptionsModel__pregnancyModel;
  v74 = 0;
  sub_29DF737B0(0);
  swift_unknownObjectRetain();
  v50 = v61;
  sub_29E2C11D4();
  (*(v62 + 32))(v48 + v49, v50, v63);
  *(v48 + 16) = v46;
  [v46 registerObserver:v48 isUserInitiated:1];
  *(v7 + 9) = v48;
  sub_29DF73914(&qword_2A1819828, 255, type metadata accessor for PregnancyModeOptionsModel, &unk_29E2DD050);
  sub_29E2C1084();
  MEMORY[0x29ED7FDC0]();
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E2C3644();
  }

  sub_29E2C3674();
  v74 = v73;
  sub_29E2C1134();
  sub_29DF7361C(0, &qword_2A1819830, MEMORY[0x29EDB8A98], MEMORY[0x29EDC9A40]);
  sub_29DF73868();
  v51 = v66;
  sub_29E2C0FE4();
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v52 = sub_29E2C3CF4();
  v74 = v52;
  v53 = sub_29E2C3CE4();
  v54 = v68;
  (*(*(v53 - 8) + 56))(v68, 1, 1, v53);
  sub_29DF73914(&qword_2A18197F8, 255, sub_29DF73680, MEMORY[0x29EDB89D8]);
  sub_29DF4D6CC();
  v56 = v69;
  v55 = v70;
  sub_29E2C1354();
  sub_29DEB1FA4(v54);

  (*(v67 + 8))(v51, v56);
  swift_allocObject();
  swift_weakInit();
  sub_29DF73914(&qword_2A1819840, 255, sub_29DF736E0, MEMORY[0x29EDB89E8]);
  v57 = v72;
  sub_29E2C1384();

  (*(v71 + 8))(v55, v57);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  sub_29DF71EF8();

  return v7;
}

void sub_29DF7361C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DF73680(uint64_t a1)
{
  if (!qword_2A18197E8)
  {
    sub_29E2C1134();
    v1 = sub_29E2C0FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18197E8);
    }
  }
}

void sub_29DF736E0(uint64_t a1)
{
  if (!qword_2A18197F0)
  {
    sub_29DF73680(255);
    sub_29DE9408C(255, &qword_2A1A626C0, 0x29EDCA548);
    sub_29DF73914(&qword_2A18197F8, 255, sub_29DF73680, MEMORY[0x29EDB89D8]);
    sub_29DF4D6CC();
    v1 = sub_29E2C0FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18197F0);
    }
  }
}

void sub_29DF737B0(uint64_t a1)
{
  if (!qword_2A1A5E180)
  {
    sub_29DE9408C(255, &unk_2A1A5E190, 0x29EDBAC30);
    v1 = sub_29E2C4304();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E180);
    }
  }
}

void sub_29DF73818(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29DF73868()
{
  result = qword_2A1819838;
  if (!qword_2A1819838)
  {
    sub_29DF7361C(255, &qword_2A1819830, MEMORY[0x29EDB8A98], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819838);
  }

  return result;
}

uint64_t sub_29DF73914(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29DF7397C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_29DEA6D14(0);
  v91 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v92 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF76FE4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = (&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v90 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v90 - v18;
  v20 = sub_29E2BCFB4();
  v94 = *(v20 - 1);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v90 - v24;
  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes;
  swift_beginAccess();
  v107 = v4;
  v27 = *&v4[v26];
  v112 = MEMORY[0x29EDCA190];
  if (v27 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v93 = v19;
    v90 = v13;
    sub_29E2BF404();
    v29 = MEMORY[0x29EDCA190];
    v108 = v20;
    v104 = v25;
    v103 = v16;
    if (i)
    {
      v25 = 0;
      v19 = v27 & 0xC000000000000001;
      v16 = (v27 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v19)
        {
          v30 = MEMORY[0x29ED80D70](v25, v27);
        }

        else
        {
          if (v25 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v30 = *(v27 + 8 * v25 + 32);
        }

        v20 = v30;
        v13 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v30 frame];
        v115.origin.x = a1;
        v115.origin.y = a2;
        v115.size.width = a3;
        v115.size.height = a4;
        if (CGRectIntersectsRect(v113, v115))
        {
          sub_29E2C4614();
          sub_29E2C4644();
          sub_29E2C4654();
          sub_29E2C4624();
        }

        else
        {
        }

        ++v25;
        v20 = v108;
        if (v13 == i)
        {
          v19 = v112;
          v25 = v104;
          v16 = v103;
          v29 = MEMORY[0x29EDCA190];
          goto LABEL_16;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v19 = MEMORY[0x29EDCA190];
LABEL_16:

    v112 = v29;
    v31 = v107;
    if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
    {
      v32 = sub_29E2C4484();
    }

    else
    {
      v32 = *(v19 + 16);
    }

    v33 = MEMORY[0x29EDCA190];
    if (!v32)
    {
      goto LABEL_52;
    }

    v34 = 0;
    v100 = "leadingAxisLabelMasks";
    v99 = "sectionHeaderFooter";
    v102 = v19 & 0xC000000000000001;
    v95 = v19 + 32;
    v13 = (v94 + 8);
    v98 = 0xD000000000000013;
    v97 = 0xD000000000000011;
    v101 = v19;
    v96 = v32;
LABEL_22:
    if (v102)
    {
      break;
    }

    if (v34 < *(v19 + 16))
    {
      v35 = *(v95 + 8 * v34);
      v36 = __OFADD__(v34, 1);
      v37 = v34 + 1;
      if (!v36)
      {
        goto LABEL_28;
      }

      goto LABEL_61;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v35 = MEMORY[0x29ED80D70](v34, v19);
  v36 = __OFADD__(v34, 1);
  v37 = v34 + 1;
  if (v36)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_28:
  v105 = v37;
  v106 = v35;
  v38 = [v35 indexPath];
  sub_29E2BCF44();

  v16 = sub_29E2BCFA4();
  v19 = *v13;
  (*v13)(v25, v20);
  v39 = [v31 collectionView];
  if (!v39)
  {
    goto LABEL_42;
  }

  v40 = v39;
  v25 = [v39 numberOfItemsInSection_];

  if ((v25 & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      MEMORY[0x29ED79740](j, v16);
      v42 = sub_29DF748B4(v22);
      if (v42)
      {
        v43 = v42;
        [v42 frame];
        v116.origin.x = a1;
        v116.origin.y = a2;
        v116.size.width = a3;
        v116.size.height = a4;
        if (CGRectIntersectsRect(v114, v116))
        {
          v44 = v43;
          MEMORY[0x29ED7FDC0]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29E2C3644();
          }

          sub_29E2C3674();
          v45 = sub_29E2C33A4();
          v46 = sub_29E2BCF24();
          v47 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v45 withIndexPath:v46];

          [v44 frame];
          [v47 setFrame_];
          [v47 setZIndex_];
          v48 = v47;
          MEMORY[0x29ED7FDC0]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29E2C3644();
          }

          sub_29E2C3674();

          v20 = v108;
          (v19)(v22, v108);
        }

        else
        {
          (v19)(v22, v20);
        }
      }

      else
      {
        (v19)(v22, v20);
      }
    }
  }

LABEL_42:
  v49 = v106;
  v50 = [v106 indexPath];
  v25 = v104;
  sub_29E2BCF44();

  v51 = sub_29DF75318(v98, v100 | 0x8000000000000000, v25);
  (v19)(v25, v20);
  v111[4] = v51;
  v52 = [v49 indexPath];
  sub_29E2BCF44();

  v53 = sub_29DF75318(0x4F6E6F6974636573, 0xEE0079616C726576, v25);
  (v19)(v25, v20);
  v111[5] = v53;
  v54 = [v49 indexPath];
  sub_29E2BCF44();

  v55 = sub_29DF75318(v97, v99 | 0x8000000000000000, v25);
  (v19)(v25, v20);
  v27 = 0;
  v111[6] = v55;
  v56 = MEMORY[0x29EDCA190];
  v110 = MEMORY[0x29EDCA190];
  v19 = v101;
  v16 = v103;
LABEL_43:
  v57 = 3;
  if (v27 > 3)
  {
    v57 = v27;
  }

  while (v27 != 3)
  {
    if (v57 == v27)
    {
      __break(1u);
      goto LABEL_59;
    }

    v58 = v111[v27++ + 4];
    if (v58)
    {
      v59 = v58;
      MEMORY[0x29ED7FDC0]();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      v56 = v110;
      goto LABEL_43;
    }
  }

  sub_29DF76FE4(0, &qword_2A1819898, sub_29DF76F98);
  swift_arrayDestroy();
  sub_29DFCBB58(v56);

  v34 = v105;
  v31 = v107;
  if (v105 != v96)
  {
    goto LABEL_22;
  }

  v33 = v112;
LABEL_52:
  v60 = v94;
  v61 = v92;
  if (v33 >> 62)
  {
    result = sub_29E2C4484();
    if (!result)
    {
      goto LABEL_67;
    }

LABEL_54:
    if ((v33 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x29ED80D70](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v63 = *(v33 + 32);
    }

    v64 = v63;
    v65 = [v63 indexPath];

    v66 = v93;
    sub_29E2BCF44();

    v67 = 0;
    goto LABEL_68;
  }

  result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_54;
  }

LABEL_67:
  v67 = 1;
  v66 = v93;
LABEL_68:
  v68 = *(v60 + 56);
  v68(v66, v67, 1, v20);
  MEMORY[0x29ED796E0](&unk_2A24AEC08);
  v68(v16, 0, 1, v20);
  v69 = *(v91 + 48);
  sub_29DF3C944(v66, v61);
  sub_29DF3C944(v16, v61 + v69);
  v70 = *(v60 + 48);
  if (v70(v61, 1, v20) != 1)
  {
    v71 = v90;
    sub_29DF3C944(v61, v90);
    if (v70(v61 + v69, 1, v20) != 1)
    {
      v72 = v104;
      (*(v60 + 32))(v104, v61 + v69, v20);
      sub_29DF219C0(&unk_2A181DBB0, MEMORY[0x29EDB9D88]);
      v73 = sub_29E2C3304();
      v74 = *(v60 + 8);
      v74(v72, v20);
      sub_29DF2192C(v103);
      sub_29DF2192C(v93);
      v74(v71, v20);
      sub_29DF2192C(v61);
      if (v73)
      {
        goto LABEL_75;
      }

      goto LABEL_82;
    }

    sub_29DF2192C(v103);
    sub_29DF2192C(v93);
    (*(v60 + 8))(v71, v20);
LABEL_73:
    sub_29DF77038(v61);
    goto LABEL_82;
  }

  sub_29DF2192C(v16);
  sub_29DF2192C(v66);
  if (v70(v61 + v69, 1, v20) != 1)
  {
    goto LABEL_73;
  }

  sub_29DF2192C(v61);
LABEL_75:
  v75 = v104;
  MEMORY[0x29ED796E0](&unk_2A24AEC38);
  v76 = sub_29DF75318(0xD00000000000001FLL, 0x800000029E2F43D0, v75);
  v77 = *(v60 + 8);
  v77(v75, v20);
  v109[4] = v76;
  MEMORY[0x29ED796E0](&unk_2A24AEC68);
  v78 = sub_29DF75318(0xD000000000000024, 0x800000029E2F43F0, v75);
  v77(v75, v20);
  v79 = 0;
  v109[5] = v78;
  v80 = MEMORY[0x29EDCA190];
  v110 = MEMORY[0x29EDCA190];
  while (v79 != 2)
  {
    v81 = v109[v79++ + 4];
    if (v81)
    {
      v82 = v81;
      MEMORY[0x29ED7FDC0]();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      v80 = v110;
    }
  }

  sub_29DF76FE4(0, &qword_2A1819898, sub_29DF76F98);
  swift_arrayDestroy();
  sub_29DFCBB58(v80);
LABEL_82:
  sub_29DE99B54();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_29E2CE070;
  v84 = v104;
  MEMORY[0x29ED796E0](&unk_2A24AEC98);
  v85 = sub_29DF75318(0xD000000000000017, 0x800000029E2F4330, v84);
  v86 = *(v60 + 8);
  result = v86(v84, v20);
  if (!v85)
  {
    goto LABEL_89;
  }

  *(v83 + 32) = v85;
  MEMORY[0x29ED796E0](&unk_2A24AECC8);
  v87 = sub_29DF75318(0x41676E696461656CLL, 0xEB00000000736978, v84);
  result = v86(v84, v20);
  if (!v87)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  *(v83 + 40) = v87;
  MEMORY[0x29ED796E0](&unk_2A24AECF8);
  v88 = sub_29DF75318(0xD000000000000015, 0x800000029E2F4350, v84);
  result = v86(v84, v20);
  if (!v88)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  *(v83 + 48) = v88;
  MEMORY[0x29ED796E0](&unk_2A24AED28);
  v89 = sub_29DF75318(0xD000000000000015, 0x800000029E2F4370, v84);
  result = v86(v84, v20);
  if (v89)
  {

    *(v83 + 56) = v89;
    v110 = v83;
    sub_29DFCBB58(v112);
    return v110;
  }

LABEL_92:
  __break(1u);
  return result;
}

id sub_29DF748B4(uint64_t a1)
{
  v2 = v1;
  v108 = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v104 = sub_29E2C0514();
  v103 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v98 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v101 = &v98 - v10;
  v105 = sub_29E2BCFB4();
  v11 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v98 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v100 = &v98 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v98 - v20;
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes;
  swift_beginAccess();
  v23 = *&v2[v22];
  if (v23 >> 62)
  {
    v97 = sub_29E2C4484();
    if (v97 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v24 = v97;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_29E2BCFA4() >= v24)
  {
    sub_29E2C04B4();
    v31 = v105;
    (*(v11 + 16))(v13, a1, v105);
    v32 = sub_29E2C0504();
    v33 = sub_29E2C3A14();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&slice.origin.x = v35;
      *v34 = 136446466;
      v36 = sub_29E2C4AE4();
      v38 = sub_29DFAA104(v36, v37, &slice);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      sub_29DF219C0(&unk_2A181F8A0, MEMORY[0x29EDB9D90]);
      v39 = sub_29E2C48D4();
      v41 = v40;
      (*(v11 + 8))(v13, v31);
      v42 = sub_29DFAA104(v39, v41, &slice);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_29DE74000, v32, v33, "[%{public}s] Attributes were requested for %s before computation!", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v35, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v31);
    }

    (*(v103 + 8))(v5, v104);
    return 0;
  }

  v13 = sub_29E2BCFA4();
  swift_beginAccess();
  v25 = *&v2[v22];
  if ((v25 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v25 + 8 * v13 + 32);
      goto LABEL_8;
    }

    __break(1u);
  }

LABEL_29:
  v26 = MEMORY[0x29ED80D70](v13);
LABEL_8:
  v27 = v26;
  swift_endAccess();
  v28 = [v2 collectionView];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 numberOfItemsInSection_];
  }

  else
  {
    v30 = 0;
  }

  if (sub_29E2BCF94() >= v30)
  {
    sub_29E2C04B4();
    v74 = v105;
    (*(v11 + 16))(v16, a1, v105);
    v75 = sub_29E2C0504();
    v76 = sub_29E2C3A14();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v99 = v27;
      v79 = v78;
      *&slice.origin.x = v78;
      *v77 = 136446466;
      v80 = sub_29E2C4AE4();
      v82 = sub_29DFAA104(v80, v81, &slice);

      *(v77 + 4) = v82;
      *(v77 + 12) = 2080;
      sub_29DF219C0(&unk_2A181F8A0, MEMORY[0x29EDB9D90]);
      v83 = sub_29E2C48D4();
      v85 = v84;
      (*(v11 + 8))(v16, v74);
      v86 = sub_29DFAA104(v83, v85, &slice);

      *(v77 + 14) = v86;
      _os_log_impl(&dword_29DE74000, v75, v76, "[%{public}s] Attributes were requested for out-of-range item: %s!", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v79, -1, -1);
      MEMORY[0x29ED82140](v77, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v16, v74);
    }

    (*(v103 + 8))(v8, v104);
  }

  else
  {
    [v27 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_dayColumnWidth;
    v52 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_dayColumnWidth];
    v53 = sub_29E2BCF94();
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v109.origin.x = v44;
    v109.origin.y = v46;
    v109.size.width = v48;
    v109.size.height = v50;
    CGRectDivide(v109, &slice, &remainder, v52 * v53, CGRectMinXEdge);
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
    v58 = CGRectGetWidth(remainder);
    v59 = *&v2[v51];
    if (v59 <= v58)
    {
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v110.origin.x = x;
      v110.origin.y = y;
      v110.size.width = width;
      v110.size.height = height;
      CGRectDivide(v110, &slice, &remainder, v59, CGRectMinXEdge);
      v87 = slice.origin.x;
      v88 = slice.origin.y;
      v89 = slice.size.width;
      v90 = slice.size.height;
      v91 = v105;
      (*(v11 + 16))(v21, a1, v105);
      v92 = objc_opt_self();
      v93 = sub_29E2BCF24();
      v94 = [v92 layoutAttributesForCellWithIndexPath_];

      v95 = v94;
      [v95 setFrame_];
      [v95 setZIndex_];

      (*(v11 + 8))(v21, v91);
      return v95;
    }

    v99 = v27;
    v60 = v101;
    sub_29E2C04B4();
    v61 = v100;
    v62 = v105;
    (*(v11 + 16))(v100, a1, v105);
    v63 = sub_29E2C0504();
    v64 = sub_29E2C3A14();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&slice.origin.x = v66;
      *v65 = 136446466;
      v67 = sub_29E2C4AE4();
      v69 = sub_29DFAA104(v67, v68, &slice);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      sub_29DF219C0(&unk_2A181F8A0, MEMORY[0x29EDB9D90]);
      v70 = sub_29E2C48D4();
      v72 = v71;
      (*(v11 + 8))(v61, v62);
      v73 = sub_29DFAA104(v70, v72, &slice);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_29DE74000, v63, v64, "[%{public}s] We're out of space for %s!", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v66, -1, -1);
      MEMORY[0x29ED82140](v65, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v61, v62);
    }

    (*(v103 + 8))(v60, v104);
  }

  return 0;
}

char *sub_29DF75318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  result = [v7 collectionView];
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes;
    swift_beginAccess();
    v14 = *&v13[v7];
    if (v14 >> 62)
    {
      v35 = sub_29E2C4484();
      if (v35 < 0)
      {
        __break(1u);
LABEL_35:
        if (a1 == 0x4F6E6F6974636573 && a2 == 0xEE0079616C726576 || (sub_29E2C4914() & 1) != 0)
        {
          [v3 frame];
          MinX = CGRectGetMinX(v74);
          [v3 frame];
          Width = CGRectGetWidth(v75);
          [v12 bounds];
          [v13 setFrame_];
          [v13 setZIndex_];
          goto LABEL_13;
        }

        goto LABEL_42;
      }

      v15 = v35;
      v16 = sub_29E2BCFA4();
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = sub_29E2BCFA4();
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }
    }

    if (v16 < v15)
    {
      v3 = sub_29E2BCFA4();
      swift_beginAccess();
      v17 = *&v13[v7];
      if ((v17 & 0xC000000000000001) == 0)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v3 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v17 + 8 * v3 + 32);
LABEL_9:
          v3 = v18;
          v5 = 0xD000000000000015;
          swift_endAccess();
          v12 = v12;
          [v12 contentOffset];
          v20 = v19;
          [v12 contentOffset];
          v6 = v21;

          v22 = sub_29E2C33A4();
          v23 = sub_29E2BCF24();
          v13 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v22 withIndexPath:v23];

          if (a1 == 0xD000000000000017 && 0x800000029E2F4330 == a2 || (sub_29E2C4914() & 1) != 0)
          {
            v24 = *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth);
            [v12 bounds];
            [v13 setFrame_];
            [v13 setZIndex_];
LABEL_13:

            return v13;
          }

          if (a1 == 0x41676E696461656CLL && a2 == 0xEB00000000736978 || (sub_29E2C4914() & 1) != 0)
          {
            [v3 frame];
            MinY = CGRectGetMinY(v65);
            v26 = *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth);
            [v3 frame];
            Height = CGRectGetHeight(v66);
            [v12 bounds];
            v28 = CGRectGetHeight(v67);
            if (Height > v28)
            {
              v29 = Height;
            }

            else
            {
              v29 = v28;
            }

            [v13 setFrame_];
            [v13 setZIndex_];
            goto LABEL_13;
          }

          if (a1 == 0xD000000000000015 && 0x800000029E2F4350 == a2 || (sub_29E2C4914() & 1) != 0)
          {
            v30 = *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth);
            [v12 bounds];
            [v13 setFrame_];
            [v13 setZIndex_];
            goto LABEL_13;
          }

          if (a1 == 0xD000000000000015 && 0x800000029E2F4370 == a2 || (sub_29E2C4914() & 1) != 0)
          {
            [v3 frame];
            v31 = CGRectGetMinY(v69);
            v32 = *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth);
            [v3 frame];
            [v13 setFrame_];
            [v13 setZIndex_];
            goto LABEL_13;
          }

          if (a1 == 0xD000000000000013 && 0x800000029E2F4390 == a2 || (sub_29E2C4914() & 1) != 0)
          {
            [v3 frame];
            v33 = CGRectGetMinX(v71);
            [v3 frame];
            v34 = CGRectGetWidth(v72);
            [v12 bounds];
            [v13 setFrame_];
            [v13 setZIndex_];
            goto LABEL_13;
          }

          goto LABEL_35;
        }

        __break(1u);
LABEL_42:
        if (a1 == v5 - 4 && 0x800000029E2F43B0 == a2 || (sub_29E2C4914() & 1) != 0)
        {
          [v3 frame];
          v38 = CGRectGetMinX(v77);
          [v3 frame];
          v39 = CGRectGetWidth(v78);
          [v12 bounds];
          [v13 setFrame_];
          [v13 setZIndex_];
          goto LABEL_13;
        }

        if (a1 == 0x6B6361426D657469 && a2 == 0xEE00646E756F7267 || (sub_29E2C4914() & 1) != 0)
        {
          v40 = sub_29DF748B4(a3);
          if (v40)
          {
            v41 = v40;
            [v40 frame];
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;
          }

          else
          {
            v43 = 0.0;
            v45 = 0.0;
            v47 = 0.0;
            v49 = 0.0;
          }

          [v13 setFrame_];
          goto LABEL_53;
        }

        if (a1 == v5 + 10 && 0x800000029E2F43D0 == a2 || (sub_29E2C4914() & 1) != 0)
        {
          [v12 bounds];
          v50 = CGRectGetWidth(v80);
          [v3 frame];
          v51 = CGRectGetMinX(v81) - v50;
          [v3 frame];
          v52 = CGRectGetMinY(v82);
          [v3 frame];
          [v13 setFrame_];
LABEL_53:
          [v13 setZIndex_];
          goto LABEL_13;
        }

        if (a1 == v5 + 15 && 0x800000029E2F43F0 == a2 || (sub_29E2C4914() & 1) != 0)
        {
          v53 = v12;
          [v53 bounds];
          v54 = CGRectGetWidth(v84);
          [v3 frame];
          v55 = CGRectGetMinX(v85) - v54;
          [v53 bounds];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;

          v86.origin.x = v57;
          v86.origin.y = v59;
          v86.size.width = v61;
          v86.size.height = v63;
          [v13 setFrame_];
          [v13 setZIndex_];

          return v13;
        }

        return 0;
      }

      v18 = MEMORY[0x29ED80D70](v3);
      goto LABEL_9;
    }

LABEL_64:

    return 0;
  }

  return result;
}

id sub_29DF75FD4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes] = MEMORY[0x29EDCA190];
  v2 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_contentSize];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeight] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_footerHeight] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_dayColumnWidth] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeightAdjustment] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidthAdjustment] = 0;
  v3 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex];
  *v3 = 0;
  v3[8] = 1;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_29DF760B8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes] = MEMORY[0x29EDCA190];
  v4 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_contentSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeight] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_footerHeight] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_dayColumnWidth] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeightAdjustment] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidthAdjustment] = 0;
  v5 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex];
  *v5 = 0;
  v5[8] = 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

unint64_t sub_29DF76200(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_29E2C48F4();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v77 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  sub_29E0AF0CC();
  v13 = v12;
  sub_29E2C04B4();
  sub_29E2BF404();
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A04();

  v16 = os_log_type_enabled(v14, v15);
  v82 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v75 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v83[0] = v19;
    *v18 = 136446466;
    v20 = sub_29E2C4AE4();
    v22 = sub_29DFAA104(v20, v21, v83);
    v76 = v5;
    v23 = v22;

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    type metadata accessor for CGSize(0);
    v25 = MEMORY[0x29ED7FDF0](v82, v24);
    v27 = sub_29DFAA104(v25, v26, v83);
    v5 = v76;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Updating itemSizes: %s", v18, 0x16u);
    swift_arrayDestroy();
    v28 = v19;
    v13 = v82;
    MEMORY[0x29ED82140](v28, -1, -1);
    MEMORY[0x29ED82140](v18, -1, -1);

    (*(v9 + 8))(v11, v75);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v29 = MEMORY[0x29EDCA190];
  v83[0] = MEMORY[0x29EDCA190];
  v30 = *(v13 + 16);
  if (!v30)
  {
LABEL_21:
    v47 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes;
    v48 = v81;
    swift_beginAccess();
    *&v48[v47] = v29;

    v49 = *(v13 + 16);
    if (v49)
    {
      v50 = (v13 + 40);
      v51 = 0.0;
      v52 = 0.0;
      v53 = v80;
      do
      {
        if (v51 <= *v50)
        {
          v51 = *v50;
        }

        v52 = v52 + *(v50 - 1);
        v50 += 2;
        --v49;
      }

      while (v49);
    }

    else
    {
      v52 = 0.0;
      v51 = 0.0;
      v53 = v80;
    }

    v54 = &v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_contentSize];
    *v54 = v52;
    v54[1] = v51;
    v55 = type metadata accessor for CycleChartsModel(0);
    v56 = *(v53 + v55[9]);
    v57 = *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth];
    *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth] = v56;
    *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidthAdjustment] = v57 - v56 + *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidthAdjustment];
    *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_dayColumnWidth] = *(v53 + v55[10]);
    result = [v48 collectionView];
    if (result)
    {
      v58 = result;
      v59 = [result traitCollection];
      [v59 displayScale];
      v61 = v60;

      v62 = 1.0 / v61;
      v63 = sub_29E19B240(*(v53 + v55[6]), *(v53 + v55[6] + 8));
      v64 = *MEMORY[0x29EDC9EC0];
      v66 = v77;
      v65 = v78;
      v67 = *(v78 + 104);
      v68 = v79;
      v67(v77, v64, v79);
      v69 = sub_29E1CBDFC(v66, v62, v63);
      v70 = *(v65 + 8);
      v70(v66, v68);
      v71 = *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeight];
      *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeight] = v69;
      *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeightAdjustment] = v71 - v69 + *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeightAdjustment];
      v72 = sub_29DF5A018();
      v67(v66, v64, v68);
      v73 = sub_29E1CBDFC(v66, v62, v72);

      result = (v70)(v66, v68);
      *&v48[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_footerHeight] = v73;
    }

    return result;
  }

  v31 = objc_opt_self();
  v32 = (v5 + 8);
  sub_29E2BF404();
  v33 = v13;
  v34 = 0;
  v35 = (v33 + 40);
  while (1)
  {
    v36 = *(v35 - 1);
    v37 = *v35;
    MEMORY[0x29ED79740](0, v34);
    v38 = sub_29E2BCF24();
    v39 = [v31 layoutAttributesForCellWithIndexPath_];

    (*v32)(v7, v4);
    if (v29 >> 62)
    {
      v40 = sub_29E2C4484();
      if (!v40)
      {
LABEL_15:
        v44 = 0;
        MaxX = 0.0;
        goto LABEL_16;
      }
    }

    else
    {
      v40 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_15;
      }
    }

    v41 = __OFSUB__(v40, 1);
    result = v40 - 1;
    if (v41)
    {
      break;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x29ED80D70](result, v29);
    }

    else
    {
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (result >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v43 = *(v29 + 8 * result + 32);
    }

    v44 = v43;
    [v43 frame];
    MaxX = CGRectGetMaxX(v84);
LABEL_16:
    [v39 setFrame_];
    v46 = v39;
    MEMORY[0x29ED7FDC0]();
    if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v76 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29E2C3644();
    }

    ++v34;
    sub_29E2C3674();

    v29 = v83[0];
    v35 += 2;
    if (v30 == v34)
    {
      v13 = v82;

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_29DF76928()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex + 8])
  {
    [v1 contentOffset];
    v4 = v3;
    [v2 contentInset];
    v6 = v4 + v5;
    [v2 contentOffset];
    v8 = v7;
    [v2 contentInset];
    v10 = v8 + v9;
    v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes;
    swift_beginAccess();
    v12 = *&v0[v11];
    if (v12 >> 62)
    {
LABEL_23:
      v13 = sub_29E2C4484();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_29E2BF404();
    v14 = 0;
    while (1)
    {
      if (v13 == v14)
      {

        return 0;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x29ED80D70](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      [v15 frame];
      v20.x = v6;
      v20.y = v10;
      v17 = CGRectContainsPoint(v21, v20);

      if (v17)
      {
        break;
      }

      if (__OFADD__(v14++, 1))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex];
  }

  return v14;
}

void sub_29DF76AEC(double a1, double a2)
{
  v3 = v2;
  v6 = sub_29E2C48F4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v35 = v10;
    v36 = v7;
    v12 = v11;
    [v11 contentInset];
    v14 = v13;
    v16 = v15;

    v17 = v14 + a2;
    v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes;
    swift_beginAccess();
    v19 = *&v3[v18];
    v37 = v6;
    v38 = v3;
    if (v19 >> 62)
    {
LABEL_22:
      v20 = sub_29E2C4484();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_29E2BF404();
    v21 = -v20;
    v22 = 4;
    while (1)
    {
      if (v21 + v22 == 4)
      {

        return;
      }

      v23 = v22 - 4;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x29ED80D70](v22 - 4, v19);
      }

      else
      {
        if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v24 = *(v19 + 8 * v22);
      }

      v25 = v24;
      [v24 frame];
      v39.x = v16 + a1;
      v39.y = v17;
      v26 = CGRectContainsPoint(v40, v39);

      if (v26)
      {
        break;
      }

      ++v22;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_21;
      }
    }

    v27 = v38;
    swift_beginAccess();
    v28 = *&v27[v18];
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x29ED80D70](v22 - 4);
    }

    else
    {
      if (v23 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v29 = *(v28 + 8 * v22);
    }

    v30 = v29;
    swift_endAccess();
    [v30 frame];
    v31 = CGRectGetMinX(v41) - v16;
    v33 = v35;
    v32 = v36;
    v34 = v37;
    (*(v36 + 104))(v35, *MEMORY[0x29EDC9EB8], v37);
    sub_29E1CBDFC(v33, *&v27[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_dayColumnWidth], a1 - v31);

    (*(v32 + 8))(v33, v34);
  }
}

void sub_29DF76DDC(unint64_t a1)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_sectionLayoutAttributes;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5 >> 62)
  {
    v6 = sub_29E2C4484();
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 > a1)
  {
    v7 = [v2 collectionView];
    if (v7)
    {
      v1 = v7;
      [v1 contentOffset];
      swift_beginAccess();
      v8 = *&v2[v4];
      if ((v8 & 0xC000000000000001) == 0)
      {
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 8 * a1 + 32);
        goto LABEL_8;
      }

LABEL_12:
      v9 = MEMORY[0x29ED80D70](a1);
LABEL_8:
      v10 = v9;
      swift_endAccess();
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v23.origin.x = v12;
      v23.origin.y = v14;
      v23.size.width = v16;
      v23.size.height = v18;
      v19 = CGRectGetMinX(v23) - *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidth];
      [v1 contentInset];
      v21 = v20;

      *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidthAdjustment] = 0;
      [v1 setContentOffset:0 animated:{v19, -v21}];

      v22 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex];
      *v22 = 0;
      v22[8] = 1;
    }
  }
}

unint64_t sub_29DF76F98()
{
  result = qword_2A181DCB0;
  if (!qword_2A181DCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A181DCB0);
  }

  return result;
}

void sub_29DF76FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DF77038(uint64_t a1)
{
  sub_29DEA6D14(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MenstrualCyclesFeatureRegulatoryInfoTransformProvider(uint64_t a1)
{
  result = qword_2A18198A0;
  if (!qword_2A18198A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF77120()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

double sub_29DF77324()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v10[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  sub_29E2BC8F4();

  return result;
}

uint64_t sub_29DF77554()
{
  sub_29E2C2E84();

  return swift_deallocClassInstance();
}

uint64_t sub_29DF7758C(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 == 3 || a1 == 2 || (v10 = 0, a1 == 1))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v10 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_29DF777DC(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 == 3 || a1 == 2 || (v10 = 0, a1 == 1))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v10 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_29DF77A28(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 == 3 || a1 == 2 || (v10 = 0, a1 == 1))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v10 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

uint64_t type metadata accessor for ReviewOngoingPregnancyTileActionHandler(uint64_t a1)
{
  result = qword_2A18198B8;
  if (!qword_2A18198B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF77CC0(uint64_t a1)
{
  sub_29DF792B4(319, &qword_2A18198C8, type metadata accessor for OngoingPregnancyUserData, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_29DF77D88()
{
  v1 = v0;
  v114 = *v0;
  v2 = sub_29E2BE2A4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v113 = &v100[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_29E2C0514();
  v119 = *(v4 - 8);
  v120 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v107 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v108 = &v100[-v7];
  MEMORY[0x2A1C7C4A8](v8);
  v118 = &v100[-v9];
  MEMORY[0x2A1C7C4A8](v10);
  v105 = &v100[-v11];
  sub_29DF792B4(0, &qword_2A18198C8, type metadata accessor for OngoingPregnancyUserData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v117 = &v100[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v100[-v15];
  v17 = type metadata accessor for OngoingPregnancyUserData(0);
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v112 = &v100[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v20);
  v103 = &v100[-v21];
  MEMORY[0x2A1C7C4A8](v22);
  v104 = &v100[-v23];
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v100[-v25];
  MEMORY[0x2A1C7C4A8](v27);
  v106 = &v100[-v28];
  v29 = sub_29E2BF6C4();
  v30 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v110 = &v100[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v32);
  v109 = &v100[-v33];
  MEMORY[0x2A1C7C4A8](v34);
  v115 = &v100[-v35];
  MEMORY[0x2A1C7C4A8](v36);
  v38 = &v100[-v37];
  sub_29E2BF414();
  v39 = sub_29E2BF6A4();
  v40 = *(v30 + 8);
  v41 = v38;
  v116 = v29;
  v43 = v42;
  v111 = v30 + 8;
  v40(v41, v29);
  v121 = v43;
  if (v43 >> 60 == 15)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    v44 = qword_2A18198B0;
    swift_beginAccess();
    sub_29DF79054(v16, v1 + v44);
    swift_endAccess();
    if (HKShowSensitiveLogItems())
    {
      v45 = v108;
      sub_29E2C04B4();

      v46 = sub_29E2C0504();
      v47 = sub_29E2C3A14();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v124[0] = v49;
        *v48 = 136315394;
        v50 = sub_29E2C4AE4();
        v52 = sub_29DFAA104(v50, v51, v124);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        sub_29E2BF414();
        v53 = sub_29E2C3424();
        v55 = sub_29DFAA104(v53, v54, v124);

        *(v48 + 14) = v55;
        _os_log_impl(&dword_29DE74000, v46, v47, "[%s] Context contains nil user data: %s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v49, -1, -1);
        MEMORY[0x29ED82140](v48, -1, -1);
      }

      (*(v119 + 8))(v45, v120);
    }
  }

  else
  {
    v56 = v18;
    v102 = v40;
    sub_29E2BC2B4();
    swift_allocObject();
    sub_29DF1DE4C(v39, v121);
    sub_29E2BC2A4();
    sub_29DF790E8(&qword_2A1817EA0, type metadata accessor for OngoingPregnancyUserData, &protocol conformance descriptor for OngoingPregnancyUserData);
    sub_29E2BC294();
    v108 = v39;

    sub_29DF1DD38(v39, v121);
    v57 = v26;
    v58 = v106;
    sub_29DF79250(v57, v106);
    sub_29DEB6B78(v58, v16);
    (*(v18 + 56))(v16, 0, 1, v17);
    v59 = qword_2A18198B0;
    swift_beginAccess();
    sub_29DF79054(v16, v1 + v59);
    swift_endAccess();
    if (HKShowSensitiveLogItems())
    {
      v60 = v105;
      sub_29E2C04B4();
      v61 = v104;
      sub_29DEB6B78(v58, v104);
      v62 = sub_29E2C0504();
      v63 = sub_29E2C3A34();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v118;
      if (v64)
      {
        v66 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v124[0] = v107;
        *v66 = 136315394;
        v67 = sub_29E2C4AE4();
        v101 = v63;
        v68 = v61;
        v70 = sub_29DFAA104(v67, v69, v124);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        sub_29DEB6B78(v61, v103);
        v71 = sub_29E2C3464();
        v73 = v72;
        sub_29DEB6BDC(v68);
        v74 = sub_29DFAA104(v71, v73, v124);

        *(v66 + 14) = v74;
        _os_log_impl(&dword_29DE74000, v62, v101, "[%s] Updating user data to %s", v66, 0x16u);
        v75 = v107;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v75, -1, -1);
        MEMORY[0x29ED82140](v66, -1, -1);

        (*(v119 + 8))(v105, v120);
        sub_29DEB6BDC(v106);
      }

      else
      {

        sub_29DEB6BDC(v61);
        (*(v119 + 8))(v60, v120);
        sub_29DEB6BDC(v58);
      }
    }

    else
    {
      sub_29DEB6BDC(v58);
      v65 = v118;
    }

    v76 = qword_2A18198B0;
    swift_beginAccess();
    v77 = v1 + v76;
    v78 = v117;
    sub_29DF79130(v77, v117);
    if ((*(v56 + 48))(v78, 1, v17) == 1)
    {
      sub_29DF791C4(v78);
      if (HKShowSensitiveLogItems())
      {
        sub_29E2C04B4();

        v79 = sub_29E2C0504();
        v80 = sub_29E2C3A14();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v124[0] = v82;
          *v81 = 136315394;
          v83 = sub_29E2C4AE4();
          v85 = sub_29DFAA104(v83, v84, v124);

          *(v81 + 4) = v85;
          *(v81 + 12) = 2080;
          sub_29E2BF414();
          v86 = sub_29E2C3424();
          v88 = sub_29DFAA104(v86, v87, v124);

          *(v81 + 14) = v88;
          _os_log_impl(&dword_29DE74000, v79, v80, "[%s] Context contains nil user data: %s", v81, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v82, -1, -1);
          MEMORY[0x29ED82140](v81, -1, -1);

          sub_29DF1DD38(v108, v121);
        }

        else
        {
          sub_29DF1DD38(v108, v121);
        }

        (*(v119 + 8))(v65, v120);
      }

      else
      {
        sub_29DF1DD38(v108, v121);
      }
    }

    else
    {
      v89 = v112;
      sub_29DF79250(v78, v112);
      v90 = v115;
      sub_29E2BF414();
      sub_29E2BF694();
      v120 = v17;
      v91 = v116;
      v92 = v102;
      v102(v90, v116);
      v93 = sub_29E2BE8F4();

      v94 = v109;
      sub_29E2BF414();
      sub_29E2BF694();
      v92(v94, v91);
      sub_29E2BE8D4();

      v95 = v110;
      sub_29E2BF414();
      v96 = v113;
      sub_29E2BF684();
      v92(v95, v91);
      v97 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
      type metadata accessor for PregnancyOffboardingCoordinator(0);
      memset(v122, 0, sizeof(v122));
      v123 = 0;
      swift_allocObject();
      sub_29DFEA410(v93, v124, v96, v97, v122, 0, 0, 0, 0, 0, 0, 0);
      sub_29E2BF414();
      v98 = sub_29E2BF6B4();
      v92(v90, v91);
      sub_29DF792B4(0, &qword_2A1A5E388, sub_29DF60AA4, MEMORY[0x29EDBA1D0]);
      v99 = sub_29E2C2E94();
      sub_29DFE99B4(v98, v99, 1, 0, 0);

      sub_29DF1DD38(v108, v121);
      sub_29DEB6BDC(v89);
    }
  }
}

uint64_t sub_29DF78D0C(uint64_t a1, __n128 a2)
{
  v3 = sub_29E2BF6C4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  v8 = qword_2A18198B0;
  v9 = type metadata accessor for OngoingPregnancyUserData(0);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_29E2BF424();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_29DF78E6C()
{
  v0 = sub_29E2BF434();
  sub_29DF791C4(v0 + qword_2A18198B0);

  return swift_deallocClassInstance();
}

uint64_t sub_29DF79054(uint64_t a1, uint64_t a2)
{
  sub_29DF792B4(0, &qword_2A18198C8, type metadata accessor for OngoingPregnancyUserData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF790E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF79130(uint64_t a1, uint64_t a2)
{
  sub_29DF792B4(0, &qword_2A18198C8, type metadata accessor for OngoingPregnancyUserData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF791C4(uint64_t a1)
{
  sub_29DF792B4(0, &qword_2A18198C8, type metadata accessor for OngoingPregnancyUserData, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF79250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingPregnancyUserData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29DF792B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF79320()
{
  sub_29DE8EDC0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29DF7937C(uint64_t a1)
{
  v2 = (*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8) ^ 1) & 1;
  *(v1 + 32) = (*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8) ^ 1) & 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setIntermenstrualBleeding_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29DF79408()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t sub_29DF795F0(char a1)
{
  result = 0x6765725020646441;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000029;
      break;
    case 11:
      result = 0xD00000000000002DLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      return result;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_29DF797E0(char a1)
{
  result = 0x6765725020646441;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000029;
      break;
    case 11:
      result = 0xD00000000000002DLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      return result;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

void sub_29DF79B64(void *a1)
{
  v3 = v1;
  v74 = *v1;
  v5 = sub_29E2BCBB4();
  v76 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v70 = &v69 - v12;
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v16 = &v69 - v15;
  if ([a1 healthDataSource])
  {
    v73 = v2;
    sub_29DEEDD8C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    *(inited + 32) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v72 = inited + 32;
    *(inited + 40) = v18;
    ObjectType = swift_getObjectType();
    sub_29E2C04B4();
    v20 = sub_29E05D7D4(v16, ObjectType);
    v77 = v3;
    v22 = v21;
    v71 = v5;
    v23 = *(v8 + 8);
    v23(v16, v7);
    *(inited + 72) = MEMORY[0x29EDC99B0];
    *(inited + 48) = v20;
    *(inited + 56) = v22;
    *(inited + 80) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    *(inited + 88) = v24;
    sub_29E2C04B4();
    v25 = v75;
    sub_29E253478(ObjectType);
    v26 = sub_29E05DA18(v16, v25, ObjectType);
    v27 = v25;
    v28 = v77;
    (*(v76 + 8))(v27, v71);
    v76 = v7;
    v75 = (v8 + 8);
    v71 = v23;
    v23(v16, v7);
    *(inited + 120) = sub_29DE9408C(0, &qword_2A1A5E0B0, 0x29EDBA070);
    *(inited + 96) = v26;
    v29 = sub_29E1853E0(inited);
    swift_setDeallocating();
    sub_29DECF44C();
    swift_arrayDestroy();
    if (v28[7])
    {
      v30 = [swift_unknownObjectRetain() getCurrentPregnancyModel];
      if (!v30)
      {
        v47 = v70;
        sub_29E2C04B4();
        v48 = sub_29E2C0504();
        v49 = sub_29E2C3A14();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v79 = v51;
          *v50 = 136380675;
          v52 = sub_29E2C4AE4();
          v54 = sub_29DFAA104(v52, v53, &v79);

          *(v50 + 4) = v54;
          _os_log_impl(&dword_29DE74000, v48, v49, "[%{private}s] Failed to get current pregnancyModel from pregnancyProvider", v50, 0xCu);
          sub_29DE93B3C(v51);
          v55 = v51;
          v28 = v77;
          MEMORY[0x29ED82140](v55, -1, -1);
          MEMORY[0x29ED82140](v50, -1, -1);
          swift_unknownObjectRelease();

          v56 = v70;
        }

        else
        {

          swift_unknownObjectRelease();
          v56 = v47;
        }

        v71(v56, v76);
        goto LABEL_14;
      }

      v31 = v30;
      v32 = [v30 state];

      v80 = MEMORY[0x29EDC9A98];
      LOBYTE(v79) = v32 == 1;
      sub_29DEA049C(&v79, v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v29;
      sub_29E008970(v78, 0xD000000000000016, 0x800000029E2F4A50, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = MEMORY[0x29EDC9A98];
      LOBYTE(v79) = 0;
      sub_29DEA049C(&v79, v78);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v29;
      sub_29E008970(v78, 0xD000000000000016, 0x800000029E2F4A50, v43);
    }

    v29 = v81;
LABEL_14:
    v57 = sub_29DF795F0(*(v28 + 33));
    v58 = MEMORY[0x29EDC99B0];
    v80 = MEMORY[0x29EDC99B0];
    *&v79 = v57;
    *(&v79 + 1) = v59;
    sub_29DEA049C(&v79, v78);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v29;
    sub_29E008970(v78, 1701869940, 0xE400000000000000, v60);
    v61 = v81;
    LOBYTE(v79) = *(v28 + 48);
    v62 = sub_29E2C3424();
    v80 = v58;
    *&v79 = v62;
    *(&v79 + 1) = v63;
    sub_29DEA049C(&v79, v78);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v61;
    sub_29E008970(v78, 0x6E6F69746361, 0xE600000000000000, v64);
    v65 = v81;
    LOBYTE(v79) = *(v28 + 34);
    v66 = sub_29E2C3424();
    v80 = v58;
    *&v79 = v66;
    *(&v79 + 1) = v67;
    sub_29DEA049C(&v79, v78);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v65;
    sub_29E008970(v78, 0x747865746E6F63, 0xE700000000000000, v68);
    swift_unknownObjectRelease();
    return;
  }

  sub_29E2C04B4();
  v34 = sub_29E2C0504();
  v35 = sub_29E2C3A24();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v77 = v3;
    v37 = v36;
    v38 = swift_slowAlloc();
    *&v79 = v38;
    *v37 = 136446210;
    v39 = sub_29E2C4AE4();
    v41 = sub_29DFAA104(v39, v40, &v79);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_29DE74000, v34, v35, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v37, 0xCu);
    sub_29DE93B3C(v38);
    MEMORY[0x29ED82140](v38, -1, -1);
    v42 = v37;
    v3 = v77;
    MEMORY[0x29ED82140](v42, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v45 = v3[2];
  v44 = v3[3];
  sub_29DED16A0();
  swift_allocError();
  *v46 = v45;
  v46[1] = v44;
  swift_willThrow();
  sub_29E2BF404();
}

uint64_t sub_29DF7A470()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29DF7A59C()
{
  sub_29E2C4A04();
  sub_29E2C34B4();
  return sub_29E2C4A54();
}

uint64_t sub_29DF7A620(uint64_t a1)
{
  sub_29E2C4A04();
  sub_29E2C34B4();
  return sub_29E2C4A54();
}

void sub_29DF7A67C(BOOL *a2@<X8>)
{
  v3 = sub_29E2C47E4();

  *a2 = v3 != 0;
}

uint64_t sub_29DF7A6F8(__int16 a1, uint64_t a2)
{
  v2 = a1;
  v3 = MEMORY[0x29EDCA198];
  v13 = MEMORY[0x29EDCA198];
  sub_29E2BDEA4();
  sub_29E2BDE94();
  v4 = sub_29E2BDE84();

  if (v4)
  {
    if (v2 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_29E2C3694();
    }

    sub_29DF31E84(v5, 0x4170696B53646964, 0xED00006E6F697463);
    v6 = sub_29E2C33A4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_29E00868C(v6, 7890291, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v3 = v13;
  }

  sub_29E2C3424();
  v8 = sub_29E2C33A4();

  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_29E00868C(v8, 0x6E616E65766F7270, 0xEA00000000006563, v9);
  sub_29E2C3424();
  v10 = sub_29E2C33A4();

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_29E00868C(v10, 1885697139, 0xE400000000000000, v11);
  return v3;
}

uint64_t sub_29DF7AA0C(void *a1)
{
  v39 = a1;
  v1 = sub_29E2BCBB4();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C0514();
  v35 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29DEF72D0();
  v34 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v8 = v7;
  ObjectType = swift_getObjectType();
  sub_29E2C04B4();
  v10 = sub_29E05D7D4(v6, ObjectType);
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  v43 = MEMORY[0x29EDC99B0];
  *&v42 = v10;
  *(&v42 + 1) = v12;
  sub_29DEA049C(&v42, v41);
  v14 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v14;
  sub_29E008970(v41, v34, v8, isUniquelyReferenced_nonNull_native);

  v44 = v40;
  v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v18 = v17;
  sub_29E2C04B4();
  v19 = v36;
  sub_29E253478(ObjectType);
  v20 = sub_29E05DA18(v6, v19, ObjectType);
  (*(v37 + 8))(v19, v38);
  v13(v6, v35);
  v43 = sub_29DE9408C(0, &qword_2A1A5E0B0, 0x29EDBA070);
  *&v42 = v20;
  sub_29DEA049C(&v42, v41);
  v21 = v44;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v21;
  sub_29E008970(v41, v16, v18, v22);

  v23 = v40;
  v44 = v40;
  v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v26 = v25;
  v27 = [v39 environmentDataSource];
  v28 = [v27 activePairedDeviceProductType];

  if (v28)
  {
    v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v31 = v30;

    v43 = MEMORY[0x29EDC99B0];
    *&v42 = v29;
    *(&v42 + 1) = v31;
    sub_29DEA049C(&v42, v41);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v23;
    sub_29E008970(v41, v24, v26, v32);

    return v40;
  }

  else
  {
    sub_29DF7B37C(v24, v26, &v42);

    sub_29DF7B6B8(&v42, sub_29DEC0D10);
    return v44;
  }
}

uint64_t sub_29DF7AE80()
{
  swift_unknownObjectRelease();
  sub_29DF7B6B8(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27PregnancyFlowAnalyticsEvent_metric, type metadata accessor for PregnancyFlowMetric);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PregnancyFlowAnalyticsEvent(uint64_t a1)
{
  result = qword_2A18198E8;
  if (!qword_2A18198E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF7AF54(uint64_t a1)
{
  result = type metadata accessor for PregnancyFlowMetric(319);
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

uint64_t getEnumTagSinglePayload for RoomInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoomInteractionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingStepCompletedMetric(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingStepCompletedMetric(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_29DF7B220()
{
  result = qword_2A18198F8;
  if (!qword_2A18198F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18198F8);
  }

  return result;
}

unint64_t sub_29DF7B278()
{
  result = qword_2A1819900;
  if (!qword_2A1819900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819900);
  }

  return result;
}

unint64_t sub_29DF7B2D0()
{
  result = qword_2A1819908;
  if (!qword_2A1819908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819908);
  }

  return result;
}

unint64_t sub_29DF7B328()
{
  result = qword_2A1819910;
  if (!qword_2A1819910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819910);
  }

  return result;
}

double sub_29DF7B37C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_29DECF000(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E00A370();
      v10 = v12;
    }

    sub_29DEA049C((*(v10 + 56) + 32 * v8), a3);
    sub_29DF33744(v8, v10);
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

uint64_t sub_29DF7B420()
{
  v1 = v0;
  v2 = MEMORY[0x29EDCA198];
  v15 = MEMORY[0x29EDCA198];
  v3 = *(v1 + 32);
  if (v3 >= 8)
  {
    sub_29DF7B37C(0x6F5368636E75616CLL, 0xEC00000065637275, &v13);
    sub_29DF7B6B8(&v13, sub_29DEC0D10);
    v6 = *(v1 + 40);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = sub_29E2C33A4();

    v14 = sub_29DE9408C(0, &qword_2A1A619D0, 0x29EDBA0F8);
    *&v13 = v4;
    sub_29DEA049C(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_29E008970(v12, 0x6F5368636E75616CLL, 0xEC00000065637275, isUniquelyReferenced_nonNull_native);
    v15 = v2;
    v6 = *(v1 + 40);
    if (v6)
    {
LABEL_3:
      v7 = v6;
      v8 = [v7 internalCycleFactorsOverrideEnabled];
      v14 = MEMORY[0x29EDC9A98];
      LOBYTE(v13) = v8;
      sub_29DEA049C(&v13, v12);
      v9 = v15;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_29E008970(v12, 0xD000000000000021, 0x800000029E2F4A70, v10);

      return v9;
    }
  }

  return v15;
}

uint64_t sub_29DF7B6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29DF7B76C()
{
  result = qword_2A1819938;
  if (!qword_2A1819938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819938);
  }

  return result;
}

void (*sub_29DF7B7C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_29DF45C10(v1 + v5, v4);
  return sub_29DF7B85C;
}

void sub_29DF7B85C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_29DF45C10(*a1, v2 + 40);
    sub_29DF45C10(v3 + v4, v2 + 80);
    swift_beginAccess();
    sub_29DF45B18(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29DF7CC48(v2 + 80);
    v5 = MEMORY[0x29EDC2808];
    sub_29DF7F7B8(v2 + 80, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808], sub_29DEF964C);
    v6 = v2 + 40;
    v7 = v5;
  }

  else
  {
    sub_29DF45C10(v3 + v4, v2 + 40);
    swift_beginAccess();
    sub_29DF45B18(v2, v3 + v4);
    swift_endAccess();
    sub_29DF7CC48(v2 + 40);
    v5 = MEMORY[0x29EDC2808];
    v6 = v2 + 40;
    v7 = MEMORY[0x29EDC2808];
  }

  sub_29DF7F7B8(v6, &qword_2A1A61B90, &qword_2A1A61B98, v7, sub_29DEF964C);
  sub_29DF7F7B8(v2, &qword_2A1A61B90, &qword_2A1A61B98, v5, sub_29DEF964C);

  free(v2);
}

void sub_29DF7B9E8()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProjectionHighlightTileViewController();
  v36.receiver = v0;
  v36.super_class = v6;
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    sub_29DF7BF30();
    v10 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
    v11 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
    if (v11)
    {
      v13 = *(v10 + 1);
      v12 = *(v10 + 2);
      v14 = v11;
      v15 = v12;
      sub_29E2C04B4();
      v16 = v1;
      v17 = sub_29E2C0504();
      v18 = sub_29E2C3A34();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v32 = v13;
        v13 = v19;
        v20 = swift_slowAlloc();
        v31 = v15;
        v21 = v20;
        v35 = v20;
        *v13 = 136446210;
        ObjectType = swift_getObjectType();
        sub_29DF7F818();
        v22 = sub_29E2C3424();
        v30 = v2;
        v24 = sub_29DFAA104(v22, v23, &v35);
        v33 = v14;
        v25 = v3;
        v26 = v24;

        *(v13 + 4) = v26;
        _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Performing deferred calendar view render on viewDidLoad", v13, 0xCu);
        sub_29DE93B3C(v21);
        v27 = v21;
        v15 = v31;
        MEMORY[0x29ED82140](v27, -1, -1);
        v28 = v13;
        LOBYTE(v13) = v32;
        MEMORY[0x29ED82140](v28, -1, -1);

        (*(v25 + 8))(v5, v30);
        v14 = v33;
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      sub_29DF7C800(v14, v13 & 1, v15);
      sub_29DF7FE1C(v14, v13 & 1);
    }

    v29 = [objc_opt_self() defaultCenter];
    [v29 addObserver:v1 selector:sel_todayDidChange name:*MEMORY[0x29EDB8CA8] object:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_29DF7BD60()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x29EDB8CA8] object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ProjectionHighlightTileViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29DF7BF30()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel;
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_30;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = *&v1[v3];
  if (!v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v6 setNumberOfLines_];
  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 labelColor];
  [v9 setTextColor_];

  v11 = *&v1[v3];
  if (!v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v12 = v11;
  v13 = sub_29E2C3FD4();
  [v12 setFont_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!*&v1[v3])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = v14;
  [v14 addSubview_];

  v16 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_separatorView;
  v18 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_separatorView];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_separatorView] = v16;
  v19 = v16;

  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  v20 = *&v1[v17];
  if (!v20)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  v22 = [v8 separatorColor];
  [v21 setBackgroundColor_];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!*&v1[v17])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v24 = v23;
  [v23 addSubview_];

  type metadata accessor for UILayoutPriority(0);
  sub_29DF80BB4(&qword_2A1A61A28, 255, type metadata accessor for UILayoutPriority, MEMORY[0x29EDC7890]);
  sub_29E2C0534();
  sub_29E2C0524();
  v26 = *&v1[v3];
  if (!v26)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  LODWORD(v25) = v79;
  [v26 setContentHuggingPriority:1 forAxis:v25];
  v28 = *&v1[v3];
  if (!v28)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v27) = v79;
  [v28 setContentCompressionResistancePriority:1 forAxis:v27];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v31 = v29;
  LODWORD(v30) = v79;
  [v29 setContentHuggingPriority:1 forAxis:v30];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v34 = v32;
  LODWORD(v33) = v79;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  sub_29DF80C94(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2D48B0;
  v36 = *&v1[v17];
  if (!v36)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v37 = [v36 topAnchor];
  v38 = *&v1[v3];
  if (!v38)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = [v38 bottomAnchor];
  v40 = [v37 constraintEqualToAnchor:v39 constant:10.0];

  *(v35 + 32) = v40;
  v41 = *&v1[v17];
  if (!v41)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v42 = [v41 leadingAnchor];
  v43 = [v1 view];
  if (!v43)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 constraintEqualToAnchor:v45 constant:16.0];
  *(v35 + 40) = v46;
  v47 = *&v1[v17];
  if (!v47)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v48 = [v47 trailingAnchor];
  v49 = [v1 view];
  if (!v49)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v50 = v49;
  v51 = [v49 trailingAnchor];

  v52 = [v48 constraintEqualToAnchor:v51 constant:-16.0];
  *(v35 + 48) = v52;
  v53 = *&v1[v17];
  if (!v53)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v54 = [v53 heightAnchor];
  HKUIOnePixel();
  v55 = [v54 constraintEqualToConstant_];

  *(v35 + 56) = v55;
  v56 = *&v1[v3];
  if (!v56)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v57 = [v56 topAnchor];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v59 = v58;
  v60 = [v58 topAnchor];

  v61 = [v57 constraintEqualToAnchor_];
  *(v35 + 64) = v61;
  v62 = *&v1[v3];
  if (!v62)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v63 = [v62 leadingAnchor];
  v64 = [v1 view];
  if (!v64)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v65 = v64;
  v66 = [v64 leadingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66 constant:16.0];
  *(v35 + 72) = v67;
  v68 = *&v1[v3];
  if (!v68)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v69 = [v68 trailingAnchor];
  v70 = [v1 view];
  if (v70)
  {
    v71 = v70;
    v72 = objc_opt_self();
    v73 = [v71 trailingAnchor];

    v74 = [v69 constraintEqualToAnchor:v73 constant:-16.0];
    *(v35 + 80) = v74;
    sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
    v75 = sub_29E2C3604();

    [v72 activateConstraints_];

    sub_29DF80B50(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_29E2CAB20;
    v77 = sub_29E2C0B54();
    v78 = MEMORY[0x29EDC7870];
    *(v76 + 32) = v77;
    *(v76 + 40) = v78;
    sub_29E2C3C64();
    swift_unknownObjectRelease();

    return;
  }

LABEL_55:
  __break(1u);
}

void sub_29DF7C800(void *a1, char a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(v3 + v8, v40);
  v9 = v41;
  sub_29DF7F7B8(v40, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808], sub_29DEF964C);
  if (!v9)
  {
    v37 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel);
    if (v37)
    {
      v31 = v37;
      sub_29DFAC954(a1, a2 & 1, a3);
      if (v38)
      {
        v36 = sub_29E2C33A4();
      }

      else
      {
        v36 = 0;
      }

      [v31 setText_];
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  sub_29DF45C10(v4 + v8, v40);
  v10 = v41;
  if (!v41)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = sub_29DE966D4(v40, v41);
  v12 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, v13);
  v16 = sub_29E2BF484();
  (*(v12 + 8))(v15, v10);
  v17 = [v16 profileIdentifier];

  sub_29DE93B3C(v40);
  if ([v17 type] != 2)
  {
    goto LABEL_9;
  }

  sub_29DF45C10(v4 + v8, v40);
  v18 = v41;
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = sub_29DE966D4(v40, v41);
  v20 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v39[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v23, v21);
  v24 = sub_29E2BF484();
  (*(v20 + 8))(v23, v18);
  v25 = [objc_allocWithZone(MEMORY[0x29EDBACE8]) initWithHealthStore_];

  sub_29DE93B3C(v40);
  v26 = [v25 synchronouslyFetchFirstName];

  if (!v26)
  {
LABEL_9:
    v34 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel);
    if (v34)
    {
      v31 = v34;
      sub_29DFAC954(a1, a2 & 1, a3);
      if (v35)
      {
LABEL_11:
        v36 = sub_29E2C33A4();

LABEL_16:
        [v31 setText_];

LABEL_19:
        return;
      }

LABEL_15:
      v36 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v27 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v29 = v28;

  v30 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel);
  if (v30)
  {
    v31 = v30;
    sub_29DFACBEC(v27, v29, a1, a2 & 1, a3);
    v33 = v32;

    if (v33)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_24:
  __break(1u);
}

void sub_29DF7CC48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v99 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v102 = &v99 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v103 = &v99 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v101 = &v99 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v99 - v15;
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(&v2[v17], v108);
  v18 = v109;
  if (!v109)
  {
    __break(1u);
    return;
  }

  v19 = sub_29DE966D4(v108, v109);
  v20 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v104 = sub_29E2BF4C4();
  v25 = v24;
  (*(v20 + 8))(v23, v18);
  sub_29DE93B3C(v108);
  if (v25 >> 60 == 15)
  {
    v26 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
    v27 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
    v28 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel + 8];
    v29 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel + 16];
    *(v26 + 1) = 0;
    *(v26 + 2) = 0;
    *v26 = 0;
    sub_29DF80C08(v27, v28, v29);
    sub_29E2C04B4();
    v30 = v2;
    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A14();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v108[0] = v34;
      *v33 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DF7F818();
      v35 = sub_29E2C3424();
      v37 = sub_29DFAA104(v35, v36, v108);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_29DE74000, v31, v32, "[%{public}s] context.userData is missing", v33, 0xCu);
      sub_29DE93B3C(v34);
      MEMORY[0x29ED82140](v34, -1, -1);
      MEMORY[0x29ED82140](v33, -1, -1);
    }

    (v105[1])(v7, v106);
    return;
  }

  sub_29DF45C10(a1, v108);
  v100 = v25;
  if (v109)
  {
    sub_29DE966D4(v108, v109);
    v38 = sub_29E2BF4C4();
    v40 = v39;
    sub_29DE93B3C(v108);
    v42 = v104;
    v41 = v105;
    if (v40 >> 60 != 15)
    {
      if (sub_29DFA00E4(v104, v25, v38, v40))
      {
        sub_29E2C04B4();
        v43 = v2;
        v44 = sub_29E2C0504();
        v45 = sub_29E2C3A34();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = v41;
          v48 = swift_slowAlloc();
          v108[0] = v48;
          *v46 = 136446210;
          ObjectType = swift_getObjectType();
          sub_29DF7F818();
          v49 = sub_29E2C3424();
          v51 = sub_29DFAA104(v49, v50, v108);

          *(v46 + 4) = v51;
          _os_log_impl(&dword_29DE74000, v44, v45, "[%{public}s] Ignoring identical userData from context update", v46, 0xCu);
          sub_29DE93B3C(v48);
          MEMORY[0x29ED82140](v48, -1, -1);
          MEMORY[0x29ED82140](v46, -1, -1);
          sub_29DF1DD38(v38, v40);
          sub_29DF1DD38(v104, v100);

          (v47[1])(v16, v106);
        }

        else
        {
          sub_29DF1DD38(v38, v40);
          sub_29DF1DD38(v42, v25);

          (v41[1])(v16, v106);
        }

        return;
      }

      sub_29DF1DD38(v38, v40);
    }
  }

  else
  {
    sub_29DF7F7B8(v108, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808], sub_29DEF964C);
    v42 = v104;
    v41 = v105;
  }

  sub_29DE9408C(0, &qword_2A1A61A18, 0x29EDBA000);
  sub_29DF80B50(0, &qword_2A1A619A0, sub_29DF80C48, MEMORY[0x29EDC9E90]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_29E2CAB20;
  *(v52 + 32) = type metadata accessor for ProjectionHighlightTileViewModelContextData();
  sub_29E2C3CC4();

  if (!v109)
  {
    sub_29DF7F7B8(v108, &qword_2A1819920, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29DF80C94);
    v54 = v106;
    v55 = v101;
LABEL_22:
    v91 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
    v92 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
    v93 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel + 8];
    v94 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel + 16];
    *(v91 + 1) = 0;
    *(v91 + 2) = 0;
    *v91 = 0;
    sub_29DF80C08(v92, v93, v94);
    sub_29E2C04B4();
    v95 = v2;
    v83 = sub_29E2C0504();
    v84 = sub_29E2C3A14();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v108[0] = v86;
      *v85 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DF7F818();
      v96 = sub_29E2C3424();
      v98 = sub_29DFAA104(v96, v97, v108);

      *(v85 + 4) = v98;
      v90 = "[%{public}s] context.userData did not contain projection context data";
      goto LABEL_24;
    }

LABEL_25:
    sub_29DF1DD38(v42, v100);

    (v41[1])(v55, v54);
    return;
  }

  v53 = swift_dynamicCast();
  v54 = v106;
  v55 = v101;
  if ((v53 & 1) == 0)
  {
    goto LABEL_22;
  }

  v56 = ObjectType;
  v57 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v58 = v56[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projectionKind];
  v59 = *&v56[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projection];

  v60 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  v61 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  v62 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel + 8];
  v63 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel + 16];
  *v60 = v59;
  *(v60 + 1) = v58;
  *(v60 + 2) = v57;
  sub_29DF80C08(v61, v62, v63);
  v64 = [v2 isViewLoaded];
  v55 = v102;
  v65 = v103;
  if (!v64)
  {
    sub_29E2C04B4();
    v82 = v2;
    v83 = sub_29E2C0504();
    v84 = sub_29E2C3A34();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v108[0] = v86;
      *v85 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DF7F818();
      v87 = sub_29E2C3424();
      v89 = sub_29DFAA104(v87, v88, v108);

      *(v85 + 4) = v89;
      v90 = "[%{public}s] Deferring calendar view render until view is loaded";
LABEL_24:
      _os_log_impl(&dword_29DE74000, v83, v84, v90, v85, 0xCu);
      sub_29DE93B3C(v86);
      MEMORY[0x29ED82140](v86, -1, -1);
      MEMORY[0x29ED82140](v85, -1, -1);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v66 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  v67 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  if (v67)
  {
    v69 = *(v66 + 1);
    v68 = *(v66 + 2);
    v70 = v67;
    v71 = v68;
    sub_29E2C04B4();
    v72 = v2;
    v73 = sub_29E2C0504();
    v74 = sub_29E2C3A34();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = v41;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v105 = v69;
      v69 = v77;
      v108[0] = v77;
      *v76 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DF7F818();
      v78 = sub_29E2C3424();
      v80 = sub_29DFAA104(v78, v79, v108);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_29DE74000, v73, v74, "[%{public}s] Updating calendar view with new view model", v76, 0xCu);
      sub_29DE93B3C(v69);
      v81 = v69;
      LOBYTE(v69) = v105;
      MEMORY[0x29ED82140](v81, -1, -1);
      MEMORY[0x29ED82140](v76, -1, -1);

      (v75[1])(v103, v106);
      v42 = v104;
    }

    else
    {

      (v41[1])(v65, v54);
    }

    sub_29DF7C800(v70, v69 & 1, v71);
    sub_29DF7FE1C(v70, v69 & 1);
    sub_29DF1DD38(v42, v100);
  }

  else
  {
    sub_29DF1DD38(v42, v100);
  }
}

void sub_29DF7D8FC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for LearnMoreViewController();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem] = 0;
    v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_presentedModally] = 1;
    v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreType] = a2;
    v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreSource] = 3;
    v9.receiver = v6;
    v9.super_class = v5;
    v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
    sub_29DF91550();
    v8 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v8 setModalPresentationStyle_];
    [v4 presentViewController:v8 animated:1 completion:0];
  }
}

uint64_t sub_29DF7DA24()
{
  v1 = sub_29E2C2B34();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C2B54();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v9 = sub_29E2C3CF4();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_29DF80B30;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B58E0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF80BB4(&qword_2A1A626F0, 255, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29DF80B50(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_29DF7DD10(char *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  v7 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  if (v7)
  {
    v9 = *(v6 + 1);
    v8 = *(v6 + 2);
    v10 = v7;
    v11 = v8;
    sub_29E2C04B4();
    v12 = a1;
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A34();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = v10;
      v16 = v15;
      v17 = swift_slowAlloc();
      v27 = v9;
      v9 = v17;
      v30 = v17;
      *v16 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DF7F818();
      v18 = sub_29E2C3424();
      v20 = sub_29DFAA104(v18, v19, &v30);
      v26 = v2;
      v21 = v11;
      v22 = v20;

      *(v16 + 4) = v22;
      v11 = v21;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Updating calendar view since today changed", v16, 0xCu);
      sub_29DE93B3C(v9);
      v23 = v9;
      LOBYTE(v9) = v27;
      MEMORY[0x29ED82140](v23, -1, -1);
      v24 = v16;
      v10 = v28;
      MEMORY[0x29ED82140](v24, -1, -1);

      (*(v3 + 8))(v5, v26);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_29DF7FE1C(v10, v9 & 1);
  }
}

void sub_29DF7DF90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel);
    if (v3)
    {
      v4 = v3;
      sub_29E2BF404();
      MEMORY[0x29ED7FCC0](0x656C7469542ELL, 0xE600000000000000);
      v5 = sub_29E2C33A4();

      [v4 setAccessibilityIdentifier_];

      v6 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_containerView);
      if (v6)
      {
        v7 = v6;
        sub_29E2C4584();
        sub_29E2BF404();

        MEMORY[0x29ED7FCC0](0x696C61757369562ELL, 0xEE006E6F6974617ALL);
        v8 = sub_29E2C33A4();

        [v7 setAccessibilityIdentifier_];

        v9 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer);
        sub_29E2BF404();
        v10 = v9;
        MEMORY[0x29ED7FCC0](0x7265746F6F462ELL, 0xE700000000000000);
        v14 = sub_29E2C33A4();

        [v10 setAccessibilityIdentifier_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel);
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v11 setAccessibilityIdentifier_];
  v12 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_containerView);
  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v12 setAccessibilityIdentifier_];
  v13 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer);

  [v13 setAccessibilityIdentifier_];
}

id sub_29DF7E1EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_containerView] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_separatorView] = 0;
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v8 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  if (a2)
  {
    v9 = sub_29E2C33A4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ProjectionHighlightTileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29DF7E354(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_viewModel];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_containerView] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_separatorView] = 0;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v5 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context];
  v6 = type metadata accessor for ProjectionHighlightTileViewController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_29DF7E47C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  return sub_29DF45C10(v1 + v3, a1);
}

uint64_t sub_29DF7E4D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(v1 + v3, v6);
  swift_beginAccess();
  sub_29DF45B18(a1, v1 + v3);
  swift_endAccess();
  sub_29DF7CC48(v6);
  v4 = MEMORY[0x29EDC2808];
  sub_29DF7F7B8(a1, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808], sub_29DEF964C);
  return sub_29DF7F7B8(v6, &qword_2A1A61B90, &qword_2A1A61B98, v4, sub_29DEF964C);
}

void (*sub_29DF7E5C0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29DF7B7C4(v2);
  return sub_29DF61DA4;
}

uint64_t sub_29DF7E654()
{
  v1 = sub_29E2BE2A4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v0 + v5, v19);
  v7 = v20;
  if (v20)
  {
    v8 = sub_29DE966D4(v19, v20);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x2A1C7C4A8](v8);
    v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    sub_29E2BF494();
    (*(v9 + 8))(v12, v7);
    v13 = (*(v2 + 88))(v4, v1);
    if (v13 != *MEMORY[0x29EDC1D20] && v13 != *MEMORY[0x29EDC1D18] && v13 != *MEMORY[0x29EDC1D68])
    {
      if (v13 == *MEMORY[0x29EDC1D80] || v13 == *MEMORY[0x29EDC1D60])
      {
        v16 = 1;
        goto LABEL_17;
      }

      v16 = 0;
      if (v13 == *MEMORY[0x29EDC1D50] || v13 == *MEMORY[0x29EDC1D30] || v13 == *MEMORY[0x29EDC1D70] || v13 == *MEMORY[0x29EDC1D40] || v13 == *MEMORY[0x29EDC1D28] || v13 == *MEMORY[0x29EDC1D78] || v13 == *MEMORY[0x29EDC1D48] || v13 == *MEMORY[0x29EDC1D38] || v13 == *MEMORY[0x29EDC1D88] || v13 == *MEMORY[0x29EDC1D58])
      {
        goto LABEL_17;
      }

      (*(v2 + 8))(v4, v1);
    }

    v16 = 0;
LABEL_17:
    sub_29DE93B3C(v19);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_29DF7EA28()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v0 + v1, v15);
  if (v16)
  {
    v3 = objc_opt_self();
    v4 = v16;
    v5 = sub_29DE966D4(v15, v16);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x2A1C7C4A8](v5);
    v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v9, v7);
    v10 = sub_29E2BF484();
    (*(v6 + 8))(v9, v4);
    sub_29DE93B3C(v15);
    v11 = [v3 sharedInstanceForHealthStore_];

    if (v11)
    {
      sub_29DE9408C(0, &qword_2A1A61D70, 0x29EDBAA68);
      v12 = [swift_getObjCClassFromMetadata() menstrualFlowType];
      v13 = [v11 displayTypeForObjectType_];

      v11 = [v13 listIcon];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29DF7EC1C()
{
  v0 = [objc_opt_self() systemIndigoColor];

  return v0;
}

uint64_t sub_29DF7EC5C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v1 + v2, v12);
  v4 = v13;
  if (v13)
  {
    v5 = sub_29DE966D4(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x2A1C7C4A8](v5);
    v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v9, v7);
    v10 = sub_29E2BF484();
    (*(v6 + 8))(v9, v4);
    sub_29DE93B3C(v12);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DF7EDA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60E48](a1, WitnessTable);
}

uint64_t sub_29DF7EE28(uint64_t a1, void *a2)
{
  v60 = a1;
  v61 = a2;
  v3 = sub_29E2BE024();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v65 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BF344();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0514();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BE2A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v56 - v14;
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  v64 = v2;
  result = sub_29DF45C10(v2 + v16, v70);
  v18 = v71;
  if (!v71)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = sub_29DE966D4(v70, v71);
  v20 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  sub_29E2BF494();
  (*(v20 + 8))(v23, v18);
  v24 = (*(v11 + 88))(v15, v10);
  if (v24 != *MEMORY[0x29EDC1D20] && v24 != *MEMORY[0x29EDC1D18] && v24 != *MEMORY[0x29EDC1D68])
  {
    if (v24 == *MEMORY[0x29EDC1D80] || v24 == *MEMORY[0x29EDC1D60])
    {
      return sub_29DE93B3C(v70);
    }

    if (v24 != *MEMORY[0x29EDC1D50] && v24 != *MEMORY[0x29EDC1D30] && v24 != *MEMORY[0x29EDC1D70] && v24 != *MEMORY[0x29EDC1D40] && v24 != *MEMORY[0x29EDC1D28] && v24 != *MEMORY[0x29EDC1D78] && v24 != *MEMORY[0x29EDC1D48] && v24 != *MEMORY[0x29EDC1D38] && v24 != *MEMORY[0x29EDC1D88] && v24 != *MEMORY[0x29EDC1D58])
    {
      (*(v11 + 8))(v15, v10);
    }
  }

  v56 = v11;
  sub_29DE93B3C(v70);
  sub_29E2C04B4();
  v25 = v64;
  v26 = v64;
  v27 = sub_29E2C0504();
  v28 = sub_29E2C3A34();

  v29 = os_log_type_enabled(v27, v28);
  v57 = v10;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v70[0] = v31;
    *v30 = 136446210;
    *&v68[0] = swift_getObjectType();
    sub_29DF7F818();
    v32 = sub_29E2C3424();
    v34 = sub_29DFAA104(v32, v33, v70);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_29DE74000, v27, v28, "[%{public}s] Showing menstrual cycles room from header view tap", v30, 0xCu);
    sub_29DE93B3C(v31);
    MEMORY[0x29ED82140](v31, -1, -1);
    MEMORY[0x29ED82140](v30, -1, -1);
  }

  (*(v62 + 8))(v9, v63);
  v35 = v65;
  result = sub_29DF45C10(v25 + v16, v70);
  v36 = v71;
  v37 = v66;
  if (!v71)
  {
    goto LABEL_25;
  }

  v38 = sub_29DE966D4(v70, v71);
  v39 = *(v36 - 8);
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v42 = &v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v42, v40);
  v43 = sub_29E2BF484();
  (*(v39 + 8))(v42, v36);
  v44 = v59;
  v45 = v61;
  sub_29E0DA85C(v61, v43);

  sub_29DE93B3C(v70);
  v46 = objc_allocWithZone(type metadata accessor for MenstrualCyclesRoomViewController(0));
  v47 = sub_29E0A6D80(v44);
  v47[qword_2A1840F60] = 0;
  [v45 showViewController:v47 sender:v60];
  (*(v37 + 104))(v35, *MEMORY[0x29EDC1BA8], v67);
  result = sub_29DF45C10(v25 + v16, v70);
  v48 = v71;
  if (v71)
  {
    v49 = v35;
    sub_29E2BE044();
    v50 = sub_29DE966D4(v70, v48);
    v65 = &v56;
    v51 = *(v48 - 8);
    v52 = MEMORY[0x2A1C7C4A8](v50);
    v54 = &v56 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v54, v52);
    v55 = v58;
    sub_29E2BF494();
    (*(v51 + 8))(v54, v48);
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    sub_29E2BE034();

    sub_29DF7F7B8(v68, &unk_2A1819970, &unk_2A181A6C0, MEMORY[0x29EDC3A40], sub_29DEF964C);
    (*(v56 + 8))(v55, v57);
    (*(v37 + 8))(v49, v67);
    return sub_29DE93B3C(v70);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_29DF7F7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_29DF7F818()
{
  result = qword_2A1A61A50;
  if (!qword_2A1A61A50)
  {
    type metadata accessor for ProjectionHighlightTileViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A61A50);
  }

  return result;
}

void sub_29DF7F85C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_titleLabel);
  if (v1)
  {
    sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
    v2 = v1;
    v3 = sub_29E2C3FD4();
    [v2 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id sub_29DF7F91C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v11 = sub_29E2C3384();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v16 = MEMORY[0x2A1C7C4A8](v15).n128_u64[0];
  v18 = &v38[-v17];
  if ((a2 & 1) != 0 && [a1 predictionPrimarySource] == 3)
  {
    type metadata accessor for LearnMoreFooterTextView();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_29E2C3314();
    (*(v12 + 16))(v14, v18, v11);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v20 = qword_2A1A67F80;
    sub_29E2BCC74();
    v21 = sub_29E2C3414();
    v23 = v22;
    (*(v12 + 8))(v18, v11);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = 2;

    sub_29DEBE1CC(a3, a4, v21, v23, sub_29DF80BFC, v25);

    v26 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer);
    *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer) = v19;
    v27 = v19;
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v28 setNumberOfLines_];
    v29 = sub_29E2C33A4();
    [v28 setText_];

    v30 = [objc_opt_self() preferredFontForTextStyle_];
    [v28 setFont_];

    [v28 setAdjustsFontForContentSizeCategory_];
    v31 = [objc_opt_self() secondaryLabelColor];
    [v28 setTextColor_];

    v26 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer);
    *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer) = v28;
    v27 = v28;
  }

  v32 = v27;

  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  result = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_containerView);
  if (result)
  {
    v34 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer;
    [result addSubview_];
    type metadata accessor for UILayoutPriority(0);
    v39 = 1065353216;
    v40 = 1148846080;
    sub_29DF80BB4(&qword_2A1A61A28, 255, type metadata accessor for UILayoutPriority, MEMORY[0x29EDC7890]);
    sub_29E2C0534();
    v35 = v41;
    v39 = 1065353216;
    v40 = 1132068864;
    sub_29E2C0524();
    LODWORD(v36) = v41;
    [*(v5 + v34) setContentHuggingPriority:1 forAxis:v36];
    LODWORD(v37) = v35;
    return [*(v5 + v34) setContentCompressionResistancePriority:1 forAxis:v37];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29DF7FE1C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_29E2C01E4();
  *&v7 = MEMORY[0x2A1C7C4A8](v6 - 8).n128_u64[0];
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_containerView;
  [*&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_containerView] removeFromSuperview];
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v12 = *&v3[v10];
  *&v3[v10] = v11;

  v13 = a1;
  sub_29E07D890(v13, a2 & 1, v9);
  v14 = objc_allocWithZone(sub_29E2C01B4());
  v15 = sub_29E2C01A4();
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *&v3[v10];
  if (!v16)
  {
    __break(1u);
    goto LABEL_34;
  }

  v127 = v15;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(&v3[v17], v131);
  v18 = v132;
  if (!v132)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = sub_29DE966D4(v131, v132);
  v20 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = sub_29E2BF484();
  (*(v20 + 8))(v23, v18);
  v25 = [objc_allocWithZone(MEMORY[0x29EDBACE8]) initWithHealthStore_];

  sub_29DE93B3C(v131);
  v26 = [v25 synchronouslyFetchFirstName];

  if (v26)
  {
    v27 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = v127;
  v31 = sub_29DFAEBAC(v27, v29, v13, a2 & 1);
  v33 = v32;

  if (v33)
  {
    v34 = a2 & 1;
    v35 = MEMORY[0x29EDCA170];
    sub_29DF7F91C(v13, v34, v31, v33);
    sub_29DF80C94(0, &qword_2A1A619B0, v35 + 8, MEMORY[0x29EDC9E90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_29E2D48B0;
    v37 = [v30 topAnchor];
    v38 = *&v3[v10];
    if (!v38)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v39 = [v38 topAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 constant:12.0];

    *(v36 + 32) = v40;
    v41 = [v30 leadingAnchor];
    v42 = *&v3[v10];
    if (!v42)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v43 = [v42 leadingAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:16.0];

    *(v36 + 40) = v44;
    v45 = [v30 trailingAnchor];
    v46 = *&v3[v10];
    if (!v46)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v47 = [v46 trailingAnchor];
    v48 = [v45 constraintEqualToAnchor:v47 constant:-16.0];

    *(v36 + 48) = v48;
    v49 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer;
    v50 = [*&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_footer] topAnchor];
    v51 = [v30 bottomAnchor];

    v52 = [v50 constraintEqualToAnchor:v51 constant:16.0];
    *(v36 + 56) = v52;
    v53 = *&v3[v10];
    if (!v53)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v54 = [v53 bottomAnchor];
    v55 = [*&v3[v49] bottomAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:16.0];

    *(v36 + 64) = v56;
    v57 = [*&v3[v49] leadingAnchor];
    v58 = *&v3[v10];
    if (!v58)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v59 = [v58 leadingAnchor];
    v60 = [v57 constraintEqualToAnchor:v59 constant:16.0];

    *(v36 + 72) = v60;
    v61 = *&v3[v10];
    v62 = &off_29F363000;
    if (!v61)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v63 = objc_opt_self();
    v64 = (v36 + 80);
    v65 = v61;

    v66 = [v65 trailingAnchor];

    v67 = [*&v3[v49] trailingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:16.0];
LABEL_19:
    v84 = v68;

    *v64 = v84;
    v85 = sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
    v86 = sub_29E2C3604();

    [v63 activateConstraints_];

    v87 = *&v3[v10];
    if (v87)
    {
      [v87 v62[406]];
      v88 = [v3 view];
      if (v88)
      {
        if (*&v3[v10])
        {
          v89 = v88;
          [v88 addSubview_];

          sub_29DF80C94(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_29E2CDBD0;
          v91 = *&v3[v10];
          if (v91)
          {
            v92 = [v91 topAnchor];
            v93 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37ProjectionHighlightTileViewController_separatorView];
            if (v93)
            {
              v94 = [v93 bottomAnchor];
              v95 = [v92 constraintEqualToAnchor_];

              *(v90 + 32) = v95;
              v96 = *&v3[v10];
              if (v96)
              {
                v97 = [v96 leadingAnchor];
                v98 = [v3 view];
                if (v98)
                {
                  v99 = v98;
                  v100 = [v98 leadingAnchor];

                  v101 = [v97 constraintEqualToAnchor_];
                  *(v90 + 40) = v101;
                  v102 = *&v3[v10];
                  if (v102)
                  {
                    v103 = [v102 trailingAnchor];
                    v104 = [v3 view];
                    if (v104)
                    {
                      v105 = v104;
                      v106 = [v104 trailingAnchor];

                      v107 = [v103 constraintEqualToAnchor_];
                      *(v90 + 48) = v107;
                      v131[0] = v90;
                      v108 = *&v3[v10];
                      if (v108)
                      {
                        v109 = [v108 bottomAnchor];
                        v110 = [v3 view];
                        if (v110)
                        {
                          v111 = v110;
                          v112 = [v110 bottomAnchor];

                          v113 = [v109 constraintEqualToAnchor_];
                          type metadata accessor for UILayoutPriority(0);
                          v128 = 1065353216;
                          v129 = 1132068864;
                          sub_29DF80BB4(&qword_2A1A61A28, 255, type metadata accessor for UILayoutPriority, MEMORY[0x29EDC7890]);
                          sub_29E2C0534();
                          LODWORD(v114) = v130;
                          [v113 setPriority_];
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_29E2CD3B0;
                          *(inited + 32) = v113;
                          v116 = *&v3[v10];
                          if (v116)
                          {
                            v117 = inited;
                            v118 = v113;
                            v119 = [v116 bottomAnchor];
                            v120 = [v3 view];
                            if (v120)
                            {
                              v121 = v120;
                              v122 = [v120 bottomAnchor];

                              v123 = [v119 constraintLessThanOrEqualToAnchor_];
                              *(v117 + 40) = v123;
                              sub_29DFCBB84(v117);
                              v124 = objc_opt_self();
                              v125 = sub_29E2C3604();

                              [v124 activateConstraints_];

                              return;
                            }

                            goto LABEL_47;
                          }

LABEL_46:
                          __break(1u);
LABEL_47:
                          __break(1u);
                          goto LABEL_48;
                        }

LABEL_45:
                        __break(1u);
                        goto LABEL_46;
                      }

LABEL_44:
                      __break(1u);
                      goto LABEL_45;
                    }

LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }

LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_29DF80C94(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_29E2CE070;
  v70 = [v30 topAnchor];
  v71 = *&v3[v10];
  if (!v71)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v72 = [v71 topAnchor];
  v73 = [v70 constraintEqualToAnchor:v72 constant:12.0];

  *(v69 + 32) = v73;
  v74 = [v30 leadingAnchor];
  v75 = *&v3[v10];
  if (!v75)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v76 = [v75 leadingAnchor];
  v77 = [v74 constraintEqualToAnchor:v76 constant:16.0];

  *(v69 + 40) = v77;
  v78 = *&v3[v10];
  if (!v78)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v62 = &off_29F363000;
  v79 = [v78 trailingAnchor];
  v80 = [v30 trailingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:16.0];

  *(v69 + 48) = v81;
  v82 = *&v3[v10];
  if (v82)
  {
    v83 = v30;
    v63 = objc_opt_self();
    v64 = (v69 + 56);
    v66 = [v82 bottomAnchor];
    v67 = [v83 bottomAnchor];

    v68 = [v66 constraintEqualToAnchor:v67 constant:16.0];
    goto LABEL_19;
  }

LABEL_57:
  __break(1u);
}

id sub_29DF80AF0(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = result;

    return a3;
  }

  return result;
}

uint64_t sub_29DF80B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DF80B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF80BB4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DF80C08(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

unint64_t sub_29DF80C48()
{
  result = qword_2A1A61998;
  if (!qword_2A1A61998)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1A61998);
  }

  return result;
}

void sub_29DF80C94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DF80CE8()
{
  v1 = v0;
  swift_getObjectType();
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C31A4();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v44 - v7;
  v9 = sub_29E2C0514();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v13 = sub_29E2C0504();
  v14 = sub_29E2C3A34();
  v15 = os_log_type_enabled(v13, v14);
  v45 = v8;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49 = v17;
    *v16 = 136315138;
    v18 = sub_29E2C4AE4();
    v20 = sub_29DFAA104(v18, v19, &v49);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_29DE74000, v13, v14, "[%s] Parent was reconfigured", v16, 0xCu);
    sub_29DE93B3C(v17);
    MEMORY[0x29ED82140](v17, -1, -1);
    MEMORY[0x29ED82140](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state;
  if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state] == 2)
  {
    v22 = [v1 collectionView];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 isTracking];

      if (v24)
      {
        return;
      }

      v25 = [v1 collectionView];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 isDecelerating];

        if (v27)
        {
          return;
        }

        v28 = [v1 collectionView];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 isDragging];

          if ((v30 & 1) == 0)
          {
            v31 = v46;
            sub_29DF82F0C(v46);
            v32 = v31;
            v33 = v47;
            v34 = v48;
            if ((*(v47 + 48))(v32, 1, v48) == 1)
            {
              sub_29DF893C0(v32, sub_29DF13BD8);
            }

            else
            {
              v35 = v45;
              (*(v33 + 32))(v45, v32, v34);
              v36 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider];
              if (swift_unknownObjectWeakLoadStrong())
              {
                v37 = v33;
                v38 = *(v36 + 1);
                ObjectType = swift_getObjectType();
                v40 = v44;
                (*(v38 + 32))(ObjectType, v38);
                sub_29DF89378(&qword_2A18199C0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
                v41 = sub_29E2C3304();
                v42 = *(v37 + 8);
                v42(v40, v34);
                if (v41)
                {
                  v42(v35, v34);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v43 = v1[v21];
                  v1[v21] = 0;
                  sub_29DF811E4(v43);
                  swift_unknownObjectRelease();
                  v42(v35, v34);
                }
              }

              else
              {
                (*(v33 + 8))(v35, v34);
              }
            }
          }

          return;
        }

LABEL_20:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_29DF811E4(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = v2;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315650;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v27 = a1;
    v17 = sub_29E2C3424();
    v19 = sub_29DFAA104(v17, v18, &v28);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2082;
    v26 = *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state);
    v20 = sub_29E2C3424();
    v22 = sub_29DFAA104(v20, v21, &v28);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%s] Changed state from %{public}s to %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    return (*(v5 + 8))(v7, v25);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29DF8144C(_OWORD *a1, uint64_t a2, void *a3)
{
  v91 = a3;
  v87 = a1;
  ObjectType = swift_getObjectType();
  v89 = sub_29E2C0514();
  v88 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89);
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC6594(0);
  v82 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v79 = &v76 - v9;
  sub_29DEC65FC(0);
  v78 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v80 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v13 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v14 = sub_29E2C31A4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v90 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v76 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v76 - v21;
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_navControllerDelegateCache] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_supplementaryDisplayTypes;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_supplementaryDisplayTypes] = MEMORY[0x29EDCA1A0];
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_scrollToZoomedItemCompletionHandlers] = MEMORY[0x29EDCA190];
  v24 = sub_29E14ED40(a2);

  *&v3[v23] = v24;

  v25 = v91;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_calendarCache] = v91;
  v85 = v25;
  v26 = [v85 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_today;
  v77 = v15[4];
  v77(&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_today], v22, v14);
  v28 = v19;
  sub_29E2C30D4();
  swift_beginAccess();
  v29 = v15[2];
  v84 = v3;
  v30 = &v3[v27];
  v31 = v90;
  v29(v90, v30, v14);
  sub_29E2C3104();
  v32 = v15[1];
  v90 = (v15 + 1);
  v32(v31, v14);
  sub_29DF89378(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
  v91 = v14;
  result = sub_29E2C32B4();
  if (result)
  {
    v34 = v79;
    v35 = v91;
    v29(v79, v19, v91);
    v36 = v82;
    v37 = v77;
    v77((v34 + v82[12]), v22, v35);
    v38 = v81;
    sub_29DF8AC8C(v34, v81, sub_29DEC6594);
    v39 = v36[12];
    v40 = v80;
    v37(v80, v38, v35);
    v32((v38 + v39), v35);
    sub_29DF8ACF4(v34, v38, sub_29DEC6594);
    v37((v40 + *(v78 + 36)), v38 + v36[12], v35);
    v82 = v32;
    v32(v38, v35);
    v41 = v84;
    sub_29DF8ACF4(v40, &v84[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_indexableDays], sub_29DEC65FC);
    v42 = type metadata accessor for CycleTimelineCollectionViewLayout();
    v43 = objc_allocWithZone(v42);
    v44 = &v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_itemHeight];
    *v44 = 0;
    v44[8] = 1;
    v45 = &v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize];
    *v45 = 0;
    *(v45 + 1) = 0;
    v45[16] = 1;
    v46 = &v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomAreaOffset];
    *v46 = 0;
    *(v46 + 1) = 0;
    v46[16] = 1;
    v47 = &v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_zoomArea];
    *v47 = 0u;
    *(v47 + 1) = 0u;
    v47[32] = 1;
    v48 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_computedAttributes;
    v49 = v87;
    sub_29DF8944C(v87, v94);
    *&v43[v48] = sub_29E185AC8(MEMORY[0x29EDCA190]);
    v50 = &v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config];
    v51 = v49[1];
    *v50 = *v49;
    v52 = v49[6];
    v53 = v49[7];
    v54 = v49[9];
    *(v50 + 8) = v49[8];
    *(v50 + 9) = v54;
    *(v50 + 6) = v52;
    *(v50 + 7) = v53;
    v55 = v49[2];
    v56 = v49[3];
    v57 = v49[5];
    *(v50 + 4) = v49[4];
    *(v50 + 5) = v57;
    *(v50 + 2) = v55;
    *(v50 + 3) = v56;
    *(v50 + 1) = v51;
    v93.receiver = v43;
    v93.super_class = v42;
    v58 = objc_msgSendSuper2(&v93, sel_init);
    v92.receiver = v41;
    v92.super_class = ObjectType;
    v59 = objc_msgSendSuper2(&v92, sel_initWithCollectionViewLayout_, v58);

    sub_29DF894A8(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_29E2CAB20;
    v61 = sub_29E2C0B54();
    v62 = MEMORY[0x29EDC7870];
    *(v60 + 32) = v61;
    *(v60 + 40) = v62;
    v63 = v59;
    MEMORY[0x29ED80420](v60, sel_adaptToContentSizeChanges);
    swift_unknownObjectRelease();

    v64 = v86;
    sub_29E2C04B4();
    v65 = sub_29E2C0504();
    v66 = sub_29E2C3A04();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v94[0] = v68;
      *v67 = 136446210;
      v69 = [v63 description];
      v84 = v28;
      v70 = v69;
      v71 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v73 = v72;

      v74 = sub_29DFAA104(v71, v73, v94);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_29DE74000, v65, v66, "[%{public}s] Initialized", v67, 0xCu);
      sub_29DE93B3C(v68);
      MEMORY[0x29ED82140](v68, -1, -1);
      MEMORY[0x29ED82140](v67, -1, -1);

      sub_29DF8950C(v49);
      (*(v88 + 8))(v64, v89);
      v75 = v84;
    }

    else
    {

      sub_29DF8950C(v49);
      (*(v88 + 8))(v64, v89);
      v75 = v28;
    }

    (v82)(v75, v91);
    return v63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29DF81E58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_29E2C4AE4();
    v15 = v3;
    v13 = sub_29DFAA104(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%s] Deinit", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    (*(v4 + 8))(v6, v15);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

uint64_t type metadata accessor for CycleTimelineCollectionViewController(uint64_t a1)
{
  result = qword_2A1A5FC80;
  if (!qword_2A1A5FC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF82214()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Supplementary display types changed", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = [v1 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF823FC()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v26 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x656E696C656D6954, 0xED0000776569562ELL);
  v4 = sub_29E2C33A4();

  [v3 setAccessibilityIdentifier_];

  v5 = [v0 collectionView];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor_];

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  [v8 setDecelerationRate_];

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  [v10 setShowsHorizontalScrollIndicator_];

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  [v12 setShowsVerticalScrollIndicator_];

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  [v14 setBouncesVertically_];

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  if (HKUICalendarLocaleIsRightToLeft())
  {
    v18 = 4;
  }

  else
  {
    v18 = 3;
  }

  [v17 setSemanticContentAttribute_];

  v19 = [v1 collectionView];
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  type metadata accessor for TimelinePastCell(0);
  sub_29DF89378(&qword_2A1819A10, type metadata accessor for TimelinePastCell, &unk_29E2D9860);
  sub_29E2C3B74();

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = v21;
  type metadata accessor for TimelineTodayCell(0);
  sub_29DF89378(&qword_2A1819A18, type metadata accessor for TimelineTodayCell, &unk_29E2D9838);
  sub_29E2C3B74();

  v23 = [v1 collectionView];
  if (v23)
  {
    v24 = v23;
    type metadata accessor for TimelineFutureCell(0);
    sub_29DF89378(&unk_2A1819A20, type metadata accessor for TimelineFutureCell, &unk_29E2D9810);
    sub_29E2C3B74();

    v25 = [objc_opt_self() defaultCenter];
    [v25 addObserver:v1 selector:sel_didReceiveSignificantTimeChangeNotification name:*MEMORY[0x29EDC8028] object:0];

    return;
  }

LABEL_26:
  __break(1u);
}

void sub_29DF82884(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 interactivePopGestureRecognizer];

    if (v5)
    {
      v6 = [v5 delegate];

      if (v6)
      {
        if (!swift_dynamicCastClass())
        {
          *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_navControllerDelegateCache] = v6;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v7 = [v1 navigationController];
          if (v7)
          {
            v8 = v7;
            v9 = [v7 interactivePopGestureRecognizer];

            if (v9)
            {
              [v9 setDelegate_];
            }
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_29DF82AF8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x2A1C7C4A8](v5).n128_u64[0];
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_didMoveToParentViewController_, a1, v7);
  sub_29E2C04B4();
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%s] Did move to parent view controller", v12, 0xCu);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v17 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state);
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state) = 0;
  return sub_29DF811E4(v17);
}

void sub_29DF82D4C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(type metadata accessor for CycleTimelineCollectionViewLayoutInvalidationContext()) init];
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateItemHeight] = 1;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_collectionViewLayout);
  type metadata accessor for CycleTimelineCollectionViewLayout();
  [swift_dynamicCastClassUnconditional() invalidateLayoutWithContext_];

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v3 = [v4 indexPathsForVisibleItems];

    if (!v3)
    {
      sub_29E2BCFB4();
      sub_29E2C3614();
      v3 = sub_29E2C3604();
    }

    v6 = [v0 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadItemsAtIndexPaths_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_29DF82F0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v30 - v10;
  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  v14 = [result superview];

  if (v14)
  {
    result = [v2 collectionView];
    if (result)
    {
      v15 = result;
      [result center];
      v17 = v16;
      v19 = v18;

      v20 = [v2 collectionView];
      [v14 convertPoint:v20 toView:{v17, v19}];
      v22 = v21;
      v24 = v23;

      result = [v2 collectionView];
      if (result)
      {
        v25 = result;
        v26 = [result indexPathForItemAtPoint_];

        if (v26)
        {
          sub_29E2BCF44();

          (*(v5 + 32))(v11, v7, v4);
          sub_29E2BCF64();
          sub_29E2C3174();
          (*(v5 + 8))(v11, v4);
          v27 = sub_29E2C31A4();
          return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
        }

        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  v28 = sub_29E2C31A4();
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 1, 1, v28);
}

id sub_29DF83210()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCFB4();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v47 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29E2C31A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v13 = MEMORY[0x2A1C7C4A8](v12).n128_u64[0];
  v15 = &v39[-v14];
  v51.receiver = v0;
  v51.super_class = ObjectType;
  result = objc_msgSendSuper2(&v51, sel_viewDidLayoutSubviews, v13);
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state;
  if (!v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state])
  {
    v18 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = result;
      v20 = *(v18 + 1);
      v0[v17] = 1;
      v44 = v0;
      sub_29DF811E4(0);
      v21 = swift_getObjectType();
      (*(v20 + 32))(v21, v20);
      sub_29E2C04B4();
      (*(v9 + 16))(v11, v15, v8);
      v22 = sub_29E2C0504();
      v23 = sub_29E2C3A34();
      v24 = os_log_type_enabled(v22, v23);
      v43 = v19;
      if (v24)
      {
        v25 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50 = v42;
        *v25 = 136315394;
        v26 = sub_29E2C4AE4();
        v41 = v22;
        v40 = v23;
        v28 = sub_29DFAA104(v26, v27, &v50);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        sub_29DF89378(&qword_2A1819A08, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA328]);
        v29 = sub_29E2C48D4();
        v31 = v30;
        v32 = *(v9 + 8);
        v32(v11, v8);
        v33 = sub_29DFAA104(v29, v31, &v50);

        *(v25 + 14) = v33;
        v34 = v41;
        _os_log_impl(&dword_29DE74000, v41, v40, "[%s] Resetting scroll position to current day: %s", v25, 0x16u);
        v35 = v42;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v35, -1, -1);
        v36 = v25;
        v37 = v32;
        MEMORY[0x29ED82140](v36, -1, -1);
      }

      else
      {

        v37 = *(v9 + 8);
        v37(v11, v8);
      }

      (*(v46 + 8))(v7, v45);
      sub_29DF89378(&unk_2A18199E0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
      sub_29E2C4344();
      v38 = v47;
      MEMORY[0x29ED79740](v50 & ~(v50 >> 63), 0);
      sub_29DF8370C(v38, 0, 0, 0);
      swift_unknownObjectRelease();
      (*(v48 + 8))(v38, v49);
      return (v37)(v15, v8);
    }
  }

  return result;
}

void sub_29DF8370C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53 = a4;
  v56 = a3;
  LODWORD(v6) = a2;
  ObjectType = swift_getObjectType();
  v9 = sub_29E2BCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29E2C0514();
  v54 = *(v13 - 8);
  v55 = v13;
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = v5;
  v59.receiver = v5;
  v59.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v59, sel_collectionViewLayout, v14);
  type metadata accessor for CycleTimelineCollectionViewLayout();
  v18 = swift_dynamicCastClassUnconditional();
  v19 = [v18 collectionView];
  if (v19)
  {
    v20 = v19;
    v21 = &v18[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config];
    v22 = v21[1];
    v23 = v21[4];
    v24 = (v22 + v23) * sub_29E2BCF94() + (v23 + v21[8] + 2.0) * 0.5;
    [v20 bounds];
    Width = CGRectGetWidth(v60);

    v26 = v24 - Width * 0.5;
  }

  else
  {

    v26 = 0.0;
  }

  sub_29E2C04B4();
  (*(v10 + 16))(v12, a1, v9);
  v27 = sub_29E2C0504();
  v28 = sub_29E2C3A04();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = v6;
    v6 = v30;
    v58[0] = v30;
    *v29 = 136315650;
    v31 = sub_29E2C4AE4();
    v33 = sub_29DFAA104(v31, v32, v58);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2048;
    v34 = sub_29E2BCF94();
    (*(v10 + 8))(v12, v9);
    *(v29 + 14) = v34;
    *(v29 + 22) = 2082;
    *&v58[1] = v26;
    v58[2] = 0;
    type metadata accessor for CGPoint(0);
    v35 = sub_29E2C3424();
    v37 = sub_29DFAA104(v35, v36, v58);

    *(v29 + 24) = v37;
    _os_log_impl(&dword_29DE74000, v27, v28, "[%s] Scrolling to item %ld at offset %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    v38 = v6;
    LOBYTE(v6) = v52;
    MEMORY[0x29ED82140](v38, -1, -1);
    MEMORY[0x29ED82140](v29, -1, -1);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  (*(v54 + 8))(v16, v55);
  v39 = v56;
  v40 = v57;
  if (v56)
  {
    v41 = swift_allocObject();
    v42 = v53;
    *(v41 + 16) = v39;
    *(v41 + 24) = v42;
    v43 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_scrollToZoomedItemCompletionHandlers;
    swift_beginAccess();
    v44 = *&v40[v43];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[v43] = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_29E1443A0(0, v44[2] + 1, 1, v44);
      *&v40[v43] = v44;
    }

    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      v44 = sub_29E1443A0((v46 > 1), v47 + 1, 1, v44);
    }

    v44[2] = v47 + 1;
    v48 = &v44[2 * v47];
    v48[4] = sub_29DF89420;
    v48[5] = v41;
    *&v40[v43] = v44;
    swift_endAccess();
  }

  v49 = [v40 collectionView];
  if (v49)
  {
    v50 = v49;
    [v49 setContentOffset:v6 & 1 animated:{v26, 0.0}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29DF83C60()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2C2B34();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C2B54();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v10 = sub_29E2C3CF4();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = ObjectType;
  aBlock[4] = sub_29DF8AE88;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B5AC8;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF89378(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29DF013C4(0);
  sub_29DF89378(&qword_2A1A626D0, sub_29DF013C4, MEMORY[0x29EDC9A70]);
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_29DF83F54(char *a1, uint64_t a2)
{
  v3 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C0514();
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v16 = sub_29E2C0504();
  v17 = sub_29E2C3A34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[0] = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30[2] = v5;
    v21 = v20;
    v33[0] = v20;
    *v19 = 136315138;
    v22 = sub_29E2C4AE4();
    v30[1] = v8;
    v24 = sub_29DFAA104(v22, v23, v33);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_29DE74000, v16, v17, "[%s] Resetting to today and reloading after significant time change", v19, 0xCu);
    sub_29DE93B3C(v21);
    MEMORY[0x29ED82140](v21, -1, -1);
    v25 = v19;
    v12 = v30[0];
    MEMORY[0x29ED82140](v25, -1, -1);
  }

  (*(v31 + 8))(v15, v32);
  v26 = [*&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_calendarCache] currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_today;
  swift_beginAccess();
  (*(v10 + 40))(&a1[v27], v12, v9);
  swift_endAccess();
  v28 = [a1 collectionView];
  if (v28)
  {
    v29 = v28;
    [v28 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF84330()
{
  v1 = v0;
  v42 = sub_29E2BCEA4();
  v2 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42);
  v41 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CycleDay(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v44 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29E2C31A4();
  v6 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29E2BCFB4();
  v8 = *(v50 - 8);
  *&v9 = MEMORY[0x2A1C7C4A8](v50).n128_u64[0];
  v45 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v1;
  v11 = [v1 collectionView];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v11 indexPathsForVisibleItems];

  v14 = sub_29E2C3614();
  v15 = &off_29F363000;
  v48 = *(v14 + 16);
  v16 = v45;
  if (!v48)
  {
LABEL_14:

    return;
  }

  v17 = 0;
  v36 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_calendarCache;
  v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_indexableDays;
  v34 = (v6 + 8);
  v35 = (v2 + 8);
  v18 = &v49[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider];
  v46 = (v8 + 8);
  v47 = v8 + 16;
  v38 = v8;
  v43 = v14;
  while (v17 < *(v14 + 16))
  {
    v19 = v18;
    (*(v8 + 16))(v16, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v50);
    v20 = [v49 v15[364]];
    if (!v20)
    {
      goto LABEL_16;
    }

    v21 = v20;
    v22 = sub_29E2BCF24();
    v23 = [v21 cellForItemAtIndexPath_];

    v18 = v19;
    if (v23)
    {
      type metadata accessor for TimelineDayCell(0);
      if (swift_dynamicCastClass())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = v49;
          v25 = *(v19 + 1);
          v16 = v45;
          sub_29E2BCF64();
          v26 = v39;
          sub_29E2C3174();
          ObjectType = swift_getObjectType();
          (*(v25 + 64))(v26, ObjectType, v25);
          v28 = [*&v24[v36] currentCalendar];
          v29 = v41;
          sub_29E2BCDC4();

          v30 = v44;
          sub_29E0313E0(v44, v29);
          v18 = v19;
          swift_unknownObjectRelease();

          v31 = v29;
          v15 = &off_29F363000;
          (*v35)(v31, v42);
          sub_29DF893C0(v30, type metadata accessor for CycleDay);
          v32 = v26;
          v8 = v38;
          (*v34)(v32, v40);
          v14 = v43;
          goto LABEL_6;
        }

        v14 = v43;
      }

      else
      {
      }

      v16 = v45;
    }

LABEL_6:
    ++v17;
    (*v46)(v16, v50);
    if (v48 == v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_29DF84818(void *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v44 = a1;
  sub_29DEDB904(0, a3);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v41 = &v40 - v9;
  v10 = sub_29E2C31A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v40 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v40 - v18;
  v43 = a2;
  sub_29E2BCF64();
  sub_29E2C3174();
  v42 = v11;
  v20 = *(v11 + 16);
  v21 = v19;
  v20(v16, v19, v10);
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_today;
  swift_beginAccess();
  v23 = v10;
  v20(v13, (v4 + v22), v10);
  if (sub_29E2BFC34())
  {
    v24 = v42;
    v25 = v44;
  }

  else
  {
    v24 = v42;
    v25 = v44;
  }

  v26 = sub_29E2C33A4();

  v27 = sub_29E2BCF24();
  v28 = [v25 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v27];

  type metadata accessor for TimelineDayCell(0);
  v29 = swift_dynamicCastClassUnconditional();
  v30 = sub_29E2BF404();
  sub_29E030C8C(v30);
  if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state) == 2)
  {
    v31 = v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v31 + 8);
      ObjectType = swift_getObjectType();
      v34 = v41;
      (*(v32 + 8))(ObjectType, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_29DEC65FC(0);
      v34 = v41;
      (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
    }

    sub_29DEC65FC(0);
    v37 = (v24 + 8);
    if ((*(*(v36 - 8) + 48))(v34, 1, v36))
    {
      v38 = v40;
      sub_29DF8AC8C(v34, v40, sub_29DEDB904);
      sub_29DF84C94(v38);
      (*v37)(v21, v23);
      sub_29DF893C0(v34, sub_29DEDB904);
    }

    else
    {
      sub_29E18A4C0(v21);
      sub_29DF84C94(v34);
      (*v37)(v21, v23);
    }
  }

  else
  {
    (*(v24 + 8))(v21, v10);
  }

  return v29;
}

uint64_t sub_29DF84C94(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB904(0, v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v41 - v13;
  sub_29DEC65FC(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF8AC8C(a1, v14, sub_29DEDB904);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_29DF893C0(a1, sub_29DEDB904);
    v20 = v14;
    v21 = sub_29DEDB904;
  }

  else
  {
    v44 = v17;
    sub_29DF8ACF4(v14, v19, sub_29DEC65FC);
    sub_29E2C04B4();
    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A04();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = v16;
      v25 = v24;
      v26 = swift_slowAlloc();
      v43 = v2;
      v41 = v26;
      v46 = v26;
      *v25 = 136446210;
      v27 = sub_29E2C4AE4();
      ObjectType = v4;
      v29 = v19;
      v30 = v11;
      v31 = a1;
      v32 = sub_29DFAA104(v27, v28, &v46);

      *(v25 + 4) = v32;
      a1 = v31;
      v11 = v30;
      v19 = v29;
      _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] will set activeDays", v25, 0xCu);
      v33 = v41;
      sub_29DE93B3C(v41);
      v2 = v43;
      MEMORY[0x29ED82140](v33, -1, -1);
      v34 = v25;
      v16 = v42;
      MEMORY[0x29ED82140](v34, -1, -1);

      (*(v5 + 8))(v8, ObjectType);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v35 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider;
    Strong = swift_unknownObjectWeakLoadStrong();
    v37 = v44;
    if (Strong)
    {
      v38 = *(v35 + 8);
      v39 = swift_getObjectType();
      sub_29DF8AC8C(v19, v11, sub_29DEC65FC);
      (*(v37 + 56))(v11, 0, 1, v16);
      (*(v38 + 16))(v11, v39, v38);
      swift_unknownObjectRelease();
    }

    sub_29DF893C0(a1, sub_29DEDB904);
    v21 = sub_29DEC65FC;
    v20 = v19;
  }

  return sub_29DF893C0(v20, v21);
}

uint64_t sub_29DF852A4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 2:
      v9 = 2;
      goto LABEL_7;
    case 1:
      v9 = 1;
      goto LABEL_7;
    case 0:
      v9 = 0;
LABEL_7:

      return sub_29DF8665C(v9, a2);
  }

  v11 = v6;
  sub_29E2C04B4();
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%s] Unknown default bleeding type.", v14, 0xCu);
    sub_29DE93B3C(v15);
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  return (*(v5 + 8))(v8, v11);
}

void sub_29DF854BC(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v25 - v7;
  v9 = [*(a1 + *(type metadata accessor for CycleDay(0) + 20)) bleedingTypesWithFlowLogged];
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        v10 = 1;
        break;
      case 3:
        v10 = 2;
        break;
      case 4:

        sub_29DF85D34(a1);
        return;
      default:
        goto LABEL_19;
    }

LABEL_13:

    sub_29DF85930(v10, a1);
    return;
  }

  if (v9)
  {
    if (v9 != 1)
    {
LABEL_19:
      sub_29E2C04B4();
      v18 = sub_29E2C0504();
      v19 = sub_29E2C3A34();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136315138;
        v22 = sub_29E2C4AE4();
        v24 = sub_29DFAA104(v22, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_29DE74000, v18, v19, "[%s] Unexpected enum case.", v20, 0xCu);
        sub_29DE93B3C(v21);
        MEMORY[0x29ED82140](v21, -1, -1);
        MEMORY[0x29ED82140](v20, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return;
    }

    v10 = 0;
    goto LABEL_13;
  }

  sub_29E2C04B4();
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    v15 = sub_29E2C4AE4();
    v17 = sub_29DFAA104(v15, v16, &v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%s] Nothing to delete.", v13, 0xCu);
    sub_29DE93B3C(v14);
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
}

void sub_29DF85930(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CycleDay(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  *&v13 = MEMORY[0x2A1C7C4A8](v10 - 8).n128_u64[0];
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(a2 + *(v15 + 28)) daySummary];
  if (v16)
  {
    v35 = v8;
    v36 = v7;
    if (a1 >= 3)
    {
      sub_29E2C4724();
      __break(1u);
    }

    else
    {
      v17 = v16;
      v18 = [v16 *off_29F3627D0[a1]];
      sub_29DF8AC8C(a2, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CycleDay);
      v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      *(v21 + 24) = a1;
      sub_29DF8ACF4(v14, v21 + v19, type metadata accessor for CycleDay);
      *(v21 + v20) = ObjectType;
      v22 = v3;
      v23 = sub_29DE9C384(a1, v18, sub_29DF8AD5C, v21);

      if (v23)
      {
        v24 = v37;
        sub_29E2C04B4();
        v25 = sub_29E2C0504();
        v26 = sub_29E2C3A34();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v40 = v28;
          *v27 = 136315394;
          v29 = sub_29E2C4AE4();
          v31 = sub_29DFAA104(v29, v30, &v40);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2080;
          v38 = 2003790950;
          v39 = 0xE400000000000000;
          v32 = sub_29E2C3464();
          v34 = sub_29DFAA104(v32, v33, &v40);

          *(v27 + 14) = v34;
          _os_log_impl(&dword_29DE74000, v25, v26, "[%s] Showing prompt to delete %s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v28, -1, -1);
          MEMORY[0x29ED82140](v27, -1, -1);
        }

        (*(v35 + 8))(v24, v36);
        [v22 presentViewController:v23 animated:1 completion:0];
      }

      else
      {
        sub_29DF852A4(a1, a2);
      }
    }
  }
}

void sub_29DF85D34(uint64_t a1)
{
  v39 = a1;
  v1 = type metadata accessor for CycleDay(0);
  v37 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v38 = v2;
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v32 - v11;
  sub_29E2C3314();
  v13 = *(v7 + 16);
  v43 = v7 + 16;
  v44 = v13;
  v13(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  v16 = v15;
  v34 = v14;
  v35 = "EDING_ALERT_MESSAGE";
  sub_29E2C3414();
  v17 = *(v7 + 8);
  v17(v12, v6);
  v42 = v5;
  v18 = sub_29E2C33A4();
  v36 = v7 + 8;
  v19 = v18;

  v33 = [objc_opt_self() alertControllerWithTitle:v19 message:0 preferredStyle:1];

  sub_29E2C3314();
  v32 = v9;
  v44(v9, v12, v6);
  sub_29E2BCC74();
  sub_29E2C3414();
  v17(v12, v6);
  v20 = v40;
  sub_29DF8AC8C(v39, v40, type metadata accessor for CycleDay);
  v21 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v41;
  sub_29DF8ACF4(v20, v22 + v21, type metadata accessor for CycleDay);
  v24 = v23;
  v25 = sub_29E2C33A4();

  aBlock[4] = sub_29DF8ADFC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24B5A78;
  v26 = _Block_copy(aBlock);

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v25 style:2 handler:v26];
  _Block_release(v26);

  v29 = v33;
  [v33 addAction_];

  sub_29E2C3314();
  v44(v32, v12, v6);
  sub_29E2BCC74();
  sub_29E2C3414();
  v17(v12, v6);
  v30 = sub_29E2C33A4();

  v31 = [v27 actionWithTitle:v30 style:1 handler:0];

  [v29 addAction_];
  [v24 presentViewController:v29 animated:1 completion:0];
}

id sub_29DF86330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for CycleDay(0) + 20));
  if ([v4 menstruationLevel] == 4)
  {
    sub_29DF8665C(0, a3);
  }

  if ([v4 bleedingInPregnancyLevel] == 1)
  {
    sub_29DF8665C(1, a3);
  }

  result = [v4 bleedingAfterPregnancyLevel];
  if (result == 1)
  {
    return sub_29DF8665C(2, a3);
  }

  return result;
}

uint64_t sub_29DF863D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a1;
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v7;
    v7 = v16;
    v35 = v16;
    *v15 = 136315650;
    v17 = sub_29E2C4AE4();
    v19 = sub_29DFAA104(v17, v18, &v35);
    v31 = a4;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v33 = 2003790950;
    v34 = 0xE400000000000000;
    v21 = sub_29E2C3464();
    v23 = sub_29DFAA104(v21, v22, &v35);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    if (v32)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v32)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = sub_29DFAA104(v24, v25, &v35);

    *(v15 + 24) = v26;
    a4 = v31;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%s] Dismissing prompt to delete %s, should delete = %s", v15, 0x20u);
    swift_arrayDestroy();
    v27 = v7;
    LOBYTE(v7) = v32;
    MEMORY[0x29ED82140](v27, -1, -1);
    v28 = v15;
    a3 = v30;
    MEMORY[0x29ED82140](v28, -1, -1);
  }

  result = (*(v9 + 8))(v11, v8);
  if (v7)
  {
    return sub_29DF852A4(a3, a4);
  }

  return result;
}

uint64_t sub_29DF8665C(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v61 = type metadata accessor for BleedingInPregnancyAlertView(0);
  MEMORY[0x2A1C7C4A8](v61);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C0514();
  v64 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BCFB4();
  v67 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v51 - v18;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v57 = v9;
      v53 = v8;
      v54 = v5;
      v56 = sub_29E262FF8(v66, v65);
      LODWORD(v55) = HKMCDaySummaryBleedingFlowHasFlow();
      sub_29E2C31A4();
      sub_29DF89378(&unk_2A18199E0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
      sub_29E2C4344();
      MEMORY[0x29ED79740](v69[0] & ~(v69[0] >> 63), 0);
      sub_29E2C04B4();
      v21 = v67;
      (*(v67 + 16))(v16, v19, v14);
      v22 = sub_29E2C0504();
      v23 = sub_29E2C3A34();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v52 = v3;
        v25 = v24;
        v51 = swift_slowAlloc();
        v69[0] = v51;
        *v25 = 136315650;
        v26 = sub_29E2C4AE4();
        LODWORD(ObjectType) = v23;
        v28 = sub_29DFAA104(v26, v27, v69);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        v68 = v55;
        v29 = sub_29E2C3464();
        v31 = sub_29DFAA104(v29, v30, v69);

        *(v25 + 14) = v31;
        *(v25 + 22) = 2080;
        sub_29DF89378(&unk_2A181F8A0, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D90]);
        v32 = sub_29E2C48D4();
        v55 = v11;
        v34 = v33;
        v35 = *(v67 + 8);
        v35(v16, v14);
        v36 = sub_29DFAA104(v32, v34, v69);

        *(v25 + 24) = v36;
        _os_log_impl(&dword_29DE74000, v22, ObjectType, "[%s] Toggled flow to %s for item at %s", v25, 0x20u);
        v37 = v51;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v37, -1, -1);
        v38 = v25;
        v3 = v52;
        MEMORY[0x29ED82140](v38, -1, -1);

        (*(v64 + 8))(v13, v55);
      }

      else
      {

        v35 = *(v21 + 8);
        v35(v16, v14);
        (*(v64 + 8))(v13, v11);
      }

      v39 = v57;
      if (v66 == 1 && v56 > 1)
      {
        v40 = [*&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_calendarCache] currentCalendar];
        v41 = v58;
        sub_29E2BCDC4();

        v42 = v62;
        v66 = v35;
        sub_29E2C3194();
        (*(v59 + 8))(v41, v60);
        v43 = v61;
        v45 = v53;
        v44 = v54;
        (*(v39 + 16))(v54 + *(v61 + 20), v42, v53);
        *v44 = v56;
        v46 = (v44 + *(v43 + 24));
        *v46 = 0;
        v46[1] = 0;
        v47 = *(v43 + 28);
        *(v44 + v47) = swift_getKeyPath();
        sub_29DF894A8(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
        swift_storeEnumTagMultiPayload();
        sub_29DF8ABF8(0);
        v49 = objc_allocWithZone(v48);
        v50 = sub_29E2C1C34();
        [v3 presentViewController:v50 animated:1 completion:0];
        swift_unknownObjectRelease();

        (*(v39 + 8))(v42, v45);
        return v66(v19, v14);
      }

      else
      {
        v35(v19, v14);
        return swift_unknownObjectRelease();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_29DF86F18()
{
  v122[1] = swift_getObjectType();
  sub_29DEDB904(0, v1);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0514();
  v131 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC6594(0);
  v128 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v127 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v126 = v122 - v11;
  sub_29DEC65FC(0);
  v135 = v12;
  v130 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v129 = v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v136 = v122 - v15;
  v140 = sub_29E2C31A4();
  v134 = *(v140 - 8);
  MEMORY[0x2A1C7C4A8](v140);
  v132 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v133 = v122 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v139 = v122 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v138 = v122 - v22;
  v23 = sub_29E2BCFB4();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v137 = v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v142 = v122 - v27;
  MEMORY[0x2A1C7C4A8](v28);
  v152 = v122 - v29;
  MEMORY[0x2A1C7C4A8](v30);
  v153 = v122 - v31;
  MEMORY[0x2A1C7C4A8](v32);
  v34 = v122 - v33;
  sub_29DF8ABC4(0);
  MEMORY[0x2A1C7C4A8](v35 - 8);
  v141 = v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37);
  v143 = v122 - v38;
  MEMORY[0x2A1C7C4A8](v39);
  v151 = v122 - v40;
  MEMORY[0x2A1C7C4A8](v41);
  v150 = v122 - v42;
  MEMORY[0x2A1C7C4A8](v43);
  v149 = v122 - v44;
  MEMORY[0x2A1C7C4A8](v45);
  v148 = v122 - v46;
  MEMORY[0x2A1C7C4A8](v47);
  v49 = v122 - v48;
  v51 = MEMORY[0x2A1C7C4A8](v50);
  v52 = *(v24 + 56);
  v164 = v122 - v53;
  v52(v51);
  v162 = v49;
  v144 = v23;
  v160 = v52;
  v161 = v24 + 56;
  (v52)(v49, 1, 1, v23);
  v158 = v0;
  result = [v0 collectionView];
  if (result)
  {
    v55 = result;
    v56 = [result visibleCells];

    sub_29DE9408C(0, &unk_2A18199D0, 0x29EDC79B0);
    v57 = sub_29E2C3614();

    v145 = v24;
    v125 = v4;
    v124 = v5;
    v123 = v7;
    if (v57 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
    {
      v59 = v57;
      v60 = v144;
      v61 = v153;
      if (!i)
      {
        break;
      }

      v62 = 0;
      v156 = v57 & 0xFFFFFFFFFFFFFF8;
      v157 = v57 & 0xC000000000000001;
      v63 = (v145 + 48);
      v163 = (v145 + 32);
      v154 = (v145 + 8);
      v155 = (v145 + 16);
      v146 = (v145 + 48);
      v147 = v57;
      while (1)
      {
        if (v157)
        {
          v64 = MEMORY[0x29ED80D70](v62, v59);
        }

        else
        {
          if (v62 >= *(v156 + 16))
          {
            goto LABEL_45;
          }

          v64 = *(v59 + 8 * v62 + 32);
        }

        v65 = v64;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v165 = v62 + 1;
        result = [v158 collectionView];
        if (!result)
        {
          goto LABEL_48;
        }

        v57 = result;
        v66 = [result indexPathForCell_];

        if (v66)
        {
          v159 = v65;
          sub_29E2BCF44();

          v67 = v149;
          sub_29DF8AC8C(v164, v149, sub_29DF8ABC4);
          v68 = *v63;
          if ((*v63)(v67, 1, v60) == 1)
          {
            (*v155)(v61, v34, v60);
            if (v68(v67, 1, v60) != 1)
            {
              sub_29DF893C0(v67, sub_29DF8ABC4);
            }
          }

          else
          {
            (*v163)(v61, v67, v60);
          }

          sub_29DF89378(&qword_2A1819390, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D80]);
          v69 = sub_29E2C3294();
          sub_29DF893C0(v164, sub_29DF8ABC4);
          if (v69)
          {
            (*v154)(v61, v60);
            v70 = v148;
            (*v155)(v148, v34, v60);
          }

          else
          {
            v70 = v148;
            (*v163)(v148, v61, v60);
          }

          v71 = v60;
          (v160)(v70, 0, 1, v60);
          sub_29DF8ACF4(v70, v164, sub_29DF8ABC4);
          v72 = v151;
          sub_29DF8AC8C(v162, v151, sub_29DF8ABC4);
          v73 = v68(v72, 1, v71);
          v74 = v152;
          if (v73 == 1)
          {
            (*v155)(v152, v34, v71);
            v57 = v71;
            if (v68(v72, 1, v71) != 1)
            {
              sub_29DF893C0(v72, sub_29DF8ABC4);
            }
          }

          else
          {
            (*v163)(v152, v72, v71);
            v57 = v71;
          }

          v75 = v74;
          v76 = sub_29E2C32A4();

          v77 = v162;
          sub_29DF893C0(v162, sub_29DF8ABC4);
          if (v76)
          {
            v78 = v75;
          }

          else
          {
            v78 = v34;
          }

          if (v76)
          {
            v79 = v34;
          }

          else
          {
            v79 = v75;
          }

          (*v154)(v78, v57);
          v80 = v150;
          (*v163)(v150, v79, v57);
          (v160)(v80, 0, 1, v57);
          sub_29DF8ACF4(v80, v77, sub_29DF8ABC4);
          v61 = v153;
          v59 = v147;
          v60 = v57;
          v63 = v146;
        }

        else
        {
        }

        ++v62;
        if (v165 == i)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

LABEL_33:

    v81 = v164;
    v82 = v60;
    v83 = v143;
    sub_29DF8AC8C(v164, v143, sub_29DF8ABC4);
    v84 = v145;
    v85 = *(v145 + 48);
    if (v85(v83, 1, v60) == 1)
    {
      v86 = v162;
LABEL_37:
      sub_29DF893C0(v86, sub_29DF8ABC4);
      v90 = v81;
LABEL_43:
      sub_29DF893C0(v90, sub_29DF8ABC4);
      return sub_29DF893C0(v83, sub_29DF8ABC4);
    }

    v87 = *(v84 + 32);
    v88 = v142;
    v87(v142, v83, v82);
    v89 = v162;
    v83 = v141;
    sub_29DF8AC8C(v162, v141, sub_29DF8ABC4);
    if (v85(v83, 1, v82) == 1)
    {
      (*(v84 + 8))(v88, v82);
      v86 = v89;
      goto LABEL_37;
    }

    v87(v137, v83, v82);
    sub_29E2BCF64();
    v91 = v138;
    sub_29E2C3174();
    sub_29E2BCF64();
    sub_29E2C3174();
    v92 = v132;
    sub_29E2C30D4();
    v93 = v133;
    sub_29E2C30F4();
    v94 = v134;
    v95 = *(v134 + 8);
    v96 = v140;
    v95(v92, v140);
    sub_29DF89378(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    result = sub_29E2C32B4();
    if (result)
    {
      v97 = v126;
      (*(v94 + 16))(v126, v91, v96);
      v98 = v128;
      v99 = *(v94 + 32);
      v99(v97 + *(v128 + 48), v93, v96);
      v100 = v127;
      sub_29DF8AC8C(v97, v127, sub_29DEC6594);
      v101 = *(v98 + 48);
      v102 = v136;
      v99(v136, v100, v96);
      v95((v100 + v101), v96);
      sub_29DF8ACF4(v97, v100, sub_29DEC6594);
      v103 = *(v98 + 48);
      v104 = v135;
      v99(v102 + *(v135 + 36), (v100 + v103), v96);
      v95(v100, v96);
      v105 = v123;
      sub_29E2C04B4();
      v106 = v129;
      sub_29DF8AC8C(v102, v129, sub_29DEC65FC);
      v107 = sub_29E2C0504();
      v108 = sub_29E2C3A34();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v167 = v110;
        *v109 = 136446466;
        v111 = sub_29E2C4AE4();
        v113 = sub_29DFAA104(v111, v112, &v167);

        *(v109 + 4) = v113;
        v104 = v135;
        *(v109 + 12) = 2048;
        sub_29DF89378(&unk_2A18199E0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
        sub_29E2C4344();
        v114 = v166;
        sub_29DF893C0(v106, sub_29DEC65FC);
        *(v109 + 14) = v114;
        _os_log_impl(&dword_29DE74000, v107, v108, "[%{public}s] resetting active range with new duration %ld", v109, 0x16u);
        sub_29DE93B3C(v110);
        v115 = v110;
        v116 = v138;
        MEMORY[0x29ED82140](v115, -1, -1);
        v117 = v109;
        v96 = v140;
        MEMORY[0x29ED82140](v117, -1, -1);

        (*(v131 + 8))(v105, v124);
        v118 = v125;
      }

      else
      {
        sub_29DF893C0(v106, sub_29DEC65FC);

        (*(v131 + 8))(v105, v124);
        v118 = v125;
        v116 = v138;
      }

      v119 = v136;
      sub_29DF8AC8C(v136, v118, sub_29DEC65FC);
      (*(v130 + 56))(v118, 0, 1, v104);
      sub_29DF84C94(v118);
      sub_29DF893C0(v119, sub_29DEC65FC);
      v95(v139, v96);
      v95(v116, v96);
      v120 = *(v145 + 8);
      v121 = v144;
      v120(v137, v144);
      v120(v142, v121);
      v83 = v164;
      v90 = v162;
      goto LABEL_43;
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_29DF8820C(uint64_t (*a1)(char *, uint64_t))
{
  v2 = v1;
  v83 = a1;
  ObjectType = swift_getObjectType();
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v88 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C31A4();
  v84 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v79 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v77 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v77 - v12;
  v14 = sub_29E2C0514();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v80 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v87 = &v77 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v77 - v20;
  sub_29E2C04B4();
  v22 = v2;
  v23 = sub_29E2C0504();
  v24 = sub_29E2C3A04();

  v25 = os_log_type_enabled(v23, v24);
  v85 = v6;
  v81 = v10;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v82 = v14;
    v27 = v26;
    v28 = swift_slowAlloc();
    v90 = v28;
    *v27 = 136315394;
    v29 = sub_29E2C4AE4();
    v86 = ObjectType;
    v30 = v15;
    v31 = v13;
    v33 = sub_29DFAA104(v29, v32, &v90);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v89 = v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state];
    v34 = sub_29E2C3424();
    v36 = sub_29DFAA104(v34, v35, &v90);

    *(v27 + 14) = v36;
    v13 = v31;
    v15 = v30;
    ObjectType = v86;
    _os_log_impl(&dword_29DE74000, v23, v24, "%s scrollViewDidScroll %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v28, -1, -1);
    v37 = v27;
    v14 = v82;
    MEMORY[0x29ED82140](v37, -1, -1);
  }

  v38 = *(v15 + 1);
  result = v38(v21, v14);
  v40 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state;
  v41 = v87;
  v42 = v88;
  if (v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state] == 2)
  {
    result = [v83 _horizontalVelocity];
    if (fabs(v43) > 2.5)
    {
      v83 = v38;
      sub_29E2C04B4();
      v44 = sub_29E2C0504();
      v45 = sub_29E2C3A04();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v82 = v14;
        v47 = v46;
        v48 = swift_slowAlloc();
        v90 = v48;
        *v47 = 136315138;
        v49 = sub_29E2C4AE4();
        v86 = ObjectType;
        v51 = sub_29DFAA104(v49, v50, &v90);
        ObjectType = v86;

        *(v47 + 4) = v51;
        v42 = v88;
        _os_log_impl(&dword_29DE74000, v44, v45, "[%s] scrollViewDidScroll: Pausing data fetching due to high velocity", v47, 0xCu);
        sub_29DE93B3C(v48);
        MEMORY[0x29ED82140](v48, -1, -1);
        v52 = v47;
        v14 = v82;
        MEMORY[0x29ED82140](v52, -1, -1);

        v53 = v87;
      }

      else
      {

        v53 = v41;
      }

      v38 = v83;
      v83(v53, v14);
      v54 = v22[v40];
      v22[v40] = 3;
      result = sub_29DF811E4(v54);
    }
  }

  if ((v22[v40] & 0xFE) == 2)
  {
    sub_29DF82F0C(v42);
    v55 = v84;
    v56 = v85;
    if ((*(v84 + 48))(v42, 1, v85) == 1)
    {
      return sub_29DF893C0(v42, sub_29DF13BD8);
    }

    else
    {
      v86 = ObjectType;
      (*(v55 + 32))(v13, v42, v56);
      v57 = &v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v82 = v14;
        v83 = v38;
        v87 = v15;
        v58 = *(v57 + 1);
        v59 = swift_getObjectType();
        v60 = v81;
        (*(v58 + 32))(v59, v58);
        sub_29DF89378(&qword_2A18199C0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
        v61 = sub_29E2C3304();
        v88 = v13;
        v62 = *(v55 + 8);
        v62(v60, v56);
        if (v61)
        {
          v62(v88, v56);
          return swift_unknownObjectRelease();
        }

        else
        {
          v78 = v62;
          v63 = *(v55 + 16);
          v64 = v88;
          v63(v60, v88, v56);
          (*(v58 + 40))(v60, v59, v58);
          v65 = v80;
          sub_29E2C04B4();
          v66 = v79;
          v63(v79, v64, v56);
          v67 = sub_29E2C0504();
          v68 = sub_29E2C3A04();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v90 = v70;
            *v69 = 136315394;
            v71 = sub_29E2C4AE4();
            v73 = sub_29DFAA104(v71, v72, &v90);

            *(v69 + 4) = v73;
            *(v69 + 12) = 2048;
            v74 = sub_29E2C3164();
            v75 = v78;
            v78(v66, v56);
            *(v69 + 14) = v74;
            _os_log_impl(&dword_29DE74000, v67, v68, "%s scrollViewDidScroll %ld", v69, 0x16u);
            sub_29DE93B3C(v70);
            MEMORY[0x29ED82140](v70, -1, -1);
            MEMORY[0x29ED82140](v69, -1, -1);
            swift_unknownObjectRelease();

            v83(v80, v82);
            return v75(v88, v56);
          }

          else
          {
            v76 = v78;
            v78(v66, v56);
            swift_unknownObjectRelease();

            v83(v65, v82);
            return v76(v88, v56);
          }
        }
      }

      else
      {
        return (*(v55 + 8))(v13, v56);
      }
    }
  }

  return result;
}

void sub_29DF88B04()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C04B4();
  v6 = v1;
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();

  v9 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446466;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v21[7] = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state);
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, &v22);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] resumeDataFetching %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    v18 = v10;
    v9 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep;
    MEMORY[0x29ED82140](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v19 = v9[304];
  v20 = *(v6 + v19);
  if (((1 << v20) & 0x15) == 0)
  {
    *(v6 + v19) = 2;
    sub_29DF811E4(v20);
    sub_29DF86F18();
    sub_29DF84330();
  }
}

double sub_29DF88D54(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_scrollToZoomedItemCompletionHandlers;
  swift_beginAccess();
  v6 = *(v2 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {
    sub_29E2BF404();
    v8 = v6 + 40;
    do
    {
      v9 = *(v8 - 8);
      v10 = a1 & 1;

      v9(&v10);

      v8 += 16;
      --v7;
    }

    while (v7);

    *(v2 + v4) = MEMORY[0x29EDCA190];
  }

  return result;
}

void sub_29DF89008(uint64_t a1)
{
  sub_29E2C31A4();
  if (v1 <= 0x3F)
  {
    sub_29DEC65FC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29DF8910C(void *a1)
{
  v2 = v1;
  v4 = [v2 navigationController];
  v5 = [v4 interactivePopGestureRecognizer];

  if (!v5)
  {
    return 1;
  }

  sub_29DE9408C(0, &qword_2A18199C8, 0x29EDC7AB0);
  v6 = a1;
  v7 = sub_29E2C40D4();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  result = [v2 collectionView];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v2 collectionView];
    [v6 locationInView_];
    v20 = v19;
    v22 = v21;

    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    v24.x = v20;
    v24.y = v22;
    if (CGRectContainsPoint(v25, v24))
    {
      return 0;
    }

    v23 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_navControllerDelegateCache];
    if (v23 && ([v23 respondsToSelector_] & 1) != 0)
    {
      return [v23 gestureRecognizerShouldBegin_];
    }

    return 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_29DF89320()
{
  result = qword_2A18199B0;
  if (!qword_2A18199B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18199B0);
  }

  return result;
}

uint64_t sub_29DF89378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF893C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DF894A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DF89560()
{
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_navControllerDelegateCache) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_supplementaryDisplayTypes) = MEMORY[0x29EDCA1A0];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_scrollToZoomedItemCompletionHandlers) = MEMORY[0x29EDCA190];
  sub_29E2C4724();
  __break(1u);
}

void sub_29DF89614(uint64_t a1)
{
  v59 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_29E2C0514();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v60 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CycleDay(0);
  MEMORY[0x2A1C7C4A8](v52);
  v53 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C31A4();
  v55 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v54 = &v47 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v47 - v10;
  v12 = sub_29E2BCFB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v47 - v17;
  v19 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v20 = [v19 hkmc_timelineTapToLogDisabled];

  if ((v20 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = swift_getObjectType();
      v24 = swift_conformsToProtocol2();
      if (v24)
      {
        v25 = *(*(v24 + 8) + 32);
        v47 = *(v24 + 8);
        v48 = v23;
        v25(v23);
        v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_indexableDays;
        sub_29DF89378(&unk_2A18199E0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
        v50 = v26;
        sub_29E2C4344();
        MEMORY[0x29ED79740](v62[0] & ~(v62[0] >> 63), 0);
        v51 = v22;
        v27 = v55;
        v49 = *(v55 + 8);
        v49(v11, v4);
        LOBYTE(v26) = sub_29E2BCF34();
        (*(v13 + 8))(v18, v12);
        if (v26)
        {
          sub_29E2BCF64();
          v28 = v61;
          v29 = v54;
          sub_29E2C3174();
          v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_today;
          swift_beginAccess();
          (*(v27 + 16))(v6, v28 + v30, v4);
          sub_29DF89378(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
          LOBYTE(v30) = sub_29E2C32B4();
          v31 = v49;
          v49(v6, v4);
          if (v30)
          {
            sub_29E2BCF64();
            sub_29E2C3174();
            v32 = v53;
            (*(v47 + 64))(v6, v48);
            v31(v6, v4);
            v33 = *(v32 + *(v52 + 20));
            if ([v33 bleedingTypesWithFlowLogged])
            {
              sub_29DF854BC(v32);
            }

            else
            {
              sub_29DF852A4([v33 defaultLoggingBleedingType], v29);
            }

            swift_unknownObjectRelease();
            v31(v29, v4);
            sub_29DF893C0(v32, type metadata accessor for CycleDay);
          }

          else
          {
            v31(v29, v4);
            swift_unknownObjectRelease();
          }

          return;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v34 = v60;
  sub_29E2C04B4();
  v35 = v59;
  (*(v13 + 16))(v15, v59, v12);
  v36 = sub_29E2C0504();
  v37 = sub_29E2C3A34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62[0] = v39;
    *v38 = 136315394;
    v40 = sub_29E2C4AE4();
    v42 = sub_29DFAA104(v40, v41, v62);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    sub_29DF89378(&unk_2A181F8A0, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D90]);
    v43 = sub_29E2C48D4();
    v45 = v44;
    (*(v13 + 8))(v15, v12);
    v46 = sub_29DFAA104(v43, v45, v62);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_29DE74000, v36, v37, "[%s] Scrolling in response to user selecting item at %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v39, -1, -1);
    MEMORY[0x29ED82140](v38, -1, -1);

    (*(v57 + 8))(v60, v58);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v57 + 8))(v34, v58);
  }

  sub_29DF8370C(v35, 1, 0, 0);
}

void sub_29DF89DC0(void *a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v5 = sub_29E2BCEA4();
  v52 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CycleDay(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C31A4();
  v54 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v50 = &v43 - v15;
  sub_29DEDB904(0, v14);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC65FC(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineDayCell(0);
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v48 = v24;
    v49 = v10;
    if (*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state) == 1)
    {
      v43 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state;
      v46 = v3;
      v47 = v11;
      v25 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = v7;
        v26 = *(v25 + 8);
        ObjectType = swift_getObjectType();
        v45 = v5;
        v28 = *(v26 + 8);
        v29 = a1;
        v30 = v26;
        v7 = v44;
        v28(ObjectType, v30);
        v5 = v45;
        swift_unknownObjectRelease();
        if ((*(v21 + 48))(v18, 1, v20) != 1)
        {
          sub_29DF8ACF4(v18, v23, sub_29DEC65FC);
          sub_29E2BCF64();
          v3 = v46;
          v31 = v50;
          sub_29E2C3174();
          sub_29DF89378(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
          v11 = v47;
          if (sub_29E2C32B4())
          {
            v32 = sub_29E2C3294();
            (*(v54 + 8))(v31, v11);
            if (v32)
            {
              v33 = *(v3 + v43);
              *(v3 + v43) = 2;
              sub_29DF811E4(v33);
            }
          }

          else
          {
            (*(v54 + 8))(v31, v11);
          }

          sub_29DF893C0(v23, sub_29DEC65FC);
          goto LABEL_13;
        }
      }

      else
      {
        (*(v21 + 56))(v18, 1, 1, v20);
        v35 = a1;
      }

      sub_29DF893C0(v18, sub_29DEDB904);
      v3 = v46;
      v11 = v47;
    }

    else
    {
      v34 = a1;
    }

LABEL_13:
    v36 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      v38 = v11;
      sub_29E2BCF64();
      v39 = v51;
      sub_29E2C3174();
      v40 = swift_getObjectType();
      v41 = v49;
      (*(v37 + 64))(v39, v40, v37);
      v42 = [*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_calendarCache) currentCalendar];
      sub_29E2BCDC4();

      sub_29E0313E0(v41, v7);
      swift_unknownObjectRelease();

      (*(v52 + 8))(v7, v5);
      sub_29DF893C0(v41, type metadata accessor for CycleDay);
      (*(v54 + 8))(v39, v38);
    }

    else
    {
    }
  }
}

unint64_t sub_29DF8A388()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C04B4();
  v6 = v1;
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A04();

  v9 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v20[7] = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state);
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, &v21);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_29DE74000, v7, v8, "%s didEndDisplaying %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    v18 = v10;
    v9 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep;
    MEMORY[0x29ED82140](v18, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  if (*(v6 + v9[304]) == 2)
  {
    return sub_29DF86F18();
  }

  return result;
}

double sub_29DF8A5BC()
{
  swift_getObjectType();
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A04();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%s] scrollViewDidEndScrollingAnimation: resuming data fetching", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_29DF88B04();
  return sub_29DF88D54(1);
}

double sub_29DF8A780()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_scrollToZoomedItemCompletionHandlers;
  swift_beginAccess();
  v3 = *(v0 + v1);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_29E2BF404();
    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);
      v7 = 0;

      v6(&v7);

      v5 += 16;
      --v4;
    }

    while (v4);

    *(v0 + v1) = MEMORY[0x29EDCA190];
  }

  return result;
}

void sub_29DF8A840(char a1)
{
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v6 = sub_29E2C0504();
    v7 = sub_29E2C3A04();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v10 = sub_29E2C4AE4();
      v12 = sub_29DFAA104(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_29DE74000, v6, v7, "[%s] scrollViewDidEndDragging without deceleration: resuming data fetching", v8, 0xCu);
      sub_29DE93B3C(v9);
      MEMORY[0x29ED82140](v9, -1, -1);
      MEMORY[0x29ED82140](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_29DF88B04();
  }
}

void sub_29DF8AA08()
{
  swift_getObjectType();
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A04();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%s] scrollViewDidEndDecelerating: resuming data fetching", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_29DF88B04();
}

void sub_29DF8ABF8(uint64_t a1)
{
  if (!qword_2A181FDA0)
  {
    type metadata accessor for BleedingInPregnancyAlertView(255);
    sub_29DF89378(&qword_2A1819A00, type metadata accessor for BleedingInPregnancyAlertView, &unk_29E2DE0A0);
    v1 = sub_29E2C1C44();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181FDA0);
    }
  }
}

uint64_t sub_29DF8AC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF8ACF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF8AD5C(int a1)
{
  v3 = *(type metadata accessor for CycleDay(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_29DF863D4(a1, v6, v7, v1 + v4, v5);
}

id sub_29DF8ADFC(uint64_t a1)
{
  v3 = *(type metadata accessor for CycleDay(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_29DF86330(a1, v4, v5);
}

uint64_t sub_29DF8AE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for OvulationConfirmationFailureTileActionHandler(uint64_t a1)
{
  result = qword_2A1819A38;
  if (!qword_2A1819A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF8AF34(uint64_t a1, __n128 a2)
{
  v3 = sub_29E2BF6C4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  v8 = HKLogMenstrualCyclesCategory();
  sub_29E2BF694();
  v9 = sub_29E2BE8F4();

  v10 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v8 healthDataSource:v9];

  *(v7 + qword_2A1819A30) = v10;
  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_29E2BF424();
  (*(v4 + 8))(a1, v3);
  return v11;
}

void sub_29DF8B0AC(__n128 a1)
{
  v1 = sub_29E2BF6C4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LearnMoreViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem] = 0;
  v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_presentedModally] = 1;
  v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreType] = 2;
  v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreSource] = 1;
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  sub_29DF91550();
  sub_29E2BF414();
  v8 = sub_29E2BF6B4();
  (*(v2 + 8))(v4, v1);
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v8 presentViewController:v9 animated:1 completion:0];
}

void sub_29DF8B250(__n128 a1)
{
  v34 = *v1;
  v2 = sub_29E2BF6C4();
  v35 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_29E2BE2A4();
  v36 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C04B4();

  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v8;
    v15 = v14;
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v15 = 136446466;
    v16 = sub_29E2C4AE4();
    v31 = v13;
    v18 = sub_29DFAA104(v16, v17, v37);
    v34 = v9;
    v19 = v5;
    v20 = v18;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_29E2BF414();
    sub_29E2BF684();
    (*(v35 + 8))(v4, v2);
    sub_29DF8C174(&qword_2A1818200, MEMORY[0x29EDC1D90], MEMORY[0x29EDC1DA0]);
    v21 = sub_29E2C48D4();
    v23 = v22;
    (*(v36 + 8))(v7, v19);
    v24 = sub_29DFAA104(v21, v23, v37);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_29DE74000, v12, v31, "[%{public}s] Dismissing tile from %s", v15, 0x16u);
    v25 = v32;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v25, -1, -1);
    MEMORY[0x29ED82140](v15, -1, -1);

    (*(v34 + 8))(v11, v33);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_29DF8B6E4(1);
  v37[0] = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v37[1] = v26;
  MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
  sub_29E2C33A4();

  v27 = objc_allocWithZone(sub_29E2BDF64());
  v28 = sub_29E2BDF54();
  sub_29DE9408C(0, &qword_2A1819A60, 0x29EDBA088);
  v29 = sub_29E2C3B64();
  [v29 addOperation_];
}

uint64_t sub_29DF8B6E4(int a1)
{
  v57 = a1;
  v58 = *v1;
  v2 = sub_29E2C0514();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v55 = &v54 - v6;
  v7 = sub_29E2BF6C4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF8C37C(0, &qword_2A1819A68, type metadata accessor for OvulationConfirmationFailureUserData);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v54 - v12;
  v14 = type metadata accessor for OvulationConfirmationFailureUserData(0);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1;
  sub_29E2BF414();
  v18 = sub_29E2BF6A4();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  if (v20 >> 60 == 15)
  {
    v21.n128_f64[0] = (*(v15 + 56))(v13, 1, 1, v14);
    sub_29DF8C1BC(v13, v21);
    sub_29E2C04B4();
    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      v26 = sub_29E2C4AE4();
      v28 = sub_29DFAA104(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] Ovulation Confirmation type is null or event submission manager does not exist", v24, 0xCu);
      sub_29DE93B3C(v25);
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v24, -1, -1);
    }

    return (*(v59 + 8))(v4, v60);
  }

  else
  {
    sub_29E217BA0(v18, v20);
    v30.n128_f64[0] = (*(v15 + 56))(v13, 0, 1, v14);
    v31 = v13;
    v32 = v17;
    sub_29DF8C234(v31, v17, v30);
    v33 = v55;
    sub_29E2C04B4();
    v34 = sub_29E2C0504();
    v35 = sub_29E2C3A34();
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136446210;
      v39 = v58;
      v40 = sub_29E2C4AE4();
      v42 = sub_29DFAA104(v40, v41, aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_29DE74000, v34, v35, "[%{public}s] Submitting analytic for dismissing ovulation confirmation tile", v37, 0xCu);
      sub_29DE93B3C(v38);
      MEMORY[0x29ED82140](v38, -1, -1);
      MEMORY[0x29ED82140](v37, -1, -1);

      (*(v59 + 8))(v33, v60);
    }

    else
    {

      (*(v59 + 8))(v33, v60);
      v39 = v58;
    }

    v43 = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
    sub_29DF8C298(0);
    v44 = sub_29E2C2E94();
    v45 = [v44 ovulationConfirmationFailure];

    if ((v45 - 2) < 3)
    {
      goto LABEL_14;
    }

    if (v45 == 1)
    {
      v46 = 11;
LABEL_15:
      type metadata accessor for RoomInteractionEvent();
      v47 = swift_allocObject();
      *(v47 + 16) = 0xD00000000000002ALL;
      *(v47 + 24) = 0x800000029E2EEF80;
      *(v47 + 32) = 8;
      *(v47 + 33) = v46;
      *(v47 + 34) = 2;
      *(v47 + 40) = v43;
      *(v47 + 48) = v57 & 1;
      *(v47 + 56) = 0;
      v48 = *(v56 + qword_2A1819A30);
      v49 = swift_allocObject();
      *(v49 + 16) = v39;
      aBlock[4] = sub_29DF8C300;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29DFE9648;
      aBlock[3] = &unk_2A24B5B18;
      v50 = _Block_copy(aBlock);
      v51 = v43;
      v52 = v48;

      [v52 submitEvent:v47 completion:v50];
      _Block_release(v50);

      return sub_29DF8C320(v32, v53);
    }

    if (v45)
    {
LABEL_14:
      v46 = 10;
      goto LABEL_15;
    }

    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

void sub_29DF8BDF8(char a1, void *a2, uint64_t a3)
{
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v9 = a2;
    v10 = sub_29E2C0504();
    v11 = sub_29E2C3A14();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446466;
      v14 = sub_29E2C4AE4();
      v16 = sub_29DFAA104(v14, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v21 = a2;
      v17 = a2;
      sub_29DF8C37C(0, &qword_2A1A5DFD0, sub_29DE96670);
      v18 = sub_29E2C3434();
      v20 = sub_29DFAA104(v18, v19, &v22);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Error submitting analytics event: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v13, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_29DF8C03C()
{

  return swift_deallocClassInstance();
}

void sub_29DF8C094()
{
  sub_29E2BF864();

  sub_29DF8B250(v0);
}

uint64_t sub_29DF8C174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF8C1BC(uint64_t a1, __n128 a2)
{
  sub_29DF8C37C(0, &qword_2A1819A68, type metadata accessor for OvulationConfirmationFailureUserData);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF8C234(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for OvulationConfirmationFailureUserData(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29DF8C298(uint64_t a1)
{
  if (!qword_2A1819A70)
  {
    sub_29DE9408C(255, &qword_2A1A5E0A0, 0x29EDC3370);
    v1 = sub_29E2C2EC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819A70);
    }
  }
}