unint64_t sub_2168022AC()
{
  result = qword_27CAB89C8;
  if (!qword_27CAB89C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB89B8, &unk_21701AAE0);
    sub_216802338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB89C8);
  }

  return result;
}

unint64_t sub_216802338()
{
  result = qword_27CAB89D0;
  if (!qword_27CAB89D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB89B0, &qword_21701AAD8);
    sub_2168023F4(&qword_27CAB89D8, MEMORY[0x277CEE788], MEMORY[0x277CEE780]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB89D0);
  }

  return result;
}

uint64_t sub_2168023F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216802468()
{
  OUTLINED_FUNCTION_49();
  v23[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (v23 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C00, &qword_21701B140);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = sub_21700ADB4();
  v12 = (v6 + *(v3 + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
  v14 = *MEMORY[0x277CE1050];
  sub_21700ADF4();
  OUTLINED_FUNCTION_34();
  (*(v15 + 104))(v12 + v13, v14);
  *v12 = swift_getKeyPath();
  *v6 = v11;
  sub_21680C99C();
  sub_21700A4F4();
  sub_216699778(v6, &qword_27CAB8B38);
  if (qword_280E2C3C0 != -1)
  {
    swift_once();
  }

  v16 = qword_280E2C3C8;
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(v7 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = *MEMORY[0x277CDF988];
  v20 = sub_217008844();
  OUTLINED_FUNCTION_34();
  (*(v21 + 104))(v0, v19, v20);
  sub_216809AAC(&qword_280E2B340, MEMORY[0x277CDFA28]);

  if (sub_21700E494())
  {
    sub_21680D978();
    OUTLINED_FUNCTION_18_10();
    sub_21680DFBC(v22, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_216699778(v0, &qword_27CAB75D0);
    sub_216699778(v10, &qword_27CAB8C00);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2168027B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_217009EB4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = type metadata accessor for TopSearchLockupView(0);
  if (qword_280E2C400 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280E73B18);
  (*(v6 + 16))(v10, v12, v4);
  sub_2167CD8D8();
  sub_2170082A4();
  sub_2170082B4();
  v13 = v11[7];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v14 = v11[8];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v11[9];
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  v16 = (a2 + v11[10]);
  type metadata accessor for PlaybackPresenter(0);
  sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  *v16 = sub_217008CF4();
  v16[1] = v17;
  *a2 = a1;
  v18 = a2 + v11[11];
  *v18 = sub_216809AF0;
  *(v18 + 1) = a1;
  v18[16] = 0;
}

char *sub_216802A24()
{
  v0 = sub_2170067A4();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCAE64();
  type metadata accessor for GenericItemStateObserver(0);
  swift_allocObject();
  return sub_216EBA37C(v2);
}

void sub_216802AB4()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v132 = v3;
  v136 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v131 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v7 - v6);
  v118 = sub_217006864();
  OUTLINED_FUNCTION_1();
  v112 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v11 - v10);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8, &unk_21701ACC0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00, &qword_21706C3D0);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_70(&v103 - v18);
  v19 = type metadata accessor for TopSearchLockup(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v116 = sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v114 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_70(&v103 - v27);
  v105 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_1();
  v117 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A08, &qword_21701ACD0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_79_0();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A10, &qword_21701ACD8);
  OUTLINED_FUNCTION_1();
  v113 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v36);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A18, &qword_21701ACE0);
  OUTLINED_FUNCTION_1();
  v121 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v39);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A20, &qword_21701ACE8);
  OUTLINED_FUNCTION_1();
  v122 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v42);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A28, &qword_21701ACF0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v44);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A30, &qword_21701ACF8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v46);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A38, &unk_21701AD00);
  OUTLINED_FUNCTION_1();
  v128 = v47;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v49);
  v50 = *v0;
  sub_2167B55A8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A40, &unk_217064CE0);
  v52 = v51[11];
  v53 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v1 + v52, 1, 1, v53);
  v135 = v2;
  sub_21680C2C0(v2, &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v55 = swift_allocObject();
  sub_21680C578(&v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + v54);
  v56 = v51[12];
  *(v1 + v56) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v57 = v1 + v51[13];
  *v57 = swift_getKeyPath();
  v57[40] = 0;
  v1[5] = sub_21680C060;
  v1[6] = v55;
  v1[7] = 0;
  v1[8] = 0;
  v138[3] = v136;
  v138[4] = sub_216809AAC(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(v138);
  sub_216CCAE64();
  v108 = v32;
  v58 = (v1 + *(v32 + 36));
  sub_2167B7D58(v138, (v58 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216809AAC(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  OUTLINED_FUNCTION_42_0();
  *v58 = sub_217008CF4();
  v58[1] = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(v138);
  sub_216DE8ED8();
  v60 = *(v20 + 28);
  v138[3] = MEMORY[0x277D84030];
  v138[0] = swift_allocObject();
  sub_216788294(&v23[v60], v138[0] + 16);
  sub_21680CFD0(v23, type metadata accessor for TopSearchLockup);
  OUTLINED_FUNCTION_94_0();
  v117 = v50;
  sub_216DE8ED8();
  v61 = sub_21680B98C(type metadata accessor for TopSearchLockup);
  v63 = v62;
  v64 = OUTLINED_FUNCTION_22_4();
  sub_21680CFD0(v64, v65);
  if (v63)
  {
    v66 = MEMORY[0x277D837D0];
  }

  else
  {
    v61 = 0;
    v66 = 0;
    v137[2] = 0;
  }

  v137[0] = v61;
  v137[1] = v63;
  v137[3] = v66;
  sub_21700D8D4();
  OUTLINED_FUNCTION_36_6(v137);
  OUTLINED_FUNCTION_36_6(v138);
  type metadata accessor for GenericItemStateObserver(0);
  sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
  OUTLINED_FUNCTION_8();
  sub_2170081B4();
  OUTLINED_FUNCTION_94_0();
  sub_216EB9260(v67);

  v68 = v112;
  v69 = v133;
  v70 = v118;
  (*(v112 + 104))(v133, *MEMORY[0x277D2A4B0], v118);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
  v71 = *(v106 + 48);
  v72 = v115;
  sub_216683A80(v58, v115, &qword_27CAB8A00, &qword_21706C3D0);
  sub_216683A80(v69, v72 + v71, &qword_27CAB8A00, &qword_21706C3D0);
  OUTLINED_FUNCTION_46_0(v72);
  v73 = v107;
  if (v74)
  {
    OUTLINED_FUNCTION_36_6(v69);
    OUTLINED_FUNCTION_36_6(v58);
    OUTLINED_FUNCTION_46_0(v72 + v71);
    if (v74)
    {
      sub_216699778(v72, &qword_27CAB8A00);
LABEL_15:
      v138[3] = MEMORY[0x277D839B0];
      LOBYTE(v138[0]) = 1;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_216683A80(v72, v107, &qword_27CAB8A00, &qword_21706C3D0);
  OUTLINED_FUNCTION_46_0(v72 + v71);
  if (v74)
  {
    OUTLINED_FUNCTION_36_6(v133);
    OUTLINED_FUNCTION_36_6(v58);
    (*(v68 + 8))(v73, v70);
LABEL_12:
    sub_216699778(v72, &qword_27CAB89F8);
    goto LABEL_13;
  }

  v75 = v72 + v71;
  v76 = v104;
  (*(v68 + 32))(v104, v75, v70);
  sub_216809AAC(&qword_280E4A468, MEMORY[0x277D2A4B8]);
  v77 = sub_21700E494();
  v78 = *(v68 + 8);
  v78(v76, v70);
  sub_216699778(v133, &qword_27CAB8A00);
  v79 = OUTLINED_FUNCTION_8();
  sub_216699778(v79, v80);
  v78(v73, v70);
  sub_216699778(v72, &qword_27CAB8A00);
  if (v77)
  {
    goto LABEL_15;
  }

LABEL_13:
  memset(v138, 0, 32);
LABEL_16:
  v81 = v109;
  v82 = v134;
  sub_21700D8C4();
  v83 = *(v114 + 8);
  v84 = v116;
  v83(v82, v116);
  sub_216699778(v138, &unk_27CABF7A0);
  v85 = sub_21680C078();
  v86 = v110;
  v87 = v108;
  sub_21700A204();
  v83(v81, v84);
  v88 = sub_216699778(v1, &qword_27CAB8A08);
  v134 = &v103;
  MEMORY[0x28223BE20](v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A48, &unk_21701AD10);
  v138[0] = v87;
  v138[1] = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = sub_21680C194(&qword_280E3DBE8, &qword_27CAB8A48, &unk_21701AD10, sub_21680C138);
  v92 = v120;
  v93 = v119;
  sub_21700A4C4();
  v94 = (*(v113 + 8))(v86, v93);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_28_14();
  v138[0] = v93;
  v138[1] = v89;
  v138[2] = OpaqueTypeConformance2;
  v138[3] = v91;
  swift_getOpaqueTypeConformance2();
  sub_21680C194(qword_280E3AD80, &qword_27CAB8A50, &unk_217064CD0, sub_21680C20C);
  OUTLINED_FUNCTION_94_0();
  v95 = v124;
  sub_21700A4C4();
  (*(v121 + 8))(v92, v95);
  v96 = v125;
  v97 = (v125 + *(v111 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
  sub_217008C04();
  *v97 = swift_getKeyPath();
  (*(v122 + 32))(v96, OpaqueTypeConformance2, v126);
  sub_21700B3B4();
  sub_217008BB4();
  v98 = v127;
  sub_2167C5834(v96, v127, &qword_27CAB8A28, &qword_21701ACF0);
  memcpy((v98 + *(v123 + 36)), v138, 0x70uLL);
  v99 = v130;
  sub_216CCAE64();
  OUTLINED_FUNCTION_94_0();
  sub_216E30884();
  (*(v131 + 8))(v99, v136);
  sub_216699778(v98, &qword_27CAB8A30);
  KeyPath = swift_getKeyPath();
  v101 = v132;
  (*(v128 + 32))(v132, OpaqueTypeConformance2, v129);
  v102 = v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A68, &unk_21701AD90) + 36);
  *v102 = KeyPath;
  *(v102 + 8) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216803B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for TopSearchLockupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A78, &qword_21701ADB8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  *v8 = sub_2170093B4();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A80, &qword_21701ADC0);
  sub_216803F70(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A88, &qword_21701ADC8) + 36)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C3D0 != -1)
  {
    swift_once();
  }

  v12 = sub_217008B34();
  v13 = __swift_project_value_buffer(v12, qword_280E2C3D8);
  sub_21680C2C0(v13, v10);
  *(v10 + *(v11 + 36)) = 0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A98, &qword_21701ADD8) + 36)] = xmmword_21701AB40;
  v14 = sub_217009C84();
  v20[0] = v20;
  v15 = &v8[*(v6 + 36)];
  *v15 = v14;
  *(v15 + 8) = xmmword_21701AB50;
  *(v15 + 24) = xmmword_21701AB50;
  v15[40] = 0;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  sub_21680C2C0(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_21680C578(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_21680C37C();
  sub_21680DFBC(qword_280E2BAE8, &qword_27CAB8AA0);
  sub_216809AAC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  sub_21700A394();

  return sub_216699778(v8, &qword_27CAB8A78);
}

uint64_t sub_216803F70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v94 = sub_2170067A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v88 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TopSearchLockup(0);
  MEMORY[0x28223BE20](v83);
  v84 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v83 - v6;
  v86 = type metadata accessor for TopSearchLockupView.TitleView(0);
  MEMORY[0x28223BE20](v86);
  v89 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AB0, &qword_21701ADF0);
  MEMORY[0x28223BE20](v87);
  v92 = &v83 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AB8, &qword_21701ADF8);
  MEMORY[0x28223BE20](v102);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v83 - v11;
  v97 = sub_217008844();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AC0, &qword_21701AE00);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = &v83 - v17;
  v95 = sub_217008C74();
  v18 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AC8, &qword_21701AE08);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AD0, &qword_21701AE10);
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AD8, &qword_21701AE18);
  MEMORY[0x28223BE20](v27);
  v99 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v83 - v30;
  MEMORY[0x28223BE20](v32);
  v98 = &v83 - v33;
  *v23 = sub_2170091A4();
  *(v23 + 1) = 0x4028000000000000;
  v23[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE0, &unk_21701AE20);
  sub_2168049E8(a1, &v23[*(v34 + 44)]);
  sub_217008C54();
  v35 = a1;
  v36 = 0.0;
  if (!sub_216806848())
  {
    type metadata accessor for TopSearchLockupView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    v36 = __src[0] + 0.0 + 30.0;
  }

  v37 = &v26[*(v24 + 36)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8, &qword_2170454A0);
  (*(v18 + 32))(&v37[*(v38 + 40)], v20, v95);
  *v37 = v36;
  v37[8] = 0;
  sub_2167C5834(v23, v26, &qword_27CAB8AC8, &qword_21701AE08);
  v39 = sub_21700B3B4();
  v41 = v40;
  v42 = &v31[*(v27 + 36)];
  sub_21680692C(v35, v42);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AF0, &qword_21701AE30) + 36));
  *v43 = v39;
  v43[1] = v41;
  sub_2167C5834(v26, v31, &qword_27CAB8AD0, &qword_21701AE10);
  v44 = v98;
  sub_2167C5834(v31, v98, &qword_27CAB8AD8, &qword_21701AE18);
  v45 = type metadata accessor for TopSearchLockupView(0);
  sub_216C0C570(v45, v46, v47, v48, v49, v50, v51, v52, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  LOBYTE(v39) = sub_217008834();
  (*(v96 + 8))(v13, v97);
  if (v39)
  {
    v53 = v85;
    sub_216DE8ED8();
    v54 = v88;
    sub_216CCAE64();
    v55 = v84;
    sub_216DE8ED8();
    sub_216683A80(v55 + *(v83 + 24), __src, &qword_27CAB6DB0, &qword_217016C00);
    sub_21680CFD0(v55, type metadata accessor for TopSearchLockup);
    v56 = __src[3];
    sub_216699778(__src, &qword_27CAB6DB0);
    v57 = v100;
    if (v56 == 0.0)
    {
      v58 = sub_2168063A4();
    }

    else
    {
      v58 = 0;
    }

    v61 = v89;
    sub_21680C578(v53, v89);
    v62 = v86;
    (*(v93 + 32))(v61 + *(v86 + 20), v54, v94);
    *(v61 + *(v62 + 24)) = v58 & 1;
    *(v61 + *(v62 + 28)) = 2;
    sub_21700B3C4();
    sub_217008BB4();
    v63 = v61;
    v64 = v92;
    sub_21680C578(v63, v92);
    memcpy((v64 + *(v87 + 36)), __src, 0x70uLL);
    v65 = sub_217009CA4();
    sub_217007F24();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v91;
    sub_2167C5834(v64, v91, &qword_27CAB8AB0, &qword_21701ADF0);
    v60 = v102;
    v75 = v74 + *(v102 + 36);
    *v75 = v65;
    *(v75 + 8) = v67;
    *(v75 + 16) = v69;
    *(v75 + 24) = v71;
    *(v75 + 32) = v73;
    *(v75 + 40) = 0;
    v76 = v74;
    v77 = v90;
    sub_2167C5834(v76, v90, &qword_27CAB8AB8, &qword_21701ADF8);
    sub_2167C5834(v77, v57, &qword_27CAB8AB8, &qword_21701ADF8);
    v59 = 0;
  }

  else
  {
    v59 = 1;
    v60 = v102;
    v57 = v100;
  }

  __swift_storeEnumTagSinglePayload(v57, v59, 1, v60);
  v78 = v99;
  sub_216683A80(v44, v99, &qword_27CAB8AD8, &qword_21701AE18);
  v79 = v101;
  sub_216683A80(v57, v101, &qword_27CAB8AC0, &qword_21701AE00);
  v80 = v103;
  sub_216683A80(v78, v103, &qword_27CAB8AD8, &qword_21701AE18);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AF8, &unk_21701AE38);
  sub_216683A80(v79, v80 + *(v81 + 48), &qword_27CAB8AC0, &qword_21701AE00);
  sub_216699778(v57, &qword_27CAB8AC0);
  sub_216699778(v44, &qword_27CAB8AD8);
  sub_216699778(v79, &qword_27CAB8AC0);
  return sub_216699778(v78, &qword_27CAB8AD8);
}

uint64_t sub_2168049E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v159 = type metadata accessor for DownloadStatusIndicator(0);
  MEMORY[0x28223BE20](v159);
  v162 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v170 = &v129 - v5;
  v6 = sub_217008844();
  v156 = *(v6 - 8);
  v157 = v6;
  MEMORY[0x28223BE20](v6);
  v155 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for TopSearchLockupView.TitleView(0);
  MEMORY[0x28223BE20](v149);
  v151 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AB0, &qword_21701ADF0);
  MEMORY[0x28223BE20](v150);
  v154 = &v129 - v9;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B80, &unk_21701AF60);
  MEMORY[0x28223BE20](v153);
  v160 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v152 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v169 = &v129 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v15 - 8);
  v136 = &v129 - v16;
  *&v163 = type metadata accessor for TopSearchLockup(0);
  MEMORY[0x28223BE20](v163);
  v147 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v148 = &v129 - v19;
  MEMORY[0x28223BE20](v20);
  v140 = &v129 - v21;
  MEMORY[0x28223BE20](v22);
  v134 = &v129 - v23;
  MEMORY[0x28223BE20](v24);
  v133 = &v129 - v25;
  v135 = type metadata accessor for ArtworkView(0);
  MEMORY[0x28223BE20](v135);
  *&v145 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B88, &unk_21701AF70);
  MEMORY[0x28223BE20](v137);
  v138 = &v129 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B90, &qword_217033650);
  MEMORY[0x28223BE20](v139);
  v143 = &v129 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B98, &qword_21701AF80);
  MEMORY[0x28223BE20](v29);
  v141 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v142 = &v129 - v32;
  v33 = sub_2170067A4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v146 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v132 = &v129 - v37;
  MEMORY[0x28223BE20](v38);
  v144 = &v129 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v129 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BA0, &qword_21701AF88);
  MEMORY[0x28223BE20](v43 - 8);
  v158 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v129 - v46;
  v167 = a1;
  *&v168 = *a1;
  sub_216CCAE64();
  LODWORD(a1) = (*(v34 + 88))(v42, v33);
  v48 = *MEMORY[0x277D2A438];
  *&v164 = v34;
  v49 = *(v34 + 8);
  *&v166 = v33;
  v49(v42, v33);
  v165 = v47;
  if (a1 == v48)
  {
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v29);
    v50 = v163;
    goto LABEL_10;
  }

  v130 = v49;
  v131 = v29;
  v51 = v133;
  sub_216DE8ED8();
  v52 = v136;
  sub_216ABFA0C(v136);
  sub_21680CFD0(v51, type metadata accessor for TopSearchLockup);
  v53 = v144;
  sub_216CCAE64();
  v54 = sub_2168F9850(v53);
  v56 = v55;
  v57 = v134;
  sub_216DE8ED8();
  v58 = *(v57 + *(v163 + 56));
  sub_21680CFD0(v57, type metadata accessor for TopSearchLockup);
  if (v58 >= 2)
  {
    v59 = 99.5555556;
  }

  else
  {
    v59 = 56.0;
  }

  v60 = v52;
  v61 = v145;
  sub_2167C5834(v60, v145, &qword_27CAB6D60, &qword_217014E40);
  v62 = v135;
  v63 = (v61 + *(v135 + 20));
  *v63 = v54;
  v63[1] = v56;
  v64 = v61 + *(v62 + 24);
  *v64 = v59;
  *(v64 + 8) = 0x404C000000000000;
  v65 = sub_21700B3B4();
  v135 = v66;
  v136 = v65;
  v67 = *(v167 + *(type metadata accessor for TopSearchLockupView(0) + 40));
  if (v67)
  {

    v68 = v144;
    sub_216CCAE64();
    v69 = v164;
    v70 = v132;
    v71 = v166;
    (*(v164 + 16))(v132, v68, v166);
    v72 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v67;
    (*(v69 + 32))(v73 + v72, v70, v71);
    type metadata accessor for PlaybackPresenter(0);
    sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

    v74 = sub_217008684();
    v76 = v75;
    v130(v68, v71);
    v77 = v138;
    sub_21680C578(v145, v138);
    v78 = v136;
    v79 = v77 + *(v137 + 36);
    *v79 = sub_21680CE98;
    *(v79 + 8) = v73;
    *(v79 + 16) = 0;
    *(v79 + 24) = v74;
    *(v79 + 32) = v76;
    v80 = v135;
    *(v79 + 40) = v78;
    *(v79 + 48) = v80;
    v81 = v140;
    sub_216DE8ED8();
    v50 = v163;
    v82 = *(v81 + *(v163 + 56));
    sub_21680CFD0(v81, type metadata accessor for TopSearchLockup);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v83 = qword_280E73AA0;
    v84 = byte_280E73AA8;
    v85 = qword_280E73AB0;
    v86 = v143;
    sub_2167C5834(v77, v143, &qword_27CAB8B88, &unk_21701AF70);
    v87 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BA8, &qword_21701AF90) + 36);
    *v87 = v82;
    v145 = xmmword_21701AB60;
    *(v87 + 8) = xmmword_21701AB60;
    *(v87 + 24) = 256;
    KeyPath = swift_getKeyPath();
    LOBYTE(v171) = v84;
    LOBYTE(v189) = 0;
    v89 = v86 + *(v139 + 36);
    *v89 = v83;
    *(v89 + 8) = v84;
    *(v89 + 9) = v188[0];
    *(v89 + 12) = *(v188 + 3);
    *(v89 + 16) = v85;
    *(v89 + 24) = v82;
    *(v89 + 25) = v179;
    *(v89 + 28) = *(&v179 + 3);
    *(v89 + 32) = v145;
    *(v89 + 48) = KeyPath;
    *(v89 + 56) = 0;

    v90 = sub_21700B3B4();
    v92 = v91;
    v93 = v131;
    v94 = v141;
    v95 = &v141[*(v131 + 36)];
    sub_216805B70(v95);
    v96 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB0, &qword_21701AFC8) + 36));
    *v96 = v90;
    v96[1] = v92;
    sub_2167C5834(v86, v94, &qword_27CAB8B90, &qword_217033650);
    v97 = v142;
    sub_2167C5834(v94, v142, &qword_27CAB8B98, &qword_21701AF80);
    v47 = v165;
    sub_2167C5834(v97, v165, &qword_27CAB8B98, &qword_21701AF80);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v93);
