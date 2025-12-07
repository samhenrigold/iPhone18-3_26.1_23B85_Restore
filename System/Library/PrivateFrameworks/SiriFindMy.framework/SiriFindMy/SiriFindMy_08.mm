uint64_t sub_266CD0C5C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBB98);
  v1 = __swift_project_value_buffer(v0, qword_2800CBB98);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CD0D24(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 216), *(v1 + 240));
  sub_266C9C76C(*v3, a1);
  sub_266CD0D74();
  v5 = v4;

  return v5;
}

void sub_266CD0D74()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_11_3(v3);
  v52 = v5;
  MEMORY[0x28223BE20](v4);
  v51 = v6;
  OUTLINED_FUNCTION_30_7();
  v53 = v7;
  v8 = sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v58 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCA0, &qword_266DB5330);
  OUTLINED_FUNCTION_0_2();
  v55 = v15;
  v56 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_42_1(v17);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCA8, &qword_266DB5338);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_10();
  v50 = v1;
  sub_266C233D0(v1 + 40, v59);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_2800C9128);
  }

  v19 = qword_28156EF98;
  sub_266DA946C();
  v49 = v19;
  sub_266DA945C();
  v20 = *(v58 + 8);
  v21 = v20(v13, v8);
  v48 = v20;
  v58 += 8;
  v47 = v8;
  MEMORY[0x28223BE20](v21);
  v46[-2] = v59;
  v60[0] = sub_266D69B00(sub_266C7ACB4, &v46[-4], v0);
  sub_266C233D0(v59, &v61);
  v60[1] = v0;

  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  v20(v13, v8);
  __swift_destroy_boxed_opaque_existential_0(v59);
  v22 = v50;
  sub_266CD0570();
  v24 = v23;
  v46[1] = v23;
  sub_266C7AFE4(v60);
  v60[0] = v24;
  OUTLINED_FUNCTION_0_51();
  v25 = v53;
  sub_266CD5400(v22, v53, v26);
  OUTLINED_FUNCTION_39_3();
  v29 = v28 & ~v27;
  v30 = swift_allocObject();
  sub_266CD5330(v25, v30 + v29);
  OUTLINED_FUNCTION_26_0();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_266CD5C18;
  *(v31 + 24) = v30;
  v53 = sub_266DA966C();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A0, &qword_266DAFC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAEC8, &qword_266DB5350);
  v32 = MEMORY[0x277CBCD90];
  sub_266C230E8(&qword_2800CAB18, &qword_2800CAB10, &unk_266DB5340, MEMORY[0x277CBCD90]);
  sub_266C230E8(&qword_2800CAED0, &qword_2800CAEC8, &qword_266DB5350, v32);
  v33 = v54;
  sub_266DA98DC();

  sub_266DA946C();
  v35 = v55;
  v34 = v56;
  (*(v55 + 16))(v2, v33, v56);
  v36 = v57;
  sub_266DA946C();
  v48(v13, v47);
  (*(v35 + 8))(v33, v34);
  OUTLINED_FUNCTION_14_17(v2 + v36[11]);
  *(v2 + v36[9]) = &dword_266C08000;
  v37 = v49;
  *(v2 + v36[10]) = v49;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_32_5();
  sub_266C230E8(v38, v39, v40, v41);
  v42 = v37;
  sub_266DA97EC();
  OUTLINED_FUNCTION_32_5();
  sub_266C1825C(v43, v44, v45);
  OUTLINED_FUNCTION_5();
}

void sub_266CD1320()
{
  OUTLINED_FUNCTION_6();
  v85 = v0;
  v3 = v2;
  v4 = sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  v12 = OUTLINED_FUNCTION_11_3(v11);
  v76 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_7();
  v17 = v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCB8, &qword_266DB5358);
  OUTLINED_FUNCTION_0_2();
  v78 = v18;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v20);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCC0, &qword_266DB5360);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_12();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCC8, &qword_266DB5368);
  OUTLINED_FUNCTION_0_2();
  v82 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10();
  v81 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCD0, &qword_266DB5370);
  OUTLINED_FUNCTION_0_2();
  v83 = v26;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_42_1(v28);
  v86 = v3;
  v87 = sub_266CD4BAC;
  v88 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCD8, &qword_266DB5378);
  sub_266DAAF3C();
  v89[3] = sub_266CD4C44;
  v89[4] = 0;
  v89[5] = sub_266CD5CBC;
  v89[6] = 0;
  v89[7] = sub_266CD5CC8;
  v89[8] = 0;
  v29 = sub_266CB87D8(v89);
  if (*(v29 + 16))
  {
    v75 = v3;
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27(&qword_2800C92A0);
    }

    v71 = v25;
    v72 = v10;
    v73 = v6;
    v74 = v4;
    v30 = sub_266DA94AC();
    v31 = OUTLINED_FUNCTION_46_3(v30, qword_2800CBB98);
    v32 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v32))
    {
      v33 = OUTLINED_FUNCTION_11();
      *v33 = 0;
      _os_log_impl(&dword_266C08000, v31, v32, "Checking for nearby devices", v33, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266C50034(v29, *(v85 + 200));

    sub_266CEFC08();
    v35 = v34;

    OUTLINED_FUNCTION_0_51();
    sub_266CD5400(v85, v17, v36);
    v37 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v70 = v37 + v15;
    v38 = swift_allocObject();
    v76 = v37;
    sub_266CD5330(v17, v38 + v37);
    v86 = v35;
    OUTLINED_FUNCTION_26_0();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_266CD5CF8;
    *(v39 + 24) = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCE0, &qword_266DB5380);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCE8, &qword_266DB5388);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v40, &qword_2800CBCE0, &qword_266DB5380, v41);
    sub_266DA984C();

    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_2800C9128);
    }

    v42 = qword_28156EF98;
    sub_266DA946C();
    (*(v78 + 16))(v1, v77, v79);
    v43 = v80;
    sub_266DA946C();
    v44 = OUTLINED_FUNCTION_40_2();
    v45(v44, v74);
    (*(v78 + 8))(v77, v79);
    OUTLINED_FUNCTION_14_17(v1 + *(v80 + 44));
    *(v1 + *(v80 + 36)) = &dword_266C08000;
    *(v1 + *(v43 + 40)) = v42;
    OUTLINED_FUNCTION_0_51();
    sub_266CD5400(v85, v17, v46);
    v47 = swift_allocObject();
    sub_266CD5330(v17, v47 + v76);
    *(v47 + ((v70 + 7) & 0xFFFFFFFFFFFFFFF8)) = v75;

    v48 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A0, &qword_266DAFC70);
    OUTLINED_FUNCTION_0_13();
    sub_266C230E8(v49, &qword_2800CBCC0, &qword_266DB5360, v50);
    sub_266DA984C();

    sub_266C1825C(v1, &qword_2800CBCC0, &qword_266DB5360);
    OUTLINED_FUNCTION_4_9();
    sub_266C230E8(v51, v52, v53, v54);
    sub_266CD5DF0();
    sub_266DA993C();
    (*(v82 + 8))(v81, v84);
    v55 = OUTLINED_FUNCTION_23_9(&qword_2800CBD10, &qword_2800CBCD0, &qword_266DB5370);
    OUTLINED_FUNCTION_48_4(v55, v55);
    v56 = OUTLINED_FUNCTION_22_9();
    v57(v56);
  }

  else
  {

    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27(&qword_2800C92A0);
    }

    v58 = sub_266DA94AC();
    v59 = OUTLINED_FUNCTION_46_3(v58, qword_2800CBB98);
    v60 = sub_266DAAB0C();
    if (os_log_type_enabled(v59, v60))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v61, v62, "Skipping nearby scan");
      OUTLINED_FUNCTION_6_1();
    }

    v63 = sub_266DAA6CC();
    v64 = sub_266DAABDC();
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_2800C9128);
    }

    sub_266DA946C();
    OUTLINED_FUNCTION_36_7(v64, &dword_266C08000);
    v65 = *(v6 + 8);
    v66 = v65(v10, v4);
    MEMORY[0x28223BE20](v66);
    *(&v69 - 4) = v85;
    *(&v69 - 3) = v63;
    *(&v69 - 16) = 0;
    v67 = sub_266D69C84(sub_266CD5E44, (&v69 - 6), v3);
    v68 = sub_266DAABCC();
    sub_266DA946C();
    OUTLINED_FUNCTION_36_7(v68, &dword_266C08000);
    v65(v10, v4);

    sub_266CD54B0(v67);
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD1CC4()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  OUTLINED_FUNCTION_4_3(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v119 = v9;
  v10 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  v11 = *(v10 - 8);
  v89 = v10 - 8;
  v102 = v11;
  v101 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_15_0(v12);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBBE8, &qword_266DB52B0);
  OUTLINED_FUNCTION_0_2();
  v93 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_12();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBBF0, &qword_266DB52B8);
  OUTLINED_FUNCTION_0_2();
  v95 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBBF8, &qword_266DB52C0);
  OUTLINED_FUNCTION_0_2();
  v100 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC00, &qword_266DB52C8);
  OUTLINED_FUNCTION_0_2();
  v107 = v22;
  v108 = v23;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v25);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC08, &qword_266DB52D0);
  OUTLINED_FUNCTION_0_2();
  v111 = v26;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v28);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC10, &qword_266DB52D8);
  OUTLINED_FUNCTION_0_2();
  v112 = v29;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_42_1(v31);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC18, &qword_266DB52E0);
  OUTLINED_FUNCTION_0_2();
  v118 = v32;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10();
  v104 = v34;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC20, &qword_266DB52E8);
  OUTLINED_FUNCTION_0_2();
  v117 = v35;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v105 = v37;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC28, &unk_266DB52F0);
  OUTLINED_FUNCTION_0_2();
  v116 = v38;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10();
  v106 = v40;
  v120 = *(*__swift_project_boxed_opaque_existential_1(v0, v0[3]) + 16);
  OUTLINED_FUNCTION_26_0();
  v41 = swift_allocObject();
  *(v41 + 16) = v6;
  *(v41 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC30, &unk_266DB7460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB78, &qword_266DB5300);
  v42 = MEMORY[0x277CBCD90];
  sub_266C230E8(&unk_28156F0A8, &qword_2800CBC30, &unk_266DB7460, MEMORY[0x277CBCD90]);
  OUTLINED_FUNCTION_32_5();
  sub_266DA984C();

  v43 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  OUTLINED_FUNCTION_4_9();
  v91 = v45;
  sub_266C230E8(v46, &qword_2800CBBE8, &qword_266DB52B0, v47);
  v90 = MEMORY[0x277CBCE80];
  OUTLINED_FUNCTION_43_3();
  sub_266C230E8(v48, v49, v50, v51);
  v52 = v92;
  sub_266DA987C();
  (*(v93 + 8))(v1, v52);
  type metadata accessor for Location(0);
  v93 = MEMORY[0x277CBCC40];
  sub_266C230E8(&qword_2800CBC50, &qword_2800CBBF0, &qword_266DB52B8, MEMORY[0x277CBCC40]);
  v53 = v94;
  sub_266DA97FC();
  (*(v95 + 8))(v18, v53);
  OUTLINED_FUNCTION_0_51();
  v54 = v97;
  sub_266CD5400(v0, v97, v55);
  OUTLINED_FUNCTION_39_3();
  v58 = v57 & ~v56;
  v59 = swift_allocObject();
  sub_266CD5330(v54, v59 + v58);
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC58, &unk_266DB5310);
  sub_266C230E8(&qword_2800CBC60, &qword_2800CBBF8, &qword_266DB52C0, MEMORY[0x277CBCB10]);
  sub_266C230E8(&qword_2800CBC68, &qword_2800CBC58, &unk_266DB5310, v42);
  v60 = v96;
  v61 = v98;
  sub_266DA996C();

  v62 = OUTLINED_FUNCTION_40_2();
  v63(v62, v61);
  v120 = *(v2 + *(v89 + 64));
  v64 = v120;
  v65 = sub_266DAAB1C();
  v66 = v119;
  __swift_storeEnumTagSinglePayload(v119, 1, 1, v65);
  sub_266C22FD4();
  OUTLINED_FUNCTION_15_16();
  sub_266C230E8(v67, &qword_2800CBC00, &qword_266DB52C8, v68);
  sub_266C23060();
  v69 = v64;
  v70 = v99;
  v71 = v107;
  sub_266DA98EC();
  sub_266C1825C(v66, &qword_2800CC360, &qword_266DB00D0);

  (*(v108 + 8))(v60, v71);
  type metadata accessor for SpeakableLocation();
  sub_266C230E8(&qword_2800CBC78, &qword_2800CBC08, &qword_266DB52D0, MEMORY[0x277CBCCE8]);
  v72 = v103;
  v73 = v109;
  sub_266DA984C();
  (*(v111 + 8))(v70, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AD0, &unk_266DB32B0);
  v74 = v104;
  v75 = v110;
  sub_266DA95EC();
  (*(v112 + 8))(v72, v75);
  v76 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
  sub_266C230E8(&qword_2800CBC80, &qword_2800CBC18, &qword_266DB52E0, v91);
  OUTLINED_FUNCTION_43_3();
  sub_266C230E8(v78, v79, v80, v90);
  v81 = v105;
  v82 = v115;
  sub_266DA987C();
  (*(v118 + 8))(v74, v82);
  sub_266C230E8(&qword_2800CBC88, &qword_2800CBC20, &qword_266DB52E8, v93);
  v83 = v114;
  sub_266DA988C();
  (*(v117 + 8))(v81, v83);
  OUTLINED_FUNCTION_17_17();
  v86 = sub_266C230E8(v84, &qword_2800CBC28, &unk_266DB52F0, v85);
  OUTLINED_FUNCTION_48_4(v86, v86);
  v87 = OUTLINED_FUNCTION_22_9();
  v88(v87);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

uint64_t *sub_266CD2878@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  v8 = *result;
  v9 = *(*result + 16);
  for (i = *result + 32; ; i += 40)
  {
    if (v9 == v7)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    sub_266C233D0(i, &v16);
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    if ((*(v12 + 16))(v11, v12) == a2 && v13 == a3)
    {

      return sub_266C0B0D8(&v16, a4);
    }

    v15 = sub_266DAB17C();

    if (v15)
    {
      return sub_266C0B0D8(&v16, a4);
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v16);
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_266CD29F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-1] - v5;
  if (*(a1 + 24))
  {
    sub_266C67BE8(a1, v12, &qword_2800CAB78, &qword_266DB5300);
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v8 + 104))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v9 = type metadata accessor for Location(0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  }

  return sub_266CD5AB4(v6, a2);
}

void sub_266CD2B04(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a2 + 256), *(a2 + 280));
  sub_266CD8ED0();
  *a3 = v4;
}

uint64_t sub_266CD2B54@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2800C92A0 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CBB98);
  v3 = sub_266DA948C();
  v4 = sub_266DAAAEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Timed out waiting for device to have a geocoded location", v5, 2u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  sub_266CD545C();
  result = swift_allocError();
  *a1 = result;
  return result;
}

id sub_266CD2C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Location(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpeakableLocation();
  sub_266CD5400(a1, v6, type metadata accessor for Location);
  result = sub_266D6CE4C(v6);
  *a2 = result;
  return result;
}

id sub_266CD2D00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  nullsub_1();
  *a2 = v3;

  return v5;
}

uint64_t sub_266CD2D9C@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_266DA947C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v7 = *(v4 + 8);
  v7(v6, v3);
  v8 = *__swift_project_boxed_opaque_existential_1((v1 + 120), *(v1 + 144));
  KeyPath = swift_getKeyPath();
  LOBYTE(v8) = sub_266C68428(KeyPath, 1346981190, 0xE400000000000000, v8);

  *a1 = 0;
  a1[1] = (v8 & 1) == 0;
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  return (v7)(v6, v3);
}

void sub_266CD2F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6();
  v15 = v12;
  sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v63 = v17;
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE28, &qword_266DB5440);
  OUTLINED_FUNCTION_0_2();
  v62 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE30, &qword_266DB5448);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_10();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE38, &qword_266DB5450);
  OUTLINED_FUNCTION_0_2();
  v30 = v29;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_13();
  if (sub_266D65C48() && (sub_266CD4540(), (v32 & 1) == 0))
  {
    v60 = v30;
    v61 = v28;
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27(&qword_2800C92A0);
    }

    v39 = sub_266DA94AC();
    v40 = OUTLINED_FUNCTION_46_3(v39, qword_2800CBB98);
    v41 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v41))
    {
      v42 = OUTLINED_FUNCTION_11();
      *v42 = 0;
      _os_log_impl(&dword_266C08000, v40, v41, "Waiting for family update", v42, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v65 = *(*__swift_project_boxed_opaque_existential_1(v15, v15[3]) + 24);
    v43 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_43_3();
    sub_266C230E8(v45, v46, v47, v48);
    sub_266DA988C();
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_2800C9128);
    }

    v49 = qword_28156EF98;
    sub_266DA946C();
    v50 = v62;
    (*(v62 + 16))(v14, v25, v21);
    sub_266DA946C();
    (*(v63 + 8))(v20, v64);
    (*(v50 + 8))(v25, v21);
    OUTLINED_FUNCTION_14_17(v14 + v26[11]);
    *(v14 + v26[9]) = &dword_266C08000;
    *(v14 + v26[10]) = v49;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_32_5();
    sub_266C230E8(v51, v52, v53, v54);
    sub_266CD5DF0();
    v55 = v49;
    sub_266DA993C();
    OUTLINED_FUNCTION_32_5();
    sub_266C1825C(v56, v57, v58);
    OUTLINED_FUNCTION_23_9(&qword_2800CBE50, &qword_2800CBE38, &qword_266DB5450);
    v59 = v61;
    sub_266DA97EC();
    (*(v60 + 8))(v13, v59);
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_5();
  }

  else
  {
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27(&qword_2800C92A0);
    }

    v33 = sub_266DA94AC();
    v34 = OUTLINED_FUNCTION_46_3(v33, qword_2800CBB98);
    v35 = sub_266DAAB0C();
    if (os_log_type_enabled(v34, v35))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v36, v37, "Skipping wait for family update");
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_5();

    sub_266CD56C0();
  }
}

