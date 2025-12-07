uint64_t sub_258A4E934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A4E9C8(uint64_t a1)
{
  if (!qword_27F96F4E8)
  {
    sub_258A35700();
    sub_258A4F388(&qword_27F96ED38, sub_258A35700, MEMORY[0x277CE01D8]);
    v1 = sub_258B015C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F4E8);
    }
  }
}

void sub_258A4EA5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A4EAC0(uint64_t a1)
{
  if (!qword_27F96F4F8)
  {
    sub_258A4EC94(255, &qword_27F96F4F0, sub_258A4E994, type metadata accessor for LoggingFlowBlendMode);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F4F8);
    }
  }
}

void sub_258A4EB50(uint64_t a1)
{
  if (!qword_27F96F500)
  {
    sub_258A4EAC0(255);
    sub_258A4EE40(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F500);
    }
  }
}

uint64_t sub_258A4EC30@<X0>(uint64_t a1@<X8>)
{
  result = sub_258B00F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_258A4EC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A4ED08(uint64_t a1)
{
  if (!qword_27F96ED00)
  {
    sub_258A4EE40(255, &qword_280DF8928, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    v1 = sub_258B017C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ED00);
    }
  }
}

void sub_258A4ED84(uint64_t a1)
{
  if (!qword_27F96F510)
  {
    sub_258A4EC94(255, &qword_27F96F508, sub_258A4EB50, sub_258A4ED08);
    sub_258A4EE40(255, &qword_27F96ED60, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F510);
    }
  }
}

void sub_258A4EE40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A4EE90()
{
  result = qword_27F96F518;
  if (!qword_27F96F518)
  {
    sub_258A4ED84(255);
    sub_258A4EF28();
    sub_258A4F324(&qword_27F96F560, &qword_27F96ED60, MEMORY[0x277D85048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F518);
  }

  return result;
}

unint64_t sub_258A4EF28()
{
  result = qword_27F96F520;
  if (!qword_27F96F520)
  {
    sub_258A4EC94(255, &qword_27F96F508, sub_258A4EB50, sub_258A4ED08);
    sub_258A4F008();
    sub_258A4F388(&qword_27F96F558, sub_258A4ED08, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F520);
  }

  return result;
}

unint64_t sub_258A4F008()
{
  result = qword_27F96F528;
  if (!qword_27F96F528)
  {
    sub_258A4EB50(255);
    sub_258A4F0A0();
    sub_258A4F324(&qword_27F96D1B8, &qword_27F96C8C0, MEMORY[0x277CDF720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F528);
  }

  return result;
}

unint64_t sub_258A4F0A0()
{
  result = qword_27F96F530;
  if (!qword_27F96F530)
  {
    sub_258A4EAC0(255);
    sub_258A4F120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F530);
  }

  return result;
}

unint64_t sub_258A4F120()
{
  result = qword_27F96F538;
  if (!qword_27F96F538)
  {
    sub_258A4EC94(255, &qword_27F96F4F0, sub_258A4E994, type metadata accessor for LoggingFlowBlendMode);
    sub_258A4F200();
    sub_258A4F388(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode, &unk_258B30A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F538);
  }

  return result;
}

unint64_t sub_258A4F200()
{
  result = qword_27F96F540;
  if (!qword_27F96F540)
  {
    sub_258A4E994(255);
    sub_2589D5AFC(255);
    sub_258A4F388(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_258A4F388(&qword_27F96F548, sub_258A4E9C8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F540);
  }

  return result;
}

uint64_t sub_258A4F324(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_258A4EE40(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A4F388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t StateOfMindTimeline.EntryFullView.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  v3 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_258A55CA0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v3);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + v4[7]);
  sub_258B02114();
  *v6 = v13;
  v6[1] = v14;
  v7 = a2 + v4[8];
  sub_258B02114();
  *v7 = v13;
  *(v7 + 1) = v14;
  v8 = v4[9];
  *(a2 + v8) = swift_getKeyPath();
  sub_258A55CA0(0, &qword_27F96C968, MEMORY[0x277CDD848], v3);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[10];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = (a2 + v4[6]);
  type metadata accessor for StateOfMindTimeline.Model(0);
  sub_258A54E78(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model, &protocol conformance descriptor for StateOfMindTimeline.Model);
  result = sub_258B00A24();
  *v10 = result;
  v10[1] = v12;
  return result;
}

uint64_t type metadata accessor for StateOfMindTimeline.EntryFullView(uint64_t a1)
{
  result = qword_27F96F730;
  if (!qword_27F96F730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A4F654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_258A55B00(v2, &v14 - v10, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A55D04(v11, a1, type metadata accessor for StateOfMindTimeline.Styles);
  }

  sub_258B02E94();
  v13 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258A4F864@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF3E0];
  v8 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  sub_258A55B00(v1 + *(v12 + 20), v11, &qword_27F96C908, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_258B02E94();
    v15 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_258A4FA98@<X0>(uint64_t a1@<X8>)
{
  v2 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258A55D6C(v4, _s9ViewModelOMa);
    return sub_258A796E4(a1);
  }

  v6 = v4[1];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *v4;
  if (v6 >= *(*v4 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v8 = *(type metadata accessor for StateOfMindTimeline.DaySummary(0) - 8);
  sub_258A55A48(v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, a1, type metadata accessor for StateOfMindTimeline.DaySummary);
}

uint64_t sub_258A4FC50()
{
  v0 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_258B006A4();
  v2 = *(v35 - 8);
  v3 = MEMORY[0x28223BE20](v35);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v34 = &v30 - v6;
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - v7;
  v8 = MEMORY[0x277D83D88];
  sub_258A55CA0(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s5EntryVMa(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4FA98(v15);
  sub_258A55B00(&v15[*(v13 + 36)], v11, &qword_27F96D908, _s5EntryVMa, v8);
  sub_258A55D6C(v15, type metadata accessor for StateOfMindTimeline.DaySummary);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_258A2C670(v11);
    v20 = v31;
    sub_258A4F654(v31);
    sub_258A55D6C(v20, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FE4();
    v21 = sub_258B02024();
  }

  else
  {
    sub_258A55D04(v11, v19, _s5EntryVMa);
    v22 = v33;
    sub_258A4F864(v33);
    v23 = *&v19[*(v16 + 36)];
    v25 = v34;
    v24 = v35;
    (*(v2 + 16))(v34, v22, v35);
    v26 = v32;
    (*(v2 + 104))(v32, *MEMORY[0x277CDF3C0], v24);
    sub_258B00694();
    v27 = *(v2 + 8);
    v27(v26, v24);
    KeyPath = swift_getKeyPath();
    sub_258A84538(KeyPath, fmax(fmin(v23, 1.0), -1.0));

    v21 = sub_258B01F74();
    v27(v25, v24);
    v27(v22, v24);
    sub_258A55D6C(v19, _s5EntryVMa);
  }

  return v21;
}

uint64_t StateOfMindTimeline.EntryFullView.body.getter()
{
  sub_258A52C0C();
  sub_258A54E78(&qword_27F96F728, sub_258A52C0C, MEMORY[0x277CDF7D8]);
  return sub_258B00B24();
}

uint64_t sub_258A50178@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_258A55A48(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindTimeline.EntryFullView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_258A55D04(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StateOfMindTimeline.EntryFullView);
  *a2 = sub_258A54F7C;
  a2[1] = v8;
  return result;
}

uint64_t sub_258A50298@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a3;
  sub_2589EC7FC();
  v5 = *(v4 - 8);
  v121 = v4;
  v122 = v5;
  MEMORY[0x28223BE20](v4);
  v117 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_258B00FB4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v13 = *(v12 - 8);
  v124 = v12 - 8;
  v106 = v13;
  v127 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v126 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A536C0(0);
  v19 = v18;
  MEMORY[0x28223BE20](v18);
  v21 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A53620(0);
  v108 = v22;
  v109 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53550(0);
  v111 = v25;
  v115 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v104 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A533AC(0);
  v28 = *(v27 - 8);
  v118 = v27;
  v119 = v28;
  MEMORY[0x28223BE20](v27);
  v110 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53158(0);
  v120 = v30;
  v123 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v116 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v21 = sub_258B024D4();
  v21[1] = v32;
  sub_258A54FFC(0);
  sub_258A50F18(a2, (v21 + *(v33 + 44)));
  sub_258A537EC(0);
  v35 = (v21 + *(v34 + 36));
  *v35 = 0xD00000000000002CLL;
  v35[1] = 0x8000000258B377D0;
  v36 = sub_258B01884();
  sub_258A537C4(0);
  *(v21 + *(v37 + 36)) = v36;
  sub_258A4F654(v17);
  sub_258A55D6C(v17, type metadata accessor for StateOfMindTimeline.Styles);
  v38 = objc_opt_self();
  v39 = [v38 secondarySystemGroupedBackgroundColor];
  v40 = [v38 tertiarySystemGroupedBackgroundColor];
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = v40;
  v41[4] = 0;
  v41[5] = v39;
  v42 = objc_allocWithZone(MEMORY[0x277D75348]);
  v135 = sub_2589C69C4;
  v136 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v132 = 1107296256;
  v133 = sub_258A52B54;
  v134 = &block_descriptor_8;
  v43 = _Block_copy(&aBlock);
  [v42 initWithDynamicProvider_];
  _Block_release(v43);

  v44 = sub_258B01F94();
  LOBYTE(v43) = sub_258B018D4();
  sub_258A536F4(0);
  v46 = v21 + *(v45 + 36);
  *v46 = v44;
  v46[8] = v43;
  v107 = type metadata accessor for StateOfMindTimeline.EntryFullView;
  v102 = a2;
  v47 = v126;
  sub_258A55A48(a2, v126, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v106 = *(v106 + 80);
  v48 = (v106 + 16) & ~v106;
  v103 = v48;
  v49 = swift_allocObject();
  v105 = type metadata accessor for StateOfMindTimeline.EntryFullView;
  sub_258A55D04(v47, v49 + v48, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v50 = (v21 + *(v19 + 36));
  *v50 = sub_258A558C4;
  v50[1] = v49;
  sub_258A4FA98(v11);
  v51 = &v11[*(v9 + 32)];
  v53 = *v51;
  v52 = *(v51 + 1);
  sub_258B003E4();
  sub_258A55D6C(v11, type metadata accessor for StateOfMindTimeline.DaySummary);
  aBlock = v53;
  v132 = v52;
  v54 = sub_258A54324();
  v57 = sub_2589BFF58(v54, v55, v56);
  v58 = MEMORY[0x277D837D0];
  sub_258B01CB4();

  sub_258A55BF0(v21, sub_258A536C0);
  v59 = v113;
  v60 = v112;
  v61 = v114;
  (*(v113 + 104))(v112, *MEMORY[0x277CDDDC0], v114);
  aBlock = v19;
  v132 = v58;
  v133 = v54;
  v134 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v104;
  v64 = v108;
  sub_258B01E24();
  (*(v59 + 8))(v60, v61);
  v65 = v64;
  (*(v109 + 8))(v24, v64);
  sub_258B024C4();
  v66 = MEMORY[0x277CE1340];
  v67 = MEMORY[0x277CE1350];
  v68 = v117;
  sub_258B010D4();
  sub_258A54614(0);
  v70 = v69;
  aBlock = v65;
  v132 = OpaqueTypeConformance2;
  v71 = swift_getOpaqueTypeConformance2();
  aBlock = v67;
  v132 = v66;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_258B024B4();
  v74 = v111;
  aBlock = v111;
  v132 = v73;
  v133 = v71;
  v134 = MEMORY[0x277CE1320];
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v110;
  v77 = v121;
  sub_258B01F14();
  v78 = v68;
  v79 = v77;
  (*(v122 + 8))(v78, v77);
  (*(v115 + 8))(v63, v74);
  v80 = v102;
  v128 = v102;
  sub_258A54734(0);
  v82 = v81;
  aBlock = v74;
  v132 = v79;
  v133 = v70;
  v134 = v71;
  v135 = v72;
  v136 = v75;
  v122 = swift_getOpaqueTypeConformance2();
  sub_258A547E8(255);
  v84 = v83;
  v85 = sub_258A54E78(&qword_27F96F718, sub_258A547E8, MEMORY[0x277CDD7A8]);
  aBlock = v84;
  v132 = v85;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v116;
  v88 = v118;
  v89 = v82;
  sub_258B01EE4();
  (*(v119 + 8))(v76, v88);
  v90 = v80 + *(v124 + 40);
  v91 = *v90;
  v92 = *(v90 + 8);
  v129 = v91;
  v130 = v92;
  sub_258A55AB0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v93 = v80;
  v94 = v126;
  sub_258A55A48(v93, v126, v107);
  v95 = v103;
  v96 = swift_allocObject();
  sub_258A55D04(v94, v96 + v95, v105);
  aBlock = v88;
  v132 = v89;
  v133 = v122;
  v134 = v86;
  v97 = swift_getOpaqueTypeConformance2();
  sub_258A54B54(v97, v98, v99);
  v100 = v120;
  sub_258B01E94();

  return (*(v123 + 8))(v87, v100);
}

uint64_t sub_258A50F18@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v109 = a2;
  v103 = type metadata accessor for StateOfMindTimeline.DaySummary(0) - 8;
  MEMORY[0x28223BE20](v103);
  v102 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B01634();
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B024B4();
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x28223BE20](v6);
  v110 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v93 = *(v8 - 8);
  v9 = *(v93 + 64);
  v10 = v8 - 8;
  v89 = v8 - 8;
  v92 = v9;
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53C30(0);
  v94 = v13 - 8;
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A53B54(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53AC8(0);
  v95 = v20;
  MEMORY[0x28223BE20](v20);
  v98 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53A44(0);
  v104 = *(v22 - 8);
  v105 = v22;
  MEMORY[0x28223BE20](v22);
  v91 = v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A53A10(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v108 = v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v106 = v87 - v27;
  v107 = sub_258A4FC50();
  sub_258B024F4();
  sub_258B00C94();
  v28 = (a1 + *(v10 + 36));
  v29 = a1;
  v30 = *v28;
  v31 = v28[1];
  v112 = v30;
  *&v113 = v31;
  v88 = MEMORY[0x277CE10B8];
  sub_258A55AB0(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_258B02124();
  sub_258B024F4();
  sub_258B00854();
  v32 = _s13EntryBaseViewVMa(0);
  sub_258A4FA98(v15 + *(v32 + 20));
  sub_258B008B4();
  v34 = v33;
  *v15 = swift_getKeyPath();
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  v87[1] = v35;
  swift_storeEnumTagMultiPayload();
  *(v15 + *(v32 + 24)) = v34;
  KeyPath = swift_getKeyPath();
  sub_258A53C64(0);
  v38 = v15 + *(v37 + 36);
  *v38 = KeyPath;
  v38[8] = 1;
  v39 = sub_258B024F4();
  v41 = v40;
  v42 = v29;
  v90 = v29;
  sub_258A55A48(v29, v12, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v43 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v44 = swift_allocObject();
  sub_258A55D04(v12, v44 + v43, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v45 = (v15 + *(v94 + 44));
  *v45 = sub_258A55B70;
  v45[1] = v44;
  v45[2] = v39;
  v45[3] = v41;
  v46 = v110;
  sub_258B02494();
  v47 = v96;
  v48 = v97;
  (*(v96 + 16))(&v19[v17[19]], v46, v97);
  *v19 = 1;
  sub_258A55A48(v15, &v19[v17[20]], sub_258A53C30);
  v49 = &v19[v17[21]];
  v50 = v42 + *(v89 + 40);
  v51 = *v50;
  v52 = *(v50 + 8);
  v111[0] = v51;
  *&v111[8] = v52;
  sub_258A55AB0(0, &qword_27F96D310, MEMORY[0x277D839B0], v88);
  sub_258B02144();
  v53 = v112;
  v54 = v113;
  LOBYTE(v41) = BYTE8(v113);
  *v49 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v55 = v49 + *(_s15LogButtonFooterVMa(0) + 20);
  *v55 = v53;
  *(v55 + 1) = v54;
  v55[16] = v41;
  v56 = v95;
  v57 = &v19[v17[22]];
  *v111 = 0;
  sub_258B02114();
  v58 = v113;
  *v57 = v112;
  v57[1] = v58;
  v59 = &v19[v17[23]];
  *v111 = 0;
  sub_258B02114();
  (*(v47 + 8))(v110, v48);
  v60 = v113;
  *v59 = v112;
  v59[1] = v60;
  sub_258A55D6C(v15, sub_258A53C30);
  sub_258B024F4();
  sub_258B00C94();
  v61 = v98;
  sub_258A55D04(v19, v98, sub_258A53B54);
  v62 = (v61 + v56[9]);
  v63 = v138;
  v62[4] = v137;
  v62[5] = v63;
  v62[6] = v139;
  v64 = v134;
  *v62 = v133;
  v62[1] = v64;
  v65 = v136;
  v62[2] = v135;
  v62[3] = v65;
  v66 = v99;
  sub_258B01624();
  v67 = sub_258A54184();
  v68 = v91;
  sub_258B01D84();
  (*(v100 + 8))(v66, v101);
  sub_258A55D6C(v61, sub_258A53AC8);
  v69 = v102;
  sub_258A4FA98(v102);
  v70 = *(v69 + *(v103 + 44));
  sub_258B003E4();
  sub_258A55D6C(v69, type metadata accessor for StateOfMindTimeline.DaySummary);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v70 = sub_258A74828(0, *(v70 + 2) + 1, 1, v70);
  }

  v72 = *(v70 + 2);
  v71 = *(v70 + 3);
  if (v72 >= v71 >> 1)
  {
    v70 = sub_258A74828((v71 > 1), v72 + 1, 1, v70);
  }

  *(v70 + 2) = v72 + 1;
  v73 = &v70[16 * v72];
  *(v73 + 4) = 1685217603;
  *(v73 + 5) = 0xE400000000000000;
  v112 = &unk_2869D4670;
  v74 = sub_258B003E4();
  sub_2589FC8C8(v74);
  sub_258A55AB0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  v112 = v56;
  *&v113 = v67;
  swift_getOpaqueTypeConformance2();
  v75 = v105;
  v76 = v106;
  sub_258B01DD4();

  (*(v104 + 8))(v68, v75);
  v77 = v108;
  sub_2589B0814(v76, v108);
  v78 = v107;
  *v111 = v107;
  *&v111[56] = v129;
  *&v111[72] = v130;
  *&v111[88] = v131;
  *&v111[104] = v132;
  *&v111[8] = v126;
  *&v111[24] = v127;
  *&v111[40] = v128;
  *&v111[152] = v125;
  *&v111[136] = v124;
  *&v111[120] = v123;
  v79 = *&v111[16];
  v80 = v109;
  *v109 = *v111;
  v80[1] = v79;
  v81 = *&v111[80];
  v80[4] = *&v111[64];
  v80[5] = v81;
  v82 = *&v111[48];
  v80[2] = *&v111[32];
  v80[3] = v82;
  *(v80 + 20) = *&v111[160];
  v83 = *&v111[144];
  v80[8] = *&v111[128];
  v80[9] = v83;
  v84 = *&v111[112];
  v80[6] = *&v111[96];
  v80[7] = v84;
  sub_258A53914(0);
  sub_2589B0814(v77, v80 + *(v85 + 48));
  sub_258A55A48(v111, &v112, sub_258A53984);
  sub_258A55BF0(v76, sub_258A53A10);
  sub_258A55BF0(v77, sub_258A53A10);
  v112 = v78;
  v116 = v129;
  v117 = v130;
  v118 = v131;
  v119 = v132;
  v113 = v126;
  v114 = v127;
  v115 = v128;
  v122 = v125;
  v121 = v124;
  v120 = v123;
  return sub_258A55D6C(&v112, sub_258A53984);
}

uint64_t sub_258A51B58@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_258B012F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4F654(v8);
  sub_258A55D6C(v8, type metadata accessor for StateOfMindTimeline.Styles);
  v9 = objc_opt_self();
  v10 = [v9 secondarySystemGroupedBackgroundColor];
  v11 = [v9 tertiarySystemGroupedBackgroundColor];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = v11;
  v12[4] = 0;
  v12[5] = v10;
  v13 = objc_allocWithZone(MEMORY[0x277D75348]);
  v23 = sub_258A55DD0;
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_258A52B54;
  v22 = &block_descriptor_53;
  v14 = _Block_copy(&aBlock);
  [v13 initWithDynamicProvider_];
  _Block_release(v14);

  v15 = sub_258B01F94();
  aBlock = 0xD00000000000002CLL;
  v20 = 0x8000000258B377D0;
  sub_258B01524();
  sub_258B008D4();
  v17 = v16;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v15;
  a1[1] = v17;
  return result;
}

uint64_t sub_258A51E0C(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  sub_258A55AB0(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A51E9C()
{
  v0 = sub_258B024B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024A4();
  sub_258A53550(0);
  v5 = v4;
  sub_258A53620(255);
  v7 = v6;
  sub_258A536C0(255);
  v9 = v8;
  v10 = sub_258A54324();
  v13 = sub_2589BFF58(v10, v11, v12);
  v17 = v9;
  v18 = MEMORY[0x277D837D0];
  v19 = v10;
  v20 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v7;
  v18 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  MEMORY[0x259C92300](v3, MEMORY[0x277D84F90], v5, v0, v15, MEMORY[0x277CE1320]);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_258A5202C(uint64_t a1)
{
  v2 = sub_258B01384();
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A547E8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01334();
  v11 = a1;
  sub_258A54888(0, &qword_27F96F6F8, sub_258A548FC, MEMORY[0x277CDE470]);
  sub_258A5498C();
  sub_258B00784();
  v8 = sub_258A54E78(&qword_27F96F718, sub_258A547E8, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C91A00](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258A521FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_258B006A4();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  MEMORY[0x28223BE20](v7);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = sub_258B026B4();
  v36 = *(v16 - 8);
  v37 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A548FC(0);
  v42 = v19;
  MEMORY[0x28223BE20](v19);
  v41 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A55A48(a1, &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindTimeline.EntryFullView);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  sub_258A55D04(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v23 = v35;
  sub_258B026A4();
  sub_258A4F654(v12);
  sub_258A55A48(&v12[*(v10 + 56)], v23, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258A55D6C(v12, type metadata accessor for StateOfMindTimeline.Styles);
  v24 = v38;
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v38);
  v25 = sub_258B00694();
  (*(v4 + 8))(v6, v24);
  if (v25)
  {
    sub_258B02014();
    v26 = sub_258B02024();
  }

  else
  {
    v26 = sub_258B01FC4();
  }

  sub_258A55D6C(v23, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  v27 = v41;
  (*(v36 + 32))(v41, v18, v37);
  *(v27 + *(v42 + 36)) = v26;
  v28 = v39;
  sub_258A4FA98(v39);
  v29 = *(v28 + *(v40 + 36));
  sub_258B003E4();
  sub_258A55D6C(v28, type metadata accessor for StateOfMindTimeline.DaySummary);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_258A74828(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_258A74828((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[16 * v31];
  *(v32 + 4) = 0x74754265736F6C43;
  *(v32 + 5) = 0xEB000000006E6F74;
  v44 = &unk_2869D4670;
  v33 = sub_258B003E4();
  sub_2589FC8C8(v33);
  sub_258A55AB0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_258A54A6C();
  sub_258B01DD4();

  return sub_258A55D6C(v27, sub_258A548FC);
}

uint64_t sub_258A52800(uint64_t a1)
{
  v2 = sub_258B00F84();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDD848];
  v6 = MEMORY[0x277CDF458];
  sub_258A55CA0(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = sub_258B008A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  sub_258A55B00(a1 + *(v14 + 36), v9, &qword_27F96C968, v5, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    sub_258B02E94();
    v15 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v17 + 8))(v4, v18);
  }

  sub_258B00894();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_258A52AB0()
{
  sub_258A52C0C();
  sub_258A54E78(&qword_27F96F728, sub_258A52C0C, MEMORY[0x277CDF7D8]);
  return sub_258B00B24();
}

id sub_258A52B54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_258A52BBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  result = sub_258B01F94();
  *a1 = result;
  return result;
}

void sub_258A52C0C()
{
  if (!qword_27F96F570)
  {
    sub_258A52EC0(255);
    sub_258A53158(255);
    sub_258A533AC(255);
    sub_258A54734(255);
    sub_258A53550(255);
    sub_2589EC7FC();
    sub_258A54614(255);
    sub_258A53620(255);
    sub_258A536C0(255);
    v0 = sub_258A54324();
    sub_2589BFF58(v0, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A547E8(255);
    sub_258A54E78(&qword_27F96F718, sub_258A547E8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_258A54B54(OpaqueTypeConformance2, v3, v4);
    swift_getOpaqueTypeConformance2();
    v5 = sub_258B009C4();
    if (!v6)
    {
      atomic_store(v5, &qword_27F96F570);
    }
  }
}

void sub_258A52EC0(uint64_t a1)
{
  if (!qword_27F96F578)
  {
    sub_258A53158(255);
    sub_258A533AC(255);
    sub_258A54734(255);
    sub_258A53550(255);
    sub_2589EC7FC();
    sub_258A54614(255);
    sub_258A53620(255);
    sub_258A536C0(255);
    v1 = sub_258A54324();
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A547E8(255);
    sub_258A54E78(&qword_27F96F718, sub_258A547E8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_258A54B54(OpaqueTypeConformance2, v4, v5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F578);
    }
  }
}

void sub_258A53158(uint64_t a1)
{
  if (!qword_27F96F580)
  {
    sub_258A533AC(255);
    sub_258A54734(255);
    sub_258A53550(255);
    sub_2589EC7FC();
    sub_258A54614(255);
    sub_258A53620(255);
    sub_258A536C0(255);
    v1 = sub_258A54324();
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A547E8(255);
    sub_258A54E78(&qword_27F96F718, sub_258A547E8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F580);
    }
  }
}

void sub_258A533AC(uint64_t a1)
{
  if (!qword_27F96F588)
  {
    sub_258A53550(255);
    sub_2589EC7FC();
    sub_258A54614(255);
    sub_258A53620(255);
    sub_258A536C0(255);
    v1 = sub_258A54324();
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F588);
    }
  }
}

void sub_258A53550(uint64_t a1)
{
  if (!qword_27F96F590)
  {
    sub_258A53620(255);
    sub_258A536C0(255);
    v5 = sub_258A54324();
    sub_2589BFF58(v5, v1, v2);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F590);
    }
  }
}

void sub_258A53620(uint64_t a1)
{
  if (!qword_27F96F598)
  {
    sub_258A536C0(255);
    v1 = sub_258A54324();
    sub_2589BFF58(v1, v2, v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F598);
    }
  }
}

void sub_258A53730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A54938(255, a4, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A537EC(uint64_t a1)
{
  if (!qword_27F96F5B8)
  {
    sub_258A53880(255);
    sub_258A54938(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F5B8);
    }
  }
}

void sub_258A53880(uint64_t a1)
{
  if (!qword_27F96F5C0)
  {
    sub_258A55CA0(255, &qword_27F96F5C8, sub_258A53914, MEMORY[0x277CE14B8]);
    sub_258A54234();
    v1 = sub_258B022E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F5C0);
    }
  }
}

void sub_258A53914(uint64_t a1)
{
  if (!qword_27F96F5D0)
  {
    sub_258A53984(255);
    sub_258A53A10(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F5D0);
    }
  }
}

void sub_258A53984(uint64_t a1)
{
  if (!qword_27F96F5D8)
  {
    sub_258A54938(255, &qword_27F96F5E0, MEMORY[0x277CE0F78], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F5D8);
    }
  }
}

void sub_258A53A44(uint64_t a1)
{
  if (!qword_27F96F5F0)
  {
    sub_258A53AC8(255);
    sub_258A54184();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F5F0);
    }
  }
}

void sub_258A53AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A53B54(uint64_t a1)
{
  if (!qword_27F96F600)
  {
    sub_258A53C30(255);
    v5[0] = v2;
    v5[1] = _s15LogButtonFooterVMa(255);
    v5[2] = sub_258B024B4();
    v5[3] = sub_258A53FA8();
    v5[4] = sub_258A54E78(&qword_27F96F688, _s15LogButtonFooterVMa, &unk_258B2FC98);
    v5[5] = MEMORY[0x277CE1320];
    v3 = type metadata accessor for ScrollableWithPinnedFooter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_27F96F600);
    }
  }
}

void sub_258A53C64(uint64_t a1)
{
  if (!qword_27F96F610)
  {
    _s13EntryBaseViewVMa(255);
    sub_258A55AB0(255, &qword_27F96F618, &type metadata for StateOfMindTimelinePresentationContext, MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F610);
    }
  }
}

void sub_258A53CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96F620)
  {
    sub_258A53D84(255, a2, a3);
    sub_258A54E78(&qword_27F96F658, sub_258A53D84, MEMORY[0x277CDF7D8]);
    v3 = sub_258B01294();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96F620);
    }
  }
}

