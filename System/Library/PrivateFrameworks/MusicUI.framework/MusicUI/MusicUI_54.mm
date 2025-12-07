uint64_t sub_216C10C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  sub_21700EA34();
  v8[13] = sub_21700EA24();
  v10 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216C10CF8, v10, v9);
}

uint64_t sub_216C10CF8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v17 = *(v0 + 80);

  *(v0 + 16) = v3;
  *(v0 + 24) = v17;
  *(v0 + 40) = v1;
  v5 = type metadata accessor for SearchPageView(0, v0 + 16);
  type metadata accessor for SearchPagePresenter(0);
  OUTLINED_FUNCTION_30_39();
  sub_2166B2EC4(v6, v7);
  v8 = sub_2170081B4();
  v9 = (v4 + *(v5 + 60));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v9) = v9[16];
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F44();
  *(v8 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph) = v2;

  v12 = (v4 + *(v5 + 76));
  v14 = *v12;
  v13 = v12[1];
  *(v0 + 16) = v14;
  *(v0 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0, &unk_2170541C0);
  sub_21700AEB4();
  sub_216F0FEE4(v2);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_216C10EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v7 = type metadata accessor for SearchPageView(0, v9);
  return sub_216C10F00(a2, v7);
}

uint64_t sub_216C10F00(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700B5A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a2;
  v62 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v60 = v11;
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21700B604();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v53 - v14;
  type metadata accessor for DeepLinkInfoProvider();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v15 = aBlock;
  v16 = *(aBlock + 24);
  if (v16 != 1)
  {
    v53 = v8;
    v54 = v6;
    v55 = v7;
    v56 = v4;
    v57 = v3;
    v17 = *(aBlock + 16);
    v18 = *(aBlock + 32);
    v19 = *(aBlock + 32);
    v21 = v67;
    v20 = v68;
    v22 = (v67 + *(v68 + 64));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(aBlock) = v23;
    v71 = v24;
    LODWORD(v58) = v18;
    v25 = (v18 >> 8) & 1;
    LOBYTE(v69) = BYTE1(v18) & 1;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
    sub_21700AEC4();
    if (v19 != 2)
    {
      v26 = (v21 + *(v20 + 76));
      v28 = *v26;
      v27 = v26[1];
      aBlock = v28;
      v71 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0, &unk_2170541C0);
      sub_21700AEB4();
      sub_216F0FE50();
      v30 = v29;

      v31 = v58 & 1;
      v32 = sub_216C0CA0C(v58 & 1, v30);

      if (v32)
      {
        type metadata accessor for SearchPagePresenter(0);
        sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
        sub_2170081B4();
        LOBYTE(aBlock) = v31;
        sub_216C995C4(&aBlock);
      }
    }

    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    if (v16)
    {
      sub_21700DF14();
      sub_2170081B4();
      sub_216C98C74(v17, v16);

      sub_2170081B4();
      sub_216C998F4(v17, v16);
      sub_2167EF724(v17, v16);

      sub_2170081B4();
      sub_216C98D10();
      sub_2167EF724(v17, v16);

      sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
      v58 = sub_21700EE84();
      v33 = v59;
      sub_21700B5F4();
      v34 = v63;
      sub_21700B634();
      v64 = *(v64 + 8);
      (v64)(v33, v66);
      v36 = v61;
      v35 = v62;
      v37 = v68;
      (*(v62 + 16))(v61, v67, v68);
      v38 = (*(v35 + 80) + 48) & ~*(v35 + 80);
      v39 = swift_allocObject();
      v40 = *(v37 + 32);
      *(v39 + 16) = *(v37 + 16);
      *(v39 + 32) = v40;
      (*(v35 + 32))(v39 + v38, v36, v37);
      v74 = sub_216C1D298;
      v75 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v71 = 1107296256;
      v72 = sub_2169F0990;
      v73 = &block_descriptor_31;
      v41 = _Block_copy(&aBlock);

      v42 = v65;
      sub_21700B5C4();
      aBlock = MEMORY[0x277D84F90];
      sub_2166B2EC4(&qword_280E2A480, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
      sub_21680DFBC(&qword_280E29E50, &unk_27CABC970);
      v43 = v54;
      v44 = v57;
      sub_21700F214();
      v45 = v58;
      MEMORY[0x21CE9FC70](v34, v42, v43, v41);
      _Block_release(v41);

      (*(v56 + 8))(v43, v44);
      (*(v53 + 8))(v42, v55);
      (v64)(v34, v66);
    }

    else
    {
      sub_2170081B4();
      sub_216C98C74(0, 0xE000000000000000);

      v46 = v67 + *(v68 + 60);
      v48 = *(v46 + 8);
      v49 = *(v46 + 16);
      LOBYTE(aBlock) = *v46;
      v47 = aBlock;
      v71 = v48;
      LOBYTE(v72) = v49;
      LOBYTE(v69) = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
      sub_217007F54();
      LOBYTE(aBlock) = v47;
      v71 = v48;
      LOBYTE(v72) = v49;
      LOBYTE(v69) = v25;
      sub_217007F54();
    }

    v50 = *(v15 + 16);
    v51 = *(v15 + 24);
    *(v15 + 16) = xmmword_217016ED0;
    *(v15 + 32) = 0;
    sub_2167EF724(v50, v51);
  }
}

uint64_t sub_216C1178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v8 = type metadata accessor for SearchPageView(0, v10);
  return sub_216C10F00(a3, v8);
}

uint64_t sub_216C117D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v118 = a2;
  v113 = a7;
  v126 = a3;
  v127 = a4;
  v128 = a5;
  v129 = a6;
  v117 = type metadata accessor for SearchPageView(0, &v126);
  v108 = *(v117 - 8);
  v106 = *(v108 + 64);
  MEMORY[0x28223BE20](v117);
  v107 = &v80 - v12;
  v95 = sub_2170098A4();
  v91 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v80 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0) - 8;
  MEMORY[0x28223BE20](v96);
  v90 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v114 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v92 = &v80 - v20;
  v94 = sub_2170095F4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v115 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48, &qword_217054148);
  v23 = sub_21680DFBC(&qword_280E2AD28, &qword_27CAC5F48);
  v126 = v22;
  v127 = a3;
  v109 = a3;
  v110 = a4;
  v128 = a4;
  v129 = v23;
  v111 = a5;
  v130 = a5;
  v131 = a6;
  v112 = a6;
  v24 = type metadata accessor for SearchBootstrapView(255, &v126);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_2167B2E14();
  v126 = v24;
  v127 = MEMORY[0x277D837D0];
  v87 = v24;
  v27 = MEMORY[0x277D837D0];
  v128 = WitnessTable;
  v129 = v26;
  v89 = WitnessTable;
  v88 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v116 = &v80 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F50, &qword_217054150);
  v126 = v24;
  v127 = v27;
  v128 = WitnessTable;
  v129 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21680DFBC(qword_280E2E528, &qword_27CAC5F50);
  v105 = OpaqueTypeMetadata2;
  v126 = OpaqueTypeMetadata2;
  v127 = v30;
  v103 = v30;
  v100 = OpaqueTypeConformance2;
  v128 = OpaqueTypeConformance2;
  v129 = v32;
  v99 = v32;
  v102 = swift_getOpaqueTypeMetadata2();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v97 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v98 = &v80 - v35;
  v36 = *(a1 + 2);
  v124 = *a1;
  v125 = v36;
  v37 = v117;
  v38 = v118;
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v85 = v126;
  v84 = v127;
  v86 = v128;
  v83 = v129;
  v39 = v38 + *(v37 + 64);
  v40 = *v39;
  v41 = *(v39 + 8);
  v122 = v40;
  v123 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  v82 = v121;
  sub_216C1250C(v115);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v42 = v114;

  if (v122)
  {
    v43 = 286;
  }

  else
  {
    v43 = 283;
  }

  v119 = sub_216983738(v43);
  v120 = v44;
  swift_checkMetadataState();
  v45 = v115;
  v46 = v92;
  sub_21700A324();

  v47 = v95;

  (*(v93 + 8))(v45, v94);
  sub_216C0C76C();
  v48 = v91;
  (*(v91 + 104))(v42, *MEMORY[0x277CE0558], v47);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v47);
  v49 = *(v96 + 56);
  v50 = v46;
  v51 = v46;
  v52 = v90;
  sub_216683A80(v51, v90, &qword_27CAB8600, &qword_217020AD0);
  sub_216683A80(v42, v52 + v49, &qword_27CAB8600, &qword_217020AD0);
  v53 = v52;
  if (__swift_getEnumTagSinglePayload(v52, 1, v47) != 1)
  {
    v55 = v81;
    sub_216683A80(v52, v81, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(v52 + v49, 1, v47) != 1)
    {
      v56 = v52 + v49;
      v57 = v80;
      (*(v48 + 32))(v80, v56, v47);
      sub_2166B2EC4(&qword_280E2A858, MEMORY[0x277CE0570]);
      v54 = sub_21700E494();
      v58 = v50;
      v59 = v55;
      v60 = *(v48 + 8);
      v60(v57, v47);
      sub_216699778(v114, &qword_27CAB8600);
      sub_216699778(v58, &qword_27CAB8600);
      v60(v59, v47);
      sub_216699778(v53, &qword_27CAB8600);
      goto LABEL_11;
    }

    sub_216699778(v114, &qword_27CAB8600);
    sub_216699778(v50, &qword_27CAB8600);
    (*(v48 + 8))(v55, v47);
    goto LABEL_9;
  }

  sub_216699778(v42, &qword_27CAB8600);
  sub_216699778(v50, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v52 + v49, 1, v47) != 1)
  {
LABEL_9:
    sub_216699778(v52, &qword_27CAB8708);
    v54 = 0;
    goto LABEL_11;
  }

  sub_216699778(v52, &qword_27CAB8600);
  v54 = 1;
LABEL_11:
  v61 = v108;
  v62 = v107;
  v63 = v117;
  (*(v108 + 16))(v107, v118, v117);
  v64 = (*(v61 + 80) + 48) & ~*(v61 + 80);
  v65 = swift_allocObject();
  v66 = v110;
  *(v65 + 2) = v109;
  *(v65 + 3) = v66;
  v67 = v112;
  *(v65 + 4) = v111;
  *(v65 + 5) = v67;
  (*(v61 + 32))(&v65[v64], v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6020, &unk_2170542E8);
  v68 = swift_allocObject();
  v68[3] = v65;
  v68[4] = 0;
  v68[2] = sub_216C1CC14;
  LOBYTE(v126) = v54 & 1;
  v127 = v68;
  v69 = v97;
  v70 = v105;
  v71 = v103;
  v72 = v100;
  v73 = v99;
  v74 = v116;
  sub_21700A7E4();

  (*(v104 + 8))(v74, v70);
  v126 = v70;
  v127 = v71;
  v128 = v72;
  v129 = v73;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v98;
  v77 = v102;
  sub_2166C24DC(v69, v102, v75);
  v78 = *(v101 + 8);
  v78(v69, v77);
  sub_2166C24DC(v76, v77, v75);
  return (v78)(v76, v77);
}

uint64_t sub_216C1250C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_2170095E4();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2170098A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_216C0C76C();
  (*(v4 + 104))(v15, *MEMORY[0x277CE0558], v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_216683A80(v18, v9, &qword_27CAB8600, &qword_217020AD0);
  sub_216683A80(v15, &v9[v19], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    sub_216683A80(v9, v12, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
    {
      v21 = &v9[v19];
      v22 = v26;
      (*(v4 + 32))(v26, v21, v3);
      sub_2166B2EC4(&qword_280E2A858, MEMORY[0x277CE0570]);
      v23 = sub_21700E494();
      v24 = *(v4 + 8);
      v24(v22, v3);
      sub_216699778(v15, &qword_27CAB8600);
      sub_216699778(v18, &qword_27CAB8600);
      v24(v12, v3);
      sub_216699778(v9, &qword_27CAB8600);
      if (v23)
      {
        goto LABEL_9;
      }

      return sub_2170095B4();
    }

    sub_216699778(v15, &qword_27CAB8600);
    sub_216699778(v18, &qword_27CAB8600);
    (*(v4 + 8))(v12, v3);
LABEL_6:
    sub_216699778(v9, &qword_27CAB8708);
    return sub_2170095B4();
  }

  sub_216699778(v15, &qword_27CAB8600);
  sub_216699778(v18, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_216699778(v9, &qword_27CAB8600);
LABEL_9:
  v25 = v27;
  sub_2170095D4();
  sub_2170095C4();
  return (*(v28 + 8))(v25, v29);
}

void *sub_216C129F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  v8 = type metadata accessor for SearchPageView(0, __src);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v20 = __src[1];
  v21 = __src[0];
  v19 = __src[2];
  v9 = (a1 + *(v8 + 76));
  v11 = *v9;
  v10 = v9[1];
  __src[15] = v11;
  __src[16] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0, &unk_2170541C0);
  sub_21700AEB4();
  sub_216F0FE50();
  v13 = v12;

  sub_2170081B4();
  v14 = sub_216C99690();

  v15 = sub_2170081B4();
  sub_21700B3B4();
  sub_217008BB4();
  v16 = sub_2170081B4();
  v17 = sub_217007D54();
  *a6 = v21;
  *(a6 + 8) = v20;
  *(a6 + 16) = v19;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = v15;
  result = memcpy((a6 + 48), __src, 0x70uLL);
  *(a6 + 160) = v17;
  *(a6 + 168) = v16;
  return result;
}

uint64_t sub_216C12C3C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a7;
  v50 = sub_2170095E4();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2170095F4();
  v55 = *(v15 - 8);
  v56 = v15;
  MEMORY[0x28223BE20](v15);
  v58 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48, &qword_217054148);
  v18 = sub_21680DFBC(&qword_280E2AD28, &qword_27CAC5F48);
  v67 = v17;
  v68 = a3;
  v69 = a4;
  v70 = v18;
  v71 = a5;
  v72 = a6;
  v19 = type metadata accessor for SearchBootstrapView(255, &v67);
  v47 = v19;
  WitnessTable = swift_getWitnessTable();
  v48 = WitnessTable;
  v59 = sub_2167B2E14();
  v67 = v19;
  v68 = MEMORY[0x277D837D0];
  v69 = WitnessTable;
  v70 = v59;
  v52 = MEMORY[0x277CDE620];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v53 = OpaqueTypeMetadata2;
  v54 = v22;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v46 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v51 = v41 - v25;
  v26 = *(a1 + 2);
  v65 = *a1;
  v66 = v26;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v27 = type metadata accessor for SearchPageView(0, &v67);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v44 = v68;
  v45 = v69;
  v43 = v70;
  v28 = (a2 + *(v27 + 64));
  v29 = *v28;
  v30 = *(v28 + 1);
  v63 = v29;
  v64 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  v41[2] = v60;
  v41[1] = v61;
  v42 = v62;
  sub_2170095D4();
  sub_2170095C4();
  (*(v49 + 8))(v14, v50);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v63)
  {
    v31 = 286;
  }

  else
  {
    v31 = 283;
  }

  v60 = sub_216983738(v31);
  v61 = v32;
  v50 = swift_checkMetadataState();
  v33 = v48;
  v34 = v46;
  v35 = v58;
  sub_21700A324();

  (*(v55 + 8))(v35, v56);
  v67 = v50;
  v68 = MEMORY[0x277D837D0];
  v69 = v33;
  v70 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v53;
  sub_2166C24DC(v34, v53, OpaqueTypeConformance2);
  v39 = *(v54 + 8);
  v39(v34, v38);
  sub_2166C24DC(v37, v38, OpaqueTypeConformance2);
  return (v39)(v37, v38);
}

uint64_t sub_216C13298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = type metadata accessor for SearchPageView(0, &v12);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  v7 = (a1 + *(v6 + 64));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v12) = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  sub_216C99738(v11);
}

uint64_t sub_216C133A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v16 - v13;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  type metadata accessor for SearchPageView(0, v16);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216683A80(a2, v14, &qword_27CAB8600, &qword_217020AD0);
  sub_216C99750(v14);
}

void sub_216C134F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  if (*(*a2 + 16))
  {
    v13 = *(v7 + 32);
    v15 = a4;
    v16 = a5;
    v17 = a6;
    v18 = a7;
    v9 = type metadata accessor for SearchPageView(0, &v15);
    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    sub_2170081B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    if (!sub_216C0CA0C(v15, v7) || (v10 = (a3 + *(v9 + 64)), v11 = *v10, v12 = *(v10 + 1), LOBYTE(v15) = v11, v16 = v12, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920), sub_21700AEB4(), (v14 & 1) == 0))
    {
      sub_2170081B4();
      LOBYTE(v15) = v13;
      sub_216C995C4(&v15);
    }
  }
}

uint64_t sub_216C136B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v2) = v2[16];
  v11[0] = v3;
  v12 = v4;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F44();
  if (v9)
  {
    return 0;
  }

  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v11);

  v5 = v14;
  sub_216C1C864(v11);
  if (v5 > 1)
  {
    return 0;
  }

  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v10)
  {
    v6 = 288;
  }

  else
  {
    v6 = 287;
  }

  sub_216983738(v6);
  sub_217009834();
  v7 = sub_21700A044();

  return v7;
}

uint64_t sub_216C138C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a6;
  v66 = a5;
  v69 = a4;
  v68 = a3;
  v70 = a2;
  v71 = a1;
  v72 = a7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48, &qword_217054148);
  v81 = a3;
  v82 = a4;
  v83 = sub_21680DFBC(&qword_280E2AD28, &qword_27CAC5F48);
  v84 = a5;
  v85 = a6;
  v11 = type metadata accessor for SearchBootstrapView(255, &v80);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2167B2E14();
  v14 = MEMORY[0x277D837D0];
  v80 = v11;
  v81 = MEMORY[0x277D837D0];
  v82 = WitnessTable;
  v83 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F50, &qword_217054150);
  v80 = v11;
  v81 = v14;
  v82 = WitnessTable;
  v83 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_21680DFBC(qword_280E2E528, &qword_27CAC5F50);
  v80 = OpaqueTypeMetadata2;
  v81 = v16;
  v82 = OpaqueTypeConformance2;
  v83 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v80 = OpaqueTypeMetadata2;
  v81 = v16;
  v82 = OpaqueTypeConformance2;
  v83 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = MEMORY[0x277CE1350];
  v80 = v11;
  v81 = MEMORY[0x277CE1350];
  v82 = v19;
  v83 = OpaqueTypeMetadata2;
  v22 = MEMORY[0x277CE1340];
  v84 = WitnessTable;
  v85 = MEMORY[0x277CE1340];
  v86 = v20;
  v87 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  v80 = v11;
  v81 = v21;
  v82 = v19;
  v83 = OpaqueTypeMetadata2;
  v84 = WitnessTable;
  v85 = v22;
  v86 = v20;
  v87 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v80 = v23;
  v81 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F58, &qword_217054158);
  v25 = sub_2170089F4();
  v80 = v23;
  v81 = v24;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_21680DFBC(&qword_280E2A708, &qword_27CAC5F58);
  v26 = swift_getWitnessTable();
  v80 = v25;
  v81 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v80 = v25;
  v81 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x277D839B0];
  v80 = v27;
  v81 = MEMORY[0x277D839B0];
  v30 = MEMORY[0x277D839C8];
  v82 = v28;
  v83 = MEMORY[0x277D839C8];
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600, &qword_217020AD0);
  v80 = v27;
  v81 = v29;
  v82 = v28;
  v83 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_2169D46A0();
  v80 = v31;
  v81 = v32;
  v82 = v33;
  v83 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
  v80 = v31;
  v81 = v32;
  v82 = v33;
  v83 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_216C1BF40();
  v80 = v35;
  v81 = v36;
  v82 = v37;
  v83 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v80 = v35;
  v81 = v36;
  v82 = v37;
  v83 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v80 = v39;
  v81 = v40;
  v61 = swift_getOpaqueTypeMetadata2();
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F68, &qword_217054168);
  v80 = v39;
  v81 = v40;
  v63 = swift_getOpaqueTypeConformance2();
  v62 = sub_216C1C018();
  v80 = v61;
  v81 = v64;
  v82 = v63;
  v83 = v62;
  v65 = MEMORY[0x277CDE838];
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v61 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v61 - v46;
  v48 = v68;
  v49 = v69;
  v80 = v68;
  v81 = v69;
  v50 = v66;
  v51 = v67;
  v82 = v66;
  v83 = v67;
  v52 = type metadata accessor for SearchPageView(0, &v80);
  v53 = v70;
  sub_216C13FD0(v52);
  v73 = v48;
  v74 = v49;
  v75 = v50;
  v76 = v51;
  v77 = v53;
  v54 = swift_checkMetadataState();
  v55 = v64;
  v56 = v63;
  v57 = v62;
  sub_21700A584();
  v80 = v54;
  v81 = v55;
  v82 = v56;
  v83 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v44, v41, v58);
  v59 = *(v42 + 8);
  v59(v44, v41);
  sub_2166C24DC(v47, v41, v58);
  return (v59)(v47, v41);
}

uint64_t sub_216C13FD0(int *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  sub_21700B474();
  v3 = sub_216C03D14();

  if (v3)
  {
    v4 = (v1 + a1[15]);
    v5 = *v4;
    v6 = *(v4 + 1);
    LOBYTE(v4) = v4[16];
    LOBYTE(v18) = v5;
    v19 = v6;
    LOBYTE(v20) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
    sub_217007F44();
    if (v16[0] != 1)
    {
      return 2;
    }
  }

  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v16);

  v7 = v1 + a1[15];
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  LOBYTE(v18) = *v7;
  v19 = v8;
  LOBYTE(v20) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F44();
  if (v17)
  {
    if (v17 == 1)
    {
      sub_216C1C864(v16);
      if ((v15 & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_216C1C864(v16);
  }

  sub_2170081B4();
  sub_216C99870(&v18);

  sub_217007F44();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_216C1C864(&v18);
      if ((v14 & 1) == 0)
      {
        return 2;
      }
    }

    else if (!(v20 | v21 | v18 | v19))
    {
      return 2;
    }
  }

  else
  {
    sub_216C1C864(&v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0, &unk_2170541C0);
  sub_21700AEB4();
  sub_216F0FE50();
  v11 = v10;

  v12 = *(v11 + 16);

  if (v12 > 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_216C14288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_21700ACD4();
  v13 = sub_21700B354();
  v15 = v14;
  v16 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F90, &qword_217054190) + 36);
  sub_216C14528(a1, a2, a3, a4, a5, v16);
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F98, &unk_217054198) + 36)];
  *v17 = v13;
  v17[1] = v15;
  *a6 = v12;
  v18 = MEMORY[0x21CE9C200](0.225, 0.9, 0.0);
  *&v38 = a2;
  *(&v38 + 1) = a3;
  *&v39 = a4;
  *(&v39 + 1) = a5;
  v19 = type metadata accessor for SearchPageView(0, &v38);
  LOBYTE(a1) = sub_216C1052C(v19);
  v20 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F88, &qword_217054188) + 36);
  *v20 = v18;
  v20[8] = a1 & 1;
  v21 = sub_21700B3B4();
  v23 = v22;
  v24 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F80, &qword_217054180) + 36);
  *&v38 = sub_21700ACD4();
  BYTE8(v38) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC8, &unk_2170541E0);
  sub_216C1C7AC();
  sub_21700A494();

  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FA0, &qword_21705BB20) + 36)];
  *v25 = v21;
  v25[1] = v23;
  LOBYTE(a1) = sub_217009CA4();
  sub_217007F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F78, &qword_217054178) + 36);
  *v34 = a1;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  v35 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F70, &qword_217054170) + 36));
  v36 = v39;
  *v35 = v38;
  v35[1] = v36;
  v35[2] = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F68, &qword_217054168);
  *(a6 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_216C14528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FD0, &qword_2170541F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - v13;
  *v14 = sub_2170093B4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FD8, &qword_2170541F8);
  sub_216C14684(a1, a2, a3, a4, a5, &v14[*(v15 + 44)]);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v16 = type metadata accessor for SearchPageView(0, v20);
  if (sub_216C1052C(v16))
  {
    v17 = -56.0;
  }

  else
  {
    v17 = 0.0;
  }

  sub_2167C5834(v14, a6, &qword_27CAC5FD0, &qword_2170541F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FE0, &qword_217054200);
  v19 = a6 + *(result + 36);
  *v19 = 0;
  *(v19 + 8) = v17;
  return result;
}

