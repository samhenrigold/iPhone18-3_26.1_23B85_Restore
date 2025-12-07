unint64_t sub_268D56D6C()
{
  v2 = qword_2802DC4F0;
  if (!qword_2802DC4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56E00()
{
  v2 = qword_2802DC4F8;
  if (!qword_2802DC4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56E94()
{
  v2 = qword_2802DC500;
  if (!qword_2802DC500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56F28()
{
  v2 = qword_2802DC508;
  if (!qword_2802DC508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56FBC()
{
  v2 = qword_2802DC510;
  if (!qword_2802DC510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D57050()
{
  v2 = qword_2802DC518;
  if (!qword_2802DC518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC518);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D570CC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_268F99A44();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;
    MEMORY[0x277D82BE0](*a1);
    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_268D571A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_268F99A44();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    MEMORY[0x277D82BD8](*a1);
  }

  return a1;
}

unint64_t sub_268D5724C()
{
  v2 = qword_2802DC528;
  if (!qword_2802DC528)
  {
    sub_268F99A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC528);
    return WitnessTable;
  }

  return v2;
}

id sub_268D572CC(uint64_t a1)
{
  v4 = [v1 initWithQueue_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_268D57344(uint64_t a1)
{
  v3 = [v1 initWithDelegate_];
  swift_unknownObjectRelease();
  return v3;
}

id sub_268D5738C(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v7 = sub_268F9AE14();

    v3 = [v8 initWithSuiteName_];
  }

  else
  {
    v3 = [v8 initWithSuiteName_];
  }

  v6 = v3;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

unint64_t sub_268D5743C()
{
  v2 = qword_2802DC530;
  if (!qword_2802DC530)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC530);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_268D5751C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC538, &qword_268F9E7E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_268F99A44();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;
    MEMORY[0x277D82BE0](*a1);
    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_268D575F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC538, &qword_268F9E7E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_268F99A44();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    MEMORY[0x277D82BD8](*a1);
  }

  return a1;
}

unint64_t sub_268D5769C()
{
  v2 = qword_2802DC540;
  if (!qword_2802DC540)
  {
    sub_268F99A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5771C()
{
  v2 = qword_2802DC550;
  if (!qword_2802DC550)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC550);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D57780()
{
  v2 = qword_2802DC558;
  if (!qword_2802DC558)
  {
    sub_268D5771C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC558);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_268D57874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v34 = a1;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v54 = 0;
  v50 = 0;
  v49 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC568, &qword_268F9E800);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v23 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41, v2, v3, v4);
  v40 = &v22 - v23;
  v61 = &v22 - v23;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC570, &qword_268F9E808);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v24 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v5, v6, v7);
  v28 = &v22 - v24;
  v25 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v22 - v24, v10, v11);
  v45 = &v22 - v25;
  v60 = &v22 - v25;
  v59 = v12;
  v48 = &v58;
  sub_268F99C44();
  v47 = v57;
  sub_268F99764();
  v27 = v56;
  sub_268CDE730(v48, v56);
  v26 = v55;
  sub_268CDE730(v47, v55);
  v13 = sub_268D57C40();
  sub_268D57C70(v27, v26, v13, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC578, &qword_268F9E810);
  (*(v43 + 16))(v28, v45, v46);
  v42 = sub_268F995F4();
  v54 = v42;
  v33 = 0;
  v31 = type metadata accessor for NumericSettingFlowStrategy();
  v30 = v53;
  sub_268CDE730(v48, v53);
  v29 = v52;
  sub_268CDE730(v47, v52);
  v14 = sub_268D587A8();
  v15 = sub_268E6687C(v30, v29, v14);
  v32 = &v51;
  v51 = v15;

  sub_268D587D8();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v37 = sub_268F9AB34();
  v50 = v37;
  v36 = sub_268F998B4();
  v49 = v36;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC588, &qword_268F9E818);
  v35[3] = v16;
  v17 = sub_268D58858();
  v18 = v35;
  v19 = v17;
  v20 = v36;
  v35[4] = v19;
  *v18 = v20;

  (*(v38 + 8))(v40, v41);

  (*(v43 + 8))(v45, v46);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return __swift_destroy_boxed_opaque_existential_0(v48);
}

uint64_t sub_268D57C40()
{
  v1 = *sub_268F23A60();

  return v1;
}

uint64_t sub_268D57C70@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v131 = a4;
  v136 = a1;
  v135 = a2;
  v134 = a3;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v156 = 0;
  v150 = 0;
  v123 = 0;
  v41 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v101 = &v41 - v41;
  v74 = sub_268F99274();
  v48 = *(v74 - 8);
  v49 = v74 - 8;
  v42 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v7, v8, v9);
  v73 = &v41 - v42;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC570, &qword_268F9E808);
  v110 = *(v138 - 8);
  v111 = v138 - 8;
  v44 = *(v110 + 64);
  v43 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123, v135, v134, v10);
  v120 = &v41 - v43;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12, v13, &v41 - v43);
  v137 = &v41 - v45;
  v168 = &v41 - v45;
  v167 = v14;
  v166 = v15;
  v165 = v16;
  v124 = sub_268D588E0();
  v125 = sub_268CDA484();
  sub_268F995E4();
  (*(v110 + 32))(v137, v120, v138);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A0, qword_268F9E820);
  v81 = 1;
  v68 = sub_268F9AEF4();
  v62 = v17;
  v56 = &v162;
  sub_268F99C44();
  v47 = v163;
  v46 = v164;
  __swift_project_boxed_opaque_existential_1(v56, v163);
  sub_268F99784();
  v50 = sub_268F99254();
  v51 = v18;
  v72 = *(v48 + 8);
  v71 = v48 + 8;
  v72(v73, v74);
  v55 = v161;
  v161[0] = v50;
  v161[1] = v51;
  v77 = "-";
  v79 = 1;
  v19 = sub_268F9AEF4();
  v54 = v160;
  v160[0] = v19;
  v160[1] = v20;
  v78 = "_";
  v21 = sub_268F9AEF4();
  v53 = v159;
  v159[0] = v21;
  v159[1] = v22;
  v80 = sub_268D58980();
  v82 = MEMORY[0x277D837D0];
  sub_268D58944();
  v63 = sub_268F9B3E4();
  v64 = v23;
  sub_268CD9D30(v53);
  sub_268CD9D30(v54);
  sub_268CD9D30(v55);
  __swift_destroy_boxed_opaque_existential_0(v56);
  v65 = v158;
  sub_268F99764();
  v66 = &v157;
  sub_268F99C44();
  v67 = sub_268D589F8();
  sub_268D58A5C(v124, v125);
  v57 = sub_268D58A84();
  v58 = sub_268D58ABC();
  v59 = sub_268D58AF4();
  v60 = sub_268D58B2C();
  v61 = sub_268D58B64();
  v24 = sub_268D58B9C();
  v130 = sub_268EC9E48(v68, v62, v63, v64, v65, v66, v67, v101, v57, v58, v59, v60, v61, v24);
  v156 = v130;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A8, qword_268F9E900);
  v102 = sub_268F9AEF4();
  v95 = v25;
  v70 = v136[3];
  v69 = v136[4];
  __swift_project_boxed_opaque_existential_1(v136, v70);
  sub_268F99784();
  v75 = sub_268F99254();
  v76 = v26;
  v72(v73, v74);
  v86 = v155;
  v155[0] = v75;
  v155[1] = v76;
  v27 = sub_268F9AEF4();
  v85 = v154;
  v154[0] = v27;
  v154[1] = v28;
  v29 = sub_268F9AEF4();
  v84 = v153;
  v153[0] = v29;
  v153[1] = v30;
  sub_268D58944();
  v96 = sub_268F9B3E4();
  v97 = v31;
  sub_268CD9D30(v84);
  sub_268CD9D30(v85);
  sub_268CD9D30(v86);
  v98 = v152;
  sub_268CDE730(v135, v152);
  v99 = v151;
  sub_268CDE730(v136, v151);
  v88 = sub_268D2E630();
  v87 = sub_268CDD0DC();
  v100 = sub_268D589F8();
  sub_268D58A5C(v88, v87);
  v89 = sub_268D58B9C();
  v90 = sub_268D58ABC();
  v91 = sub_268D58AF4();
  v92 = sub_268D58BD4();
  v93 = sub_268D58B64();
  v94 = sub_268D58C0C();
  v32 = sub_268D58C44();
  v129 = sub_268EEB954(v102, v95, v96, v97, v98, v99, v100, v101, v89, v90, v91, v92, v93, v94, v32);
  v150 = v129;
  v133 = *(v110 + 16);
  v132 = v110 + 16;
  v133(v120, v137, v138);
  v108 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  v103 = v149;
  sub_268CDE730(v136, v149);
  v104 = v148;
  sub_268CDE730(v135, v148);

  v105 = sub_268D58C84();
  v106 = v147;
  sub_268D58CB4(v147);
  v107 = v146;
  sub_268D58CF4(v146);
  v33 = sub_268D86C08(v103, v104, v105, v130, v106, v107);
  v109 = &v145;
  v145 = v33;
  v34 = sub_268D58E50();
  v112 = sub_268D58D4C(v109, v134, v138, v108, v34);
  v113 = v35;

  v140 = *(v110 + 8);
  v139 = v110 + 8;
  v140(v120, v138);
  sub_268F995D4();
  v133(v120, v137, v138);
  v118 = type metadata accessor for HandleNumericSettingFlowStrategy();
  v117 = v144;
  sub_268CDE730(v136, v144);
  v114 = v143;
  sub_268CDE730(v135, v143);

  v115 = sub_268D587A8();
  v116 = v142;
  sub_268D58CB4(v142);
  v36 = sub_268D58ED0();
  v37 = sub_268EE5168(v117, v114, v115, v130, v116, v36, v129);
  v119 = &v141;
  v141 = v37;
  sub_268D58F58();
  v121 = sub_268D58F00();
  v122 = v38;

  v140(v120, v138);
  sub_268F995B4();
  sub_268F9AB54();
  v126 = sub_268F9AB34();
  v127 = sub_268F99594();
  v128 = v39;

  sub_268F995C4();

  v133(v131, v137, v138);

  __swift_destroy_boxed_opaque_existential_0(v135);
  __swift_destroy_boxed_opaque_existential_0(v136);
  return (v140)(v137, v138);
}

uint64_t sub_268D587A8()
{
  v1 = *sub_268E56C9C();

  return v1;
}

unint64_t sub_268D587D8()
{
  v2 = qword_2802DC580;
  if (!qword_2802DC580)
  {
    type metadata accessor for NumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D58858()
{
  v2 = qword_2802DC590;
  if (!qword_2802DC590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC588, &qword_268F9E818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D588E0()
{
  v2 = qword_2802DC598;
  if (!qword_2802DC598)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC598);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D58944()
{
  sub_268D590FC(0);

  return 0;
}

unint64_t sub_268D58980()
{
  v2 = qword_280FE2888[0];
  if (!qword_280FE2888[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_280FE2888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D589F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C0, &unk_268FA2B50);
  sub_268F9B734();
  return sub_268F9ADA4();
}

uint64_t sub_268D58A84()
{
  v1 = *sub_268E56C9C();

  return v1;
}

uint64_t sub_268D58ABC()
{
  v1 = *sub_268E12744();

  return v1;
}

uint64_t sub_268D58AF4()
{
  v1 = *sub_268F88868();

  return v1;
}

uint64_t sub_268D58B2C()
{
  v1 = *sub_268DCA278();

  return v1;
}

uint64_t sub_268D58B64()
{
  v1 = *sub_268D35434();

  return v1;
}

uint64_t sub_268D58B9C()
{
  v1 = *sub_268F36878();

  return v1;
}

uint64_t sub_268D58BD4()
{
  v1 = *sub_268EAC798();

  return v1;
}

uint64_t sub_268D58C0C()
{
  v1 = *sub_268F47BC4();

  return v1;
}

uint64_t sub_268D58C44()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268D58C84()
{
  v1 = *sub_268E04568();

  return v1;
}

uint64_t sub_268D58CB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_268E53518();
  *(a1 + 24) = &type metadata for SettingsFeatureFlagsImpl;
  *(a1 + 32) = &protocol witness table for SettingsFeatureFlagsImpl;
  return result;
}

uint64_t sub_268D58CF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_268F999C4();
  result = sub_268F999B4();
  a1[3] = v2;
  a1[4] = MEMORY[0x277D5BD58];
  *a1 = result;
  return result;
}

uint64_t sub_268D58D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);

  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a2;
  v12 = sub_268F995A4();

  return v12;
}

unint64_t sub_268D58E50()
{
  v2 = qword_2802DC5B0;
  if (!qword_2802DC5B0)
  {
    type metadata accessor for ConfirmNumericSettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D58ED0()
{
  v1 = *sub_268F36878();

  return v1;
}

unint64_t sub_268D58F58()
{
  v2 = qword_2802DC5B8;
  if (!qword_2802DC5B8)
  {
    type metadata accessor for HandleNumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D58FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[9] = a3;
  v9[8] = a4;
  v9[7] = a5;
  v9[6] = a1;
  v9[5] = a2;
  sub_268F99B54();
  v7 = sub_268F99B44();
  v6 = sub_268F99B24();
  sub_268F99C44();
  v8 = sub_268F23E0C(v7, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(v9);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  return v8 & 1;
}

uint64_t sub_268D590FC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for CompareOptions(0);
    v1 = sub_268F9B044();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t *sub_268D591A8()
{
  if (qword_280FE2BF8 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FF0;
}

uint64_t sub_268D59208()
{
  type metadata accessor for GetBinarySettingNLContextProvider(0);
  result = sub_268D592B0();
  qword_280FE7FF0 = result;
  return result;
}

uint64_t type metadata accessor for GetBinarySettingNLContextProvider(uint64_t a1)
{
  v2 = qword_280FE2BE0;
  if (!qword_280FE2BE0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D592EC()
{
  v1 = *sub_268D591A8();

  return v1;
}

uint64_t sub_268D5931C()
{
  v1 = sub_268F99B74();

  return v1;
}

uint64_t sub_268D5936C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v18 = a4;
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v15, v16, v5);
  v17 = &v12 - v13;
  v23 = v6;
  v22 = v7;
  v20 = v8;
  v21 = v9;
  v19 = v4;

  sub_268D594BC(v14, v15, v17);
  v10 = sub_268F999A4();
  (*(*(v10 - 8) + 56))(v17, 0, 1);
  v16(v17);
  sub_268D34AC0(v17);
}

uint64_t sub_268D594BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v99 = a1;
  v79 = a2;
  v70 = "Forming NL Context update for confirmation. Intent: %@, Update: %@";
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v71 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v72 = v55 - v71;
  v73 = 0;
  v74 = sub_268F9ACE4();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73, v7, v8, v9);
  v78 = v55 - v77;
  v107 = v55 - v77;
  v80 = sub_268F999A4();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v84 = *(v81 + 64);
  v83 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v99, v79, v10, v11);
  v85 = v55 - v83;
  v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13, v55 - v83, v14);
  v98 = v55 - v86;
  v106 = v55 - v86;
  v105 = v15;
  v104 = v16;
  v103 = v17;
  sub_268F99994();
  v92 = 1;
  sub_268F9AEF4();
  sub_268F99964();
  sub_268F99944();
  v89 = 1;
  v97 = MEMORY[0x277D837D0];
  v88 = sub_268F9B734();
  v87 = v18;
  v93 = "com.apple.siri.nl.SettingConfirmation.Value.CANCEL";
  v94 = 50;
  v19 = sub_268F9AEF4();
  v20 = v87;
  *v87 = v19;
  v20[1] = v21;
  sub_268CD0F7C();
  sub_268F99954();
  v91 = sub_268F9B734();
  v90 = v22;
  v23 = sub_268F9AEF4();
  v24 = v90;
  *v90 = v23;
  v24[1] = v25;
  sub_268CD0F7C();
  sub_268F99984();
  v96 = sub_268F9B734();
  v95 = v26;
  v27 = sub_268F9AEF4();
  v28 = v95;
  *v95 = v27;
  v28[1] = v29;
  v30 = sub_268F9AEF4();
  v31 = v95;
  v95[2] = v30;
  v31[3] = v32;
  v33 = sub_268F9AEF4();
  v34 = v95;
  v95[4] = v33;
  v34[5] = v35;
  sub_268CD0F7C();
  sub_268F99974();
  sub_268F27D28();
  sub_268F99924();
  v100 = [v99 settingMetadata];
  if (v100)
  {
    v68 = v100;
    v67 = v100;
    v101 = v100;
    sub_268E5B124(v72);
    if ((*(v75 + 48))(v72, 1, v74) == 1)
    {
      sub_268D59D2C(v72);
    }

    else
    {
      (*(v75 + 32))(v78, v72, v74);
      v66 = sub_268F9B734();
      (*(v75 + 16))(v36, v78, v74);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v75 + 8))(v78, v74);
    }

    MEMORY[0x277D82BD8](v67);
  }

  v63 = sub_268F9B284();
  v65 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v65);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v61 = sub_268F9B734();
  v60 = v37;
  MEMORY[0x277D82BE0](v99);
  v55[2] = &v102;
  v102 = v99;
  v55[1] = sub_268D2E630();
  sub_268D59CAC();
  v56 = sub_268F9AE74();
  v57 = v38;
  v58 = MEMORY[0x277D837D0];
  v60[3] = MEMORY[0x277D837D0];
  v39 = sub_268CDD224();
  v40 = v56;
  v41 = v57;
  v42 = v60;
  v43 = v81;
  v44 = v98;
  v45 = v80;
  v46 = v39;
  v47 = v85;
  v59 = v46;
  v60[4] = v46;
  *v42 = v40;
  v42[1] = v41;
  (*(v43 + 16))(v47, v44, v45);
  v48 = sub_268F9AE64();
  v49 = v59;
  v50 = v60;
  v60[8] = v58;
  v50[9] = v49;
  v50[5] = v48;
  v50[6] = v51;
  sub_268CD0F7C();
  v64 = v52;
  sub_268F9AC14(v63, &dword_268CBE000, v65, v70, 66, 2);

  v53 = MEMORY[0x277D82BD8](v65);
  return (*(v81 + 32))(v69, v98, v80, v53);
}

unint64_t sub_268D59CAC()
{
  v2 = qword_280FE27C0;
  if (!qword_280FE27C0)
  {
    sub_268D2E630();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE27C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D59D2C(uint64_t a1)
{
  v3 = sub_268F9ACE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268D59DD4(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v17 = a4;
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v14, v15, v5);
  v16 = &v11 - v12;
  v22 = v6;
  v21 = v7;
  v19 = v8;
  v20 = v9;
  v18 = v4;

  sub_268D59EE4(v13, v14, v16);
  v15(v16);
  sub_268D34AC0(v16);
}

uint64_t sub_268D59EE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v42 = a1;
  v36 = a2;
  v27 = "There was no setting ID to donate in makeContextForHandleIntent.";
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v28 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v29 = &v19[-v28];
  v30 = 0;
  v31 = sub_268F9ACE4();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v8, v9, v10);
  v35 = &v19[-v34];
  v49 = &v19[-v34];
  v37 = sub_268F999A4();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42, v36, v11, v12);
  v41 = &v19[-v40];
  v48 = &v19[-v40];
  v47 = v13;
  v46 = v14;
  v45 = v3;
  sub_268F99994();
  v43 = [v42 settingMetadata];
  if (v43)
  {
    v25 = v43;
    v24 = v43;
    v44 = v43;
    sub_268E5B124(v29);
    if ((*(v32 + 48))(v29, 1, v31) != 1)
    {
      (*(v32 + 32))(v35, v29, v31);
      v23 = sub_268F9B734();
      (*(v32 + 16))(v15, v35, v31);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v38 + 16))(v26, v41, v37);
      (*(v38 + 56))(v26, 0, 1, v37);
      (*(v32 + 8))(v35, v31);
      v16 = MEMORY[0x277D82BD8](v24);
      return (*(v38 + 8))(v41, v37, v16);
    }

    sub_268D59D2C(v29);
    MEMORY[0x277D82BD8](v24);
  }

  v20 = sub_268F9B284();
  v22 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v21 = sub_268F9B734();
  sub_268F9AC14(v20, &dword_268CBE000, v22, v27, 64, 2);

  v18 = MEMORY[0x277D82BD8](v22);
  (*(v38 + 56))(v26, 1, 1, v37, v18);
  return (*(v38 + 8))(v41, v37);
}

uint64_t sub_268D5A390(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268D5A4B0()
{
  v1 = *sub_268DFC80C();

  return v1;
}

uint64_t sub_268D5A4E8()
{
  v1 = *sub_268F7AD98();

  return v1;
}

uint64_t sub_268D5A520@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v62 = a1;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  v58 = 0;
  v34 = sub_268F99A74();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v2, v3, v4);
  v38 = v31 - v37;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5D0, &qword_268F9E8D0);
  v39 = *(v56 - 8);
  v40 = v56 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56, v5, v6, v7);
  v55 = v31 - v41;
  v78 = v31 - v41;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5D8, &qword_268F9E8D8);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v42 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v8, v9, v10);
  v51 = v31 - v42;
  v43 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v31 - v42, v13, v14);
  v49 = v31 - v43;
  v77 = v31 - v43;
  v76 = v15;
  v60 = v75;
  sub_268F99C44();
  v44 = v74;
  sub_268F99764();
  v46 = v73;
  sub_268CDE730(v60, v73);
  v45 = v72;
  sub_268CDE730(v44, v72);
  v16 = sub_268D57C40();
  sub_268D5AB30(v46, v45, v16, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5E0, &qword_268F9E8E0);
  (*(v47 + 16))(v51, v49, v50);
  v52 = sub_268F995F4();
  v71 = v52;
  v53 = type metadata accessor for FlowStrategy();
  v17 = sub_268CDA260();
  v54 = &v70;
  v70 = v17;

  sub_268D5B714();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v57 = sub_268F9AB34();
  v69 = v57;
  v59 = sub_268F998B4();
  v68 = v59;
  type metadata accessor for AuthenticationHandler();
  v61 = v67;
  sub_268CDE730(v60, v67);
  v18 = sub_268CDC590();
  v63 = sub_268E4C814(v61, v18);
  v64 = sub_268E4CA7C(v62);

  if (v64)
  {
    v31[5] = &v66;
    v66 = v59;
    v31[1] = 0;
    v31[7] = sub_268F99544();
    v31[4] = sub_268F99574();
    v31[3] = sub_268F9B734();
    v31[2] = v19;
    sub_268F99A54();
    sub_268F99564();
    (*(v35 + 8))(v38, v34);
    sub_268CD0F7C();
    v20 = sub_268F99534();
    v31[8] = &v65;
    v65 = v20;
    v31[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5F0, &qword_268F9E8E8);
    sub_268D5B8C8();
    v32 = sub_268F99644();

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC600, &qword_268F9E8F0);
    v33[3] = v21;
    v22 = sub_268D5B950();
    v23 = v32;
    v24 = v33;
    v33[4] = v22;
    *v24 = v23;
  }

  else
  {

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5F0, &qword_268F9E8E8);
    v33[3] = v26;
    v27 = sub_268D5B8C8();
    v28 = v33;
    v29 = v27;
    v30 = v59;
    v33[4] = v29;
    *v28 = v30;
  }

  (*(v39 + 8))(v55, v56);

  (*(v47 + 8))(v49, v50);
  __swift_destroy_boxed_opaque_existential_0(v74);
  return __swift_destroy_boxed_opaque_existential_0(v75);
}