void sub_266CD344C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  v6 = OUTLINED_FUNCTION_11_3(v5);
  v74 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_7();
  v75 = v10;
  sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v72 = v12;
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_42_1(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDF0, &qword_266DB5420);
  OUTLINED_FUNCTION_0_2();
  v71 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v19 = v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDF8, &qword_266DB5428);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_10();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE00, &qword_266DB5430);
  OUTLINED_FUNCTION_0_2();
  v79 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10();
  v77 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE08, &qword_266DB5438);
  OUTLINED_FUNCTION_0_2();
  v80 = v26;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  v78 = v28;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v29 = sub_266DAA15C();
  v30 = sub_266C6A6CC(v29);

  v31 = *(v30 + 16);

  v76 = v4;
  if (v31 || sub_266D65D00())
  {
    v32 = sub_266CD46BC();
    v33 = sub_266CD4758(v32, v4);

    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = MEMORY[0x277D84F90];
  }

  if (*(v33 + 16))
  {
    sub_266CD58A4(v33);
  }

  else
  {

    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27(&qword_2800C92A0);
    }

    v70[1] = v25;
    v35 = sub_266DA94AC();
    v36 = OUTLINED_FUNCTION_46_3(v35, qword_2800CBB98);
    v37 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v34;
      _os_log_impl(&dword_266C08000, v36, v37, "Waiting for refresh (needsItemWait: %{BOOL}d)", v38, 8u);
      OUTLINED_FUNCTION_6_1();
    }

    *&v82[0] = *(*__swift_project_boxed_opaque_existential_1(v2, v2[3]) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC30, &unk_266DB7460);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v39, &qword_2800CBC30, &unk_266DB7460, v40);
    sub_266DA988C();
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_2800C9128);
    }

    v41 = qword_28156EF98;
    sub_266DA946C();
    v42 = v71;
    (*(v71 + 16))(v1, v19, v15);
    sub_266DA946C();
    v43 = OUTLINED_FUNCTION_40_2();
    v44(v43);
    (*(v42 + 8))(v19, v15);
    OUTLINED_FUNCTION_14_17(v1 + v20[11]);
    *(v1 + v20[9]) = &dword_266C08000;
    *(v1 + v20[10]) = v41;
    OUTLINED_FUNCTION_0_51();
    v45 = v75;
    sub_266CD5400(v2, v75, v46);
    sub_266CD5F1C(v76, v82);
    OUTLINED_FUNCTION_39_3();
    v49 = v48 & ~v47;
    v50 = swift_allocObject();
    sub_266CD5330(v45, v50 + v49);
    v51 = v50 + ((v9 + v49 + 7) & 0xFFFFFFFFFFFFFFF8);
    v52 = v82[1];
    *v51 = v82[0];
    *(v51 + 16) = v52;
    *(v51 + 32) = v82[2];
    *(v51 + 48) = v83;
    v53 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v54, v55, v56, v57);
    v58 = v77;
    sub_266DA984C();

    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v59, v60, v61);
    OUTLINED_FUNCTION_4_9();
    sub_266C230E8(v62, v63, v64, v65);
    sub_266CD5DF0();
    v66 = v81;
    sub_266DA98FC();
    (*(v79 + 8))(v58, v66);
    v67 = sub_266C230E8(&qword_2800CBE20, &qword_2800CBE08, &qword_266DB5438, MEMORY[0x277CBCD08]);
    OUTLINED_FUNCTION_48_4(v67, v67);
    v68 = OUTLINED_FUNCTION_22_9();
    v69(v68);
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD3B54()
{
  OUTLINED_FUNCTION_6();
  v42 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  v7 = OUTLINED_FUNCTION_11_3(v6);
  v41 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD88, &qword_266DB53D8);
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_13();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD90, &qword_266DB53E0);
  OUTLINED_FUNCTION_0_2();
  v43 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_12();
  if (qword_2800C92A0 != -1)
  {
    OUTLINED_FUNCTION_4_27(&qword_2800C92A0);
  }

  v16 = sub_266DA94AC();
  v17 = OUTLINED_FUNCTION_46_3(v16, qword_2800CBB98);
  v18 = sub_266DAAADC();
  if (OUTLINED_FUNCTION_16_0(v18))
  {
    v19 = OUTLINED_FUNCTION_11();
    *v19 = 0;
    _os_log_impl(&dword_266C08000, v17, v18, "Validating SearchResults", v19, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  if (*(v3 + 16) || (v20 = *(sub_266CD46BC() + 16), , v20))
  {
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v3 = 3;
  }

  v46[7] = v3;
  v47 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD98, &qword_266DB53E8);
  sub_266DAB31C();
  OUTLINED_FUNCTION_0_51();
  sub_266CD5400(v42, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  sub_266CD5F1C(v5, v46);
  OUTLINED_FUNCTION_39_3();
  v25 = v24 & ~v23;
  v26 = swift_allocObject();
  sub_266CD5330(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  OUTLINED_FUNCTION_7_20(v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  OUTLINED_FUNCTION_16_14();
  sub_266C230E8(v27, v28, v29, v30);
  OUTLINED_FUNCTION_2_34();
  sub_266C230E8(v31, &qword_2800CAB10, &unk_266DB5340, v32);
  v33 = v44;
  sub_266DA98DC();

  (*(v12 + 8))(v1, v33);
  OUTLINED_FUNCTION_15_16();
  v38 = sub_266C230E8(v34, v35, v36, v37);
  OUTLINED_FUNCTION_48_4(v38, v38);
  v39 = OUTLINED_FUNCTION_22_9();
  v40(v39);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD3F60()
{
  OUTLINED_FUNCTION_6();
  v71 = v0;
  v4 = v3;
  v5 = sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDB0, &qword_266DB53F0);
  OUTLINED_FUNCTION_0_2();
  v72 = v13;
  v73 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_12();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDB8, &qword_266DB53F8);
  OUTLINED_FUNCTION_0_2();
  v75 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDC0, &qword_266DB5400);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDC8, &qword_266DB5408);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_20_10();
  v25 = *(v4 + 16);
  if (v25)
  {
    v66 = v15;
    v67 = v11;
    v68 = v7;
    v69 = v5;
    v70 = v4;
    v26 = v4 + 32;
    v27 = v25 + 1;
    while (--v27)
    {
      v28 = v26 + 40;
      sub_266C233D0(v26, v76);
      v30 = v77;
      v29 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v31 = (*(v29 + 120))(v30, v29);
      __swift_destroy_boxed_opaque_existential_0(v76);
      v26 = v28;
      if ((v31 & 1) == 0)
      {
        v4 = v70;
        goto LABEL_6;
      }
    }

    v76[0] = *(*__swift_project_boxed_opaque_existential_1((v71 + 80), *(v71 + 104)) + OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_statePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CAFC8, &qword_266DB5410);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v36, &unk_2800CAFC8, &qword_266DB5410, v37);
    sub_266DA988C();
    OUTLINED_FUNCTION_26_0();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_266CD4A00;
    *(v38 + 24) = 0;
    type metadata accessor for CBManagerState(0);
    OUTLINED_FUNCTION_17_17();
    sub_266C230E8(v39, v40, v41, v42);
    v43 = v73;
    sub_266DA984C();

    (*(v72 + 8))(v1, v43);
    v44 = swift_allocObject();
    *(v44 + 16) = v70;
    OUTLINED_FUNCTION_4_9();
    sub_266C230E8(v45, v46, v47, v48);
    sub_266CD5DF0();

    v49 = v66;
    sub_266DA993C();
    (*(v75 + 8))(v19, v49);
    v50 = &v22[*(v74 + 44)];
    *v50 = sub_266CD6250;
    v50[1] = v44;
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_2800C9128);
    }

    v51 = qword_28156EF98;
    sub_266DA946C();
    sub_266C67BE8(v22, v2, &qword_2800CBDC0, &qword_266DB5400);
    sub_266DA946C();
    v52 = OUTLINED_FUNCTION_40_2();
    v53(v52);
    OUTLINED_FUNCTION_43_3();
    sub_266C1825C(v54, v55, v56);
    OUTLINED_FUNCTION_14_17(v2 + v23[11]);
    *(v2 + v23[9]) = &dword_266C08000;
    *(v2 + v23[10]) = v51;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v57, v58, v59, v60);
    v61 = v51;
    sub_266DA97EC();
    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v62, v63, v64);
  }

  else
  {
LABEL_6:
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27(&qword_2800C92A0);
    }

    v32 = sub_266DA94AC();
    v33 = OUTLINED_FUNCTION_46_3(v32, qword_2800CBB98);
    v34 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v34))
    {
      v35 = OUTLINED_FUNCTION_11();
      *v35 = 0;
      _os_log_impl(&dword_266C08000, v33, v34, "Skipping bluetooth check", v35, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266CD58A4(v4);
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD4540()
{
  OUTLINED_FUNCTION_6();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266CFD7F8();
  v2 = v1;
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = (v1 + 88);
  while (1)
  {
    if (v4 == v3)
    {
LABEL_11:

LABEL_14:
      OUTLINED_FUNCTION_5();
      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v7 = *(v5 - 1);
    v6 = *v5;
    v8 = qword_2800C9158;

    swift_bridgeObjectRetain_n();
    if (v8 != -1)
    {
      swift_once();
    }

    if (v7 == qword_28156FC98 && v6 == unk_28156FCA0)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_14;
    }

    ++v3;
    v5 += 8;
    v10 = sub_266DAB17C();

    swift_bridgeObjectRelease_n();
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_266CD46BC()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = sub_266DAA15C();
  v2 = sub_266C6A6CC(v1);

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v3 = sub_266DAA16C();
  v4 = sub_266C6A6EC(v3);

  sub_266C3843C(v4);
  return v2;
}

uint64_t sub_266CD4758(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v16[1] = a2;
  v5 = sub_266DA947C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v9 = *(v6 + 8);
  v9(v8, v5);
  v16[0] = a1;
  v10 = sub_266D65D2C(a1);
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  v9(v8, v5);
  v11 = v3[23];
  v12 = v3[24];
  __swift_project_boxed_opaque_existential_1(v3 + 20, v11);
  if ((*(v12 + 8))(v11, v12))
  {
    if (qword_2800C92A0 != -1)
    {
      swift_once();
    }

    v13 = sub_266DA94AC();
    __swift_project_value_buffer(v13, qword_2800CBB98);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_266CFD7F8();
    sub_266C23798(v16[0], v10, v3 + 5, v14);
  }

  return v10;
}

uint64_t sub_266CD49C0@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_266CD4758(*a1, a2);
  *a3 = result;
  return result;
}

void sub_266CD4A00(uint64_t *a1)
{
  v1 = *a1;
  if (qword_2800C92A0 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CBB98);
  oslog = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = CBManagerState.description.getter(v1);
    v8 = sub_266C22A3C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_266C08000, oslog, v3, "Bluetooth state reported as %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D5F2480](v5, -1, -1);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }
}

uint64_t *sub_266CD4B54@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*result == 5)
  {
    v5 = a2;
  }

  else
  {
    v5 = 1;
  }

  *a3 = v5;
  *(a3 + 8) = v4 != 5;
  return result;
}

BOOL sub_266CD4BAC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return ((*(v2 + 96))(v1, v2) & 1) == 0;
}

BOOL sub_266CD4C04(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return SFMDevice.detectableNearby.getter(v1, v2);
}

uint64_t sub_266CD4C44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_266CD4C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  if (qword_2800C92A0 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  __swift_project_value_buffer(v9, qword_2800CBB98);
  sub_266CD5400(a2, v6, type metadata accessor for FMIPCoreDeviceSearcher);
  sub_266C33EE0(v7, v8);
  v10 = sub_266DA948C();
  v11 = sub_266DAAB0C();
  sub_266CD5EB4(v7, v8);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 134218242;
    v14 = *(sub_266C4F0B8() + 16);

    sub_266CD5EC0(v6);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v15 = sub_266CD4EA4(v7, v8);
    v17 = sub_266C22A3C(v15, v16, &v19);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_266C08000, v10, v11, "findNearby complete, %ld devices found. Final status %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D5F2480](v13, -1, -1);
    MEMORY[0x26D5F2480](v12, -1, -1);
  }

  else
  {
    sub_266CD5EC0(v6);
  }
}

uint64_t sub_266CD4EA4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0x737365636375732ELL;
  }

  sub_266DAADFC();
  MEMORY[0x26D5F1170](0xD000000000000014, 0x8000000266DC2B20);
  sub_266DAAEEC();
  return 0;
}

uint64_t sub_266CD4F48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v5 = sub_266DA947C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v11 = *(v6 + 8);
  v12 = v11(v8, v5);
  MEMORY[0x28223BE20](v12);
  v13 = v17;
  *(&v16 - 4) = v16;
  *(&v16 - 3) = v9;
  *(&v16 - 16) = v10;
  v14 = sub_266D69C84(sub_266CD63F4, (&v16 - 6), v13);
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  result = v11(v8, v5);
  *v18 = v14;
  return result;
}

id sub_266CD5148(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (((*(v8 + 96))(v7, v8) & 1) == 0)
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = (*(v11 + 32))(v10, v11);
    if (v13)
    {
      if ((v6 & 1) == 0)
      {
        v14 = sub_266CBD264(v12, v13, v5);

        if (v14 == 2 || (v14 & 1) == 0)
        {
          v9 = 2;
          goto LABEL_10;
        }

        goto LABEL_2;
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

LABEL_2:
  v9 = 1;
LABEL_10:
  v15 = v2[8];
  v16 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  SFMContactDataProvider.ownerContact(of:)(a1, v15, v16);
  __swift_project_boxed_opaque_existential_1(v3 + 27, v3[30]);
  sub_266D2E318();
  type metadata accessor for DeviceDetail();
  sub_266C233D0(a1, v24);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v19 = sub_266DAA16C();
  v20 = sub_266C6A6EC(v19);

  v21 = sub_266CDACBC(v20, v17, v18);

  return sub_266CC81C0(v24, v23, v9, v25, v21);
}

uint64_t sub_266CD5330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_266CD5394()
{
  v0 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_4_3(v0);
  OUTLINED_FUNCTION_38_5();

  sub_266CD2B04(v1, v2);
}

uint64_t sub_266CD5400(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_4_4();
  v5(v4);
  return a2;
}

unint64_t sub_266CD545C()
{
  result = qword_2800CBC98;
  if (!qword_2800CBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBC98);
  }

  return result;
}

uint64_t sub_266CD54B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD18, &qword_266DB5390);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD20, &qword_266DB5398);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v12[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A0, &qword_266DAFC70);
  sub_266DA977C();
  sub_266CD5DF0();
  sub_266DA976C();
  (*(v3 + 8))(v5, v2);
  sub_266C230E8(&qword_2800CBD28, &qword_2800CBD20, &qword_266DB5398, MEMORY[0x277CBCF40]);
  v10 = sub_266DA97EC();
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_266CD56C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE58, qword_266DB5460);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD30, &qword_266DB53A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_266DA977C();
  sub_266CD5DF0();
  sub_266DA976C();
  (*(v1 + 8))(v3, v0);
  sub_266C230E8(&qword_2800CBD60, &qword_2800CBD30, &qword_266DB53A0, MEMORY[0x277CBCF40]);
  v8 = sub_266DA97EC();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_266CD58A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDE8, &qword_266DB5418);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD88, &qword_266DB53D8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v12[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  sub_266DA977C();
  sub_266CD5DF0();
  sub_266DA976C();
  (*(v3 + 8))(v5, v2);
  sub_266C230E8(&qword_2800CBDA0, &qword_2800CBD88, &qword_266DB53D8, MEMORY[0x277CBCF40]);
  v10 = sub_266DA97EC();
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_266CD5AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  type metadata accessor for FMIPCoreDeviceSearcher(0);
  OUTLINED_FUNCTION_24_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_19();
  __swift_destroy_boxed_opaque_existential_0((v1 + v4 + 216));
  __swift_destroy_boxed_opaque_existential_0((v1 + v4 + 256));
  v7 = *(v0 + 60);
  sub_266DAAB4C();
  OUTLINED_FUNCTION_0();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

void sub_266CD5C18()
{
  v0 = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_4_3(v0);
  sub_266CD1320();
}

uint64_t sub_266CD5C70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_266CD5CC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266D1709C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_266CD5CF8()
{
  v2 = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_4_3(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_266CD4C9C(v0, v4);
}

uint64_t sub_266CD5D64()
{
  v0 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_18_12();
  v1 = OUTLINED_FUNCTION_38_5();

  return sub_266CD4F48(v1, v2, v3, v4);
}

unint64_t sub_266CD5DF0()
{
  result = qword_2800CBD08;
  if (!qword_2800CBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBD08);
  }

  return result;
}

id sub_266CD5E5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v6 = *(v2 + 24);
  v7 = v4;
  result = sub_266CD5148(a1, &v6);
  *a2 = result;
  return result;
}

uint64_t sub_266CD5EB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_266CD5EC0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_22Tm()
{
  type metadata accessor for FMIPCoreDeviceSearcher(0);
  OUTLINED_FUNCTION_24_0();
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_0();
  (*(v11 + 8))(v10 + v2);

  __swift_destroy_boxed_opaque_existential_0((v1 + v9 + 16));

  return MEMORY[0x2821FE8E8](v1, v9 + 56, v7 | 7);
}

uint64_t sub_266CD60A4()
{
  v2 = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_11_3(v2);
  OUTLINED_FUNCTION_18_12();
  return v0(v1 + v3);
}

uint64_t sub_266CD611C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_266CD617C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_11_3(v2);
  OUTLINED_FUNCTION_18_12();
  v3 = OUTLINED_FUNCTION_38_5();

  return a2(v3);
}

uint64_t sub_266CD621C@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_266C32EC4(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CD6258()
{
  v0 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_18_12();
  v1 = OUTLINED_FUNCTION_38_5();

  return sub_266CD49C0(v1, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for FMIPCoreDeviceSearcher.LocationWaitError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266CD63A0()
{
  result = qword_2800CBE60;
  if (!qword_2800CBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBE60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_7_20@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *a1 = *(v1 - 152);
  *(a1 + 16) = v2;
  result = *(v1 - 120);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_14_17(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_23_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCBA0];

  return sub_266C230E8(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return type metadata accessor for FMIPCoreDeviceSearcher(0);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2)
{

  return sub_266DA945C();
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_266DA948C();
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return type metadata accessor for FMIPCoreDeviceSearcher(0);
}

uint64_t OUTLINED_FUNCTION_48_4(uint64_t a1, uint64_t a2)
{

  return sub_266DA97EC();
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));

  return sub_266DAAB4C();
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy0bC10FriendTaskO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_266CD6694(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CD66D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_266CD671C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_266CD6764@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  sub_266DA81DC();
  OUTLINED_FUNCTION_0_2();
  v86 = v4;
  v87 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  v85 = v6 - v5;
  v90 = sub_266DA819C();
  OUTLINED_FUNCTION_0_2();
  v93 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v92 = v10 - v9;
  v11 = sub_266DA8BDC();
  OUTLINED_FUNCTION_0_2();
  v91 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  v17 = sub_266DA81AC();
  OUTLINED_FUNCTION_0_2();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v84 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v88 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v84 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v84 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v84 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v84 - v34;
  v36 = *(v19 + 16);
  v89 = a1;
  v37 = a1;
  v38 = v36;
  v36(&v84 - v34, v37, v17);
  v39 = (*(v19 + 88))(v35, v17);
  if (v39 == *MEMORY[0x277D5C128])
  {
    v38(v33, v35, v17);
    (*(v19 + 96))(v33, v17);
    v40 = v91;
    (*(v91 + 4))(v16, v33, v11);
    if (qword_2800C92A8 != -1)
    {
      OUTLINED_FUNCTION_0_52(&qword_2800C92A8);
    }

    v41 = sub_266DA94AC();
    __swift_project_value_buffer(v41, qword_2800CBE68);
    v42 = sub_266DA948C();
    v43 = sub_266DAAB0C();
    if (os_log_type_enabled(v42, v43))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_26(&dword_266C08000, v44, v45, "[FindMyFriendTaskParser] parseTask NLv3IntentOnly");
      OUTLINED_FUNCTION_6_1();
    }

    sub_266CD70EC(v16, v94);
    (*(v40 + 1))(v16, v11);
    return (*(v19 + 8))(v35, v17);
  }

  v91 = v35;
  if (v39 == *MEMORY[0x277D5C150])
  {
    v87 = v38;
    v38(v30, v91, v17);
    (*(v19 + 96))(v30, v17);
    v46 = v30;
    v47 = v90;
    (*(v93 + 32))(v92, v46, v90);
    v48 = sub_266DA817C();
    v50 = v49;
    if (qword_2800C9408 != -1)
    {
      swift_once();
    }

    v51 = qword_2800CD278;
    v52 = unk_2800CD280;
    v95 = qword_2800CD268;
    v96 = unk_2800CD270;

    MEMORY[0x26D5F1170](v51, v52);
    if (v48 == v95 && v50 == v96)
    {

      v35 = v91;
    }

    else
    {
      v54 = sub_266DAB17C();

      v35 = v91;
      if ((v54 & 1) == 0)
      {
        (*(v93 + 8))(v92, v47);
        v38 = v87;
LABEL_22:
        if (qword_2800C92A8 != -1)
        {
          OUTLINED_FUNCTION_0_52(&qword_2800C92A8);
        }

        v62 = sub_266DA94AC();
        __swift_project_value_buffer(v62, qword_2800CBE68);
        v63 = v88;
        v38(v88, v89, v17);
        v64 = sub_266DA948C();
        v65 = sub_266DAAB0C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v95 = v67;
          *v66 = 136315138;
          v38(v84, v63, v17);
          v68 = sub_266DAA72C();
          v70 = v69;
          v71 = OUTLINED_FUNCTION_4_28();
          v72(v71);
          v73 = sub_266C22A3C(v68, v70, &v95);

          *(v66 + 4) = v73;
          _os_log_impl(&dword_266C08000, v64, v65, "[FindMyFriendTaskParser] unsupported parse type: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          v35 = v91;
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_6_1();
        }

        else
        {

          v80 = OUTLINED_FUNCTION_4_28();
          v81(v80);
        }

        v82 = v94;
        *(v94 + 32) = 0;
        *v82 = 0u;
        *(v82 + 16) = 0u;
        *(v82 + 40) = -1;
        return (*(v19 + 8))(v35, v17);
      }
    }

    if (qword_2800C92A8 != -1)
    {
      OUTLINED_FUNCTION_0_52(&qword_2800C92A8);
    }

    v74 = sub_266DA94AC();
    __swift_project_value_buffer(v74, qword_2800CBE68);
    v75 = sub_266DA948C();
    v76 = sub_266DAAB0C();
    if (os_log_type_enabled(v75, v76))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_26(&dword_266C08000, v77, v78, "[FindMyFriendTaskParser] parseTask directInvocation");
      OUTLINED_FUNCTION_6_1();
    }

    v79 = v92;
    sub_266CD7C00(v92, v94);
    (*(v93 + 8))(v79, v47);
  }

  else
  {
    v35 = v91;
    if (v39 != *MEMORY[0x277D5C160])
    {
      goto LABEL_22;
    }

    v38(v27, v91, v17);
    (*(v19 + 96))(v27, v17);
    v56 = v85;
    v55 = v86;
    v57 = v87;
    (*(v86 + 32))(v85, v27, v87);
    if (qword_2800C92A8 != -1)
    {
      OUTLINED_FUNCTION_0_52(&qword_2800C92A8);
    }

    v58 = sub_266DA94AC();
    __swift_project_value_buffer(v58, qword_2800CBE68);
    v59 = sub_266DA948C();
    v60 = sub_266DAAB0C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_266C08000, v59, v60, "[FindMyFriendTaskParser] parseTask uso", v61, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266CD7F38(v56, v94);
    (*(v55 + 8))(v56, v57);
  }

  return (*(v19 + 8))(v35, v17);
}

uint64_t sub_266CD7024()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBE68);
  v1 = __swift_project_value_buffer(v0, qword_2800CBE68);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CD70EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95D8, &unk_266DAD560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v73 - v8;
  v77 = type metadata accessor for ContactNLIntent(0);
  v10 = MEMORY[0x28223BE20](v77);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v73 - v15;
  v16 = sub_266DA8BDC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C92A8 != -1)
  {
    swift_once();
  }

  v20 = sub_266DA94AC();
  v21 = __swift_project_value_buffer(v20, qword_2800CBE68);
  v22 = *(v17 + 16);
  v84 = a1;
  v78 = v22;
  v79 = v17 + 16;
  v22(v19, a1, v16);
  v80 = v21;
  v23 = sub_266DA948C();
  v24 = sub_266DAAB0C();
  v25 = os_log_type_enabled(v23, v24);
  v81 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v76 = a2;
    v27 = v26;
    v74 = swift_slowAlloc();
    v85 = v74;
    *v27 = 136315138;
    sub_266CD8AA8(&qword_2800CA5A0, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
    v28 = sub_266DAB13C();
    v75 = v12;
    v29 = v6;
    v30 = v9;
    v32 = v31;
    (*(v17 + 8))(v19, v16);
    v33 = sub_266C22A3C(v28, v32, &v85);
    v9 = v30;
    v6 = v29;
    v12 = v75;

    *(v27 + 4) = v33;
    _os_log_impl(&dword_266C08000, v23, v24, "[FindMyFriendTask] parsing nlv3 intent: %s", v27, 0xCu);
    v34 = v74;
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x26D5F2480](v34, -1, -1);
    v35 = v27;
    a2 = v76;
    MEMORY[0x26D5F2480](v35, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  v36 = v82;
  sub_266DA8BCC();
  v37 = sub_266DA876C();
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    result = sub_266C3A088(v36, &qword_2800CA2E0, &unk_266DB05F0);
LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_9;
  }

  v40 = sub_266DA875C();
  v42 = v41;
  (*(*(v37 - 8) + 8))(v36, v37);
  if (v40 == 0x746361746E6F63 && v42 == 0xE700000000000000)
  {

    v45 = v81;
  }

  else
  {
    v44 = sub_266DAB17C();

    v45 = v81;
    if ((v44 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v78(v83, v84, v45);
  if (sub_266C58070() & 1) != 0 || (sub_266C58104())
  {
    if (qword_28156F6C0 != -1)
    {
      swift_once();
    }

    sub_266CD8AA8(&qword_28156F668, type metadata accessor for ContactNLIntent, &unk_266DB0E78);
    sub_266DA873C();
    switch(v86)
    {
      case 1:
        v63 = sub_266DA948C();
        v64 = sub_266DAAB0C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_266C08000, v63, v64, "Providing punch out to friends for this intent", v65, 2u);
          MEMORY[0x26D5F2480](v65, -1, -1);
        }

        result = sub_266C180F8(v83);
        *a2 = 1;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        goto LABEL_50;
      case 5:
      case 8:
        v46 = sub_266DA948C();
        v47 = sub_266DAAB0C();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_266C08000, v46, v47, "Providing the FindFriend RCH flow for this intent", v48, 2u);
          MEMORY[0x26D5F2480](v48, -1, -1);
        }

        sub_266C56388(v6);
        v49 = sub_266DA867C();
        if (__swift_getEnumTagSinglePayload(v6, 1, v49) == 1)
        {
          sub_266C180F8(v83);
          sub_266C3A088(v6, &qword_2800C95D8, &unk_266DAD560);
          v50 = 1;
        }

        else
        {
          PersonIntentNode.toContactQuery()();
          sub_266C180F8(v83);
          (*(*(v49 - 8) + 8))(v6, v49);
          v50 = 0;
        }

        v58 = sub_266DA8D0C();
        __swift_storeEnumTagSinglePayload(v9, v50, 1, v58);
        *(a2 + 24) = type metadata accessor for FindFriendIntentWrapper(0);
        *(a2 + 32) = &off_28785D820;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        result = sub_266C17FCC(v9, boxed_opaque_existential_1);
        *(a2 + 40) = 0;
        return result;
      case 6:
        v66 = sub_266DA948C();
        v67 = sub_266DAAB0C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_266C08000, v66, v67, "Providing SetGeoFence RCH flow for this intent", v68, 2u);
          MEMORY[0x26D5F2480](v68, -1, -1);
        }

        v69 = v83;
        sub_266C1805C(v83, v12);
        *(a2 + 24) = type metadata accessor for SetGeoFenceNLv3IntentWrapper(0);
        *(a2 + 32) = &off_28785D320;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_266C17094(v12);
        result = sub_266C180F8(v69);
        v39 = 2;
        goto LABEL_10;
      case 7:
        v70 = sub_266DA948C();
        v71 = sub_266DAAB0C();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_266C08000, v70, v71, "Providing unsupported remove geo fence dialog for this intent.", v72, 2u);
          MEMORY[0x26D5F2480](v72, -1, -1);
        }

        result = sub_266C180F8(v83);
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0;
LABEL_50:
        v39 = 4;
        goto LABEL_10;
      case 9:
        v55 = sub_266DA948C();
        v56 = sub_266DAAB0C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_266C08000, v55, v56, "Providing SetSharedLocationVisibility RCH flow for this intent", v57, 2u);
          MEMORY[0x26D5F2480](v57, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;
        *a2 = 2;
        result = sub_266C180F8(v83);
        v39 = 1;
        goto LABEL_10;
      case 10:
        v60 = sub_266DA948C();
        v61 = sub_266DAAB0C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_266C08000, v60, v61, "Providing SetSharedLocationVisibility RCH flow for this intent", v62, 2u);
          MEMORY[0x26D5F2480](v62, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;
        *a2 = 1;
        result = sub_266C180F8(v83);
        *(a2 + 40) = 1;
        return result;
      default:
        v51 = sub_266DA948C();
        v52 = sub_266DAAAFC();
        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_32;
        }

        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "No flow provided for the current fmf intent.";
        goto LABEL_31;
    }
  }

  v51 = sub_266DA948C();
  v52 = sub_266DAAB0C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Contact intent is not a FMF intent.";