LABEL_10:
    v98 = v146;
    v99 = v148;
    sub_216DE8ED8();
    sub_216CCAE64();
    v100 = v147;
    sub_216DE8ED8();
    sub_216683A80(v100 + *(v50 + 24), v188, &qword_27CAB6DB0, &qword_217016C00);
    sub_21680CFD0(v100, type metadata accessor for TopSearchLockup);
    v101 = v188[3];
    sub_216699778(v188, &qword_27CAB6DB0);
    if (v101)
    {
      v102 = 0;
    }

    else
    {
      v102 = sub_2168063A4();
    }

    v103 = v151;
    sub_21680C578(v99, v151);
    v104 = v149;
    (*(v164 + 32))(v103 + *(v149 + 20), v98, v166);
    *(v103 + *(v104 + 24)) = v102 & 1;
    *(v103 + *(v104 + 28)) = 1;
    sub_21700B3C4();
    sub_217008BB4();
    v105 = v154;
    sub_21680C578(v103, v154);
    memcpy((v105 + *(v150 + 36)), v188, 0x70uLL);
    v106 = type metadata accessor for TopSearchLockupView(0);
    v107 = v155;
    sub_216C0C570(v106, v108, v109, v110, v111, v112, v113, v114, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    v115 = sub_217008834();
    (*(v156 + 8))(v107, v157);
    if (v115)
    {
      v116 = 0.0;
    }

    else
    {
      v116 = 1.0;
    }

    v117 = v152;
    sub_2167C5834(v105, v152, &qword_27CAB8AB0, &qword_21701ADF0);
    *(v117 + *(v153 + 36)) = v116;
    sub_2167C5834(v117, v169, &qword_27CAB8B80, &unk_21701AF60);
    type metadata accessor for GenericItemStateObserver(0);
    sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
    sub_2170081B4();
    sub_216EB9284(v170);

    *&v179 = 0x403C000000000000;
    sub_2167CD8D8();
    sub_2170082B4();
    *&v179 = 0x402C000000000000;
    sub_2170082B4();
    if (sub_216806848())
    {
      LOBYTE(v189) = 0;
      v178 = 0;
    }

    else
    {
      if (sub_216806848())
      {
        v168 = 0u;
        LODWORD(v167) = 255;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
LABEL_22:
        v118 = v158;
        sub_216683A80(v47, v158, &qword_27CAB8BA0, &qword_21701AF88);
        v119 = v169;
        v120 = v160;
        sub_216683A80(v169, v160, &qword_27CAB8B80, &unk_21701AF60);
        v121 = v170;
        v122 = v162;
        sub_21680C2C0(v170, v162);
        v123 = v161;
        sub_216683A80(v118, v161, &qword_27CAB8BA0, &qword_21701AF88);
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BC0, &qword_21701AFD8);
        sub_216683A80(v120, v123 + v124[12], &qword_27CAB8B80, &unk_21701AF60);
        sub_21680C2C0(v122, v123 + v124[16]);
        v125 = v123 + v124[20];
        v126 = v166;
        *v125 = v168;
        *(v125 + 16) = v126;
        v127 = v163;
        *(v125 + 32) = v164;
        *(v125 + 48) = v127;
        *(v125 + 64) = v167;
        sub_21680CFD0(v121, type metadata accessor for DownloadStatusIndicator);
        sub_216699778(v119, &qword_27CAB8B80);
        sub_216699778(v165, &qword_27CAB8BA0);
        sub_21680CFD0(v122, type metadata accessor for DownloadStatusIndicator);
        sub_216699778(v120, &qword_27CAB8B80);
        return sub_216699778(v118, &qword_27CAB8BA0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      sub_2170082C4();
      sub_21700B3B4();
      sub_2170083C4();
      v186 = 1;
      v185 = v190;
      v184 = v192;
      v187 = 1;
      v171 = 0;
      v172 = 1;
      v173 = v189;
      v174 = v190;
      v175 = v191;
      v176 = v192;
      v177 = v193;
      v178 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB8, &qword_21701AFD0);
    sub_21680CEF8();
    sub_21680CF4C();
    sub_217009554();
    v166 = v180;
    v168 = v179;
    v163 = v182;
    v164 = v181;
    LODWORD(v167) = v183;
    goto LABEL_22;
  }

  type metadata accessor for PlaybackPresenter(0);
  sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216805B70@<X0>(uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BC8, &qword_21701AFE0);
  MEMORY[0x28223BE20](v37);
  v35 = (&v33 - v2);
  v3 = sub_217006864();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8, &unk_21701ACC0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00, &qword_21706C3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  type metadata accessor for TopSearchLockupView(0);
  type metadata accessor for GenericItemStateObserver(0);
  sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
  v18 = v4;
  sub_2170081B4();
  sub_216EB9260(v17);

  (*(v4 + 104))(v14, *MEMORY[0x277D2A4B0], v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_216683A80(v17, v9, &qword_27CAB8A00, &qword_21706C3D0);
  sub_216683A80(v14, &v9[v19], &qword_27CAB8A00, &qword_21706C3D0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_216699778(v14, &qword_27CAB8A00);
    sub_216699778(v17, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) == 1)
    {
      sub_216699778(v9, &qword_27CAB8A00);
      v20 = v37;
LABEL_8:
      v28 = sub_2170091A4();
      v29 = v35;
      *v35 = v28;
      v29[1] = 0;
      *(v29 + 16) = 1;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD0, &qword_21701AFE8);
      sub_2168060E4(v29 + *(v30 + 44));
      *(v29 + *(v20 + 36)) = xmmword_21701AB70;
      v31 = v29;
      v23 = v38;
      sub_2167C5834(v31, v38, &qword_27CAB8BC8, &qword_21701AFE0);
      v22 = 0;
      return __swift_storeEnumTagSinglePayload(v23, v22, 1, v20);
    }
  }

  else
  {
    v21 = v36;
    sub_216683A80(v9, v36, &qword_27CAB8A00, &qword_21706C3D0);
    if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
    {
      v24 = &v9[v19];
      v25 = v34;
      (*(v18 + 32))(v34, v24, v3);
      sub_216809AAC(&qword_280E4A468, MEMORY[0x277D2A4B8]);
      v26 = sub_21700E494();
      v27 = *(v18 + 8);
      v27(v25, v3);
      sub_216699778(v14, &qword_27CAB8A00);
      sub_216699778(v17, &qword_27CAB8A00);
      v27(v21, v3);
      sub_216699778(v9, &qword_27CAB8A00);
      v20 = v37;
      if ((v26 & 1) == 0)
      {
        v22 = 1;
        v23 = v38;
        return __swift_storeEnumTagSinglePayload(v23, v22, 1, v20);
      }

      goto LABEL_8;
    }

    sub_216699778(v14, &qword_27CAB8A00);
    sub_216699778(v17, &qword_27CAB8A00);
    (*(v18 + 8))(v21, v3);
  }

  sub_216699778(v9, &qword_27CAB89F8);
  v22 = 1;
  v20 = v37;
  v23 = v38;
  return __swift_storeEnumTagSinglePayload(v23, v22, 1, v20);
}

uint64_t sub_2168060E4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD8, &qword_217041CB0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - v9);
  v11 = sub_21700ADB4();
  sub_217009DE4();
  v12 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v12);
  v13 = sub_217009DF4();
  sub_216699778(v3, &qword_27CAB81D0);
  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE0, &unk_21701B000) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
  v17 = *MEMORY[0x277CE1058];
  v18 = sub_21700ADF4();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v10 = v11;
  v10[1] = KeyPath;
  v10[2] = v13;
  v19 = sub_21700AC54();
  v20 = swift_getKeyPath();
  v21 = (v10 + *(v5 + 44));
  *v21 = v20;
  v21[1] = v19;
  sub_216683A80(v10, v7, &qword_27CAB8BD8, &qword_217041CB0);
  v22 = v26;
  sub_216683A80(v7, v26, &qword_27CAB8BD8, &qword_217041CB0);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE8, &qword_217041D10) + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_216699778(v10, &qword_27CAB8BD8);
  return sub_216699778(v7, &qword_27CAB8BD8);
}

uint64_t sub_2168063A4()
{
  v1 = sub_21700BA94();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2170067A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21700BAB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_216CCAE64();
  v17 = *(v0 + *(type metadata accessor for TopSearchLockupView(0) + 40));
  if (!v17)
  {
    type metadata accessor for PlaybackPresenter(0);
    sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_2167B7D58(v17 + 16, v29);
  sub_216DDF0DC(v29, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  (*(v4 + 8))(v6, v3);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v19 = *(v11 + 32);
    v19(v16, v9, v10);
    v19(v13, v16, v10);
    v20 = (*(v11 + 88))(v13, v10);
    if (v20 == *MEMORY[0x277D2AE90])
    {
      (*(v11 + 96))(v13, v10);
      v22 = v26;
      v21 = v27;
      v23 = v28;
      (*(v27 + 32))(v26, v13, v28);
      v24 = (*(v21 + 88))(v22, v23);
      if (v24 != *MEMORY[0x277D2AE98] && v24 != *MEMORY[0x277D2AED0])
      {
        (*(v21 + 8))(v22, v23);
        return 1;
      }
    }

    else if (v20 != *MEMORY[0x277D2AEE0])
    {
      (*(v11 + 8))(v13, v10);
      return 1;
    }

    return 0;
  }

  sub_216699778(v9, &qword_27CAB7090);
  return 1;
}

BOOL sub_216806848()
{
  v0 = type metadata accessor for TopSearchLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DE8ED8();
  sub_216683A80(&v3[*(v1 + 32)], v7, &qword_27CAB6DB0, &qword_217016C00);
  sub_21680CFD0(v3, type metadata accessor for TopSearchLockup);
  v4 = v8 != 0;
  sub_216699778(v7, &qword_27CAB6DB0);
  return v4;
}

uint64_t sub_21680692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B00, &qword_21701AE48);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  if (sub_216806848())
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    *v6 = sub_2170091A4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B08, &qword_21701AE50);
    sub_216806A60(a1, &v6[*(v8 + 44)]);
    *&v6[*(v4 + 36)] = xmmword_21701AB80;
    sub_2167C5834(v6, a2, &qword_27CAB8B00, &qword_21701AE48);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

uint64_t sub_216806A60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for TopSearchLockupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_2170067A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B10, &qword_21701AE58);
  MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v36 - v16);
  sub_216CCAE64();
  v18 = sub_217006784();
  v37 = v19;
  v38 = v18;
  (*(v11 + 8))(v13, v10);
  sub_21680C2C0(a1, v9);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_21680C578(v9, v21 + v20);
  sub_21680C2C0(a1, v6);
  v22 = swift_allocObject();
  sub_21680C578(v6, v22 + v20);
  v23 = v37;
  *v17 = v38;
  v17[1] = v23;
  v17[2] = sub_21680C5F4;
  v17[3] = v21;
  v17[4] = sub_21680C658;
  v17[5] = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B18, &qword_21701AE60);
  v25 = *(v24 + 60);
  *(v17 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v26 = v17 + *(v24 + 64);
  *v26 = swift_getKeyPath();
  v26[40] = 0;
  if (qword_280E2C380 != -1)
  {
    swift_once();
  }

  v27 = sub_217008C14();
  v28 = __swift_project_value_buffer(v27, qword_280E2C388);
  KeyPath = swift_getKeyPath();
  v30 = (v17 + *(v39 + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
  (*(*(v27 - 8) + 16))(v30 + *(v31 + 28), v28, v27);
  *v30 = KeyPath;
  v32 = v40;
  sub_216683A80(v17, v40, &qword_27CAB8B10, &qword_21701AE58);
  v33 = v41;
  *v41 = 0;
  *(v33 + 8) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B20, &unk_21701AE68);
  sub_216683A80(v32, v33 + *(v34 + 48), &qword_27CAB8B10, &qword_21701AE58);
  sub_216699778(v17, &qword_27CAB8B10);
  return sub_216699778(v32, &qword_27CAB8B10);
}

uint64_t sub_216806EDC@<X0>(void *a1@<X8>)
{
  v65 = a1;
  v54 = sub_21700D704();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21700D284();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v55);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for TopSearchLockup(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for MenuConfiguration(0);
  v61 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v64 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v62 = v23;
  MEMORY[0x28223BE20](v24);
  v59 = &v49 - v25;
  v60 = sub_2170067A4();
  v26 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = v27;
  v58 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v56 = &v49 - v29;
  sub_216CCAE64();
  sub_216DE8ED8();
  v30 = &v17[v9[20]];
  v63 = v7;
  sub_216683A80(v30, v7, &qword_27CAB6A00, &unk_217016B60);
  sub_21680CFD0(v17, type metadata accessor for TopSearchLockup);
  sub_216DE8ED8();
  LOBYTE(v17) = v14[v9[18]];
  sub_21680CFD0(v14, type metadata accessor for TopSearchLockup);
  *v4 = v17;
  swift_storeEnumTagMultiPayload();
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  sub_216DE8ED8();
  sub_216683A80(&v11[v9[8]], v66, &qword_27CAB6DB0, &qword_217016C00);
  sub_21680CFD0(v11, type metadata accessor for TopSearchLockup);
  v31 = v67;
  if (v67)
  {
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v32 = v49;
    sub_21700CE54();
    v33 = v51;
    sub_21700D274();
    v34 = sub_21700D6C4();
    v31 = v35;
    (*(v53 + 8))(v33, v54);
    (*(v50 + 8))(v32, v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  else
  {
    sub_216699778(v66, &qword_27CAB6DB0);
    v34 = 0;
  }

  v36 = v63;
  sub_216683A80(v63, v22, &qword_27CAB6A00, &unk_217016B60);
  sub_21680C2C0(v4, &v22[v18[5]]);
  v37 = &v22[v18[6]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v22[v18[7]] = 0;
  sub_216683A80(v68, &v22[v18[8]], &qword_27CAB6DB0, &qword_217016C00);
  if (!v31)
  {
    v34 = 0;
    v31 = 0xE000000000000000;
  }

  sub_216699778(v68, &qword_27CAB6DB0);
  sub_21680CFD0(v4, type metadata accessor for MenuContext);
  sub_216699778(v36, &qword_27CAB6A00);
  v38 = &v22[v18[9]];
  *v38 = v34;
  v38[1] = v31;
  v39 = v59;
  sub_21680C578(v22, v59);
  v40 = *(v26 + 32);
  v41 = v58;
  v42 = v60;
  v40(v58, v56, v60);
  v43 = v64;
  sub_21680C578(v39, v64);
  v44 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v45 = (v57 + *(v61 + 80) + v44) & ~*(v61 + 80);
  v46 = swift_allocObject();
  v40((v46 + v44), v41, v42);
  result = sub_21680C578(v43, v46 + v45);
  v48 = v65;
  *v65 = sub_21680E000;
  v48[1] = v46;
  return result;
}

uint64_t sub_216807630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v64[1] = a2;
  v64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v64[0]);
  v3 = v64 - v2;
  v4 = sub_217009574();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B28, &qword_21701AE78);
  MEMORY[0x28223BE20](v7);
  v9 = (v64 - v8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B30, &qword_21701AE80);
  MEMORY[0x28223BE20](v68);
  v11 = v64 - v10;
  v12 = sub_21700ADB4();
  if (qword_280E2C408 != -1)
  {
    swift_once();
  }

  v13 = sub_21700ADF4();
  v14 = __swift_project_value_buffer(v13, qword_280E73B30);
  KeyPath = swift_getKeyPath();
  v16 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0) + 36));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
  (*(*(v13 - 8) + 16))(v16 + *(v17 + 28), v14, v13);
  *v16 = KeyPath;
  *v9 = v12;
  if (qword_280E2C410 != -1)
  {
    swift_once();
  }

  v18 = qword_280E73B48;
  v19 = swift_getKeyPath();
  v20 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B40, &unk_21704A010) + 36));
  *v20 = v19;
  v20[1] = v18;
  v21 = qword_280E2C3A8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_280E2C3B0;
  v23 = swift_getKeyPath();
  v24 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B48, &qword_21701AF20) + 36));
  *v24 = v23;
  v24[1] = v22;
  type metadata accessor for TopSearchLockupView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v25 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B50, &qword_21701AF28) + 36));
  v26 = v70;
  *v25 = v69;
  v25[1] = v26;
  v25[2] = v71;
  v27 = v9 + *(v7 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B58, &qword_21701AF30);
  sub_217008C54();
  *v27 = 0;
  sub_217008C84();
  sub_21680C6E8();
  sub_216809AAC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
  v28 = v66;
  sub_21700A3E4();
  (*(v65 + 8))(v6, v28);
  sub_216699778(v9, &qword_27CAB8B28);
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B60, &qword_21701AF38) + 36)] = 256;
  LOBYTE(v28) = sub_217009CB4();
  sub_217007F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B68, &qword_21701AF40) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  LOBYTE(v28) = sub_217009CD4();
  sub_217007F24();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B70, &qword_21701AF48) + 36)];
  *v46 = v28;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  LOBYTE(v28) = sub_217009C94();
  sub_2170082C4();
  sub_217007F24();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B78, &unk_21701AF50) + 36)];
  *v55 = v28;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  LOBYTE(v28) = sub_217009CA4();
  sub_2170082C4();
  sub_217007F24();
  v56 = &v11[*(v68 + 36)];
  *v56 = v28;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  v61 = *MEMORY[0x277CDF988];
  v62 = sub_217008844();
  (*(*(v62 - 8) + 104))(v3, v61, v62);
  sub_216809AAC(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    sub_21680CA54();
    sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_216699778(v3, &qword_27CAB75D0);
    return sub_216699778(v11, &qword_27CAB8B30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216807DC4@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v35 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v35);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TopSearchLockup(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for MenuConfiguration(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v32 = sub_2170067A4();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_216CCAE64();
  sub_216DE8ED8();
  sub_216DE8ED8();
  v20 = v6[*(v4 + 72)];
  sub_21680CFD0(v6, type metadata accessor for TopSearchLockup);
  *v2 = v20;
  swift_storeEnumTagMultiPayload();
  sub_2168A63BC();
  sub_21680CFD0(v2, type metadata accessor for MenuContext);
  sub_21680CFD0(v9, type metadata accessor for TopSearchLockup);
  v21 = *(v15 + 32);
  v22 = v31;
  v23 = v19;
  v24 = v32;
  v21(v31, v23, v32);
  v25 = v33;
  sub_21680C578(v14, v33);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = (v16 + *(v34 + 80) + v26) & ~*(v34 + 80);
  v28 = swift_allocObject();
  v21((v28 + v26), v22, v24);
  result = sub_21680C578(v25, v28 + v27);
  v30 = v36;
  *v36 = sub_21680C5D0;
  v30[1] = v28;
  return result;
}

uint64_t sub_216808150()
{
  v0 = type metadata accessor for TopSearchLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_2170067A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216CCAE64();
  sub_216DE8ED8();
  sub_216683A80(&v3[*(v1 + 32)], v9, &qword_27CAB6DB0, &qword_217016C00);
  sub_21680CFD0(v3, type metadata accessor for TopSearchLockup);
  return sub_2167BA710(v6, v9);
}

uint64_t sub_216808278()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_2170075A4();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TopSearchLockup(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE8ED8();
  sub_216683A80(&v12[*(v10 + 32)], v32, &qword_27CAB6DB0, &qword_217016C00);
  sub_21680CFD0(v12, type metadata accessor for TopSearchLockup);
  sub_216CCAE64();
  type metadata accessor for TopSearchLockupView(0);
  v13 = sub_216C0C534(v31);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v27, v28, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v32[0], v32[1], v32[2]);
  sub_216DE8ED8();
  v21 = v12[*(v10 + 72)];
  sub_21680CFD0(v12, type metadata accessor for TopSearchLockup);
  *v2 = v21;
  v22 = type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v22);
  sub_2167B9BDC(v32, v8, v31, v5, v2, v23, v24, v25, v27, v28, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v32[0], v32[1], v32[2]);
  sub_216699778(v2, &qword_27CAB6DE8);
  (*(v29 + 8))(v5, v30);
  sub_216699778(v31, &qword_27CAB7310);
  (*(v27 + 8))(v8, v28);
  return sub_216699778(v32, &qword_27CAB6DB0);
}

void *sub_2168085A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19[1] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v20 = a1;
  sub_216CCAE64();
  v10 = (*(v5 + 88))(v9, v4);
  v11 = *MEMORY[0x277D2A3B8];
  v12 = *MEMORY[0x277D2A3F8];
  v13 = *MEMORY[0x277D2A3D8];
  v14 = *MEMORY[0x277D2A3E0];
  result = (*(v5 + 8))(v9, v4);
  if (v10 == v11 || v10 == v12 || v10 == v13 || v10 == v14)
  {
    sub_216CCAE64();
    if (*(v20 + *(type metadata accessor for TopSearchLockupView(0) + 40)))
    {

      sub_216ADF378();
      return memcpy(a2, __src, 0x78uLL);
    }

    else
    {
      type metadata accessor for PlaybackPresenter(0);
      sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
      result = sub_217008CD4();
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    a2[14] = 0;
  }

  return result;
}