uint64_t sub_268D5AB30@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v139 = a4;
  v144 = a1;
  v143 = a2;
  v142 = a3;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v164 = 0;
  v158 = 0;
  v131 = 0;
  v44 = (*(*(sub_268F99214() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v65 = &v43 - v44;
  v45 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131, v7, v8, v9);
  v108 = &v43 - v45;
  v81 = sub_268F99274();
  v52 = *(v81 - 8);
  v53 = v81 - 8;
  v46 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81, v10, v11, v12);
  v80 = &v43 - v46;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5D8, &qword_268F9E8D8);
  v117 = *(v146 - 8);
  v118 = v146 - 8;
  v48 = *(v117 + 64);
  v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131, v143, v142, v13);
  v128 = &v43 - v47;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, &v43 - v47);
  v145 = &v43 - v49;
  v176 = &v43 - v49;
  v175 = v17;
  v174 = v18;
  v173 = v19;
  v132 = sub_268CD7620();
  v133 = sub_268CD795C();
  sub_268F995E4();
  (*(v117 + 32))(v145, v128, v146);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC610, &qword_268F9E8F8);
  v88 = 1;
  v75 = sub_268F9AEF4();
  v69 = v20;
  v60 = &v170;
  sub_268F99C44();
  v51 = v171;
  v50 = v172;
  __swift_project_boxed_opaque_existential_1(v60, v171);
  sub_268F99784();
  v54 = sub_268F99254();
  v55 = v21;
  v79 = *(v52 + 8);
  v78 = v52 + 8;
  v79(v80, v81);
  v59 = v169;
  v169[0] = v54;
  v169[1] = v55;
  v84 = "-";
  v86 = 1;
  v22 = sub_268F9AEF4();
  v58 = v168;
  v168[0] = v22;
  v168[1] = v23;
  v85 = "_";
  v24 = sub_268F9AEF4();
  v57 = v167;
  v167[0] = v24;
  v167[1] = v25;
  v87 = sub_268D58980();
  v89 = MEMORY[0x277D837D0];
  sub_268D58944();
  v70 = sub_268F9B3E4();
  v71 = v26;
  sub_268CD9D30(v57);
  sub_268CD9D30(v58);
  sub_268CD9D30(v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  v72 = v166;
  sub_268F99764();
  v73 = &v165;
  sub_268F99C44();
  v74 = sub_268D589F8();
  sub_268D58A5C(v132, v133);
  v61 = sub_268D58A84();
  v62 = sub_268D58B9C();
  v63 = sub_268D58ABC();
  v64 = sub_268D58AF4();
  sub_268D5A488(v132, v133);
  v66 = sub_268D58B64();
  v67 = sub_268D58C0C();
  v68 = sub_268D5A4B0();
  v27 = sub_268D5A4E8();
  v138 = sub_268CDEAF0(v75, v69, v70, v71, v72, v73, v74, v108, v61, v62, v63, v64, v65, v66, v67, v68, v27);
  v164 = v138;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A8, qword_268F9E900);
  v109 = sub_268F9AEF4();
  v102 = v28;
  v77 = v144[3];
  v76 = v144[4];
  __swift_project_boxed_opaque_existential_1(v144, v77);
  sub_268F99784();
  v82 = sub_268F99254();
  v83 = v29;
  v79(v80, v81);
  v93 = v163;
  v163[0] = v82;
  v163[1] = v83;
  v30 = sub_268F9AEF4();
  v92 = v162;
  v162[0] = v30;
  v162[1] = v31;
  v32 = sub_268F9AEF4();
  v91 = v161;
  v161[0] = v32;
  v161[1] = v33;
  sub_268D58944();
  v103 = sub_268F9B3E4();
  v104 = v34;
  sub_268CD9D30(v91);
  sub_268CD9D30(v92);
  sub_268CD9D30(v93);
  v105 = v160;
  sub_268CDE730(v143, v160);
  v106 = v159;
  sub_268CDE730(v144, v159);
  v95 = sub_268D2E630();
  v94 = sub_268CDD0DC();
  v107 = sub_268D589F8();
  sub_268D58A5C(v95, v94);
  v96 = sub_268D58B9C();
  v97 = sub_268D58ABC();
  v98 = sub_268D58AF4();
  v99 = sub_268D58BD4();
  v100 = sub_268D58B64();
  v101 = sub_268D58C0C();
  v35 = sub_268D58C44();
  v137 = sub_268EEB954(v109, v102, v103, v104, v105, v106, v107, v108, v96, v97, v98, v99, v100, v101, v35);
  v158 = v137;
  v141 = *(v117 + 16);
  v140 = v117 + 16;
  v141(v128, v145, v146);
  v115 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  v110 = v157;
  sub_268CDE730(v144, v157);
  v111 = v156;
  sub_268CDE730(v143, v156);

  v112 = sub_268D5B794();
  v113 = v155;
  sub_268D58CB4(v155);
  v114 = v154;
  sub_268D58CF4(v154);
  v36 = sub_268D86C08(v110, v111, v112, v138, v113, v114);
  v116 = &v153;
  v153 = v36;
  v37 = sub_268D5B9D8();
  v119 = sub_268D5B7C4(v116, v142, v146, v115, v37);
  v120 = v38;

  v148 = *(v117 + 8);
  v147 = v117 + 8;
  v148(v128, v146);
  sub_268F995D4();
  v141(v128, v145, v146);
  v126 = type metadata accessor for HandleBinarySettingIntentStrategy();
  v121 = v152;
  sub_268CDE730(v144, v152);
  v122 = v151;
  sub_268CDE730(v143, v151);

  v123 = sub_268D587A8();
  v124 = sub_268D58ED0();
  v125 = v150;
  sub_268D58CB4(v150);
  v39 = sub_268DC0948(v121, v122, v123, v124, v138, v125, v137);
  v127 = &v149;
  v149 = v39;
  sub_268D5BA58();
  v129 = sub_268D58F00();
  v130 = v40;

  v148(v128, v146);
  sub_268F995B4();
  sub_268F9AB54();
  v134 = sub_268F9AB34();
  v135 = sub_268F99594();
  v136 = v41;

  sub_268F995C4();

  v141(v139, v145, v146);

  __swift_destroy_boxed_opaque_existential_0(v143);
  __swift_destroy_boxed_opaque_existential_0(v144);
  return (v148)(v145, v146);
}

unint64_t sub_268D5B714()
{
  v2 = qword_2802DC5E8;
  if (!qword_2802DC5E8)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5B794()
{
  v1 = *sub_268EAE4B0();

  return v1;
}

uint64_t sub_268D5B7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);

  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a2;
  v12 = sub_268F995A4();

  return v12;
}

unint64_t sub_268D5B8C8()
{
  v2 = qword_2802DC5F8;
  if (!qword_2802DC5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC5F0, &qword_268F9E8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5B950()
{
  v2 = qword_2802DC608;
  if (!qword_2802DC608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC600, &qword_268F9E8F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5B9D8()
{
  v2 = qword_2802DC618;
  if (!qword_2802DC618)
  {
    type metadata accessor for ConfirmBinarySettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5BA58()
{
  v2 = qword_2802DC620;
  if (!qword_2802DC620)
  {
    type metadata accessor for HandleBinarySettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC620);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5BAEC(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_268D5BB3C()
{
  type metadata accessor for SetPersonalHotspotHandler();
  v0 = sub_268CDC590();
  result = sub_268D5BBA4(v0, 1);
  qword_2802F07A8 = result;
  return result;
}

uint64_t *sub_268D5BBFC()
{
  if (qword_2802DAF90 != -1)
  {
    swift_once();
  }

  return &qword_2802F07A8;
}

uint64_t sub_268D5BC5C()
{
  v1 = *sub_268D5BBFC();

  return v1;
}

uint64_t sub_268D5BC8C()
{
  swift_beginAccess();
  v2 = *(v0 + 25);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268D5BCDC(char a1)
{
  swift_beginAccess();
  *(v1 + 25) = a1;
  return swift_endAccess();
}

uint64_t sub_268D5BD84(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  v5 = sub_268D36D3C();

  *(v7 + 25) = v5 & 1;

  return v7;
}

void sub_268D5BE3C(void *a1, void (*a2)(void, __n128), uint64_t a3)
{
  v121 = a1;
  v120 = a2;
  v118 = a3;
  v99 = "SetPersonalHotspotHandler handling intent; Siri cannot change setting: Personal Hotspot";
  v100 = "SetPersonalHotspotHandler handling intent";
  v101 = "Device doesn't support personal hotspot.";
  v102 = "Device does not have valid SIM card inserted.";
  v103 = "Valid SIM card presented.";
  v104 = "Airplane mode is enabled. Offer to disable it and then enable personal hotspot.";
  v105 = "Cellular data is disabled. Offer to enable it and then enable personal hotspot.";
  v106 = sub_268D5CF7C;
  v146 = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v139 = 0;
  v138 = 0.0;
  v112 = 0;
  v107 = sub_268F9AD14();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v111 = &v27[-v110];
  v113 = sub_268F9AD34();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112, v6, v7, v8);
  v117 = &v27[-v116];
  v122 = sub_268F9AD54();
  v123 = *(v122 - 8);
  v124 = v122 - 8;
  v126 = *(v123 + 64);
  v125 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121, v120, v118, v9);
  v127 = &v27[-v125];
  v128 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v12, &v27[-v125]);
  v129 = &v27[-v128];
  v146 = v13;
  v144 = v14;
  v145 = v15;
  v143 = v16;
  sub_268E53518();
  if (SettingsFeatureFlagsImpl.isGetSetHotspotEnabled()())
  {
    v94 = sub_268F9B284();
    v96 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v96);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v95 = sub_268F9B734();
    sub_268F9AC14(v94, &dword_268CBE000, v96, v100, 41, 2);

    MEMORY[0x277D82BD8](v96);
    v97 = *(v119 + 16);

    v98 = sub_268D370FC();

    if (v98)
    {
      v92 = 1;
    }

    else
    {
      v90 = *(v119 + 16);

      v91 = sub_268D38D28();

      v92 = v91;
    }

    v89 = v92;

    if (v89)
    {
      v87 = *(v119 + 16);

      v88 = sub_268D3841C();

      if (v88)
      {
        v86 = 1;
      }

      else
      {
        v84 = *(v119 + 16);

        v85 = sub_268D38140();

        v86 = v85;
      }

      v83 = v86;

      if (v83)
      {
        v65 = sub_268F9B284();
        v67 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v67);
        v71 = 0;
        v66 = sub_268F9B734();
        sub_268F9AC14(v65, &dword_268CBE000, v67, v103, 25, 2);

        MEMORY[0x277D82BD8](v67);
        v68 = *(v119 + 16);

        v69 = sub_268D36D3C();

        v70 = &v142;
        swift_beginAccess();
        *(v119 + 25) = v69 & 1;
        swift_endAccess();
        v18 = [v121 binaryValue];
        v74 = &v141;
        v141 = v18;
        v72 = &v140;
        v140 = 1;
        v73 = type metadata accessor for INBinarySettingValue(v71);
        sub_268CD925C();
        v75 = sub_268F9B754();
        v139 = v75 & 1;
        v138 = 0.0;

        if (v75)
        {
          v62 = *(v119 + 16);

          v63 = sub_268D36960();

          v64 = v63;
        }

        else
        {
          v64 = 0;
        }

        v61 = v64;

        if (v61)
        {
          v56 = sub_268F9B284();
          v58 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v58);
          v57 = sub_268F9B734();
          sub_268F9AC14(v56, &dword_268CBE000, v58, v104, 79, 2);

          MEMORY[0x277D82BD8](v58);
          v59 = *(v119 + 16);

          sub_268D3699C(0);

          v138 = 1.0;
          v60 = 1.0;
        }

        else
        {
          v60 = 0.0;
        }

        v55 = v60;

        if (v75)
        {
          v52 = *(v119 + 16);

          v53 = sub_268D38D64();

          v54 = v53 ^ 1;
        }

        else
        {
          v54 = 0;
        }

        v51 = v54;

        if (v51)
        {
          v46 = sub_268F9B284();
          v48 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v48);
          v47 = sub_268F9B734();
          sub_268F9AC14(v46, &dword_268CBE000, v48, v105, 79, 2);

          MEMORY[0x277D82BD8](v48);
          v49 = *(v119 + 16);

          sub_268D390F0(1);

          v50 = &v130;
          swift_beginAccess();
          *(v119 + 25) = 0;
          swift_endAccess();
        }

        sub_268CDD000();
        v45 = sub_268F9B2C4();
        sub_268F9AD44();
        sub_268F9AD64();
        v44 = *(v123 + 8);
        v43 = v123 + 8;
        v44(v127, v122);

        MEMORY[0x277D82BE0](v121);

        v19 = swift_allocObject();
        v20 = v121;
        v21 = v75;
        v22 = v120;
        v23 = v118;
        v24 = v106;
        *(v19 + 16) = v119;
        *(v19 + 24) = v20;
        *(v19 + 32) = v21 & 1;
        *(v19 + 40) = v22;
        *(v19 + 48) = v23;
        v136 = v24;
        v137 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v132 = 1107296256;
        v133 = 0;
        v134 = sub_268D5BAEC;
        v135 = &block_descriptor_1;
        v42 = _Block_copy(&aBlock);

        sub_268D5D06C();
        sub_268D5D084();
        MEMORY[0x26D62DF00](v129, v117, v111, v42);
        (*(v108 + 8))(v111, v107);
        (*(v114 + 8))(v117, v113);
        _Block_release(v42);
        v44(v129, v122);
        MEMORY[0x277D82BD8](v45);
      }

      else
      {
        v76 = sub_268F9B294();
        v78 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v78);
        v79 = 0;
        v77 = sub_268F9B734();
        sub_268F9AC14(v76, &dword_268CBE000, v78, v102, 45, 2);

        MEMORY[0x277D82BD8](v78);

        v80 = sub_268E948B8(11);
        v81 = v17;
        v82 = sub_268DAB158(v79, v80, v17);

        v120(v82);
        MEMORY[0x277D82BD8](v82);
      }
    }

    else
    {
      v35 = sub_268F9B294();
      v37 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v37);
      v38 = 0;
      v36 = sub_268F9B734();
      sub_268F9AC14(v35, &dword_268CBE000, v37, v101, 40, 2);

      MEMORY[0x277D82BD8](v37);

      v39 = sub_268E948B8(3);
      v40 = v25;
      v41 = sub_268DAB158(v38, v39, v25);

      v120(v41);
      MEMORY[0x277D82BD8](v41);
    }
  }

  else
  {
    v28 = sub_268F9B284();
    v30 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v31 = 0;
    v29 = sub_268F9B734();
    sub_268F9AC14(v28, &dword_268CBE000, v30, v99, 87, 2);

    MEMORY[0x277D82BD8](v30);

    v32 = sub_268E948B8(17);
    v33 = v26;
    v34 = sub_268DAB158(v31, v32, v26);

    v120(v34);
    MEMORY[0x277D82BD8](v34);
  }
}

uint64_t sub_268D5CE9C(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  sub_268D5D124(a2, a3 & 1, sub_268D5DE14, v10);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_268D5CFFC(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);
}

uint64_t sub_268D5D084()
{
  sub_268E8E3CC(0);
  sub_268F9AD14();
  sub_268D5DD0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC630, &unk_268F9E9C0);
  sub_268D5DD8C();
  return sub_268F9B4A4();
}

double sub_268D5D124(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  v49 = 0;
  v53 = a1;
  v52 = a2 & 1;
  v50 = a3;
  v51 = a4;
  v48 = a1;
  v30 = sub_268CD7620();
  v31 = SettingIntent.settingIdentifier.getter(v30, &protocol witness table for INSetBinarySettingIntent);
  v32 = v4;

  v47 = 36;
  v33 = BinarySettingIdentifier.rawValue.getter();
  v34 = v5;

  v46[0] = v31;
  v46[1] = v32;
  v44[0] = v33;
  v44[1] = v34;
  sub_268D28874(v46, &v45);
  if (v34)
  {
    sub_268D28874(v44, v36);
    if (*(&v45 + 1))
    {
      v35 = v45;
      v24 = MEMORY[0x26D62DB50](v36[0], v36[1], v45, *(&v45 + 1));
      sub_268CD9D30(&v35);
      sub_268CD9D30(v36);
      sub_268CD9D30(v44);
      v25 = v24;
      goto LABEL_7;
    }

    sub_268CD9D30(v36);
    goto LABEL_9;
  }

  if (*(&v45 + 1))
  {
LABEL_9:
    sub_268D28550(v44);
    v25 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v44);
  v25 = 1;
LABEL_7:

  if (v25)
  {

    sub_268D5D644(a1, a2 & 1, a3);

    return result;
  }

  v43 = 35;
  v22 = BinarySettingIdentifier.rawValue.getter();
  v23 = v7;

  v42[0] = v31;
  v42[1] = v32;
  v39 = v22;
  v40 = v23;
  sub_268D28874(v42, &v41);
  if (!v40)
  {
    if (!*(&v41 + 1))
    {
      sub_268CD9D30(&v39);
      v21 = 1;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  sub_268D28874(&v39, v38);
  if (!*(&v41 + 1))
  {
    sub_268CD9D30(v38);
LABEL_21:
    sub_268D28550(&v39);
    v21 = 0;
    goto LABEL_18;
  }

  v37 = v41;
  v20 = MEMORY[0x26D62DB50](v38[0], v38[1], v41, *(&v41 + 1));
  sub_268CD9D30(&v37);
  sub_268CD9D30(v38);
  sub_268CD9D30(&v39);
  v21 = v20;
LABEL_18:

  if (v21)
  {
    sub_268D5D8CC(a1, a2 & 1, a3, a4);
  }

  else
  {
    v16 = sub_268F9B284();
    v8 = sub_268DC7AE8();
    v17 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v9;
    v38[4] = a1;
    v38[2] = SettingIntent.settingIdentifier.getter(v30, &protocol witness table for INSetBinarySettingIntent);
    v38[3] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v13 = sub_268F9AE64();
    v14 = v11;
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC14(v16, &dword_268CBE000, v17, "SetPersonalHotspotHandler cannot handle unsupported setting: %@", 63, 2);

    MEMORY[0x277D82BD8](v17);

    v18 = sub_268E948B8(17);
    v19 = sub_268DAB158(0, v18, v12);

    a3(v19);
    MEMORY[0x277D82BD8](v19);
  }

  return result;
}

void sub_268D5D644(uint64_t a1, char a2, void (*a3)(id))
{
  v12 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v13 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v12, &dword_268CBE000, v13, "User requested to set hotspot discoverability state.", 52, 2);

  MEMORY[0x277D82BD8](v13);
  if (a2)
  {

    v10 = sub_268D36DD0();

    if (v10)
    {
      v9 = sub_268E948B8(15);
    }

    else
    {
      v9 = sub_268E948B8(12);
    }

    v15 = v4;

    sub_268D36CE4(1);

    v8 = sub_268DAB158(0, v9, v15);
    (a3)();
    MEMORY[0x277D82BD8](v8);
  }

  else
  {

    sub_268D36D78(0);

    v6 = sub_268E948B8(13);
    v7 = sub_268DAB158(0, v6, v5);

    a3(v7);
    MEMORY[0x277D82BD8](v7);
  }
}

uint64_t sub_268D5D8CC(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  v22 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v23 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v22, &dword_268CBE000, v23, "User requested to set hotspot enablement state.", 47, 2);

  MEMORY[0x277D82BD8](v23);

  if (a2)
  {

    v17 = sub_268D36D3C();

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {

    v15 = sub_268D36DD0();

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {

    sub_268D36D78(1);

    v13 = sub_268E948B8(12);
    v14 = sub_268DAB158(0, v13, v5);

    a3(v14);
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v24 + 25);
    swift_endAccess();
    v7 = sub_268DB9D14();
    v9 = *v7;
    v10 = v7[1];
    v11 = *(v7 + 16);
    v12 = *(v24 + 24);

    sub_268DAAB84(v8 & 1, a1, v9, v10, v11, v12 & 1, a3, a4, sub_268D5DC80, v24, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268D5DC80, v24);
  }
}

uint64_t sub_268D5DC10(char a1)
{

  sub_268D36CE4(a1 & 1);
}

unint64_t sub_268D5DD0C()
{
  v2 = qword_2802DC628;
  if (!qword_2802DC628)
  {
    sub_268F9AD14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5DD8C()
{
  v2 = qword_2802DC638;
  if (!qword_2802DC638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC630, &unk_268F9E9C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC638);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5DE20()
{
  type metadata accessor for SetAHandler();
  v0 = sub_268CDC590();
  result = sub_268D5DE80(v0);
  qword_2802F07B0 = result;
  return result;
}

uint64_t *sub_268D5DECC()
{
  if (qword_2802DAF98 != -1)
  {
    swift_once();
  }

  return &qword_2802F07B0;
}

uint64_t sub_268D5DF2C()
{
  v1 = *sub_268D5DECC();

  return v1;
}

uint64_t sub_268D5DF5C(uint64_t a1)
{

  *(v1 + 16) = a1;

  return v4;
}

uint64_t sub_268D5DFB0(uint64_t a1, void (*a2)(void))
{

  sub_268CDA484();
  v4 = sub_268CD42AC(3, 0);
  a2();
  MEMORY[0x277D82BD8](v4);
}

uint64_t sub_268D5E0BC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SetBinarySettingIntent#ChangedBinaryValueTo";
  *(v2 + 8) = 43;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SetBinarySettingIntent#NoNeedToChangeBinaryValueTo";
  *(v2 + 32) = 50;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SetBinarySettingIntent#CannotConnectToWiFiNetwork";
  *(v2 + 56) = 49;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SetBinarySettingIntent#UnspecifiedActionForSupportedBinarySetting";
  *(v2 + 80) = 65;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SetBinarySettingIntent#ApplicableDevicesNeverConnected";
  *(v2 + 104) = 54;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SetBinarySettingIntent#RetainingCurrentBinaryValue";
  *(v2 + 128) = 50;
  *(v2 + 136) = 2;
  *(v2 + 144) = "SetBinarySettingIntent#AppNotInstalledForAnnounceNotifications";
  *(v2 + 152) = 62;
  *(v2 + 160) = 2;
  *(v2 + 168) = "SetBinarySettingIntent#ConfirmBeforeSeveringConnectionToSiri";
  *(v2 + 176) = 60;
  *(v2 + 184) = 2;
  *(v2 + 192) = "SetBinarySettingIntent#ChangedMultiSettingValueToSpokenOnly";
  *(v2 + 200) = 59;
  *(v2 + 208) = 2;
  *(v2 + 216) = "SetBinarySettingIntent#ConfirmBeforeTurningOffLocationServices";
  *(v2 + 224) = 62;
  *(v2 + 232) = 2;
  *(v2 + 240) = "SetBinarySettingIntent#SiriCanOnlyAnnounceMessagesInCarPlay";
  *(v2 + 248) = 59;
  *(v2 + 256) = 2;
  *(v2 + 264) = "SetBinarySettingIntent#UnspecifiedActionForSupportedMultiSetting";
  *(v2 + 272) = 64;
  *(v2 + 280) = 2;
  *(v2 + 288) = "SetBinarySettingIntent#ChangedMultiSettingValueTo";
  *(v2 + 296) = 49;
  *(v2 + 304) = 2;
  *(v2 + 312) = "SetBinarySettingIntent#ConfirmBeforeTurningOffAnnounceNotifications";
  *(v2 + 320) = 67;
  *(v2 + 328) = 2;
  *(v2 + 336) = "SetBinarySettingIntent#MissingSIMOrCellular";
  *(v2 + 344) = 43;
  *(v2 + 352) = 2;
  *(v2 + 360) = "SetBinarySettingIntent#SiriCannotDisableItself";
  *(v2 + 368) = 46;
  *(v2 + 376) = 2;
  *(v2 + 384) = "SetBinarySettingIntent#CannotTemporarilyEnableAnnounceMessages";
  *(v2 + 392) = 62;
  *(v2 + 400) = 2;
  *(v2 + 408) = "SetBinarySettingIntent#ChangedBinaryValueToSpokenOnly";
  *(v2 + 416) = 53;
  *(v2 + 424) = 2;
  *(v2 + 432) = "SetBinarySettingIntent#NoNeedToChangeMultiSettingValueTo";
  *(v2 + 440) = 56;
  *(v2 + 448) = 2;
  *(v2 + 456) = "SetBinarySettingIntent#HotspotAirplaneModeEnabledOrCellularDisabled";
  *(v2 + 464) = 67;
  *(v2 + 472) = 2;
  *(v2 + 480) = "SetBinarySettingIntent#DescribeHotspotDiscoverability";
  *(v2 + 488) = 53;
  *(v2 + 496) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_44:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_44;
    case 2:
      v5 = 2;
      goto LABEL_44;
    case 3:
      v5 = 3;
      goto LABEL_44;
    case 4:
      v5 = 4;
      goto LABEL_44;
    case 5:
      v5 = 5;
      goto LABEL_44;
    case 6:
      v5 = 6;
      goto LABEL_44;
    case 7:
      v5 = 7;
      goto LABEL_44;
    case 8:
      v5 = 8;
      goto LABEL_44;
    case 9:
      v5 = 9;
      goto LABEL_44;
    case 10:
      v5 = 10;
      goto LABEL_44;
    case 11:
      v5 = 11;
      goto LABEL_44;
    case 12:
      v5 = 12;
      goto LABEL_44;
    case 13:
      v5 = 13;
      goto LABEL_44;
    case 14:
      v5 = 14;
      goto LABEL_44;
    case 15:
      v5 = 15;
      goto LABEL_44;
    case 16:
      v5 = 16;
      goto LABEL_44;
    case 17:
      v5 = 17;
      goto LABEL_44;
    case 18:
      v5 = 18;
      goto LABEL_44;
    case 19:
      v5 = 19;
      goto LABEL_44;
    case 20:
      v5 = 20;
      goto LABEL_44;
  }

  return 21;
}

unint64_t sub_268D5EB10()
{
  v2 = qword_2802DC640;
  if (!qword_2802DC640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC640);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5EC5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268D5E0BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268D5EC94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268D5E71C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268D5ECC8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_268D5ECF4(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_268D5ED30()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_268D5ED5C(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(uint64_t a1)
{
  v2 = qword_2802DC648;
  if (!qword_2802DC648)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D5EE50(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5EF38(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5EFE8()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0) + 36));

  return v2;
}

uint64_t sub_268D5F020(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0) + 36)) = a1;
}

uint64_t sub_268D5F0A4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5F18C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5F274(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5F35C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5F444(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5F52C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 60)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5F614(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 64)));
  return sub_268D28588(v11);
}