uint64_t sub_216C14684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FE8, &qword_217054208);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  *v16 = sub_2170091A4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FF0, &qword_217054210);
  sub_216C14950(a1, a2, a3, a4, a5, &v16[*(v17 + 44)]);
  sub_21700B3B4();
  sub_2170083C4();
  v18 = &v16[*(v12 + 44)];
  v19 = v39;
  *v18 = v38;
  *(v18 + 1) = v19;
  *(v18 + 2) = v40;
  v20 = sub_21700ACD4();
  v21 = sub_21700B3C4();
  v32 = v22;
  sub_216C151D8(a2, a3, a4, a5, &v42);
  v23 = v42;
  v24 = v43;
  v25 = v44;
  sub_21700B3B4();
  sub_2170083C4();
  v26 = v34;
  sub_216683A80(v16, v34, &qword_27CAC5FE8, &qword_217054208);
  v27 = v26;
  v28 = v33;
  sub_216683A80(v27, v33, &qword_27CAC5FE8, &qword_217054208);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FF8, &qword_217054218) + 48);
  *&v41[0] = v20;
  *(&v41[0] + 1) = v23;
  *&v41[1] = v24;
  *(&v41[1] + 1) = v25;
  v30 = v32;
  *&v41[2] = v21;
  *(&v41[2] + 1) = v32;
  v41[3] = v35;
  v41[4] = v36;
  v41[5] = v37;
  memcpy((v28 + v29), v41, 0x60uLL);
  sub_216683A80(v41, &v42, &qword_27CAC6000, &qword_217054220);
  sub_216699778(v16, &qword_27CAC5FE8);
  v42 = v20;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  v46 = v21;
  v47 = v30;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  sub_216699778(&v42, &qword_27CAC6000);
  return sub_216699778(v34, &qword_27CAC5FE8);
}

uint64_t sub_216C14950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v66 = a2;
  v67 = a5;
  v64 = a6;
  v65 = a4;
  __src[0] = a2;
  __src[1] = a3;
  v51 = a3;
  __src[2] = a4;
  __src[3] = a5;
  v8 = type metadata accessor for SearchPageView(0, __src);
  v53 = v8;
  v9 = *(v8 - 8);
  v52 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v57 = type metadata accessor for SearchScopeBar(0) - 8;
  MEMORY[0x28223BE20](v57);
  v56 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6008, &qword_217054228);
  MEMORY[0x28223BE20](v60);
  v58 = &v50 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6010, &qword_217054230);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v59 = &v50 - v17;
  v54 = *(v9 + 16);
  v55 = a1;
  v54(v11, a1, v8, v16);
  sub_21700EA34();
  v18 = sub_21700EA24();
  v19 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  v22 = v65;
  *(v20 + 4) = v66;
  *(v20 + 5) = a3;
  v23 = v67;
  *(v20 + 6) = v22;
  *(v20 + 7) = v23;
  v24 = *(v9 + 32);
  v50 = v9 + 32;
  v25 = v53;
  v24(&v20[v19], v11, v53);
  (v54)(v11, a1, v25);
  v26 = sub_21700EA24();
  v27 = swift_allocObject();
  *(v27 + 2) = v26;
  v28 = v66;
  *(v27 + 3) = MEMORY[0x277D85700];
  *(v27 + 4) = v28;
  v29 = v65;
  *(v27 + 5) = v51;
  *(v27 + 6) = v29;
  *(v27 + 7) = v67;
  v24(&v27[v19], v11, v25);
  sub_21700B0F4();
  v30 = __src[1];
  v31 = __src[2];
  v32 = v56;
  *v56 = __src[0];
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  type metadata accessor for SearchScopeBar.Manager(0);
  sub_2166B2EC4(&unk_280E42D08, type metadata accessor for SearchScopeBar.Manager);
  *(v32 + 24) = sub_217008104();
  *(v32 + 32) = v33 & 1;
  v34 = *(v57 + 32);
  *(v32 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  sub_21700B3B4();
  sub_217008BB4();
  v35 = v58;
  sub_216C1E98C(v32, v58, type metadata accessor for SearchScopeBar);
  memcpy((v35 + *(v60 + 36)), __src, 0x70uLL);
  v36 = (v55 + *(v25 + 76));
  v38 = *v36;
  v37 = v36[1];
  v68 = v38;
  v69 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0, &unk_2170541C0);
  sub_21700AEB4();
  sub_216C1CB58();
  v39 = v59;
  sub_21700A3C4();

  sub_216699778(v35, &qword_27CAC6008);
  v40 = v62;
  v41 = *(v62 + 16);
  v42 = v61;
  v43 = v63;
  v41(v61, v39, v63);
  v44 = v64;
  *v64 = 0x4034000000000000;
  *(v44 + 8) = 0;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6018, &qword_217054268);
  v41(&v45[*(v46 + 48)], v42, v43);
  v47 = &v45[*(v46 + 64)];
  *v47 = 0x4034000000000000;
  v47[8] = 0;
  v48 = *(v40 + 8);
  v48(v39, v43);
  return (v48)(v42, v43);
}

uint64_t sub_216C14FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a4;
  v8[1] = a5;
  v8[2] = a6;
  v8[3] = a7;
  type metadata accessor for SearchPageView(0, v8);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216C150CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  type metadata accessor for SearchPageView(0, v10);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  LOBYTE(v10[0]) = v8;
  sub_216C986DC();

  sub_2170081B4();
  LOBYTE(v10[0]) = v8;
  sub_216C995C4(v10);
}

uint64_t sub_216C151D8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for SearchPageView(0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  sub_21700B474();
  v7 = sub_216C03B7C();

  if (v7)
  {
    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    v10 = *(sub_2170081B4() + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
    swift_unknownObjectRetain();

    v9 = v10;
  }

  else
  {
    v9 = 0uLL;
  }

  *a6 = v7;
  *(a6 + 8) = v9;
  return result;
}

uint64_t sub_216C15310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21700D584();
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  type metadata accessor for SearchPageView(0, v10);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  sub_21700B474();
  sub_216C98D10();
}

uint64_t sub_216C15440(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  type metadata accessor for SearchPageView(0, v10);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99858(v7, v8);
}

uint64_t sub_216C15510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v7 = (a3 + *(type metadata accessor for SearchPageView(0, &v13) + 60));
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  LOBYTE(v13) = *v7;
  v14 = v9;
  LOBYTE(v15) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  result = sub_217007F44();
  if (v12 == 1)
  {
    if (sub_217008184() & 1) != 0 || (result = sub_217008184(), (result))
    {
      LOBYTE(v13) = v8;
      v14 = v9;
      LOBYTE(v15) = v10;
      return sub_217007F54();
    }
  }

  return result;
}

uint64_t sub_216C155F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v5 = type metadata accessor for SearchPageView(0, v7);
  return sub_216C15630(v5);
}

uint64_t sub_216C15630(uint64_t a1)
{
  v32 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v32);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_21700D574();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  v8 = *(sub_2170081B4() + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph);

  if (!v8)
  {
    goto LABEL_6;
  }

  v31 = v2;
  type metadata accessor for MusicPageMetricsProvider(0);

  sub_21700D4B4();

  v9 = v35;
  if (!v35)
  {
    goto LABEL_6;
  }

  v10 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v11 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v9 + v10, 1, v11))
  {
    swift_endAccess();
LABEL_5:

LABEL_6:
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v12 = sub_217007CA4();
    __swift_project_value_buffer(v12, qword_27CAC5F18);
    v13 = sub_217007C84();
    v14 = sub_21700ED84();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_216679000, v13, v14, "Click event was not reported because no page fields were provided", v15, 2u);
      MEMORY[0x21CEA1440](v15, -1, -1);
    }

LABEL_10:
  }

  v17 = sub_21700D0F4();
  swift_endAccess();
  if (!v17)
  {
    goto LABEL_5;
  }

  v30 = v17;

  sub_21700D4B4();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

    sub_216699778(v5, &unk_27CABFB50);
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_27CAC5F18);
    v13 = sub_217007C84();
    v19 = sub_21700ED84();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_216679000, v13, v19, "Click event was not reported because no metrics pipeline was provided", v20, 2u);
      MEMORY[0x21CEA1440](v20, -1, -1);
    }

    goto LABEL_10;
  }

  (*(v34 + 32))(v33, v5, v6);
  v21 = v32;
  v29 = *(v32 + 36);
  v22 = sub_217005EF4();
  v23 = v31;
  __swift_storeEnumTagSinglePayload(&v31[v29], 1, 1, v22);
  *v23 = 0x7865547261656C63;
  *(v23 + 8) = 0xE900000000000074;
  *(v23 + 16) = 2050;
  *(v23 + 24) = xmmword_217029BA0;
  *(v23 + 40) = 0;
  *(v23 + *(v21 + 44)) = 8;
  *(v23 + *(v21 + 40)) = 0;
  v24 = sub_2170081B4();
  v25 = *(v24 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
  v26 = *(v24 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
  swift_unknownObjectRetain();

  v27 = v33;
  sub_216C949EC(v23, v30, v33, v25, v26, 0x686372616553, 0xE600000000000000);

  swift_unknownObjectRelease();

  sub_216C1EA44(v23, type metadata accessor for MusicMetrics.ClickFields);
  return (*(v34 + 8))(v27, v6);
}

uint64_t sub_216C15C24(uint64_t a1)
{
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v3);

  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
    sub_21700B474();
    v1 = sub_216C03B7C();
    sub_216C1C864(v3);

    if (!v1)
    {
      return 1;
    }
  }

  else
  {
    sub_216C1C864(v3);
  }

  return 0;
}

uint64_t sub_216C15D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v5 = a1 + *(type metadata accessor for SearchPageView(0, &v10) + 60);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  LOBYTE(v10) = *v5;
  v6 = v10;
  v11 = v7;
  LOBYTE(v12) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F54();
  LOBYTE(v10) = v6;
  v11 = v7;
  LOBYTE(v12) = v8;
  sub_217007F54();
}

uint64_t sub_216C15E6C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_216C15EB4()
{
  type metadata accessor for MusicPageMetricsProvider(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v2 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_216C15F18()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5F18);
  __swift_project_value_buffer(v0, qword_27CAC5F18);
  return sub_217007C94();
}

uint64_t sub_216C15F9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UnifiedMessagesRequestState(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_217006704();
  *a1 = v2;
  return result;
}

void sub_216C15FEC()
{
  OUTLINED_FUNCTION_49();
  v96 = v2;
  v72 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v71 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v6 - v5);
  sub_217009A34();
  OUTLINED_FUNCTION_1();
  v92 = v8;
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v89 = v10 - v9;
  v11 = type metadata accessor for SearchPageContentView(0);
  v95 = *(v11 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x28223BE20](v11);
  sub_217008AB4();
  OUTLINED_FUNCTION_1();
  v84 = v13;
  v85 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6048, &qword_217054378);
  OUTLINED_FUNCTION_1();
  v87 = v17;
  v88 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6050, &qword_217054380);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_66();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6058, &qword_217054388);
  OUTLINED_FUNCTION_1();
  v83 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v75 = v70 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6060, &qword_217054390);
  OUTLINED_FUNCTION_1();
  v86 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6068, &qword_217054398);
  OUTLINED_FUNCTION_1();
  v90 = v29;
  v91 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  sub_216C16870(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30, qword_217053FD8);
  v73 = v0;
  sub_21700B474();
  v74 = type metadata accessor for UnifiedMessagesRequestState(0);
  v32 = sub_216C1D350();
  OUTLINED_FUNCTION_20_48();
  v35 = sub_2166B2EC4(v33, v34);
  v36 = v76;
  sub_21700A3C4();

  sub_216699778(v1, &qword_27CAC6050);
  sub_217008AA4();
  OUTLINED_FUNCTION_19_42();
  sub_216C1E9E8(v0, v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v38 = *(v95 + 80);
  v39 = (v38 + 16) & ~v38;
  v94 = v12;
  v80 = v38;
  swift_allocObject();
  OUTLINED_FUNCTION_17_56();
  v82 = v39;
  v95 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v77;
  sub_216C1E98C(v95, v40 + v39, v42);
  sub_2166B2EC4(&qword_280E2AD68, MEMORY[0x277CDDAD8]);
  v43 = v79;
  v44 = v84;
  sub_21700B184();

  v45 = OUTLINED_FUNCTION_38_33();
  v46(v45, v44);
  sub_217008114();
  v98 = v36;
  v99 = v74;
  v47 = v78;
  v100 = v32;
  v101 = v35;
  v48 = v73;
  OUTLINED_FUNCTION_28_35();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_9();
  v51 = sub_21680DFBC(v50, &qword_27CAC6048);
  v52 = v43;
  v53 = v81;
  v54 = v87;
  sub_21700A764();
  (*(v88 + 8))(v52, v54);
  v55 = OUTLINED_FUNCTION_38_33();
  v56(v55, v53);
  v57 = v89;
  sub_217009A24();
  v98 = v53;
  v99 = v54;
  v100 = OpaqueTypeConformance2;
  v101 = v51;
  OUTLINED_FUNCTION_31_41();
  v58 = swift_getOpaqueTypeConformance2();
  sub_21700A884();
  (*(v92 + 8))(v57, v93);
  v59 = OUTLINED_FUNCTION_77_11();
  v60(v59, v41);
  v61 = *(v48 + 56);
  if (*(v48 + 64) != 1)
  {

    sub_21700ED94();
    v62 = sub_217009C34();
    sub_217007BC4();

    v63 = v70[1];
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v61, 0);
    (*(v71 + 8))(v63, v72);
    LOBYTE(v61) = v98;
  }

  v97 = v61 & 1;
  OUTLINED_FUNCTION_19_42();
  v64 = v95;
  sub_216C1E9E8(v48, v95, v65);
  v66 = v82;
  swift_allocObject();
  OUTLINED_FUNCTION_17_56();
  sub_216C1E98C(v64, v67 + v66, v68);
  v98 = v41;
  v99 = v58;
  OUTLINED_FUNCTION_25_40();
  swift_getOpaqueTypeConformance2();
  v69 = v91;
  sub_21700AB04();

  (*(v90 + 8))(v47, v69);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C16870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6160, &qword_217054488);
  MEMORY[0x28223BE20](v91);
  v82 = v78 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61A8, &qword_2170544E8);
  v85 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v84 = v78 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61B0, &qword_2170544F0);
  MEMORY[0x28223BE20](v88);
  v90 = v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6138, &qword_217054450);
  MEMORY[0x28223BE20](v7);
  v92 = v78 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6140, &qword_217054458);
  MEMORY[0x28223BE20](v87);
  v79 = v78 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61B8, &qword_2170544F8);
  v83 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v81 = v78 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6098, &qword_2170543B0);
  MEMORY[0x28223BE20](v97);
  v12 = v78 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61C0, &qword_217054500);
  v80 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v86 = v78 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61C8, &qword_217054508);
  MEMORY[0x28223BE20](v100);
  v102 = v78 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61D0, &qword_217054510);
  MEMORY[0x28223BE20](v94);
  v96 = v78 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6090, &qword_2170543A8);
  MEMORY[0x28223BE20](v101);
  v98 = v78 - v16;
  v95 = type metadata accessor for SearchLandingPageView(0);
  MEMORY[0x28223BE20](v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v78 - v20;
  v22 = sub_2170090F4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[1])
  {
    type metadata accessor for SearchPagePresenter(0);
    v70 = &qword_280E3D248;
    v71 = type metadata accessor for SearchPagePresenter;
LABEL_20:
    sub_2166B2EC4(v70, v71);
    sub_217008CD4();
    __break(1u);
LABEL_21:
    result = sub_21700F7C4();
    __break(1u);
    return result;
  }

  sub_216C99870(&v109);

  v26 = a1[7];
  v27 = *(a1 + 64);
  v103 = v7;
  v104 = a2;
  if (v27 != 1)
  {

    sub_21700ED94();
    v28 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v26, 0);
    (*(v23 + 8))(v25, v22);
    LOBYTE(v26) = v105;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61D8, &qword_217054518);
  if (v111 != 2 || (v29 = vorrq_s8(v109, v110), *&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL))))
  {
    if (v26)
    {
      if (!v111)
      {
        v78[1] = v110.i64[0];
        v53 = sub_216C17A5C(v110.i64[0], v12);
        v93 = v78;
        MEMORY[0x28223BE20](v53);
        sub_2170093B4();
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A0, &qword_2170543B8);
        v73 = sub_216C1DFF0(&qword_280E2AA88, &qword_27CAC6098, &qword_2170543B0, sub_216C1D5B8);
        v76 = sub_216C1D9A4();
        v55 = v86;
        v56 = v97;
        sub_21700A444();
        sub_216699778(v12, &qword_27CAC6098);
        v57 = v80;
        v58 = v55;
        v59 = v99;
        (*(v80 + 16))(v96, v58, v99);
        swift_storeEnumTagMultiPayload();
        sub_2166B2EC4(&qword_280E39E70, type metadata accessor for SearchLandingPageView);
        v105 = v56;
        v106 = v54;
        v107 = v73;
        v108 = v76;
        swift_getOpaqueTypeConformance2();
        v60 = v98;
        sub_217009554();
        sub_216683A80(v60, v102, &qword_27CAC6090, &qword_2170543A8);
        swift_storeEnumTagMultiPayload();
        sub_216C1D460();
        sub_216C1DE90();
        sub_217009554();

        sub_216699778(v60, &qword_27CAC6090);
        return (*(v57 + 8))(v86, v59);
      }

      if (v111 == 1)
      {
        v30 = v79;
        sub_216C18D4C(v109.i64[0], v109.i64[1], v110.i64[0], v110.i64[1], v79);

        MEMORY[0x28223BE20](v31);
        sub_2170093B4();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A0, &qword_2170543B8);
        v72 = sub_216C1DFF0(&qword_280E2A940, &qword_27CAC6140, &qword_217054458, sub_216C1E0C4);
        v75 = sub_216C1D9A4();
        v33 = v81;
        v34 = v87;
        sub_21700A444();
        sub_216699778(v30, &qword_27CAC6140);
        v35 = v83;
        v36 = v89;
        (*(v83 + 16))(v90, v33, v89);
        swift_storeEnumTagMultiPayload();
        v105 = v34;
        v106 = v32;
        v107 = v72;
        v108 = v75;
        swift_getOpaqueTypeConformance2();
        v37 = sub_216C1E260();
        v105 = v91;
        v106 = v32;
        v107 = v37;
        v108 = v75;
        swift_getOpaqueTypeConformance2();
        v38 = v92;
        sub_217009554();
        sub_216683A80(v38, v102, &qword_27CAC6138, &qword_217054450);
        swift_storeEnumTagMultiPayload();
        sub_216C1D460();
        sub_216C1DE90();
        sub_217009554();
        sub_216699778(v38, &qword_27CAC6138);
        return (*(v35 + 8))(v33, v36);
      }

      if (v110.i64[0] | v109.i64[1] | v109.i64[0] | v110.i64[1])
      {
        v61 = v82;
        v62 = sub_216C19C64(v82);
        MEMORY[0x28223BE20](v62);
        sub_2170093B4();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A0, &qword_2170543B8);
        v74 = sub_216C1E260();
        v77 = sub_216C1D9A4();
        v64 = v84;
        v65 = v91;
        sub_21700A444();
        sub_216699778(v61, &qword_27CAC6160);
        v66 = v85;
        v67 = v93;
        (*(v85 + 16))(v90, v64, v93);
        swift_storeEnumTagMultiPayload();
        v68 = sub_216C1DFF0(&qword_280E2A940, &qword_27CAC6140, &qword_217054458, sub_216C1E0C4);
        v105 = v87;
        v106 = v63;
        v107 = v68;
        v108 = v77;
        swift_getOpaqueTypeConformance2();
        v105 = v65;
        v106 = v63;
        v107 = v74;
        v108 = v77;
        swift_getOpaqueTypeConformance2();
        v69 = v92;
        sub_217009554();
        sub_216683A80(v69, v102, &qword_27CAC6138, &qword_217054450);
        swift_storeEnumTagMultiPayload();
        sub_216C1D460();
        sub_216C1DE90();
        sub_217009554();
        sub_216699778(v69, &qword_27CAC6138);
        return (*(v66 + 8))(v64, v67);
      }

      goto LABEL_21;
    }

    sub_216C1C864(&v109);
  }

  v40 = a1[5];
  if (!v40)
  {
    sub_217006A14();
    v70 = &unk_280E4A430;
    v71 = MEMORY[0x277D2A6E8];
    goto LABEL_20;
  }

  v41 = *a1;
  v42 = (a1 + *(type metadata accessor for SearchPageContentView(0) + 48));
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];

  sub_2169D4E84(v43, v44, v45);
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MusicUINetworkConnectivityMonitor(0);
  sub_2166B2EC4(&qword_280E464A8, type metadata accessor for MusicUINetworkConnectivityMonitor);

  *(v18 + 7) = sub_217008684();
  *(v18 + 8) = v46;
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  *(v18 + 9) = sub_217008CF4();
  *(v18 + 10) = v47;
  v48 = *(v95 + 36);
  *&v18[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  *v18 = v43;
  *(v18 + 1) = v44;
  *(v18 + 2) = v45;
  *(v18 + 3) = v41;
  *(v18 + 4) = sub_216C1E948;
  *(v18 + 5) = v40;
  v18[48] = 0;
  sub_216C1E98C(v18, v21, type metadata accessor for SearchLandingPageView);
  sub_216C1E9E8(v21, v96, type metadata accessor for SearchLandingPageView);
  swift_storeEnumTagMultiPayload();
  sub_2166B2EC4(&qword_280E39E70, type metadata accessor for SearchLandingPageView);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0, &qword_2170543B8);
  v50 = sub_216C1DFF0(&qword_280E2AA88, &qword_27CAC6098, &qword_2170543B0, sub_216C1D5B8);
  v51 = sub_216C1D9A4();
  v105 = v97;
  v106 = v49;
  v107 = v50;
  v108 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v98;
  sub_217009554();
  sub_216683A80(v52, v102, &qword_27CAC6090, &qword_2170543A8);
  swift_storeEnumTagMultiPayload();
  sub_216C1D460();
  sub_216C1DE90();
  sub_217009554();
  sub_216699778(v52, &qword_27CAC6090);
  return sub_216C1EA44(v21, type metadata accessor for SearchLandingPageView);
}