uint64_t sub_2168087E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0, qword_217019170);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70, &unk_21701ADA0);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v26 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A58, &unk_21701AD20);
  MEMORY[0x28223BE20](v30);
  v27 = &v26 - v7;
  v8 = sub_2170067A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v26 = *a1;
  sub_216CCAE64();
  v13 = (*(v9 + 88))(v12, v8);
  v14 = *MEMORY[0x277D2A3B8];
  v15 = *MEMORY[0x277D2A3F8];
  v16 = *MEMORY[0x277D2A3D8];
  v17 = *MEMORY[0x277D2A3E0];
  (*(v9 + 8))(v12, v8);
  if (v13 == v14 || v13 == v15 || v13 == v16 || v13 == v17)
  {
    type metadata accessor for TopSearchLockupView(0);
    type metadata accessor for GenericItemStateObserver(0);
    sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
    sub_2170081B4();
    sub_216EB92A8(v28);

    sub_2170081B4();
    sub_216EB9284(v29);

    sub_216CCAE64();
    v21 = v27;
    sub_216ADFC6C();
    v22 = v31;
    sub_2167C5834(v21, v31, &qword_27CAB8A58, &unk_21701AD20);
    v23 = 0;
    v24 = v22;
  }

  else
  {
    v23 = 1;
    v24 = v31;
  }

  return __swift_storeEnumTagSinglePayload(v24, v23, 1, v30);
}

uint64_t sub_216808B74@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C10, &qword_21701B150);
  return sub_216808BC8(v2, a2 + *(v4 + 44));
}

uint64_t sub_216808BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C18, &qword_21701B158);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v80 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C20, &qword_21701B160);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  v16 = type metadata accessor for TopSearchLockup(0);
  v17 = v16;
  v18 = *(v16 + 28);
  v85 = a2;
  v86 = a1;
  v19 = (a1 + v18);
  v20 = v19[1];
  v21 = 0x1FBBB1000;
  v87 = v15;
  if (v20)
  {
    v105 = v16;
    v22 = *v19;
    KeyPath = swift_getKeyPath();
    sub_21700DF14();
    v24 = sub_217009E64();
    v25 = swift_getKeyPath();
    LOBYTE(v113[0]) = 0;
    LOBYTE(v107[0]) = 0;
    v106[0] = v22;
    v106[1] = v20;
    LOBYTE(v106[2]) = 0;
    v106[3] = MEMORY[0x277D84F90];
    v106[4] = KeyPath;
    v106[5] = 1;
    LOBYTE(v106[6]) = 0;
    v106[7] = v25;
    v106[8] = v24;
    sub_217009DE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C50, &qword_21701B1C0);
    sub_21680DB9C();
    sub_21700A304();
    memcpy(__dst, v106, 0x48uLL);
    sub_216699778(__dst, &qword_27CAB8C50);
    if (qword_27CAB58F8 != -1)
    {
      swift_once();
    }

    v21 = &unk_278226000;
    if (*(v86 + *(type metadata accessor for TopSearchLockupView.TitleView(0) + 24)) == 1)
    {
      v26 = [objc_opt_self() tertiaryLabelColor];
      v27 = sub_21700AC44();
    }

    else
    {
      v27 = qword_27CAB89E0;
    }

    v15 = v87;
    v17 = v105;
    (*(v5 + 16))(v12, v7, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C28, &qword_21701B168);
    *&v12[*(v31 + 36)] = v27;
    (*(v5 + 8))(v7, v4);
    v29 = v12;
    v30 = 0;
    v28 = v31;
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C28, &qword_21701B168);
    v29 = v12;
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  v32 = v21;
  sub_2167C5834(v12, v15, &qword_27CAB8C20, &qword_21701B160);
  v33 = v86;
  v34 = (v86 + v17[8]);
  v35 = v34[1];
  if (v35)
  {
    v105 = *v34;
    v36 = v35;
  }

  else
  {
    type metadata accessor for TopSearchLockupView.TitleView(0);
    v105 = sub_216C74700();
    v36 = v37;
  }

  v38 = *(v33 + v17[11]);
  sub_21700DF14();
  v39 = sub_217009194();
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_216809AAC(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v41 = sub_217008CF4();
  if (v36)
  {
    v42 = v36;
    v43 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v43 = v105 & 0xFFFFFFFFFFFFLL;
    }

    v44 = v32;
    if (v43)
    {
      v106[0] = v41;
      v106[1] = v40;
      v106[2] = v105;
      v106[3] = v42;
      LOWORD(v106[4]) = v38;
      *(&v106[4] + 2) = v126;
      HIWORD(v106[4]) = v127;
      v106[5] = 0;
      LOBYTE(v106[6]) = 0;
      *(&v106[6] + 1) = *v125;
      HIDWORD(v106[6]) = *&v125[3];
      v106[7] = v39;
      v98 = v106[6];
      v99 = v106[4];
      v100 = v40;
      v101 = v41;
      __dst[0] = v41;
      __dst[1] = v40;
      __dst[2] = v105;
      __dst[3] = v42;
      v103 = v42;
      LOWORD(__dst[4]) = v38;
      HIWORD(__dst[4]) = v127;
      *(&__dst[4] + 2) = v126;
      __dst[5] = 0;
      LOBYTE(__dst[6]) = 0;
      HIDWORD(__dst[6]) = *&v125[3];
      *(&__dst[6] + 1) = *v125;
      __dst[7] = v39;
      sub_21680DAEC(v106, v113);
      sub_21680DB48(__dst);
    }

    else
    {

      v100 = 0;
      v101 = 0;
      v105 = 0;
      v103 = 0;
      v98 = 0;
      v99 = 0;
      v39 = 0;
    }
  }

  else
  {

    v100 = 0;
    v101 = 0;
    v105 = 0;
    v103 = 0;
    v98 = 0;
    v99 = 0;
    v39 = 0;
    v44 = v32;
  }

  v45 = v85;
  v102 = v39;
  v46 = type metadata accessor for TopSearchLockupView.TitleView(0);
  v84 = *(v33 + *(v46 + 28));
  v97 = swift_getKeyPath();
  v128 = 0;
  if (qword_280E2C338 != -1)
  {
    swift_once();
  }

  v47 = qword_280E2C340;
  v95 = swift_getKeyPath();
  v96 = v47;
  v48 = qword_280E2C300;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = *(v33 + *(v46 + 24));
  if (v49)
  {
    v50 = [objc_opt_self() (v44 + 1802)];
    v94 = sub_21700AC44();
  }

  else
  {
    v94 = qword_280E2C308;
  }

  v51 = v44;
  v52 = (v33 + v17[9]);
  v53 = v52[1];
  if (v53)
  {
    v89 = *v52;
    v92 = MEMORY[0x277D84F90];
  }

  else
  {
    v89 = 0;
    v92 = 0;
  }

  v54 = v15;
  v91 = swift_getKeyPath();
  v55 = qword_280E2C320;
  v93 = v53;
  sub_21700DF14();
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_280E2C328;
  v90 = swift_getKeyPath();
  v124 = 0;
  v57 = qword_280E2C2E8;
  v83 = v56;

  if (v57 != -1)
  {
    swift_once();
    if (v49)
    {
      goto LABEL_33;
    }

LABEL_35:
    v88 = qword_280E2C2F0;

    goto LABEL_36;
  }

  if (!v49)
  {
    goto LABEL_35;
  }

LABEL_33:
  v58 = [objc_opt_self() (v51 + 1802)];
  v88 = sub_21700AC44();
LABEL_36:
  v59 = (v33 + v17[10]);
  v60 = *v59;
  v61 = v59[1];
  sub_21700DF14();
  v62 = sub_216809640(v60, v61, v49);
  v64 = v63;
  v86 = v65;
  v82 = v66;
  v81 = swift_getKeyPath();
  v80 = swift_getKeyPath();
  LOBYTE(__dst[0]) = 0;
  v67 = v104;
  sub_216683A80(v54, v104, &qword_27CAB8C20, &qword_21701B160);
  sub_216683A80(v67, v45, &qword_27CAB8C20, &qword_21701B160);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C30, &qword_21701B1A0);
  v69 = v68[12];
  v106[0] = v101;
  v106[1] = v100;
  v106[2] = v105;
  v106[3] = v103;
  v106[4] = v99;
  v106[5] = 0;
  v106[6] = v98;
  v106[7] = v102;
  v70 = v84;
  v106[8] = v97;
  v106[9] = v84;
  LOBYTE(v106[10]) = 0;
  *(&v106[10] + 1) = v129[0];
  HIDWORD(v106[10]) = *(v129 + 3);
  v106[11] = v95;
  v106[12] = v96;
  v106[13] = v94;
  memcpy((v45 + v69), v106, 0x70uLL);
  v71 = v68[16];
  v72 = v45;
  v107[0] = v89;
  v107[1] = v93;
  v107[2] = 0;
  v107[3] = v92;
  v107[4] = v91;
  v107[5] = v70;
  LOBYTE(v107[6]) = 0;
  v73 = v83;
  v107[7] = v90;
  v107[8] = v83;
  v107[9] = v88;
  memcpy((v45 + v71), v107, 0x50uLL);
  v74 = v68[20];
  v108[0] = v62;
  v108[1] = v64;
  v75 = v86;
  v76 = v81;
  v77 = v82;
  v108[2] = v86;
  v108[3] = v82;
  v108[4] = v81;
  v108[5] = 1;
  LOBYTE(v108[6]) = 0;
  v78 = v80;
  v108[7] = v80;
  v108[8] = v73;
  memcpy((v72 + v74), v108, 0x48uLL);

  sub_216683A80(v106, __dst, &qword_27CAB8C38, &qword_21701B1A8);
  sub_216683A80(v107, __dst, &qword_27CAB8C40, &unk_21701B1B0);
  sub_216683A80(v108, __dst, &qword_27CAB8C48, &qword_217030690);
  sub_216699778(v87, &qword_27CAB8C20);
  v109[0] = v62;
  v109[1] = v64;
  v109[2] = v75;
  v109[3] = v77;
  v109[4] = v76;
  v109[5] = 1;
  v110 = 0;
  v111 = v78;
  v112 = v73;
  sub_216699778(v109, &qword_27CAB8C48);
  v113[0] = v89;
  v113[1] = v93;
  v113[2] = 0;
  v113[3] = v92;
  v113[4] = v91;
  v113[5] = v70;
  v114 = 0;
  v115 = v90;
  v116 = v73;
  v117 = v88;
  sub_216699778(v113, &qword_27CAB8C40);
  __dst[0] = v101;
  __dst[1] = v100;
  __dst[2] = v105;
  __dst[3] = v103;
  __dst[4] = v99;
  __dst[5] = 0;
  __dst[6] = v98;
  __dst[7] = v102;
  __dst[8] = v97;
  __dst[9] = v70;
  v119 = 0;
  *v120 = v129[0];
  *&v120[3] = *(v129 + 3);
  v121 = v95;
  v122 = v96;
  v123 = v94;
  sub_216699778(__dst, &qword_27CAB8C38);
  return sub_216699778(v104, &qword_27CAB8C20);
}

uint64_t sub_216809640(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    sub_21680A15C();
    v4 = v3;

    sub_217009264();
    LOWORD(v38) = 256;
    v37 = 0;
    v5 = sub_21700A154();
    v7 = v6;
    v9 = v8;
    v43 = *(v4 + 16);
    sub_216777114(v5, v6, v8 & 1);
    result = sub_21700DF14();
    v11 = 0;
    v44 = v4;
    v12 = (v4 + 48);
    v40 = v7;
    v41 = v5;
    v13 = v5;
    v14 = v7;
    v39 = v9;
    for (i = v9; ; i = v36)
    {
      if (v43 == v11)
      {

        sub_21678817C(v41, v40, v39 & 1);

        return v13;
      }

      if (v11 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      v47 = i;
      v48 = v12;
      v49 = v11;
      v16 = *v12;
      sub_2167B2E14();
      swift_bridgeObjectRetain_n();
      v17 = sub_21700A174();
      v19 = v18;
      v21 = v20;
      if (v16 == 1)
      {
        break;
      }

      if (qword_280E2C310 != -1)
      {
        goto LABEL_7;
      }

LABEL_9:
      v51 = v13;

      v50 = v14;
      if (a3)
      {
        v22 = [objc_opt_self() tertiaryLabelColor];
        sub_21700AC44();
      }

      else
      {
      }

      v23 = sub_21700A044();
      v25 = v24;
      v27 = v26;
      sub_21678817C(v17, v19, v21 & 1);

      v28 = sub_21700A084();
      v30 = v29;
      v32 = v31;
      sub_21678817C(v23, v25, v27 & 1);

      v33 = sub_21700A064();
      v45 = v34;
      v46 = v33;
      v36 = v35;

      sub_21678817C(v28, v30, v32 & 1);

      sub_21678817C(v51, v50, v47 & 1);

      v12 = v48 + 24;
      v11 = v49 + 1;
      v14 = v45;
      v13 = v46;
    }

    if (qword_27CAB5908 == -1)
    {
      goto LABEL_9;
    }

LABEL_7:
    swift_once();
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_216809A34(uint64_t a1)
{
  result = sub_216809AAC(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216809AAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216809AF8()
{
  v0 = sub_217008B44();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217008B34();
  __swift_allocate_value_buffer(v4, qword_280E2C3D8);
  v5 = __swift_project_value_buffer(v4, qword_280E2C3D8);
  v6 = *(v1 + 28);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_217009294();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  __asm { FMOV            V0.2D, #5.0 }

  *v3 = _Q0;
  sub_21680C2C0(v3, v5);
  *(v5 + *(v4 + 20)) = 0xC034000000000000;
  return sub_21680CFD0(v3, MEMORY[0x277CDFC08]);
}

uint64_t sub_216809C38()
{
  result = sub_217009D44();
  qword_280E2C340 = result;
  return result;
}

uint64_t sub_216809C58(uint64_t a1)
{
  result = sub_217009E94();
  qword_280E2C328 = result;
  return result;
}

uint64_t sub_216809C78()
{
  result = sub_21700AD34();
  qword_27CAB89E0 = result;
  return result;
}

uint64_t sub_216809C98(uint64_t a1)
{
  result = sub_21700AD14();
  qword_280E2C308 = result;
  return result;
}

uint64_t sub_216809CB8()
{
  result = sub_21700AD34();
  qword_280E2C2F0 = result;
  return result;
}

uint64_t sub_216809CD8()
{
  result = sub_21700AD34();
  qword_280E2C318 = result;
  return result;
}

uint64_t sub_216809CF8(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CAB89E8 = result;
  return result;
}

uint64_t sub_216809D18()
{
  result = sub_21700AD34();
  qword_280E2C3C8 = result;
  return result;
}

uint64_t sub_216809D38(uint64_t a1)
{
  result = sub_21700AD14();
  qword_280E2C3B0 = result;
  return result;
}

uint64_t sub_216809D58()
{
  v0 = sub_217008C14();
  __swift_allocate_value_buffer(v0, qword_280E2C388);
  __swift_project_value_buffer(v0, qword_280E2C388);
  return sub_217008C04();
}

double sub_216809DA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v25 = sub_2170090F4();
  *&v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C70, &qword_21701B2C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C78, &qword_21701B2C8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = sub_217009394();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C80, &qword_21701B2D0);
  (*(*(v16 - 8) + 16))(v10, a1, v16);
  v17 = &v10[*(v8 + 36)];
  *v17 = v15;
  v17[1] = sub_21680A0F8;
  v17[2] = 0;
  if (*v3)
  {
    sub_217008354();
  }

  else
  {
    sub_217008344();
  }

  sub_21680DDE0();
  sub_21700A624();
  sub_216699778(v10, &qword_27CAB8C70);
  v18 = *(v3 + 8);
  if (*(v3 + 40))
  {
    v19 = *(v3 + 24);
  }

  else
  {

    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680DE98(v3);
    (*(v24 + 8))(v7, v25);
    v18 = v26;
    v19 = v27;
  }

  v25 = v19;
  v24 = v18;
  (*(v12 + 32))(a2, v14, v11);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C88, &qword_21701B2D8) + 36);
  result = *&v24;
  v23 = v25;
  *v21 = v24;
  *(v21 + 16) = v23;
  *(v21 + 32) = 0;
  return result;
}

void sub_21680A15C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F0, &qword_21701ACB8);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_217006274();
  sub_21700DF14();
  v49 = MEMORY[0x277D84F90];
  v47 = v10;
  v48 = v9;
  while (1)
  {
    v52 = v5;
    v53 = v3;
    v50 = 0x3E6B72616D3CLL;
    v51 = 0xE600000000000000;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2167B2E14();
    sub_21700DF14();
    OUTLINED_FUNCTION_26_12();
    sub_21700F1C4();
    v11 = OUTLINED_FUNCTION_35_9();
    sub_216699778(v11, &qword_27CAB89F0);

    if (v1)
    {
      break;
    }

    v12 = v49;
    v13 = OUTLINED_FUNCTION_44_10();
    v1 = MEMORY[0x21CE9F400](v13);
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_216938280();
        v17 = v36;
      }

      v18 = *(v17 + 16);
      v19 = v17;
      if (v18 >= *(v17 + 24) >> 1)
      {
        sub_216938280();
        v19 = v37;
      }

      *(v19 + 16) = v18 + 1;
      v20 = v19 + 24 * v18;
      *(v20 + 32) = v1;
      *(v20 + 40) = v15;
      *(v20 + 48) = 0;
    }

    else
    {

      v19 = v12;
    }

    v21 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v3) & 0xF;
    }

    if (4 * v21 < v0 >> 14)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_29_0();
      sub_216938280();
      v41 = v44;
      goto LABEL_28;
    }

    v49 = v19;
    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_10_13();
    v5 = MEMORY[0x21CE9F400]();
    v3 = v22;

    v52 = v5;
    v53 = v3;
    v50 = 0x3E6B72616D2F3CLL;
    v51 = 0xE700000000000000;
    v24 = v47;
    v23 = v48;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
    sub_21700DF14();
    OUTLINED_FUNCTION_26_12();
    sub_21700F1C4();
    v25 = OUTLINED_FUNCTION_35_9();
    v9 = v23;
    v10 = v24;
    sub_216699778(v25, &qword_27CAB89F0);

    if ((v1 & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_44_10();
      v27 = MEMORY[0x21CE9F400](v26);
      v1 = v28;
      v29 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_216938280();
        v29 = v38;
      }

      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      v49 = v29;
      if (v31 >= v30 >> 1)
      {
        sub_216938280();
        v49 = v39;
      }

      v32 = v49;
      *(v49 + 16) = v31 + 1;
      v33 = v32 + 24 * v31;
      *(v33 + 32) = v27;
      *(v33 + 40) = v1;
      *(v33 + 48) = 1;
      v34 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v34 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v34 < v0 >> 14)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_45_6();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_10_13();
      v5 = MEMORY[0x21CE9F400]();
      v3 = v35;

      v9 = v48;
    }
  }

  v40 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v3) & 0xF;
  }

  v41 = v49;
  if (!v40)
  {

    goto LABEL_32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  v42 = *(v41 + 16);
  if (v42 >= *(v41 + 24) >> 1)
  {
    sub_216938280();
    v41 = v45;
  }

  *(v41 + 16) = v42 + 1;
  v43 = v41 + 24 * v42;
  *(v43 + 32) = v5;
  *(v43 + 40) = v3;
  *(v43 + 48) = 0;
LABEL_32:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21680A5E0()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for TrackLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 120));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680A73C()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for BubbleLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 40));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680A8B0()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for SquareLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 80));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680AA54()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for SuperHeroLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 96));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680ABC8()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for AlbumTrackLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 104));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680AD24()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for HorizontalLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 76));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680AE98()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = v1 + *(type metadata accessor for SplitPosterLockup(v8) + 24);
  v10 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(v9 + *(v10 + 20), v5, &qword_27CAB6A00, &unk_217016B60);
  v11 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v11) == 1)
  {
    sub_216699778(v5, &qword_27CAB6A00);
    v12 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v12);
LABEL_5:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  sub_216C6C5E8(v0);
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v5, v13);
  v14 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v14);
  if (v15)
  {
    goto LABEL_5;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v16 = OUTLINED_FUNCTION_116();
  v17(v16);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B068(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B1E8(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B350()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for PlaylistTrackLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 100));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B4C4(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B644(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B7C4(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680B98C(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680BB0C(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680BC8C(void (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  a1(v8);
  OUTLINED_FUNCTION_10_13();
  sub_216683A80(v9, v10, v11, v12);
  v13 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_18(v13);
  if (v17)
  {
    sub_216699778(v2, &qword_27CAB6A00);
    v14 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v14);
LABEL_6:
    sub_216699778(v1, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v2, v15);
  v16 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v16);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v18 = OUTLINED_FUNCTION_116();
  v19(v18);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_21680BE0C()
{
  v2 = OUTLINED_FUNCTION_22_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for SocialOnboardingSharedPlaylistLockup(v8);
  OUTLINED_FUNCTION_13_11(*(v9 + 20));
  v10 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_8_16(v10);
  if (v14)
  {
    sub_216699778(v1, &qword_27CAB6A00);
    v11 = sub_217006924();
    OUTLINED_FUNCTION_9_4(v11);
LABEL_6:
    sub_216699778(v0, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
    return OUTLINED_FUNCTION_6_23();
  }

  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_0_38();
  sub_21680CFD0(v1, v12);
  v13 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v13);
  if (v14)
  {
    goto LABEL_6;
  }

  sub_217006904();
  OUTLINED_FUNCTION_2_27();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  return OUTLINED_FUNCTION_6_23();
}

char *sub_21680BF80(void (*a1)(double))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  a1(v5);
  v8 = sub_217006924();
  OUTLINED_FUNCTION_1_26(v8);
  if (v9)
  {
    sub_216699778(v7, &unk_27CABF9C0);
    OUTLINED_FUNCTION_17_17();
  }

  else
  {
    v1 = v7;
    sub_217006904();
    OUTLINED_FUNCTION_2_27();
    v10 = OUTLINED_FUNCTION_116();
    v11(v10);
  }

  return v1;
}

unint64_t sub_21680C078()
{
  result = qword_280E2B300;
  if (!qword_280E2B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A08, &qword_21701ACD0);
    sub_21680DFBC(&qword_280E44DE0, &qword_27CAB8A40);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B300);
  }

  return result;
}

unint64_t sub_21680C138()
{
  result = qword_280E3DBF0[0];
  if (!qword_280E3DBF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3DBF0);
  }

  return result;
}

uint64_t sub_21680C194(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21680C20C()
{
  result = qword_280E3AD78;
  if (!qword_280E3AD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A58, &unk_21701AD20);
    sub_216809AAC(qword_280E3ADD0, type metadata accessor for TrailingSwipeActions);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3AD78);
  }

  return result;
}

uint64_t sub_21680C2C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_21680C328()
{
  v0 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216808278();
}

unint64_t sub_21680C37C()
{
  result = qword_280E2AE88;
  if (!qword_280E2AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A78, &qword_21701ADB8);
    sub_21680C408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE88);
  }

  return result;
}