LABEL_31:
    _os_log_impl(&dword_266C08000, v51, v52, v54, v53, 2u);
    MEMORY[0x26D5F2480](v53, -1, -1);
  }

LABEL_32:

  result = sub_266C180F8(v83);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
LABEL_9:
  v39 = -1;
LABEL_10:
  *(a2 + 40) = v39;
  return result;
}

void sub_266CD7C00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA819C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  if (qword_2800C92A8 != -1)
  {
    swift_once();
  }

  v11 = sub_266DA94AC();
  v12 = __swift_project_value_buffer(v11, qword_2800CBE68);
  v34 = *(v5 + 16);
  v34(v10, a1, v4);
  v33 = v12;
  v13 = sub_266DA948C();
  v14 = sub_266DAAB0C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v35 = v17;
    *v16 = 136315138;
    v19 = sub_266DA817C();
    v30 = v8;
    v21 = v20;
    (*(v5 + 8))(v10, v4);
    v22 = sub_266C22A3C(v19, v21, &v35);
    v8 = v30;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_266C08000, v13, v14, "[FindMyFriendTask] parsing direct invocation with id: %s ", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v23 = v18;
    a1 = v31;
    MEMORY[0x26D5F2480](v23, -1, -1);
    v24 = v16;
    a2 = v32;
    MEMORY[0x26D5F2480](v24, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v34(v8, a1, v4);
  sub_266D6EFE8(v8, &v35);
  if (v36)
  {
    v25 = sub_266DA948C();
    v26 = sub_266DAAAEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266C08000, v25, v26, "FindMyFriendParser makeFlow unexpected directInvocation", v27, 2u);
      MEMORY[0x26D5F2480](v27, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v28 = -1;
  }

  else
  {
    *a2 = v35;
    v28 = 3;
  }

  *(a2 + 40) = v28;
}

void sub_266CD7F38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v76 - v5;
  v6 = sub_266DA81DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  if (qword_2800C92A8 != -1)
  {
    swift_once();
  }

  v13 = sub_266DA94AC();
  v14 = __swift_project_value_buffer(v13, qword_2800CBE68);
  v15 = *(v7 + 16);
  v78 = a1;
  v15(v12, a1, v6);
  v79 = v14;
  v16 = sub_266DA948C();
  v17 = sub_266DAAB0C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v76 = a2;
    v20 = v19;
    v82[0] = v19;
    *v18 = 136315138;
    v15(v10, v12, v6);
    v21 = sub_266DAA72C();
    v23 = v22;
    (*(v7 + 8))(v12, v6);
    v24 = sub_266C22A3C(v21, v23, v82);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_266C08000, v16, v17, "[FindMyFriendTask] parsing USOParse: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    a2 = v76;
    MEMORY[0x26D5F2480](v25, -1, -1);
    MEMORY[0x26D5F2480](v18, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v26 = v80;
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287867F78;
  *(inited + 64) = sub_266C6F020();
  v28 = swift_allocObject();
  *(inited + 32) = v28;
  *(v28 + 16) = "SiriFindMy";
  *(v28 + 24) = 10;
  *(v28 + 32) = 2;
  *(v28 + 40) = "FindMyFriendsNLX";
  *(v28 + 48) = 16;
  *(v28 + 56) = 2;
  v29 = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F0B4();
  if (v29)
  {
    sub_266DA8BBC();
    sub_266D65720(v78);
    sub_266DA87CC();
    if (v86)
    {
      sub_266CD8AF0(v85, v84);
      sub_266DA89DC();
      if (swift_dynamicCast())
      {
        v30 = sub_266DA948C();
        v31 = sub_266DAAB0C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = a2;
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_266C08000, v30, v31, "[FindMyFriendTask]: uso task is UsoTask_getLocation_common_Person", v33, 2u);
          v34 = v33;
          a2 = v32;
          MEMORY[0x26D5F2480](v34, -1, -1);
        }

        sub_266C233D0((v26 + 5), v83);

        sub_266DA889C();
LABEL_19:

        v82[0] = v81;
        v82[1] = 0;
        v43 = v77;
        sub_266D4797C();

        sub_266CD8B60(v82);
        *(a2 + 24) = type metadata accessor for FindFriendIntentWrapper(0);
        *(a2 + 32) = &off_28785D820;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        sub_266C17FCC(v43, boxed_opaque_existential_1);
        *(a2 + 40) = 0;
LABEL_30:
        __swift_destroy_boxed_opaque_existential_0(v84);
LABEL_47:
        sub_266C3A088(v85, &qword_2800CA7C0, &qword_266DB1BD0);
        return;
      }

      sub_266DA8A1C();
      if (swift_dynamicCast())
      {
        v38 = sub_266DA948C();
        v39 = sub_266DAAB0C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = a2;
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_266C08000, v38, v39, "[FindMyFriendTask]: uso task is UsoTask_checkLocation_common_Person", v41, 2u);
          v42 = v41;
          a2 = v40;
          MEMORY[0x26D5F2480](v42, -1, -1);
        }

        sub_266C233D0((v26 + 5), v83);

        sub_266DA8B3C();
        goto LABEL_19;
      }

      sub_266DA8AEC();
      if (swift_dynamicCast())
      {

        v45 = sub_266DA948C();
        v46 = sub_266DAAB0C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = a2;
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_266C08000, v45, v46, "[FindMyFriendTask]: uso task is UsoTask_getPerson_common_GeographicArea", v48, 2u);
          v49 = v48;
          a2 = v47;
          MEMORY[0x26D5F2480](v49, -1, -1);
        }

        *a2 = 1;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
LABEL_24:
        v50 = 4;
LABEL_29:
        *(a2 + 40) = v50;
        goto LABEL_30;
      }

      sub_266DA89CC();
      if (swift_dynamicCast())
      {

        v51 = sub_266DA948C();
        v52 = sub_266DAAB0C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = a2;
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_266C08000, v51, v52, "[FindMyFriendTask]: uso task is UsoTask_hide_common_FindMyStatus", v54, 2u);
          v55 = v54;
          a2 = v53;
          MEMORY[0x26D5F2480](v55, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;

        *a2 = 2;
        v50 = 1;
        goto LABEL_29;
      }

      sub_266DA8A0C();
      if (swift_dynamicCast())
      {

        v56 = sub_266DA948C();
        v57 = sub_266DAAB0C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = a2;
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_266C08000, v56, v57, "[FindMyFriendTask]: uso task is UsoTask_unhide_common_FindMyStatus", v59, 2u);
          v60 = v59;
          a2 = v58;
          MEMORY[0x26D5F2480](v60, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;

        *a2 = 1;
        *(a2 + 40) = 1;
        goto LABEL_30;
      }

      sub_266DA8B7C();
      if (swift_dynamicCast())
      {
        v61 = a2;
        v62 = sub_266DA948C();
        v63 = sub_266DAAB0C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_266C08000, v62, v63, "[FindMyFriendTask]: uso task is UsoTask_enableNotifications_common_FindMyStatus", v64, 2u);
          MEMORY[0x26D5F2480](v64, -1, -1);
        }

        *(v61 + 24) = type metadata accessor for SetGeoFenceUsoIntentWrapper(0);
        *(v61 + 32) = &off_28785D2E8;
        v65 = __swift_allocate_boxed_opaque_existential_1(v61);
        sub_266C16588(v65);

        *(v61 + 40) = 2;
        goto LABEL_30;
      }

      sub_266DA8B8C();
      if (swift_dynamicCast())
      {

        v66 = sub_266DA948C();
        v67 = sub_266DAAB0C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = a2;
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_266C08000, v66, v67, "[FindMyFriendTask]: uso task is UsoTask_disableNotifications_common_FindMyStatus", v69, 2u);
          v70 = v69;
          a2 = v68;
          MEMORY[0x26D5F2480](v70, -1, -1);
        }

        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0(v84);
    }

    v71 = sub_266DA948C();
    v72 = sub_266DAAB0C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = a2;
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_266C08000, v71, v72, "[FindMyFriendTask]: task is not converted to an expected task", v74, 2u);
      v75 = v74;
      a2 = v73;
      MEMORY[0x26D5F2480](v75, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
    goto LABEL_47;
  }

  v35 = sub_266DA948C();
  v36 = sub_266DAAB0C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_266C08000, v35, v36, "[FindMyFriendTaskParser] FMF on NLX is disabled, returning fallbackToServer.", v37, 2u);
    MEMORY[0x26D5F2480](v37, -1, -1);
  }

  *a2 = 3;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 4;
}

uint64_t sub_266CD8AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266CD8AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C0, &qword_266DB1BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_266CD8C08()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  sub_266C186BC(v5, v21 - v9, &qword_2800CAF00, &qword_266DB32D8);
  v11 = sub_266DAA9EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_266C1825C(v10, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_266DAA99C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v17 = sub_266DAA75C() + 32;
      OUTLINED_FUNCTION_26_0();
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v19 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v21[1] = 7;
      v21[2] = v19;
      v21[3] = v17;
      swift_task_create();

      sub_266C1825C(v5, &qword_2800CAF00, &qword_266DB32D8);

      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_266C1825C(v5, &qword_2800CAF00, &qword_266DB32D8);
  OUTLINED_FUNCTION_26_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v1;
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_5();
}

void sub_266CD8ED0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Location(0);
  v6 = OUTLINED_FUNCTION_11_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = type metadata accessor for GEOServicesReverseGeocoder(0);
  v12 = OUTLINED_FUNCTION_11_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_266CD9BF4(v0, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GEOServicesReverseGeocoder);
  sub_266CD9BF4(v4, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Location);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v16 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_266CDA30C(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for GEOServicesReverseGeocoder);
  sub_266CDA30C(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Location);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEC8, &unk_266DB5700);
  OUTLINED_FUNCTION_26_0();
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_266DB56F8;
  *(v20 + 24) = v19;
  v21[1] = sub_266DA979C();
  sub_266C230E8(&qword_2800CBED0, &qword_2800CBEC8, &unk_266DB5700, MEMORY[0x277CBCEB0]);
  sub_266DA97EC();

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CD9144()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBE80);
  v1 = __swift_project_value_buffer(v0, qword_2800CBE80);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CD920C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEE0, &qword_266DB5740);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEE8, &qword_266DB5748);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  if (v1[13])
  {
    if (qword_2800C92B0 != -1)
    {
      swift_once();
    }

    v13 = sub_266DA94AC();
    __swift_project_value_buffer(v13, qword_2800CBE80);
    v29 = sub_266DA948C();
    v14 = sub_266DAAAEC();
    if (os_log_type_enabled(v29, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266C08000, v29, v14, "startFetching called on GeocodingUserLocationProvider that has already started", v15, 2u);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    OUTLINED_FUNCTION_5();
  }

  else
  {
    v18 = v1[5];
    v19 = v1[6];
    v29 = v10;
    __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
    v20 = *(v19 + 8);
    v28 = v4;
    v27 = v20(v18, v19);
    v30 = v27;
    OUTLINED_FUNCTION_26_0();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_266CDA814;
    *(v21 + 24) = v1;

    v26[1] = sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2D0, &qword_266DAF900);
    type metadata accessor for Location(0);
    OUTLINED_FUNCTION_4_29();
    sub_266C230E8(v22, v23, &qword_266DAF900, v24);
    sub_266DA98DC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    sub_266C230E8(&qword_2800CBEF0, &qword_2800CBEE0, &qword_266DB5740, MEMORY[0x277CBCCE0]);
    sub_266DA984C();
    (*(v28 + 8))(v7, v2);
    sub_266C230E8(&qword_2800CBEF8, &qword_2800CBEE8, &qword_266DB5748, MEMORY[0x277CBCC08]);

    v25 = sub_266DA986C();

    (v29[1].isa)(v12, v8);
    v1[13] = v25;

    OUTLINED_FUNCTION_5();
  }
}

uint64_t sub_266CD9650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266CD9BF4(a1, a2, type metadata accessor for Location);
  v3 = type metadata accessor for Location(0);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

void sub_266CD96D8()
{
  OUTLINED_FUNCTION_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEB0, &qword_266DB56E8);
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_266CD8ED0();
  v11[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC58, &unk_266DB5310);
  OUTLINED_FUNCTION_4_29();
  sub_266C230E8(v8, v9, &unk_266DB5310, v10);
  sub_266CD9BA0();
  OUTLINED_FUNCTION_12_16();
  sub_266DA98FC();

  sub_266C230E8(&qword_2800CBEC0, &qword_2800CBEB0, &qword_266DB56E8, MEMORY[0x277CBCD08]);
  sub_266DA97EC();
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_5();
}

void sub_266CD9870(id *a1@<X0>, char *a2@<X8>)
{
  v6 = *a1;
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if (v5 != 1)
  {

LABEL_5:
    v4 = 2;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:

  *a2 = v4;
}

void sub_266CD990C()
{
  OUTLINED_FUNCTION_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE98, &qword_266DB56E0);
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = v7 - v5;
  v7[1] = *(v0 + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B88, &qword_266DAE530);
  type metadata accessor for Location(0);
  sub_266C230E8(&qword_2800CBEA0, &qword_2800C9B88, &qword_266DAE530, MEMORY[0x277CBCE48]);
  OUTLINED_FUNCTION_12_16();
  sub_266DA97FC();

  sub_266C230E8(&qword_2800CBEA8, &qword_2800CBE98, &qword_266DB56E0, MEMORY[0x277CBCB10]);
  sub_266DA97EC();
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CD9AC8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t sub_266CD9B00()
{
  sub_266CD9AC8();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

unint64_t sub_266CD9BA0()
{
  result = qword_2800CBEB8;
  if (!qword_2800CBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBEB8);
  }

  return result;
}

uint64_t sub_266CD9BF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266CD9C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;

  sub_266CD8C08();
}

uint64_t sub_266CD9D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBED8, &qword_266DB5738);
  v6[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[6] = v8;
  v11 = (a6 + *a6);
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_266CD9EA8;

  return v11(v8);
}

uint64_t sub_266CD9EA8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_266CDA050;
  }

  else
  {
    v5 = sub_266CD9FAC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CD9FAC()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  v2(v1);
  sub_266C1825C(v1, &qword_2800CBED8, &qword_266DB5738);

  OUTLINED_FUNCTION_28();

  return v3();
}

uint64_t sub_266CDA050()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v4 = v1;
  v3(v2);

  sub_266C1825C(v2, &qword_2800CBED8, &qword_266DB5738);

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266CDA108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_266CDA1C8;

  return GEOServicesReverseGeocoder.reverseGeocodeLocationAsync(_:spokenNeeds:)();
}

uint64_t sub_266CDA1C8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  *(v4 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266CDA2E8);
  }

  else
  {
    OUTLINED_FUNCTION_28();

    return v5();
  }
}

uint64_t sub_266CDA30C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_266CDA36C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for GEOServicesReverseGeocoder(0);
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_11_3(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_266C4716C;

  return sub_266CDA108(a1, v1 + v7, v1 + v12, v14);
}

uint64_t sub_266CDA4D8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6_23(v8);
  *v9 = v10;
  v9[1] = sub_266C4716C;

  return sub_266CD9D5C(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_266CDA5A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_266CDA69C;

  return v6(a1);
}

uint64_t sub_266CDA69C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  OUTLINED_FUNCTION_28();

  return v3();
}

uint64_t sub_266CDA780()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_27(v1);

  return v4(v3);
}

uint64_t sub_266CDA818@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_12()
{
}

uint64_t sub_266CDA8CC()
{
  sub_266DAADFC();

  v0 = OUTLINED_FUNCTION_3_30();
  v1(v0);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](10016, 0xE200000000000000);
  v2 = OUTLINED_FUNCTION_3_30();
  v3(v2);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](0x6375646F72702027, 0xEB00000000203A74);
  v4 = OUTLINED_FUNCTION_3_30();
  v5(v4);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](0x203A65707974202CLL, 0xE800000000000000);
  v6 = OUTLINED_FUNCTION_3_30();
  v7(v6);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](0x3A72656E776F202CLL, 0xE900000000000020);
  v8 = OUTLINED_FUNCTION_3_30();
  v10 = v9(v8);
  MEMORY[0x26D5F1170](v10);

  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 60;
}

uint64_t (*sub_266CDAA74(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v22 = result;
  v21 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_266C233D0(v8, v27);
    v10 = v5(v27);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v27);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_266C0B0D8(v27, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266C38B20(0, *(v9 + 16) + 1, 1);
        v9 = v28;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_266C38B20((v12 > 1), v13 + 1, 1);
      }

      v14 = v25;
      v15 = v26;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      MEMORY[0x28223BE20](v16);
      OUTLINED_FUNCTION_0_6();
      v19 = v18 - v17;
      (*(v20 + 16))(v18 - v17);
      sub_266CDD6D0(v13, v19, &v28, v14, v15);
      result = __swift_destroy_boxed_opaque_existential_0(v24);
      v9 = v28;
      v5 = v22;
      v4 = a3;
      v7 = v21;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v27);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_266CDACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;

  v7 = sub_266CDAA74(sub_266CDD664, v16, a1);
  v13 = a2;
  v14 = a3;
  v15 = v3;
  v8 = sub_266D2D590(sub_266CDD688, v12, v7);
  if (v8)
  {
    MEMORY[0x28223BE20](v8);
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = v3;
    v9 = sub_266D2D590(sub_266CDD6AC, v11, v7);

    if (v9)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t sub_266CDADD0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBF00);
  v1 = __swift_project_value_buffer(v0, qword_2800CBF00);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CDAE98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 80))(v7, v8);
  v11 = v10;
  if (v9 == (*(a4 + 80))(a3, a4) && v11 == v12)
  {
  }

  else
  {
    v14 = sub_266DAB17C();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  v20 = v19;
  if (v18 == (*(a4 + 16))(a3, a4) && v20 == v21)
  {

    v15 = 0;
  }

  else
  {
    v23 = sub_266DAB17C();

    v15 = v23 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_266CDB044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 40))(v6, v7);
  v10 = v9;
  if (v8 == (*(a4 + 40))(a3, a4) && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_266DAB17C();
  }

  return v13 & 1;
}

uint64_t sub_266CDB128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 64))(v6, v7);
  v10 = v9;
  if (v8 == (*(a4 + 64))(a3, a4) && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_266DAB17C();
  }

  return v13 & 1;
}

uint64_t FMIPDevice.unifiedIdentifier.getter()
{
  sub_266DA74AC();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_6();
  sub_266DAA03C();
  v1 = sub_266DA747C();
  v2 = OUTLINED_FUNCTION_6_24();
  v3(v2);
  return v1;
}

uint64_t FMIPDevice.ownedByCurrentUser.getter()
{
  v0 = sub_266DAA01C();
  v2 = v1;
  if (qword_2800C9158 != -1)
  {
    swift_once();
  }

  if (v0 == qword_28156FC98 && v2 == unk_28156FCA0)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_266DAB17C();
  }

  return v4 & 1;
}

uint64_t FMIPDevice.isThisDevice.getter()
{
  sub_266DAA26C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_12();
  sub_266DAA06C();
  sub_266DAA25C();
  v4 = sub_266CDD61C(&qword_2800CBF18, MEMORY[0x277D07C68], MEMORY[0x277D07C70]);
  OUTLINED_FUNCTION_15_17(v4);
  v5 = OUTLINED_FUNCTION_11_14();
  v1(v5);
  v6 = OUTLINED_FUNCTION_6_24();
  v1(v6);
  return v0 & 1;
}

uint64_t FMIPDevice.deviceLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = sub_266DAA23C();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_266DAA00C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_266C1825C(v5, &qword_2800CBF20, &qword_266DB5750);
  }

  else
  {
    (*(v8 + 32))(v15, v5, v6);
    (*(v8 + 16))(v12, v15, v6);
    sub_266CA4128(v12, a1);
    (*(v8 + 8))(v15, v6);
  }

  v16 = type metadata accessor for Location(0);
  return OUTLINED_FUNCTION_20_11(v16);
}

uint64_t FMIPDevice.canPlaySound.getter()
{
  sub_266DAA1CC();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_12();
  sub_266DAA08C();
  sub_266DAA1BC();
  OUTLINED_FUNCTION_5_28();
  v6 = sub_266CDD61C(v4, v5, MEMORY[0x277D07C60]);
  OUTLINED_FUNCTION_15_17(v6);
  v7 = OUTLINED_FUNCTION_11_14();
  v1(v7);
  v8 = OUTLINED_FUNCTION_6_24();
  v1(v8);
  return v0 & 1;
}