uint64_t sub_268D5F71C()
{
  v224 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v201 = *(*(v1 - 8) + 64);
  v202 = (v201 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v203 = &v165 - v202;
  v204 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v202, v6, v7, v8);
  v205 = &v165 - v204;
  v206 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v204, v10, v11, v12);
  v207 = &v165 - v206;
  v208 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v206, v14, v15, v16);
  v209 = &v165 - v208;
  v210 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v208, v18, v19, v20);
  v211 = &v165 - v210;
  v212 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v210, v22, v23, v24);
  v213 = &v165 - v212;
  v214 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v212, v26, v27, v28);
  v215 = &v165 - v214;
  v216 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v214, v30, v31, v32);
  v217 = &v165 - v216;
  v218 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v216, v34, v35, v36);
  v219 = &v165 - v218;
  v224 = v0;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v221 = sub_268F9B734();
  v222 = v37;
  v38 = sub_268F9AEF4();
  v39 = v222;
  *v222 = v38;
  v39[1] = v40;
  v223 = *v0;

  if (v223)
  {
    v199 = v223;
    v198 = v223;
    v41 = sub_268F9A994();
    v42 = v222;
    v43 = v198;
    v222[5] = v41;
    v42[2] = v43;
  }

  else
  {
    v164 = v222;
    v222[2] = 0;
    v164[3] = 0;
    v164[4] = 0;
    v164[5] = 0;
  }

  v44 = sub_268F9AEF4();
  v45 = v222;
  v46 = v200;
  v222[6] = v44;
  v45[7] = v47;
  v197 = *(v46 + 8);

  if (v197)
  {
    v196 = v197;
    v195 = v197;
    v48 = sub_268F9AA44();
    v49 = v222;
    v50 = v195;
    v222[11] = v48;
    v49[8] = v50;
  }

  else
  {
    v163 = v222;
    v222[8] = 0;
    v163[9] = 0;
    v163[10] = 0;
    v163[11] = 0;
  }

  v189 = 1;
  v51 = sub_268F9AEF4();
  v52 = v222;
  v53 = v200;
  v222[12] = v51;
  v52[13] = v54;
  LOBYTE(v53) = *(v53 + 16);
  v52[17] = MEMORY[0x277D839B0];
  *(v52 + 112) = v53;
  v186 = v52 + 20;
  v55 = sub_268F9AEF4();
  v56 = v222;
  v222[18] = v55;
  v56[19] = v57;
  v188 = 0;
  v187 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D2A1F0((v200 + *(v187 + 28)), v219);
  v190 = sub_268F9A9C4();
  v191 = *(v190 - 8);
  v192 = v190 - 8;
  v193 = *(v191 + 48);
  v194 = v191 + 48;
  if (v193(v219, v189) == 1)
  {
    sub_268D28588(v219);
    v162 = v222;
    v222[20] = 0;
    v162[21] = 0;
    v162[22] = 0;
    v162[23] = 0;
  }

  else
  {
    v58 = v186;
    v222[23] = v190;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
    (*(v191 + 32))(boxed_opaque_existential_1, v219, v190);
  }

  v184 = v222 + 26;
  v185 = 1;
  v60 = sub_268F9AEF4();
  v61 = v222;
  v62 = v187;
  v63 = v200;
  v65 = v64;
  v66 = v217;
  v222[24] = v60;
  v61[25] = v65;
  sub_268D2A1F0((v63 + *(v62 + 32)), v66);
  if ((v193)(v217, v185, v190) == 1)
  {
    sub_268D28588(v217);
    v161 = v222;
    v222[26] = 0;
    v161[27] = 0;
    v161[28] = 0;
    v161[29] = 0;
  }

  else
  {
    v67 = v184;
    v222[29] = v190;
    v68 = __swift_allocate_boxed_opaque_existential_1(v67);
    (*(v191 + 32))(v68, v217, v190);
  }

  v69 = sub_268F9AEF4();
  v70 = v222;
  v71 = v187;
  v72 = v200;
  v222[30] = v69;
  v70[31] = v73;
  v183 = *(v72 + *(v71 + 36));

  if (v183)
  {
    v182 = v183;
    v181 = v183;
    v74 = type metadata accessor for SettingsBinarySetting(0);
    v75 = v222;
    v76 = v181;
    v222[35] = v74;
    v75[32] = v76;
  }

  else
  {
    v160 = v222;
    v222[32] = 0;
    v160[33] = 0;
    v160[34] = 0;
    v160[35] = 0;
  }

  v179 = v222 + 38;
  v180 = 1;
  v77 = sub_268F9AEF4();
  v78 = v222;
  v79 = v187;
  v80 = v200;
  v82 = v81;
  v83 = v215;
  v222[36] = v77;
  v78[37] = v82;
  sub_268D2A1F0((v80 + *(v79 + 40)), v83);
  if ((v193)(v215, v180, v190) == 1)
  {
    sub_268D28588(v215);
    v159 = v222;
    v222[38] = 0;
    v159[39] = 0;
    v159[40] = 0;
    v159[41] = 0;
  }

  else
  {
    v84 = v179;
    v222[41] = v190;
    v85 = __swift_allocate_boxed_opaque_existential_1(v84);
    (*(v191 + 32))(v85, v215, v190);
  }

  v177 = v222 + 44;
  v178 = 1;
  v86 = sub_268F9AEF4();
  v87 = v222;
  v88 = v187;
  v89 = v200;
  v91 = v90;
  v92 = v213;
  v222[42] = v86;
  v87[43] = v91;
  sub_268D2A1F0((v89 + *(v88 + 44)), v92);
  if ((v193)(v213, v178, v190) == 1)
  {
    sub_268D28588(v213);
    v158 = v222;
    v222[44] = 0;
    v158[45] = 0;
    v158[46] = 0;
    v158[47] = 0;
  }

  else
  {
    v93 = v177;
    v222[47] = v190;
    v94 = __swift_allocate_boxed_opaque_existential_1(v93);
    (*(v191 + 32))(v94, v213, v190);
  }

  v175 = v222 + 50;
  v176 = 1;
  v95 = sub_268F9AEF4();
  v96 = v222;
  v97 = v187;
  v98 = v200;
  v100 = v99;
  v101 = v211;
  v222[48] = v95;
  v96[49] = v100;
  sub_268D2A1F0((v98 + *(v97 + 48)), v101);
  if ((v193)(v211, v176, v190) == 1)
  {
    sub_268D28588(v211);
    v157 = v222;
    v222[50] = 0;
    v157[51] = 0;
    v157[52] = 0;
    v157[53] = 0;
  }

  else
  {
    v102 = v175;
    v222[53] = v190;
    v103 = __swift_allocate_boxed_opaque_existential_1(v102);
    (*(v191 + 32))(v103, v211, v190);
  }

  v173 = v222 + 56;
  v174 = 1;
  v104 = sub_268F9AEF4();
  v105 = v222;
  v106 = v187;
  v107 = v200;
  v109 = v108;
  v110 = v209;
  v222[54] = v104;
  v105[55] = v109;
  sub_268D2A1F0((v107 + *(v106 + 64)), v110);
  if ((v193)(v209, v174, v190) == 1)
  {
    sub_268D28588(v209);
    v156 = v222;
    v222[56] = 0;
    v156[57] = 0;
    v156[58] = 0;
    v156[59] = 0;
  }

  else
  {
    v111 = v173;
    v222[59] = v190;
    v112 = __swift_allocate_boxed_opaque_existential_1(v111);
    (*(v191 + 32))(v112, v209, v190);
  }

  v172 = 1;
  v113 = sub_268F9AEF4();
  v114 = v222;
  v115 = v187;
  v116 = v200;
  v222[60] = v113;
  v114[61] = v117;
  LOBYTE(v116) = *(v116 + *(v115 + 68));
  v170 = MEMORY[0x277D839B0];
  v114[65] = MEMORY[0x277D839B0];
  *(v114 + 496) = v116;
  v118 = sub_268F9AEF4();
  v119 = v170;
  v120 = v222;
  v121 = v187;
  v122 = v200;
  v222[66] = v118;
  v120[67] = v123;
  LOBYTE(v122) = *(v122 + *(v121 + 72));
  v120[71] = v119;
  *(v120 + 544) = v122;
  v171 = v120 + 74;
  v124 = sub_268F9AEF4();
  v125 = v222;
  v126 = v187;
  v127 = v200;
  v129 = v128;
  v130 = v207;
  v222[72] = v124;
  v125[73] = v129;
  sub_268D2A1F0((v127 + *(v126 + 52)), v130);
  if ((v193)(v207, v172, v190) == 1)
  {
    sub_268D28588(v207);
    v155 = v222;
    v222[74] = 0;
    v155[75] = 0;
    v155[76] = 0;
    v155[77] = 0;
  }

  else
  {
    v131 = v171;
    v222[77] = v190;
    v132 = __swift_allocate_boxed_opaque_existential_1(v131);
    (*(v191 + 32))(v132, v207, v190);
  }

  v168 = v222 + 80;
  v169 = 1;
  v133 = sub_268F9AEF4();
  v134 = v222;
  v135 = v187;
  v136 = v200;
  v138 = v137;
  v139 = v205;
  v222[78] = v133;
  v134[79] = v138;
  sub_268D2A1F0((v136 + *(v135 + 56)), v139);
  if ((v193)(v205, v169, v190) == 1)
  {
    sub_268D28588(v205);
    v154 = v222;
    v222[80] = 0;
    v154[81] = 0;
    v154[82] = 0;
    v154[83] = 0;
  }

  else
  {
    v140 = v168;
    v222[83] = v190;
    v141 = __swift_allocate_boxed_opaque_existential_1(v140);
    (*(v191 + 32))(v141, v205, v190);
  }

  v166 = v222 + 86;
  v167 = 1;
  v142 = sub_268F9AEF4();
  v143 = v222;
  v144 = v187;
  v145 = v200;
  v147 = v146;
  v148 = v203;
  v222[84] = v142;
  v143[85] = v147;
  sub_268D2A1F0((v145 + *(v144 + 60)), v148);
  if ((v193)(v203, v167, v190) == 1)
  {
    sub_268D28588(v203);
    v153 = v222;
    v222[86] = 0;
    v153[87] = 0;
    v153[88] = 0;
    v153[89] = 0;
  }

  else
  {
    v149 = v166;
    v222[89] = v190;
    v150 = __swift_allocate_boxed_opaque_existential_1(v149);
    (*(v191 + 32))(v150, v203, v190);
  }

  sub_268CD0F7C();
  v165 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268D60698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, const void *a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, char a15, char a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v23 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  sub_268D84F40(a4, (a9 + v23[7]));
  sub_268D84F40(a5, (a9 + v23[8]));
  *(a9 + v23[9]) = a6;
  sub_268D84F40(a7, (a9 + v23[10]));
  sub_268D84F40(a8, (a9 + v23[11]));
  sub_268D84F40(a10, (a9 + v23[12]));
  sub_268D84F40(a11, (a9 + v23[13]));
  sub_268D84F40(a12, (a9 + v23[14]));
  sub_268D84F40(a13, (a9 + v23[15]));
  sub_268D84F40(a14, (a9 + v23[16]));
  result = v23;
  *(a9 + v23[17]) = a15;
  *(a9 + v23[18]) = a16;
  return result;
}

uint64_t type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(uint64_t a1)
{
  v2 = qword_2802DC678;
  if (!qword_2802DC678)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D608D8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268D60988()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0) + 24));

  return v2;
}

uint64_t sub_268D609C0(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0) + 24)) = a1;
}

uint64_t sub_268D60A44(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268D60B2C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D60C14(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268D60CFC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D60DE4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D60ECC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D60FB4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D61064()
{
  v179 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v158 = *(*(v1 - 8) + 64);
  v159 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v160 = &v128 - v159;
  v161 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v128 - v159, v6, v7, v8);
  v162 = &v128 - v161;
  v163 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v128 - v161, v10, v11, v12);
  v164 = &v128 - v163;
  v165 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v128 - v163, v14, v15, v16);
  v166 = &v128 - v165;
  v167 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v128 - v165, v18, v19, v20);
  v168 = &v128 - v167;
  v169 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v128 - v167, v22, v23, v24);
  v170 = &v128 - v169;
  v171 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v128 - v169, v26, v27, v28);
  v172 = &v128 - v171;
  v173 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v128 - v171, v30, v31, v32);
  v174 = &v128 - v173;
  v179 = v0;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v176 = sub_268F9B734();
  v177 = v33;
  v34 = sub_268F9AEF4();
  v35 = v177;
  *v177 = v34;
  v35[1] = v36;
  v178 = *v0;

  if (v178)
  {
    v156 = v178;
    v155 = v178;
    v37 = sub_268F9AA44();
    v38 = v177;
    v39 = v155;
    v177[5] = v37;
    v38[2] = v39;
  }

  else
  {
    v127 = v177;
    v177[2] = 0;
    v127[3] = 0;
    v127[4] = 0;
    v127[5] = 0;
  }

  v146 = v177 + 8;
  v149 = 1;
  v40 = sub_268F9AEF4();
  v41 = v177;
  v177[6] = v40;
  v41[7] = v42;
  v148 = 0;
  v147 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  sub_268D2A1F0((v157 + *(v147 + 20)), v174);
  v150 = sub_268F9A9C4();
  v151 = *(v150 - 8);
  v152 = v150 - 8;
  v153 = *(v151 + 48);
  v154 = v151 + 48;
  if (v153(v174, v149) == 1)
  {
    sub_268D28588(v174);
    v126 = v177;
    v177[8] = 0;
    v126[9] = 0;
    v126[10] = 0;
    v126[11] = 0;
  }

  else
  {
    v43 = v146;
    v177[11] = v150;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v151 + 32))(boxed_opaque_existential_1, v174, v150);
  }

  v45 = sub_268F9AEF4();
  v46 = v177;
  v47 = v147;
  v48 = v157;
  v177[12] = v45;
  v46[13] = v49;
  v145 = *(v48 + *(v47 + 24));

  if (v145)
  {
    v144 = v145;
    v143 = v145;
    v50 = type metadata accessor for SettingsBinarySetting(0);
    v51 = v177;
    v52 = v143;
    v177[17] = v50;
    v51[14] = v52;
  }

  else
  {
    v125 = v177;
    v177[14] = 0;
    v125[15] = 0;
    v125[16] = 0;
    v125[17] = 0;
  }

  v141 = v177 + 20;
  v142 = 1;
  v53 = sub_268F9AEF4();
  v54 = v177;
  v55 = v147;
  v56 = v157;
  v58 = v57;
  v59 = v172;
  v177[18] = v53;
  v54[19] = v58;
  sub_268D2A1F0((v56 + *(v55 + 28)), v59);
  if ((v153)(v172, v142, v150) == 1)
  {
    sub_268D28588(v172);
    v124 = v177;
    v177[20] = 0;
    v124[21] = 0;
    v124[22] = 0;
    v124[23] = 0;
  }

  else
  {
    v60 = v141;
    v177[23] = v150;
    v61 = __swift_allocate_boxed_opaque_existential_1(v60);
    (*(v151 + 32))(v61, v172, v150);
  }

  v139 = v177 + 26;
  v140 = 1;
  v62 = sub_268F9AEF4();
  v63 = v177;
  v64 = v147;
  v65 = v157;
  v67 = v66;
  v68 = v170;
  v177[24] = v62;
  v63[25] = v67;
  sub_268D2A1F0((v65 + *(v64 + 32)), v68);
  if ((v153)(v170, v140, v150) == 1)
  {
    sub_268D28588(v170);
    v123 = v177;
    v177[26] = 0;
    v123[27] = 0;
    v123[28] = 0;
    v123[29] = 0;
  }

  else
  {
    v69 = v139;
    v177[29] = v150;
    v70 = __swift_allocate_boxed_opaque_existential_1(v69);
    (*(v151 + 32))(v70, v170, v150);
  }

  v137 = v177 + 32;
  v138 = 1;
  v71 = sub_268F9AEF4();
  v72 = v177;
  v73 = v147;
  v74 = v157;
  v76 = v75;
  v77 = v168;
  v177[30] = v71;
  v72[31] = v76;
  sub_268D2A1F0((v74 + *(v73 + 36)), v77);
  if ((v153)(v168, v138, v150) == 1)
  {
    sub_268D28588(v168);
    v122 = v177;
    v177[32] = 0;
    v122[33] = 0;
    v122[34] = 0;
    v122[35] = 0;
  }

  else
  {
    v78 = v137;
    v177[35] = v150;
    v79 = __swift_allocate_boxed_opaque_existential_1(v78);
    (*(v151 + 32))(v79, v168, v150);
  }

  v135 = v177 + 38;
  v136 = 1;
  v80 = sub_268F9AEF4();
  v81 = v177;
  v82 = v147;
  v83 = v157;
  v85 = v84;
  v86 = v166;
  v177[36] = v80;
  v81[37] = v85;
  sub_268D2A1F0((v83 + *(v82 + 52)), v86);
  if ((v153)(v166, v136, v150) == 1)
  {
    sub_268D28588(v166);
    v121 = v177;
    v177[38] = 0;
    v121[39] = 0;
    v121[40] = 0;
    v121[41] = 0;
  }

  else
  {
    v87 = v135;
    v177[41] = v150;
    v88 = __swift_allocate_boxed_opaque_existential_1(v87);
    (*(v151 + 32))(v88, v166, v150);
  }

  v133 = v177 + 44;
  v134 = 1;
  v89 = sub_268F9AEF4();
  v90 = v177;
  v91 = v147;
  v92 = v157;
  v94 = v93;
  v95 = v164;
  v177[42] = v89;
  v90[43] = v94;
  sub_268D2A1F0((v92 + *(v91 + 40)), v95);
  if ((v153)(v164, v134, v150) == 1)
  {
    sub_268D28588(v164);
    v120 = v177;
    v177[44] = 0;
    v120[45] = 0;
    v120[46] = 0;
    v120[47] = 0;
  }

  else
  {
    v96 = v133;
    v177[47] = v150;
    v97 = __swift_allocate_boxed_opaque_existential_1(v96);
    (*(v151 + 32))(v97, v164, v150);
  }

  v131 = v177 + 50;
  v132 = 1;
  v98 = sub_268F9AEF4();
  v99 = v177;
  v100 = v147;
  v101 = v157;
  v103 = v102;
  v104 = v162;
  v177[48] = v98;
  v99[49] = v103;
  sub_268D2A1F0((v101 + *(v100 + 44)), v104);
  if ((v153)(v162, v132, v150) == 1)
  {
    sub_268D28588(v162);
    v119 = v177;
    v177[50] = 0;
    v119[51] = 0;
    v119[52] = 0;
    v119[53] = 0;
  }

  else
  {
    v105 = v131;
    v177[53] = v150;
    v106 = __swift_allocate_boxed_opaque_existential_1(v105);
    (*(v151 + 32))(v106, v162, v150);
  }

  v129 = v177 + 56;
  v130 = 1;
  v107 = sub_268F9AEF4();
  v108 = v177;
  v109 = v147;
  v110 = v157;
  v112 = v111;
  v113 = v160;
  v177[54] = v107;
  v108[55] = v112;
  sub_268D2A1F0((v110 + *(v109 + 48)), v113);
  if ((v153)(v160, v130, v150) == 1)
  {
    sub_268D28588(v160);
    v118 = v177;
    v177[56] = 0;
    v118[57] = 0;
    v118[58] = 0;
    v118[59] = 0;
  }

  else
  {
    v114 = v129;
    v177[59] = v150;
    v115 = __swift_allocate_boxed_opaque_existential_1(v114);
    (*(v151 + 32))(v115, v160, v150);
  }

  sub_268CD0F7C();
  v128 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D61C34@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v23 = 0;
  v15 = 0;
  v16 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  v13 = (*(*(v16 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v21 = &v12 - v13;
  v23 = &v12 - v13;
  *v21 = 0;
  v14 = *(v4 + 20);
  v18 = sub_268F9A9C4();
  v5 = *(v18 - 8);
  v20 = *(v5 + 56);
  v19 = v5 + 56;
  v17 = 1;
  v20(&v21[v14], 1);
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v20;
  v10 = v21;
  *&v21[v16[6]] = v15;
  (v9)(&v10[v6[7]], v7, v7, v8);
  (v20)(&v21[v16[8]], v17, v17, v18);
  (v20)(&v21[v16[9]], v17, v17, v18);
  (v20)(&v21[v16[10]], v17, v17, v18);
  (v20)(&v21[v16[11]], v17, v17, v18);
  (v20)(&v21[v16[12]], v17, v17, v18);
  (v20)(&v21[v16[13]], v17, v17, v18);
  return sub_268D863AC(v21, v22);
}

uint64_t type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(uint64_t a1)
{
  v2 = qword_2802DC688;
  if (!qword_2802DC688)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D61F38(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268D61FE8()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0) + 24));

  return v2;
}