uint64_t sub_216C17A5C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61F8, &qword_217054538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6200, &qword_217054540);
  MEMORY[0x28223BE20](v48);
  v9 = v42 - v8;
  v10 = type metadata accessor for SearchPageContentView(0);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A8, &qword_2170543C0);
  MEMORY[0x28223BE20](v49);
  v13 = v42 - v12;
  v14 = *(v2 + 8);
  if (v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_217007DE4();

    if (v56)
    {
      sub_216C1B0F8();
      (*(v5 + 16))(v9, v7, v4);
      swift_storeEnumTagMultiPayload();
      sub_216C1D5B8();
      v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8, &qword_2170543D0);
      v16 = v4;
      v17 = type metadata accessor for ObjectGraph(255);
      v18 = sub_216C1D670();
      v51 = v15;
      v52 = v17;
      v53 = v18;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      return (*(v5 + 8))(v7, v16);
    }

    else
    {
      v20 = *(v14 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
      v43 = *(v14 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
      v44 = v20;
      type metadata accessor for MusicStackAuthority(0);
      sub_2166B2EC4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
      swift_unknownObjectRetain();
      *(v13 + 18) = sub_217008CF4();
      *(v13 + 19) = v21;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60B0, &qword_2170543C8);
      v23 = v22[24];
      *&v13[v23] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
      swift_storeEnumTagMultiPayload();
      v24 = &v13[v22[25]];
      *v24 = swift_getKeyPath();
      v24[8] = 0;
      v25 = &v13[v22[26]];
      *v25 = sub_216CEB564;
      *(v25 + 1) = 0;
      v25[16] = 0;
      *(v13 + 40) = 0u;
      *(v13 + 24) = 0u;
      *(v13 + 28) = 260;
      type metadata accessor for UserSocialProfileCoordinator(0);
      v26 = type metadata accessor for ObjectGraph(0);
      sub_21700E094();
      *(v13 + 11) = v51;
      type metadata accessor for SocialGraphController(0);
      sub_21700E094();
      *(v13 + 12) = v51;
      type metadata accessor for SubscriptionStatusCoordinator();
      sub_21700E094();
      *(v13 + 13) = v51;
      type metadata accessor for AppDestinationPageProviderBox();
      sub_21700E094();
      *(v13 + 8) = v51;
      type metadata accessor for CloudLibraryStatusController(0);
      sub_21700E094();
      *(v13 + 14) = v51;
      type metadata accessor for UnifiedMessages.Coordinator(0);
      sub_21700E094();
      *(v13 + 17) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
      sub_21700E094();
      v42[1] = v4;
      v27 = v54;
      v28 = v55;
      __swift_project_boxed_opaque_existential_1(&v51, v54);
      v29 = (*(v28 + 8))(v27, v28);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      *(v13 + 9) = v29;
      *(v13 + 10) = v31;
      v32 = v47;
      *v13 = sub_2167D8C58;
      *(v13 + 1) = v32;
      v13[16] = 0;
      type metadata accessor for MusicTabChangePublisher(0);

      sub_21700E094();
      sub_2166B2EC4(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher);
      *(v13 + 15) = sub_217008684();
      *(v13 + 16) = v33;
      v34 = &v13[v22[27]];
      v35 = v44;
      *v34 = v43;
      *(v34 + 1) = v35;
      v36 = v46;
      sub_216C1E9E8(v3, v46, type metadata accessor for SearchPageContentView);
      v37 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v38 = swift_allocObject();
      sub_216C1E98C(v36, v38 + v37, type metadata accessor for SearchPageContentView);
      v39 = &v13[*(v49 + 36)];
      *v39 = sub_216C1E974;
      v39[1] = v38;
      v39[2] = 0;
      v39[3] = 0;
      sub_216683A80(v13, v9, &qword_27CAC60A8, &qword_2170543C0);
      swift_storeEnumTagMultiPayload();
      sub_216C1D5B8();
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8, &qword_2170543D0);
      v41 = sub_216C1D670();
      v51 = v40;
      v52 = v26;
      v53 = v41;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      return sub_216699778(v13, &qword_27CAC60A8);
    }
  }

  else
  {
    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C18224@<X0>(uint64_t a1@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61E0, &qword_217054520);
  MEMORY[0x28223BE20](v91);
  v4 = &v73 - v3;
  v87 = sub_217009144();
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61E8, &qword_217054528);
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v73 - v9;
  v10 = sub_217009334();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61F0, &qword_217054530);
  v79 = *(v12 - 8);
  v80 = v12;
  MEMORY[0x28223BE20](v12);
  v78 = &v73 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60F8, &qword_217054418);
  MEMORY[0x28223BE20](v90);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v73 - v16;
  v17 = sub_2170090F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SearchPageContentView(0);
  if (*(v1 + v21[14]) != 1)
  {
    goto LABEL_7;
  }

  v22 = *(v1 + 80);

  if ((v22 & 1) == 0)
  {
    sub_21700ED94();
    v23 = sub_217009C34();
    v82 = v4;
    v24 = a1;
    v25 = v23;
    sub_217007BC4();

    a1 = v24;
    v4 = v82;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
  }

  v26 = sub_216C03B7C();

  if (v26)
  {
    v82 = a1;
    v27 = *(v1 + 8);
    if (v27)
    {
      v73 = *(v27 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
      swift_unknownObjectRetain();

      sub_21700B3B4();
      sub_2170083C4();
      v28 = v97;
      v29 = v99;
      v30 = v101;
      v31 = v102;
      v94 = v98;
      v93 = v100;
      v32 = sub_217009CA4();
      sub_217007F24();
      v96 = 0;
      v92[0] = v26;
      *&v92[1] = v73;
      v92[3] = v28;
      LOBYTE(v92[4]) = v94;
      v92[5] = v29;
      LOBYTE(v92[6]) = v93;
      v92[7] = v30;
      v92[8] = v31;
      LOBYTE(v92[9]) = v32;
      v92[10] = v33;
      v92[11] = v34;
      v92[12] = v35;
      v92[13] = v36;
      LOBYTE(v92[14]) = 0;
      v37 = v74;
      sub_217009324();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6100, &qword_217054420);
      sub_216C1DBA8();
      v38 = v78;
      sub_21700A704();
      (*(v75 + 8))(v37, v76);
      memcpy(v95, v92, 0x71uLL);
      sub_216699778(v95, &qword_27CAC6100);
      v39 = v83;
      sub_217009134();
      sub_21700B424();
      v40 = sub_2166B2EC4(&qword_280E2AC48, MEMORY[0x277CE0068]);
      v42 = v86;
      v41 = v87;
      sub_217008084();

      (*(v84 + 8))(v39, v41);
      v44 = v88;
      v43 = v89;
      (*(v88 + 16))(v85, v42, v89);
      v92[0] = v41;
      v92[1] = v40;
      swift_getOpaqueTypeConformance2();
      v45 = sub_217008404();
      (*(v44 + 8))(v42, v43);
      v46 = v77;
      (*(v79 + 32))(v77, v38, v80);
      *(v46 + *(v90 + 36)) = v45;
      v47 = v81;
      sub_2167C5834(v46, v81, &qword_27CAC60F8, &qword_217054418);
      sub_216683A80(v47, v4, &qword_27CAC60F8, &qword_217054418);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6120, &qword_217054440);
      sub_216C1DAB4();
      sub_216C1DD4C();
      v48 = v82;
      sub_217009554();

      sub_216699778(v47, &qword_27CAC60F8);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60E8, &qword_217054410);
      v50 = v48;
LABEL_10:
      v71 = 0;
      return __swift_storeEnumTagSinglePayload(v50, v71, 1, v49);
    }

    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  }

  else
  {
LABEL_7:
    if (*(v1 + v21[15]) != 1)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60E8, &qword_217054410);
      v50 = a1;
      v71 = 1;
      return __swift_storeEnumTagSinglePayload(v50, v71, 1, v49);
    }

    v82 = a1;
    v51 = *(v1 + 8);
    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    sub_217008CC4();
    swift_getKeyPath();
    sub_217008CE4();

    v52 = *(v1 + v21[16]);
    if (v51)
    {
      LODWORD(v81) = LOBYTE(v95[2]);
      v79 = v95[0];
      v80 = v95[1];
      sub_21700DF14();

      v78 = sub_216C99690();

      LODWORD(v77) = sub_217009CA4();
      sub_217007F24();
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      LOBYTE(v97) = 0;
      v61 = v83;
      sub_217009134();
      sub_21700B424();
      v62 = sub_2166B2EC4(&qword_280E2AC48, MEMORY[0x277CE0068]);
      v64 = v86;
      v63 = v87;
      sub_217008084();

      (*(v84 + 8))(v61, v63);
      v66 = v88;
      v65 = v89;
      (*(v88 + 16))(v85, v64, v89);
      v92[0] = v63;
      v92[1] = v62;
      swift_getOpaqueTypeConformance2();
      v67 = sub_217008404();
      (*(v66 + 8))(v64, v65);
      v68 = v80;
      *v4 = v79;
      *(v4 + 1) = v68;
      v4[16] = v81;
      v69 = v78;
      *(v4 + 3) = v52;
      *(v4 + 4) = v69;
      *(v4 + 5) = v51;
      v4[48] = v77;
      *(v4 + 7) = v54;
      *(v4 + 8) = v56;
      *(v4 + 9) = v58;
      *(v4 + 10) = v60;
      v4[88] = 0;
      *(v4 + 12) = v67;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6120, &qword_217054440);
      sub_216C1DAB4();
      sub_216C1DD4C();
      v70 = v82;
      sub_217009554();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60E8, &qword_217054410);
      v50 = v70;
      goto LABEL_10;
    }

    sub_21700DF14();
  }

  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C18D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a4;
  v85 = a3;
  v86 = a2;
  v84 = a1;
  v102 = a5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61F8, &qword_217054538);
  v6 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v8 = &v72 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6210, &qword_2170545B0);
  MEMORY[0x28223BE20](v100);
  v101 = &v72 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140, &qword_21701C730);
  *&v88 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v11 = &v72 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150, &qword_21701C740);
  v81 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v78 = &v72 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6218, &qword_2170545B8);
  MEMORY[0x28223BE20](v94);
  v97 = &v72 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6220, &qword_2170545C0);
  MEMORY[0x28223BE20](v90);
  v91 = &v72 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6150, &unk_217054468);
  MEMORY[0x28223BE20](v96);
  v92 = &v72 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6228, &qword_2170545C8);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v72 - v18;
  v19 = sub_2170090F4();
  v73 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for SearchResultsViewModel(0);
  MEMORY[0x28223BE20](v74);
  v23 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6230, &unk_2170545D0);
  MEMORY[0x28223BE20](v75);
  v77 = &v72 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6158, &unk_217054478);
  MEMORY[0x28223BE20](v89);
  v76 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v83 = &v72 - v27;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6148, &qword_217054460);
  MEMORY[0x28223BE20](v99);
  v95 = &v72 - v28;
  v29 = v5[1];
  if (!v29)
  {
    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DE4();

  if (v107)
  {
    sub_216C1B0F8();
    v30 = v103;
    (*(v6 + 16))(v101, v8, v103);
    swift_storeEnumTagMultiPayload();
    sub_216C1E0C4();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8, &qword_2170543D0);
    v32 = type metadata accessor for ObjectGraph(255);
    v33 = sub_216C1D670();
    *&v105 = v31;
    *(&v105 + 1) = v32;
    v106 = v33;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v6 + 8))(v8, v30);
  }

  v35 = v5 + *(type metadata accessor for SearchPageContentView(0) + 48);
  v36 = *v35;
  if ((~*v35 & 0xF000000000000007) == 0)
  {
    goto LABEL_8;
  }

  if (!(v36 >> 62))
  {
    v48 = *v5;
    v49 = v5[9];
    v50 = *(v5 + 80);

    if ((v50 & 1) == 0)
    {
      sub_21700ED94();
      v51 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();

      (*(v73 + 8))(v21, v19);
      v49 = v105;
    }

    v52 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker;
    v53 = v74;
    v54 = (v23 + *(v74 + 24));
    v55 = type metadata accessor for SearchResultsPageIntent(0);
    v56 = *(v55 + 20);
    v57 = type metadata accessor for ReferrerInfo(0);
    v88 = *(v29 + v52);
    __swift_storeEnumTagSinglePayload(v54 + v56, 1, 1, v57);
    v58 = v86;
    *v54 = v84;
    v54[1] = v58;
    v59 = (v54 + *(v55 + 24));
    v60 = v87;
    *v59 = v85;
    v59[1] = v60;
    type metadata accessor for JSIntentDispatcher();
    type metadata accessor for ObjectGraph(0);
    swift_unknownObjectRetain();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700E094();
    *(v23 + *(v53 + 28)) = v105;
    *v23 = v49;
    v23[1] = v48;
    *(v23 + *(v53 + 32)) = v88;
    v61 = v23;
    v62 = v77;
    sub_216C1E98C(v61, v77, type metadata accessor for SearchResultsViewModel);
    v63 = v75;
    v64 = v79;
    swift_storeEnumTagMultiPayload();
    sub_216683A80(v64, v80, &qword_27CAC6228, &qword_2170545C8);
    sub_21700AEA4();
    sub_216699778(v64, &qword_27CAC6228);
    v65 = *(v63 + 40);
    v104 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
    sub_21700AEA4();
    *(v62 + v65) = v105;
    v66 = *(v29 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
    v67 = *(v29 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText + 8);
    v68 = v76;
    sub_2167C5834(v62, v76, &qword_27CAC6230, &unk_2170545D0);
    v69 = (v68 + *(v89 + 52));
    *v69 = v66;
    v69[1] = v67;
    v70 = v83;
    sub_2167C5834(v68, v83, &qword_27CAC6158, &unk_217054478);
    sub_216683A80(v70, v91, &qword_27CAC6158, &unk_217054478);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(qword_280E48638, &qword_27CAB9140);
    sub_21680DFBC(&qword_280E2A540, &qword_27CAC6158);
    sub_21700DF14();
    v71 = v92;
    sub_217009554();
    sub_216683A80(v71, v97, &qword_27CAC6150, &unk_217054468);
    swift_storeEnumTagMultiPayload();
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    v41 = v95;
    sub_217009554();
    sub_216699778(v71, &qword_27CAC6150);
    sub_216699778(v70, &qword_27CAC6158);
    goto LABEL_9;
  }

  if (v36 >> 62 == 1)
  {
    sub_2169D4E84(*v35, *(v35 + 8), *(v35 + 16));
    v37 = (v36 & 0x3FFFFFFFFFFFFFFFLL);

    v38 = v78;
    sub_217007564();
    v39 = v81;
    v40 = v98;
    (*(v81 + 16))(v97, v38, v98);
    swift_storeEnumTagMultiPayload();
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    v41 = v95;
    sub_217009554();

    (*(v39 + 8))(v38, v40);
  }

  else
  {
LABEL_8:
    sub_217007514();
    v42 = v88;
    v43 = v93;
    (*(v88 + 16))(v91, v11, v93);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(qword_280E48638, &qword_27CAB9140);
    sub_21680DFBC(&qword_280E2A540, &qword_27CAC6158);
    v44 = v92;
    sub_217009554();
    sub_216683A80(v44, v97, &qword_27CAC6150, &unk_217054468);
    swift_storeEnumTagMultiPayload();
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    v41 = v95;
    sub_217009554();
    sub_216699778(v44, &qword_27CAC6150);
    (*(v42 + 8))(v11, v43);
  }

LABEL_9:
  sub_216683A80(v41, v101, &qword_27CAC6148, &qword_217054460);
  swift_storeEnumTagMultiPayload();
  sub_216C1E0C4();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8, &qword_2170543D0);
  v46 = type metadata accessor for ObjectGraph(255);
  v47 = sub_216C1D670();
  *&v105 = v45;
  *(&v105 + 1) = v46;
  v106 = v47;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  return sub_216699778(v41, &qword_27CAC6148);
}

uint64_t sub_216C19C64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchPageContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v7);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6238, &qword_2170545E0);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6240, &qword_2170545E8);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v52 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6170, &qword_217054498);
  MEMORY[0x28223BE20](v55);
  v60 = &v52 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6168, &qword_217054490);
  MEMORY[0x28223BE20](v58);
  v62 = &v52 - v17;
  if (!v1[3])
  {
    type metadata accessor for MusicStackAuthority(0);
    v50 = &qword_280E46D08;
    v51 = type metadata accessor for MusicStackAuthority;
LABEL_14:
    sub_2166B2EC4(v50, v51);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  v63 = v5;
  v64 = v6;
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v18 = *(v1 + *(v4 + 44));

  v67 = sub_216E9C900(v19, v18);

  v20 = v1[1];
  if (!v20)
  {
    type metadata accessor for SearchPagePresenter(0);
    v50 = &qword_280E3D248;
    v51 = type metadata accessor for SearchPagePresenter;
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DE4();

  v68 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30, qword_217053FD8);
  sub_21700B474();
  type metadata accessor for UnifiedMessagesRequestState(0);
  sub_216C1E810();
  sub_2166B2EC4(&qword_280E32C90, type metadata accessor for UnifiedMessagesRequestState);
  sub_21700A3C4();

  v21 = v56;
  sub_216C0D15C(v67);
  (*(v53 + 8))(v14, v54);
  if (!v1[5])
  {
    sub_217006A14();
    v50 = &unk_280E4A430;
    v51 = MEMORY[0x277D2A6E8];
    goto LABEL_14;
  }

  v22 = sub_217006994();

  v23 = *(v22 + 16);

  v24 = v23 == 0;
  if (v23)
  {
    v25 = 0x746E65636572;
  }

  else
  {
    v25 = 0x72617453646C6F63;
  }

  if (v24)
  {
    v26 = 0xE900000000000074;
  }

  else
  {
    v26 = 0xE600000000000000;
  }

  v27 = v7[7];
  v28 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v11[v27], 1, 1, v28);
  *v11 = 16;
  *(v11 + 1) = v25;
  *(v11 + 2) = v26;
  v11[24] = 31;
  *&v11[v7[8]] = xmmword_217020730;
  *&v11[v7[9]] = xmmword_217053F70;
  *&v11[v7[10]] = 0;
  v29 = *(v20 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
  v30 = *(v20 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
  v31 = v61;
  sub_216C1E9E8(v11, v61, type metadata accessor for MusicMetrics.PageFields);
  v32 = v60;
  v33 = &v60[*(v55 + 36)];
  v34 = _s19PageMetricsModifierVMa(0);
  v35 = (v33 + v34[6]);
  *v35 = v29;
  v35[1] = v30;
  v36 = (v33 + v34[5]);
  *v36 = 0x686372616553;
  v36[1] = 0xE600000000000000;
  swift_unknownObjectRetain();
  sub_216F0D610(v31, v33);
  sub_216C1EA44(v31, type metadata accessor for MusicMetrics.PageFields);
  sub_216C1EA44(v11, type metadata accessor for MusicMetrics.PageFields);
  *(v33 + v34[7]) = v67;
  (*(v57 + 32))(v32, v21, v59);
  v37 = v65;
  sub_216C1E9E8(v2, v65, type metadata accessor for SearchPageContentView);
  v38 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v39 = swift_allocObject();
  sub_216C1E98C(v37, v39 + v38, type metadata accessor for SearchPageContentView);
  v40 = v62;
  sub_2167C5834(v32, v62, &qword_27CAC6170, &qword_217054498);
  v41 = (v40 + *(v58 + 36));
  *v41 = sub_216C1EC2C;
  v41[1] = v39;
  v41[2] = 0;
  v41[3] = 0;

  v42 = sub_21700B3B4();
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6160, &qword_217054488);
  v46 = v66;
  v47 = v66 + *(v45 + 36);
  sub_216C1AC9C(v2, v47);

  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6198, &qword_2170544D0) + 36));
  *v48 = v42;
  v48[1] = v44;
  return sub_2167C5834(v40, v46, &qword_27CAC6168, &qword_217054490);
}

uint64_t sub_216C1A45C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchPageContentView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43A8, &qword_21704C720);
  sub_217007F84();
  sub_217007F84();
}

void sub_216C1A51C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_21700D574();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    if (!*a2)
    {
      return;
    }

    goto LABEL_13;
  }

  if (*a2)
  {
LABEL_13:

    sub_21700D584();
    return;
  }

  type metadata accessor for MusicPageMetricsProvider(0);
  sub_21700D4B4();
  v16 = v35;
  if (!v35)
  {
LABEL_7:
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_27CAC5F18);
    v20 = sub_217007C84();
    v21 = sub_21700ED84();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_216679000, v20, v21, "Click event was not reported because no page fields were provided", v22, 2u);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    return;
  }

  v17 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v18 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v16 + v17, 1, v18))
  {
    swift_endAccess();
LABEL_6:

    goto LABEL_7;
  }

  v23 = sub_21700D0F4();
  swift_endAccess();
  if (!v23)
  {
    goto LABEL_6;
  }

  v34 = v23;
  sub_21700D4B4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_216699778(v11, &unk_27CABFB50);
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v24 = sub_217007CA4();
    __swift_project_value_buffer(v24, qword_27CAC5F18);
    v25 = sub_217007C84();
    v26 = sub_21700ED84();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_216679000, v25, v26, "Click event was not reported because no metrics pipeline was provided", v27, 2u);
      MEMORY[0x21CEA1440](v27, -1, -1);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v28 = v6[9];
    v29 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v8[v28], 1, 1, v29);
    *v8 = 0x75516C65636E6163;
    *(v8 + 1) = 0xEB00000000797265;
    *(v8 + 8) = 1026;
    *(v8 + 24) = xmmword_217029BA0;
    *(v8 + 5) = 0;
    v8[v6[11]] = 8;
    *&v8[v6[10]] = 0;
    v30 = *(a3 + 8);
    if (v30)
    {
      v31 = (v30 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
      v32 = *v31;
      v33 = v31[1];
      swift_unknownObjectRetain();
      sub_216C949EC(v8, v34, v15, v32, v33, 0x686372616553, 0xE600000000000000);

      swift_unknownObjectRelease();

      sub_216C1EA44(v8, type metadata accessor for MusicMetrics.ClickFields);
      (*(v13 + 8))(v15, v12);
    }

    else
    {
      type metadata accessor for SearchPagePresenter(0);
      sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
      sub_217008CD4();
      __break(1u);
    }
  }
}