void sub_266CDB794()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v59 = v2;
  v60 = v3;
  v58 = v4;
  sub_266DAA45C();
  OUTLINED_FUNCTION_0_2();
  v54 = v6;
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v57 = v8 - v7;
  v9 = sub_266DAA0AC();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_5();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - v17;
  v18 = sub_266DAA1CC();
  OUTLINED_FUNCTION_0_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  sub_266DAA08C();
  sub_266DAA1BC();
  OUTLINED_FUNCTION_5_28();
  sub_266CDD61C(v28, v29, MEMORY[0x277D07C60]);
  v30 = sub_266DAACEC();
  v31 = *(v20 + 8);
  v31(v24, v18);
  v31(v27, v18);
  if (v30)
  {
    (*(v11 + 16))(v56, v1, v9);
    (*(v54 + 104))(v57, *MEMORY[0x277D07CC0], v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF48, &unk_266DB57F0);
    v32 = sub_266DAA4DC();
    OUTLINED_FUNCTION_0_2();
    v34 = v33;
    v36 = *(v35 + 72);
    v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_266DB05C0;
    v39 = v38 + v37;
    v40 = *(v34 + 104);
    v40(v39, *MEMORY[0x277D07CC8], v32);
    v40(v39 + v36, *MEMORY[0x277D07CD0], v32);
    sub_266DAA59C();
    swift_allocObject();
    sub_266DAA58C();
    v41 = swift_allocObject();
    *(v41 + 16) = v59;
    *(v41 + 24) = v60;

    sub_266DAA18C();
  }

  else
  {
    v42 = v9;
    if (qword_2800C92B8 != -1)
    {
      OUTLINED_FUNCTION_7_21(&qword_2800C92B8);
    }

    v43 = sub_266DA94AC();
    __swift_project_value_buffer(v43, qword_2800CBF00);
    (*(v11 + 16))(v15, v1, v9);
    v44 = sub_266DA948C();
    v45 = sub_266DAAAEC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v42;
      v48 = swift_slowAlloc();
      v61 = v48;
      *v46 = 136315138;
      v49 = sub_266DAA02C();
      v51 = v50;
      (*(v11 + 8))(v15, v47);
      v52 = sub_266C22A3C(v49, v51, &v61);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_266C08000, v44, v45, "Device is not play sound enabled. Failing playSound request on %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      (*(v11 + 8))(v15, v9);
    }

    v62 = 256;
    v59(&v62);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CDBCEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v10 = sub_266DAA28C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C92B8 != -1)
  {
    swift_once();
  }

  v14 = sub_266DA94AC();
  v15 = __swift_project_value_buffer(v14, qword_2800CBF00);
  (*(v11 + 16))(v13, a1, v10);
  v16 = a3;
  v42 = v15;
  v17 = sub_266DA948C();
  v18 = sub_266DAAB0C();

  if (!os_log_type_enabled(v17, v18))
  {

    (*(v11 + 8))(v13, v10);
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_9:
    LOWORD(v44) = 0;
    a5(&v44);
    return;
  }

  v19 = swift_slowAlloc();
  v41 = a5;
  v20 = v19;
  v21 = swift_slowAlloc();
  v44 = v21;
  *v20 = 136315394;
  sub_266CDD61C(&qword_2800CBF50, MEMORY[0x277D07C90], MEMORY[0x277D07C98]);
  v22 = sub_266DAB13C();
  v40[1] = a6;
  v24 = v23;
  (*(v11 + 8))(v13, v10);
  v25 = sub_266C22A3C(v22, v24, &v44);

  *(v20 + 4) = v25;
  *(v20 + 12) = 2080;
  v43 = a3;
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
  v27 = sub_266DAA72C();
  v29 = sub_266C22A3C(v27, v28, &v44);

  *(v20 + 14) = v29;
  _os_log_impl(&dword_266C08000, v17, v18, "PlaySound status: %s, error: %s", v20, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x26D5F2480](v21, -1, -1);
  v30 = v20;
  a5 = v41;
  MEMORY[0x26D5F2480](v30, -1, -1);

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v31 = a3;
  v32 = sub_266DA948C();
  v33 = sub_266DAAAEC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = a3;
    v44 = v35;
    *v34 = 136315138;
    v36 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
    v37 = sub_266DAA72C();
    v39 = sub_266C22A3C(v37, v38, &v44);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_266C08000, v32, v33, "Error playing sound: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D5F2480](v35, -1, -1);
    MEMORY[0x26D5F2480](v34, -1, -1);
  }

  LOWORD(v44) = 261;
  a5(&v44);
}

void FMIPItem.productName.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF30, &qword_266DB5758);
  v2 = OUTLINED_FUNCTION_4_3(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_5();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_12();
  sub_266DAA20C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  sub_266DAA27C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  sub_266DAA61C();
  v12 = OUTLINED_FUNCTION_83();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D07C78])
  {
    v15 = OUTLINED_FUNCTION_83();
    v16(v15);
    sub_266C1825C(v11, &qword_2800CBF38, &qword_266DB5760);
LABEL_5:
    sub_266DAA65C();
    sub_266DAA1EC();
    v20 = OUTLINED_FUNCTION_75();
    v21(v20);
    goto LABEL_6;
  }

  if (v14 == *MEMORY[0x277D07C80])
  {
    v17 = OUTLINED_FUNCTION_83();
    v18(v17);
    sub_266DAA5BC();
    OUTLINED_FUNCTION_0();
    (*(v19 + 8))(v11);
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x277D07C88])
  {
    v22 = OUTLINED_FUNCTION_83();
    v23(v22);
    sub_266CDC504(v11, v0);
    v24 = OUTLINED_FUNCTION_14_18();
    sub_266C186BC(v24, v25, v26, v27);
    v28 = sub_266DAA5FC();
    if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
    {
      sub_266C1825C(v5, &qword_2800CBF30, &qword_266DB5758);
      sub_266DAA65C();
      sub_266DAA1EC();
      v29 = OUTLINED_FUNCTION_75();
      v30(v29);
    }

    else
    {
      sub_266DAA5EC();
      (*(*(v28 - 8) + 8))(v5, v28);
    }

    sub_266C1825C(v0, &qword_2800CBF30, &qword_266DB5758);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_83();
    v32(v31);
  }

LABEL_6:
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CDC504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF30, &qword_266DB5758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItem.deviceProductType.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF30, &qword_266DB5758);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  sub_266DAA27C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  sub_266DAA61C();
  v11 = OUTLINED_FUNCTION_14_18();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D07C78])
  {
    v14 = OUTLINED_FUNCTION_13_13();
    v15(v14);
    sub_266C1825C(v10, &qword_2800CBF38, &qword_266DB5760);
  }

  else if (v13 == *MEMORY[0x277D07C80])
  {
    v16 = OUTLINED_FUNCTION_13_13();
    v17(v16);
    sub_266DAA5BC();
    OUTLINED_FUNCTION_0();
    (*(v18 + 8))(v10);
  }

  else if (v13 == *MEMORY[0x277D07C88])
  {
    v20 = OUTLINED_FUNCTION_14_18();
    v21(v20);
    v22 = OUTLINED_FUNCTION_6_24();
    sub_266CDC504(v22, v23);
    sub_266C186BC(v6, v1, &qword_2800CBF30, &qword_266DB5758);
    v24 = sub_266DAA5FC();
    if (__swift_getEnumTagSinglePayload(v1, 1, v24) == 1)
    {
      v0 = 0xD000000000000020;
      sub_266C1825C(v1, &qword_2800CBF30, &qword_266DB5758);
    }

    else
    {
      v0 = sub_266DAA5EC();
      (*(*(v24 - 8) + 8))(v1, v24);
    }

    sub_266C1825C(v6, &qword_2800CBF30, &qword_266DB5758);
  }

  else
  {
    v0 = 0xD000000000000020;
    v25 = OUTLINED_FUNCTION_14_18();
    v26(v25);
  }

  return v0;
}

uint64_t FMIPItem.ownedByCurrentUser.getter()
{
  if (_s8FMIPCore8FMIPItemV10SiriFindMyE15ownerIdentifierSSvg_0() == 0x6F6C4072656E776FLL && v0 == 0xEF74736F686C6163)
  {

    return 1;
  }

  else
  {
    v2 = sub_266DAB17C();

    return v2 & 1;
  }
}

uint64_t FMIPItem.emoji.getter()
{
  sub_266DAA20C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_6();
  sub_266DAA65C();
  v1 = sub_266DAA1FC();
  v2 = OUTLINED_FUNCTION_75();
  v3(v2);
  return v1;
}

uint64_t FMIPItem.categoryId.getter()
{
  sub_266DAA20C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_6();
  sub_266DAA65C();
  v1 = sub_266DAA1DC();
  v2 = OUTLINED_FUNCTION_75();
  v3(v2);
  return v1;
}

void FMIPItem.deviceLocation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_266DAA23C();
  OUTLINED_FUNCTION_0_2();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v35 = OUTLINED_FUNCTION_4_3(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_5();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &a9 - v40;
  sub_266DAA67C();
  v42 = OUTLINED_FUNCTION_83();
  sub_266C186BC(v42, v43, &qword_2800CBF20, &qword_266DB5750);
  if (__swift_getEnumTagSinglePayload(v38, 1, v24) != 1)
  {
    (*(v26 + 32))(v33, v38, v24);
    v44 = OUTLINED_FUNCTION_14_18();
    v45(v44);
    sub_266CA4128(v30, v23);
    (*(v26 + 8))(v33, v24);
  }

  sub_266C1825C(v41, &qword_2800CBF20, &qword_266DB5750);
  v46 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_20_11(v46);
  OUTLINED_FUNCTION_5();
}

BOOL sub_266CDCC7C(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  a1(v4);
  v7 = sub_266DAA23C();
  v8 = __swift_getEnumTagSinglePayload(v6, 1, v7) != 1;
  sub_266C1825C(v6, &qword_2800CBF20, &qword_266DB5750);
  return v8;
}

uint64_t FMIPItem.canPlaySound.getter()
{
  sub_266DAA30C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_12();
  sub_266DAA62C();
  sub_266DAA2FC();
  OUTLINED_FUNCTION_4_30();
  v6 = sub_266CDD61C(v4, v5, MEMORY[0x277D07CB0]);
  OUTLINED_FUNCTION_15_17(v6);
  v7 = OUTLINED_FUNCTION_11_14();
  v1(v7);
  v8 = OUTLINED_FUNCTION_6_24();
  v1(v8);
  return v0 & 1;
}

void sub_266CDCE48()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v43 = v2;
  v44 = v3;
  v41 = v4;
  v5 = sub_266DAA68C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_5();
  v42 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = sub_266DAA30C();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  sub_266DAA62C();
  sub_266DAA2FC();
  OUTLINED_FUNCTION_4_30();
  sub_266CDD61C(v24, v25, MEMORY[0x277D07CB0]);
  v26 = sub_266DAACEC();
  v27 = *(v16 + 8);
  v27(v20, v14);
  v27(v23, v14);
  if (v26)
  {
    (*(v7 + 16))(v13, v1, v5);
    sub_266DAA53C();
    swift_allocObject();
    sub_266DAA52C();
    v28 = swift_allocObject();
    *(v28 + 16) = v43;
    *(v28 + 24) = v44;

    sub_266DAA17C();
  }

  else
  {
    v29 = v43;
    if (qword_2800C92B8 != -1)
    {
      OUTLINED_FUNCTION_7_21(&qword_2800C92B8);
    }

    v30 = sub_266DA94AC();
    __swift_project_value_buffer(v30, qword_2800CBF00);
    v31 = v42;
    (*(v7 + 16))(v42, v1, v5);
    v32 = sub_266DA948C();
    v33 = sub_266DAAAEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v36 = sub_266DAA63C();
      v37 = v31;
      v39 = v38;
      (*(v7 + 8))(v37, v5);
      v40 = sub_266C22A3C(v36, v39, &v45);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_266C08000, v32, v33, "Device is not play sound enabled. Failing playSound request on %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      (*(v7 + 8))(v31, v5);
    }

    v46 = 256;
    v29(&v46);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CDD22C(int a1, uint64_t a2, id a3, void (*a4)(void **))
{
  if (a3)
  {
    v6 = a3;
    if (qword_2800C92B8 != -1)
    {
      swift_once();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800CBF00);
    v8 = a3;
    v9 = sub_266DA948C();
    v10 = sub_266DAAAEC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
      v14 = sub_266DAA72C();
      v16 = sub_266C22A3C(v14, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_266C08000, v9, v10, "Play sound failed: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D5F2480](v12, -1, -1);
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    swift_getErrorValue();
    v17 = sub_266D9D360();
    if (v17 == 1 || v17 == 4)
    {
      v19 = 259;
    }

    else if (v17 == 2)
    {
      v19 = 260;
    }

    else
    {
      v19 = 261;
    }

    LOWORD(v20) = v19;
    a4(&v20);
  }

  else
  {
    LOWORD(v20) = 0;
    (a4)(&v20, a2);
  }
}

uint64_t sub_266CDD61C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266CDD6D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_266C0B0D8(&v12, v10 + 40 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_7_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_17(uint64_t a1)
{

  return sub_266DAACEC();
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

void OUTLINED_FUNCTION_23_10()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t sub_266CDD88C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFD0, &qword_266DB5988);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CBF58 = result;
  return result;
}

uint64_t sub_266CDD8F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFE0, &unk_266DB5990);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CBF60 = result;
  return result;
}

uint64_t sub_266CDD95C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC020, &qword_266DB59C0);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_14_19();
  result = sub_266DA851C();
  qword_2800CBF68 = result;
  return result;
}

uint64_t sub_266CDD9B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CBF70 = result;
  return result;
}

uint64_t sub_266CDDA20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_14_19();
  result = sub_266DA851C();
  qword_2800CBF78 = result;
  return result;
}

uint64_t sub_266CDDA70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFF0, &qword_266DB59A0);
  OUTLINED_FUNCTION_7_7(v0);
  result = sub_266DA851C();
  qword_2800CBF80 = result;
  return result;
}

uint64_t sub_266CDDAD0()
{
  type metadata accessor for FindMyContactNode(0);
  swift_allocObject();
  result = sub_266CDF394(0x6F43794D646E6966, 0xED0000746361746ELL, 0);
  qword_2800CBF88 = result;
  return result;
}

uint64_t sub_266CDDB34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB5800;
  if (qword_2800C92C0 != -1)
  {
    swift_once();
  }

  v1 = qword_2800CBF58;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFD0, &qword_266DB5988);
  *(v0 + 64) = sub_266CDF634(&qword_2800CBFD8, &qword_2800CBFD0, &qword_266DB5988);
  *(v0 + 32) = v1;
  v2 = qword_2800C92C8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2800CBF60;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFE0, &unk_266DB5990);
  *(v0 + 104) = sub_266CDF634(&qword_2800CBFE8, &qword_2800CBFE0, &unk_266DB5990);
  *(v0 + 72) = v3;
  v4 = qword_2800C92D8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2800CBF70;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 136) = v6;
  v7 = sub_266CDF634(&qword_28156F1A8, &qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = qword_2800C92E0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2800CBF78;
  *(v0 + 176) = v6;
  *(v0 + 184) = v7;
  *(v0 + 152) = v9;
  v10 = qword_2800C92E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2800CBF80;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFF0, &qword_266DB59A0);
  *(v0 + 224) = sub_266CDF634(&qword_2800CBFF8, &qword_2800CBFF0, &qword_266DB59A0);
  *(v0 + 192) = v11;
  v12 = qword_2800C92F0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2800CBF88;
  MyContactNode = type metadata accessor for FindMyContactNode(0);
  v15 = MEMORY[0x277D5E210];
  *(v0 + 256) = MyContactNode;
  *(v0 + 264) = v15;
  *(v0 + 232) = v13;
  sub_266DA849C();
  swift_allocObject();

  result = sub_266DA848C();
  qword_2800CBF90 = result;
  return result;
}

uint64_t sub_266CDDE64()
{
  if (qword_2800C92F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266CDDEC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC008, &qword_266DB59A8);
  OUTLINED_FUNCTION_4_3(v0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC010, &qword_266DB59B0);
  OUTLINED_FUNCTION_4_3(v4);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  if (qword_2800C92C0 != -1)
  {
    OUTLINED_FUNCTION_1_36(&qword_2800C92C0);
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v8, v9, &unk_266DB589C);
  OUTLINED_FUNCTION_14_18();
  sub_266DA872C();
  v10 = sub_266DA86DC();
  OUTLINED_FUNCTION_61(v3, 1, v10);
  if (v17)
  {
    v11 = &qword_2800CC008;
    v12 = &qword_266DB59A8;
    v13 = v3;
LABEL_9:
    sub_266CDF688(v13, v11, v12);
    return MEMORY[0x277D84F90];
  }

  v14 = sub_266DA86CC();
  OUTLINED_FUNCTION_9_3();
  (*(v15 + 8))(v3, v10);
  sub_266CB7A30(v14);

  v16 = sub_266DA863C();
  OUTLINED_FUNCTION_61(v7, 1, v16);
  if (v17)
  {
    v11 = &qword_2800CC010;
    v12 = &qword_266DB59B0;
    v13 = v7;
    goto LABEL_9;
  }

  v18 = sub_266DA85FC();
  OUTLINED_FUNCTION_9_3();
  (*(v19 + 8))(v7, v16);
  return v18;
}

uint64_t sub_266CDE0E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC008, &qword_266DB59A8);
  OUTLINED_FUNCTION_4_3(v1);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC010, &qword_266DB59B0);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC018, &qword_266DB59B8);
  OUTLINED_FUNCTION_4_3(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  if (qword_2800C92C0 != -1)
  {
    OUTLINED_FUNCTION_1_36(&qword_2800C92C0);
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v11, v12, &unk_266DB589C);
  sub_266DA872C();
  v13 = sub_266DA86DC();
  OUTLINED_FUNCTION_61(v0, 1, v13);
  if (v21)
  {
    v14 = &qword_2800CC008;
    v15 = &qword_266DB59A8;
    v16 = v0;
LABEL_12:
    sub_266CDF688(v16, v14, v15);
    return 0;
  }

  v17 = sub_266DA86CC();
  OUTLINED_FUNCTION_9_3();
  v18 = OUTLINED_FUNCTION_14_18();
  v19(v18);
  sub_266CB7A30(v17);

  v20 = sub_266DA863C();
  OUTLINED_FUNCTION_61(v6, 1, v20);
  if (v21)
  {
    v14 = &qword_2800CC010;
    v15 = &qword_266DB59B0;
    v16 = v6;
    goto LABEL_12;
  }

  sub_266DA862C();
  OUTLINED_FUNCTION_9_3();
  (*(v22 + 8))(v6, v20);
  v23 = sub_266DA861C();
  OUTLINED_FUNCTION_61(v10, 1, v23);
  if (v24)
  {
    v14 = &qword_2800CC018;
    v15 = &qword_266DB59B8;
    v16 = v10;
    goto LABEL_12;
  }

  v26 = sub_266DA860C();
  OUTLINED_FUNCTION_9_3();
  (*(v27 + 8))(v10, v23);
  return v26;
}

uint64_t sub_266CDE3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  OUTLINED_FUNCTION_4_3(v1);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_12();
  v3 = sub_266DA876C();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  if (qword_2800C92F0 != -1)
  {
    swift_once();
  }

  v12 = qword_2800CBF88;
  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v13, v14, &unk_266DB589C);
  sub_266DA871C();
  OUTLINED_FUNCTION_61(v0, 1, v3);
  if (v15)
  {
    sub_266CDF688(v0, &qword_2800CA2E0, &unk_266DB05F0);
    return 0;
  }

  else
  {
    v16 = *(v5 + 32);
    v16(v11, v0, v3);
    (*(v5 + 16))(v9, v11, v3);
    v17 = *(v5 + 8);

    v17(v11, v3);
    MyContactNodeWrapper = type metadata accessor for FindMyContactNodeWrapper(0);
    v19 = OUTLINED_FUNCTION_7_7(MyContactNodeWrapper);
    v16((v19 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode), v9, v3);
    *(v19 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_ontologyNode) = v12;
  }

  return v19;
}

uint64_t sub_266CDE62C(uint64_t a1)
{
  v2 = sub_266CDF5A4(&qword_2800CC000, type metadata accessor for FindDeviceNLIntent, &unk_266DB58CC);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_266CDE6A8(uint64_t a1)
{
  v2 = sub_266CDF5A4(&qword_2800CC000, type metadata accessor for FindDeviceNLIntent, &unk_266DB58CC);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_266CDE714(uint64_t a1)
{
  v2 = sub_266CDF5A4(&qword_2800CC000, type metadata accessor for FindDeviceNLIntent, &unk_266DB58CC);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_266CDE780()
{
  if (qword_2800C92D8 != -1)
  {
    OUTLINED_FUNCTION_3_31(&qword_2800C92D8);
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  v2 = sub_266CDF5A4(v0, v1, &unk_266DB589C);
  OUTLINED_FUNCTION_9_14(v2, v3, v4, v5, v6, v7, v8, v9, v19);
  v17 = v21;
  if (v21)
  {

    return 0;
  }

  else
  {
    if (qword_2800C92C0 != -1)
    {
      v17 = OUTLINED_FUNCTION_1_36(&qword_2800C92C0);
    }

    OUTLINED_FUNCTION_9_14(v17, v10, v11, v12, v13, v14, v15, v16, v20);
    if (qword_2800C92E0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2800C92E0);
    }

    sub_266DA873C();
    return 1;
  }
}

id sub_266CDE900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95D8, &unk_266DAD560);
  OUTLINED_FUNCTION_4_3(v1);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_12();
  type metadata accessor for DeviceQuery();
  if (qword_2800C92E0 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_2800C92E0);
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v3, v4, &unk_266DB589C);
  OUTLINED_FUNCTION_11_15();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_266CAB33C(v18, v19, 0);
  if (qword_2800C92D8 != -1)
  {
    OUTLINED_FUNCTION_3_31(&qword_2800C92D8);
  }

  OUTLINED_FUNCTION_11_15();
  if (v19)
  {
    v7 = sub_266DAA6FC();
  }

  else
  {
    v7 = 0;
  }

  [v6 setDeviceName_];

  if (qword_2800C92C0 != -1)
  {
    OUTLINED_FUNCTION_1_36(&qword_2800C92C0);
  }

  OUTLINED_FUNCTION_11_15();
  if (v19)
  {
    v8 = sub_266DAA6FC();
  }

  else
  {
    v8 = 0;
  }

  [v6 setDeviceType_];

  v9 = sub_266CDE3BC();
  if (v9)
  {
    sub_266CDED0C(v0);

    v10 = sub_266DA867C();
    OUTLINED_FUNCTION_61(v0, 1, v10);
    if (v11)
    {
      sub_266CDF688(v0, &qword_2800C95D8, &unk_266DAD560);
      v9 = 0;
    }

    else
    {
      PersonIntentNode.skeletonINPerson.getter();
      v9 = v12;
      OUTLINED_FUNCTION_9_3();
      v13 = OUTLINED_FUNCTION_14_18();
      v14(v13);
    }
  }

  [v6 setDeviceOwner_];

  sub_266CDDEC0();
  sub_266CC016C();
  sub_266CDE0E4();
  if (v15)
  {
    v16 = sub_266DAA6FC();
  }

  else
  {
    v16 = 0;
  }

  [v6 setDeviceTypeOriginalInput_];

  return v6;
}

uint64_t sub_266CDEBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA876C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v4);
  MyContactNodeWrapper = type metadata accessor for FindMyContactNodeWrapper(0);
  v11 = OUTLINED_FUNCTION_7_7(MyContactNodeWrapper);
  (*(v6 + 32))(v11 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode, v9, v4);
  *(v11 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_ontologyNode) = a2;

  return v11;
}

uint64_t sub_266CDED0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_266DA876C();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v22 = v1;
  if (qword_2800C9300 != -1)
  {
    OUTLINED_FUNCTION_5_29(&qword_2800C9300);
  }

  type metadata accessor for FindMyContactNodeWrapper(0);
  sub_266CDF5A4(&qword_2800CBFC8, type metadata accessor for FindMyContactNodeWrapper, &unk_266DB590C);
  sub_266DA871C();
  OUTLINED_FUNCTION_61(v6, 1, v7);
  if (v14)
  {
    sub_266CDF688(v6, &qword_2800CA2E0, &unk_266DB05F0);
    v18 = 1;
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
    v15 = OUTLINED_FUNCTION_14_18();
    v16(v15);
    v17 = sub_266DA850C();
    OUTLINED_FUNCTION_7_7(v17);
    sub_266DA84FC();
    sub_266DA866C();
    (*(v9 + 8))(v13, v7);
    v18 = 0;
  }

  v19 = sub_266DA867C();
  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v19);
}

uint64_t sub_266CDEF88()
{
  v1 = OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode;
  sub_266DA876C();
  OUTLINED_FUNCTION_9_3();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_266CDF058(uint64_t a1)
{
  result = sub_266DA876C();
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

uint64_t sub_266CDF154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode;
  v5 = sub_266DA876C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_266CDF1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_266CDEBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CDF20C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1928](a1, WitnessTable);
}

uint64_t sub_266CDF270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1920](a1, WitnessTable);
}

uint64_t sub_266CDF2C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DAE4A0;
  v1 = sub_266DA850C();
  swift_allocObject();
  v2 = sub_266DA84FC();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  sub_266DA83FC();
  swift_allocObject();
  result = sub_266DA83EC();
  qword_2800E6328 = result;
  return result;
}

