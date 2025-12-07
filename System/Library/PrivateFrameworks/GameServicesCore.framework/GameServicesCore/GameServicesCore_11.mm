void sub_227C24C38(void *a1@<X8>)
{
  sub_227C24B78();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C24DE8()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v5);
  v1[7] = OUTLINED_FUNCTION_379();
  v1[8] = swift_task_alloc();
  v6 = sub_227D492A8();
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_379();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v8);
  v1[16] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9500, &qword_227D5E0E8);
  v1[17] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  v1[20] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[21] = v12;
  v1[22] = OUTLINED_FUNCTION_30();
  v1[23] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v13);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v14 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227C25014()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v0 + 16) = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  sub_227D49378();
  v5 = OUTLINED_FUNCTION_173();
  v6(v5);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v10);
  sub_227D4CBF8();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v11);
  OUTLINED_FUNCTION_416_0();
  sub_227D4CAF8();
  OUTLINED_FUNCTION_179();
  v12 = sub_227D4CB38();

  if (!sub_227B4BF3C(v12))
  {

    v22 = OUTLINED_FUNCTION_141();
    v23(v22);
    v24 = OUTLINED_FUNCTION_147();
    v25(v24);
    goto LABEL_20;
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 56);
  swift_getKeyPath();
  swift_retain_n();
  sub_227D4CE58();
  sub_227C1B0B8(v14);
  OUTLINED_FUNCTION_318(v14, 1, v13);
  if (v15)
  {
    v16 = *(v0 + 72);
    v17 = *(v0 + 56);

    sub_227C1CB1C(v17, &qword_27D7E6D08);
    OUTLINED_FUNCTION_71_0();
    v21 = v16;
LABEL_18:
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

    OUTLINED_FUNCTION_424();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, v40, v41);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    if (EnumTagSinglePayload != 1)
    {
      v63 = *(v0 + 160);
      v50 = *(v0 + 80);
      v51 = *(v0 + 40);
      (*(v50 + 32))(*(v0 + 120), *(v0 + 64), *(v0 + 72));
      sub_227D49298();
      sub_227D491D8();
      v53 = v52;
      v54 = *(v50 + 8);
      v55 = OUTLINED_FUNCTION_299_0();
      v54(v55);
      v56 = OUTLINED_FUNCTION_355_0();
      v54(v56);
      v57 = OUTLINED_FUNCTION_141();
      v58(v57);
      (*(v44 + 8))(v43, v63);
      v65 = v53 < v51;
      goto LABEL_22;
    }

    v45 = *(v0 + 64);
    v46 = OUTLINED_FUNCTION_141();
    v47(v46);
    v48 = OUTLINED_FUNCTION_9_2();
    v49(v48);
    sub_227C1CB1C(v45, &qword_27D7E6D08);
LABEL_20:
    v65 = 0;
LABEL_22:

    OUTLINED_FUNCTION_115();

    return v59(v65);
  }

  v26 = *(v0 + 80);
  v27 = *(v26 + 32);
  (v27)(*(v0 + 112), *(v0 + 56), *(v0 + 72));
  result = sub_227B4BF3C(v12);
  v62 = v12 & 0xC000000000000001;
  v64 = result;
  v60 = v12;
  v61 = v12 & 0xFFFFFFFFFFFFFF8;
  for (i = 0; ; ++i)
  {
    if (v64 == i)
    {
      v37 = *(v0 + 72);

      v38 = OUTLINED_FUNCTION_336();
      v27(v38);
      OUTLINED_FUNCTION_99();
      v21 = v37;
      goto LABEL_18;
    }

    if (v62)
    {
      result = MEMORY[0x22AAA63D0](i, v12);
      goto LABEL_11;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v61 + 16))
    {
      goto LABEL_27;
    }

    result = OUTLINED_FUNCTION_383();
LABEL_11:
    if (__OFADD__(i, 1))
    {
      goto LABEL_26;
    }

    sub_227C24D1C(v30, v31, v32);

    v33 = OUTLINED_FUNCTION_551();
    v27(v33);
    OUTLINED_FUNCTION_16_9();
    sub_227B17E0C(&unk_280E7B6F0);
    if (sub_227D4CEE8())
    {
      v34 = OUTLINED_FUNCTION_147();
      v35(v34);
      v36 = OUTLINED_FUNCTION_57_0();
      result = (v27)(v36);
    }

    else
    {
      result = (*(v26 + 8))(*(v0 + 104), *(v0 + 72));
    }

    v12 = v60;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_227C256B8()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v4);
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9500, &qword_227D5E0E8);
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v1[13] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v9);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v10 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C2582C()
{
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[2] = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_209_2();
  sub_227D49378();
  v5 = OUTLINED_FUNCTION_93_0();
  v6(v5);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v10);
  sub_227D4CBF8();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v11);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_246();
  v19 = sub_227D4CB18();
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];

  v15 = OUTLINED_FUNCTION_236();
  v16(v15);
  (*(v13 + 8))(v12, v14);

  v17 = v0[1];

  return v17(v19 > 0);
}

uint64_t sub_227C25A70()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_227D4CAB8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_379();
  v1[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v7);
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = sub_227D492A8();
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v1[15] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v10);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v11 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C25BD8(uint64_t a1)
{
  v2 = v1[14];
  v4 = v1[5];
  v3 = v1[6];
  v5 = v1[3];
  v6 = v1[4];
  sub_227D49288();
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v6;
  v7[5] = v4;
  sub_227C26CEC(sub_227C4AD68, v7, v5);

  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v8);
  OUTLINED_FUNCTION_132_0();
  sub_227D4CAF8();
  sub_227D4CB28();
  v11 = v1[14];
  v20 = *(v1 + 2);

  OUTLINED_FUNCTION_132_0();
  sub_227D4CAF8();
  v12 = OUTLINED_FUNCTION_407();
  v13 = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(v12);
  v14 = swift_task_alloc();
  *(v14 + 16) = v20;
  *(v14 + 32) = v11;
  v1[2] = v13;
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_552();
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v19);
  OUTLINED_FUNCTION_82();
  sub_227D4CB48();
  sub_227C1CB1C(v1[11], &qword_27D7E9468);

  OUTLINED_FUNCTION_236();
  sub_227D4CAF8();
  sub_227D4CB28();

  (*(v1[13] + 8))(v1[14], v1[12]);

  OUTLINED_FUNCTION_18();

  return v9();
}

void sub_227C260A0()
{
  OUTLINED_FUNCTION_351();
  v143 = v0;
  v127 = v3;
  v130 = v4;
  v131 = v5;
  OUTLINED_FUNCTION_342();
  v6 = sub_227D49528();
  OUTLINED_FUNCTION_9();
  v141 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_3();
  v140 = v9;
  OUTLINED_FUNCTION_191_2();
  sub_227D49F28();
  OUTLINED_FUNCTION_9();
  v113 = v11;
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_3();
  v112 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v13);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_0();
  v144 = v15;
  OUTLINED_FUNCTION_191_2();
  sub_227D49918();
  OUTLINED_FUNCTION_9();
  v132 = v17;
  v133 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_126_1();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  v129 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_329_0();
  sub_227D49188();
  OUTLINED_FUNCTION_9();
  v125 = v22;
  v126 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  v118 = v27;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  v163 = v29;
  v30 = *(v29 + 16);
  v145 = &v102 - v32;
  v146 = v31;
  v110 = v30;
  v111 = v29 + 16;
  v30();
  v115 = sub_227D49848();
  v134 = v33;
  v116 = sub_227D49A78();
  v136 = v34;
  v117 = sub_227D49A58();
  v135 = v35;
  sub_227D49A98();
  sub_227D49978();
  v142 = v6;
  v153 = v6;
  OUTLINED_FUNCTION_41_4();
  v119 = sub_227B17E0C(v36);
  v154 = v119;
  __swift_allocate_boxed_opaque_existential_1(v152);
  OUTLINED_FUNCTION_349_0();
  v124 = v25;
  sub_227D49518();
  v120 = sub_227D49A38();
  v137 = v37;
  v121 = sub_227D49A68();
  v139 = v38;
  v138 = sub_227D49998();
  v147 = v2;
  sub_227D49958();
  v122 = sub_227D499A8();
  sub_227D49938();
  v123 = v39;
  sub_227D49948();
  sub_227D49AA8();
  sub_227C3EF8C();
  (*(v132 + 8))(v1, v133);
  v40 = v144;
  sub_227D49A48();
  v41 = v40;
  v42 = sub_227D4AA38();
  v43 = OUTLINED_FUNCTION_215_2();
  OUTLINED_FUNCTION_318(v43, v44, v42);
  if (v45)
  {
    OUTLINED_FUNCTION_390_0();
    sub_227C1CB1C(v41, &qword_27D7E67F0);
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
  }

  else
  {
    v53 = v143;
    sub_227C3F0B4();
    if (v53)
    {

      sub_227C1CB1C(v147, &qword_27D7E6CD8);
      (*(v163 + 8))(v145, v146);
      OUTLINED_FUNCTION_14_0();
      (*(v54 + 8))(v144, v42);
      __swift_destroy_boxed_opaque_existential_0(v152);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_390_0();
    v143 = 0;
    v107 = v156;
    v108 = v155;
    v105 = v158;
    v106 = v157;
    v103 = v160;
    v104 = v159;
    v102 = v161;
    OUTLINED_FUNCTION_14_0();
    (*(v55 + 8))(v144, v42);
    v52 = v102;
    v51 = v103;
    v50 = v104;
    v49 = v105;
    v48 = v106;
    v47 = v107;
    v46 = v108;
  }

  v162[0] = v46;
  v162[1] = v47;
  v162[2] = v48;
  v162[3] = v49;
  v162[4] = v50;
  v162[5] = v51;
  v162[6] = v52;
  *&v104 = sub_227D499E8();
  *&v105 = sub_227D49A28();
  *&v106 = sub_227D499C8();
  *&v108 = sub_227D49A08();
  v56 = v112;
  sub_227D49968();
  LODWORD(v107) = sub_227C3F370();
  (*(v113 + 8))(v56, v114);
  LODWORD(v144) = sub_227D49A88();
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  v58 = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_166_2();
  v59 = swift_allocObject();
  (*(v141 + 16))(v140, v57, v142);
  *(v59 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91F0, &qword_227D5C220);
  OUTLINED_FUNCTION_1_22();
  v61 = sub_227B17E0C(v60);
  v148 = v58;
  v149 = v58;
  v150 = v61;
  v151 = v61;
  OUTLINED_FUNCTION_13_1();
  *(v59 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v59 + 24));
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v59 + 16) = 16843009;
  *(v59 + 20) = 257;
  v113 = v59 + 20;
  *(v59 + 22) = 1;
  v114 = (v59 + 22);
  sub_227D494B8();
  (v110)(v118, v145, v146);
  OUTLINED_FUNCTION_256((v59 + 24), *(v59 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v62);
  OUTLINED_FUNCTION_149_0();
  sub_227D4CAD8();

  v63 = OUTLINED_FUNCTION_200();
  v118 = v64;
  (v64)(v63);
  sub_227C3C834(v115);
  sub_227C31FB4();
  sub_227C31FB4();
  sub_227D4CE58();
  OUTLINED_FUNCTION_51_5();
  sub_227C34014(v65, v59 + 24, v66, v67, v68, v69, v70, v71, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1));
  v72 = v140;
  v73 = v142;
  v74 = sub_227D49AE8();
  sub_227C3C834(v74);
  sub_227D49AD8();
  (*(v141 + 8))(v72, v73);
  OUTLINED_FUNCTION_256((v59 + 24), *(v59 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_31_3();
  sub_227B17E0C(v75);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_412();
  sub_227D4CAD8();

  v76 = OUTLINED_FUNCTION_261_0();
  v77(v76);
  sub_227D4CE58();
  sub_227C3C834(v130);
  sub_227C3C834(v120);
  sub_227C31FB4();
  sub_227C330DC(v138);
  sub_227C4BC80();
  OUTLINED_FUNCTION_256((v59 + 24), *(v59 + 48));
  swift_getKeyPath();
  sub_227C3F494();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_193_3();
  sub_227C1CB1C(v78, v79);
  *(v59 + 19) = 0;
  OUTLINED_FUNCTION_256((v59 + 24), *(v59 + 48));
  swift_getKeyPath();
  LOBYTE(v148) = v122 & 1;
  OUTLINED_FUNCTION_412();
  sub_227D4CAD8();

  sub_227C3381C();
  sub_227C3381C();
  if (v109)
  {
    if (v109 == 1)
    {
      v80 = 0x6E6F7268636E7973;
    }

    else
    {
      v80 = 0x6F7268636E797361;
    }
  }

  else
  {
    v80 = OUTLINED_FUNCTION_381_0();
  }

  v81 = v144;
  v82 = v108;
  v83 = v114;
  sub_227C3C834(v80);
  sub_227C33B9C(v162, v83, (v59 + 24));
  sub_227C34014(v104, v59 + 24, v84, &unk_227D5C7B0, &qword_27D7E7710, &qword_227D531D0, sub_227C170F8, v85, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1));
  OUTLINED_FUNCTION_371_0(v105, v59 + 24, v86, &unk_227D5C7D8, v87, v88, v89, v90, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1));
  OUTLINED_FUNCTION_371_0(v106, v59 + 24, v91, &unk_227D5C4E8, v92, v93, v94, v95, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1));
  OUTLINED_FUNCTION_371_0(v82, v59 + 24, v96, &unk_227D5C4B8, v97, v98, v99, v100, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1));
  if (v107)
  {
    if (v107 == 2)
    {
      v101 = 0x6D706F6C65766564;
    }

    else
    {
      v101 = 0x646567617473;
    }
  }

  else
  {
    v101 = 1702259052;
  }

  sub_227C3C834(v101);
  OUTLINED_FUNCTION_256((v59 + 24), *(v59 + 48));
  swift_getKeyPath();
  LOBYTE(v148) = v81 & 1;
  OUTLINED_FUNCTION_412();
  sub_227D4CAD8();

  sub_227C1CB1C(v147, &qword_27D7E6CD8);
  v118(v145, v146);
  __swift_destroy_boxed_opaque_existential_0(v152);
LABEL_18:
  OUTLINED_FUNCTION_352();
}

uint64_t (*sub_227C26CEC(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_227D49AB8() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void sub_227C26DB8()
{
  OUTLINED_FUNCTION_11();
  v47 = v1;
  sub_227D48FD8();
  OUTLINED_FUNCTION_9();
  v43 = v3;
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v41 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8760, &qword_227D5B6F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9478, &qword_227D5E0B8);
  OUTLINED_FUNCTION_9();
  v45 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v40 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9480, &qword_227D5E0C0);
  OUTLINED_FUNCTION_9();
  v46 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_2();
  v12 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_67_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9498, &qword_227D5E0D8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_85_1();
  sub_227B1A6E4(v19);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_199_1();
  sub_227D48F28();

  v20 = *(v15 + 8);
  v21 = OUTLINED_FUNCTION_336();
  v20(v21);
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v22);
  sub_227B1A6E4(&unk_280E7B750);
  OUTLINED_FUNCTION_324();
  sub_227D48F08();
  OUTLINED_FUNCTION_163_1();
  v23 = OUTLINED_FUNCTION_349_0();
  v24(v23);
  OUTLINED_FUNCTION_163_1();
  v25(v0, v39);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_371();
  sub_227D48F28();

  v26 = OUTLINED_FUNCTION_336();
  v20(v26);
  sub_227D492A8();
  sub_227D48FE8();
  (*(v43 + 104))(v41, *MEMORY[0x277CC8FD8], v44);
  sub_227B1A6E4(&unk_27D7E94B0);
  sub_227B1A6E4(&unk_280E7B760);
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v27);
  sub_227D48F88();
  v28 = OUTLINED_FUNCTION_196_2();
  v29(v28, v44);
  v30 = OUTLINED_FUNCTION_226_0();
  v31(v30);
  (*(v45 + 8))(v40, v42);
  *(v47 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E94B8, &qword_227D5E0E0);
  v32 = sub_227C4AEDC();
  OUTLINED_FUNCTION_421(v32);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v33);
  OUTLINED_FUNCTION_265();
  sub_227B1A6E4(v34);
  OUTLINED_FUNCTION_340();
  sub_227D48FA8();
  v35 = OUTLINED_FUNCTION_249();
  v36(v35, v46);
  v37 = OUTLINED_FUNCTION_201();
  v38(v37);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C27564()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_387_0();
  OUTLINED_FUNCTION_142_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_208_1();

  return sub_227C241BC();
}

uint64_t sub_227C27608()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227C21AD0();
}

uint64_t sub_227C27694()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C23BD4();
}

uint64_t sub_227C27714()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_242();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C25A70();
}

uint64_t sub_227C277B0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227C24DE8();
}

uint64_t sub_227C27844()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227C256B8();
}

uint64_t sub_227C278D0()
{
  result = sub_227D4DC48();
  qword_280E7BC90 = result;
  *algn_280E7BC98 = v1;
  return result;
}

void sub_227C278F8()
{
  OUTLINED_FUNCTION_351();
  v4 = v3;
  v107 = v5;
  OUTLINED_FUNCTION_407();
  sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_191_2();
  v8 = sub_227D4CCB8();
  v9 = OUTLINED_FUNCTION_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v11);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v102 = v13;
  OUTLINED_FUNCTION_191_2();
  v103 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v101 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_314();
  v100 = v18;
  OUTLINED_FUNCTION_191_2();
  v19 = sub_227D49308();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_311_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92B8, &qword_227D5CC20);
  OUTLINED_FUNCTION_5(v21);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105_1();
  v23 = sub_227D49328();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  sub_227D4CCF8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_120_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_219_1();
  if (v4)
  {
    sub_227D4CCC8();
    sub_227C28428();
    sub_227C1CB1C(v107, &unk_27D7E92C0);
    sub_227C1CB1C(v2, &qword_27D7E92B8);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_201_1(v29);
  sub_227C4BC80();
  OUTLINED_FUNCTION_318(v1, 1, v23);
  if (v30)
  {
    sub_227C1CB1C(v1, &qword_27D7E92B8);
    v33 = v107;
LABEL_12:
    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v56);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_413_0();
    sub_227D49D98();
    swift_willThrow();
    sub_227C1CB1C(v33, &unk_27D7E92C0);
    sub_227C1CB1C(v2, &qword_27D7E92B8);
    goto LABEL_18;
  }

  v31 = OUTLINED_FUNCTION_310_0();
  v32(v31);
  v33 = v107;
  sub_227C4BC80();
  if (!v104[3])
  {
    v54 = OUTLINED_FUNCTION_113();
    v55(v54);
    sub_227C1CB1C(v104, &unk_27D7E92C0);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_337_0();
  v34 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_440_0(v34);
  v35 = sub_227D492F8();
  OUTLINED_FUNCTION_328_0(v35, v36, v106);
  v37 = OUTLINED_FUNCTION_278();
  v38(v37);
  OUTLINED_FUNCTION_256(v105, v106[0]);
  sub_227B281AC();
  OUTLINED_FUNCTION_379_0();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_120();
  v19(v39, v40);

  OUTLINED_FUNCTION_318(v102, 1, v103);
  if (v30)
  {
    sub_227C1CB1C(v102, &qword_27D7E6CD8);
    sub_227B1AF8C();
    v41 = OUTLINED_FUNCTION_265_0();
    v42(v41);
    OUTLINED_FUNCTION_420_0();
    sub_227D4CE58();
    v43 = sub_227D4CA98();
    sub_227D4D438();

    if (OUTLINED_FUNCTION_447_0())
    {
      OUTLINED_FUNCTION_415();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_229();
      v45 = swift_slowAlloc();
      v104[0] = v45;
      *(v44 + 4) = OUTLINED_FUNCTION_303_0(4.8149e-34);
      OUTLINED_FUNCTION_218_1();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v51 = OUTLINED_FUNCTION_105_2();
      MEMORY[0x22AAA7130](v51);
      OUTLINED_FUNCTION_420_0();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
    }

    v52 = OUTLINED_FUNCTION_146_3();
    v53(v52);
    OUTLINED_FUNCTION_437_0();

    OUTLINED_FUNCTION_3_7();
    v104[1] = v83;
    v84 = OUTLINED_FUNCTION_165_3();
    MEMORY[0x22AAA5DA0](v84);

    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v85);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_413_0();
    OUTLINED_FUNCTION_58();
    sub_227D49D98();

    swift_willThrow();

    sub_227C1CB1C(v107, &unk_27D7E92C0);
    v86 = OUTLINED_FUNCTION_269_0();
    sub_227C1CB1C(v86, v87);
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_403_0();
    v88();
    __swift_destroy_boxed_opaque_existential_0(v105);
  }

  else
  {

    OUTLINED_FUNCTION_199_1();
    v57();
    v58 = OUTLINED_FUNCTION_94();
    v59(v58);
    sub_227D4CCA8();
    OUTLINED_FUNCTION_351_0();
    OUTLINED_FUNCTION_376(27, v60);
    v61 = OUTLINED_FUNCTION_188_2();
    v62(v61);
    sub_227C28428();
    OUTLINED_FUNCTION_428();
    if (v98)
    {
      v64 = v63;
      sub_227B1AF8C();
      OUTLINED_FUNCTION_411_0();
      v65 = OUTLINED_FUNCTION_228_0();
      v66(v65);
      v67 = v99;
      v68 = sub_227D4CA98();
      sub_227D4D438();

      if (OUTLINED_FUNCTION_447_0())
      {
        OUTLINED_FUNCTION_415();
        v69 = swift_slowAlloc();
        OUTLINED_FUNCTION_301();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        v71 = v99;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 4) = v72;
        *v70 = v72;
        OUTLINED_FUNCTION_438_0(&dword_227B0D000, v73, v74, "Failed to construct model container for activity store with error, deleting files: %@");
        sub_227C1CB1C(v70, &qword_27D7E68C8);
        v75 = OUTLINED_FUNCTION_101_2();
        MEMORY[0x22AAA7130](v75);
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
      }

      v76 = (v64 + 8);
      v77 = OUTLINED_FUNCTION_114();
      v78(v77);
      OUTLINED_FUNCTION_336_0();
      sub_227D49128();
      v79 = OUTLINED_FUNCTION_350_0();
      v76(v79);
      sub_227B281D4();

      v80 = OUTLINED_FUNCTION_200();
      v76(v80);
      v81 = OUTLINED_FUNCTION_221_0();
      v82(v81);
      sub_227C28428();

      sub_227C1CB1C(v107, &unk_27D7E92C0);
      v91 = OUTLINED_FUNCTION_269_0();
      sub_227C1CB1C(v91, v92);
      v93 = OUTLINED_FUNCTION_78_6();
      v94(v93);
      v95 = OUTLINED_FUNCTION_407_0();
      v76(v95);
    }

    else
    {

      sub_227C1CB1C(v107, &unk_27D7E92C0);
      sub_227C1CB1C(v0, &qword_27D7E92B8);
      v89 = OUTLINED_FUNCTION_261_0();
      v90(v89);
      (*(v101 + 8))(v100, v103);
    }

    OUTLINED_FUNCTION_406_0();
    OUTLINED_FUNCTION_403_0();
    v96();
    __swift_destroy_boxed_opaque_existential_0(v105);
  }