void sub_258A53D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96F628)
  {
    sub_258A53DE8(255, a2, a3);
    sub_258A53EF8(v3, v4, v5);
    v6 = sub_258B009C4();
    if (!v7)
    {
      atomic_store(v6, &qword_27F96F628);
    }
  }
}

void sub_258A53DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96F630)
  {
    sub_258A53E48(255, a2, a3);
    v3 = sub_258B00B04();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96F630);
    }
  }
}

void sub_258A53E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96F638)
  {
    sub_258A53EA4(0, a2, a3);
    v3 = sub_258B01644();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96F638);
    }
  }
}

unint64_t sub_258A53EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F640;
  if (!qword_27F96F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F640);
  }

  return result;
}

unint64_t sub_258A53EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F648;
  if (!qword_27F96F648)
  {
    sub_258A53DE8(255, a2, a3);
    sub_258A54E78(&qword_27F96F650, sub_258A53E48, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F648);
  }

  return result;
}

unint64_t sub_258A53FA8()
{
  result = qword_27F96F660;
  if (!qword_27F96F660)
  {
    sub_258A53C30(255);
    sub_258A54058();
    sub_258A54E78(&qword_27F96F680, sub_258A53CF0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F660);
  }

  return result;
}

unint64_t sub_258A54058()
{
  result = qword_27F96F668;
  if (!qword_27F96F668)
  {
    sub_258A53C64(255);
    sub_258A54E78(&qword_27F96F670, _s13EntryBaseViewVMa, &unk_258B33E10);
    sub_258A54108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F668);
  }

  return result;
}

unint64_t sub_258A54108()
{
  result = qword_27F96F678;
  if (!qword_27F96F678)
  {
    sub_258A55AB0(255, &qword_27F96F618, &type metadata for StateOfMindTimelinePresentationContext, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F678);
  }

  return result;
}

unint64_t sub_258A54184()
{
  result = qword_27F96F690;
  if (!qword_27F96F690)
  {
    sub_258A53AC8(255);
    sub_258A54E78(&qword_27F96F698, sub_258A53B54, &unk_258B305B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F690);
  }

  return result;
}

unint64_t sub_258A54234()
{
  result = qword_27F96F6A0;
  if (!qword_27F96F6A0)
  {
    sub_258A55CA0(255, &qword_27F96F5C8, sub_258A53914, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6A0);
  }

  return result;
}

void sub_258A542BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96F6A8)
  {
    v3 = sub_258A53EA4(0, a2, a3);
    sub_2589D2E7C(v3, v4, v5);
    v6 = sub_258B01604();
    if (!v7)
    {
      atomic_store(v6, &qword_27F96F6A8);
    }
  }
}

unint64_t sub_258A54324()
{
  result = qword_27F96F6B0;
  if (!qword_27F96F6B0)
  {
    sub_258A536C0(255);
    sub_258A543D4();
    sub_258A54E78(&qword_27F96F6D8, sub_258A542BC, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6B0);
  }

  return result;
}

unint64_t sub_258A543D4()
{
  result = qword_27F96F6B8;
  if (!qword_27F96F6B8)
  {
    sub_258A536F4(255);
    sub_258A5448C();
    sub_258A545BC(&qword_27F96DEE0, &qword_27F96DED0, MEMORY[0x277CE0718], MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6B8);
  }

  return result;
}

unint64_t sub_258A5448C()
{
  result = qword_27F96F6C0;
  if (!qword_27F96F6C0)
  {
    sub_258A537C4(255);
    sub_258A5450C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6C0);
  }

  return result;
}

unint64_t sub_258A5450C()
{
  result = qword_27F96F6C8;
  if (!qword_27F96F6C8)
  {
    sub_258A537EC(255);
    sub_258A54E78(&qword_27F96F6D0, sub_258A53880, MEMORY[0x277CE11A8]);
    sub_258A4DA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F6C8);
  }

  return result;
}

uint64_t sub_258A545BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258A54938(255, a2, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A54614(uint64_t a1)
{
  if (!qword_27F96F6E0)
  {
    sub_258A53550(255);
    sub_258B024B4();
    sub_258A53620(255);
    sub_258A536C0(255);
    v1 = sub_258A54324();
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F6E0);
    }
  }
}

void sub_258A54734(uint64_t a1)
{
  if (!qword_27F96F6E8)
  {
    sub_258A547E8(255);
    sub_258A54E78(&qword_27F96F718, sub_258A547E8, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F6E8);
    }
  }
}

void sub_258A547E8(uint64_t a1)
{
  if (!qword_27F96F6F0)
  {
    sub_258A54888(255, &qword_27F96F6F8, sub_258A548FC, MEMORY[0x277CDE470]);
    sub_258A5498C();
    v1 = sub_258B00794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F6F0);
    }
  }
}

void sub_258A54888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A54938(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A5498C()
{
  result = qword_27F96F708;
  if (!qword_27F96F708)
  {
    sub_258A54888(255, &qword_27F96F6F8, sub_258A548FC, MEMORY[0x277CDE470]);
    sub_258A54A6C();
    sub_258A54E78(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F708);
  }

  return result;
}

unint64_t sub_258A54A6C()
{
  result = qword_27F96F710;
  if (!qword_27F96F710)
  {
    sub_258A548FC(255);
    sub_258A54E78(&qword_27F96D6D8, MEMORY[0x277D12688], MEMORY[0x277D12678]);
    sub_258A545BC(&qword_27F96C930, &qword_27F96C860, MEMORY[0x277CE0730], MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F710);
  }

  return result;
}

unint64_t sub_258A54B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F720;
  if (!qword_27F96F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F720);
  }

  return result;
}

void sub_258A54BEC(uint64_t a1)
{
  sub_258A55CA0(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A55CA0(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258A54DE4(319);
      if (v3 <= 0x3F)
      {
        sub_258A55AB0(319, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_258A55AB0(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_258A55CA0(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_258A55AB0(319, &qword_27F96F748, MEMORY[0x277CE0F78], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
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

void sub_258A54DE4(uint64_t a1)
{
  if (!qword_27F96F740)
  {
    type metadata accessor for StateOfMindTimeline.Model(255);
    sub_258A54E78(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model, &protocol conformance descriptor for StateOfMindTimeline.Model);
    v1 = sub_258B00A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F740);
    }
  }
}

uint64_t sub_258A54E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A54EC0(uint64_t a1)
{
  if (!qword_27F96F758)
  {
    sub_258B00A14();
    sub_258A52C0C();
    sub_258A54E78(&qword_27F96F728, sub_258A52C0C, MEMORY[0x277CDF7D8]);
    v1 = sub_258B00B34();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F758);
    }
  }
}

uint64_t sub_258A54F7C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for StateOfMindTimeline.EntryFullView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_258A50298(v5, a2);
}

void sub_258A54FFC(uint64_t a1)
{
  if (!qword_27F96F760)
  {
    sub_258A55CA0(255, &qword_27F96F5C8, sub_258A53914, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F760);
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  sub_258A55CA0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v1;
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    if (!v6(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v7 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v8 = *(v7 + 20);
    v9 = sub_258B00AA4();
    v10 = *(*(v9 - 8) + 8);
    v11 = v3 + v8;
    v12 = v7;
    v10(v11, v9);
    v13 = *(v7 + 28);
    v14 = sub_258B006A4();
    v46 = *(*(v14 - 8) + 8);
    v47 = v14;
    v46(v3 + v13);
    v15 = v3 + v12[8];
    if (!v6(v15, 1, v4))
    {
      (*(v5 + 8))(v15, v4);
    }

    v16 = _s6StylesV8TimelineVMa(0);
    v10(v15 + *(v16 + 20), v9);
    v17 = v3 + v12[9];
    if (!v6(v17, 1, v4))
    {
      (*(v5 + 8))(v17, v4);
    }

    v18 = _s6StylesV6NoDataVMa(0);
    v10(v17 + *(v18 + 20), v9);
    v19 = v3 + v12[10];
    if (!v6(v19, 1, v4))
    {
      (*(v5 + 8))(v19, v4);
    }

    v20 = _s6StylesV11PlaceholderVMa(0);
    v10(v19 + *(v20 + 20), v9);
    v21 = v3 + v12[11];
    if (!v6(v21, 1, v4))
    {
      (*(v5 + 8))(v21, v4);
    }

    v22 = _s6StylesV6SymbolVMa(0);
    v10(v21 + *(v22 + 20), v9);
    v23 = v3 + v12[12];
    v49 = v12;
    if (!v6(v23, 1, v4))
    {
      (*(v5 + 8))(v23, v4);
    }

    v24 = v5;
    v25 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v10(v23 + *(v25 + 20), v9);
    v26 = *(v25 + 28);
    v27 = v24;
    (v46)(v23 + v26, v47);
    v28 = v3 + v49[13];
    if (!v6(v28, 1, v4))
    {
      (*(v27 + 8))(v28, v4);
    }

    v29 = _s6StylesV5EmptyVMa(0);
    v10(v28 + *(v29 + 20), v9);
    v30 = v3 + v49[14];
    v31 = v9;
    if (!v6(v30, 1, v4))
    {
      (*(v27 + 8))(v30, v4);
    }

    v32 = _s6StylesV5DailyVMa(0);
    v10(v30 + *(v32 + 20), v9);
    v33 = v3 + v49[15];
    if (!v6(v33, 1, v4))
    {
      (*(v27 + 8))(v33, v4);
    }

    v34 = _s6StylesV9MomentaryVMa(0);
    v10(v33 + *(v34 + 20), v9);
    v35 = v3 + v49[16];
    if (!v6(v35, 1, v4))
    {
      (*(v27 + 8))(v35, v4);
    }

    v36 = _s6StylesV6HeaderVMa(0);
    v10(v35 + *(v36 + 20), v9);
    v37 = v3 + v49[17];
    if (!v6(v37, 1, v4))
    {
      (*(v27 + 8))(v37, v4);
    }

    v38 = _s6StylesV11ChartButtonVMa(0);
    v10(v37 + *(v38 + 20), v9);
    v39 = v3 + v49[18];
    if (!v6(v39, 1, v4))
    {
      (*(v27 + 8))(v39, v4);
    }

    v40 = _s6StylesV15LogButtonFooterVMa(0);
    v10(v39 + *(v40 + 20), v31);
    v1 = v48;
  }

  else
  {
  }

  v41 = *(v1 + 20);
  sub_258A55CA0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = sub_258B006A4();
    (*(*(v42 - 8) + 8))(v3 + v41, v42);
  }

  else
  {
  }

  v43 = *(v1 + 36);
  sub_258A55CA0(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = sub_258B008A4();
    (*(*(v44 - 8) + 8))(v3 + v43, v44);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A558C4(uint64_t *a1)
{
  v3 = *(type metadata accessor for StateOfMindTimeline.EntryFullView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258A51E0C(a1, v4);
}

void *sub_258A5593C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  result = sub_258A79B58();
  *a1 = sub_258A559D8;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_2589C04F4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_258A559E8()
{
  v1 = *(type metadata accessor for StateOfMindTimeline.EntryFullView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A52800(v2);
}

uint64_t sub_258A55A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A55AB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A55B00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258A55CA0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258A55B70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StateOfMindTimeline.EntryFullView(0);

  return sub_258A51B58(a1);
}

uint64_t sub_258A55BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm()
{

  return swift_deallocObject();
}

void sub_258A55CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A55D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A55D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A55DDC@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21 = a3;
  v4 = sub_258B00B04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = sub_258B00B04();
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_258B00B04();
  v20 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_258B024F4();
  sub_258B01E84();
  sub_258B01864();
  v26 = a2;
  v27 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_258B01ED4();
  (*(v5 + 8))(v7, v4);
  sub_258B01894();
  v15 = MEMORY[0x277CDF918];
  v24 = WitnessTable;
  v25 = MEMORY[0x277CDF918];
  v16 = swift_getWitnessTable();
  sub_258B01ED4();
  (*(v19 + 8))(v10, v8);
  sub_258B024F4();
  v22 = v16;
  v23 = v15;
  swift_getWitnessTable();
  sub_258B01E84();
  return (*(v20 + 8))(v13, v11);
}

uint64_t sub_258A5615C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_258B00C34();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A5637C(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v10 = 26.0;
  }

  else
  {
    v10 = 14.0;
  }

  v11 = *(v3 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_258B010C4();
  (*(*(v13 - 8) + 104))(v5 + v11, v12, v13);
  *v5 = v10;
  v5[1] = v10;
  v14 = [objc_opt_self() systemGray6Color];
  v15 = sub_258B01F94();
  sub_258A564C8(v5, v9, MEMORY[0x277CDFC08]);
  *&v9[*(v7 + 44)] = v15;
  sub_258A56408(0, &qword_27F96F770, sub_258A5637C, type metadata accessor for LoggingFlowBlendMode);
  v17 = *(v16 + 36);
  *(a1 + v17) = swift_getKeyPath();
  sub_258A56544(0, &qword_27F96C908, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  return sub_258A564C8(v9, a1, sub_258A5637C);
}

void sub_258A563B0()
{
  if (!qword_27F96C860)
  {
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C860);
    }
  }
}

void sub_258A56408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for LoggingFlowBlendMode(uint64_t a1)
{
  result = qword_27F96F778;
  if (!qword_27F96F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A564C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258A56544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_258B006A4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_258A565B8(uint64_t a1)
{
  sub_258A56544(319, &qword_27F96C7E0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_258A56680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_258B006A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = sub_258B02554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC14E8(v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF3C0], v3);
  v14 = sub_258B00694();
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  v16 = MEMORY[0x277CE13B8];
  if ((v14 & 1) == 0)
  {
    v16 = MEMORY[0x277CE13B0];
  }

  (*(v11 + 104))(v13, *v16, v10);
  sub_258A56408(0, &qword_27F96F788, sub_258A56914, MEMORY[0x277CDFC38]);
  (*(v11 + 32))(a2 + *(v17 + 36), v13, v10);
  sub_258A56914(0);
  return (*(*(v18 - 8) + 16))(a2, v21, v18);
}

void sub_258A56914(uint64_t a1)
{
  if (!qword_27F96F790)
  {
    type metadata accessor for LoggingFlowBlendMode(255);
    sub_258A56A88(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode, &unk_258B30A48);
    v1 = sub_258B01464();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F790);
    }
  }
}

unint64_t sub_258A569A8()
{
  result = qword_27F96F798;
  if (!qword_27F96F798)
  {
    sub_258A56408(255, &qword_27F96F788, sub_258A56914, MEMORY[0x277CDFC38]);
    sub_258A56A88(&qword_27F96F7A0, sub_258A56914, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F798);
  }

  return result;
}

uint64_t sub_258A56A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A56AD0()
{
  sub_258A56D20(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258AFFE44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() internalHealthSettingsURLString];
  sub_258B02B14();

  sub_258AFFE34();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_258A570E0(v2, sub_258A56D20);
  }

  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = sub_258AFFE14();
    sub_258AD6068(MEMORY[0x277D84F90]);
    v12 = sub_258B029E4();

    [v10 openSensitiveURL:v11 withOptions:v12];
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_258A56D20(uint64_t a1)
{
  if (!qword_280DF8F90)
  {
    sub_258AFFE44();
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF8F90);
    }
  }
}

unint64_t sub_258A56D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F7A8;
  if (!qword_27F96F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F7A8);
  }

  return result;
}

BOOL sub_258A56DE0()
{
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B02AD4();
  v5 = HKObjectForNanoPreferencesUserDefaultsKey();

  if (v5)
  {
    sub_258B03104();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_258A570E0(v20, sub_258A3F06C);
    goto LABEL_13;
  }

  sub_258A57140();
  if (swift_dynamicCast())
  {
    v6 = v17[1];
    v7 = sub_258B02B14();
    if (*(v6 + 16))
    {
      v9 = sub_258AD5508(v7, v8);
      v11 = v10;

      if (v11)
      {
        sub_2589F44D0(*(v6 + 56) + 32 * v9, v20);

        if (swift_dynamicCast())
        {
          return v18 != 0;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  sub_258B00364();
  v13 = sub_258B00374();
  v14 = sub_258B02EA4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v20[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_2589F1F78(0xD00000000000001BLL, 0x8000000258B37820, v20);
    _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s] Could not fetch Mindfulness App Settings from BulletinBoard.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x259C945C0](v16, -1, -1);
    MEMORY[0x259C945C0](v15, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_258A570E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A57140()
{
  if (!qword_27F96F7B0)
  {
    v0 = sub_258B02A04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F7B0);
    }
  }
}

uint64_t sub_258A571A4(uint64_t a1, int a2)
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

uint64_t sub_258A571EC(uint64_t result, int a2, int a3)
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

uint64_t sub_258A57260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258A580B0(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A580D8(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = sub_258B01004();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  sub_258A5886C(0);
  sub_258A574DC(v2, &v11[*(v12 + 44)]);
  LOBYTE(v2) = sub_258B018D4();
  sub_258B00654();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_258A58164(0);
  v22 = &v11[*(v21 + 36)];
  *v22 = v2;
  *(v22 + 1) = v14;
  *(v22 + 2) = v16;
  *(v22 + 3) = v18;
  *(v22 + 4) = v20;
  v22[40] = 0;
  LOBYTE(v2) = sub_258B01864();
  sub_258B00654();
  v23 = &v11[*(v9 + 44)];
  *v23 = v2;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_258B02504();
  sub_258B00C94();
  sub_2589B09B4(v11, v7);
  v28 = &v7[*(v5 + 44)];
  v29 = v40[5];
  *(v28 + 4) = v40[4];
  *(v28 + 5) = v29;
  *(v28 + 6) = v40[6];
  v30 = v40[1];
  *v28 = v40[0];
  *(v28 + 1) = v30;
  v31 = v40[3];
  *(v28 + 2) = v40[2];
  *(v28 + 3) = v31;
  v32 = sub_258B024F4();
  v34 = v33;
  sub_258A58904(0, &qword_27F96F850, sub_258A580B0, sub_258A58978);
  v36 = a1 + *(v35 + 36);
  sub_258A5615C(v36);
  sub_258A58CE8(v11, sub_258A580D8);
  sub_258A58978(0);
  v38 = (v36 + *(v37 + 36));
  *v38 = v32;
  v38[1] = v34;
  return sub_2589B0A18(v7, a1);
}

uint64_t sub_258A574DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  sub_258A58750(0);
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A586EC(0, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v88 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v61 - v8;
  v81 = sub_258B00774();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A58A0C(0, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
  v73 = v10;
  v72 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v71 = &v61 - v11;
  sub_258A58378(0);
  v75 = v12;
  MEMORY[0x28223BE20](v12);
  v74 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A58344(0);
  v77 = v14;
  MEMORY[0x28223BE20](v14);
  v78 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A582C0(0);
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v82 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v61 - v19;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v96 = sub_258AFFD94();
  v97 = v20;
  v68 = *a1;
  v69 = *(a1 + 8);
  v98 = *(a1 + 16);
  v93 = v68;
  v94 = v69;
  v95 = *(a1 + 16);
  sub_258A58C98(0, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  v70 = v21;
  sub_258B02334();
  v66 = *(&v90 + 1);
  v67 = v90;
  v65 = v91;
  v64 = v92;
  v93 = sub_258AFFD94();
  v94 = v22;
  v63 = sub_2589BFF58(v93, v22, v23);
  v24 = sub_258B01B44();
  v26 = v25;
  v28 = v27;
  v29 = [objc_opt_self() secondaryLabelColor];
  v93 = sub_258B01F94();
  sub_258B01AB4();
  sub_2589BFFAC(v24, v26, v28 & 1);

  v30 = v71;
  sub_258B02564();
  v31 = v68;
  v99 = v68;
  v90 = v98;
  v32 = swift_allocObject();
  v33 = *(a1 + 16);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(a1 + 32);
  sub_2589DE784(&v99, &v93);
  v34 = v69;

  sub_2589DE8C8(&v90, &v93);
  sub_258A584BC();
  v35 = v74;
  v36 = v73;
  sub_258B01D74();

  (*(v72 + 8))(v30, v36);
  *(v35 + *(v75 + 36)) = sub_258B014A4();
  v93 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5398);
  sub_258A58C98(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D53B8);
  sub_258A585F0();
  v37 = v78;
  sub_258B01DD4();

  sub_258A58CE8(v35, sub_258A58378);
  v38 = v79;
  sub_258B00764();
  sub_258A58540();
  v39 = v76;
  sub_258B01C14();
  (*(v80 + 8))(v38, v81);
  sub_258A58CE8(v37, sub_258A58344);
  v93 = v31;
  v94 = v34;
  v95 = v98;
  MEMORY[0x259C92900](&v96, v70);
  v41 = v96;
  v40 = v97;

  v42 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v42 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = swift_allocObject();
    v44 = *(a1 + 16);
    *(v43 + 16) = *a1;
    *(v43 + 32) = v44;
    *(v43 + 48) = *(a1 + 32);
    sub_2589DE784(&v99, &v93);

    sub_2589DE8C8(&v90, &v93);
    v45 = v62;
    sub_258B02174();
    v46 = sub_258B02044();
    KeyPath = swift_getKeyPath();
    v48 = v87;
    v49 = (v45 + *(v87 + 36));
    *v49 = KeyPath;
    v49[1] = v46;
    v50 = v85;
    sub_258A58D98(v45, v85);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v48 = v87;
    v50 = v85;
  }

  (*(v86 + 56))(v50, v51, 1, v48);
  v53 = v83;
  v52 = v84;
  v54 = *(v83 + 16);
  v55 = v82;
  v54(v82, v39, v84);
  v56 = v88;
  sub_258A58DFC(v50, v88);
  v57 = v89;
  v54(v89, v55, v52);
  sub_258A58220(0);
  sub_258A58DFC(v56, &v57[*(v58 + 48)]);
  sub_258A58E90(v50);
  v59 = *(v53 + 8);
  v59(v39, v52);
  sub_258A58E90(v56);
  return (v59)(v55, v52);
}

uint64_t sub_258A57F48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v10 = *(a1 + 1);
  v11 = v10;
  v12 = v2;
  v6 = v2;
  v7 = v1;
  v8 = *(a1 + 1);
  sub_2589DE784(&v12, v4);

  sub_2589DE8C8(&v11, v4);
  sub_258A58C98(0, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v9);
  sub_258B02BE4();
  v4[0] = v2;
  v4[1] = v1;
  v5 = v10;
  sub_258B02314();
  sub_258A4A7C8(&v12);

  return sub_2589C68A0(&v11);
}

uint64_t sub_258A58034@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B02084();
  *a1 = result;
  return result;
}

void sub_258A58100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A5818C(uint64_t a1)
{
  if (!qword_27F96F7D0)
  {
    sub_258A586EC(255, &qword_27F96F7D8, sub_258A58220, MEMORY[0x277CE14B8]);
    sub_258A587E4();
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F7D0);
    }
  }
}

void sub_258A58220(uint64_t a1)
{
  if (!qword_27F96F7E0)
  {
    sub_258A582C0(255);
    sub_258A586EC(255, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F7E0);
    }
  }
}