uint64_t sub_216C1AA98(uint64_t *a1)
{
  v2 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicPageMetricsProvider(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  if (a1[5])
  {

    v5 = sub_217006994();

    v6 = *(v5 + 16);

    if (v6)
    {
      v7 = 0x746E65636572;
    }

    else
    {
      v7 = 0x72617453646C6F63;
    }

    if (v6)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000074;
    }

    v9 = v2[7];
    v10 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v4[v9], 1, 1, v10);
    *v4 = 16;
    *(v4 + 1) = v7;
    *(v4 + 2) = v8;
    v4[24] = 31;
    *&v4[v2[8]] = xmmword_217020730;
    *&v4[v2[9]] = xmmword_217053F70;
    *&v4[v2[10]] = 0;
    sub_216F0D464(v4);

    return sub_216C1EA44(v4, type metadata accessor for MusicMetrics.PageFields);
  }

  else
  {
    sub_217006A14();
    sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C1AC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6248, &unk_2170545F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  if (*(a1 + 40))
  {

    v8 = sub_217006994();

    v9 = *(v8 + 16);

    if (v9)
    {

      return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420, &unk_21706D110);
      sub_21680DFBC(&qword_280E2A5E0, &qword_27CABA420);
      sub_2170097D4();
      (*(v5 + 32))(a2, v7, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    }
  }

  else
  {
    sub_217006A14();
    sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C1AF24()
{
  sub_216983738(176);
  sub_2167B2E14();
  return sub_21700AE34();
}

uint64_t sub_216C1AF94@<X0>(uint64_t a1@<X8>)
{
  result = sub_216983738(175);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_216C1AFD0(uint64_t *a1)
{
  type metadata accessor for MusicPageMetricsProvider(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v1 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v2 = sub_21700D194();
  if (!__swift_getEnumTagSinglePayload(v6[0] + v1, 1, v2))
  {
    v3 = sub_21700D0E4();
    if (*v4)
    {
      sub_2166EF928();
    }

    v3(v6, 0);
  }

  swift_endAccess();
}

uint64_t sub_216C1B0F8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + *(type metadata accessor for SearchPageContentView(0) + 44));

    v3 = sub_216E9C900(v2, v1);

    type metadata accessor for MenuBuilder();
    v4 = sub_216C65C14();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    type metadata accessor for AddToPlaylistMenuBuilder();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;

    sub_216C1B24C(v7, v5, v6);
  }

  else
  {
    type metadata accessor for MusicStackAuthority(0);
    sub_2166B2EC4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C1B24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  if (v4)
  {

    sub_216C99A14();
    v22 = v9;
    v23 = v8;

    v10 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker;

    v21 = *(v4 + v10);
    swift_unknownObjectRetain();
    sub_216C99B1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6208, &qword_2170545A8);
    sub_21680DFBC(&qword_280E4A448, &qword_27CAC6208);
    v11 = sub_217008684();
    v19 = v12;
    v20 = v11;
    type metadata accessor for FacetBarState(0);
    sub_2166B2EC4(qword_280E44190, type metadata accessor for FacetBarState);
    v18 = sub_217008104();
    v26 = v13 & 1;
    v25 = 0;
    type metadata accessor for MenuBuilder();
    sub_2166B2EC4(qword_280E45220, type metadata accessor for MenuBuilder);

    v17 = sub_217007D54();
    type metadata accessor for AddToPlaylistMenuBuilder();
    sub_2166B2EC4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);

    v14 = sub_217007D54();
    type metadata accessor for MusicEntityAnnotationWrapper();
    type metadata accessor for ObjectGraph(0);

    sub_21700E094();
    sub_2166B2EC4(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
    v15 = sub_217007D54();
    type metadata accessor for PlaybackPresenter(0);
    sub_21700E094();
    sub_2166B2EC4(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    *__src = v23;
    *&__src[8] = v22;
    *&__src[16] = a1;
    __src[24] = 0;
    *&__src[32] = v21;
    *&__src[48] = v20;
    *&__src[56] = v19;
    *&__src[64] = v18;
    __src[72] = v26;
    *&__src[80] = sub_216878678;
    *&__src[88] = 0;
    __src[96] = 0;
    *&__src[104] = v17;
    *&__src[112] = a2;
    *&__src[120] = v14;
    *&__src[128] = a3;
    *&__src[136] = v15;
    *&__src[144] = __dst[0];
    *&__src[152] = sub_217007D54();
    *&__src[160] = __dst[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60B8, &qword_2170543D0);
    sub_216C1D670();
    sub_21700A1E4();
    memcpy(__dst, __src, 0xA8uLL);
    return sub_216699778(__dst, &qword_27CAC60B8);
  }

  else
  {
    type metadata accessor for SearchPagePresenter(0);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void sub_216C1B67C(void *a1, uint64_t a2, char a3)
{
  if (sub_21700B304())
  {
    v5 = [objc_opt_self() currentTraitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      [a1 setLargeTitleDisplayMode_];
    }
  }

  if (a3)
  {

    [a1 setPinnedTrailingGroup_];
  }

  else
  {
    sub_216685F4C(0, &qword_27CAC6250, 0x277D751F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21701D820;
    *(v7 + 32) = sub_216C1B7EC();
    v8 = sub_21700EFD4();

    [a1 setPinnedTrailingGroup_];
  }
}

id sub_216C1B7EC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_216C1B848(v0);
    v3 = *(v0 + 32);
    *(v0 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_216C1B848(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  sub_217009454();
  (*(a1 + 16))();
  v2 = sub_217009434();
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    v6 = [v2 view];
    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

      [v7 _setPrefersNoPlatter_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_216C1B9D4()
{

  return v0;
}

uint64_t sub_216C1B9FC()
{
  v0 = sub_216C1B9D4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for SearchPageContentView(uint64_t a1)
{
  result = qword_280E39DC0;
  if (!qword_280E39DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C1BAB8(uint64_t a1)
{
  type metadata accessor for ObjectGraph(319);
  if (v1 <= 0x3F)
  {
    sub_2169D4144(319);
    if (v2 <= 0x3F)
    {
      sub_2166B49AC(319);
      if (v3 <= 0x3F)
      {
        sub_216BE4DEC(319);
        if (v4 <= 0x3F)
        {
          sub_216C1BD40(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_216C1BE18(319, &qword_280E2B4B8, type metadata accessor for FacetBarState, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_216C1BE7C(319, &qword_280E2A4B8, &qword_27CAC54D0, &qword_217051210, MEMORY[0x277CE1438]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for AppDestinationPageProviderBox();
                if (v8 <= 0x3F)
                {
                  sub_216C1BD40(319, &qword_280E43838, &type metadata for BootstrapState.State, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_216C1BDB8(319, &qword_280E2B4F0, MEMORY[0x277CDD698]);
                    if (v10 <= 0x3F)
                    {
                      sub_216C1BD40(319, &qword_280E2A008, &type metadata for SearchScope, MEMORY[0x277D83940]);
                      if (v11 <= 0x3F)
                      {
                        sub_216C1BD40(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                        if (v12 <= 0x3F)
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
  }
}

void sub_216C1BD40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_216C1BDB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0], MEMORY[0x277D839C0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216C1BE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216C1BE7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_216C1BF40()
{
  result = qword_280E2A000;
  if (!qword_280E2A000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
    sub_216C1BFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A000);
  }

  return result;
}

unint64_t sub_216C1BFC4()
{
  result = qword_280E44FB8;
  if (!qword_280E44FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44FB8);
  }

  return result;
}

unint64_t sub_216C1C018()
{
  result = qword_280E2AD80;
  if (!qword_280E2AD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F68, &qword_217054168);
    sub_216C1C0D0();
    sub_21680DFBC(&qword_280E2B380, &qword_27CABC210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD80);
  }

  return result;
}

unint64_t sub_216C1C0D0()
{
  result = qword_280E2ADB8;
  if (!qword_280E2ADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F70, &qword_217054170);
    sub_216C1C15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADB8);
  }

  return result;
}

unint64_t sub_216C1C15C()
{
  result = qword_280E2AE20;
  if (!qword_280E2AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F78, &qword_217054178);
    sub_216C1C1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE20);
  }

  return result;
}

unint64_t sub_216C1C1E8()
{
  result = qword_280E2AEC0;
  if (!qword_280E2AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F80, &qword_217054180);
    sub_216C1C2A0();
    sub_21680DFBC(&qword_280E2ABE0, &qword_27CAC5FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEC0);
  }

  return result;
}

unint64_t sub_216C1C2A0()
{
  result = qword_280E2AFA8;
  if (!qword_280E2AFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F88, &qword_217054188);
    sub_216C1C358();
    sub_21680DFBC(&qword_280E2AC40, &unk_27CAB7480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFA8);
  }

  return result;
}

unint64_t sub_216C1C358()
{
  result = qword_280E2B108;
  if (!qword_280E2B108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F90, &qword_217054190);
    sub_21680DFBC(&qword_280E2ABF8, &qword_27CAC5F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B108);
  }

  return result;
}

uint64_t sub_216C1C410(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v16[0] = v4[2];
  v7 = v16[0];
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  OUTLINED_FUNCTION_5_105(a1, v16);
  OUTLINED_FUNCTION_43_27();
  v11 = OUTLINED_FUNCTION_109();
  return sub_216C0F3E8(v11, v12, a3, a4, v13, v7, v8, v9, v14, v10);
}

uint64_t sub_216C1C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_19();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_76();
  v25 = v22[3];
  v26 = v22[4];
  v27 = v22[5];
  a9 = v22[2];
  a10 = v25;
  a11 = v26;
  a12 = v27;
  OUTLINED_FUNCTION_5_105(v28, &a9);
  OUTLINED_FUNCTION_6_91();
  OUTLINED_FUNCTION_49_25();

  return sub_216C133A0(v29, v30, v31, v32, v33, v34, v35);
}

void sub_216C1C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_19();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_76();
  v25 = v22[3];
  v26 = v22[4];
  v27 = v22[5];
  a9 = v22[2];
  a10 = v25;
  a11 = v26;
  a12 = v27;
  OUTLINED_FUNCTION_5_105(v28, &a9);
  OUTLINED_FUNCTION_6_91();
  OUTLINED_FUNCTION_49_25();

  sub_216C134F8(v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_216C1C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_19();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_76();
  v25 = v22[3];
  v26 = v22[4];
  v27 = v22[5];
  a9 = v22[2];
  a10 = v25;
  a11 = v26;
  a12 = v27;
  OUTLINED_FUNCTION_5_105(v28, &a9);
  OUTLINED_FUNCTION_6_91();
  OUTLINED_FUNCTION_49_25();

  return sub_216C15440(v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_216C1C6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_19();
  a21 = v23;
  a22 = v24;
  v25 = v22[3];
  v26 = v22[4];
  v27 = v22[5];
  a9 = v22[2];
  a10 = v25;
  a11 = v26;
  a12 = v27;
  OUTLINED_FUNCTION_5_105(v28, &a9);
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_49_25();

  return sub_216C15510(v29, v30, v31, v32, v33, v34, v35);
}

unint64_t sub_216C1C7AC()
{
  result = qword_280E2B118;
  if (!qword_280E2B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FC8, &unk_2170541E0);
    sub_21680DFBC(&qword_280E2A8E8, &qword_27CAC3CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B118);
  }

  return result;
}

uint64_t sub_216C1C8B8(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v12[0] = v1[4];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  OUTLINED_FUNCTION_5_105(a1, v12);
  OUTLINED_FUNCTION_54_19();

  return sub_216C14FC4(v5, v6, v7, v8, v9, v10, v4);
}

void objectdestroy_48Tm_0()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_42_29(v0[2], v0[3], v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_117();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_71_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FB8, &qword_2170541B8);
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  OUTLINED_FUNCTION_64_14(v15);
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_48_21();
  OUTLINED_FUNCTION_3_132();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (OUTLINED_FUNCTION_81_9(v16) == 1)
  {
    v17 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_37_37(v17))
    {
      OUTLINED_FUNCTION_50();
      v18 = OUTLINED_FUNCTION_68_14();
      v19(v18);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_7();
  swift_deallocObject();
  OUTLINED_FUNCTION_49_25();
}

uint64_t sub_216C1CAB4(char *a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v12[0] = v1[4];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  OUTLINED_FUNCTION_5_105(a1, v12);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_216C150CC(a1, v8, v9, v10, v3, v4, v5, v6);
}

unint64_t sub_216C1CB58()
{
  result = qword_280E2B2E8;
  if (!qword_280E2B2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6008, &qword_217054228);
    sub_2166B2EC4(qword_280E42C28, type metadata accessor for SearchScopeBar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2E8);
  }

  return result;
}

void *sub_216C1CC14@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v10[0] = v2[2];
  v4 = v10[0];
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  OUTLINED_FUNCTION_5_105(a2, v10);
  OUTLINED_FUNCTION_43_27();

  return sub_216C129F8(v2 + v8, v4, v5, v6, v7, a1);
}

unint64_t sub_216C1CCB0()
{
  result = qword_280E2DB58;
  if (!qword_280E2DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DB58);
  }

  return result;
}

uint64_t sub_216C1CD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30, qword_217053FD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C1CD74()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = type metadata accessor for SearchPageView(0, (v1 + 2));
  OUTLINED_FUNCTION_2(v6);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = *(v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  v1[6] = v13;
  *v13 = v1;
  v13[1] = sub_216C1CEB8;

  return sub_216C10C58(v10, v11, v0 + v8, v12, v3, v2, v4, v5);
}

uint64_t sub_216C1CEB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_216C1CFAC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v12[0] = v0[2];
  v12[1] = v1;
  v12[2] = v2;
  v12[3] = v3;
  v4 = type metadata accessor for SearchPageView(0, v12);
  OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_54_19();

  return sub_216C10EB4(v5, v6, v7, v8, v9, v10);
}

void objectdestroy_74Tm_0()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_42_29(v0[1], v0[2], v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_71_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FB8, &qword_2170541B8);
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  OUTLINED_FUNCTION_64_14(v15);
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_48_21();
  OUTLINED_FUNCTION_3_132();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (OUTLINED_FUNCTION_81_9(v16) == 1)
  {
    v17 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_37_37(v17))
    {
      OUTLINED_FUNCTION_50();
      v18 = OUTLINED_FUNCTION_68_14();
      v19(v18);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_78_14();
  swift_deallocObject();
  OUTLINED_FUNCTION_49_25();
}

uint64_t sub_216C1D1D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v12[0] = v0[2];
  v12[1] = v1;
  v12[2] = v2;
  v12[3] = v3;
  v4 = type metadata accessor for SearchPageView(0, v12);
  OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_54_19();

  return sub_216C1178C(v5, v6, v7, v8, v9, v10, v3);
}

uint64_t sub_216C1D2B0(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v9[0] = *(v1 + 2);
  v2 = v9[0];
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  OUTLINED_FUNCTION_5_105(a1, v9);
  OUTLINED_FUNCTION_43_27();

  return a1(&v1[v6], v2, v3, v4, v5);
}

unint64_t sub_216C1D350()
{
  result = qword_27CAC6070;
  if (!qword_27CAC6070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6050, &qword_217054380);
    sub_216C1D3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6070);
  }

  return result;
}

unint64_t sub_216C1D3D4()
{
  result = qword_27CAC6078;
  if (!qword_27CAC6078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6080, &qword_2170543A0);
    sub_216C1D460();
    sub_216C1DE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6078);
  }

  return result;
}

unint64_t sub_216C1D460()
{
  result = qword_27CAC6088;
  if (!qword_27CAC6088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6090, &qword_2170543A8);
    sub_2166B2EC4(&qword_280E39E70, type metadata accessor for SearchLandingPageView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6098, &qword_2170543B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0, &qword_2170543B8);
    sub_216C1DFF0(&qword_280E2AA88, &qword_27CAC6098, &qword_2170543B0, sub_216C1D5B8);
    sub_216C1D9A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6088);
  }

  return result;
}

unint64_t sub_216C1D5B8()
{
  result = qword_280E2B230;
  if (!qword_280E2B230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A8, &qword_2170543C0);
    sub_21680DFBC(qword_280E2B940, &qword_27CAC60B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B230);
  }

  return result;
}

unint64_t sub_216C1D670()
{
  result = qword_280E2AE58;
  if (!qword_280E2AE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8, &qword_2170543D0);
    sub_216C1D728();
    sub_21680DFBC(&qword_280E2A7D8, &qword_27CABBA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE58);
  }

  return result;
}

unint64_t sub_216C1D728()
{
  result = qword_280E2AF20;
  if (!qword_280E2AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60C0, &qword_2170543D8);
    sub_216C1D7E0();
    sub_21680DFBC(&qword_280E2A7F0, &qword_27CABB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF20);
  }

  return result;
}

unint64_t sub_216C1D7E0()
{
  result = qword_280E2B040;
  if (!qword_280E2B040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60C8, &qword_2170543E0);
    sub_216C1D898();
    sub_21680DFBC(&qword_280E2A7A8, &qword_27CABBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B040);
  }

  return result;
}

unint64_t sub_216C1D898()
{
  result = qword_280E2B270;
  if (!qword_280E2B270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60D0, &qword_2170543E8);
    sub_216C1D950();
    sub_21680DFBC(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B270);
  }

  return result;
}

unint64_t sub_216C1D950()
{
  result = qword_280E366E0;
  if (!qword_280E366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E366E0);
  }

  return result;
}

unint64_t sub_216C1D9A4()
{
  result = qword_27CAC60D8;
  if (!qword_27CAC60D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0, &qword_2170543B8);
    sub_216C1DA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC60D8);
  }

  return result;
}

unint64_t sub_216C1DA28()
{
  result = qword_27CAC60E0;
  if (!qword_27CAC60E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60E8, &qword_217054410);
    sub_216C1DAB4();
    sub_216C1DD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC60E0);
  }

  return result;
}

unint64_t sub_216C1DAB4()
{
  result = qword_27CAC60F0;
  if (!qword_27CAC60F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60F8, &qword_217054418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6100, &qword_217054420);
    sub_216C1DBA8();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A8E0, &qword_27CABBA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC60F0);
  }

  return result;
}

unint64_t sub_216C1DBA8()
{
  result = qword_280E2AF48;
  if (!qword_280E2AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6100, &qword_217054420);
    sub_216C1DC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF48);
  }

  return result;
}

unint64_t sub_216C1DC34()
{
  result = qword_280E2B060;
  if (!qword_280E2B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6108, &qword_217054428);
    sub_216C1DCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B060);
  }

  return result;
}

unint64_t sub_216C1DCC0()
{
  result = qword_280E2B2F8;
  if (!qword_280E2B2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6110, &unk_217054430);
    sub_216C06678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2F8);
  }

  return result;
}

unint64_t sub_216C1DD4C()
{
  result = qword_27CAC6118;
  if (!qword_27CAC6118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6120, &qword_217054440);
    sub_216C1DE04();
    sub_21680DFBC(&qword_280E2A8E0, &qword_27CABBA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6118);
  }

  return result;
}

unint64_t sub_216C1DE04()
{
  result = qword_280E2B2A8;
  if (!qword_280E2B2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6128, &qword_217054448);
    sub_21694ED24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2A8);
  }

  return result;
}

unint64_t sub_216C1DE90()
{
  result = qword_27CAC6130;
  if (!qword_27CAC6130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6138, &qword_217054450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6140, &qword_217054458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0, &qword_2170543B8);
    sub_216C1DFF0(&qword_280E2A940, &qword_27CAC6140, &qword_217054458, sub_216C1E0C4);
    sub_216C1D9A4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6160, &qword_217054488);
    sub_216C1E260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6130);
  }

  return result;
}

uint64_t sub_216C1DFF0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8, &qword_2170543D0);
    type metadata accessor for ObjectGraph(255);
    sub_216C1D670();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C1E0C4()
{
  result = qword_280E2A9F0;
  if (!qword_280E2A9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6148, &qword_217054460);
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9F0);
  }

  return result;
}

unint64_t sub_216C1E17C()
{
  result = qword_280E2ABC8;
  if (!qword_280E2ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6150, &unk_217054468);
    sub_21680DFBC(qword_280E48638, &qword_27CAB9140);
    sub_21680DFBC(&qword_280E2A540, &qword_27CAC6158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABC8);
  }

  return result;
}

unint64_t sub_216C1E260()
{
  result = qword_280E2AEE8;
  if (!qword_280E2AEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6160, &qword_217054488);
    sub_216C1E318();
    sub_21680DFBC(&qword_280E2ACE0, &qword_27CAC6198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEE8);
  }

  return result;
}

unint64_t sub_216C1E318()
{
  result = qword_280E2AFF0;
  if (!qword_280E2AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6168, &qword_217054490);
    sub_216C1E3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFF0);
  }

  return result;
}

unint64_t sub_216C1E3A4()
{
  result = qword_280E2B1C0;
  if (!qword_280E2B1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6170, &qword_217054498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6178, &qword_2170544A0);
    type metadata accessor for ObjectGraph(255);
    sub_216C1E4B4();
    swift_getOpaqueTypeConformance2();
    sub_2166B2EC4(&qword_280E460E0, _s19PageMetricsModifierVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1C0);
  }

  return result;
}

unint64_t sub_216C1E4B4()
{
  result = qword_280E2AE30;
  if (!qword_280E2AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6178, &qword_2170544A0);
    sub_216C1E56C();
    sub_21680DFBC(&qword_280E2A7B8, &qword_27CAB92A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE30);
  }

  return result;
}

unint64_t sub_216C1E56C()
{
  result = qword_280E2AED8;
  if (!qword_280E2AED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6180, &qword_2170544A8);
    sub_216C1E624();
    sub_21680DFBC(&qword_280E2A778, &qword_27CAB9298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AED8);
  }

  return result;
}

unint64_t sub_216C1E624()
{
  result = qword_280E2AFC8;
  if (!qword_280E2AFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6188, &qword_2170544B0);
    sub_216C1E6DC();
    sub_21680DFBC(&qword_280E2A7A8, &qword_27CABBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFC8);
  }

  return result;
}

unint64_t sub_216C1E6DC()
{
  result = qword_280E2B170;
  if (!qword_280E2B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6190, &qword_2170544B8);
    type metadata accessor for UnifiedMessagesRequestState(255);
    sub_216C1E810();
    sub_2166B2EC4(&qword_280E32C90, type metadata accessor for UnifiedMessagesRequestState);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B170);
  }

  return result;
}

unint64_t sub_216C1E810()
{
  result = qword_280E3BAE8[0];
  if (!qword_280E3BAE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3BAE8);
  }

  return result;
}

uint64_t sub_216C1E864(uint64_t a1)
{
  v3 = type metadata accessor for SearchPageContentView(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216C1A45C(a1, v5);
}

void sub_216C1E8D0()
{
  OUTLINED_FUNCTION_76();
  v3 = type metadata accessor for SearchPageContentView(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_216C1A51C(v2, v0, v5);
}

uint64_t sub_216C1E98C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C1E9E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C1EA44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_86Tm()
{
  v1 = type metadata accessor for SearchPageContentView(0);
  OUTLINED_FUNCTION_65_12();

  sub_216684F5C(*(v0 + 56), *(v0 + 64));

  v2 = v0 + *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61A0, &unk_2170544D8);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30, qword_217053FD8);
  OUTLINED_FUNCTION_64_14(v4);

  v5 = v0 + *(v1 + 48);
  if ((~*v5 & 0xF000000000000007) != 0)
  {
    sub_2166DE7B8(*v5, *(v5 + 8), *(v5 + 16));
  }

  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_216C1EC44(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SearchPageContentView(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_216C1ECB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_216C1ED08()
{
  result = qword_27CAC6278;
  if (!qword_27CAC6278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6258, &qword_217054668);
    sub_216C1EDC0();
    sub_21680DFBC(&qword_280E2A7B8, &qword_27CAB92A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6278);
  }

  return result;
}

unint64_t sub_216C1EDC0()
{
  result = qword_27CAC6280;
  if (!qword_27CAC6280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6270, &unk_217054688);
    sub_216C1EE78();
    sub_21680DFBC(&qword_280E2A778, &qword_27CAB9298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6280);
  }

  return result;
}

unint64_t sub_216C1EE78()
{
  result = qword_27CAC6288;
  if (!qword_27CAC6288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6268, &qword_217054680);
    sub_216C1EF30();
    sub_21680DFBC(&qword_280E2A7A8, &qword_27CABBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6288);
  }

  return result;
}

unint64_t sub_216C1EF30()
{
  result = qword_27CAC6290;
  if (!qword_27CAC6290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6260, &qword_217054678);
    sub_216C1EFE8();
    sub_21680DFBC(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6290);
  }

  return result;
}

unint64_t sub_216C1EFE8()
{
  result = qword_27CAC6298;
  if (!qword_27CAC6298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1610, &qword_217054670);
    sub_216C1F074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6298);
  }

  return result;
}

unint64_t sub_216C1F074()
{
  result = qword_27CAC62A0;
  if (!qword_27CAC62A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1608, &unk_21703EB20);
    sub_216C1F0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62A0);
  }

  return result;
}

unint64_t sub_216C1F0F8()
{
  result = qword_27CAC62A8;
  if (!qword_27CAC62A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC62B0, qword_217054698);
    sub_21680DFBC(&qword_27CAC62B8, &qword_27CAC1618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_79_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return swift_getOpaqueTypeMetadata2();
}

_BYTE *storeEnumTagSinglePayload for VerticalVideoLockup.HeadlineTextStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VerticalVideoLockup.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C1F3B4(uint64_t a1)
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

uint64_t sub_216C1F408(char a1)
{
  if (a1)
  {
    return 1684828002;
  }

  else
  {
    return 0x72616C75676572;
  }
}

unint64_t sub_216C1F438(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_216C1F4A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216C1F3B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216C1F4D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C1F408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216C1F504@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216C1F438(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216C1F538()
{
  result = qword_27CAC62C0;
  if (!qword_27CAC62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62C0);
  }

  return result;
}

unint64_t sub_216C1F590()
{
  result = qword_27CAC62C8;
  if (!qword_27CAC62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62C8);
  }

  return result;
}

uint64_t sub_216C1F5E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v110 = a3;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v103 = v5;
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v105 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v100 = &v99 - v18;
  MEMORY[0x28223BE20](v19);
  v101 = &v99 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v99 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v99 - v25;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v107 = v9;
  v28 = *(v9 + 16);
  v27 = (v9 + 16);
  v112 = v7;
  v29 = v7;
  v30 = v110;
  v108 = v28;
  (v28)(v12, v118, v29);
  v109 = v12;
  sub_21700D734();
  v114 = a1;
  v31 = v111;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v35 = *(v14 + 8);
  v115 = v14 + 8;
  v113 = v35;
  v35(v23, v31);
  if (v34)
  {
    v36 = type metadata accessor for VerticalVideoLockup(0);
    v116 = v32;
    v117 = v34;
    sub_21700F364();
    sub_21700CE04();
    sub_21700D2E4();
    v113(v26, v31);
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v37 = v108;
    v38 = v112;
    v39 = v109;
    v108();
    v106 = v36;
    sub_2166D8934(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_3_6();
    sub_21700D734();
    sub_21700CE04();
    v40 = v118;
    (v37)(v39, v118, v38);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    v42 = v41;
    OUTLINED_FUNCTION_56_3();
    sub_21700CE04();
    (v37)(v39, v40, v38);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    v44 = v43;
    if (!v42)
    {
      v45 = v101;
      sub_21700CE04();
      v46 = sub_21700CDB4();
      v47 = v45;
      v49 = v48;
      v113(v47, v111);
      if (v49)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_217013DA0;
        v50 = v102;
        sub_217006214();
        v51 = sub_2170061F4();
        v101 = v52;
        (*(v103 + 8))(v50, v104);
        v53 = v101;
        *(v42 + 32) = v51;
        *(v42 + 40) = v53;
        *(v42 + 48) = v46;
        *(v42 + 56) = v49;
        *(v42 + 64) = 0u;
        *(v42 + 80) = 0u;
        *(v42 + 96) = 0;
      }

      else
      {
        v42 = 0;
      }
    }

    v101 = v27;
    if (!v44)
    {
      v61 = v100;
      OUTLINED_FUNCTION_56_3();
      sub_21700CE04();
      v62 = sub_21700CDB4();
      v64 = v63;
      v113(v61, v111);
      if (v64)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_217013DA0;
        v65 = v102;
        sub_217006214();
        v66 = sub_2170061F4();
        v68 = v67;
        (*(v103 + 8))(v65, v104);
        *(v44 + 32) = v66;
        *(v44 + 40) = v68;
        *(v44 + 48) = v62;
        *(v44 + 56) = v64;
        *(v44 + 64) = 0u;
        *(v44 + 80) = 0u;
        *(v44 + 96) = 0;
      }

      else
      {
        v44 = 0;
      }
    }

    v69 = v106;
    v70 = v110;
    *(v110 + *(v106 + 28)) = v42;
    *(v70 + *(v69 + 32)) = v44;
    OUTLINED_FUNCTION_18_0();
    v72 = v71;
    v73 = v114;
    sub_21700CE04();
    v74 = sub_21700CDB4();
    v76 = v75;
    v77 = v113;
    v78 = v111;
    v113(v26, v111);
    v79 = (v70 + v72[9]);
    *v79 = v74;
    v79[1] = v76;
    v80 = v105;
    sub_21700CE04();
    LOBYTE(v74) = sub_21700CD44();
    v77(v80, v78);
    *(v70 + v72[10]) = v74 & 1;
    sub_21700CE04();
    sub_216C200C0();
    OUTLINED_FUNCTION_8_88();
    v81 = OUTLINED_FUNCTION_3_6();
    (v77)(v81);
    *(v70 + v72[11]) = v116;
    OUTLINED_FUNCTION_18_0();
    sub_21700CE04();
    sub_216C20114();
    OUTLINED_FUNCTION_8_88();
    v82 = OUTLINED_FUNCTION_3_6();
    (v77)(v82);
    *(v70 + v72[12]) = v116;
    sub_21700CE04();
    v83 = v118;
    sub_21700D2E4();
    v84 = OUTLINED_FUNCTION_3_6();
    (v77)(v84);
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    (v108)(v109, v83, v112);
    sub_2166D8934(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    sub_21700CE04();
    v85 = sub_21700CDB4();
    v87 = v86;
    v88 = OUTLINED_FUNCTION_3_6();
    v89 = v113;
    (v113)(v88);
    v90 = v106;
    v91 = (v70 + *(v106 + 52));
    *v91 = v85;
    v91[1] = v87;
    sub_21700CE04();
    v92 = sub_21700CDB4();
    v94 = v93;
    v95 = OUTLINED_FUNCTION_5_106();
    v96(v95);
    v89(v73, v78);
    v97 = OUTLINED_FUNCTION_3_6();
    result = (v89)(v97);
    v98 = (v70 + *(v90 + 64));
    *v98 = v92;
    v98[1] = v94;
  }

  else
  {
    v54 = sub_21700E2E4();
    sub_2166D8934(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v56 = v55;
    v57 = type metadata accessor for VerticalVideoLockup(0);
    *v56 = 25705;
    v56[1] = 0xE200000000000000;
    v56[2] = v57;
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    v58 = OUTLINED_FUNCTION_5_106();
    v59(v58);
    v113(v114, v31);
    return sub_2167B0250(v30);
  }

  return result;
}

unint64_t sub_216C200C0()
{
  result = qword_27CAC62D0;
  if (!qword_27CAC62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62D0);
  }

  return result;
}