uint64_t sub_268D62020(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0) + 24)) = a1;
}

uint64_t sub_268D62090(unsigned int a1)
{
  v2 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0);
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_268D620C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v1;
  *v1 = sub_268F9AEF4();
  v10[1] = v2;
  v11 = *v0;

  if (v11)
  {
    v10[5] = sub_268F9AA44();
    v10[2] = v11;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v3;
  v7 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0);
  v8 = *(v9 + *(v7 + 24));

  if (v8)
  {
    v10[11] = type metadata accessor for SettingsBinarySetting(0);
    v10[8] = v8;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v4;
  v6 = *(v9 + *(v7 + 28));
  if (v6 == 2)
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  else
  {
    v10[17] = MEMORY[0x277D839B0];
    *(v10 + 112) = v6 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D62310@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = 0;
  v13 = 0;
  v14 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v15 = &v10 - v11;
  v17 = &v10 - v11;
  *v15 = 0;
  v12 = *(v4 + 20);
  v5 = sub_268F9A9C4();
  (*(*(v5 - 8) + 56))(&v15[v12], 1);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  *&v15[*(v14 + 24)] = v13;
  v7[*(v6 + 28)] = 2;
  return sub_268D861FC(v7, v8);
}

uint64_t type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(uint64_t a1)
{
  v2 = qword_2802DC6A0;
  if (!qword_2802DC6A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D624CC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6257C()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0) + 24));

  return v2;
}

uint64_t sub_268D625B4(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0) + 24)) = a1;
}

uint64_t sub_268D62638(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268D62720(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D62808(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268D628F0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D629D8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D62AC0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D62BA8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D62C7C(unsigned int a1)
{
  v2 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  result = a1;
  *(v1 + *(v2 + 56)) = a1;
  return result;
}

uint64_t sub_268D62CB4()
{
  v190 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v168 = *(*(v1 - 8) + 64);
  v169 = (v168 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v170 = &v136 - v169;
  v171 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v136 - v169, v6, v7, v8);
  v172 = &v136 - v171;
  v173 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v136 - v171, v10, v11, v12);
  v174 = &v136 - v173;
  v175 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v136 - v173, v14, v15, v16);
  v176 = &v136 - v175;
  v177 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v136 - v175, v18, v19, v20);
  v178 = &v136 - v177;
  v179 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v136 - v177, v22, v23, v24);
  v180 = &v136 - v179;
  v181 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v136 - v179, v26, v27, v28);
  v182 = &v136 - v181;
  v183 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v136 - v181, v30, v31, v32);
  v184 = &v136 - v183;
  v190 = v0;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v187 = 11;
  v186 = sub_268F9B734();
  v188 = v33;
  v34 = sub_268F9AEF4();
  v35 = v188;
  *v188 = v34;
  v35[1] = v36;
  v189 = *v0;

  if (v189)
  {
    v166 = v189;
    v165 = v189;
    v37 = sub_268F9AA44();
    v38 = v188;
    v39 = v165;
    v188[5] = v37;
    v38[2] = v39;
  }

  else
  {
    v135 = v188;
    v188[2] = 0;
    v135[3] = 0;
    v135[4] = 0;
    v135[5] = 0;
  }

  v156 = v188 + 8;
  v159 = 1;
  v40 = sub_268F9AEF4();
  v41 = v188;
  v188[6] = v40;
  v41[7] = v42;
  v158 = 0;
  v157 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  sub_268D2A1F0((v167 + *(v157 + 20)), v184);
  v160 = sub_268F9A9C4();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = *(v161 + 48);
  v164 = v161 + 48;
  if (v163(v184, v159) == 1)
  {
    sub_268D28588(v184);
    v134 = v188;
    v188[8] = 0;
    v134[9] = 0;
    v134[10] = 0;
    v134[11] = 0;
  }

  else
  {
    v43 = v156;
    v188[11] = v160;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v161 + 32))(boxed_opaque_existential_1, v184, v160);
  }

  v45 = sub_268F9AEF4();
  v46 = v188;
  v47 = v157;
  v48 = v167;
  v188[12] = v45;
  v46[13] = v49;
  v155 = *(v48 + *(v47 + 24));

  if (v155)
  {
    v154 = v155;
    v153 = v155;
    v50 = type metadata accessor for SettingsBinarySetting(0);
    v51 = v188;
    v52 = v153;
    v188[17] = v50;
    v51[14] = v52;
  }

  else
  {
    v133 = v188;
    v188[14] = 0;
    v133[15] = 0;
    v133[16] = 0;
    v133[17] = 0;
  }

  v151 = v188 + 20;
  v152 = 1;
  v53 = sub_268F9AEF4();
  v54 = v188;
  v55 = v157;
  v56 = v167;
  v58 = v57;
  v59 = v182;
  v188[18] = v53;
  v54[19] = v58;
  sub_268D2A1F0((v56 + *(v55 + 28)), v59);
  if ((v163)(v182, v152, v160) == 1)
  {
    sub_268D28588(v182);
    v132 = v188;
    v188[20] = 0;
    v132[21] = 0;
    v132[22] = 0;
    v132[23] = 0;
  }

  else
  {
    v60 = v151;
    v188[23] = v160;
    v61 = __swift_allocate_boxed_opaque_existential_1(v60);
    (*(v161 + 32))(v61, v182, v160);
  }

  v149 = v188 + 26;
  v150 = 1;
  v62 = sub_268F9AEF4();
  v63 = v188;
  v64 = v157;
  v65 = v167;
  v67 = v66;
  v68 = v180;
  v188[24] = v62;
  v63[25] = v67;
  sub_268D2A1F0((v65 + *(v64 + 32)), v68);
  if ((v163)(v180, v150, v160) == 1)
  {
    sub_268D28588(v180);
    v131 = v188;
    v188[26] = 0;
    v131[27] = 0;
    v131[28] = 0;
    v131[29] = 0;
  }

  else
  {
    v69 = v149;
    v188[29] = v160;
    v70 = __swift_allocate_boxed_opaque_existential_1(v69);
    (*(v161 + 32))(v70, v180, v160);
  }

  v147 = v188 + 32;
  v148 = 1;
  v71 = sub_268F9AEF4();
  v72 = v188;
  v73 = v157;
  v74 = v167;
  v76 = v75;
  v77 = v178;
  v188[30] = v71;
  v72[31] = v76;
  sub_268D2A1F0((v74 + *(v73 + 36)), v77);
  if ((v163)(v178, v148, v160) == 1)
  {
    sub_268D28588(v178);
    v130 = v188;
    v188[32] = 0;
    v130[33] = 0;
    v130[34] = 0;
    v130[35] = 0;
  }

  else
  {
    v78 = v147;
    v188[35] = v160;
    v79 = __swift_allocate_boxed_opaque_existential_1(v78);
    (*(v161 + 32))(v79, v178, v160);
  }

  v145 = v188 + 38;
  v146 = 1;
  v80 = sub_268F9AEF4();
  v81 = v188;
  v82 = v157;
  v83 = v167;
  v85 = v84;
  v86 = v176;
  v188[36] = v80;
  v81[37] = v85;
  sub_268D2A1F0((v83 + *(v82 + 52)), v86);
  if ((v163)(v176, v146, v160) == 1)
  {
    sub_268D28588(v176);
    v129 = v188;
    v188[38] = 0;
    v129[39] = 0;
    v129[40] = 0;
    v129[41] = 0;
  }

  else
  {
    v87 = v145;
    v188[41] = v160;
    v88 = __swift_allocate_boxed_opaque_existential_1(v87);
    (*(v161 + 32))(v88, v176, v160);
  }

  v143 = v188 + 44;
  v144 = 1;
  v89 = sub_268F9AEF4();
  v90 = v188;
  v91 = v157;
  v92 = v167;
  v94 = v93;
  v95 = v174;
  v188[42] = v89;
  v90[43] = v94;
  sub_268D2A1F0((v92 + *(v91 + 40)), v95);
  if ((v163)(v174, v144, v160) == 1)
  {
    sub_268D28588(v174);
    v128 = v188;
    v188[44] = 0;
    v128[45] = 0;
    v128[46] = 0;
    v128[47] = 0;
  }

  else
  {
    v96 = v143;
    v188[47] = v160;
    v97 = __swift_allocate_boxed_opaque_existential_1(v96);
    (*(v161 + 32))(v97, v174, v160);
  }

  v141 = v188 + 50;
  v142 = 1;
  v98 = sub_268F9AEF4();
  v99 = v188;
  v100 = v157;
  v101 = v167;
  v103 = v102;
  v104 = v172;
  v188[48] = v98;
  v99[49] = v103;
  sub_268D2A1F0((v101 + *(v100 + 44)), v104);
  if ((v163)(v172, v142, v160) == 1)
  {
    sub_268D28588(v172);
    v127 = v188;
    v188[50] = 0;
    v127[51] = 0;
    v127[52] = 0;
    v127[53] = 0;
  }

  else
  {
    v105 = v141;
    v188[53] = v160;
    v106 = __swift_allocate_boxed_opaque_existential_1(v105);
    (*(v161 + 32))(v106, v172, v160);
  }

  v139 = v188 + 56;
  v140 = 1;
  v107 = sub_268F9AEF4();
  v108 = v188;
  v109 = v157;
  v110 = v167;
  v112 = v111;
  v113 = v170;
  v188[54] = v107;
  v108[55] = v112;
  sub_268D2A1F0((v110 + *(v109 + 48)), v113);
  if ((v163)(v170, v140, v160) == 1)
  {
    sub_268D28588(v170);
    v126 = v188;
    v188[56] = 0;
    v126[57] = 0;
    v126[58] = 0;
    v126[59] = 0;
  }

  else
  {
    v114 = v139;
    v188[59] = v160;
    v115 = __swift_allocate_boxed_opaque_existential_1(v114);
    (*(v161 + 32))(v115, v170, v160);
  }

  v116 = sub_268F9AEF4();
  v117 = v188;
  v118 = v157;
  v119 = v167;
  v188[60] = v116;
  v117[61] = v120;
  v138 = *(v119 + *(v118 + 56));
  if (v138 == 2)
  {
    v125 = v188;
    v188[62] = 0;
    v125[63] = 0;
    v125[64] = 0;
    v125[65] = 0;
  }

  else
  {
    v137 = v138;
    v121 = v188;
    v122 = v138;
    v188[65] = MEMORY[0x277D839B0];
    *(v121 + 496) = v122 & 1;
  }

  sub_268CD0F7C();
  v136 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D6398C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = 0;
  v17 = 0;
  v22 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  v15 = (*(*(v22 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v23 = &v14 - v15;
  v25 = &v14 - v15;
  *v23 = 0;
  v16 = *(v4 + 20);
  v19 = sub_268F9A9C4();
  v5 = *(v19 - 8);
  v21 = *(v5 + 56);
  v20 = v5 + 56;
  v18 = 1;
  v21(&v23[v16], 1);
  v6 = v18;
  v7 = v19;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  *&v23[v22[6]] = v17;
  (v8)(&v10[v9[7]], v6, v6, v7);
  (v21)(&v23[v22[8]], v18, v18, v19);
  (v21)(&v23[v22[9]], v18, v18, v19);
  (v21)(&v23[v22[10]], v18, v18, v19);
  (v21)(&v23[v22[11]], v18, v18, v19);
  (v21)(&v23[v22[12]], v18, v18, v19);
  (v21)(&v23[v22[13]], v18, v18, v19);
  v11 = v23;
  v12 = v24;
  v23[v22[14]] = 2;
  return sub_268D8597C(v11, v12);
}

uint64_t sub_268D63C24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9A994();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268D63D3C()
{
  v1 = 0;
  sub_268D287E8(&v1);
  return 0;
}

uint64_t type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(uint64_t a1)
{
  v2 = qword_2802DC6B0;
  if (!qword_2802DC6B0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D63E2C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 24)));
  return sub_268D28588(v11);
}

uint64_t sub_268D63F08()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0) + 32));

  return v2;
}

uint64_t sub_268D63F40(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0) + 32)) = a1;
}

uint64_t sub_268D63FC4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268D640AC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D64194(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6427C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D64364(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6444C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268D644FC()
{
  v171 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v152 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v153 = v123 - v152;
  v154 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - v152, v6, v7, v8);
  v155 = v123 - v154;
  v156 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - v154, v10, v11, v12);
  v157 = v123 - v156;
  v158 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - v156, v14, v15, v16);
  v159 = v123 - v158;
  v160 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - v158, v18, v19, v20);
  v161 = v123 - v160;
  v162 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - v160, v22, v23, v24);
  v163 = v123 - v162;
  v164 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - v162, v26, v27, v28);
  v165 = v123 - v164;
  v171 = v0;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v168 = 11;
  v167 = sub_268F9B734();
  v169 = v29;
  v30 = sub_268F9AEF4();
  v31 = v169;
  *v169 = v30;
  v31[1] = v32;
  v170 = *v0;

  if (v170)
  {
    v150 = v170;
    v149 = v170;
    v33 = sub_268F9AA44();
    v34 = v169;
    v35 = v149;
    v169[5] = v33;
    v34[2] = v35;
  }

  else
  {
    v122 = v169;
    v169[2] = 0;
    v122[3] = 0;
    v122[4] = 0;
    v122[5] = 0;
  }

  v143 = 1;
  v36 = sub_268F9AEF4();
  v37 = v169;
  v38 = v151;
  v169[6] = v36;
  v37[7] = v39;
  LOBYTE(v38) = *(v38 + 8);
  v37[11] = MEMORY[0x277D839B0];
  *(v37 + 64) = v38;
  v140 = v37 + 14;
  v40 = sub_268F9AEF4();
  v41 = v169;
  v169[12] = v40;
  v41[13] = v42;
  v142 = 0;
  v141 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D2A1F0((v151 + *(v141 + 24)), v165);
  v144 = sub_268F9A9C4();
  v145 = *(v144 - 8);
  v146 = v144 - 8;
  v147 = *(v145 + 48);
  v148 = v145 + 48;
  if (v147(v165, v143) == 1)
  {
    sub_268D28588(v165);
    v121 = v169;
    v169[14] = 0;
    v121[15] = 0;
    v121[16] = 0;
    v121[17] = 0;
  }

  else
  {
    v43 = v140;
    v169[17] = v144;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v145 + 32))(boxed_opaque_existential_1, v165, v144);
  }

  v138 = 1;
  v45 = sub_268F9AEF4();
  v46 = v169;
  v47 = v141;
  v48 = v151;
  v169[18] = v45;
  v46[19] = v49;
  LOBYTE(v48) = *(v48 + *(v47 + 28));
  v46[23] = MEMORY[0x277D839B0];
  *(v46 + 160) = v48;
  v50 = sub_268F9AEF4();
  v51 = v169;
  v52 = v141;
  v53 = v151;
  v169[24] = v50;
  v51[25] = v54;
  v139 = *(v53 + *(v52 + 32));

  if (v139)
  {
    v137 = v139;
    v136 = v139;
    v55 = type metadata accessor for SettingsBinarySetting(0);
    v56 = v169;
    v57 = v136;
    v169[29] = v55;
    v56[26] = v57;
  }

  else
  {
    v120 = v169;
    v169[26] = 0;
    v120[27] = 0;
    v120[28] = 0;
    v120[29] = 0;
  }

  v134 = v169 + 32;
  v135 = 1;
  v58 = sub_268F9AEF4();
  v59 = v169;
  v60 = v141;
  v61 = v151;
  v63 = v62;
  v64 = v163;
  v169[30] = v58;
  v59[31] = v63;
  sub_268D2A1F0((v61 + *(v60 + 36)), v64);
  if ((v147)(v163, v135, v144) == 1)
  {
    sub_268D28588(v163);
    v119 = v169;
    v169[32] = 0;
    v119[33] = 0;
    v119[34] = 0;
    v119[35] = 0;
  }

  else
  {
    v65 = v134;
    v169[35] = v144;
    v66 = __swift_allocate_boxed_opaque_existential_1(v65);
    (*(v145 + 32))(v66, v163, v144);
  }

  v132 = v169 + 38;
  v133 = 1;
  v67 = sub_268F9AEF4();
  v68 = v169;
  v69 = v141;
  v70 = v151;
  v72 = v71;
  v73 = v161;
  v169[36] = v67;
  v68[37] = v72;
  sub_268D2A1F0((v70 + *(v69 + 40)), v73);
  if ((v147)(v161, v133, v144) == 1)
  {
    sub_268D28588(v161);
    v118 = v169;
    v169[38] = 0;
    v118[39] = 0;
    v118[40] = 0;
    v118[41] = 0;
  }

  else
  {
    v74 = v132;
    v169[41] = v144;
    v75 = __swift_allocate_boxed_opaque_existential_1(v74);
    (*(v145 + 32))(v75, v161, v144);
  }

  v130 = v169 + 44;
  v131 = 1;
  v76 = sub_268F9AEF4();
  v77 = v169;
  v78 = v141;
  v79 = v151;
  v81 = v80;
  v82 = v159;
  v169[42] = v76;
  v77[43] = v81;
  sub_268D2A1F0((v79 + *(v78 + 44)), v82);
  if ((v147)(v159, v131, v144) == 1)
  {
    sub_268D28588(v159);
    v117 = v169;
    v169[44] = 0;
    v117[45] = 0;
    v117[46] = 0;
    v117[47] = 0;
  }

  else
  {
    v83 = v130;
    v169[47] = v144;
    v84 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(v145 + 32))(v84, v159, v144);
  }

  v128 = v169 + 50;
  v129 = 1;
  v85 = sub_268F9AEF4();
  v86 = v169;
  v87 = v141;
  v88 = v151;
  v90 = v89;
  v91 = v157;
  v169[48] = v85;
  v86[49] = v90;
  sub_268D2A1F0((v88 + *(v87 + 48)), v91);
  if ((v147)(v157, v129, v144) == 1)
  {
    sub_268D28588(v157);
    v116 = v169;
    v169[50] = 0;
    v116[51] = 0;
    v116[52] = 0;
    v116[53] = 0;
  }

  else
  {
    v92 = v128;
    v169[53] = v144;
    v93 = __swift_allocate_boxed_opaque_existential_1(v92);
    (*(v145 + 32))(v93, v157, v144);
  }

  v126 = v169 + 56;
  v127 = 1;
  v94 = sub_268F9AEF4();
  v95 = v169;
  v96 = v141;
  v97 = v151;
  v99 = v98;
  v100 = v155;
  v169[54] = v94;
  v95[55] = v99;
  sub_268D2A1F0((v97 + *(v96 + 52)), v100);
  if ((v147)(v155, v127, v144) == 1)
  {
    sub_268D28588(v155);
    v115 = v169;
    v169[56] = 0;
    v115[57] = 0;
    v115[58] = 0;
    v115[59] = 0;
  }

  else
  {
    v101 = v126;
    v169[59] = v144;
    v102 = __swift_allocate_boxed_opaque_existential_1(v101);
    (*(v145 + 32))(v102, v155, v144);
  }

  v124 = v169 + 62;
  v125 = 1;
  v103 = sub_268F9AEF4();
  v104 = v169;
  v105 = v141;
  v106 = v151;
  v108 = v107;
  v109 = v153;
  v169[60] = v103;
  v104[61] = v108;
  sub_268D2A1F0((v106 + *(v105 + 56)), v109);
  if ((v147)(v153, v125, v144) == 1)
  {
    sub_268D28588(v153);
    v114 = v169;
    v169[62] = 0;
    v114[63] = 0;
    v114[64] = 0;
    v114[65] = 0;
  }

  else
  {
    v110 = v124;
    v169[65] = v144;
    v111 = __swift_allocate_boxed_opaque_existential_1(v110);
    (*(v145 + 32))(v111, v153, v144);
  }

  sub_268CD0F7C();
  v123[1] = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268D65024@<X0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v19 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  sub_268D84F40(a3, (a9 + v19[6]));
  *(a9 + v19[7]) = a4;
  *(a9 + v19[8]) = a5;
  sub_268D84F40(a6, (a9 + v19[9]));
  sub_268D84F40(a7, (a9 + v19[10]));
  sub_268D84F40(a8, (a9 + v19[11]));
  sub_268D84F40(a10, (a9 + v19[12]));
  sub_268D84F40(a11, (a9 + v19[13]));
  return sub_268D84F40(a12, (a9 + v19[14]));
}

uint64_t type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(uint64_t a1)
{
  v2 = qword_2802DC6C0;
  if (!qword_2802DC6C0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D65208(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D652F0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268D653A0()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0) + 40));

  return v2;
}

uint64_t sub_268D653D8(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0) + 40)) = a1;
}

uint64_t sub_268D6545C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D65544(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6562C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D65714(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268D657FC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 60)));
  return sub_268D28588(v11);
}

uint64_t sub_268D658E4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 64)));
  return sub_268D28588(v11);
}

uint64_t sub_268D659CC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 68)));
  return sub_268D28588(v11);
}