LABEL_18:
  OUTLINED_FUNCTION_352();
}

void *sub_227C28428()
{
  OUTLINED_FUNCTION_419();
  sub_227D4CBB8();
  OUTLINED_FUNCTION_304_0();
  sub_227D4CDE8();
  sub_227C45EE4();
  v1 = sub_227D4CD38();
  sub_227C4B97C();
  v2 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_380(v2, &type metadata for GameActivityInstanceMigrationPlan);
  v4 = v3;

  if (v4)
  {
    type metadata accessor for GameActivityInstanceStore();
    OUTLINED_FUNCTION_198_2();
    swift_allocObject();
    OUTLINED_FUNCTION_300_0();
    sub_227D4CB88();
    OUTLINED_FUNCTION_166_2();
    swift_allocObject();
    OUTLINED_FUNCTION_308();

    sub_227D4CB98();
    OUTLINED_FUNCTION_342();
    sub_227D4CD28();
    OUTLINED_FUNCTION_166_2();
    swift_allocObject();
    OUTLINED_FUNCTION_78_0();
    v5 = sub_227D4CD18();
    OUTLINED_FUNCTION_181_0();
    v7 = sub_227B17E0C(v6);
    v1[2] = v5;
    v1[3] = v7;
    v1[4] = v4;
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v9);
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_378_0();
    swift_willThrow();
  }

  sub_227D4CCF8();
  OUTLINED_FUNCTION_15_6();
  (*(v8 + 8))(v0);
  return v1;
}

uint64_t sub_227C285FC()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_227D498E8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4CAB8();
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v9);
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49B48();
  v1[14] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_379();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v12);
  v1[19] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9330, &unk_227D5DF40);
  v1[20] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[21] = v14;
  v1[22] = OUTLINED_FUNCTION_30();
  v15 = sub_227D492A8();
  v1[23] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[24] = v16;
  v1[25] = OUTLINED_FUNCTION_30();
  v1[26] = type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v17);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v18 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227C2888C(uint64_t a1)
{
  v2 = v1[3];
  sub_227D49298();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  v7 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v8);
  OUTLINED_FUNCTION_302_0();
  sub_227D4CBF8();
  *(swift_task_alloc() + 16) = v2;
  v1[2] = v7;
  sub_227D49378();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  OUTLINED_FUNCTION_359();
  sub_227D4CBE8();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v12);
  v13 = sub_227D4CAF8();
  OUTLINED_FUNCTION_179();
  sub_227D4CB38();
  OUTLINED_FUNCTION_308();

  result = sub_227B4BF3C(v13);
  if (result)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AAA63D0](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    v16 = v1[13];
    v15 = v1[14];

    sub_227C29638();
    sub_227D49B28();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v15);
    v18 = v1[18];
    v19 = v1[15];
    if (EnumTagSinglePayload == 1)
    {
      (*(v19 + 104))(v18, *MEMORY[0x277D0CD18], v1[14]);
      OUTLINED_FUNCTION_424();
      OUTLINED_FUNCTION_318(v20, v21, v22);
      if (!v23)
      {
        sub_227C1CB1C(v1[13], &qword_27D7E6CE8);
      }
    }

    else
    {
      (*(v19 + 32))(v18, v1[13], v1[14]);
    }

    v24 = v1[15];
    sub_227D497E8();
    OUTLINED_FUNCTION_114_2();
    v25 = sub_227D49B18();
    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_307_0();
    v26(v27);
    v82 = v26;
    if ((v25 & 1) == 0)
    {
      v79 = v1[18];
      v29 = v1[15];
      v28 = v1[16];
      v30 = v1[14];
      v31 = v1[11];
      v32 = v1[12];
      v33 = v1[10];
      v77 = v1[9];
      v35 = v1[7];
      v34 = v1[8];
      v36 = v1[3];
      v37 = sub_227B1AF8C();
      (*(v31 + 16))(v32, v37, v33);
      (*(v29 + 16))(v28, v79, v30);
      (*(v34 + 16))(v77, v36, v35);
      v38 = sub_227D4CA98();
      v39 = sub_227D4D418();
      v40 = os_log_type_enabled(v38, v39);
      v80 = v1[25];
      v76 = v1[23];
      v78 = v1[24];
      v74 = v1[22];
      v75 = v1[21];
      v72 = v1[18];
      v73 = v1[20];
      if (v40)
      {
        v68 = v39;
        v41 = v1[16];
        v42 = v1[14];
        v69 = v1[11];
        v70 = v1[10];
        v71 = v1[12];
        v66 = v1[9];
        v43 = v1[8];
        v67 = v1[7];
        v44 = swift_slowAlloc();
        swift_slowAlloc();
        *v44 = 136315394;
        sub_227D49B38();
        (v82)(v41, v42);
        v45 = OUTLINED_FUNCTION_94();
        v48 = sub_227B1B1A4(v45, v46, v47);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        sub_227D497E8();
        v49 = sub_227D49B38();
        v50 = OUTLINED_FUNCTION_91_0();
        v82(v50);
        (*(v43 + 8))(v66, v67);
        v51 = OUTLINED_FUNCTION_57_0();
        sub_227B1B1A4(v51, v52, v53);
        OUTLINED_FUNCTION_223();

        *(v44 + 14) = v49;
        _os_log_impl(&dword_227B0D000, v38, v68, "Cannot transition from %s to %s", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();

        (*(v69 + 8))(v71, v70);
        (v82)(v72, v42);
      }

      else
      {
        v54 = v1[14];

        v55 = OUTLINED_FUNCTION_173();
        v56(v55);
        v57 = OUTLINED_FUNCTION_57_0();
        v82(v57);
        v58 = OUTLINED_FUNCTION_179();
        v59(v58);
        (v82)(v72, v54);
      }

      (*(v75 + 8))(v74, v73);
      (*(v78 + 8))(v80, v76);
      goto LABEL_21;
    }

    sub_227C296F8();
    v81 = v1[18];
    v60 = v1[14];
    OUTLINED_FUNCTION_355_0();
    sub_227D4CAF8();
    OUTLINED_FUNCTION_148();
    sub_227D4CB58();

    OUTLINED_FUNCTION_355_0();
    sub_227D4CAF8();
    sub_227D4CB68();

    (v82)(v81, v60);
  }

  else
  {

    OUTLINED_FUNCTION_324();
    sub_227C296F8();
    sub_227D4CAF8();
    OUTLINED_FUNCTION_148();
    sub_227D4CB68();
  }

  sub_227D4CAF8();
  sub_227D4CB28();

  v61 = OUTLINED_FUNCTION_148();
  v62(v61);
  v63 = OUTLINED_FUNCTION_9_2();
  v64(v63);
LABEL_21:

  OUTLINED_FUNCTION_18();

  return v65();
}

void sub_227C2912C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9428, &qword_227D5E060);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9430, &qword_227D5E068);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_72_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_2_24();
  v7 = sub_227B1A6E4(v6);
  OUTLINED_FUNCTION_222_0(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_384_0(v8, v9);

  v10 = OUTLINED_FUNCTION_307_0();
  v11(v10);
  v12 = sub_227D498E8();
  OUTLINED_FUNCTION_253_0(v12);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  v14 = sub_227B1A6E4(v13);
  OUTLINED_FUNCTION_68_4(v14);

  v15 = OUTLINED_FUNCTION_75_3();
  v16(v15);
  *(v23 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9440, &qword_227D5E0A0);
  v17 = sub_227C4AB70();
  OUTLINED_FUNCTION_421(v17);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v18);
  sub_227B1A6E4(&unk_27D7E9460);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v19 = OUTLINED_FUNCTION_74_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_196_3();
  v22(v21);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C29528(void *a1@<X8>)
{
  sub_227C29468();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C2960C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227D49848();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_227C296F8()
{
  OUTLINED_FUNCTION_351();
  v276 = v0;
  v258 = v3;
  v257 = v4;
  v234 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v240 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v7);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9200, &unk_227D5C318);
  OUTLINED_FUNCTION_9();
  v237 = v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v10);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  v242 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v241 = v13;
  OUTLINED_FUNCTION_191_2();
  v254 = sub_227D49AC8();
  OUTLINED_FUNCTION_9();
  v244 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_314();
  v247 = v17;
  OUTLINED_FUNCTION_191_2();
  v249 = sub_227D49B48();
  OUTLINED_FUNCTION_9();
  v248 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  v22 = OUTLINED_FUNCTION_5(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v24);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v271 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_119_3(v28, v29, v30, v31, v32, v33, v34, v35, v216);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_266();
  v270 = v38;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_266();
  v269 = v40;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_314();
  v268 = v42;
  OUTLINED_FUNCTION_191_2();
  v272 = sub_227D49648();
  OUTLINED_FUNCTION_9();
  v246 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_3();
  v267 = v45;
  OUTLINED_FUNCTION_191_2();
  v251 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v250 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_314();
  v263 = v49;
  OUTLINED_FUNCTION_191_2();
  sub_227D49528();
  OUTLINED_FUNCTION_9();
  v265 = v51;
  v266 = v50;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  OUTLINED_FUNCTION_9();
  v274 = v55;
  v275 = v54;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_3();
  v262 = v56;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_266();
  v273 = v58;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_438();
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_54_0();
  v65 = v63 - v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_325_0();
  MEMORY[0x28223BE20](v67);
  v283 = v61;
  v70 = *(v61 + 16);
  v69 = v61 + 16;
  v68 = v70;
  v277 = &v216 - v72;
  v278 = v71;
  v70();
  v73 = sub_227D49848();
  v75 = v74;
  sub_227D497C8();
  v76 = v276;
  v77 = sub_227D4A708();
  if (v76)
  {

    v79 = OUTLINED_FUNCTION_196_2();
    v80(v79);
    (*(v283 + 8))(v277, v278);
    goto LABEL_4;
  }

  v227 = v77;
  v228 = v73;
  v233 = v78;
  v276 = v75;
  v229 = v68;
  v230 = v69;
  v231 = v65;
  v232 = v2;
  v81 = v274[1];
  v81(v1, v275);
  sub_227D497C8();
  v226 = sub_227D4A728();
  v82 = OUTLINED_FUNCTION_173();
  (v81)(v82);
  sub_227D497C8();
  sub_227D4A6F8();
  v274 = 0;
  v83 = OUTLINED_FUNCTION_264_0();
  (v81)(v83);
  v84 = v255;
  OUTLINED_FUNCTION_186_2();
  sub_227D49518();
  v224 = sub_227D49758();
  sub_227D49858();
  v226 = sub_227D498C8();
  v225 = v85;
  sub_227D49788();
  sub_227D498D8();
  sub_227D497D8();
  sub_227D49888();
  v273 = sub_227D49898();
  v262 = v86;
  v221 = sub_227D497A8();
  v275 = sub_227D49798();
  v217 = sub_227D49828();
  sub_227D49878();
  HIDWORD(v218) = sub_227D49818();
  sub_227D49808();
  v220 = sub_227D497B8();
  v219 = v87;
  sub_227D497E8();
  v88 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_166_2();
  v89 = swift_allocObject();
  v90 = v265;
  (*(v265 + 16))(v259, v84, v266);
  *(v89 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9208, &qword_227D5C328);
  OUTLINED_FUNCTION_0_41();
  v92 = sub_227B17E0C(v91);
  v279 = v88;
  v280 = v88;
  v281 = v92;
  v282 = v92;
  OUTLINED_FUNCTION_13_1();
  *(v89 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v89 + 24));
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v89 + 16) = 0x101010101010101;
  v223 = v89 + 16;
  sub_227D494B8();
  sub_227D4CE58();
  sub_227C3C834(v257);
  v93 = v231;
  v94 = v278;
  OUTLINED_FUNCTION_352_0();
  v95();
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_9();
  v222 = sub_227B17E0C(v96);
  sub_227D4CAD8();

  v263 = *(v283 + 8);
  v263(v93, v94);
  sub_227C3C834(v228);
  sub_227C3C834(v227);
  OUTLINED_FUNCTION_41_4();
  sub_227B17E0C(v97);
  OUTLINED_FUNCTION_233();
  v98 = sub_227D49AE8();
  sub_227C3C834(v98);
  OUTLINED_FUNCTION_233();
  sub_227D49AD8();
  v99 = OUTLINED_FUNCTION_299_0();
  v265 = v90 + 8;
  v259 = v100;
  (v100)(v99);
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_31_3();
  sub_227B17E0C(v101);
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_163_1();
  v102 = OUTLINED_FUNCTION_278();
  v103(v102);
  sub_227C330DC(v224);
  v104 = sub_227D49638();
  sub_227C3C834(v104);
  sub_227C31FB4();
  OUTLINED_FUNCTION_352_0();
  v105();
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  swift_getKeyPath();
  sub_227D4CAD8();

  v106 = OUTLINED_FUNCTION_82();
  (v263)(v106);
  v107 = v253;
  sub_227C4BC80();
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  KeyPath = swift_getKeyPath();
  sub_227C3F588();
  OUTLINED_FUNCTION_292_0(KeyPath, v107);

  sub_227C1CB1C(v107, &qword_27D7E6D08);
  *(v89 + 17) = 0;
  OUTLINED_FUNCTION_418_0();
  sub_227C4BC80();
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  v109 = swift_getKeyPath();
  OUTLINED_FUNCTION_292_0(v109, v107);

  sub_227C1CB1C(v107, &qword_27D7E6D08);
  *(v89 + 18) = 0;
  OUTLINED_FUNCTION_418_0();
  sub_227C4BC80();
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  v110 = swift_getKeyPath();
  OUTLINED_FUNCTION_292_0(v110, v107);

  sub_227C1CB1C(v107, &qword_27D7E6D08);
  *(v89 + 19) = 0;
  v111 = sub_227D4DC28();
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  swift_getKeyPath();
  v279 = v111;
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  v112 = v275 + 56;
  OUTLINED_FUNCTION_102_3();
  v115 = v114 & v113;
  v117 = (v116 + 63) >> 6;
  v273 = v271 + 16;
  v276 = (v271 + 8);
  sub_227D4CE58();
  v118 = 0;
  v262 = MEMORY[0x277D84F90];
  v119 = v272;
  while (1)
  {
    v120 = v118;
    if (!v115)
    {
      break;
    }

    while (1)
    {
      v118 = v120;
LABEL_10:
      OUTLINED_FUNCTION_402_0();
      v121 = OUTLINED_FUNCTION_305();
      v122(v121);
      v123 = v274;
      v124 = sub_227D4A898();
      if (!v123)
      {
        break;
      }

      v126 = OUTLINED_FUNCTION_196_3();
      v127(v126);
      v274 = 0;
      v120 = v118;
    }

    v128 = v124;
    v129 = v125;
    v274 = 0;
    v130 = OUTLINED_FUNCTION_196_3();
    v131(v130);
    v132 = v262;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = OUTLINED_FUNCTION_21();
      v132 = sub_227B25F88(v137, v138, v139, v132);
    }

    v119 = v272;
    v134 = *(v132 + 2);
    v133 = *(v132 + 3);
    v135 = v134 + 1;
    if (v134 >= v133 >> 1)
    {
      v140 = OUTLINED_FUNCTION_12(v133);
      v262 = v141;
      v142 = v132;
      v144 = v143;
      v145 = sub_227B25F88(v140, v141, 1, v142);
      v135 = v262;
      v134 = v144;
      v132 = v145;
    }

    *(v132 + 2) = v135;
    v262 = v132;
    v136 = &v132[16 * v134];
    *(v136 + 4) = v128;
    *(v136 + 5) = v129;
  }

  while (1)
  {
    v118 = v120 + 1;
    if (__OFADD__(v120, 1))
    {
      __break(1u);
      return;
    }

    if (v118 >= v117)
    {
      break;
    }

    v115 = *(v112 + 8 * v118);
    ++v120;
    if (v115)
    {
      goto LABEL_10;
    }
  }

  sub_227B30834(v262);
  OUTLINED_FUNCTION_285();
  sub_227C34014(v146, v89 + 24, v147, v148, v149, v150, v151, v152, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227);
  sub_227C37E24();
  v154 = v153;

  sub_227C330DC(v154);
  v155 = v274;
  sub_227D4A898();
  if (v155)
  {

    OUTLINED_FUNCTION_333();
  }

  else
  {
    v274 = 0;
  }

  v156 = v248;
  v157 = v256;
  v158 = v232;
  sub_227C31FB4();
  OUTLINED_FUNCTION_256((v89 + 24), *(v89 + 48));
  swift_getKeyPath();
  LOBYTE(v279) = BYTE4(v218) & 1;
  sub_227D4CAD8();

  v159 = v260;
  v160 = v245;
  sub_227C4BC80();
  v161 = OUTLINED_FUNCTION_215_2();
  v162 = v254;
  OUTLINED_FUNCTION_318(v161, v163, v254);
  if (v164)
  {
    sub_227C1CB1C(v160, &qword_27D7E6CF0);
    v165 = v257;
  }

  else
  {
    (*(v244 + 32))(v247, v160, v162);
    v166 = OUTLINED_FUNCTION_236();
    v167(v166);
    v168 = OUTLINED_FUNCTION_201_0();
    v170 = v169(v168);
    v165 = v257;
    if (v170 == *MEMORY[0x277D0CB90])
    {
      v171 = OUTLINED_FUNCTION_201_0();
      v172(v171);
      v173 = OUTLINED_FUNCTION_174();
      v174 = v235;
      v175(v173);
      v176 = v274;
      sub_227D4A7D8();
      if (v176)
      {

        OUTLINED_FUNCTION_333();
      }

      else
      {
        v274 = 0;
      }

      sub_227C31FB4();
      OUTLINED_FUNCTION_163_1();
      v194(v241, v174);
      OUTLINED_FUNCTION_163_1();
      v195 = OUTLINED_FUNCTION_57_0();
      v196(v195);
      goto LABEL_34;
    }

    if (v170 == *MEMORY[0x277D0CB98])
    {
      v177 = OUTLINED_FUNCTION_201_0();
      v178(v177);
      v179 = OUTLINED_FUNCTION_174();
      v180(v179);
      v181 = v274;
      sub_227D4A868();
      if (v181)
      {

        OUTLINED_FUNCTION_333();
      }

      else
      {
        v274 = 0;
      }

      v158 = v232;
      sub_227C31FB4();
      OUTLINED_FUNCTION_163_1();
      v197(v236, v238);
      OUTLINED_FUNCTION_163_1();
      v198 = OUTLINED_FUNCTION_57_0();
      v199(v198);
    }

    else
    {
      v182 = sub_227B1AF8C();
      v183 = v234;
      (*(v240 + 16))(v239, v182, v234);
      v184 = sub_227D4CA98();
      v185 = sub_227D4D418();
      if (os_log_type_enabled(v184, v185))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_218_1();
        _os_log_impl(v186, v187, v188, v189, v190, 2u);
        v159 = v260;
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
      }

      OUTLINED_FUNCTION_163_1();
      v191(v239, v183);
      v192 = *(v244 + 8);
      v193 = v254;
      v192(v247, v254);
      v192(v243, v193);
      v119 = v272;
LABEL_34:
      v158 = v232;
    }
  }

  sub_227C3C834(v220);
  v200 = sub_227D49B38();
  sub_227C3C834(v200);
  sub_227C38398(v165, v258, v89, v221, v201, v202, v203, v204, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
  v206 = v205;

  sub_227C36CE8(v206);
  (*(v156 + 8))(v157, v249);
  sub_227C1CB1C(v159, &qword_27D7E6CF0);
  (*v276)(v264, v261);
  OUTLINED_FUNCTION_199_1();
  sub_227C1CB1C(v207, v208);
  OUTLINED_FUNCTION_199_1();
  sub_227C1CB1C(v209, v210);
  OUTLINED_FUNCTION_199_1();
  sub_227C1CB1C(v211, v212);
  v213 = v278;
  v214 = v263;
  v263(v158, v278);
  OUTLINED_FUNCTION_163_1();
  v215(v267, v119);
  v259(v255, v266);
  v214(v277, v213);
LABEL_4:
  OUTLINED_FUNCTION_352();
}