unint64_t sub_216C20114()
{
  result = qword_27CAC62D8;
  if (!qword_27CAC62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62D8);
  }

  return result;
}

uint64_t sub_216C20188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35[-v5];
  v7 = type metadata accessor for SocialCardLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = _s7MusicUI7ContentVMa_0(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_1_172();
  sub_216C23428(v2, v10, v15);
  v16 = type metadata accessor for SocialCardLockupView(0);
  v17 = *(v2 + *(v16 + 20));
  if (v17)
  {
    v18 = *(v2 + *(v16 + 24));
    if (v18)
    {
      v19 = &v14[v11[7]];
      *v19 = swift_getKeyPath();
      v19[8] = 0;
      v20 = &v14[v11[8]];
      v35[15] = 6;
      v21 = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B30, &qword_21703B130);
      sub_21700AEA4();
      v22 = v36;
      *v20 = v35[16];
      *(v20 + 1) = v22;
      OUTLINED_FUNCTION_1_172();
      sub_216C23428(v10, v14, v23);
      *&v14[v11[5]] = v21;
      *&v14[v11[6]] = v18;
      sub_216683A80(&v14[*(v7 + 56)], v6, &qword_27CAB6A00, &unk_217016B60);
      v24 = type metadata accessor for ContentDescriptor(0);
      if (__swift_getEnumTagSinglePayload(v6, 1, v24) == 1)
      {
        sub_216697664(v6, &qword_27CAB6A00, &unk_217016B60);
      }

      else
      {
        v25 = *(v6 + 4);
        sub_21700DF14();
        sub_216C23484(v6, type metadata accessor for ContentDescriptor);
        if (v25)
        {
          v26 = sub_216F0706C();

LABEL_8:
          sub_216C23484(v10, type metadata accessor for SocialCardLockup);

          *v20 = v26;
          *(v20 + 1) = 0;
          KeyPath = swift_getKeyPath();
          sub_216C23428(v14, a1, _s7MusicUI7ContentVMa_0);
          v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC62E8, &unk_2170549F8) + 36);
          *v28 = KeyPath;
          *(v28 + 8) = 0;
          return sub_216C23484(v14, _s7MusicUI7ContentVMa_0);
        }
      }

      v26 = 6;
      goto LABEL_8;
    }

    type metadata accessor for SocialGraphController(0);
    OUTLINED_FUNCTION_2_138();
    sub_216C206DC(v32, v33, &unk_217070E24);
    v34 = v17;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator(0);
    OUTLINED_FUNCTION_3_133();
    sub_216C206DC(v30, v31, &unk_21705D6E8);
  }

  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C20554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216C24B44(a1, a2, type metadata accessor for SocialCardLockup);
  v3 = type metadata accessor for SocialCardLockupView(0);
  v4 = (a2 + *(v3 + 20));
  type metadata accessor for UserSocialProfileCoordinator(0);
  OUTLINED_FUNCTION_3_133();
  sub_216C206DC(v5, v6, &unk_21705D6E8);
  *v4 = sub_217008CF4();
  v4[1] = v7;
  v8 = (a2 + *(v3 + 24));
  type metadata accessor for SocialGraphController(0);
  OUTLINED_FUNCTION_2_138();
  sub_216C206DC(v9, v10, &unk_217070E24);
  result = sub_217008CF4();
  *v8 = result;
  v8[1] = v12;
  return result;
}

uint64_t sub_216C20684(uint64_t a1)
{
  result = sub_216C206DC(qword_280E3B858, type metadata accessor for SocialCardLockupView, &unk_217054920);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C206DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C20744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for SocialCardLockup(0);
  sub_216683A80(v0 + *(v4 + 56), v3, &qword_27CAB6A00, &unk_217016B60);
  v5 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216697664(v3, &qword_27CAB6A00, &unk_217016B60);
    return 6;
  }

  v6 = *(v3 + 4);
  sub_21700DF14();
  sub_216C23484(v3, type metadata accessor for ContentDescriptor);
  if (!v6)
  {
    return 6;
  }

  _s7MusicUI7ContentVMa_0(0);
  v7 = sub_216F0706C();

  return v7;
}

uint64_t sub_216C2087C@<X0>(uint64_t a1@<X8>)
{
  v3 = _s7MusicUI7ContentVMa_0(0);
  v43 = *(v3 - 8);
  v42[1] = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6310, &qword_217054A80);
  sub_216C20C28(v1, a1 + *(v5 + 44));
  v6 = sub_21700B354();
  v8 = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6318, &qword_217054A88) + 36);
  sub_216C24058(v1, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6320, &qword_217054A90) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_21700B3B4();
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6328, &unk_217054A98) + 36);
  v15 = [objc_opt_self() quaternarySystemFillColor];
  v16 = sub_21700AC44();
  v17 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8798, &qword_21701A4B0) + 36));
  v18 = *(sub_217008B44() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_217009294();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #10.0 }

  *v17 = _Q0;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  *v14 = v16;
  *(v14 + 8) = 256;
  v26 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3200, &qword_217046F70) + 36));
  *v26 = v11;
  v26[1] = v13;
  LOBYTE(v11) = sub_217009C94();
  sub_217007F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6330, &qword_217054AA8) + 36);
  *v35 = v11;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  swift_beginAccess();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6338, &qword_217054AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6340, &qword_217054AB8);
  sub_217007DB4();
  swift_endAccess();
  v37 = v42[0];
  sub_216C23428(v1, v42[0], _s7MusicUI7ContentVMa_0);
  v38 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v39 = swift_allocObject();
  result = sub_216C24B44(v37, v39 + v38, _s7MusicUI7ContentVMa_0);
  v41 = (a1 + *(v36 + 56));
  *v41 = sub_216C24BA0;
  v41[1] = v39;
  return result;
}

uint64_t sub_216C20C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6360, &qword_217054BA8);
  MEMORY[0x28223BE20](v112);
  v4 = (&v101 - v3);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6368, &qword_217054BB0);
  MEMORY[0x28223BE20](v108);
  v110 = &v101 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6370, &qword_217054BB8);
  MEMORY[0x28223BE20](v109);
  v7 = &v101 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6378, &qword_217054BC0);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v101 - v11;
  v102 = _s7MusicUI7ContentVMa_0(0);
  v106 = *(v102 - 8);
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v102);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6380, &qword_217054BC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v101 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6388, &qword_217054BD0);
  MEMORY[0x28223BE20](v18);
  v107 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v101 - v21;
  MEMORY[0x28223BE20](v23);
  v115 = &v101 - v24;
  v101 = type metadata accessor for SocialCardLockup(0);
  v105 = *(v101 + 32);
  sub_216683A80(a1 + v105, &v116, &qword_27CAB6DB0, &qword_217016C00);
  v111 = v12;
  if (v117)
  {
    sub_2166A0F18(&v116, &v118);
  }

  else
  {
    sub_216C21978(v17);
    v25 = type metadata accessor for OpenSocialProfilePageAction(0);
    if (__swift_getEnumTagSinglePayload(v17, 1, v25) == 1)
    {
      sub_216697664(v17, &qword_27CAC6380, &qword_217054BC8);
      v118 = 0u;
      v119 = 0u;
      *&v120 = 0;
    }

    else
    {
      *(&v119 + 1) = v25;
      *&v120 = sub_216C206DC(&qword_27CABA688, type metadata accessor for OpenSocialProfilePageAction, &protocol conformance descriptor for OpenSocialProfilePageAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
      sub_216C24B44(v17, boxed_opaque_existential_1, type metadata accessor for OpenSocialProfilePageAction);
    }

    if (v117)
    {
      sub_216697664(&v116, &qword_27CAB6DB0, &qword_217016C00);
    }
  }

  v27 = v18[11];
  v28 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v22[v27], 1, 1, v28);
  sub_216C23428(a1, &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), _s7MusicUI7ContentVMa_0);
  v29 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v30 = swift_allocObject();
  v103 = v13;
  v31 = v30;
  sub_216C24B44(v14, v30 + v29, _s7MusicUI7ContentVMa_0);
  v104 = v14;
  v32 = a1;
  v33 = v18[12];
  *&v22[v33] = swift_getKeyPath();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v34 = &v22[v18[13]];
  *v34 = swift_getKeyPath();
  v34[40] = 0;
  v35 = v120;
  v36 = v119;
  *v22 = v118;
  *(v22 + 1) = v36;
  *(v22 + 4) = v35;
  *(v22 + 5) = sub_216C24C50;
  *(v22 + 6) = v31;
  *(v22 + 7) = 0;
  *(v22 + 8) = 0;
  v37 = v22;
  v38 = v115;
  sub_2167C5834(v37, v115, &qword_27CAC6388, &qword_217054BD0);
  sub_216683A80(v32 + v105, &v118, &qword_27CAB6DB0, &qword_217016C00);
  if (*(&v119 + 1))
  {
    sub_2166A0F18(&v118, &v116);
    sub_2167B7D58(&v116, v4);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63D8, &qword_217054C00);
    __swift_storeEnumTagSinglePayload(v4 + v39[11], 1, 1, v28);
    v40 = v32;
    v41 = v104;
    sub_216C23428(v40, v104, _s7MusicUI7ContentVMa_0);
    v42 = swift_allocObject();
    sub_216C24B44(v41, v42 + v29, _s7MusicUI7ContentVMa_0);
    v43 = v39[12];
    *(v4 + v43) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v44 = v4 + v39[13];
    *v44 = swift_getKeyPath();
    v44[40] = 0;
    v4[5] = sub_216C25080;
    v4[6] = v42;
    v4[7] = 0;
    v4[8] = 0;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    v45 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63C8, &qword_217054BF8) + 36));
    v46 = v119;
    *v45 = v118;
    v45[1] = v46;
    v45[2] = v120;
    v47 = sub_217009C74();
    sub_217007F24();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63B8, &qword_217054BF0) + 36);
    *v56 = v47;
    *(v56 + 1) = v49;
    *(v56 + 2) = v51;
    *(v56 + 3) = v53;
    *(v56 + 4) = v55;
    v56[40] = 0;
    v57 = sub_217009CA4();
    sub_217007F24();
    v58 = v4 + *(v112 + 36);
    *v58 = v57;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    *(v58 + 3) = v61;
    *(v58 + 4) = v62;
    v58[40] = 0;
    sub_216683A80(v4, v110, &qword_27CAC6360, &qword_217054BA8);
    swift_storeEnumTagMultiPayload();
    sub_216C24CE0();
    sub_216C24EB0();
    v63 = v111;
    sub_217009554();
    sub_216697664(v4, &qword_27CAC6360, &qword_217054BA8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v116);
  }

  else
  {
    sub_216697664(&v118, &qword_27CAB6DB0, &qword_217016C00);
    v105 = sub_216C232F8();
    v65 = v64;
    LODWORD(v101) = *(v32 + *(v101 + 48));
    v66 = v32 + *(v102 + 32);
    v67 = *v66;
    v68 = *(v66 + 8);
    LOBYTE(v116) = v67;
    *(&v116 + 1) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
    sub_21700AED4();
    v69 = v118;
    v70 = v119;
    v71 = v32;
    v72 = v104;
    sub_216C23428(v71, v104, _s7MusicUI7ContentVMa_0);
    v73 = swift_allocObject();
    sub_216C24B44(v72, v73 + v29, _s7MusicUI7ContentVMa_0);
    type metadata accessor for UserSocialProfileCoordinator(0);
    sub_216C206DC(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
    *(v7 + 8) = sub_217008CF4();
    *(v7 + 9) = v74;
    type metadata accessor for SocialGraphController(0);
    sub_216C206DC(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
    *(v7 + 10) = sub_217008CF4();
    *(v7 + 11) = v75;
    *(v7 + 12) = swift_getKeyPath();
    v7[136] = 0;
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6390, &qword_217054BD8) + 60);
    *&v7[v76] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    *v7 = v105;
    *(v7 + 1) = v65;
    v7[16] = v101;
    *(v7 + 3) = sub_216C24C68;
    *(v7 + 4) = v73;
    *(v7 + 40) = v69;
    v7[56] = v70;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    v77 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6398, &qword_217054BE0) + 36)];
    v78 = v119;
    *v77 = v118;
    *(v77 + 1) = v78;
    *(v77 + 2) = v120;
    v79 = sub_217009C74();
    sub_217007F24();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63A0, &qword_217054BE8) + 36)];
    *v88 = v79;
    *(v88 + 1) = v81;
    *(v88 + 2) = v83;
    *(v88 + 3) = v85;
    *(v88 + 4) = v87;
    v88[40] = 0;
    v89 = sub_217009CA4();
    sub_217007F24();
    v90 = &v7[*(v109 + 36)];
    *v90 = v89;
    *(v90 + 1) = v91;
    *(v90 + 2) = v92;
    *(v90 + 3) = v93;
    *(v90 + 4) = v94;
    v90[40] = 0;
    sub_216683A80(v7, v110, &qword_27CAC6370, &qword_217054BB8);
    swift_storeEnumTagMultiPayload();
    sub_216C24CE0();
    sub_216C24EB0();
    v63 = v111;
    sub_217009554();
    sub_216697664(v7, &qword_27CAC6370, &qword_217054BB8);
    v38 = v115;
  }

  v95 = v107;
  sub_216683A80(v38, v107, &qword_27CAC6388, &qword_217054BD0);
  v96 = v113;
  sub_216683A80(v63, v113, &qword_27CAC6378, &qword_217054BC0);
  v97 = v114;
  sub_216683A80(v95, v114, &qword_27CAC6388, &qword_217054BD0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6400, &qword_217054C08);
  v99 = v97 + *(v98 + 48);
  *v99 = 0x4026000000000000;
  *(v99 + 8) = 0;
  sub_216683A80(v96, v97 + *(v98 + 64), &qword_27CAC6378, &qword_217054BC0);
  sub_216697664(v63, &qword_27CAC6378, &qword_217054BC0);
  sub_216697664(v38, &qword_27CAC6388, &qword_217054BD0);
  sub_216697664(v96, &qword_27CAC6378, &qword_217054BC0);
  return sub_216697664(v95, &qword_27CAC6388, &qword_217054BD0);
}

uint64_t sub_216C21978@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for SocialCardLockup(0);
  sub_216683A80(v1 + *(v6 + 56), v5, &qword_27CAB6A00, &unk_217016B60);
  v7 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_216697664(v5, &qword_27CAB6A00, &unk_217016B60);
LABEL_5:
    v13 = type metadata accessor for OpenSocialProfilePageAction(0);
    v11 = a1;
    v12 = 1;
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  v9 = *(v5 + 3);
  v8 = *(v5 + 4);
  sub_21700DF14();
  sub_216C23484(v5, type metadata accessor for ContentDescriptor);
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = type metadata accessor for OpenSocialProfilePageAction(0);
  sub_21700D234();
  *a1 = v9;
  a1[1] = v8;
  v11 = a1;
  v12 = 0;
  v13 = v10;
  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

double sub_216C21AD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6418, &qword_217054C28);
  sub_216C21CB4(a1, a2 + *(v8 + 44));
  v9 = a1 + *(_s7MusicUI7ContentVMa_0(0) + 28);
  v10 = *v9;
  if ((*(v9 + 8) & 1) == 0)
  {

    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v10, 0);
    (*(v5 + 8))(v7, v4);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6420, &qword_217054C30) + 36));
  v13 = v15[1];
  *v12 = v15[0];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_216C21CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6428, &qword_217054C38);
  MEMORY[0x28223BE20](KeyPath);
  v4 = &v66 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6430, &qword_217054C40);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6438, &qword_217054C48);
  MEMORY[0x28223BE20](v89);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6440, &qword_217054C50);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  v80 = type metadata accessor for SocialCardLockup(0);
  v15 = a1;
  sub_216683A80(a1 + *(v80 + 32), v94, &qword_27CAB6DB0, &qword_217016C00);
  v16 = v95;
  sub_216697664(v94, &qword_27CAB6DB0, &qword_217016C00);
  if (v16)
  {
    v17 = v15;
    sub_216C2249C(v9);
    sub_216683A80(v9, v7, &qword_27CAC6438, &qword_217054C48);
    swift_storeEnumTagMultiPayload();
    sub_216C2510C();
    sub_216C252EC();
    sub_217009554();
    v18 = v9;
    v19 = &qword_27CAC6438;
    v20 = &qword_217054C48;
  }

  else
  {
    v17 = v15;
    sub_216C226DC(v4);
    sub_216683A80(v4, v7, &qword_27CAC6428, &qword_217054C38);
    swift_storeEnumTagMultiPayload();
    sub_216C2510C();
    sub_216C252EC();
    sub_217009554();
    v18 = v4;
    v19 = &qword_27CAC6428;
    v20 = &qword_217054C38;
  }

  sub_216697664(v18, v19, v20);
  v21 = v14;
  v22 = v80;
  v23 = (v17 + *(v80 + 36));
  if (v23[1])
  {
    v24 = *v23;
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = v23[1];
  sub_21700DF14();
  v27 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v89 = sub_217009D44();
  v88 = swift_getKeyPath();
  v87 = swift_getKeyPath();
  v131 = 0;
  v86 = sub_217009C74();
  sub_217007F24();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v132 = 0;
  v85 = sub_217009CA4();
  sub_217007F24();
  v83 = v37;
  v84 = v36;
  v81 = v39;
  v82 = v38;
  v133 = 0;
  v40 = (v17 + *(v22 + 40));
  v41 = v40[1];
  if (v41)
  {
    v76 = *v40;
    v77 = MEMORY[0x277D84F90];
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  v80 = v41;
  sub_21700DF14();
  v74 = sub_21700AD34();
  v42 = swift_getKeyPath();
  v67 = v42;
  v73 = swift_getKeyPath();
  sub_21700B394();
  sub_2170083C4();
  *&v128[7] = v134;
  *&v128[23] = v135;
  *&v128[39] = v136;
  v79 = sub_217009E64();
  v43 = swift_getKeyPath();
  v66 = v43;
  v71 = swift_getKeyPath();
  v129 = 0;
  v70 = sub_217009C74();
  sub_217007F24();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v130 = 0;
  v52 = v21;
  v72 = v21;
  v53 = v91;
  sub_216683A80(v52, v91, &qword_27CAC6440, &qword_217054C50);
  v54 = v53;
  v55 = v78;
  sub_216683A80(v54, v78, &qword_27CAC6440, &qword_217054C50);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64F8, &qword_217054D08);
  v57 = *(v56 + 48);
  v92[0] = v24;
  v92[1] = v26;
  v75 = v26;
  v92[2] = 0;
  v92[3] = v25;
  v68 = v25;
  v69 = v27;
  v92[4] = KeyPath;
  v92[5] = v27;
  v92[6] = v88;
  v92[7] = v89;
  v92[8] = v87;
  v92[9] = 1;
  LOBYTE(v92[10]) = 0;
  LOBYTE(v92[11]) = v86;
  v92[12] = v29;
  v92[13] = v31;
  v92[14] = v33;
  v92[15] = v35;
  LOBYTE(v92[16]) = 0;
  LOBYTE(v92[17]) = v85;
  v92[18] = v84;
  v92[19] = v83;
  v92[20] = v82;
  v92[21] = v81;
  LOBYTE(v92[22]) = 0;
  memcpy((v55 + v57), v92, 0xB1uLL);
  v58 = *(v56 + 64);
  *(&v93[7] + 1) = *v128;
  v60 = v76;
  v59 = v77;
  v93[0] = v76;
  v93[1] = v80;
  v93[2] = 0;
  v93[3] = v77;
  v93[4] = v42;
  v61 = v73;
  v62 = v74;
  v93[5] = v74;
  v93[6] = v73;
  LOBYTE(v93[7]) = 1;
  *(&v93[9] + 1) = *&v128[16];
  *(&v93[11] + 1) = *&v128[32];
  v93[13] = *&v128[47];
  v93[14] = v43;
  v63 = v71;
  v93[15] = v79;
  v93[16] = v71;
  v93[17] = 2;
  LOBYTE(v93[18]) = 0;
  v64 = v70;
  LOBYTE(v93[19]) = v70;
  v93[20] = v45;
  v93[21] = v47;
  v93[22] = v49;
  v93[23] = v51;
  LOBYTE(v93[24]) = 0;
  memcpy((v55 + v58), v93, 0xC1uLL);
  sub_216683A80(v92, v94, &qword_27CAC6500, &qword_217054D10);
  sub_216683A80(v93, v94, &qword_27CAC6508, &unk_217054D18);
  sub_216697664(v72, &qword_27CAC6440, &qword_217054C50);
  v100 = *v128;
  v94[0] = v60;
  v94[1] = v80;
  v94[2] = 0;
  v95 = v59;
  v96 = v67;
  v97 = v62;
  v98 = v61;
  v99 = 1;
  v101 = *&v128[16];
  *v102 = *&v128[32];
  *&v102[15] = *&v128[47];
  v103 = v66;
  v104 = v79;
  v105 = v63;
  v106 = 2;
  v107 = 0;
  v108 = v64;
  v109 = v45;
  v110 = v47;
  v111 = v49;
  v112 = v51;
  v113 = 0;
  sub_216697664(v94, &qword_27CAC6508, &unk_217054D18);
  v114[0] = v24;
  v114[1] = v75;
  v114[2] = 0;
  v114[3] = v68;
  v114[4] = KeyPath;
  v114[5] = v69;
  v114[6] = v88;
  v114[7] = v89;
  v114[8] = v87;
  v114[9] = 1;
  v115 = 0;
  v116 = v86;
  v117 = v29;
  v118 = v31;
  v119 = v33;
  v120 = v35;
  v121 = 0;
  v122 = v85;
  v123 = v84;
  v124 = v83;
  v125 = v82;
  v126 = v81;
  v127 = 0;
  sub_216697664(v114, &qword_27CAC6500, &qword_217054D10);
  return sub_216697664(v91, &qword_27CAC6440, &qword_217054C50);
}

