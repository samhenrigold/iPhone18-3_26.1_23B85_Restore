uint64_t sub_258A85244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v137 = _s17EntryDayEmptyViewVMa(0);
  MEMORY[0x28223BE20](v137);
  v113 = (&v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A86978(0, &qword_27F970378, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0330]);
  v133 = v4;
  MEMORY[0x28223BE20](v4);
  v136 = &v107 - v5;
  v134 = _s16EntryDayDataViewVMa(0);
  MEMORY[0x28223BE20](v134);
  v108 = (&v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x277D83D88];
  sub_258A86CC4(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v111 = &v107 - v9;
  v110 = _s5EntryVMa(0);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A86CC4(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, v7);
  MEMORY[0x28223BE20](v11 - 8);
  v131 = &v107 - v12;
  v130 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v112 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A86978(0, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0338]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v135 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v139 = &v107 - v17;
  v128 = sub_258B02554();
  v127 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v126 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_258B006A4();
  v124 = *(v125 - 8);
  v19 = MEMORY[0x28223BE20](v125);
  v122 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v107 - v21;
  v22 = sub_258B019F4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144(0);
  v119 = v29;
  MEMORY[0x28223BE20](v29);
  v118 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A86978(0, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v132 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v140 = &v107 - v34;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v144 = sub_258AFFD94();
  v145 = v35;
  sub_2589BFF58(v144, v35, v36);
  v37 = sub_258B01B44();
  v39 = v38;
  v41 = v40;
  v123 = v42;
  v117 = _s12EntryDayViewVMa(0);
  v43 = *(v117 + 20);
  sub_258AC1060(v28);
  v116 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258A868B8(v28, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01A34();
  (*(v23 + 104))(v25, *MEMORY[0x277CE0A10], v22);
  sub_258B01A14();
  v114 = a1;

  (*(v23 + 8))(v25, v22);
  v44 = sub_258B01AE4();
  v115 = v45;
  v47 = v46;
  sub_2589BFFAC(v37, v39, v41 & 1);

  v123 = v43;
  v48 = v114;
  sub_258AC1060(v28);
  v121 = v28;
  sub_258A868B8(v28, v116);
  v49 = [objc_opt_self() secondaryLabelColor];
  v144 = sub_258B01F94();
  v50 = v115;
  v51 = sub_258B01AB4();
  v53 = v52;
  v55 = v54;
  v116 = v56;
  sub_2589BFFAC(v44, v50, v47 & 1);

  v57 = v120;
  v58 = v48;
  sub_258A84DB8(v120);
  v59 = v124;
  v60 = v122;
  v61 = v125;
  (*(v124 + 104))(v122, *MEMORY[0x277CDF3D0], v125);
  v62 = sub_258B00694();
  v63 = *(v59 + 8);
  v63(v60, v61);
  v63(v57, v61);
  v64 = v127;
  v65 = MEMORY[0x277CE13B0];
  if ((v62 & 1) == 0)
  {
    v65 = MEMORY[0x277CE13B8];
  }

  v66 = v126;
  v67 = v128;
  (*(v127 + 104))(v126, *v65, v128);
  v68 = v118;
  (*(v64 + 32))(&v118[*(v119 + 36)], v66, v67);
  *v68 = v51;
  *(v68 + 8) = v53;
  *(v68 + 16) = v55 & 1;
  *(v68 + 24) = v116;
  v69 = v117;
  v70 = v58;
  v71 = *(v58 + *(v117 + 28));
  sub_258B003E4();
  v72 = v71;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_258A74828(0, *(v71 + 16) + 1, 1, v71);
  }

  v74 = *(v72 + 2);
  v73 = *(v72 + 3);
  if (v74 >= v73 >> 1)
  {
    v72 = sub_258A74828((v73 > 1), v74 + 1, 1, v72);
  }

  *(v72 + 2) = v74 + 1;
  v75 = &v72[16 * v74];
  *(v75 + 4) = 0x6E6F6974706143;
  *(v75 + 5) = 0xE700000000000000;
  v144 = &unk_2869D4670;
  v76 = sub_258B003E4();
  sub_2589FC8C8(v76);
  sub_2589FCE08();
  sub_258A869FC(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  sub_258B02A34();

  sub_2589C6AE0();
  sub_258B01DD4();

  sub_258A868B8(v68, sub_2589C5144);
  v77 = v121;
  sub_258AC1060(v121);
  sub_258A868B8(v77, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v128 = v144;
  v127 = v146;
  v126 = v148;
  v125 = v149;
  v143 = 1;
  v142 = v145;
  v141 = v147;
  v78 = v131;
  sub_258A86A44(v70 + *(v69 + 24), v131, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  v79 = v130;
  if ((*(v129 + 48))(v78, 1, v130) == 1)
  {
    v80 = &qword_27F970328;
    v81 = type metadata accessor for StateOfMindTimeline.DaySummary;
  }

  else
  {
    v82 = v112;
    sub_258A86C5C(v78, v112, type metadata accessor for StateOfMindTimeline.DaySummary);
    v78 = v111;
    sub_258A86A44(v82 + *(v79 + 28), v111, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
    if ((*(v109 + 48))(v78, 1, v110) != 1)
    {
      v89 = v107;
      sub_258A86C5C(v78, v107, _s5EntryVMa);
      v90 = v134;
      v91 = v108;
      sub_258A86B24(v82, v108 + *(v134 + 24), type metadata accessor for StateOfMindTimeline.DaySummary);
      sub_258A86B24(v89, v91 + v90[7], _s5EntryVMa);
      *v91 = swift_getKeyPath();
      v92 = MEMORY[0x277CDF458];
      sub_258A86CC4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v93 = v90[5];
      *(v91 + v93) = swift_getKeyPath();
      sub_258A86CC4(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v92);
      swift_storeEnumTagMultiPayload();
      *(v91 + v90[8]) = v71;
      sub_258A86B24(v91, v136, _s16EntryDayDataViewVMa);
      swift_storeEnumTagMultiPayload();
      sub_258A869FC(&qword_27F970380, _s16EntryDayDataViewVMa, &unk_258B2C6B4);
      sub_258A869FC(&qword_27F970388, _s17EntryDayEmptyViewVMa, &unk_258B34C14);
      sub_258B003E4();
      v86 = v139;
      sub_258B012A4();
      sub_258A868B8(v91, _s16EntryDayDataViewVMa);
      sub_258A868B8(v89, _s5EntryVMa);
      v87 = type metadata accessor for StateOfMindTimeline.DaySummary;
      v88 = v82;
      goto LABEL_15;
    }

    sub_258A868B8(v82, type metadata accessor for StateOfMindTimeline.DaySummary);
    v80 = &qword_27F96D908;
    v81 = _s5EntryVMa;
  }

  sub_258A86AB4(v78, v80, v81);
  KeyPath = swift_getKeyPath();
  v84 = v113;
  *v113 = KeyPath;
  sub_258A86CC4(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v85 = v136;
  *(v84 + *(v137 + 20)) = v71;
  sub_258A86B24(v84, v85, _s17EntryDayEmptyViewVMa);
  swift_storeEnumTagMultiPayload();
  sub_258A869FC(&qword_27F970380, _s16EntryDayDataViewVMa, &unk_258B2C6B4);
  sub_258A869FC(&qword_27F970388, _s17EntryDayEmptyViewVMa, &unk_258B34C14);
  sub_258B003E4();
  v86 = v139;
  sub_258B012A4();
  v87 = _s17EntryDayEmptyViewVMa;
  v88 = v84;
LABEL_15:
  sub_258A868B8(v88, v87);
  v94 = v86;
  v95 = MEMORY[0x277CDE470];
  v96 = MEMORY[0x277CDFAB8];
  v97 = v132;
  sub_258A86B8C(v140, v132, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v98 = v143;
  LODWORD(v136) = v142;
  LODWORD(v137) = v141;
  v99 = MEMORY[0x277CE0338];
  v100 = v94;
  v101 = v135;
  sub_258A86B8C(v100, v135, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0338]);
  v102 = v138;
  sub_258A86B8C(v97, v138, &qword_27F96CA18, sub_2589C5144, v95, v96);
  sub_258A86688(0);
  v104 = v102 + *(v103 + 48);
  *v104 = 0;
  *(v104 + 8) = v98;
  *(v104 + 16) = v128;
  *(v104 + 24) = v136;
  *(v104 + 32) = v127;
  *(v104 + 40) = v137;
  v105 = v125;
  *(v104 + 48) = v126;
  *(v104 + 56) = v105;
  sub_258A86B8C(v101, v102 + *(v103 + 64), &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, v99);
  sub_258A86C00(v139, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, v99);
  sub_258A86C00(v140, &qword_27F96CA18, sub_2589C5144, v95, v96);
  sub_258A86C00(v101, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, v99);
  return sub_258A86C00(v97, &qword_27F96CA18, sub_2589C5144, v95, v96);
}

void sub_258A865F4(uint64_t a1)
{
  if (!qword_27F970340)
  {
    sub_258A86CC4(255, &qword_27F970348, sub_258A86688, MEMORY[0x277CE14B8]);
    sub_258A86798();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970340);
    }
  }
}

void sub_258A86688(uint64_t a1)
{
  if (!qword_27F970350)
  {
    sub_258A86978(255, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589BD110();
    sub_258A86978(255, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0338]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970350);
    }
  }
}

unint64_t sub_258A86798()
{
  result = qword_27F970360;
  if (!qword_27F970360)
  {
    sub_258A86CC4(255, &qword_27F970348, sub_258A86688, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970360);
  }

  return result;
}

void sub_258A86820(uint64_t a1)
{
  if (!qword_27F970368)
  {
    sub_258A86CC4(255, &qword_27F970348, sub_258A86688, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970368);
    }
  }
}

uint64_t sub_258A868B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A86918(uint64_t a1)
{
  if (!qword_27F970370)
  {
    sub_258A865F4(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970370);
    }
  }
}

void sub_258A86978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_258A869FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A86A44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258A86CC4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258A86AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258A86CC4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258A86B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A86B8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_258A86978(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_258A86C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_258A86978(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_258A86C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258A86CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A86D28()
{
  result = qword_27F970390;
  if (!qword_27F970390)
  {
    sub_258A86918(255);
    sub_258A869FC(&qword_27F970398, sub_258A865F4, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970390);
  }

  return result;
}

uint64_t sub_258A86E04()
{
  sub_258A8773C();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v8[0] = sub_258AFFD94();
  v8[1] = v5;
  sub_2589BFF58(v8[0], v5, v6);
  sub_258B021A4();
  v8[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5748);
  sub_2589FCE08();
  sub_258A87794(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A87794(&qword_27F96E060, sub_258A8773C, MEMORY[0x277CDF028]);
  sub_258B01DD4();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_258A87080()
{
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258AFFE44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HKMHMindfulnessSettingsURL();
  if (v8)
  {
    v9 = v8;
    sub_258AFFE24();

    v10 = [objc_opt_self() defaultWorkspace];
    if (v10)
    {
      v11 = v10;
      v12 = sub_258AFFE14();
      sub_258AD6068(MEMORY[0x277D84F90]);
      v13 = sub_258B029E4();

      [v11 openSensitiveURL:v12 withOptions:v13];
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_258B00364();
    v15 = sub_258B00374();
    v16 = sub_258B02EA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_2589F1F78(0xD000000000000018, 0x8000000258B32450, &v20);
      _os_log_impl(&dword_2589A1000, v15, v16, "[%{public}s] Failed to open Mindfulness settings in Bridge from State of Mind Settings.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x259C945C0](v18, -1, -1);
      MEMORY[0x259C945C0](v17, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_258A87360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2589BFF58(a1, a2, a3);
  sub_258B003E4();
  v5 = sub_258B01B44();
  v7 = v6;
  v9 = v8 & 1;
  sub_2589FC8C8(&unk_2869D5788);
  sub_2589FCE08();
  sub_258A87794(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v5, v7, v9);

  sub_258A876C8(0, &qword_27F96F8A0, sub_258A155A0, sub_258A87670);
  v11 = (a4 + *(v10 + 36));
  sub_258A87670(0);
  sub_258B00CD4();
  result = swift_getKeyPath();
  *v11 = result;
  return result;
}

uint64_t sub_258A8753C(__n128 a1)
{
  sub_258A876C8(0, &qword_27F96F8A0, sub_258A155A0, sub_258A87670);
  MEMORY[0x28223BE20](v2);
  sub_258A87360(*v1, v1[1], v4, &v6 - v3);
  sub_258A876C8(0, &qword_27F96EA10, sub_258A8773C, MEMORY[0x277CDE470]);
  sub_258A294BC();
  sub_258A5B748();
  return sub_258B02434();
}

void sub_258A87670(uint64_t a1)
{
  if (!qword_27F96F8A8)
  {
    sub_258B00CE4();
    v1 = sub_258B017C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F8A8);
    }
  }
}

void sub_258A876C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258A8773C()
{
  if (!qword_27F96E018)
  {
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E018);
    }
  }
}

uint64_t sub_258A87794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A87800(uint64_t a1)
{
  v2 = sub_258B00CE4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00DF4();
}

unint64_t sub_258A878C8()
{
  result = qword_27F9703A0;
  if (!qword_27F9703A0)
  {
    sub_258A87954(255);
    sub_258A294BC();
    sub_258A5B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9703A0);
  }

  return result;
}

void sub_258A87954(uint64_t a1)
{
  if (!qword_27F9703A8)
  {
    sub_258A876C8(255, &qword_27F96EA10, sub_258A8773C, MEMORY[0x277CDE470]);
    sub_258A876C8(255, &qword_27F96F8A0, sub_258A155A0, sub_258A87670);
    v1 = sub_258B02444();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9703A8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PromptedAssessmentsSettingsConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptedAssessmentsSettingsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for ValenceSelectionPhase_iOS(uint64_t a1)
{
  result = qword_27F9703B0;
  if (!qword_27F9703B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A87B40(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_258A2D96C();
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        sub_258A8953C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_258A87C50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_258B008E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v38 = *(a2 + 8);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *&v46 = v10;
  *(&v46 + 1) = v11;
  LOBYTE(v47) = v12;
  sub_258A2D96C();
  sub_258B02334();
  v13 = *(&v41 + 1);
  v36 = v41;
  v37 = v42;
  v34 = *(v7 + 16);
  v34(v9, a1, v6);
  v35 = *(a2 + 34);
  v39 = *(a2 + 33);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v40 = v14;
  v16 = type metadata accessor for ValenceSelectionPhaseContent(0);
  v17 = v16[8];
  *&a3[v17] = swift_getKeyPath();
  v18 = MEMORY[0x277CDF458];
  sub_258A8953C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v19 = v16[9];
  *&a3[v19] = swift_getKeyPath();
  sub_258A8953C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v18);
  swift_storeEnumTagMultiPayload();
  v20 = v16[10];
  *&a3[v20] = swift_getKeyPath();
  sub_258A8953C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], v18);
  swift_storeEnumTagMultiPayload();
  v21 = &a3[v16[13]];
  type metadata accessor for CGSize(0);
  v41 = 0uLL;
  sub_258B02114();
  v22 = v47;
  *v21 = v46;
  *(v21 + 2) = v22;
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A88DE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);

  *a3 = sub_258B00A24();
  *(a3 + 1) = v23;
  v24 = &a3[v16[15]];
  *v24 = v36;
  *(v24 + 1) = v13;
  v24[16] = v37;
  v34(&a3[v16[5]], v9, v6);
  v25 = v35;
  a3[v16[6]] = v35;
  v26 = &a3[v16[11]];
  LOBYTE(v41) = v25;

  sub_258B02114();
  v27 = *(&v46 + 1);
  *v26 = v46;
  *(v26 + 1) = v27;
  a3[v16[14]] = v39;
  v28 = &a3[v16[7]];
  *v28 = v40;
  *(v28 + 1) = v15;
  v29 = &a3[v16[12]];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;

  sub_258B02114();

  (*(v7 + 8))(v9, v6);
  v30 = v45;
  result = v44;
  v32 = v42;
  v33 = v41;
  *(v29 + 2) = v43;
  *(v29 + 3) = result;
  *(v29 + 8) = v30;
  *v29 = v33;
  *(v29 + 1) = v32;
  return result;
}

uint64_t sub_258A88068()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v1 == 2)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

LABEL_8:
    swift_once();
    return sub_258AFFD94();
  }

  if (v1 == 1)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_258A881D4@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v78 = &v76 - v5;
  sub_258A88C2C(0);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A88E28(0);
  v89 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v82 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v76 - v11;
  sub_258A89674(0, &qword_27F9703F8, MEMORY[0x277CE0330]);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v76 - v13;
  v76 = type metadata accessor for ValenceSelectionPhase_iOS(0);
  v14 = *(v76 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v76);
  sub_258A88C7C(0);
  v85 = v16;
  v84 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v77 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  sub_258A88C54(0);
  v86 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v76 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v76 - v28;
  v30 = *(*(v1 + 8) + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization);
  sub_258A88EB4(v1, &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  if (v30 == 1)
  {
    v32 = swift_allocObject();
    sub_258A88F18(&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
    *&v98 = sub_258A896E4;
    *(&v98 + 1) = v32;
    if (*(v1 + 34))
    {
      v33 = 0;
      v34 = 0xE000000000000000;
    }

    else
    {
      v33 = sub_258A88068();
      v34 = v38;
    }

    *&v91 = v33;
    *(&v91 + 1) = v34;
    sub_258A88D4C(0);
    v39 = sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C, MEMORY[0x277CDF7D8]);
    sub_2589BFF58(v39, v40, v41);
    sub_258B01CB4();

    sub_258B024F4();
    sub_258B00C94();
    (*(v84 + 32))(v27, v20, v85);
    v42 = &v27[*(v86 + 36)];
    v43 = v103;
    *(v42 + 4) = v102;
    *(v42 + 5) = v43;
    *(v42 + 6) = v104;
    v44 = v99;
    *v42 = v98;
    *(v42 + 1) = v44;
    v45 = v101;
    *(v42 + 2) = v100;
    *(v42 + 3) = v45;
    sub_258A88FDC(v27, v29, sub_258A88C54);
    v46 = sub_258A88C54;
    sub_258A89474(v29, v88, sub_258A88C54);
    swift_storeEnumTagMultiPayload();
    sub_258A89044();
    sub_258A8917C(&qword_27F970408, sub_258A88E28, sub_258A89140, MEMORY[0x277CDFC60]);
    sub_258B012A4();
    v47 = v29;
  }

  else
  {
    v35 = swift_allocObject();
    sub_258A88F18(&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v31);
    *&v98 = sub_258A88F7C;
    *(&v98 + 1) = v35;
    if (*(v1 + 34))
    {
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      v36 = sub_258A88068();
      v37 = v48;
    }

    *&v91 = v36;
    *(&v91 + 1) = v37;
    sub_258A88D4C(0);
    v49 = sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C, MEMORY[0x277CDF7D8]);
    sub_2589BFF58(v49, v50, v51);
    v52 = v77;
    sub_258B01CB4();

    v53 = v78;
    sub_258AC1B90(v78);
    sub_258A88F80(v53);
    sub_258B024F4();
    sub_258B00C94();
    (*(v84 + 32))(v24, v52, v85);
    v54 = &v24[*(v86 + 36)];
    v55 = v96;
    *(v54 + 4) = v95;
    *(v54 + 5) = v55;
    *(v54 + 6) = v97;
    v56 = v92;
    *v54 = v91;
    *(v54 + 1) = v56;
    v57 = v94;
    *(v54 + 2) = v93;
    *(v54 + 3) = v57;
    LOBYTE(v53) = sub_258B01864();
    v58 = v79;
    sub_258AC1B90(v79);
    sub_258A88F80(v58);
    sub_258B00654();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v81;
    sub_258A88FDC(v24, v81, sub_258A88C54);
    v68 = v67 + *(v80 + 36);
    *v68 = v53;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    sub_258B024F4();
    sub_258B00C94();
    v69 = v82;
    sub_258A88FDC(v67, v82, sub_258A88C2C);
    v70 = (v69 + *(v89 + 36));
    v71 = v103;
    v70[4] = v102;
    v70[5] = v71;
    v70[6] = v104;
    v72 = v99;
    *v70 = v98;
    v70[1] = v72;
    v73 = v101;
    v70[2] = v100;
    v70[3] = v73;
    v74 = v83;
    sub_258A88FDC(v69, v83, sub_258A88E28);
    v46 = sub_258A88E28;
    sub_258A89474(v74, v88, sub_258A88E28);
    swift_storeEnumTagMultiPayload();
    sub_258A89044();
    sub_258A8917C(&qword_27F970408, sub_258A88E28, sub_258A89140, MEMORY[0x277CDFC60]);
    sub_258B012A4();
    v47 = v74;
  }

  return sub_258A894DC(v47, v46);
}

void sub_258A88C7C(uint64_t a1)
{
  if (!qword_27F9703D0)
  {
    sub_258A88D4C(255);
    v1 = sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C, MEMORY[0x277CDF7D8]);
    sub_2589BFF58(v1, v2, v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9703D0);
    }
  }
}