void sub_227C2AE50(void *a1@<X8>)
{
  sub_227C2AD90();
  *a1 = v2;
  a1[1] = v3;
}

void sub_227C2AF34()
{
  OUTLINED_FUNCTION_11();
  v14 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9370, &qword_227D5DF80);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_68_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9378, &qword_227D5DF88);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v4);
  OUTLINED_FUNCTION_127_1();
  sub_227D48FF8();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v5);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_391_0();
  sub_227D48F78();
  v6 = OUTLINED_FUNCTION_114();
  v7(v6);
  v8 = OUTLINED_FUNCTION_168_1();
  v9(v8);
  *(v14 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9380, &qword_227D5DF90);
  v10 = sub_227C4A214();
  OUTLINED_FUNCTION_421(v10);
  OUTLINED_FUNCTION_87();
  sub_227B1A6E4(v11);
  OUTLINED_FUNCTION_371();
  sub_227D48F48();
  v12 = OUTLINED_FUNCTION_371();
  v13(v12);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2B1E0()
{
  OUTLINED_FUNCTION_351();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_0();
  v89 = v4;
  OUTLINED_FUNCTION_191_2();
  v88 = sub_227D49B48();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  OUTLINED_FUNCTION_5(v7);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_0();
  v97 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D00, &unk_227D5C4A0);
  OUTLINED_FUNCTION_5(v10);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_0();
  v87 = v12;
  OUTLINED_FUNCTION_191_2();
  v86 = sub_227D49648();
  OUTLINED_FUNCTION_9();
  v85 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_3();
  v96 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v17 = OUTLINED_FUNCTION_5(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_65_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_191_2();
  v20 = sub_227D492A8();
  v21 = OUTLINED_FUNCTION_5(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v94 = v23;
  v95 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_3();
  v92 = v24;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_314();
  v93 = v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  OUTLINED_FUNCTION_9();
  v90 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_3();
  v91 = v29;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_314();
  v99 = v31;
  OUTLINED_FUNCTION_191_2();
  v32 = sub_227D49188();
  v33 = OUTLINED_FUNCTION_5(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v34 = sub_227D49528();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v40 = v39;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_61_4();
  sub_227C2AD90();
  sub_227D4A698();
  sub_227C30920();
  sub_227C35820(v42);
  OUTLINED_FUNCTION_113();
  sub_227D49518();
  sub_227C2FBD8();
  v100[3] = v34;
  OUTLINED_FUNCTION_41_4();
  v100[4] = sub_227B17E0C(v43);
  __swift_allocate_boxed_opaque_existential_1(v100);
  OUTLINED_FUNCTION_251_0();
  v44();
  sub_227D4A668();
  if (v0)
  {

    v45 = OUTLINED_FUNCTION_148();
    v46(v45);
    (*(v40 + 8))(v1, v101);
    __swift_destroy_boxed_opaque_existential_0(v100);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v100);
    sub_227C2FB00();
    if (v48)
    {
      v49 = sub_227C36BA4(v47);
      if (v49)
      {
        sub_227C39D18(v49, v50);
      }

      OUTLINED_FUNCTION_113();
      sub_227D4A888();
      sub_227C29468();
      v62 = (*(v90 + 16))(v91, v99, v98);
      sub_227C36E14(v62);
      sub_227C3DFDC();

      sub_227C37044();
      sub_227C3E1EC();

      v63 = (*(v94 + 16))(v92, v93, v95);
      sub_227C2DBF4(v63);
      sub_227C35D98();
      v65 = sub_227C360FC(v64);
      v66 = sub_227C363A4(v65);
      v67 = sub_227C3664C(v66);
      v68 = sub_227C368E0(v67);
      sub_227C36AC8(v68);
      sub_227C30074();
      sub_227D49628();
      v69 = OUTLINED_FUNCTION_215_2();
      OUTLINED_FUNCTION_318(v69, v70, v86);
      if (v71)
      {
        (*(v85 + 104))(v96, *MEMORY[0x277D0CA50], v86);
        v72 = OUTLINED_FUNCTION_215_2();
        v74 = OUTLINED_FUNCTION_318(v72, v73, v86);
        v75 = v97;
        if (!v71)
        {
          v74 = sub_227C1CB1C(v87, &qword_27D7E6D00);
        }
      }

      else
      {
        v74 = (*(v85 + 32))(v96, v87, v86);
        v75 = v97;
      }

      sub_227C3721C(v74);
      sub_227C37878(v75);
      sub_227C35AF4();
      sub_227C37458();
      sub_227C29638();
      sub_227D49B28();
      OUTLINED_FUNCTION_318(v89, 1, v88);
      if (v71)
      {
        v76 = OUTLINED_FUNCTION_228_0();
        v77(v76);
        OUTLINED_FUNCTION_424();
        OUTLINED_FUNCTION_318(v78, v79, v80);
        if (!v71)
        {
          sub_227C1CB1C(v89, &qword_27D7E6CE8);
        }
      }

      else
      {
        v81 = OUTLINED_FUNCTION_228_0();
        v82(v81, v89, v88);
      }

      sub_227D49838();
      (*(v94 + 8))(v93, v95);
      (*(v90 + 8))(v99, v98);
      OUTLINED_FUNCTION_163_1();
      v83(v38, v34);
      OUTLINED_FUNCTION_163_1();
      v84(v1, v101);
    }

    else
    {
      sub_227D49E08();
      OUTLINED_FUNCTION_20_8();
      sub_227B17E0C(v51);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      v53 = v52;
      sub_227C2FB00();
      v100[0] = v54;
      v100[1] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
      *v53 = sub_227D4CFF8();
      v53[1] = v56;
      OUTLINED_FUNCTION_14_0();
      (*(v57 + 104))(v53);
      swift_willThrow();
      v58 = OUTLINED_FUNCTION_249();
      v59(v58, v98);
      OUTLINED_FUNCTION_163_1();
      v60(v38, v34);
      OUTLINED_FUNCTION_163_1();
      v61(v1, v101);
    }
  }

  OUTLINED_FUNCTION_352();
}

void sub_227C2BCE0()
{
  OUTLINED_FUNCTION_351();
  v2 = sub_227D498E8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v41 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v5);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_311_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9330, &unk_227D5DF40);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_61_4();
  sub_227B1980C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v15);
  v16 = MEMORY[0x277D84F90];
  sub_227D4CBF8();
  type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v17);
  OUTLINED_FUNCTION_10_6();
  sub_227D4CAF8();
  OUTLINED_FUNCTION_267_0();
  v18 = sub_227D4CB38();
  if (v0)
  {
    (*(v9 + 8))(v1, v7);

LABEL_16:
    OUTLINED_FUNCTION_352();
    return;
  }

  v19 = v18;
  v39 = v9;
  v40 = v7;

  v20 = sub_227B4BF3C(v19);
  if (!v20)
  {

    OUTLINED_FUNCTION_256_0();
    v36(v1);
    goto LABEL_16;
  }

  v21 = v20;
  v37 = v1;
  sub_227C43000(0, v20 & ~(v20 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v16;
    v24 = v19;
    v38 = v19 & 0xC000000000000001;
    while (1)
    {
      v25 = v21;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v27 = v2;
      sub_227C109CC(v22, v38 == 0, v24);
      if (v38)
      {
        v28 = OUTLINED_FUNCTION_58();
        MEMORY[0x22AAA63D0](v28);
      }

      else
      {
        OUTLINED_FUNCTION_383();
      }

      sub_227C2B1E0();

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        v35 = OUTLINED_FUNCTION_12(v29);
        sub_227C43000(v35, v30 + 1, 1);
      }

      *(v23 + 16) = v30 + 1;
      OUTLINED_FUNCTION_104_2();
      v33 = v23 + v31 + *(v32 + 72) * v30;
      v2 = v27;
      (*(v32 + 32))(v33, v41, v27);
      ++v22;
      v34 = v26 == v25;
      v21 = v25;
      v24 = v19;
      if (v34)
      {
        (*(v39 + 8))(v37, v40);

        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_227C2C0FC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_322_0(v1);

  return sub_227C2C5CC();
}

uint64_t sub_227C2C194()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v6);
  OUTLINED_FUNCTION_10_6();
  v8 = sub_227D4D278();
  v1[8] = v8;
  v1[9] = v7;

  return MEMORY[0x2822009F8](sub_227C2C28C, v8, v7);
}

uint64_t sub_227C2C28C()
{
  OUTLINED_FUNCTION_51_0();
  sub_227D4A6D8();
  *(v0 + 80) = v1;
  sub_227D4A6E8();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_227C2C3B0;

  return sub_227C2C5CC();
}

uint64_t sub_227C2C3B0()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  v3[12] = v0;

  v6 = OUTLINED_FUNCTION_141();
  v7(v6);

  if (v0)
  {
    v8 = v3[8];
    v9 = v3[9];

    return MEMORY[0x2822009F8](sub_227C2C570, v8, v9);
  }

  else
  {

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_227C2C570()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C2C5CC()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v6);
  v1[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9330, &unk_227D5DF40);
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_379();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v9);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v10 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C2C6F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v6);
  sub_227D4CBF8();
  v7 = v5;
  v8 = v1;
  v9 = sub_227D4A6A8();
  v11 = v10;
  v12 = swift_task_alloc();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v0[2] = v7;
  OUTLINED_FUNCTION_213_2();
  sub_227D49378();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  OUTLINED_FUNCTION_359();
  sub_227D4CBE8();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v16);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_251_0();
  v57 = sub_227D4CB18();
  v17 = v0[5];

  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
  sub_227D4CBF8();
  if (v17)
  {
    v21 = v0[4];
    v22 = v0[5];
    v23 = swift_task_alloc();
    v31 = OUTLINED_FUNCTION_393_0(v23, v24, v25, v26, v27, v28, v29, v30, v56, v57, v9);
    *(v31 + 32) = v21;
    *(v31 + 40) = v22;
    v32 = sub_227C4A150;
  }

  else
  {
    v33 = swift_task_alloc();
    OUTLINED_FUNCTION_393_0(v33, v34, v35, v36, v37, v38, v39, v40, v56, v57, v9);
    v32 = sub_227B1BD24;
  }

  OUTLINED_FUNCTION_445(v32);

  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v8);
  OUTLINED_FUNCTION_359();
  sub_227D4CBE8();

  sub_227D4CAF8();
  OUTLINED_FUNCTION_353_0();
  OUTLINED_FUNCTION_251_0();
  v44 = sub_227D4CB38();

  result = sub_227B4BF3C(v44);
  if (result)
  {
    v46 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    v47 = 0;
    do
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v48 = OUTLINED_FUNCTION_246();
        MEMORY[0x22AAA63D0](v48);
      }

      else
      {
      }

      ++v47;
      sub_227D4CAF8();
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_251_0();
      sub_227D4CB58();
    }

    while (v46 != v47);
  }

  sub_227D4CAF8();
  sub_227D4CB28();

  v49 = sub_227D4CAF8();
  OUTLINED_FUNCTION_251_0();
  sub_227D4CB18();
  OUTLINED_FUNCTION_223();

  result = v58 - v49;
  if (!__OFSUB__(v58, v49))
  {
    v52 = v0[10];
    sub_227D4A598();
    v53 = *(v52 + 8);
    v54 = OUTLINED_FUNCTION_91_0();
    v53(v54);
    v55 = OUTLINED_FUNCTION_132_0();
    v53(v55);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_227C2CC68()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9();
  v39 = v3;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9();
  v38 = v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_72_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9340, &qword_227D5DF58);
  OUTLINED_FUNCTION_9();
  v36 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_329_0();
  v35 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v13);
  v14 = OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_446_0(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_5();
  sub_227D48F28();

  v34 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_264_0();
  v16(v15);
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v17);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v18);
  OUTLINED_FUNCTION_179();
  sub_227D48F08();
  v19 = *(v39 + 8);
  v20 = OUTLINED_FUNCTION_141();
  v19(v20);
  v21 = *(v38 + 8);
  v22 = OUTLINED_FUNCTION_91_0();
  v21(v22);
  OUTLINED_FUNCTION_446_0(v35);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_335_0(KeyPath);

  v24 = OUTLINED_FUNCTION_264_0();
  v34(v24);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  OUTLINED_FUNCTION_179();
  sub_227D48F08();
  v25 = OUTLINED_FUNCTION_201_0();
  v19(v25);
  v26 = OUTLINED_FUNCTION_91_0();
  v21(v26);
  v27 = OUTLINED_FUNCTION_58();
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_199_1();
  v37[4] = sub_227C4AAF4(v29);
  __swift_allocate_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v30);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FA8();
  v31 = *(v36 + 8);
  v32 = OUTLINED_FUNCTION_168_1();
  v31(v32);
  v33 = OUTLINED_FUNCTION_127_1();
  v31(v33);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2D0F4()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v2);
  v1[3] = OUTLINED_FUNCTION_30();
  v1[4] = type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v3);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v4 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227C2D1B4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v2);
  OUTLINED_FUNCTION_150();
  sub_227D4CAF8();
  v3 = OUTLINED_FUNCTION_342();
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v8);
  OUTLINED_FUNCTION_91_0();
  sub_227D4CB48();
  sub_227C1CB1C(v1, &qword_27D7E92F0);

  sub_227D4CAF8();
  sub_227D4CB28();

  OUTLINED_FUNCTION_18();

  return v10();
}

void sub_227C2D320()
{
  OUTLINED_FUNCTION_11();
  v42 = v0;
  OUTLINED_FUNCTION_407();
  v43 = sub_227D48FD8();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v39 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8760, &qword_227D5B6F0);
  OUTLINED_FUNCTION_9();
  v45 = v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_72_3();
  v7 = OUTLINED_FUNCTION_340();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_6_2();
  v11 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9318, &qword_227D5DF28);
  OUTLINED_FUNCTION_9();
  v44 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_311_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9320, &qword_227D5DF30);
  OUTLINED_FUNCTION_9();
  v41 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_186_2();
  sub_227B1A6E4(v20);
  OUTLINED_FUNCTION_427_0();
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v38 = *(v11 + 8);
  v38(v14, v9);
  sub_227D492A8();
  sub_227D48FE8();
  v40 = *MEMORY[0x277CC8FD8];
  v37 = *(v2 + 104);
  v37(v39);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v21);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v22);
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v23);
  OUTLINED_FUNCTION_9_2();
  sub_227D48F88();
  v36 = *(v2 + 8);
  v36(v39, v43);
  v24 = *(v45 + 8);
  v25 = OUTLINED_FUNCTION_341();
  v24(v25);
  v26 = *(v44 + 8);
  v27 = OUTLINED_FUNCTION_94();
  v26(v27);
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v38(v14, v9);
  sub_227D48FE8();
  (v37)(v39, v40, v43);
  sub_227D48F88();
  v28 = OUTLINED_FUNCTION_87_1();
  (v36)(v28);
  v29 = OUTLINED_FUNCTION_196_3();
  v24(v29);
  v30 = OUTLINED_FUNCTION_94();
  v26(v30);
  *(v42 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9328, &qword_227D5DF38);
  v31 = sub_227C4A01C();
  OUTLINED_FUNCTION_421(v31);
  OUTLINED_FUNCTION_265();
  sub_227B1A6E4(v32);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_324();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FB8();
  v33 = *(v41 + 8);
  v34 = OUTLINED_FUNCTION_167_2();
  v33(v34);
  v35 = OUTLINED_FUNCTION_127_1();
  v33(v35);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2DA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_103();
  v9 = OUTLINED_FUNCTION_253();
  v10(v9);
  return a6(v6);
}

uint64_t sub_227C2DB2C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  sub_227D492A8();
  OUTLINED_FUNCTION_15_6();
  return (*(v15 + 8))(a1);
}

uint64_t sub_227C2DD30(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  sub_227D492A8();
  OUTLINED_FUNCTION_15_6();
  return (*(v15 + 8))(a1);
}

uint64_t sub_227C2DDFC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_242();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C285FC();
}

uint64_t sub_227C2DEB0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_322_0(v1);

  return sub_227C2C0FC();
}

uint64_t sub_227C2DF40()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_322_0(v1);

  return sub_227C2C194();
}

uint64_t sub_227C2DFD0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C2D0F4();
}

uint64_t sub_227C2E05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C2E050();
  *a1 = result;
  return result;
}

uint64_t sub_227C2E0B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

void sub_227C2E158()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_106_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9528, &qword_227D5E120);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v5);
  OUTLINED_FUNCTION_551();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_93_0();
  sub_227D48F28();

  v6 = OUTLINED_FUNCTION_227();
  v7(v6);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9530, &qword_227D5E128);
  v1[4] = sub_227C4B274();
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v8);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v9);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_412();
  sub_227D48F68();
  OUTLINED_FUNCTION_11_16();
  v11 = OUTLINED_FUNCTION_147();
  v12(v11);
  v13 = OUTLINED_FUNCTION_478();
  v14(v13);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2E44C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C2E440();
  *a1 = result;
  return result;
}

uint64_t sub_227C2E4A4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