void sub_258A582C0(uint64_t a1)
{
  if (!qword_27F96F7E8)
  {
    sub_258A58344(255);
    sub_258A58540();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F7E8);
    }
  }
}

void sub_258A58378(uint64_t a1)
{
  if (!qword_27F96F7F8)
  {
    sub_258A5840C(255);
    sub_258A58A0C(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F7F8);
    }
  }
}

void sub_258A5840C(uint64_t a1)
{
  if (!qword_27F96F800)
  {
    sub_258A58A0C(255, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_258A584BC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F800);
    }
  }
}

unint64_t sub_258A584BC()
{
  result = qword_27F96F810;
  if (!qword_27F96F810)
  {
    sub_258A58A0C(255, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F810);
  }

  return result;
}

unint64_t sub_258A58540()
{
  result = qword_27F96F818;
  if (!qword_27F96F818)
  {
    sub_258A58344(255);
    sub_258A585F0();
    sub_258A591A0(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F818);
  }

  return result;
}

unint64_t sub_258A585F0()
{
  result = qword_27F96F820;
  if (!qword_27F96F820)
  {
    sub_258A58378(255);
    sub_258A58A0C(255, &qword_27F96F808, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_258A584BC();
    swift_getOpaqueTypeConformance2();
    sub_258A58C10(&qword_27F96F3E8, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F820);
  }

  return result;
}

void sub_258A586EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A58750(uint64_t a1)
{
  if (!qword_27F96F830)
  {
    sub_258A58A0C(255, &qword_27F96F838, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CDF020]);
    sub_2589D3448(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F830);
    }
  }
}

unint64_t sub_258A587E4()
{
  result = qword_27F96F840;
  if (!qword_27F96F840)
  {
    sub_258A586EC(255, &qword_27F96F7D8, sub_258A58220, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F840);
  }

  return result;
}

void sub_258A5886C(uint64_t a1)
{
  if (!qword_27F96F848)
  {
    sub_258A586EC(255, &qword_27F96F7D8, sub_258A58220, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F848);
    }
  }
}

void sub_258A58904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A58978(uint64_t a1)
{
  if (!qword_27F96F858)
  {
    sub_258A58904(255, &qword_27F96F770, sub_258A5637C, type metadata accessor for LoggingFlowBlendMode);
    sub_258A58A60();
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F858);
    }
  }
}

void sub_258A58A0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A58A60()
{
  result = qword_27F96F860;
  if (!qword_27F96F860)
  {
    sub_258A58904(255, &qword_27F96F770, sub_258A5637C, type metadata accessor for LoggingFlowBlendMode);
    sub_258A58B40();
    sub_258A591A0(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode, &unk_258B30A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F860);
  }

  return result;
}

unint64_t sub_258A58B40()
{
  result = qword_27F96F868;
  if (!qword_27F96F868)
  {
    sub_258A5637C(255);
    sub_258A591A0(&qword_27F96CA88, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_258A58C10(&qword_27F96C930, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F868);
  }

  return result;
}

uint64_t sub_258A58C10(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258A58A0C(255, a2, a3, a4, MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A58C98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A58CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_13()
{

  return swift_deallocObject();
}

uint64_t sub_258A58D98(uint64_t a1, uint64_t a2)
{
  sub_258A58750(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A58DFC(uint64_t a1, uint64_t a2)
{
  sub_258A586EC(0, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A58E90(uint64_t a1)
{
  sub_258A586EC(0, &qword_27F96F828, sub_258A58750, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258A58F1C()
{
  result = qword_27F96F870;
  if (!qword_27F96F870)
  {
    sub_258A58904(255, &qword_27F96F850, sub_258A580B0, sub_258A58978);
    sub_258A59070(&qword_27F96F878, sub_258A580B0, sub_258A59034, MEMORY[0x277CDFC60]);
    sub_258A591A0(&qword_27F96F898, sub_258A58978, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F870);
  }

  return result;
}

uint64_t sub_258A59070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A590F0()
{
  result = qword_27F96F888;
  if (!qword_27F96F888)
  {
    sub_258A58164(255);
    sub_258A591A0(&qword_27F96F890, sub_258A5818C, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F888);
  }

  return result;
}

uint64_t sub_258A591A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_258A59204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_258A5924C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258A592D0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  sub_258A5AF2C(0);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A155A0(0);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5AFC4(0);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1;
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v47 = v10;
  v48 = v11;
  v34 = sub_2589BFF58(v8, v12, v13);
  sub_258B003E4();
  v14 = MEMORY[0x277D837D0];
  v15 = sub_258B01B44();
  v17 = v16;
  v47 = v15;
  v48 = v16;
  v19 = v18 & 1;
  v49 = v18 & 1;
  v50 = v20;
  *&v46 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D53C8);
  sub_258A5B850(0, &qword_280DF8948, v14, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v15, v17, v19);

  v21 = v35;
  v22 = *(v35 + 88);
  v47 = *(v35 + 80);
  v48 = v22;
  sub_258B003E4();
  v23 = sub_258B01B44();
  v25 = v24;
  v47 = v23;
  v48 = v24;
  v27 = v26 & 1;
  v49 = v26 & 1;
  v50 = v28;
  *&v46 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5408);
  sub_258B02A34();

  swift_arrayDestroy();
  v29 = v36;
  sub_258B01DD4();
  sub_2589BFFAC(v23, v25, v27);

  v30 = &v29[*(v37 + 36)];
  sub_258A5B580(0, &qword_27F96F8A8, MEMORY[0x277CDFCA0], MEMORY[0x277CE0860]);
  sub_258B00CD4();
  *v30 = swift_getKeyPath();
  v45 = v21;
  sub_258A5B580(0, &qword_27F96F8B8, sub_258A5B074, MEMORY[0x277CE14B8]);
  sub_258A5B2D4();
  sub_258A5B6C0();
  sub_258A5B748();
  v31 = v38;
  sub_258B02414();
  v46 = *(v21 + 16);
  sub_258A5B850(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v44 = v21;
  sub_258A5B8C4();
  v32 = v40;
  sub_258B01E64();

  return (*(v41 + 8))(v31, v32);
}

uint64_t sub_258A59814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  sub_258A5B47C(0);
  v91 = v3;
  v90 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v89 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v95 = &v76 - v6;
  sub_258A5B1E4(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5B160(0);
  v85 = v11;
  v96 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v76 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5B0F8(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v87 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v76 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v76 - v19;
  MEMORY[0x28223BE20](v18);
  v97 = &v76 - v20;
  v21 = *(a1 + 8);
  v86 = *a1;
  v93 = type metadata accessor for NotificationSettingsModel(0);
  v22 = sub_258A5B434(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
  v77 = v21;
  v23 = sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v99 = a1;
  sub_258A155A0(0);
  v84 = v24;
  v83 = sub_258A5B2D4();
  sub_258B022A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v25 = v101;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = &v10[v8[9]];
  *v28 = KeyPath;
  v28[1] = sub_2589E1658;
  v28[2] = v27;
  v29 = swift_allocObject();
  v30 = *(a1 + 48);
  v29[3] = *(a1 + 32);
  v29[4] = v30;
  v31 = *(a1 + 80);
  v29[5] = *(a1 + 64);
  v29[6] = v31;
  v32 = *(a1 + 16);
  v29[1] = *a1;
  v29[2] = v32;
  sub_258A36BA0(a1, &v101);
  v33 = sub_258A5B384();
  sub_258B01C34();

  v82 = sub_258A5B1E4;
  sub_258A5BC14(v10, sub_258A5B1E4);
  v101 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5448);
  sub_258A5B850(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v81 = v34;
  v80 = sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  v101 = v8;
  v102 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v85;
  v36 = v76;
  sub_258B01DD4();

  v37 = v96[1];
  ++v96;
  v78 = v37;
  v37(v36, v35);
  v38 = v77;
  v39 = sub_258B00A34();
  swift_getKeyPath();
  v86 = v22;
  sub_258B00A44();

  v98 = a1;
  sub_258B022A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v40 = v101;
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  v43 = &v10[v8[9]];
  *v43 = v41;
  v43[1] = sub_258A5BC78;
  v43[2] = v42;
  v44 = swift_allocObject();
  v45 = *(a1 + 48);
  v44[3] = *(a1 + 32);
  v44[4] = v45;
  v46 = *(a1 + 80);
  v44[5] = *(a1 + 64);
  v44[6] = v46;
  v47 = *(a1 + 16);
  v44[1] = *a1;
  v44[2] = v47;
  sub_258A36BA0(a1, &v101);
  sub_258B01C34();

  sub_258A5BC14(v10, v82);
  v101 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5488);
  sub_258B02A34();

  swift_arrayDestroy();
  v48 = v92;
  sub_258B01DD4();

  v78(v36, v35);
  v49 = [*&v38[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager] customReminderSchedule];
  sub_258A5B5E4();
  sub_258B02C74();

  v50 = sub_258B003E4();
  v101 = sub_2589F3A2C(v50);
  sub_2589F2550(&v101);

  *&v100 = v101;
  swift_getKeyPath();
  v51 = swift_allocObject();
  v52 = *(a1 + 48);
  v51[3] = *(a1 + 32);
  v51[4] = v52;
  v53 = *(a1 + 80);
  v51[5] = *(a1 + 64);
  v51[6] = v53;
  v54 = *(a1 + 16);
  v51[1] = *a1;
  v51[2] = v54;
  sub_258A36BA0(a1, &v101);
  sub_258A5B580(0, &qword_27F96D8C0, sub_258A5B5E4, MEMORY[0x277D83940]);
  type metadata accessor for CustomReminderRow(0);
  sub_258A5B630();
  sub_258A5B434(&qword_27F96F910, sub_258A5B5E4, MEMORY[0x277D85378]);
  sub_258A5B434(&qword_27F96F938, type metadata accessor for CustomReminderRow, &unk_258B2C874);
  v55 = v95;
  sub_258B023B4();
  v100 = *(a1 + 16);
  sub_258A5B850(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v96 = v101;
  v85 = v102;
  LOBYTE(v38) = v103;
  v93 = sub_258B00A24();
  v86 = v56;
  LOBYTE(v100) = 0;
  sub_258B02114();
  LOBYTE(v36) = v101;
  v57 = v102;
  v58 = v94;
  sub_2589B0ACC(v97, v94);
  v59 = v87;
  sub_2589B0ACC(v48, v87);
  v60 = v90;
  v61 = *(v90 + 16);
  v62 = v89;
  v63 = v55;
  v64 = v91;
  v61(v89, v63, v91);
  LOBYTE(v101) = v38;
  LOBYTE(v100) = v36;
  v65 = v88;
  sub_2589B0ACC(v58, v88);
  sub_258A5B074(0);
  v67 = v66;
  sub_2589B0ACC(v59, v65 + *(v66 + 48));
  v61((v65 + *(v67 + 64)), v62, v64);
  v68 = v65 + *(v67 + 80);
  v69 = v101;
  v70 = v100;
  *v68 = v93;
  v71 = v86;
  v72 = v96;
  *(v68 + 8) = v86;
  *(v68 + 16) = v72;
  *(v68 + 24) = v85;
  *(v68 + 32) = v69;
  *(v68 + 40) = v70;
  *(v68 + 48) = v57;
  v73 = *(v60 + 8);
  v74 = v71;

  v73(v95, v64);
  sub_2589B0B30(v92);
  sub_2589B0B30(v97);

  v73(v62, v64);
  sub_2589B0B30(v59);
  return sub_2589B0B30(v94);
}

uint64_t sub_258A5A498(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1[6];
  sub_2589BFF58(a1, a2, a3);
  sub_258B003E4();
  v3 = sub_258B01B44();
  v5 = v4;
  v7 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v14 == 1)
  {
    sub_258B014B4();
  }

  else
  {
    sub_258B014A4();
  }

  v8 = sub_258B01AB4();
  v10 = v9;
  v12 = v11;
  sub_2589BFFAC(v3, v5, v7 & 1);

  sub_2589FC8C8(&unk_2869D54C8);
  sub_258A5B850(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v8, v10, v12 & 1);
}

uint64_t sub_258A5A6C0(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1[8];
  sub_2589BFF58(a1, a2, a3);
  sub_258B003E4();
  v3 = sub_258B01B44();
  v5 = v4;
  v7 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v14 == 1)
  {
    sub_258B014B4();
  }

  else
  {
    sub_258B014A4();
  }

  v8 = sub_258B01AB4();
  v10 = v9;
  v12 = v11;
  sub_2589BFFAC(v3, v5, v7 & 1);

  sub_2589FC8C8(&unk_2869D5508);
  sub_258A5B850(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v8, v10, v12 & 1);
}

uint64_t sub_258A5A8E8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v2 == 1)
  {
    sub_258A5B850(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    return sub_258B02134();
  }

  return result;
}

uint64_t sub_258A5A9B4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CustomReminderModel(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13];
  v15 = *a1;
  v16 = v15;
  sub_258A2A268(v15, v14);
  v17 = *(a2 + 8);
  sub_258A2A6F8(v14, v12);
  type metadata accessor for NotificationSettingsModel(0);
  sub_258A5B434(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
  v18 = v17;
  *a3 = sub_258B00A24();
  a3[1] = v19;
  v20 = type metadata accessor for CustomReminderRow(0);
  sub_258A2A6F8(v12, v9);
  sub_258B02114();
  sub_258A5BC14(v12, type metadata accessor for CustomReminderModel);
  v21 = a3 + *(v20 + 24);
  v24[15] = 0;
  sub_258B02114();
  result = sub_258A5BC14(v14, type metadata accessor for CustomReminderModel);
  v23 = v25;
  *v21 = v24[16];
  *(v21 + 1) = v23;
  return result;
}

uint64_t sub_258A5AB8C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_258B01F64();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v41 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v40 = v35 - v4;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v5 = sub_258AFFD94();
  v7 = v6;
  v8 = sub_258AFFD94();
  v10 = v9;
  v11 = sub_258AFFD94();
  v13 = v12;
  v14 = sub_258AFFD94();
  v16 = v15;
  v43 = v5;
  v44 = v7;
  sub_2589BFF58(v14, v15, v17);
  v18 = sub_258B01B44();
  v38 = v19;
  v39 = v18;
  v36 = v20;
  v37 = v21;
  v43 = v8;
  v44 = v10;
  v22 = sub_258B01B44();
  v35[2] = v23;
  v35[3] = v22;
  v35[0] = v24 & 1;
  v35[1] = v25;
  v43 = v11;
  v44 = v13;
  v26 = sub_258B01B44();
  v28 = v27;
  LOBYTE(v8) = v29;
  sub_258B01F54();
  sub_2589BFFAC(v26, v28, v8 & 1);

  v43 = v14;
  v44 = v16;
  v30 = sub_258B01B44();
  v32 = v31;
  LOBYTE(v16) = v33;
  sub_258B01F44();
  sub_2589BFFAC(v30, v32, v16 & 1);

  return sub_258B01F34();
}

void sub_258A5AF2C(uint64_t a1)
{
  if (!qword_27F96F8A0)
  {
    sub_258A155A0(255);
    sub_258A5B580(255, &qword_27F96F8A8, MEMORY[0x277CDFCA0], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F8A0);
    }
  }
}

void sub_258A5AFC4(uint64_t a1)
{
  if (!qword_27F96F8B0)
  {
    sub_258A155A0(255);
    sub_258A5B580(255, &qword_27F96F8B8, sub_258A5B074, MEMORY[0x277CE14B8]);
    sub_258A5AF2C(255);
    v1 = sub_258B02444();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F8B0);
    }
  }
}

void sub_258A5B074(uint64_t a1)
{
  if (!qword_27F96F8C0)
  {
    sub_258A5B0F8(255);
    sub_258A5B47C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96F8C0);
    }
  }
}

void sub_258A5B0F8(uint64_t a1)
{
  if (!qword_27F96F8C8)
  {
    sub_258A5B160(255);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F8C8);
    }
  }
}

void sub_258A5B160(uint64_t a1)
{
  if (!qword_27F96F8D0)
  {
    sub_258A5B1E4(255);
    sub_258A5B384();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F8D0);
    }
  }
}

void sub_258A5B1E4(uint64_t a1)
{
  if (!qword_27F96F8D8)
  {
    sub_258A5B270(255);
    sub_258A5B850(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F8D8);
    }
  }
}

void sub_258A5B270(uint64_t a1)
{
  if (!qword_27F96F8E0)
  {
    sub_258A155A0(255);
    sub_258A5B2D4();
    v1 = sub_258B022C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F8E0);
    }
  }
}

unint64_t sub_258A5B2D4()
{
  result = qword_27F96F8E8;
  if (!qword_27F96F8E8)
  {
    sub_258A155A0(255);
    sub_258A5B434(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F8E8);
  }

  return result;
}

unint64_t sub_258A5B384()
{
  result = qword_27F96F8F0;
  if (!qword_27F96F8F0)
  {
    sub_258A5B1E4(255);
    sub_258A5B434(&qword_27F96F8F8, sub_258A5B270, MEMORY[0x277CDF068]);
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F8F0);
  }

  return result;
}

uint64_t sub_258A5B434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A5B47C(uint64_t a1)
{
  if (!qword_27F96F900)
  {
    sub_258A5B580(255, &qword_27F96D8C0, sub_258A5B5E4, MEMORY[0x277D83940]);
    sub_258A5B5E4();
    type metadata accessor for CustomReminderRow(255);
    sub_258A5B630();
    sub_258A5B434(&qword_27F96F910, sub_258A5B5E4, MEMORY[0x277D85378]);
    v1 = sub_258B023D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F900);
    }
  }
}

void sub_258A5B580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A5B5E4()
{
  result = qword_280DF8920;
  if (!qword_280DF8920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF8920);
  }

  return result;
}

unint64_t sub_258A5B630()
{
  result = qword_27F96F908;
  if (!qword_27F96F908)
  {
    sub_258A5B580(255, &qword_27F96D8C0, sub_258A5B5E4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F908);
  }

  return result;
}