uint64_t sub_266CDF394(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266DAE4A0;
  if (qword_2800C9300 != -1)
  {
    OUTLINED_FUNCTION_5_29(&qword_2800C9300);
  }

  v4 = qword_2800E6328;
  v5 = sub_266DA83FC();
  v6 = MEMORY[0x277D5E210];
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;

  return sub_266DA83EC();
}

uint64_t sub_266CDF494()
{
  v0 = sub_266DA840C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_266CDF5A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266CDF634(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266CDF688(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_29(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_9_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_266DA873C();
}

void *OUTLINED_FUNCTION_11_15()
{

  return sub_266DA873C();
}

uint64_t sub_266CDF7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_266DA9D5C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - v11;
  sub_266DA9D1C();
  v13 = sub_266DA9EBC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_266CDFC44(v12);
  }

  else
  {
    v14 = v3;
    v15 = sub_266DA9EAC();
    v17 = v16;
    (*(*(v13 - 8) + 8))(v12, v13);
    v18 = sub_266DA9D3C();
    if ((v19 & 1) == 0)
    {
      v20 = v18;
      v21 = sub_266DA9D4C();
      if ((v22 & 1) == 0)
      {
        v38 = v21;
        v39 = a1;
        v40._countAndFlagsBits = sub_266DAA73C();
        DefaultLocationLabel.init(rawValue:)(v40);
        v41 = LOBYTE(v54[0]);
        if (LOBYTE(v54[0]) == 5)
        {
          v42 = sub_266DAA73C();
          sub_266D91A18(v42, v43, v54);

          v44 = v55;
          if (v55 == 255)
          {
            v44 = 1;
            v41 = v15;
            v45 = v17;
          }

          else
          {
            v41 = v54[0];
            v45 = v54[1];
          }
        }

        else
        {

          v45 = 0;
          v44 = 0;
        }

        v46 = v39;
        v47 = sub_266DA9D2C();
        v49 = v48;
        result = (*(v4 + 8))(v46, v14);
        v50 = v53;
        *v53 = v41;
        *(v50 + 8) = v45;
        *(v50 + 16) = v44;
        *(v50 + 24) = v20;
        *(v50 + 32) = v38;
        *(v50 + 40) = 0;
        *(v50 + 48) = v47;
        *(v50 + 56) = v49;
        return result;
      }
    }

    v3 = v14;
  }

  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v23 = sub_266DA94AC();
  __swift_project_value_buffer(v23, &unk_28156FCA8);
  v24 = *(v4 + 16);
  v24(v9, a1, v3);
  v25 = sub_266DA948C();
  v26 = sub_266DAAAEC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v52 = a1;
    v29 = v28;
    v54[0] = v28;
    *v27 = 136315138;
    v24(v7, v9, v3);
    v30 = sub_266DAA72C();
    v32 = v31;
    v33 = *(v4 + 8);
    v33(v9, v3);
    v34 = sub_266C22A3C(v30, v32, v54);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_266C08000, v25, v26, "Required fields are missing from %s. Could not make LabelledLocation", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x26D5F2480](v29, -1, -1);
    MEMORY[0x26D5F2480](v27, -1, -1);

    result = (v33)(v52, v3);
  }

  else
  {

    v36 = *(v4 + 8);
    v36(a1, v3);
    result = (v36)(v9, v3);
  }

  v37 = v53;
  *(v53 + 16) = 0u;
  *(v37 + 32) = 0u;
  *v37 = 0u;
  *(v37 + 48) = 0;
  *(v37 + 56) = 1;
  return result;
}

uint64_t sub_266CDFC44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL String.isNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

uint64_t String.firstLetterCapitalized(with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC030, &qword_266DB59D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;

  v22 = sub_266CDFE6C(1, a2, a3);
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v12 = sub_266DA750C();
  (*(*(v12 - 8) + 16))(v8, a1, v12);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  sub_266CDFF2C();
  v13 = sub_266DAAC5C();
  v15 = v14;
  sub_266CDFF80(v8);

  v16 = sub_266CDFFE8(1uLL, a2, a3);
  v21[0] = v13;
  v21[1] = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  sub_266CE00BC();

  sub_266DAA7FC();

  return v21[0];
}

uint64_t sub_266CDFE6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_266DAA7DC();
    v3 = sub_266DAA8AC();

    return v3;
  }

  return result;
}

unint64_t sub_266CDFF2C()
{
  result = qword_2800CC038;
  if (!qword_2800CC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC038);
  }

  return result;
}

uint64_t sub_266CDFF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC030, &qword_266DB59D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266CDFFE8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_266DAA7DC();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_266DAA8AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_266CE00BC()
{
  result = qword_2800CC040;
  if (!qword_2800CC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC040);
  }

  return result;
}

Swift::Void __swiftcall String.setIfNotNil(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    object = a1.value._object;
    countAndFlagsBits = a1.value._countAndFlagsBits;

    *v1 = countAndFlagsBits;
    v1[1] = object;
  }
}

BOOL Optional<A>.existsAndNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 != 0;
  return a2 && v3;
}

uint64_t sub_266CE017C()
{
  v0 = sub_266DA750C();
  __swift_allocate_value_buffer(v0, qword_2800E6350);
  __swift_project_value_buffer(v0, qword_2800E6350);
  return sub_266DA74BC();
}

void sub_266CE01DC(id *a1)
{
  v1 = *a1;
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    v6 = sub_266CC8C30();
    v8 = sub_266C22A3C(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_266C08000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D5F2480](v5, -1, -1);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }
}

uint64_t sub_266CE02F0(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x6C62697369766E69;
    case 1:
      return 0x656C6269736976;
  }

  result = sub_266DAB1DC();
  __break(1u);
  return result;
}

uint64_t sub_266CE0384@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = sub_266DA9EFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
}

uint64_t sub_266CE0540(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&v3, a1);
  result = v3;
  if (v4 == 1)
  {
    return sub_266CE0590(v3 & 1);
  }

  return result;
}

uint64_t sub_266CE0590(char a1)
{
  v1 = a1 & 1;
  sub_266C562D0();
  result = sub_266DAB15C();
  if (!result)
  {
    result = swift_allocError();
    *v3 = v1;
  }

  return result;
}

uint64_t sub_266CE05F8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC048);
  v1 = __swift_project_value_buffer(v0, qword_2800CC048);
  if (qword_2800C9120 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800C9800);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CE06C0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC178, &qword_266DB5CC0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v18[1] = *(v0 + 16);
  *(swift_allocObject() + 16) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  OUTLINED_FUNCTION_4_29();
  sub_266C230E8(v11, v12, &qword_266DB20D8, v13);
  sub_266CE5DC8();
  sub_266DA98FC();

  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v4;
  *(v14 + 32) = v2;
  v15 = &v10[*(v7 + 44)];
  *v15 = sub_266CE5E1C;
  *(v15 + 1) = v14;
  OUTLINED_FUNCTION_9_15();
  sub_266C230E8(v16, &qword_2800CC178, &qword_266DB5CC0, v17);

  OUTLINED_FUNCTION_26_8();
  sub_266DA97EC();
  sub_266C1825C(v10, &qword_2800CC178, &qword_266DB5CC0);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE0888(uint64_t a1, uint64_t a2, void *a3)
{
  v15[0] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0C0, &qword_266DB5C40);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  v15[1] = *(v3 + 16);
  *(swift_allocObject() + 16) = a3;

  v9 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  sub_266C230E8(&qword_2800CA918, &qword_2800CA910, &qword_266DB20D8, MEMORY[0x277CBCD90]);
  sub_266DA98FC();

  v10 = swift_allocObject();
  v10[2] = v15[0];
  v10[3] = a2;
  v10[4] = a3;
  v11 = &v8[*(v6 + 44)];
  *v11 = sub_266CE5BE8;
  *(v11 + 1) = v10;
  v12 = a3;
  sub_266C230E8(&qword_2800CC0C8, &qword_2800CC0C0, &qword_266DB5C40, &protocol conformance descriptor for Publishers.MapResult<A, B>);

  v13 = sub_266DA97EC();
  sub_266C1825C(v8, &qword_2800CC0C0, &qword_266DB5C40);
  return v13;
}

uint64_t sub_266CE0AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v35 = a4;
  v37 = a5;
  v36 = type metadata accessor for Friend(0);
  v8 = *(v36 - 8);
  v9 = MEMORY[0x28223BE20](v36);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v34 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC188, &qword_266DB5CC8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34 - v20;
  v22 = 0;
  v23 = *(a1 + 16);
  while (v23 != v22)
  {
    sub_266C676D4(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v12);
    v24 = *v12 == a2 && v12[1] == a3;
    if (v24 || (sub_266DAB17C() & 1) != 0)
    {
      sub_266C72608(v12, v18);
      v25 = 0;
      goto LABEL_11;
    }

    sub_266C701F4(v12);
    ++v22;
  }

  v25 = 1;
LABEL_11:
  v26 = v36;
  __swift_storeEnumTagSinglePayload(v18, v25, 1, v36);
  sub_266CE5D14(v18, v16, &qword_2800CA8C8, &unk_266DB2130);
  if (__swift_getEnumTagSinglePayload(v16, 1, v26) == 1)
  {
    sub_266C1825C(v18, &qword_2800CA8C8, &unk_266DB2130);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC190, &qword_266DB5CD0);
    v28 = v21;
    v29 = 1;
  }

  else
  {
    v30 = v34;
    sub_266C72608(v16, v34);
    sub_266C676D4(v30, v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC190, &qword_266DB5CD0);
    swift_storeEnumTagMultiPayload();
    sub_266C701F4(v30);
    sub_266C1825C(v18, &qword_2800CA8C8, &unk_266DB2130);
    v28 = v21;
    v29 = 0;
    v27 = v31;
  }

  __swift_storeEnumTagSinglePayload(v28, v29, 1, v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC190, &qword_266DB5CD0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v32) != 1)
  {
    return sub_266CE5E28(v21, v37, &qword_2800CC190, &qword_266DB5CD0);
  }

  *v37 = v35;
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v21, 1, v32);
  if (result != 1)
  {
    return sub_266C1825C(v21, &qword_2800CC188, &qword_266DB5CC8);
  }

  return result;
}

id sub_266CE0EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v37 = a4;
  v39 = a5;
  v38 = type metadata accessor for Friend(0);
  v8 = *(v38 - 8);
  v9 = MEMORY[0x28223BE20](v38);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v36 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D0, &qword_266DB5C48);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v36 - v20;
  v22 = 0;
  v23 = *(a1 + 16);
  while (v23 != v22)
  {
    sub_266C676D4(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v12);
    v24 = *v12 == a2 && v12[1] == a3;
    if (v24 || (sub_266DAB17C() & 1) != 0)
    {
      sub_266C72608(v12, v18);
      v25 = 0;
      goto LABEL_11;
    }

    sub_266C701F4(v12);
    ++v22;
  }

  v25 = 1;
LABEL_11:
  v26 = v38;
  __swift_storeEnumTagSinglePayload(v18, v25, 1, v38);
  sub_266CE5D14(v18, v16, &qword_2800CA8C8, &unk_266DB2130);
  if (__swift_getEnumTagSinglePayload(v16, 1, v26) == 1)
  {
    sub_266C1825C(v18, &qword_2800CA8C8, &unk_266DB2130);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D8, &qword_266DB5C50);
    v28 = v21;
    v29 = 1;
  }

  else
  {
    v30 = v36;
    sub_266C72608(v16, v36);
    sub_266C676D4(v30, v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D8, &qword_266DB5C50);
    swift_storeEnumTagMultiPayload();
    sub_266C701F4(v30);
    sub_266C1825C(v18, &qword_2800CA8C8, &unk_266DB2130);
    v28 = v21;
    v29 = 0;
    v27 = v31;
  }

  __swift_storeEnumTagSinglePayload(v28, v29, 1, v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D8, &qword_266DB5C50);
  if (__swift_getEnumTagSinglePayload(v21, 1, v32) != 1)
  {
    return sub_266CE5E28(v21, v39, &qword_2800CC0D8, &qword_266DB5C50);
  }

  v33 = v37;
  *v39 = v37;
  swift_storeEnumTagMultiPayload();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v32);
  result = v33;
  if (EnumTagSinglePayload != 1)
  {
    return sub_266C1825C(v21, &qword_2800CC0D0, &qword_266DB5C48);
  }

  return result;
}

void sub_266CE1280()
{
  OUTLINED_FUNCTION_6();
  v21 = v0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB100, &qword_266DB3408);
  OUTLINED_FUNCTION_0_2();
  v2 = v1;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC150, &qword_266DB5CB0);
  OUTLINED_FUNCTION_7_7(v6);
  v7 = sub_266DA96FC();
  v23[4] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB0A0, &qword_266DB33D0);
  OUTLINED_FUNCTION_7_7(v8);

  v23[5] = sub_266DA96FC();
  LOBYTE(v22) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1F8, &qword_266DB0290);
  OUTLINED_FUNCTION_7_7(v9);

  v10 = sub_266DA973C();
  v23[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB038, &qword_266DB3398);
  OUTLINED_FUNCTION_7_7(v11);

  v23[7] = sub_266DA96FC();
  v23[8] = MEMORY[0x277D84FA0];
  v22 = v7;
  sub_266C230E8(&qword_2800CC158, &qword_2800CC150, &qword_266DB5CB0, MEMORY[0x277CBCE20]);

  sub_266DA98AC();

  sub_266C9D670();
  v13 = v12;
  (*(v2 + 8))(v5, v20);
  v23[0] = v13;

  sub_266C9D920();
  v15 = v14;

  v23[1] = v15;

  sub_266C9DBFC();
  v17 = v16;

  v23[3] = v17;
  v22 = v10;
  sub_266C230E8(&qword_2800CC160, &qword_2800CA1F8, &qword_266DB0290, MEMORY[0x277CBCE48]);

  OUTLINED_FUNCTION_26_8();
  v18 = sub_266DA97EC();

  v23[2] = v18;
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  v19 = MEMORY[0x277CBCD90];
  sub_266C230E8(&qword_2800CA918, &qword_2800CA910, &qword_266DB20D8, MEMORY[0x277CBCD90]);
  OUTLINED_FUNCTION_23_11();
  sub_266DA986C();

  sub_266DA968C();

  v22 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
  sub_266C230E8(&qword_2800CA9D0, &qword_2800CA9C8, qword_266DB2160, v19);
  OUTLINED_FUNCTION_23_11();
  sub_266DA986C();

  sub_266DA968C();

  v22 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC168, &qword_266DB5CB8);
  sub_266C230E8(&qword_2800CC170, &qword_2800CC168, &qword_266DB5CB8, v19);
  OUTLINED_FUNCTION_23_11();
  sub_266DA986C();

  sub_266DA968C();

  memcpy(v21, v23, 0x48uLL);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE170C(uint64_t *a1)
{
  v2 = type metadata accessor for Friend(0);
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(*a1 + 16);
  if (!v8)
  {
    return 1;
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    sub_266C676D4(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9++, v6);
    v10 = *(v6 + 5);

    result = sub_266C701F4(v6);
    if (v10)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

void *sub_266CE1828()
{
  sub_266DA96CC();
  sub_266DA96CC();
  sub_266DA970C();
  v1 = *(v0 + 64);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_266DAAD4C();
    sub_266DA96AC();
    sub_266CE5D78(&qword_2800CC130, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_266DAAA4C();
    v1 = 1;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_266C33DE8(v1);
    }

    while (1)
    {
      sub_266DA969C();

      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_266DAAD6C())
      {
        sub_266DA96AC();
        swift_dynamicCast();
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      return sub_266C33DE8(v1);
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      return sub_266C33DE8(v1);
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266CE1A50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v85 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v83 = &v83 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v84 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v83 - v11;
  v13 = sub_266DA9F6C();
  v90 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v86 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v83 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v83 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v83 - v24;
  v26 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2 + v26, 1, v13);
  v28 = 0;
  v29 = 0;
  v89 = a1;
  if (!EnumTagSinglePayload)
  {
    v30 = v20;
    v31 = v23;
    v32 = v13;
    v33 = v90;
    (*(v90 + 2))(v25, v2 + v26, v32);
    v28 = sub_266DA9F0C();
    v29 = v34;
    v35 = v33;
    v13 = v32;
    v23 = v31;
    v20 = v30;
    a1 = v89;
    (*(v35 + 1))(v25, v13);
  }

  v88 = v2;
  sub_266CE5D14(a1, v12, &qword_2800CC128, &qword_266DB5C98);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_266C1825C(v12, &qword_2800CC128, &qword_266DB5C98);
    v37 = v90;
    if (!v29)
    {
      return result;
    }

    goto LABEL_16;
  }

  v38 = sub_266DA9F0C();
  v40 = v39;
  v37 = v90;
  result = (*(v90 + 1))(v12, v13);
  if (!v29)
  {
    if (!v40)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v40)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v28 == v38 && v29 == v40)
  {
  }

  v42 = sub_266DAB17C();

  if ((v42 & 1) == 0)
  {
LABEL_17:
    v43 = v84;
    sub_266CE5D14(v88 + v26, v84, &qword_2800CC128, &qword_266DB5C98);
    v44 = 0x2800C9000;
    if (__swift_getEnumTagSinglePayload(v43, 1, v13) == 1)
    {
      sub_266C1825C(v43, &qword_2800CC128, &qword_266DB5C98);
      v46 = v86;
      v45 = v87;
      v47 = v85;
      v48 = v89;
      goto LABEL_37;
    }

    (*(v37 + 4))(v23, v43, v13);
    v90 = v23;
    v49 = sub_266DA9F0C();
    v51 = v50;
    v48 = v89;
    v52 = v83;
    sub_266CE5D14(v89, v83, &qword_2800CC128, &qword_266DB5C98);
    if (__swift_getEnumTagSinglePayload(v52, 1, v13) == 1)
    {
      sub_266C1825C(v52, &qword_2800CC128, &qword_266DB5C98);

LABEL_21:
      if (qword_2800C9310 != -1)
      {
        swift_once();
      }

      v53 = sub_266DA94AC();
      __swift_project_value_buffer(v53, qword_2800CC048);
      (*(v37 + 2))(v20, v90, v13);
      v54 = sub_266DA948C();
      v55 = sub_266DAAB0C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v91 = v57;
        *v56 = 136315138;
        v84 = sub_266DA9F0C();
        v59 = v58;
        v60 = *(v37 + 1);
        v60(v20, v13);
        v61 = sub_266C22A3C(v84, v59, &v91);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_266C08000, v54, v55, "Stopping live locations for: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x26D5F2480](v57, -1, -1);
        v62 = v56;
        v48 = v89;
        MEMORY[0x26D5F2480](v62, -1, -1);
      }

      else
      {

        v60 = *(v37 + 1);
        v60(v20, v13);
      }

      v46 = v86;
      v45 = v87;
      v70 = v90;
      sub_266DA9A9C();
      v60(v70, v13);
      v47 = v85;
      goto LABEL_36;
    }

    v63 = sub_266DA9F0C();
    v65 = v64;
    v66 = v52;
    v67 = *(v37 + 1);
    v67(v66, v13);
    if (v49 == v63 && v51 == v65)
    {

      v48 = v89;
    }

    else
    {
      v69 = sub_266DAB17C();

      v48 = v89;
      if ((v69 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v67(v90, v13);
    v46 = v86;
    v45 = v87;
    v47 = v85;
LABEL_36:
    v44 = 0x2800C9000uLL;
LABEL_37:
    sub_266CE5D14(v48, v47, &qword_2800CC128, &qword_266DB5C98);
    if (__swift_getEnumTagSinglePayload(v47, 1, v13) == 1)
    {
      return sub_266C1825C(v47, &qword_2800CC128, &qword_266DB5C98);
    }

    else
    {
      (*(v37 + 4))(v45, v47, v13);
      if (*(v44 + 784) != -1)
      {
        swift_once();
      }

      v71 = sub_266DA94AC();
      __swift_project_value_buffer(v71, qword_2800CC048);
      (*(v37 + 2))(v46, v45, v13);
      v72 = sub_266DA948C();
      v73 = sub_266DAAB0C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v91 = v75;
        *v74 = 136315138;
        v76 = sub_266DA9F0C();
        v77 = v46;
        v79 = v78;
        v80 = *(v37 + 1);
        v80(v77, v13);
        v81 = sub_266C22A3C(v76, v79, &v91);

        *(v74 + 4) = v81;
        _os_log_impl(&dword_266C08000, v72, v73, "Starting live locations for: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        v82 = v75;
        v45 = v87;
        MEMORY[0x26D5F2480](v82, -1, -1);
        MEMORY[0x26D5F2480](v74, -1, -1);
      }

      else
      {

        v80 = *(v37 + 1);
        v80(v46, v13);
      }

      sub_266DA9ABC();
      return (v80)(v45, v13);
    }
  }

  return result;
}

void sub_266CE236C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v16 = v2;
  v4 = sub_266DA9C2C();
  v5 = OUTLINED_FUNCTION_4_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v6 = sub_266DA9D6C();
  v7 = OUTLINED_FUNCTION_4_3(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v15 = sub_266DA750C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  sub_266CE1280();
  memcpy((v0 + 16), v17, 0x48uLL);
  v12 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
  v13 = sub_266DA9F6C();
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_errored) = 0;
  sub_266DA9E0C();
  (*(v8 + 16))(v11, v3, v15);
  sub_266DA9DEC();
  sub_266DA9DDC();

  sub_266DA9DEC();
  sub_266DA9DBC();

  sub_266DA9DEC();
  sub_266DA9DFC();

  sub_266DA9DCC();

  sub_266DA9C1C();
  v14 = sub_266DA9B1C();
  OUTLINED_FUNCTION_7_7(v14);
  *(v1 + 88) = sub_266DA9A6C();
  sub_266CE5D78(&qword_2800CC148, type metadata accessor for FMFManagerWrapper, &unk_266DB5B58);

  sub_266DA9B0C();

  sub_266DA9A4C();

  sub_266DA9A8C();

  (*(v8 + 8))(v16, v15);
  OUTLINED_FUNCTION_5();
}

void sub_266CE2650()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CC048);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v4))
  {
    v5 = OUTLINED_FUNCTION_11();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "FMFManagerWrapper deinit", v5, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266CE28F0();

  sub_266C1825C(v1 + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend, &qword_2800CC128, &qword_266DB5C98);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE2794()
{
  sub_266CE2650();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FMFManagerWrapper(uint64_t a1)
{
  result = qword_2800CC068;
  if (!qword_2800CC068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266CE2840(uint64_t a1)
{
  sub_266CE5584(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_266CE28F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  OUTLINED_FUNCTION_4_3(v2);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = __dst - v4 + 22;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

  v6 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v6, qword_2800CC048);
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v8))
  {
    *OUTLINED_FUNCTION_11() = 0;
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_266CE1828();
  v14 = sub_266DA9F6C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v14);
  sub_266CE1A50(v5);
  v15 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
  swift_beginAccess();
  sub_266CE5CA4(v5, v1 + v15);
  swift_endAccess();
  return sub_266DA9A7C();
}

void sub_266CE2A64()
{
  OUTLINED_FUNCTION_6();
  v19 = v1;
  v3 = v2;
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC138, &unk_266DB5CA0);
  OUTLINED_FUNCTION_0_2();
  v20 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_5();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  type metadata accessor for Friend(0);
  OUTLINED_FUNCTION_4_29();
  sub_266C230E8(v13, v14, &qword_266DB20D8, v15);
  sub_266DA97FC();

  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v19;
  v16[4] = v3;

  sub_266DA95CC();

  v17 = *(v20 + 8);
  v17(v10, v5);
  sub_266C230E8(&qword_2800CC140, &qword_2800CC138, &unk_266DB5CA0, MEMORY[0x277CBCB10]);
  sub_266DA97EC();
  v18 = OUTLINED_FUNCTION_26_8();
  (v17)(v18);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE2CC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Friend(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = 0;
  v14 = *a1;
  v15 = *(v14 + 16);
  while (1)
  {
    if (v15 == v13)
    {
      v17 = 1;
      return __swift_storeEnumTagSinglePayload(a4, v17, 1, v8);
    }

    if (v13 >= *(v14 + 16))
    {
      break;
    }

    sub_266C676D4(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v12);
    v16 = *v12 == a2 && v12[1] == a3;
    if (v16 || (sub_266DAB17C() & 1) != 0)
    {
      sub_266C72608(v12, a4);
      v17 = 0;
      return __swift_storeEnumTagSinglePayload(a4, v17, 1, v8);
    }

    result = sub_266C701F4(v12);
    ++v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_266CE2E2C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_266CE2E80();

  return sub_266C676D4(a1, a4);
}

void sub_266CE2E80()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  OUTLINED_FUNCTION_4_3(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v40 = &v38 - v8;
  v44 = sub_266DA9F6C();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_16();
  v39 = v13;
  v41 = v0;
  v14 = sub_266DA9AEC();
  v15 = 0;
  v42 = *(v14 + 16);
  v43 = v10 + 16;
  while (v42 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_8_9();
    v17 = *(v10 + 16);
    v17(v1, v14 + v16 + *(v10 + 72) * v15, v44);
    if (sub_266DA9F0C() == v5 && v18 == v3)
    {

LABEL_15:

      v33 = v39;
      v34 = v44;
      (*(v10 + 32))(v39, v1, v44);
      v35 = v40;
      v17(v40, v33, v34);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v34);
      v36 = v41;
      sub_266CE1A50(v35);
      (*(v10 + 8))(v33, v34);
      v37 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
      swift_beginAccess();
      sub_266CE5CA4(v35, v36 + v37);
      swift_endAccess();
      goto LABEL_16;
    }

    v20 = v5;
    v21 = v3;
    v22 = sub_266DAB17C();

    if (v22)
    {
      goto LABEL_15;
    }

    (*(v10 + 8))(v1, v44);
    ++v15;
    v3 = v21;
    v5 = v20;
  }

  if (qword_2800C9310 == -1)
  {
    goto LABEL_11;
  }

LABEL_18:
  OUTLINED_FUNCTION_0_54(&qword_2800C9310);
LABEL_11:
  v23 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v23, qword_2800CC048);

  v24 = sub_266DA948C();
  v25 = sub_266DAAAEC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14_0();
    v27 = OUTLINED_FUNCTION_13_0();
    v45 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_266C22A3C(v5, v3, &v45);
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

LABEL_16:
  OUTLINED_FUNCTION_5();
}

void sub_266CE31F8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v68 = sub_266DA9F6C();
  OUTLINED_FUNCTION_0_2();
  v76 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_5();
  v75 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_16();
  v74 = v9;
  v10 = type metadata accessor for Friend(0);
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  v14 = sub_266DA9D5C();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v66 - v22;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

  v67 = v13;
  v24 = sub_266DA94AC();
  v69 = __swift_project_value_buffer(v24, qword_2800CC048);
  v25 = sub_266DA948C();
  v26 = sub_266DAAB0C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_11();
    *v27 = 0;
    _os_log_impl(&dword_266C08000, v25, v26, "FMFManager did complete first fetch.", v27, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v28 = sub_266DA9AAC();
  if (!v28)
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);
  v70 = v1;
  if (v29)
  {
    v66[1] = v3;
    v32 = *(v16 + 16);
    v31 = v16 + 16;
    v30 = v32;
    OUTLINED_FUNCTION_8_9();
    v66[0] = v33;
    v35 = v33 + v34;
    v36 = *(v31 + 56);
    v37 = MEMORY[0x277D84F90];
    v72 = v20;
    v71 = v36;
    do
    {
      v30(v23, v35, v14);
      v30(v20, v23, v14);
      sub_266CDF7CC(v20, v78);
      (*(v31 - 8))(v23, v14);
      if (v78[7] == 1)
      {
        OUTLINED_FUNCTION_2_36();
        sub_266C1825C(&v77, &qword_2800CC470, &qword_266DB5C80);
      }

      else
      {
        OUTLINED_FUNCTION_2_36();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266CFA75C(0, *(v37 + 16) + 1, 1, v37);
          v37 = v41;
        }

        v39 = *(v37 + 16);
        v38 = *(v37 + 24);
        if (v39 >= v38 >> 1)
        {
          v42 = OUTLINED_FUNCTION_3_21(v38);
          sub_266CFA75C(v42, v39 + 1, 1, v37);
          v37 = v43;
        }

        OUTLINED_FUNCTION_18_13();
        *(v37 + 16) = v39 + 1;
        OUTLINED_FUNCTION_25_9(v37 + (v39 << 6), v40);
        v20 = v72;
        v36 = v71;
      }

      v35 += v36;
      --v29;
    }

    while (v29);

    v1 = v70;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v44 = sub_266DA948C();
  v45 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v45))
  {
    v46 = OUTLINED_FUNCTION_14_0();
    *v46 = 134217984;
    *(v46 + 4) = *(v37 + 16);

    _os_log_impl(&dword_266C08000, v44, v45, "Labelled locations initialized (count: %ld)", v46, 0xCu);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v78[0] = v37;
  sub_266DA96DC();

  v47 = *(v1 + 48);
  v48 = sub_266DA9AEC();
  v49 = *(v48 + 16);
  if (v49)
  {
    v71 = v47;
    v78[0] = MEMORY[0x277D84F90];
    sub_266C38B40(0, v49, 0);
    v50 = v78[0];
    v51 = *(v76 + 16);
    OUTLINED_FUNCTION_8_9();
    v69 = v48;
    v53 = v48 + v52;
    v72 = *(v54 + 56);
    v76 = v54;
    v55 = (v54 - 8);
    v56 = v68;
    v57 = v67;
    do
    {
      v58 = v74;
      v59 = OUTLINED_FUNCTION_26_8();
      v51(v59);
      v60 = v75;
      (v51)(v75, v58, v56);
      sub_266D7E93C(v60, v57);
      (*v55)(v58, v56);
      v78[0] = v50;
      v62 = *(v50 + 16);
      v61 = *(v50 + 24);
      if (v62 >= v61 >> 1)
      {
        v65 = OUTLINED_FUNCTION_3_21(v61);
        sub_266C38B40(v65, v62 + 1, 1);
        v56 = v68;
        v50 = v78[0];
      }

      *(v50 + 16) = v62 + 1;
      OUTLINED_FUNCTION_8_9();
      sub_266C72608(v57, v50 + v63 + *(v64 + 72) * v62);
      v53 += v72;
      --v49;
    }

    while (v49);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v78[0] = v50;
  sub_266DA96DC();

  LOBYTE(v78[0]) = 1;
  sub_266DA971C();
  OUTLINED_FUNCTION_5();
}

void sub_266CE386C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

  v5 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v5, qword_2800CC048);
  v6 = a2;
  v7 = sub_266DA948C();
  v8 = sub_266DAAAEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14_0();
    v10 = OUTLINED_FUNCTION_13_0();
    v21 = v10;
    *v9 = 136315138;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
    v12 = sub_266DAA72C();
    v14 = sub_266C22A3C(v12, v13, &v21);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  *(v3 + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_errored) = 1;
  v21 = a2;
  v20 = a2;
  sub_266DA96CC();
}