void sub_227C2E548()
{
  OUTLINED_FUNCTION_11();
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v4);
  OUTLINED_FUNCTION_166_3();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_93_0();
  sub_227D48F28();

  v5 = OUTLINED_FUNCTION_359();
  v6(v5);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  v7 = OUTLINED_FUNCTION_147();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_166_3();
  v16[4] = sub_227C4B3BC(v9);
  __swift_allocate_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v11);
  OUTLINED_FUNCTION_193_3();
  sub_227D48F08();
  OUTLINED_FUNCTION_11_16();
  v12 = OUTLINED_FUNCTION_168_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_82();
  v15(v14);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2E83C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227C2E830();
  *a1 = result & 1;
  return result;
}

void sub_227C2E8D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9578, &qword_227D5E140);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9580, &qword_227D5E148);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_224_0();
  sub_227D48FF8();
  swift_getKeyPath();
  v11 = OUTLINED_FUNCTION_57_5();
  OUTLINED_FUNCTION_384_0(v11, v12);

  (*(v7 + 8))(v0, v5);
  v13 = sub_227D49918();
  OUTLINED_FUNCTION_253_0(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  v15 = sub_227B1A6E4(v14);
  OUTLINED_FUNCTION_68_4(v15);

  v16 = OUTLINED_FUNCTION_75_3();
  v17(v16);
  v18 = OUTLINED_FUNCTION_58();
  v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_199_1();
  v26[4] = sub_227C4B3BC(v20);
  __swift_allocate_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v21);
  sub_227B1A6E4(&unk_27D7E95C0);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v22 = OUTLINED_FUNCTION_74_4();
  v23(v22);
  v24 = OUTLINED_FUNCTION_246();
  v25(v24);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2ED04(void *a1@<X8>)
{
  sub_227C2EC44();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C2EDE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227C2EE14()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E95C8, &qword_227D5E188);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E95D0, &qword_227D5E190);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_224_0();
  sub_227D48FF8();
  swift_getKeyPath();
  v11 = OUTLINED_FUNCTION_57_5();
  OUTLINED_FUNCTION_384_0(v11, v12);

  (*(v7 + 8))(v0, v5);
  v13 = sub_227D49F28();
  OUTLINED_FUNCTION_253_0(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  v15 = sub_227B1A6E4(v14);
  OUTLINED_FUNCTION_68_4(v15);

  v16 = OUTLINED_FUNCTION_75_3();
  v17(v16);
  v18 = OUTLINED_FUNCTION_58();
  v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_199_1();
  v26[4] = sub_227C4B3BC(v20);
  __swift_allocate_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v21);
  sub_227B1A6E4(&unk_27D7E9610);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v22 = OUTLINED_FUNCTION_74_4();
  v23(v22);
  v24 = OUTLINED_FUNCTION_246();
  v25(v24);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2F248(void *a1@<X8>)
{
  sub_227C2F188();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C2F32C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49F18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227C2F358()
{
  OUTLINED_FUNCTION_11();
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8970, &unk_227D5DFB0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_103();
  v2 = OUTLINED_FUNCTION_336();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9550, &qword_227D5E130);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v6);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_261_0();
  sub_227D48F28();

  v7 = OUTLINED_FUNCTION_551();
  v8(v7);
  sub_227D48FE8();
  *(v16 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9558, &qword_227D5E138);
  v9 = sub_227C4B318();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v11);
  OUTLINED_FUNCTION_193_3();
  sub_227D48F08();
  v12 = OUTLINED_FUNCTION_168_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_226_0();
  v15(v14);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2F6F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227C2F620();
  *a1 = result & 1;
  return result;
}

uint64_t sub_227C2F784(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_444_0(v3, v4, v5, v6, v7);
}

void sub_227C2F824()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9390, &qword_227D5DF98);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_106_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9398, &qword_227D5DFA0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v9);
  OUTLINED_FUNCTION_323();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_551();
  sub_227D48F28();

  (*(v6 + 8))(v0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
  sub_227D48FE8();
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93A0, &qword_227D5DFA8);
  v2[4] = sub_227C4A4C0();
  __swift_allocate_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v11);
  sub_227C4A688();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_283();
  sub_227D48F08();
  OUTLINED_FUNCTION_11_16();
  v12 = OUTLINED_FUNCTION_147();
  v13(v12);
  v14 = OUTLINED_FUNCTION_82();
  v15(v14);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2FB0C(uint64_t *a1@<X8>)
{
  sub_227C2FB00();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C2FB78@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8970, &unk_227D5DFB0);
  v1 = sub_227C19ADC();
  OUTLINED_FUNCTION_421(v1);
  return sub_227D48FE8();
}

void sub_227C2FC98(void *a1@<X8>)
{
  sub_227C2FBD8();
  *a1 = v2;
  a1[1] = v3;
}

void sub_227C2FD7C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_106_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8878, &qword_227D5B7E0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v5);
  OUTLINED_FUNCTION_149_0();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_349_0();
  sub_227D48F28();

  v6 = OUTLINED_FUNCTION_155_3();
  v7(v6);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93D8, &qword_227D5DFC0);
  v1[4] = sub_227C4A704();
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v8);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v9);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_166_3();
  OUTLINED_FUNCTION_344();
  sub_227D48F68();
  v11 = OUTLINED_FUNCTION_269();
  v12(v11);
  v13 = OUTLINED_FUNCTION_371();
  v14(v13);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C30134(void *a1@<X8>)
{
  sub_227C30074();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C30218@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227D49638();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_227C30244()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9408, &qword_227D5E010);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9410, &qword_227D5E018);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_72_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_2_24();
  v7 = sub_227B1A6E4(v6);
  OUTLINED_FUNCTION_222_0(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_384_0(v8, v9);

  v10 = OUTLINED_FUNCTION_307_0();
  v11(v10);
  v12 = sub_227D49B48();
  OUTLINED_FUNCTION_253_0(v12);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  v14 = sub_227B1A6E4(v13);
  OUTLINED_FUNCTION_68_4(v14);

  v15 = OUTLINED_FUNCTION_75_3();
  v16(v15);
  *(v23 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9418, &qword_227D5E050);
  v17 = sub_227B1D344();
  OUTLINED_FUNCTION_421(v17);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v18);
  sub_227B1A6E4(&unk_280E7B730);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v19 = OUTLINED_FUNCTION_74_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_196_3();
  v22(v21);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C30580(void *a1@<X8>)
{
  sub_227C29638();
  *a1 = v2;
  a1[1] = v3;
}

void sub_227C30664()
{
  OUTLINED_FUNCTION_11();
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_103();
  v3 = OUTLINED_FUNCTION_227();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v10);
  OUTLINED_FUNCTION_166_3();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_173();
  sub_227D48F28();

  v11 = OUTLINED_FUNCTION_336();
  v12(v11);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  *(v18 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9340, &qword_227D5DF58);
  v13 = sub_227B1BD94();
  OUTLINED_FUNCTION_449_0(v13);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v14);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v15);
  OUTLINED_FUNCTION_193_3();
  sub_227D48F08();
  OUTLINED_FUNCTION_11_16();
  v16 = OUTLINED_FUNCTION_168_1();
  v17(v16);
  (*(v8 + 8))(v0, v6);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C309E0(void *a1@<X8>)
{
  sub_227C30920();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C30B08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D4E520;
  v1 = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_1_22();
  v3 = sub_227B17E0C(v2);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return v0;
}

uint64_t sub_227C30B94()
{
  result = OUTLINED_FUNCTION_521();
  switch(v1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
    case 5:
    case 6:
      result = OUTLINED_FUNCTION_601();
      break;
    case 7:
      result = OUTLINED_FUNCTION_503();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C30C88()
{
  sub_227C40EDC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C30CC0()
{
  sub_227C40EDC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C30CF8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9220, &qword_227D5C600);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_256(a1, a1[3]);
  sub_227C40EDC();
  sub_227D4DC08();
  OUTLINED_FUNCTION_2_5();
  sub_227D4D9C8();
  if (!v1)
  {
    sub_227D4D9F8();
    sub_227D4D9F8();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
  }

  v4 = OUTLINED_FUNCTION_193();
  return v5(v4);
}

void sub_227C30EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_351();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9228, &qword_227D5C608);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_75_2();
  v33 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_256(v33, v34);
  sub_227C40EDC();
  sub_227D4DBF8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    LOBYTE(v57[0]) = 0;
    v35 = sub_227D4D8F8();
    v37 = v36;
    OUTLINED_FUNCTION_48_4(1);
    v51 = sub_227D4D928();
    OUTLINED_FUNCTION_48_4(2);
    v50 = sub_227D4D928();
    OUTLINED_FUNCTION_48_4(3);
    v49 = sub_227D4D8A8();
    v55 = v38;
    OUTLINED_FUNCTION_48_4(4);
    v48 = sub_227D4D8A8();
    v54 = v39;
    OUTLINED_FUNCTION_48_4(5);
    v40 = sub_227D4D8A8();
    OUTLINED_FUNCTION_328_0(v40, v41, v58);
    OUTLINED_FUNCTION_48_4(6);
    v46 = sub_227D4D8A8();
    v52 = v42;
    v43 = sub_227D4D8A8();
    v45 = v44;
    (*(v31 + 8))(v24, v29);
    v56[0] = v35;
    v56[1] = v37;
    v56[2] = v51;
    v56[3] = v50;
    v56[4] = v49;
    v56[5] = v55;
    v56[6] = v48;
    v56[7] = v54;
    v56[8] = v47;
    v56[9] = v53;
    v56[10] = v46;
    v56[11] = v52;
    v56[12] = v43;
    v56[13] = v45;
    sub_227C40F30(v56, v57);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v57[0] = v35;
    v57[1] = v37;
    v57[2] = v51;
    v57[3] = v50;
    v57[4] = v49;
    v57[5] = v55;
    v57[6] = v48;
    v57[7] = v54;
    v57[8] = v47;
    v58[0] = v53;
    v58[1] = v46;
    v58[2] = v52;
    v58[3] = v43;
    v58[4] = v45;
    sub_227C40F68(v57);
    memcpy(v28, v56, 0x70uLL);
  }

  OUTLINED_FUNCTION_352();
}

__n128 sub_227C3138C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
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
  return result;
}

void sub_227C313B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_227C30EFC(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x70uLL);
  }
}

unint64_t sub_227C31414(uint64_t a1, uint64_t a2)
{
  sub_227D4D868();
  OUTLINED_FUNCTION_223();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_227C3145C(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_381_0();
  }

  if (a1 == 1)
  {
    return 0x6E6F7268636E7973;
  }

  return 0x6F7268636E797361;
}