unint64_t sub_21680C408()
{
  result = qword_280E2AF60;
  if (!qword_280E2AF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A98, &qword_21701ADD8);
    sub_21680C494();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF60);
  }

  return result;
}

unint64_t sub_21680C494()
{
  result = qword_280E2B098;
  if (!qword_280E2B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A88, &qword_21701ADC8);
    sub_21680DFBC(&qword_280E2A518, &unk_27CAB8AA8);
    sub_21680DFBC(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B098);
  }

  return result;
}

uint64_t sub_21680C578(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_21680C5F4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216806EDC(a1);
}

uint64_t sub_21680C670(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_36(v1);
  v3 = OUTLINED_FUNCTION_31_3(*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21680C6E8()
{
  result = qword_280E2ADB0;
  if (!qword_280E2ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B28, &qword_21701AE78);
    sub_21680C7A0();
    sub_21680DFBC(&qword_280E2A820, &qword_27CAB8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADB0);
  }

  return result;
}

unint64_t sub_21680C7A0()
{
  result = qword_280E2AE10;
  if (!qword_280E2AE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B50, &qword_21701AF28);
    sub_21680C82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE10);
  }

  return result;
}

unint64_t sub_21680C82C()
{
  result = qword_280E2AEA8;
  if (!qword_280E2AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B48, &qword_21701AF20);
    sub_21680C8E4();
    sub_21680DFBC(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEA8);
  }

  return result;
}

unint64_t sub_21680C8E4()
{
  result = qword_280E2AF80;
  if (!qword_280E2AF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B40, &unk_21704A010);
    sub_21680C99C();
    sub_21680DFBC(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF80);
  }

  return result;
}

unint64_t sub_21680C99C()
{
  result = qword_280E2B0C8;
  if (!qword_280E2B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B38, &unk_2170586D0);
    sub_21680DFBC(&qword_280E2A710, &qword_27CAB7820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0C8);
  }

  return result;
}

unint64_t sub_21680CA54()
{
  result = qword_280E2ADC0;
  if (!qword_280E2ADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B30, &qword_21701AE80);
    sub_21680CAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADC0);
  }

  return result;
}

unint64_t sub_21680CAE0()
{
  result = qword_280E2AE28;
  if (!qword_280E2AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B78, &unk_21701AF50);
    sub_21680CB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE28);
  }

  return result;
}

unint64_t sub_21680CB6C()
{
  result = qword_280E2AED0;
  if (!qword_280E2AED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B70, &qword_21701AF48);
    sub_21680CBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AED0);
  }

  return result;
}

unint64_t sub_21680CBF8()
{
  result = qword_280E2AFC0;
  if (!qword_280E2AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B68, &qword_21701AF40);
    sub_21680CC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFC0);
  }

  return result;
}

unint64_t sub_21680CC84()
{
  result = qword_280E2B168;
  if (!qword_280E2B168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B60, &qword_21701AF38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8B28, &qword_21701AE78);
    sub_217009574();
    sub_21680C6E8();
    sub_216809AAC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B168);
  }

  return result;
}

void sub_21680CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(sub_2170067A4() - 8);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v23 = *(v21 + 64);
  v24 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_36(v24);
  v32 = v20 + ((v22 + v23 + *(v31 + 80)) & ~*(v31 + 80));

  sub_2169BDF30(v20 + v22, v32, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_21680CE98()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_36(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_216964018(v3, v4);
}

unint64_t sub_21680CEF8()
{
  result = qword_280E3CE58[0];
  if (!qword_280E3CE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3CE58);
  }

  return result;
}

unint64_t sub_21680CF4C()
{
  result = qword_280E2B0A8;
  if (!qword_280E2B0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BB8, &qword_21701AFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0A8);
  }

  return result;
}

uint64_t sub_21680CFD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21680D03C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21680D07C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21680D104(uint64_t a1)
{
  result = type metadata accessor for TopSearchLockup(319);
  if (v2 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21680D1C8(uint64_t a1)
{
  sub_21680D2FC(319);
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      sub_21680D3D8(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_21680D3D8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
        if (v4 <= 0x3F)
        {
          sub_21680D428(319);
          if (v5 <= 0x3F)
          {
            sub_2167B84AC(319);
            if (v6 <= 0x3F)
            {
              sub_21680D48C(319);
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

void sub_21680D2FC(uint64_t a1)
{
  if (!qword_280E45840)
  {
    v4[0] = type metadata accessor for TopSearchLockup(255);
    v4[1] = sub_216809AAC(&qword_280E41D00, type metadata accessor for TopSearchLockup);
    v4[2] = &off_28293B160;
    v4[3] = sub_216809AAC(&qword_280E41CE8, type metadata accessor for TopSearchLockup);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E45840);
    }
  }
}

void sub_21680D3D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21680D428(uint64_t a1)
{
  if (!qword_280E2B4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7310, &unk_2170170F0);
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B4D0);
    }
  }
}

void sub_21680D48C(uint64_t a1)
{
  if (!qword_280E2B430)
  {
    type metadata accessor for GenericItemStateObserver(255);
    sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B430);
    }
  }
}

unint64_t sub_21680D520()
{
  result = qword_280E2B130;
  if (!qword_280E2B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A68, &unk_21701AD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BF0, &unk_217064CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BF8, "ԃ\n");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A30, &qword_21701ACF8);
    sub_21680D694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B130);
  }

  return result;
}

unint64_t sub_21680D694()
{
  result = qword_280E2AFB8;
  if (!qword_280E2AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A30, &qword_21701ACF8);
    sub_21680D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFB8);
  }

  return result;
}

unint64_t sub_21680D720()
{
  result = qword_280E2B160;
  if (!qword_280E2B160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A28, &qword_21701ACF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A18, &qword_21701ACE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A50, &unk_217064CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A10, &qword_21701ACD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A48, &unk_21701AD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A08, &qword_21701ACD0);
    sub_21680C078();
    swift_getOpaqueTypeConformance2();
    sub_21680C194(&qword_280E3DBE8, &qword_27CAB8A48, &unk_21701AD10, sub_21680C138);
    swift_getOpaqueTypeConformance2();
    sub_21680C194(qword_280E3AD80, &qword_27CAB8A50, &unk_217064CD0, sub_21680C20C);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A728, &qword_27CAB8A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B160);
  }

  return result;
}

unint64_t sub_21680D978()
{
  result = qword_280E2AEB0;
  if (!qword_280E2AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C00, &qword_21701B140);
    sub_21680DA30();
    sub_21680DFBC(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEB0);
  }

  return result;
}

unint64_t sub_21680DA30()
{
  result = qword_280E2AF88;
  if (!qword_280E2AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C08, &qword_21701B148);
    sub_21680C99C();
    sub_216809AAC(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF88);
  }

  return result;
}

unint64_t sub_21680DB9C()
{
  result = qword_27CAB8C58;
  if (!qword_27CAB8C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C50, &qword_21701B1C0);
    sub_21680DC54();
    sub_21680DFBC(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8C58);
  }

  return result;
}

unint64_t sub_21680DC54()
{
  result = qword_280E2B1E8;
  if (!qword_280E2B1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C60, &unk_21701B1C8);
    sub_21680DFBC(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1E8);
  }

  return result;
}

uint64_t sub_21680DD18(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[41])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21680DD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21680DDE0()
{
  result = qword_280E2B208;
  if (!qword_280E2B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C70, &qword_21701B2C0);
    sub_21680DFBC(&qword_280E2A890, &qword_27CAB8C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B208);
  }

  return result;
}

unint64_t sub_21680DEC8()
{
  result = qword_280E2B158;
  if (!qword_280E2B158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C88, &qword_21701B2D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C70, &qword_21701B2C0);
    sub_21680DDE0();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B158);
  }

  return result;
}

uint64_t sub_21680DFBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21680E024(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 193))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21680E064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21680E104@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C90, &unk_21701B430);
  MEMORY[0x28223BE20](v8);
  v10 = (&v35 - v9);
  v11 = *v1;
  if (*(*v1 + 16) || *(v1[1] + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98, &unk_21702DAD0);
    sub_21700B0E4();
    v12 = v1[1];
    sub_21700DF14();
    sub_21700DF14();
    sub_216BF450C(v38, v11, v12, v10);
    v13 = sub_217009CB4();
    v14 = v2[21];
    if (*(v2 + 192) != 1)
    {
      v37 = a1;
      v15 = v2[20];
      v16 = v2[23];
      v36 = v2[22];
      v35 = v16;

      sub_21700ED94();
      v17 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      v18 = v15;
      a1 = v37;
      sub_21680E444(v18, v14, v36, v35, 0);
      (*(v5 + 8))(v7, v4);
    }

    sub_217007F24();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CA0, &qword_21701B440) + 36);
    *v27 = v13;
    *(v27 + 1) = v20;
    *(v27 + 2) = v22;
    *(v27 + 3) = v24;
    *(v27 + 4) = v26;
    v27[40] = 0;
    v28 = sub_217009CA4();
    sub_217007F24();
    v29 = v10 + *(v8 + 36);
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    sub_21680E450(v10, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }
}

uint64_t sub_21680E444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21680E450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C90, &unk_21701B430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21680E4C0()
{
  result = qword_27CAB8CA8;
  if (!qword_27CAB8CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8CB0, &qword_21701B448);
    sub_21680E5A0(&qword_27CAB8CB8, &qword_27CAB8C90, &unk_21701B430, sub_21680E570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8CA8);
  }

  return result;
}

uint64_t sub_21680E5A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21680E624()
{
  result = qword_27CAB8CC8;
  if (!qword_27CAB8CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8CD0, &unk_21701B450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8CC8);
  }

  return result;
}

uint64_t sub_21680E688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = swift_getKeyPath();
  v4 = type metadata accessor for ContainerPlayableItemsSectionHeaderView(0);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a2 + 160) = 0;
  v5 = *(v4 + 36);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  sub_2167CD8D8();
  sub_2170082B4();
  v10[0] = 0x4038000000000000;
  sub_2170082B4();
  sub_216681B04(a1, a2, &qword_27CAB8100, qword_21701B4C0);
  sub_216681B04(a1, v10, &qword_27CAB8100, qword_21701B4C0);
  if (v10[1])
  {
    sub_216681B04(&v11, &v12, &qword_27CAB6DB0, &qword_217016C00);
    sub_2167ADC98(v10);
  }

  else
  {
    sub_216697664(v10, &qword_27CAB8100, qword_21701B4C0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  v6 = v13;
  *(a2 + 72) = v12;
  *(a2 + 88) = v6;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  *(a2 + 104) = v14;
  *(a2 + 112) = v7;
  sub_21700DF14();
  sub_21700DF14();
  result = sub_21680E880(a1);
  *(a2 + 120) = v8;
  return result;
}

uint64_t type metadata accessor for ContainerPlayableItemsSectionHeaderView(uint64_t a1)
{
  result = qword_280E2D9E8;
  if (!qword_280E2D9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21680E8FC(uint64_t a1)
{
  sub_2166D9E00(319, &qword_280E2C9A8, &type metadata for Link, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0);
    if (v2 <= 0x3F)
    {
      sub_21668A338(319, &qword_280E29E28, &qword_27CAB74F8, &unk_217017160);
      if (v3 <= 0x3F)
      {
        sub_21680EAD0(319, &qword_280E29EA0, type metadata accessor for ContainerPlayableItemsSectionHeader.Button, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_2166D9E00(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_21680EAD0(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2167D1C30(319);
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

void sub_21680EAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21680EB50@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CF0, &qword_21701B558);
  sub_21680ED20(v2, a2 + *(v4 + 44));
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CF8, &qword_21701B590);
  OUTLINED_FUNCTION_3_32(v5);
  sub_217009C94();
  type metadata accessor for ContainerPlayableItemsSectionHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D00, &qword_21701B598);
  OUTLINED_FUNCTION_0_39(v6);
  sub_217009CA4();
  sub_2170082C4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D08, &qword_21701B5A0);
  OUTLINED_FUNCTION_0_39(v7);
  sub_217009CB4();
  sub_21680FAAC();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D10, &qword_21701B5A8);
  OUTLINED_FUNCTION_0_39(v8);
  sub_217009CD4();
  sub_21680FAAC();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D18, &qword_21701B5B0);
  OUTLINED_FUNCTION_0_39(v9);
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D20, &qword_21701B5E8);
  return OUTLINED_FUNCTION_3_32(v10);
}

uint64_t sub_21680ED20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_217009314();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2170099D4();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D28, &qword_21701B5F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D30, &qword_21701B5F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D38, &qword_21701B600);
  MEMORY[0x28223BE20](v14 - 8);
  v43 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_21680F1EC(a1, v9);
  sub_2170099B4();
  v19 = sub_21680FC8C();
  sub_21700A784();
  (*(v4 + 8))(v6, v39);
  sub_216697664(v9, &qword_27CAB8D28, &qword_21701B5F0);
  v20 = v40;
  sub_217009304();
  v48 = v7;
  v49 = v19;
  swift_getOpaqueTypeConformance2();
  sub_21700A504();
  (*(v41 + 8))(v20, v42);
  (*(v11 + 8))(v13, v10);
  v21 = *(sub_21680F864() + 16);

  if (v21)
  {
    v21 = sub_21680F864();
    v22 = sub_217009C94();
    sub_217007F24();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LOBYTE(v48) = 0;
    v31 = v22;
    v32 = 0x4028000000000000;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v24 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
  }

  v33 = v43;
  sub_2167006F4(v18, v43);
  v34 = v44;
  sub_2167006F4(v33, v44);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D58, &qword_21701B610) + 48));
  *&v45 = v21;
  *(&v45 + 1) = v32;
  *&v46 = v31;
  *(&v46 + 1) = v24;
  *v47 = v26;
  *&v47[8] = v28;
  *&v47[16] = v30;
  v47[24] = 0;
  v36 = v46;
  *v35 = v45;
  v35[1] = v36;
  v35[2] = *v47;
  *(v35 + 41) = *&v47[9];
  sub_216681B04(&v45, &v48, &qword_27CAB8D60, &qword_21701B618);
  sub_21670075C(v18);
  v48 = v21;
  v49 = v32;
  v50 = v31;
  v51 = v24;
  v52 = v26;
  v53 = v28;
  v54 = v30;
  v55 = 0;
  sub_216697664(&v48, &qword_27CAB8D60, &qword_21701B618);
  return sub_21670075C(v33);
}

uint64_t sub_21680F1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D68, &unk_21701B620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = sub_217008844();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216681B04(a1, __src, &qword_27CAB8100, qword_21701B4C0);
  if (__src[1])
  {
    v49 = v11;
    v50 = v10;
    v52 = v9;
    v54 = a2;
    memcpy(v57, __src, 0x48uLL);
    v14 = qword_27CAB5918;
    sub_21700DF14();
    if (v14 != -1)
    {
      swift_once();
    }

    v48 = v13;
    v51 = a1;
    v53 = v6;
    v15 = sub_21700A094();
    v17 = v16;
    v19 = v18;

    if (qword_27CAB5920 != -1)
    {
      swift_once();
    }

    v20 = sub_217009FA4();
    v22 = v21;
    v24 = v23;
    sub_21678817C(v15, v17, v19 & 1);

    sub_21700AD14();
    v25 = sub_21700A034();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    sub_21678817C(v20, v22, v24 & 1);

    a1 = v51;
    sub_216681B04(v51 + 72, v55, &qword_27CAB6DB0, &qword_217016C00);
    v55[5] = v25;
    v55[6] = v27;
    LOBYTE(v55[7]) = v29 & 1;
    v55[8] = v31;
    v32 = type metadata accessor for ContainerPlayableItemsSectionHeaderView(0);
    v33 = v48;
    sub_216C0C570(v32, v34, v35, v36, v37, v38, v39, v40, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4]);
    v41 = sub_217008834();
    (*(v49 + 8))(v33, v50);
    sub_2167ADC98(v57);
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    KeyPath = swift_getKeyPath();
    memcpy(__src, v55, 0x48uLL);
    v56 = 0;
    __src[9] = KeyPath;
    __src[10] = v42;
    LOBYTE(__src[11]) = 0;
    v6 = v53;
    a2 = v54;
    v9 = v52;
  }

  else
  {
    sub_216697664(__src, &qword_27CAB8100, qword_21701B4C0);
    memset(__src, 0, 89);
  }

  if (*(a1 + 112))
  {
    v57[0] = *(a1 + 112);
    swift_getKeyPath();
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    sub_2166D9530(&qword_27CAB8D88, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83980]);
    sub_21700B154();
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D70, &qword_217037C90);
  __swift_storeEnumTagSinglePayload(v9, v44, 1, v45);
  sub_216681B04(__src, v57, &qword_27CAB8D78, &qword_21701B630);
  sub_216681B04(v9, v6, &qword_27CAB8D68, &unk_21701B620);
  sub_216681B04(v57, a2, &qword_27CAB8D78, &qword_21701B630);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D80, &unk_21701B638);
  sub_216681B04(v6, a2 + *(v46 + 48), &qword_27CAB8D68, &unk_21701B620);
  sub_216697664(v9, &qword_27CAB8D68, &unk_21701B620);
  sub_216697664(__src, &qword_27CAB8D78, &qword_21701B630);
  sub_216697664(v6, &qword_27CAB8D68, &unk_21701B620);
  return sub_216697664(v57, &qword_27CAB8D78, &qword_21701B630);
}

uint64_t sub_21680F74C@<X0>(uint64_t a2@<X8>)
{
  v3 = qword_27CAB5928;
  sub_21700DF14();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_21700A094();
  v6 = v5;
  v8 = v7;

  sub_21700AD34();
  v9 = sub_21700A034();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_21678817C(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_21680F864()
{
  v16 = type metadata accessor for ContainerPlayableItemsSectionHeader.Button(0);
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaButtonType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 120);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_216AB9854(0, v9, 0);
    v10 = v17;
    v11 = v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v12 = *(v1 + 72);
    do
    {
      sub_21680FD3C(v11, v3);
      sub_21680FDA0(v3, v7, type metadata accessor for LinkComponentModel);
      swift_storeEnumTagMultiPayload();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_216AB9854(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_21680FDA0(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for MediaButtonType);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

double sub_21680FAAC()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  if (*(v0 + 160) == 1)
  {
    return *(v0 + 128);
  }

  sub_21700ED94();
  v10 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();
  sub_21680E444(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t sub_21680FC2C(uint64_t a1)
{
  result = sub_217009D34();
  qword_27CAB8CD8 = result;
  return result;
}

uint64_t sub_21680FC6C()
{
  result = sub_217009D44();
  qword_27CAB8CE8 = result;
  return result;
}

unint64_t sub_21680FC8C()
{
  result = qword_27CAB8D40;
  if (!qword_27CAB8D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8D28, &qword_21701B5F0);
    sub_2166D9530(&qword_27CAB8D48, &qword_27CAB8D50, &qword_21701B608, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8D40);
  }

  return result;
}

uint64_t sub_21680FD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerPlayableItemsSectionHeader.Button(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21680FDA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_21680FE00()
{
  result = qword_27CAB8D90;
  if (!qword_27CAB8D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8D20, &qword_21701B5E8);
    sub_21680FF14(&qword_27CAB8D98, &qword_27CAB8D18, &qword_21701B5B0, sub_21680FEE4);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8D90);
  }

  return result;
}

uint64_t sub_21680FF14(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21680FFF8()
{
  result = qword_27CAB8DB8;
  if (!qword_27CAB8DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8CF8, &qword_21701B590);
    sub_2166D9530(&qword_27CAB8DC0, &qword_27CAB8DC8, &unk_21701B690, MEMORY[0x277CE1198]);
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8DB8);
  }

  return result;
}

uint64_t InlineBubbleTipProvider.InlineBubbleTip.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0);
}

void *sub_216810134@<X0>(void *a1@<X8>)
{
  result = sub_2168101AC();
  *a1 = v3;
  return result;
}

uint64_t sub_216810170(unint64_t *a1)
{
  v2 = *a1;
  sub_21681174C(v2);
  return sub_216810224(&v2);
}

uint64_t sub_2168101AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216810224(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216810294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF0, &qword_21701B8B8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_2168103D4(v5);
}

uint64_t sub_216810368()
{
  OUTLINED_FUNCTION_120_0(v0 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider__placement, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0, &qword_21701B708);
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_2168103D4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF0, &qword_21701B8B8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_2();
  (*(v6 + 16))(v2, a1, v4);
  OUTLINED_FUNCTION_120_0(v1 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider__placement, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0, &qword_21701B708);
  sub_217007DC4();
  swift_endAccess();
  return (*(v6 + 8))(a1, v4);
}

uint64_t sub_2168104EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0, &qword_21701B708);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider__placement;
  v18[1] = 0x8000000000000000;
  sub_217007DA4();
  (*(v9 + 32))(v3 + v15, v12, v7);
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_cancellables) = MEMORY[0x277D84FA0];
  v16 = (v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_placementID);
  *v16 = v14;
  v16[1] = v13;
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_context) = a2;
  *(v3 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_bootstrapState) = a3;

  sub_216810744();

  return v3;
}

char *sub_216810650(char *result)
{
  if (*(v1 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager))
  {
    v2 = result;

    sub_21681108C(v2);
  }

  return result;
}

void sub_2168106B0()
{
  if (*(v0 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager))
  {

    OUTLINED_FUNCTION_1_28();
    sub_216810F90(1, v1, v2, sub_2168116CC, sub_216860C84);
    sub_2168111EC();
  }
}