uint64_t sub_268D65AD4()
{
  v230 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v207 = *(*(v1 - 8) + 64);
  v208 = (v207 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v209 = v170 - v208;
  v210 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v208, v6, v7, v8);
  v211 = v170 - v210;
  v212 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v210, v10, v11, v12);
  v213 = v170 - v212;
  v214 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v212, v14, v15, v16);
  v215 = v170 - v214;
  v216 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v214, v18, v19, v20);
  v217 = v170 - v216;
  v218 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v216, v22, v23, v24);
  v219 = v170 - v218;
  v220 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v218, v26, v27, v28);
  v221 = v170 - v220;
  v222 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v220, v30, v31, v32);
  v223 = v170 - v222;
  v224 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v222, v34, v35, v36);
  v225 = v170 - v224;
  v230 = v0;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v227 = sub_268F9B734();
  v228 = v37;
  v38 = sub_268F9AEF4();
  v39 = v228;
  *v228 = v38;
  v39[1] = v40;
  v229 = *v0;

  if (v229)
  {
    v205 = v229;
    v204 = v229;
    v41 = sub_268F9A994();
    v42 = v228;
    v43 = v204;
    v228[5] = v41;
    v42[2] = v43;
  }

  else
  {
    v169 = v228;
    v228[2] = 0;
    v169[3] = 0;
    v169[4] = 0;
    v169[5] = 0;
  }

  v44 = sub_268F9AEF4();
  v45 = v228;
  v46 = v206;
  v228[6] = v44;
  v45[7] = v47;
  v203 = *(v46 + 8);

  if (v203)
  {
    v202 = v203;
    v201 = v203;
    v48 = sub_268F9AA44();
    v49 = v228;
    v50 = v201;
    v228[11] = v48;
    v49[8] = v50;
  }

  else
  {
    v168 = v228;
    v228[8] = 0;
    v168[9] = 0;
    v168[10] = 0;
    v168[11] = 0;
  }

  v195 = 1;
  v51 = sub_268F9AEF4();
  v52 = v228;
  v53 = v206;
  v228[12] = v51;
  v52[13] = v54;
  LOBYTE(v53) = *(v53 + 16);
  v191 = MEMORY[0x277D839B0];
  v52[17] = MEMORY[0x277D839B0];
  *(v52 + 112) = v53;
  v55 = sub_268F9AEF4();
  v56 = v191;
  v57 = v228;
  v58 = v206;
  v228[18] = v55;
  v57[19] = v59;
  LOBYTE(v58) = *(v58 + 17);
  v57[23] = v56;
  *(v57 + 160) = v58;
  v192 = v57 + 26;
  v60 = sub_268F9AEF4();
  v61 = v228;
  v228[24] = v60;
  v61[25] = v62;
  v194 = 0;
  v193 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D2A1F0((v206 + *(v193 + 32)), v225);
  v196 = sub_268F9A9C4();
  v197 = *(v196 - 8);
  v198 = v196 - 8;
  v199 = *(v197 + 48);
  v200 = v197 + 48;
  if (v199(v225, v195) == 1)
  {
    sub_268D28588(v225);
    v167 = v228;
    v228[26] = 0;
    v167[27] = 0;
    v167[28] = 0;
    v167[29] = 0;
  }

  else
  {
    v63 = v192;
    v228[29] = v196;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
    (*(v197 + 32))(boxed_opaque_existential_1, v225, v196);
  }

  v189 = v228 + 32;
  v190 = 1;
  v65 = sub_268F9AEF4();
  v66 = v228;
  v67 = v193;
  v68 = v206;
  v70 = v69;
  v71 = v223;
  v228[30] = v65;
  v66[31] = v70;
  sub_268D2A1F0((v68 + *(v67 + 36)), v71);
  if ((v199)(v223, v190, v196) == 1)
  {
    sub_268D28588(v223);
    v166 = v228;
    v228[32] = 0;
    v166[33] = 0;
    v166[34] = 0;
    v166[35] = 0;
  }

  else
  {
    v72 = v189;
    v228[35] = v196;
    v73 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(v197 + 32))(v73, v223, v196);
  }

  v74 = sub_268F9AEF4();
  v75 = v228;
  v76 = v193;
  v77 = v206;
  v228[36] = v74;
  v75[37] = v78;
  v188 = *(v77 + *(v76 + 40));

  if (v188)
  {
    v187 = v188;
    v186 = v188;
    v79 = type metadata accessor for SettingsMultiSetting(0);
    v80 = v228;
    v81 = v186;
    v228[41] = v79;
    v80[38] = v81;
  }

  else
  {
    v165 = v228;
    v228[38] = 0;
    v165[39] = 0;
    v165[40] = 0;
    v165[41] = 0;
  }

  v184 = v228 + 44;
  v185 = 1;
  v82 = sub_268F9AEF4();
  v83 = v228;
  v84 = v193;
  v85 = v206;
  v87 = v86;
  v88 = v221;
  v228[42] = v82;
  v83[43] = v87;
  sub_268D2A1F0((v85 + *(v84 + 44)), v88);
  if ((v199)(v221, v185, v196) == 1)
  {
    sub_268D28588(v221);
    v164 = v228;
    v228[44] = 0;
    v164[45] = 0;
    v164[46] = 0;
    v164[47] = 0;
  }

  else
  {
    v89 = v184;
    v228[47] = v196;
    v90 = __swift_allocate_boxed_opaque_existential_1(v89);
    (*(v197 + 32))(v90, v221, v196);
  }

  v182 = v228 + 50;
  v183 = 1;
  v91 = sub_268F9AEF4();
  v92 = v228;
  v93 = v193;
  v94 = v206;
  v96 = v95;
  v97 = v219;
  v228[48] = v91;
  v92[49] = v96;
  sub_268D2A1F0((v94 + *(v93 + 48)), v97);
  if ((v199)(v219, v183, v196) == 1)
  {
    sub_268D28588(v219);
    v163 = v228;
    v228[50] = 0;
    v163[51] = 0;
    v163[52] = 0;
    v163[53] = 0;
  }

  else
  {
    v98 = v182;
    v228[53] = v196;
    v99 = __swift_allocate_boxed_opaque_existential_1(v98);
    (*(v197 + 32))(v99, v219, v196);
  }

  v180 = v228 + 56;
  v181 = 1;
  v100 = sub_268F9AEF4();
  v101 = v228;
  v102 = v193;
  v103 = v206;
  v105 = v104;
  v106 = v217;
  v228[54] = v100;
  v101[55] = v105;
  sub_268D2A1F0((v103 + *(v102 + 52)), v106);
  if ((v199)(v217, v181, v196) == 1)
  {
    sub_268D28588(v217);
    v162 = v228;
    v228[56] = 0;
    v162[57] = 0;
    v162[58] = 0;
    v162[59] = 0;
  }

  else
  {
    v107 = v180;
    v228[59] = v196;
    v108 = __swift_allocate_boxed_opaque_existential_1(v107);
    (*(v197 + 32))(v108, v217, v196);
  }

  v178 = v228 + 62;
  v179 = 1;
  v109 = sub_268F9AEF4();
  v110 = v228;
  v111 = v193;
  v112 = v206;
  v114 = v113;
  v115 = v215;
  v228[60] = v109;
  v110[61] = v114;
  sub_268D2A1F0((v112 + *(v111 + 56)), v115);
  if ((v199)(v215, v179, v196) == 1)
  {
    sub_268D28588(v215);
    v161 = v228;
    v228[62] = 0;
    v161[63] = 0;
    v161[64] = 0;
    v161[65] = 0;
  }

  else
  {
    v116 = v178;
    v228[65] = v196;
    v117 = __swift_allocate_boxed_opaque_existential_1(v116);
    (*(v197 + 32))(v117, v215, v196);
  }

  v177 = 1;
  v118 = sub_268F9AEF4();
  v119 = v228;
  v120 = v193;
  v121 = v206;
  v228[66] = v118;
  v119[67] = v122;
  LOBYTE(v121) = *(v121 + *(v120 + 72));
  v175 = MEMORY[0x277D839B0];
  v119[71] = MEMORY[0x277D839B0];
  *(v119 + 544) = v121;
  v123 = sub_268F9AEF4();
  v124 = v175;
  v125 = v228;
  v126 = v193;
  v127 = v206;
  v228[72] = v123;
  v125[73] = v128;
  LOBYTE(v127) = *(v127 + *(v126 + 76));
  v125[77] = v124;
  *(v125 + 592) = v127;
  v176 = v125 + 80;
  v129 = sub_268F9AEF4();
  v130 = v228;
  v131 = v193;
  v132 = v206;
  v134 = v133;
  v135 = v213;
  v228[78] = v129;
  v130[79] = v134;
  sub_268D2A1F0((v132 + *(v131 + 60)), v135);
  if ((v199)(v213, v177, v196) == 1)
  {
    sub_268D28588(v213);
    v160 = v228;
    v228[80] = 0;
    v160[81] = 0;
    v160[82] = 0;
    v160[83] = 0;
  }

  else
  {
    v136 = v176;
    v228[83] = v196;
    v137 = __swift_allocate_boxed_opaque_existential_1(v136);
    (*(v197 + 32))(v137, v213, v196);
  }

  v173 = v228 + 86;
  v174 = 1;
  v138 = sub_268F9AEF4();
  v139 = v228;
  v140 = v193;
  v141 = v206;
  v143 = v142;
  v144 = v211;
  v228[84] = v138;
  v139[85] = v143;
  sub_268D2A1F0((v141 + *(v140 + 64)), v144);
  if ((v199)(v211, v174, v196) == 1)
  {
    sub_268D28588(v211);
    v159 = v228;
    v228[86] = 0;
    v159[87] = 0;
    v159[88] = 0;
    v159[89] = 0;
  }

  else
  {
    v145 = v173;
    v228[89] = v196;
    v146 = __swift_allocate_boxed_opaque_existential_1(v145);
    (*(v197 + 32))(v146, v211, v196);
  }

  v171 = v228 + 92;
  v172 = 1;
  v147 = sub_268F9AEF4();
  v148 = v228;
  v149 = v193;
  v150 = v206;
  v152 = v151;
  v153 = v209;
  v228[90] = v147;
  v148[91] = v152;
  sub_268D2A1F0((v150 + *(v149 + 68)), v153);
  if ((v199)(v209, v172, v196) == 1)
  {
    sub_268D28588(v209);
    v158 = v228;
    v228[92] = 0;
    v158[93] = 0;
    v158[94] = 0;
    v158[95] = 0;
  }

  else
  {
    v154 = v171;
    v228[95] = v196;
    v155 = __swift_allocate_boxed_opaque_existential_1(v154);
    (*(v197 + 32))(v155, v209, v196);
  }

  sub_268CD0F7C();
  v170[1] = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268D66A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, char a16, char a17)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  v23 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  sub_268D84F40(a5, (a9 + v23[8]));
  sub_268D84F40(a6, (a9 + v23[9]));
  *(a9 + v23[10]) = a7;
  sub_268D84F40(a8, (a9 + v23[11]));
  sub_268D84F40(a10, (a9 + v23[12]));
  sub_268D84F40(a11, (a9 + v23[13]));
  sub_268D84F40(a12, (a9 + v23[14]));
  sub_268D84F40(a13, (a9 + v23[15]));
  sub_268D84F40(a14, (a9 + v23[16]));
  sub_268D84F40(a15, (a9 + v23[17]));
  result = v23;
  *(a9 + v23[18]) = a16;
  *(a9 + v23[19]) = a17;
  return result;
}

uint64_t type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(uint64_t a1)
{
  v2 = qword_2802DC6D8;
  if (!qword_2802DC6D8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D66CE4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268D66D94()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0) + 24));

  return v2;
}

uint64_t sub_268D66DCC(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0) + 24)) = a1;
}

uint64_t sub_268D66E50(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268D66F38(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D67020(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268D67108(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D671F0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D672D8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D67388()
{
  v160 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v142 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v143 = v114 - v142;
  v144 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v142, v6, v7, v8);
  v145 = v114 - v144;
  v146 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v144, v10, v11, v12);
  v147 = v114 - v146;
  v148 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v146, v14, v15, v16);
  v149 = v114 - v148;
  v150 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v148, v18, v19, v20);
  v151 = v114 - v150;
  v152 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v150, v22, v23, v24);
  v153 = v114 - v152;
  v154 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v152, v26, v27, v28);
  v155 = v114 - v154;
  v160 = v0;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v157 = sub_268F9B734();
  v158 = v29;
  v30 = sub_268F9AEF4();
  v31 = v158;
  *v158 = v30;
  v31[1] = v32;
  v159 = *v0;

  if (v159)
  {
    v140 = v159;
    v139 = v159;
    v33 = sub_268F9AA44();
    v34 = v158;
    v35 = v139;
    v158[5] = v33;
    v34[2] = v35;
  }

  else
  {
    v113 = v158;
    v158[2] = 0;
    v113[3] = 0;
    v113[4] = 0;
    v113[5] = 0;
  }

  v130 = v158 + 8;
  v133 = 1;
  v36 = sub_268F9AEF4();
  v37 = v158;
  v158[6] = v36;
  v37[7] = v38;
  v132 = 0;
  v131 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  sub_268D2A1F0((v141 + *(v131 + 20)), v155);
  v134 = sub_268F9A9C4();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = *(v135 + 48);
  v138 = v135 + 48;
  if (v137(v155, v133) == 1)
  {
    sub_268D28588(v155);
    v112 = v158;
    v158[8] = 0;
    v112[9] = 0;
    v112[10] = 0;
    v112[11] = 0;
  }

  else
  {
    v39 = v130;
    v158[11] = v134;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v135 + 32))(boxed_opaque_existential_1, v155, v134);
  }

  v41 = sub_268F9AEF4();
  v42 = v158;
  v43 = v131;
  v44 = v141;
  v158[12] = v41;
  v42[13] = v45;
  v129 = *(v44 + *(v43 + 24));

  if (v129)
  {
    v128 = v129;
    v127 = v129;
    v46 = type metadata accessor for SettingsBinarySetting(0);
    v47 = v158;
    v48 = v127;
    v158[17] = v46;
    v47[14] = v48;
  }

  else
  {
    v111 = v158;
    v158[14] = 0;
    v111[15] = 0;
    v111[16] = 0;
    v111[17] = 0;
  }

  v125 = v158 + 20;
  v126 = 1;
  v49 = sub_268F9AEF4();
  v50 = v158;
  v51 = v131;
  v52 = v141;
  v54 = v53;
  v55 = v153;
  v158[18] = v49;
  v50[19] = v54;
  sub_268D2A1F0((v52 + *(v51 + 28)), v55);
  if ((v137)(v153, v126, v134) == 1)
  {
    sub_268D28588(v153);
    v110 = v158;
    v158[20] = 0;
    v110[21] = 0;
    v110[22] = 0;
    v110[23] = 0;
  }

  else
  {
    v56 = v125;
    v158[23] = v134;
    v57 = __swift_allocate_boxed_opaque_existential_1(v56);
    (*(v135 + 32))(v57, v153, v134);
  }

  v123 = v158 + 26;
  v124 = 1;
  v58 = sub_268F9AEF4();
  v59 = v158;
  v60 = v131;
  v61 = v141;
  v63 = v62;
  v64 = v151;
  v158[24] = v58;
  v59[25] = v63;
  sub_268D2A1F0((v61 + *(v60 + 32)), v64);
  if ((v137)(v151, v124, v134) == 1)
  {
    sub_268D28588(v151);
    v109 = v158;
    v158[26] = 0;
    v109[27] = 0;
    v109[28] = 0;
    v109[29] = 0;
  }

  else
  {
    v65 = v123;
    v158[29] = v134;
    v66 = __swift_allocate_boxed_opaque_existential_1(v65);
    (*(v135 + 32))(v66, v151, v134);
  }

  v121 = v158 + 32;
  v122 = 1;
  v67 = sub_268F9AEF4();
  v68 = v158;
  v69 = v131;
  v70 = v141;
  v72 = v71;
  v73 = v149;
  v158[30] = v67;
  v68[31] = v72;
  sub_268D2A1F0((v70 + *(v69 + 36)), v73);
  if ((v137)(v149, v122, v134) == 1)
  {
    sub_268D28588(v149);
    v108 = v158;
    v158[32] = 0;
    v108[33] = 0;
    v108[34] = 0;
    v108[35] = 0;
  }

  else
  {
    v74 = v121;
    v158[35] = v134;
    v75 = __swift_allocate_boxed_opaque_existential_1(v74);
    (*(v135 + 32))(v75, v149, v134);
  }

  v119 = v158 + 38;
  v120 = 1;
  v76 = sub_268F9AEF4();
  v77 = v158;
  v78 = v131;
  v79 = v141;
  v81 = v80;
  v82 = v147;
  v158[36] = v76;
  v77[37] = v81;
  sub_268D2A1F0((v79 + *(v78 + 40)), v82);
  if ((v137)(v147, v120, v134) == 1)
  {
    sub_268D28588(v147);
    v107 = v158;
    v158[38] = 0;
    v107[39] = 0;
    v107[40] = 0;
    v107[41] = 0;
  }

  else
  {
    v83 = v119;
    v158[41] = v134;
    v84 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(v135 + 32))(v84, v147, v134);
  }

  v117 = v158 + 44;
  v118 = 1;
  v85 = sub_268F9AEF4();
  v86 = v158;
  v87 = v131;
  v88 = v141;
  v90 = v89;
  v91 = v145;
  v158[42] = v85;
  v86[43] = v90;
  sub_268D2A1F0((v88 + *(v87 + 44)), v91);
  if ((v137)(v145, v118, v134) == 1)
  {
    sub_268D28588(v145);
    v106 = v158;
    v158[44] = 0;
    v106[45] = 0;
    v106[46] = 0;
    v106[47] = 0;
  }

  else
  {
    v92 = v117;
    v158[47] = v134;
    v93 = __swift_allocate_boxed_opaque_existential_1(v92);
    (*(v135 + 32))(v93, v145, v134);
  }

  v115 = v158 + 50;
  v116 = 1;
  v94 = sub_268F9AEF4();
  v95 = v158;
  v96 = v131;
  v97 = v141;
  v99 = v98;
  v100 = v143;
  v158[48] = v94;
  v95[49] = v99;
  sub_268D2A1F0((v97 + *(v96 + 48)), v100);
  if ((v137)(v143, v116, v134) == 1)
  {
    sub_268D28588(v143);
    v105 = v158;
    v158[50] = 0;
    v105[51] = 0;
    v105[52] = 0;
    v105[53] = 0;
  }

  else
  {
    v101 = v115;
    v158[53] = v134;
    v102 = __swift_allocate_boxed_opaque_existential_1(v101);
    (*(v135 + 32))(v102, v143, v134);
  }

  sub_268CD0F7C();
  v114[1] = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D67DF4@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v23 = 0;
  v15 = 0;
  v16 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(0);
  v13 = (*(*(v16 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v21 = &v12 - v13;
  v23 = &v12 - v13;
  *v21 = 0;
  v14 = *(v4 + 20);
  v18 = sub_268F9A9C4();
  v5 = *(v18 - 8);
  v20 = *(v5 + 56);
  v19 = v5 + 56;
  v17 = 1;
  v20(&v21[v14], 1);
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v20;
  v10 = v21;
  *&v21[v16[6]] = v15;
  (v9)(&v10[v6[7]], v7, v7, v8);
  (v20)(&v21[v16[8]], v17, v17, v18);
  (v20)(&v21[v16[9]], v17, v17, v18);
  (v20)(&v21[v16[10]], v17, v17, v18);
  (v20)(&v21[v16[11]], v17, v17, v18);
  (v20)(&v21[v16[12]], v17, v17, v18);
  return sub_268D85218(v21, v22);
}

uint64_t type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(uint64_t a1)
{
  v2 = qword_2802DC6E8;
  if (!qword_2802DC6E8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D680C8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68178()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0) + 24));

  return v2;
}

uint64_t sub_268D681B0(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0) + 24)) = a1;
}

uint64_t sub_268D68220(unsigned int a1)
{
  v2 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0);
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_268D68258()
{
  v61 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v55 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v56 = v40 - v55;
  v61 = v0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v58 = sub_268F9B734();
  v59 = v5;
  v6 = sub_268F9AEF4();
  v7 = v59;
  *v59 = v6;
  v7[1] = v8;
  v60 = *v0;

  if (v60)
  {
    v53 = v60;
    v52 = v60;
    v9 = sub_268F9AA44();
    v10 = v59;
    v11 = v52;
    v59[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v39 = v59;
    v59[2] = 0;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v59;
  v59[6] = v12;
  v13[7] = v14;
  v50 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0);
  v51 = *(v54 + *(v50 + 24));

  if (v51)
  {
    v49 = v51;
    v48 = v51;
    v15 = type metadata accessor for SettingsMultiSetting(0);
    v16 = v59;
    v17 = v48;
    v59[11] = v15;
    v16[8] = v17;
  }

  else
  {
    v38 = v59;
    v59[8] = 0;
    v38[9] = 0;
    v38[10] = 0;
    v38[11] = 0;
  }

  v43 = v59 + 14;
  v44 = 1;
  v18 = sub_268F9AEF4();
  v19 = v59;
  v20 = v50;
  v21 = v54;
  v23 = v22;
  v24 = v56;
  v59[12] = v18;
  v19[13] = v23;
  sub_268D2A1F0((v21 + *(v20 + 20)), v24);
  v45 = sub_268F9A9C4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  if ((*(v46 + 48))(v56, v44) == 1)
  {
    sub_268D28588(v56);
    v37 = v59;
    v59[14] = 0;
    v37[15] = 0;
    v37[16] = 0;
    v37[17] = 0;
  }

  else
  {
    v25 = v43;
    v59[17] = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    (*(v46 + 32))(boxed_opaque_existential_1, v56, v45);
  }

  v27 = sub_268F9AEF4();
  v28 = v59;
  v29 = v50;
  v30 = v54;
  v59[18] = v27;
  v28[19] = v31;
  v42 = *(v30 + *(v29 + 28));
  if (v42 == 2)
  {
    v36 = v59;
    v59[20] = 0;
    v36[21] = 0;
    v36[22] = 0;
    v36[23] = 0;
  }

  else
  {
    v41 = v42;
    v32 = v59;
    v33 = v42;
    v59[23] = MEMORY[0x277D839B0];
    *(v32 + 160) = v33 & 1;
  }

  sub_268CD0F7C();
  v40[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D68610@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = 0;
  v13 = 0;
  v14 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v15 = &v10 - v11;
  v17 = &v10 - v11;
  *v15 = 0;
  v12 = *(v4 + 20);
  v5 = sub_268F9A9C4();
  (*(*(v5 - 8) + 56))(&v15[v12], 1);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  *&v15[*(v14 + 24)] = v13;
  v7[*(v6 + 28)] = 2;
  return sub_268D85068(v7, v8);
}

uint64_t type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(uint64_t a1)
{
  v2 = qword_2802DC6F8;
  if (!qword_2802DC6F8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D687CC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D688B4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68964()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0) + 40));

  return v2;
}

uint64_t sub_268D6899C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0) + 40)) = a1;
}

uint64_t sub_268D68A20(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68B08(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68BF0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68CD8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68DC0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 60)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68EA8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 64)));
  return sub_268D28588(v11);
}

uint64_t sub_268D68FE8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 76)));
  return sub_268D28588(v11);
}