uint64_t sub_227C314D0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6E6F7268636E7973;
    }

    else
    {
      v5 = 0x6F7268636E797361;
    }

    if (v4 == 1)
    {
      v6 = 0xEB0000000073756FLL;
    }

    else
    {
      v6 = 0xEC00000073756F6ELL;
    }
  }

  else
  {
    v5 = 0x6669636570736E75;
    v6 = 0xEB00000000646569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E6F7268636E7973;
    }

    else
    {
      v3 = 0x6F7268636E797361;
    }

    if (a2 == 1)
    {
      v2 = 0xEB0000000073756FLL;
    }

    else
    {
      v2 = 0xEC00000073756F6ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227C315F0(unsigned __int8 a1, char a2)
{
  v2 = 1702259052;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646567617473;
    }

    else
    {
      v4 = 0x6D706F6C65766564;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000746E65;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1702259052;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646567617473;
    }

    else
    {
      v2 = 0x6D706F6C65766564;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227C31718(uint64_t a1, unsigned __int8 a2)
{
  sub_227D4D048();
}

uint64_t sub_227C317BC(uint64_t a1, unsigned __int8 a2)
{
  sub_227D4D048();
}

uint64_t sub_227C3184C(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227C318E8(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

unint64_t sub_227C319A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227C31414(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227C319D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C3145C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227C319FC()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B928();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227C31A44()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B928();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

unint64_t sub_227C31A7C(uint64_t a1, uint64_t a2)
{
  sub_227D4D868();
  OUTLINED_FUNCTION_223();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_227C31AC4(char a1)
{
  if (!a1)
  {
    return 1702259052;
  }

  if (a1 == 1)
  {
    return 0x646567617473;
  }

  return 0x6D706F6C65766564;
}

unint64_t sub_227C31B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227C31A7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227C31B6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C31AC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227C31B98()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B8D4();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227C31BE0()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B8D4();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227C31C24()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D492A8();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_147_1(v8);
  sub_227C24D1C(v9, v10, v11);
  return OUTLINED_FUNCTION_348_0();
}

uint64_t sub_227C31D10(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C24B78();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C31E38(void *a1@<X8>)
{
  sub_227C31D74();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C31E7C(uint64_t a1)
{
  OUTLINED_FUNCTION_608(a1);
  v2 = OUTLINED_FUNCTION_253();
  return v1(v2);
}

uint64_t sub_227C31F50(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C31D74();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C31FB4()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_386_0(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
  sub_227C1740C();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_344();
  sub_227D4CAD8();

  *v0 = 0;
  OUTLINED_FUNCTION_254();
}

void sub_227C32104(void *a1@<X8>)
{
  sub_227C32040();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C321E8(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32040();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C32240(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    sub_227D4CE58();
    v4 = OUTLINED_FUNCTION_253();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_253();
    return a3(v6);
  }
}

uint64_t sub_227C322F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C322E8();
  *a1 = result;
  return result;
}

uint64_t sub_227C3234C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C323F0(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C322E8();
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C32514(void *a1@<X8>)
{
  sub_227C32454();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C325F8(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32454();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3265C()
{
  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_108_3(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_419();
  sub_227D49188();
  OUTLINED_FUNCTION_31_3();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_14_0();
  v3 = OUTLINED_FUNCTION_179();

  return v4(v3);
}

uint64_t sub_227C32750(uint64_t a1)
{
  OUTLINED_FUNCTION_142_4();
  OUTLINED_FUNCTION_490();
  swift_getKeyPath();
  v2 = sub_227B17E0C(&unk_27D7E91D0);
  OUTLINED_FUNCTION_45_5(v2, v3, v4, v5, v6, v7, v8, v9, v13, v1);
  sub_227D494A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v10);
  v11 = OUTLINED_FUNCTION_236();
  sub_227B17E0C(v11);
  OUTLINED_FUNCTION_336();
  sub_227D4CC68();
}

uint64_t sub_227C328A8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_304_0();
  v2(v1);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  v4 = OUTLINED_FUNCTION_236();
  v5(v4);
  OUTLINED_FUNCTION_165_3();
  OUTLINED_FUNCTION_224();
  return sub_227C329A0(v6, v7, v8, v9);
}

uint64_t sub_227C329A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v6);
  OUTLINED_FUNCTION_32_4();
  sub_227D49498();

  a4(0);
  OUTLINED_FUNCTION_15_6();
  return (*(v7 + 8))(a1);
}

uint64_t sub_227C32A78()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D49188();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_147_1(v8);
  sub_227C32714();
  return OUTLINED_FUNCTION_348_0();
}

void sub_227C32B58()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_323();
    v5(v4);
    OUTLINED_FUNCTION_153_3();
    sub_227C329A0(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_264_0();
    v11(v10);
  }

  else
  {
    OUTLINED_FUNCTION_153_3();
    sub_227C329A0(v12, v13, v14, v15);
  }

  free(v2);
  free(v1);
  OUTLINED_FUNCTION_8_1();

  free(v16);
}

uint64_t sub_227C32C64(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C231A0();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C32D88(void *a1@<X8>)
{
  sub_227C32CC8();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C32E6C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32CC8();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C32F94(void *a1@<X8>)
{
  sub_227C32ED0();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C33078(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32ED0();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C330DC(uint64_t a1)
{
  OUTLINED_FUNCTION_320_0();
  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_108_3(v1, v2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  OUTLINED_FUNCTION_179_2();
  sub_227C411D0(v3);
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_319();
}

uint64_t sub_227C33258@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227C33178(a2);
  *a1 = result;
  return result;
}

uint64_t sub_227C332B0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C33354(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C33178(v2);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C334F4(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  return sub_227C1CB1C(a1, &qword_27D7E6CD8);
}

uint64_t sub_227C335A8(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C333DC(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t (*sub_227C33660(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = sub_227C2F620();
  OUTLINED_FUNCTION_210_2(v1);
  return sub_227C336A0;
}

uint64_t sub_227C336A0(uint64_t a1)
{
  OUTLINED_FUNCTION_392_0(a1);
  OUTLINED_FUNCTION_290_0();
  return sub_227C2F784(v1, v2);
}

void sub_227C336E8(uint64_t a1@<X8>)
{
  sub_227C336DC();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_227C3378C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C336DC();
  *v1 = v2;
  *(v1 + 8) = v3 & 1;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3381C()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_386_0(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7170, &qword_227D5B5F0);
  sub_227C17AB8();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_344();
  sub_227D4CAD8();

  *v0 = 0;
  OUTLINED_FUNCTION_254();
}

void sub_227C33970(uint64_t a1@<X8>)
{
  sub_227C338A8();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_227C33A14()
{
  OUTLINED_FUNCTION_483();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_444_0(v1, v2, v3, v4, v5);

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C33AB4(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C338A8();
  *v1 = v2;
  *(v1 + 8) = v3 & 1;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C33B44(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2EC44();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C33B9C@<X0>(const void *a1@<X0>, _BYTE *a2@<X8>, void *a3@<X1>)
{
  OUTLINED_FUNCTION_108_3(a1, a3);
  swift_getKeyPath();
  memcpy(v10, a1, sizeof(v10));
  v5 = OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  sub_227C41480();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  v7 = OUTLINED_FUNCTION_278();
  result = sub_227C1CB1C(v7, v8);
  *a2 = 0;
  return result;
}

void *sub_227C33C58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_177_2();
  sub_227B17E0C(v2);
  sub_227D494A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v3);
  sub_227C41558();
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_168_1();
  sub_227D4CC68();

  memcpy(__dst, v5, sizeof(__dst));
  return memcpy(a1, __dst, 0x70uLL);
}

uint64_t sub_227C33DA4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_227C4BC80();
  return sub_227C33E0C(__dst);
}

uint64_t sub_227C33E0C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);
  sub_227C1CB1C(a1, &qword_27D7E91E8);
}

void (*sub_227C33EC0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x238uLL);
  *a1 = v3;
  v3[70] = v1;
  sub_227C33C58(v3 + 28);
  return sub_227C33F24;
}

void sub_227C33F24(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    memcpy(*a1, v2 + 224, 0x70uLL);
    sub_227C4BC80();
    sub_227C33E0C(v2);
    memcpy(v2 + 336, v2 + 224, 0x70uLL);
    sub_227C1CB1C((v2 + 336), &qword_27D7E91E8);
  }

  else
  {
    memcpy(v2 + 112, v2 + 224, 0x70uLL);
    sub_227C33E0C((v2 + 112));
  }

  free(v2);
}

void sub_227C34014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_255();
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  swift_getKeyPath();
  v23 = OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  v21();
  OUTLINED_FUNCTION_305();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C340C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C340B8();
  *a1 = result;
  return result;
}

uint64_t sub_227C3411C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C341C0(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C340B8();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C34318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C34248();
  *a1 = result;
  return result;
}

uint64_t sub_227C34370()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C34414(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C34248();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3449C(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C2E440();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C34524(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C2E050();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C34588(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2F188();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t (*sub_227C345EC(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = sub_227C2E830();
  OUTLINED_FUNCTION_210_2(v1);
  return sub_227C3462C;
}

uint64_t sub_227C3462C(uint64_t a1)
{
  OUTLINED_FUNCTION_392_0(a1);
  OUTLINED_FUNCTION_291();
  return sub_227C2F784(v1, v2);
}

void sub_227C346E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, __int16 a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int16 a39, uint64_t a40, void (*a41)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, _BYTE, uint64_t, _WORD, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __int16, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_11();
  v63 = v43;
  v64 = v44;
  v61 = v45;
  v62 = v46;
  v59 = v47;
  v60 = v48;
  v58 = v49;
  v52 = *(v50 + 24);
  v51 = *(v50 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v50, v52);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
  v55 = OUTLINED_FUNCTION_362_0(v54);
  v56(v55);
  a41(v58, v59, v60, v61, v62, v63, v64, v42, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31 & 1, a32, a33 & 0xFF01, a34, a35, a36, a37, a38, a39, a40, v41, v52, v51);
  v57 = OUTLINED_FUNCTION_223();
  __swift_destroy_boxed_opaque_existential_0(v57);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C348CC()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91F0, &qword_227D5C220);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_13_1();
  v12 = OUTLINED_FUNCTION_502(v4, v5, v6, v7, v8, v9, v10, v11, v2);
  OUTLINED_FUNCTION_421(v12);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C3497C()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

void sub_227C349E4()
{
  OUTLINED_FUNCTION_11();
  v26 = sub_227D4CD98();
  v0 = *(v26 - 8);
  v1 = v0;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_3();
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_227D5C180;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9258, &qword_227D5C838);
  OUTLINED_FUNCTION_198_2();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227D59C70;
  *(v6 + 32) = swift_getKeyPath();
  *(v6 + 40) = swift_getKeyPath();
  *(v6 + 48) = swift_getKeyPath();
  *(v5 + 32) = v6;
  v7 = OUTLINED_FUNCTION_340();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_267_0();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_186_2();
  v10 = sub_227B1A6E4(v9);
  OUTLINED_FUNCTION_469(v10);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  v11 = OUTLINED_FUNCTION_100_3();
  v15 = sub_227C10AC0(v11, v12, v13, v14);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v22 = OUTLINED_FUNCTION_55(v16);
    v15 = sub_227C10AC0(v22, v23, v24, v15);
  }

  *(v15 + 2) = v17 + 1;
  (*(v1 + 32))(&v15[v4 + v17 * v3], v25, v26);
  sub_227C23364(v15, sub_227C10AC0, MEMORY[0x277CDD5C8], v18, v19, v20, v21);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C3517C()
{
  OUTLINED_FUNCTION_70_4();
  v3 = v2;
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91F0, &qword_227D5C220);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v4);
  OUTLINED_FUNCTION_13_1();
  v13 = OUTLINED_FUNCTION_502(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  OUTLINED_FUNCTION_338(v13);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v0 + 16) = 16843009;
  *(v0 + 20) = 257;
  *(v0 + 22) = 1;
  v14 = sub_227D494B8();
  *(v0 + 19) = 0;
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_143_0(v14, v15, v16, v17, v18, v19, v20, v21, v23);
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_227B132F0(v1, v0 + 24);
  swift_endAccess();
  return v0;
}

uint64_t sub_227C3534C()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91B8, &qword_227D5BFD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_227D4E520;
  v3 = v1();
  *(v2 + 32) = v0;
  *(v2 + 40) = v3;
  return v2;
}

uint64_t sub_227C353D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D59C40;
  v1 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v4 = type metadata accessor for GameActivityRuntimeStatsSchema(0);
  OUTLINED_FUNCTION_2_26();
  v6 = sub_227B17E0C(v5);
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  v7 = type metadata accessor for GameActivityLeaderBoardScoreSchema(0);
  OUTLINED_FUNCTION_7_17();
  v9 = sub_227B17E0C(v8);
  *(v0 + 64) = v7;
  *(v0 + 72) = v9;
  v10 = type metadata accessor for GameActivityAchievementProgressSchema(0);
  OUTLINED_FUNCTION_3_19();
  v12 = sub_227B17E0C(v11);
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  return v0;
}

uint64_t sub_227C35504(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2AD90();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C35568()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D492A8();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_147_1(v8);
  sub_227C2D938(v9);
  return OUTLINED_FUNCTION_348_0();
}

void sub_227C3562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_450_0();
  v9 = v8;
  v10 = *v7;
  v11 = *(*v7 + 24);
  v12 = *(*v7 + 32);
  if (v13)
  {
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    OUTLINED_FUNCTION_193_3();
    v16();
    v9(v11);
    (*(v15 + 8))(v12, v14);
  }

  else
  {
    v8(*(*v7 + 32));
  }

  free(v12);
  free(v11);
  OUTLINED_FUNCTION_451_0();

  free(v17);
}

uint64_t sub_227C356F4(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C29468();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C35758(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2FBD8();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C357BC(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C30920();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3595C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  sub_227D49188();
  OUTLINED_FUNCTION_15_6();
  return (*(v15 + 8))(a1);
}

uint64_t sub_227C35A24()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D49188();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_147_1(v8);
  sub_227C35820(v9);
  return OUTLINED_FUNCTION_348_0();
}

uint64_t sub_227C35BD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C35AF4();
  *a1 = result;
  return result;
}

uint64_t sub_227C35C2C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C35CD0(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C35AF4();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C35D34(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C30074();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C35DA4(uint64_t *a1@<X8>)
{
  sub_227C35D98();
  *a1 = v2;
  a1[1] = v3;
}

void sub_227C35DF0(uint64_t a1)
{
  sub_227D4CE58();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_224();
  sub_227C377D4();
}

uint64_t sub_227C35E60(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C35D98();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C35EC0()
{
  OUTLINED_FUNCTION_236_0();
  if (v0)
  {
    sub_227D4CE58();
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_224();
    sub_227C377D4();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_224();
    sub_227C377D4();
  }
}

uint64_t sub_227C35F50(uint64_t a1)
{
  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_108_3(v1, v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_419();
  sub_227D492A8();
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_14_0();
  v4 = OUTLINED_FUNCTION_179();

  return v5(v4);
}

uint64_t sub_227C36008()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D492A8();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_147_1(v8);
  sub_227C2DBF4(v9);
  return OUTLINED_FUNCTION_348_0();
}

uint64_t sub_227C36214(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  return sub_227C1CB1C(a1, &qword_27D7E6D08);
}

uint64_t sub_227C362C8(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C360FC(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C364BC(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  return sub_227C1CB1C(a1, &qword_27D7E6D08);
}

uint64_t sub_227C36570(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C363A4(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C36764(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  return sub_227C1CB1C(a1, &qword_27D7E6D08);
}

uint64_t sub_227C36818(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C3664C(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C369B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227C368E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_227C36A04()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C36AA0(uint64_t a1)
{
  v1 = sub_227C368E0(a1);

  return sub_227C36AC8(v1);
}

uint64_t sub_227C36AFC(uint64_t a1, uint64_t a2)
{
  sub_227D4DC28();

  return sub_227C36A04();
}

uint64_t sub_227C36B24(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_107_3(a1);
  v3 = sub_227C368E0(v2);
  *v1 = sub_227C36AC8(v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C36C90@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227C36BA4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_227C36CE8(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v2 = sub_227B17E0C(v1);
  v9 = OUTLINED_FUNCTION_19_9(v2, v3, v4, v5, v6, v2, v7, v8, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_239(v9, v10, v11, v12, v13);
}

uint64_t sub_227C36D8C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C36BA4(v2);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C36EE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227C36E14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_227C36F3C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C36FE0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C36E14(v2);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C37050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C37044();
  *a1 = result;
  return result;
}

uint64_t sub_227C370A8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C3714C(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C37044();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C371B0(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2FB00();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C372EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227C3721C(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_227C37344(char a1)
{
  swift_getKeyPath();
  LOBYTE(v19) = a1;
  OUTLINED_FUNCTION_0_41();
  v4 = sub_227B17E0C(v3);
  v11 = OUTLINED_FUNCTION_19_9(v4, v5, v6, v7, v8, v4, v9, v10, v17, v18, v1, v19, v20, v21);
  OUTLINED_FUNCTION_239(v11, v12, v13, v14, v15);
}

uint64_t (*sub_227C373E8(void *a1))(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_223_0(a1);
  v2 = sub_227C3721C(v1);
  OUTLINED_FUNCTION_210_2(v2);
  return sub_227C37428;
}

void sub_227C37518(void *a1@<X8>)
{
  sub_227C37458();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C375FC(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C37458();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3766C(uint64_t *a1@<X8>)
{
  sub_227C37660();
  *a1 = v2;
  a1[1] = v3;
}

void sub_227C37788(uint64_t *a1@<X8>)
{
  sub_227C376C4();
  *a1 = v2;
  a1[1] = v3;
}

void sub_227C377D4()
{
  OUTLINED_FUNCTION_483();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_444_0(v1, v2, v3, v4, v5);

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C37878@<X0>(uint64_t a1@<X8>)
{
  sub_227C37660();
  if (v2)
  {
    sub_227C2AD90();
    OUTLINED_FUNCTION_185();
    OUTLINED_FUNCTION_323();
    sub_227D4A7B8();
    v3 = MEMORY[0x277D0CB90];
LABEL_5:
    v5 = *v3;
    v6 = sub_227D49AC8();
    OUTLINED_FUNCTION_62_0();
    (*(v7 + 104))(a1, v5, v6);
    OUTLINED_FUNCTION_99();
    v11 = v6;
    goto LABEL_6;
  }

  sub_227C376C4();
  if (v4)
  {
    sub_227C2AD90();
    OUTLINED_FUNCTION_185();
    OUTLINED_FUNCTION_323();
    sub_227D4A858();
    v3 = MEMORY[0x277D0CB98];
    goto LABEL_5;
  }

  sub_227D49AC8();
  OUTLINED_FUNCTION_71_0();
LABEL_6:

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_227C37978(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C29638();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C37A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void (*a40)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_11();
  v62 = v42;
  v63 = v43;
  v59 = v44;
  v60 = v45;
  v57 = v46;
  v58 = v47;
  v61 = v48;
  v51 = *(v49 + 24);
  v50 = *(v49 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v49, v51);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3();
  v54 = OUTLINED_FUNCTION_362_0(v53);
  v55(v54);
  a40(v57, v58, v59, v60, v61, v62, v63, v41, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v40, v51, v50);
  v56 = OUTLINED_FUNCTION_223();
  __swift_destroy_boxed_opaque_existential_0(v56);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C37BC0()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9208, &qword_227D5C328);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_13_1();
  v12 = OUTLINED_FUNCTION_502(v4, v5, v6, v7, v8, v9, v10, v11, v2);
  OUTLINED_FUNCTION_421(v12);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C37C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_227B1A6E4(&qword_27D7E6868);
  v11 = MEMORY[0x22AAA60B0](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      sub_227C43208(v8, v6);
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

void sub_227C37E24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_419();
  v89 = sub_227D49B88();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v88 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_0();
  v87 = v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96D8, &unk_227D5E260);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v83 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = v71 - v13;
  v73 = sub_227D4CE28();
  v15 = v0 + 64;
  OUTLINED_FUNCTION_102_3();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v81 = v2 + 16;
  v82 = v7 + 16;
  v79 = v2 + 32;
  v80 = v7 + 32;
  v85 = v7;
  v86 = v2;
  v76 = v7 + 8;
  v77 = v2 + 8;
  v90 = v0;
  sub_227D4CE58();
  v21 = 0;
  v74 = v20;
  v75 = v0 + 64;
  v78 = v14;
  while (1)
  {
    v22 = v21;
    v23 = v5;
    if (!v18)
    {
      break;
    }

    while (1)
    {
      v91 = 0;
      v21 = v22;
LABEL_8:
      OUTLINED_FUNCTION_402_0();
      v25 = v24 | (v21 << 6);
      v26 = v90;
      v27 = v23;
      (*(v85 + 16))(v14, *(v90 + 48) + *(v85 + 72) * v25, v23);
      v28 = v86;
      v29 = *(v26 + 56) + *(v86 + 72) * v25;
      v30 = v84;
      v31 = v89;
      (*(v86 + 16))(&v14[*(v84 + 48)], v29, v89);
      v32 = v83;
      sub_227C4BC80();
      v33 = *(v30 + 48);
      v34 = OUTLINED_FUNCTION_299_0();
      v35(v34);
      v5 = v27;
      (*(v28 + 32))(v88, v32 + v33, v31);
      v36 = v91;
      v37 = sub_227D4A898();
      if (!v36)
      {
        break;
      }

      v39 = OUTLINED_FUNCTION_233();
      v40(v39);
      v41 = OUTLINED_FUNCTION_375();
      v42(v41, v5);
      v43 = v78;
      v44 = OUTLINED_FUNCTION_278();
      sub_227C1CB1C(v44, v45);
      v22 = v21;
      v23 = v5;
      v14 = v43;
    }

    v46 = v37;
    v47 = v38;
    v14 = v78;
    v72 = sub_227D49B78();
    v91 = v48;
    v49 = v73;
    v71[1] = swift_isUniquelyReferenced_nonNull_native();
    v92 = v49;
    v50 = sub_227B2664C(v46, v47);
    v52 = *(v49 + 16);
    v53 = (v51 & 1) == 0;
    v73 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_21;
    }

    v54 = v50;
    v55 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
    if (sub_227D4D7C8())
    {
      v56 = sub_227B2664C(v46, v47);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_23;
      }

      v54 = v56;
    }

    if (v55)
    {

      v73 = v92;
      OUTLINED_FUNCTION_430_0((v92[7] + 16 * v54));

      v58 = OUTLINED_FUNCTION_375();
      v59(v58, v89);
      v60 = OUTLINED_FUNCTION_394_0();
      v61(v60);
      sub_227C1CB1C(v14, &qword_27D7E96D8);
    }

    else
    {
      v62 = v92;
      v92[(v54 >> 6) + 8] |= 1 << v54;
      v63 = (v62[6] + 16 * v54);
      *v63 = v46;
      v63[1] = v47;
      OUTLINED_FUNCTION_430_0((v62[7] + 16 * v54));
      v64 = OUTLINED_FUNCTION_375();
      v65(v64, v89);
      v66 = OUTLINED_FUNCTION_394_0();
      v67(v66);
      sub_227C1CB1C(v14, &qword_27D7E96D8);
      v68 = v62[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_22;
      }

      v73 = v62;
      v62[2] = v70;
    }

    v20 = v74;
    v15 = v75;
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      OUTLINED_FUNCTION_8_1();
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v22;
    if (v18)
    {
      v91 = 0;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_227D4DAE8();
  __break(1u);
}

void sub_227C38398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_320_0();
  a17 = v19;
  a18 = v20;
  v22 = *(v21 + 16);
  if (v22)
  {
    OUTLINED_FUNCTION_236_0();
    v23 = OUTLINED_FUNCTION_304_0();
    type metadata accessor for GameActivityRuntimeStatsSchema(v23);
    OUTLINED_FUNCTION_166_2();
    v24 = swift_allocObject();
    sub_227D4CE58();

    v25 = OUTLINED_FUNCTION_201();
    sub_227C39AC8(v25);
    a10 = v24;
    v26 = sub_227D49AF8();
    OUTLINED_FUNCTION_10_0(v26);
    v28 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v30 = *(v29 + 72);
    do
    {
      v31 = sub_227C3E6A8(&a10, v28, v18);
      v28 += v30;
      --v22;
    }

    while (v22);
    v33 = *(sub_227C39D18(v31, v32) + 16);

    if (!v33)
    {
    }
  }

  OUTLINED_FUNCTION_319();
}

uint64_t sub_227C384A8()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_397_0(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  v0(v2, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_227C38504()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

void sub_227C38554(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_227C19454(*a1, (v4 + 5));
    OUTLINED_FUNCTION_397_0(v5 + 24, (v4 + 13));
    __swift_destroy_boxed_opaque_existential_0((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    OUTLINED_FUNCTION_397_0(v5 + 24, (v4 + 5));
    __swift_destroy_boxed_opaque_existential_0((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

void sub_227C38610()
{
  OUTLINED_FUNCTION_11();
  v13 = sub_227D4CD48();
  OUTLINED_FUNCTION_9();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_419();
  v6 = sub_227D4CD98();
  OUTLINED_FUNCTION_10_0(v6);
  OUTLINED_FUNCTION_241_0();
  *(swift_allocObject() + 16) = xmmword_227D5C180;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  sub_227D4CDC8();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_120();
  sub_227D4CDD8();
  v7 = sub_227B17E0C(&unk_280E7A828);
  OUTLINED_FUNCTION_469(v7);
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_165_2();
  (*(v1 + 104))(v5, *MEMORY[0x277CDD5A0], v13, v8);
  swift_getKeyPath();
  OUTLINED_FUNCTION_342();
  sub_227D4CD58();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  v9 = OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_132_3(v9, v10);
  OUTLINED_FUNCTION_183_3();
  v12 = sub_227B17E0C(v11);
  OUTLINED_FUNCTION_469(v12);
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C38E10@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227C38D24(a2);
  *a1 = result;
  return result;
}

uint64_t sub_227C38E68(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_2_26();
  v2 = sub_227B17E0C(v1);
  v9 = OUTLINED_FUNCTION_19_9(v2, v3, v4, v5, v6, v2, v7, v8, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_239(v9, v10, v11, v12, v13);
}

void *sub_227C38F24()
{
  OUTLINED_FUNCTION_70_4();
  v3 = v2;
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9208, &qword_227D5C328);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v4);
  OUTLINED_FUNCTION_13_1();
  v13 = OUTLINED_FUNCTION_502(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  OUTLINED_FUNCTION_338(v13);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  v0[2] = 0x101010101010101;
  v14 = sub_227D494B8();
  v0[2] = 0;
  OUTLINED_FUNCTION_143_0(v14, v15, v16, v17, v18, v19, v20, v21, v23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  sub_227B132F0(v1, (v0 + 3));
  swift_endAccess();
  return v0;
}

uint64_t sub_227C390A8(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  v3 = *a1;
  sub_227D494C8();
  OUTLINED_FUNCTION_15_6();
  (*(v4 + 8))(v1 + v3);
  return v1;
}

uint64_t sub_227C39110(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 3);
  v3 = *a1;
  sub_227D494C8();
  OUTLINED_FUNCTION_15_6();
  (*(v4 + 8))(&v1[v3]);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v5, v6);
}

void sub_227C39278(void *a1@<X8>)
{
  sub_227C391B8();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C3935C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C391B8();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C393B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_450_0();
  v8 = v7;
  OUTLINED_FUNCTION_108_3(v9, v10);
  swift_getKeyPath();
  v11 = OUTLINED_FUNCTION_300_0();
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v11);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v12);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_283();
  sub_227D4CAE8();

  *v8 = 0;
  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227C39450(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C38D24(v2);
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C394A8()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_256(v0, v0[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9278, &qword_227D5CA10);
  v1 = OUTLINED_FUNCTION_300_0();
  type metadata accessor for GameActivityLeaderBoardScoreSchema(v1);
  sub_227C47C88();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_302_0();
  sub_227D4CAC8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C3957C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_227C39548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C395D4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_2_26();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C39678(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C39548(v2, v3);
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C396D0()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_256(v0, v0[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9288, &qword_227D5CA40);
  v1 = OUTLINED_FUNCTION_300_0();
  type metadata accessor for GameActivityAchievementProgressSchema(v1);
  sub_227C47D74();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_302_0();
  sub_227D4CAC8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C3989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_227C39770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C398F4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_2_26();
  v1 = sub_227B17E0C(v0);
  v8 = OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_239(v8, v9, v10, v11, v12);
}

uint64_t sub_227C39998(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C39770(v2, v3);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C399F0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v4 = sub_227D4CE58();
  a3(v4);
}

uint64_t sub_227C39A60()
{
  OUTLINED_FUNCTION_387_0();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_236();
  sub_227C39AC8(v1);
  return v0;
}

uint64_t *sub_227C39AC8(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_294_0();
  v3 = *v1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9298, &qword_227D5CA48);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v4);
  OUTLINED_FUNCTION_13_1();
  v13 = OUTLINED_FUNCTION_502(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  OUTLINED_FUNCTION_338(v13);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v2 + 16) = 1;
  sub_227D494B8();
  v14 = OUTLINED_FUNCTION_82();
  sub_227C3C834(v14);
  OUTLINED_FUNCTION_256(v2 + 3, v2[6]);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_407();
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v15);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v16);

  OUTLINED_FUNCTION_227();
  sub_227D4CAE8();

  *(v2 + 16) = 0;
  sub_227C394A8();
  sub_227C396D0();

  return v2;
}

uint64_t sub_227C39C80()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for GameActivityRuntimeStatsSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9298, &qword_227D5CA48);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_13_1();
  v12 = OUTLINED_FUNCTION_502(v4, v5, v6, v7, v8, v9, v10, v11, v2);
  OUTLINED_FUNCTION_421(v12);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C39D18(uint64_t a1, uint64_t a2)
{
  v2 = sub_227C39548(a1, a2);
  v3 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v4 = sub_227B4BF3C(v2);
  for (i = 0; v4 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = OUTLINED_FUNCTION_165_3();
      MEMORY[0x22AAA63D0](v6);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);

      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_399();
    sub_227C39EF0();
  }

  v9 = sub_227C39770(v7, v8);
  v10 = sub_227B4BF3C(v9);
  for (j = 0; v10 != j; ++j)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = OUTLINED_FUNCTION_165_3();
      MEMORY[0x22AAA63D0](v13);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_399();
    sub_227C3A648(v12);
  }

  sub_227C23364(v3, sub_227C40964, MEMORY[0x277D0CC08], v14, v15, v16, v17);
  return v19;
}

void sub_227C39EF0()
{
  OUTLINED_FUNCTION_351();
  v62 = v0;
  v60 = v2;
  sub_227D49AF8();
  OUTLINED_FUNCTION_9();
  v58 = v4;
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v61 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  v57 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v56 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_314();
  v66 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_54_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v55 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v67 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_3();
  v55[1] = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_438();
  sub_227C3A3C0();
  sub_227D4A888();
  sub_227C391B8();
  sub_227D4A698();
  sub_227C3A480();
  v63 = v15;
  v64 = v13;
  v27 = v13;
  v28 = v1;
  (*(v15 + 16))(v19, v22, v27);
  OUTLINED_FUNCTION_269();
  v29 = v62;
  sub_227D4A7C8();
  if (v29)
  {

    OUTLINED_FUNCTION_256_0();
    v30(v22);
    v31 = OUTLINED_FUNCTION_196_2();
    v32(v31, v68);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v65);
    sub_227C1CB1C(v1, &qword_27D7E8390);
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v36 = v65;
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v65);
    v40 = v57;
    v41 = v28;
    v42 = v36;
    (*(v57 + 32))(v66, v41, v36);
    v43 = OUTLINED_FUNCTION_341();
    v44(v43);
    v62 = sub_227C3A540();
    sub_227C3A634();
    (*(v40 + 16))(v56, v66, v36);
    v45 = v61;
    OUTLINED_FUNCTION_305();
    sub_227D4A118();
    v46 = v58;
    v47 = v45;
    v48 = v59;
    (*(v58 + 104))(v47, *MEMORY[0x277D0CC00], v59);
    v49 = v60;
    sub_227C408D8();
    v50 = *(*v49 + 16);
    sub_227C40924(v50);
    (*(v40 + 8))(v66, v42);
    OUTLINED_FUNCTION_256_0();
    v51(v22);
    v52 = OUTLINED_FUNCTION_196_2();
    v53(v52, v68);
    v54 = *v49;
    *(v54 + 16) = v50 + 1;
    (*(v46 + 32))(v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v50, v61, v48);
    *v49 = v54;
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C3A648(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v5);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_117_2(v7);
  sub_227D49AF8();
  OUTLINED_FUNCTION_9();
  v48 = v9;
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_3();
  v53 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v11);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_75_2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_9();
  v47 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_314();
  v52 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_325_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_329_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v55 = v23;
  v56 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_3();
  v51 = v24;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_438();
  sub_227C3AB5C();
  sub_227D4A888();
  sub_227C391B8();
  sub_227D4A698();
  sub_227C3AC1C();
  (*(v19 + 16))(v2, v3, v17);
  OUTLINED_FUNCTION_269();
  sub_227D4A738();
  if (v54)
  {

    OUTLINED_FUNCTION_256_0();
    v26(v3);
    v27 = OUTLINED_FUNCTION_196_2();
    v28(v27);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v57);
    return sub_227C1CB1C(v4, &qword_27D7E96A0);
  }

  else
  {
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v57);
    OUTLINED_FUNCTION_199_1();
    v36();
    (*(v55 + 16))(v51, v1, v56);
    v37 = OUTLINED_FUNCTION_233();
    v39 = v38(v37);
    sub_227C3ACDC(v39);
    v41 = sub_227C3ADAC(v40);
    sub_227C3AE7C(v41);
    sub_227D4A278();
    (*(v48 + 104))(v53, *MEMORY[0x277D0CBF8], v49);
    sub_227C408D8();
    v42 = *(*a1 + 16);
    sub_227C40924(v42);
    (*(v47 + 8))(v52, v57);
    OUTLINED_FUNCTION_256_0();
    v43(v3);
    v44 = OUTLINED_FUNCTION_196_2();
    v45(v44);
    v46 = *a1;
    *(v46 + 16) = v42 + 1;
    result = (*(v48 + 32))(v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v42, v53, v49);
    *a1 = v46;
  }

  return result;
}

uint64_t sub_227C3AF58()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

void sub_227C3AFA8()
{
  OUTLINED_FUNCTION_11();
  v11 = sub_227D4CD48();
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_311_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_342();
  v4 = sub_227D4CD98();
  OUTLINED_FUNCTION_10_0(v4);
  OUTLINED_FUNCTION_241_0();
  *(swift_allocObject() + 16) = xmmword_227D59C40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v5 = OUTLINED_FUNCTION_165_2();
  v6 = *MEMORY[0x277CDD5A0];
  v7 = *(v2 + 104);
  v7(v0, v6, v11, v5);
  swift_getKeyPath();
  OUTLINED_FUNCTION_342();
  sub_227D4CD58();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_132_3(MEMORY[0x277D84F90], v0);
  OUTLINED_FUNCTION_183_3();
  v9 = sub_227B17E0C(v8);
  OUTLINED_FUNCTION_469(v9);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v10 = OUTLINED_FUNCTION_165_2();
  v7(v0, v6, v11, v10);
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_132_3(MEMORY[0x277D84F90], v0);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C3B398@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227C3B2AC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_227C3B3F0(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_7_17();
  v2 = sub_227B17E0C(v1);
  v9 = OUTLINED_FUNCTION_19_9(v2, v3, v4, v5, v6, v2, v7, v8, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_239(v9, v10, v11, v12, v13);
}

uint64_t sub_227C3B580@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227C3B494(a2);
  *a1 = result;
  return result;
}

uint64_t sub_227C3B5D8(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_3_19();
  v2 = sub_227B17E0C(v1);
  v9 = OUTLINED_FUNCTION_19_9(v2, v3, v4, v5, v6, v2, v7, v8, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_239(v9, v10, v11, v12, v13);
}

uint64_t sub_227C3B694()
{
  OUTLINED_FUNCTION_70_4();
  v3 = v2;
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9298, &qword_227D5CA48);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v4);
  OUTLINED_FUNCTION_13_1();
  v13 = OUTLINED_FUNCTION_502(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  OUTLINED_FUNCTION_338(v13);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v0 + 16) = 1;
  v14 = sub_227D494B8();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_143_0(v14, v15, v16, v17, v18, v19, v20, v21, v23);
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_227B132F0(v1, v0 + 24);
  swift_endAccess();
  return v0;
}

uint64_t sub_227C3B838(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3B2AC(v2);
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3B89C(void *a1@<X8>)
{
  sub_227C3A3C0();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C3B980(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C3A3C0();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3B9F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C3A540();
  *a1 = result;
  return result;
}

uint64_t sub_227C3BA84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_444_0(v3, v4, v5, v6, v7);
}

uint64_t sub_227C3BB20(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3A540();
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3BBAC()
{
  OUTLINED_FUNCTION_255();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_344();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C3BC2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C3A634();
  *a1 = result;
  return result;
}

uint64_t sub_227C3BCBC(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3A634();
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3BD38(void *a1@<X8>)
{
  sub_227C3A480();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C3BE1C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C3A480();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3BE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_450_0();
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_153_3();
  sub_227C3BEC8(v12, v13, v14, v15, v7, v11, v9);
  OUTLINED_FUNCTION_451_0();
}

void *sub_227C3BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = *v7;
  v8[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A0, &qword_227D5CC08);
  OUTLINED_FUNCTION_7_17();
  v21[0] = v9;
  v21[1] = v9;
  v22 = sub_227B17E0C(v10);
  v23 = v22;
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_338(OpaqueTypeConformance2);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v8 + 16) = 1;
  sub_227D494B8();
  OUTLINED_FUNCTION_256(v8 + 3, v8[6]);
  swift_getKeyPath();
  v12 = OUTLINED_FUNCTION_304_0();
  type metadata accessor for GameActivityRuntimeStatsSchema(v12);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v13);

  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_302_0();
  sub_227D4CAE8();

  *(v8 + 16) = 0;
  v14 = OUTLINED_FUNCTION_114();
  sub_227C3C834(v14);
  OUTLINED_FUNCTION_256(v8 + 3, v8[6]);
  KeyPath = swift_getKeyPath();
  v21[0] = a4;
  OUTLINED_FUNCTION_443_0(KeyPath, v21, MEMORY[0x277D83B88], MEMORY[0x277D83B90]);

  OUTLINED_FUNCTION_256(v8 + 3, v8[6]);
  v16 = swift_getKeyPath();
  v21[0] = a5;
  OUTLINED_FUNCTION_443_0(v16, v21, MEMORY[0x277D83E88], MEMORY[0x277D83E90]);

  sub_227C3C834(a6);

  return v8;
}

uint64_t sub_227C3C114()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for GameActivityLeaderBoardScoreSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A0, &qword_227D5CC08);
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_13_1();
  v12 = OUTLINED_FUNCTION_502(v4, v5, v6, v7, v8, v9, v10, v11, v2);
  OUTLINED_FUNCTION_421(v12);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C3C1AC()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C3C1FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_419();
  v0 = sub_227D4CD98();
  OUTLINED_FUNCTION_10_0(v0);
  OUTLINED_FUNCTION_241_0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_227D59C80;
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_178_3();
  OUTLINED_FUNCTION_374_0(v2, v3);
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  return v1;
}

uint64_t sub_227C3C3D4()
{
  OUTLINED_FUNCTION_70_4();
  v3 = v2;
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A0, &qword_227D5CC08);
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v4);
  OUTLINED_FUNCTION_13_1();
  v13 = OUTLINED_FUNCTION_502(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  OUTLINED_FUNCTION_338(v13);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v0 + 16) = 1;
  v14 = sub_227D494B8();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_143_0(v14, v15, v16, v17, v18, v19, v20, v21, v23);
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_227B132F0(v1, v0 + 24);
  swift_endAccess();
  return v0;
}

void sub_227C3C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_396_0();
  v8 = v7;
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  OUTLINED_FUNCTION_223();
  swift_getKeyPath();
  v10 = OUTLINED_FUNCTION_419();
  type metadata accessor for GameActivityRuntimeStatsSchema(v10);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v11);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_344();
  sub_227D4CAE8();

  *v8 = 0;
  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227C3C618(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3B494(v2);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3C670(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void sub_227C3C6EC(void *a1@<X8>)
{
  sub_227C3AB5C();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C3C7D0(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C3AB5C();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3C834(uint64_t a1)
{
  OUTLINED_FUNCTION_320_0();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_319();
}

void sub_227C3C8C0(void *a1@<X8>)
{
  sub_227C3AC1C();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C3C904(uint64_t a1)
{
  OUTLINED_FUNCTION_608(a1);
  v2 = OUTLINED_FUNCTION_253();
  return v1(v2);
}

uint64_t sub_227C3C9D8(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C3AC1C();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3CA30(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    sub_227D4CE58();
    v4 = OUTLINED_FUNCTION_253();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_253();
    return a3(v6);
  }
}

uint64_t sub_227C3CAA8(void *a1, double a2)
{
  OUTLINED_FUNCTION_256(a1, a1[3]);
  swift_getKeyPath();
  sub_227D4CAD8();
}

uint64_t sub_227C3CB7C(double a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  v4 = sub_227B17E0C(v3);
  OUTLINED_FUNCTION_19_9(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, *&a1, v14, v15);
  sub_227D49498();
}

uint64_t sub_227C3CC30(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3ACDC(v2);
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3CCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_320_0();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  swift_getKeyPath();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_319();
}

uint64_t sub_227C3CD28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227C3ADAC(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_227C3CD80(char a1)
{
  swift_getKeyPath();
  LOBYTE(v19) = a1;
  OUTLINED_FUNCTION_3_19();
  v4 = sub_227B17E0C(v3);
  v11 = OUTLINED_FUNCTION_19_9(v4, v5, v6, v7, v8, v4, v9, v10, v17, v18, v1, v19, v20, v21);
  OUTLINED_FUNCTION_239(v11, v12, v13, v14, v15);
}

uint64_t (*sub_227C3CE24(void *a1))(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_223_0(a1);
  v2 = sub_227C3ADAC(v1);
  OUTLINED_FUNCTION_210_2(v2);
  return sub_227C3CE64;
}

void sub_227C3CEB8()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  v5 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v1();
  sub_227D4CAD8();

  v7 = OUTLINED_FUNCTION_201();
  sub_227C1CB1C(v7, v8);
  *v3 = 0;
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C3CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_5(v9);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_148();
  sub_227C4BC80();
  return a7(v7);
}

uint64_t sub_227C3D04C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_3_19();
  v3 = sub_227B17E0C(v2);
  v10 = OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_239(v10, v11, v12, v13, v14);

  return sub_227C1CB1C(a1, &qword_27D7E6D08);
}

uint64_t sub_227C3D100(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C3AE7C(v6);
  return OUTLINED_FUNCTION_343();
}

void sub_227C3D1AC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    OUTLINED_FUNCTION_294_0();
    OUTLINED_FUNCTION_150();
    sub_227C4BC80();
    a3(v4);
    v6 = OUTLINED_FUNCTION_91_0();
    sub_227C1CB1C(v6, v7);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_227C3D240(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_153_3();
  sub_227C3D2AC(v13, v14, a2, v15, v16, v9, a7, a8);
  return v8;
}

void *sub_227C3D2AC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v10 = v8;
  v13 = *v8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v14);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_61_4();
  v10[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A8, &qword_227D5CC10);
  OUTLINED_FUNCTION_3_19();
  v26[0] = v13;
  v26[1] = v13;
  v27 = sub_227B17E0C(v16);
  v28 = v27;
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_338(OpaqueTypeConformance2);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v10 + 8) = 257;
  sub_227D494B8();
  OUTLINED_FUNCTION_256(v10 + 3, v10[6]);
  swift_getKeyPath();
  type metadata accessor for GameActivityRuntimeStatsSchema(0);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v18);
  OUTLINED_FUNCTION_414_0();

  sub_227D4CAE8();

  *(v10 + 16) = 0;
  sub_227C3C834(a2);
  sub_227C3C834(a5);
  OUTLINED_FUNCTION_256(v10 + 3, v10[6]);
  KeyPath = swift_getKeyPath();
  *v26 = a3;
  OUTLINED_FUNCTION_443_0(KeyPath, v26, MEMORY[0x277D839F8], MEMORY[0x277D83A08]);

  OUTLINED_FUNCTION_256(v10 + 3, v10[6]);
  v20 = swift_getKeyPath();
  LOBYTE(v26[0]) = a7;
  OUTLINED_FUNCTION_443_0(v20, v26, MEMORY[0x277D839B0], MEMORY[0x277D839B8]);

  sub_227C4BC80();
  sub_227C3D04C(v9);

  v21 = OUTLINED_FUNCTION_91_0();
  sub_227C1CB1C(v21, v22);
  return v10;
}

uint64_t sub_227C3D58C()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for GameActivityAchievementProgressSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A8, &qword_227D5CC10);
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_13_1();
  v12 = OUTLINED_FUNCTION_502(v4, v5, v6, v7, v8, v9, v10, v11, v2);
  OUTLINED_FUNCTION_421(v12);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C3D624()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C3D674()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_419();
  v0 = sub_227D4CD98();
  OUTLINED_FUNCTION_10_0(v0);
  OUTLINED_FUNCTION_241_0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_227D59C90;
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_178_3();
  OUTLINED_FUNCTION_374_0(v2, v3);
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_178_3();
  OUTLINED_FUNCTION_374_0(v4, v5);
  return v1;
}

uint64_t sub_227C3D894()
{
  OUTLINED_FUNCTION_104_0();
  v2 = swift_allocObject();
  v0(v1);
  return v2;
}

uint64_t sub_227C3D8E0()
{
  OUTLINED_FUNCTION_70_4();
  v3 = v2;
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A8, &qword_227D5CC10);
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v4);
  OUTLINED_FUNCTION_13_1();
  v13 = OUTLINED_FUNCTION_502(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  OUTLINED_FUNCTION_338(v13);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v0 + 16) = 257;
  v14 = sub_227D494B8();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_143_0(v14, v15, v16, v17, v18, v19, v20, v21, v23);
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_227B132F0(v1, v0 + 24);
  swift_endAccess();
  return v0;
}

uint64_t sub_227C3DA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_397(a1, a2, a3);
  v4 = sub_227B17E0C(v3);
  OUTLINED_FUNCTION_187_2(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  return sub_227D494A8();
}

uint64_t sub_227C3DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_142_4();
  sub_227B17E0C(v4);
  OUTLINED_FUNCTION_153_3();
  return sub_227D49498();
}

void sub_227C3DB48()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_40();
  v1 = sub_227D4AA28();
  v2 = OUTLINED_FUNCTION_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_126_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105_1();
  sub_227D4CE58();
  OUTLINED_FUNCTION_246();
  sub_227D4A768();
  if (!v0)
  {
    sub_227D4A9F8();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    OUTLINED_FUNCTION_201();
    sub_227D4A9C8();
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C3DCA8()
{
  OUTLINED_FUNCTION_104_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92B0, &qword_227D5CC18);
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_103();
  sub_227D4CE58();
  OUTLINED_FUNCTION_150();
  sub_227D498F8();
  sub_227D49918();
  v4 = OUTLINED_FUNCTION_414_0();
  OUTLINED_FUNCTION_318(v4, 1, v1);
  if (v5)
  {
    sub_227C1CB1C(v0, &qword_27D7E92B0);
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v13 = v9;
    v10 = OUTLINED_FUNCTION_150();
    MEMORY[0x22AAA5DA0](v10);
    result = OUTLINED_FUNCTION_434_0("Fatal error", v11, v12, 0xD000000000000017, v13, "GameServicesCore/GameActivityStores.swift");
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_0();
    v6 = OUTLINED_FUNCTION_269();
    return v7(v6);
  }

  return result;
}

uint64_t sub_227C3DE00()
{
  OUTLINED_FUNCTION_104_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_103();
  sub_227D4CE58();
  OUTLINED_FUNCTION_150();
  sub_227D49F08();
  sub_227D49F28();
  v4 = OUTLINED_FUNCTION_414_0();
  OUTLINED_FUNCTION_318(v4, 1, v1);
  if (v5)
  {
    sub_227C1CB1C(v0, &qword_27D7E6940);
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v13 = v9;
    v10 = OUTLINED_FUNCTION_150();
    MEMORY[0x22AAA5DA0](v10);
    result = OUTLINED_FUNCTION_434_0("Fatal error", v11, v12, 0xD00000000000001ALL, v13, "GameServicesCore/GameActivityStores.swift");
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_0();
    v6 = OUTLINED_FUNCTION_269();
    return v7(v6);
  }

  return result;
}

void sub_227C3DFDC()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_102_3();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  sub_227D4CE58();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (v8)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      sub_227C37C5C(v12);
      OUTLINED_FUNCTION_8_1();
      return;
    }

    v8 = *(v2 + 56 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      do
      {
LABEL_6:
        sub_227D4CE58();
        OUTLINED_FUNCTION_261_0();
        sub_227D4A888();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_227B1BEF0();
          v12 = v17;
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          OUTLINED_FUNCTION_12(v14);
          sub_227B1BEF0();
          v12 = v18;
        }

        v8 &= v8 - 1;
        *(v12 + 16) = v15 + 1;
        OUTLINED_FUNCTION_19();
        (*(v4 + 32))(v12 + v16 + *(v4 + 72) * v15, v0, v19);
      }

      while (v8);
    }
  }

  __break(1u);
}

void sub_227C3E1EC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A8, &qword_227D5E220);
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96B0, &qword_227D5E228);
  OUTLINED_FUNCTION_9();
  v35 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v8 = *(v3 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v40 = MEMORY[0x277D84F90];
    sub_227C43058();
    v9 = v40;
    v12 = sub_227BB78B0(v3);
    v13 = 0;
    v39 = v3 + 64;
    v32 = *MEMORY[0x277D0CD90];
    v33 = v10;
    v31 = v3 + 72;
    v34 = v3;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v3 + 32))
    {
      v14 = v12 >> 6;
      if ((*(v39 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v3 + 36) != v10)
      {
        goto LABEL_27;
      }

      v37 = v13;
      v38 = v10;
      v36 = v11;
      v15 = *(v35 + 48);
      swift_bridgeObjectRetain_n();
      sub_227D4CE58();
      OUTLINED_FUNCTION_196_3();
      sub_227D4A888();
      sub_227D4CE58();
      OUTLINED_FUNCTION_148();
      sub_227D49B68();

      v16 = sub_227D49B88();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v16);
      v18 = *(v16 - 8);
      if (EnumTagSinglePayload == 1)
      {
        (*(v18 + 104))(v1 + v15, v32, v16);
        OUTLINED_FUNCTION_318(v0, 1, v16);
        if (!v19)
        {
          sub_227C1CB1C(v0, &qword_27D7E96A8);
        }
      }

      else
      {
        (*(v18 + 32))(v1 + v15, v0, v16);
      }

      v20 = *(v40 + 16);
      if (v20 >= *(v40 + 24) >> 1)
      {
        sub_227C43058();
      }

      *(v40 + 16) = v20 + 1;
      OUTLINED_FUNCTION_104_2();
      sub_227C4BC10(v1, v40 + v21 + *(v22 + 72) * v20);
      v3 = v34;
      v23 = 1 << *(v34 + 32);
      if (v12 >= v23)
      {
        goto LABEL_28;
      }

      v24 = *(v39 + 8 * v14);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v34 + 36) != v38)
      {
        goto LABEL_30;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v28 = (v31 + 8 * v14);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_227B3E218(v12, v38, v36 & 1);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_23;
          }
        }

        sub_227B3E218(v12, v38, v36 & 1);
      }

LABEL_23:
      v11 = 0;
      v13 = v37 + 1;
      v12 = v23;
      v10 = v33;
      if (v37 + 1 == v8)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_227C3E600(v9);
    OUTLINED_FUNCTION_8_1();
  }
}