uint64_t sub_216C2249C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __src - v3;
  v5 = sub_21700ADB4();
  v6 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_217009DF4();
  sub_216697664(v4, &qword_27CAB81D0, &unk_21701AFF0);
  KeyPath = swift_getKeyPath();
  sub_21700B3B4();
  sub_2170083C4();
  __src[0] = v5;
  __src[1] = KeyPath;
  __src[2] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6460, &qword_217054C60);
  sub_216C25260();
  sub_21700AB94();
  memcpy(__dst, __src, sizeof(__dst));
  sub_216697664(__dst, &qword_27CAC6460, &qword_217054C60);
  LOBYTE(KeyPath) = sub_217009C94();
  sub_217007F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6458, &qword_217054C58) + 36);
  *v17 = KeyPath;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  LOBYTE(KeyPath) = sub_217009CA4();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6438, &qword_217054C48);
  v27 = a1 + *(result + 36);
  *v27 = KeyPath;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_216C226DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v71 - v4;
  v5 = sub_21700C444();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71 - v14;
  v84 = sub_217007474();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v71 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v71 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64D0, &unk_217054C90);
  MEMORY[0x28223BE20](v73);
  v22 = &v71 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6510, qword_217054D28);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v71 - v23;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6480, &qword_217054C68);
  MEMORY[0x28223BE20](v75);
  v80 = &v71 - v24;
  v72 = type metadata accessor for SocialCardLockup(0);
  v25 = *(v72 + 52);
  sub_216683A80(v1 + v25, v12, &qword_27CAB6D60, &qword_217014E40);
  v26 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
  {
    sub_216697664(v12, &qword_27CAB6D60, &qword_217014E40);
    v27 = sub_21700C4B4();
    v28 = v15;
    v29 = 1;
  }

  else
  {
    v30 = a1;
    v31 = sub_21700C4B4();
    (*(*(v31 - 8) + 16))(v15, v12, v31);
    sub_216C23484(v12, type metadata accessor for Artwork);
    v28 = v15;
    v29 = 0;
    v27 = v31;
    a1 = v30;
  }

  __swift_storeEnumTagSinglePayload(v28, v29, 1, v27);
  sub_217007434();
  v32 = v1;
  sub_216683A80(v1 + v25, v9, &qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v26);
  v35 = v87;
  v34 = v88;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v9, &qword_27CAB6D60, &qword_217014E40);
    v36 = v86;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v34);
    v37 = v85;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v36, 1, v34) != 1)
    {
      sub_216697664(v36, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v38 = v86;
    (*(v87 + 16))(v86, &v9[*(v26 + 20)], v88);
    sub_216C23484(v9, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v34);
    v37 = v85;
    (*(v35 + 32))(v85, v38, v34);
  }

  v39 = v76;
  sub_2170073E4();
  (*(v35 + 8))(v37, v34);
  v40 = *(v82 + 8);
  v41 = v84;
  v40(v17, v84);
  v42 = (v32 + *(v72 + 36));
  v44 = *v42;
  v43 = v42[1];
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;
  sub_2167C505C();
  sub_21700DF14();
  v46 = v74;
  sub_2170073F4();

  v40(v39, v41);
  LODWORD(v43) = sub_217009834();
  LOBYTE(v44) = sub_217009C84();
  (*(v77 + 32))(v22, v46, v79);
  v47 = &v22[*(v73 + 36)];
  *v47 = v43;
  v47[4] = v44;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v48 = v78;
  sub_216E30318();
  sub_216697664(v22, &qword_27CAC64D0, &unk_217054C90);
  v49 = sub_217009C94();
  sub_217007F24();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v80;
  (*(v81 + 32))(v80, v48, v83);
  v59 = v58 + *(v75 + 36);
  *v59 = v49;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  v60 = sub_217009CA4();
  sub_217007F24();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_2167C5834(v58, a1, &qword_27CAC6480, &qword_217054C68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6428, &qword_217054C38);
  v70 = a1 + *(result + 36);
  *v70 = v60;
  *(v70 + 8) = v62;
  *(v70 + 16) = v64;
  *(v70 + 24) = v66;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  return result;
}

uint64_t sub_216C22F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SocialCardLockup(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  sub_21700DF14();
  v6 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v8 = sub_217009E94();
  v9 = swift_getKeyPath();
  *&v26 = v5;
  *(&v26 + 1) = v4;
  *&v27 = 0;
  *(&v27 + 1) = MEMORY[0x277D84F90];
  *&v28 = KeyPath;
  *(&v28 + 1) = v6;
  *&v29 = v9;
  *(&v29 + 1) = v8;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
  sub_2167D95A8();
  sub_21700A304();
  v30[0] = v26;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  sub_216697664(v30, &qword_27CAB7E88, &unk_217018BF0);
  LOBYTE(v4) = sub_217009C74();
  sub_217007F24();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50, &unk_217051950) + 36);
  *v18 = v4;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  if (qword_27CAB5FB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58, &unk_21703B360) + 36));
  *v19 = v26;
  v19[1] = v27;
  v19[2] = v28;
  v20 = sub_21700B3B4();
  v22 = v21;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6408, &qword_217054C10) + 36);
  sub_216C231D0(v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5830, &unk_217051AC0);
  v25 = (v23 + *(result + 36));
  *v25 = v20;
  v25[1] = v22;
  return result;
}

double sub_216C231D0@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE0118];
  v3 = sub_217009294();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = sub_21700AC54();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780, &unk_217029530);
  *(a1 + *(v5 + 52)) = v4;
  *(a1 + *(v5 + 56)) = 256;
  if (qword_27CAB5FB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C98, &unk_21703B408) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_216C232F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SocialCardLockup(0);
  sub_216683A80(v0 + *(v4 + 56), v3, &qword_27CAB6A00, &unk_217016B60);
  v5 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216697664(v3, &qword_27CAB6A00, &unk_217016B60);
    return 0;
  }

  else
  {
    v6 = *(v3 + 3);
    sub_21700DF14();
    sub_216C23484(v3, type metadata accessor for ContentDescriptor);
  }

  return v6;
}

uint64_t sub_216C23428(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C23484(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C234DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0, &qword_217018C00);
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v44 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50, &unk_217051950);
  MEMORY[0x28223BE20](v45);
  v11 = &v44 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58, &unk_21703B360);
  MEMORY[0x28223BE20](v47);
  v13 = &v44 - v12;
  if (a2)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(_s7MusicUI7ContentVMa_0(0) + 32);
  v48 = a3;
  v17 = (a3 + v16);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v54[0]) = v18;
  *(&v54[0] + 1) = v19;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AEB4();
  if (v50 == 6)
  {
LABEL_11:
    v20 = sub_21700ACF4();
    goto LABEL_13;
  }

  if (v50 != 2)
  {
    if (!v50)
    {
      v20 = sub_21700AC54();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = sub_21700AD34();
LABEL_13:
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = sub_217009E94();
  v24 = swift_getKeyPath();
  *&v50 = v14;
  *(&v50 + 1) = a2;
  *&v51 = 0;
  *(&v51 + 1) = v15;
  *&v52 = KeyPath;
  *(&v52 + 1) = v21;
  *&v53 = v24;
  *(&v53 + 1) = v23;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
  sub_2167D95A8();
  sub_21700A304();
  v54[0] = v50;
  v54[1] = v51;
  v54[2] = v52;
  v54[3] = v53;
  sub_216697664(v54, &qword_27CAB7E88, &unk_217018BF0);
  LOBYTE(KeyPath) = sub_217009C74();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v7 + 32))(v11, v9, v46);
  v33 = &v11[*(v45 + 36)];
  *v33 = KeyPath;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  if (qword_27CAB5FB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  sub_2167C5834(v11, v13, &qword_27CAC0C50, &unk_217051950);
  v34 = &v13[*(v47 + 36)];
  v35 = v51;
  *v34 = v50;
  *(v34 + 1) = v35;
  *(v34 + 2) = v52;
  v36 = sub_21700B3B4();
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6410, &unk_217054C18);
  v40 = v49;
  v41 = v49 + *(v39 + 36);
  sub_216C2391C(v48, v41);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C70, &qword_21703B3E0) + 36));
  *v42 = v36;
  v42[1] = v38;
  return sub_2167C5834(v13, v40, &qword_27CAC0C58, &unk_21703B360);
}

uint64_t sub_216C2391C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_217008B44();
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C78, &qword_21703B3E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C80, &qword_21703B3F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v62 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C88, &qword_21703B3F8);
  MEMORY[0x28223BE20](v65);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C90, &qword_21703B400);
  MEMORY[0x28223BE20](v63);
  v18 = &v62 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C98, &unk_21703B408);
  MEMORY[0x28223BE20](v64);
  v20 = &v62 - v19;
  v21 = (a1 + *(_s7MusicUI7ContentVMa_0(0) + 32));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v70) = v22;
  *(&v70 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AEB4();
  v24 = v67;
  if (v67 == 6)
  {
    v25 = *MEMORY[0x277CE0118];
    v26 = sub_217009294();
    (*(*(v26 - 8) + 104))(v20, v25, v26);
    v27 = sub_21700AC54();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780, &unk_217029530);
    *&v20[*(v28 + 52)] = v27;
    *&v20[*(v28 + 56)] = 256;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    v29 = &v20[*(v64 + 36)];
    v30 = v71;
    *v29 = v70;
    *(v29 + 1) = v30;
    *(v29 + 2) = v72;
    v31 = &qword_27CAC0C98;
    v32 = &unk_21703B408;
    sub_216683A80(v20, v18, &qword_27CAC0C98, &unk_21703B408);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v33 = v20;
  }

  else
  {
    v34 = *(v3 + 20);
    v35 = *MEMORY[0x277CE0128];
    v36 = sub_217009294();
    (*(*(v36 - 8) + 104))(&v5[v34], v35, v36);
    __asm { FMOV            V0.2D, #20.0 }

    *v5 = _Q0;
    if (v24 == 2)
    {
      v42 = sub_21700AD34();
    }

    else if (v24)
    {
      v42 = sub_21700ACD4();
    }

    else
    {
      v42 = sub_21700AC54();
    }

    v43 = v42;
    sub_2170081E4();
    sub_216C23428(v5, v8, MEMORY[0x277CDFC08]);
    v44 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CB8, &qword_21703B418) + 36)];
    v45 = v68;
    *v44 = v67;
    *(v44 + 1) = v45;
    *(v44 + 4) = v69;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC0, &qword_21703B420);
    *&v8[*(v46 + 52)] = v43;
    *&v8[*(v46 + 56)] = 256;
    v47 = sub_21700B3B4();
    v49 = v48;
    sub_216C23484(v5, MEMORY[0x277CDFC08]);
    v50 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC8, &qword_21703B428) + 36)];
    *v50 = v47;
    v50[1] = v49;
    if ((v24 | 2) == 2)
    {
      v51 = sub_21700ACD4();
    }

    else
    {
      v51 = sub_21700AC54();
    }

    v52 = v51;
    sub_216C23428(v8, v11, MEMORY[0x277CDFC08]);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE98, &qword_21703B430);
    *&v11[*(v53 + 52)] = v52;
    *&v11[*(v53 + 56)] = 256;
    v54 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD0, &qword_21703B438) + 36)];
    sub_216683A80(v8, v54, &qword_27CAC0C78, &qword_21703B3E8);
    v55 = sub_21700B3B4();
    v57 = v56;
    sub_216697664(v8, &qword_27CAC0C78, &qword_21703B3E8);
    v58 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD8, &qword_21703B440) + 36));
    *v58 = v55;
    v58[1] = v57;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    sub_2167C5834(v11, v13, &qword_27CAC0C80, &qword_21703B3F0);
    v59 = &v13[*(v65 + 36)];
    v60 = v71;
    *v59 = v70;
    *(v59 + 1) = v60;
    *(v59 + 2) = v72;
    v31 = &qword_27CAC0C88;
    v32 = &qword_21703B3F8;
    sub_2167C5834(v13, v16, &qword_27CAC0C88, &qword_21703B3F8);
    sub_216683A80(v16, v18, &qword_27CAC0C88, &qword_21703B3F8);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v33 = v16;
  }

  return sub_216697664(v33, v31, v32);
}

uint64_t sub_216C24058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6348, &unk_217054AC0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - v5);
  v7 = type metadata accessor for SocialCardLockup(0);
  sub_216683A80(a1 + *(v7 + 28), &v15, &qword_27CAB6DB0, &qword_217016C00);
  if (v16)
  {
    sub_2166A0F18(&v15, v17);
    sub_2166A0F18(v17, v6);
    v8 = v4[11];
    v9 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v6 + v8, 1, 1, v9);
    v10 = v4[12];
    *(v6 + v10) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v11 = v6 + v4[13];
    *v11 = swift_getKeyPath();
    v11[40] = 0;
    v6[7] = 0;
    v6[8] = 0;
    v6[5] = sub_216C24208;
    v6[6] = 0;
    sub_2167C5834(v6, a2, &qword_27CAC6348, &unk_217054AC0);
    v12 = a2;
    v13 = 0;
  }

  else
  {
    sub_216697664(&v15, &qword_27CAB6DB0, &qword_217016C00);
    v12 = a2;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v4);
}

uint64_t sub_216C24208@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = sub_217009E94();
  *&v27 = v2;
  *(&v27 + 1) = swift_getKeyPath();
  *&v28 = v3;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250, &qword_217019260);
  sub_2167E947C();
  sub_21700A304();

  sub_21700AD34();
  v4 = sub_21700AD04();

  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248, &qword_21703E070) + 36));
  *v6 = KeyPath;
  v6[1] = v4;
  sub_21700B3B4();
  sub_2170083C4();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8230, &qword_217019240) + 36));
  *v7 = v27;
  v7[1] = v28;
  v7[2] = v29;
  LOBYTE(KeyPath) = sub_217009CB4();
  sub_217007F24();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6350, &qword_217054B98) + 36);
  *v16 = KeyPath;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  LOBYTE(KeyPath) = sub_217009C94();
  sub_217007F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6358, &qword_217054BA0);
  v26 = a1 + *(result + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_216C2441C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700B5A4();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700B5E4();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7MusicUI7ContentVMa_0(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2166AF2EC();
  v12 = sub_21700EE84();
  sub_216C23428(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s7MusicUI7ContentVMa_0);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_216C24B44(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s7MusicUI7ContentVMa_0);
  aBlock[4] = sub_216C24C00;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);

  sub_21700B5C4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_216C206DC(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
  sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
  sub_21700F214();
  MEMORY[0x21CE9FCB0](0, v8, v5, v15);
  _Block_release(v15);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v17);
}

uint64_t sub_216C247B4(uint64_t a1)
{
  sub_216C20744();
  _s7MusicUI7ContentVMa_0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  return sub_21700AEC4();
}

uint64_t sub_216C24830(uint64_t a1)
{
  result = sub_21700B304();
  v2 = 32.0;
  if ((result & 1) == 0)
  {
    v2 = 24.0;
  }

  qword_27CAC62E0 = *&v2;
  return result;
}

void sub_216C248B0(uint64_t a1)
{
  type metadata accessor for SocialCardLockup(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UserSocialProfileCoordinator(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SocialGraphController(319);
      if (v3 <= 0x3F)
      {
        sub_2167B8000();
        if (v4 <= 0x3F)
        {
          sub_216BE96C8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216C249A4(uint64_t a1)
{
  type metadata accessor for SocialCardLockup(319);
  if (v1 <= 0x3F)
  {
    sub_216A949B4(319);
    if (v2 <= 0x3F)
    {
      sub_216AF7568(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_216C24A40()
{
  result = qword_27CAC6300;
  if (!qword_27CAC6300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC62E8, &unk_2170549F8);
    sub_216C206DC(&qword_27CAC6308, _s7MusicUI7ContentVMa_0, &unk_217054A30);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6300);
  }

  return result;
}

uint64_t sub_216C24B44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C24BA0(uint64_t a1)
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return sub_216C2441C(a1, v1 + v3);
}

uint64_t sub_216C24C00()
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return sub_216C247B4(v0 + v1);
}

uint64_t sub_216C24C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return sub_216C234DC(a1, a2, v3 + v7, a3);
}

unint64_t sub_216C24CE0()
{
  result = qword_27CAC63A8;
  if (!qword_27CAC63A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6360, &qword_217054BA8);
    sub_216C24D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63A8);
  }

  return result;
}

unint64_t sub_216C24D6C()
{
  result = qword_27CAC63B0;
  if (!qword_27CAC63B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC63B8, &qword_217054BF0);
    sub_216C24DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63B0);
  }

  return result;
}

unint64_t sub_216C24DF8()
{
  result = qword_27CAC63C0;
  if (!qword_27CAC63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC63C8, &qword_217054BF8);
    sub_2166D9530(&qword_27CAC63D0, &qword_27CAC63D8, &qword_217054C00, &unk_21702C8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63C0);
  }

  return result;
}

unint64_t sub_216C24EB0()
{
  result = qword_27CAC63E0;
  if (!qword_27CAC63E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6370, &qword_217054BB8);
    sub_216C24F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63E0);
  }

  return result;
}

unint64_t sub_216C24F3C()
{
  result = qword_27CAC63E8;
  if (!qword_27CAC63E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC63A0, &qword_217054BE8);
    sub_216C24FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63E8);
  }

  return result;
}

unint64_t sub_216C24FC8()
{
  result = qword_27CAC63F0;
  if (!qword_27CAC63F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6398, &qword_217054BE0);
    sub_2166D9530(&qword_27CAC63F8, &qword_27CAC6390, &qword_217054BD8, &unk_217057EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63F0);
  }

  return result;
}

uint64_t sub_216C25098(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return a1(v1 + v2);
}

unint64_t sub_216C2510C()
{
  result = qword_27CAC6448;
  if (!qword_27CAC6448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6438, &qword_217054C48);
    sub_216C25198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6448);
  }

  return result;
}

unint64_t sub_216C25198()
{
  result = qword_27CAC6450;
  if (!qword_27CAC6450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6458, &qword_217054C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6460, &qword_217054C60);
    sub_216C25260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6450);
  }

  return result;
}

unint64_t sub_216C25260()
{
  result = qword_27CAC6468;
  if (!qword_27CAC6468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6460, &qword_217054C60);
    sub_2167E947C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6468);
  }

  return result;
}

unint64_t sub_216C252EC()
{
  result = qword_27CAC6470;
  if (!qword_27CAC6470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6428, &qword_217054C38);
    sub_216C25378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6470);
  }

  return result;
}

unint64_t sub_216C25378()
{
  result = qword_27CAC6478;
  if (!qword_27CAC6478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6480, &qword_217054C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6488, &qword_217054C70);
    sub_216C25440();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6478);
  }

  return result;
}

unint64_t sub_216C25440()
{
  result = qword_27CAC6490;
  if (!qword_27CAC6490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6488, &qword_217054C70);
    sub_216C254F8();
    sub_2166D9530(&qword_27CAC64E8, &qword_27CAC64F0, &qword_217054CA0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6490);
  }

  return result;
}

unint64_t sub_216C254F8()
{
  result = qword_27CAC6498;
  if (!qword_27CAC6498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64A0, &qword_217054C78);
    sub_216C255B0();
    sub_2166D9530(&qword_27CAB76C8, &qword_27CAB76D0, &qword_217062740, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6498);
  }

  return result;
}

unint64_t sub_216C255B0()
{
  result = qword_27CAC64A8;
  if (!qword_27CAC64A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64B0, &unk_217054C80);
    sub_216C2563C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC64A8);
  }

  return result;
}

unint64_t sub_216C2563C()
{
  result = qword_27CAC64B8;
  if (!qword_27CAC64B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64C0, &unk_217065010);
    sub_216C256F4();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC64B8);
  }

  return result;
}

unint64_t sub_216C256F4()
{
  result = qword_27CAC64C8;
  if (!qword_27CAC64C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64D0, &unk_217054C90);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAC64D8, &qword_27CAC64E0, &unk_217065020, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC64C8);
  }

  return result;
}

uint64_t sub_216C25824@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v81 = a2;
  v88 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v85 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v77 = v7;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_4();
  v80 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v73 = &v72 - v11;
  v84 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v76 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v72 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_6_93();
  v26 = *(v25 + 48);
  v27 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_88(a3 + v26, v28, v29, v27);
  sub_217006214();
  v30 = sub_2170061F4();
  v32 = v31;
  (*(v23 + 8))(v3, v21);
  v86 = v30;
  v87 = v32;
  sub_21700F364();
  v33 = v74;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v78 = *(v13 + 8);
  v79 = v13 + 8;
  v78(v20, v84);
  v37 = v33;
  v82 = a3;
  v83 = v25;
  v38 = (a3 + *(v25 + 24));
  *v38 = v34;
  v38[1] = v36;
  v39 = v81;
  v40 = v72;
  sub_21700CE04();
  v41 = *(v85 + 16);
  v42 = v73;
  v41(v73, v39, v88);
  v43 = v75;
  v44 = sub_216CBFBF0(v40, v42);
  v46 = v43;
  if (v43)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968, qword_21701A810);
    sub_21700CE04();
    v41(v80, v39, v88);
    sub_2167FF028();
    sub_21700D734();
    v46 = 0;
    if (v86)
    {
      v44 = v86;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v45 = 1;
  }

  v47 = v82 + v83[7];
  *v47 = v44;
  *(v47 + 8) = v45;
  v48 = v76;
  sub_21700CE04();
  v49 = v77;
  v41(v77, v39, v88);
  v50 = sub_216CBFBF0(v48, v49);
  if (v46)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968, qword_21701A810);
    sub_21700CE04();
    v41(v80, v39, v88);
    sub_2167FF028();
    sub_21700D734();
    v80 = 0;
    if (v86)
    {
      v50 = v86;
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v51 = 1;
    v52 = v37;
  }

  else
  {
    v52 = v37;
    v80 = 0;
  }

  v53 = v82;
  v54 = v83;
  v55 = v82 + v83[8];
  *v55 = v50;
  *(v55 + 8) = v51;
  sub_21700CE04();
  v56 = sub_21700CD94();
  v58 = v57;
  v59 = v84;
  v60 = v78;
  v78(v20, v84);
  v61 = v53 + v54[9];
  *v61 = v56;
  *(v61 + 8) = v58 & 1;
  sub_21700CE04();
  v62 = sub_21700CDB4();
  v64 = v63;
  v60(v20, v59);
  v65 = (v53 + v54[10]);
  *v65 = v62;
  v65[1] = v64;
  sub_21700CE04();
  v66 = v81;
  sub_21700D2E4();
  (*(v85 + 8))(v66, v88);
  v60(v52, v59);
  v60(v20, v59);
  v67 = v54[5];
  v68 = sub_21700D7A4();
  return OUTLINED_FUNCTION_88(v53 + v67, v69, v70, v68);
}

uint64_t sub_216C25EFC(uint64_t a1)
{
  result = sub_216C25FE4(&qword_27CAC6520, type metadata accessor for ComposerSectionHeader, &unk_217054E04);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C25FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_216C2602C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = type metadata accessor for AttributedLinkList(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v72 = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_4();
  v78 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  v73 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v74 = (&v72 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6538, &unk_217054E60);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_1_0();
  v77 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  v18 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_6_93();
  v23 = v22[12];
  v24 = type metadata accessor for ContentDescriptor(0);
  v76 = v23;
  OUTLINED_FUNCTION_88(a2 + v23, v25, v26, v24);
  sub_217006214();
  v27 = sub_2170061F4();
  v29 = v28;
  (*(v20 + 8))(v2, v18);
  v80 = v27;
  v81 = v29;
  v30 = a1;
  sub_21700F364();
  v31 = v22[5];
  v32 = sub_21700D7A4();
  v75 = v31;
  OUTLINED_FUNCTION_88(a2 + v31, v33, v34, v32);
  v35 = type metadata accessor for Section.Header.ComposerHeader(0);
  v36 = (a1 + v35[5]);
  v37 = *v36;
  v38 = v36[1];
  v39 = v22;
  v40 = (a2 + v22[6]);
  *v40 = v37;
  v40[1] = v38;
  sub_216681B04(v30 + v35[6], v17, &qword_27CAC6538, &unk_217054E60);
  LODWORD(v29) = __swift_getEnumTagSinglePayload(v17, 1, v82);
  sub_21700DF14();
  sub_216697664(v17, &qword_27CAC6538, &unk_217054E60);
  if (v29 == 1)
  {
    v41 = v30;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v74;
    v41 = v30;
    sub_216F94F44(v74);
    v45 = v73;
    sub_216C26510(v44, v73);
    v46 = v79;
    v47 = sub_216CC0644(v45);
    if (v46)
    {
      v49 = 0;
      goto LABEL_10;
    }

    v42 = v47;
    v43 = v48;
    v79 = 0;
    OUTLINED_FUNCTION_2_139();
  }

  v50 = a2 + v39[7];
  *v50 = v42;
  *(v50 + 8) = v43;
  v51 = v41;
  v52 = v77;
  sub_216681B04(v41 + v35[7], v77, &qword_27CAC6538, &unk_217054E60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v82);
  sub_216697664(v52, &qword_27CAC6538, &unk_217054E60);
  v44 = v78;
  if (EnumTagSinglePayload == 1)
  {
    v54 = 0;
    v55 = 0;
LABEL_14:
    v61 = a2 + v39[8];
    *v61 = v54;
    *(v61 + 8) = v55;
    v62 = v51 + v35[8];
    v63 = *v62;
    v64 = *(v62 + 4);
    v65 = v63;
    if (v64)
    {
      v65 = 0.0;
    }

    v66 = a2 + v39[9];
    *v66 = v65;
    *(v66 + 8) = v64;
    v67 = (v51 + v35[9]);
    v69 = *v67;
    v68 = v67[1];
    sub_21700DF14();
    OUTLINED_FUNCTION_3_134();
    v70 = (a2 + v39[10]);
    *v70 = v69;
    v70[1] = v68;
    v71 = a2 + v39[11];
    *(v71 + 32) = 0;
    result = 0.0;
    *v71 = 0u;
    *(v71 + 16) = 0u;
    return result;
  }

  sub_216F952B0(v78);
  v56 = v72;
  sub_216C26510(v44, v72);
  v57 = v79;
  v58 = sub_216CC0644(v56);
  if (!v57)
  {
    v54 = v58;
    v55 = v59;
    OUTLINED_FUNCTION_2_139();
    goto LABEL_14;
  }

  v49 = 1;
LABEL_10:
  sub_216C26574(v44, type metadata accessor for AttributedLinkList);
  OUTLINED_FUNCTION_3_134();
  sub_216788110(a2);
  sub_216697664(a2 + v75, &qword_27CAB6D58, &unk_217014E30);

  if (v49)
  {
  }

  sub_216697664(a2 + v76, &qword_27CAB6A00, &unk_217016B60);
  return result;
}

uint64_t sub_216C26510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedLinkList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C26574(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *_s7SectionV19BackgroundTreatmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s7SectionV8ItemKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC3)
  {
    if (a2 + 61 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 61) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 62;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3E;
  v5 = v6 - 62;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7SectionV8ItemKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 61) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC2)
  {
    v6 = ((a2 - 195) >> 8) + 1;
    *result = a2 + 61;
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
          *result = a2 + 61;
        }

        break;
    }
  }

  return result;
}