uint64_t sub_268D69098()
{
  v230 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v207 = *(*(v1 - 8) + 64);
  v208 = (v207 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v209 = v170 - v208;
  v210 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v208, v6, v7, v8);
  v211 = v170 - v210;
  v212 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v210, v10, v11, v12);
  v213 = v170 - v212;
  v214 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v212, v14, v15, v16);
  v215 = v170 - v214;
  v216 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v214, v18, v19, v20);
  v217 = v170 - v216;
  v218 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v216, v22, v23, v24);
  v219 = v170 - v218;
  v220 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v218, v26, v27, v28);
  v221 = v170 - v220;
  v222 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v220, v30, v31, v32);
  v223 = v170 - v222;
  v224 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170 - v222, v34, v35, v36);
  v225 = v170 - v224;
  v230 = v0;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v227 = sub_268F9B734();
  v228 = v37;
  v38 = sub_268F9AEF4();
  v39 = v228;
  *v228 = v38;
  v39[1] = v40;
  v229 = *v0;

  if (v229)
  {
    v205 = v229;
    v204 = v229;
    v41 = sub_268F9A994();
    v42 = v228;
    v43 = v204;
    v228[5] = v41;
    v42[2] = v43;
  }

  else
  {
    v169 = v228;
    v228[2] = 0;
    v169[3] = 0;
    v169[4] = 0;
    v169[5] = 0;
  }

  v44 = sub_268F9AEF4();
  v45 = v228;
  v46 = v206;
  v228[6] = v44;
  v45[7] = v47;
  v203 = *(v46 + 8);

  if (v203)
  {
    v202 = v203;
    v201 = v203;
    v48 = sub_268F9AA44();
    v49 = v228;
    v50 = v201;
    v228[11] = v48;
    v49[8] = v50;
  }

  else
  {
    v168 = v228;
    v228[8] = 0;
    v168[9] = 0;
    v168[10] = 0;
    v168[11] = 0;
  }

  v195 = 1;
  v51 = sub_268F9AEF4();
  v52 = v228;
  v53 = v206;
  v228[12] = v51;
  v52[13] = v54;
  LOBYTE(v53) = *(v53 + 16);
  v191 = MEMORY[0x277D839B0];
  v52[17] = MEMORY[0x277D839B0];
  *(v52 + 112) = v53;
  v55 = sub_268F9AEF4();
  v56 = v191;
  v57 = v228;
  v58 = v206;
  v228[18] = v55;
  v57[19] = v59;
  LOBYTE(v58) = *(v58 + 17);
  v57[23] = v56;
  *(v57 + 160) = v58;
  v192 = v57 + 26;
  v60 = sub_268F9AEF4();
  v61 = v228;
  v228[24] = v60;
  v61[25] = v62;
  v194 = 0;
  v193 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D2A1F0((v206 + *(v193 + 32)), v225);
  v196 = sub_268F9A9C4();
  v197 = *(v196 - 8);
  v198 = v196 - 8;
  v199 = *(v197 + 48);
  v200 = v197 + 48;
  if (v199(v225, v195) == 1)
  {
    sub_268D28588(v225);
    v167 = v228;
    v228[26] = 0;
    v167[27] = 0;
    v167[28] = 0;
    v167[29] = 0;
  }

  else
  {
    v63 = v192;
    v228[29] = v196;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
    (*(v197 + 32))(boxed_opaque_existential_1, v225, v196);
  }

  v189 = v228 + 32;
  v190 = 1;
  v65 = sub_268F9AEF4();
  v66 = v228;
  v67 = v193;
  v68 = v206;
  v70 = v69;
  v71 = v223;
  v228[30] = v65;
  v66[31] = v70;
  sub_268D2A1F0((v68 + *(v67 + 36)), v71);
  if ((v199)(v223, v190, v196) == 1)
  {
    sub_268D28588(v223);
    v166 = v228;
    v228[32] = 0;
    v166[33] = 0;
    v166[34] = 0;
    v166[35] = 0;
  }

  else
  {
    v72 = v189;
    v228[35] = v196;
    v73 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(v197 + 32))(v73, v223, v196);
  }

  v74 = sub_268F9AEF4();
  v75 = v228;
  v76 = v193;
  v77 = v206;
  v228[36] = v74;
  v75[37] = v78;
  v188 = *(v77 + *(v76 + 40));

  if (v188)
  {
    v187 = v188;
    v186 = v188;
    v79 = type metadata accessor for SettingsMultiSetting(0);
    v80 = v228;
    v81 = v186;
    v228[41] = v79;
    v80[38] = v81;
  }

  else
  {
    v165 = v228;
    v228[38] = 0;
    v165[39] = 0;
    v165[40] = 0;
    v165[41] = 0;
  }

  v184 = v228 + 44;
  v185 = 1;
  v82 = sub_268F9AEF4();
  v83 = v228;
  v84 = v193;
  v85 = v206;
  v87 = v86;
  v88 = v221;
  v228[42] = v82;
  v83[43] = v87;
  sub_268D2A1F0((v85 + *(v84 + 44)), v88);
  if ((v199)(v221, v185, v196) == 1)
  {
    sub_268D28588(v221);
    v164 = v228;
    v228[44] = 0;
    v164[45] = 0;
    v164[46] = 0;
    v164[47] = 0;
  }

  else
  {
    v89 = v184;
    v228[47] = v196;
    v90 = __swift_allocate_boxed_opaque_existential_1(v89);
    (*(v197 + 32))(v90, v221, v196);
  }

  v182 = v228 + 50;
  v183 = 1;
  v91 = sub_268F9AEF4();
  v92 = v228;
  v93 = v193;
  v94 = v206;
  v96 = v95;
  v97 = v219;
  v228[48] = v91;
  v92[49] = v96;
  sub_268D2A1F0((v94 + *(v93 + 48)), v97);
  if ((v199)(v219, v183, v196) == 1)
  {
    sub_268D28588(v219);
    v163 = v228;
    v228[50] = 0;
    v163[51] = 0;
    v163[52] = 0;
    v163[53] = 0;
  }

  else
  {
    v98 = v182;
    v228[53] = v196;
    v99 = __swift_allocate_boxed_opaque_existential_1(v98);
    (*(v197 + 32))(v99, v219, v196);
  }

  v180 = v228 + 56;
  v181 = 1;
  v100 = sub_268F9AEF4();
  v101 = v228;
  v102 = v193;
  v103 = v206;
  v105 = v104;
  v106 = v217;
  v228[54] = v100;
  v101[55] = v105;
  sub_268D2A1F0((v103 + *(v102 + 52)), v106);
  if ((v199)(v217, v181, v196) == 1)
  {
    sub_268D28588(v217);
    v162 = v228;
    v228[56] = 0;
    v162[57] = 0;
    v162[58] = 0;
    v162[59] = 0;
  }

  else
  {
    v107 = v180;
    v228[59] = v196;
    v108 = __swift_allocate_boxed_opaque_existential_1(v107);
    (*(v197 + 32))(v108, v217, v196);
  }

  v179 = 1;
  v109 = sub_268F9AEF4();
  v110 = v228;
  v111 = v193;
  v112 = v206;
  v228[60] = v109;
  v110[61] = v113;
  LOBYTE(v112) = *(v112 + *(v111 + 68));
  v177 = MEMORY[0x277D839B0];
  v110[65] = MEMORY[0x277D839B0];
  *(v110 + 496) = v112;
  v114 = sub_268F9AEF4();
  v115 = v177;
  v116 = v228;
  v117 = v193;
  v118 = v206;
  v228[66] = v114;
  v116[67] = v119;
  LOBYTE(v118) = *(v118 + *(v117 + 72));
  v116[71] = v115;
  *(v116 + 544) = v118;
  v178 = v116 + 74;
  v120 = sub_268F9AEF4();
  v121 = v228;
  v122 = v193;
  v123 = v206;
  v125 = v124;
  v126 = v215;
  v228[72] = v120;
  v121[73] = v125;
  sub_268D2A1F0((v123 + *(v122 + 56)), v126);
  if ((v199)(v215, v179, v196) == 1)
  {
    sub_268D28588(v215);
    v161 = v228;
    v228[74] = 0;
    v161[75] = 0;
    v161[76] = 0;
    v161[77] = 0;
  }

  else
  {
    v127 = v178;
    v228[77] = v196;
    v128 = __swift_allocate_boxed_opaque_existential_1(v127);
    (*(v197 + 32))(v128, v215, v196);
  }

  v175 = v228 + 80;
  v176 = 1;
  v129 = sub_268F9AEF4();
  v130 = v228;
  v131 = v193;
  v132 = v206;
  v134 = v133;
  v135 = v213;
  v228[78] = v129;
  v130[79] = v134;
  sub_268D2A1F0((v132 + *(v131 + 60)), v135);
  if ((v199)(v213, v176, v196) == 1)
  {
    sub_268D28588(v213);
    v160 = v228;
    v228[80] = 0;
    v160[81] = 0;
    v160[82] = 0;
    v160[83] = 0;
  }

  else
  {
    v136 = v175;
    v228[83] = v196;
    v137 = __swift_allocate_boxed_opaque_existential_1(v136);
    (*(v197 + 32))(v137, v213, v196);
  }

  v173 = v228 + 86;
  v174 = 1;
  v138 = sub_268F9AEF4();
  v139 = v228;
  v140 = v193;
  v141 = v206;
  v143 = v142;
  v144 = v211;
  v228[84] = v138;
  v139[85] = v143;
  sub_268D2A1F0((v141 + *(v140 + 64)), v144);
  if ((v199)(v211, v174, v196) == 1)
  {
    sub_268D28588(v211);
    v159 = v228;
    v228[86] = 0;
    v159[87] = 0;
    v159[88] = 0;
    v159[89] = 0;
  }

  else
  {
    v145 = v173;
    v228[89] = v196;
    v146 = __swift_allocate_boxed_opaque_existential_1(v145);
    (*(v197 + 32))(v146, v211, v196);
  }

  v171 = v228 + 92;
  v172 = 1;
  v147 = sub_268F9AEF4();
  v148 = v228;
  v149 = v193;
  v150 = v206;
  v152 = v151;
  v153 = v209;
  v228[90] = v147;
  v148[91] = v152;
  sub_268D2A1F0((v150 + *(v149 + 76)), v153);
  if ((v199)(v209, v172, v196) == 1)
  {
    sub_268D28588(v209);
    v158 = v228;
    v228[92] = 0;
    v158[93] = 0;
    v158[94] = 0;
    v158[95] = 0;
  }

  else
  {
    v154 = v171;
    v228[95] = v196;
    v155 = __swift_allocate_boxed_opaque_existential_1(v154);
    (*(v197 + 32))(v155, v209, v196);
  }

  sub_268CD0F7C();
  v170[1] = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268D6A060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, char a15, char a16, const void *a17)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  v22 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D84F40(a5, (a9 + v22[8]));
  sub_268D84F40(a6, (a9 + v22[9]));
  *(a9 + v22[10]) = a7;
  sub_268D84F40(a8, (a9 + v22[11]));
  sub_268D84F40(a10, (a9 + v22[12]));
  sub_268D84F40(a11, (a9 + v22[13]));
  sub_268D84F40(a12, (a9 + v22[14]));
  sub_268D84F40(a13, (a9 + v22[15]));
  sub_268D84F40(a14, (a9 + v22[16]));
  *(a9 + v22[17]) = a15;
  *(a9 + v22[18]) = a16;
  return sub_268D84F40(a17, (a9 + v22[19]));
}

uint64_t type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(uint64_t a1)
{
  v2 = qword_2802DC708;
  if (!qword_2802DC708)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D6A2A4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6A354()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0) + 24));

  return v2;
}

uint64_t sub_268D6A38C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0) + 24)) = a1;
}

uint64_t sub_268D6A410(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6A4EC()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0) + 36));

  return v2;
}

uint64_t sub_268D6A524(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0) + 36)) = a1;
}

uint64_t sub_268D6A5A8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6A690(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6A778(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6A860(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6A948(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6AA30(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 60)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6AB18(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 64)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6ABC8()
{
  v215 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v192 = *(*(v1 - 8) + 64);
  v193 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v194 = &v156 - v193;
  v195 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v193, v6, v7, v8);
  v196 = &v156 - v195;
  v197 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v195, v10, v11, v12);
  v198 = &v156 - v197;
  v199 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v197, v14, v15, v16);
  v200 = &v156 - v199;
  v201 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v199, v18, v19, v20);
  v202 = &v156 - v201;
  v203 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v201, v22, v23, v24);
  v204 = &v156 - v203;
  v205 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v203, v26, v27, v28);
  v206 = &v156 - v205;
  v207 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v205, v30, v31, v32);
  v208 = &v156 - v207;
  v209 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v156 - v207, v34, v35, v36);
  v210 = &v156 - v209;
  v215 = v0;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v212 = sub_268F9B734();
  v213 = v37;
  v38 = sub_268F9AEF4();
  v39 = v213;
  *v213 = v38;
  v39[1] = v40;
  v214 = *v0;

  if (v214)
  {
    v190 = v214;
    v189 = v214;
    v41 = sub_268F9A994();
    v42 = v213;
    v43 = v189;
    v213[5] = v41;
    v42[2] = v43;
  }

  else
  {
    v155 = v213;
    v213[2] = 0;
    v155[3] = 0;
    v155[4] = 0;
    v155[5] = 0;
  }

  v180 = v213 + 8;
  v183 = 1;
  v44 = sub_268F9AEF4();
  v45 = v213;
  v213[6] = v44;
  v45[7] = v46;
  v182 = 0;
  v181 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D2A1F0((v191 + *(v181 + 20)), v210);
  v184 = sub_268F9A9C4();
  v185 = *(v184 - 8);
  v186 = v184 - 8;
  v187 = *(v185 + 48);
  v188 = v185 + 48;
  if (v187(v210, v183) == 1)
  {
    sub_268D28588(v210);
    v154 = v213;
    v213[8] = 0;
    v154[9] = 0;
    v154[10] = 0;
    v154[11] = 0;
  }

  else
  {
    v47 = v180;
    v213[11] = v184;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    (*(v185 + 32))(boxed_opaque_existential_1, v210, v184);
  }

  v49 = sub_268F9AEF4();
  v50 = v213;
  v51 = v181;
  v52 = v191;
  v213[12] = v49;
  v50[13] = v53;
  v179 = *(v52 + *(v51 + 24));

  if (v179)
  {
    v178 = v179;
    v177 = v179;
    v54 = sub_268F9AA44();
    v55 = v213;
    v56 = v177;
    v213[17] = v54;
    v55[14] = v56;
  }

  else
  {
    v153 = v213;
    v213[14] = 0;
    v153[15] = 0;
    v153[16] = 0;
    v153[17] = 0;
  }

  v175 = v213 + 20;
  v176 = 1;
  v57 = sub_268F9AEF4();
  v58 = v213;
  v59 = v181;
  v60 = v191;
  v62 = v61;
  v63 = v208;
  v213[18] = v57;
  v58[19] = v62;
  sub_268D2A1F0((v60 + *(v59 + 28)), v63);
  if ((v187)(v208, v176, v184) == 1)
  {
    sub_268D28588(v208);
    v152 = v213;
    v213[20] = 0;
    v152[21] = 0;
    v152[22] = 0;
    v152[23] = 0;
  }

  else
  {
    v64 = v175;
    v213[23] = v184;
    v65 = __swift_allocate_boxed_opaque_existential_1(v64);
    (*(v185 + 32))(v65, v208, v184);
  }

  v173 = 1;
  v66 = sub_268F9AEF4();
  v67 = v213;
  v68 = v181;
  v69 = v191;
  v213[24] = v66;
  v67[25] = v70;
  LOBYTE(v69) = *(v69 + *(v68 + 32));
  v67[29] = MEMORY[0x277D839B0];
  *(v67 + 208) = v69;
  v71 = sub_268F9AEF4();
  v72 = v213;
  v73 = v181;
  v74 = v191;
  v213[30] = v71;
  v72[31] = v75;
  v174 = *(v74 + *(v73 + 36));

  if (v174)
  {
    v172 = v174;
    v171 = v174;
    v76 = type metadata accessor for SettingsBinarySetting(0);
    v77 = v213;
    v78 = v171;
    v213[35] = v76;
    v77[32] = v78;
  }

  else
  {
    v151 = v213;
    v213[32] = 0;
    v151[33] = 0;
    v151[34] = 0;
    v151[35] = 0;
  }

  v169 = v213 + 38;
  v170 = 1;
  v79 = sub_268F9AEF4();
  v80 = v213;
  v81 = v181;
  v82 = v191;
  v84 = v83;
  v85 = v206;
  v213[36] = v79;
  v80[37] = v84;
  sub_268D2A1F0((v82 + *(v81 + 40)), v85);
  if ((v187)(v206, v170, v184) == 1)
  {
    sub_268D28588(v206);
    v150 = v213;
    v213[38] = 0;
    v150[39] = 0;
    v150[40] = 0;
    v150[41] = 0;
  }

  else
  {
    v86 = v169;
    v213[41] = v184;
    v87 = __swift_allocate_boxed_opaque_existential_1(v86);
    (*(v185 + 32))(v87, v206, v184);
  }

  v167 = v213 + 44;
  v168 = 1;
  v88 = sub_268F9AEF4();
  v89 = v213;
  v90 = v181;
  v91 = v191;
  v93 = v92;
  v94 = v204;
  v213[42] = v88;
  v89[43] = v93;
  sub_268D2A1F0((v91 + *(v90 + 44)), v94);
  if ((v187)(v204, v168, v184) == 1)
  {
    sub_268D28588(v204);
    v149 = v213;
    v213[44] = 0;
    v149[45] = 0;
    v149[46] = 0;
    v149[47] = 0;
  }

  else
  {
    v95 = v167;
    v213[47] = v184;
    v96 = __swift_allocate_boxed_opaque_existential_1(v95);
    (*(v185 + 32))(v96, v204, v184);
  }

  v165 = v213 + 50;
  v166 = 1;
  v97 = sub_268F9AEF4();
  v98 = v213;
  v99 = v181;
  v100 = v191;
  v102 = v101;
  v103 = v202;
  v213[48] = v97;
  v98[49] = v102;
  sub_268D2A1F0((v100 + *(v99 + 48)), v103);
  if ((v187)(v202, v166, v184) == 1)
  {
    sub_268D28588(v202);
    v148 = v213;
    v213[50] = 0;
    v148[51] = 0;
    v148[52] = 0;
    v148[53] = 0;
  }

  else
  {
    v104 = v165;
    v213[53] = v184;
    v105 = __swift_allocate_boxed_opaque_existential_1(v104);
    (*(v185 + 32))(v105, v202, v184);
  }

  v163 = v213 + 56;
  v164 = 1;
  v106 = sub_268F9AEF4();
  v107 = v213;
  v108 = v181;
  v109 = v191;
  v111 = v110;
  v112 = v200;
  v213[54] = v106;
  v107[55] = v111;
  sub_268D2A1F0((v109 + *(v108 + 52)), v112);
  if ((v187)(v200, v164, v184) == 1)
  {
    sub_268D28588(v200);
    v147 = v213;
    v213[56] = 0;
    v147[57] = 0;
    v147[58] = 0;
    v147[59] = 0;
  }

  else
  {
    v113 = v163;
    v213[59] = v184;
    v114 = __swift_allocate_boxed_opaque_existential_1(v113);
    (*(v185 + 32))(v114, v200, v184);
  }

  v161 = v213 + 62;
  v162 = 1;
  v115 = sub_268F9AEF4();
  v116 = v213;
  v117 = v181;
  v118 = v191;
  v120 = v119;
  v121 = v198;
  v213[60] = v115;
  v116[61] = v120;
  sub_268D2A1F0((v118 + *(v117 + 56)), v121);
  if ((v187)(v198, v162, v184) == 1)
  {
    sub_268D28588(v198);
    v146 = v213;
    v213[62] = 0;
    v146[63] = 0;
    v146[64] = 0;
    v146[65] = 0;
  }

  else
  {
    v122 = v161;
    v213[65] = v184;
    v123 = __swift_allocate_boxed_opaque_existential_1(v122);
    (*(v185 + 32))(v123, v198, v184);
  }

  v159 = v213 + 68;
  v160 = 1;
  v124 = sub_268F9AEF4();
  v125 = v213;
  v126 = v181;
  v127 = v191;
  v129 = v128;
  v130 = v196;
  v213[66] = v124;
  v125[67] = v129;
  sub_268D2A1F0((v127 + *(v126 + 60)), v130);
  if ((v187)(v196, v160, v184) == 1)
  {
    sub_268D28588(v196);
    v145 = v213;
    v213[68] = 0;
    v145[69] = 0;
    v145[70] = 0;
    v145[71] = 0;
  }

  else
  {
    v131 = v159;
    v213[71] = v184;
    v132 = __swift_allocate_boxed_opaque_existential_1(v131);
    (*(v185 + 32))(v132, v196, v184);
  }

  v157 = v213 + 74;
  v158 = 1;
  v133 = sub_268F9AEF4();
  v134 = v213;
  v135 = v181;
  v136 = v191;
  v138 = v137;
  v139 = v194;
  v213[72] = v133;
  v134[73] = v138;
  sub_268D2A1F0((v136 + *(v135 + 64)), v139);
  if ((v187)(v194, v158, v184) == 1)
  {
    sub_268D28588(v194);
    v144 = v213;
    v213[74] = 0;
    v144[75] = 0;
    v144[76] = 0;
    v144[77] = 0;
  }

  else
  {
    v140 = v157;
    v213[77] = v184;
    v141 = __swift_allocate_boxed_opaque_existential_1(v140);
    (*(v185 + 32))(v141, v194, v184);
  }

  sub_268CD0F7C();
  v156 = v142;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268D6BA6C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, void *a9@<X8>, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  *a9 = a1;
  v22 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(0);
  sub_268D84F40(a2, a9 + v22[5]);
  *(a9 + v22[6]) = a3;
  sub_268D84F40(a4, a9 + v22[7]);
  *(a9 + v22[8]) = a5;
  *(a9 + v22[9]) = a6;
  sub_268D84F40(a7, a9 + v22[10]);
  sub_268D84F40(a8, a9 + v22[11]);
  sub_268D84F40(a10, a9 + v22[12]);
  sub_268D84F40(a11, a9 + v22[13]);
  sub_268D84F40(a12, a9 + v22[14]);
  sub_268D84F40(a13, a9 + v22[15]);
  return sub_268D84F40(a14, a9 + v22[16]);
}

uint64_t sub_268D6BBE4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsMultiSetting(0);
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(uint64_t a1)
{
  v2 = qword_2802DC718;
  if (!qword_2802DC718)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D6BDA8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6BE90(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6BF40()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0) + 36));

  return v2;
}

uint64_t sub_268D6BF78(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0) + 36)) = a1;
}