uint64_t sub_216810744()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0, &unk_217014280);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_120_0(*(v0 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_bootstrapState) + OBJC_IVAR____TtC7MusicUI14BootstrapState__state, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8, &qword_21701B8B0);
  sub_217007DB4();
  swift_endAccess();
  sub_2166D9530(&qword_280E484E0, &unk_27CAC9DE0, &unk_217014280, MEMORY[0x277CBCEC8]);

  sub_217007E84();

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_120_0(v0 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_cancellables, v7);
  sub_217007D24();
  swift_endAccess();
}

unint64_t sub_2168108E8(unint64_t *a1)
{
  result = *a1;
  if ((~result & 0xF000000000000007) != 0)
  {
    if (result >> 62)
    {
      if (result >> 62 == 1)
      {
        v3 = result & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
        v2 = (result & 0x3FFFFFFFFFFFFFFFLL);
        return sub_216810224(&v3);
      }
    }

    else
    {
      return sub_216810954(result);
    }
  }

  return result;
}

uint64_t sub_216810954(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD8, &qword_21701B890);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DE0, &qword_21701B898);
  swift_allocObject();
  sub_21700DF14();
  sub_21700DF14();

  sub_216859860();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DE8, &unk_21701B8A0);
  sub_2166D9530(&qword_280E48518, &qword_27CAB8DE8, &unk_21701B8A0, MEMORY[0x277CBCE20]);
  sub_217007E44();

  swift_getKeyPath();
  v10[0] = v1;
  sub_2166D9530(&qword_280E48590, &qword_27CAB8DD8, &qword_21701B890, MEMORY[0x277CBCC08]);
  sub_217007E94();

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_120_0(v1 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_cancellables, v10);
  sub_217007D24();
  swift_endAccess();

  *(v1 + OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider_requestManager) = v8;
}

uint64_t sub_216810BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
  }

  else
  {
    v4 = 0x8000000000000008;
  }

  *a2 = v4;
}

uint64_t InlineBubbleTipProvider.deinit()
{
  v1 = OBJC_IVAR____TtC7MusicUI23InlineBubbleTipProvider__placement;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DD0, &qword_21701B708);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InlineBubbleTipProvider.__deallocating_deinit()
{
  InlineBubbleTipProvider.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216810D58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineBubbleTipProvider(0);
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t static InlineBubbleTipProvider.InlineBubbleTip.== infix(_:_:)()
{
  v0 = BubbleTipModel.id.getter();
  v2 = v1;
  if (v0 == BubbleTipModel.id.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21700F7D4();
  }

  return v5 & 1;
}

uint64_t sub_216810E44()
{
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0, &qword_21701B898, &unk_21704B790);
  sub_2170066D4();

  return *(v0 + qword_280E41B60);
}

uint64_t sub_216810F90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double))
{
  if (*(v5 + qword_280E41AD8) == (result & 1))
  {
    *(v5 + qword_280E41AD8) = result & 1;
  }

  else
  {
    v7 = MEMORY[0x28223BE20](result);
    v8(0, v7);
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    a5(v10);
  }

  return result;
}

uint64_t sub_21681108C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700D194();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216F0D610(a1, v8);
  (*(v6 + 16))(v4, v8, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_21685A01C(v4);
  sub_2168116E4(v4);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2168111EC()
{
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_280E73D20);

  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_2166A85FC(0xD000000000000019, 0x8000000217082A10, &v6);
    *(v3 + 12) = 1024;
    *(v3 + 14) = sub_216810E44() & 1;

    _os_log_impl(&dword_216679000, v1, v2, "💬 %s Was dismissed deferred: %{BOOL}d", v3, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x21CEA1440](v4, -1, -1);
    MEMORY[0x21CEA1440](v3, -1, -1);
  }

  else
  {
  }

  if (sub_216810E44())
  {
    sub_21685C924(0, 0);
  }

  return sub_2168594C8(0);
}

uint64_t type metadata accessor for InlineBubbleTipProvider(uint64_t a1)
{
  result = qword_280E38488;
  if (!qword_280E38488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168113EC(uint64_t a1)
{
  sub_216811554();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216811554()
{
  if (!qword_280E48438)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48438);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_7MusicUI23InlineBubbleTipProviderC9PlacementO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2168115C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216811614(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_216811674(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_2168116E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21681174C(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_2168117A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LibraryAction(0, a3, a4, a5);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  (*(v12 + 16))(&v22 - v17, a1, v10, v16);
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a3;
  *(v20 + 3) = a4;
  *(v20 + 4) = a5;
  (*(v12 + 32))(&v20[v19], v18, v10);
  *&v20[(v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  return sub_216ECDBF4(&unk_21701B9C8, v20);
}

uint64_t sub_216811908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v11 = sub_21700D2A4();
  v6[17] = v11;
  v6[18] = *(v11 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for NoticeAction(0);
  v6[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v6[22] = v12;
  v6[23] = *(v12 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = *(a4 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v13 = type metadata accessor for LibraryActionType(0, a4, a5, a6);
  v6[32] = v13;
  v6[33] = *(v13 - 8);
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216811BDC, 0, 0);
}

uint64_t sub_216811BDC()
{
  v1 = v0[25];
  (*(v0[33] + 16))(v0[34], v0[9], v0[32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v1 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v3(v0[30], v0[34], v0[11]);
      v17 = swift_task_alloc();
      v0[41] = v17;
      *v17 = v0;
      v17[1] = sub_216812608;
      OUTLINED_FUNCTION_32_10(v0[30]);
      goto LABEL_13;
    case 2:
      v3(v0[29], v0[34], v0[11]);
      v14 = swift_task_alloc();
      v0[43] = v14;
      *v14 = v0;
      v14[1] = sub_2168127E8;
      OUTLINED_FUNCTION_32_10(v0[29]);
LABEL_13:
      OUTLINED_FUNCTION_47_8();

      result = sub_21681357C();
      break;
    case 3:
      v3(v0[28], v0[34], v0[11]);
      sub_21700BE44();
      v0[45] = sub_21700BE34();
      v15 = swift_task_alloc();
      v0[46] = v15;
      *v15 = v0;
      v15[1] = sub_2168129C8;
      OUTLINED_FUNCTION_32_10(v0[28]);
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A5F0]();
      break;
    case 4:
      v3(v0[27], v0[34], v0[11]);
      sub_21700BE44();
      v0[48] = sub_21700BE34();
      v12 = swift_task_alloc();
      v0[49] = v12;
      *v12 = v0;
      v12[1] = sub_216812BC4;
      OUTLINED_FUNCTION_32_10(v0[27]);
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A6D8]();
      break;
    case 5:
      v3(v0[26], v0[34], v0[11]);
      sub_21700BE44();
      v0[51] = sub_21700BE34();
      v19 = swift_task_alloc();
      v0[52] = v19;
      *v19 = v0;
      v19[1] = sub_216812DC0;
      OUTLINED_FUNCTION_32_10(v0[26]);
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A5E8]();
      break;
    default:
      v4 = v0[31];
      v5 = v0[25];
      v6 = v0[11];
      v3(v4, v0[34], v6);
      sub_21700BE44();
      v0[35] = sub_21700BE34();
      sub_216A1DB44(v6, v6);
      swift_allocObject();
      v7 = sub_21700E854();
      (*(v5 + 16))(v8, v4, v6);
      v9 = sub_216A3FD4C(v7, v6);
      v0[36] = v9;
      v0[7] = v9;
      v10 = swift_task_alloc();
      v0[37] = v10;
      sub_21700E984();
      swift_getWitnessTable();
      *v10 = v0;
      v10[1] = sub_2168120A8;
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_47_8();

      result = MEMORY[0x28218A698]();
      break;
  }

  return result;
}

uint64_t sub_2168120A8()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2168121E0()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[21];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
  __swift_storeEnumTagSinglePayload(v1, 3, 11, v6);
  sub_21700D234();
  v0[5] = v2;
  v0[6] = sub_216816290(&qword_27CAB8E08, type metadata accessor for NoticeAction, &unk_21703D8D0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2168162D8(v1, boxed_opaque_existential_1, type metadata accessor for NoticeAction);
  (*(v4 + 104))(v3, *MEMORY[0x277D21E18], v5);
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_216812388;
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[10];

  return MEMORY[0x28217F468](v10, v0 + 2, v11, v12, v9);
}

uint64_t sub_216812388()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[40] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[18] + 8))(v3[19], v3[17]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216812608()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168127E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2168128E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168129C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216812BC4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216812DC0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216812ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  (*(v14[25] + 8))(v14[26], v14[11]);
  v15 = OUTLINED_FUNCTION_0_40();
  (*(v16 + 104))(v15, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216812FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13(v15);

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21681317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13(v15);

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216813248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13(v15);

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216813314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13(v15);

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168133E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_9_22();
  v14();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13(v15);

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168134AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  (*(v14[25] + 8))(v14[26], v14[11]);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_26_13(v15);

  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_120();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21681357C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  *(v0 + 424) = v3;
  *(v0 + 432) = v4;
  *(v0 + 408) = v5;
  *(v0 + 416) = v1;
  *(v0 + 808) = v6;
  *(v0 + 400) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  *(v0 + 440) = v8;
  OUTLINED_FUNCTION_2(v8);
  *(v0 + 448) = v9;
  *(v0 + 456) = OUTLINED_FUNCTION_80();
  v10 = sub_21700D2A4();
  *(v0 + 464) = v10;
  OUTLINED_FUNCTION_2(v10);
  *(v0 + 472) = v11;
  *(v0 + 480) = OUTLINED_FUNCTION_80();
  v12 = type metadata accessor for PresentConfirmationDialogAction(0);
  *(v0 + 488) = v12;
  OUTLINED_FUNCTION_36(v12);
  *(v0 + 496) = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  *(v0 + 504) = v13;
  OUTLINED_FUNCTION_2(v13);
  *(v0 + 512) = v14;
  *(v0 + 520) = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  OUTLINED_FUNCTION_36(v15);
  *(v0 + 528) = OUTLINED_FUNCTION_80();
  v16 = sub_217006224();
  *(v0 + 536) = v16;
  OUTLINED_FUNCTION_2(v16);
  *(v0 + 544) = v17;
  *(v0 + 552) = OUTLINED_FUNCTION_80();
  v18 = *(v2 - 8);
  *(v0 + 560) = v18;
  *(v0 + 568) = *(v18 + 64);
  *(v0 + 576) = OUTLINED_FUNCTION_80();
  v19 = _s6ActionVMa(0);
  *(v0 + 584) = v19;
  OUTLINED_FUNCTION_2(v19);
  *(v0 + 592) = v20;
  *(v0 + 600) = OUTLINED_FUNCTION_84();
  *(v0 + 608) = swift_task_alloc();
  *(v0 + 616) = swift_task_alloc();
  v21 = sub_21700DEE4();
  *(v0 + 624) = v21;
  OUTLINED_FUNCTION_2(v21);
  *(v0 + 632) = v22;
  *(v0 + 640) = OUTLINED_FUNCTION_80();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E10, &qword_21701B9E8);
  OUTLINED_FUNCTION_36(v23);
  *(v0 + 648) = OUTLINED_FUNCTION_80();
  v24 = sub_21700CFB4();
  *(v0 + 656) = v24;
  OUTLINED_FUNCTION_2(v24);
  *(v0 + 664) = v25;
  *(v0 + 672) = OUTLINED_FUNCTION_84();
  *(v0 + 680) = swift_task_alloc();
  v26 = sub_217005EF4();
  *(v0 + 688) = v26;
  OUTLINED_FUNCTION_2(v26);
  *(v0 + 696) = v27;
  *(v0 + 704) = OUTLINED_FUNCTION_80();
  v28 = sub_21700D704();
  *(v0 + 712) = v28;
  OUTLINED_FUNCTION_2(v28);
  *(v0 + 720) = v29;
  *(v0 + 728) = OUTLINED_FUNCTION_84();
  *(v0 + 736) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v30);
  *(v0 + 744) = OUTLINED_FUNCTION_84();
  *(v0 + 752) = swift_task_alloc();
  v31 = sub_21700D284();
  *(v0 + 760) = v31;
  OUTLINED_FUNCTION_2(v31);
  *(v0 + 768) = v32;
  *(v0 + 776) = OUTLINED_FUNCTION_84();
  *(v0 + 784) = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_216813A38()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 688);
  v193 = sub_21700B934();
  v198 = v4;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  sub_21700D6F4();
  *(v0 + 240) = 0x6574656C6564;
  v8 = MEMORY[0x277D837D0];
  *(v0 + 264) = MEMORY[0x277D837D0];
  *(v0 + 248) = 0xE600000000000000;
  sub_2166EF9C4((v0 + 240), (v0 + 272));
  v9 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  sub_2166EF9D4();
  v10 = v9;
  sub_216681B04(v1, v2, &qword_27CABA820, &unk_217018CE0);
  v163 = v0;
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_216697664(*(v0 + 744), &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v11 = *(v0 + 704);
    v12 = *(v0 + 696);
    v13 = *(v0 + 688);
    (*(v12 + 32))(v11, *(v0 + 744), v13);
    v14 = sub_217005DE4();
    *(v0 + 360) = v8;
    *(v0 + 336) = v14;
    *(v0 + 344) = v15;
    sub_2166EF9C4((v0 + 336), (v0 + 368));
    swift_isUniquelyReferenced_nonNull_native();
    sub_2166EF9D4();
    (*(v12 + 8))(v11, v13);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v161 = v0 + 16;
  v162 = v0 + 240;
  v169 = *(v0 + 752);
  v164 = *(v0 + 736);
  v16 = *(v0 + 728);
  v17 = *(v0 + 720);
  v18 = *(v163 + 712);
  v19 = *(v163 + 680);
  v20 = *(v163 + 664);
  v21 = *(v163 + 656);
  v22 = sub_21700CF84();
  v23 = __swift_project_value_buffer(v22, qword_280E73DB0);
  MEMORY[0x21CE9DD70](v193, v198, 0x6E6F74747562, 0xE600000000000000, v10, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v181 = *(v20 + 72);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_217013DA0;
  v189 = v24;
  v175 = *(v20 + 16);
  v175(v25 + v24, v19, v21);
  (*(v17 + 16))(v16, v164, v18);
  sub_21700D244();
  v172 = *(v20 + 8);
  v172(v19, v21);
  (*(v17 + 8))(v164, v18);
  sub_216697664(v169, &qword_27CABA820, &unk_217018CE0);
  v26 = sub_21700D254();
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v163 + 664);
    v29 = *(v163 + 632);
    v203 = MEMORY[0x277D84F90];
    sub_216AB98AC(0, v27, 0);
    v30 = v203;
    v31 = v26 + v189;
    v165 = (v28 + 32);
    v166 = (v29 + 8);
    v32 = v163;
    do
    {
      v199 = v30;
      v33 = *(v32 + 680);
      v34 = *(v32 + 656);
      v35 = *(v32 + 648);
      v36 = *(v32 + 640);
      v194 = *(v32 + 624);
      v175(v33, v31, v34);
      v37 = OUTLINED_FUNCTION_39_3();
      (v175)(v37);
      sub_21700DEB4();
      v38 = v32;
      v39 = sub_21700CF94();
      sub_216ABAEF8();
      (*v166)(v36, v194);
      v40 = v35;
      v30 = v199;
      sub_216697664(v40, &qword_27CAB8E10, &qword_21701B9E8);
      v39(v162 + 64, 0);
      v172(v33, v34);
      v42 = *(v199 + 16);
      v41 = *(v199 + 24);
      if (v42 >= v41 >> 1)
      {
        v45 = OUTLINED_FUNCTION_46_7(v41);
        sub_216AB98AC(v45, v42 + 1, 1);
        v30 = v199;
      }

      v43 = *(v38 + 672);
      v44 = *(v38 + 656);
      *(v30 + 16) = v42 + 1;
      (*v165)(v30 + v189 + v42 * v181, v43, v44);
      v31 += v181;
      --v27;
      v32 = v38;
    }

    while (v27);
  }

  else
  {

    v32 = v163;
  }

  v46 = *(v32 + 808);
  sub_21700D264();
  if (v46)
  {
    v47 = *(v32 + 784);
    v48 = *(v32 + 776);
    v49 = *(v32 + 768);
    v50 = *(v32 + 760);
    v182 = *(v32 + 616);
    v185 = *(v32 + 584);
    v51 = *(v32 + 576);
    v52 = *(v32 + 560);
    v53 = *(v32 + 552);
    v200 = *(v32 + 544);
    v176 = *(v32 + 536);
    v178 = *(v32 + 528);
    v167 = *(v32 + 432);
    v195 = *(v32 + 416);
    v54 = sub_216983738(70);
    v170 = v55;
    v173 = v54;
    (*(v49 + 16))(v48, v47, v50);
    v56 = OUTLINED_FUNCTION_74_0();
    v57(v56);
    v58 = (*(v52 + 80) + 40) & ~*(v52 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v195;
    *(v59 + 32) = v167;
    (*(v52 + 32))(v59 + v58, v51, v195);
    *(v32 + 144) = sub_21700D2C4();
    *(v32 + 152) = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1((v32 + 120));
    sub_21700D2B4();
    sub_217006214();
    v60 = sub_2170061F4();
    v62 = v61;
    *&v195 = *(v200 + 8);
    (v195)(v53, v176);
    *(v32 + 88) = v60;
    *(v32 + 96) = v62;
    *(v32 + 104) = v173;
    *(v32 + 112) = v170;
    sub_217007F04();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    sub_2167ADC3C(v162 - 152, v182);
    sub_216681B04(v178, v182 + *(v185 + 20), &qword_27CAB70A8, &qword_21701B9E0);
    sub_217006214();
    v67 = sub_2170061F4();
    v69 = v68;
    v70 = OUTLINED_FUNCTION_39_3();
    (v195)(v70);
    v71 = (v182 + *(v185 + 24));
    *v71 = v67;
    v71[1] = v69;
    OUTLINED_FUNCTION_42_6();
    sub_216697664(v72, v73, v74);
    sub_2167ADC98(v162 - 152);
    sub_21693843C(0, 1, 1, MEMORY[0x277D84F90]);
    v76 = v75;
    v78 = *(v75 + 16);
    v77 = *(v75 + 24);
    if (v78 >= v77 >> 1)
    {
      v157 = OUTLINED_FUNCTION_46_7(v77);
      sub_21693843C(v157, v78 + 1, 1, v158);
      v76 = v159;
    }

    v183 = v76;
    v32 = v163;
    v79 = *(v163 + 616);
    v80 = *(v163 + 592);
    *(v76 + 16) = v78 + 1;
    sub_21681622C(v79, v76 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v78);
  }

  else
  {
    v183 = MEMORY[0x277D84F90];
  }

  v179 = *(v32 + 608);
  v196 = *(v32 + 584);
  v81 = *(v32 + 576);
  v82 = *(v163 + 568);
  v83 = *(v163 + 560);
  v84 = *(v163 + 552);
  v201 = *(v163 + 544);
  v190 = *(v163 + 536);
  v177 = *(v163 + 528);
  v168 = *(v163 + 432);
  v85 = *(v163 + 408);
  v86 = *(v163 + 400);
  v186 = *(v163 + 416);
  v87 = sub_216983738(71);
  v171 = v88;
  v174 = v87;
  OUTLINED_FUNCTION_42_6();
  v89();
  (*(v83 + 16))(v81, v86, v186);
  v90 = (*(v83 + 80) + 40) & ~*(v83 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = v186;
  *(v91 + 32) = v168;
  (*(v83 + 32))(v91 + v90, v81, v186);
  *(v91 + ((v82 + v90 + 7) & 0xFFFFFFFFFFFFFFF8)) = v85;
  *(v163 + 72) = sub_21700D2C4();
  *(v163 + 80) = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1((v163 + 48));

  sub_21700D2B4();
  sub_217006214();
  v92 = sub_2170061F4();
  v94 = v93;
  v95 = *(v201 + 8);
  v95(v84, v190);
  *(v163 + 16) = v92;
  *(v163 + 24) = v94;
  *(v163 + 32) = v174;
  *(v163 + 40) = v171;
  sub_217007F04();
  OUTLINED_FUNCTION_38_2();
  v187 = v96;
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v96);
  sub_2167ADC3C(v161, v179);
  sub_216681B04(v177, v179 + *(v196 + 20), &qword_27CAB70A8, &qword_21701B9E0);
  sub_217006214();
  v100 = sub_2170061F4();
  v102 = v101;
  v103 = v190;
  v191 = v95;
  v95(v84, v103);
  v104 = (v179 + *(v196 + 24));
  *v104 = v100;
  v104[1] = v102;
  sub_216697664(v177, &qword_27CAB70A8, &qword_21701B9E0);
  sub_2167ADC98(v161);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = v183;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21693843C(0, *(v183 + 16) + 1, 1, v183);
    v106 = v148;
  }

  v108 = *(v106 + 16);
  v107 = *(v106 + 24);
  if (v108 >= v107 >> 1)
  {
    v149 = OUTLINED_FUNCTION_46_7(v107);
    sub_21693843C(v149, v108 + 1, 1, v150);
    v106 = v151;
  }

  v109 = *(v163 + 608);
  v110 = *(v163 + 600);
  v111 = *(v163 + 592);
  v112 = *(v163 + 552);
  v113 = *(v163 + 536);
  *(v106 + 16) = v108 + 1;
  v114 = v106;
  v180 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v184 = *(v111 + 72);
  sub_21681622C(v109, v106 + v180 + v184 * v108);
  v115 = sub_216983738(43);
  v117 = v116;
  *(v110 + 32) = 0u;
  *(v110 + 48) = 0u;
  *(v110 + 64) = 0;
  sub_217006214();
  v118 = sub_2170061F4();
  v120 = v119;
  v191(v112, v113);
  *v110 = v118;
  *(v110 + 8) = v120;
  *(v110 + 16) = v115;
  *(v110 + 24) = v117;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v187);
  sub_217006214();
  v124 = sub_2170061F4();
  v126 = v125;
  v191(v112, v113);
  v127 = (v110 + *(v196 + 24));
  *v127 = v124;
  v127[1] = v126;
  v129 = *(v114 + 16);
  v128 = *(v114 + 24);
  v130 = v114;
  v131 = v129 + 1;
  if (v129 >= v128 >> 1)
  {
    v152 = OUTLINED_FUNCTION_46_7(v128);
    v154 = v153;
    sub_21693843C(v152, v153, 1, v155);
    v131 = v154;
    v130 = v156;
  }

  v132 = *(v163 + 600);
  v133 = *(v163 + 496);
  v188 = *(v163 + 488);
  v202 = *(v163 + 456);
  v192 = *(v163 + 448);
  v197 = *(v163 + 440);
  v134 = *(v163 + 808);
  v135 = v130;
  v136 = *(v163 + 400);
  *(v130 + 16) = v131;
  sub_21681622C(v132, v130 + v180 + v129 * v184);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v137 = sub_21681559C(v136, v134);
  sub_216933384(v137, v138, v135, 0, 0, (v163 + 160));
  sub_21700D234();
  v139 = v133 + *(v188 + 20);
  v140 = *(v163 + 160);
  v141 = *(v163 + 176);
  *(v139 + 32) = *(v163 + 192);
  *v139 = v140;
  *(v139 + 16) = v141;
  *(v163 + 224) = v188;
  *(v163 + 232) = sub_216816290(qword_280E30130, type metadata accessor for PresentConfirmationDialogAction, &unk_217036C50);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v163 + 200));
  sub_2168162D8(v133, boxed_opaque_existential_1, type metadata accessor for PresentConfirmationDialogAction);
  (*(v192 + 104))(v202, *MEMORY[0x277D21E18], v197);
  v143 = swift_task_alloc();
  *(v163 + 792) = v143;
  *v143 = v163;
  v143[1] = sub_216814818;
  v144 = *(v163 + 504);
  v145 = *(v163 + 480);
  v146 = *(v163 + 456);
  v147 = *(v163 + 408);

  return MEMORY[0x28217F468](v145, v163 + 200, v146, v147, v144);
}