uint64_t sub_227C3E600(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96B8, &qword_227D5E230);
    v2 = sub_227D4D838();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_227C44010(a1, 1, &v4);
  return v4;
}

uint64_t sub_227C3E6A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v100 = v4;
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v99 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v92 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_9();
  v94 = v10;
  v95 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_0();
  v93 = v12;
  OUTLINED_FUNCTION_191_2();
  sub_227D4A298();
  OUTLINED_FUNCTION_9();
  v97 = v13;
  v98 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v96 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_438();
  sub_227D4A148();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  sub_227D49AF8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_126_1();
  v21 = OUTLINED_FUNCTION_168_1();
  v22(v21);
  v23 = OUTLINED_FUNCTION_243();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x277D0CC00])
  {
    v26 = OUTLINED_FUNCTION_243();
    v27(v26);
    OUTLINED_FUNCTION_193_3();
    v28();
    v29 = *a1;

    sub_227D4A128();
    v30 = sub_227D4A898();
    if (v106)
    {

      v53 = OUTLINED_FUNCTION_196_2();
      v54(v53);
      v55 = OUTLINED_FUNCTION_226_0();
      return v57(v55, v56);
    }

    v50 = v31;
    v107 = v30;
    v51 = OUTLINED_FUNCTION_196_2();
    v52(v51);
    v104 = sub_227D4A108();
    v102 = sub_227D4A138();
    sub_227D4A0F8();
    v69 = sub_227D4A7D8();
    v71 = v70;
    v72 = OUTLINED_FUNCTION_196_2();
    v73(v72);
    type metadata accessor for GameActivityLeaderBoardScoreSchema(0);
    OUTLINED_FUNCTION_166_2();
    swift_allocObject();
    sub_227C3BEC8(v29, v107, v50, v104, v102, v69, v71);

    v109 = sub_227C39548(v74, v75);
    MEMORY[0x22AAA5EF0]();
    OUTLINED_FUNCTION_398_0();
    if (v77)
    {
      OUTLINED_FUNCTION_12(v76);
      sub_227D4D1E8();
    }

    OUTLINED_FUNCTION_173_0();
    sub_227D4D228();
    sub_227C395D4();

    v78 = OUTLINED_FUNCTION_226_0();
    return v79(v78);
  }

  else if (v25 == *MEMORY[0x277D0CBF8])
  {
    v32 = OUTLINED_FUNCTION_243();
    v33(v32);
    v34 = OUTLINED_FUNCTION_165_3();
    v35(v34);
    v36 = *a1;

    sub_227D4A288();
    v37 = sub_227D4A898();
    if (v106)
    {

      v67 = OUTLINED_FUNCTION_249();
      v68(v67);
      v57 = *(v98 + 8);
      v55 = v96;
      v56 = v97;
      return v57(v55, v56);
    }

    v63 = v38;
    v108 = v37;
    v64 = OUTLINED_FUNCTION_249();
    v65(v64);
    sub_227D4A228();
    v66 = sub_227D4A748();
    v81 = v80;
    v105 = v66;
    (*(v94 + 8))(v93, v95);
    sub_227D4A258();
    v83 = v82;
    v84 = sub_227D4A238();
    sub_227D492A8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    type metadata accessor for GameActivityAchievementProgressSchema(0);
    OUTLINED_FUNCTION_166_2();
    swift_allocObject();
    sub_227C3D2AC(v36, v108, v83, v63, v105, v81, v84 & 1, v92);

    v109 = sub_227C39770(v89, v90);
    MEMORY[0x22AAA5EF0]();
    OUTLINED_FUNCTION_398_0();
    if (v77)
    {
      OUTLINED_FUNCTION_12(v91);
      sub_227D4D1E8();
    }

    OUTLINED_FUNCTION_173_0();
    sub_227D4D228();
    sub_227C398F4();

    return (*(v98 + 8))(v96, v97);
  }

  else
  {
    v39 = sub_227B1AF8C();
    (*(v100 + 16))(v99, v39, v101);
    sub_227D4CE58();
    v40 = sub_227D4CA98();
    v41 = sub_227D4D438();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_415();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_229();
      v43 = swift_slowAlloc();
      v109 = v43;
      *v42 = 136315138;
      v44 = OUTLINED_FUNCTION_427_0();
      v45 = MEMORY[0x22AAA5F20](v44);
      v47 = sub_227B1B1A4(v45, v46, &v109);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_227B0D000, v40, v41, "Found unknown GameActivityRuntimeStat: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v48 = OUTLINED_FUNCTION_101_2();
      MEMORY[0x22AAA7130](v48);
      v49 = OUTLINED_FUNCTION_105_2();
      MEMORY[0x22AAA7130](v49);

      (*(v100 + 8))(v99, v101);
    }

    else
    {

      v58 = OUTLINED_FUNCTION_478();
      v59(v58);
    }

    v60 = OUTLINED_FUNCTION_243();
    return v61(v60);
  }
}