void sub_266CE39E0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v58 = sub_266DA9F6C();
  OUTLINED_FUNCTION_0_2();
  v63 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_5();
  v62 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_16();
  v61 = v9;
  v10 = type metadata accessor for Friend(0);
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC120, &qword_266DB5C88);
  v15 = OUTLINED_FUNCTION_4_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_5();
  v59 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  if (qword_2800C9310 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v21 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v21, qword_2800CC048);

    v22 = sub_266DA948C();
    v23 = sub_266DAAB0C();
    if (!OUTLINED_FUNCTION_16_0(v23))
    {
      break;
    }

    v54 = v23;
    v55 = v22;
    v56 = v1;
    v57 = v13;
    v24 = swift_slowAlloc();
    v25 = 0;
    *v24 = 134218240;
    v13 = *(v3 + 16);
    *(v24 + 4) = v13;
    v53 = v24;
    *(v24 + 12) = 2048;
    while (1)
    {
      if (v13 == v25)
      {
        v30 = 0;
LABEL_23:
        v34 = v53;
        *(v53 + 14) = v30;

        v35 = v55;
        _os_log_impl(&dword_266C08000, v55, v54, "Friends changed (count: %ld, with location: %ld)", v34, 0x16u);
        OUTLINED_FUNCTION_6_1();

        v1 = v56;
        v13 = v57;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_8_9();
      sub_266DA9F5C();
      v26 = sub_266DA9BDC();
      if (__swift_getEnumTagSinglePayload(v20, 1, v26) == 1)
      {
        sub_266C1825C(v20, &qword_2800CC120, &qword_266DB5C88);
        goto LABEL_8;
      }

      v27 = sub_266DA9BCC();
      OUTLINED_FUNCTION_9_3();
      v29 = *(v28 + 8);
      v1 = v28 + 8;
      v29(v20, v26);
      if (v27)
      {
        break;
      }

LABEL_8:
      ++v25;
    }

    v31 = 0;
    v51 = v3;
LABEL_12:

    v32 = __OFADD__(v31, 1);
    v20 = v31 + 1;
    v52 = v20;
    if (v32)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if (v25 == v13)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v3 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v3 == v13)
      {
        v3 = v51;
        v30 = v52;
        goto LABEL_23;
      }

      if (v3 >= v13)
      {
        goto LABEL_31;
      }

      v20 = v13;
      v33 = v59;
      sub_266DA9F5C();
      if (__swift_getEnumTagSinglePayload(v33, 1, v26) == 1)
      {
        sub_266C1825C(v33, &qword_2800CC120, &qword_266DB5C88);
      }

      else
      {
        v27 = sub_266DA9BCC();
        v29(v33, v26);
        if (v27)
        {
          ++v25;
          v13 = v20;
          v31 = v52;
          goto LABEL_12;
        }
      }

      ++v25;
      v13 = v20;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

LABEL_24:
  v36 = *(v3 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v57 = *(v1 + 48);
    v64 = MEMORY[0x277D84F90];
    sub_266C38B40(0, v36, 0);
    v37 = v64;
    v38 = *(v63 + 16);
    OUTLINED_FUNCTION_8_9();
    v40 = v3 + v39;
    v59 = *(v41 + 56);
    v63 = v41;
    v42 = (v41 - 8);
    v43 = v58;
    do
    {
      v44 = v61;
      v38(v61, v40, v43);
      v45 = v62;
      v38(v62, v44, v43);
      sub_266D7E93C(v45, v13);
      (*v42)(v44, v43);
      v64 = v37;
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        v50 = OUTLINED_FUNCTION_3_21(v46);
        sub_266C38B40(v50, v47 + 1, 1);
        v43 = v58;
        v37 = v64;
      }

      *(v37 + 16) = v47 + 1;
      OUTLINED_FUNCTION_8_9();
      sub_266C72608(v13, v37 + v48 + *(v49 + 72) * v47);
      v40 += v59;
      --v36;
    }

    while (v36);
  }

  v64 = v37;
  sub_266DA96DC();

  OUTLINED_FUNCTION_5();
}

void sub_266CE3F20()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = sub_266DA9D5C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_5();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

  v14 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v14, qword_2800CC048);

  v15 = sub_266DA948C();
  v16 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v16))
  {
    v17 = OUTLINED_FUNCTION_14_0();
    *v17 = 134217984;
    *(v17 + 4) = *(v3 + 16);

    _os_log_impl(&dword_266C08000, v15, v16, "Labelled locations changed (count: %ld)", v17, 0xCu);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v32[1] = *(v1 + 56);
  v18 = *(v3 + 16);
  if (v18)
  {
    v21 = *(v6 + 16);
    v20 = v6 + 16;
    v19 = v21;
    OUTLINED_FUNCTION_8_9();
    v23 = v3 + v22;
    v24 = *(v20 + 56);
    v25 = MEMORY[0x277D84F90];
    v34 = v10;
    v33 = v24;
    do
    {
      v19(v13, v23, v4);
      v19(v10, v13, v4);
      sub_266CDF7CC(v10, v36);
      (*(v20 - 8))(v13, v4);
      if (v36[7] == 1)
      {
        OUTLINED_FUNCTION_2_36();
        sub_266C1825C(&v35, &qword_2800CC470, &qword_266DB5C80);
      }

      else
      {
        OUTLINED_FUNCTION_2_36();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266CFA75C(0, *(v25 + 16) + 1, 1, v25);
          v25 = v29;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          v30 = OUTLINED_FUNCTION_3_21(v26);
          sub_266CFA75C(v30, v27 + 1, 1, v25);
          v25 = v31;
        }

        OUTLINED_FUNCTION_18_13();
        *(v25 + 16) = v27 + 1;
        OUTLINED_FUNCTION_25_9(v25 + (v27 << 6), v28);
        v10 = v34;
        v24 = v33;
      }

      v23 += v24;
      --v18;
    }

    while (v18);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v36[0] = v25;
  sub_266DA96DC();

  OUTLINED_FUNCTION_5();
}

void sub_266CE420C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_4_3(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v11 = sub_266DA9F9C();
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_12();
  MEMORY[0x28223BE20](v15);
  v17 = v30 - v16;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

  v18 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v18, qword_2800CC048);
  v19 = *(v13 + 16);
  v31 = v4;
  v32 = v19;
  v19(v17, v4, v11);
  v20 = sub_266DA948C();
  v21 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v21))
  {
    v22 = OUTLINED_FUNCTION_14_0();
    v30[0] = v10;
    v23 = v22;
    v24 = OUTLINED_FUNCTION_13_0();
    v30[1] = v6;
    v25 = v24;
    v33 = v24;
    *v23 = 136315138;
    v32(v1, v17, v11);
    v26 = sub_266DAA72C();
    v30[2] = v2;
    v28 = v27;
    (*(v13 + 8))(v17, v11);
    v29 = sub_266C22A3C(v26, v28, &v33);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_266C08000, v20, v21, "Me Device Info changed: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_6_1();
    v10 = v30[0];
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    (*(v13 + 8))(v17, v11);
  }

  v32(v10, v31, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  sub_266DA9ADC();
  sub_266CE4650();

  sub_266C1825C(v10, &qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE44E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_4_3(v4);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_13();
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_2800C9310);
  }

  v6 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v6, qword_2800CC048);

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v8))
  {
    v9 = OUTLINED_FUNCTION_14_0();
    *v9 = 134217984;
    *(v9 + 4) = *(a2 + 16);

    _os_log_impl(&dword_266C08000, v7, v8, "FMFDevices changed (count: %ld)", v9, 0xCu);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  sub_266DA9ACC();
  sub_266CE4650();
  return sub_266C1825C(v2, &qword_2800CC118, &qword_266DB5C78);
}

void sub_266CE4650()
{
  OUTLINED_FUNCTION_6();
  v41 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC110, &qword_266DB5C70);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_16();
  v42 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_4_3(v12);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_266DA9F9C();
  OUTLINED_FUNCTION_0_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_6();
  v22 = v21 - v20;
  v23 = OUTLINED_FUNCTION_75();
  sub_266CE5D14(v23, v24, &qword_2800CC118, &qword_266DB5C78);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_266C1825C(v15, &qword_2800CC118, &qword_266DB5C78);
  }

  else
  {
    v25 = (*(v18 + 32))(v22, v15, v16);
    if (v3)
    {
      MEMORY[0x28223BE20](v25);
      *(&v40 - 2) = v22;
      sub_266CE0384(sub_266CE5C84, v3, v42);
      v26 = sub_266DA9F8C();
      v28 = v27;
      v29 = sub_266DA9F7C();
      if (v30)
      {
        if (v26 == v29 && v30 == v28)
        {

          v32 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_75();
          v32 = sub_266DAB17C();
        }
      }

      else
      {

        v32 = 0;
      }

      sub_266CE5D14(v42, v1, &qword_2800CC110, &qword_266DB5C70);
      v33 = sub_266DA9EFC();
      if (__swift_getEnumTagSinglePayload(v1, 1, v33) == 1)
      {
        sub_266C1825C(v1, &qword_2800CC110, &qword_266DB5C70);
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = sub_266DA9EEC();
        v35 = v36;
        OUTLINED_FUNCTION_9_3();
        (*(v37 + 8))(v1, v33);
      }

      sub_266CE5D14(v42, v8, &qword_2800CC110, &qword_266DB5C70);
      if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
      {
        sub_266C1825C(v8, &qword_2800CC110, &qword_266DB5C70);
        v38 = 0;
      }

      else
      {
        v38 = sub_266DA9EDC();
        OUTLINED_FUNCTION_9_3();
        (*(v39 + 8))(v8, v33);
      }

      v43 = v32 & 1;
      v44 = v34;
      v45 = v35;
      v46 = v38 & 1;
      sub_266DA96DC();
      sub_266C1825C(v42, &qword_2800CC110, &qword_266DB5C70);
    }

    (*(v18 + 8))(v22, v16);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE4A74()
{
  v0 = sub_266DA9ECC();
  v2 = v1;
  v3 = sub_266DA9F7C();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      return 1;
    }

    else
    {
      v6 = sub_266DAB17C();

      return v6 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_266CE4B30()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0E0, &qword_266DB5C58);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0E8, &qword_266DB5C60);
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0F0, &qword_266DB5C68);
  OUTLINED_FUNCTION_4_3(v12);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  if ((v4 - 1) > 1)
  {
    if (qword_2800C9310 != -1)
    {
      OUTLINED_FUNCTION_0_54(&qword_2800C9310);
    }

    v17 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v17, qword_2800CC048);
    v18 = sub_266DA948C();
    v19 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v19))
    {
      v20 = OUTLINED_FUNCTION_14_0();
      v21 = OUTLINED_FUNCTION_13_0();
      v47 = v21;
      *v20 = 136315138;
      v22 = sub_266CE02F0(v4);
      v24 = sub_266C22A3C(v22, v23, &v47);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_266C08000, v18, v19, "Unsupported visibility of %s, FMFCore only support binary visibility setting.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    LOBYTE(v47) = 1;
    sub_266CE5BF4();
    sub_266DA975C();
    OUTLINED_FUNCTION_4_31(&qword_2800CC100, &qword_2800CC0E8, &qword_266DB5C60);
    sub_266DA97EC();
    v25 = OUTLINED_FUNCTION_75();
    v26(v25);
  }

  else
  {
    v46 = v7;
    sub_266DA9A5C();
    v16 = sub_266DA9C0C();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_266C1825C(v15, &qword_2800CC0F0, &qword_266DB5C68);
LABEL_10:
      v29 = sub_266DA9E4C();
      OUTLINED_FUNCTION_7_7(v29);
      v30 = sub_266DA9E3C();
      OUTLINED_FUNCTION_26_0();
      v31 = swift_allocObject();
      *(v31 + 16) = v2;
      *(v31 + 24) = v30;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC098, &unk_266DB5C30);
      OUTLINED_FUNCTION_7_7(v32);

      v47 = sub_266DA97AC();
      OUTLINED_FUNCTION_8_13();
      sub_266C230E8(v33, &qword_2800CC098, &unk_266DB5C30, v34);
      sub_266CE5BF4();
      sub_266DA98FC();

      OUTLINED_FUNCTION_11_16(&qword_2800CC108, &qword_2800CC0E0, &qword_266DB5C58);
      sub_266DA97EC();

      (*(v46 + 8))(v1, v5);
      goto LABEL_16;
    }

    v45[1] = v10;
    v27 = sub_266DA9BFC();
    OUTLINED_FUNCTION_9_3();
    (*(v28 + 8))(v15, v16);
    if (((v4 == 2) ^ v27))
    {
      goto LABEL_10;
    }

    if (qword_2800C9310 != -1)
    {
      OUTLINED_FUNCTION_0_54(&qword_2800C9310);
    }

    v35 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v35, qword_2800CC048);
    v36 = sub_266DA948C();
    v37 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v37))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_13_14();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    LOBYTE(v47) = 2;
    sub_266CE5BF4();
    sub_266DA975C();
    OUTLINED_FUNCTION_4_31(&qword_2800CC100, &qword_2800CC0E8, &qword_266DB5C60);
    sub_266DA97EC();
    v43 = OUTLINED_FUNCTION_75();
    v44(v43);
  }

LABEL_16:
  OUTLINED_FUNCTION_5();
}

void sub_266CE50C8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2B0, &qword_266DB5C10);
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = v35 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC080, &qword_266DB5C18);
  OUTLINED_FUNCTION_0_2();
  v35[2] = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_13();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC088, &qword_266DB5C20);
  OUTLINED_FUNCTION_0_2();
  v36 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  v16 = [v2 friend];
  if (v16 && (v17 = sub_266C22F3C(v16), v18))
  {
    v19 = v17;
    v20 = v18;
    v35[1] = sub_266C562D0();
    v21 = swift_allocError();
    *v22 = 1;
    v23 = sub_266CE0888(v19, v20, v21);

    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    OUTLINED_FUNCTION_26_0();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_266CE5ADC;
    *(v25 + 24) = v24;
    v38 = v23;
    v39 = sub_266CE5B50;
    v40 = v25;
    OUTLINED_FUNCTION_26_0();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_266CE5B58;
    *(v26 + 24) = v0;
    v27 = v2;

    sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC090, &qword_266DB5C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC098, &unk_266DB5C30);
    v35[0] = v11;
    OUTLINED_FUNCTION_9_15();
    sub_266C230E8(v28, &qword_2800CC090, &qword_266DB5C28, v29);
    OUTLINED_FUNCTION_8_13();
    sub_266C230E8(v30, &qword_2800CC098, &unk_266DB5C30, v31);
    sub_266DA98DC();

    sub_266C230E8(&qword_2800CC0B0, &qword_2800CC080, &qword_266DB5C18, MEMORY[0x277CBCCE0]);
    sub_266DA98FC();
    v32 = OUTLINED_FUNCTION_26_8();
    v33(v32);
    OUTLINED_FUNCTION_11_16(&qword_2800CC0B8, &qword_2800CC088, &qword_266DB5C20);
    v34 = v35[0];
    sub_266DA97EC();
    (*(v36 + 8))(v15, v34);
  }

  else
  {
    LOBYTE(v38) = 1;
    sub_266C562D0();
    sub_266DA975C();
    OUTLINED_FUNCTION_4_31(&qword_2800CA2C0, &qword_2800CA2B0, &qword_266DB5C10);
    sub_266DA97EC();
    (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CE5584(uint64_t a1)
{
  if (!qword_2800CC078)
  {
    sub_266DA9F6C();
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800CC078);
    }
  }
}

uint64_t sub_266CE55E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_266CE5624(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_266CE5694@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Friend(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_266DA9E2C();
  sub_266C676D4(a1, v8);
  result = sub_266D3047C(v8, a2);
  if (result <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = result;
  }

  *a3 = v10;
  *(a3 + 8) = result == 0;
  return result;
}

uint64_t sub_266CE5758(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC098, &unk_266DB5C30);
  swift_allocObject();

  return sub_266DA97AC();
}