uint64_t sub_216814818()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[57];
  v7 = v5[56];
  v8 = v5[55];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[100] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[59] + 8))(v3[60], v3[58]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 25);
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216814998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v9[98];
  v13 = v9[96];
  v14 = v9[95];
  OUTLINED_FUNCTION_12_15(a1, a2, a3, a4, a5, a6, a7, a8, v17);
  (*(v8 + 8))(v10, v11);
  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_23();

  return v15();
}

uint64_t sub_216814B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v9[98];
  v13 = v9[96];
  v14 = v9[95];
  OUTLINED_FUNCTION_12_15(a1, a2, a3, a4, a5, a6, a7, a8, v17);
  (*(v8 + 8))(v10, v11);
  (*(v13 + 8))(v12, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v9 + 25);

  OUTLINED_FUNCTION_3();

  return v15();
}

uint64_t sub_216814C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  v14 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, a2);
  v15 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  *(v16 + 6) = a4;
  (*(v8 + 32))(&v16[v15], v10, a2);
  sub_21677E228(0, 0, v13, &unk_21701BA00, v16);
}

uint64_t sub_216814E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_216814E5C, 0, 0);
}

void sub_216814E5C()
{
  OUTLINED_FUNCTION_33();
  sub_21700BE44();
  v0[5] = sub_21700BE34();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_216814F08;
  OUTLINED_FUNCTION_32_10(v0[2]);

  JUMPOUT(0x21700BBE4);
}

uint64_t sub_216814F08()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t sub_216815028()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216815084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v32 = a5;
  v29[1] = a2;
  v33 = sub_21700C924();
  v29[0] = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v29 - v15;
  v17 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v18 = *(v8 + 16);
  v18(v13, a1, a3);
  v19 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v34;
  *(v20 + 4) = a3;
  *(v20 + 5) = v21;
  *(v20 + 6) = v32;
  (*(v8 + 32))(&v20[v19], v13, a3);
  v22 = v30;
  v23 = v20;
  v24 = v33;
  sub_21677E228(0, 0, v16, &unk_21701BA10, v23);

  v18(v31, a1, a3);
  result = swift_dynamicCast();
  if (result)
  {
    (*(v29[0] + 8))(v22, v24);
    type metadata accessor for UserSocialProfileCoordinator(0);
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v26 = v35;
    v27 = sub_21700B934();
    sub_216CAC568(v27, v28);
  }

  return result;
}

uint64_t sub_2168153AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2168153D0, 0, 0);
}

uint64_t sub_2168153D0()
{
  OUTLINED_FUNCTION_33();
  sub_21700BE44();
  v0[5] = sub_21700BE34();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_21681547C;
  v2 = OUTLINED_FUNCTION_32_10(v0[2]);

  return MEMORY[0x28218A6D0](v2);
}

uint64_t sub_21681547C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

char *sub_21681559C(uint64_t a1, int a2)
{
  v157 = a2;
  v158[0] = a1;
  v137[6] = sub_21700C254();
  OUTLINED_FUNCTION_1();
  v137[2] = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v5);
  v137[10] = sub_2170072A4();
  OUTLINED_FUNCTION_1();
  v137[5] = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v9);
  v137[14] = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v137[9] = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v13);
  v138 = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v137[13] = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v17);
  v142 = sub_217007324();
  OUTLINED_FUNCTION_1();
  v137[17] = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v21);
  v146 = sub_217007264();
  OUTLINED_FUNCTION_1();
  v141 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v140 = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47_1();
  v139 = v26;
  v150 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v145 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v144 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47_1();
  v143 = v31;
  v153 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v149 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v148 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  v147 = v36;
  v155 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v152 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v151 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  v42 = v137 - v41;
  v43 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v154 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_77();
  v48 = (v46 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = v137 - v50;
  v52 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_77();
  v58 = v56 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = v137 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_77();
  v65 = v63 - v64;
  v69 = MEMORY[0x28223BE20](v66);
  v70 = v137 - v67;
  v158[1] = v71;
  v72 = *(v71 + 16);
  if ((v157 & 1) == 0)
  {
    v77 = v68;
    v72(v65, v158[0], v68, v69);
    if (swift_dynamicCast())
    {
      sub_216983738(239);
      OUTLINED_FUNCTION_21_13();
      (*(v54 + 8))(v58, v52);
LABEL_28:
      v74 = OUTLINED_FUNCTION_29_8();
      v76 = v77;
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      sub_216983738(248);
      OUTLINED_FUNCTION_21_13();
      v78 = *(v154 + 8);
      v79 = v48;
      goto LABEL_10;
    }

    v84 = v151;
    v85 = OUTLINED_FUNCTION_5_20();
    v82 = v155;
    if (OUTLINED_FUNCTION_33_12(v85, v86, v87))
    {
      sub_216983738(244);
      OUTLINED_FUNCTION_21_13();
      v88 = v152;
LABEL_25:
      v78 = *(v88 + 8);
      v79 = v84;
      goto LABEL_26;
    }

    v84 = v148;
    v93 = OUTLINED_FUNCTION_5_20();
    v82 = v153;
    if (OUTLINED_FUNCTION_33_12(v93, v94, v95))
    {
      v92 = 245;
      goto LABEL_19;
    }

    v84 = v144;
    v100 = OUTLINED_FUNCTION_5_20();
    v82 = v150;
    if (OUTLINED_FUNCTION_33_12(v100, v101, v102))
    {
      v99 = 243;
      goto LABEL_24;
    }

    v84 = v140;
    v107 = OUTLINED_FUNCTION_5_20();
    if (OUTLINED_FUNCTION_33_12(v107, v108, v109) || (v118 = OUTLINED_FUNCTION_3_33(&v166), OUTLINED_FUNCTION_33_12(v118, v119, v120)))
    {
      v121 = OUTLINED_FUNCTION_74_0();
      v122(v121);
      v123 = OUTLINED_FUNCTION_29_8();
      v124(v123, v77);
      v117 = 247;
      goto LABEL_39;
    }

    v129 = OUTLINED_FUNCTION_3_33(&v163);
    v82 = v138;
    if (OUTLINED_FUNCTION_33_12(v129, v130, v131))
    {
      v128 = 246;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_3_33(&v160);
    if (OUTLINED_FUNCTION_28_8())
    {
      v133 = 240;
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_3_33(v156);
    if (OUTLINED_FUNCTION_28_8())
    {
      v134 = 241;
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_3_33(&v153);
    if (OUTLINED_FUNCTION_28_8())
    {
      v135 = 242;
      goto LABEL_59;
    }

    v136 = 245;
LABEL_63:
    sub_216983738(v136);
    OUTLINED_FUNCTION_21_13();
    goto LABEL_28;
  }

  v73 = v68;
  v72(v137 - v67, v158[0], v68, v69);
  OUTLINED_FUNCTION_42_6();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_42_6();
    v77 = v73;
    if (swift_dynamicCast())
    {
      sub_216983738(80);
      OUTLINED_FUNCTION_21_13();
      v78 = *(v154 + 8);
      v79 = v51;
LABEL_10:
      v80 = v43;
LABEL_27:
      v78(v79, v80);
      goto LABEL_28;
    }

    v81 = v73;
    v82 = v155;
    if (OUTLINED_FUNCTION_33_12(v42, v70, v81))
    {
      v83 = sub_216983738(81);
      v78 = *(v152 + 8);
      v79 = v42;
      v42 = v83;
LABEL_26:
      v80 = v82;
      goto LABEL_27;
    }

    v84 = v147;
    v89 = OUTLINED_FUNCTION_5_20();
    v82 = v153;
    if (OUTLINED_FUNCTION_33_12(v89, v90, v91))
    {
      v92 = 82;
LABEL_19:
      sub_216983738(v92);
      OUTLINED_FUNCTION_21_13();
      v88 = v149;
      goto LABEL_25;
    }

    v84 = v143;
    v96 = OUTLINED_FUNCTION_5_20();
    v82 = v150;
    if (OUTLINED_FUNCTION_33_12(v96, v97, v98))
    {
      v99 = 79;
LABEL_24:
      sub_216983738(v99);
      OUTLINED_FUNCTION_21_13();
      v88 = v145;
      goto LABEL_25;
    }

    v84 = v139;
    v104 = OUTLINED_FUNCTION_5_20();
    if (OUTLINED_FUNCTION_33_12(v104, v105, v106) || (v110 = OUTLINED_FUNCTION_3_33(&v165), OUTLINED_FUNCTION_33_12(v110, v111, v112)))
    {
      v113 = OUTLINED_FUNCTION_74_0();
      v114(v113);
      v115 = OUTLINED_FUNCTION_29_8();
      v116(v115, v77);
      v117 = 84;
LABEL_39:
      sub_216983738(v117);
      OUTLINED_FUNCTION_21_13();
      return v42;
    }

    v125 = OUTLINED_FUNCTION_3_33(&v162);
    v82 = v138;
    if (OUTLINED_FUNCTION_33_12(v125, v126, v127))
    {
      v128 = 83;
LABEL_44:
      sub_216983738(v128);
      OUTLINED_FUNCTION_21_13();
      v132 = &v164;
LABEL_60:
      v88 = *(v132 - 32);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_33(v159);
    if (OUTLINED_FUNCTION_28_8())
    {
      v133 = 76;
LABEL_49:
      sub_216983738(v133);
      OUTLINED_FUNCTION_21_13();
      v132 = &v161;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_3_33(&v155);
    if (OUTLINED_FUNCTION_28_8())
    {
      v134 = 77;
LABEL_54:
      sub_216983738(v134);
      OUTLINED_FUNCTION_21_13();
      v132 = v158;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_3_33(&v152);
    if (OUTLINED_FUNCTION_28_8())
    {
      v135 = 78;
LABEL_59:
      sub_216983738(v135);
      OUTLINED_FUNCTION_21_13();
      v132 = &v154;
      goto LABEL_60;
    }

    v136 = 82;
    goto LABEL_63;
  }

  sub_216983738(75);
  OUTLINED_FUNCTION_21_13();
  (*(v54 + 8))(v61, v52);
  v74 = OUTLINED_FUNCTION_29_8();
  v76 = v73;
LABEL_29:
  v75(v74, v76);
  return v42;
}

uint64_t sub_216816084()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v1;
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = type metadata accessor for LibraryAction(0, v4, v3, v5);
  OUTLINED_FUNCTION_2(v6);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v10 = *(v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_20_0(v11);
  *v12 = v13;
  v12[1] = sub_2166AB4A0;

  return sub_216811908(v2, v0 + v8, v10, v4, v3, v5);
}

uint64_t sub_21681622C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ActionVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216816290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168162D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216816338(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168163E4()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_44_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_5(v1);

  return sub_216814E38(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21681656C()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_44_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_5(v1);

  return sub_2168153AC(v3, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for DownloadAction(uint64_t a1)
{
  result = qword_280E43740;
  if (!qword_280E43740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168166B0(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166DF3F4(319);
    if (v2 <= 0x3F)
    {
      sub_2166D90EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21681674C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v48 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v56 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v55 = &v48 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v61 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v54 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v53 = &v48 - v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v51 = v24;
  v52 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v27 = *(v8 + 16);
  v60 = v6;
  v27(v15, v62, v6);
  v28 = v59;
  sub_21700D224();
  if (v28)
  {
    (*(v8 + 8))(v62, v60);
    return (*(v17 + 8))(a1, v61);
  }

  else
  {
    v50 = v17;
    v59 = v8;
    v30 = type metadata accessor for DownloadAction(0);
    v48 = *(v30 + 20);
    v49 = v30;
    v31 = v58;
    (*(v51 + 32))(v58, v26, v52);
    sub_21700CE04();
    v32 = v62;
    v33 = v60;
    v27(v55, v62, v60);
    sub_216AC5BB0();
    *(v31 + v48) = v34;
    v35 = v54;
    sub_21700CE04();
    v36 = v56;
    v27(v56, v32, v33);
    v37 = v57;
    ContentDescriptor.init(deserializing:using:)(v35, v36, v38, v39, v40, v41, v42, v43, v48, v49, SWORD2(v49), SBYTE6(v49), SHIBYTE(v49), v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    v44 = v58;
    v45 = v61;
    v46 = v50;
    (*(v59 + 8))(v32, v33);
    (*(v46 + 8))(a1, v45);
    v47 = type metadata accessor for ContentDescriptor(0);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v47);
    return sub_216816BC4(v37, v44 + *(v49 + 24));
  }
}

uint64_t sub_216816BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216816C34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v112 = a2;
  v98[2] = sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v98[1] = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v98[5] = sub_217007064();
  OUTLINED_FUNCTION_1();
  v98[4] = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v8);
  v98[8] = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v98[7] = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v11);
  sub_21700C644();
  OUTLINED_FUNCTION_1();
  v98[10] = v13;
  v99 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v14);
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v101 = v16;
  v102 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v100 = v17;
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v104 = v19;
  v105 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v103 = v20;
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v107 = v22;
  v108 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v106 = v23;
  sub_217006B84();
  OUTLINED_FUNCTION_1();
  v109 = v25;
  v110 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v29 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v111 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v98 - v36;
  sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  v42 = v98 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = v98 - v44;
  v47 = v46;
  sub_216681B64(a1, v37, &qword_27CAB7088, &qword_217020CA0);
  if (__swift_getEnumTagSinglePayload(v37, 1, v47) != 1)
  {
    (*(v39 + 32))(v45, v37, v47);
    v49 = v45;
    if (!sub_216DDFD58())
    {
      sub_21669987C(a1, &qword_27CAB7088, &qword_217020CA0);
      result = (*(v39 + 8))(v45, v47);
      goto LABEL_7;
    }

    (*(v39 + 16))(v42, v45, v47);
    v50 = (*(v39 + 88))(v42, v47);
    if (v50 == *MEMORY[0x277D2A400])
    {
      v51 = OUTLINED_FUNCTION_2_28();
      v52(v51);
      v53 = v111;
      (*(v111 + 32))(v34, v42, v29);
      v114 = v29;
      v115 = MEMORY[0x277CD8280];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
      (*(v53 + 16))(boxed_opaque_existential_1, v34, v29);
      sub_2168176DC(v113, v116);
      sub_21669987C(a1, &qword_27CAB7088, &qword_217020CA0);
      (*(v53 + 8))(v34, v29);
LABEL_21:
      result = (*(v39 + 8))(v49, v47);
      v55 = v116[0];
      goto LABEL_22;
    }

    if (v50 == *MEMORY[0x277D2A3B0])
    {
      v56 = OUTLINED_FUNCTION_2_28();
      v57(v56);
      v59 = v109;
      v58 = v110;
      (*(v109 + 32))(v28, v42, v110);
      v114 = v58;
      OUTLINED_FUNCTION_17_18();
      v115 = sub_2168189DC(v60, v61, MEMORY[0x277D2A778]);
      v62 = __swift_allocate_boxed_opaque_existential_1(v113);
      (*(v59 + 16))(v62, v28, v58);
      sub_2168176DC(v113, v116);
      sub_21669987C(a1, &qword_27CAB7088, &qword_217020CA0);
      (*(v59 + 8))(v28, v58);
      goto LABEL_21;
    }

    if (v50 == *MEMORY[0x277D2A3B8])
    {
      v63 = OUTLINED_FUNCTION_2_28();
      v64(v63);
      v65 = v106;
      OUTLINED_FUNCTION_18_11();
      v66 = v108;
      v67(v65, v42, v108);
      v114 = v66;
      OUTLINED_FUNCTION_7_19();
      v70 = MEMORY[0x277D2AE80];
LABEL_12:
      v115 = sub_2168189DC(v68, v69, v70);
LABEL_20:
      __swift_allocate_boxed_opaque_existential_1(v113);
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_28_6();
      v85();
      sub_2168176DC(v113, v116);
      sub_21669987C(a1, &qword_27CAB7088, &qword_217020CA0);
      v86 = OUTLINED_FUNCTION_23_7();
      v87(v86);
      goto LABEL_21;
    }

    if (v50 == *MEMORY[0x277D2A440])
    {
      v71 = OUTLINED_FUNCTION_2_28();
      v72(v71);
      v73 = v103;
      OUTLINED_FUNCTION_18_11();
      v74 = v105;
      v75(v73, v42, v105);
      v76 = MEMORY[0x277CD85C8];
    }

    else if (v50 == *MEMORY[0x277D2A3F8])
    {
      v77 = OUTLINED_FUNCTION_2_28();
      v78(v77);
      v79 = v100;
      OUTLINED_FUNCTION_18_11();
      v74 = v102;
      v80(v79, v42, v102);
      v76 = MEMORY[0x277CD81D0];
    }

    else
    {
      if (v50 != *MEMORY[0x277D2A430])
      {
        if (v50 == *MEMORY[0x277D2A458])
        {
          v88 = OUTLINED_FUNCTION_2_28();
          v89(v88);
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_12_16();
          OUTLINED_FUNCTION_31_13();
          v90();
          v114 = v45;
          OUTLINED_FUNCTION_16_18();
          v70 = MEMORY[0x277D2ADA8];
        }

        else if (v50 == *MEMORY[0x277D2A3D8])
        {
          v91 = OUTLINED_FUNCTION_2_28();
          v92(v91);
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_12_16();
          OUTLINED_FUNCTION_31_13();
          v93();
          v114 = v45;
          OUTLINED_FUNCTION_15_12();
          v70 = MEMORY[0x277D2AB70];
        }

        else
        {
          if (v50 != *MEMORY[0x277D2A3E0])
          {
            sub_21669987C(a1, &qword_27CAB7088, &qword_217020CA0);
            v97 = *(v39 + 8);
            v97(v45, v47);
            result = (v97)(v42, v47);
            goto LABEL_7;
          }

          v94 = OUTLINED_FUNCTION_2_28();
          v95(v94);
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_12_16();
          OUTLINED_FUNCTION_31_13();
          v96();
          v114 = v45;
          OUTLINED_FUNCTION_14_13();
          v70 = MEMORY[0x277D2ABC0];
        }

        goto LABEL_12;
      }

      v81 = OUTLINED_FUNCTION_2_28();
      v82(v81);
      v74 = v99;
      OUTLINED_FUNCTION_18_11();
      v83 = OUTLINED_FUNCTION_12_16();
      v84(v83);
      v76 = MEMORY[0x277CD84D8];
    }

    v114 = v74;
    v115 = v76;
    goto LABEL_20;
  }

  sub_21669987C(a1, &qword_27CAB7088, &qword_217020CA0);
  result = sub_21669987C(v37, &qword_27CAB7088, &qword_217020CA0);
LABEL_7:
  v55 = 0;
LABEL_22:
  *v112 = v55;
  return result;
}

uint64_t sub_2168176DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v180 = a2;
  v163 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v160[18] = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v7);
  v160[10] = sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v160[6] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v11);
  v160[9] = sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v160[7] = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v15);
  v160[20] = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v160[19] = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v19);
  v160[13] = sub_217007064();
  OUTLINED_FUNCTION_1();
  v160[11] = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v23);
  v24 = sub_21700C814();
  OUTLINED_FUNCTION_1();
  v164 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v29);
  v167 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v166 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v33);
  v174 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v170 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v38);
  v176 = sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v173 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v42);
  v177 = sub_21700C644();
  OUTLINED_FUNCTION_1();
  v175 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  v47 = v46 - v45;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v178 = v49;
  v179 = v48;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  v52 = v160 - v51;
  v53 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7();
  v59 = v58 - v57;
  v60 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7();
  v66 = v65 - v64;
  sub_216681B64(a1, &v186, &qword_27CAB8E30, &unk_21701BA90);
  if (v187)
  {
    v160[0] = v24;
    sub_2166A0F18(&v186, &v189);
    sub_2167B7D58(&v189, &v186);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E38, &unk_217021050);
    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
      __swift_destroy_boxed_opaque_existential_1Tm(&v189);
      (*(v62 + 8))(v66, v60);