void sub_258A88D4C(uint64_t a1)
{
  if (!qword_27F9703D8)
  {
    type metadata accessor for ValenceSelectionPhaseContent(255);
    sub_258A88DE0(&qword_27F9703E0, type metadata accessor for ValenceSelectionPhaseContent, &unk_258B30F70);
    v1 = sub_258B009C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9703D8);
    }
  }
}

uint64_t sub_258A88DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A88E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_258A88EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValenceSelectionPhase_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A88F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValenceSelectionPhase_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A88F80(uint64_t a1)
{
  v2 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A88FDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A89044()
{
  result = qword_27F970400;
  if (!qword_27F970400)
  {
    sub_258A88C54(255);
    sub_258A88D4C(255);
    v1 = sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C, MEMORY[0x277CDF7D8]);
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970400);
  }

  return result;
}

uint64_t sub_258A8917C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

uint64_t objectdestroyTm_19()
{
  v1 = (type metadata accessor for ValenceSelectionPhase_iOS(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  sub_258A8953C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for ValenceSelectionPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_258A893F4@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for ValenceSelectionPhase_iOS(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_258A87C50(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_258A89474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A894DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A8953C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A895A0()
{
  result = qword_27F970418;
  if (!qword_27F970418)
  {
    sub_258A89674(255, &qword_27F970420, MEMORY[0x277CE0338]);
    sub_258A89044();
    sub_258A8917C(&qword_27F970408, sub_258A88E28, sub_258A89140, MEMORY[0x277CDFC60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970418);
  }

  return result;
}

void sub_258A89674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A88C54(255);
    v7 = v6;
    sub_258A88E28(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A896FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ShowAllLabelsPicker(uint64_t a1)
{
  result = qword_27F970428;
  if (!qword_27F970428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A897C0(uint64_t a1)
{
  type metadata accessor for ValenceClassification(319);
  if (v1 <= 0x3F)
  {
    sub_258A896FC(319, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258A896FC(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_258A896FC(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258A896FC(319, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258A89968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_258B02454();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShowAllLabelsPicker(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8B80C(0);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ShowAllLabelsPicker;
  sub_258A8CF30(a1, v8, type metadata accessor for ShowAllLabelsPicker);
  sub_258B02D24();
  v11 = sub_258B02D14();
  v12 = *(v6 + 80);
  v13 = (v12 + 32) & ~v12;
  v37 = v7;
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v11;
  *(v14 + 24) = v15;
  sub_258A8C5E0(v8, v14 + v13);
  v34 = a1;
  sub_258A8CF30(a1, v8, type metadata accessor for ShowAllLabelsPicker);
  v16 = sub_258B02D14();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  sub_258A8C5E0(v8, v17 + v13);
  sub_258A8C9DC(0);
  sub_258B02344();
  v44 = a1;
  type metadata accessor for Label(0);
  sub_258A8B8FC(0);
  sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
  sub_258A8BEA4();
  v18 = v35;
  sub_258B01A64();
  KeyPath = swift_getKeyPath();
  v20 = (v18 + *(v36 + 36));
  sub_258A8C168(0);
  v22 = *(v21 + 28);
  v24 = v40;
  v23 = v41;
  v25 = v38;
  (*(v40 + 104))(v38, *MEMORY[0x277CDF0D0], v41);
  sub_258B02354();
  (*(v24 + 8))(v25, v23);
  sub_258A8C1D0(0);
  (*(*(v26 - 8) + 56))(v20 + v22, 0, 1, v26);
  *v20 = KeyPath;
  v27 = v34;
  v43 = v34;
  sub_258A8C204(0);
  sub_258A8C384();
  sub_258A8BD58(&qword_27F970548, sub_258A8C204, MEMORY[0x277CDDF68]);
  v28 = v42;
  sub_258B01EE4();
  sub_258A8CE14(v18, sub_258A8B80C);
  sub_258A8CF30(v27, v8, v39);
  v29 = swift_allocObject();
  sub_258A8C5E0(v8, v29 + ((v12 + 16) & ~v12));
  v45 = 0;
  sub_258B02114();
  LOBYTE(v20) = v46;
  v30 = v47;
  sub_258A8B6D8(0);
  v32 = v28 + *(v31 + 36);
  *v32 = sub_258A8CA80;
  *(v32 + 8) = v29;
  *(v32 + 16) = v20;
  *(v32 + 24) = v30;
}

uint64_t sub_258A89E8C()
{
  sub_258A8B99C(0, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - v1;
  v7 = sub_258B02F84();
  sub_258B003E4();
  sub_258AEF9FC(&v7);

  v4 = v7;
  MEMORY[0x28223BE20](v3);
  *(&v6 - 2) = v4;
  sub_258A8B148(v2);
  sub_258A8BDA0(0);
  sub_258A8BF30();
  sub_258A8C0F0();
  sub_258B02404();
}

uint64_t sub_258A8A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_258A8C238(0);
  v19[0] = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8C308(0, &qword_27F970528, sub_2589ED384, sub_2589ED78C);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = sub_258B01384();
  MEMORY[0x28223BE20](v11 - 8);
  sub_258A8C308(0, &qword_27F96CB88, sub_2589ECFF0, sub_2589C6218);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  sub_258B01324();
  v19[8] = a1;
  sub_2589ECFF0(0);
  sub_2589C6218();
  sub_258B00784();
  sub_258B01334();
  v19[4] = a1;
  sub_2589ED384(0);
  sub_2589ED78C();
  sub_258B00784();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_258B011B4();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_258A8A348(uint64_t a1)
{
  v2 = type metadata accessor for ShowAllLabelsPicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8CF30(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowAllLabelsPicker);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_258A8C5E0(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_258B026A4();
  v12[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D57C8);
  sub_258A8CF98(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A8BD58(&qword_27F96CBA0, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  sub_258B01DD4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_258A8A5F0(uint64_t a1)
{
  v2 = sub_258B00F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A896FC(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_258B008A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShowAllLabelsPicker(0);
  sub_2589EE78C(a1 + *(v13 + 24), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_258B00894();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_258A8A888(uint64_t a1)
{
  v2 = type metadata accessor for ShowAllLabelsPicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8CF30(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowAllLabelsPicker);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_258A8C5E0(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_258B026A4();
  v12[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5808);
  sub_258A8CF98(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A8BD58(&qword_27F96D6D8, MEMORY[0x277D12688], MEMORY[0x277D12678]);
  sub_258B01DD4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_258A8AB30(uint64_t a1)
{
  v2 = sub_258B008A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ShowAllLabelsPicker(0) + 32));
  v8 = *v6;
  v7 = v6[1];
  v11 = v8;
  *&v12 = v7;
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  sub_258A896FC(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  sub_258B02314();
  sub_258AC1744(v5);
  sub_258B00894();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_258A8ACC0(uint64_t a1)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_258A896FC(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v6);
  v2 = (a1 + *(type metadata accessor for ShowAllLabelsPicker(0) + 32));
  v4 = *v2;
  v3 = v2[1];
  v7 = v4;
  *&v8 = v3;
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A8AD98(uint64_t a1)
{
  swift_getKeyPath();
  sub_258A1E3AC(0);
  sub_258A155A0(0);
  sub_258A8BD58(&qword_27F9704C0, sub_258A1E3AC, MEMORY[0x277D83980]);
  sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
  sub_258A5B2D4();
  sub_258B003E4();
  return sub_258B023B4();
}

double sub_258A8AEC4(void *a1)
{
  v1 = HKUILocalizedStringForStateOfMindLabel();
  sub_258B02B14();

  sub_2589BFF58(v2, v3, v4);
  v5 = sub_258B01B44();
  v7 = v6;
  v9 = v8;
  sub_258B01914();
  v10 = sub_258B01AE4();
  v12 = v11;
  v14 = v13;

  sub_2589BFFAC(v5, v7, v9 & 1);

  v15 = MEMORY[0x277D837D0];
  sub_258A8CF98(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B326A0;
  strcpy((inited + 32), "ShowAllLabels");
  *(inited + 46) = -4864;
  *(inited + 48) = 0x6C6562614CLL;
  *(inited + 56) = 0xE500000000000000;
  v17 = NSStringFromHKStateOfMindLabel();
  v18 = sub_258B02B14();
  v20 = v19;

  *(inited + 64) = v18;
  *(inited + 72) = v20;
  v21 = sub_258B003E4();
  sub_2589FC8C8(v21);
  sub_258A8CF98(0, &qword_280DF8948, v15, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v10, v12, v14 & 1);

  return result;
}

double sub_258A8B148@<D0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_258A8BAC8(0);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v30 = sub_258AFFD94();
  v31 = v4;
  sub_2589BFF58(v30, v4, v5);
  v6 = sub_258B01B44();
  v8 = v7;
  v10 = v9;
  sub_258B01914();
  v11 = sub_258B01AE4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2589BFFAC(v6, v8, v10 & 1);

  v30 = v11;
  v31 = v13;
  v15 &= 1u;
  v32 = v15;
  v33 = v17;
  sub_258B01CF4();
  sub_2589BFFAC(v11, v13, v15);

  *&v3[*(v28 + 36)] = sub_258B014A4();
  sub_258A8BB7C();
  v18 = v29;
  sub_258B01E44();
  sub_258A8CE14(v3, sub_258A8BAC8);
  sub_258A8BA10(0);
  v20 = (v18 + *(v19 + 36));
  sub_258A8BC5C(0);
  v22 = *(v21 + 28);
  v23 = sub_258B01AC4();
  (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
  *v20 = swift_getKeyPath();
  sub_258A8B99C(0, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
  v25 = v18 + *(v24 + 36);
  *v25 = 0;
  *(v25 + 8) = 0;
  result = 8.0;
  *(v25 + 16) = xmmword_258B326B0;
  *(v25 + 32) = 0;
  return result;
}

void sub_258A8B420(uint64_t *a2@<X8>)
{
  type metadata accessor for ShowAllLabelsPicker(0);
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v3 = sub_258AE9BC8(v4);

  *a2 = v3;
}

uint64_t sub_258A8B4CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_258AE55F4(*(*a1 + 16), 0, a5);
  v9 = sub_258AE9A2C(v15, v8 + 4, v7, v6);
  v10 = v15[0];
  sub_258B003E4();
  sub_258A8CFE8(v10);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:
    v8 = MEMORY[0x277D84F90];
  }

  v15[0] = v8;
  sub_258AEF9FC(v15);
  v11 = (a4 + *(type metadata accessor for ShowAllLabelsPicker(0) + 32));
  v13 = *v11;
  v12 = v11[1];
  v15[0] = v13;
  v15[1] = v12;
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

void sub_258A8B618(uint64_t a1@<X8>)
{
  sub_258A8B6D8(0);
  sub_258A8C464();
  sub_258B00B24();
  KeyPath = swift_getKeyPath();
  sub_258A8B99C(0, &qword_27F970558, sub_258A8C564, sub_2589D3448);
  v4 = (a1 + *(v3 + 36));
  *v4 = KeyPath;
  v4[1] = 0;
}

void sub_258A8B6D8(uint64_t a1)
{
  if (!qword_27F970440)
  {
    sub_258A8B738(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970440);
    }
  }
}

void sub_258A8B738(uint64_t a1)
{
  if (!qword_27F970448)
  {
    sub_258A8B80C(255);
    sub_258A8C204(255);
    sub_258A8C384();
    sub_258A8BD58(&qword_27F970548, sub_258A8C204, MEMORY[0x277CDDF68]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970448);
    }
  }
}

void sub_258A8B840(uint64_t a1)
{
  if (!qword_27F970458)
  {
    type metadata accessor for Label(255);
    sub_258A8B8FC(255);
    sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
    sub_258A8BEA4();
    v1 = sub_258B01A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970458);
    }
  }
}

void sub_258A8B8FC(uint64_t a1)
{
  if (!qword_27F970460)
  {
    sub_258A8B99C(255, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
    sub_258A8BDA0(255);
    v1 = sub_258B02444();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970460);
    }
  }
}

void sub_258A8B99C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258A8BA44(uint64_t a1)
{
  if (!qword_27F970478)
  {
    sub_258A8BAC8(255);
    sub_258A8BB7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970478);
    }
  }
}

void sub_258A8BAFC()
{
  if (!qword_27F970488)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970488);
    }
  }
}

unint64_t sub_258A8BB7C()
{
  result = qword_27F970490;
  if (!qword_27F970490)
  {
    sub_258A8BAC8(255);
    swift_getOpaqueTypeConformance2();
    sub_258A8BD58(&qword_27F96F3E8, sub_258A4A19C, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970490);
  }

  return result;
}

void sub_258A8BCC4(uint64_t a1)
{
  if (!qword_27F9704A8)
  {
    sub_258B013E4();
    sub_258A8BD58(&qword_27F9704B0, MEMORY[0x277CDE0E0], MEMORY[0x277CDE0D8]);
    v1 = sub_258B01454();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9704A8);
    }
  }
}

uint64_t sub_258A8BD58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A8BDA0(uint64_t a1)
{
  if (!qword_27F9704B8)
  {
    sub_258A1E3AC(255);
    type metadata accessor for Label(255);
    sub_258A155A0(255);
    sub_258A8BD58(&qword_27F9704C0, sub_258A1E3AC, MEMORY[0x277D83980]);
    sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
    v1 = sub_258B023D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9704B8);
    }
  }
}

unint64_t sub_258A8BEA4()
{
  result = qword_27F9704D0;
  if (!qword_27F9704D0)
  {
    sub_258A8B8FC(255);
    sub_258A8BF30();
    sub_258A8C0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704D0);
  }

  return result;
}

unint64_t sub_258A8BF30()
{
  result = qword_27F9704D8;
  if (!qword_27F9704D8)
  {
    sub_258A8B99C(255, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
    sub_258A8C010();
    sub_258A8BD58(&qword_27F9704F0, sub_258A8BCC4, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704D8);
  }

  return result;
}

unint64_t sub_258A8C010()
{
  result = qword_27F9704E0;
  if (!qword_27F9704E0)
  {
    sub_258A8BA10(255);
    sub_258A8BAC8(255);
    sub_258A8BB7C();
    swift_getOpaqueTypeConformance2();
    sub_258A8BD58(&qword_27F9704E8, sub_258A8BC5C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704E0);
  }

  return result;
}

unint64_t sub_258A8C0F0()
{
  result = qword_27F9704F8;
  if (!qword_27F9704F8)
  {
    sub_258A8BDA0(255);
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704F8);
  }

  return result;
}

void sub_258A8C238(uint64_t a1)
{
  if (!qword_27F970520)
  {
    sub_258A8C308(255, &qword_27F96CB88, sub_2589ECFF0, sub_2589C6218);
    sub_258A8C308(255, &qword_27F970528, sub_2589ED384, sub_2589ED78C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970520);
    }
  }
}

void sub_258A8C308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_258B00794();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A8C384()
{
  result = qword_27F970530;
  if (!qword_27F970530)
  {
    sub_258A8B80C(255);
    sub_258A8BD58(&qword_27F970538, sub_258A8B840, MEMORY[0x277CDE5A0]);
    sub_258A8BD58(&qword_27F970540, sub_258A8C168, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970530);
  }

  return result;
}

unint64_t sub_258A8C464()
{
  result = qword_27F970550;
  if (!qword_27F970550)
  {
    sub_258A8B6D8(255);
    sub_258A8B80C(255);
    sub_258A8C204(255);
    sub_258A8C384();
    sub_258A8BD58(&qword_27F970548, sub_258A8C204, MEMORY[0x277CDDF68]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_258A48FA4(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970550);
  }

  return result;
}

void sub_258A8C564(uint64_t a1)
{
  if (!qword_27F970560)
  {
    sub_258B00A14();
    sub_258A8B6D8(255);
    sub_258A8C464();
    v1 = sub_258B00B34();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970560);
    }
  }
}

uint64_t sub_258A8C5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowAllLabelsPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258A8C644(uint64_t *a1@<X8>)
{
  type metadata accessor for ShowAllLabelsPicker(0);

  sub_258A8B420(a1);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for ShowAllLabelsPicker(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 24);
  sub_258A896FC(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_258B008A4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + *(v1 + 28);
  sub_258A896FC(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_258B01504();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v9 = *(type metadata accessor for AssociationSelectionPhaseSpecs(0) + 20);
    v10 = sub_258B00AA4();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A8C968(uint64_t *a1)
{
  v3 = *(type metadata accessor for ShowAllLabelsPicker(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_258A8B4CC(a1, v5, v6, v7, v4);
}

void sub_258A8C9DC(uint64_t a1)
{
  if (!qword_27F970568)
  {
    type metadata accessor for Label(255);
    sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label, &unk_258B2B578);
    v1 = sub_258B02D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970568);
    }
  }
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for ShowAllLabelsPicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_258A896FC(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B008A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 28);
  sub_258A896FC(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B01504();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    v8 = *(type metadata accessor for AssociationSelectionPhaseSpecs(0) + 20);
    v9 = sub_258B00AA4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A8CD80(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShowAllLabelsPicker(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_258A8CE14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A8CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  a6(a1, &v14 - v11);
  return a7(v12);
}

uint64_t sub_258A8CF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A8CF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A8CFF0()
{
  result = qword_27F970570;
  if (!qword_27F970570)
  {
    sub_258A8B99C(255, &qword_27F970558, sub_258A8C564, sub_2589D3448);
    sub_258A8BD58(&qword_27F970578, sub_258A8C564, MEMORY[0x277CDDA18]);
    sub_258A8BD58(&qword_27F96CF60, sub_2589D3448, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970570);
  }

  return result;
}

uint64_t sub_258A8D12C()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_258B020D4();
  sub_258B01D64();
}

unint64_t sub_258A8D1E0()
{
  result = qword_27F970580;
  if (!qword_27F970580)
  {
    sub_258A8D260(255);
    sub_2589DC6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970580);
  }

  return result;
}

void sub_258A8D260(uint64_t a1)
{
  if (!qword_27F970588)
  {
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970588);
    }
  }
}

uint64_t type metadata accessor for AssessmentFeatureStatus(uint64_t a1)
{
  result = qword_280DF8D10;
  if (!qword_280DF8D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A8D334()
{
  v1 = v0;
  sub_2589F5990(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  sub_2589F592C(v1, &v18 - v6);
  v8 = sub_258B002E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = v7;
  }

  else
  {
    v12 = sub_258B002F4();
    v13 = *(v9 + 8);
    v13(v7, v8);
    v14 = [v12 areAllRequirementsSatisfied];

    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_2589F592C(v1, v5);
    if (v10(v5, 1, v8) != 1)
    {
      v17 = sub_258B002F4();
      v13(v5, v8);
      v15 = sub_258B03094();

      return v15 & 1;
    }

    v11 = v5;
  }

  sub_258A8D51C(v11);
LABEL_7:
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_258A8D51C(uint64_t a1)
{
  sub_2589F5990(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t HKMHDaySummary.representativeStateOfMind.getter()
{
  v1 = v0;
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = [v1 dailyStateOfMind];
  if (v9)
  {

    return [v1 dailyStateOfMind];
  }

  v11 = [v1 momentaryStatesOfMind];
  v12 = sub_258A76744();
  v13 = sub_258B02C74();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_24:

    return 0;
  }

  result = sub_258B032B4();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x259C937C0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v14 = *(v13 + 32);
  }

  v11 = v14;

  v15 = [v1 momentaryStatesOfMind];
  v12 = sub_258B02C74();

  if (!(v12 >> 62))
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_27:

    return 0;
  }

  v16 = sub_258B032B4();
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_11:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v18 = MEMORY[0x259C937C0](result, v12);
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v18 = *(v12 + 8 * result + 32);
LABEL_16:
  v19 = v18;

  v20 = [v11 startDate];
  sub_258B00034();

  v21 = [v19 startDate];
  sub_258B00034();

  sub_258A8D9A4();
  v22 = sub_258B02A54();
  v23 = *(v3 + 8);
  v23(v6, v2);
  v23(v8, v2);
  if (v22)
  {
    v24 = v11;
  }

  else
  {
    v24 = v19;
  }

  if (v22)
  {
    v25 = v19;
  }

  else
  {
    v25 = v11;
  }

  return v25;
}

void (*sub_258A8D89C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C937C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258A8D91C;
  }

  __break(1u);
  return result;
}

void (*sub_258A8D924(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C937C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258A8D9FC;
  }

  __break(1u);
  return result;
}

unint64_t sub_258A8D9A4()
{
  result = qword_27F96F0D8;
  if (!qword_27F96F0D8)
  {
    sub_258B00084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F0D8);
  }

  return result;
}

uint64_t _s9LogButtonVMa(uint64_t a1)
{
  result = qword_27F970590;
  if (!qword_27F970590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A8DA74(uint64_t a1)
{
  sub_258A8E1A4(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258A8DB4C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v28[-v7];
  _s9LogButtonVMa(0);
  v29 = v1;
  sub_258A3A940(0);
  sub_258A3AD0C();

  sub_258B02174();
  sub_258AC1060(v8);
  sub_258A8DF80(v8);
  sub_258A8DFDC(0);
  v10 = (a1 + *(v9 + 36));
  v11 = *(sub_258B00C34() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_258B010C4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #26.0 }

  *v10 = _Q0;
  sub_258AC1060(v6);
  sub_258A8DF80(v6);
  v19 = sub_258B01FC4();
  KeyPath = swift_getKeyPath();
  sub_258A8E10C(0);
  v22 = &v10[*(v21 + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  v23 = sub_258B024F4();
  v25 = v24;
  sub_2589D3340(0);
  v27 = &v10[*(v26 + 36)];
  *v27 = v23;
  v27[1] = v25;
}

void sub_258A8DD2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9LogButtonVMa(0);
  v8 = (a1 + *(v7 + 20));
  v9 = v8[1];
  v46 = *v8;
  v47 = v9;
  sub_2589BFF58(v7, v10, v11);
  sub_258B003E4();
  v12 = sub_258B01B44();
  v14 = v13;
  v16 = v15;
  sub_258AC1060(v6);
  sub_258A8DF80(v6);
  sub_258B01974();
  v17 = sub_258B01A94();
  v19 = v18;
  v21 = v20;
  v43[1] = v22;
  sub_2589BFFAC(v12, v14, v16 & 1);

  sub_258AC1060(v6);
  sub_258A8DF80(v6);
  v46 = sub_258B02014();
  v23 = sub_258B01AB4();
  v44 = v24;
  v45 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;
  sub_2589BFFAC(v17, v19, v21 & 1);

  v28 = sub_258B018D4();
  sub_258AC1060(v6);
  sub_258A8DF80(v6);
  sub_258B00654();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v12 & 1;
  v49 = v12 & 1;
  v48 = 0;
  LOBYTE(v12) = sub_258B01864();
  sub_258AC1060(v6);
  sub_258A8DF80(v6);
  sub_258B00654();
  v38 = v44;
  *a2 = v45;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v27;
  *(a2 + 32) = v28;
  *(a2 + 40) = v30;
  *(a2 + 48) = v32;
  *(a2 + 56) = v34;
  *(a2 + 64) = v36;
  *(a2 + 72) = 0;
  *(a2 + 80) = v12;
  *(a2 + 88) = v39;
  *(a2 + 96) = v40;
  *(a2 + 104) = v41;
  *(a2 + 112) = v42;
  *(a2 + 120) = 0;
}

uint64_t sub_258A8DF80(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A8DFDC(uint64_t a1)
{
  if (!qword_27F9705A0)
  {
    sub_258A8E044(255);
    sub_2589D3340(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9705A0);
    }
  }
}

void sub_258A8E08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258A8E10C(uint64_t a1)
{
  if (!qword_27F96CF40)
  {
    sub_258B00C34();
    sub_258A8E1A4(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CF40);
    }
  }
}

void sub_258A8E1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A8E208()
{
  result = qword_27F9705B0;
  if (!qword_27F9705B0)
  {
    sub_258A8DFDC(255);
    sub_258A8E2E8(&qword_27F9705B8, sub_258A8E044, MEMORY[0x277CDF028]);
    sub_258A8E2E8(&qword_27F96CFA0, sub_2589D3340, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9705B0);
  }

  return result;
}

uint64_t sub_258A8E2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16EntryLimitedViewVMa(uint64_t a1)
{
  result = qword_27F9705C0;
  if (!qword_27F9705C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A8E3A4(uint64_t a1)
{
  sub_258A8ECB0(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StateOfMindTimeline.DaySummary(319);
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_258A8E48C@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v71 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = &v66 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  v9 = _s13EntryBaseViewVMa(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A8EB48(0);
  v14 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A8EC7C(0);
  v70 = v17;
  MEMORY[0x28223BE20](v17);
  v74 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s16EntryLimitedViewVMa(0);
  v20 = v1 + *(v19 + 20);
  sub_258A8ED14(v20, v12 + *(v10 + 28), type metadata accessor for StateOfMindTimeline.DaySummary);
  *v12 = swift_getKeyPath();
  sub_258A8ECB0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v10 + 32)) = 0;
  v21 = (v1 + *(v19 + 24));
  v23 = *v21;
  v22 = v21[1];
  sub_258AC1060(v8);
  sub_258A8ED7C(v8, type metadata accessor for StateOfMindTimeline.Styles);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v25 = result;
    v26 = [result isiPad];

    if (v26)
    {
      v27 = 490.0;
    }

    else
    {
      v27 = 462.0;
    }

    v28 = *(v20 + *(type metadata accessor for StateOfMindTimeline.DaySummary(0) + 36));
    *v16 = v27;
    v16[1] = v27;
    *(v16 + 16) = 0;
    *(v16 + 3) = v23;
    *(v16 + 4) = v22;
    sub_258A8ED14(v12, v16 + v14[15], _s13EntryBaseViewVMa);
    v29 = (v16 + v14[16]);
    *v29 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v30 = _s14ShowMoreButtonVMa(0);
    v31 = (v29 + *(v30 + 20));
    *v31 = v23;
    v31[1] = v22;
    *(v29 + *(v30 + 24)) = v28;
    v32 = v16 + v14[17];
    v81[0] = 0;
    swift_retain_n();
    sub_258B003E4();
    sub_258B02114();
    v33 = v76;
    *v32 = aBlock;
    *(v32 + 1) = v33;
    sub_258A8ED7C(v12, _s13EntryBaseViewVMa);
    v34 = v72;
    sub_258AC1060(v72);
    sub_258A8ED7C(v34, type metadata accessor for StateOfMindTimeline.Styles);
    v35 = (v74 + *(v70 + 36));
    v70 = sub_258B00C34();
    v36 = *(v70 + 20);
    v68 = *MEMORY[0x277CE0118];
    v37 = v68;
    v38 = sub_258B010C4();
    v39 = *(v38 - 8);
    v67 = *(v39 + 104);
    v69 = v39 + 104;
    v67(&v35[v36], v37, v38);
    __asm { FMOV            V0.2D, #26.0 }

    v66 = _Q0;
    *v35 = _Q0;
    v45 = v71;
    sub_258AC1060(v71);
    sub_258A8ED7C(v45, type metadata accessor for StateOfMindTimeline.Styles);
    v46 = objc_opt_self();
    v47 = [v46 secondarySystemGroupedBackgroundColor];
    v48 = [v46 tertiarySystemGroupedBackgroundColor];
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = v48;
    v49[4] = 0;
    v49[5] = v47;
    v50 = objc_allocWithZone(MEMORY[0x277D75348]);
    v79 = sub_2589C69C4;
    v80 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_258A52B54;
    v78 = &block_descriptor_11;
    v51 = _Block_copy(&aBlock);
    [v50 initWithDynamicProvider_];
    _Block_release(v51);

    v52 = sub_258B01F94();
    KeyPath = swift_getKeyPath();
    sub_258A8E10C(0);
    v55 = &v35[*(v54 + 36)];
    *v55 = KeyPath;
    v55[1] = v52;
    v56 = sub_258B024F4();
    v58 = v57;
    sub_2589D3340(0);
    v60 = &v35[*(v59 + 36)];
    *v60 = v56;
    v60[1] = v58;
    v61 = v74;
    sub_258A8EE68(v16, v74, sub_258A8EB48);
    sub_258AC1060(v34);
    sub_258A8ED7C(v34, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258A8EDF4(0, &qword_27F9705E0, sub_258A8EC7C, sub_2589C54E4);
    v63 = v73;
    v64 = (v73 + *(v62 + 36));
    v67(&v64[*(v70 + 20)], v68, v38);
    *v64 = v66;
    sub_2589C54E4(0);
    *&v64[*(v65 + 36)] = 256;
    return sub_258A8EE68(v61, v63, sub_258A8EC7C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_258A8EB48(uint64_t a1)
{
  if (!qword_27F9705D0)
  {
    v4[0] = _s13EntryBaseViewVMa(255);
    v4[1] = _s14ShowMoreButtonVMa(255);
    v4[2] = sub_258A8EC34(&qword_27F96F670, _s13EntryBaseViewVMa, &unk_258B33E10);
    v4[3] = sub_258A8EC34(&qword_27F96CA60, _s14ShowMoreButtonVMa, &unk_258B35744);
    v2 = type metadata accessor for UnlimitedHeightVStackWithFooter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_27F9705D0);
    }
  }
}

uint64_t sub_258A8EC34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A8ECB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A8ED14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A8ED7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_258A8EDF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

uint64_t sub_258A8EE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A8EED0()
{
  result = qword_27F9705E8;
  if (!qword_27F9705E8)
  {
    sub_258A8EDF4(255, &qword_27F9705E0, sub_258A8EC7C, sub_2589C54E4);
    sub_258A8EFB0();
    sub_258A8EC34(&qword_27F96CBF0, sub_2589C54E4, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9705E8);
  }

  return result;
}

unint64_t sub_258A8EFB0()
{
  result = qword_27F9705F0;
  if (!qword_27F9705F0)
  {
    sub_258A8EC7C(255);
    sub_258A8EC34(&qword_27F9705F8, sub_258A8EB48, &unk_258B2DB30);
    sub_258A8EC34(&qword_27F96CFA0, sub_2589D3340, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9705F0);
  }

  return result;
}

uint64_t sub_258A8F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_258A10490(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A97144(a3, v11, sub_258A10490);
  v12 = sub_258B02D44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_258A9677C(v11, sub_258A10490);
  }

  else
  {
    sub_258B02D34();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_258B02CE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_258B02B54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_258A9677C(a3, sub_258A10490);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258A9677C(a3, sub_258A10490);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_258A8F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_258A10490(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A97144(a3, v11, sub_258A10490);
  v12 = sub_258B02D44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_258A9677C(v11, sub_258A10490);
  }

  else
  {
    sub_258B02D34();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_258B02CE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_258B02B54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_258A9748C(0, &qword_27F970618, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_258A9677C(v25[0], sub_258A10490);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258A9677C(a3, sub_258A10490);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_258A9748C(0, &qword_27F970618, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_258A8F6FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A8F7D8(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = sub_258B002E4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, a1, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258A97144(v8, v6, sub_2589F5990);

    sub_258B00574();
    sub_258A9677C(v8, sub_2589F5990);
    swift_getKeyPath();
    swift_getKeyPath();
    v12[7] = 2;
    return sub_258B00574();
  }

  return result;
}

id sub_258A8F9D8()
{
  v0 = sub_258B002E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F5990(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_258A9677C(v6, sub_2589F5990);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_258A9677C(v6, sub_2589F5990);
    v8 = sub_258B002F4();
    (*(v1 + 8))(v3, v0);
    v9 = [v8 areAllRequirementsSatisfied];

    return v9;
  }
}

id sub_258A8FBE0()
{
  sub_2589F5990(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AssessmentFeatureStatus(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258A97144(v5, v2, sub_2589F5990);
  v6 = sub_258B002E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_258A9677C(v5, type metadata accessor for AssessmentFeatureStatus);
    sub_258A9677C(v2, sub_2589F5990);
    return 0;
  }

  else
  {
    v9 = sub_258B002F4();
    (*(v7 + 8))(v2, v6);
    v10 = [v9 areAllRequirementsSatisfied];

    sub_258A9677C(v5, type metadata accessor for AssessmentFeatureStatus);
    return v10;
  }
}

uint64_t sub_258A8FE00(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_258A10490(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = a1;

  sub_258B00574();
  v8 = sub_258B02D44();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_258B02D24();

  v9 = sub_258B02D14();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v2;
  *(v10 + 40) = a1;
  *(v10 + 48) = v4;
  sub_258A8F090(0, 0, v7, &unk_258B32D70, v10);
}

uint64_t sub_258A8FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = sub_258B00384();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  sub_258A9748C(0, &qword_27F970620, MEMORY[0x277D839B0], MEMORY[0x277D113A8]);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  sub_258B02D24();
  *(v6 + 88) = sub_258B02D14();
  v10 = sub_258B02CE4();
  *(v6 + 96) = v10;
  *(v6 + 104) = v9;

  return MEMORY[0x2822009F8](sub_258A90114, v10, v9);
}

uint64_t sub_258A90114()
{
  __swift_project_boxed_opaque_existential_1Tm((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  *(v0 + 112) = sub_258B00304();
  ObjectType = swift_getObjectType();
  sub_258B02EF4();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_258A901FC;
  v3 = *(v0 + 80);
  v4 = *(v0 + 136);

  return MEMORY[0x28216A558](v4, v3, ObjectType);
}

uint64_t sub_258A901FC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_258A9042C;
  }

  else
  {
    v8 = sub_258A903B8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_258A903B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258A9042C()
{
  v30 = v0;
  v1 = *(v0 + 128);

  sub_258B00364();

  v2 = v1;
  v3 = sub_258B00374();
  v4 = sub_258B02E84();

  if (os_log_type_enabled(v3, v4))
  {
    v25 = *(v0 + 128);
    v26 = *(v0 + 48);
    v27 = *(v0 + 40);
    v28 = *(v0 + 56);
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446722;
    v8 = sub_258B035A4();
    v10 = sub_2589F1F78(v8, v9, &v29);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1Tm((v5 + 16), *(v5 + 40));
    v11 = sub_258B00324();
    v12 = sub_258B02B14();
    v14 = v13;

    v15 = sub_2589F1F78(v12, v14, &v29);

    *(v6 + 14) = v15;
    *(v6 + 22) = 2082;
    *(v0 + 16) = v25;
    v16 = v25;
    sub_2589F3AFC();
    v17 = sub_258B02B44();
    v19 = sub_2589F1F78(v17, v18, &v29);

    *(v6 + 24) = v19;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s:%{public}s] Error setting feature setting: %{public}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v7, -1, -1);
    MEMORY[0x259C945C0](v6, -1, -1);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    v22 = *(v0 + 40);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t AssessmentFeatureModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t AssessmentFeatureModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258A90914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A9098C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AssessmentFeatureModel(0);
  result = sub_258B004E4();
  *a2 = result;
  return result;
}

uint64_t sub_258A909E0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v3;
}

uint64_t sub_258A90A6C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v14[1] = a1;
  sub_258A96F20(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A96F54(0);
  v15 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v2 + 16), *(v2 + 40));
  v17 = sub_258B00334();
  sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
  v10 = sub_258B02F54();
  v18 = v10;
  v11 = sub_258B02F44();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_258A97024(0);
  sub_258A970FC(&qword_280DF8980, 255, sub_258A97024, MEMORY[0x277CBCD90]);
  sub_258A9708C();
  sub_258B005B4();
  sub_258A9677C(v5, sub_258A96F20);

  swift_allocObject();
  swift_weakInit();
  sub_258A970FC(&qword_280DF8990, 255, sub_258A96F54, MEMORY[0x277CBCD60]);
  v12 = v15;
  sub_258B005D4();

  (*(v7 + 8))(v9, v12);
  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();
}

uint64_t sub_258A90D6C(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = sub_258B002E4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, a1, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258A97144(v8, v6, sub_2589F5990);
    swift_retain_n();
    sub_258B00574();
    sub_258A9677C(v8, sub_2589F5990);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v13) = 2;
    sub_258B00574();
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = 0;
    v14 = 1;

    sub_258B00574();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v13) = 2;
    return sub_258B00574();
  }

  return result;
}

uint64_t sub_258A90FF4()
{
  sub_2589F5990(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PeriodicAssessmentPromptsFeatureStatus(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v10 != 1)
  {
    return v9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v6 = sub_258B002E4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2589F59F0(v2, v5);
  v7 = sub_2589F5AF0();
  sub_258A9677C(v5, type metadata accessor for PeriodicAssessmentPromptsFeatureStatus);
  return v7;
}

uint64_t sub_258A911C4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_258A10490(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = a1;
  v14 = 0;

  sub_258B00574();
  v8 = sub_258B02D44();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_258B02D24();

  v9 = sub_258B02D14();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = v4;
  sub_258A8F090(0, 0, v7, &unk_258B32D80, v10);
}

uint64_t sub_258A91360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_258B00384();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_258A9748C(0, &qword_280DF8910, MEMORY[0x277D83B88], MEMORY[0x277D113A8]);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  sub_258B02D24();
  v6[12] = sub_258B02D14();
  v10 = sub_258B02CE4();
  v6[13] = v10;
  v6[14] = v9;

  return MEMORY[0x2822009F8](sub_258A914D8, v10, v9);
}

uint64_t sub_258A914D8()
{
  __swift_project_boxed_opaque_existential_1Tm((v0[3] + 16), *(v0[3] + 40));
  v0[15] = sub_258B00304();
  ObjectType = swift_getObjectType();
  sub_258B02B14();
  sub_258B02EE4();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_258A915D8;
  v3 = v0[11];
  v4 = v0[4];

  return MEMORY[0x28216A560](v4, v3, ObjectType);
}

uint64_t sub_258A915D8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_258A91808;
  }

  else
  {
    v8 = sub_258A91794;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_258A91794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258A91808()
{
  v30 = v0;
  v1 = *(v0 + 136);

  sub_258B00364();

  v2 = v1;
  v3 = sub_258B00374();
  v4 = sub_258B02E84();

  if (os_log_type_enabled(v3, v4))
  {
    v25 = *(v0 + 136);
    v26 = *(v0 + 56);
    v27 = *(v0 + 48);
    v28 = *(v0 + 64);
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446722;
    v8 = sub_258B035A4();
    v10 = sub_2589F1F78(v8, v9, &v29);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1Tm((v5 + 16), *(v5 + 40));
    v11 = sub_258B00324();
    v12 = sub_258B02B14();
    v14 = v13;

    v15 = sub_2589F1F78(v12, v14, &v29);

    *(v6 + 14) = v15;
    *(v6 + 22) = 2082;
    *(v0 + 16) = v25;
    v16 = v25;
    sub_2589F3AFC();
    v17 = sub_258B02B44();
    v19 = sub_2589F1F78(v17, v18, &v29);

    *(v6 + 24) = v19;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s:%{public}s] Error setting feature setting: %{public}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v7, -1, -1);
    MEMORY[0x259C945C0](v6, -1, -1);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_258A91ACC(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v4 = swift_allocObject();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_258A91BF0(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_258A91CE4()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t PeriodicAssessmentPromptsFeatureModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);

  v7 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v6(v0 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn, v5);
  return v0;
}

uint64_t PeriodicAssessmentPromptsFeatureModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);

  v7 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  v9 = v8;
  v10 = *(*(v8 - 8) + 8);

  v10(v0 + v7, v9);
  v6(v0 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn, v5);

  return swift_deallocClassInstance();
}

void *AssessmentsSettingsModel.__allocating_init(healthStore:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0C0] healthStore:a1 currentCountryCode:0];
  type metadata accessor for PeriodicAssessmentPromptsFeatureModel(0);
  v3 = swift_allocObject();
  v4 = sub_258A94DC0(v2, v3);
  v5 = *MEMORY[0x277CCC108];
  v6 = objc_allocWithZone(MEMORY[0x277CCD460]);
  v7 = a1;
  v8 = [v6 initWithFeatureIdentifier:v5 healthStore:v7 currentCountryCode:0];
  type metadata accessor for AssessmentFeatureModel(0);
  v9 = swift_allocObject();
  v10 = v8;
  v11 = sub_258A95368(v10, v9);

  swift_allocObject();
  v12 = sub_258A963D4(v4, v11);

  return v12;
}

void *AssessmentsSettingsModel.__allocating_init(periodicAssessmentPromptsFeatureModel:loggingPatternEscalationsFeatureModel:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_258A963D4(a1, a2);

  return v4;
}

void *AssessmentsSettingsModel.init(periodicAssessmentPromptsFeatureModel:loggingPatternEscalationsFeatureModel:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_258A963D4(a1, a2);

  return v2;
}

uint64_t sub_258A92304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for AssessmentsSettingsModel();
    sub_258A970FC(&qword_27F96EDD0, v3, type metadata accessor for AssessmentsSettingsModel, &protocol conformance descriptor for AssessmentsSettingsModel);
    sub_258B004E4();

    sub_258B00504();
  }

  return result;
}

Swift::Void __swiftcall AssessmentsSettingsModel.onboardToRecommendedPregnancySettings()()
{
  v1 = v0;
  sub_258A10490(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A911C4(30);
  sub_258A8FE00(1);
  v5 = sub_258B02D44();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_258B02D24();

  v6 = sub_258B02D14();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_258A8F090(0, 0, v4, &unk_258B329C8, v7);
}

uint64_t sub_258A924E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_258B00084();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_258B02D24();
  v4[6] = sub_258B02D14();
  v7 = sub_258B02CE4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_258A925D8, v7, v6);
}

uint64_t sub_258A925D8(uint64_t a1)
{
  sub_258B00044();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_258A92678;
  v3 = *(v1 + 40);

  return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v3);
}

uint64_t sub_258A92678()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_258A927FC, v6, v5);
}

uint64_t sub_258A927FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = sub_258B00384();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_258A95D18(0, &qword_27F970600, MEMORY[0x277CC9578], MEMORY[0x277D113A8]);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_258B02D24();
  v2[17] = sub_258B02D14();
  v6 = sub_258B02CE4();
  v2[18] = v6;
  v2[19] = v5;

  return MEMORY[0x2822009F8](sub_258A92A0C, v6, v5);
}

uint64_t sub_258A92A0C()
{
  sub_258A96718(*(v0[9] + 16) + 16, (v0 + 2));
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v0[20] = sub_258B00304();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  sub_258B02B14();
  sub_258B00084();
  sub_258B02EE4();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_258A92B44;
  v3 = v0[16];
  v4 = v0[8];

  return MEMORY[0x28216A550](v4, v3, ObjectType);
}

uint64_t sub_258A92B44()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 152);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_258A92D5C;
  }

  else
  {
    v8 = sub_258A92CDC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_258A92CDC()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258A92D5C()
{
  v24 = v0;
  v1 = *(v0 + 176);

  swift_unknownObjectRelease();
  sub_258B00364();
  v2 = v1;
  v3 = sub_258B00374();
  v4 = sub_258B02E84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 96);
    v22 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    v10 = sub_258B035A4();
    v12 = sub_2589F1F78(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 56) = v5;
    v13 = v5;
    sub_2589F3AFC();
    v14 = sub_258B02B44();
    v16 = sub_2589F1F78(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s] Error setting acknowledgment date: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

Swift::Bool __swiftcall AssessmentsSettingsModel.isSetToRecommendedPregnancySettings()()
{
  sub_2589F5990(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PeriodicAssessmentPromptsFeatureStatus(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v6 = sub_258B002E4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2589F59F0(v2, v5);
  LOBYTE(v2) = PeriodicAssessmentPromptsFeatureStatus.isSetToRecommendedPregnancySettings()();
  sub_258A9677C(v5, type metadata accessor for PeriodicAssessmentPromptsFeatureStatus);
  return v2 & 1;
}

unint64_t AssessmentsSettingsModel.areSettingsVisible.getter()
{
  if (sub_258A8F9D8())
  {
    return 1;
  }

  else
  {
    return sub_258A8F9D8() & 1;
  }
}

uint64_t AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter()
{
  v0 = type metadata accessor for AssessmentFeatureStatus(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v3 = v6;
  if (v6 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v3 = sub_258A8D334();
    sub_258A9677C(v2, type metadata accessor for AssessmentFeatureStatus);
  }

  return v3 & 1;
}

uint64_t sub_258A9328C@<X0>(_BYTE *a1@<X8>)
{
  result = AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_258A932BC(_BYTE *a1, uint64_t *a2)
{
  sub_258A10490(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v7 = *a2;
  sub_258A8FE00(a1);
  v8 = sub_258B02D44();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_258B02D24();

  v9 = sub_258B02D14();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = v7;
  sub_258A8F090(0, 0, v6, &unk_258B32D48, v10);
}

uint64_t AssessmentsSettingsModel.isPeriodicPromptsSettingOn.setter(char a1)
{
  v2 = v1;
  sub_258A10490(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8FE00(a1);
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_258B02D24();

  v8 = sub_258B02D14();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = v2;
  sub_258A8F090(0, 0, v6, &unk_258B32A70, v9);
}

uint64_t sub_258A93524(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 80) = a4;
  v6 = sub_258B00084();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  sub_258B02D24();
  *(v5 + 48) = sub_258B02D14();
  v8 = sub_258B02CE4();
  *(v5 + 56) = v8;
  *(v5 + 64) = v7;

  return MEMORY[0x2822009F8](sub_258A9361C, v8, v7);
}

uint64_t sub_258A9361C(uint64_t a1)
{
  if (*(v1 + 80) == 1)
  {
    sub_258B00044();
    v2 = swift_task_alloc();
    *(v1 + 72) = v2;
    *v2 = v1;
    v2[1] = sub_258A93708;
    v3 = *(v1 + 40);

    return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v3);
  }

  else
  {

    v5 = *(v1 + 8);

    return v5();
  }
}

uint64_t sub_258A93708()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_258A9388C, v6, v5);
}

uint64_t sub_258A9388C()
{

  v1 = *(v0 + 8);

  return v1();
}

void (*AssessmentsSettingsModel.isPeriodicPromptsSettingOn.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_258A10490(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter() & 1;
  return sub_258A9397C;
}

void sub_258A9397C(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = *(a1 + 16);
  sub_258A8FE00(v5);
  v6 = sub_258B02D44();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_258B02D24();

  v7 = sub_258B02D14();
  v10 = a1;
  v8 = *a1;
  v9 = v10[1];
  if (a2)
  {
    v11 = &unk_258B32A78;
  }

  else
  {
    v11 = &unk_258B32A80;
  }

  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v7;
  *(v12 + 24) = v13;
  *(v12 + 32) = v5;
  *(v12 + 40) = v8;
  sub_258A8F090(0, 0, v9, v11, v12);

  free(v9);
}

uint64_t sub_258A93AD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258A90FF4();
  *a1 = result;
  return result;
}

uint64_t sub_258A93B08(uint64_t *a1, uint64_t *a2)
{
  sub_258A10490(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *a2;
  sub_258A911C4(v7);
  v9 = sub_258B02D44();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_258B02D24();

  v10 = sub_258B02D14();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  sub_258A8F090(0, 0, v6, &unk_258B32D40, v11);
}

uint64_t AssessmentsSettingsModel.periodicAssessmentAlertCadence.setter(uint64_t a1)
{
  v2 = v1;
  sub_258A10490(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A911C4(a1);
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_258B02D24();

  v8 = sub_258B02D14();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  sub_258A8F090(0, 0, v6, &unk_258B32A90, v9);
}

uint64_t sub_258A93D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_258B00084();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_258B02D24();
  v4[6] = sub_258B02D14();
  v7 = sub_258B02CE4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_258A93E58, v7, v6);
}

uint64_t sub_258A93E58(uint64_t a1)
{
  sub_258B00044();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_258A93EF8;
  v3 = *(v1 + 40);

  return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v3);
}

uint64_t sub_258A93EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_258A97628, v6, v5);
}

void (*AssessmentsSettingsModel.periodicAssessmentAlertCadence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_258A10490(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  v6 = *(v1 + 16);
  a1[2] = v5;
  a1[3] = v6;
  *a1 = sub_258A90FF4();
  return sub_258A94104;
}

void sub_258A94104(uint64_t *a1, char a2)
{
  v4 = a1[2];
  sub_258A911C4(*a1);
  v5 = sub_258B02D44();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_258B02D24();

  v6 = sub_258B02D14();
  v9 = a1 + 1;
  v7 = a1[1];
  v8 = v9[1];
  if (a2)
  {
    v10 = &unk_258B32A98;
  }

  else
  {
    v10 = &unk_258B32AA0;
  }

  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v6;
  v11[3] = v12;
  v11[4] = v7;
  sub_258A8F090(0, 0, v8, v10, v11);

  free(v8);
}

uint64_t AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter()
{
  v0 = type metadata accessor for AssessmentFeatureStatus(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v3 = v6;
  if (v6 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v3 = sub_258A8D334();
    sub_258A9677C(v2, type metadata accessor for AssessmentFeatureStatus);
  }

  return v3 & 1;
}

uint64_t sub_258A9438C@<X0>(_BYTE *a1@<X8>)
{
  result = AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter() & 1;
  return sub_258A94458;
}

uint64_t AssessmentsSettingsModel.DisabledMessaging.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

id AssessmentsSettingsModel.disabledMessaging.getter@<X0>(char *a1@<X8>)
{
  if (sub_258A8FBE0() & 1) != 0 || (result = sub_258A8FBE0(), (result))
  {
    result = sub_258A8FBE0();
    if (result)
    {
      result = sub_258A8FBE0();
      if (result)
      {
        v3 = 3;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

void *AssessmentsSettingsModel.deinit()
{

  return v0;
}

uint64_t AssessmentsSettingsModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_258A94628()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A946A4(uint64_t a1, uint64_t *a2)
{
  sub_2589F5990(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_258A97144(a1, &v10 - v7, sub_2589F5990);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A97144(v8, v6, sub_2589F5990);

  sub_258B00574();
  return sub_258A9677C(v8, sub_2589F5990);
}

uint64_t sub_258A947D0@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_258A94858(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A948DC@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a4 = v6;
  return result;
}

uint64_t sub_258A94958(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A949C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258A94AC0;

  return v6(a1);
}

uint64_t sub_258A94AC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258A94BB8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_258A94CAC;

  return v5(v2 + 32);
}

uint64_t sub_258A94CAC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_258A94DC0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v19 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = MEMORY[0x277D83B88];
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  v22 = 0;
  v23 = 1;
  v14 = MEMORY[0x277D83D88];
  sub_258A9748C(0, &qword_280DF8928, v7, MEMORY[0x277D83D88]);
  sub_258B00524();
  (*(v10 + 32))(a2 + v13, v12, v9);
  v15 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn;
  v21 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], v14);
  sub_258B00524();
  (*(v4 + 32))(a2 + v15, v6, v19);
  v16 = a2 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel_pregnancyModeSettings;
  *v16 = 30;
  *(v16 + 8) = 1;
  return sub_258A95368(v20, a2);
}

uint64_t sub_258A95014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v8;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  v15 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  (*(v15 + 32))(&v28 - v19, a1, a3);
  v21 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  v34 = 0;
  v35 = 1;
  v22 = MEMORY[0x277D83D88];
  sub_258A9748C(0, &qword_280DF8928, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  sub_258B00524();
  (*(v11 + 32))(a2 + v21, v14, v10);
  v23 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn;
  v33 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], v22);
  v24 = v29;
  sub_258B00524();
  (*(v30 + 32))(a2 + v23, v24, v31);
  v25 = a2 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel_pregnancyModeSettings;
  *v25 = 30;
  *(v25 + 8) = 1;
  (*(v15 + 16))(v18, v20, a3);
  v26 = sub_258A95810(v18, a2, a3, v32);
  (*(v15 + 8))(v20, a3);
  return v26;
}

uint64_t sub_258A95368(uint64_t a1, uint64_t a2)
{
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = v29 - v5;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  sub_2589F5990(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  v37 = sub_2589F4488(0, &qword_280DF88F8, 0x277CCD460);
  v38 = MEMORY[0x277D113B8];
  v29[0] = v37;
  v34 = a1;
  v36[0] = a1;
  v20 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  v21 = sub_258B002E4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v29[1] = v22 + 56;
  v30 = v23;
  v23(v19, 1, 1, v21);
  sub_258A97144(v19, v17, sub_2589F5990);
  sub_258B00524();
  sub_258A9677C(v19, sub_2589F5990);
  (*(v8 + 32))(a2 + v20, v10, v7);
  v24 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  v35 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  v25 = v31;
  sub_258B00524();
  (*(v32 + 32))(a2 + v24, v25, v33);
  if (MEMORY[0x277D84F90] >> 62 && sub_258B032B4())
  {
    sub_258A96144(MEMORY[0x277D84F90]);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions) = v26;
  sub_258A96718(v36, a2 + 16);
  sub_258B00344();
  v30(v14, 0, 1, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A97144(v14, v19, sub_2589F5990);

  sub_258B00574();
  v27 = sub_258A9677C(v14, sub_2589F5990);
  (*(*a2 + 240))(v27);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return a2;
}

uint64_t sub_258A95810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  v35 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  sub_2589F5990(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  v44[3] = a3;
  v44[4] = a4;
  v42 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v24 = *(*(a3 - 8) + 32);
  v36 = boxed_opaque_existential_1;
  v25 = v41;
  v41 = a3;
  v24(boxed_opaque_existential_1, v25, a3);
  v26 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  v27 = sub_258B002E4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v37 = v28 + 56;
  v38 = v29;
  v29(v22, 1, 1, v27);
  sub_258A97144(v22, v20, sub_2589F5990);
  sub_258B00524();
  sub_258A9677C(v22, sub_2589F5990);
  (*(v11 + 32))(a2 + v26, v13, v35);
  v30 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  v43 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  sub_258B00524();
  (*(v39 + 32))(a2 + v30, v9, v40);
  if (MEMORY[0x277D84F90] >> 62 && sub_258B032B4())
  {
    sub_258A96144(MEMORY[0x277D84F90]);
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions) = v31;
  sub_258A96718(v44, a2 + 16);
  sub_258B00314();
  v38(v17, 0, 1, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A97144(v17, v22, sub_2589F5990);

  sub_258B00574();
  v32 = sub_258A9677C(v17, sub_2589F5990);
  (*(*a2 + 240))(v32);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return a2;
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

void sub_258A95D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A95D7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_258A9748C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_258B00584();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258A95E28(uint64_t a1)
{
  v2 = sub_258B00204();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_258A97590(0);
    v9 = sub_258B03184();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_258A970FC(&qword_27F970648, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_258B02A14();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_258A970FC(&unk_27F970650, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_258B02AA4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_258A96144(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_258B032B4())
    {
LABEL_3:
      sub_258A974F8(0);
      v3 = sub_258B03184();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_258B032B4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x259C937C0](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_258B004D4();
    sub_258A970FC(&qword_27F970630, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    v10 = sub_258B02A14();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_258A970FC(&qword_27F970638, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        if (sub_258B02AA4())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void *sub_258A963D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (MEMORY[0x277D84F90] >> 62 && sub_258B032B4())
  {
    sub_258A96144(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v3[4] = v6;
  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for PeriodicAssessmentPromptsFeatureModel(0);
  sub_258A970FC(&qword_280DF8BD0, 255, type metadata accessor for PeriodicAssessmentPromptsFeatureModel, &protocol conformance descriptor for AssessmentFeatureModel);

  sub_258B004E4();
  swift_allocObject();
  swift_weakInit();
  sub_258B00514();

  sub_258B005D4();

  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();

  type metadata accessor for AssessmentFeatureModel(0);
  sub_258A970FC(&qword_280DF8EC0, 255, type metadata accessor for AssessmentFeatureModel, &protocol conformance descriptor for AssessmentFeatureModel);
  sub_258B004E4();
  swift_allocObject();
  swift_weakInit();

  sub_258B005D4();

  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();

  return v3;
}

uint64_t sub_258A96664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258A9762C;

  return sub_258A924E4(a1, v4, v5, v6);
}

uint64_t sub_258A96718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_258A9677C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A967DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258A9762C;

  return sub_258A93524(a1, v4, v5, v6, v7);
}

uint64_t sub_258A968A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258A9762C;

  return sub_258A93D64(a1, v4, v5, v6);
}

unint64_t sub_258A96958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970608;
  if (!qword_27F970608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970608);
  }

  return result;
}

void sub_258A969B4(uint64_t a1)
{
  sub_258A95D18(319, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_258A95D7C(319, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_258A96B10(uint64_t a1)
{
  sub_258A95D7C(319, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    sub_258A95D7C(319, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for AssessmentsSettingsModel.DisabledMessaging(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssessmentsSettingsModel.DisabledMessaging(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_258A96DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258A9762C;

  return sub_258A94BB8(a1, v4);
}

uint64_t sub_258A96E68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2589EEE18;

  return sub_258A94BB8(a1, v4);
}

void sub_258A96F54(uint64_t a1)
{
  if (!qword_280DF8988)
  {
    sub_258A97024(255);
    sub_2589F4488(255, &qword_280DF8F98, 0x277D85C78);
    sub_258A970FC(&qword_280DF8980, 255, sub_258A97024, MEMORY[0x277CBCD90]);
    sub_258A9708C();
    v1 = sub_258B004A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF8988);
    }
  }
}

void sub_258A97024(uint64_t a1)
{
  if (!qword_280DF8978)
  {
    sub_258B002E4();
    v1 = sub_258B004B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF8978);
    }
  }
}

unint64_t sub_258A9708C()
{
  result = qword_280DF8900;
  if (!qword_280DF8900)
  {
    sub_2589F4488(255, &qword_280DF8F98, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF8900);
  }

  return result;
}

uint64_t sub_258A970FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_258A97144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_258A971F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258A9762C;

  return sub_258A949C8(a1, v4);
}

uint64_t sub_258A972AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2589EEE18;

  return sub_258A8FF9C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_21(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_258A973C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258A9762C;

  return sub_258A91360(a1, v4, v5, v6, v7, v8);
}

void sub_258A9748C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258A974F8(uint64_t a1)
{
  if (!qword_27F970628)
  {
    sub_258B004D4();
    sub_258A970FC(&qword_27F970630, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    v1 = sub_258B03194();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970628);
    }
  }
}

void sub_258A97590(uint64_t a1)
{
  if (!qword_27F970640)
  {
    sub_258B00204();
    sub_258A970FC(&qword_27F970648, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = sub_258B03194();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970640);
    }
  }
}

uint64_t sub_258A97634@<X0>(uint64_t a1@<X8>)
{
  v16[3] = a1;
  v1 = sub_258B02FC4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D388(0);
  v6 = MEMORY[0x28223BE20](v5);
  v16[2] = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v16[1] = v16 - v9;
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  sub_258B02FD4();

  sub_258A97AB0(&qword_27F96FD38, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_258B005A4();
  v12 = *(v2 + 8);
  v12(v4, v1);
  v13 = [v10 defaultCenter];
  sub_258B02FD4();

  sub_258B005A4();
  v12(v4, v1);
  v14 = [v10 defaultCenter];
  sub_258B02FD4();

  sub_258B005A4();
  v12(v4, v1);
  sub_258A97AB0(&qword_27F96FD40, sub_258A6D388, MEMORY[0x277CBCC08]);
  return sub_258B00494();
}

CGFloat sub_258A979B4()
{
  v0 = sub_258AFFBE4();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_258B02B14();
  sub_258B03154();
  if (!*(v1 + 16) || (v2 = sub_258AD57B4(&v5), (v3 & 1) == 0))
  {

    sub_258A97AF8(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_2589F44D0(*(v1 + 56) + 32 * v2, &v6);
  sub_258A97AF8(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_258A3F0C0(&v6);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t sub_258A97AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A97B50(unint64_t a1, uint64_t *a2)
{
  v33 = sub_258B029C4();
  v28 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_25:
    v6 = sub_258B032B4();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v31 = a1 & 0xFFFFFFFFFFFFFF8;
      v32 = a1 & 0xC000000000000001;
      v27[2] = v28 + 16;
      v29 = (v28 + 8);
      v30 = a1;
      do
      {
        if (v32)
        {
          v10 = MEMORY[0x259C937C0](v7, a1);
        }

        else
        {
          if (v7 >= *(v31 + 16))
          {
            goto LABEL_22;
          }

          v10 = *(a1 + 8 * v7 + 32);
        }

        v11 = v10;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v34 = v7 + 1;
        [v10 dayIndex];
        sub_258B02924();
        v12 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v5;
        v5 = isUniquelyReferenced_nonNull_native;
        v35 = *a2;
        a1 = v35;
        v15 = a2;
        *a2 = 0x8000000000000000;
        v16 = v14;
        v18 = sub_258AD5860(v14);
        v19 = *(a1 + 16);
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_23;
        }

        a2 = v17;
        if (*(a1 + 24) >= v21)
        {
          if ((v5 & 1) == 0)
          {
            sub_258A99C50();
          }

          v5 = v16;
          a1 = v35;
          if (a2)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_258A9952C(v21, v5);
          v5 = v16;
          v22 = sub_258AD5860(v16);
          if ((a2 & 1) != (v23 & 1))
          {
            sub_258B03484();
            __break(1u);
            return;
          }

          v18 = v22;
          a1 = v35;
          if (a2)
          {
LABEL_4:
            v8 = *(a1 + 56);
            v9 = *(v8 + 8 * v18);
            *(v8 + 8 * v18) = v12;

            goto LABEL_5;
          }
        }

        *(a1 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        (*(v28 + 16))(*(a1 + 48) + *(v28 + 72) * v18, v5, v33);
        *(*(a1 + 56) + 8 * v18) = v12;
        v24 = *(a1 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_24;
        }

        *(a1 + 16) = v26;
LABEL_5:
        (*v29)(v5, v33);
        a2 = v15;
        *v15 = a1;

        ++v7;
        a1 = v30;
      }

      while (v34 != v6);
    }
  }
}

uint64_t sub_258A97E54(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_258A97E9C, 0, 0);
}

uint64_t sub_258A97E9C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  sub_258A9A0DC(0, &qword_27F970698, MEMORY[0x277D834F8]);
  *v3 = v0;
  v3[1] = sub_258A97FBC;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000258B38530, sub_258A989D4, v2, v4);
}

uint64_t sub_258A97FBC()
{

  return MEMORY[0x2822009F8](sub_258A980D4, 0, 0);
}

void sub_258A980F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  sub_258A989E0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v19 = sub_258B02984();
  sub_258A98A64(0);
  sub_258B029C4();
  sub_258A9A888(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
  sub_258B030E4();
  v10 = aBlock[0];
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v13 = objc_allocWithZone(MEMORY[0x277D28078]);
  v14 = v18;
  v15 = sub_258B00194();
  aBlock[4] = sub_258A98AF8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258A98BAC;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);
  v17 = [v13 initWithDayIndexRange:v19 gregorianCalendar:v10 ascending:v15 limit:1 resultsHandler:{0, v16}];
  _Block_release(v16);

  [*(v14 + 16) executeQuery_];
}

uint64_t sub_258A9837C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_258B00384();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || a3)
  {
    sub_258B00364();
    v12 = a3;
    v13 = sub_258B00374();
    v14 = sub_258B02EA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136446466;
      v18 = sub_258B035A4();
      v20 = sub_2589F1F78(v18, v19, &v28);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v27 = a3;
      v21 = a3;
      sub_258A9A084(0);
      v22 = sub_258B02B34();
      v24 = sub_2589F1F78(v22, v23, &v28);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s] error fetching day summaries: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v17, -1, -1);
      MEMORY[0x259C945C0](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v28 = sub_258AD62DC(MEMORY[0x277D84F90]);
    sub_258A989E0(0);
  }

  else
  {
    v28 = MEMORY[0x277D84F98];
    sub_258A97B50(a2, &v28);
    v27 = v28;
    sub_258A989E0(0);
  }

  return sub_258B02CF4();
}

uint64_t sub_258A98604()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI29StateOfMindCalendarDataSource_gregorianCalendar;
  v2 = sub_258B00224();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StateOfMindCalendarDataSource(uint64_t a1)
{
  result = qword_27F970670;
  if (!qword_27F970670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A9870C(uint64_t a1)
{
  result = sub_258B00224();
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

unint64_t sub_258A987BC()
{
  result = qword_27F970688;
  if (!qword_27F970688)
  {
    sub_2589F4488(255, &qword_27F970690, 0x277D28070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970688);
  }

  return result;
}

uint64_t sub_258A98824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258A988BC;

  return sub_258A97E54(a1);
}

uint64_t sub_258A988BC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_258A989E0(uint64_t a1)
{
  if (!qword_27F9706A8)
  {
    sub_258A9A0DC(255, &qword_27F970698, MEMORY[0x277D834F8]);
    v1 = sub_258B02D04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9706A8);
    }
  }
}

void sub_258A98A64(uint64_t a1)
{
  if (!qword_27F9706B0)
  {
    sub_258B029C4();
    sub_258A9A888(&qword_27F971480, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v1 = sub_258B02DF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9706B0);
    }
  }
}

uint64_t sub_258A98AF8(uint64_t a1, unint64_t a2, void *a3)
{
  sub_258A989E0(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_258A9837C(a1, a2, a3, v3 + v9, v10);
}

double sub_258A98BAC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_2589F4488(0, &qword_27F970690, 0x277D28070);
    v5 = sub_258B02C74();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_258A98C7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_258A9A1A0(0);
  v30 = v4;
  result = sub_258B032D4();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_258A98F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_258A9A270(0);
  v30 = v4;
  result = sub_258B032D4();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_258A99268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_258A9A3A0(0, &qword_27F970700, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v33 = v4;
  result = sub_258B032D4();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_258A2D784(v24, v34);
      }

      else
      {
        sub_2589F44D0(v24, v34);
        sub_258B003E4();
      }

      sub_258B03514();
      sub_258B02B74();
      result = sub_258B03554();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_258A2D784(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_258A9952C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_258B029C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_258A9A0DC(0, &qword_27F971420, MEMORY[0x277D84460]);
  v39 = v4;
  result = sub_258B032D4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_258A9A888(&qword_27F9706A0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
      result = sub_258B02A14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_258A99948(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_258B032C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = swift_unknownObjectRetain();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_258A99AA0()
{
  v1 = v0;
  sub_258A9A3A0(0, &qword_27F970700, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v2 = *v0;
  v3 = sub_258B032C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2589F44D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_258A2D784(v25, (*(v4 + 56) + v22));
        result = sub_258B003E4();
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_258A99C50()
{
  v1 = v0;
  v31 = sub_258B029C4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9A0DC(0, &qword_27F971420, MEMORY[0x277D84460]);
  v3 = *v0;
  v4 = sub_258B032C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_258A99ED4()
{
  v1 = v0;
  sub_258A9A3A0(0, &qword_27F970708, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v2 = *v0;
  v3 = sub_258B032C4();
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
        v18 = 40 * v17;
        sub_258A9A3FC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2589F44D0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_258A2D784(v22, (*(v4 + 56) + v17));
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

void sub_258A9A084(uint64_t a1)
{
  if (!qword_27F96EBF8)
  {
    sub_2589F3AFC();
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EBF8);
    }
  }
}

void sub_258A9A0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_258B029C4();
    v7 = sub_2589F4488(255, &qword_27F970690, 0x277D28070);
    v8 = sub_258A9A888(&qword_27F9706A0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A9A1A0(uint64_t a1)
{
  if (!qword_27F9706D0)
  {
    v1 = sub_258A9A2EC(255, &qword_27F9706D8, &protocolRef_MTLRenderPipelineState);
    sub_258A9A21C(v1, v2, v3);
    v4 = sub_258B032F4();
    if (!v5)
    {
      atomic_store(v4, &qword_27F9706D0);
    }
  }
}

unint64_t sub_258A9A21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9706E0;
  if (!qword_27F9706E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9706E0);
  }

  return result;
}

void sub_258A9A270(uint64_t a1)
{
  if (!qword_27F971430)
  {
    v1 = sub_258A9A2EC(255, &unk_27F9706F0, &protocolRef_MTLComputePipelineState);
    sub_258A9A34C(v1, v2, v3);
    v4 = sub_258B032F4();
    if (!v5)
    {
      atomic_store(v4, &qword_27F971430);
    }
  }
}

uint64_t sub_258A9A2EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258A9A34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F971440;
  if (!qword_27F971440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971440);
  }

  return result;
}

void sub_258A9A3A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_258B032F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_258A9A458(void *a1, uint64_t a2)
{
  v3 = v2;
  v24 = *v2;
  v25 = a2;
  v26 = sub_258B02E14();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9A7F4(0);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = a1;
  v13 = OBJC_IVAR____TtC14MentalHealthUI29StateOfMindCalendarDataSource_gregorianCalendar;
  v14 = sub_258B00224();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v3 + v13, a2, v14);
  sub_258A2D390();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_258B2E600;
  sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  a1;
  v18 = [ObjCClassFromMetadata stateOfMindType];
  v19 = [objc_opt_self() queryDescriptorWithSampleType_];

  *(v16 + 32) = v19;
  v29 = v24;
  swift_getMetatypeMetadata();
  sub_258B02B34();
  sub_258B02E24();

  sub_258A9A888(&qword_27F970718, MEMORY[0x277D11348], MEMORY[0x277D11340]);
  v20 = v26;
  sub_258B005C4();
  (*(v6 + 8))(v8, v20);
  sub_258A9A888(&unk_27F970730, sub_258A9A7F4, MEMORY[0x277CBCC18]);
  v21 = v27;
  v22 = sub_258B00594();
  (*(v15 + 8))(v25, v14);
  (*(v28 + 8))(v12, v21);
  *(v3 + OBJC_IVAR____TtC14MentalHealthUI29StateOfMindCalendarDataSource_modelsDidChangePublisher) = v22;
  return v3;
}

void sub_258A9A7F4(uint64_t a1)
{
  if (!qword_27F970710)
  {
    sub_258B02E14();
    sub_258A9A888(&qword_27F970718, MEMORY[0x277D11348], MEMORY[0x277D11340]);
    v1 = sub_258B00474();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970710);
    }
  }
}

uint64_t sub_258A9A888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A9A904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_258B006A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a4);
  v13 = v12;
  sub_258A9CD24(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v15 = *(v9 + 16);
  v15(v11, a1, v8);
  *(inited + 32) = sub_258A9BA58(1, v11);
  v15(v11, a1, v8);
  *(inited + 40) = sub_258A9BA58(2, v11);
  v15(v11, a1, v8);
  *(inited + 48) = sub_258A9BA58(3, v11);
  v15(v11, a1, v8);
  *(inited + 56) = sub_258A9BA58(4, v11);
  v15(v11, a1, v8);
  *(inited + 64) = sub_258A9BA58(5, v11);
  v15(v11, a1, v8);
  *(inited + 72) = sub_258A9BA58(6, v11);
  v15(v11, a1, v8);
  *(inited + 80) = sub_258A9BA58(7, v11);
  v62 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v16 = v62;
  v18 = *(v62 + 16);
  v17 = *(v62 + 24);
  v19 = v17 >> 1;
  v20 = v18 + 1;
  if (v17 >> 1 <= v18)
  {
    sub_258AA91CC((v17 > 1), v18 + 1, 1);
    v16 = v62;
    v17 = *(v62 + 24);
    v19 = v17 >> 1;
  }

  *(v16 + 16) = v20;
  *(v16 + 8 * v18 + 32) = 0;
  v21 = v18 + 2;
  if (v19 < v21)
  {
    sub_258AA91CC((v17 > 1), v21, 1);
    v16 = v62;
  }

  *(v16 + 16) = v21;
  *(v16 + 8 * v20 + 32) = 0x3FC5604189374BC6;
  v23 = *(v16 + 16);
  v22 = *(v16 + 24);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    sub_258AA91CC((v22 > 1), v23 + 1, 1);
  }

  v25 = v62;
  *(v62 + 16) = v24;
  *(v25 + 8 * v23 + 32) = 0x3FD55810624DD2F2;
  v26 = *(v25 + 24);
  v27 = v23 + 2;
  if (v27 > (v26 >> 1))
  {
    sub_258AA91CC((v26 > 1), v27, 1);
    v25 = v62;
  }

  *(v25 + 16) = v27;
  *(v25 + 8 * v24 + 32) = 0x3FE0000000000000;
  v29 = *(v25 + 16);
  v28 = *(v25 + 24);
  v30 = v28 >> 1;
  v31 = v29 + 1;
  if (v28 >> 1 <= v29)
  {
    sub_258AA91CC((v28 > 1), v29 + 1, 1);
    v25 = v62;
    v28 = *(v62 + 24);
    v30 = v28 >> 1;
  }

  *(v25 + 16) = v31;
  *(v25 + 8 * v29 + 32) = 0x3FE553F7CED91687;
  v32 = v29 + 2;
  if (v30 < v32)
  {
    sub_258AA91CC((v28 > 1), v32, 1);
  }

  v33 = v62;
  *(v62 + 16) = v32;
  *(v33 + 8 * v31 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  if (v35 >= v34 >> 1)
  {
    sub_258AA91CC((v34 > 1), v35 + 1, 1);
    v33 = v62;
  }

  *(v33 + 16) = v35 + 1;
  *(v33 + 8 * v35 + 32) = 0x3FF0000000000000;
  sub_258A9BE00(inited, v33, (v13 + 1.0) * 0.5);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v36 = sub_258B024F4();
  v38 = v37;
  v39 = sub_258B00B44();
  v40 = sub_258B01874();
  v41 = v63;
  v43 = v64;
  v42 = v65;
  v51 = v63;
  v52 = v64;
  *&v53 = v65;
  *(&v53 + 1) = v39;
  LOBYTE(v54) = v40;
  *(&v54 + 1) = v36;
  v55 = v38;
  sub_258A9C3F4(a2, a3);
  sub_258A9C55C(0, &qword_27F96DD40, sub_258A03E54, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  v45 = a3 + *(v44 + 36);
  v46 = v54;
  *(v45 + 32) = v53;
  *(v45 + 48) = v46;
  *(v45 + 64) = v55;
  v47 = v52;
  *v45 = v51;
  *(v45 + 16) = v47;
  v56[0] = v41;
  v56[1] = v43;
  v57 = v42;
  v58 = v39;
  v59 = v40;
  v60 = v36;
  v61 = v38;
  sub_258A9C2FC(&v51, &v50);
  return sub_258A9C37C(v56);
}

uint64_t sub_258A9AEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v50 = a4;
  v51 = a5;
  v49 = a3;
  v11 = sub_258B006A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a7);
  v16 = v15;
  sub_258A9CD24(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v18 = *(v12 + 16);
  v18(v14, a1, v11);
  *(inited + 32) = sub_258A9BA58(1, v14);
  v18(v14, a1, v11);
  *(inited + 40) = sub_258A9BA58(2, v14);
  v18(v14, a1, v11);
  *(inited + 48) = sub_258A9BA58(3, v14);
  v18(v14, a1, v11);
  *(inited + 56) = sub_258A9BA58(4, v14);
  v18(v14, a1, v11);
  *(inited + 64) = sub_258A9BA58(5, v14);
  v18(v14, a1, v11);
  *(inited + 72) = sub_258A9BA58(6, v14);
  v18(v14, a1, v11);
  *(inited + 80) = sub_258A9BA58(7, v14);
  v64 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v19 = v64;
  v21 = *(v64 + 16);
  v20 = *(v64 + 24);
  v22 = v20 >> 1;
  v23 = v21 + 1;
  if (v20 >> 1 <= v21)
  {
    sub_258AA91CC((v20 > 1), v21 + 1, 1);
    v19 = v64;
    v20 = *(v64 + 24);
    v22 = v20 >> 1;
  }

  *(v19 + 16) = v23;
  *(v19 + 8 * v21 + 32) = 0;
  if (v22 < (v21 + 2))
  {
    sub_258AA91CC((v20 > 1), v21 + 2, 1);
    v19 = v64;
  }

  *(v19 + 16) = v21 + 2;
  *(v19 + 8 * v23 + 32) = 0x3FC5604189374BC6;
  v25 = *(v19 + 16);
  v24 = *(v19 + 24);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    sub_258AA91CC((v24 > 1), v25 + 1, 1);
  }

  v27 = v64;
  *(v64 + 16) = v26;
  *(v27 + 8 * v25 + 32) = 0x3FD55810624DD2F2;
  v28 = *(v27 + 24);
  if ((v25 + 2) > (v28 >> 1))
  {
    sub_258AA91CC((v28 > 1), v25 + 2, 1);
    v27 = v64;
  }

  *(v27 + 16) = v25 + 2;
  *(v27 + 8 * v26 + 32) = 0x3FE0000000000000;
  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    sub_258AA91CC((v29 > 1), v30 + 1, 1);
    v27 = v64;
    v29 = *(v64 + 24);
    v31 = v29 >> 1;
  }

  *(v27 + 16) = v32;
  *(v27 + 8 * v30 + 32) = 0x3FE553F7CED91687;
  if (v31 < (v30 + 2))
  {
    sub_258AA91CC((v29 > 1), v30 + 2, 1);
  }

  v33 = v64;
  *(v64 + 16) = v30 + 2;
  *(v33 + 8 * v32 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  if (v35 >= v34 >> 1)
  {
    sub_258AA91CC((v34 > 1), v35 + 1, 1);
    v33 = v64;
  }

  *(v33 + 16) = v35 + 1;
  *(v33 + 8 * v35 + 32) = 0x3FF0000000000000;
  sub_258A9BE00(inited, v33, (v16 + 1.0) * 0.5);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v36 = sub_258B024F4();
  v38 = v37;
  v39 = sub_258B00B44();
  v40 = sub_258B01874();
  v41 = v65;
  v43 = v66;
  v42 = v67;
  v53 = v65;
  v54 = v66;
  *&v55 = v67;
  *(&v55 + 1) = v39;
  LOBYTE(v56) = v40;
  *(&v56 + 1) = v36;
  v57 = v38;
  sub_258A9C458(a2, a6, v49);
  sub_258A9C55C(0, v50, v51, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  v45 = a6 + *(v44 + 36);
  v46 = v56;
  *(v45 + 32) = v55;
  *(v45 + 48) = v46;
  *(v45 + 64) = v57;
  v47 = v54;
  *v45 = v53;
  *(v45 + 16) = v47;
  v58[0] = v41;
  v58[1] = v43;
  v59 = v42;
  v60 = v39;
  v61 = v40;
  v62 = v36;
  v63 = v38;
  sub_258A9C2FC(&v53, &v52);
  return sub_258A9C37C(v58);
}

__n128 sub_258A9B4D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v46 = a5;
  v44 = a2;
  v45 = a4;
  v11 = sub_258B006A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a7);
  v16 = v15;
  sub_258A9CD24(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v18 = *(v12 + 16);
  v18(v14, a1, v11);
  *(inited + 32) = sub_258A9BA58(1, v14);
  v18(v14, a1, v11);
  *(inited + 40) = sub_258A9BA58(2, v14);
  v18(v14, a1, v11);
  *(inited + 48) = sub_258A9BA58(3, v14);
  v18(v14, a1, v11);
  *(inited + 56) = sub_258A9BA58(4, v14);
  v18(v14, a1, v11);
  *(inited + 64) = sub_258A9BA58(5, v14);
  v18(v14, a1, v11);
  *(inited + 72) = sub_258A9BA58(6, v14);
  v18(v14, a1, v11);
  *(inited + 80) = sub_258A9BA58(7, v14);
  v64 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v19 = v64;
  v21 = *(v64 + 16);
  v20 = *(v64 + 24);
  v22 = v20 >> 1;
  v23 = v21 + 1;
  if (v20 >> 1 <= v21)
  {
    sub_258AA91CC((v20 > 1), v21 + 1, 1);
    v19 = v64;
    v20 = *(v64 + 24);
    v22 = v20 >> 1;
  }

  *(v19 + 16) = v23;
  *(v19 + 8 * v21 + 32) = 0;
  if (v22 < (v21 + 2))
  {
    sub_258AA91CC((v20 > 1), v21 + 2, 1);
    v19 = v64;
  }

  *(v19 + 16) = v21 + 2;
  *(v19 + 8 * v23 + 32) = 0x3FC5604189374BC6;
  v25 = *(v19 + 16);
  v24 = *(v19 + 24);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    sub_258AA91CC((v24 > 1), v25 + 1, 1);
  }

  v27 = v64;
  *(v64 + 16) = v26;
  *(v27 + 8 * v25 + 32) = 0x3FD55810624DD2F2;
  v28 = *(v27 + 24);
  if ((v25 + 2) > (v28 >> 1))
  {
    sub_258AA91CC((v28 > 1), v25 + 2, 1);
    v27 = v64;
  }

  *(v27 + 16) = v25 + 2;
  *(v27 + 8 * v26 + 32) = 0x3FE0000000000000;
  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    sub_258AA91CC((v29 > 1), v30 + 1, 1);
    v27 = v64;
    v29 = *(v64 + 24);
    v31 = v29 >> 1;
  }

  *(v27 + 16) = v32;
  *(v27 + 8 * v30 + 32) = 0x3FE553F7CED91687;
  if (v31 < (v30 + 2))
  {
    sub_258AA91CC((v29 > 1), v30 + 2, 1);
  }

  v33 = v64;
  *(v64 + 16) = v30 + 2;
  *(v33 + 8 * v32 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  if (v35 >= v34 >> 1)
  {
    sub_258AA91CC((v34 > 1), v35 + 1, 1);
    v33 = v64;
  }

  *(v33 + 16) = v35 + 1;
  *(v33 + 8 * v35 + 32) = 0x3FF0000000000000;
  sub_258A9BE00(inited, v33, (v16 + 1.0) * 0.5);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v36 = sub_258B024F4();
  v38 = v37;
  v39 = sub_258B00B44();
  v40 = sub_258B01874();
  *&v48 = v44;
  *(&v48 + 1) = a3;
  *&v49 = v45;
  BYTE8(v49) = v46;
  v50 = v65;
  v51 = v66;
  *&v52 = v67;
  *(&v52 + 1) = v39;
  LOBYTE(v53) = v40;
  *(&v53 + 1) = v36;
  v54 = v38;
  v55[0] = v44;
  v55[1] = a3;
  v55[2] = v45;
  v56 = v46;
  v57 = v65;
  v58 = v66;
  v59 = v67;
  v60 = v39;
  v61 = v40;
  v62 = v36;
  v63 = v38;

  sub_258A9C4C0(&v48, &v47);
  sub_258A9CE90(v55);
  v41 = v53;
  *(a6 + 64) = v52;
  *(a6 + 80) = v41;
  *(a6 + 96) = v54;
  v42 = v49;
  *a6 = v48;
  *(a6 + 16) = v42;
  result = v51;
  *(a6 + 32) = v50;
  *(a6 + 48) = result;
  return result;
}

uint64_t sub_258A9BA58(CGColor *a1, char *a2)
{
  v21 = a2;
  v22 = a1;
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_258A9CD24(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2F490;
  sub_258A2D6A0();
  v12 = *(v5 + 16);
  v12(v10, a2, v4);
  v23 = 1;
  v12(v8, v10, v4);
  Color.init(valenceClassification:variant:colorScheme:)(a1, &v23, v8);
  v13 = sub_258B030A4();
  v14 = *(v5 + 8);
  v14(v10, v4);
  *(inited + 32) = v13;
  v15 = v21;
  v12(v10, v21, v4);
  v23 = 0;
  v12(v8, v10, v4);
  Color.init(valenceClassification:variant:colorScheme:)(v22, &v23, v8);
  v16 = sub_258B030A4();
  v14(v10, v4);
  *(inited + 40) = v16;
  sub_258A9BC94(inited);
  v18 = v17;
  v14(v15, v4);
  return v18;
}

void sub_258A9BC94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_258B032B4();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  sub_258B03244();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      MEMORY[0x259C937C0]();
      sub_258B01F94();
      sub_258B03224();
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v3 = v4;
    }

    while (v2 != v4);
  }

  else
  {
    v5 = 32;
    do
    {
      v6 = *(a1 + v5);
      sub_258B01F94();
      sub_258B03224();
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v5 += 8;
      --v2;
    }

    while (v2);
  }

LABEL_12:

LABEL_16:
  JUMPOUT(0x259C92A80);
}

void *sub_258A9BE00(uint64_t a1, uint64_t a2, double a3)
{
  result = sub_258B02A44();
  v6 = 0;
  v7 = *(a2 + 16);
  v8 = a2 + 32;
  while (v7 != v6)
  {
    v9 = v6 + 1;
    v10 = *(v8 + 8 * v6++);
    if (v25 < v10)
    {
      v11 = v9 - 1;
      goto LABEL_7;
    }
  }

  if (v7)
  {
    v11 = v7 - 1;
LABEL_7:
    v12 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else if (v12 < v7)
    {
      if (v11 < v7)
      {
        v13 = *(a1 + 16);
        if (v12 < v13)
        {
          if (v11 < v13)
          {
            v14 = a1 + 32;
            v15 = *(a1 + 32 + 8 * v12);
            v16 = *(v14 + 8 * v11);
            v17 = *(v15 + 16);
            if (v17 == *(v16 + 16))
            {
              v18 = MEMORY[0x277D84F90];
              if (!v17)
              {
                return MEMORY[0x259C92A80](v18);
              }

              v19 = *(v8 + 8 * v12);
              v20 = *(v8 + 8 * v11);
              v24 = MEMORY[0x277D84F90];
              sub_258B003E4();
              sub_258B003E4();
              sub_258B03244();
              result = sub_258A2D6A0();
              if (v17 <= *(v15 + 16))
              {
                if (v17 <= *(v16 + 16))
                {
                  v21 = 32;
                  do
                  {

                    v22 = sub_258B030A4();

                    v23 = sub_258B030A4();
                    sub_258A9C02C(v22, v23, (v25 - v19) / (v20 - v19));

                    sub_258B03224();
                    sub_258B03254();
                    sub_258B03264();
                    sub_258B03234();
                    v21 += 16;
                    --v17;
                  }

                  while (v17);

                  v18 = v24;
                  return MEMORY[0x259C92A80](v18);
                }

                goto LABEL_27;
              }

LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_258A9C02C(void *a1, void *a2, double a3)
{
  v5 = sub_258B01FA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 CGColor];
  v10 = sub_258B02E04();

  if (v10)
  {
    v11 = [a2 CGColor];
    v12 = sub_258B02E04();

    if (v12)
    {
      v13 = *(v10 + 16);
      if (v13)
      {
        v14 = *(v12 + 16);
        if (v14)
        {
          if (v13 != 1)
          {
            if (v14 != 1)
            {
              if (v13 >= 3)
              {
                if (v14 >= 3)
                {

                  (*(v6 + 104))(v8, *MEMORY[0x277CE0EE0], v5);
                  sub_258B02054();
                  return;
                }

                goto LABEL_19;
              }

LABEL_18:
              __break(1u);
LABEL_19:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  v15 = a1;

  sub_258B01F94();
}

void sub_258A9C264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_258A9CC4C(255, &qword_27F96DB50, MEMORY[0x277CDF838], MEMORY[0x277CE0888], MEMORY[0x277CDFAB8]);
    v7 = v6;
    v8 = sub_2589FF714();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258A9C2FC(uint64_t a1, uint64_t a2)
{
  sub_258A9C264(0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A9C37C(uint64_t a1)
{
  sub_258A9C264(0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A9C3F4(uint64_t a1, uint64_t a2)
{
  sub_258A03E54(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A9C458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A9C4C0(uint64_t a1, uint64_t a2)
{
  sub_258A9C55C(0, &qword_27F970740, sub_258A9C5E0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A9C55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A9C264(255, a4, a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A9C608(uint64_t a1)
{
  if (!qword_27F970750)
  {
    sub_258A9C9F4(255, &qword_27F970758, sub_258A9C690, MEMORY[0x277CDFC70]);
    sub_258A9CD74();
    v1 = sub_258B009C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970750);
    }
  }
}

void sub_258A9C690(uint64_t a1)
{
  if (!qword_27F970760)
  {
    sub_258A9C724(255);
    sub_258A9CE48(&qword_27F9707D8, sub_258A9C724, MEMORY[0x277CE14C0]);
    v1 = sub_258B022E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970760);
    }
  }
}

void sub_258A9C724(uint64_t a1)
{
  if (!qword_27F970768)
  {
    sub_258A9C7AC(255, &qword_27F970770, sub_258A9C828, sub_258A9C968);
    v1 = sub_258B02574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970768);
    }
  }
}

void sub_258A9C7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258A9C828(uint64_t a1)
{
  if (!qword_27F970778)
  {
    sub_258A9C9F4(255, &qword_27F970780, sub_258A9C8B4, MEMORY[0x277CDF4D8]);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970778);
    }
  }
}

void sub_258A9C8DC(uint64_t a1)
{
  if (!qword_27F970790)
  {
    sub_258A9CC4C(255, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970790);
    }
  }
}

void sub_258A9C968(uint64_t a1)
{
  if (!qword_27F970798)
  {
    sub_258A9C9F4(255, &qword_27F9707A0, sub_258A9CA58, MEMORY[0x277CDF910]);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970798);
    }
  }
}

void sub_258A9C9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_258A9CA58(uint64_t a1)
{
  if (!qword_27F9707A8)
  {
    sub_258A9CB14(255, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
    sub_258A9CD24(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9707A8);
    }
  }
}

void sub_258A9CB14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_258A9CBBC(uint64_t a1)
{
  if (!qword_27F9707C0)
  {
    sub_258A9CC4C(255, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
    sub_258A9CCA0();
    v1 = sub_258B015C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9707C0);
    }
  }
}

void sub_258A9CC4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_258A9CCA0()
{
  result = qword_27F9707D0;
  if (!qword_27F9707D0)
  {
    sub_258A9CC4C(255, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9707D0);
  }

  return result;
}

void sub_258A9CD24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A9CD74()
{
  result = qword_27F9707E0;
  if (!qword_27F9707E0)
  {
    sub_258A9C9F4(255, &qword_27F970758, sub_258A9C690, MEMORY[0x277CDFC70]);
    sub_258A9CE48(&qword_27F9707E8, sub_258A9C690, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9707E0);
  }

  return result;
}

uint64_t sub_258A9CE48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A9CE90(uint64_t a1)
{
  sub_258A9C55C(0, &qword_27F970740, sub_258A9C5E0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A9CF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for IntroPhaseHeaderText(uint64_t a1)
{
  result = qword_27F9707F0;
  if (!qword_27F9707F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A9CFFC(uint64_t a1)
{
  sub_258A9CF38(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A9CF38(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A9D10C()
{
  v1 = v0;
  v2 = sub_258B01504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE0570];
  v10 = MEMORY[0x277D83D88];
  sub_258A9CF38(0, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  (*(v3 + 104))(&v23 - v15, *MEMORY[0x277CE0560], v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_258A9E3A8(v1, v8, &qword_27F96DE50, v9, v10);
  sub_258A9E3A8(v16, &v8[v17], &qword_27F96DE50, v9, v10);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_258A9E3A8(v8, v14, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v20 = v24;
      (*(v3 + 32))(v24, &v8[v17], v2);
      sub_258A9E7C8(&qword_27F96EAA8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v19 = sub_258B02AA4();
      v21 = *(v3 + 8);
      v21(v20, v2);
      sub_258A9E2BC(v16);
      v21(v14, v2);
      sub_258A9E2BC(v8);
      return v19 & 1;
    }

    sub_258A9E2BC(v16);
    (*(v3 + 8))(v14, v2);
    goto LABEL_6;
  }

  sub_258A9E2BC(v16);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_258A9E348(v8, sub_258A2AE68);
    v19 = 0;
    return v19 & 1;
  }

  sub_258A9E2BC(v8);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_258A9D4E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF3E0];
  v8 = MEMORY[0x277CDF458];
  sub_258A9CF38(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for IntroPhaseHeaderText(0);
  sub_258A9E3A8(v1 + *(v12 + 20), v11, &qword_27F96C908, v7, v8);
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

uint64_t sub_258A9D71C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF458];
  sub_258A9CF38(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for IntroPhaseHeaderText(0);
  sub_258A9E3A8(v1 + *(v11 + 24), v10, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A37ED8(v10, a1);
  }

  sub_258B02E94();
  v13 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_258A9D920@<X0>(uint64_t a1@<X8>)
{
  v85 = sub_258B006A4();
  v83 = *(v85 - 8);
  v3 = MEMORY[0x28223BE20](v85);
  v81 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v79 = &v70 - v5;
  v84 = sub_258B02554();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B00AA4();
  KeyPath = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B019F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v70 = type metadata accessor for IntroPhaseSpecs(0) - 8;
  v16 = MEMORY[0x28223BE20](v70);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v70 - v19;
  v21 = *v1;
  v22 = v1[1];
  v71 = v1;
  v86 = v21;
  v87 = v22;
  sub_2589BFF58(v18, v23, v24);
  sub_258B003E4();
  v25 = sub_258B01B44();
  v74 = v26;
  v75 = v25;
  v28 = v27;
  v73 = v29;
  sub_258A9D71C(v20);
  sub_258B019C4();
  v30 = sub_258B00A84();
  v31 = MEMORY[0x277CE0A10];
  if ((v30 & 1) == 0)
  {
    v31 = MEMORY[0x277CE0A18];
  }

  (*(v10 + 104))(v13, *v31, v9);
  (*(v10 + 32))(v15, v13, v9);
  sub_258B01A14();

  (*(v10 + 8))(v15, v9);
  sub_258A9E348(v20, type metadata accessor for IntroPhaseSpecs);
  v32 = v28;
  v33 = v74;
  v34 = v75;
  v35 = sub_258B01AE4();
  v37 = v36;
  v39 = v38;
  sub_2589BFFAC(v34, v33, v32 & 1);

  sub_258B01964();
  v40 = sub_258B01A94();
  v74 = v41;
  v75 = v40;
  v43 = v42;
  v73 = v44;
  v45 = v39 & 1;
  v46 = v72;
  sub_2589BFFAC(v35, v37, v45);

  sub_258A9D71C(v46);
  v48 = v76;
  v47 = KeyPath;
  v49 = v78;
  (*(KeyPath + 104))(v76, *MEMORY[0x277CDF9D0], v78);
  v50 = sub_258B00A94();
  (*(v47 + 8))(v48, v49);
  if (v50)
  {
    v51 = sub_258A9D10C();
    sub_258A9E348(v46, type metadata accessor for IntroPhaseSpecs);
    if (v51)
    {
      v52 = 0;
      v78 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_258A9E348(v46, type metadata accessor for IntroPhaseSpecs);
  }

  v78 = 0;
  v52 = 1;
LABEL_8:
  KeyPath = swift_getKeyPath();
  v76 = swift_getKeyPath();
  v53 = v43 & 1;
  LOBYTE(v86) = v43 & 1;
  v88 = v52;
  LODWORD(v72) = sub_258B014A4();
  v54 = swift_getKeyPath();
  v55 = v79;
  sub_258A9D4E8(v79);
  v56 = v83;
  v57 = v81;
  v58 = v85;
  (*(v83 + 104))(v81, *MEMORY[0x277CDF3C0], v85);
  v59 = sub_258B00694();
  v60 = *(v56 + 8);
  v60(v57, v58);
  v60(v55, v58);
  v61 = v82;
  v62 = MEMORY[0x277CE13B8];
  if ((v59 & 1) == 0)
  {
    v62 = MEMORY[0x277CE13D8];
  }

  v63 = v80;
  v64 = v84;
  (*(v82 + 104))(v80, *v62, v84);
  sub_258A9DFEC(0);
  result = (*(v61 + 32))(a1 + *(v65 + 36), v63, v64);
  v67 = v74;
  *a1 = v75;
  *(a1 + 8) = v67;
  *(a1 + 16) = v53;
  v69 = KeyPath;
  v68 = v78;
  *(a1 + 24) = v73;
  *(a1 + 32) = v69;
  *(a1 + 40) = v68;
  *(a1 + 48) = v52;
  *(a1 + 56) = v76;
  *(a1 + 64) = 0x3FE3333333333333;
  *(a1 + 72) = v72;
  *(a1 + 76) = 256;
  *(a1 + 80) = v54;
  *(a1 + 88) = 0;
  return result;
}

void sub_258A9DFEC(uint64_t a1)
{
  if (!qword_27F970800)
  {
    sub_258A9E080(255, &qword_27F970808, sub_258A9E118, &qword_27F96C8C0, MEMORY[0x277CDF720]);
    sub_258B00C84();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970800);
    }
  }
}

void sub_258A9E080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_258A9E26C(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A9E118(uint64_t a1)
{
  if (!qword_27F970810)
  {
    sub_258A9E178(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970810);
    }
  }
}

void sub_258A9E178(uint64_t a1)
{
  if (!qword_27F970818)
  {
    sub_258A9E080(255, &qword_27F970820, sub_258A9E20C, &qword_27F96ED60, MEMORY[0x277D85048]);
    sub_258A4A19C();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970818);
    }
  }
}

void sub_258A9E20C(uint64_t a1)
{
  if (!qword_27F970828)
  {
    sub_258A4ED08(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970828);
    }
  }
}

void sub_258A9E26C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A9E2BC(uint64_t a1)
{
  sub_258A9CF38(0, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A9E348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A9E3A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258A9CF38(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_258A9E418()
{
  result = qword_27F970838;
  if (!qword_27F970838)
  {
    v1 = MEMORY[0x277CDF720];
    sub_258A9E080(255, &qword_27F970808, sub_258A9E118, &qword_27F96C8C0, MEMORY[0x277CDF720]);
    sub_258A9E51C(&qword_27F970840, sub_258A9E118, sub_258A9E59C, MEMORY[0x277CDFC48]);
    sub_258A9E810(&qword_27F96D1B8, &qword_27F96C8C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970838);
  }

  return result;
}

uint64_t sub_258A9E51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t sub_258A9E59C()
{
  result = qword_27F970848;
  if (!qword_27F970848)
  {
    sub_258A9E178(255);
    sub_258A9E64C();
    sub_258A9E7C8(&qword_27F96F3E8, sub_258A4A19C, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970848);
  }

  return result;
}

unint64_t sub_258A9E64C()
{
  result = qword_27F970850;
  if (!qword_27F970850)
  {
    v1 = MEMORY[0x277D85048];
    sub_258A9E080(255, &qword_27F970820, sub_258A9E20C, &qword_27F96ED60, MEMORY[0x277D85048]);
    sub_258A9E718();
    sub_258A9E810(&qword_27F96F560, &qword_27F96ED60, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970850);
  }

  return result;
}

unint64_t sub_258A9E718()
{
  result = qword_27F970858;
  if (!qword_27F970858)
  {
    sub_258A9E20C(255);
    sub_258A9E7C8(&qword_27F96F558, sub_258A4ED08, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970858);
  }

  return result;
}

uint64_t sub_258A9E7C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A9E810(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_258A9E26C(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A9E9C4(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      sub_2589F4488(319, &qword_27F970870, 0x277D280B8);
      if (v3 <= 0x3F)
      {
        sub_258AA101C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A9EAD4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ReminderView(0);
  v92 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = v5;
  v94 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA138C(0);
  v95 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v102 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = (&v82 - v9);
  sub_258AA1190(0);
  v86 = v10;
  v85 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA115C(0);
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1128(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v100 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v82 - v17;
  v18 = type metadata accessor for BulletPointView(0);
  v19 = MEMORY[0x28223BE20](v18);
  v98 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v82 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v82 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v88 = qword_27F97ABA0;
  v89 = qword_27F97AB90;
  v28 = sub_258AFFD94();
  v30 = v29;
  v31 = sub_258A9F634();
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v105 = a1;
  *&v27[*(v18 + 28)] = KeyPath;
  v35 = v18;
  v36 = MEMORY[0x277CDF458];
  sub_258AA101C(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v87 = v37;
  swift_storeEnumTagMultiPayload();
  *v27 = v28;
  *(v27 + 1) = v30;
  *(v27 + 2) = v31;
  *(v27 + 3) = v33;
  strcpy(v27 + 32, "sun.max.fill");
  v27[45] = 0;
  *(v27 + 23) = -5120;
  v38 = *(v35 + 32);
  *&v27[v38] = swift_getKeyPath();
  sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, v36);
  swift_storeEnumTagMultiPayload();
  v39 = sub_258AFFD94();
  v41 = v40;
  v42 = sub_258A9F780();
  v44 = v43;
  *(v25 + *(v35 + 28)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v25 = v39;
  v25[1] = v41;
  v25[2] = v42;
  v25[3] = v44;
  v25[4] = 0xD000000000000014;
  v25[5] = 0x8000000258B38620;
  v45 = v105;
  v89 = v35;
  v46 = *(v35 + 32);
  *(v25 + v46) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v47 = *(v45 + 4);
  v48 = v25;
  if ([v47 hasEverEnabledAStateOfMindReminderNotification])
  {
    v49 = [v47 customReminderSchedule];
    sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
    v50 = sub_258B02C74();

    if (v50 >> 62)
    {
      if (sub_258B032B4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v107 = v50;
      swift_getKeyPath();
      sub_258AA1274(0);
      sub_258AA12DC(&qword_27F96F908, sub_258AA1274, MEMORY[0x277D83980]);
      sub_258AA1324();
      sub_258AA12DC(&qword_27F9708B0, type metadata accessor for BulletPointView, &unk_258B33028);
      v51 = v83;
      sub_258B023B4();
      v52 = v85;
      v53 = v84;
      v54 = v86;
      (*(v85 + 32))(v84, v51, v86);
      v55 = 0;
LABEL_10:
      (*(v52 + 56))(v53, v55, 1, v54);
      v57 = v104;
      sub_258AA20F8(v53, v104, sub_258AA115C);
      v56 = 0;
      goto LABEL_11;
    }

    v55 = 1;
    v54 = v86;
    v52 = v85;
    v53 = v84;
    goto LABEL_10;
  }

  v56 = 1;
  v57 = v104;
LABEL_11:
  (*(v90 + 56))(v57, v56, 1, v91);
  v58 = v94;
  sub_258AA1410(v45, v94, type metadata accessor for ReminderView);
  v59 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v60 = swift_allocObject();
  sub_258AA20F8(v58, v60 + v59, type metadata accessor for ReminderView);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258AA12DC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);

  v61 = sub_258B00A24();
  v62 = v101;
  *v101 = v61;
  *(v62 + 8) = v63;
  v106 = 0;
  sub_258B02114();
  v64 = v108;
  *(v62 + 16) = v107;
  *(v62 + 24) = v64;
  *(v62 + 32) = sub_258AA13AC;
  *(v62 + 40) = v60;
  v65 = *(type metadata accessor for EditButton(0) + 28);
  *(v62 + v65) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v65) = sub_258B01884();
  v66 = v99;
  sub_258AC1B5C(v99);
  sub_258AA1478(v66, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B00654();
  v67 = v62 + *(v95 + 36);
  *v67 = v65;
  *(v67 + 8) = v68;
  *(v67 + 16) = v69;
  *(v67 + 24) = v70;
  *(v67 + 32) = v71;
  *(v67 + 40) = 0;
  v72 = v27;
  v105 = v27;
  v73 = v97;
  sub_258AA1410(v72, v97, type metadata accessor for BulletPointView);
  v74 = v98;
  sub_258AA1410(v48, v98, type metadata accessor for BulletPointView);
  v75 = v57;
  v99 = v48;
  v76 = v100;
  sub_258AA1410(v75, v100, sub_258AA1128);
  v77 = v102;
  sub_258AA1410(v62, v102, sub_258AA138C);
  v78 = v103;
  sub_258AA1410(v73, v103, type metadata accessor for BulletPointView);
  sub_258AA1080(0);
  v80 = v79;
  sub_258AA1410(v74, v78 + *(v79 + 48), type metadata accessor for BulletPointView);
  sub_258AA1410(v76, v78 + *(v80 + 64), sub_258AA1128);
  sub_258AA1410(v77, v78 + *(v80 + 80), sub_258AA138C);
  sub_258AA1478(v62, sub_258AA138C);
  sub_258AA1478(v104, sub_258AA1128);
  sub_258AA1478(v99, type metadata accessor for BulletPointView);
  sub_258AA1478(v105, type metadata accessor for BulletPointView);
  sub_258AA1478(v77, sub_258AA138C);
  sub_258AA1478(v76, sub_258AA1128);
  sub_258AA1478(v74, type metadata accessor for BulletPointView);
  return sub_258AA1478(v73, type metadata accessor for BulletPointView);
}

uint64_t sub_258A9F634()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v1 = sub_258AFFD94();
  v2 = *(v0 + 32);
  if (![v2 hasEverEnabledAStateOfMindReminderNotification])
  {
    return v1;
  }

  [v2 middayNotificationsEnabled];
  return sub_258AFFD94();
}

uint64_t sub_258A9F780()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v1 = sub_258AFFD94();
  v2 = *(v0 + 32);
  if (![v2 hasEverEnabledAStateOfMindReminderNotification])
  {
    return v1;
  }

  [v2 endOfDayNotificationsEnabled];
  return sub_258AFFD94();
}

uint64_t sub_258A9F8CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = sub_258AFFE84();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_258AFFEA4();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustomReminderModel(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = v17;
  sub_258A2A268(v17, v16);
  sub_258A29A78(v13);
  sub_258AFFE94();
  sub_258AFFE74();
  v19 = sub_258B00054();
  v32 = v20;
  (*(v4 + 8))(v6, v33);
  (*(v7 + 8))(v9, v31);
  (*(v11 + 8))(v13, v10);
  sub_258AA1478(v16, type metadata accessor for CustomReminderModel);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v21 = sub_258AFFD94();
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v25 = type metadata accessor for BulletPointView(0);
  *(a2 + *(v25 + 28)) = KeyPath;
  v26 = MEMORY[0x277CDF458];
  sub_258AA101C(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v27 = v32;
  *a2 = v19;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v23;
  a2[4] = 0x6B636F6C63;
  a2[5] = 0xE500000000000000;
  v28 = *(v25 + 32);
  *(a2 + v28) = swift_getKeyPath();
  sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, v26);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A9FCC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA101C(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BulletPointView(0);
  sub_258A3B4D8(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B00AA4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_258A9FEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B011A4();
  sub_258AC1B5C(v5);
  sub_258AA1478(v5, type metadata accessor for NotificationsSetupPhaseSpecs);
  *a1 = v6;
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_258AA2160(0, &qword_27F970878, sub_258AA0FE8, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  return sub_258A9EAD4(v1, a1 + *(v7 + 44));
}

uint64_t sub_258A9FFE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  sub_258AA16AC(0);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1BA8(0, &qword_27F9708F0, sub_258AA1760, sub_258AA16AC, MEMORY[0x277CE0330]);
  v44[1] = v6;
  MEMORY[0x28223BE20](v6);
  v45 = v44 - v7;
  v8 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1760(0);
  v44[2] = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B00AA4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v44 - v19;
  sub_258A9FCC8(v44 - v19);
  (*(v15 + 104))(v18, *MEMORY[0x277CDF998], v14);
  sub_258AA12DC(&qword_27F96D020, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v21 = sub_258B02A54();
  v22 = *(v15 + 8);
  v22(v18, v14);
  v22(v20, v14);
  if (v21)
  {
    v23 = sub_258B00FF4();
    type metadata accessor for BulletPointView(0);
    sub_258AC1B5C(v10);
    sub_258AA1478(v10, type metadata accessor for NotificationsSetupPhaseSpecs);
    *v5 = v23;
    *(v5 + 1) = 0x4024000000000000;
    v5[16] = 0;
    sub_258AA2160(0, &qword_27F970918, type metadata accessor for BulletPointContent, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    v25 = &v5[*(v24 + 44)];
    v26 = v2[1];
    v27 = v2[2];
    v28 = v2[3];
    v29 = v2[4];
    v30 = v2[5];
    *v25 = *v2;
    *(v25 + 1) = v26;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    *(v25 + 4) = v29;
    *(v25 + 5) = v30;
    v31 = *(type metadata accessor for BulletPointContent(0) + 28);
    *&v25[v31] = swift_getKeyPath();
    sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258AA1410(v5, v45, sub_258AA16AC);
    swift_storeEnumTagMultiPayload();
    sub_258AA12DC(&qword_27F970908, sub_258AA1760, MEMORY[0x277CE1198]);
    sub_258AA12DC(&qword_27F970910, sub_258AA16AC, MEMORY[0x277CE1138]);
    sub_258B003E4();
    sub_258B003E4();
    sub_258B003E4();
    sub_258B012A4();
    v32 = sub_258AA16AC;
    v33 = v5;
  }

  else
  {
    v34 = sub_258B011A4();
    type metadata accessor for BulletPointView(0);
    sub_258AC1B5C(v10);
    sub_258AA1478(v10, type metadata accessor for NotificationsSetupPhaseSpecs);
    *v13 = v34;
    *(v13 + 1) = 0x4024000000000000;
    v13[16] = 0;
    sub_258AA2160(0, &qword_27F970900, type metadata accessor for BulletPointContent, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
    v36 = &v13[*(v35 + 44)];
    v37 = v2[1];
    v38 = v2[2];
    v39 = v2[3];
    v40 = v2[4];
    v41 = v2[5];
    *v36 = *v2;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    *(v36 + 5) = v41;
    v42 = *(type metadata accessor for BulletPointContent(0) + 28);
    *&v36[v42] = swift_getKeyPath();
    sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258AA1410(v13, v45, sub_258AA1760);
    swift_storeEnumTagMultiPayload();
    sub_258AA12DC(&qword_27F970908, sub_258AA1760, MEMORY[0x277CE1198]);
    sub_258AA12DC(&qword_27F970910, sub_258AA16AC, MEMORY[0x277CE1138]);
    sub_258B003E4();
    sub_258B003E4();
    sub_258B003E4();
    sub_258B012A4();
    v32 = sub_258AA1760;
    v33 = v13;
  }

  return sub_258AA1478(v33, v32);
}

uint64_t sub_258AA06C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  sub_258AA1C48(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v59 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = (v50 - v6);
  v53 = sub_258B019F4();
  v7 = *(v53 - 8);
  v8 = MEMORY[0x28223BE20](v53);
  v52 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v50 - v10;
  v12 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  v13 = MEMORY[0x28223BE20](v12);
  v56 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v50 - v15;
  sub_258AA1BA8(0, &qword_27F970968, sub_258AA1E38, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CDFAB8]);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v50 - v19;
  sub_258AA1FAC(0);
  v55 = v21 - 8;
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v57 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v50 - v25;
  MEMORY[0x28223BE20](v24);
  v54 = v50 - v27;
  sub_258B003E4();
  v51 = sub_258B02084();
  v50[1] = *(type metadata accessor for BulletPointContent(0) + 28);
  sub_258AC1B5C(v16);
  sub_258B01944();
  v28 = sub_258B00A84();
  v29 = MEMORY[0x277CE0A10];
  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x277CE0A18];
  }

  v31 = v52;
  v30 = v53;
  (*(v7 + 104))(v52, *v29, v53);
  v32 = v31;
  v33 = v30;
  (*(v7 + 32))(v11, v32, v30);
  v34 = sub_258B01A14();

  (*(v7 + 8))(v11, v33);
  sub_258AA1478(v16, type metadata accessor for NotificationsSetupPhaseSpecs);
  KeyPath = swift_getKeyPath();
  v36 = sub_258B014B4();
  v37 = *(v18 + 44);
  *&v20[v37] = swift_getKeyPath();
  sub_258AA101C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v20 = v51;
  *(v20 + 1) = KeyPath;
  *(v20 + 2) = v34;
  *(v20 + 6) = v36;
  v38 = v56;
  sub_258AC1B5C(v56);
  sub_258AA1478(v38, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  sub_258AA2050(v20, v26);
  v39 = v54;
  v40 = &v26[*(v55 + 44)];
  v41 = v62;
  *v40 = v61;
  *(v40 + 1) = v41;
  *(v40 + 2) = v63;
  sub_258AA20F8(v26, v39, sub_258AA1FAC);
  v42 = sub_258B011A4();
  v43 = v58;
  *v58 = v42;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  sub_258AA2160(0, &qword_27F970988, sub_258AA1CDC, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258AA0CD4(v2, v43 + *(v44 + 44));
  v45 = v57;
  sub_258AA1410(v39, v57, sub_258AA1FAC);
  v46 = v59;
  sub_258AA1410(v43, v59, sub_258AA1C48);
  v47 = v60;
  sub_258AA1410(v45, v60, sub_258AA1FAC);
  sub_258AA21CC(0);
  sub_258AA1410(v46, v47 + *(v48 + 48), sub_258AA1C48);
  sub_258AA1478(v43, sub_258AA1C48);
  sub_258AA1478(v39, sub_258AA1FAC);
  sub_258AA1478(v46, sub_258AA1C48);
  return sub_258AA1478(v45, sub_258AA1FAC);
}

double sub_258AA0CD4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1DBC(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = a1[1];
  v51 = *a1;
  v52 = v14;
  sub_2589BFF58(v11, v15, v16);
  sub_258B003E4();
  v17 = sub_258B01B44();
  v19 = v18;
  LOBYTE(v14) = v20;
  v21 = sub_258B01AD4();
  v46 = v22;
  v47 = v21;
  v45 = v23;
  v48 = v24;
  sub_2589BFFAC(v17, v19, v14 & 1);

  v25 = a1[3];
  v51 = a1[2];
  v52 = v25;
  sub_258B003E4();
  v26 = sub_258B01B44();
  v28 = v27;
  v44 = v29;
  v50 = v30;
  sub_258B02394();
  v31 = sub_258B01884();
  type metadata accessor for BulletPointContent(0);
  sub_258AC1B5C(v6);
  sub_258AA1478(v6, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B00654();
  v32 = *(v8 + 44);
  v43 = v13;
  v33 = &v13[v32];
  *v33 = v31;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  LOBYTE(a1) = v45 & 1;
  LOBYTE(v51) = v45 & 1;
  v38 = v49;
  sub_258AA1410(v13, v49, sub_258AA1DBC);
  v39 = v46;
  v40 = v47;
  *a2 = v47;
  *(a2 + 8) = v39;
  *(a2 + 16) = a1;
  *(a2 + 24) = v48;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  LOBYTE(v13) = v44 & 1;
  *(a2 + 48) = v44 & 1;
  *(a2 + 56) = v50;
  *(a2 + 64) = 256;
  sub_258AA1D10(0);
  sub_258AA1410(v38, a2 + *(v41 + 64), sub_258AA1DBC);
  sub_2589E36D4(v40, v39, a1);
  sub_258B003E4();
  sub_2589E36D4(v26, v28, v13);
  sub_258B003E4();
  sub_258AA1478(v43, sub_258AA1DBC);
  sub_258AA1478(v38, sub_258AA1DBC);
  sub_2589BFFAC(v26, v28, v13);

  sub_2589BFFAC(v40, v39, v51);

  return result;
}

void sub_258AA101C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AA1080(uint64_t a1)
{
  if (!qword_27F970888)
  {
    type metadata accessor for BulletPointView(255);
    sub_258AA1128(255);
    sub_258AA138C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F970888);
    }
  }
}

void sub_258AA1190(uint64_t a1)
{
  if (!qword_27F9708A0)
  {
    sub_258AA1274(255);
    sub_2589F4488(255, &qword_280DF8920, 0x277D280B0);
    type metadata accessor for BulletPointView(255);
    sub_258AA12DC(&qword_27F96F908, sub_258AA1274, MEMORY[0x277D83980]);
    sub_258AA1324();
    v1 = sub_258B023D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9708A0);
    }
  }
}

void sub_258AA1274(uint64_t a1)
{
  if (!qword_27F96D8C0)
  {
    sub_2589F4488(255, &qword_280DF8920, 0x277D280B0);
    v1 = sub_258B02CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D8C0);
    }
  }
}

uint64_t sub_258AA12DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258AA1324()
{
  result = qword_27F96F910;
  if (!qword_27F96F910)
  {
    sub_2589F4488(255, &qword_280DF8920, 0x277D280B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F910);
  }

  return result;
}

uint64_t sub_258AA1410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AA1478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AA1500(uint64_t a1)
{
  sub_258AA101C(319, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258AA101C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258AA15FC(uint64_t a1)
{
  if (!qword_27F9708D0)
  {
    sub_258AA0FE8(255);
    sub_258AA12DC(&qword_27F9708D8, sub_258AA0FE8, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9708D0);
    }
  }
}

void sub_258AA16AC(uint64_t a1)
{
  if (!qword_27F9708E0)
  {
    type metadata accessor for BulletPointContent(255);
    sub_258AA12DC(&qword_27F9708E8, type metadata accessor for BulletPointContent, &unk_258B33094);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9708E0);
    }
  }
}

void sub_258AA1760(uint64_t a1)
{
  if (!qword_27F9708F8)
  {
    type metadata accessor for BulletPointContent(255);
    sub_258AA12DC(&qword_27F9708E8, type metadata accessor for BulletPointContent, &unk_258B33094);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9708F8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_258AA19D0(uint64_t a1)
{
  sub_258AA101C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_258AA1A84()
{
  result = qword_27F970930;
  if (!qword_27F970930)
  {
    sub_258AA1BA8(255, &qword_27F970938, sub_258AA1760, sub_258AA16AC, MEMORY[0x277CE0338]);
    sub_258AA12DC(&qword_27F970908, sub_258AA1760, MEMORY[0x277CE1198]);
    sub_258AA12DC(&qword_27F970910, sub_258AA16AC, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970930);
  }

  return result;
}

void sub_258AA1BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_258AA1C48(uint64_t a1)
{
  if (!qword_27F970940)
  {
    sub_258AA1CDC(255);
    sub_258AA12DC(&qword_27F970960, sub_258AA1CDC, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970940);
    }
  }
}

void sub_258AA1D10(uint64_t a1)
{
  if (!qword_27F970950)
  {
    sub_2589BF7E8(255, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_258AA1DBC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970950);
    }
  }
}

void sub_258AA1DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AA1E38(uint64_t a1)
{
  if (!qword_27F970970)
  {
    sub_258AA1ECC(255);
    sub_2589BF7E8(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970970);
    }
  }
}

void sub_258AA1ECC(uint64_t a1)
{
  if (!qword_27F970978)
  {
    sub_258AA101C(255, &qword_27F96C868, sub_258AA1F5C, MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970978);
    }
  }
}