unint64_t sub_258A5B6C0()
{
  result = qword_27F96F918;
  if (!qword_27F96F918)
  {
    sub_258A5B580(255, &qword_27F96F8B8, sub_258A5B074, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F918);
  }

  return result;
}

unint64_t sub_258A5B748()
{
  result = qword_27F96F920;
  if (!qword_27F96F920)
  {
    sub_258A5AF2C(255);
    sub_258A5B2D4();
    sub_258A5B7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F920);
  }

  return result;
}

unint64_t sub_258A5B7C8()
{
  result = qword_27F96F928;
  if (!qword_27F96F928)
  {
    sub_258A5B580(255, &qword_27F96F8A8, MEMORY[0x277CDFCA0], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F928);
  }

  return result;
}

void sub_258A5B850(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A5B8C4()
{
  result = qword_27F96F930;
  if (!qword_27F96F930)
  {
    sub_258A5AFC4(255);
    sub_258A5B2D4();
    sub_258A5B6C0();
    sub_258A5B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F930);
  }

  return result;
}

uint64_t sub_258A5B958@<X0>(uint64_t a2@<X8>)
{
  swift_getObjectType();
  sub_258A5B434(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
  v3 = sub_258B00A24();
  v16 = v4;
  v17 = v3;
  sub_258B02114();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v15 = sub_258AFFD94();
  v6 = v5;
  v7 = sub_258AFFD94();
  v9 = v8;
  v10 = sub_258AFFD94();
  v12 = v11;
  result = sub_258AFFD94();
  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v15;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v12;
  *(a2 + 80) = result;
  *(a2 + 88) = v14;
  return result;
}

uint64_t objectdestroy_19Tm()
{

  return swift_deallocObject();
}

uint64_t sub_258A5BC14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ReflectiveIntervalPicker_iOS(uint64_t a1)
{
  result = qword_27F96F940;
  if (!qword_27F96F940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A5BCF0(uint64_t a1)
{
  sub_258A5D1FC(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_258A5D1FC(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258A5D1FC(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A5BE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for ReflectiveIntervalPicker_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_258A5C934(0);
  v37 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5C8CC(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v40 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v39 = v31 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v38 = v31 - v15;
  MEMORY[0x28223BE20](v14);
  v32 = v31 - v16;
  v33 = a1;
  v36 = type metadata accessor for ReflectiveIntervalPicker_iOS;
  sub_258A5D194(a1, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReflectiveIntervalPicker_iOS);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_258A5CE08(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v44 = a1;
  v35 = type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  v34 = sub_258A5CD0C(&qword_27F96F978, type metadata accessor for ReflectiveIntervalPickerButtonView, &unk_258B353F4);
  sub_258B02174();
  v45 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5548);
  sub_2589FCE08();
  v31[2] = v19;
  v31[1] = sub_258A5CD0C(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A5CD0C(&qword_27F96F9A0, sub_258A5C934, MEMORY[0x277CDF028]);
  v20 = v37;
  sub_258B01DD4();

  v21 = *(v42 + 8);
  v42 += 8;
  v21(v8, v20);
  v22 = v33;
  sub_258A5D194(v33, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
  v23 = swift_allocObject();
  sub_258A5CE08(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v17);
  v43 = v22;
  sub_258B02174();
  v45 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5588);
  sub_258B02A34();

  swift_arrayDestroy();
  v24 = v38;
  sub_258B01DD4();

  v21(v8, v20);
  v25 = v32;
  v26 = v39;
  sub_258A5D194(v32, v39, sub_258A5C8CC);
  v27 = v40;
  sub_258A5D194(v24, v40, sub_258A5C8CC);
  v28 = v41;
  sub_258A5D194(v26, v41, sub_258A5C8CC);
  sub_258A5C868(0);
  sub_258A5D194(v27, v28 + *(v29 + 48), sub_258A5C8CC);
  sub_258A5CDA8(v24, sub_258A5C8CC);
  sub_258A5CDA8(v25, sub_258A5C8CC);
  sub_258A5CDA8(v27, sub_258A5C8CC);
  return sub_258A5CDA8(v26, sub_258A5C8CC);
}

uint64_t sub_258A5C47C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x277CE11F8];
  sub_258A5D1FC(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  sub_258B02334();
  type metadata accessor for ReflectiveIntervalPicker_iOS(0);
  v6 = type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], v5);
  sub_258B02334();
  *(a3 + *(v6 + 32)) = swift_getKeyPath();
  v7 = MEMORY[0x277CDF458];
  sub_258A5D1FC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *a3 = a2;
  *(a3 + 8) = v10;
  *(a3 + 24) = v11;
  v8 = *(v6 + 28);
  *(a3 + v8) = swift_getKeyPath();
  sub_258A5D1FC(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v7);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A5C634()
{
  v1 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5C7D4(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC1BC4(v3);
  sub_258A5CDA8(v3, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  *v6 = sub_258B01194();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  sub_258A5CC74(0);
  sub_258A5BE38(v0, &v6[*(v7 + 44)]);
  v8 = sub_258A5CD0C(&qword_27F96F990, sub_258A5C7D4, MEMORY[0x277CE1198]);
  sub_258A5CD54(v8, v9, v10);
  sub_258B01BD4();
  return sub_258A5CDA8(v6, sub_258A5C7D4);
}

void sub_258A5C7D4(uint64_t a1)
{
  if (!qword_27F96F950)
  {
    sub_258A5D1FC(255, &qword_27F96F958, sub_258A5C868, MEMORY[0x277CE14B8]);
    sub_258A5C9C8();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F950);
    }
  }
}

void sub_258A5C868(uint64_t a1)
{
  if (!qword_27F96F960)
  {
    sub_258A5C8CC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F960);
    }
  }
}

void sub_258A5C8CC(uint64_t a1)
{
  if (!qword_27F96F968)
  {
    sub_258A5C934(255);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F968);
    }
  }
}

void sub_258A5C934(uint64_t a1)
{
  if (!qword_27F96F970)
  {
    type metadata accessor for ReflectiveIntervalPickerButtonView(255);
    sub_258A5CD0C(&qword_27F96F978, type metadata accessor for ReflectiveIntervalPickerButtonView, &unk_258B353F4);
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F970);
    }
  }
}

unint64_t sub_258A5C9C8()
{
  result = qword_27F96F980;
  if (!qword_27F96F980)
  {
    sub_258A5D1FC(255, &qword_27F96F958, sub_258A5C868, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F980);
  }

  return result;
}

uint64_t sub_258A5CA50(uint64_t a1)
{
  v2 = sub_258B01814();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_258B017E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B017F4();
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_258A5CD0C(&qword_27F96F9A8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  sub_258B01C34();

  return (*(v6 + 8))(v8, v5);
}

void sub_258A5CC74(uint64_t a1)
{
  if (!qword_27F96F988)
  {
    sub_258A5D1FC(255, &qword_27F96F958, sub_258A5C868, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F988);
    }
  }
}

uint64_t sub_258A5CD0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258A5CD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F998;
  if (!qword_27F96F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F998);
  }

  return result;
}

uint64_t sub_258A5CDA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A5CE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReflectiveIntervalPicker_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for ReflectiveIntervalPicker_iOS(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];

  sub_258A5D1FC(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v5 = *(v4 + 32);
  v6 = sub_258B00084();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v2 + v1[8];
  sub_258A5D1FC(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_258B01504();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v7, 1, v8))
    {
      (*(v9 + 8))(v7, v8);
    }

    v10 = *(type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0) + 20);
    v11 = sub_258B00AA4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A5D194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A5D1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A5D300(void *a1)
{
  sub_258B02B14();
  sub_258B00084();

  return sub_258B02EE4();
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(presenter:healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v14[OBJC_IVAR____TtC14MentalHealthUI37StateOfMindTimelinePresentingCalendar_healthStore] = a2;
  (*(v11 + 16))(v13, a3, v10);
  objc_allocWithZone(type metadata accessor for StateOfMindCalendarViewController(0));
  v15 = a2;
  v16 = sub_258ADCEE8(v15, v13, a4);
  v21.receiver = v14;
  v21.super_class = v5;
  v17 = objc_msgSendSuper2(&v21, sel_initWithRootViewController_, v16);

  (*(v11 + 8))(a3, v10);
  v18 = &v16[qword_27F97AC38];
  swift_beginAccess();
  *(v18 + 1) = &protocol witness table for StateOfMindTimelinePresentingCalendar;
  swift_unknownObjectWeakAssign();

  return v17;
}

id StateOfMindTimelinePresentingCalendar.init(presenter:healthStore:dateToFocusOn:verticalSizeClass:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC14MentalHealthUI37StateOfMindTimelinePresentingCalendar_healthStore] = a2;
  (*(v11 + 16))(v13, a3, v10);
  objc_allocWithZone(type metadata accessor for StateOfMindCalendarViewController(0));
  v14 = a2;
  v15 = sub_258ADCEE8(v14, v13, a4);
  v16 = type metadata accessor for StateOfMindTimelinePresentingCalendar();
  v21.receiver = v5;
  v21.super_class = v16;
  v17 = objc_msgSendSuper2(&v21, sel_initWithRootViewController_, v15);

  (*(v11 + 8))(a3, v10);
  v18 = &v15[qword_27F97AC38];
  swift_beginAccess();
  *(v18 + 1) = &protocol witness table for StateOfMindTimelinePresentingCalendar;
  swift_unknownObjectWeakAssign();

  return v17;
}