LABEL_12:
      v69 = 1;
LABEL_13:
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v186);
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
      __swift_destroy_boxed_opaque_existential_1Tm(&v189);
      (*(v55 + 8))(v59, v53);
      goto LABEL_12;
    }

    v70 = v179;
    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
      __swift_destroy_boxed_opaque_existential_1Tm(&v189);
      (*(v178 + 8))(v52, v70);
      goto LABEL_12;
    }

    v71 = v177;
    if (swift_dynamicCast())
    {
      sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
      __swift_destroy_boxed_opaque_existential_1Tm(&v189);
      v72 = *(v175 + 8);
      v73 = v47;
      v74 = v71;
LABEL_11:
      v72(v73, v74);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_22_20(&v191);
    v75 = v176;
    if (swift_dynamicCast())
    {
      v76 = v173;
      v77 = v172;
      (*(v173 + 32))(v172, v62, v75);
      v183 = v160[0];
      v184 = sub_2168189DC(&qword_27CAB8E40, MEMORY[0x277D2B440], MEMORY[0x277D2B438]);
      __swift_allocate_boxed_opaque_existential_1(&v181);
      sub_21700C824();
      OUTLINED_FUNCTION_26_14();
      sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
      (*(v76 + 8))(v77, v75);
LABEL_39:
      __swift_destroy_boxed_opaque_existential_1Tm(&v189);
      v69 = v185;
      goto LABEL_13;
    }

    v78 = v171;
    v79 = v174;
    v80 = swift_dynamicCast();
    v81 = v160[0];
    if (v80)
    {
      OUTLINED_FUNCTION_9_23();
      v82 = v169;
      v83(v169, v78, v79);
      v84 = v168;
      (*(v67 + 16))(v168, v82, v79);
      v85 = OUTLINED_FUNCTION_97();
      v87 = v86(v85);
      if (v87 == *MEMORY[0x277CD8540])
      {
        v88 = OUTLINED_FUNCTION_97();
        v89(v88);
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_12_16();
        OUTLINED_FUNCTION_31_13();
        v90();
        v183 = v81;
        OUTLINED_FUNCTION_7_19();
        v184 = sub_2168189DC(v91, v92, MEMORY[0x277D2AE80]);
        __swift_allocate_boxed_opaque_existential_1(&v181);
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_28_6();
        v93();
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
        v94 = OUTLINED_FUNCTION_23_7();
        v95(v94);
LABEL_25:
        v112 = OUTLINED_FUNCTION_25_7();
        v113(v112);
        goto LABEL_39;
      }

      if (v87 == *MEMORY[0x277CD8548])
      {
        v107 = OUTLINED_FUNCTION_97();
        v108(v107);
        v109 = v178;
        v110 = v161;
        (*(v178 + 32))(v161, v84, v70);
        v183 = v70;
        v184 = MEMORY[0x277CD81D0];
        v111 = __swift_allocate_boxed_opaque_existential_1(&v181);
        (*(v109 + 16))(v111, v110, v70);
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
        (*(v109 + 8))(v110, v70);
        goto LABEL_25;
      }

      sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
      v128 = *(v67 + 8);
      v129 = OUTLINED_FUNCTION_25_7();
      v128(v129);
      __swift_destroy_boxed_opaque_existential_1Tm(&v189);
      v130 = OUTLINED_FUNCTION_97();
      v128(v130);
LABEL_46:
      v69 = 0;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_22_20(&v190);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_17_3();
      v96 = OUTLINED_FUNCTION_27_10();
      v97(v96);
      OUTLINED_FUNCTION_29_9();
      v98 = v162;
      OUTLINED_FUNCTION_28_6();
      v99();
      v100 = (*(v78 + 88))(v98, v81);
      if (v100 == *MEMORY[0x277D2B408])
      {
        v101 = OUTLINED_FUNCTION_8_17();
        v102(v101);
        OUTLINED_FUNCTION_9_23();
        OUTLINED_FUNCTION_13_12();
        OUTLINED_FUNCTION_24_12();
        v103();
        v183 = v79;
        OUTLINED_FUNCTION_17_18();
        v106 = MEMORY[0x277D2A778];
LABEL_37:
        v184 = sub_2168189DC(v104, v105, v106);
        v136 = __swift_allocate_boxed_opaque_existential_1(&v181);
        (*(v67 + 16))(v136, v47, v79);
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
        v137 = OUTLINED_FUNCTION_25_7();
        v139(v137, v138);
        goto LABEL_38;
      }

      if (v100 != *MEMORY[0x277D2B410])
      {
        if (v100 == *MEMORY[0x277D2B428])
        {
          v142 = OUTLINED_FUNCTION_8_17();
          v143(v142);
          v144 = v178;
          v145 = v161;
          (*(v178 + 32))(v161, v98, v70);
          v183 = v70;
          v184 = MEMORY[0x277CD81D0];
          v146 = __swift_allocate_boxed_opaque_existential_1(&v181);
          (*(v144 + 16))(v146, v145, v70);
          OUTLINED_FUNCTION_26_14();
          sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
          (*(v144 + 8))(v145, v70);
          goto LABEL_38;
        }

        if (v100 == *MEMORY[0x277D2B430])
        {
          v148 = OUTLINED_FUNCTION_8_17();
          v149(v148);
          OUTLINED_FUNCTION_9_23();
          OUTLINED_FUNCTION_13_12();
          OUTLINED_FUNCTION_24_12();
          v150();
          v183 = v79;
          OUTLINED_FUNCTION_16_18();
          v106 = MEMORY[0x277D2ADA8];
        }

        else if (v100 == *MEMORY[0x277D2B418])
        {
          v151 = OUTLINED_FUNCTION_8_17();
          v152(v151);
          OUTLINED_FUNCTION_9_23();
          OUTLINED_FUNCTION_13_12();
          OUTLINED_FUNCTION_24_12();
          v153();
          v183 = v79;
          OUTLINED_FUNCTION_15_12();
          v106 = MEMORY[0x277D2AB70];
        }

        else
        {
          if (v100 != *MEMORY[0x277D2B420])
          {
            sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
            v159 = *(v78 + 8);
            v159(v66, v81);
            __swift_destroy_boxed_opaque_existential_1Tm(&v189);
            v159(v98, v81);
            goto LABEL_46;
          }

          v154 = OUTLINED_FUNCTION_8_17();
          v155(v154);
          OUTLINED_FUNCTION_9_23();
          OUTLINED_FUNCTION_13_12();
          OUTLINED_FUNCTION_24_12();
          v156();
          v183 = v79;
          OUTLINED_FUNCTION_14_13();
          v106 = MEMORY[0x277D2ABC0];
        }

        goto LABEL_37;
      }

      v126 = OUTLINED_FUNCTION_8_17();
      v127(v126);
      OUTLINED_FUNCTION_9_23();
      OUTLINED_FUNCTION_13_12();
    }

    else
    {
      OUTLINED_FUNCTION_22_20(v188);
      v114 = v163;
      if (!swift_dynamicCast())
      {
        sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
        __swift_destroy_boxed_opaque_existential_1Tm(&v189);
        OUTLINED_FUNCTION_11_18(v182);
        if (OUTLINED_FUNCTION_28_8())
        {
          v131 = OUTLINED_FUNCTION_20_14();
          v132(v131);
          v69 = 3;
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_11_18(&v180);
        if (OUTLINED_FUNCTION_28_8())
        {
          v73 = OUTLINED_FUNCTION_20_14();
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_11_18(&v176);
        if (OUTLINED_FUNCTION_28_8() || (OUTLINED_FUNCTION_11_18(&v173), OUTLINED_FUNCTION_28_8()) || (OUTLINED_FUNCTION_11_18(&v172), OUTLINED_FUNCTION_28_8()))
        {
          v157 = OUTLINED_FUNCTION_20_14();
          v158(v157);
          v69 = 2;
          goto LABEL_13;
        }

        goto LABEL_46;
      }

      OUTLINED_FUNCTION_17_3();
      v115 = OUTLINED_FUNCTION_27_10();
      v116(v115);
      OUTLINED_FUNCTION_29_9();
      v79 = v160[16];
      OUTLINED_FUNCTION_28_6();
      v117();
      v118 = (*(v78 + 88))(v79, v114);
      if (v118 == *MEMORY[0x277CD8368])
      {
        v119 = OUTLINED_FUNCTION_30_6();
        v120(v119);
        v121 = v178;
        v122 = v161;
        v123 = OUTLINED_FUNCTION_25_7();
        v124(v123);
        v183 = v70;
        v184 = MEMORY[0x277CD81D0];
        v125 = __swift_allocate_boxed_opaque_existential_1(&v181);
        (*(v121 + 16))(v125, v122, v70);
        OUTLINED_FUNCTION_26_14();
        sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
        (*(v121 + 8))(v122, v70);
LABEL_38:
        v140 = OUTLINED_FUNCTION_23_7();
        v141(v140);
        goto LABEL_39;
      }

      if (v118 != *MEMORY[0x277CD8350])
      {
        sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
        v147 = *(v78 + 8);
        v147(v66, v114);
        __swift_destroy_boxed_opaque_existential_1Tm(&v189);
        v147(v79, v114);
        goto LABEL_46;
      }

      v133 = OUTLINED_FUNCTION_30_6();
      v134(v133);
      OUTLINED_FUNCTION_9_23();
      v47 = v165;
      OUTLINED_FUNCTION_25_7();
    }

    OUTLINED_FUNCTION_24_12();
    v135();
    v183 = v79;
    OUTLINED_FUNCTION_7_19();
    v106 = MEMORY[0x277D2AE80];
    goto LABEL_37;
  }

  sub_21669987C(a1, &qword_27CAB8E30, &unk_21701BA90);
  result = sub_21669987C(&v186, &qword_27CAB8E30, &unk_21701BA90);
  v69 = 0;
LABEL_14:
  *v180 = v69;
  return result;
}

uint64_t sub_2168189DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for SplitPosterLockup.Item.ArtworkTreatment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216818B50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v104 = a3;
  v4 = type metadata accessor for SplitPosterLockup.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_0();
  v89 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v94 = &v82 - v7;
  v8 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v86 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v88 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v93 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v103 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v85 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v87 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v92 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v82 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  sub_21700D7A4();
  sub_21700CE04();
  v100 = v10;
  v101 = *(v10 + 16);
  v102 = v8;
  v96 = v10 + 16;
  v101(v19, v107, v8);
  v34 = type metadata accessor for SplitPosterLockup(0);
  v98 = v34[5];
  v83 = v33;
  v84 = v19;
  sub_21700D734();
  v99 = a1;
  sub_21700CE04();
  v35 = sub_21700CDB4();
  v37 = v36;
  v40 = *(v21 + 8);
  v38 = v21 + 8;
  v39 = v40;
  v41 = v30;
  v42 = v103;
  v40(v41, v103);
  if (v37)
  {
    v90 = v39;
    v91 = v38;
    v97 = v34;
    v105 = v35;
    v106 = v37;
    v43 = v104;
    sub_21700F364();
    v44 = v92;
    v45 = v99;
    sub_21700CE04();
    v46 = v93;
    v47 = v107;
    v48 = v102;
    v101(v93, v107, v102);
    v50 = v94;
    v49 = v95;
    sub_216819368(v44, v46, v94);
    v51 = v49 == 0;
    if (!v49)
    {
      LODWORD(v95) = 1;
      sub_216819CC0(v50, v43 + v97[6]);
      v59 = v87;
      sub_21700CE04();
      v60 = v88;
      v61 = OUTLINED_FUNCTION_9_6();
      (v101)(v61);
      v62 = v89;
      sub_216819368(v59, v60, v89);
      sub_216819CC0(v62, v43 + v97[7]);
      v63 = v83;
      sub_21700CE04();
      v64 = OUTLINED_FUNCTION_9_6();
      (v101)(v64);
      v65 = v45;
      sub_216819D24();
      sub_21700D734();
      sub_21700CE04();
      v94 = sub_21700CDB4();
      v67 = v66;
      v68 = v103;
      v69 = v90;
      v90(v63, v103);
      v70 = (v43 + v97[10]);
      *v70 = v94;
      v70[1] = v67;
      sub_21700CE04();
      v71 = sub_21700CDB4();
      v94 = v72;
      v69(v63, v68);
      v73 = (v43 + v97[9]);
      *v73 = v71;
      v73[1] = v94;
      v74 = v102;
      sub_21700CE04();
      v75 = v107;
      (v101)(v86);
      sub_216A17C24();
      v77 = v76;
      v79 = v78;
      (*(v100 + 8))(v75, v74);
      result = (v90)(v65, v103);
      v81 = (v43 + v97[11]);
      *v81 = v77;
      v81[1] = v79;
      return result;
    }

    v52 = OUTLINED_FUNCTION_9_24();
    v53 = v103;
    v54 = v90;
    (*(v100 + 8))(v52);
    v54(v48, v53);
    sub_216788110(v43);
    v34 = v97;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_29();
    sub_2166D77D4(v55, v56, MEMORY[0x277D22550]);
    swift_allocError();
    *v57 = 25705;
    v57[1] = 0xE200000000000000;
    v57[2] = v34;
    OUTLINED_FUNCTION_50();
    (*(v58 + 104))();
    swift_willThrow();
    (*(v100 + 8))(v107, v102);
    v39(v99, v42);
    v51 = 0;
    v47 = 0;
    v43 = v104;
  }

  result = sub_216699820(v43 + v98, &qword_27CAB6D58, &unk_217014E30);
  if (v51)
  {
    result = sub_216819C64(v43 + v34[6]);
  }

  if (v47)
  {
    sub_216819C64(v43 + v34[7]);
    sub_216699820(v43 + v34[8], &qword_27CAB8E60, qword_21701BCD0);
  }

  return result;
}

uint64_t sub_216819368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v77 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v73 = v5;
  MEMORY[0x28223BE20](v6);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v69 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v24 = *(v10 + 8);
  v23 = v10 + 8;
  v74 = v8;
  v72 = v24;
  (v24)(v18, v8);
  if (v22)
  {
    v75 = v20;
    v76 = v22;
    v25 = a3;
    sub_21700F364();
    sub_21700CE04();
    v26 = sub_21700CDB4();
    v28 = v27;
    v29 = v74;
    v30 = v72;
    v67 = v23;
    (v72)(v15, v74);
    v31 = type metadata accessor for SplitPosterLockup.Item(0);
    v32 = (v25 + v31[6]);
    *v32 = v26;
    v32[1] = v28;
    v65 = v19;
    sub_21700CE04();
    v33 = sub_21700CDB4();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_9_6();
    v30(v36);
    v37 = (v25 + v31[7]);
    *v37 = v33;
    v37[1] = v35;
    sub_21700CE04();
    v38 = sub_21700CDB4();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_9_6();
    v42 = v29;
    v30(v41);
    v43 = v31[8];
    v70 = v25;
    v44 = (v25 + v43);
    *v44 = v38;
    v44[1] = v40;
    v45 = v65;
    sub_21700CE04();
    v46 = v71;
    sub_21700D2E4();
    (v30)(v15, v42);
    type metadata accessor for Artwork(0);
    v47 = v45;
    sub_21700CE04();
    v48 = v46;
    v66 = *(v73 + 16);
    v49 = v68;
    v50 = v77;
    v66(v68, v48, v77);
    sub_2166D77D4(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    OUTLINED_FUNCTION_9_6();
    sub_21700D734();
    type metadata accessor for ContentDescriptor(0);
    sub_21700CE04();
    v66(v49, v48, v50);
    v51 = v31;
    sub_2166D77D4(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v52 = v70;
    OUTLINED_FUNCTION_9_6();
    sub_21700D734();
    sub_21700CE04();
    sub_216819D78();
    sub_21700CCC4();
    v53 = v74;
    v54 = v72;
    (v72)(v15, v74);
    v55 = v51;
    *(v52 + v51[12]) = v75;
    v56 = v69;
    sub_21700CE04();
    LOBYTE(v45) = sub_21700CD44();
    (*(v73 + 8))(v71, v77);
    v54(v47, v53);
    result = (v54)(v56, v53);
    *(v52 + v55[11]) = v45 & 1;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_29();
    sub_2166D77D4(v58, v59, MEMORY[0x277D22550]);
    swift_allocError();
    v61 = v60;
    v62 = type metadata accessor for SplitPosterLockup.Item(0);
    *v61 = 25705;
    v61[1] = 0xE200000000000000;
    v61[2] = v62;
    OUTLINED_FUNCTION_50();
    (*(v63 + 104))(v61);
    swift_willThrow();
    (*(v73 + 8))(v71, v77);
    return (v72)(v19, v74);
  }

  return result;
}

uint64_t sub_2168199D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700D7A4();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216819A68(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216819ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216819A68(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216819AF0()
{
  result = qword_27CAB8E48;
  if (!qword_27CAB8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8E48);
  }

  return result;
}

uint64_t sub_216819B78(uint64_t a1)
{
  result = sub_2166D77D4(&qword_27CAB8E50, type metadata accessor for SplitPosterLockup.Item, &unk_21701BBC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216819C64(uint64_t a1)
{
  v2 = type metadata accessor for SplitPosterLockup.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216819CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SplitPosterLockup.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216819D24()
{
  result = qword_280E42960[0];
  if (!qword_280E42960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E42960);
  }

  return result;
}

unint64_t sub_216819D78()
{
  result = qword_27CAB8E68[0];
  if (!qword_27CAB8E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAB8E68);
  }

  return result;
}

void sub_216819DD8(uint64_t a1)
{
  sub_2166AE79C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_216819E74()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216819ECC();
}

char *sub_216819ECC()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  type metadata accessor for CloudLibraryStatusController(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v1 & 1);
}

uint64_t sub_216819F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-1] - v9;
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  sub_21667E91C(v11, v12);
  OUTLINED_FUNCTION_0_5();
  if (*(v3 + *(v13 + 272)))
  {
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = *(v7 + 264);
    *(v15 + 24) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
    sub_2166B5BA8();

    sub_21700D1D4();
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
    v17 = v10;
    v18 = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
    v17 = v10;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
  OUTLINED_FUNCTION_0_5();
  v20 = *(v19 + 280);
  swift_beginAccess();
  sub_2166B5938(v10, v3 + v20);
  return swift_endAccess();
}

uint64_t sub_21681A1D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B12888(result);
  }

  return result;
}