uint64_t sub_268D6BFFC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6C0E4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6C1CC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6C2B4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6C39C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6C484(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 60)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6C56C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 64)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6C674()
{
  v224 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v201 = *(*(v1 - 8) + 64);
  v202 = (v201 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v203 = &v165 - v202;
  v204 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v202, v6, v7, v8);
  v205 = &v165 - v204;
  v206 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v204, v10, v11, v12);
  v207 = &v165 - v206;
  v208 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v206, v14, v15, v16);
  v209 = &v165 - v208;
  v210 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v208, v18, v19, v20);
  v211 = &v165 - v210;
  v212 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v210, v22, v23, v24);
  v213 = &v165 - v212;
  v214 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v212, v26, v27, v28);
  v215 = &v165 - v214;
  v216 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v214, v30, v31, v32);
  v217 = &v165 - v216;
  v218 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v165 - v216, v34, v35, v36);
  v219 = &v165 - v218;
  v224 = v0;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v221 = sub_268F9B734();
  v222 = v37;
  v38 = sub_268F9AEF4();
  v39 = v222;
  *v222 = v38;
  v39[1] = v40;
  v223 = *v0;

  if (v223)
  {
    v199 = v223;
    v198 = v223;
    v41 = sub_268F9A994();
    v42 = v222;
    v43 = v198;
    v222[5] = v41;
    v42[2] = v43;
  }

  else
  {
    v164 = v222;
    v222[2] = 0;
    v164[3] = 0;
    v164[4] = 0;
    v164[5] = 0;
  }

  v44 = sub_268F9AEF4();
  v45 = v222;
  v46 = v200;
  v222[6] = v44;
  v45[7] = v47;
  v197 = *(v46 + 8);

  if (v197)
  {
    v196 = v197;
    v195 = v197;
    v48 = sub_268F9AA44();
    v49 = v222;
    v50 = v195;
    v222[11] = v48;
    v49[8] = v50;
  }

  else
  {
    v163 = v222;
    v222[8] = 0;
    v163[9] = 0;
    v163[10] = 0;
    v163[11] = 0;
  }

  v189 = 1;
  v51 = sub_268F9AEF4();
  v52 = v222;
  v53 = v200;
  v222[12] = v51;
  v52[13] = v54;
  LOBYTE(v53) = *(v53 + 16);
  v52[17] = MEMORY[0x277D839B0];
  *(v52 + 112) = v53;
  v186 = v52 + 20;
  v55 = sub_268F9AEF4();
  v56 = v222;
  v222[18] = v55;
  v56[19] = v57;
  v188 = 0;
  v187 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D2A1F0((v200 + *(v187 + 28)), v219);
  v190 = sub_268F9A9C4();
  v191 = *(v190 - 8);
  v192 = v190 - 8;
  v193 = *(v191 + 48);
  v194 = v191 + 48;
  if (v193(v219, v189) == 1)
  {
    sub_268D28588(v219);
    v162 = v222;
    v222[20] = 0;
    v162[21] = 0;
    v162[22] = 0;
    v162[23] = 0;
  }

  else
  {
    v58 = v186;
    v222[23] = v190;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
    (*(v191 + 32))(boxed_opaque_existential_1, v219, v190);
  }

  v184 = v222 + 26;
  v185 = 1;
  v60 = sub_268F9AEF4();
  v61 = v222;
  v62 = v187;
  v63 = v200;
  v65 = v64;
  v66 = v217;
  v222[24] = v60;
  v61[25] = v65;
  sub_268D2A1F0((v63 + *(v62 + 32)), v66);
  if ((v193)(v217, v185, v190) == 1)
  {
    sub_268D28588(v217);
    v161 = v222;
    v222[26] = 0;
    v161[27] = 0;
    v161[28] = 0;
    v161[29] = 0;
  }

  else
  {
    v67 = v184;
    v222[29] = v190;
    v68 = __swift_allocate_boxed_opaque_existential_1(v67);
    (*(v191 + 32))(v68, v217, v190);
  }

  v69 = sub_268F9AEF4();
  v70 = v222;
  v71 = v187;
  v72 = v200;
  v222[30] = v69;
  v70[31] = v73;
  v183 = *(v72 + *(v71 + 36));

  if (v183)
  {
    v182 = v183;
    v181 = v183;
    v74 = type metadata accessor for SettingsBinarySetting(0);
    v75 = v222;
    v76 = v181;
    v222[35] = v74;
    v75[32] = v76;
  }

  else
  {
    v160 = v222;
    v222[32] = 0;
    v160[33] = 0;
    v160[34] = 0;
    v160[35] = 0;
  }

  v179 = v222 + 38;
  v180 = 1;
  v77 = sub_268F9AEF4();
  v78 = v222;
  v79 = v187;
  v80 = v200;
  v82 = v81;
  v83 = v215;
  v222[36] = v77;
  v78[37] = v82;
  sub_268D2A1F0((v80 + *(v79 + 40)), v83);
  if ((v193)(v215, v180, v190) == 1)
  {
    sub_268D28588(v215);
    v159 = v222;
    v222[38] = 0;
    v159[39] = 0;
    v159[40] = 0;
    v159[41] = 0;
  }

  else
  {
    v84 = v179;
    v222[41] = v190;
    v85 = __swift_allocate_boxed_opaque_existential_1(v84);
    (*(v191 + 32))(v85, v215, v190);
  }

  v177 = v222 + 44;
  v178 = 1;
  v86 = sub_268F9AEF4();
  v87 = v222;
  v88 = v187;
  v89 = v200;
  v91 = v90;
  v92 = v213;
  v222[42] = v86;
  v87[43] = v91;
  sub_268D2A1F0((v89 + *(v88 + 44)), v92);
  if ((v193)(v213, v178, v190) == 1)
  {
    sub_268D28588(v213);
    v158 = v222;
    v222[44] = 0;
    v158[45] = 0;
    v158[46] = 0;
    v158[47] = 0;
  }

  else
  {
    v93 = v177;
    v222[47] = v190;
    v94 = __swift_allocate_boxed_opaque_existential_1(v93);
    (*(v191 + 32))(v94, v213, v190);
  }

  v175 = v222 + 50;
  v176 = 1;
  v95 = sub_268F9AEF4();
  v96 = v222;
  v97 = v187;
  v98 = v200;
  v100 = v99;
  v101 = v211;
  v222[48] = v95;
  v96[49] = v100;
  sub_268D2A1F0((v98 + *(v97 + 48)), v101);
  if ((v193)(v211, v176, v190) == 1)
  {
    sub_268D28588(v211);
    v157 = v222;
    v222[50] = 0;
    v157[51] = 0;
    v157[52] = 0;
    v157[53] = 0;
  }

  else
  {
    v102 = v175;
    v222[53] = v190;
    v103 = __swift_allocate_boxed_opaque_existential_1(v102);
    (*(v191 + 32))(v103, v211, v190);
  }

  v173 = v222 + 56;
  v174 = 1;
  v104 = sub_268F9AEF4();
  v105 = v222;
  v106 = v187;
  v107 = v200;
  v109 = v108;
  v110 = v209;
  v222[54] = v104;
  v105[55] = v109;
  sub_268D2A1F0((v107 + *(v106 + 64)), v110);
  if ((v193)(v209, v174, v190) == 1)
  {
    sub_268D28588(v209);
    v156 = v222;
    v222[56] = 0;
    v156[57] = 0;
    v156[58] = 0;
    v156[59] = 0;
  }

  else
  {
    v111 = v173;
    v222[59] = v190;
    v112 = __swift_allocate_boxed_opaque_existential_1(v111);
    (*(v191 + 32))(v112, v209, v190);
  }

  v172 = 1;
  v113 = sub_268F9AEF4();
  v114 = v222;
  v115 = v187;
  v116 = v200;
  v222[60] = v113;
  v114[61] = v117;
  LOBYTE(v116) = *(v116 + *(v115 + 68));
  v170 = MEMORY[0x277D839B0];
  v114[65] = MEMORY[0x277D839B0];
  *(v114 + 496) = v116;
  v118 = sub_268F9AEF4();
  v119 = v170;
  v120 = v222;
  v121 = v187;
  v122 = v200;
  v222[66] = v118;
  v120[67] = v123;
  LOBYTE(v122) = *(v122 + *(v121 + 72));
  v120[71] = v119;
  *(v120 + 544) = v122;
  v171 = v120 + 74;
  v124 = sub_268F9AEF4();
  v125 = v222;
  v126 = v187;
  v127 = v200;
  v129 = v128;
  v130 = v207;
  v222[72] = v124;
  v125[73] = v129;
  sub_268D2A1F0((v127 + *(v126 + 52)), v130);
  if ((v193)(v207, v172, v190) == 1)
  {
    sub_268D28588(v207);
    v155 = v222;
    v222[74] = 0;
    v155[75] = 0;
    v155[76] = 0;
    v155[77] = 0;
  }

  else
  {
    v131 = v171;
    v222[77] = v190;
    v132 = __swift_allocate_boxed_opaque_existential_1(v131);
    (*(v191 + 32))(v132, v207, v190);
  }

  v168 = v222 + 80;
  v169 = 1;
  v133 = sub_268F9AEF4();
  v134 = v222;
  v135 = v187;
  v136 = v200;
  v138 = v137;
  v139 = v205;
  v222[78] = v133;
  v134[79] = v138;
  sub_268D2A1F0((v136 + *(v135 + 56)), v139);
  if ((v193)(v205, v169, v190) == 1)
  {
    sub_268D28588(v205);
    v154 = v222;
    v222[80] = 0;
    v154[81] = 0;
    v154[82] = 0;
    v154[83] = 0;
  }

  else
  {
    v140 = v168;
    v222[83] = v190;
    v141 = __swift_allocate_boxed_opaque_existential_1(v140);
    (*(v191 + 32))(v141, v205, v190);
  }

  v166 = v222 + 86;
  v167 = 1;
  v142 = sub_268F9AEF4();
  v143 = v222;
  v144 = v187;
  v145 = v200;
  v147 = v146;
  v148 = v203;
  v222[84] = v142;
  v143[85] = v147;
  sub_268D2A1F0((v145 + *(v144 + 60)), v148);
  if ((v193)(v203, v167, v190) == 1)
  {
    sub_268D28588(v203);
    v153 = v222;
    v222[86] = 0;
    v153[87] = 0;
    v153[88] = 0;
    v153[89] = 0;
  }

  else
  {
    v149 = v166;
    v222[89] = v190;
    v150 = __swift_allocate_boxed_opaque_existential_1(v149);
    (*(v191 + 32))(v150, v203, v190);
  }

  sub_268CD0F7C();
  v165 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268D6D5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, const void *a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, char a15, char a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v23 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(0);
  sub_268D84F40(a4, (a9 + v23[7]));
  sub_268D84F40(a5, (a9 + v23[8]));
  *(a9 + v23[9]) = a6;
  sub_268D84F40(a7, (a9 + v23[10]));
  sub_268D84F40(a8, (a9 + v23[11]));
  sub_268D84F40(a10, (a9 + v23[12]));
  sub_268D84F40(a11, (a9 + v23[13]));
  sub_268D84F40(a12, (a9 + v23[14]));
  sub_268D84F40(a13, (a9 + v23[15]));
  sub_268D84F40(a14, (a9 + v23[16]));
  result = v23;
  *(a9 + v23[17]) = a15;
  *(a9 + v23[18]) = a16;
  return result;
}

uint64_t type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(uint64_t a1)
{
  v2 = qword_2802DC728;
  if (!qword_2802DC728)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268D6D830(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 24)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6D8E0()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0) + 28));

  return v2;
}

uint64_t sub_268D6D918(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0) + 28)) = a1;
}

uint64_t sub_268D6D99C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6DA84(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6DB6C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6DC54(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6DD3C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6DE24(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6DF0C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268D6DFBC()
{
  v190 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v169 = *(*(v1 - 8) + 64);
  v170 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v171 = v136 - v170;
  v172 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136 - v170, v6, v7, v8);
  v173 = v136 - v172;
  v174 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136 - v172, v10, v11, v12);
  v175 = v136 - v174;
  v176 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136 - v174, v14, v15, v16);
  v177 = v136 - v176;
  v178 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136 - v176, v18, v19, v20);
  v179 = v136 - v178;
  v180 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136 - v178, v22, v23, v24);
  v181 = v136 - v180;
  v182 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136 - v180, v26, v27, v28);
  v183 = v136 - v182;
  v184 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136 - v182, v30, v31, v32);
  v185 = v136 - v184;
  v190 = v0;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v187 = sub_268F9B734();
  v188 = v33;
  v34 = sub_268F9AEF4();
  v35 = v188;
  *v188 = v34;
  v35[1] = v36;
  v189 = *v0;

  if (v189)
  {
    v167 = v189;
    v166 = v189;
    v37 = sub_268F9A994();
    v38 = v188;
    v39 = v166;
    v188[5] = v37;
    v38[2] = v39;
  }

  else
  {
    v135 = v188;
    v188[2] = 0;
    v135[3] = 0;
    v135[4] = 0;
    v135[5] = 0;
  }

  v40 = sub_268F9AEF4();
  v41 = v188;
  v42 = v168;
  v188[6] = v40;
  v41[7] = v43;
  v165 = *(v42 + 8);

  if (v165)
  {
    v164 = v165;
    v163 = v165;
    v44 = sub_268F9AA44();
    v45 = v188;
    v46 = v163;
    v188[11] = v44;
    v45[8] = v46;
  }

  else
  {
    v134 = v188;
    v188[8] = 0;
    v134[9] = 0;
    v134[10] = 0;
    v134[11] = 0;
  }

  v154 = v188 + 14;
  v157 = 1;
  v47 = sub_268F9AEF4();
  v48 = v188;
  v188[12] = v47;
  v48[13] = v49;
  v156 = 0;
  v155 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  sub_268D2A1F0((v168 + *(v155 + 24)), v185);
  v158 = sub_268F9A9C4();
  v159 = *(v158 - 8);
  v160 = v158 - 8;
  v161 = *(v159 + 48);
  v162 = v159 + 48;
  if (v161(v185, v157) == 1)
  {
    sub_268D28588(v185);
    v133 = v188;
    v188[14] = 0;
    v133[15] = 0;
    v133[16] = 0;
    v133[17] = 0;
  }

  else
  {
    v50 = v154;
    v188[17] = v158;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
    (*(v159 + 32))(boxed_opaque_existential_1, v185, v158);
  }

  v52 = sub_268F9AEF4();
  v53 = v188;
  v54 = v155;
  v55 = v168;
  v188[18] = v52;
  v53[19] = v56;
  v153 = *(v55 + *(v54 + 28));

  if (v153)
  {
    v152 = v153;
    v151 = v153;
    v57 = type metadata accessor for SettingsMultiSetting(0);
    v58 = v188;
    v59 = v151;
    v188[23] = v57;
    v58[20] = v59;
  }

  else
  {
    v132 = v188;
    v188[20] = 0;
    v132[21] = 0;
    v132[22] = 0;
    v132[23] = 0;
  }

  v149 = v188 + 26;
  v150 = 1;
  v60 = sub_268F9AEF4();
  v61 = v188;
  v62 = v155;
  v63 = v168;
  v65 = v64;
  v66 = v183;
  v188[24] = v60;
  v61[25] = v65;
  sub_268D2A1F0((v63 + *(v62 + 32)), v66);
  if ((v161)(v183, v150, v158) == 1)
  {
    sub_268D28588(v183);
    v131 = v188;
    v188[26] = 0;
    v131[27] = 0;
    v131[28] = 0;
    v131[29] = 0;
  }

  else
  {
    v67 = v149;
    v188[29] = v158;
    v68 = __swift_allocate_boxed_opaque_existential_1(v67);
    (*(v159 + 32))(v68, v183, v158);
  }

  v147 = v188 + 32;
  v148 = 1;
  v69 = sub_268F9AEF4();
  v70 = v188;
  v71 = v155;
  v72 = v168;
  v74 = v73;
  v75 = v181;
  v188[30] = v69;
  v70[31] = v74;
  sub_268D2A1F0((v72 + *(v71 + 36)), v75);
  if ((v161)(v181, v148, v158) == 1)
  {
    sub_268D28588(v181);
    v130 = v188;
    v188[32] = 0;
    v130[33] = 0;
    v130[34] = 0;
    v130[35] = 0;
  }

  else
  {
    v76 = v147;
    v188[35] = v158;
    v77 = __swift_allocate_boxed_opaque_existential_1(v76);
    (*(v159 + 32))(v77, v181, v158);
  }

  v145 = v188 + 38;
  v146 = 1;
  v78 = sub_268F9AEF4();
  v79 = v188;
  v80 = v155;
  v81 = v168;
  v83 = v82;
  v84 = v179;
  v188[36] = v78;
  v79[37] = v83;
  sub_268D2A1F0((v81 + *(v80 + 52)), v84);
  if ((v161)(v179, v146, v158) == 1)
  {
    sub_268D28588(v179);
    v129 = v188;
    v188[38] = 0;
    v129[39] = 0;
    v129[40] = 0;
    v129[41] = 0;
  }

  else
  {
    v85 = v145;
    v188[41] = v158;
    v86 = __swift_allocate_boxed_opaque_existential_1(v85);
    (*(v159 + 32))(v86, v179, v158);
  }

  v143 = v188 + 44;
  v144 = 1;
  v87 = sub_268F9AEF4();
  v88 = v188;
  v89 = v155;
  v90 = v168;
  v92 = v91;
  v93 = v177;
  v188[42] = v87;
  v88[43] = v92;
  sub_268D2A1F0((v90 + *(v89 + 40)), v93);
  if ((v161)(v177, v144, v158) == 1)
  {
    sub_268D28588(v177);
    v128 = v188;
    v188[44] = 0;
    v128[45] = 0;
    v128[46] = 0;
    v128[47] = 0;
  }

  else
  {
    v94 = v143;
    v188[47] = v158;
    v95 = __swift_allocate_boxed_opaque_existential_1(v94);
    (*(v159 + 32))(v95, v177, v158);
  }

  v141 = v188 + 50;
  v142 = 1;
  v96 = sub_268F9AEF4();
  v97 = v188;
  v98 = v155;
  v99 = v168;
  v101 = v100;
  v102 = v175;
  v188[48] = v96;
  v97[49] = v101;
  sub_268D2A1F0((v99 + *(v98 + 44)), v102);
  if ((v161)(v175, v142, v158) == 1)
  {
    sub_268D28588(v175);
    v127 = v188;
    v188[50] = 0;
    v127[51] = 0;
    v127[52] = 0;
    v127[53] = 0;
  }

  else
  {
    v103 = v141;
    v188[53] = v158;
    v104 = __swift_allocate_boxed_opaque_existential_1(v103);
    (*(v159 + 32))(v104, v175, v158);
  }

  v139 = v188 + 56;
  v140 = 1;
  v105 = sub_268F9AEF4();
  v106 = v188;
  v107 = v155;
  v108 = v168;
  v110 = v109;
  v111 = v173;
  v188[54] = v105;
  v106[55] = v110;
  sub_268D2A1F0((v108 + *(v107 + 48)), v111);
  if ((v161)(v173, v140, v158) == 1)
  {
    sub_268D28588(v173);
    v126 = v188;
    v188[56] = 0;
    v126[57] = 0;
    v126[58] = 0;
    v126[59] = 0;
  }

  else
  {
    v112 = v139;
    v188[59] = v158;
    v113 = __swift_allocate_boxed_opaque_existential_1(v112);
    (*(v159 + 32))(v113, v173, v158);
  }

  v137 = v188 + 62;
  v138 = 1;
  v114 = sub_268F9AEF4();
  v115 = v188;
  v116 = v155;
  v117 = v168;
  v119 = v118;
  v120 = v171;
  v188[60] = v114;
  v115[61] = v119;
  sub_268D2A1F0((v117 + *(v116 + 56)), v120);
  if ((v161)(v171, v138, v158) == 1)
  {
    sub_268D28588(v171);
    v125 = v188;
    v188[62] = 0;
    v125[63] = 0;
    v125[64] = 0;
    v125[65] = 0;
  }

  else
  {
    v121 = v137;
    v188[65] = v158;
    v122 = __swift_allocate_boxed_opaque_existential_1(v121);
    (*(v159 + 32))(v122, v171, v158);
  }

  sub_268CD0F7C();
  v136[1] = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D6ECC0@<X0>(char *a1@<X8>)
{
  v23 = a1;
  v24 = 0;
  v16 = 0;
  v17 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(0);
  v14 = (*(*(v17 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v4 = &v13 - v14;
  v22 = v4;
  v24 = &v13 - v14;
  *v4 = 0;
  *(v4 + 1) = 0;
  v15 = *(v5 + 24);
  v19 = sub_268F9A9C4();
  v6 = *(v19 - 8);
  v21 = *(v6 + 56);
  v20 = v6 + 56;
  v18 = 1;
  v21(&v22[v15], 1);
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v21;
  v11 = v22;
  *&v22[v17[7]] = v16;
  (v10)(&v11[v7[8]], v8, v8, v9);
  (v21)(&v22[v17[9]], v18, v18, v19);
  (v21)(&v22[v17[10]], v18, v18, v19);
  (v21)(&v22[v17[11]], v18, v18, v19);
  (v21)(&v22[v17[12]], v18, v18, v19);
  (v21)(&v22[v17[13]], v18, v18, v19);
  (v21)(&v22[v17[14]], v18, v18, v19);
  return sub_268D846DC(v22, v23);
}

uint64_t sub_268D6EF1C(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = v5;
  *(v6 + 56) = a5;
  *(v6 + 48) = a4;
  *(v6 + 203) = a3 & 1;
  *(v6 + 202) = a2 & 1;
  *(v6 + 201) = a1 & 1;
  *(v6 + 32) = v6;
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 216) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 200) = a1 & 1;
  *(v6 + 208) = a2 & 1;
  *(v6 + 216) = a3 & 1;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 40) = v5;

  return MEMORY[0x2822009F8](sub_268D6F1A4, 0);
}

uint64_t sub_268D6F1A4()
{
  v21 = MEMORY[0x277D55BE8];
  v19 = *(v0 + 152);
  v20 = *(v0 + 144);
  v13 = *(v0 + 136);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);
  v16 = *(v0 + 112);
  v17 = *(v0 + 104);
  v6 = *(v0 + 96);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  v9 = *(v0 + 72);
  v18 = *(v0 + 48);
  v11 = *(v0 + 203);
  v10 = *(v0 + 202);
  v12 = *(v0 + 201);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v13, 1);
  (v5)(v14, 1, 1, v4);
  (v5)(v15, 1, 1, v4);
  (v5)(v16, 1, 1, v4);
  (v5)(v17, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  (v5)(v9, 1, 1, v4);
  sub_268D60698(0, 0, v12 & 1, v13, v14, 0, v15, v16, v19, v17, v6, v7, v8, v9, v10, v11);
  v18(v19);
  v26 = sub_268D5E71C(0);
  v23 = v1;
  *(v0 + 160) = v1;
  sub_268D6F99C(v19, v20);
  v24 = sub_268D5F71C();
  *(v0 + 168) = v24;
  sub_268D70390(v20);
  v25 = (v21 + *v21);
  v2 = swift_task_alloc();
  *(v22 + 176) = v2;
  *v2 = *(v22 + 32);
  v2[1] = sub_268D6F534;

  return v25(v26, v23, v24);
}