unsigned __int16 *_s7SectionV12PresentationOwet(unsigned __int16 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *(result + 1);
    if (v6 <= 2)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6 ^ 0xFF;
    }

    if (v7 + 1 >= 2)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65283;
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(result + 2);
        if (!*(result + 2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 16)) - 65283);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t _s7SectionV12PresentationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *(result + 1) = ~a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C269BC(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216C269D0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 1) = -a2;
  }

  return result;
}

_BYTE *_s7SectionV6HeaderV4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_216C26B08()
{
  OUTLINED_FUNCTION_22_3();
  v91 = v0;
  v106 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SectionContent(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v88 = v8;
  OUTLINED_FUNCTION_4_1();
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v102 = v9;
  v103 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v92 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v99 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  v22 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  v101 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v33 = &v81 - v32;
  v34 = _s7SectionVMa(0);
  v35 = v34[10];
  v93 = v5;
  v36 = (v5 + v35);
  *(v36 + 41) = 0u;
  v36[1] = 0u;
  v36[2] = 0u;
  v100 = v36;
  *v36 = 0u;
  v104 = v3;
  sub_21700CE04();
  v90 = sub_21700CDB4();
  v38 = v37;
  v86 = v24;
  v39 = v33;
  v40 = *(v24 + 8);
  v40(v39, v22);
  v98 = v38;
  if (!v38)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    v48 = sub_216C2BFE0(v46, v47);
    OUTLINED_FUNCTION_4(v48);
    *v49 = 25705;
    v49[1] = 0xE200000000000000;
    v49[2] = v34;
    OUTLINED_FUNCTION_50();
    (*(v50 + 104))();
    swift_willThrow();
    (*(v103 + 8))(v106, v102);
    v40(v104, v22);
LABEL_9:
    sub_216697664(v100, &qword_27CAC6590, &qword_217055280);
    goto LABEL_10;
  }

  v96 = v40;
  v89 = v24 + 8;
  v97 = v22;
  sub_21700CE04();
  v41 = v102;
  v94 = *(v103 + 16);
  v95 = v103 + 16;
  v94(v17, v106, v102);
  v42 = v91;
  sub_216C27D80();
  if (v42)
  {

    v91 = 0;
    v43 = 1;
    v44 = v93;
    v45 = v99;
  }

  else
  {
    v43 = 0;
    v44 = v93;
    v45 = v99;
    v91 = 0;
  }

  v51 = _s7SectionV6HeaderVMa(0);
  __swift_storeEnumTagSinglePayload(v21, v43, 1, v51);
  v84 = v34[6];
  sub_2167A4788();
  v93 = sub_21700D7A4();
  v52 = v104;
  sub_21700CE04();
  v53 = v94;
  v94(v45, v106, v41);
  v81 = v34;
  v83 = v34[5];
  sub_21700D734();
  v54 = v98;
  *v44 = v90;
  v44[1] = v54;
  OUTLINED_FUNCTION_46_18();
  sub_21700CE04();
  v55 = v92;
  v56 = OUTLINED_FUNCTION_90();
  v53(v56);
  v57 = v91;
  sub_216C290BC(v52, v55, v58, v59, v60, v61, v62, v63, v81, v82, SWORD2(v82), HIWORD(v82));
  if (v57)
  {
    v65 = v104;
    v66 = v97;
    (*(v103 + 8))(v106, v41);
    v96(v65, v66);

    sub_216697664(v44 + v83, &qword_27CAB6D58, &unk_217014E30);
    sub_216697664(v44 + v84, &qword_27CABDCC0, &qword_217031290);
    goto LABEL_9;
  }

  v67 = v81;
  *(v44 + v81[7]) = v64;
  v68 = v101;
  v69 = v104;
  sub_21700CE04();
  sub_21682FF4C();
  sub_21700CD14();
  v70 = v68;
  v71 = v97;
  v96(v70, v97);
  *(v44 + *(v67 + 32)) = v105;
  (*(v86 + 16))(v85, v69, v71);
  v94(v87, v106, v41);
  sub_21699CE4C();
  v72 = v103;
  v73 = v44;
  v74 = v81;
  OUTLINED_FUNCTION_31_42();
  v76 = v75;
  sub_216C2D984();
  v77 = v101;
  sub_21700CE04();
  v76(v99, v106, v102);
  sub_216BA1E5C();
  sub_21700D734();
  v78 = v74;
  *(v73 + *(v74 + 56)) = v105;
  v79 = v82;
  sub_21700CE04();
  LOBYTE(v69) = sub_21700CD44();
  v96(v79, v97);
  *(v73 + *(v78 + 36)) = v69 & 1;
  sub_21700CE04();
  v94(v99, v106, v102);
  sub_216C2D70C();
  OUTLINED_FUNCTION_45();
  sub_21700D734();
  sub_216C2D760(&v105, v100);
  sub_21700CE04();
  sub_216C2D7D0();
  sub_21700CD14();
  v96(v77, v97);
  *(v73 + v81[11]) = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
  sub_21700CE04();
  v80 = v102;
  v94(v99, v106, v102);
  sub_216C2D824();
  sub_21700D734();
  (*(v72 + 8))(v106, v80);
  v96(v104, v97);
LABEL_10:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C2750C()
{
  v1 = *(v0 + *(_s7SectionVMa(0) + 32));
  if (v1 == 62)
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    sub_216C275C8(v1);
    v2 = v4;
  }

  MEMORY[0x21CE9F490](v3, v2);

  return 0x5F6E6F6974636573;
}

void sub_216C275C8(char a1)
{
  switch(a1)
  {
    case 7:
    case 8:
    case 12:
    case 18:
    case 19:
    case 25:
    case 26:
    case 29:
    case 49:
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
      return;
    case 14:
    case 21:
    case 24:
    case 30:
    case 60:
      OUTLINED_FUNCTION_17_5();
      break;
    case 48:
      OUTLINED_FUNCTION_74_14();
      break;
    default:
      OUTLINED_FUNCTION_11_71();
      break;
  }
}

unint64_t sub_216C27BE4()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216C27C28(char a1)
{
  result = 0x6E6D756C6F63;
  switch(a1)
  {
    case 1:
      result = 0x7265736F706D6F63;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_216C27CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C27BE4();
  *a1 = result;
  return result;
}

unint64_t sub_216C27D00()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216C27C28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_216C27D2C()
{
  result = qword_27CAC6548;
  if (!qword_27CAC6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6548);
  }

  return result;
}

void sub_216C27D80()
{
  OUTLINED_FUNCTION_22_3();
  v100 = v3;
  v103 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC65B8, &qword_2170552A8);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v99 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC65C0, &unk_2170552B0);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v98 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_4_1();
  v15 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8, &unk_21702C540);
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v96 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  v95 = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47_1();
  v97 = v26;
  OUTLINED_FUNCTION_4_1();
  v27 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v32);
  sub_21700CE04();
  if (sub_21700CDA4())
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    v35 = sub_216C2BFE0(v33, v34);
    OUTLINED_FUNCTION_4(v35);
    v37 = v36;
    v38 = _s7SectionV6HeaderVMa(0);
    *v37 = 1835365481;
    v37[1] = 0xE400000000000000;
    v37[2] = v38;
    OUTLINED_FUNCTION_50();
    (*(v39 + 104))(v37);
    swift_willThrow();
    (*(v17 + 8))(v103, v15);
    v40 = *(v29 + 8);
    v40(v6, v27);
LABEL_5:
    v41 = OUTLINED_FUNCTION_19();
    (v40)(v41);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_36_34();
  sub_21700CE04();
  sub_216C2D8DC();
  sub_21700CCD4();
  if (v1)
  {
    (*(v17 + 8))(v103, v15);
    v40 = *(v29 + 8);
    v40(v6, v27);
    v40(v2, v27);
    goto LABEL_5;
  }

  (*(v29 + 8))(v2, v27);
  v42 = LOBYTE(v101[0]);
  *v100 = v101[0];
  switch(v42)
  {
    case 1:
      v74 = type metadata accessor for ComposerSectionHeader(0);
      v75 = OUTLINED_FUNCTION_21_48();
      v76(v75);
      OUTLINED_FUNCTION_20_49();
      v77 = OUTLINED_FUNCTION_44_24();
      v78(v77);
      sub_216C2BFE0(&qword_27CAC65D0, type metadata accessor for ComposerSectionHeader);
      OUTLINED_FUNCTION_71_15();
      v79 = OUTLINED_FUNCTION_70_11();
      v80(v79);
      v81 = OUTLINED_FUNCTION_14_61();
      v0(v81);
      v82 = OUTLINED_FUNCTION_19();
      v0(v82);
      v51 = v98;
      sub_2167A4788();
      v83 = OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_31_2(v83, v84, v74);
      if (!v65)
      {
        OUTLINED_FUNCTION_49_0();
        v85 = v95;
        sub_216C2D984();
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_73_11();
      v53 = v95;
      goto LABEL_21;
    case 2:
      v54 = type metadata accessor for DefaultSectionHeader(0);
      v55 = OUTLINED_FUNCTION_21_48();
      v56(v55);
      OUTLINED_FUNCTION_20_49();
      v57 = OUTLINED_FUNCTION_44_24();
      v58(v57);
      sub_216C2BFE0(&qword_280E3C5A0, type metadata accessor for DefaultSectionHeader);
      OUTLINED_FUNCTION_71_15();
      v59 = OUTLINED_FUNCTION_70_11();
      v60(v59);
      v61 = OUTLINED_FUNCTION_14_61();
      v0(v61);
      v62 = OUTLINED_FUNCTION_19();
      v0(v62);
      v51 = v99;
      sub_2167A4788();
      v63 = OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_31_2(v63, v64, v54);
      if (!v65)
      {
        OUTLINED_FUNCTION_49_0();
        v85 = v96;
        sub_216C2D984();
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_73_11();
      v53 = v96;
      goto LABEL_21;
    case 3:
      v66 = OUTLINED_FUNCTION_21_48();
      v67(v66);
      OUTLINED_FUNCTION_20_49();
      v68 = OUTLINED_FUNCTION_90();
      v69(v68);
      sub_216C2D930();
      OUTLINED_FUNCTION_8();
      sub_21700D734();
      v70 = OUTLINED_FUNCTION_70_11();
      v71(v70, v15);
      v72 = OUTLINED_FUNCTION_14_61();
      v0(v72);
      v73 = OUTLINED_FUNCTION_19();
      v0(v73);
      v51 = v102;
      if (v102)
      {
        v85 = v94;
        memcpy(v94, v101, 0x50uLL);
        v94[10] = v51;
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_73_11();
      v53 = v94;
      goto LABEL_21;
    default:
      v43 = OUTLINED_FUNCTION_21_48();
      v44(v43);
      OUTLINED_FUNCTION_20_49();
      v45 = OUTLINED_FUNCTION_90();
      v46(v45);
      sub_216C2D9DC();
      OUTLINED_FUNCTION_8();
      sub_21700D734();
      v47 = OUTLINED_FUNCTION_70_11();
      v48(v47, v15);
      v49 = OUTLINED_FUNCTION_14_61();
      v0(v49);
      v50 = OUTLINED_FUNCTION_19();
      v0(v50);
      v51 = v101[1];
      if (v101[1] == 1)
      {
        OUTLINED_FUNCTION_73_11();
        v53 = v97;
LABEL_21:
        v92 = v53;
        v93 = 1;
      }

      else
      {
        v87 = v101[4];
        v86 = v101[5];
        v89 = v101[2];
        v88 = v101[3];
        sub_21700DF14();
        sub_21700DF14();
        sub_21700DF14();
        v90 = OUTLINED_FUNCTION_91();
        sub_216C2DA30(v90, v91);
        *v97 = v101[0];
        v97[1] = v51;
        v85 = v97;
        v97[2] = v89;
        v97[3] = v88;
        v97[4] = v87;
        v97[5] = v86;
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
LABEL_19:
        swift_storeEnumTagMultiPayload();
        v92 = v85;
        v93 = 0;
        v52 = v51;
      }

      __swift_storeEnumTagSinglePayload(v92, v93, 1, v52);
      _s7SectionV6HeaderVMa(0);
      sub_2167A4788();
      break;
  }

LABEL_6:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C2863C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632167 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_59_2(1684632167, 0xE400000000000000) & 1) != 0)
  {

    return 256;
  }

  else
  {
    v6 = a1 == 1953720684 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_59_2(1953720684, 0xE400000000000000) & 1) != 0)
    {

      return 512;
    }

    else if (a1 == 0x666C656873 && a2 == 0xE500000000000000)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_59_2(0x666C656873, 0xE500000000000000);

      if (v8)
      {
        return 1;
      }

      else
      {
        return 4294967040;
      }
    }
  }
}

uint64_t sub_216C2872C(__int16 a1)
{
  v1 = 1684632167;
  if (HIBYTE(a1) != 1)
  {
    v1 = 1953720684;
  }

  if (HIBYTE(a1))
  {
    return v1;
  }

  else
  {
    return 0x666C656873;
  }
}

uint64_t sub_216C28774()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216C287C0(char a1)
{
  if (a1)
  {
    return 0x6E6D756C6F63;
  }

  else
  {
    return 7827314;
  }
}

uint64_t sub_216C287EC@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_216C2863C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_216C2881C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C2872C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216C2886C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C28774();
  *a1 = result;
  return result;
}

uint64_t sub_216C2889C()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216C287C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_216C288C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v106 = v13;
  v113 = v15;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v108 = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v101 - v22;
  sub_21700D3E4();
  OUTLINED_FUNCTION_1();
  v110 = v25;
  v111 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v109 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  v105 = v28;
  OUTLINED_FUNCTION_4_1();
  v29 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v102 = v33;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  v104 = v35;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v107 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v103 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v41);
  v43 = &v101 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v101 - v45;
  v47 = v17;
  sub_21700CE04();
  v48 = sub_21700CDB4();
  v50 = v49;
  v51 = *(v31 + 8);
  v52 = v46;
  v114 = v29;
  v53 = v51;
  v51(v52, v29);
  if (v50 && (sub_216C2863C(v48, v50) >> 8) != 255)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v68 + 8))(v113);
    v53(v47, v114);
LABEL_34:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  OUTLINED_FUNCTION_34_31();
  v112 = v47;
  sub_21700CE04();
  sub_21700CCB4();
  v54 = v43;
  v55 = v53;
  v53(v54, v114);
  v56 = OUTLINED_FUNCTION_12_17();
  v57 = v111;
  OUTLINED_FUNCTION_31_2(v56, v58, v111);
  if (v64)
  {
    sub_216697664(v23, &qword_27CAB7D20, &qword_217018700);
    goto LABEL_17;
  }

  v59 = OUTLINED_FUNCTION_82_1();
  v60(v59);
  OUTLINED_FUNCTION_36_34();
  sub_21700D3F4();
  v61 = sub_21700CDB4();
  v63 = v62;
  v55(v14, v114);
  if (!v63)
  {
    goto LABEL_12;
  }

  v64 = v61 == 0x666C656873 && v63 == 0xE500000000000000;
  if (v64)
  {
  }

  else
  {
    v65 = sub_21700F7D4();

    if ((v65 & 1) == 0)
    {
LABEL_12:
      v66 = OUTLINED_FUNCTION_37_38();
      v67(v66);
      goto LABEL_17;
    }
  }

  v69 = v103;
  sub_21700D3F4();
  v101 = sub_21700CD64();
  v71 = v70;
  v55(v69, v114);
  v72 = OUTLINED_FUNCTION_37_38();
  v73(v72);
  if (v71)
  {
LABEL_17:
    v74 = v107;
    sub_21700CE04();
    v75 = v108;
    sub_21700CCB4();
    v55(v74, v114);
    v76 = OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_31_2(v76, v77, v57);
    if (!v64)
    {
      v78 = OUTLINED_FUNCTION_91();
      v79(v78);
      v29 = v104;
      OUTLINED_FUNCTION_36_34();
      sub_21700D3F4();
      v80 = sub_21700CDB4();
      v82 = v81;
      v55(v29, v114);
      if (!v82)
      {
        v87 = OUTLINED_FUNCTION_53_19();
        v88(v87);
        OUTLINED_FUNCTION_34_31();
        goto LABEL_30;
      }

      if (v80 == 1684632167 && v82 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_34_31();
      }

      else
      {
        v84 = sub_21700F7D4();

        OUTLINED_FUNCTION_34_31();
        if ((v84 & 1) == 0)
        {
          v85 = OUTLINED_FUNCTION_53_19();
          v86(v85);
          goto LABEL_30;
        }
      }

      v89 = v102;
      sub_21700D3F4();
      sub_216C2DC1C();
      sub_21700CD14();
      v55(v89, v114);
      v90 = OUTLINED_FUNCTION_53_19();
      v91(v90);
      if (a13 != 2)
      {
        sub_21700CF34();
        OUTLINED_FUNCTION_34();
        (*(v100 + 8))(v113);
        v55(v112, v114);
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    sub_216697664(v75, &qword_27CAB7D20, &qword_217018700);
LABEL_30:
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    v94 = sub_216C2BFE0(v92, v93);
    OUTLINED_FUNCTION_4(v94);
    v95 = MEMORY[0x277D84F90];
    *v96 = v29;
    v96[1] = 0xE600000000000000;
    v96[2] = &_s7SectionV12PresentationO22CollectionPresentationVN;
    v96[3] = v95;
    OUTLINED_FUNCTION_50();
    (*(v97 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v98 + 8))(v113);
    v55(v112, v114);
    goto LABEL_34;
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v99 + 8))(v113);
  v55(v112, v114);
  if (v101 <= 0xFF)
  {
    goto LABEL_34;
  }

  __break(1u);
}

void sub_216C29090(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _WORD *a9@<X8>)
{
  sub_216C288C4(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  if (!v9)
  {
    *a9 = v11;
  }
}

void sub_216C290BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int16 a12)
{
  OUTLINED_FUNCTION_22_3();
  v60 = v12;
  v63 = v13;
  v15 = v14;
  v62 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  OUTLINED_FUNCTION_36_34();
  v64 = v15;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v61 = *(v23 + 8);
  v61(v30, v21);
  if (!v33)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    sub_216C2BFE0(v45, v46);
    v47 = OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12(v47, v48);
    *v49 = 1684957547;
    v49[1] = 0xE400000000000000;
    v49[2] = &_s7SectionV12PresentationON;
    OUTLINED_FUNCTION_50();
    v51 = *(v50 + 104);
LABEL_10:
    v51();
    v36 = v63;
    v35 = v64;
    v37 = v62;
    goto LABEL_11;
  }

  v34 = v31 == 0x697463656C6C6F63 && v33 == 0xEA00000000006E6FLL;
  if (!v34 && (sub_21700F7D4() & 1) == 0)
  {
    v52 = v31 == 0x656C676E6973 && v33 == 0xE600000000000000;
    if (v52 || (sub_21700F7D4() & 1) != 0)
    {

      (*(v17 + 8))(v63, v62);
      v61(v64, v21);
      goto LABEL_19;
    }

    v53 = sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    v56 = sub_216C2BFE0(v54, v55);
    OUTLINED_FUNCTION_12(v53, v56);
    *v57 = v31;
    v57[1] = v33;
    v57[2] = &_s7SectionV12PresentationON;
    OUTLINED_FUNCTION_50();
    v51 = *(v58 + 104);
    goto LABEL_10;
  }

  v35 = v64;
  (*(v23 + 16))(v27, v64, v21);
  v37 = v62;
  v36 = v63;
  (*(v17 + 16))(v20, v63, v62);
  sub_216C2D888();
  sub_21700D734();
  if (HIBYTE(a12) <= 0xFEu)
  {
    (*(v17 + 8))(v36, v37);
    v61(v35, v21);
    goto LABEL_19;
  }

  sub_21700E2E4();
  OUTLINED_FUNCTION_2_140();
  sub_216C2BFE0(v38, v39);
  v40 = OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_12(v40, v41);
  v42 = MEMORY[0x277D84F90];
  *v43 = 1684957547;
  v43[1] = 0xE400000000000000;
  v43[2] = &_s7SectionV12PresentationON;
  v43[3] = v42;
  OUTLINED_FUNCTION_50();
  (*(v44 + 104))();
LABEL_11:
  swift_willThrow();
  (*(v17 + 8))(v36, v37);
  v61(v35, v21);
LABEL_19:
  OUTLINED_FUNCTION_21_4();
}

unint64_t sub_216C29590()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F7F4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 0x3E)
  {
    return 62;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216C295DC()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_216C29620()
{
  OUTLINED_FUNCTION_74_14();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_17_5();
      break;
    default:
      return;
  }
}

unint64_t sub_216C296D0()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216C29714(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x74616E7265746C61;
  }

  return 0x6D6574737973;
}

void sub_216C29764(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _WORD *a9@<X8>)
{
  sub_216C290BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), HIWORD(v13));
  if (!v9)
  {
    *a9 = v11;
  }
}

unint64_t sub_216C29794()
{
  result = qword_280E2C650;
  if (!qword_280E2C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C650);
  }

  return result;
}

unint64_t sub_216C297F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C29590();
  *a1 = result;
  return result;
}

void sub_216C29824()
{
  v1 = OUTLINED_FUNCTION_18_45();
  sub_216C275C8(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_216C29870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C295DC();
  *a1 = result;
  return result;
}

void sub_216C298A0()
{
  OUTLINED_FUNCTION_18_45();
  sub_216C29620();
  *v0 = v1;
  v0[1] = v2;
}

unint64_t sub_216C29904@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C296D0();
  *a1 = result;
  return result;
}

uint64_t sub_216C29934()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216C29714(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_216C29960()
{
  result = qword_27CAC6550;
  if (!qword_27CAC6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6550);
  }

  return result;
}