uint64_t sub_227C3EF8C()
{
  sub_227D49918();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_411_0();
  v1 = OUTLINED_FUNCTION_147();
  v2(v1);
  v3 = OUTLINED_FUNCTION_57_0();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277D0CB40])
  {
    return 0;
  }

  if (v5 == *MEMORY[0x277D0CB38])
  {
    return 1;
  }

  if (v5 != *MEMORY[0x277D0CB48])
  {
    v7 = OUTLINED_FUNCTION_57_0();
    v8(v7);
    return 0;
  }

  return 2;
}

uint64_t sub_227C3F0B4()
{
  OUTLINED_FUNCTION_40();
  v3 = sub_227D4AA28();
  OUTLINED_FUNCTION_9();
  v40 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_67_1();
  sub_227D4A9D8();
  v13 = sub_227D4A7A8();
  v15 = v14;
  result = (*(v11 + 8))(v2, v9);
  if (!v1)
  {
    v38 = v15;
    v39 = v13;
    sub_227D4A9B8();
    sub_227D4AA08();
    v18 = v17;
    v19 = v17;
    v20 = *(v40 + 8);
    result = v20(v8, v3);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        sub_227D4A9B8();
        sub_227D4AA18();
        v22 = v21;
        v23 = v21;
        result = v20(v8, v3);
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v22 > -9.22337204e18)
          {
            if (v22 < 9.22337204e18)
            {
              v24 = sub_227D4A968();
              v36 = v25;
              v37 = v24;
              v35 = sub_227D4A978();
              v27 = v26;
              v28 = sub_227D4A988();
              v30 = v29;
              v31 = sub_227D4A998();
              v33 = v32;
              result = sub_227D4A9A8();
              *v0 = v39;
              v0[1] = v38;
              v0[2] = v18;
              v0[3] = v22;
              v0[4] = v37;
              v0[5] = v36;
              v0[6] = v35;
              v0[7] = v27;
              v0[8] = v28;
              v0[9] = v30;
              v0[10] = v31;
              v0[11] = v33;
              v0[12] = result;
              v0[13] = v34;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_227C3F370()
{
  sub_227D49F28();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_411_0();
  v1 = OUTLINED_FUNCTION_147();
  v2(v1);
  v3 = OUTLINED_FUNCTION_57_0();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277D0CEE8])
  {
    return 0;
  }

  if (v5 == *MEMORY[0x277D0CEF0])
  {
    return 1;
  }

  if (v5 != *MEMORY[0x277D0CEE0])
  {
    v7 = OUTLINED_FUNCTION_57_0();
    v8(v7);
  }

  return 2;
}

unint64_t sub_227C3F494()
{
  result = qword_27D7E91F8;
  if (!qword_27D7E91F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6CD8, &qword_227D5C1C0);
    sub_227B17E0C(&unk_27D7E7528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E91F8);
  }

  return result;
}

unint64_t sub_227C3F588()
{
  result = qword_27D7E9210;
  if (!qword_27D7E9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D08, &qword_227D59460);
    sub_227B17E0C(&unk_280E7B6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9210);
  }

  return result;
}

uint64_t *sub_227C3F64C()
{
  if (qword_27D7FC0E0[0] != -1)
  {
    swift_once();
  }

  return &qword_27D7EAA58;
}

uint64_t sub_227C3F6D0(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for GameActivityDefinitionStoreRegistry();
  v5 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v5 + 112) = a2;
  *(v5 + 120) = MEMORY[0x277D84F98];
  *a3 = v5;
  return result;
}

uint64_t *sub_227C3F728()
{
  if (qword_280E7C248 != -1)
  {
    swift_once();
  }

  return &qword_27D7EAA60;
}

void sub_227C3F79C()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92B8, &qword_227D5CC20);
  v4 = OUTLINED_FUNCTION_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_442_0();
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = type metadata accessor for GameActivityDefinitionStoreRegistry.DefinitionStoreKey(0);
  v8 = OUTLINED_FUNCTION_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_226();
  sub_227C4BC80();
  if (v38)
  {
    sub_227B132F0(&v37, v39);
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v10 = OUTLINED_FUNCTION_93_0();
    v11(v10);
    v12 = sub_227D49328();
    OUTLINED_FUNCTION_62_0();
    v14 = *(v13 + 16);
    v15 = OUTLINED_FUNCTION_305();
    v14(v15);
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_120();
    swift_beginAccess();
    sub_227D4CE58();
    OUTLINED_FUNCTION_191_3();
    v16 = OUTLINED_FUNCTION_196_3();
    v18 = sub_227B17D84(v16, v17);

    if (v18)
    {
      sub_227B179FC();
    }

    else
    {
      type metadata accessor for GameActivityDefinitionStore();
      v23 = OUTLINED_FUNCTION_323();
      v14(v23);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v12);
      sub_227C19454(v39, &v37);
      OUTLINED_FUNCTION_431_0();
      sub_227C20DCC();
      if (v1)
      {

        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      OUTLINED_FUNCTION_191_3();
      v30 = OUTLINED_FUNCTION_341();
      sub_227B18028(v30, v31);
      OUTLINED_FUNCTION_397_0(v2 + 120, &v37);
      if (v28)
      {

        swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v2 + 120);
        v32 = OUTLINED_FUNCTION_236();
        sub_227C44CCC(v32, v33, v34);
        *(v2 + 120) = v36;
      }

      else
      {
        sub_227C449FC();
      }

      sub_227B179FC();
      swift_endAccess();
      OUTLINED_FUNCTION_193();
      sub_227B179FC();
      if (!v28)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_5_16();
    sub_227B180A0(v35);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v39);
    goto LABEL_16;
  }

  sub_227C1CB1C(&v37, &unk_27D7E92C0);
  type metadata accessor for GameActivityDefinitionStore();
  sub_227D49328();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_276_0();
  sub_227C20DCC();
  if (v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    sub_227B180A0(v29);
  }

LABEL_16:
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C3FB68()
{
  type metadata accessor for GameActivityInstanceStoreRegistry();
  v0 = swift_allocObject();
  result = sub_227C3FDA4(0);
  qword_280E7D400 = v0;
  return result;
}

uint64_t sub_227C3FBCC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_227C3FC1C()
{
  OUTLINED_FUNCTION_419();
  sub_227D49328();
  OUTLINED_FUNCTION_42_4();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_9_2();

  return sub_227D4CEA8();
}

uint64_t sub_227C3FC88()
{
  sub_227D4DB58();
  sub_227D49328();
  OUTLINED_FUNCTION_42_4();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_187_2(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227C3FD30(uint64_t a1)
{
  sub_227D4DB58();
  sub_227D49328();
  OUTLINED_FUNCTION_42_4();
  v2 = sub_227B17E0C(v1);
  OUTLINED_FUNCTION_187_2(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227C3FDA4(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  type metadata accessor for GameActivityInstanceStoreRegistry.GameActivityStoreKey(0);
  type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_190_3();
  sub_227B180A0(v3);
  OUTLINED_FUNCTION_85_1();
  *(v1 + 120) = sub_227D4CE28();
  return v1;
}

uint64_t sub_227C3FE30()
{
  type metadata accessor for GameActivityInstanceStoreRegistry();
  v0 = swift_allocObject();
  sub_227C3FDA4(1);
  return v0;
}

uint64_t sub_227C3FED4()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C3FF80()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_150();
  return sub_227D4CC38();
}

void sub_227C3FFDC(void *a1@<X8>)
{
  sub_227C24B78();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227C40008()
{
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  v1 = OUTLINED_FUNCTION_76_3();

  return MEMORY[0x28212CAA0](v1);
}

uint64_t sub_227C400A4()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C40150()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_150();
  return sub_227D4CC38();
}

uint64_t sub_227C401AC()
{
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  return OUTLINED_FUNCTION_306_0();
}

uint64_t sub_227C401FC()
{
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  v1 = OUTLINED_FUNCTION_76_3();

  return MEMORY[0x28212CAA0](v1);
}

uint64_t sub_227C40298()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C40344()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_150();
  return sub_227D4CC38();
}

uint64_t sub_227C403A0()
{
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v0);
  return OUTLINED_FUNCTION_306_0();
}

uint64_t sub_227C403F0()
{
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v0);
  v1 = OUTLINED_FUNCTION_76_3();

  return MEMORY[0x28212CAA0](v1);
}

uint64_t sub_227C4048C()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C40538()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_150();
  return sub_227D4CC38();
}

uint64_t sub_227C40594()
{
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v0);
  return OUTLINED_FUNCTION_306_0();
}

uint64_t sub_227C405E4()
{
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v0);
  v1 = OUTLINED_FUNCTION_76_3();

  return MEMORY[0x28212CAA0](v1);
}

uint64_t sub_227C4067C()
{
  OUTLINED_FUNCTION_242();
  sub_227D4DB58();
  v0 = OUTLINED_FUNCTION_253();
  sub_227B17E0C(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227C4071C()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C407C8()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_150();
  return sub_227D4CC38();
}

uint64_t sub_227C40824()
{
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v0);
  return OUTLINED_FUNCTION_306_0();
}

uint64_t sub_227C40874()
{
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v0);
  v1 = OUTLINED_FUNCTION_76_3();

  return MEMORY[0x28212CAA0](v1);
}

uint64_t sub_227C408D8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_227C40964(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_227C40924(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_227C40964(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_227C40964(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  sub_227C41784(v9, a2, &unk_27D7E9698, &unk_227D5E200, MEMORY[0x277D0CC08]);
  v11 = v10;
  v12 = *(sub_227D49AF8() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_227C4186C(a4 + v13, v9, v11 + v13, MEMORY[0x277D0CC08]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

uint64_t sub_227C40AC8()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

uint64_t sub_227C40B68()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

unint64_t sub_227C40E88()
{
  result = qword_27D7E9218;
  if (!qword_27D7E9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9218);
  }

  return result;
}

unint64_t sub_227C40EDC()
{
  result = qword_280E7CA18;
  if (!qword_280E7CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7CA18);
  }

  return result;
}

uint64_t sub_227C410B8()
{
  OUTLINED_FUNCTION_307();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  v1 = OUTLINED_FUNCTION_201();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_359();
  sub_227D4CC88();
}

unint64_t sub_227C411D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7940, &qword_227D54700);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227C41278()
{
  result = qword_27D7E9230;
  if (!qword_27D7E9230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6CD8, &qword_227D5C1C0);
    sub_227B17E0C(&qword_27D7E7540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9230);
  }

  return result;
}

uint64_t sub_227C4132C()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  sub_227C3F494();
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

uint64_t sub_227C413EC(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v2);
  sub_227C17AB8();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_448_0(KeyPath, v3, v4, v5);
}

unint64_t sub_227C41480()
{
  result = qword_27D7E9238;
  if (!qword_27D7E9238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E91E8, &qword_227D5C1C8);
    sub_227C41504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9238);
  }

  return result;
}

unint64_t sub_227C41504()
{
  result = qword_27D7E9240;
  if (!qword_27D7E9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9240);
  }

  return result;
}

unint64_t sub_227C41558()
{
  result = qword_27D7E9248;
  if (!qword_27D7E9248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E91E8, &qword_227D5C1C8);
    sub_227C415DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9248);
  }

  return result;
}

unint64_t sub_227C415DC()
{
  result = qword_27D7E9250;
  if (!qword_27D7E9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9250);
  }

  return result;
}

uint64_t sub_227C41630()
{
  OUTLINED_FUNCTION_263();
  KeyPath = swift_getKeyPath();
  memcpy(v7, v0, sizeof(v7));
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v2);
  sub_227C41480();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_448_0(KeyPath, v3, v4, v5);
}

uint64_t sub_227C41704()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  sub_227C170F8();
  v1 = OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_448_0(v1, v2, v3, v4);
}