uint64_t sub_266CE57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_266C33CEC;
  *(v7 + 24) = v6;

  sub_266DA9AFC();
}

void sub_266CE58B8(int a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    if (qword_2800C9310 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CC048);
    v7 = a2;
    v8 = sub_266DA948C();
    v9 = sub_266DAAAEC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
      v13 = sub_266DAA72C();
      v15 = sub_266C22A3C(v13, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_266C08000, v8, v9, "Error from perform FMF action: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D5F2480](v11, -1, -1);
      MEMORY[0x26D5F2480](v10, -1, -1);
    }

    v16 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(0);
  }
}

uint64_t sub_266CE5AE4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CE0AB8(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CE5B20@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  result = sub_266CE0540(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_266CE5B60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

id sub_266CE5BA4@<X0>(void *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  result = sub_266CE0AC0(*a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_266CE5BF4()
{
  result = qword_2800CC0F8;
  if (!qword_2800CC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC0F8);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266CE5CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CE5D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_266CE5D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266CE5DC8()
{
  result = qword_2800CC2E0;
  if (!qword_2800CC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC2E0);
  }

  return result;
}

uint64_t sub_266CE5E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_54(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_36()
{
  v1 = *(v0 - 136);
  *(v0 - 224) = *(v0 - 152);
  *(v0 - 208) = v1;
  result = *(v0 - 120);
  v3 = *(v0 - 104);
  *(v0 - 192) = result;
  *(v0 - 176) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_31(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCE70];

  return sub_266C230E8(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_11_16(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCD08];

  return sub_266C230E8(a1, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_18_13()
{
  v1 = *(v0 - 176);
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = v1;
  v3 = *(v0 - 224);
  result = *(v0 - 208);
  *(v0 - 272) = result;
  *(v0 - 288) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_25_9@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q1>)
{
  result = *(v2 - 272);
  v4 = *(v2 - 240);
  *(a1 + 64) = *(v2 - 256);
  *(a1 + 80) = v4;
  *(a1 + 32) = a2;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_266CE5FA4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC198);
  v1 = __swift_project_value_buffer(v0, qword_2800CC198);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FindDeviceFlowFactory.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v2);
  *a1 = sub_266DA7E6C();
  type metadata accessor for AppInstalledStateProvider();
  swift_allocObject();
  *(a1 + 8) = sub_266D1E26C();
  *(a1 + 40) = &unk_287867FA0;
  *(a1 + 48) = &off_287867FB0;
  v3 = sub_266DA942C();
  v4 = sub_266DA941C();
  v5 = MEMORY[0x277D5FDD8];
  *(a1 + 80) = v3;
  *(a1 + 88) = v5;
  *(a1 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287867F78;
  v7 = sub_266C6F020();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(inited + 32) = v8;
  *(v8 + 16) = "SiriFindMy";
  *(v8 + 24) = 10;
  *(v8 + 32) = 2;
  *(v8 + 40) = "FindMyDevicesNLX";
  *(v8 + 48) = 16;
  *(v8 + 56) = 2;
  v9 = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F0B4();
  *(a1 + 96) = v9 & 1;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_266DAE4A0;
  *(v10 + 56) = &unk_287867F78;
  *(v10 + 64) = v7;
  v11 = swift_allocObject();
  *(v10 + 32) = v11;
  *(v11 + 16) = "SiriFindMy";
  *(v11 + 24) = 10;
  *(v11 + 32) = 2;
  *(v11 + 40) = "FindMyDevicesNLX";
  *(v11 + 48) = 16;
  *(v11 + 56) = 2;
  v12 = sub_266D7E674(v10);
  swift_setDeallocating();
  sub_266C6F0B4();
  result = sub_266DA941C();
  *(a1 + 136) = v3;
  *(a1 + 144) = MEMORY[0x277D5FDD8];
  *(a1 + 112) = result;
  *(a1 + 104) = v12 & 1;
  return result;
}

uint64_t FindDeviceFlowFactory.makeFlowFrom(parse:)(uint64_t a1)
{
  v2 = sub_266DA81AC();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - v9;
  sub_266D6B944(a1, v41);
  sub_266CE7694(v41, v40);
  if (v40[40] != 255)
  {
    sub_266CE7694(v40, &v35);
    switch(v39)
    {
      case 1:
        sub_266C0B0D8(&v35, v33);
        if (qword_2800C9318 != -1)
        {
          OUTLINED_FUNCTION_0_55(&qword_2800C9318);
        }

        v16 = sub_266DA94AC();
        __swift_project_value_buffer(v16, qword_2800CC198);
        v17 = sub_266DA948C();
        v18 = sub_266DAAB0C();
        if (os_log_type_enabled(v17, v18))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_2_27(&dword_266C08000, v19, v20, "NL Intent is too generic pushing requestTooGenericFlow");
          OUTLINED_FUNCTION_6_1();
        }

        v21 = __swift_project_boxed_opaque_existential_1(v33, v34);
        v12 = sub_266CE7B60(*v21);
        goto LABEL_12;
      case 2:
        sub_266C0B0D8(&v35, v33);
        v13 = __swift_project_boxed_opaque_existential_1(v33, v34);
        v14 = sub_266CE7C9C(v13);
        v12 = sub_266CE6C5C(v14);

LABEL_12:
        sub_266CE7704(v41);
        __swift_destroy_boxed_opaque_existential_0(v33);
        goto LABEL_21;
      case 3:
        if (v37 | v38 | v35 | v36 | *(&v35 + 1))
        {
          sub_266C6F35C();
          v15 = sub_266DA798C();
          goto LABEL_20;
        }

        sub_266C78954(&v35);
        break;
      default:
        v11 = sub_266CE6690();
        v12 = sub_266CE6C5C(v11);

        sub_266CE7704(v41);
        sub_266C78954(&v35);
        goto LABEL_21;
    }
  }

  if (qword_2800C9318 != -1)
  {
    OUTLINED_FUNCTION_0_55(&qword_2800C9318);
  }

  v22 = sub_266DA94AC();
  __swift_project_value_buffer(v22, qword_2800CC198);
  v23 = *(v4 + 16);
  v23(v10, a1, v2);
  v24 = sub_266DA948C();
  v25 = sub_266DAAAFC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v35 = v27;
    *v26 = 136315138;
    v23(v8, v10, v2);
    v28 = sub_266DAA72C();
    v30 = v29;
    (*(v4 + 8))(v10, v2);
    v31 = sub_266C22A3C(v28, v30, &v35);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_266C08000, v24, v25, "FindDeviceFlowFactory error: failed to construct nl intent from parse: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    (*(v4 + 8))(v10, v2);
  }

  v15 = sub_266CE7088();
LABEL_20:
  v12 = v15;
  sub_266CE7704(v41);
LABEL_21:
  sub_266CE7704(v40);
  return v12;
}

uint64_t sub_266CE6690()
{
  v1 = v0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC1B0, &qword_266DB5D48);
  OUTLINED_FUNCTION_0_2();
  v44 = v2;
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B58, &qword_266DB5D50);
  OUTLINED_FUNCTION_0_2();
  v47 = v6;
  v48 = v5;
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - v9;
  v10 = sub_266DA926C();
  v11 = OUTLINED_FUNCTION_4_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  if (qword_2800C9318 != -1)
  {
    OUTLINED_FUNCTION_0_55(&qword_2800C9318);
  }

  v12 = sub_266DA94AC();
  __swift_project_value_buffer(v12, qword_2800CC198);
  v13 = sub_266DA948C();
  v14 = sub_266DAAB0C();
  if (os_log_type_enabled(v13, v14))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_2_27(&dword_266C08000, v15, v16, "FindDeviceFlowFactory: making findDevice flow.");
    OUTLINED_FUNCTION_6_1();
  }

  sub_266DA81BC();
  v17 = v1[1];
  v18 = qword_2800C9330;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = *&qword_2800CC508;
  v20 = qword_2800CC510;
  v21 = unk_2800CC518;

  v22 = sub_266CE776C(&v56, v17, v20, v21, v19);
  v58 = &type metadata for FindDeviceTask.Parser;
  v59 = &off_287867158;
  v57 = swift_allocObject();
  sub_266CE7E68((v1 + 2), v57 + 16);
  v23 = v22;
  sub_266DA81BC();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple(0);
  sub_266DA925C();
  v24 = OUTLINED_FUNCTION_7_22();
  v25 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v25);
  v26 = sub_266DA7E6C();
  sub_266DA925C();
  v27 = OUTLINED_FUNCTION_7_22();
  swift_allocObject();
  v28 = sub_266DA7E6C();
  v64 = &type metadata for AppNotInstalledOutputProvider;
  v65 = &off_287860EE0;
  v62 = v27;
  v63 = v28;
  v56 = v23;
  v60 = v24;
  v61 = v26;
  sub_266DA81BC();
  sub_266DA7AEC();
  v29 = *v1;
  v54[3] = v25;
  v54[4] = MEMORY[0x277D5BD58];
  v54[0] = v29;
  v53[3] = &unk_287867FA0;
  v53[4] = &off_287867FB0;
  v30 = *(v1 + 96);
  v52[3] = &type metadata for ConfirmationTask.Parser;
  v52[4] = &off_28785F908;
  LOBYTE(v52[0]) = v30;
  v51[3] = &type metadata for DisambiguationTask.Parser;
  v51[4] = &off_2878672C8;
  v51[0] = swift_allocObject();
  sub_266C6F124((v1 + 13), v51[0] + 16);

  sub_266DA925C();
  v31 = OUTLINED_FUNCTION_7_22();
  swift_allocObject();
  v32 = sub_266DA7E6C();
  v50[3] = &type metadata for AppNotInstalledOutputProvider;
  v50[4] = &off_287860EE0;
  v50[0] = v31;
  v50[1] = v32;
  v33 = v45;
  sub_266C25A20(v49, v55, v23, v54, v53, v52, v51, v50, v45);
  v35 = v47;
  v34 = v48;
  (*(v47 + 16))(v42, v33, v48);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC1B8, &qword_266DB5D58);
  OUTLINED_FUNCTION_7_7(v36);
  sub_266DA797C();
  sub_266CE7EC4(&v56, v49);
  sub_266CE7F20();

  v37 = v43;
  sub_266DA7CFC();
  v38 = v46;
  v39 = sub_266DA7CEC();
  (*(v44 + 8))(v37, v38);
  v49[0] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC1C8, &qword_266DB5D60);
  sub_266C230E8(&qword_2800CC1D0, &qword_2800CC1C8, &qword_266DB5D60, MEMORY[0x277D5B820]);
  v40 = sub_266DA798C();

  (*(v35 + 8))(v33, v34);
  sub_266CE7F74(&v56);
  return v40;
}

uint64_t sub_266CE6C5C(uint64_t a1)
{
  v1 = sub_266DA926C();
  v2 = OUTLINED_FUNCTION_4_3(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v3 = sub_266DA750C();
  v4 = OUTLINED_FUNCTION_4_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v7 = v6 - v5;
  v36 = &type metadata for FindMyPersonalDomainCheckFlowStrategy;
  v37 = sub_266CE801C();
  v8 = sub_266DA775C();
  OUTLINED_FUNCTION_7_7(v8);
  v30 = sub_266DA774C();
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(&v34, &type metadata for FindMyPersonalDomainCheckFlowStrategy);
  sub_266DA7AFC();
  v9 = type metadata accessor for StringLocalizer(0);
  OUTLINED_FUNCTION_7_7(v9);
  v10 = sub_266D04C84(v7);
  __swift_destroy_boxed_opaque_existential_0(&v34);
  v36 = v9;
  v37 = &off_287864128;
  *&v34 = v10;
  sub_266CBCDE8(&v34, v32);
  v11 = swift_allocObject();
  v12 = v32[1];
  *(v11 + 16) = v32[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v33;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_266CBCE44;
  *(v13 + 24) = v11;
  v14 = sub_266DA780C();
  OUTLINED_FUNCTION_7_7(v14);

  v29 = sub_266DA77FC();
  sub_266CBCFF0(&v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_266DB1EE0;
  *&v34 = v30;

  *(v15 + 32) = sub_266DA799C();
  type metadata accessor for SiriFindMyCommonCATsSimple(0);
  sub_266DA925C();
  v16 = sub_266DA91CC();
  v17 = *v31;
  v18 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v18);

  v19 = sub_266DA7E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA888, &qword_266DB5D70);
  v20 = swift_allocObject();
  *(v20 + 16) = 1;
  *(v20 + 24) = v16;
  *(v20 + 32) = v17;
  *(v20 + 40) = v32[0];
  v21 = MEMORY[0x277D5BD58];
  *(v20 + 56) = v18;
  *(v20 + 64) = v21;
  *(v20 + 72) = v34;
  *(v20 + 88) = v35;
  *(v20 + 96) = &unk_287867FA0;
  *(v20 + 104) = &off_287867FB0;
  *(v20 + 112) = v19;
  *&v34 = v20;
  sub_266C230E8(&qword_2800CA890, &qword_2800CA888, &qword_266DB5D70, &unk_266DB0F58);
  v22 = sub_266DA799C();

  *(v15 + 40) = v22;
  *(v15 + 48) = sub_266CE7158();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266DAE3B0;
  *&v34 = v29;
  *(v23 + 32) = sub_266DA798C();
  *&v34 = sub_266CC5B9C(a1, v15, v23);
  *(&v34 + 1) = v24;
  v35 = v25;
  sub_266C6F758();
  v26 = sub_266DA798C();

  return v26;
}

uint64_t sub_266CE7088()
{
  v0 = sub_266DA926C();
  v1 = OUTLINED_FUNCTION_4_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_6();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple(0);
  sub_266DA925C();
  v2 = sub_266DA91CC();
  v3 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v3);
  v4 = sub_266DA7E6C();
  sub_266DA7FEC();
  v7[0] = v2;
  v7[1] = v4;
  sub_266CE82F8();
  v5 = sub_266DA798C();
  sub_266CE834C(v7);
  return v5;
}

uint64_t sub_266CE7158()
{
  v1 = sub_266DA926C();
  v2 = OUTLINED_FUNCTION_4_3(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v3 = *(v0 + 8);
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple(0);
  swift_retain_n();
  sub_266DA925C();
  v4 = sub_266DA91CC();
  v5 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v5);
  v6 = sub_266DA7E6C();

  sub_266DA7FEC();
  sub_266DA81BC();
  v7 = sub_266CE7944(v3, v4, v6, &v11, v10);

  *&v11 = v7;
  type metadata accessor for CheckAppInstalledFlow();
  sub_266CE8070();
  v8 = sub_266DA799C();

  return v8;
}

uint64_t sub_266CE7290(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  sub_266DA926C();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CE7320);
}

uint64_t sub_266CE7320()
{
  sub_266C233D0(v0[24], (v0 + 2));
  v1 = type metadata accessor for SFMContactStoreDefaultService();
  swift_allocObject();
  v2 = sub_266C69368();
  v0[10] = v1;
  v0[11] = &off_28785FC28;
  v0[7] = v2;
  v3 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v3);
  v4 = sub_266DA7E6C();
  v5 = MEMORY[0x277D5BD58];
  v0[15] = v3;
  v0[16] = v5;
  v0[12] = v4;
  sub_266DA81BC();
  type metadata accessor for DeviceOwnerCATsSimple(0);
  sub_266DA925C();
  v0[22] = sub_266DA91CC();
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_266CE7450;

  return sub_266D4084C();
}

uint64_t sub_266CE7450()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  *(v4 + 216) = v0;

  if (v0)
  {
    v5 = sub_266CE75C4;
  }

  else
  {
    v5 = sub_266CE7558;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CE7558()
{
  OUTLINED_FUNCTION_22_0();
  sub_266CE82A4(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266CE75C4()
{
  OUTLINED_FUNCTION_22_0();
  sub_266CE82A4(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266CE7630()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_266CE7694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAB0, &qword_266DB2440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CE7704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAB0, &qword_266DB2440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_266CE776C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v25[3] = &type metadata for SFMDeviceLockStateProvider;
  v25[4] = &protocol witness table for SFMDeviceLockStateProvider;
  v10 = type metadata accessor for AppInstalledStateProvider();
  v24[3] = v10;
  v24[4] = &off_287864960;
  v24[0] = a2;
  DeviceAndPlaySoundIntentHandler = type metadata accessor for FindDeviceAndPlaySoundIntentHandler();
  v12 = objc_allocWithZone(DeviceAndPlaySoundIntentHandler);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v23[3] = v10;
  v23[4] = &off_287864960;
  v23[0] = v17;
  sub_266C233D0(a1, &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState]);
  sub_266C233D0(v23, &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState]);
  sub_266C233D0(v25, &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider]);
  v18 = &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession];
  *v18 = a5;
  *(v18 + 1) = a3;
  *(v18 + 2) = a4;
  v22.receiver = v12;
  v22.super_class = DeviceAndPlaySoundIntentHandler;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

uint64_t sub_266CE7944(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = type metadata accessor for AppInstalledStateProvider();
  v25[3] = v10;
  v25[4] = &off_287864960;
  v25[0] = a1;
  v23 = &type metadata for AppNotInstalledOutputProvider;
  v24 = &off_287860EE0;
  v22[0] = a2;
  v22[1] = a3;
  type metadata accessor for CheckAppInstalledFlow();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v25, v10);
  MEMORY[0x28223BE20](v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v14;
  *(v11 + 48) = v10;
  *(v11 + 56) = &off_287864960;
  *(v11 + 24) = v20;
  *(v11 + 88) = &type metadata for AppNotInstalledOutputProvider;
  *(v11 + 96) = &off_287860EE0;
  *(v11 + 64) = *v18;
  *(v11 + 16) = 1;
  sub_266C0B0D8(a4, v11 + 104);
  sub_266C0B0D8(a5, v11 + 144);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v11;
}

uint64_t sub_266CE7B60(char a1)
{
  v2 = sub_266DA926C();
  MEMORY[0x28223BE20](v2 - 8);
  v13[3] = &type metadata for GenericSearchIntentWrapper;
  v13[4] = &off_287864950;
  LOBYTE(v13[0]) = a1;
  v8 = &unk_287867FA0;
  v9 = &off_287867FB0;
  sub_266DA81BC();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple(0);
  sub_266DA925C();
  v3 = sub_266DA91CC();
  sub_266DA7E7C();
  swift_allocObject();
  v4 = sub_266DA7E6C();
  sub_266DA7FEC();
  sub_266C233D0(v13, &v12);
  v10 = v3;
  v11 = v4;
  sub_266CAF9A4();
  v5 = sub_266DA798C();
  sub_266CE7FC8(v7);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v5;
}

uint64_t sub_266CE7C9C(uint64_t a1)
{
  v6[3] = &type metadata for FindDeviceNLv4IntentWrapper;
  v6[4] = &off_287861A08;
  v6[0] = swift_allocObject();
  sub_266CE80C8(a1, v6[0] + 16);
  sub_266C233D0(v6, v5);
  v2 = swift_allocObject();
  sub_266C0B0D8(v5, v2 + 16);
  sub_266DA7FEC();
  sub_266DA75FC();
  swift_allocObject();
  *&v5[0] = sub_266DA75EC();
  v3 = sub_266DA798C();

  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_266CE7DB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_266CE7DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266CE7F20()
{
  result = qword_2800CC1C0;
  if (!qword_2800CC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1C0);
  }

  return result;
}

unint64_t sub_266CE801C()
{
  result = qword_2800CC1D8;
  if (!qword_2800CC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1D8);
  }

  return result;
}

unint64_t sub_266CE8070()
{
  result = qword_2800CC1E0;
  if (!qword_2800CC1E0)
  {
    type metadata accessor for CheckAppInstalledFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1E0);
  }

  return result;
}

uint64_t sub_266CE8124()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_266CE81BC;

  return sub_266CE7290(v3, v0 + 16);
}

uint64_t sub_266CE81BC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_266CE82F8()
{
  result = qword_2800CC1E8;
  if (!qword_2800CC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_266DA91CC();
}

_BYTE *storeEnumTagSinglePayload for SetSharedLocationVisibilityError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CE84CC()
{
  result = qword_2800CC1F0;
  if (!qword_2800CC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1F0);
  }

  return result;
}