uint64_t sub_258A5D770(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = v3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v37 - v9);
  v11 = sub_258B00084();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_258B00384();
  v15 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v18 = *(v12 + 16);
  v42 = a2;
  v18(v14, a2, v11);
  v19 = sub_258B00374();
  v20 = sub_258B02EA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a1;
    v22 = v21;
    v37 = swift_slowAlloc();
    v44 = v37;
    *v22 = 136446466;
    v23 = sub_258B035A4();
    v25 = sub_2589F1F78(v23, v24, &v44);
    ObjectType = v10;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_2589F8654(&qword_27F96D970, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v27 = sub_258B03414();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v30 = sub_2589F1F78(v27, v29, &v44);
    v10 = ObjectType;

    *(v22 + 14) = v30;
    _os_log_impl(&dword_2589A1000, v19, v20, "[%{public}s] Presenting timeline for date: %{public}s", v22, 0x16u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v31, -1, -1);
    v32 = v22;
    a1 = v38;
    MEMORY[0x259C945C0](v32, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  (*(v15 + 8))(v17, v40);
  _s14MentalHealthUI19StateOfMindTimelineO5ModelC05buildgH03day11healthStoreAE10Foundation4DateV_So08HKHealthL0CtFZ_0(v42, *(v41 + OBJC_IVAR____TtC14MentalHealthUI37StateOfMindTimelinePresentingCalendar_healthStore));

  StateOfMindTimeline.EntryFullView.init(model:)(v10);
  sub_258A5DE84(v10, v43);
  sub_2589F8560(0);
  v34 = objc_allocWithZone(v33);
  v35 = sub_258B011C4();
  [a1 presentViewController:v35 animated:1 completion:0];

  return sub_258A5DEE8(v10);
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id StateOfMindTimelinePresentingCalendar.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_258B02AD4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StateOfMindTimelinePresentingCalendar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindTimelinePresentingCalendar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258A5DE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A5DEE8(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ValenceSelectionPhaseContent(uint64_t a1)
{
  result = qword_27F96F9C0;
  if (!qword_27F96F9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A5E018(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_258B008E4();
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        sub_258A6578C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258A6578C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_258A6578C(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              v7 = MEMORY[0x277D839B0];
              sub_258A65890(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v8 <= 0x3F)
              {
                sub_258A65890(319, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
                if (v9 <= 0x3F)
                {
                  sub_258A6578C(319, &qword_27F96F9D8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
                  if (v10 <= 0x3F)
                  {
                    sub_258A65890(319, &qword_27F971C90, v7, MEMORY[0x277CE11F8]);
                    if (v11 <= 0x3F)
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
}

double sub_258A5E2AC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v4 = v3 - 8;
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = v5;
  v54 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A671CC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v48 = v70;
  v49 = v69;
  v50 = v71;
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v45 = v67;
  v46 = v66;
  v47 = v68;
  v6 = *(v4 + 56);
  v53 = v1;
  v7 = (v1 + v6);
  v8 = *(v1 + v6 + 48);
  v63 = *(v1 + v6 + 32);
  v64 = v8;
  v65 = *(v1 + v6 + 64);
  v9 = *(v1 + v6 + 16);
  v61 = *(v1 + v6);
  v62 = v9;
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v10 = sub_258AA9E90();
  v43 = v11;
  v44 = v10;
  v12 = v7[3];
  v63 = v7[2];
  v64 = v12;
  v65 = *(v7 + 8);
  v13 = v7[1];
  v61 = *v7;
  v62 = v13;
  sub_258B02124();
  v14 = v56;
  v15 = v57;
  v16 = v58;
  v17 = v59;
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  v22 = CGRectGetHeight(v60);
  v55 = 1.0;
  if (v22 != 0.0)
  {
    v72.origin.x = v14;
    v72.origin.y = v15;
    v72.size.width = v16;
    v72.size.height = v17;
    if (CGRectGetWidth(v72) != 0.0)
    {
      v73.origin.x = v14;
      v73.origin.y = v15;
      v73.size.width = v16;
      v73.size.height = v17;
      if (CGRectGetHeight(v73) != 0.0)
      {
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        v23 = CGRectGetHeight(v74);
        v75.origin.x = v14;
        v75.origin.y = v15;
        v75.size.width = v16;
        v75.size.height = v17;
        v24 = CGRectGetWidth(v75);
        v76.origin.x = v14;
        v76.origin.y = v15;
        v76.size.width = v16;
        v76.size.height = v17;
        v25 = CGRectGetHeight(v76);
        if (v25 >= v24)
        {
          v25 = v24;
        }

        v55 = v23 * 1.5 / v25;
      }
    }
  }

  KeyPath = swift_getKeyPath();
  LOBYTE(v56) = 0;
  sub_258B02114();
  v41 = v61;
  v26 = *(&v61 + 1);
  LOBYTE(v56) = 0;
  sub_258B02114();
  v27 = v61;
  v28 = *(&v61 + 1);
  LOBYTE(v56) = 1;
  sub_258B02114();
  v29 = v61;
  v30 = *(&v61 + 1);
  LOBYTE(v61) = 0;
  v31 = v54;
  sub_258A65724(v53, v54, type metadata accessor for ValenceSelectionPhaseContent);
  v32 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v33 = swift_allocObject();
  sub_258A65954(v31, v33 + v32, type metadata accessor for ValenceSelectionPhaseContent);
  *a1 = KeyPath;
  *(a1 + 8) = v61;
  *(a1 + 16) = v41;
  *(a1 + 24) = v26;
  *(a1 + 32) = v27;
  *(a1 + 40) = v28;
  *(a1 + 48) = v29;
  v34 = v48;
  v35 = v49;
  *(a1 + 56) = v30;
  *(a1 + 64) = v35;
  *(a1 + 72) = v34;
  *(a1 + 80) = v50;
  v36 = v45;
  *(a1 + 88) = v46;
  *(a1 + 96) = v36;
  v38 = v43;
  v37 = v44;
  *(a1 + 104) = v47;
  *(a1 + 112) = v37;
  result = v55;
  *(a1 + 120) = v38;
  *(a1 + 128) = result;
  *(a1 + 136) = sub_258A67214;
  *(a1 + 144) = 0;
  *(a1 + 152) = sub_258A66A78;
  *(a1 + 160) = v33;
  return result;
}

uint64_t sub_258A5E74C(__int128 *a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for ValenceSelectionPhaseContent(0) + 48));
  v3 = v2[3];
  v13 = v2[2];
  v14 = v3;
  v4 = v2[1];
  v11 = *v2;
  v12 = v4;
  v15 = *(v2 + 8);
  sub_258A6630C(&v11, v16);
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_258B02134();
  v16[2] = v8;
  v16[3] = v9;
  v17 = v10;
  v16[0] = v6;
  v16[1] = v7;
  return sub_258A66394(v16);
}

uint64_t sub_258A5E874@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v48) = a1;
  v52 = a2;
  sub_258A64FE8(0, &qword_27F96DDD8, MEMORY[0x277CDE470], &type metadata for StateOfMindVisualization.ValenceImage);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v46 - v4;
  sub_258A04CCC(0);
  v51 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  sub_258A666B8(0, &qword_27F96FB60, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0330]);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  if (*(*(v2 + 8) + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization) == 1)
  {
    sub_258AC1B90(&v46 - v19);
    sub_258A66A18(v20, type metadata accessor for ValenceSelectionPhaseSpecs);
    if (*(v2 + *(v13 + 56)))
    {
      v21 = 82.0;
    }

    else
    {
      v21 = 122.0;
    }

    sub_258AC1B90(v18);
    sub_258B008C4();
    v23 = v22;
    sub_258A66A18(v18, type metadata accessor for ValenceSelectionPhaseSpecs);
    if ((v23 + 76.0) * 0.67 > v21)
    {
      v24 = (v23 + 76.0) * 0.67;
    }

    else
    {
      v24 = v21;
    }

    v25 = sub_258B02004();
    sub_258B024F4();
    if (v21 > v24)
    {
      sub_258B02E94();
      v26 = sub_258B01824();
      sub_258B00354();
    }

    sub_258B00C94();
    *&v53[54] = v58;
    *&v53[70] = v59;
    *&v53[86] = v60;
    *&v53[102] = v61;
    *&v53[6] = v55;
    *&v53[22] = v56;
    LOBYTE(v54) = 0;
    *&v53[38] = v57;
    sub_258A65724(v2, &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ValenceSelectionPhaseContent);
    v27 = (*(v46 + 80) + 17) & ~*(v46 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v48 & 1;
    sub_258A65954(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ValenceSelectionPhaseContent);
    v29 = *&v53[80];
    *(v12 + 82) = *&v53[64];
    *(v12 + 98) = v29;
    *(v12 + 114) = *&v53[96];
    v30 = *&v53[16];
    *(v12 + 18) = *v53;
    *(v12 + 34) = v30;
    v31 = *&v53[48];
    *(v12 + 50) = *&v53[32];
    *v12 = v25;
    *(v12 + 1) = 0x3FF0000000000000;
    *(v12 + 8) = 0;
    v32 = *&v53[110];
    *(v12 + 66) = v31;
    *(v12 + 16) = v32;
    *(v12 + 17) = sub_258A67214;
    *(v12 + 18) = 0;
    *(v12 + 19) = sub_258A66298;
    *(v12 + 20) = v28;
    swift_storeEnumTagMultiPayload();
    sub_258A04B14(0);
    sub_258A65C78();
    sub_258A66870(&qword_27F96FB90, sub_258A04CCC, sub_258A65E1C, MEMORY[0x277CDFC60]);
    return sub_258B012A4();
  }

  else
  {
    v48 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    LOBYTE(v54) = 1;
    StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v54, &v55, *&v55);
    v54 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D55C8);
    sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589C6824();
    sub_258B02A34();

    v34 = sub_2589C68A0(&unk_2869D55E8);
    sub_2589DC7D8(v34, v35, v36);
    v37 = v47;
    sub_258B01DD4();

    sub_258AC1B90(v18);
    sub_258B008C4();
    sub_258A66A18(v18, type metadata accessor for ValenceSelectionPhaseSpecs);
    sub_258B024F4();
    sub_258B00C94();
    v38 = v49;
    sub_258A65BF0(v37, v49);
    v39 = (v38 + *(v51 + 36));
    v40 = v58;
    v41 = v60;
    v42 = v61;
    v39[4] = v59;
    v39[5] = v41;
    v39[6] = v42;
    v43 = v56;
    v44 = v57;
    *v39 = v55;
    v39[1] = v43;
    v39[2] = v44;
    v39[3] = v40;
    v45 = v48;
    sub_258A65954(v38, v48, sub_258A04CCC);
    sub_258A65724(v45, v12, sub_258A04CCC);
    swift_storeEnumTagMultiPayload();
    sub_258A04B14(0);
    sub_258A65C78();
    sub_258A66870(&qword_27F96FB90, sub_258A04CCC, sub_258A65E1C, MEMORY[0x277CDFC60]);
    sub_258B012A4();
    return sub_258A66A18(v45, sub_258A04CCC);
  }
}

uint64_t sub_258A5F1C4@<X0>(double *a1@<X8>)
{
  v2 = sub_258B012F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0xD000000000000022;
  v15[1] = 0x8000000258B37C70;
  sub_258B01524();
  sub_258B008D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_258A5F304(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v3 = (a3 + *(type metadata accessor for ValenceSelectionPhaseContent(0) + 48));
    v4 = v3[3];
    v14 = v3[2];
    v15 = v4;
    v5 = v3[1];
    v12 = *v3;
    v13 = v5;
    v16 = *(v3 + 8);
    sub_258A6630C(&v12, v17);
    sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
    sub_258B02124();
    v9 = v14;
    v10 = v15;
    v11 = v16;
    v7 = v12;
    v8 = v13;
    sub_258B02134();
    v17[2] = v9;
    v17[3] = v10;
    v18 = v11;
    v17[0] = v7;
    v17[1] = v8;
    return sub_258A66394(v17);
  }

  return v6;
}

uint64_t sub_258A5F434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v95 = a3;
  sub_258A6525C(0);
  v94 = v5;
  v92 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v84 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589DE168(0, v7, v8, v9);
  v85 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v83 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v73 - v13;
  sub_258A65228(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v93 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = &v73 - v17;
  sub_258A666B8(0, &qword_27F96FB38, sub_258A64CD0, sub_258A64E98, MEMORY[0x277CE0330]);
  v87 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  v81 = sub_258B01314();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_258B024B4();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64D84(0);
  v24 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64CD0(0);
  v88 = v27;
  v80 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v78 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A047B0(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64E98(0);
  v86 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64C88(0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v90 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v89 = &v73 - v38;
  *v31 = sub_258B01194();
  *(v31 + 1) = 0;
  v31[16] = 0;
  sub_258A6673C(0, &qword_27F96FB40, sub_258A64EC0, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258A60070(a1, v3, &v31[*(v39 + 44)]);
  v99 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v100 = &off_2869D7E28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v97);
  v41 = type metadata accessor for ValenceSelectionPhaseContent(0);
  sub_258AC1B90(boxed_opaque_existential_1);
  sub_258A02F04(v34);
  sub_258A66A18(v31, sub_258A047B0);
  __swift_destroy_boxed_opaque_existential_1(&v97);
  if (v3 & 1) != 0 || (*(a1 + *(v41 + 24)))
  {
    sub_258A65724(v34, v20, sub_258A64E98);
    v42 = 1;
    swift_storeEnumTagMultiPayload();
    v43 = sub_258A671CC(&qword_27F96FAB8, sub_258A64D84, &unk_258B305B0);
    v97 = v24;
    v98 = v43;
    swift_getOpaqueTypeConformance2();
    sub_258A66870(&qword_27F96FA90, sub_258A64E98, sub_258A65100, MEMORY[0x277CDFC60]);
    v44 = v89;
    sub_258B012A4();
    sub_258A66A18(v34, sub_258A64E98);
    v45 = v91;
    if (v3)
    {
      v46 = v82;
      sub_258A61F40(a1, v82);
      v47 = *(v85 + 36);
      *(v46 + v47) = swift_getKeyPath();
      sub_258A6578C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v48 = v83;
      sub_258A656BC(v46, v83, sub_2589DE168);
      v49 = v84;
      *v84 = 0;
      *(v49 + 8) = 0;
      sub_258A65290(0, v50, v51, v52);
      sub_258A656BC(v48, v49 + *(v53 + 48), sub_2589DE168);
      sub_258A66810(v46, sub_2589DE168);
      sub_258A66810(v48, sub_2589DE168);
      sub_258A667A8(v49, v45, sub_258A6525C);
      v42 = 0;
    }
  }

  else
  {
    v54 = v74;
    sub_258B024A4();
    v55 = v75;
    v56 = v76;
    (*(v75 + 16))(&v26[v24[17]], v54, v76);
    *v26 = 1;
    sub_258A65724(v34, &v26[v24[18]], sub_258A64E98);
    v57 = &v26[v24[19]];
    sub_258A61F40(a1, v57);
    v58 = *(v85 + 36);
    *(v57 + v58) = swift_getKeyPath();
    sub_258A6578C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v59 = &v26[v24[20]];
    v96 = 0;
    sub_258B02114();
    v60 = v98;
    *v59 = v97;
    v59[1] = v60;
    v61 = &v26[v24[21]];
    v96 = 0;
    sub_258B02114();
    (*(v55 + 8))(v54, v56);
    v62 = v98;
    *v61 = v97;
    v61[1] = v62;
    v63 = v77;
    sub_258B01304();
    LOBYTE(v61) = sub_258B01854();
    sub_258B01844();
    sub_258B01844();
    if (sub_258B01844() != v61)
    {
      sub_258B01844();
    }

    v64 = sub_258A671CC(&qword_27F96FAB8, sub_258A64D84, &unk_258B305B0);
    v65 = v78;
    sub_258B01D94();
    (*(v79 + 8))(v63, v81);
    sub_258A66810(v26, sub_258A64D84);
    v66 = v80;
    v67 = v88;
    (*(v80 + 16))(v20, v65, v88);
    swift_storeEnumTagMultiPayload();
    v97 = v24;
    v98 = v64;
    swift_getOpaqueTypeConformance2();
    sub_258A66870(&qword_27F96FA90, sub_258A64E98, sub_258A65100, MEMORY[0x277CDFC60]);
    v44 = v89;
    sub_258B012A4();
    (*(v66 + 8))(v65, v67);
    sub_258A66A18(v34, sub_258A64E98);
    v42 = 1;
    v45 = v91;
  }

  (*(v92 + 56))(v45, v42, 1, v94);
  v68 = v90;
  sub_258A656BC(v44, v90, sub_258A64C88);
  v69 = v93;
  sub_258A656BC(v45, v93, sub_258A65228);
  v70 = v95;
  sub_258A656BC(v68, v95, sub_258A64C88);
  sub_258A64BD8(0);
  sub_258A656BC(v69, v70 + *(v71 + 48), sub_258A65228);
  sub_258A66810(v45, sub_258A65228);
  sub_258A66810(v44, sub_258A64C88);
  sub_258A66810(v69, sub_258A65228);
  return sub_258A66810(v68, sub_258A64C88);
}

id sub_258A60070@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v220 = a2;
  v230 = a1;
  v204 = a3;
  sub_258A04FBC(0);
  v198 = v3;
  MEMORY[0x28223BE20](v3);
  v200 = (&v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x277CDE470];
  v6 = MEMORY[0x277CDFAB8];
  sub_258A666B8(0, &qword_27F96DE10, sub_258A04FBC, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  MEMORY[0x28223BE20](v7 - 8);
  v197 = &v186 - v8;
  sub_258A6504C(0);
  v199 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v203 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v196 = &v186 - v13;
  MEMORY[0x28223BE20](v12);
  v202 = &v186 - v14;
  v15 = MEMORY[0x277CDFC70];
  sub_258A649C0(0, &qword_27F96DE00, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, MEMORY[0x277CDFC70]);
  v227 = v16;
  MEMORY[0x28223BE20](v16);
  v228 = &v186 - v17;
  v18 = MEMORY[0x277CDF928];
  sub_258A64F18(0, &qword_27F96DDF8, &qword_27F96DE00, v15, MEMORY[0x277CDF928]);
  v192 = v19;
  MEMORY[0x28223BE20](v19);
  v194 = &v186 - v20;
  sub_258A04E30(0);
  v193 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v201 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v191 = &v186 - v25;
  MEMORY[0x28223BE20](v24);
  v234 = &v186 - v26;
  v27 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v219 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v221 = v28;
  v222 = &v186 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A666B8(0, &qword_27F96DDA0, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v29 - 8);
  v213 = &v186 - v30;
  sub_258A04A70(0);
  v214 = v31;
  MEMORY[0x28223BE20](v31);
  v218 = &v186 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64FA0(0);
  v217 = v33;
  v34 = MEMORY[0x28223BE20](v33);
  v195 = &v186 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v216 = &v186 - v37;
  MEMORY[0x28223BE20](v36);
  v236 = &v186 - v38;
  v187 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v39 = MEMORY[0x28223BE20](v187);
  v190 = &v186 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v231 = &v186 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v215 = &v186 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v209 = &v186 - v46;
  MEMORY[0x28223BE20](v45);
  v229 = &v186 - v47;
  v48 = type metadata accessor for ValenceSelectionTitleText(0);
  v49 = MEMORY[0x28223BE20](v48);
  v224 = (&v186 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v49);
  v52 = &v186 - v51;
  sub_258A666B8(0, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, v5, v6);
  v54 = MEMORY[0x28223BE20](v53 - 8);
  v225 = &v186 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v57 = &v186 - v56;
  sub_258A649C0(0, &qword_27F96DD80, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, v18);
  v205 = v58;
  MEMORY[0x28223BE20](v58);
  v208 = &v186 - v59;
  sub_258A64EF4(0);
  v207 = v60;
  v61 = MEMORY[0x28223BE20](v60);
  v232 = &v186 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v206 = &v186 - v64;
  MEMORY[0x28223BE20](v63);
  v235 = &v186 - v65;
  v66 = v230;
  v67 = sub_258A619DC();
  v68 = v27;
  LODWORD(v27) = *(v66 + *(v27 + 56));
  *v52 = v67;
  *(v52 + 1) = v69;
  v52[16] = v27;
  v70 = *(v48 + 24);
  *&v52[v70] = swift_getKeyPath();
  sub_258A6578C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  v233 = v71;
  swift_storeEnumTagMultiPayload();
  *&v244 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D55F8);
  sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v73 = v72;
  v74 = sub_2589C6824();
  v212 = v73;
  v211 = v74;
  sub_258B02A34();

  v75 = v57;
  v76 = v229;
  sub_2589C68A0(&unk_2869D5618);
  v77 = sub_258A671CC(&qword_27F96FB48, type metadata accessor for ValenceSelectionTitleText, &unk_258B306BC);
  v223 = v48;
  v210 = v77;
  sub_258B01DD4();

  sub_258A66A18(v52, type metadata accessor for ValenceSelectionTitleText);
  v78 = sub_258B01884();
  v79 = v68[8];
  v80 = v66;
  sub_258AC1B90(v76);
  v226 = v27;
  if (v27 == 1)
  {
    sub_258A66A18(v76, type metadata accessor for ValenceSelectionPhaseSpecs);
    v229 = 0x4020000000000000;
    v81 = v213;
    goto LABEL_9;
  }

  v82 = v68;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v84 = result;
  homeButtonType = MobileGestalt_get_homeButtonType();

  v81 = v213;
  if (homeButtonType == 2)
  {
    v86 = sub_258B00A84();
    sub_258A66A18(v76, type metadata accessor for ValenceSelectionPhaseSpecs);
    v68 = v82;
    if ((v86 & 1) == 0)
    {
      v229 = 0x403E000000000000;
      goto LABEL_9;
    }
  }

  else
  {
    sub_258A66A18(v76, type metadata accessor for ValenceSelectionPhaseSpecs);
    v68 = v82;
  }

  v229 = 0x403E000000000000;
LABEL_9:
  sub_258B00654();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v75;
  v96 = v208;
  sub_258A658E0(v95, v208, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v97 = v96 + *(v205 + 36);
  *v97 = v78;
  *(v97 + 8) = v88;
  *(v97 + 16) = v90;
  *(v97 + 24) = v92;
  *(v97 + 32) = v94;
  *(v97 + 40) = 0;
  v98 = (v66 + v68[11]);
  v99 = *v98;
  v100 = *(v98 + 1);
  LODWORD(v213) = v99;
  LOBYTE(v244) = v99;
  v189 = v100;
  *(&v244 + 1) = v100;
  sub_258A65890(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v205 = v101;
  sub_258B02124();
  if (v241)
  {
    v102 = 1.0;
  }

  else
  {
    v102 = 0.0;
  }

  v103 = v206;
  sub_258A65A30(v96, v206, &qword_27F96DD80, MEMORY[0x277CDF928]);
  *(v103 + *(v207 + 36)) = v102;
  sub_258A65954(v103, v235, sub_258A64EF4);
  v104 = v209;
  sub_258AC1B90(v209);
  sub_258A66A18(v104, type metadata accessor for ValenceSelectionPhaseSpecs);
  v105 = v220;
  v106 = v220 & 1;
  sub_258A5E874(v220 & 1, v81);
  if ((v105 & 1) == 0)
  {
    v107 = (v66 + v68[13]);
    v108 = *v107;
    v109 = v107[1];
    v110 = v107[2];
    *&v244 = *v107;
    *(&v244 + 1) = v109;
    *&v245 = v110;
    sub_258A6578C(0, &qword_27F96F9D8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
    sub_258B02124();
    if (*&v241 != 0.0)
    {
      *&v244 = v108;
      *(&v244 + 1) = v109;
      *&v245 = v110;
      sub_258B02124();
    }

    *&v244 = v108;
    *(&v244 + 1) = v109;
    *&v245 = v110;
    sub_258B02124();
    if (*(&v241 + 1) != 0.0)
    {
      *&v244 = v108;
      *(&v244 + 1) = v109;
      *&v245 = v110;
      sub_258B02124();
    }

    v66 = v80;
  }

  sub_258B024F4();
  sub_258B00854();
  v111 = v218;
  sub_258A658E0(v81, v218, &qword_27F96DDA0, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0338]);
  v112 = (v111 + *(v214 + 36));
  v113 = v242;
  *v112 = v241;
  v112[1] = v113;
  v112[2] = v243;
  v114 = v222;
  sub_258A65724(v66, v222, type metadata accessor for ValenceSelectionPhaseContent);
  v115 = (*(v219 + 80) + 17) & ~*(v219 + 80);
  v116 = swift_allocObject();
  *(v116 + 16) = v106;
  sub_258A65954(v114, v116 + v115, type metadata accessor for ValenceSelectionPhaseContent);
  v117 = v216;
  sub_258A65954(v111, v216, sub_258A04A70);
  v118 = (v117 + *(v217 + 36));
  *v118 = sub_258A61E6C;
  v118[1] = 0;
  v118[2] = sub_258A659BC;
  v118[3] = v116;
  sub_258A65954(v117, v236, sub_258A64FA0);
  v119 = v215;
  sub_258AC1B90(v215);
  sub_258A66A18(v119, type metadata accessor for ValenceSelectionPhaseSpecs);
  v120 = *(v66 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v230 = v120;
  sub_258B00564();

  sub_258B03084();
  v121 = HKUILocalizedStringForValenceClassification();
  v122 = sub_258B02B14();
  v124 = v123;

  v125 = v224;
  *v224 = v122;
  *(v125 + 8) = v124;
  v126 = v226;
  *(v125 + 16) = v226;
  v127 = *(v223 + 24);
  *(v125 + v127) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v244 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5628);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5648);
  v128 = v225;
  sub_258B01DD4();

  sub_258A66A18(v125, type metadata accessor for ValenceSelectionTitleText);
  sub_258B024F4();
  sub_258B00C94();
  v129 = v228;
  sub_258A658E0(v128, v228, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v130 = (v129 + *(v227 + 36));
  v131 = v249;
  v130[4] = v248;
  v130[5] = v131;
  v130[6] = v250;
  v132 = v245;
  *v130 = v244;
  v130[1] = v132;
  v133 = v247;
  v130[2] = v246;
  v130[3] = v133;
  v134 = sub_258B01894();
  v135 = v231;
  sub_258AC1B90(v231);
  v188 = v79;
  if (v126)
  {
    v136 = v189;
    sub_258A66A18(v135, type metadata accessor for ValenceSelectionPhaseSpecs);
    goto LABEL_24;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v137 = result;
  v138 = MobileGestalt_get_homeButtonType();

  v136 = v189;
  if (v138 == 2)
  {
    v139 = v231;
    sub_258B00A84();
    sub_258A66A18(v139, type metadata accessor for ValenceSelectionPhaseSpecs);
  }

  else
  {
    sub_258A66A18(v231, type metadata accessor for ValenceSelectionPhaseSpecs);
  }

LABEL_24:
  sub_258B00654();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v148 = v194;
  sub_258A65A30(v129, v194, &qword_27F96DE00, MEMORY[0x277CDFC70]);
  v149 = v148 + *(v192 + 36);
  *v149 = v134;
  *(v149 + 8) = v141;
  *(v149 + 16) = v143;
  *(v149 + 24) = v145;
  *(v149 + 32) = v147;
  *(v149 + 40) = 0;
  v150 = v213;
  LOBYTE(v237) = v213;
  v238 = v136;
  sub_258B02124();
  v151 = 0.0;
  if (v240)
  {
    v152 = 1.0;
  }

  else
  {
    v152 = 0.0;
  }

  v153 = v191;
  sub_258A65ABC(v148, v191);
  *(v153 + *(v193 + 36)) = v152;
  sub_258A65954(v153, v234, sub_258A04E30);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A671CC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v154 = v238;
  v155 = v239;
  v156 = v200;
  *v200 = v237;
  *(v156 + 8) = v154;
  *(v156 + 16) = v155;
  *(v156 + 24) = v126;
  v157 = *(type metadata accessor for ValenceSlider(0) + 24);
  *(v156 + v157) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v158 = sub_258B01894();
  v159 = v190;
  sub_258AC1B90(v190);
  sub_258A66A18(v159, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v160 = v156 + *(v198 + 36);
  *v160 = v158;
  *(v160 + 8) = v161;
  *(v160 + 16) = v162;
  *(v160 + 24) = v163;
  *(v160 + 32) = v164;
  *(v160 + 40) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258B03084();
  v165 = HKUILocalizedStringForValenceClassification();
  v166 = sub_258B02B14();
  v168 = v167;

  v237 = v166;
  v238 = v168;
  v169 = sub_258A65B40();
  sub_2589BFF58(v169, v170, v171);
  v172 = v197;
  sub_258B01D44();

  sub_258A66A18(v156, sub_258A04FBC);
  LOBYTE(v237) = v150;
  v238 = v136;
  sub_258B02124();
  if (v240)
  {
    v151 = 1.0;
  }

  v173 = v196;
  sub_258A658E0(v172, v196, &qword_27F96DE10, sub_258A04FBC, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  *(v173 + *(v199 + 36)) = v151;
  v174 = v202;
  sub_258A65954(v173, v202, sub_258A6504C);
  v175 = v232;
  sub_258A65724(v235, v232, sub_258A64EF4);
  v176 = v195;
  sub_258A65724(v236, v195, sub_258A64FA0);
  v177 = v201;
  sub_258A65724(v234, v201, sub_258A04E30);
  v178 = v203;
  sub_258A65724(v174, v203, sub_258A6504C);
  v179 = v175;
  v180 = v204;
  sub_258A65724(v179, v204, sub_258A64EF4);
  sub_258A048A8(0);
  v182 = v181;
  v183 = v180 + v181[12];
  v184 = v229;
  *v183 = v229;
  *(v183 + 8) = 0;
  sub_258A65724(v176, v180 + v181[16], sub_258A64FA0);
  v185 = v180 + v182[20];
  *v185 = v184;
  *(v185 + 8) = 0;
  sub_258A65724(v177, v180 + v182[24], sub_258A04E30);
  sub_258A65724(v178, v180 + v182[28], sub_258A6504C);
  sub_258A66A18(v174, sub_258A6504C);
  sub_258A66A18(v234, sub_258A04E30);
  sub_258A66A18(v236, sub_258A64FA0);
  sub_258A66A18(v235, sub_258A64EF4);
  sub_258A66A18(v178, sub_258A6504C);
  sub_258A66A18(v177, sub_258A04E30);
  sub_258A66A18(v176, sub_258A64FA0);
  return sub_258A66A18(v232, sub_258A64EF4);
}

uint64_t sub_258A619DC()
{
  v0 = sub_258B00224();
  v15 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258B00084();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v16 != 2)
  {
    if (v16 != 1)
    {
      return 0;
    }

    sub_258B00044();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    sub_258AFFFF4();
    v11 = v10;
    v12 = *(v4 + 8);
    v12(v7, v3);
    v12(v9, v3);
    if (v11 <= 180.0)
    {
      if (qword_27F96C240 == -1)
      {
        return sub_258AFFD94();
      }
    }

    else if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_14;
  }

  type metadata accessor for ValenceSelectionPhaseContent(0);
  sub_258AC1BF8(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v13 = sub_258B00124();
  (*(v4 + 8))(v9, v3);
  (*(v15 + 8))(v2, v0);
  if (v13)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_14;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_14:
    swift_once();
  }

  return sub_258AFFD94();
}

void sub_258A61E6C(void *a2@<X8>)
{
  sub_258B008C4();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t *sub_258A61E98(uint64_t *result, char a2, uint64_t a3)
{
  if (a2)
  {
    type metadata accessor for ValenceSelectionPhaseContent(0);
    sub_258A6578C(0, &qword_27F96F9D8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
    return sub_258B02134();
  }

  return v3;
}

uint64_t sub_258A61F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_258B00AA4();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v46);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5AFC(0);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DE234(0, v12, v13, v14);
  v39 = v15;
  v38 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A671CC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v48 = v54;
  v49 = v55;
  v50 = v56[0];
  sub_258B02374();
  v44 = v51;
  v17 = v52;
  v18 = v53;
  v56[3] = v46;
  v56[4] = &off_2869D7E28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  sub_258AC1B90(boxed_opaque_existential_1);
  sub_258A65724(a1, v11, type metadata accessor for ValenceSelectionPhaseContent);
  v20 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v21 = v47;
  v22 = swift_allocObject();
  sub_258A65954(v11, v22 + v20, type metadata accessor for ValenceSelectionPhaseContent);
  v57 = v44;
  v58 = v17;
  v59 = v18;
  v54 = sub_258A657F0;
  v55 = v22;
  v60 = sub_258A626D0;
  v61 = 0;
  sub_258AC1B90(v21);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    sub_258A66A18(v21, type metadata accessor for ValenceSelectionPhaseSpecs);
    v26 = v43;
    v27 = MEMORY[0x277CDF998];
    if (homeButtonType != 2)
    {
      v27 = MEMORY[0x277CDF988];
    }

    v28 = v42;
    (*(v43 + 104))(v42, *v27, v3);
    (*(v26 + 32))(v8, v28, v3);
    sub_258A671CC(&qword_27F96D048, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_258B02AA4();
    if (result)
    {
      sub_258A65320(0, &qword_27F96D2B8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], type metadata accessor for ActionButton);
      v30 = v29;
      v31 = sub_258A6507C();
      v32 = sub_258A671CC(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
      v33 = v37;
      v34 = v40;
      sub_258B01C84();
      sub_258A66A18(v8, sub_2589D5AFC);
      sub_258A65808(&v54);
      v54 = &unk_2869D4670;
      sub_2589FC8C8(&unk_2869D5658);
      sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2589C6824();
      sub_258B02A34();

      sub_2589C68A0(&unk_2869D5678);
      v54 = v30;
      v55 = v34;
      v56[0] = v31;
      v56[1] = v32;
      swift_getOpaqueTypeConformance2();
      v35 = v39;
      sub_258B01DD4();

      return (*(v38 + 8))(v33, v35);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_258A62628(uint64_t a1)
{
  v2 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v3 = (a1 + *(v2 + 60));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  sub_258A65890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v7);
  if ((v7 & 1) == 0)
  {
    return (*(a1 + *(v2 + 28)))(result);
  }

  return result;
}

uint64_t sub_258A626D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v8 = sub_258AFFD94();
  sub_2589BFF58(v8, v2, v3);
  result = sub_258B01B44();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

void sub_258A62794(uint64_t a1@<X8>)
{
  v12 = MEMORY[0x277CDE470];
  v13 = a1;
  v2 = MEMORY[0x277CDFAB8];
  sub_258A666B8(0, &qword_27F96FA40, sub_258A64A54, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_258A5E2AC(v17);
  v19[8] = v17[8];
  v19[9] = v17[9];
  *&v19[10] = v18;
  v19[4] = v17[4];
  v19[5] = v17[5];
  v19[6] = v17[6];
  v19[7] = v17[7];
  v19[0] = v17[0];
  v19[1] = v17[1];
  v19[2] = v17[2];
  v19[3] = v17[3];
  sub_258B024F4();
  sub_258B00C94();
  memcpy(v16, v19, sizeof(v16));
  memcpy(v15, v19, sizeof(v15));
  v14 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5688);
  sub_258A65890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D56A8);
  sub_258A64A54(0);
  sub_258A66870(&qword_27F96FBE8, sub_258A64A54, sub_258A668F0, MEMORY[0x277CDFC60]);
  sub_258B01DD4();
  sub_258A66A18(v16, sub_258A64A54);

  v6 = (v1 + *(type metadata accessor for ValenceSelectionPhaseContent(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v15[0]) = v7;
  v15[1] = v8;
  sub_258A65890(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v14)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = v13;
  sub_258A658E0(v5, v13, &qword_27F96FA40, sub_258A64A54, v12, v2);
  sub_258A649C0(0, &qword_27F96FA38, &qword_27F96FA40, sub_258A64A54, MEMORY[0x277CDF910]);
  *(v10 + *(v11 + 36)) = v9;
}

void sub_258A62AF4(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v4 = v3 - 8;
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = v5;
  v65 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64B10(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v57 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  sub_258A64934(0);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  sub_258A647A4(0);
  v58 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (&v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A6477C(0);
  v59 = v27;
  MEMORY[0x28223BE20](v27);
  v61 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v26 = sub_258B024F4();
  v26[1] = v29;
  sub_258A62794(v23);
  v30 = sub_258B00B44();
  v31 = sub_258B01874();
  v32 = &v23[*(v18 + 44)];
  *v32 = v30;
  v32[8] = v31;
  *v8 = sub_258B01194();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258A5F434(v2, 0, &v8[*(v33 + 44)]);
  v34 = sub_258B00B54();
  v35 = *(v4 + 64);
  v64 = v2;
  if (*(v2 + v35) == 1)
  {
    v36 = sub_258B018B4();
  }

  else
  {
    v36 = sub_258B01894();
  }

  v37 = v36;
  sub_258A6673C(0, &qword_27F96FBE0, sub_258A648CC, MEMORY[0x277CDF7C8], MEMORY[0x277CDF7C0]);
  v39 = v26 + *(v38 + 44);
  sub_258A667A8(v8, v14, sub_258A64B10);
  v40 = &v14[*(v57 + 36)];
  *v40 = v34;
  v40[8] = v37;
  sub_258A667A8(v14, v16, sub_258A64AE8);
  sub_258A65724(v23, v21, sub_258A64934);
  v41 = v60;
  sub_258A656BC(v16, v60, sub_258A64AE8);
  sub_258A65724(v21, v39, sub_258A64934);
  sub_258A64900(0);
  sub_258A656BC(v41, v39 + *(v42 + 48), sub_258A64AE8);
  sub_258A66810(v16, sub_258A64AE8);
  sub_258A66A18(v23, sub_258A64934);
  sub_258A66810(v41, sub_258A64AE8);
  sub_258A66A18(v21, sub_258A64934);
  v43 = (v26 + *(v58 + 36));
  *v43 = 0xD000000000000022;
  v43[1] = 0x8000000258B37C70;
  sub_258B024F4();
  sub_258B00C94();
  v44 = v61;
  sub_258A667A8(v26, v61, sub_258A647A4);
  v45 = (v44 + *(v59 + 36));
  v46 = v75;
  v45[4] = v74;
  v45[5] = v46;
  v45[6] = v76;
  v47 = v71;
  *v45 = v70;
  v45[1] = v47;
  v48 = v73;
  v45[2] = v72;
  v45[3] = v48;
  v49 = v65;
  sub_258A65724(v64, v65, type metadata accessor for ValenceSelectionPhaseContent);
  v50 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v51 = swift_allocObject();
  sub_258A65954(v49, v51 + v50, type metadata accessor for ValenceSelectionPhaseContent);
  v67 = 0;
  sub_258B02114();
  LOBYTE(v50) = v68;
  v52 = v69;
  v53 = v44;
  v54 = v66;
  sub_258A667A8(v53, v66, sub_258A6477C);
  sub_258A652F8(0);
  v56 = v54 + *(v55 + 36);
  *v56 = sub_258A66AE8;
  *(v56 + 8) = v51;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
}

id sub_258A63184(uint64_t a1)
{
  v2 = sub_258B01664();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC1B90(v11);
  sub_258A66A18(v11, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B02514();
  v16 = a1;
  sub_258A65724(a1, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ValenceSelectionPhaseContent);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_258A65954(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for ValenceSelectionPhaseContent);
  sub_258B01654();
  sub_258B00994();

  (*(v3 + 8))(v5, v2);
  sub_258A66F50();
  return [swift_getObjCClassFromMetadata() setAnimationsEnabled_];
}

uint64_t sub_258A63434(uint64_t a1)
{
  type metadata accessor for ValenceSelectionPhaseContent(0);
  sub_258A65890(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A634C8(uint64_t a1)
{
  type metadata accessor for ValenceSelectionPhaseContent(0);
  sub_258A65890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258A63550@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  sub_258A652F8(0);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A666B8(0, &qword_27F96FBD8, sub_258A6477C, sub_258A652F8, MEMORY[0x277CE0330]);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = v61 - v7;
  sub_258A64B10(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v64 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v68 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = v61 - v16;
  MEMORY[0x28223BE20](v15);
  v67 = v61 - v17;
  sub_258A64934(0);
  v19 = v18;
  v20 = MEMORY[0x28223BE20](v18);
  v66 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v61 - v22;
  sub_258A647A4(0);
  v65 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A6477C(0);
  v28 = v27;
  v29 = MEMORY[0x28223BE20](v27);
  v69 = v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v70 = v61 - v31;
  v32 = type metadata accessor for ValenceSelectionPhaseContent(0);
  if (*(v1 + *(v32 + 24)) == 1)
  {
    v33 = v32;
    v61[1] = v6;
    v62 = v8;
    *v26 = sub_258B024F4();
    v26[1] = v34;
    sub_258A62794(v23);
    v35 = sub_258B00B44();
    v36 = sub_258B01874();
    v37 = &v23[*(v19 + 36)];
    *v37 = v35;
    v37[8] = v36;
    *v11 = sub_258B01194();
    *(v11 + 1) = 0;
    v11[16] = 0;
    sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
    sub_258A5F434(v1, 0, &v11[*(v38 + 44)]);
    v39 = sub_258B00B54();
    if (*(v1 + *(v33 + 56)) == 1)
    {
      v40 = sub_258B018B4();
    }

    else
    {
      v40 = sub_258B01894();
    }

    v43 = v40;
    sub_258A6673C(0, &qword_27F96FBE0, sub_258A648CC, MEMORY[0x277CDF7C8], MEMORY[0x277CDF7C0]);
    v45 = v26 + *(v44 + 44);
    v46 = v63;
    sub_258A667A8(v11, v63, sub_258A64B10);
    v47 = v46 + *(v64 + 36);
    *v47 = v39;
    *(v47 + 8) = v43;
    v48 = v46;
    v49 = v67;
    sub_258A667A8(v48, v67, sub_258A64AE8);
    v50 = v66;
    sub_258A65724(v23, v66, sub_258A64934);
    v51 = v68;
    sub_258A656BC(v49, v68, sub_258A64AE8);
    sub_258A65724(v50, v45, sub_258A64934);
    sub_258A64900(0);
    sub_258A656BC(v51, v45 + *(v52 + 48), sub_258A64AE8);
    sub_258A66810(v49, sub_258A64AE8);
    sub_258A66A18(v23, sub_258A64934);
    sub_258A66810(v51, sub_258A64AE8);
    sub_258A66A18(v50, sub_258A64934);
    v53 = (v26 + *(v65 + 36));
    *v53 = 0xD000000000000022;
    v53[1] = 0x8000000258B37C70;
    sub_258B024F4();
    sub_258B00C94();
    v54 = v69;
    sub_258A667A8(v26, v69, sub_258A647A4);
    v55 = (v54 + *(v28 + 36));
    v56 = v78;
    v55[4] = v77;
    v55[5] = v56;
    v55[6] = v79;
    v57 = v74;
    *v55 = v73;
    v55[1] = v57;
    v58 = v76;
    v55[2] = v75;
    v55[3] = v58;
    v59 = v70;
    sub_258A667A8(v54, v70, sub_258A6477C);
    sub_258A656BC(v59, v62, sub_258A6477C);
    swift_storeEnumTagMultiPayload();
    sub_258A66870(&qword_27F96FBB8, sub_258A6477C, sub_258A665C0, MEMORY[0x277CDFC60]);
    sub_258A66670();
    sub_258B012A4();
    v41 = sub_258A6477C;
    v42 = v59;
  }

  else
  {
    sub_258A62AF4(v4);
    sub_258A656BC(v4, v8, sub_258A652F8);
    swift_storeEnumTagMultiPayload();
    sub_258A66870(&qword_27F96FBB8, sub_258A6477C, sub_258A665C0, MEMORY[0x277CDFC60]);
    sub_258A66670();
    sub_258B012A4();
    v41 = sub_258A652F8;
    v42 = v4;
  }

  return sub_258A66810(v42, v41);
}

uint64_t sub_258A63D40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_258A64B10(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v37 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v34 - v10;
  sub_258A666B8(0, &qword_27F96FBA0, sub_258A646EC, sub_258A64AE8, MEMORY[0x277CE0330]);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v34 = sub_258B006A4();
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64734(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A646EC(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1[1] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization) == 1)
  {
    sub_258A63550(v19);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v23 = v39;
    type metadata accessor for ValenceSelectionPhaseContent(0);
    sub_258AC14E8(v16);
    sub_258A9AEC0(v16, v19, v22, v23);
    (*(v14 + 8))(v16, v34);
    sub_258A66810(v19, sub_258A64734);
    sub_258A656BC(v22, v13, sub_258A646EC);
    swift_storeEnumTagMultiPayload();
    sub_258A66414();
    sub_258A654E4();
    sub_258B012A4();
    v24 = sub_258A646EC;
    v25 = v22;
  }

  else
  {
    v26 = v37;
    *v5 = sub_258B01194();
    *(v5 + 1) = 0;
    v5[16] = 0;
    sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
    sub_258A5F434(a1, 0, &v5[*(v27 + 44)]);
    v28 = sub_258B00B54();
    if (*(a1 + *(type metadata accessor for ValenceSelectionPhaseContent(0) + 56)) == 1)
    {
      v29 = sub_258B018B4();
    }

    else
    {
      v29 = sub_258B01894();
    }

    v30 = v29;
    sub_258A667A8(v5, v9, sub_258A64B10);
    v31 = &v9[*(v26 + 36)];
    *v31 = v28;
    v31[8] = v30;
    v32 = v35;
    sub_258A667A8(v9, v35, sub_258A64AE8);
    sub_258A656BC(v32, v13, sub_258A64AE8);
    swift_storeEnumTagMultiPayload();
    sub_258A66414();
    sub_258A654E4();
    sub_258B012A4();
    v24 = sub_258A64AE8;
    v25 = v32;
  }

  return sub_258A66810(v25, v24);
}

uint64_t sub_258A64270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258A64B10(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A64AE8(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A65460(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_258B01194();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_258A6673C(0, &qword_27F96FB28, sub_258A64BA4, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258A5F434(a1, 1, &v6[*(v16 + 44)]);
  v17 = sub_258B00B54();
  if (*(a1 + *(type metadata accessor for ValenceSelectionPhaseContent(0) + 56)) == 1)
  {
    v18 = sub_258B018B4();
  }

  else
  {
    v18 = sub_258B01894();
  }

  v19 = v18;
  sub_258A667A8(v6, v10, sub_258A64B10);
  v20 = &v10[*(v8 + 36)];
  *v20 = v17;
  v20[8] = v19;
  sub_258A65890(0, &qword_27F96FB30, MEMORY[0x277CE08E0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2BE60;
  v22 = sub_258B01834();
  *(inited + 32) = v22;
  v23 = sub_258B01854();
  *(inited + 33) = v23;
  sub_258B01844();
  sub_258B01844();
  if (sub_258B01844() != v22)
  {
    sub_258B01844();
  }

  sub_258B01844();
  if (sub_258B01844() != v23)
  {
    sub_258B01844();
  }

  sub_258B024F4();
  sub_258A654E4();
  sub_258B01DC4();
  sub_258A66810(v10, sub_258A64AE8);
  return (*(v13 + 32))(a2, v15, v12);
}

void sub_258A645A0(uint64_t a1@<X8>)
{
  sub_258A63D40(v1, a1);
  v3 = sub_258B024F4();
  v5 = v4;
  sub_258A666B8(0, &qword_27F96F9E0, sub_258A64650, sub_258A65374, MEMORY[0x277CDFAB8]);
  v7 = a1 + *(v6 + 36);
  sub_258A64270(v1, v7);
  sub_258A65374(0);
  v9 = (v7 + *(v8 + 36));
  *v9 = v3;
  v9[1] = v5;
}

void sub_258A64650(uint64_t a1)
{
  if (!qword_27F96F9E8)
  {
    sub_258A666B8(255, &qword_27F96F9F0, sub_258A646EC, sub_258A64AE8, MEMORY[0x277CE0338]);
    v1 = sub_258B02074();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F9E8);
    }
  }
}

void sub_258A647A4(uint64_t a1)
{
  if (!qword_27F96FA10)
  {
    sub_258A64838(255);
    sub_258A65320(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FA10);
    }
  }
}

void sub_258A64838(uint64_t a1)
{
  if (!qword_27F96FA18)
  {
    sub_258A648CC(255);
    sub_258A671CC(&qword_27F96FAE0, sub_258A648CC, MEMORY[0x277CE14C0]);
    v1 = sub_258B022E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FA18);
    }
  }
}

void sub_258A64934(uint64_t a1)
{
  if (!qword_27F96FA30)
  {
    sub_258A649C0(255, &qword_27F96FA38, &qword_27F96FA40, sub_258A64A54, MEMORY[0x277CDF910]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FA30);
    }
  }
}

void sub_258A649C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_258A666B8(255, a3, a4, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A64A84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_258A64FE8(255, a3, a4, a5);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A64B10(uint64_t a1)
{
  if (!qword_27F96FA60)
  {
    sub_258A64BA4(255);
    sub_258A671CC(&qword_27F96FAD8, sub_258A64BA4, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FA60);
    }
  }
}

void sub_258A64C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258A64CD0(uint64_t a1)
{
  if (!qword_27F96FA80)
  {
    sub_258A64D84(255);
    sub_258A671CC(&qword_27F96FAB8, sub_258A64D84, &unk_258B305B0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FA80);
    }
  }
}

void sub_258A64D84(uint64_t a1)
{
  if (!qword_27F96FA88)
  {
    sub_258A64E98(255);
    v3 = v2;
    sub_2589DE168(255, v4, v5, v6);
    v10[0] = v3;
    v10[1] = v7;
    v10[2] = sub_258B024B4();
    v10[3] = sub_258A66870(&qword_27F96FA90, sub_258A64E98, sub_258A65100, MEMORY[0x277CDFC60]);
    v10[4] = sub_258A671CC(&qword_27F96D2D8, sub_2589DE168, &unk_258B2F290);
    v10[5] = MEMORY[0x277CE1320];
    v8 = type metadata accessor for ScrollableWithPinnedFooter(a1, v10);
    if (!v9)
    {
      atomic_store(v8, &qword_27F96FA88);
    }
  }
}

void sub_258A64F18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_258A649C0(255, a3, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, a4);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A64FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A6507C()
{
  result = qword_27F96D2C0;
  if (!qword_27F96D2C0)
  {
    sub_258A65320(255, &qword_27F96D2B8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], type metadata accessor for ActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D2C0);
  }

  return result;
}

unint64_t sub_258A65178()
{
  result = qword_27F96FAA8;
  if (!qword_27F96FAA8)
  {
    sub_258A04788(255);
    sub_258A671CC(&qword_27F96FAB0, sub_258A047B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FAA8);
  }

  return result;
}

void sub_258A65290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F96FAD0)
  {
    sub_2589DE168(255, a2, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96FAD0);
    }
  }
}

void sub_258A65320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A65374(uint64_t a1)
{
  if (!qword_27F96FAF0)
  {
    sub_258A653FC(255, &qword_27F96FAF8, sub_258A65460, MEMORY[0x277CDDA60]);
    sub_258A65594();
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FAF0);
    }
  }
}

void sub_258A653FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A65460(uint64_t a1)
{
  if (!qword_27F96FB00)
  {
    sub_258A64AE8(255);
    sub_258A654E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FB00);
    }
  }
}

unint64_t sub_258A654E4()
{
  result = qword_27F96FB08;
  if (!qword_27F96FB08)
  {
    sub_258A64AE8(255);
    sub_258A671CC(&qword_27F96FB10, sub_258A64B10, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB08);
  }

  return result;
}

unint64_t sub_258A65594()
{
  result = qword_27F96FB18;
  if (!qword_27F96FB18)
  {
    sub_258A653FC(255, &qword_27F96FAF8, sub_258A65460, MEMORY[0x277CDDA60]);
    sub_258A64AE8(255);
    sub_258A654E4();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_258A65668(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB18);
  }

  return result;
}

unint64_t sub_258A65668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96FB20;
  if (!qword_27F96FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB20);
  }

  return result;
}

uint64_t sub_258A656BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A65724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A6578C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A65808(uint64_t a1)
{
  sub_258A65320(0, &qword_27F96D2B8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], type metadata accessor for ActionButton);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A65890(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A658E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_258A666B8(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_258A65954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_258A659BC(uint64_t *a1)
{
  v3 = *(type metadata accessor for ValenceSelectionPhaseContent(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_258A61E98(a1, v4, v5);
}

uint64_t sub_258A65A30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_258A649C0(0, a3, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_258A65ABC(uint64_t a1, uint64_t a2)
{
  sub_258A64F18(0, &qword_27F96DDF8, &qword_27F96DE00, MEMORY[0x277CDFC70], MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258A65B40()
{
  result = qword_27F96FB50;
  if (!qword_27F96FB50)
  {
    sub_258A04FBC(255);
    sub_258A671CC(&qword_27F96FB58, type metadata accessor for ValenceSlider, &unk_258B2E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB50);
  }

  return result;
}

uint64_t sub_258A65BF0(uint64_t a1, uint64_t a2)
{
  sub_258A64FE8(0, &qword_27F96DDD8, MEMORY[0x277CDE470], &type metadata for StateOfMindVisualization.ValenceImage);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258A65C78()
{
  result = qword_27F96FB68;
  if (!qword_27F96FB68)
  {
    sub_258A04B14(255);
    sub_258A66870(&qword_27F96FB70, sub_258A04B5C, sub_258A65D60, MEMORY[0x277CDFC60]);
    sub_258A671CC(&qword_27F96FB88, sub_258A04C38, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB68);
  }

  return result;
}

unint64_t sub_258A65D9C()
{
  result = qword_27F96FB80;
  if (!qword_27F96FB80)
  {
    sub_258A04BAC(255);
    sub_2589D61E4(v1, v2, v3);
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB80);
  }

  return result;
}

unint64_t sub_258A65E1C()
{
  result = qword_27F96FB98;
  if (!qword_27F96FB98)
  {
    sub_258A64FE8(255, &qword_27F96DDD8, MEMORY[0x277CDE470], &type metadata for StateOfMindVisualization.ValenceImage);
    sub_2589DC7D8(v1, v2, v3);
    sub_258A671CC(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FB98);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_258B008E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[8];
  sub_258A6578C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B01504();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    v8 = *(type metadata accessor for ValenceSelectionPhaseSpecs(0) + 20);
    v9 = sub_258B00AA4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  sub_258A6578C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  sub_258A6578C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B00224();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A66298(uint64_t a1)
{
  v3 = *(type metadata accessor for ValenceSelectionPhaseContent(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_258A5F304(a1, v4, v5);
}

uint64_t sub_258A6630C(uint64_t a1, uint64_t a2)
{
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A66394(uint64_t a1)
{
  sub_258A65890(0, &qword_27F96F9D0, &_s9PlacementVN, MEMORY[0x277CE10B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258A66414()
{
  result = qword_27F96FBA8;
  if (!qword_27F96FBA8)
  {
    sub_258A646EC(255);
    sub_258A66508(&qword_27F96FBB0, sub_258A64734, sub_258A66670, MEMORY[0x277CE0340]);
    sub_258A671CC(qword_27F96DBD0, sub_258A005F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBA8);
  }

  return result;
}

uint64_t sub_258A66508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_258A66870(&qword_27F96FBB8, sub_258A6477C, sub_258A665C0, MEMORY[0x277CDFC60]);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A665C0()
{
  result = qword_27F96FBC0;
  if (!qword_27F96FBC0)
  {
    sub_258A647A4(255);
    sub_258A671CC(&qword_27F96FBC8, sub_258A64838, MEMORY[0x277CE11A8]);
    sub_258A4DA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBC0);
  }

  return result;
}

void sub_258A666B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258A6673C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_258B00974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258A667A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A66810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A66870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A668F0()
{
  result = qword_27F96FBF0;
  if (!qword_27F96FBF0)
  {
    sub_258A64FE8(255, &qword_27F96FA50, sub_258A04C38, &_s4LiveVN);
    sub_258A669C4(v1, v2, v3);
    sub_258A671CC(&qword_27F96FB88, sub_258A04C38, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBF0);
  }

  return result;
}

unint64_t sub_258A669C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96FBF8;
  if (!qword_27F96FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FBF8);
  }

  return result;
}

uint64_t sub_258A66A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A66A78(__int128 *a1)
{
  v3 = *(type metadata accessor for ValenceSelectionPhaseContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258A5E74C(a1, v4);
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_258B008E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[8];
  sub_258A6578C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B01504();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    v8 = *(type metadata accessor for ValenceSelectionPhaseSpecs(0) + 20);
    v9 = sub_258B00AA4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  sub_258A6578C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  sub_258A6578C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B00224();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A66EDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ValenceSelectionPhaseContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_258A66F50()
{
  result = qword_27F96F380;
  if (!qword_27F96F380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96F380);
  }

  return result;
}

unint64_t sub_258A66F9C()
{
  result = qword_27F96FC00;
  if (!qword_27F96FC00)
  {
    sub_258A666B8(255, &qword_27F96F9E0, sub_258A64650, sub_258A65374, MEMORY[0x277CDFAB8]);
    sub_258A67090();
    sub_258A671CC(&qword_27F96FC18, sub_258A65374, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC00);
  }

  return result;
}

unint64_t sub_258A67090()
{
  result = qword_27F96FC08;
  if (!qword_27F96FC08)
  {
    sub_258A64650(255);
    sub_258A67108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC08);
  }

  return result;
}

unint64_t sub_258A67108()
{
  result = qword_27F96FC10;
  if (!qword_27F96FC10)
  {
    sub_258A666B8(255, &qword_27F96F9F0, sub_258A646EC, sub_258A64AE8, MEMORY[0x277CE0338]);
    sub_258A66414();
    sub_258A654E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC10);
  }

  return result;
}

uint64_t sub_258A671CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A67218()
{
  v1 = *v0;
  v2 = v0[1];
  sub_258B031B4();
  MEMORY[0x259C931B0](0xD000000000000051, 0x8000000258B37E90);
  MEMORY[0x259C931B0](v1, v2);
  return 0;
}

unint64_t sub_258A672FC(void *a1)
{
  v3 = v1;
  v5 = sub_258B00384();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 healthDataSource])
  {
    v9 = sub_258AD6068(MEMORY[0x277D84F90]);
    v86 = v9;
    v10 = sub_2589C6E40(v3[16]);
    v11 = MEMORY[0x277D837D0];
    v85 = MEMORY[0x277D837D0];
    *&v84 = v10;
    *(&v84 + 1) = v12;
    sub_258A2D784(&v84, v83);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v9;
    v14 = 0xE400000000000000;
    sub_258AC8BC0(v83, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v15 = v82;
    v16 = v3[17];
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = 1885956947;
      }

      else if (v16 == 4)
      {
        v14 = 0x8000000258B35BF0;
        v17 = 0xD000000000000014;
      }

      else
      {
        v14 = 0x8000000258B35C10;
        v17 = 0xD000000000000015;
      }
    }

    else if (v3[17])
    {
      if (v16 == 1)
      {
        v14 = 0xE600000000000000;
        v17 = 0x6C65636E6143;
      }

      else
      {
        v17 = 1801675074;
      }
    }

    else
    {
      v17 = 1954047310;
    }

    v85 = v11;
    *&v84 = v17;
    *(&v84 + 1) = v14;
    sub_258A2D784(&v84, v83);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v15;
    sub_258AC8BC0(v83, 0x6E6F69746361, 0xE600000000000000, v30);
    v31 = v82;
    v86 = v82;
    if (v3[18] == 13)
    {
      sub_258AC2CE4(0x696F507972746E65, 0xEA0000000000746ELL, &v84);
      sub_258A3F0C0(&v84);
    }

    else
    {
      LOBYTE(v83[0]) = v3[18];
      v32 = StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
      v85 = v11;
      *&v84 = v32;
      *(&v84 + 1) = v33;
      sub_258A2D784(&v84, v83);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v31;
      sub_258AC8BC0(v83, 0x696F507972746E65, 0xEA0000000000746ELL, v34);
      v86 = v82;
    }

    v35 = v3[19];
    if (v35 > 3)
    {
      if (v3[19] > 5u)
      {
        if (v35 != 6)
        {
          sub_258AC2CE4(0x6E616E65766F7270, 0xEA00000000006563, &v84);
          sub_258A3F0C0(&v84);
          v40 = v86;
LABEL_34:
          v81 = v2;
          v41 = v3[20] == 0;
          v42 = 0x7261746E656D6F4DLL;
          if (v3[20])
          {
            v42 = 0x796C696144;
          }

          v43 = 0xE900000000000079;
          v85 = v11;
          if (!v41)
          {
            v43 = 0xE500000000000000;
          }

          *&v84 = v42;
          *(&v84 + 1) = v43;
          sub_258A2D784(&v84, v83);
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v40;
          sub_258AC8BC0(v83, 1701869940, 0xE400000000000000, v44);
          v45 = v82;
          v46 = v3[21];
          v47 = MEMORY[0x277D839B0];
          v85 = MEMORY[0x277D839B0];
          LOBYTE(v84) = v46;
          sub_258A2D784(&v84, v83);
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v45;
          sub_258AC8BC0(v83, 0x6C6562614C736168, 0xE800000000000000, v48);
          v49 = v82;
          v50 = v3[22];
          v85 = v47;
          LOBYTE(v84) = v50;
          sub_258A2D784(&v84, v83);
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v49;
          sub_258AC8BC0(v83, 0x636F737341736168, 0xEE006E6F69746169, v51);
          v52 = v82;
          v53 = v3[23];
          v85 = v47;
          LOBYTE(v84) = v53;
          sub_258A2D784(&v84, v83);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v52;
          sub_258AC8BC0(v83, 0xD000000000000016, 0x8000000258B37DC0, v54);
          v55 = v82;
          v56 = v3[24];
          v85 = v47;
          LOBYTE(v84) = v56;
          sub_258A2D784(&v84, v83);
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v55;
          sub_258AC8BC0(v83, 0xD000000000000010, 0x8000000258B37DE0, v57);
          v58 = v82;
          v86 = v82;
          v59 = sub_258B02B14();
          v61 = v60;
          v62 = HKMHUIActivePairedWatchProductType();
          if (v62)
          {
            v63 = v62;
            v64 = v11;
            v65 = sub_258B02B14();
            v67 = v66;

            v85 = v64;
            if (v67)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v85 = v11;
          }

          v65 = sub_258B02B14();
          v67 = v68;
LABEL_43:
          *&v84 = v65;
          *(&v84 + 1) = v67;
          sub_258A2D784(&v84, v83);
          v69 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v58;
          sub_258AC8BC0(v83, v59, v61, v69);

          v70 = v82;
          v86 = v82;
          v71 = sub_258B02B14();
          v73 = v72;
          v74 = HKMHUIActivePairedWatchBuildVersion();
          if (v74)
          {
            v75 = v74;
            v76 = sub_258B02B14();
            v78 = v77;

            v85 = MEMORY[0x277D837D0];
            if (v78)
            {
LABEL_48:
              *&v84 = v76;
              *(&v84 + 1) = v78;
              sub_258A2D784(&v84, v83);
              v80 = swift_isUniquelyReferenced_nonNull_native();
              v82 = v70;
              sub_258AC8BC0(v83, v71, v73, v80);

              swift_unknownObjectRelease();
              return v82;
            }
          }

          else
          {
            v85 = MEMORY[0x277D837D0];
          }

          v76 = sub_258B02B14();
          v78 = v79;
          goto LABEL_48;
        }

        v36 = 0xE600000000000000;
        v37 = 0x746567646957;
      }

      else if (v35 == 4)
      {
        v36 = 0xEB00000000737365;
        v37 = 0x6E6C7566646E694DLL;
      }

      else
      {
        v36 = 0xE700000000000000;
        v37 = 0x7972616D6D7553;
      }
    }

    else if (v3[19] > 1u)
    {
      if (v35 == 2)
      {
        v36 = 0xE700000000000000;
        v37 = 0x6C616E72756F4ALL;
      }

      else
      {
        v36 = 0xEB000000006E6565;
        v37 = 0x726353206B636F4CLL;
      }
    }

    else if (v3[19])
    {
      v36 = 0xE700000000000000;
      v37 = 0x7373656E746946;
    }

    else
    {
      v36 = 0xEE006D6F6F522065;
      v37 = 0x7079542061746144;
    }

    v85 = v11;
    *&v84 = v37;
    *(&v84 + 1) = v36;
    sub_258A2D784(&v84, v83);
    v38 = v86;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v38;
    sub_258AC8BC0(v83, 0x6E616E65766F7270, 0xEA00000000006563, v39);
    v40 = v82;
    goto LABEL_34;
  }

  sub_258B00364();
  v18 = sub_258B00374();
  v19 = sub_258B02E94();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v84 = v21;
    *v20 = 136446210;
    v22 = sub_258B035A4();
    v24 = sub_2589F1F78(v22, v23, &v84);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_2589A1000, v18, v19, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x259C945C0](v21, -1, -1);
    MEMORY[0x259C945C0](v20, -1, -1);
  }

  v25 = (*(v6 + 8))(v8, v5);
  sub_258A68160(v25, v26, v27);
  swift_allocError();
  *v28 = 0xD000000000000030;
  v28[1] = 0x8000000258B37E50;
  return swift_willThrow();
}

unint64_t sub_258A67BE0(void *a1)
{
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B00084();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 healthDataSource];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for MentalHealthGenericFieldsProvider();
    *(swift_initStackObject() + 16) = v11;
    v41 = sub_258AD6068(MEMORY[0x277D84F90]);
    v12 = sub_258B02B14();
    v14 = v13;
    sub_258B00074();
    v15 = sub_258AB40EC();
    (*(v7 + 8))(v9, v6);
    if (v15)
    {
      v40 = sub_258A681B4();
      *&v39 = v15;
      sub_258A2D784(&v39, v38);
      v16 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v16;
      sub_258AC8BC0(v38, v12, v14, isUniquelyReferenced_nonNull_native);

      v41 = v37;
    }

    else
    {
      sub_258AC2CE4(v12, v14, &v39);

      sub_258A3F0C0(&v39);
    }

    v30 = sub_258B02B14();
    v32 = v31;
    v33 = sub_258AB43D0();
    v40 = MEMORY[0x277D837D0];
    if (!v34)
    {
      v33 = sub_258B02B14();
    }

    *&v39 = v33;
    *(&v39 + 1) = v34;
    sub_258A2D784(&v39, v38);
    v35 = v41;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v35;
    sub_258AC8BC0(v38, v30, v32, v36);

    swift_unknownObjectRelease();
    return v37;
  }

  else
  {
    sub_258B00364();
    v18 = sub_258B00374();
    v19 = sub_258B02E94();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v39 = v21;
      *v20 = 136446210;
      v22 = sub_258B035A4();
      v24 = sub_2589F1F78(v22, v23, &v39);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2589A1000, v18, v19, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x259C945C0](v21, -1, -1);
      MEMORY[0x259C945C0](v20, -1, -1);
    }

    v25 = (*(v3 + 8))(v5, v2);
    sub_258A68160(v25, v26, v27);
    swift_allocError();
    *v28 = 0xD000000000000030;
    v28[1] = 0x8000000258B37E50;
    return swift_willThrow();
  }
}

id sub_258A68034(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_258B029E4();

  return v7;
}

unint64_t sub_258A68160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96FC80;
  if (!qword_27F96FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC80);
  }

  return result;
}

unint64_t sub_258A681B4()
{
  result = qword_27F96F0B0;
  if (!qword_27F96F0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96F0B0);
  }

  return result;
}

uint64_t type metadata accessor for DomainsAndContextEntry(uint64_t a1)
{
  result = qword_27F96FC88;
  if (!qword_27F96FC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A68288(uint64_t a1)
{
  sub_258A68444(319, &qword_27F96E0A8, sub_258A0AFC8, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_258A68444(319, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258A684A8(319, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_258A68444(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258A684A8(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258A68444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A684A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A68514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v15 = a1;
  v3 = type metadata accessor for DomainsAndContextEntry(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v13 = v5;
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B011A4();
  LOBYTE(v16) = 0;
  sub_258A68914(v1, v31);
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v22 = v31[0];
  v23 = v31[1];
  v24 = v32;
  v25 = v33;
  v30[0] = v31[0];
  v30[1] = v31[1];
  v30[2] = v32;
  v30[3] = v33;
  v30[4] = v34;
  v30[5] = v35;
  v30[6] = v36;
  v30[7] = v37;
  sub_258A69878(&v22, &v17, sub_258A69060);
  sub_258A699A4(v30, sub_258A69060);
  *&v21[71] = v26;
  *&v21[87] = v27;
  *&v21[103] = v28;
  *&v21[119] = v29;
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  *&v21[55] = v25;
  v7 = v16;
  sub_258A69878(v2, v6, type metadata accessor for DomainsAndContextEntry);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_258A69224(v6, v9 + v8);
  *(&v18[5] + 1) = *&v21[80];
  *(&v18[6] + 1) = *&v21[96];
  *(&v18[7] + 1) = *&v21[112];
  *(&v18[1] + 1) = *&v21[16];
  *(&v18[2] + 1) = *&v21[32];
  *(&v18[3] + 1) = *&v21[48];
  *(&v18[4] + 1) = *&v21[64];
  v17 = v14;
  LOBYTE(v18[0]) = v7;
  *(v18 + 1) = *v21;
  *&v18[8] = *&v21[127];
  *(&v18[8] + 1) = sub_258A69288;
  v19 = v9;
  v20 = 0;
  *&v31[0] = *(v2 + 8);
  *(v31 + 8) = *(v2 + 16);
  sub_258A68444(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v16);
  v10 = *(v16 + 16);

  LOBYTE(v16) = v10 != 0;
  sub_258A69878(v2, v6, type metadata accessor for DomainsAndContextEntry);
  v11 = swift_allocObject();
  sub_258A69224(v6, v11 + v8);
  sub_258A69594(0, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  sub_258A69694();
  sub_258B01EF4();

  v38 = v18[7];
  v39 = v18[8];
  v40 = v19;
  v41 = v20;
  v34 = v18[3];
  v35 = v18[4];
  v36 = v18[5];
  v37 = v18[6];
  v31[0] = v17;
  v31[1] = v18[0];
  v32 = v18[1];
  v33 = v18[2];
  return sub_258A697C4(v31);
}

uint64_t sub_258A68914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00FD4();
  v41 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v37 - v7;
  v8 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  *&v53[0] = a1[1];
  *(v53 + 8) = *(a1 + 1);
  sub_258A68444(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  v48 = v11;
  sub_258B003E4();
  sub_258B02334();
  v46 = v57;
  v47 = v56;
  v45 = v58;
  v44 = sub_258B01894();
  v12 = a1 + *(type metadata accessor for DomainsAndContextEntry(0) + 40);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v53[0]) = *v12;
  *(&v53[0] + 1) = v14;
  sub_258A684A8(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v56 == 1)
  {
    sub_258AC1B28(v10);
    sub_258A699A4(v10, type metadata accessor for AssociationSelectionPhaseSpecs);
  }

  sub_258B00654();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v67 = 0;
  if (*(a1 + 64) == 1 && (LOBYTE(v53[0]) = v13, *(&v53[0] + 1) = v14, sub_258B02124(), v56 == 1))
  {
    v23 = a1[6];
    v24 = a1[7];
    v53[0] = *(a1 + 2);
    *&v53[1] = v23;
    *(&v53[1] + 1) = v24;
    sub_258A684A8(0, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
    sub_258B02334();
    v25 = v57;
    v38 = v56;
    v26 = v59;
    v42 = a1[9];
    v43 = v58;
    v27 = v40;
    sub_258B00FC4();
    v28 = v41;
    (*(v41 + 16))(v39, v27, v4);
    sub_258A6977C(&qword_27F96FCF0, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v29 = sub_258B00874();
    (*(v28 + 8))(v27, v4);
    v30 = v38;

    sub_258B003E4();
  }

  else
  {
    v30 = 0;
    v25 = 0;
    v42 = 0;
    v43 = 0;
    v26 = 0;
    v29 = 0;
  }

  *&v49 = v48;
  *(&v49 + 1) = v47;
  *&v50 = v46;
  *(&v50 + 1) = v45;
  v31 = v44;
  LOBYTE(v51) = v44;
  *(&v51 + 1) = v68[0];
  DWORD1(v51) = *(v68 + 3);
  *(&v51 + 1) = v16;
  *&v52[0] = v18;
  *(&v52[0] + 1) = v20;
  *&v52[1] = v22;
  BYTE8(v52[1]) = 0;
  *(v55 + 9) = *(v52 + 9);
  v54 = v51;
  v55[0] = v52[0];
  v53[0] = v49;
  v53[1] = v50;
  sub_258A69878(&v49, &v56, sub_258A69134);
  v33 = v42;
  v32 = v43;
  sub_258A698E0(v30, v25, v43, v26, v42, v29);
  sub_258A69940(v30, v25, v32, v26, v33, v29);
  v34 = v55[0];
  *(a2 + 32) = v54;
  *(a2 + 48) = v34;
  *(a2 + 64) = v55[1];
  v35 = v53[1];
  *a2 = v53[0];
  *(a2 + 16) = v35;
  *(a2 + 80) = v30;
  *(a2 + 88) = v25;
  *(a2 + 96) = v32;
  *(a2 + 104) = v26;
  *(a2 + 112) = v33;
  *(a2 + 120) = v29;
  sub_258A69940(v30, v25, v32, v26, v33, v29);
  v56 = v48;
  v57 = v47;
  v58 = v46;
  v59 = v45;
  v60 = v31;
  *v61 = v68[0];
  *&v61[3] = *(v68 + 3);
  v62 = v16;
  v63 = v18;
  v64 = v20;
  v65 = v22;
  v66 = 0;
  return sub_258A699A4(&v56, sub_258A69134);
}

uint64_t sub_258A68E24(uint64_t a1)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_258A68444(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v7);
  v2 = *(v7 + 16);

  v3 = (a1 + *(type metadata accessor for DomainsAndContextEntry(0) + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v8) = v4;
  *&v9 = v5;
  LOBYTE(v7) = v2 != 0;
  sub_258A684A8(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A68F14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    MEMORY[0x28223BE20](result);
    sub_258B02534();
    sub_258B009A4();
  }

  return result;
}

uint64_t sub_258A68FC0(uint64_t a1, char a2)
{
  type metadata accessor for DomainsAndContextEntry(0);
  sub_258A684A8(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

void sub_258A69094(uint64_t a1)
{
  if (!qword_27F96FCA0)
  {
    sub_258A69134();
    sub_258A68444(255, &qword_27F96FCB0, sub_258A6918C, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96FCA0);
    }
  }
}

void sub_258A69134()
{
  if (!qword_27F96FCA8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FCA8);
    }
  }
}

void sub_258A6918C(uint64_t a1)
{
  if (!qword_27F96FCB8)
  {
    sub_258A69594(255, &qword_27F96FCC0, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FCB8);
    }
  }
}

uint64_t sub_258A69224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainsAndContextEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A69288()
{
  v1 = *(type metadata accessor for DomainsAndContextEntry(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A68E24(v2);
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for DomainsAndContextEntry(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 36);
  sub_258A68444(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for AssociationSelectionPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A69514(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DomainsAndContextEntry(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258A68F14(a1, a2, v6);
}

void sub_258A69594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_258A69600(uint64_t a1)
{
  if (!qword_27F96FCD0)
  {
    sub_258A69060(255);
    sub_258A6977C(&qword_27F96FCD8, sub_258A69060, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FCD0);
    }
  }
}

unint64_t sub_258A69694()
{
  result = qword_27F96FCE0;
  if (!qword_27F96FCE0)
  {
    sub_258A69594(255, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
    sub_258A6977C(&qword_27F96FCE8, sub_258A69600, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FCE0);
  }

  return result;
}

uint64_t sub_258A6977C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A697C4(uint64_t a1)
{
  sub_258A69594(0, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A69878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A698E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_258B003E4();
  }

  return v6;
}

uint64_t sub_258A69940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return v6;
}

uint64_t sub_258A699A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DomainsSelectionPhase_iOS(uint64_t a1)
{
  result = qword_27F96FCF8;
  if (!qword_27F96FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A69A78(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_258A6F410(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        sub_258A6ED18(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258A6ED18(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_258A6F410(319, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_258A69C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34[7] = a1;
  v3 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_258A6CE38(v1, v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v4 + 80);
  v7 = swift_allocObject();
  v34[6] = v7;
  sub_258A6CE9C(v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + ((v6 + 16) & ~v6));
  v45 = sub_258A6CF00;
  v46 = v7;
  v41 = xmmword_258B312F0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v35 = *(v2 + 16);
  v36 = v8;
  LOBYTE(v37) = v9;
  sub_258A6F410(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v10 = v35;
  sub_258A6CE38(v2, v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_258A6CE9C(v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + ((v6 + 24) & ~v6));
  sub_258A6D00C(0);
  v34[5] = v12;
  sub_258A6DE18(0);
  v34[4] = v13;
  sub_258A6DF44(0);
  v34[3] = v14;
  v34[2] = sub_258A6D424(&qword_27F96FE90, sub_258A6D00C, MEMORY[0x277CDDB40]);
  v34[1] = sub_258A6EBE0();
  sub_258A6E118(255);
  v34[0] = v15;
  sub_258A6E67C(255);
  v17 = v16;
  sub_258A6E2C0(255);
  v19 = v18;
  sub_258A6E434(255);
  v21 = v20;
  sub_258A6E890(255);
  v23 = v22;
  sub_258A6E540(255);
  v25 = v24;
  v26 = MEMORY[0x277CDF6F0];
  v27 = sub_258A6D424(&qword_27F96FE48, sub_258A6E540, MEMORY[0x277CDF6F0]);
  v28 = sub_258A6D424(&qword_27F96FE50, sub_258A6E67C, v26);
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v25;
  v37 = v17;
  v38 = v27;
  v39 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_258A6D424(&qword_27F96FE88, sub_258A6E890, v26);
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v21;
  v37 = v23;
  v38 = OpaqueTypeConformance2;
  v39 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v19;
  v37 = v17;
  v38 = v31;
  v39 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v34[0];
  v37 = v17;
  v38 = v32;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  sub_258B01CC4();
}

uint64_t sub_258A6A0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a2 + 32);
  v11 = sub_258B024F4();
  v13 = v12;
  sub_258A6DE18(0);
  v15 = a4 + *(v14 + 36);
  v16 = *(a3 + 33);
  *v15 = a5;
  v17 = vextq_s8(*a2, *a2, 8uLL);
  *(v15 + 24) = *(a2 + 16);
  *(v15 + 8) = v17;
  *(v15 + 40) = v10;
  *(v15 + 48) = v16;
  v18 = type metadata accessor for ConfirmationView(0);
  v19 = *(v18 + 44);
  *(v15 + v19) = swift_getKeyPath();
  v20 = MEMORY[0x277CDF458];
  sub_258A6ED18(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v21 = *(v18 + 48);
  *(v15 + v21) = swift_getKeyPath();
  sub_258A6ED18(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v20);
  swift_storeEnumTagMultiPayload();
  sub_258A6DEB0(0);
  v23 = (v15 + *(v22 + 36));
  *v23 = v11;
  v23[1] = v13;
  sub_258A6ED18(0, &qword_27F96FDE8, sub_258A6D00C, MEMORY[0x277CE0510]);
  v25 = *(*(v24 - 8) + 16);

  return v25(a4, a1, v24);
}

uint64_t sub_258A6A278@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  sub_258A6DF44(0);
  v95 = v1;
  v96 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v92 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E118(0);
  v91 = v3;
  v94 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v89 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E2C0(0);
  v88 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v107 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E434(0);
  v106 = v7;
  v90 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v105 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E890(0);
  v10 = *(v9 - 8);
  v109 = v9;
  v110 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v102 = &v78 - v13;
  sub_258A6E67C(0);
  v15 = v14;
  v111 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v101 = &v78 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v78 - v21;
  MEMORY[0x28223BE20](v20);
  v103 = &v78 - v22;
  sub_258A6E540(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v104 = &v78 - v29;
  swift_getKeyPath();
  v30 = MEMORY[0x277CDF6B8];
  sub_258A6EB8C(0, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
  v32 = v31;
  v33 = sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v30, MEMORY[0x277CDF6C0]);
  v34 = v28;
  v99 = v28;
  sub_258B00904();
  v35 = MEMORY[0x277CDF6F0];
  v82 = MEMORY[0x277CDF6F0];
  v83 = sub_258A6D424(&qword_27F96FE48, sub_258A6E540, MEMORY[0x277CDF6F0]);
  v100 = v24;
  MEMORY[0x259C911C0](v34, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v24, v83);
  v36 = *(v25 + 8);
  v86 = v25 + 8;
  v87 = v36;
  v36(v34, v24);
  swift_getKeyPath();
  sub_258A6E798(0);
  v81 = v37;
  v38 = MEMORY[0x277D839F8];
  v112 = MEMORY[0x277D839F8];
  v113 = v32;
  v114 = v32;
  v115 = v33;
  v116 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v108;
  sub_258B00904();
  v40 = sub_258A6D424(&qword_27F96FE50, sub_258A6E67C, v35);
  MEMORY[0x259C911C0](v39, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v15, v40);
  v41 = *(v111 + 8);
  v111 += 8;
  v98 = v41;
  v41(v39, v15);
  KeyPath = swift_getKeyPath();
  sub_258A6EA24(0);
  v78 = v42;
  v43 = MEMORY[0x277CDF840];
  v44 = MEMORY[0x277CE14F8];
  sub_258A6EB8C(255, &qword_27F96FE68, v38, MEMORY[0x277CE14F8], MEMORY[0x277CDF840]);
  v46 = v45;
  v47 = MEMORY[0x277CDF8B8];
  sub_258A6EB8C(255, &qword_27F96FE70, v38, v44, MEMORY[0x277CDF8B8]);
  v49 = v48;
  v50 = sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v43, MEMORY[0x277CDF848]);
  v51 = sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v47, MEMORY[0x277CDF8C0]);
  v112 = MEMORY[0x277D839F8];
  v113 = v46;
  v114 = v49;
  v115 = v50;
  v116 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v84;
  sub_258B00904();
  KeyPath = sub_258A6D424(&qword_27F96FE88, sub_258A6E890, v82);
  v53 = v109;
  MEMORY[0x259C911C0](v52, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v109, KeyPath);
  v54 = *(v110 + 8);
  v110 += 8;
  v82 = v54;
  v54(v52, v53);
  swift_getKeyPath();
  v55 = v101;
  sub_258B00904();
  MEMORY[0x259C911C0](v55, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v15, v40);
  v56 = v98;
  v98(v55, v15);
  swift_getKeyPath();
  v57 = v85;
  sub_258B00904();
  MEMORY[0x259C911C0](v57, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v15, v40);
  v56(v57, v15);
  v58 = v100;
  v59 = v83;
  MEMORY[0x259C911F0](v104, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v100, v83);
  sub_258B00BE4();
  v112 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v113 = v58;
  v114 = v15;
  v115 = v59;
  v116 = v40;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v106;
  v62 = v109;
  v63 = KeyPath;
  sub_258B00BE4();
  v112 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v113 = v61;
  v114 = v62;
  v115 = v60;
  v116 = v63;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v89;
  v66 = v88;
  sub_258B00BE4();
  v112 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v113 = v66;
  v114 = v15;
  v115 = v64;
  v116 = v40;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v92;
  v69 = v65;
  v70 = v101;
  v71 = v91;
  sub_258B00BE4();
  v112 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v113 = v71;
  v114 = v15;
  v115 = v67;
  v116 = v40;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v95;
  MEMORY[0x259C911D0](v68, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v95, v72);
  (*(v96 + 8))(v68, v73);
  (*(v94 + 8))(v69, v71);
  (*(v93 + 8))(v107, v66);
  (*(v90 + 8))(v105, v106);
  v74 = v100;
  v75 = v87;
  v87(v99, v100);
  v76 = v98;
  v98(v70, v15);
  v76(v108, v15);
  v82(v102, v109);
  v76(v103, v15);
  return v75(v104, v74);
}

uint64_t sub_258A6AEA4()
{
  v0 = MEMORY[0x277D839F8];
  v1 = MEMORY[0x277CDF6B8];
  sub_258A6EB8C(0, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v17 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 1;
  v13[1] = 0;
  v14 = 1;
  sub_258B00884();
  v10 = sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v1, MEMORY[0x277CDF6C0]);
  MEMORY[0x259C91C70](v7, v0, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x259C91C90](v9, v0, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_258A6B0A4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_258B02294();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = MEMORY[0x277D839F8];
  v3 = MEMORY[0x277CE14F8];
  v37 = MEMORY[0x277CDF8B8];
  sub_258A6EB8C(0, &qword_27F96FE70, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF8B8]);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v32 - v9;
  v10 = sub_258B025A4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = MEMORY[0x277CDF840];
  sub_258A6EB8C(0, &qword_27F96FE68, v2, v3, MEMORY[0x277CDF840]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v33 = &v32 - v18;
  v41 = 0x3FE0000000000000;
  sub_258B02594();
  sub_258B00A04();
  v19 = sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v11, MEMORY[0x277CDF848]);
  MEMORY[0x259C91C70](v17, v2, v13, v19);
  v20 = *(v14 + 8);
  v34 = v14 + 8;
  v35 = v20;
  v20(v17, v13);
  v43 = 0x3FF0000000000000;
  v41 = 0;
  v42 = 1;
  sub_258B02284();
  v21 = v8;
  sub_258B00A64();
  v22 = sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v37, MEMORY[0x277CDF8C0]);
  v23 = v36;
  v24 = v8;
  v25 = v2;
  v26 = v38;
  MEMORY[0x259C91C70](v24, v2, v38, v22);
  v27 = *(v39 + 8);
  v27(v21, v26);
  v28 = v33;
  MEMORY[0x259C91C90](v33, v25, v13, v19);
  sub_258B01684();
  v29 = v17;
  v30 = v35;
  v35(v29, v13);
  v27(v23, v26);
  return v30(v28, v13);
}

uint64_t sub_258A6B50C@<X0>(uint64_t a1@<X8>, double a3@<D1>)
{
  v21 = a1;
  v5 = MEMORY[0x277D839F8];
  v6 = MEMORY[0x277CDF6B8];
  sub_258A6EB8C(0, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v26 = 0.0;
  v24 = 0;
  v25 = 1;
  v22 = 0;
  v23 = 1;
  sub_258B00884();
  v18 = sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v6, MEMORY[0x277CDF6C0]);
  MEMORY[0x259C91C70](v15, v5, v8, v18);
  v19 = *(v9 + 8);
  v19(v15, v8);
  v26 = a3;
  v24 = 0;
  v25 = 1;
  v22 = 0;
  v23 = 1;
  sub_258B00884();
  MEMORY[0x259C91C70](v12, v5, v8, v18);
  v19(v12, v8);
  MEMORY[0x259C91C90](v17, v5, v8, v18);
  sub_258B01684();
  v19(v12, v8);
  v19(v15, v8);
  return (v19)(v17, v8);
}

uint64_t sub_258A6B7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v131 = a3;
  v4 = sub_258B00B74();
  v129 = *(v4 - 8);
  v130 = v4;
  MEMORY[0x28223BE20](v4);
  v126 = v5;
  v127 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  v123 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v124 = v6;
  v125 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B006A4();
  v119 = *(v7 - 8);
  v120 = v7;
  MEMORY[0x28223BE20](v7);
  v118 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D54C(0, &qword_27F96FEB0, MEMORY[0x277CE0330]);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v113 = &v100 - v10;
  sub_258A6D5BC(0);
  v132 = v11;
  MEMORY[0x28223BE20](v11);
  v103 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v104 = COERCE_DOUBLE(sub_258B016B4());
  v13 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DomainsSelectionPhaseContent(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D730(0);
  v20 = v19;
  MEMORY[0x28223BE20](*&v19);
  v22 = (&v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A6D67C(0);
  v106 = *(v23 - 8);
  v107 = v23;
  MEMORY[0x28223BE20](v23);
  v105 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D52C(0);
  MEMORY[0x28223BE20](v25 - 8);
  v108 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D4F0(0);
  v111 = v27;
  MEMORY[0x28223BE20](v27);
  v110 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D46C(0);
  v117 = v29;
  v115 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v114 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D1F0(0);
  v112 = v31;
  MEMORY[0x28223BE20](v31);
  v116 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D15C(0);
  v121 = v33;
  MEMORY[0x28223BE20](v33);
  v122 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a2;
  v35 = *(a2 + 34);
  v36 = 0uLL;
  v37 = 0uLL;
  v38 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  if ((v35 & 1) == 0)
  {
    sub_258A6C58C(v148);
    v36 = v148[0];
    v37 = v148[1];
    v38 = v148[2];
    v39 = v148[3];
    v40 = v148[4];
  }

  *v22 = v36;
  v22[1] = v37;
  v22[2] = v38;
  v22[3] = v39;
  v22[4] = v40;
  v41 = v22 + *(*&v20 + 36);
  v42 = v20;
  sub_258A6C8A8(v18);
  *v41 = sub_258B01834();
  sub_258A6ED7C(0);
  sub_2589FFDE8(v18, &v41[*(v43 + 44)]);
  sub_258A6EE18(v18);
  v44 = *(*&v20 + 40);
  *(v22 + v44) = swift_getKeyPath();
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258B016A4();
  v45 = sub_258A6D424(&qword_27F96FD98, sub_258A6D730, &unk_258B2C7DC);
  v46 = v105;
  sub_258B01DE4();
  (*(v13 + 8))(v15, v104);
  sub_258A6EE74(v22, sub_258A6D730);
  if (v35)
  {
    v101 = v45;
    v102 = v42;
    v47 = *(v134 + 33);
    *&v104 = COERCE_DOUBLE(sub_258B024F4());
    v49 = v48;
    sub_258A6F410(0, &qword_27F96CC10, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    if (v47)
    {
      *(v50 + 16) = xmmword_258B2BE60;
      *(v50 + 32) = sub_258B01FF4();
      *(v50 + 40) = sub_258B02004();
    }

    else
    {
      *(v50 + 16) = xmmword_258B2C470;
      *(v50 + 32) = sub_258B01FF4();
    }

    MEMORY[0x259C92A80](v50);
    sub_258B009F4();
    v55 = sub_258B00B54();
    v53 = v46;
    if (v47)
    {
      v56 = sub_258B018B4();
    }

    else
    {
      v56 = sub_258B018D4();
    }

    v57 = v56;
    v58 = v149;
    v60 = v150;
    v59 = v151;
    v62 = v103;
    v61 = v104;
    *&v136 = v104;
    *(&v136 + 1) = v49;
    v137 = v149;
    v138 = v150;
    *&v139 = v151;
    *(&v139 + 1) = v55;
    v140 = v56;
    v51 = v106;
    v52 = v107;
    (*(v106 + 16))(v103, v53, v107);
    v63 = v62 + *(v132 + 36);
    v64 = v139;
    *(v63 + 32) = v138;
    *(v63 + 48) = v64;
    *(v63 + 64) = v140;
    v65 = v137;
    *v63 = v136;
    *(v63 + 16) = v65;
    v141 = *&v61;
    v142 = v49;
    v143 = v58;
    v144 = v60;
    v145 = v59;
    v146 = v55;
    v147 = v57;
    sub_258A6F2C0(&v136, v135);
    sub_258A6F340(&v141);
    sub_2589B1EB8(v62, v113);
    swift_storeEnumTagMultiPayload();
    sub_258A6DB88();
    *v135 = v102;
    v135[1] = v101;
    swift_getOpaqueTypeConformance2();
    v54 = v108;
    sub_258B012A4();
    sub_258A6EE74(v62, sub_258A6D5BC);
  }

  else
  {
    v51 = v106;
    v52 = v107;
    (*(v106 + 16))(v113, v46, v107);
    swift_storeEnumTagMultiPayload();
    sub_258A6DB88();
    v141 = v42;
    v142 = v45;
    swift_getOpaqueTypeConformance2();
    v53 = v46;
    v54 = v108;
    sub_258B012A4();
  }

  (*(v51 + 8))(v53, v52);
  v66 = v134;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v67 = v141;
  v68 = v118;
  sub_258AC14E8(v118);
  v69 = v110;
  sub_258A9B4A4(v68, v54, v110, v67);
  (*(v119 + 8))(v68, v120);
  sub_258A6EE74(v54, sub_258A6D52C);
  v70 = *(v66 + 24);
  v71 = *(v66 + 32);
  v141 = *(v66 + 16);
  v142 = v70;
  LOBYTE(v143) = v71;
  sub_258A6F410(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v136);
  sub_258A6D9E8();
  v72 = v114;
  sub_258B01E14();
  sub_258A6EE74(v69, sub_258A6D4F0);
  v73 = v66;
  v74 = v112;
  v75 = v116;
  sub_258A97634(&v116[*(v112 + 52)]);
  v76 = v66;
  v77 = v125;
  sub_258A6CE38(v76, v125);
  v78 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v79 = swift_allocObject();
  sub_258A6CE9C(v77, v79 + v78);
  (*(v115 + 32))(v75, v72, v117);
  v80 = (v75 + *(v74 + 56));
  *v80 = sub_258A6F18C;
  v80[1] = v79;
  sub_258A6CE38(v73, v77);
  v81 = swift_allocObject();
  v82 = v81 + v78;
  v83 = v133;
  sub_258A6CE9C(v77, v82);
  v84 = v122;
  sub_2589B1DCC(v75, v122);
  v85 = (v84 + *(v121 + 36));
  *v85 = sub_258A6CC7C;
  v85[1] = 0;
  v85[2] = sub_258A6F1A4;
  v85[3] = v81;
  v86 = (v73 + *(v83 + 44));
  v87 = *v86;
  v88 = *(v86 + 1);
  v141 = v87;
  v142 = v88;
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v89.n128_u64[0] = v136;
  if (*&v136 <= 0.0)
  {
    v93 = 0;
  }

  else
  {
    v90 = (v73 + *(v83 + 48));
    v91 = *v90;
    v92 = *(v90 + 1);
    v141 = v91;
    v142 = v92;
    sub_258B02124();
    v89.n128_u64[0] = v136;
    v93 = *&v136 > 90.0;
  }

  LOBYTE(v141) = v93;
  v94 = v129;
  v95 = v127;
  v96 = v130;
  (*(v129 + 16))(v127, v128, v130, v89);
  v97 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v98 = swift_allocObject();
  (*(v94 + 32))(v98 + v97, v95, v96);
  sub_258A6DCE4();
  sub_258B01EF4();

  return sub_258A6EE74(v84, sub_258A6D15C);
}

void *sub_258A6C58C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (v1 + *(MEMORY[0x28223BE20](v4) + 44));
  v8 = *v7;
  v9 = *(v7 + 1);
  v28 = v8;
  v29 = v9;
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v26 < 110.0 || (v10 = (v1 + *(v4 + 48)), v11 = *v10, v12 = *(v10 + 1), v28 = v11, v29 = v12, result = sub_258B02124(), v26 <= 90.0))
  {
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v14 = sub_258AFFD94();
    v15 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v24 = v28;
    sub_258A6CE38(v2, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = swift_allocObject();
    sub_258A6CE9C(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v25);
    v26 = v24;
    v27 = 0;
    sub_258A6F410(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    result = sub_258B02354();
    v16 = v28;
    v17 = v29;
    v18 = v30;
    LOBYTE(v26) = v31;
    v21 = v31;
    v22 = xmmword_258B31300;
    v19 = sub_258A6F3B8;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = v21;
  *(a1 + 48) = v22;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  return result;
}

uint64_t sub_258A6C8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v5 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v20 = v22;
  v19 = sub_258A22394();
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A6D424(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v6 = v25;
  v18 = v26;
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v17 = v22;
  v7 = v23;
  v8 = v24;
  v9 = *(v1 + 33);
  v10 = *(v1 + 34);
  sub_258A6CE38(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v12 = swift_allocObject();
  sub_258A6CE9C(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *a1 = v5;
  v13 = v19;
  *(a1 + 8) = v20;
  *(a1 + 16) = v13;
  *(a1 + 24) = v6;
  v14 = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v14;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 81) = (v10 & 1) == 0;
  *(a1 + 88) = 60;
  *(a1 + 96) = sub_258A6F4C4;
  *(a1 + 104) = v12;
  v15 = *(type metadata accessor for DomainsSelectionPhaseContent(0) + 52);
  *(a1 + v15) = swift_getKeyPath();
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A6CBEC(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for DomainsSelectionPhase_iOS(0);
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A6CCA8(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for DomainsSelectionPhase_iOS(0);
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A6CD38(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    return sub_258B00B64();
  }

  return result;
}

void *sub_258A6CDB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v6 = *(a1 + 16);
  v7 = v2;
  v8 = v3;
  sub_258A6F410(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v5);
  if ((v5 & 1) == 0)
  {
    return (*(a1 + 40))(result);
  }

  return result;
}

uint64_t sub_258A6CE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A6CE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A6CF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DomainsSelectionPhase_iOS(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258A6B7D0(a1, v6, a2);
}

uint64_t sub_258A6CF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for DomainsSelectionPhase_iOS(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_258A6A0A4(a1, a2, v9, a3, v8);
}

void sub_258A6D00C(uint64_t a1)
{
  if (!qword_27F96FD08)
  {
    sub_258A6D0C4(255);
    sub_258A6D15C(255);
    sub_258A6DCE4();
    swift_getOpaqueTypeConformance2();
    v1 = sub_258B00C44();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FD08);
    }
  }
}

void sub_258A6D0C4(uint64_t a1)
{
  if (!qword_27F96FD10)
  {
    sub_258A6D15C(255);
    sub_258A6DCE4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FD10);
    }
  }
}

void sub_258A6D15C(uint64_t a1)
{
  if (!qword_27F96FD18)
  {
    sub_258A6D1F0(255);
    sub_258A6EB8C(255, &qword_27F96FDC0, MEMORY[0x277D839F8], MEMORY[0x277D83A28], MEMORY[0x277CE06A0]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FD18);
    }
  }
}

void sub_258A6D1F0(uint64_t a1)
{
  if (!qword_27F96FD20)
  {
    sub_258A6D2E4(255);
    sub_258A6D46C(255);
    sub_258A6D424(&qword_27F96FDB8, sub_258A6D2E4, MEMORY[0x277CBCC98]);
    sub_258A6D4F0(255);
    sub_258A6D9E8();
    swift_getOpaqueTypeConformance2();
    v1 = sub_258B00C54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FD20);
    }
  }
}

void sub_258A6D2E4(uint64_t a1)
{
  if (!qword_27F96FD28)
  {
    sub_258A6D388(255);
    sub_258A6D424(&qword_27F96FD40, sub_258A6D388, MEMORY[0x277CBCC08]);
    v1 = sub_258B00484();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FD28);
    }
  }
}

void sub_258A6D388(uint64_t a1)
{
  if (!qword_27F96FD30)
  {
    sub_258B02FC4();
    sub_258A6D424(&qword_27F96FD38, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v1 = sub_258B00464();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FD30);
    }
  }
}

uint64_t sub_258A6D424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A6D46C(uint64_t a1)
{
  if (!qword_27F96FD48)
  {
    sub_258A6D4F0(255);
    sub_258A6D9E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FD48);
    }
  }
}

void sub_258A6D54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A6D5BC(255);
    v7 = v6;
    sub_258A6D67C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A6D5F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A6D950(255, a4, a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A6D67C(uint64_t a1)
{
  if (!qword_27F96FD68)
  {
    sub_258A6D730(255);
    sub_258A6D424(&qword_27F96FD98, sub_258A6D730, &unk_258B2C7DC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FD68);
    }
  }
}

void sub_258A6D730(uint64_t a1)
{
  if (!qword_27F96FD70)
  {
    sub_258A6D7C4(255);
    v3 = v2;
    v4 = sub_258A6D424(&qword_27F96FD90, sub_258A6D7C4, MEMORY[0x277CDD828]);
    v6 = type metadata accessor for StateOfMindEntryPhase_iOS(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F96FD70);
    }
  }
}

void sub_258A6D7C4(uint64_t a1)
{
  if (!qword_27F96FD78)
  {
    sub_258A6ED18(255, &qword_27F96FD80, sub_258A6D858, MEMORY[0x277CE14B8]);
    sub_258A6D8C8();
    v1 = sub_258B00844();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FD78);
    }
  }
}

void sub_258A6D858(uint64_t a1)
{
  if (!qword_27F96DBA8)
  {
    type metadata accessor for DomainsSelectionPhaseContent(255);
    sub_258A0037C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DBA8);
    }
  }
}

unint64_t sub_258A6D8C8()
{
  result = qword_27F96FD88;
  if (!qword_27F96FD88)
  {
    sub_258A6ED18(255, &qword_27F96FD80, sub_258A6D858, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FD88);
  }

  return result;
}

void sub_258A6D950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_258A6EB8C(255, &qword_27F96DB50, MEMORY[0x277CDF838], MEMORY[0x277CE0888], MEMORY[0x277CDFAB8]);
    v7 = v6;
    v8 = sub_2589FF714();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_258A6D9E8()
{
  result = qword_27F96FDA0;
  if (!qword_27F96FDA0)
  {
    sub_258A6D4F0(255);
    sub_258A6DAA0();
    sub_258A6DCA0(qword_27F96DBD0, &qword_27F96DBC0, MEMORY[0x277CE0318], MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDA0);
  }

  return result;
}

unint64_t sub_258A6DAA0()
{
  result = qword_27F96FDA8;
  if (!qword_27F96FDA8)
  {
    sub_258A6D52C(255);
    sub_258A6DB88();
    sub_258A6D730(255);
    sub_258A6D424(&qword_27F96FD98, sub_258A6D730, &unk_258B2C7DC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDA8);
  }

  return result;
}

unint64_t sub_258A6DB88()
{
  result = qword_27F96FDB0;
  if (!qword_27F96FDB0)
  {
    sub_258A6D5BC(255);
    sub_258A6D730(255);
    sub_258A6D424(&qword_27F96FD98, sub_258A6D730, &unk_258B2C7DC);
    swift_getOpaqueTypeConformance2();
    sub_258A6DCA0(&qword_27F96DB90, &qword_27F96DB48, MEMORY[0x277CE03E0], MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDB0);
  }

  return result;
}

uint64_t sub_258A6DCA0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258A6D950(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A6DCE4()
{
  result = qword_27F96FDC8;
  if (!qword_27F96FDC8)
  {
    sub_258A6D15C(255);
    sub_258A6D424(&qword_27F96FDD0, sub_258A6D1F0, MEMORY[0x277CDDB50]);
    sub_258A6DD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDC8);
  }

  return result;
}

unint64_t sub_258A6DD94()
{
  result = qword_27F96FDD8;
  if (!qword_27F96FDD8)
  {
    sub_258A6EB8C(255, &qword_27F96FDC0, MEMORY[0x277D839F8], MEMORY[0x277D83A28], MEMORY[0x277CE06A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDD8);
  }

  return result;
}

void sub_258A6DE18(uint64_t a1)
{
  if (!qword_27F96FDE0)
  {
    sub_258A6ED18(255, &qword_27F96FDE8, sub_258A6D00C, MEMORY[0x277CE0510]);
    sub_258A6DEB0(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FDE0);
    }
  }
}

void sub_258A6DEB0(uint64_t a1)
{
  if (!qword_27F96FDF0)
  {
    type metadata accessor for ConfirmationView(255);
    sub_258A6D424(&qword_27F96FDF8, type metadata accessor for ConfirmationView, &unk_258B336A4);
    v1 = sub_258B00CA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FDF0);
    }
  }
}

void sub_258A6DF44(uint64_t a1)
{
  if (!qword_27F96FE00)
  {
    sub_258A6E118(255);
    sub_258A6E67C(255);
    sub_258A6E2C0(255);
    sub_258A6E434(255);
    sub_258A6E890(255);
    sub_258A6E540(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540, MEMORY[0x277CDF6F0]);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C, v1);
    swift_getOpaqueTypeConformance2();
    sub_258A6D424(&qword_27F96FE88, sub_258A6E890, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE00);
    }
  }
}

void sub_258A6E118(uint64_t a1)
{
  if (!qword_27F96FE08)
  {
    sub_258A6E2C0(255);
    sub_258A6E67C(255);
    sub_258A6E434(255);
    sub_258A6E890(255);
    sub_258A6E540(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540, MEMORY[0x277CDF6F0]);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C, v1);
    swift_getOpaqueTypeConformance2();
    sub_258A6D424(&qword_27F96FE88, sub_258A6E890, v1);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE08);
    }
  }
}

void sub_258A6E2C0(uint64_t a1)
{
  if (!qword_27F96FE10)
  {
    sub_258A6E434(255);
    sub_258A6E890(255);
    sub_258A6E540(255);
    sub_258A6E67C(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540, MEMORY[0x277CDF6F0]);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C, v1);
    swift_getOpaqueTypeConformance2();
    sub_258A6D424(&qword_27F96FE88, sub_258A6E890, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE10);
    }
  }
}