void sub_227C41784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    v8 = OUTLINED_FUNCTION_397(a1, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    v10 = a5(0);
    OUTLINED_FUNCTION_10_0(v10);
    v12 = *(v11 + 72);
    OUTLINED_FUNCTION_241_0();
    v13 = swift_allocObject();
    _swift_stdlib_malloc_size(v13);
    if (v12)
    {
      OUTLINED_FUNCTION_187_0();
      v15 = v15 && v12 == -1;
      if (!v15)
      {
        v13[2] = a1;
        v13[3] = 2 * (v14 / v12);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_227C4186C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_37();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_62_0(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_227C41938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_227C419B0()
{
  OUTLINED_FUNCTION_419();
  v1 = sub_227D49AB8();
  OUTLINED_FUNCTION_5(v1);
  v3 = v2;
  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227C45174();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v6;
  sub_227C41A50(v7);
  *v0 = v4;
}

void sub_227C41A50(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_227D4DA28() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227D49AB8();
        OUTLINED_FUNCTION_416_0();
        v3 = sub_227D4D218();
        *(v3 + 16) = v2;
      }

      v4 = sub_227D49AB8();
      OUTLINED_FUNCTION_5(v4);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_418_0();
      sub_227C41E24();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_227C41B70();
  }
}

void sub_227C41B70()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_419();
  sub_227D49AB8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v57 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_120_2();
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v49 = v6;
  if (v4 != v6)
  {
    v15 = v12;
    v16 = *v2;
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v19 = *(v17 + 56);
    v58 = (v17 - 8);
    v59 = v18;
    v55 = (v17 + 16);
    v56 = v16;
    v20 = v16 + v19 * (v4 - 1);
    v54 = -v19;
    v21 = v0 - v4;
    v48 = v19;
    v22 = v16 + v19 * v4;
    while (2)
    {
      v52 = v20;
      v53 = v4;
      v50 = v22;
      v51 = v21;
      v23 = v20;
      while (1)
      {
        v24 = OUTLINED_FUNCTION_427_0();
        v25 = v59;
        v59(v24);
        v26 = OUTLINED_FUNCTION_173_0();
        v25(v26);
        v27 = sub_227D49848();
        v28 = v14;
        v29 = v15;
        v31 = v30;
        if (v27 == sub_227D49848() && v31 == v32)
        {
          break;
        }

        v34 = OUTLINED_FUNCTION_341();
        v37 = OUTLINED_FUNCTION_373_0(v34, v35, v36);

        v38 = *v58;
        v39 = OUTLINED_FUNCTION_226_0();
        v38(v39);
        v40 = OUTLINED_FUNCTION_82();
        v38(v40);
        v15 = v29;
        v14 = v28;
        if (v37)
        {
          if (!v56)
          {
            __break(1u);
            return;
          }

          v41 = *v55;
          v42 = OUTLINED_FUNCTION_243();
          (v41)(v42);
          OUTLINED_FUNCTION_552();
          swift_arrayInitWithTakeFrontToBack();
          OUTLINED_FUNCTION_193_3();
          v41();
          v23 += v54;
          v22 += v54;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v44 = *v58;
      v45 = OUTLINED_FUNCTION_226_0();
      v44(v45);
      v46 = OUTLINED_FUNCTION_82();
      v44(v46);
      v15 = v29;
      v14 = v28;
LABEL_14:
      v4 = v53 + 1;
      v20 = v52 + v48;
      v21 = v51 - 1;
      v22 = v50 + v48;
      if (v53 + 1 != v49)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_352();
}

void sub_227C41E24()
{
  OUTLINED_FUNCTION_351();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v171 = v7;
  sub_227D49AB8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  v175 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_266();
  v189 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_325_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_120_2();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v167 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_266();
  v185 = v18;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_314();
  v173 = v24;
  v183 = v6;
  v25 = v6[1];
  v181 = v22;
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_116:
    v194 = *v171;
    if (!*v171)
    {
      goto LABEL_159;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_118;
    }

    goto LABEL_153;
  }

  v186 = v21;
  v190 = v23;
  v167 = v4;
  v26 = 0;
  v194 = (v22 + 16);
  v192 = (v22 + 32);
  v193 = (v22 + 8);
  v27 = MEMORY[0x277D84F90];
  v174 = v1;
  v184 = v17;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v178 = v25;
      v30 = v26;
      v31 = *v183;
      v32 = *(v22 + 72);
      v180 = v26 + 1;
      v33 = v31 + v32 * v29;
      v34 = *(v22 + 16);
      v35 = v186;
      v34(v173, v33, v186);
      v172 = v30;
      v182 = v32;
      v191 = v31;
      v36 = v31 + v32 * v30;
      v37 = v168;
      v177 = v34;
      v34(v168, v36, v35);
      v38 = sub_227D49848();
      v40 = v39;
      sub_227D49848();
      OUTLINED_FUNCTION_400_0();
      v43 = v43 && v40 == v42;
      if (v43)
      {
        LODWORD(v179) = 0;
      }

      else
      {
        LODWORD(v179) = OUTLINED_FUNCTION_373_0(v38, v40, v41);
      }

      if (v2)
      {
        v165 = *v193;
        v166 = v186;
        (*v193)(v37, v186);
        v165(v173, v166);
LABEL_128:

        OUTLINED_FUNCTION_352();
        return;
      }

      OUTLINED_FUNCTION_426_0();
      v44 = *v193;
      v45 = v186;
      (*v193)(v37, v186);
      v176 = v44;
      (v44)(v173, v45);
      v46 = v172 + 2;
      v47 = v182 * (v172 + 2);
      v48 = v191 + v47;
      v49 = (v182 * v180);
      v50 = v191 + v182 * v180;
      v51 = v180;
      do
      {
        v52 = v46;
        v2 = v51;
        v27 = v49;
        v53 = v47;
        if (v46 >= v178)
        {
          break;
        }

        v188 = v51;
        v191 = v47;
        v54 = OUTLINED_FUNCTION_269();
        v55 = v177;
        v177(v54);
        v56 = OUTLINED_FUNCTION_349_0();
        v55(v56);
        sub_227D49848();
        v58 = v57;
        sub_227D49848();
        OUTLINED_FUNCTION_400_0();
        v60 = v43 && v58 == v59;
        v187 = v27;
        if (v60)
        {
          v64 = 0;
        }

        else
        {
          v61 = OUTLINED_FUNCTION_132_0();
          v64 = OUTLINED_FUNCTION_373_0(v61, v62, v63);
        }

        v53 = v191;
        v2 = v188;

        v65 = v186;
        v66 = v176;
        v176(v184, v186);
        v66(v185, v65);
        v46 = v52 + 1;
        v48 = &v182[v48];
        v50 = &v182[v50];
        v51 = v2 + 1;
        v27 = v187;
        v49 = &v182[v187];
        v47 = &v182[v53];
      }

      while (((v179 ^ v64) & 1) == 0);
      if (v179)
      {
        v67 = v172;
        v1 = v174;
        if (v52 < v172)
        {
          goto LABEL_152;
        }

        if (v172 >= v52)
        {
          v29 = v52;
          OUTLINED_FUNCTION_113_3();
          v28 = v67;
          goto LABEL_40;
        }

        v191 = v52;
        v68 = v172 * v182;
        do
        {
          if (v67 != v2)
          {
            v69 = *v183;
            if (!*v183)
            {
              goto LABEL_157;
            }

            v70 = *v192;
            v71 = v186;
            (*v192)(v175, v69 + v68, v186);
            v72 = v68 < v27 || v69 + v68 >= v69 + v53;
            if (v72)
            {
              OUTLINED_FUNCTION_391_0();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v27)
            {
              OUTLINED_FUNCTION_391_0();
              swift_arrayInitWithTakeBackToFront();
            }

            v70(&v27[v69], v175, v71);
            v1 = v174;
          }

          ++v67;
          v27 -= v182;
          v53 -= v182;
          v68 += v182;
          v73 = v67 < v2--;
        }

        while (v73);
        v29 = v191;
        OUTLINED_FUNCTION_113_3();
      }

      else
      {
        v29 = v52;
        OUTLINED_FUNCTION_113_3();
        v1 = v174;
      }

      v28 = v172;
    }

LABEL_40:
    v74 = v183[1];
    if (v29 < v74)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_149;
      }

      if (v29 - v28 < v167)
      {
        break;
      }
    }

LABEL_63:
    if (v29 < v28)
    {
      goto LABEL_148;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v180 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v151 = OUTLINED_FUNCTION_21();
      v27 = sub_227B63228(v151, v152, v153, v27);
    }

    v108 = *(v27 + 2);
    v107 = *(v27 + 3);
    v109 = v108 + 1;
    if (v108 >= v107 >> 1)
    {
      v27 = sub_227B63228((v107 > 1), v108 + 1, 1, v27);
    }

    *(v27 + 2) = v109;
    v110 = v27 + 32;
    v111 = &v27[16 * v108 + 32];
    v112 = v180;
    *v111 = v28;
    v111[1] = v112;
    v191 = *v171;
    if (!v191)
    {
      goto LABEL_158;
    }

    if (v108)
    {
      while (1)
      {
        v113 = v109 - 1;
        v114 = &v110[16 * v109 - 16];
        v115 = &v27[16 * v109];
        if (v109 >= 4)
        {
          break;
        }

        if (v109 == 3)
        {
          v116 = *(v27 + 4);
          v117 = *(v27 + 5);
          v126 = __OFSUB__(v117, v116);
          v118 = v117 - v116;
          v119 = v126;
LABEL_83:
          if (v119)
          {
            goto LABEL_135;
          }

          v131 = *v115;
          v130 = *(v115 + 1);
          v132 = __OFSUB__(v130, v131);
          v133 = v130 - v131;
          v134 = v132;
          if (v132)
          {
            goto LABEL_138;
          }

          v135 = *(v114 + 1);
          v136 = v135 - *v114;
          if (__OFSUB__(v135, *v114))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v133, v136))
          {
            goto LABEL_143;
          }

          if (v133 + v136 >= v118)
          {
            if (v118 < v136)
            {
              v113 = v109 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v109 < 2)
        {
          goto LABEL_137;
        }

        v138 = *v115;
        v137 = *(v115 + 1);
        v126 = __OFSUB__(v137, v138);
        v133 = v137 - v138;
        v134 = v126;
LABEL_98:
        if (v134)
        {
          goto LABEL_140;
        }

        v140 = *v114;
        v139 = *(v114 + 1);
        v126 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v126)
        {
          goto LABEL_142;
        }

        if (v141 < v133)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v113 - 1 >= v109)
        {
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v183)
        {
          goto LABEL_155;
        }

        v145 = v27;
        v146 = &v110[16 * v113 - 16];
        v27 = *v146;
        v147 = v110;
        v148 = v113;
        v149 = &v110[16 * v113];
        v150 = *(v149 + 1);
        sub_227C4295C(*v183 + *(v181 + 72) * *v146, *v183 + *(v181 + 72) * *v149, *v183 + *(v181 + 72) * v150, v191, v103, v104, v105, v106, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        if (v2)
        {
          goto LABEL_128;
        }

        if (v150 < v27)
        {
          goto LABEL_130;
        }

        v2 = *(v145 + 2);
        if (v148 > v2)
        {
          goto LABEL_131;
        }

        *v146 = v27;
        *(v146 + 1) = v150;
        if (v148 >= v2)
        {
          goto LABEL_132;
        }

        v109 = v2 - 1;
        memmove(v149, v149 + 16, 16 * (v2 - 1 - v148));
        v27 = v145;
        *(v145 + 2) = v2 - 1;
        v73 = v2 > 2;
        v2 = 0;
        v110 = v147;
        if (!v73)
        {
          goto LABEL_112;
        }
      }

      v120 = &v110[16 * v109];
      v121 = *(v120 - 8);
      v122 = *(v120 - 7);
      v126 = __OFSUB__(v122, v121);
      v123 = v122 - v121;
      if (v126)
      {
        goto LABEL_133;
      }

      v125 = *(v120 - 6);
      v124 = *(v120 - 5);
      v126 = __OFSUB__(v124, v125);
      v118 = v124 - v125;
      v119 = v126;
      if (v126)
      {
        goto LABEL_134;
      }

      v127 = *(v115 + 1);
      v128 = v127 - *v115;
      if (__OFSUB__(v127, *v115))
      {
        goto LABEL_136;
      }

      v126 = __OFADD__(v118, v128);
      v129 = v118 + v128;
      if (v126)
      {
        goto LABEL_139;
      }

      if (v129 >= v123)
      {
        v143 = *v114;
        v142 = *(v114 + 1);
        v126 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v126)
        {
          goto LABEL_147;
        }

        if (v118 < v144)
        {
          v113 = v109 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v25 = v183[1];
    v26 = v180;
    v22 = v181;
    v1 = v174;
    if (v180 >= v25)
    {
      goto LABEL_116;
    }
  }

  v75 = v28 + v167;
  if (__OFADD__(v28, v167))
  {
    goto LABEL_150;
  }

  if (v75 >= v74)
  {
    v75 = v183[1];
  }

  if (v75 < v28)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    v27 = sub_227B65968(v27);
LABEL_118:
    v158 = v27 + 16;
    v159 = *(v27 + 2);
    while (v159 >= 2)
    {
      if (!*v183)
      {
        goto LABEL_156;
      }

      v160 = v27;
      v27 += 16 * v159;
      v161 = *v27;
      v162 = &v158[2 * v159];
      v163 = v162[1];
      sub_227C4295C(*v183 + *(v181 + 72) * *v27, *v183 + *(v181 + 72) * *v162, *v183 + *(v181 + 72) * v163, v194, v154, v155, v156, v157, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      if (v2)
      {
        break;
      }

      if (v163 < v161)
      {
        goto LABEL_144;
      }

      if (v159 - 2 >= *v158)
      {
        goto LABEL_145;
      }

      *v27 = v161;
      *(v27 + 1) = v163;
      v164 = *v158 - v159;
      if (*v158 < v159)
      {
        goto LABEL_146;
      }

      v159 = *v158 - 1;
      memmove(v162, v162 + 2, 16 * v164);
      *v158 = v159;
      v27 = v160;
    }

    goto LABEL_128;
  }

  if (v29 == v75)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_426_0();
  v76 = *v183;
  v77 = *(v181 + 72);
  v191 = *(v181 + 16);
  v78 = v76 + v77 * (v29 - 1);
  v187 = -v77;
  v172 = v28;
  v79 = v28 - v29;
  v188 = v76;
  v176 = v77;
  v177 = v80;
  v81 = v76 + v29 * v77;
  v82 = v190;
  v27 = v186;
LABEL_49:
  v179 = v79;
  v180 = v29;
  v178 = v81;
  v182 = v78;
  while (1)
  {
    v83 = OUTLINED_FUNCTION_269();
    v84 = v191;
    v191(v83);
    v85 = OUTLINED_FUNCTION_236();
    v84(v85);
    v86 = sub_227D49848();
    v87 = v82;
    v2 = v1;
    v89 = v88;
    sub_227D49848();
    OUTLINED_FUNCTION_400_0();
    if (v43 && v89 == v91)
    {

      v99 = *v193;
      v100 = OUTLINED_FUNCTION_261_0();
      (v99)(v100);
      v101 = OUTLINED_FUNCTION_200();
      (v99)(v101);
      v1 = v2;
      goto LABEL_61;
    }

    v93 = OUTLINED_FUNCTION_373_0(v86, v89, v90);

    v94 = *v193;
    v95 = OUTLINED_FUNCTION_261_0();
    (v94)(v95);
    v94(v87, v27);
    v1 = v2;
    if ((v93 & 1) == 0)
    {
      v82 = v190;
LABEL_61:
      v29 = v180 + 1;
      v78 = v176 + v182;
      v79 = v179 - 1;
      v81 = v176 + v178;
      if ((v180 + 1) == v177)
      {
        v29 = v177;
        OUTLINED_FUNCTION_113_3();
        v28 = v172;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    if (!v188)
    {
      break;
    }

    v2 = v192;
    v96 = *v192;
    v97 = OUTLINED_FUNCTION_269();
    (v96)(v97);
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_391_0();
    swift_arrayInitWithTakeFrontToBack();
    v98 = OUTLINED_FUNCTION_127_1();
    (v96)(v98);
    v78 = &v187[v78];
    v81 += v187;
    v72 = __CFADD__(v79++, 1);
    v82 = v190;
    if (v72)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

void sub_227C4295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_227D49AB8();
  v31 = MEMORY[0x28223BE20](v30);
  v93 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v88 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v95 = &v88 - v36;
  MEMORY[0x28223BE20](v35);
  v40 = *(v39 + 72);
  if (!v40)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v41 = v27 - v29 == 0x8000000000000000 && v40 == -1;
  if (v41)
  {
    goto LABEL_72;
  }

  v42 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v40 == -1)
  {
    goto LABEL_73;
  }

  v94 = &v88 - v38;
  v44 = (v27 - v29) / v40;
  a10 = v29;
  v100 = v23;
  v96 = (v37 + 8);
  v97 = (v37 + 16);
  v45 = v42 / v40;
  if (v44 < v42 / v40)
  {
    sub_227C4186C(v29, (v27 - v29) / v40, v23, MEMORY[0x277D0CB78]);
    v93 = (v23 + v44 * v40);
    v99 = v93;
    v91 = v25;
    while (1)
    {
      if (v23 >= v93 || v27 >= v25)
      {
        goto LABEL_70;
      }

      v47 = *v97;
      v48 = v94;
      v49 = v27;
      (*v97)(v94, v27, v30);
      v98 = v23;
      v47();
      v50 = sub_227D49848();
      v52 = v51;
      v53 = sub_227D49848();
      if (v50 == v53 && v52 == v54)
      {

        v61 = *v96;
        v62 = OUTLINED_FUNCTION_132_0();
        (v61)(v62);
        v61(v48, v30);
      }

      else
      {
        v56 = OUTLINED_FUNCTION_373_0(v50, v52, v53);

        v57 = *v96;
        v58 = OUTLINED_FUNCTION_132_0();
        (v57)(v58);
        v57(v48, v30);
        if (v56)
        {
          v59 = v49;
          v27 = (v49 + v40);
          if (v29 < v49 || v29 >= v27)
          {
            OUTLINED_FUNCTION_209_2();
            swift_arrayInitWithTakeFrontToBack();
            v25 = v91;
          }

          else
          {
            v25 = v91;
            if (v29 != v59)
            {
              OUTLINED_FUNCTION_209_2();
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v98;
          goto LABEL_40;
        }
      }

      v23 = &v98[v40];
      v63 = v29 < v98 || v29 >= v23;
      v27 = v49;
      if (v63)
      {
        OUTLINED_FUNCTION_209_2();
        swift_arrayInitWithTakeFrontToBack();
        v25 = v91;
      }

      else
      {
        v25 = v91;
        if (v29 != v98)
        {
          OUTLINED_FUNCTION_209_2();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v100 = v23;
LABEL_40:
      v29 += v40;
      a10 = v29;
    }
  }

  v64 = OUTLINED_FUNCTION_167_2();
  sub_227C4186C(v64, v65, v23, v66);
  v98 = v23;
  v67 = v23 + v45 * v40;
  v68 = -v40;
  v69 = v67;
  v95 = -v40;
LABEL_42:
  v94 = v27;
  v91 = &v27[v68];
  v70 = v25;
  v89 = v69;
  while (1)
  {
    if (v67 <= v98)
    {
      a10 = v94;
      v99 = v69;
      goto LABEL_70;
    }

    if (v94 <= v29)
    {
      break;
    }

    v90 = v69;
    v71 = v67 + v68;
    v72 = *v97;
    v73 = OUTLINED_FUNCTION_93_0();
    (v72)(v73);
    (v72)(v93, v91, v30);
    sub_227D49848();
    v75 = v74;
    sub_227D49848();
    OUTLINED_FUNCTION_400_0();
    if (v41 && v75 == v76)
    {
      v81 = 0;
    }

    else
    {
      v78 = OUTLINED_FUNCTION_355_0();
      v81 = OUTLINED_FUNCTION_373_0(v78, v79, v80);
    }

    v82 = &v70[v95];
    v83 = *v96;
    (*v96)(v93, v30);
    v83(v92, v30);
    if (v81)
    {
      v85 = v70 < v94 || v82 >= v94;
      v25 = v82;
      if (v85)
      {
        v27 = v91;
        OUTLINED_FUNCTION_209_2();
        swift_arrayInitWithTakeFrontToBack();
        v69 = v90;
        v68 = v95;
      }

      else
      {
        v87 = v90;
        v86 = v91;
        v69 = v90;
        v41 = v70 == v94;
        v27 = v91;
        v68 = v95;
        if (!v41)
        {
          OUTLINED_FUNCTION_209_2();
          swift_arrayInitWithTakeBackToFront();
          v27 = v86;
          v69 = v87;
        }
      }

      goto LABEL_42;
    }

    if (v70 < v67 || v82 >= v67)
    {
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_209_2();
      swift_arrayInitWithTakeFrontToBack();
      v70 = v82;
      v67 = v71;
      v69 = v71;
      v68 = v95;
    }

    else
    {
      v69 = v71;
      v41 = v67 == v70;
      v70 = v82;
      v67 = v71;
      v68 = v95;
      if (!v41)
      {
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_209_2();
        swift_arrayInitWithTakeBackToFront();
        v70 = v82;
        v67 = v71;
        v69 = v71;
      }
    }
  }

  a10 = v94;
  v99 = v89;
LABEL_70:
  sub_227C42F20(&a10, &v100, &v99);
  OUTLINED_FUNCTION_352();
}