uint64_t sub_216C299B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D8, &qword_21701CFF0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_77();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = v134 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  v134[30] = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  v134[31] = v45;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  v134[32] = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v134[33] = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  v134[34] = v51;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  v134[35] = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  v134[36] = v55;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  v134[37] = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  v134[38] = v59;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_4();
  v134[39] = v61;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_4();
  v134[40] = v63;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  v134[41] = v65;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v134[42] = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v134[43] = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  v134[44] = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v134[45] = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v134[46] = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v134[47] = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47_1();
  v134[48] = v79;
  __swift_allocate_value_buffer(v80, qword_280E73B58);
  v134[49] = __swift_project_value_buffer(v0, qword_280E73B58);
  sub_216C2DA84();
  sub_21682FF4C();
  sub_21700D374();
  type metadata accessor for AlbumDetailHeaderLockup(0);
  sub_216C2BFE0(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup);
  sub_216C2BFE0(&qword_280E38968, type metadata accessor for AlbumDetailHeaderLockup);
  v135 = 0;
  sub_21700D354();
  v81 = *(v2 + 8);
  v81(v6, v0);
  type metadata accessor for AlbumTrackLockup(0);
  sub_216C2BFE0(qword_280E41540, type metadata accessor for AlbumTrackLockup);
  sub_216C2BFE0(&qword_280E41538, type metadata accessor for AlbumTrackLockup);
  OUTLINED_FUNCTION_5_101(1);
  sub_21700D354();
  v82 = OUTLINED_FUNCTION_91();
  (v81)(v82);
  type metadata accessor for AnimatedTextListItem(0);
  sub_216C2BFE0(&qword_27CABE138, type metadata accessor for AnimatedTextListItem);
  sub_216C2BFE0(&qword_27CAC65E0, type metadata accessor for AnimatedTextListItem);
  OUTLINED_FUNCTION_5_101(2);
  sub_21700D354();
  v83 = OUTLINED_FUNCTION_45();
  (v81)(v83);
  type metadata accessor for AppsWithAccessComponentModel(0);
  sub_216C2BFE0(&qword_280E32798, type metadata accessor for AppsWithAccessComponentModel);
  sub_216C2BFE0(&qword_280E32790, type metadata accessor for AppsWithAccessComponentModel);
  OUTLINED_FUNCTION_5_101(3);
  sub_21700D354();
  v84 = OUTLINED_FUNCTION_82_1();
  (v81)(v84);
  type metadata accessor for ArtistDetailHeaderLockup(0);
  sub_216C2BFE0(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup);
  sub_216C2BFE0(&qword_280E36D88, type metadata accessor for ArtistDetailHeaderLockup);
  OUTLINED_FUNCTION_5_101(4);
  v85 = v134[1];
  OUTLINED_FUNCTION_90();
  sub_21700D354();
  v81(v12, v0);
  type metadata accessor for ArtistLatestReleaseLockup(0);
  sub_216C2BFE0(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E35C20);
  OUTLINED_FUNCTION_5_101(5);
  OUTLINED_FUNCTION_46_18();
  sub_21700D354();
  v81(v85, v0);
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(0);
  sub_216C2BFE0(qword_280E2E350, type metadata accessor for ArtistLatestReleaseAndTopSongsLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2E348);
  OUTLINED_FUNCTION_5_101(6);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v86 = OUTLINED_FUNCTION_91();
  (v81)(v86);
  type metadata accessor for BubbleLockup(0);
  sub_216C2BFE0(&qword_280E44DC0, type metadata accessor for BubbleLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E44DB8);
  OUTLINED_FUNCTION_5_101(8);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v87 = OUTLINED_FUNCTION_45();
  (v81)(v87);
  type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  sub_216C2BFE0(&qword_280E2E290, type metadata accessor for ContainerDetailTracklistFooterLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2E288);
  OUTLINED_FUNCTION_5_101(9);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v88 = OUTLINED_FUNCTION_82_1();
  (v81)(v88);
  type metadata accessor for CuratorDetailHeaderComponentModel(0);
  sub_216C2BFE0(&qword_280E2F350, type metadata accessor for CuratorDetailHeaderComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E2F348);
  OUTLINED_FUNCTION_5_101(10);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v89 = OUTLINED_FUNCTION_45();
  (v81)(v89);
  type metadata accessor for EmptyStateLockup(0);
  sub_216C2BFE0(&qword_280E41380, type metadata accessor for EmptyStateLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E41378);
  OUTLINED_FUNCTION_5_101(11);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v90 = OUTLINED_FUNCTION_82_1();
  (v81)(v90);
  type metadata accessor for FlowcaseLockup(0);
  sub_216C2BFE0(qword_280E43620, type metadata accessor for FlowcaseLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E43618);
  OUTLINED_FUNCTION_5_101(12);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v91 = OUTLINED_FUNCTION_45();
  (v81)(v91);
  type metadata accessor for GroupedTextListLockup(0);
  sub_216C2BFE0(qword_280E3A888, type metadata accessor for GroupedTextListLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E3A880);
  OUTLINED_FUNCTION_5_101(14);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v92 = OUTLINED_FUNCTION_82_1();
  (v81)(v92);
  type metadata accessor for HeaderComponentModel(0);
  sub_216C2BFE0(&qword_280E3C3A8, type metadata accessor for HeaderComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E3C3A0);
  OUTLINED_FUNCTION_5_101(15);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v93 = OUTLINED_FUNCTION_45();
  (v81)(v93);
  type metadata accessor for HorizontalLockup(0);
  sub_216C2BFE0(qword_280E410F0, type metadata accessor for HorizontalLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E410E0);
  OUTLINED_FUNCTION_5_101(16);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v94 = OUTLINED_FUNCTION_82_1();
  (v81)(v94);
  type metadata accessor for HorizontalPosterLockup(0);
  sub_216C2BFE0(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E39368);
  OUTLINED_FUNCTION_5_101(17);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v95 = OUTLINED_FUNCTION_45();
  (v81)(v95);
  type metadata accessor for InlineUpsell(0);
  sub_216C2BFE0(&qword_280E44CE0, type metadata accessor for InlineUpsell);
  OUTLINED_FUNCTION_39_28(&qword_280E44CD8);
  OUTLINED_FUNCTION_5_101(18);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v96 = OUTLINED_FUNCTION_82_1();
  (v81)(v96);
  type metadata accessor for LinkComponentModel(0);
  sub_216C2BFE0(&qword_280E3EC50, type metadata accessor for LinkComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E3EC48);
  OUTLINED_FUNCTION_5_101(20);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v97 = OUTLINED_FUNCTION_45();
  (v81)(v97);
  type metadata accessor for LiveRadioGridLockup(0);
  sub_216C2BFE0(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E3DB30);
  OUTLINED_FUNCTION_5_101(21);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v98 = OUTLINED_FUNCTION_82_1();
  (v81)(v98);
  type metadata accessor for ParagraphComponentModel(0);
  sub_216C2BFE0(&qword_280E37B38, type metadata accessor for ParagraphComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E37B30);
  OUTLINED_FUNCTION_5_101(22);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v99 = OUTLINED_FUNCTION_45();
  (v81)(v99);
  type metadata accessor for PlaylistDetailHeaderLockup(0);
  sub_216C2BFE0(qword_280E34400, type metadata accessor for PlaylistDetailHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E343F8);
  OUTLINED_FUNCTION_5_101(23);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v100 = OUTLINED_FUNCTION_82_1();
  (v81)(v100);
  type metadata accessor for PlaylistTrackLockup(0);
  sub_216C2BFE0(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E3D5E0);
  OUTLINED_FUNCTION_5_101(24);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v101 = OUTLINED_FUNCTION_45();
  (v81)(v101);
  type metadata accessor for PosterLockup(0);
  sub_216C2BFE0(qword_280E44990, type metadata accessor for PosterLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E44988);
  OUTLINED_FUNCTION_5_101(26);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v102 = OUTLINED_FUNCTION_82_1();
  (v81)(v102);
  type metadata accessor for SearchLandingBrickLockup(0);
  sub_216C2BFE0(qword_280E363D0, type metadata accessor for SearchLandingBrickLockup);
  sub_216C2BFE0(&qword_280E363C8, type metadata accessor for SearchLandingBrickLockup);
  OUTLINED_FUNCTION_5_101(7);
  OUTLINED_FUNCTION_12_62();
  sub_21700D354();
  v103 = OUTLINED_FUNCTION_91();
  (v81)(v103);
  OUTLINED_FUNCTION_5_101(28);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_12_62();
  sub_21700D354();
  v104 = OUTLINED_FUNCTION_45();
  (v81)(v104);
  type metadata accessor for SongDetailList(0);
  sub_216C2BFE0(qword_280E42AE0, type metadata accessor for SongDetailList);
  OUTLINED_FUNCTION_39_28(&qword_280E42AD8);
  OUTLINED_FUNCTION_5_101(48);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v105 = OUTLINED_FUNCTION_91();
  (v81)(v105);
  type metadata accessor for SocialCardLockup(0);
  sub_216C2BFE0(&qword_280E407F0, type metadata accessor for SocialCardLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E407E8);
  OUTLINED_FUNCTION_5_101(31);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v106 = OUTLINED_FUNCTION_45();
  (v81)(v106);
  type metadata accessor for SocialProfileDetailHeaderLockup(0);
  sub_216C2BFE0(qword_280E2FEC8, type metadata accessor for SocialProfileDetailHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2FEC0);
  OUTLINED_FUNCTION_5_101(44);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v107 = OUTLINED_FUNCTION_82_1();
  (v81)(v107);
  type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
  sub_216C2BFE0(&qword_280E2CFC0, type metadata accessor for SocialProfileDetailViewFollowRequestsHeader);
  OUTLINED_FUNCTION_39_28(&qword_280E2CFB8);
  v135 = 47;
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v108 = OUTLINED_FUNCTION_91();
  (v81)(v108);
  type metadata accessor for SocialProfileEditorHeaderLockup(0);
  sub_216C2BFE0(qword_280E2FE08, type metadata accessor for SocialProfileEditorHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2FE00);
  OUTLINED_FUNCTION_5_101(45);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v109 = OUTLINED_FUNCTION_45();
  (v81)(v109);
  type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
  sub_216C2BFE0(&qword_280E2CDC8, type metadata accessor for SocialProfileFindFriendsButtonComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E2CDC0);
  OUTLINED_FUNCTION_5_101(46);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v110 = OUTLINED_FUNCTION_91();
  (v81)(v110);
  type metadata accessor for SocialOnboardingWelcomePageLockup(0);
  sub_216C2BFE0(qword_280E2EF10, type metadata accessor for SocialOnboardingWelcomePageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2EF08);
  OUTLINED_FUNCTION_5_101(43);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v111 = OUTLINED_FUNCTION_45();
  (v81)(v111);
  type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
  sub_216C2BFE0(qword_280E2D5F8, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2D5F0);
  OUTLINED_FUNCTION_5_101(42);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v112 = OUTLINED_FUNCTION_91();
  (v81)(v112);
  type metadata accessor for SocialOnboardingFindFriendsPageLockup(0);
  sub_216C2BFE0(qword_280E2DC28, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2DC20);
  OUTLINED_FUNCTION_5_101(32);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v113 = OUTLINED_FUNCTION_45();
  (v81)(v113);
  type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
  sub_216C2BFE0(&qword_280E2D280, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2D278);
  OUTLINED_FUNCTION_5_101(34);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v114 = OUTLINED_FUNCTION_91();
  (v81)(v114);
  type metadata accessor for SocialOnboardingSharedPlaylistLockup(0);
  sub_216C2BFE0(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E2DFE0);
  OUTLINED_FUNCTION_5_101(35);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v115 = OUTLINED_FUNCTION_45();
  (v81)(v115);
  type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
  sub_216C2BFE0(&qword_280E2CAC0, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2CAB8);
  OUTLINED_FUNCTION_5_101(33);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v116 = OUTLINED_FUNCTION_91();
  (v81)(v116);
  type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(0);
  sub_216C2BFE0(&qword_280E2D6A8, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2D6A0);
  OUTLINED_FUNCTION_5_101(36);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v117 = OUTLINED_FUNCTION_45();
  (v81)(v117);
  type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
  sub_216C2BFE0(&qword_280E2CE80, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2CE78);
  OUTLINED_FUNCTION_5_101(37);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v118 = OUTLINED_FUNCTION_91();
  (v81)(v118);
  type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
  sub_216C2BFE0(qword_280E2D540, type metadata accessor for SocialProfileFollowRequestResponseHeader);
  OUTLINED_FUNCTION_39_28(&qword_280E2D538);
  v135 = 47;
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v119 = OUTLINED_FUNCTION_45();
  (v81)(v119);
  type metadata accessor for SocialProfileHorizontalLockup(0);
  sub_216C2BFE0(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E310D8);
  OUTLINED_FUNCTION_5_101(39);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v120 = OUTLINED_FUNCTION_82_1();
  (v81)(v120);
  type metadata accessor for Spacer(0);
  sub_216C2BFE0(&qword_280E2C268, type metadata accessor for Spacer);
  OUTLINED_FUNCTION_39_28(&qword_280E2C260);
  OUTLINED_FUNCTION_5_101(49);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v121 = OUTLINED_FUNCTION_45();
  (v81)(v121);
  type metadata accessor for SquareLockup(0);
  sub_216C2BFE0(&qword_280E445F0, type metadata accessor for SquareLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E445E0);
  OUTLINED_FUNCTION_5_101(51);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v122 = OUTLINED_FUNCTION_82_1();
  (v81)(v122);
  type metadata accessor for SuggestionItem(0);
  sub_216C2BFE0(qword_280E42A28, type metadata accessor for SuggestionItem);
  OUTLINED_FUNCTION_39_28(&unk_280E42A18);
  OUTLINED_FUNCTION_5_101(52);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v123 = OUTLINED_FUNCTION_45();
  (v81)(v123);
  type metadata accessor for SuperHeroLockup(0);
  sub_216C2BFE0(qword_280E41E98, type metadata accessor for SuperHeroLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E41E90);
  OUTLINED_FUNCTION_5_101(53);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v124 = OUTLINED_FUNCTION_82_1();
  (v81)(v124);
  type metadata accessor for TextListComponentModel(0);
  sub_216C2BFE0(&qword_280E38AD0, type metadata accessor for TextListComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E38AC8);
  OUTLINED_FUNCTION_5_101(54);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v125 = OUTLINED_FUNCTION_45();
  (v81)(v125);
  type metadata accessor for TrackLockup(0);
  sub_216C2BFE0(&qword_280E44FA0, type metadata accessor for TrackLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E44F98);
  OUTLINED_FUNCTION_5_101(56);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v126 = OUTLINED_FUNCTION_82_1();
  (v81)(v126);
  type metadata accessor for TopSearchLockup(0);
  sub_216C2BFE0(&qword_280E41D00, type metadata accessor for TopSearchLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E41CF8);
  OUTLINED_FUNCTION_5_101(55);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v127 = OUTLINED_FUNCTION_45();
  (v81)(v127);
  type metadata accessor for TVMovieDetailHeaderLockup(0);
  sub_216C2BFE0(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E34CE0);
  OUTLINED_FUNCTION_5_101(58);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v128 = OUTLINED_FUNCTION_82_1();
  (v81)(v128);
  type metadata accessor for TVMovieDescription(0);
  sub_216C2BFE0(qword_280E3E588, type metadata accessor for TVMovieDescription);
  OUTLINED_FUNCTION_39_28(&qword_280E3E580);
  OUTLINED_FUNCTION_5_101(57);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v129 = OUTLINED_FUNCTION_45();
  (v81)(v129);
  type metadata accessor for VerticalArtworkListItem(0);
  sub_216C2BFE0(&qword_27CABE110, type metadata accessor for VerticalArtworkListItem);
  OUTLINED_FUNCTION_39_28(&qword_27CAC65E8);
  OUTLINED_FUNCTION_5_101(59);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v130 = OUTLINED_FUNCTION_82_1();
  (v81)(v130);
  type metadata accessor for VerticalVideoLockup(0);
  sub_216C2BFE0(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E3CD88);
  OUTLINED_FUNCTION_5_101(60);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v131 = OUTLINED_FUNCTION_45();
  (v81)(v131);
  type metadata accessor for SearchQueryContextLockup(0);
  sub_216C2BFE0(qword_280E36308, type metadata accessor for SearchQueryContextLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E36300);
  OUTLINED_FUNCTION_5_101(61);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v132 = OUTLINED_FUNCTION_82_1();
  return (v81)(v132);
}

uint64_t sub_216C2BEF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C2750C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216C2BFE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216C2C06C()
{
  OUTLINED_FUNCTION_22_3();
  v153 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578, &qword_217055270);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v146 = &v132 - v7;
  v8 = OUTLINED_FUNCTION_4_1();
  v147 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v144 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47_1();
  v145 = v12;
  v13 = OUTLINED_FUNCTION_4_1();
  v143 = type metadata accessor for SongTrackLockupCollection(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v148 = v15;
  v16 = OUTLINED_FUNCTION_4_1();
  v138 = type metadata accessor for Presentation.StackedShelf(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v137 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47_1();
  v134 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v141 = &v132 - v23;
  v24 = OUTLINED_FUNCTION_4_1();
  v142 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(v24);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v136 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  v135 = v28;
  v29 = OUTLINED_FUNCTION_4_1();
  v139 = type metadata accessor for HorizontalLockupCollection(v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v140 = v31;
  v32 = OUTLINED_FUNCTION_4_1();
  v33 = type metadata accessor for SectionContent(v32);
  v34 = OUTLINED_FUNCTION_36(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v150 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE10, &qword_2170312C0);
  OUTLINED_FUNCTION_36(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v39 = &v132 - v38;
  v40 = type metadata accessor for Section.Content(0);
  v41 = OUTLINED_FUNCTION_36(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v132 - v46;
  v48 = type metadata accessor for Section.Content.OneOf_InnerContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v149 = v50;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47_1();
  v151 = v52;
  v53 = OUTLINED_FUNCTION_4_1();
  v54 = type metadata accessor for Section.Header(v53);
  v55 = OUTLINED_FUNCTION_36(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x28223BE20](v56);
  v58 = &v132 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  OUTLINED_FUNCTION_36(v59);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v60);
  v62 = &v132 - v61;
  v154 = _s7SectionVMa(0);
  v63 = (v4 + v154[10]);
  *(v63 + 41) = 0u;
  v63[1] = 0u;
  v63[2] = 0u;
  v155 = v63;
  *v63 = 0u;
  if (!sub_216F8CD78())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6588, &qword_217055278);
    v69 = sub_2167880BC();
    v70 = OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v69);
    OUTLINED_FUNCTION_33_5(xmmword_217014E10, v70, v71);
    OUTLINED_FUNCTION_0_200();
    sub_216C2D6B4(v2, v72);
    v68 = 0;
LABEL_15:
    sub_216697664(v155, &qword_27CAC6590, &qword_217055280);
    if (v68)
    {
      sub_216C2D6B4(v4 + v154[13], type metadata accessor for SectionContent);
    }

LABEL_17:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  *v4 = sub_216F8CBC4();
  v4[1] = v64;
  v152 = v4;
  v133 = v64;
  if (sub_216F8D1D0())
  {
    sub_216F8CE30();
    sub_216C2D65C();
    v65 = v153;
    sub_216C2CEB4();
    v153 = v65;
    if (v65)
    {
      OUTLINED_FUNCTION_1_173();
      sub_216C2D6B4(v58, v66);
      OUTLINED_FUNCTION_0_200();
      sub_216C2D6B4(v2, v67);

      v68 = 0;
      v4 = v152;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_173();
    sub_216C2D6B4(v58, v75);
    v73 = _s7SectionV6HeaderVMa(0);
    v74 = 0;
  }

  else
  {
    v73 = _s7SectionV6HeaderVMa(0);
    v74 = 1;
  }

  __swift_storeEnumTagSinglePayload(v62, v74, 1, v73);
  v76 = v154;
  v77 = v154[6];
  sub_2167A4788();
  if ((sub_216F8E36C() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_216F8DF74();
  sub_2166A6EA4();
  sub_216C2D6B4(v47, type metadata accessor for Section.Content);
  OUTLINED_FUNCTION_31_2(v39, 1, v48);
  if (v78)
  {
    sub_216697664(v39, &qword_27CABEE10, &qword_2170312C0);
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6588, &qword_217055278);
    v79 = sub_2167880BC();
    v80 = OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v79);
    OUTLINED_FUNCTION_33_5(xmmword_217030F50, v80, v81);
    OUTLINED_FUNCTION_0_200();
    v83 = v2;
    goto LABEL_13;
  }

  v84 = v151;
  sub_216C2D984();
  sub_216F8DF74();
  v85 = sub_216F8DC84();
  v86 = v153;
  sub_2169BA3CC(v44, v85, v87, v87, v88, v89, v90, v91, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
  if (v86)
  {
    OUTLINED_FUNCTION_0_200();
    sub_216C2D6B4(v2, v92);
    OUTLINED_FUNCTION_7_87();
    v83 = v84;
LABEL_13:
    sub_216C2D6B4(v83, v82);
    v68 = 0;
    v4 = v152;
LABEL_14:

    sub_216697664(v4 + v77, &qword_27CABDCC0, &qword_217031290);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_31_42();
  v4 = v152;
  sub_216C2D984();
  sub_216C2D65C();
  OUTLINED_FUNCTION_65_13();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v95 = v146;
  v94 = v147;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_22_45();
      v97 = 26;
      goto LABEL_31;
    case 2:
      sub_216C2D984();
      v98 = v141;
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v98, 1, v142);
      if (v78)
      {
        sub_216697664(v98, &qword_27CAC6580, &qword_217073AA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6598, &qword_217055288);
        v99 = sub_2167880BC();
        v100 = OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v99);
        OUTLINED_FUNCTION_33_5(xmmword_217054E70, v100, v101);
        OUTLINED_FUNCTION_0_200();
        sub_216C2D6B4(v2, v102);
        v103 = OUTLINED_FUNCTION_30_40();
        sub_216C2D6B4(v103, v113);
        OUTLINED_FUNCTION_7_87();
        sub_216C2D6B4(v84, v114);
        v68 = 1;
        goto LABEL_14;
      }

      v122 = OUTLINED_FUNCTION_30_40();
      sub_216C2D6B4(v122, v123);
      sub_216C2D984();
      v124 = v136;
      sub_216C2D984();
      OUTLINED_FUNCTION_65_13();
      v125 = swift_getEnumCaseMultiPayload();
      if (v125)
      {
        v76 = v154;
        if (v125 == 1)
        {
          v126 = 256;
        }

        else
        {
          v126 = -256;
        }

        *(v4 + v154[7]) = v126;
        sub_216C2D6B4(v124, type metadata accessor for HorizontalLockupCollection.OneOf_Presentation);
LABEL_60:
        v129 = v76[8];
        v130 = 16;
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_29_39();
      sub_216C2D984();
      OUTLINED_FUNCTION_27_43();
      if (v124)
      {
        v131 = 0;
      }

      else
      {
        v131 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation;
      }

      if ((v131 & 0x80000000) == 0)
      {
        v76 = v154;
        if (v131 > 0xFF)
        {
          goto LABEL_65;
        }

        *(v4 + v154[7]) = v131;
        goto LABEL_60;
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      return;
    case 3:
      OUTLINED_FUNCTION_22_45();
      v97 = 31;
      goto LABEL_31;
    case 4:
      OUTLINED_FUNCTION_22_45();
      v97 = 51;
      goto LABEL_31;
    case 5:
      *(v4 + v76[7]) = -256;
      v96 = v76[8];
      v97 = 53;
      goto LABEL_31;
    case 6:
      OUTLINED_FUNCTION_54_20();
      v96 = v76[8];
      v97 = 1;
      goto LABEL_31;
    case 7:
      OUTLINED_FUNCTION_54_20();
      v96 = v76[8];
      v97 = 24;
      goto LABEL_31;
    case 8:
      sub_216C2D984();
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v95, 1, v94);
      if (v78)
      {
        sub_217007874();
        OUTLINED_FUNCTION_33_33();
        OUTLINED_FUNCTION_65_13();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_31_2(v95, 1, v94);
        v127 = v144;
        if (!v78)
        {
          sub_216697664(v95, &qword_27CAC6578, &qword_217055270);
        }
      }

      else
      {
        OUTLINED_FUNCTION_33_33();
        OUTLINED_FUNCTION_32_28();
        sub_216C2D984();
        v127 = v144;
      }

      OUTLINED_FUNCTION_32_28();
      sub_216C2D984();
      OUTLINED_FUNCTION_65_13();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_29_39();
        sub_216C2D984();
        OUTLINED_FUNCTION_27_43();
        if (v127)
        {
          v128 = 0;
        }

        else
        {
          v128 = v76;
        }

        if ((v128 & 0x80000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v76 = v154;
          if (v128 <= 0xFF)
          {
            *(v4 + v154[7]) = v128;
            goto LABEL_51;
          }
        }

        __break(1u);
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_54_20();
      sub_216C2D6B4(v127, type metadata accessor for SongTrackLockupCollection.OneOf_Presentation);
LABEL_51:
      v129 = v76[8];
      v130 = 56;
LABEL_61:
      *(v4 + v129) = v130;
LABEL_32:
      *(v4 + v76[9]) = sub_216F8D230() & 1;
      if (sub_216F8D5F4())
      {
        v105 = sub_216F8D4DC();
        sub_216C2CC0C(v105, v106 & 1, v107, v108, v109, v110, v111, v112, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
        v116 = v115;
      }

      else
      {
        v116 = 3;
      }

      OUTLINED_FUNCTION_0_200();
      sub_216C2D6B4(v2, v117);
      OUTLINED_FUNCTION_7_87();
      sub_216C2D6B4(v84, v118);
      v119 = v154;
      *(v4 + v154[11]) = v116;
      *(v4 + v119[14]) = 1;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
      OUTLINED_FUNCTION_72_16(v120);
      v121 = sub_21700D7A4();
      OUTLINED_FUNCTION_72_16(v121);
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_22_45();
      v97 = 8;
LABEL_31:
      *(v4 + v96) = v97;
      OUTLINED_FUNCTION_7_87();
      sub_216C2D6B4(v149, v104);
      goto LABEL_32;
  }
}