uint64_t sub_21681A22C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  OUTLINED_FUNCTION_0_5();
  v13 = *(v12 + 280);
  swift_beginAccess();
  sub_21681A570(v1 + v13, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_21681A5E0(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  OUTLINED_FUNCTION_0_5();
  if (*(v1 + *(v15 + 272)))
  {

    sub_21700CC24();
  }

  (*(v9 + 8))(v11, v8);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  swift_beginAccess();
  sub_2166B5938(v4, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_21681A458()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  v2 = v0 + *(v1 + 280);

  return sub_21681A5E0(v2);
}

char *sub_21681A4A8()
{
  v0 = sub_216B127F4();

  OUTLINED_FUNCTION_0_5();
  sub_21681A5E0(&v0[*(v1 + 280)]);
  return v0;
}

uint64_t sub_21681A504()
{
  v0 = sub_21681A4A8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21681A570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21681A5E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21681A650@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v46 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v46 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  sub_21700CE04();
  v23 = v54;
  (*(v8 + 16))(v11, v54, v6);
  v24 = v49;
  sub_21700D224();
  if (v24)
  {
    (*(v8 + 8))(v23, v6);
    (*(v13 + 8))(v51, v50);
    return result;
  }

  v49 = v8;
  (*(v19 + 32))(v48, v22, v17);
  v26 = v46;
  v27 = v51;
  sub_21700CE04();
  v28 = v47;
  sub_21700CCB4();
  v29 = *(v13 + 8);
  v30 = v50;
  v46 = (v13 + 8);
  v29(v26, v50);
  v31 = sub_21700D3E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v31);
  v33 = v30;
  if (EnumTagSinglePayload == 1)
  {
    sub_21669987C(v47, &qword_27CAB7D20, &qword_217018700);
    v34 = v49;
LABEL_6:
    v36 = sub_21700E384();

    goto LABEL_7;
  }

  v35 = v47;
  v36 = sub_21700D3D4();
  (*(*(v31 - 8) + 8))(v35, v31);
  v34 = v49;
  if (!v36)
  {
    goto LABEL_6;
  }

LABEL_7:
  v42 = v48;
  v43 = sub_21681AAB4(v36, v37, v38, v39, v40, v41, v52);
  (*(v34 + 8))(v54, v6, v43);
  v29(v27, v33);
  v44 = (v42 + *(type metadata accessor for SocialOnboardingUpdateUserAttributesAction(0) + 20));
  v45 = v52[1];
  *v44 = v52[0];
  v44[1] = v45;
  v44[2] = v53[0];
  result = *(v53 + 9);
  *(v44 + 41) = *(v53 + 9);
  return result;
}

double sub_21681AAB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>)
{
  v8 = OUTLINED_FUNCTION_4_22(a1, MEMORY[0x277D837D0], MEMORY[0x277D837E0], a2, a3, a4, a5, a6, v117, v129);
  OUTLINED_FUNCTION_2_30(v8, v9, v10, v11, v12, v13, v14, v15, v118, v130, v141, v142, v143, v144, v145, v146, v147, v148, 1701667182, 0xE400000000000000, v150, *(&v150 + 1), *v151, *&v151[8], *&v151[16], *&v151[24], v152[0]);
  v16 = sub_216788110(v152);
  if (*(&v150 + 1))
  {
    v21 = OUTLINED_FUNCTION_0_41(v16, v17, v18, MEMORY[0x277D837D0], v19, v20);
    if (v21)
    {
      v27 = v141;
    }

    else
    {
      v27 = 0;
    }

    if (v21)
    {
      v28 = v142;
    }

    else
    {
      v28 = 0;
    }

    v119 = v28;
    v131 = v27;
  }

  else
  {
    v21 = sub_21669987C(&v149, &unk_27CABF7A0, &unk_217014D20);
    v119 = 0;
    v131 = 0;
  }

  *&v149 = 0x656C646E6168;
  *(&v149 + 1) = 0xE600000000000000;
  v29 = OUTLINED_FUNCTION_4_22(v21, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v22, v23, v24, v25, v26, v119, v131);
  OUTLINED_FUNCTION_2_30(v29, v30, v31, v32, v33, v34, v35, v36, v120, v132, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), *v151, *&v151[8], *&v151[16], *&v151[24], v152[0]);
  v37 = sub_216788110(v152);
  if (*(&v150 + 1))
  {
    v42 = OUTLINED_FUNCTION_0_41(v37, v38, v39, MEMORY[0x277D837D0], v40, v41);
    if (v42)
    {
      v48 = v141;
    }

    else
    {
      v48 = 0;
    }

    if (v42)
    {
      v49 = v142;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v42 = sub_21669987C(&v149, &unk_27CABF7A0, &unk_217014D20);
    v48 = 0;
    v49 = 0;
  }

  *&v149 = 0x7461766972507369;
  *(&v149 + 1) = 0xE900000000000065;
  v50 = OUTLINED_FUNCTION_4_22(v42, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v43, v44, v45, v46, v47, v121, v133);
  OUTLINED_FUNCTION_2_30(v50, v51, v52, v53, v54, v55, v56, v57, v122, v134, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), *v151, *&v151[8], *&v151[16], *&v151[24], v152[0]);
  v58 = sub_216788110(v152);
  if (*(&v150 + 1))
  {
    OUTLINED_FUNCTION_0_41(v58, v59, v60, MEMORY[0x277D839B0], v61, v62);
    OUTLINED_FUNCTION_3_34();
    if (v71)
    {
      v72 = v70;
    }

    else
    {
      v72 = v69;
    }
  }

  else
  {
    v63 = sub_21669987C(&v149, &unk_27CABF7A0, &unk_217014D20);
    v72 = 2;
  }

  *&v149 = 0xD000000000000017;
  *(&v149 + 1) = 0x8000000217082A70;
  v73 = OUTLINED_FUNCTION_4_22(v63, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v64, v65, v66, v67, v68, v123, v135);
  OUTLINED_FUNCTION_2_30(v73, v74, v75, v76, v77, v78, v79, v80, v124, v136, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), *v151, *&v151[8], *&v151[16], *&v151[24], v152[0]);
  v81 = sub_216788110(v152);
  if (*(&v150 + 1))
  {
    OUTLINED_FUNCTION_0_41(v81, v82, v83, MEMORY[0x277D839B0], v84, v85);
    OUTLINED_FUNCTION_3_34();
    if (v71)
    {
      v94 = v93;
    }

    else
    {
      v94 = v92;
    }
  }

  else
  {
    v86 = sub_21669987C(&v149, &unk_27CABF7A0, &unk_217014D20);
    v94 = 2;
  }

  *&v149 = 0xD000000000000015;
  *(&v149 + 1) = 0x8000000217082A90;
  v95 = OUTLINED_FUNCTION_4_22(v86, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v87, v88, v89, v90, v91, v125, v137);
  OUTLINED_FUNCTION_2_30(v95, v96, v97, v98, v99, v100, v101, v102, v126, v138, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), *v151, *&v151[8], *&v151[16], *&v151[24], v152[0]);
  sub_216788110(v152);
  if (*(&v150 + 1))
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_3_34();
    if (v71)
    {
      v111 = v110;
    }

    else
    {
      v111 = v109;
    }
  }

  else
  {
    v103 = sub_21669987C(&v149, &unk_27CABF7A0, &unk_217014D20);
    v111 = 2;
  }

  *&v149 = 0xD000000000000015;
  *(&v149 + 1) = 0x8000000217082AB0;
  OUTLINED_FUNCTION_4_22(v103, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v104, v105, v106, v107, v108, v127, v139);
  sub_216934FBC();

  sub_216788110(v152);
  if (v162)
  {
    v112 = swift_dynamicCast();
    if (v112)
    {
      v113 = v149;
    }

    else
    {
      v113 = 0;
    }

    if (v112)
    {
      v114 = *(&v149 + 1);
    }

    else
    {
      v114 = 0xF000000000000000;
    }
  }

  else
  {
    sub_21669987C(v161, &unk_27CABF7A0, &unk_217014D20);
    v113 = 0;
    v114 = 0xF000000000000000;
  }

  sub_21677A510(0, 0xF000000000000000);
  *&v149 = v140;
  *(&v149 + 1) = v128;
  *&v150 = v48;
  *(&v150 + 1) = v49;
  v151[0] = v72;
  v151[1] = v94;
  v151[2] = v111;
  *&v151[3] = v163;
  v151[7] = v164;
  *&v151[8] = v113;
  *&v151[16] = v114;
  v151[24] = 0;
  v152[0] = v140;
  v152[1] = v128;
  v152[2] = v48;
  v152[3] = v49;
  v153 = v72;
  v154 = v94;
  v155 = v111;
  v156 = v163;
  v157 = v164;
  v158 = v113;
  v159 = v114;
  v160 = 0;
  sub_21681AEB4(&v149, &v141);
  sub_21681AEEC(v152);
  v115 = v150;
  *a7 = v149;
  a7[1] = v115;
  a7[2] = *v151;
  result = *&v151[9];
  *(a7 + 41) = *&v151[9];
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21681AF7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21681AFD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21681B0AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v80 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v69 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v11 = v65 - v10;
  v76 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v66 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v68 = v65 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v71 = v65 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v22 = v65 - v21;
  MEMORY[0x28223BE20](v23);
  sub_21700D7A4();
  v24 = a1;
  sub_21700CE04();
  v74 = v6;
  v75 = v4;
  v67 = *(v6 + 16);
  v67(v11, v77, v4);
  v72 = type metadata accessor for TextListComponentModel(0);
  v73 = *(v72 + 20);
  sub_21700D734();
  v25 = a1;
  v26 = v76;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v30 = *(v13 + 8);
  v31 = v22;
  v32 = v13 + 8;
  v30(v31, v26);
  if (v29)
  {
    v78 = v27;
    v79 = v29;
    sub_21700F364();
    v33 = v71;
    sub_21700CE04();
    v34 = sub_21700CDB4();
    v36 = v35;
    v71 = v30;
    v30(v33, v26);
    if (v36)
    {
      v65[1] = v32;
      sub_21700CE04();
      v37 = v25;
      v38 = v77;
      v39 = v75;
      v67(v69, v77, v75);
      sub_21681B6CC();
      v40 = v70;
      v41 = sub_21700E924();
      if (!v40)
      {
        v56 = v72;
        v57 = v80;
        *(v80 + *(v72 + 28)) = v41;
        v58 = (v57 + *(v56 + 24));
        *v58 = v34;
        v58[1] = v36;
        v59 = v66;
        sub_21700CE04();
        v60 = v37;
        v61 = sub_21700CD44();
        (*(v74 + 8))(v38, v39);
        v62 = v60;
        v63 = v76;
        v64 = v71;
        (v71)(v62, v76);
        result = v64(v59, v63);
        *(v80 + *(v56 + 32)) = v61 & 1;
        return result;
      }

      v25 = v37;

      v42 = v80;
      v26 = v76;
    }

    else
    {
      v49 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_42();
      v52 = sub_2166D82A8(v50, v51, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_4(v52);
      *v53 = 0x656C746974;
      v54 = v72;
      v53[1] = 0xE500000000000000;
      v53[2] = v54;
      (*(*(v49 - 8) + 104))(v53, *MEMORY[0x277D22530], v49);
      swift_willThrow();
      v42 = v80;
    }

    (*(v74 + 8))(v77, v75);
    (v71)(v25, v26);
    sub_216788110(v42);
  }

  else
  {
    v43 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_42();
    v46 = sub_2166D82A8(v44, v45, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v46);
    *v47 = 25705;
    v48 = v72;
    v47[1] = 0xE200000000000000;
    v47[2] = v48;
    (*(*(v43 - 8) + 104))(v47, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    (*(v74 + 8))(v77, v75);
    v30(v24, v26);
    v42 = v80;
  }

  return sub_2167B0250(v42 + v73);
}

unint64_t sub_21681B6CC()
{
  result = qword_27CAB8F08;
  if (!qword_27CAB8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8F08);
  }

  return result;
}

unint64_t sub_21681B734()
{
  result = qword_280E332B0[0];
  if (!qword_280E332B0[0])
  {
    type metadata accessor for RemovePersistenceItemAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E332B0);
  }

  return result;
}

uint64_t sub_21681B78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D2A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Persistence();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v8 = type metadata accessor for RemovePersistenceItemAction(0);
  sub_216AE3600(*(a1 + *(v8 + 20)), *(a1 + *(v8 + 20) + 8), *(a1 + *(v8 + 24)), a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v5 + 104))(v7, *MEMORY[0x277D21CA8], v4);
  v9 = sub_21700E1F4();

  return v9;
}

unint64_t sub_21681B900()
{
  result = qword_280E2F580;
  if (!qword_280E2F580)
  {
    type metadata accessor for UpdateNotificationSettingsAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2F580);
  }

  return result;
}

uint64_t sub_21681B958(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v4 = *(v12[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userNotificationSettings);
  v5 = *(v12[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userNotificationSettings + 1);

  updated = type metadata accessor for UpdateNotificationSettingsAction(0);
  if (*(a1 + *(updated + 20)) == 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + *(updated + 20));
  }

  if (*(a1 + *(updated + 24)) == 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a1 + *(updated + 24));
  }

  type metadata accessor for JSIntentDispatcher();
  sub_21700E094();
  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_216ECDCEC(v9 & 0xFFFFFFFE | v7 & 1, a2);
  v12[3] = sub_21700D7C4();
  v12[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_21700D7B4();
  sub_21700D2A4();
  v10 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v10;
}

uint64_t sub_21681BAB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21681BB50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21681BB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21681BBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = type metadata accessor for Link(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  sub_21681D2F0(a1, v14 - v13, type metadata accessor for Link);
  v16 = (v15 + *(v11 + 24));
  v17 = v16[1];
  if (v17)
  {
    v31 = *v16;
    v18 = (v15 + *(v11 + 20));
    if (v18[1])
    {
      v19 = *v18;
      v20 = v18[1];
    }

    else
    {
      sub_217006214();
      v19 = sub_2170061F4();
      v20 = v27;
      (*(v6 + 8))(v10, v4);
    }

    *a2 = v19;
    *(a2 + 8) = v20;
    sub_21700DF14();
    sub_21700DF14();
    OUTLINED_FUNCTION_5_22();
    sub_21681D394(v15, v28);
    *(a2 + 16) = v31;
    *(a2 + 24) = v17;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
    v29 = OUTLINED_FUNCTION_8();
    return sub_21681D394(v29, v30);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F58, &qword_21701C130);
    sub_2167880BC();
    swift_allocError();
    *v22 = xmmword_21701C090;
    *(v22 + 16) = v21;
    swift_willThrow();
    OUTLINED_FUNCTION_5_22();
    sub_21681D394(v15, v23);
    v24 = OUTLINED_FUNCTION_8();
    return sub_21681D394(v24, v25);
  }
}

uint64_t sub_21681BE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DefaultAccessoryButton(0);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21681D2F0(a1, v6, type metadata accessor for DefaultAccessoryButton);
  v7 = &v6[*(v4 + 20)];
  v8 = *(v7 + 1);
  if (v8)
  {
    v20[0] = *v7;
    v20[1] = v8;
    sub_21700DF14();
    sub_21700F364();
    v9 = type metadata accessor for DefaultAccessoryButton(0);
    v10 = a2 + v9[7];
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v11 = &v6[*(v4 + 28)];
    v13 = *v11;
    v12 = *(v11 + 1);
    sub_21700DF14();
    sub_21681D394(v6, type metadata accessor for DefaultAccessoryButton);
    v14 = (a2 + v9[6]);
    *v14 = v13;
    v14[1] = v12;
    v15 = v9[5];
    v16 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(a2 + v15, 1, 1, v16);
    *(a2 + v9[8]) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8988, qword_21701A870);
    sub_2167880BC();
    swift_allocError();
    *v18 = xmmword_217014E10;
    *(v18 + 16) = v17;
    swift_willThrow();
    sub_21681D394(v6, type metadata accessor for DefaultAccessoryButton);
  }

  return sub_21681D394(a1, type metadata accessor for DefaultAccessoryButton);
}

uint64_t sub_21681C004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Empty(0);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_21681D2F0(a1, v7 - v6, type metadata accessor for Empty);
  v9 = sub_21700D3B4();
  v10 = sub_21681D34C(&qword_280E2A218, MEMORY[0x277D21D20], &protocol conformance descriptor for CompoundAction);
  sub_216F76B70(v8, v11, v9, v10, a2);
  return sub_21681D394(a1, type metadata accessor for Empty);
}

uint64_t sub_21681C114(char a1)
{
  switch(a1)
  {
    case 1:
      type metadata accessor for PopoverAccessoryButton(0);
      v1 = type metadata accessor for PopoverAccessoryButton;
      sub_21681D34C(&qword_27CAB8F38, type metadata accessor for PopoverAccessoryButton, &unk_217015768);
      v2 = &unk_27CAB8F40;
      v3 = &unk_217015738;
      break;
    case 2:
      type metadata accessor for ShareAccessoryButton(0);
      v1 = type metadata accessor for ShareAccessoryButton;
      sub_21681D34C(&qword_27CAB8F78, type metadata accessor for ShareAccessoryButton, &unk_21702C3C8);
      v2 = &unk_27CAB8F80;
      v3 = &unk_21702C398;
      break;
    case 3:
      type metadata accessor for ContextAccessoryButton(0);
      v1 = type metadata accessor for ContextAccessoryButton;
      sub_21681D34C(&qword_27CAB8F28, type metadata accessor for ContextAccessoryButton, &unk_217056180);
      v2 = &unk_27CAB8F30;
      v3 = &unk_217056150;
      break;
    case 4:
      type metadata accessor for AddToPlaylistAccessoryButton(0);
      v1 = type metadata accessor for AddToPlaylistAccessoryButton;
      sub_21681D34C(&qword_27CAB8F68, type metadata accessor for AddToPlaylistAccessoryButton, &unk_2170669C0);
      v2 = &unk_27CAB8F70;
      v3 = &unk_217066990;
      break;
    default:
      type metadata accessor for DefaultAccessoryButton(0);
      v1 = type metadata accessor for DefaultAccessoryButton;
      sub_21681D34C(&qword_27CAB8F48, type metadata accessor for DefaultAccessoryButton, &unk_21701A9B0);
      v2 = &qword_27CAB8F50;
      v3 = &unk_21701A980;
      break;
  }

  sub_21681D34C(v2, v1, v3);
  return OUTLINED_FUNCTION_8();
}

unint64_t sub_21681C360(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21681C3AC(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7265766F706F70;
      break;
    case 2:
      result = 0x6572616873;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    case 4:
      result = 0x616C506F54646461;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21681C454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21681C360(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21681C484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21681C3AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_OWORD *sub_21681C4C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v72 = a2;
  v62 = a3;
  v65 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v64 = v8 - v7;
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  v66 = a1;
  sub_21700CE04();
  sub_21681D29C();
  sub_21700CD14();
  v22 = *(v11 + 8);
  v23 = v21;
  v24 = v9;
  v22(v23, v9);
  v25 = LOBYTE(v71[0]);
  if (LOBYTE(v71[0]) == 5)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_6_24();
    v28 = sub_21681D34C(v26, v27, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v28);
    v29 = MEMORY[0x277D84F90];
    *v30 = 1684957547;
    v30[1] = 0xE400000000000000;
    v30[2] = &type metadata for AccessoryButton;
    v30[3] = v29;
    OUTLINED_FUNCTION_9_7();
    (*(v31 + 104))();
    swift_willThrow();
    (*(v5 + 8))(v72, v65);
    v32 = v66;
  }

  else
  {
    v63 = v5;
    v33 = v66;
    sub_21700CE04();
    if ((sub_21700CDA4() & 1) == 0)
    {
      v61 = v22;
      v57 = v25;
      v34 = sub_21681C114(v25);
      v58 = v35;
      v37 = v36;
      (*(v11 + 16))(v15, v18, v24);
      v38 = v63;
      (*(v63 + 16))(v64, v72, v65);
      v39 = sub_21700F164();
      v60 = &v55;
      v56 = v39;
      OUTLINED_FUNCTION_1();
      v41 = v40;
      MEMORY[0x28223BE20](v42);
      v59 = v18;
      v43 = v24;
      v45 = &v55 - v44;
      sub_21700D724();
      if (__swift_getEnumTagSinglePayload(v45, 1, v34) != 1)
      {
        v68 = v34;
        v69 = v58;
        v70 = v37;
        __swift_allocate_boxed_opaque_existential_1(&v67);
        OUTLINED_FUNCTION_9_7();
        (*(v52 + 32))();
        (*(v38 + 8))(v72, v65);
        v53 = v61;
        v61(v66, v43);
        v53(v59, v43);
        sub_21681D228(&v67, v71);
        v54 = v62;
        result = sub_21681D228(v71, v62 + 8);
        *v54 = v57;
        return result;
      }

      (*(v41 + 8))(v45, v56);
      v22 = v61;
      v33 = v66;
      v24 = v43;
      v18 = v59;
    }

    sub_21700E2E4();
    OUTLINED_FUNCTION_6_24();
    v48 = sub_21681D34C(v46, v47, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v48);
    *v49 = 1835365481;
    v49[1] = 0xE400000000000000;
    v49[2] = &type metadata for AccessoryButton;
    OUTLINED_FUNCTION_9_7();
    (*(v50 + 104))();
    swift_willThrow();
    (*(v63 + 8))(v72, v65);
    v22(v33, v24);
    v32 = v18;
  }

  return (v22)(v32, v24);
}

_OWORD *sub_21681CAA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for ContextAccessoryButton(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  v59 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v60 = &v58 - v8;
  v9 = type metadata accessor for PopoverAccessoryButton(0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for DefaultAccessoryButton(0);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18, &unk_217072A20);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v58 - v27;
  v29 = type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v58 - v35;
  sub_21681D100(a1, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_21681D170(v28);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F20, &qword_21701C128);
    sub_2167880BC();
    swift_allocError();
    *v38 = 0xD000000000000013;
    v38[1] = 0x8000000217082B10;
    v38[2] = v37;
    swift_willThrow();
    OUTLINED_FUNCTION_0_43();
    return sub_21681D394(a1, v39);
  }

  v58 = a1;
  sub_21681D240(v28, v36, type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton);
  sub_21681D2F0(v36, v33, type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v42 = v66;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21681D240(v33, v16, type metadata accessor for PopoverAccessoryButton);
      *v42 = 1;
      v63 = type metadata accessor for PopoverAccessoryButton(0);
      v64 = sub_21681D34C(&qword_27CAB8F38, type metadata accessor for PopoverAccessoryButton, &unk_217015768);
      v65 = sub_21681D34C(&qword_27CAB8F40, type metadata accessor for PopoverAccessoryButton, &unk_217015738);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
      sub_21681D2F0(v16, v13, type metadata accessor for PopoverAccessoryButton);
      v44 = v61;
      sub_2167A7258(v13, boxed_opaque_existential_1);
      OUTLINED_FUNCTION_0_43();
      sub_21681D394(v58, v45);
      sub_21681D394(v16, type metadata accessor for PopoverAccessoryButton);
      OUTLINED_FUNCTION_1_30();
      if (!v44)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v51 = v60;
      sub_21681D240(v33, v60, type metadata accessor for ContextAccessoryButton);
      *v42 = 3;
      v63 = type metadata accessor for ContextAccessoryButton(0);
      v64 = sub_21681D34C(&qword_27CAB8F28, type metadata accessor for ContextAccessoryButton, &unk_217056180);
      v65 = sub_21681D34C(&qword_27CAB8F30, type metadata accessor for ContextAccessoryButton, &unk_217056150);
      __swift_allocate_boxed_opaque_existential_1(v62);
      v52 = v59;
      sub_21681D2F0(v51, v59, type metadata accessor for ContextAccessoryButton);
      v53 = v61;
      sub_216C386F8(v52);
      if (!v53)
      {
        OUTLINED_FUNCTION_0_43();
        sub_21681D394(v56, v57);
        OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_1_30();
LABEL_13:
        v50 = v42 + 8;
        return sub_21681D228(v62, v50);
      }

      OUTLINED_FUNCTION_0_43();
      sub_21681D394(v54, v55);
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_1_30();
    }

    return __swift_deallocate_boxed_opaque_existential_2(v62);
  }

  sub_21681D240(v33, v24, type metadata accessor for DefaultAccessoryButton);
  v46 = v66;
  *v66 = 0;
  sub_21681D2F0(v24, v21, type metadata accessor for DefaultAccessoryButton);
  v63 = type metadata accessor for DefaultAccessoryButton(0);
  v64 = sub_21681D34C(&qword_27CAB8F48, type metadata accessor for DefaultAccessoryButton, &unk_21701A9B0);
  v65 = sub_21681D34C(&qword_27CAB8F50, type metadata accessor for DefaultAccessoryButton, &unk_21701A980);
  v47 = __swift_allocate_boxed_opaque_existential_1(v62);
  v48 = v61;
  sub_21681BE04(v21, v47);
  OUTLINED_FUNCTION_0_43();
  sub_21681D394(v58, v49);
  sub_21681D394(v24, type metadata accessor for DefaultAccessoryButton);
  OUTLINED_FUNCTION_1_30();
  if (v48)
  {
    return __swift_deallocate_boxed_opaque_existential_2(v62);
  }

  v50 = v46 + 8;
  return sub_21681D228(v62, v50);
}

uint64_t sub_21681D100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18, &unk_217072A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21681D170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18, &unk_217072A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CEA1440);
  }

  return result;
}

_OWORD *sub_21681D228(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_21681D240(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_21681D29C()
{
  result = qword_27CAB8F60;
  if (!qword_27CAB8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8F60);
  }

  return result;
}

uint64_t sub_21681D2F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_21681D34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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