void sub_258A6E434(uint64_t a1)
{
  if (!qword_27F96FE18)
  {
    sub_258A6E540(255);
    sub_258A6E67C(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540, MEMORY[0x277CDF6F0]);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE18);
    }
  }
}

void sub_258A6E540(uint64_t a1)
{
  if (!qword_27F96FE20)
  {
    v1 = MEMORY[0x277CDF6B8];
    sub_258A6EB8C(255, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
    sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v1, MEMORY[0x277CDF6C0]);
    v2 = sub_258B008F4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F96FE20);
    }
  }
}

uint64_t sub_258A6E624(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258A6EB8C(255, a2, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A6E67C(uint64_t a1)
{
  if (!qword_27F96FE38)
  {
    sub_258A6E798(255);
    v1 = MEMORY[0x277CDF6B8];
    sub_258A6EB8C(255, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
    sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v1, MEMORY[0x277CDF6C0]);
    swift_getOpaqueTypeConformance2();
    v2 = sub_258B008F4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F96FE38);
    }
  }
}

void sub_258A6E798(uint64_t a1)
{
  if (!qword_27F96FE40)
  {
    v1 = MEMORY[0x277CDF6B8];
    sub_258A6EB8C(255, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
    sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v1, MEMORY[0x277CDF6C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE40);
    }
  }
}