uint64_t sub_268D6F534(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[23] = a1;
  v5[24] = v1;

  if (v1)
  {
    v3 = sub_268D6F824;
  }

  else
  {

    v3 = sub_268D6F6C8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D6F6C8()
{
  v1 = v0[19];
  v0[4] = v0;
  sub_268D70390(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[23];

  return v2(v3);
}

uint64_t sub_268D6F824()
{
  v3 = *(v0 + 152);
  *(v0 + 32) = v0;

  sub_268D70390(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268D6F99C(uint64_t *a1, uint64_t a2)
{
  v30 = *a1;

  *a2 = v30;
  v31 = a1[1];

  *(a2 + 8) = v31;
  *(a2 + 16) = *(a1 + 16);
  v33 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  v34 = v33[7];
  v36 = sub_268F9A9C4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if ((v38)(a1 + v34, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v34), a1 + v34, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))();
    (*(v37 + 56))(a2 + v34, 0, 1, v36);
  }

  __dst = (a2 + v33[8]);
  __src = a1 + v33[8];
  if (v38())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(__dst, __src, v36);
    (*(v37 + 56))(__dst, 0, 1, v36);
  }

  v24 = v33[9];
  v25 = *(a1 + v24);

  *(a2 + v24) = v25;
  v26 = (a2 + v33[10]);
  v27 = a1 + v33[10];
  if (v38())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v26, v27, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v26, v27, v36);
    (*(v37 + 56))(v26, 0, 1, v36);
  }

  v22 = (a2 + v33[11]);
  v23 = a1 + v33[11];
  if (v38())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v22, v23, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v22, v23, v36);
    (*(v37 + 56))(v22, 0, 1, v36);
  }

  v20 = (a2 + v33[12]);
  v21 = a1 + v33[12];
  if (v38())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v20, v21, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v20, v21, v36);
    (*(v37 + 56))(v20, 0, 1, v36);
  }

  v18 = (a2 + v33[13]);
  v19 = a1 + v33[13];
  if (v38())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v18, v19, v36);
    (*(v37 + 56))(v18, 0, 1, v36);
  }

  v16 = (a2 + v33[14]);
  v17 = a1 + v33[14];
  if (v38())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v16, v17, v36);
    (*(v37 + 56))(v16, 0, 1, v36);
  }

  v14 = (a2 + v33[15]);
  v15 = a1 + v33[15];
  if (v38())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v14, v15, v36);
    (*(v37 + 56))(v14, 0, 1, v36);
  }

  v12 = (a2 + v33[16]);
  v13 = a1 + v33[16];
  if (v38())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v12, v13, v36);
    (*(v37 + 56))(v12, 0, 1, v36);
  }

  result = a2;
  *(a2 + v33[17]) = *(a1 + v33[17]);
  *(a2 + v33[18]) = *(a1 + v33[18]);
  return result;
}

uint64_t sub_268D70390(uint64_t a1)
{

  v10 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(0);
  v11 = v10[7];
  v13 = sub_268F9A9C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!(v15)(a1 + v11, 1))
  {
    (*(v14 + 8))(a1 + v11, v13);
  }

  v9 = a1 + v10[8];
  if (!v15())
  {
    (*(v14 + 8))(v9, v13);
  }

  v8 = a1 + v10[10];
  if (!v15())
  {
    (*(v14 + 8))(v8, v13);
  }

  v7 = a1 + v10[11];
  if (!v15())
  {
    (*(v14 + 8))(v7, v13);
  }

  v6 = a1 + v10[12];
  if (!v15())
  {
    (*(v14 + 8))(v6, v13);
  }

  v5 = a1 + v10[13];
  if (!v15())
  {
    (*(v14 + 8))(v5, v13);
  }

  v4 = a1 + v10[14];
  if (!v15())
  {
    (*(v14 + 8))(v4, v13);
  }

  v3 = a1 + v10[15];
  if (!v15())
  {
    (*(v14 + 8))(v3, v13);
  }

  v2 = a1 + v10[16];
  if (!v15())
  {
    (*(v14 + 8))(v2, v13);
  }

  return a1;
}

uint64_t sub_268D707F4(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268D70900, 0);
}

uint64_t sub_268D70900()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268D61C34(v1);
  v5(v6);
  v13 = sub_268D5E71C(1);
  v10 = v2;
  v0[11] = v2;
  sub_268D70D7C(v6, v7);
  v11 = sub_268D61064();
  v0[12] = v11;
  sub_268D7160C(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268D70A4C;

  return v12(v13, v10, v11);
}

uint64_t sub_268D70A4C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268D70CA0;
  }

  else
  {

    v3 = sub_268D70BE0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D70BE0()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268D7160C(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268D70CA0()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268D7160C(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268D70D7C(uint64_t *a1, char *a2)
{
  v28 = *a1;

  *a2 = v28;
  v29 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  v30 = v29[5];
  v32 = sub_268F9A9C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if ((v34)(a1 + v30, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v30], a1 + v30, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))();
    (*(v33 + 56))(&a2[v30], 0, 1, v32);
  }

  v23 = v29[6];
  v24 = *(a1 + v23);

  *&a2[v23] = v24;
  __dst = &a2[v29[7]];
  __src = a1 + v29[7];
  if (v34())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(__dst, __src, v32);
    (*(v33 + 56))(__dst, 0, 1, v32);
  }

  v21 = &a2[v29[8]];
  v22 = a1 + v29[8];
  if (v34())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v21, v22, v32);
    (*(v33 + 56))(v21, 0, 1, v32);
  }

  v19 = &a2[v29[9]];
  v20 = a1 + v29[9];
  if (v34())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v19, v20, v32);
    (*(v33 + 56))(v19, 0, 1, v32);
  }

  v17 = &a2[v29[10]];
  v18 = a1 + v29[10];
  if (v34())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v17, v18, v32);
    (*(v33 + 56))(v17, 0, 1, v32);
  }

  v15 = &a2[v29[11]];
  v16 = a1 + v29[11];
  if (v34())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v15, v16, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
  }

  v13 = &a2[v29[12]];
  v14 = a1 + v29[12];
  if (v34())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v13, v14, v32);
    (*(v33 + 56))(v13, 0, 1, v32);
  }

  v11 = &a2[v29[13]];
  v12 = a1 + v29[13];
  if (v34())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v11, v12, v32);
    (*(v33 + 56))(v11, 0, 1, v32);
  }

  return a2;
}

uint64_t sub_268D7160C(uint64_t a1)
{

  v9 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(0);
  v10 = v9[5];
  v12 = sub_268F9A9C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!(v14)(a1 + v10, 1))
  {
    (*(v13 + 8))(a1 + v10, v12);
  }

  v8 = a1 + v9[7];
  if (!v14())
  {
    (*(v13 + 8))(v8, v12);
  }

  v7 = a1 + v9[8];
  if (!v14())
  {
    (*(v13 + 8))(v7, v12);
  }

  v6 = a1 + v9[9];
  if (!v14())
  {
    (*(v13 + 8))(v6, v12);
  }

  v5 = a1 + v9[10];
  if (!v14())
  {
    (*(v13 + 8))(v5, v12);
  }

  v4 = a1 + v9[11];
  if (!v14())
  {
    (*(v13 + 8))(v4, v12);
  }

  v3 = a1 + v9[12];
  if (!v14())
  {
    (*(v13 + 8))(v3, v12);
  }

  v2 = a1 + v9[13];
  if (!v14())
  {
    (*(v13 + 8))(v2, v12);
  }

  return a1;
}

uint64_t sub_268D719F8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268D71A34, 0);
}

uint64_t sub_268D71A34()
{
  v4 = MEMORY[0x277D55BE8];
  v0[2] = v0;
  v9 = sub_268D5E71C(2);
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

uint64_t sub_268D71B74(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268D71D28, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268D71D28()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268D71DD8(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268D71EE4, 0);
}

uint64_t sub_268D71EE4()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268D62310(v1);
  v5(v6);
  v13 = sub_268D5E71C(3);
  v10 = v2;
  v0[11] = v2;
  sub_268D72360(v6, v7);
  v11 = sub_268D620C8();
  v0[12] = v11;
  sub_268D7253C(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268D72030;

  return v12(v13, v10, v11);
}

uint64_t sub_268D72030(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268D72284;
  }

  else
  {

    v3 = sub_268D721C4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D721C4()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268D7253C(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268D72284()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268D7253C(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268D72360(char *a1, char *a2)
{
  v7 = *a1;

  *a2 = v7;
  v8 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0);
  v9 = v8[5];
  v11 = sub_268F9A9C4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a1[v9], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v9], &a1[v9], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))();
    (*(v12 + 56))(&a2[v9], 0, 1, v11);
  }

  v4 = v8[6];
  v5 = *&a1[v4];

  result = a2;
  *&a2[v4] = v5;
  a2[v8[7]] = a1[v8[7]];
  return result;
}

uint64_t sub_268D7253C(uint64_t a1)
{

  v2 = *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(0) + 20);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268D7262C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268D72668, 0);
}

uint64_t sub_268D72668()
{
  v4 = MEMORY[0x277D55BE8];
  v0[2] = v0;
  v9 = sub_268D5E71C(4);
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

uint64_t sub_268D727A8(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268D728B4, 0);
}

uint64_t sub_268D728B4()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268D6398C(v1);
  v5(v6);
  v13 = sub_268D5E71C(5);
  v10 = v2;
  v0[11] = v2;
  sub_268D72D30(v6, v7);
  v11 = sub_268D62CB4();
  v0[12] = v11;
  sub_268D735E4(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268D72A00;

  return v12(v13, v10, v11);
}

uint64_t sub_268D72A00(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268D72C54;
  }

  else
  {

    v3 = sub_268D72B94;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D72B94()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268D735E4(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268D72C54()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268D735E4(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268D72D30(void *a1, char *a2)
{
  v28 = *a1;

  *a2 = v28;
  v29 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  v30 = v29[5];
  v32 = sub_268F9A9C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if ((v34)(a1 + v30, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v30], a1 + v30, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))();
    (*(v33 + 56))(&a2[v30], 0, 1, v32);
  }

  v23 = v29[6];
  v24 = *(a1 + v23);

  *&a2[v23] = v24;
  __dst = &a2[v29[7]];
  __src = a1 + v29[7];
  if (v34())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(__dst, __src, v32);
    (*(v33 + 56))(__dst, 0, 1, v32);
  }

  v21 = &a2[v29[8]];
  v22 = a1 + v29[8];
  if (v34())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v21, v22, v32);
    (*(v33 + 56))(v21, 0, 1, v32);
  }

  v19 = &a2[v29[9]];
  v20 = a1 + v29[9];
  if (v34())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v19, v20, v32);
    (*(v33 + 56))(v19, 0, 1, v32);
  }

  v17 = &a2[v29[10]];
  v18 = a1 + v29[10];
  if (v34())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v17, v18, v32);
    (*(v33 + 56))(v17, 0, 1, v32);
  }

  v15 = &a2[v29[11]];
  v16 = a1 + v29[11];
  if (v34())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v15, v16, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
  }

  v13 = &a2[v29[12]];
  v14 = a1 + v29[12];
  if (v34())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v13, v14, v32);
    (*(v33 + 56))(v13, 0, 1, v32);
  }

  v11 = &a2[v29[13]];
  v12 = a1 + v29[13];
  if (v34())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v11, v12, v32);
    (*(v33 + 56))(v11, 0, 1, v32);
  }

  result = a2;
  a2[v29[14]] = *(a1 + v29[14]);
  return result;
}

uint64_t sub_268D735E4(uint64_t a1)
{

  v9 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0);
  v10 = v9[5];
  v12 = sub_268F9A9C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!(v14)(a1 + v10, 1))
  {
    (*(v13 + 8))(a1 + v10, v12);
  }

  v8 = a1 + v9[7];
  if (!v14())
  {
    (*(v13 + 8))(v8, v12);
  }

  v7 = a1 + v9[8];
  if (!v14())
  {
    (*(v13 + 8))(v7, v12);
  }

  v6 = a1 + v9[9];
  if (!v14())
  {
    (*(v13 + 8))(v6, v12);
  }

  v5 = a1 + v9[10];
  if (!v14())
  {
    (*(v13 + 8))(v5, v12);
  }

  v4 = a1 + v9[11];
  if (!v14())
  {
    (*(v13 + 8))(v4, v12);
  }

  v3 = a1 + v9[12];
  if (!v14())
  {
    (*(v13 + 8))(v3, v12);
  }

  v2 = a1 + v9[13];
  if (!v14())
  {
    (*(v13 + 8))(v2, v12);
  }

  return a1;
}

uint64_t sub_268D739D0(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268D73A34, 0);
}

uint64_t sub_268D73A34()
{
  v6 = MEMORY[0x277D55BE8];
  v4 = v0[7];
  v0[4] = v0;
  v0[6] = sub_268D63D3C();
  v4(v0 + 6);
  v11 = sub_268D5E71C(6);
  v8 = v1;
  v0[10] = v1;
  v5 = v0[6];

  v9 = sub_268D63C24(v5);
  v0[11] = v9;

  v10 = (v6 + *v6);
  v2 = swift_task_alloc();
  *(v7 + 96) = v2;
  *v2 = *(v7 + 32);
  v2[1] = sub_268D73B74;

  return v10(v11, v8, v9);
}

uint64_t sub_268D73B74(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {
    v3 = sub_268D73DA8;
  }

  else
  {

    v3 = sub_268D73D08;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D73D08()
{
  *(v0 + 32) = v0;
  sub_268D287E8((v0 + 48));
  v1 = *(*(v4 + 32) + 8);
  v2 = *(v4 + 104);

  return v1(v2);
}

uint64_t sub_268D73DA8()
{
  *(v0 + 32) = v0;

  sub_268D287E8((v0 + 48));
  v1 = *(*(v3 + 32) + 8);

  return v1();
}

uint64_t sub_268D73E60(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 186) = a2 & 1;
  *(v5 + 185) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 184) = a1 & 1;
  *(v5 + 192) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;

  return MEMORY[0x2822009F8](sub_268D74090, 0);
}

uint64_t sub_268D74090()
{
  v18 = MEMORY[0x277D55BE8];
  v16 = *(v0 + 136);
  v17 = *(v0 + 128);
  v10 = *(v0 + 120);
  v12 = *(v0 + 112);
  v13 = *(v0 + 104);
  v14 = *(v0 + 96);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v0 + 72);
  v15 = *(v0 + 48);
  v11 = *(v0 + 186);
  v9 = *(v0 + 185);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v10, 1);
  (v5)(v12, 1, 1, v4);
  (v5)(v13, 1, 1, v4);
  (v5)(v14, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  sub_268D65024(0, v9 & 1, v10, v11 & 1, 0, v12, v13, v14, v16, v6, v7, v8);
  v15(v16);
  v23 = sub_268D5E71C(7);
  v20 = v1;
  *(v0 + 144) = v1;
  sub_268D747C0(v16, v17);
  v21 = sub_268D644FC();
  *(v0 + 152) = v21;
  sub_268D74F7C(v17);
  v22 = (v18 + *v18);
  v2 = swift_task_alloc();
  *(v19 + 160) = v2;
  *v2 = *(v19 + 32);
  v2[1] = sub_268D743A0;

  return v22(v23, v20, v21);
}

uint64_t sub_268D743A0(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[21] = a1;
  v5[22] = v1;

  if (v1)
  {
    v3 = sub_268D7466C;
  }

  else
  {

    v3 = sub_268D74534;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D74534()
{
  v1 = v0[17];
  v0[4] = v0;
  sub_268D74F7C(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[21];

  return v2(v3);
}

uint64_t sub_268D7466C()
{
  v3 = *(v0 + 136);
  *(v0 + 32) = v0;

  sub_268D74F7C(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268D747C0(uint64_t *a1, uint64_t a2)
{
  v24 = *a1;

  *a2 = v24;
  *(a2 + 8) = *(a1 + 8);
  v26 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  v27 = v26[6];
  v29 = sub_268F9A9C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if ((v31)(a1 + v27, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v27), a1 + v27, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))();
    (*(v30 + 56))(a2 + v27, 0, 1, v29);
  }

  *(a2 + v26[7]) = *(a1 + v26[7]);
  v20 = v26[8];
  v21 = *(a1 + v20);

  *(a2 + v20) = v21;
  __dst = (a2 + v26[9]);
  __src = a1 + v26[9];
  if (v31())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(__dst, __src, v29);
    (*(v30 + 56))(__dst, 0, 1, v29);
  }

  v18 = (a2 + v26[10]);
  v19 = a1 + v26[10];
  if (v31())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v18, v19, v29);
    (*(v30 + 56))(v18, 0, 1, v29);
  }

  v16 = (a2 + v26[11]);
  v17 = a1 + v26[11];
  if (v31())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v16, v17, v29);
    (*(v30 + 56))(v16, 0, 1, v29);
  }

  v14 = (a2 + v26[12]);
  v15 = a1 + v26[12];
  if (v31())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v14, v15, v29);
    (*(v30 + 56))(v14, 0, 1, v29);
  }

  v12 = (a2 + v26[13]);
  v13 = a1 + v26[13];
  if (v31())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v12, v13, v29);
    (*(v30 + 56))(v12, 0, 1, v29);
  }

  v10 = (a2 + v26[14]);
  v11 = a1 + v26[14];
  if (v31())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v10, v11, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v30 + 16))(v10, v11, v29);
    (*(v30 + 56))(v10, 0, 1, v29);
  }

  return a2;
}

uint64_t sub_268D74F7C(uint64_t a1)
{

  v8 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(0);
  v9 = v8[6];
  v11 = sub_268F9A9C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!(v13)(a1 + v9, 1))
  {
    (*(v12 + 8))(a1 + v9, v11);
  }

  v7 = a1 + v8[9];
  if (!v13())
  {
    (*(v12 + 8))(v7, v11);
  }

  v6 = a1 + v8[10];
  if (!v13())
  {
    (*(v12 + 8))(v6, v11);
  }

  v5 = a1 + v8[11];
  if (!v13())
  {
    (*(v12 + 8))(v5, v11);
  }

  v4 = a1 + v8[12];
  if (!v13())
  {
    (*(v12 + 8))(v4, v11);
  }

  v3 = a1 + v8[13];
  if (!v13())
  {
    (*(v12 + 8))(v3, v11);
  }

  v2 = a1 + v8[14];
  if (!v13())
  {
    (*(v12 + 8))(v2, v11);
  }

  return a1;
}

uint64_t sub_268D752FC(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = v6;
  *(v7 + 56) = a6;
  *(v7 + 48) = a5;
  *(v7 + 204) = a4 & 1;
  *(v7 + 203) = a3 & 1;
  *(v7 + 202) = a2 & 1;
  *(v7 + 201) = a1 & 1;
  *(v7 + 32) = v7;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  *(v7 + 224) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 200) = a1 & 1;
  *(v7 + 208) = a2 & 1;
  *(v7 + 216) = a3 & 1;
  *(v7 + 224) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  *(v7 + 40) = v6;

  return MEMORY[0x2822009F8](sub_268D755B4, 0);
}

uint64_t sub_268D755B4()
{
  v22 = MEMORY[0x277D55BE8];
  v20 = *(v0 + 152);
  v21 = *(v0 + 144);
  v15 = *(v0 + 136);
  v16 = *(v0 + 128);
  v17 = *(v0 + 120);
  v6 = *(v0 + 112);
  v7 = *(v0 + 104);
  v18 = *(v0 + 96);
  v8 = *(v0 + 88);
  v9 = *(v0 + 80);
  v10 = *(v0 + 72);
  v19 = *(v0 + 48);
  v12 = *(v0 + 204);
  v11 = *(v0 + 203);
  v14 = *(v0 + 202);
  v13 = *(v0 + 201);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v15, 1);
  (v5)(v16, 1, 1, v4);
  (v5)(v17, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v18, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  (v5)(v9, 1, 1, v4);
  (v5)(v10, 1, 1, v4);
  sub_268D66A9C(0, 0, v13 & 1, v14 & 1, v15, v16, 0, v17, v20, v6, v7, v18, v8, v9, v10, v11, v12);
  v19(v20);
  v27 = sub_268D5E71C(8);
  v24 = v1;
  *(v0 + 160) = v1;
  sub_268D75DD4(v20, v21);
  v25 = sub_268D65AD4();
  *(v0 + 168) = v25;
  sub_268D767D0(v21);
  v26 = (v22 + *v22);
  v2 = swift_task_alloc();
  *(v23 + 176) = v2;
  *v2 = *(v23 + 32);
  v2[1] = sub_268D75964;

  return v26(v27, v24, v25);
}

uint64_t sub_268D75964(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[23] = a1;
  v5[24] = v1;

  if (v1)
  {
    v3 = sub_268D75C58;
  }

  else
  {

    v3 = sub_268D75AF8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D75AF8()
{
  v1 = v0[19];
  v0[4] = v0;
  sub_268D767D0(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[23];

  return v2(v3);
}

uint64_t sub_268D75C58()
{
  v3 = *(v0 + 152);
  *(v0 + 32) = v0;

  sub_268D767D0(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268D75DD4(uint64_t *a1, uint64_t a2)
{
  v30 = *a1;

  *a2 = v30;
  v31 = a1[1];

  *(a2 + 8) = v31;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = *(a1 + 17);
  v33 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  v34 = v33[8];
  v36 = sub_268F9A9C4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if ((v38)(a1 + v34, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v34), a1 + v34, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))();
    (*(v37 + 56))(a2 + v34, 0, 1, v36);
  }

  __dst = (a2 + v33[9]);
  __src = a1 + v33[9];
  if (v38())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(__dst, __src, v36);
    (*(v37 + 56))(__dst, 0, 1, v36);
  }

  v24 = v33[10];
  v25 = *(a1 + v24);

  *(a2 + v24) = v25;
  v26 = (a2 + v33[11]);
  v27 = a1 + v33[11];
  if (v38())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v26, v27, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v26, v27, v36);
    (*(v37 + 56))(v26, 0, 1, v36);
  }

  v22 = (a2 + v33[12]);
  v23 = a1 + v33[12];
  if (v38())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v22, v23, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v22, v23, v36);
    (*(v37 + 56))(v22, 0, 1, v36);
  }

  v20 = (a2 + v33[13]);
  v21 = a1 + v33[13];
  if (v38())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v20, v21, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v20, v21, v36);
    (*(v37 + 56))(v20, 0, 1, v36);
  }

  v18 = (a2 + v33[14]);
  v19 = a1 + v33[14];
  if (v38())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v18, v19, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v18, v19, v36);
    (*(v37 + 56))(v18, 0, 1, v36);
  }

  v16 = (a2 + v33[15]);
  v17 = a1 + v33[15];
  if (v38())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v16, v17, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v16, v17, v36);
    (*(v37 + 56))(v16, 0, 1, v36);
  }

  v14 = (a2 + v33[16]);
  v15 = a1 + v33[16];
  if (v38())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v14, v15, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v14, v15, v36);
    (*(v37 + 56))(v14, 0, 1, v36);
  }

  v12 = (a2 + v33[17]);
  v13 = a1 + v33[17];
  if (v38())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v12, v13, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v12, v13, v36);
    (*(v37 + 56))(v12, 0, 1, v36);
  }

  result = a2;
  *(a2 + v33[18]) = *(a1 + v33[18]);
  *(a2 + v33[19]) = *(a1 + v33[19]);
  return result;
}

uint64_t sub_268D767D0(uint64_t a1)
{

  v10 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(0);
  v11 = v10[8];
  v13 = sub_268F9A9C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!(v15)(a1 + v11, 1))
  {
    (*(v14 + 8))(a1 + v11, v13);
  }

  v9 = a1 + v10[9];
  if (!v15())
  {
    (*(v14 + 8))(v9, v13);
  }

  v8 = a1 + v10[11];
  if (!v15())
  {
    (*(v14 + 8))(v8, v13);
  }

  v7 = a1 + v10[12];
  if (!v15())
  {
    (*(v14 + 8))(v7, v13);
  }

  v6 = a1 + v10[13];
  if (!v15())
  {
    (*(v14 + 8))(v6, v13);
  }

  v5 = a1 + v10[14];
  if (!v15())
  {
    (*(v14 + 8))(v5, v13);
  }

  v4 = a1 + v10[15];
  if (!v15())
  {
    (*(v14 + 8))(v4, v13);
  }

  v3 = a1 + v10[16];
  if (!v15())
  {
    (*(v14 + 8))(v3, v13);
  }

  v2 = a1 + v10[17];
  if (!v15())
  {
    (*(v14 + 8))(v2, v13);
  }

  return a1;
}