uint64_t sub_266CE855C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266CE859C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_266CE8600()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC200);
  v1 = __swift_project_value_buffer(v0, qword_2800CC200);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CE86C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = a3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC350, &qword_266DB5FE0);
  OUTLINED_FUNCTION_0_2();
  v122 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v6);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC358, &unk_266DB5FE8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v115 - v8;
  sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v140 = v11;
  v141 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v139 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10();
  v126 = v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC368, &qword_266DB5FF8);
  OUTLINED_FUNCTION_0_2();
  v116 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v18);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC370, &qword_266DB6000);
  OUTLINED_FUNCTION_0_2();
  v119 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v21);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC378, &qword_266DB6008);
  OUTLINED_FUNCTION_0_2();
  v127 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v24);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC380, &qword_266DB6010);
  OUTLINED_FUNCTION_0_2();
  v128 = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC388, &qword_266DB6018);
  OUTLINED_FUNCTION_0_2();
  v135 = v29;
  v136 = v28;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10();
  v132 = v31;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC390, &qword_266DB6020);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  v134 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v115 - v35;
  v37 = sub_266DAAB4C();
  OUTLINED_FUNCTION_0_2();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_0_6();
  v43 = v42 - v41;
  v44 = *(v3 + 64);
  v133 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 40), v44);
  sub_266CE06C0();
  v143 = v45;
  v144 = sub_266CE9440;
  v145 = 0;
  v142 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC398, &qword_266DB6028);
  sub_266C230E8(&qword_2800CC3A0, &qword_2800CC398, &qword_266DB6028, &protocol conformance descriptor for Publishers.MapResult<A, B>);
  v46 = sub_266DA97EC();

  sub_266C67BE8(v138, v36, &qword_2800CA828, &qword_266DB1E30);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_266C1825C(v36, &qword_2800CA828, &qword_266DB1E30);
    if (qword_2800C9320 != -1)
    {
      OUTLINED_FUNCTION_7_23(&qword_2800C9320);
    }

    v47 = sub_266DA94AC();
    __swift_project_value_buffer(v47, qword_2800CC200);
    v48 = sub_266DA948C();
    v49 = sub_266DAAB0C();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v121;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v53, v54, "FindFriend timeout interval not set, not waiting for a non-stale location.");
      MEMORY[0x26D5F2480](v52, -1, -1);
    }

    v143 = v46;
    v55 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v57, &unk_2800CC330, &unk_266DB5FD0, v58);
    sub_266DA988C();
    if (qword_2800C9130 != -1)
    {
      OUTLINED_FUNCTION_1_9(&qword_2800C9130);
    }

    v59 = qword_2800C9818;
    v60 = v139;
    sub_266DA946C();
    v61 = v122;
    v62 = v125;
    (*(v122 + 16))(v9, v51, v125);
    v63 = v129;
    sub_266DA946C();
    (*(v140 + 8))(v60, v141);
    (*(v61 + 8))(v51, v62);
    OUTLINED_FUNCTION_11_17(&v9[v63[11]]);
    *&v9[v63[9]] = &dword_266C08000;
    *&v9[v63[10]] = v59;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v64, v65, v66, v67);
    v68 = v59;
    v69 = sub_266DA97EC();

    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v70, v71, v72);
  }

  else
  {
    (*(v39 + 32))(v43, v36, v37);
    v129 = v37;
    if (qword_2800C9320 != -1)
    {
      OUTLINED_FUNCTION_7_23(&qword_2800C9320);
    }

    v73 = v43;
    v138 = v39;
    v74 = sub_266DA94AC();
    __swift_project_value_buffer(v74, qword_2800CC200);
    v75 = sub_266DA948C();
    v76 = sub_266DAAB0C();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v142;
    if (v77)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v80, v81, "FindFriend timeout interval set, will attempt to wait for a non-stale location.");
      MEMORY[0x26D5F2480](v79, -1, -1);
    }

    v143 = v78;
    v82 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v82, v83);
    type metadata accessor for FriendLocation(0);
    v84 = MEMORY[0x277CBCD90];
    sub_266C230E8(&qword_2800CC3B8, &qword_2800CC3B0, &qword_266DB6030, MEMORY[0x277CBCD90]);
    v85 = v115;
    sub_266DA97FC();
    sub_266C230E8(&unk_2800CC3C0, &qword_2800CC368, &qword_266DB5FF8, MEMORY[0x277CBCB10]);
    v86 = v118;
    v87 = v117;
    sub_266DA98AC();
    (*(v116 + 8))(v85, v87);
    v143 = *(v133 + 80);
    v88 = v143;
    v89 = sub_266DAAB1C();
    v90 = v126;
    __swift_storeEnumTagSinglePayload(v126, 1, 1, v89);
    sub_266C29814(0, &qword_2800C9A80, 0x277CCABD8);
    sub_266C230E8(&unk_2800CC3D0, &qword_2800CC370, &qword_266DB6000, MEMORY[0x277CBCC90]);
    sub_266C23060();
    v91 = v88;
    v92 = v123;
    v93 = v120;
    sub_266DA98EC();
    sub_266C1825C(v90, &qword_2800CC360, &qword_266DB00D0);

    (*(v119 + 8))(v86, v93);

    v94 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v94, v95);
    sub_266C230E8(&qword_2800CC3E0, &qword_2800CC378, &qword_266DB6008, MEMORY[0x277CBCCE8]);
    sub_266C230E8(&qword_2800C9E48, &unk_2800CC330, &unk_266DB5FD0, v84);
    v96 = v124;
    v97 = v130;
    sub_266DA987C();

    (*(v127 + 8))(v92, v97);
    sub_266C230E8(&qword_2800CC3E8, &qword_2800CC380, &qword_266DB6010, MEMORY[0x277CBCC40]);
    v98 = v131;
    v99 = v132;
    sub_266DA988C();
    (*(v128 + 8))(v96, v98);
    if (qword_2800C9130 != -1)
    {
      OUTLINED_FUNCTION_1_9(&qword_2800C9130);
    }

    v100 = qword_2800C9818;
    v101 = v139;
    sub_266DA946C();
    v103 = v134;
    v102 = v135;
    v104 = v136;
    (*(v135 + 16))(v134, v99, v136);
    v105 = v137;
    sub_266DA946C();
    (*(v140 + 8))(v101, v141);
    (*(v102 + 8))(v99, v104);
    OUTLINED_FUNCTION_11_17(v103 + v105[11]);
    *(v103 + v105[9]) = &dword_266C08000;
    *(v103 + v105[10]) = v100;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v106, v107, v108, v109);
    v110 = v100;
    v69 = sub_266DA97EC();

    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v111, v112, v113);
    (*(v138 + 8))(v73, v129);
  }

  return v69;
}

uint64_t sub_266CE9440@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for FriendLocation(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC410, &qword_266DB6048);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for Friend(0);
  sub_266C67BE8(a1 + *(v13 + 40), v9, &qword_2800CA710, &qword_266DB6040);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
    v15 = v12;
    v16 = 1;
  }

  else
  {
    sub_266C67C44(v9, v6, type metadata accessor for FriendLocation);
    sub_266CEDF20(v6, v12, type metadata accessor for FriendLocation);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
    swift_storeEnumTagMultiPayload();
    sub_266CEDF7C(v6, type metadata accessor for FriendLocation);
    v15 = v12;
    v16 = 0;
    v14 = v17;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) != 1)
  {
    return sub_266CEDD08(v12, a2);
  }

  *a2 = 0;
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v12, 1, v18);
  if (result != 1)
  {
    return sub_266C1825C(v12, &qword_2800CC410, &qword_266DB6048);
  }

  return result;
}

uint64_t sub_266CE9750@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC3F8, &qword_266DB6038);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  if (*a1)
  {
    v11[15] = *a1;
    type metadata accessor for FriendLocation(0);
    sub_266CE5DC8();
    sub_266DA975C();
    sub_266C230E8(&unk_2800CC400, &qword_2800CC3F8, &qword_266DB6038, MEMORY[0x277CBCE70]);
    a2 = sub_266DA97EC();
    result = (*(v7 + 8))(v9, v6);
  }

  else
  {
  }

  *a3 = a2;
  return result;
}

uint64_t sub_266CE98B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = v7;
  v57 = a7;
  v58 = a3;
  LODWORD(v56) = a6;
  v59 = a4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB88, &qword_266DB5F40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC220, &qword_266DB5F48);
  OUTLINED_FUNCTION_0_2();
  v63 = v16;
  v64 = v15;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v61 = &v53 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC228, &qword_266DB5F50);
  OUTLINED_FUNCTION_0_2();
  v23 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  v62 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC230, &unk_266DB5F58);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10();
  v30 = *a5;
  v31 = *(a5 + 16);
  if (v31 == 2)
  {
    v65[0] = *a5;
    return sub_266CE9ED0(a1, a2, v65, v56 & 1, v57);
  }

  else
  {
    v53 = *(a5 + 8);
    v56 = v27;
    v57 = v29;
    v33 = v8;
    v55 = v28;
    *v65 = sub_266CEAF48(a1, a2);
    sub_266CEB358(v58, v59, v14);
    v59 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
    v58 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC240, &qword_266DB33F0);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v34, &qword_2800CA9C8, qword_266DB2160, v35);
    OUTLINED_FUNCTION_0_13();
    v54 = v36;
    sub_266C230E8(v37, v38, v39, v40);
    sub_266DA982C();
    sub_266C1825C(v14, &qword_2800CAB88, &qword_266DB5F40);

    sub_266CEDBEC(v8, v65);
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_14_20(v41);
    v42 = v53;
    *(v14 + 13) = v30;
    *(v14 + 14) = v42;
    v14[120] = v31;
    sub_266C186A4(v30, v42, v31);
    v43 = v61;
    v44 = v64;
    sub_266DA95EC();

    v63 = *(v63 + 8);
    (v63)(v19, v44);
    sub_266CEDBEC(v33, v65);
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_14_20(v45);
    v46 = swift_allocObject();
    *(v46 + 16) = sub_266CEDC34;
    *(v46 + 24) = v14;
    sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB80, &unk_266DB24F0);
    v47 = MEMORY[0x277CBCC08];
    sub_266C230E8(&qword_2800CC260, &qword_2800CC220, &qword_266DB5F48, MEMORY[0x277CBCC08]);
    sub_266C230E8(&qword_2800CC268, &qword_2800CAB80, &unk_266DB24F0, v54);
    v48 = v62;
    sub_266DA996C();

    (v63)(v43, v44);
    type metadata accessor for LabeledLocationResult(0);
    sub_266C230E8(&qword_2800CC270, &qword_2800CC228, &qword_266DB5F50, MEMORY[0x277CBCCE0]);
    v49 = v55;
    v50 = v58;
    sub_266DA984C();
    (*(v59 + 8))(v48, v50);
    sub_266C230E8(&qword_2800CC278, &unk_2800CC230, &unk_266DB5F58, v47);
    v51 = v56;
    v32 = sub_266DA97EC();
    (*(v57 + 8))(v49, v51);
  }

  return v32;
}

uint64_t sub_266CE9ED0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC280, &qword_266DB5F68);
  v123 = *(v12 - 8);
  v124 = v12;
  MEMORY[0x28223BE20](v12);
  v121 = &v94 - v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC288, &qword_266DB5F70);
  v125 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v122 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC290, &qword_266DB5F78);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v103 = &v94 - v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC298, &qword_266DB5F80);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v94 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2A0, &qword_266DB5F88);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v94 - v19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2A8, &qword_266DB5F90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v94 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2B0, &unk_266DB5F98);
  MEMORY[0x28223BE20](v114);
  v113 = &v94 - v21;
  v22 = sub_266DA947C();
  v118 = *(v22 - 8);
  v119 = v22;
  MEMORY[0x28223BE20](v22);
  v117 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30);
  MEMORY[0x28223BE20](v24 - 8);
  v97 = &v94 - v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2C0, &qword_266DB5FA8);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v94 - v26;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2C8, &unk_266DB5FB0);
  MEMORY[0x28223BE20](v101);
  v28 = &v94 - v27;
  v29 = *a3;
  if (v29 == 2)
  {
    v30 = 0;
    if (a4)
    {
      v32 = a5 == 2 || a5 == 5;
      goto LABEL_18;
    }

    v33 = 0;
  }

  else
  {
    v30 = sub_266C1A06C(v29 & 1);
    v33 = sub_266C1A06C(v29 & 1);
    if (a4)
    {
      if (a5 == 2)
      {
        v32 = 1;
        goto LABEL_18;
      }

      v34 = a5 == 5;
      goto LABEL_14;
    }
  }

  v34 = a5 == 1;
LABEL_14:
  v35 = v34;
  v32 = v33 | v35;
LABEL_18:
  v115 = v32;
  v102 = a5;
  if (qword_2800C9320 != -1)
  {
    swift_once();
  }

  v36 = sub_266DA94AC();
  __swift_project_value_buffer(v36, qword_2800CC200);
  v37 = sub_266DA948C();
  v38 = sub_266DAAB0C();
  v39 = os_log_type_enabled(v37, v38);
  v120 = v29;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v95 = a2;
    v41 = v40;
    v42 = swift_slowAlloc();
    v96 = v16;
    v94 = v15;
    v43 = v6;
    v44 = v42;
    __src[0] = v42;
    *v41 = 136315394;
    v45 = 31085;
    if (v29)
    {
      v45 = 0x7269656874;
    }

    v46 = 0xE200000000000000;
    if (v29)
    {
      v46 = 0xE500000000000000;
    }

    if (v29 == 2)
    {
      v47 = 1701736302;
    }

    else
    {
      v47 = v45;
    }

    v48 = v30;
    v49 = a1;
    if (v29 == 2)
    {
      v50 = 0xE400000000000000;
    }

    else
    {
      v50 = v46;
    }

    v51 = sub_266C22A3C(v47, v50, __src);
    a1 = v49;
    v30 = v48;

    *(v41 + 4) = v51;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v102;
    _os_log_impl(&dword_266C08000, v37, v38, "Resolving current location, type: %s, trigger: %ld", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v52 = v44;
    v6 = v43;
    v15 = v94;
    v16 = v96;
    MEMORY[0x26D5F2480](v52, -1, -1);
    v53 = v41;
    a2 = v95;
    MEMORY[0x26D5F2480](v53, -1, -1);
  }

  if (v30 & 1 | ((v115 & 1) == 0))
  {
    v54 = v6[3];
    v55 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v54);
    __src[0] = (*(v55 + 8))(v54, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2D0, &qword_266DAF900);
    sub_266C230E8(&qword_2800C9EA8, &unk_2800CC2D0, &qword_266DAF900, MEMORY[0x277CBCD90]);
    sub_266CE5DC8();
    v56 = v103;
    sub_266DA98FC();

    v57 = swift_allocObject();
    v58 = v120;
    *(v57 + 16) = v120;
    sub_266C230E8(&qword_2800CC2E8, &qword_2800CC290, &qword_266DB5F78, MEMORY[0x277CBCD08]);
    v59 = v104;
    sub_266DA984C();

    (*(v16 + 8))(v56, v15);
    sub_266CEDBEC(v6, __src);
    v60 = swift_allocObject();
    memcpy((v60 + 16), __src, 0x58uLL);
    sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2F0, &qword_266DB5FC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB80, &unk_266DB24F0);
    sub_266C230E8(&qword_2800CC2F8, &qword_2800CC298, &qword_266DB5F80, MEMORY[0x277CBCC08]);
    sub_266C230E8(&qword_2800CC268, &qword_2800CAB80, &unk_266DB24F0, &protocol conformance descriptor for Publishers.SignpostFirst<A>);
    v61 = v106;
    v62 = v107;
    sub_266DA98DC();

    (*(v105 + 8))(v59, v62);
    type metadata accessor for Location(0);
    sub_266C230E8(&qword_2800CC300, &qword_2800CC2A0, &qword_266DB5F88, MEMORY[0x277CBCCE0]);
    v63 = v110;
    v64 = v109;
    sub_266DA97FC();
    (*(v108 + 8))(v61, v64);
    if (qword_2800C9130 != -1)
    {
      swift_once();
    }

    v65 = qword_2800C9818;
    v66 = v117;
    sub_266DA946C();
    v67 = v111;
    v68 = v113;
    v69 = v112;
    (*(v111 + 16))(v113, v63, v112);
    v70 = v114;
    sub_266DA946C();
    (*(v118 + 8))(v66, v119);
    (*(v67 + 8))(v63, v69);
    v71 = &v68[v70[11]];
    *v71 = "Resolve User's Current Location";
    *(v71 + 1) = 31;
    v71[16] = 2;
    *&v68[v70[9]] = &dword_266C08000;
    *&v68[v70[10]] = v65;
    sub_266C230E8(&qword_2800CC308, &unk_2800CC2B0, &unk_266DB5F98, &protocol conformance descriptor for Publishers.SignpostFirst<A>);
    v72 = v65;
    v73 = sub_266DA97EC();
    v74 = v68;
    v75 = &unk_2800CC2B0;
    v76 = &unk_266DB5F98;
  }

  else
  {
    v77 = v97;
    sub_266DAAB3C();
    v78 = sub_266DAAB4C();
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
    v79 = sub_266CE86C8(a1, a2, v77);
    sub_266C1825C(v77, &qword_2800CA828, &qword_266DB1E30);
    __src[0] = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC330, &unk_266DB5FD0);
    type metadata accessor for Location(0);
    sub_266C230E8(&qword_2800C9E48, &unk_2800CC330, &unk_266DB5FD0, MEMORY[0x277CBCD90]);
    v80 = v98;
    sub_266DA97FC();

    v58 = v120;
    if (qword_2800C9130 != -1)
    {
      swift_once();
    }

    v81 = qword_2800C9818;
    v82 = v117;
    sub_266DA946C();
    v83 = v99;
    v84 = v100;
    (*(v99 + 16))(v28, v80, v100);
    v85 = v101;
    sub_266DA946C();
    (*(v118 + 8))(v82, v119);
    (*(v83 + 8))(v80, v84);
    v86 = &v28[v85[11]];
    *v86 = "Resolve Friend's Current Location";
    *(v86 + 1) = 33;
    v86[16] = 2;
    *&v28[v85[9]] = &dword_266C08000;
    *&v28[v85[10]] = v81;
    sub_266C230E8(&unk_2800CC340, &qword_2800CC2C8, &unk_266DB5FB0, &protocol conformance descriptor for Publishers.SignpostFirst<A>);
    v87 = v81;
    v73 = sub_266DA97EC();
    v74 = v28;
    v75 = &qword_2800CC2C8;
    v76 = &unk_266DB5FB0;
  }

  sub_266C1825C(v74, v75, v76);
  __src[0] = v73;
  *(swift_allocObject() + 16) = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC310, &qword_266DB5FC8);
  type metadata accessor for LabeledLocationResult(0);
  sub_266C230E8(&qword_2800CC318, &qword_2800CC310, &qword_266DB5FC8, MEMORY[0x277CBCD90]);
  v88 = v121;
  sub_266DA984C();

  sub_266C230E8(&qword_2800CC320, &qword_2800CC280, &qword_266DB5F68, MEMORY[0x277CBCC08]);
  v89 = v122;
  v90 = v124;
  sub_266DA988C();
  (*(v123 + 8))(v88, v90);
  sub_266C230E8(&qword_2800CC328, &qword_2800CC288, &qword_266DB5F70, MEMORY[0x277CBCC58]);
  v91 = v116;
  v92 = sub_266DA97EC();

  (*(v125 + 8))(v89, v91);
  return v92;
}

uint64_t sub_266CEAF48(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA947C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC478, &qword_266DB60C8);
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC480, &unk_266DB60D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = *(*__swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64)) + 24);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));

  v15 = sub_266C71E80(v14, sub_266CEBFB0, 0, v13);

  v29 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC240, &qword_266DB33F0);
  sub_266C230E8(&qword_2800CA9D0, &qword_2800CA9C8, qword_266DB2160, MEMORY[0x277CBCD90]);
  sub_266DA984C();

  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v17 = qword_2800C9818;
  v18 = v26;
  sub_266DA946C();
  v19 = v25;
  (*(v7 + 16))(v12, v9, v25);
  sub_266DA946C();
  (*(v27 + 8))(v18, v28);
  (*(v7 + 8))(v9, v19);
  v20 = &v12[v10[11]];
  *v20 = "Fetch FMFCore Labelled Locations";
  *(v20 + 1) = 32;
  v20[16] = 2;
  *&v12[v10[9]] = &dword_266C08000;
  *&v12[v10[10]] = v17;
  sub_266C230E8(&qword_2800CC488, &qword_2800CC480, &unk_266DB60D0, &protocol conformance descriptor for Publishers.SignpostFirst<A>);
  v21 = v17;
  v22 = sub_266DA97EC();
  sub_266C1825C(v12, &qword_2800CC480, &unk_266DB60D0);
  return v22;
}

uint64_t sub_266CEB358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_266DA947C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC458, &qword_266DB60B0);
  swift_allocObject();

  sub_266DA97AC();
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v11 = qword_2800C9818;
  sub_266DA946C();
  sub_266C79AE0(&dword_266C08000, v11, "Fetch Contacts Labelled Locations ", 34, 2, a3);

  return (*(v7 + 8))(v9, v6);
}

void sub_266CEB508(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  sub_266C38574(v3);
  *a2 = v4;
}

uint64_t sub_266CEB560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v8[0] = a2;
  v8[1] = a3;
  v9 = a4;
  result = sub_266CEB5A4(v6, v8);
  *a5 = result;
  return result;
}

uint64_t sub_266CEB5A4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  v44 = *a2;
  if (*a2)
  {
    v6 = 0x7269656874;
  }

  else
  {
    v6 = 31085;
  }

  v7 = 0xE200000000000000;
  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  v41 = v7;
  v42 = v6;
  v8 = a1 + 32;
  v43 = MEMORY[0x277D84F90];
  v45 = *a2;
  v9 = *a2;
  v39 = a1 + 32;
  v40 = *a2;
LABEL_7:
  v10 = (v8 + (v2 << 6));
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v11 = v10[1];
    v48 = *v10;
    v49 = v11;
    v12 = v10[3];
    v50 = v10[2];
    v51 = v12;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_61;
    }

    v13 = v48;
    if (v49)
    {
      if (v49 == 1)
      {
        v14 = *(&v48 + 1);
        sub_266CEDD78(&v48, &v46);
        sub_266C186A4(v13, v14, 1);
        if (v4)
        {
          goto LABEL_14;
        }
      }

      else if (v48 == 2)
      {
        sub_266CEDD78(&v48, &v46);
        v13 = 0xD000000000000010;
        v14 = 0x8000000266DC1CA0;
        if (v4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v48)
        {
          v17 = 0x7269656874;
        }

        else
        {
          v17 = 31085;
        }

        if (v48)
        {
          v18 = 0xE500000000000000;
        }

        else
        {
          v18 = 0xE200000000000000;
        }

        sub_266CEDD78(&v48, &v46);
        MEMORY[0x26D5F1170](v17, v18);

        MEMORY[0x26D5F1170](32, 0xE100000000000000);
        MEMORY[0x26D5F1170](0xD000000000000010, 0x8000000266DC1CA0);
        v13 = 0;
        v14 = 0xE000000000000000;
        if (v4)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      switch(v48)
      {
        case 1:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x6B726F773C21245FLL;
          break;
        case 2:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x6F6863733C21245FLL;
          v14 = 0xEE005F24213E6C6FLL;
          if (!v4)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        case 3:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x3E6D79673C21245FLL;
          v14 = 0xEB000000005F2421;
          if (!v4)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        case 4:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x6568746F3C21245FLL;
          v14 = 0xED00005F24213E72;
          if (!v4)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        default:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x656D6F683C21245FLL;
          break;
      }

      v14 = 0xEC0000005F24213ELL;
      if (v4)
      {
LABEL_14:
        if (v4 == 1)
        {

          v15 = v45;
          v16 = v3;
        }

        else
        {
          v15 = 0xD000000000000010;
          v16 = 0x8000000266DC1CA0;
          if (v44 != 2)
          {
            v46 = 0;
            v47 = 0xE000000000000000;
            MEMORY[0x26D5F1170](v42, v41, 0xD000000000000010);
            v9 = v40;

            MEMORY[0x26D5F1170](32, 0xE100000000000000);
            MEMORY[0x26D5F1170](0xD000000000000010, 0x8000000266DC1CA0);
            v15 = v46;
            v16 = v47;
          }
        }

        goto LABEL_41;
      }
    }

LABEL_30:
    v16 = 0xEC0000005F24213ELL;
    v15 = 0x656D6F683C21245FLL;
    switch(v9)
    {
      case 1:
        v15 = 0x6B726F773C21245FLL;
        break;
      case 2:
        v15 = 0x6F6863733C21245FLL;
        v16 = 0xEE005F24213E6C6FLL;
        break;
      case 3:
        v15 = 0x3E6D79673C21245FLL;
        v16 = 0xEB000000005F2421;
        break;
      case 4:
        v15 = 0x6568746F3C21245FLL;
        v16 = 0xED00005F24213E72;
        break;
      default:
        break;
    }

LABEL_41:
    if (v13 == v15 && v14 == v16)
    {

LABEL_51:
      v21 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266C38B98(0, *(v43 + 16) + 1, 1);
        v21 = v52;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_266C38B98(v23 > 1, v24 + 1, 1);
        v21 = v52;
      }

      *(v21 + 16) = v24 + 1;
      v43 = v21;
      v25 = (v21 + (v24 << 6));
      v26 = v48;
      v27 = v49;
      v28 = v51;
      v25[4] = v50;
      v25[5] = v28;
      v25[2] = v26;
      v25[3] = v27;
      ++v2;
      v8 = v39;
      goto LABEL_7;
    }

    v20 = sub_266DAB17C();

    if (v20)
    {
      goto LABEL_51;
    }

    sub_266CEDE68(&v48);
    ++v2;
    v10 += 4;
  }

  if (qword_2800C9320 == -1)
  {
    goto LABEL_57;
  }

LABEL_62:
  swift_once();
LABEL_57:
  v29 = sub_266DA94AC();
  __swift_project_value_buffer(v29, qword_2800CC200);
  v30 = v43;

  v31 = sub_266DA948C();
  v32 = sub_266DAAADC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v48 = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x26D5F12B0](v43, &unk_287868740);
    v37 = sub_266C22A3C(v35, v36, &v48);
    v30 = v43;

    *(v33 + 4) = v37;
    _os_log_impl(&dword_266C08000, v31, v32, "labelled location matches: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D5F2480](v34, -1, -1);
    MEMORY[0x26D5F2480](v33, -1, -1);
  }

  return v30;
}