uint64_t sub_268180284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_26817FF90();
}

uint64_t sub_268180350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681803C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268180430(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_268133EC8;

  return sub_26817FDE4(a1, v1 + 16, v1 + v5);
}

uint64_t type metadata accessor for NotebookCommonCATPatternsExecutor(uint64_t a1)
{
  result = qword_28024DF30;
  if (!qword_28024DF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26818062C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_268163208(a1);
  return v11;
}

id sub_2681807A0()
{
  OUTLINED_FUNCTION_13_3();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2683CFA68();

  v2 = [v0 initWithText_];

  return v2;
}

void sub_268180810()
{
  OUTLINED_FUNCTION_30_0();
  v58 = v0;
  v59 = v1;
  v3 = v2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF40, &unk_2683D5D10);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - v5;
  v7 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v60 = v3;
  sub_2683CC9E8();
  v16 = sub_2683CC738();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v15, v7);
  switch(sub_26818CD7C(v16, v18))
  {
    case 1u:
      OUTLINED_FUNCTION_17_7();
      sub_268181110();
      OUTLINED_FUNCTION_23_7();
      sub_26813C7E0((v15 + 144), v18 + 224);
      sub_26813CA00((v15 + 192), v18 + 272);
      v42 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_11_3(v42);
      v43 = 1;
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_17_7();
      sub_268181354();
      OUTLINED_FUNCTION_23_7();
      sub_26813C7E0((v15 + 144), v18 + 224);
      sub_26813CA00((v15 + 192), v18 + 272);
      v47 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_11_3(v47);
      v43 = 2;
LABEL_8:
      LOBYTE(v84) = v43;
      __swift_project_boxed_opaque_existential_1(v15 + 29, *(v15 + 32));
      OUTLINED_FUNCTION_24_2();
      sub_268189100(&v84, v48, v49, v50, v51, v52, v53, v54, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v55 = OUTLINED_FUNCTION_18_8();
      v56(v55);

      sub_26812D9E0(v111, &qword_28024D488, &qword_2683D6100);
      v40 = qword_28024DF68;
      v41 = &unk_2683D5D40;
      goto LABEL_9;
    case 6u:
      OUTLINED_FUNCTION_17_7();
      sub_268181598();
      OUTLINED_FUNCTION_23_7();
      sub_26813C7E0((v15 + 144), v18 + 224);
      sub_26813CA00((v15 + 192), v18 + 272);
      v30 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_11_3(v30);
      LOBYTE(v84) = 6;
      __swift_project_boxed_opaque_existential_1(v15 + 29, *(v15 + 32));
      OUTLINED_FUNCTION_24_2();
      sub_268189068(&v84, v31, v32, v33, v34, v35, v36, v37, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v38 = OUTLINED_FUNCTION_18_8();
      v39(v38);

      sub_26812D9E0(v111, &qword_28024DF58, &qword_2683D5D28);
      v40 = &qword_28024DF60;
      v41 = &unk_2683D5D30;
LABEL_9:
      sub_26812D9E0(&v84, v40, v41);
      goto LABEL_10;
    case 0xAu:
      sub_2683CC9E8();
      v44 = sub_2683CC738();
      v46 = v45;
      v19(v13, v7);
      sub_26812C6B8();
      v23 = swift_allocError();
      v25 = v23;
      *v24 = v44;
      *(v24 + 8) = v46;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      v26 = 1;
      goto LABEL_3;
    default:
      v20 = sub_26818AFA0();
      v22 = v21;
      sub_26812C6B8();
      v23 = swift_allocError();
      v25 = v23;
      *v24 = v20;
      *(v24 + 8) = v22;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      v26 = 2;
LABEL_3:
      *(v24 + 32) = v26;
      *v6 = v23;
      v6[8] = 0;
      v27 = *MEMORY[0x277D5BC30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF48, &qword_2683D5D20);
      OUTLINED_FUNCTION_1();
      (*(v28 + 104))(v6, v27);
      v29 = v25;
      sub_268182510();
      sub_2683CBF38();
      sub_26812D9E0(v6, &qword_28024DF40, &unk_2683D5D10);

LABEL_10:
      OUTLINED_FUNCTION_29_0();
      return;
  }
}

BOOL sub_268180C50(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 3;
  sub_26813A1A0(v3);
  return v1;
}

id sub_268180C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v6 = sub_2683CC9C8();
  LOBYTE(v4) = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(type metadata accessor for SimpleDisambiguationItem(0, AssociatedTypeWitness, v8, v9) + 28);
  v14[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1 + v10, AssociatedTypeWitness);
  v12 = sub_2681758A8(v4, v14);

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v12;
}

uint64_t sub_268180D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_268180DC8);
}

void sub_268180DC8()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9B8();
  sub_2683CF258();
  v3 = v2;

  v0[10] = v3;
  v5 = *(*(v1 + 24) + 24) + **(*(v1 + 24) + 24);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26813A870;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_268180F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_268180D9C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_268181044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_268181110()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v5 + 32) = sub_2683CD158();
  *(v5 + 40) = v6;
  v7 = OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_23_2(v7, &off_2879014F0);
  OUTLINED_FUNCTION_20_2();
  v8 = swift_allocObject();
  sub_268128148(&v15, v8 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v16);
  v9 = *(v0 + 120);
  v10 = qword_28024C8B0;

  if (v10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C890);

  sub_2683CB588();
  sub_2683CB548();
  v11 = OUTLINED_FUNCTION_19_8();
  v12(v11);
  *v3 = v5;
  v3[1] = &unk_2683D5D50;
  v3[2] = 0;
  v3[3] = &unk_2683D5D60;
  v3[4] = v8;
  v3[5] = &unk_2683D5D70;
  v3[6] = v9;
  v3[7] = sub_268181994;
  v3[8] = 0;
  v3[9] = sub_268181A20;
  v3[10] = 0;
  v3[11] = v14;
  v3[12] = v1;
  v3[13] = v13;
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_29_0();
}

void sub_268181354()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v5 + 32) = sub_2683CD158();
  *(v5 + 40) = v6;
  v7 = OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_23_2(v7, &off_2879014F0);
  OUTLINED_FUNCTION_20_2();
  v8 = swift_allocObject();
  sub_268128148(&v15, v8 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v16);
  v9 = *(v0 + 120);
  v10 = qword_28024C8B8;

  if (v10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8B0);

  sub_2683CB588();
  sub_2683CB548();
  v11 = OUTLINED_FUNCTION_19_8();
  v12(v11);
  *v3 = v5;
  v3[1] = &unk_2683D5D90;
  v3[2] = 0;
  v3[3] = &unk_2683D5DA0;
  v3[4] = v8;
  v3[5] = &unk_2683D5DB0;
  v3[6] = v9;
  v3[7] = sub_268181D88;
  v3[8] = 0;
  v3[9] = sub_268181E14;
  v3[10] = 0;
  v3[11] = v14;
  v3[12] = v1;
  v3[13] = v13;
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_29_0();
}

void sub_268181598()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v19 = v5;
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  sub_2681828F0(v0, v22);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v22, 0x118uLL);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_2683D5DD8;
  *(v12 + 24) = v11;
  v22[3] = OUTLINED_FUNCTION_15_9();
  v22[4] = &off_2879014F0;
  v22[0] = v11;
  sub_26813CA00(v22, v21);
  OUTLINED_FUNCTION_20_2();
  v13 = swift_allocObject();
  sub_268128148(v21, v13 + 16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  v15 = *(v1 + 120);
  v14 = *(v1 + 128);

  sub_2683CB588();
  v16 = sub_2683CB548();
  v18 = v17;
  (*(v19 + 8))(v8, v20);
  *v3 = v9;
  *(v3 + 8) = &unk_2683D5DE8;
  *(v3 + 16) = v12;
  *(v3 + 24) = &unk_2683D5DF8;
  *(v3 + 32) = v13;
  *(v3 + 40) = &unk_2683D5E08;
  *(v3 + 48) = v15;
  *(v3 + 56) = sub_268182380;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683D5E18;
  *(v3 + 128) = v14;
  *(v3 + 136) = 1;
  *(v3 + 137) = v22[0];
  *(v3 + 140) = *(v22 + 3);
  *(v3 + 144) = sub_2683779F0;
  *(v3 + 152) = 0;
  *(v3 + 160) = v16;
  *(v3 + 168) = v18;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268181840(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268181860);
}

uint64_t sub_268181860()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26819AC3C(v2);
}

uint64_t sub_2681818E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26819E760(a1, a2);
}

uint64_t sub_268181994()
{
  sub_2683CE1C8();
  swift_allocObject();
  v0 = sub_2683CE1B8();
  sub_2683CDD18();
  swift_allocObject();
  sub_2683CDD08();
  sub_2683CDCF8();
  sub_2683CDE78();

  return v0;
}

id sub_268181A20(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *a1;
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v9 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = v8;
  v11 = sub_26835E66C(v8, 0, 0, 0, 0, v7, v5, 0, 0, 0, 0, 0, 0, 0);
  sub_2681828AC(&qword_28024D578, &qword_280253310, 0x277CD4220, &protocol conformance descriptor for INTask);
  return v11;
}

uint64_t sub_268181B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_2681FF464(a1);
}

uint64_t sub_268181C34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268181C54);
}

uint64_t sub_268181C54()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26819AB2C(v2);
}

uint64_t sub_268181CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26819E3EC(a1, a2);
}

uint64_t sub_268181D88()
{
  sub_2683CE008();
  swift_allocObject();
  v0 = sub_2683CDFF8();
  sub_2683CD9C8();
  swift_allocObject();
  sub_2683CD9B8();
  sub_2683CD988();
  sub_2683CDE78();

  return v0;
}

id sub_268181E14(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D2250;
  sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
  v10 = [v8 spokenPhrase];
  sub_2683CFA78();

  *(v9 + 32) = sub_2681807A0();
  v11 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
  v12 = sub_2683B9B90(0, v9, 0, v7, v5);
  sub_2681828AC(&qword_28024D4B8, &qword_28024D350, 0x277CD3E00, &protocol conformance descriptor for INNote);
  return v12;
}

uint64_t sub_268182000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_2681FF234(a1);
}

uint64_t sub_268182098(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268182144(a1, a2);
}

uint64_t sub_268182144(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_268182168);
}

uint64_t sub_268182168()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);
  v2 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26839D0D0(v2);
  sub_2683CFB38();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26818222C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26818224C);
}

uint64_t sub_26818224C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26819AD4C(v2);
}

uint64_t sub_2681822D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26819E638(a1, a2);
}

uint64_t sub_268182380()
{
  sub_2683CE1C8();
  swift_allocObject();
  v0 = sub_2683CE1B8();
  sub_2683CDD18();
  swift_allocObject();
  sub_2683CDD08();
  sub_2683CDFA8();
  swift_allocObject();
  sub_2683CDF98();
  sub_2683CDCB8();
  swift_allocObject();
  sub_2683CDCA8();
  sub_2683CDF68();

  sub_2683CDCC8();

  sub_2683CDE78();

  return v0;
}

uint64_t sub_268182478(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_2681FF34C(a1);
}

unint64_t sub_268182510()
{
  result = qword_28024DF50;
  if (!qword_28024DF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024DF40, &unk_2683D5D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DF50);
  }

  return result;
}

uint64_t sub_268182574()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268181840(v3, v4);
}

uint64_t sub_2681825F8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681818E8(v3, v4);
}

uint64_t sub_26818268C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268181B9C(v3);
}

uint64_t sub_268182710()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268181C34(v3, v4);
}

uint64_t sub_268182794()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268181CDC(v3, v4);
}

uint64_t sub_268182828()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268182000(v3);
}

uint64_t sub_2681828AC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_268129504(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268182928()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268182098(v3, v4);
}

uint64_t sub_2681829BC()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return v4(v3);
}

uint64_t sub_268182A70()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26818222C(v3, v4);
}

uint64_t sub_268182AF4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681822D4(v3, v4);
}

uint64_t sub_268182B88()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268182478(v3);
}

uint64_t sub_268182C0C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268182C94(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_268182DEC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
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
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_268183020(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_268183060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_10()
{
  *(v1 + 112) = v5;
  *(v1 + 120) = v0;
  *(v1 + 128) = v4;
  *(v1 + 136) = 1;
  v7 = *(v6 - 120);
  *(v1 + 140) = *(v6 - 117);
  *(v1 + 137) = v7;
  *(v1 + 144) = sub_2683779DC;
  *(v1 + 152) = 0;
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));

  return type metadata accessor for SearchForNotebookItemsCATPatternsExecutor(0);
}

uint64_t OUTLINED_FUNCTION_21_7@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  *(v1 - 192) = a1[2];
  *(v1 - 184) = v3;
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return sub_2683CC9B8();
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return sub_26813CA00(v1 + 80, v0 + 400);
}

uint64_t type metadata accessor for SnoozeTasksCATsSimple(uint64_t a1)
{
  result = qword_28024DFF0;
  if (!qword_28024DFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268183294(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681832A8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x676972547478656ELL;
  *(v2 + 40) = 0xEF656D6954726567;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2683CF038();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v6 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2681833F0;

  return (v6)(0xD000000000000022, 0x80000002683FD940, v2);
}

uint64_t sub_2681833F0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_5();

    return v9(v8);
  }
}

uint64_t sub_26818351C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681835B0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2683D1EC0;
  strcpy((v3 + 32), "valueToConfirm");
  *(v3 + 47) = -18;
  sub_2681840DC(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v4) == 1)
  {
    sub_268184140(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_23_0();
    (*(v5 + 32))();
  }

  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_26812B1E8;

  return v8(0xD000000000000018, 0x80000002683FD920, v3);
}

uint64_t sub_268183768(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818377C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v2 + 48) = v1;
  v5 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2681838B0;

  return (v5)(0xD00000000000001DLL, 0x80000002683FD900, v2);
}

uint64_t sub_2681838B0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_5();

    return v9(v8);
  }
}

uint64_t sub_2681839DC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_268183A74()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_2683D2890;
  *(v3 + 32) = 0x6154656C676E6973;
  *(v3 + 40) = 0xEF656C7469546B73;
  sub_2681840DC(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v4) == 1)
  {
    sub_268184140(v0[5], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_23_0();
    (*(v5 + 32))();
  }

  v6 = v0[3];
  *(v3 + 80) = 0x6E6F697461727564;
  *(v3 + 88) = 0xE800000000000000;
  v7 = 0;
  if (v6)
  {
    v7 = sub_2683CF038();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v6;
  *(v3 + 120) = v7;
  v10 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_268183C6C;

  return (v10)(0xD000000000000021, 0x80000002683FD8D0, v3);
}

uint64_t sub_268183C6C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_10();

    return v9(v8);
  }
}

uint64_t sub_268183D9C()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268183E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2681840DC(a1, &v15 - v12, &qword_28024D258, &unk_2683D1F60);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_268184140(a1, &qword_28024D258, &unk_2683D1F60);
  return v13;
}

uint64_t sub_268183FD4(uint64_t a1, uint64_t a2)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2683CF188();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_2681840DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268184140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t type metadata accessor for SetTaskAttributeV2CATs(uint64_t a1)
{
  result = qword_28024E000;
  if (!qword_28024E000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268184258(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184270()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  OUTLINED_FUNCTION_4(v5, xmmword_2683D1EC0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E010, &qword_2683D6078);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_1_15();

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184360()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FC74);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_268184480(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184498()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  OUTLINED_FUNCTION_4(v5, xmmword_2683D1EC0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_1_15();

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184588(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681845A0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  OUTLINED_FUNCTION_4(v5, xmmword_2683D1EC0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_1_15();

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_8(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_12(v7);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_268184690()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_2681847B0()
{
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000033);
}

uint64_t sub_268184868(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184880()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  *(v5 + 16) = xmmword_2683D1EC0;
  *(v5 + 32) = 0x746361746E6F63;
  *(v5 + 40) = 0xE700000000000000;
  v6 = 0;
  if (v2)
  {
    v6 = sub_2683CEF98();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_268184984()
{
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000046);
}

uint64_t sub_268184A3C()
{
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000044);
}

uint64_t sub_268184AF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184B0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  v6 = OUTLINED_FUNCTION_3_10(v5, xmmword_2683D1EC0);
  if (v2)
  {
    v6 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_268184BF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184C0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  v6 = OUTLINED_FUNCTION_3_10(v5, xmmword_2683D1EC0);
  if (v2)
  {
    v6 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_268184CF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184D0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  v6 = OUTLINED_FUNCTION_3_10(v5, xmmword_2683D1EC0);
  if (v2)
  {
    v6 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_268184DF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268184E0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  v6 = OUTLINED_FUNCTION_3_10(v5, xmmword_2683D1EC0);
  if (v2)
  {
    v6 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_268184EF4()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268184F90);
}

uint64_t sub_268184F90()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = v0[5];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v0[6] = v4;
  *(v4 + 16) = xmmword_2683D1EC0;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x80000002683FDA70;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
  v7 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v0[5], &unk_28024E7C0, &unk_2683D6CA0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    (*(*(v5 - 8) + 32))(boxed_opaque_existential_0, v7, v5);
  }

  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_10_2();
  v0[7] = v9;
  *v9 = v10;
  v9[1] = sub_268185138;
  OUTLINED_FUNCTION_20_9();

  return v15(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_268185138()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815F4AC);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_268185264(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818527C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  v6 = OUTLINED_FUNCTION_3_10(v5, xmmword_2683D1EC0);
  if (v2)
  {
    v6 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_268185364(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818537C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  v6 = OUTLINED_FUNCTION_3_10(v5, xmmword_2683D1EC0);
  if (v2)
  {
    v6 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_268185464(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26818547C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v5 = OUTLINED_FUNCTION_14_8(v4);
  v6 = OUTLINED_FUNCTION_3_10(v5, xmmword_2683D1EC0);
  if (v2)
  {
    v6 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_11(v6);
  OUTLINED_FUNCTION_1_15();

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_8(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_12(v8);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_20_9();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2681855B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v13 - v10, &qword_28024D258, &unk_2683D1F60);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v11;
}

uint64_t OUTLINED_FUNCTION_3_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 7368801;
  a1[2].n128_u64[1] = 0xE300000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

void sub_268185828()
{
  v1 = sub_2682E5FA4(v0);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_2681859FC();
  sub_2682C010C(v4);
  v10[1] = v2;
  v10[2] = MEMORY[0x277D84FA0];
  v5 = sub_2683ABE58();

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D616C90](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v7;
    v9 = sub_268158E30(v10, v8);

    if (v9)
    {
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_26818598C()
{
  sub_268185828();
  v1 = sub_268229348();

  if (sub_2682E5D30(v0))
  {
    v2 = sub_268229348();
  }

  else
  {
    v2 = 0;
  }

  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681859FC()
{
  v1 = sub_2682E5CA0(v0);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  result = sub_2683ABE58();
  v4 = result;
  v5 = 0;
  v33 = v2 & 0xFFFFFFFFFFFFFF8;
  v34 = v2 & 0xC000000000000001;
  v28 = v2;
  v32 = v2 + 32;
  v6 = MEMORY[0x277D84F90];
  v29 = result;
  while (1)
  {
    if (v5 == v4)
    {

      return v6;
    }

    if (v34)
    {
      result = MEMORY[0x26D616C90](v5, v28);
    }

    else
    {
      if (v5 >= *(v33 + 16))
      {
        goto LABEL_43;
      }

      result = *(v32 + 8 * v5);
    }

    v7 = __OFADD__(v5++, 1);
    if (v7)
    {
      break;
    }

    v8 = result;
    v9 = [v8 tasks];
    sub_268186108();
    v10 = sub_2683CFCA8();

    if (v10 >> 62)
    {
      v11 = sub_2683D00A8();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_2683D00A8();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v12)
      {
LABEL_18:
        sub_2683D00A8();
      }

LABEL_19:
      result = sub_2683D01B8();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_20;
    }

    if (v12)
    {
      goto LABEL_18;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

LABEL_20:
    v15 = *(v14 + 16);
    v16 = (*(v14 + 24) >> 1) - v15;
    v17 = v14 + 8 * v15;
    v35 = v14;
    if (v10 >> 62)
    {
      v19 = sub_2683D00A8();
      if (v19)
      {
        v20 = v19;
        result = sub_2683D00A8();
        if (v16 < result)
        {
          goto LABEL_48;
        }

        if (v20 < 1)
        {
          goto LABEL_49;
        }

        v30 = result;
        v31 = v6;
        v21 = v17 + 32;
        sub_26818614C();
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E018, &unk_2683E3D10);
          v23 = sub_2683ABCD0(v36, i, v10);
          v25 = *v24;
          (v23)(v36, 0);
          *(v21 + 8 * i) = v25;
        }

        v6 = v31;
        v4 = v29;
        v18 = v30;
        goto LABEL_30;
      }

LABEL_34:

      if (v11 > 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_34;
      }

      if (v16 < v18)
      {
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();
LABEL_30:

      if (v18 < v11)
      {
        goto LABEL_45;
      }

      if (v18 > 0)
      {
        v26 = *(v35 + 16);
        v7 = __OFADD__(v26, v18);
        v27 = v26 + v18;
        if (v7)
        {
          goto LABEL_46;
        }

        *(v35 + 16) = v27;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void sub_268185D44()
{
  v1 = sub_2681859FC();
  sub_2682B4500(v1);
  v3 = v2;
  v4 = sub_2682E5FA4(v0);
  if (!v4)
  {

    return;
  }

  v5 = v4;
  v6 = sub_2683ABE58();
  v7 = 0;
  v20 = v5 & 0xFFFFFFFFFFFFFF8;
  v21 = v5 & 0xC000000000000001;
  v19 = v5 + 32;
  v18 = v5;
  while (1)
  {
LABEL_3:
    if (v7 == v6)
    {

      return;
    }

    if (v21)
    {
      v8 = MEMORY[0x26D616C90](v7, v18);
    }

    else
    {
      if (v7 >= *(v20 + 16))
      {
        goto LABEL_21;
      }

      v8 = *(v19 + 8 * v7);
    }

    v9 = v8;
    if (__OFADD__(v7++, 1))
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = v8;
      v12 = sub_2683D00D8();

      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(v3 + 16))
      {
        sub_268186108();
        v13 = sub_2683CFF58();
        v14 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v15 = v13 & v14;
          if (((*(v3 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
          {
            break;
          }

          v16 = *(*(v3 + 48) + 8 * v15);
          v17 = sub_2683CFF68();

          v13 = v15 + 1;
          if (v17)
          {

            goto LABEL_3;
          }
        }
      }

LABEL_16:
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_268185F40()
{
  if (sub_2682E5D30(v0) && (v1 = sub_268229348(), , v1 > 0))
  {
    return 25;
  }

  else
  {
    return 50;
  }
}

void sub_268185F90()
{
  v1 = sub_2682E5CA0(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2683ABE58();
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D616C90](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v7 = [v5 tasks];
      sub_268186108();
      v8 = sub_2683CFCA8();

      if (v8 >> 62)
      {
        v9 = sub_2683D00A8();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        sub_2683D01F8();
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

unint64_t sub_268186108()
{
  result = qword_280253310;
  if (!qword_280253310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253310);
  }

  return result;
}

unint64_t sub_26818614C()
{
  result = qword_28024E020;
  if (!qword_28024E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E018, &unk_2683E3D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E020);
  }

  return result;
}

uint64_t sub_2681861B0@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v4 = a1;
  v5 = [v4 title];
  v6 = [v5 spokenPhrase];

  v7 = sub_2683CFA78();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = [v4 title];
    v12 = [v11 spokenPhrase];

    v13 = sub_2683CFA78();
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;

    v17 = sub_2681D2F90();
    *(v16 + 56) = &type metadata for CasinoCommands.PunchoutToNotebookItem;
    *(v16 + 64) = &off_2879030B8;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    *(v16 + 48) = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = v13;
    *(v20 + 24) = v15;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 1;
    *(v20 + 52) = 1;
    *(v20 + 56) = 0x4000000000000000;
    *(v20 + 64) = 0;
    *(v20 + 72) = &unk_2878FB328;
    *(v20 + 80) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2683D1EC0;
    *(v21 + 32) = &unk_2683D6088;
    *(v21 + 40) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = &unk_2683D8170;
  }

  else
  {

    v22 = 0;
    v23 = &unk_2683DC910;
  }

  v24 = [v4 contents];
  sub_268186954();
  v25 = sub_2683CFCA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2683D1EC0;

  v27 = sub_2681D2F90();
  *(v26 + 56) = &type metadata for CasinoCommands.PunchoutToNotebookItem;
  *(v26 + 64) = &off_2879030B8;
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  *(v26 + 48) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2683D2890;
  *(v31 + 32) = v23;
  *(v31 + 40) = v22;
  *(v31 + 48) = &unk_2683D6098;
  *(v31 + 56) = v30;

  result = swift_allocObject();
  *(result + 16) = v31;
  *a3 = &unk_2683D60A0;
  a3[1] = result;
  return result;
}

uint64_t sub_268186518()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  v3[1] = sub_2681865A4;

  return sub_26833CF60(v1);
}

uint64_t sub_2681865A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_268186690(uint64_t a1, uint64_t *a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_268186BA4;

  return sub_26833CFFC();
}

uint64_t sub_268186738()
{
  OUTLINED_FUNCTION_14();
  memcpy((v0 + 16), v1, 0x48uLL);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2681867D8;

  return sub_26833D294();
}

uint64_t sub_2681867D8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681868C4()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

unint64_t sub_268186954()
{
  result = qword_28024D4C0;
  if (!qword_28024D4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D4C0);
  }

  return result;
}

uint64_t sub_268186998()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268186A28()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268186AB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4(v0);
}

uint64_t sub_268186BD4()
{
  sub_2683CFEA8();
  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_268186C3C(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 4;
  sub_26813A1A0(v3);
  return v1;
}

id sub_268186C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v6 = sub_2683CC9C8();
  v7 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(type metadata accessor for SimpleDisambiguationItem(0, AssociatedTypeWitness, v9, v10) + 28);
  v15[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1 + v11, AssociatedTypeWitness);
  v13 = sub_2681DFC70(v7, v15);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13;
}

uint64_t sub_268186D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_268186DC8);
}

void sub_268186DC8()
{
  v2 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9B8();
  sub_2683CF258();
  OUTLINED_FUNCTION_7_9();
  v1[10] = v0;
  v4 = *(*(v2 + 24) + 24) + **(*(v2 + 24) + 24);
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_26813A870;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_268186F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_268186D9C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_26818703C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_268187108()
{
  OUTLINED_FUNCTION_30_0();
  v59 = v0;
  v60 = v1;
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E028, &unk_2683D60C0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v62 = v3;
  sub_2683CC9E8();
  v21 = sub_2683CC738();
  v22 = *(v14 + 8);
  v22(v20, v12);
  v23 = sub_268381174(v21);
  switch(v23)
  {
    case 1:
      OUTLINED_FUNCTION_25_8();
      sub_2681879A0();
      OUTLINED_FUNCTION_30_4();
      sub_26813C7E0(v12 + 144, (v18 + 224));
      sub_26813CA00(v12 + 192, (v18 + 272));
      v36 = sub_2683CC9B8();
      OUTLINED_FUNCTION_23_8(v36);
      v63[0] = 1;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189424(v63);
      v37 = OUTLINED_FUNCTION_8_10();
      v38(v37);

      OUTLINED_FUNCTION_31_4();
      v34 = &qword_28024E058;
      v35 = &qword_2683D6108;
      goto LABEL_9;
    case 2:
    case 3:
    case 6:
      v24 = sub_26837EECC(v23);
      v26 = v25;
      sub_26812C6B8();
      v27 = swift_allocError();
      v29 = v27;
      *v28 = v24;
      *(v28 + 8) = v26;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v30 = 2;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_25_8();
      sub_268187C00();
      OUTLINED_FUNCTION_30_4();
      sub_26813C7E0(v12 + 144, (v18 + 224));
      sub_26813CA00(v12 + 192, (v18 + 272));
      v45 = sub_2683CC9B8();
      OUTLINED_FUNCTION_23_8(v45);
      v63[0] = 4;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189198(v63);
      v46 = OUTLINED_FUNCTION_8_10();
      v47(v46);

      OUTLINED_FUNCTION_31_4();
      v34 = &qword_28024E048;
      v35 = &qword_2683D60E0;
      goto LABEL_9;
    case 5:
      v48 = v59;
      v49 = *(v59 + 120);
      v50 = *(v59 + 136);

      sub_2683CB588();
      v51 = sub_2683CB548();
      v53 = v52;
      (*(v56 + 8))(v8, v57);
      sub_26813CA00(v48 + 80, &v71);
      sub_26813C7E0(v48 + 144, &v72);
      sub_26813CA00(v48 + 192, v73);
      v54 = v62;
      v73[5] = sub_2683CC9B8();
      v64 = &unk_2683D60F0;
      v65 = v49;
      v66 = sub_268187F80;
      v67 = 0;
      v68 = v50;
      v69 = v51;
      v70 = v53;
      v63[0] = 5;
      __swift_project_boxed_opaque_existential_1((v48 + 232), *(v48 + 256));

      v55 = sub_268189328(v63);
      v55(v60, v54);

      v34 = &qword_28024E050;
      v35 = &qword_2683D60F8;
      goto LABEL_9;
    case 7:
      sub_2683CC9E8();
      v39 = sub_2683CC738();
      v41 = v40;
      v22(v18, v12);
      sub_26812C6B8();
      v27 = swift_allocError();
      v29 = v27;
      *v28 = v39;
      *(v28 + 8) = v41;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v30 = 1;
LABEL_6:
      *(v28 + 32) = v30;
      *v11 = v27;
      v11[8] = 0;
      v42 = *MEMORY[0x277D5BC30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E030, &qword_2683D60D0);
      OUTLINED_FUNCTION_1();
      (*(v43 + 104))(v11, v42);
      v44 = v29;
      sub_26818A0C8(&qword_28024E038, &qword_28024E028, &unk_2683D60C0, &unk_2683F12A8);
      sub_2683CBF38();
      sub_26812D9E0(v11, &qword_28024E028, &unk_2683D60C0);

      break;
    default:
      OUTLINED_FUNCTION_25_8();
      sub_268187740();
      OUTLINED_FUNCTION_30_4();
      sub_26813C7E0(v12 + 144, (v18 + 224));
      sub_26813CA00(v12 + 192, (v18 + 272));
      v31 = sub_2683CC9B8();
      OUTLINED_FUNCTION_23_8(v31);
      v63[0] = 0;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189520(v63);
      v32 = OUTLINED_FUNCTION_8_10();
      v33(v32);

      OUTLINED_FUNCTION_31_4();
      v34 = &qword_28024E068;
      v35 = &qword_2683D6118;
LABEL_9:
      sub_26812D9E0(v63, v34, v35);
      break;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268187740()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_23_2(v11, &off_2878FFB60);
  OUTLINED_FUNCTION_20_2();
  v12 = swift_allocObject();
  sub_268128148(&v19, v12 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v20);
  v13 = *(v0 + 120);
  v14 = qword_28024C8C0;

  if (v14 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8D0);

  sub_2683CB588();
  sub_2683CB548();
  v15 = OUTLINED_FUNCTION_19_8();
  v16(v15);
  *v4 = v9;
  v4[1] = &unk_2683D6138;
  v4[2] = 0;
  v4[3] = &unk_2683D6148;
  v4[4] = v12;
  v4[5] = &unk_2683D6158;
  v4[6] = v13;
  v4[7] = sub_268188224;
  v4[8] = 0;
  v4[9] = sub_26818823C;
  v4[10] = 0;
  v4[11] = v18;
  v4[12] = v2;
  v4[13] = v17;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_268377A04;
  v4[19] = 0;
  v4[20] = v8;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_2681879A0()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_23_2(v11, &off_2878FFB60);
  OUTLINED_FUNCTION_20_2();
  v12 = swift_allocObject();
  sub_268128148(&v19, v12 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v20);
  v13 = *(v0 + 120);
  v14 = qword_28024C8B8;

  if (v14 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8B0);

  sub_2683CB588();
  sub_2683CB548();
  v15 = OUTLINED_FUNCTION_19_8();
  v16(v15);
  *v4 = v9;
  v4[1] = &unk_2683D6180;
  v4[2] = 0;
  v4[3] = &unk_2683D6190;
  v4[4] = v12;
  v4[5] = &unk_2683D61A0;
  v4[6] = v13;
  v4[7] = sub_268188458;
  v4[8] = 0;
  v4[9] = sub_2681884E4;
  v4[10] = 0;
  v4[11] = v18;
  v4[12] = v2;
  v4[13] = v17;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_2683779DC;
  v4[19] = 0;
  v4[20] = v8;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_268187C00()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v19 = v5;
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  sub_268189954(v0, v22);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v22, 0x118uLL);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_2683D61E8;
  *(v12 + 24) = v11;
  v22[3] = OUTLINED_FUNCTION_28_6();
  v22[4] = &off_2878FFB60;
  v22[0] = v11;
  sub_26813CA00(v22, v21);
  OUTLINED_FUNCTION_20_2();
  v13 = swift_allocObject();
  sub_268128148(v21, v13 + 16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  sub_268189954(v1, v22);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v22, 0x118uLL);
  v15 = *(v1 + 128);

  sub_2683CB588();
  v16 = sub_2683CB548();
  v18 = v17;
  (*(v19 + 8))(v8, v20);
  *v3 = v9;
  *(v3 + 8) = &unk_2683D61F8;
  *(v3 + 16) = v12;
  *(v3 + 24) = &unk_2683D6208;
  *(v3 + 32) = v13;
  *(v3 + 40) = &unk_2683D6218;
  *(v3 + 48) = v14;
  *(v3 + 56) = sub_268188C88;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683D6228;
  *(v3 + 128) = v15;
  *(v3 + 136) = 2;
  *(v3 + 137) = v22[0];
  *(v3 + 140) = *(v22 + 3);
  *(v3 + 144) = sub_268377A1C;
  *(v3 + 152) = 0;
  *(v3 + 160) = v16;
  *(v3 + 168) = v18;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268187ED4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268184258(a1, a2);
}

uint64_t sub_268187F80(uint64_t a1, uint64_t a2)
{
  sub_2683CE0B8();
  swift_allocObject();
  v4 = sub_2683CE0A8();
  sub_2683CDD18();
  swift_allocObject();
  sub_2683CDD08();
  sub_268369814(a1, a2);
  sub_2683CDCC8();

  sub_2683CE188();

  return v4;
}

uint64_t sub_268188034(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = [v3 title];
  sub_2683CFEA8();

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_2681880D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2681880F4);
}

uint64_t sub_2681880F4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_268162C20(v3);
}

uint64_t sub_268188178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268184480(a1, a2);
}

void *sub_26818823C(void **a1)
{
  v1 = *a1;
  sub_26813F368();
  v2 = v1;
  return v1;
}

uint64_t sub_268188270(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_2681F25CC(a1);
}

uint64_t sub_268188308(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268188328);
}

uint64_t sub_268188328()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_268162D30(v3);
}

uint64_t sub_2681883AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268184588(a1, a2);
}

uint64_t sub_268188470(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_2683CE0B8();
  swift_allocObject();
  v8 = sub_2683CE0A8();
  sub_26836945C(a1, a2);
  a5();

  return v8;
}

id sub_2681884E4(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *a1;
  sub_268186108();
  v9 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = v8;
  v11 = sub_26835E66C(v8, 0, 0, 0, 0, v7, v5, 0, 0, 0, 0, 0, 0, 0);
  sub_26813F368();
  return v11;
}

uint64_t sub_26818861C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_2681F26F0(a1);
}

uint64_t sub_2681886B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_268188760(a1, a2);
}

uint64_t sub_268188760(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268188800);
}

uint64_t sub_268188800()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_26839D0D0(v1);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  if (v4)
  {
    sub_2683CFB38();

    v5 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    (*(*(v5 - 8) + 32))(v3, v2, v5);
  }

  else
  {
    v6 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
    sub_2683CFB38();
    if (__swift_getEnumTagSinglePayload(v2, 1, v6) != 1)
    {
      sub_26812D9E0(*(v0 + 40), &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_268188958()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v3 = *v2;
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  v6[1] = sub_2681342AC;

  return v9(v1, v3);
}

uint64_t sub_268188A50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268188A70);
}

uint64_t sub_268188A70()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_2681629E4(v3);
}

uint64_t sub_268188AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_268188B14);
}

uint64_t sub_268188B14()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v1[1] = sub_268188BA8;

  return sub_2681847B0();
}

uint64_t sub_268188BA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268188C88()
{
  sub_2683CE0B8();
  swift_allocObject();
  v0 = sub_2683CE0A8();
  sub_2683CDD18();
  swift_allocObject();
  sub_2683CDD08();
  sub_2683CDFA8();
  swift_allocObject();
  sub_2683CDF98();
  sub_2683CDCB8();
  swift_allocObject();
  sub_2683CDCA8();
  sub_2683CDF68();

  sub_2683CDCC8();

  sub_2683CE188();

  return v0;
}

uint64_t sub_268188D80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26813D6E8;

  return sub_2681F2814();
}

void *sub_268188E10()
{
  OUTLINED_FUNCTION_12_8();
  v1[32] = v3;
  v1[33] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(*v1 + 128)) = 0;
  memcpy(v1 + 2, v2, 0xC8uLL);
  sub_268128148(v0, (v1 + 27));
  return v1;
}

void *sub_268188EA4()
{
  OUTLINED_FUNCTION_12_8();
  v1[47] = v3;
  v1[48] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(*v1 + 128)) = 0;
  memcpy(v1 + 2, v2, 0x140uLL);
  sub_268128148(v0, (v1 + 42));
  return v1;
}

void sub_268188F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024D490, &qword_2683D2670);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E1B0);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268188FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024D4A0, &unk_2683D2680);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E198);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024DF60, &unk_2683D5D30);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E1E0);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, qword_28024DF68, &unk_2683D5D40);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E1C8);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

uint64_t sub_268189198(uint64_t a1)
{
  sub_2681340E8(a1, &v5, &qword_28024E048, &qword_2683D60E0);
  sub_26813CA00(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E0B8, &qword_2683D61D0);
  swift_allocObject();
  v5 = sub_268188EA4();
  sub_26818A0C8(&qword_28024E0C0, &qword_28024E0B8, &qword_2683D61D0, &unk_2683E31E0);
  v2 = sub_2683CBDE8();

  return v2;
}

uint64_t sub_268189294()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268187ED4(v3, v4);
}

uint64_t sub_268189328(uint64_t a1)
{
  sub_2681340E8(a1, &v5, &qword_28024E050, &qword_2683D60F8);
  sub_26813CA00(v1, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E0A0, &qword_2683D61C0);
  swift_allocObject();
  v5 = sub_268188E10();
  sub_26818A0C8(&qword_28024E0A8, &qword_28024E0A0, &qword_2683D61C0, &unk_2683E31E0);
  v2 = sub_2683CBDE8();

  return v2;
}

uint64_t sub_268189424(uint64_t a1)
{
  sub_2681340E8(a1, &v5, &qword_28024E058, &qword_2683D6108);
  sub_26813CA00(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E088, &qword_2683D6170);
  swift_allocObject();
  v5 = sub_268188EA4();
  sub_26818A0C8(&qword_28024E090, &qword_28024E088, &qword_2683D6170, &unk_2683E31E0);
  v2 = sub_2683CBDE8();

  return v2;
}

uint64_t sub_268189520(uint64_t a1)
{
  sub_2681340E8(a1, &v5, &qword_28024E068, &qword_2683D6118);
  sub_26813CA00(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E070, &qword_2683D6120);
  swift_allocObject();
  v5 = sub_268188EA4();
  sub_26818A0C8(&qword_28024E078, &qword_28024E070, &qword_2683D6120, &unk_2683E31E0);
  v2 = sub_2683CBDE8();

  return v2;
}

uint64_t sub_26818961C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2681880D4(v3, v4);
}

uint64_t sub_2681896A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268188178(v3, v4);
}

uint64_t sub_268189734()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_268188270(v3);
}

uint64_t sub_2681897B8()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268188308(v3, v4);
}

uint64_t sub_26818983C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681883AC(v3, v4);
}

uint64_t sub_2681898D0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26818861C(v3);
}

uint64_t sub_26818998C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2681886B4(v3, v4);
}

uint64_t sub_268189A20()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return v4(v3);
}

uint64_t sub_268189AD4()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_268188A50(v3, v4);
}

uint64_t objectdestroy_26Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  if (*(v0 + 200) == 1)
  {
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_268189BF4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_268188AF4(v3, v4, v5);
}

uint64_t sub_268189C88()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D6E0;

  return sub_268188D80();
}

void sub_268189D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E150, &qword_2683D62A0);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E160);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E130, &qword_2683E3DF0);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E140);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_268189E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E110, &qword_2683D6270);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E120);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

uint64_t sub_268189ED8(uint64_t a1)
{
  sub_2681340E8(a1, &v7, &qword_28024E0F0, &qword_2683D6258);
  sub_26813CA00(v1, &v6);
  v2 = OUTLINED_FUNCTION_55_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9_9(v4);
  v7 = sub_268188E10();
  OUTLINED_FUNCTION_0_21(&qword_28024E100);
  sub_2683CBDE8();
  OUTLINED_FUNCTION_7_9();
  return OUTLINED_FUNCTION_55_0();
}

void sub_268189F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E0D0, &qword_2683D6240);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E0E0);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

void sub_26818A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_37_3();
  a61 = v62;
  a62 = v63;
  v65 = sub_2681340E8(v64, &a15, &qword_28024E170, &unk_2683D9BD0);
  OUTLINED_FUNCTION_27_4(v65, v66);
  v67 = OUTLINED_FUNCTION_55_0();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  OUTLINED_FUNCTION_9_9(v69);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_16_12();
  v70 = OUTLINED_FUNCTION_0_21(&qword_28024E180);
  OUTLINED_FUNCTION_11_13(v70, v71, v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_36_4();
}

uint64_t sub_26818A0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26818A110(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26818A198(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26818A2F0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
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
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_21(unint64_t *a1)
{

  return sub_26818A0C8(a1, v1, v2, &unk_2683E31E0);
}

uint64_t OUTLINED_FUNCTION_7_9()
{
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_2683CBDE8();
}

void OUTLINED_FUNCTION_19_10()
{
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 128) = v2;
  *(v1 + 136) = 1;
  v5 = *(v4 - 120);
  *(v1 + 140) = *(v4 - 117);
  *(v1 + 137) = v5;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return sub_2681340E8(v0 + 552, v0 + 56, v1, v2);
}

void *OUTLINED_FUNCTION_23_8(uint64_t a1)
{
  *(v1 + 544) = a1;

  return memcpy((v2 + 8), (v1 + 552), 0xB0uLL);
}

void *OUTLINED_FUNCTION_26_6()
{

  return sub_268188EA4();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_26813CA00(v2, va);
}

uint64_t OUTLINED_FUNCTION_28_6()
{
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));

  return type metadata accessor for SetTaskAttributeCATPatternsExecutor(0);
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_26813CA00(v1 + 80, v0 + 416);
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_26812D9E0(v0 + 552, v1, v2);
}

void sub_26818A750()
{
  qword_28027C7C0 = 0xD000000000000028;
  *algn_28027C7C8 = 0x80000002683FD670;
  qword_28027C7D0 = 0x6156676E69727473;
  unk_28027C7D8 = 0xEB0000000065756CLL;
}

uint64_t sub_26818A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

uint64_t sub_26818A7B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26818A83C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E298, &qword_2683D6550);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26818AD88();
  sub_2683D0718();
  sub_2683D0518();
  return (*(v6 + 8))(v9, v4);
}

void *sub_26818A970(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E288, &qword_2683D6548);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26818AD88();
  sub_2683D06F8();
  if (!v1)
  {
    v9 = sub_2683D0478();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_26818AAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26818A7B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26818AAF0(uint64_t a1)
{
  v2 = sub_26818AD88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26818AB2C(uint64_t a1)
{
  v2 = sub_26818AD88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26818AB68@<X0>(void *a1@<X8>)
{
  if (qword_28024C890 != -1)
  {
    swift_once();
  }

  v2 = *algn_28027C7C8;
  v3 = qword_28027C7D0;
  v4 = unk_28027C7D8;
  *a1 = qword_28027C7C0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

void *sub_26818ABF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_26818A970(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_26818AC54(void *a1)
{
  a1[1] = sub_26818AC8C();
  a1[2] = sub_26818ACE0();
  result = sub_26818AD34();
  a1[3] = result;
  return result;
}

unint64_t sub_26818AC8C()
{
  result = qword_28024E270;
  if (!qword_28024E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E270);
  }

  return result;
}

unint64_t sub_26818ACE0()
{
  result = qword_28024E278;
  if (!qword_28024E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E278);
  }

  return result;
}

unint64_t sub_26818AD34()
{
  result = qword_28024E280;
  if (!qword_28024E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E280);
  }

  return result;
}

unint64_t sub_26818AD88()
{
  result = qword_28024E290;
  if (!qword_28024E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIStringValue.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26818AE8C()
{
  result = qword_28024E2A0;
  if (!qword_28024E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2A0);
  }

  return result;
}

unint64_t sub_26818AEE4()
{
  result = qword_28024E2A8;
  if (!qword_28024E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2A8);
  }

  return result;
}

unint64_t sub_26818AF3C()
{
  result = qword_28024E2B0;
  if (!qword_28024E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2B0);
  }

  return result;
}

uint64_t sub_26818AFA4()
{
  OUTLINED_FUNCTION_14();
  v0[86] = v1;
  v0[85] = v2;
  v3 = sub_2683CB668();
  v0[87] = v3;
  v0[88] = *(v3 - 8);
  v0[89] = swift_task_alloc();
  v4 = sub_2683CCBA8();
  v0[90] = v4;
  v0[91] = *(v4 - 8);
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818B0CC);
}

uint64_t sub_26818B0CC()
{
  v1 = *(v0 + 688);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  v5 = OUTLINED_FUNCTION_18_10();
  v41 = v6;
  v6(v5);
  sub_26813CA00(v1, v0 + 384);
  OUTLINED_FUNCTION_20_2();
  v42 = swift_allocObject();
  sub_268128148((v0 + 384), v42 + 16);
  v7 = v1[3];
  v8 = v1[4];
  v9 = __swift_project_boxed_opaque_existential_1(v1, v7);
  *(v0 + 448) = v7;
  *(v0 + 456) = *(v8 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 424));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v9, v7);
  *(v0 + 664) = sub_268129504(0, &qword_28024D340, 0x277CD4058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2B8, &qword_2683D66C8);
  v11 = sub_2683CFAD8();
  v39 = v12;
  v40 = v11;
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_26818F510(v0 + 464, v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 608))
  {
    OUTLINED_FUNCTION_20_2();
    v13 = swift_allocObject();
    v14 = *(v0 + 600);
    *(v13 + 16) = *(v0 + 584);
    *(v13 + 32) = v14;
    *(v13 + 48) = *(v0 + 616);
    v15 = &off_287900140;
    v16 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_26812D9E0(v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
    v13 = 0;
    v16 = 0;
    v15 = 0;
    *(v0 + 552) = 0u;
  }

  v36 = *(v0 + 736);
  v37 = *(v0 + 744);
  v38 = *(v0 + 728);
  v35 = *(v0 + 720);
  v17 = *(v0 + 712);
  v18 = *(v0 + 704);
  *(v0 + 544) = v13;
  *(v0 + 568) = v16;
  v19 = *(v0 + 696);
  *(v0 + 576) = v15;
  if (v4)
  {
    v20 = "reminderListType";
  }

  else
  {
    v20 = "reateNote";
  }

  if (v4)
  {
    v21 = 0xD000000000000015;
  }

  else
  {
    v21 = 0xD000000000000013;
  }

  v22 = v20 | 0x8000000000000000;
  v23 = type metadata accessor for InstalledAppProvider(0);
  *(v0 + 648) = v23;
  *(v0 + 656) = &off_2879042B8;
  v24 = __swift_allocate_boxed_opaque_existential_0((v0 + 624));
  v25 = *(v18 + 16);
  v25(v24 + *(v23 + 20), v17, v19);
  *v24 = 0;
  v26 = type metadata accessor for RegexAppSearcher(0);
  *(v0 + 80) = v26;
  *(v0 + 88) = &off_28790BB20;
  v27 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 624, v27);
  v25(v27 + *(v26 + 20), v17, v19);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  v28 = swift_allocObject();
  *(v0 + 96) = v28;
  sub_26813CA00(v0 + 624, v28 + 32);
  sub_26818F510(v0 + 544, v28 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v28 + 16) = v21;
  *(v28 + 24) = v22;
  (*(v18 + 8))(v17, v19);
  sub_26813CA00(v0 + 624, v0 + 16);
  sub_26812D9E0(v0 + 544, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  *(v0 + 136) = 0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v29 = swift_allocObject();
  *(v0 + 144) = v29;
  sub_26818CE54(v0 + 16, v29 + 16);
  sub_26818F510(v0 + 424, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v40;
  *(v0 + 192) = v39;
  *(v0 + 200) = 0;
  *(v0 + 208) = &unk_2683D66B0;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v30 = OUTLINED_FUNCTION_18_10();
  v41(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2D8, &qword_2683D66E8);
  swift_allocObject();
  v31 = sub_2681E514C((v0 + 264), v36, &unk_2683D66C0, v42);
  (*(v38 + 8))(v37, v35);
  sub_26812D9E0(v0 + 424, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_26812D9E0(v0 + 464, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 672) = v31;
  sub_26818A0C8(&qword_28024E2E0, &qword_28024E2D8, &qword_2683D66E8, &unk_2683FA170);
  sub_2683CBF28();

  v32 = OUTLINED_FUNCTION_1_16();

  return v33(v32);
}

uint64_t sub_26818B6B0()
{
  *(v0 + 56) = type metadata accessor for StringLocalizer(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818B740);
}

uint64_t sub_26818B740()
{
  OUTLINED_FUNCTION_7();
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_28024C8D0 != -1)
  {
    OUTLINED_FUNCTION_7_10(&qword_28024C8D0);
  }

  v1 = qword_28027C938;
  *(v0[8] + *(v0[7] + 20)) = qword_28027C938;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_26818B860;

  return sub_2681E5AB8();
}

uint64_t sub_26818B860()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  sub_26818F054(v2, type metadata accessor for StringLocalizer);

  v5 = OUTLINED_FUNCTION_9_0();

  return v6(v5);
}

uint64_t sub_26818B994(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26818B9B4);
}

uint64_t sub_26818B9B4()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_26818BA70;

  return sub_2681347D4(dword_2683D66F8);
}

uint64_t sub_26818BA70()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_16();

  return v4(v3);
}

uint64_t sub_26818BB70(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_26818BB90);
}

uint64_t sub_26818BB90()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_26818BC40;

  return sub_2681299E4(v3, v2);
}

uint64_t sub_26818BC40()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 56) = v3;

    return MEMORY[0x2822009F8](sub_26818BD7C);
  }
}

uint64_t sub_26818BD7C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = OUTLINED_FUNCTION_9_10();
  v5 = v4(v3, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26818BE50;
  v7 = v0[7];
  v8 = v0[5];

  return sub_26818BFCC((v0 + 2), v7, v5 & 1, v8);
}

uint64_t sub_26818BE50()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26818BF3C);
}

uint64_t sub_26818BF3C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v0[3] = v0[2];
  sub_2683CBC28();
  sub_2683CBF28();

  v2 = OUTLINED_FUNCTION_1_16();

  return v3(v2);
}

uint64_t sub_26818BFCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 664) = a4;
  *(v4 + 744) = a3;
  *(v4 + 656) = a2;
  *(v4 + 648) = a1;
  sub_2683CF238();
  *(v4 + 672) = swift_task_alloc();
  *(v4 + 680) = type metadata accessor for StringLocalizer(0);
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  v5 = sub_2683CBCE8();
  *(v4 + 704) = v5;
  v6 = *(v5 - 8);
  *(v4 + 712) = v6;
  *(v4 + 720) = *(v6 + 64);
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818C114);
}

uint64_t sub_26818C114()
{
  *(v0 + 568) = &type metadata for NotebookUnlockDeviceStrategy;
  *(v0 + 576) = sub_26818DBD4();
  sub_2683CBCD8();
  __swift_destroy_boxed_opaque_existential_0((v0 + 544));

  v2 = sub_2683889B8(v1);
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608));
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  if (qword_28024C8D0 != -1)
  {
    OUTLINED_FUNCTION_7_10(&qword_28024C8D0);
  }

  v3 = *(v0 + 736);
  v25 = v3;
  v31 = *(v0 + 728);
  v4 = *(v0 + 712);
  v27 = *(v0 + 696);
  v28 = *(v0 + 688);
  v5 = *(v0 + 664);
  v23 = *(v0 + 744);
  v24 = *(v0 + 656);
  v29 = *(v0 + 648);
  v30 = *(v0 + 704);
  v6 = qword_28027C938;
  *(v27 + *(*(v0 + 680) + 20)) = qword_28027C938;
  sub_26818EDD8(v27, v28, type metadata accessor for StringLocalizer);
  v7 = v6;
  v26 = sub_26819251C(v2, v28);
  sub_26818F054(v27, type metadata accessor for StringLocalizer);
  type metadata accessor for NotebookReadingCATsSimple(0);
  sub_2683CF228();
  OUTLINED_FUNCTION_14_9();
  v8 = sub_2683CF198();
  sub_2683CCC48();
  *(v0 + 128) = &type metadata for NotebookFeatureManager;
  *(v0 + 136) = &protocol witness table for NotebookFeatureManager;
  v9 = sub_2683CC548();
  OUTLINED_FUNCTION_42_3(v9);
  v10 = sub_2683CC538();
  v11 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v0 + 176) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 184) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v12 = swift_allocObject();
  *(v0 + 152) = v12;
  v12[6] = &unk_28790DB70;
  v12[7] = &off_28790DB88;
  v12[3] = v11;
  v12[2] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  *(v0 + 16) = xmmword_2683D6670;
  *(v0 + 32) = xmmword_2683D6680;
  *(v0 + 48) = v8;
  *(v0 + 96) = v23;
  *(v0 + 144) = v10;
  (*(v4 + 16))(v31, v3, v30);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v13, v31, v30);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26818DC28;
  *(v15 + 24) = v14;
  sub_26818DDAC(v0 + 16, v0 + 192);
  v16 = swift_allocObject();
  v16[2] = v24;
  memcpy(v16 + 3, (v0 + 192), 0xB0uLL);
  v16[25] = v5;
  sub_26818DDAC(v0 + 16, v0 + 368);
  v17 = swift_allocObject();
  memcpy((v17 + 16), (v0 + 368), 0xB0uLL);
  _s15RchThenReadFlowCMa();
  OUTLINED_FUNCTION_12_9();
  swift_allocObject();
  *(v0 + 624) = sub_268194218(&unk_2683D6710, v15, &unk_2683D6720, v26, &unk_2683D6730, v16, &unk_2683D6740, v17);

  v18 = v24;
  *(v0 + 632) = sub_26818FF98(v5, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  sub_26818DF50();
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80, MEMORY[0x277D5B820]);
  v19 = sub_2683CBF68();

  *(v0 + 640) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF08, &unk_2683D6750);
  sub_26818A0C8(&qword_28024DF10, &qword_28024DF08, &unk_2683D6750, MEMORY[0x277D5B380]);
  v20 = sub_2683CBF28();

  sub_26818DFA8(v0 + 16);
  (*(v4 + 8))(v25, v30);
  *v29 = v20;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26818C6D0(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_26818C754()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D2250;
  v0[2] = v1;
  sub_2683CBC18();
  *(v2 + 32) = sub_2683CBF28();
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26818C808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26818C8B4;

  return sub_26818DFFC(a1, a2, a3);
}

uint64_t sub_26818C8B4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_16();

  return v4(v3);
}

uint64_t sub_26818C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[25] = a1;
  v4[26] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818CA74);
}

uint64_t sub_26818CA74()
{
  sub_26832A218();
  if (v1)
  {
    v3 = v0[31];
    v2 = v0[32];
    v4 = v0[30];
    v14 = v0[29];
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[26];
    sub_268129504(0, &qword_28024D340, 0x277CD4058);
    sub_268129504(0, &qword_28024D348, 0x277CD4060);

    v8 = v7;
    v9 = v5;
    sub_2683CC838();
    sub_26818DDAC(v6, (v0 + 2));
    (*(v4 + 16))(v3, v2, v14);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E300, &qword_2683D6760);
    OUTLINED_FUNCTION_42_3(v10);
    v0[24] = sub_26818D804((v0 + 2), v3);
    sub_26818A0C8(&qword_28024E308, &qword_28024E300, &qword_2683D6760, &unk_2683DE588);
    sub_2683CBF28();

    (*(v4 + 8))(v2, v14);
  }

  v11 = OUTLINED_FUNCTION_1_16();

  return v12(v11);
}

unint64_t sub_26818CC58(char a1)
{
  result = 0x657079546D657469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x746E65746E6F63;
      break;
    case 3:
      result = 0x737574617473;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x656D695465746164;
      break;
    case 7:
      result = 0x7261655365746164;
      break;
    case 8:
      result = 0x6F6972506B736174;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26818CD7C(uint64_t a1, uint64_t a2)
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26818CDC4()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26818F620;

  return sub_26818B994(v2, v0 + 16);
}

uint64_t sub_26818CF0C(char a1)
{
  switch(a1)
  {
    case 1:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v2 = OUTLINED_FUNCTION_19_4(v12);
      *(v2 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBE0 != -1)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 2:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v2 = OUTLINED_FUNCTION_19_4(v10);
      *(v2 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBC0 != -1)
      {
LABEL_22:
        swift_once();
      }

LABEL_19:
      v3 = sub_2681E1F9C();
      goto LABEL_20;
    case 3:
    case 7:
    case 8:
    case 9:
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v2 = OUTLINED_FUNCTION_19_4(v1);
      *(v2 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBF8 != -1)
      {
        swift_once();
      }

      v3 = sub_2681E20E4();
      goto LABEL_20;
    case 4:
    case 5:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v6 = OUTLINED_FUNCTION_19_4(v5);
      v2 = v6;
      *(v6 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBB8 != -1)
      {
        v6 = swift_once();
      }

      v3 = sub_2681E1FB8(v6, v7);
      goto LABEL_20;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_19_11();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2683D2890;
      if (qword_28024CBA0 != -1)
      {
        swift_once();
      }

      *(v2 + 32) = sub_2681E20C8();
      *(v2 + 40) = v8;
      if (qword_28024CBA8 != -1)
      {
        swift_once();
      }

      *(v2 + 48) = sub_2681E20C8();
      *(v2 + 56) = v9;
      return v2;
    default:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v2 = OUTLINED_FUNCTION_19_4(v11);
      *(v2 + 16) = xmmword_2683D1EC0;
      if (qword_28024CB70 != -1)
      {
        swift_once();
      }

      v3 = sub_2681E1E58();
LABEL_20:
      *(v2 + 32) = v3;
      *(v2 + 40) = v4;
      return v2;
  }
}

uint64_t sub_26818D208(uint64_t a1, char a2)
{
  sub_26818F510(a1, v139, &qword_28024E370, &unk_2683D9AA0);
  if (!v140)
  {
    goto LABEL_33;
  }

  sub_26818F510(v139, v138, &qword_28024E370, &unk_2683D9AA0);
  v4 = sub_2683CDE68();
  v6 = OUTLINED_FUNCTION_0_22(v4, v5);
  if (v6)
  {
LABEL_3:
    OUTLINED_FUNCTION_15_11(v6, v7, v8, v9, v10, v11, v12, v13, v129, v133);
    sub_2683CD8F8();
LABEL_4:

    v22 = OUTLINED_FUNCTION_11_14(v14, v15, v16, v17, v18, v19, v20, v21, v130, v133, v134, v135, v136, v137);
    v24 = sub_26818D64C(v22, v23);
    goto LABEL_11;
  }

  v25 = sub_2683CDAD8();
  v27 = OUTLINED_FUNCTION_0_22(v25, v26);
  if (v27)
  {
    goto LABEL_6;
  }

  v45 = sub_2683CE0D8();
  v47 = OUTLINED_FUNCTION_0_22(v45, v46);
  if (v47)
  {
    goto LABEL_9;
  }

  v66 = sub_2683CD9D8();
  v6 = OUTLINED_FUNCTION_0_22(v66, v67);
  if (v6)
  {
    goto LABEL_3;
  }

  v68 = sub_2683CD728();
  v27 = OUTLINED_FUNCTION_0_22(v68, v69);
  if (v27)
  {
    goto LABEL_6;
  }

  v70 = sub_2683CDD98();
  v47 = OUTLINED_FUNCTION_0_22(v70, v71);
  if (v47)
  {
LABEL_9:
    OUTLINED_FUNCTION_15_11(v47, v48, v49, v50, v51, v52, v53, v54, v129, v133);
    sub_2683CD8F8();
LABEL_10:

    v63 = OUTLINED_FUNCTION_11_14(v55, v56, v57, v58, v59, v60, v61, v62, v132, v133, v134, v135, v136, v137);
    v24 = sub_26818D72C(v63, v64);
    goto LABEL_11;
  }

  v72 = sub_2683CDEE8();
  v27 = OUTLINED_FUNCTION_0_22(v72, v73);
  if (v27)
  {
LABEL_6:
    OUTLINED_FUNCTION_15_11(v27, v28, v29, v30, v31, v32, v33, v34, v129, v133);
    sub_2683CD8F8();
LABEL_7:

    v43 = OUTLINED_FUNCTION_11_14(v35, v36, v37, v38, v39, v40, v41, v42, v131, v133, v134, v135, v136, v137);
    v24 = sub_26818D6E4(v43, v44);
    goto LABEL_11;
  }

  v74 = sub_2683CE108();
  v6 = OUTLINED_FUNCTION_0_22(v74, v75);
  if (v6)
  {
    goto LABEL_3;
  }

  v76 = sub_2683CE208();
  v47 = OUTLINED_FUNCTION_0_22(v76, v77);
  if (v47)
  {
    goto LABEL_9;
  }

  v78 = sub_2683CD948();
  v80 = OUTLINED_FUNCTION_0_22(v78, v79);
  if (v80)
  {
    OUTLINED_FUNCTION_15_11(v80, v81, v82, v83, v84, v85, v86, v87, v129, v133);
    sub_2683CDDC8();
    goto LABEL_7;
  }

  v88 = sub_2683CDC88();
  v90 = OUTLINED_FUNCTION_0_22(v88, v89);
  if (v90)
  {
    OUTLINED_FUNCTION_15_11(v90, v91, v92, v93, v94, v95, v96, v97, v129, v133);
    sub_2683CDDC8();
    goto LABEL_4;
  }

  v98 = sub_2683CDF48();
  v100 = OUTLINED_FUNCTION_0_22(v98, v99);
  if (v100)
  {
    OUTLINED_FUNCTION_15_11(v100, v101, v102, v103, v104, v105, v106, v107, v129, v133);
    sub_2683CDDC8();
    goto LABEL_10;
  }

  v108 = sub_2683CD8D8();
  if (OUTLINED_FUNCTION_0_22(v108, v109) || (v110 = sub_2683CDBC8(), OUTLINED_FUNCTION_0_22(v110, v111)) || (v112 = sub_2683CDF28(), OUTLINED_FUNCTION_0_22(v112, v113)) || (v114 = sub_2683CD938(), OUTLINED_FUNCTION_0_22(v114, v115)))
  {

    sub_2683CCFF8();

    if (!v137)
    {

      v65 = 0;
      goto LABEL_12;
    }

    v24 = sub_2683CD1A8();
LABEL_11:
    v65 = v24;

LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v138);
    goto LABEL_39;
  }

  __swift_destroy_boxed_opaque_existential_0(v138);
LABEL_33:
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v116 = sub_2683CF7E8();
  __swift_project_value_buffer(v116, qword_28027C958);
  sub_26818F56C(a1, v138);
  v117 = sub_2683CF7C8();
  v118 = sub_2683CFE78();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v137 = v120;
    *v119 = 136315394;
    v121 = sub_26818CC58(a2);
    v123 = sub_2681610A0(v121, v122, &v137);

    *(v119 + 4) = v123;
    *(v119 + 12) = 2080;
    sub_26818F510(v138, &v133, &qword_28024E370, &unk_2683D9AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    v124 = sub_2683CFAD8();
    v126 = v125;
    sub_26818F5C8(v138);
    v127 = sub_2681610A0(v124, v126, &v137);

    *(v119 + 14) = v127;
    _os_log_impl(&dword_2680EB000, v117, v118, "[SFNI resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v119, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v120, -1, -1);
    MEMORY[0x26D617A40](v119, -1, -1);
  }

  else
  {

    sub_26818F5C8(v138);
  }

  v65 = 0;
LABEL_39:
  sub_26812D9E0(v139, &qword_28024E370, &unk_2683D9AA0);
  return v65;
}

uint64_t sub_26818D64C(uint64_t a1, char a2)
{
  if (a2 == 6)
  {
    if (a1)
    {
      v2 = sub_2683CD7C8();
      if (!v2)
      {
        return v2;
      }

      v3 = sub_2683CDA58();

      if (v3)
      {

        v2 = sub_2683CD1A8();

        return v2;
      }
    }

    return 0;
  }

  if (a2 != 1 || !a1)
  {
    return 0;
  }

  return sub_2683CD1A8();
}

uint64_t sub_26818D6E4(uint64_t result, char a2)
{
  if (a2 != 2 && a2 != 1)
  {
    return 0;
  }

  if (result)
  {
    return sub_2683CD1A8();
  }

  return result;
}

uint64_t sub_26818D72C(uint64_t a1, char a2)
{
  if (a2 != 1 || a1 == 0)
  {
    return 0;
  }

  else
  {
    return sub_2683CD1A8();
  }
}

unint64_t sub_26818D790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26818CD7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26818D7C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26818CC58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26818D804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26818DDAC(a1, v3 + 32);
  v6 = *(*v3 + 120);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + v6, a2, v7);
  v9 = sub_2683CC818();
  v10 = [v9 notes];
  if (v10)
  {
    v11 = v10;
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    v12 = sub_2683CFCA8();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *(v3 + *(*v3 + 128)) = v12;
  v13 = [v9 taskLists];
  if (v13)
  {
    v14 = v13;
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    v15 = sub_2683CFCA8();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  *(v3 + *(*v3 + 136)) = v15;
  v16 = [v9 tasks];
  if (v16)
  {
    v17 = v16;
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    v18 = sub_2683CFCA8();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  *(v3 + *(*v3 + 144)) = v18;
  *(v3 + 16) = 0;
  *(v3 + 24) = 3;
  if (sub_2683ABE58())
  {

    v19 = 1;
  }

  else
  {
    swift_beginAccess();
    v20 = sub_268229348();

    v19 = v20 > 1;
  }

  (*(v8 + 8))(a2, v7);
  sub_26818DFA8(a1);
  *(v3 + 208) = v19;
  return v3;
}

uint64_t sub_26818DB48()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D0C0;
  v3 = OUTLINED_FUNCTION_9_0();

  return sub_26818BB70(v3, v4);
}

unint64_t sub_26818DBD4()
{
  result = qword_28024E2E8;
  if (!qword_28024E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2E8);
  }

  return result;
}

uint64_t sub_26818DC84()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26818C8B4;
  v3 = OUTLINED_FUNCTION_9_0();

  return v4(v3);
}

uint64_t sub_26818DD24()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_3(v1);
  *v2 = v3;
  v2[1] = sub_26818F620;

  return sub_26818C734(v0);
}

uint64_t sub_26818DE08()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 200);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26818F620;

  return sub_26818C808(v1, v0 + 24, v2);
}

uint64_t sub_26818DEA8()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_3(v7);
  *v8 = v9;
  v8[1] = sub_26818F620;

  return sub_26818C998(v6, v4, v2, v0 + 16);
}

unint64_t sub_26818DF50()
{
  result = qword_28024E2F0;
  if (!qword_28024E2F0)
  {
    _s15RchThenReadFlowCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2F0);
  }

  return result;
}

uint64_t sub_26818DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[267] = a3;
  v3[266] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E310, &qword_2683D6770);
  v3[268] = v5;
  v3[269] = *(v5 - 8);
  v3[270] = swift_task_alloc();
  v3[271] = type metadata accessor for SnippetFormatter(0);
  v3[272] = swift_task_alloc();
  sub_2683CF238();
  v3[273] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E318, &qword_2683D6778);
  v3[274] = v6;
  v3[275] = *(v6 - 8);
  v3[276] = swift_task_alloc();
  v3[277] = swift_task_alloc();
  v3[235] = &_s15ReadingStrategyVN;
  v3[236] = &off_2879095B8;
  v7 = swift_allocObject();
  v3[232] = v7;
  sub_26818DDAC(a2, v7 + 16);

  return MEMORY[0x2822009F8](sub_26818E1DC);
}

uint64_t sub_26818E1DC()
{
  v30 = *(v0 + 2216);
  v33 = *(v0 + 2200);
  v34 = *(v0 + 2208);
  v32 = *(v0 + 2192);
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v35 = *(v0 + 2160);
  v36 = *(v0 + 2144);
  v37 = *(v0 + 2152);
  *(v0 + 1720) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 1728) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v3 = swift_allocObject();
  *(v0 + 1696) = v3;
  *(v3 + 40) = &type metadata for NotebookFeatureManager;
  *(v3 + 48) = &protocol witness table for NotebookFeatureManager;
  *(v0 + 1736) = sub_268372484;
  *(v0 + 1744) = 0;
  sub_2683CCC48();
  type metadata accessor for SearchForNotebookItemsV2CATs(0);
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v31 = sub_2683CF0B8();
  type metadata accessor for SearchForNotebookItemsV2CATsSimple(0);
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v38 = sub_2683CF198();
  type metadata accessor for NotebookBaseCATs(0);
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v4 = sub_2683CF0B8();
  type metadata accessor for NotebookLabelsV2CATs(0);
  OUTLINED_FUNCTION_16_13();
  v5 = sub_2683CF0B8();
  *(v0 + 1960) = &type metadata for TCCTemplateProvider;
  *(v0 + 1968) = &off_287902CB8;
  v6 = sub_2683CC548();
  v7 = OUTLINED_FUNCTION_42_3(v6);
  sub_2683CC538();
  type metadata accessor for SearchForNotebookItemsCATPatternsExecutor(0);
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v8 = sub_2683CF0B8();
  *(v0 + 2000) = v7;
  *(v0 + 2008) = &off_2879014F0;
  *(v0 + 1976) = v8;
  *(v0 + 2040) = &type metadata for NotebookFeatureManager;
  *(v0 + 2048) = &protocol witness table for NotebookFeatureManager;
  sub_26813CA00(v0 + 1856, v0 + 2056);
  v39 = sub_268129504(0, &qword_28024D340, 0x277CD4058);
  sub_268129504(0, &qword_28024D348, 0x277CD4060);
  sub_2683CBEB8();
  __swift_project_boxed_opaque_existential_1((v0 + 1896), *(v0 + 1920));

  sub_2683CC088();
  *v1 = v4;
  v1[1] = v5;
  v1[2] = 0;
  v9 = *(v2 + 32);
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_2683CB768();
  sub_26813CA00(v0 + 1896, v0 + 1384);
  sub_26813CA00(v0 + 1936, v0 + 1432);
  *(v0 + 1424) = v5;
  *(v0 + 1328) = &type metadata for AceUserLocationProvider;
  *(v0 + 1336) = &off_28790C920;
  OUTLINED_FUNCTION_20_2();
  *(v0 + 1304) = swift_allocObject();
  sub_2683CC078();
  sub_26813CA00(v0 + 2016, v0 + 1344);
  sub_2683CF318();
  sub_2683CF308();
  v10 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v0 + 1840) = &unk_28790DB70;
  *(v0 + 1848) = &off_28790DB88;
  *(v0 + 1816) = v10;
  *(v0 + 1808) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  swift_allocObject();
  v11 = sub_2683CC538();
  sub_26813CA00(v0 + 1896, v0 + 1640);
  *(v0 + 1632) = v31;
  *(v0 + 1680) = sub_268372484;
  *(v0 + 1688) = 0;
  sub_26818ED30();

  sub_2683CBD98();
  sub_2683CBE38();
  *(v0 + 2096) = v38;
  *(v0 + 2104) = v11;
  *(v0 + 2112) = sub_2681B86A4;
  *(v0 + 2120) = 0;
  sub_26818ED84();

  sub_2683CBDD8();
  sub_2683CBE88();
  *(v0 + 424) = v2;
  *(v0 + 432) = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 400));
  sub_26818EDD8(v1, boxed_opaque_existential_0, type metadata accessor for SnippetFormatter);
  sub_26813CA00(v0 + 1976, v0 + 440);
  sub_26813CA00(v0 + 1896, v0 + 480);
  *(v0 + 544) = v11;
  *(v0 + 584) = 1;
  *(v0 + 616) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 624) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v13 = swift_allocObject();
  *(v0 + 592) = v13;
  sub_26818EE34(v0 + 1808, v13 + 16);
  *(v0 + 656) = &type metadata for NotebookDisambiguationFlowProducer;
  *(v0 + 664) = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v14 = swift_allocObject();
  *(v0 + 632) = v14;
  sub_26813CA00(v0 + 1896, v14 + 16);
  *(v0 + 520) = v31;
  *(v0 + 528) = v38;
  *(v0 + 536) = v4;
  *(v0 + 672) = 0;
  sub_2681828F0(v0 + 400, v0 + 680);
  v15 = swift_allocObject();
  memcpy((v15 + 16), (v0 + 680), 0x118uLL);

  sub_2683CBE98();
  sub_26813CA00(v0 + 1896, v0 + 32);
  *(v0 + 96) = v2;
  *(v0 + 104) = &off_28790D590;
  v16 = __swift_allocate_boxed_opaque_existential_0((v0 + 72));
  sub_26818EDD8(v1, v16, type metadata accessor for SnippetFormatter);
  *(v0 + 136) = &type metadata for NotebookButtonProvider;
  *(v0 + 144) = &off_287902C78;
  OUTLINED_FUNCTION_12_9();
  v17 = swift_allocObject();
  *(v0 + 112) = v17;
  sub_26818EE98(v0 + 1384, v17 + 16);
  *(v0 + 176) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 184) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v18 = swift_allocObject();
  *(v0 + 152) = v18;
  sub_26813CA00(v0 + 2016, v18 + 16);
  sub_26813CA00(v0 + 2016, v0 + 192);
  sub_26813CA00(v0 + 2056, v0 + 240);
  sub_26818EEF4(v0 + 1264, v0 + 280);
  *(v0 + 16) = v31;
  *(v0 + 24) = v38;
  *(v0 + 232) = v11;
  sub_26818EF50();
  sub_2683CBDA8();
  sub_2683CBE48();
  sub_26813CA00(v0 + 1896, v0 + 1120);
  sub_26813CA00(v0 + 1936, v0 + 1160);
  *(v0 + 1224) = &type metadata for NotebookButtonProvider;
  *(v0 + 1232) = &off_287902C78;
  OUTLINED_FUNCTION_12_9();
  v19 = swift_allocObject();
  *(v0 + 1200) = v19;
  sub_26818EE98(v0 + 1384, v19 + 16);
  *(v0 + 1240) = v39;
  *(v0 + 1248) = sub_2681B86A4;
  *(v0 + 1256) = 0;
  v20 = OUTLINED_FUNCTION_18_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  sub_26818A0C8(&qword_28024E340, &qword_28024E338, &qword_2683D6780, &unk_2683E6708);
  sub_2683CBDF8();
  sub_2683CBEA8();
  sub_26813CA00(v0 + 1896, v0 + 960);
  *(v0 + 1024) = &type metadata for NotebookButtonProvider;
  *(v0 + 1032) = &off_287902C78;
  OUTLINED_FUNCTION_12_9();
  v22 = swift_allocObject();
  *(v0 + 1000) = v22;
  sub_26818EE98(v0 + 1384, v22 + 16);
  *(v0 + 1064) = &type metadata for CommonResponseGenerator;
  *(v0 + 1072) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v23 = swift_allocObject();
  *(v0 + 1040) = v23;
  sub_26813CA00(v0 + 1896, v23 + 16);
  *(v0 + 1104) = &type metadata for CommonLabelGenerator;
  *(v0 + 1112) = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E348, &qword_2683D6788);
  sub_26818A0C8(&qword_28024E350, &qword_28024E348, &qword_2683D6788, &unk_2683F8DD0);
  sub_2683CBDC8();
  sub_26812D9E0(v0 + 960, &qword_28024E348, &qword_2683D6788);
  OUTLINED_FUNCTION_18_10();
  sub_2683CBE68();
  sub_26813CA00(v0 + 1896, v0 + 1472);
  *(v0 + 1536) = &type metadata for CommonResponseGenerator;
  *(v0 + 1544) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v24 = swift_allocObject();
  *(v0 + 1512) = v24;
  sub_26813CA00(v0 + 1896, v24 + 16);
  sub_268180318(v0 + 1472, v0 + 1552);
  v25 = swift_allocObject();
  memcpy((v25 + 16), (v0 + 1552), 0x50uLL);
  sub_2683CBE78();

  sub_26818EFAC(v0 + 1632);
  sub_26818F000(v0 + 1384);
  sub_26818F054(v1, type metadata accessor for SnippetFormatter);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2056));
  __swift_destroy_boxed_opaque_existential_0((v0 + 2016));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1976));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1936));
  sub_26818F0AC(v0 + 1472);
  sub_26812D9E0(v0 + 1120, &qword_28024E338, &qword_2683D6780);
  sub_26818F100(v0 + 16);
  sub_26818F154(v0 + 400);
  sub_26818F1A8(v0 + 1808);
  sub_26818F1FC(v0 + 1264);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1896));
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v33 + 16))(v34, v30, v32);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E358, &unk_2683D6790);
  OUTLINED_FUNCTION_42_3(v26);
  sub_2683CBEC8();
  sub_26818F250(v0 + 1696, v0 + 1752);
  sub_26818F2AC();
  OUTLINED_FUNCTION_9_10();

  sub_2683CC2E8();
  sub_2683CC2D8();
  OUTLINED_FUNCTION_9_10();

  (*(v37 + 8))(v35, v36);
  (*(v33 + 8))(v30, v32);
  sub_26818F300(v0 + 1696);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1856));

  v27 = OUTLINED_FUNCTION_1_16();

  return v28(v27);
}

uint64_t objectdestroy_32Tm()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

unint64_t sub_26818ED30()
{
  result = qword_28024E320;
  if (!qword_28024E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E320);
  }

  return result;
}

unint64_t sub_26818ED84()
{
  result = qword_28024E328;
  if (!qword_28024E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E328);
  }

  return result;
}

uint64_t sub_26818EDD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_9_0();
  v5(v4);
  return a2;
}

unint64_t sub_26818EF50()
{
  result = qword_28024E330;
  if (!qword_28024E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E330);
  }

  return result;
}

uint64_t sub_26818F054(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26818F2AC()
{
  result = qword_28024E360;
  if (!qword_28024E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchForNotebookItems.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchForNotebookItems.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26818F4BC()
{
  result = qword_28024E368;
  if (!qword_28024E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E368);
  }

  return result;
}

uint64_t sub_26818F510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_2683CF228();
}

uint64_t OUTLINED_FUNCTION_20_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
}

uint64_t sub_26818F730(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v46 - v4;
  v5 = sub_2683CF168();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v46 - v10;
  sub_2683CF258();
  if (!v12)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v33 = sub_2683CF7E8();
    __swift_project_value_buffer(v33, qword_28027C958);

    v34 = sub_2683CF7C8();
    v35 = sub_2683CFE78();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = a1;
      v56 = v37;
      *v36 = 136315138;
      sub_2683CF278();
      sub_26816EC88();
      v38 = sub_2683D0568();
      v40 = sub_2681610A0(v38, v39, &v56);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2680EB000, v34, v35, "Provided app did not have an app id: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    return 0;
  }

  v46[1] = v1;
  sub_2683CFB38();

  v47 = v11;
  v48 = v6;
  (*(v6 + 32))(v11, v9, v5);
  v13 = sub_2683CC558();
  if (!v13 || (v14 = sub_26818FED8(v13)) == 0)
  {
LABEL_15:
    if (qword_28024C8E0 != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v23 = sub_2683CF7E8();
    __swift_project_value_buffer(v23, qword_28027C958);

    v24 = sub_2683CF7C8();
    v25 = sub_2683CFE78();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v48;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = a1;
      v56 = v29;
      *v28 = 136315138;
      sub_2683CF278();
      sub_26816EC88();
      v30 = sub_2683D0568();
      v32 = sub_2681610A0(v30, v31, &v56);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2680EB000, v24, v25, "Could not create AppInfo for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    (*(v27 + 8))(v47, v5);
    return 0;
  }

  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v50 = v5;
    v46[0] = a1;
    v56 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v5 = sub_26818FF48(v15);
    v18 = v15 + 64;
    v19 = v16 - 1;
    v49 = v15 + 64;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v15 + 32))
      {
        a1 = v5 >> 6;
        if ((*(v18 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v17 != *(v15 + 36))
        {
          goto LABEL_31;
        }

        v52 = v19;
        v53 = v17;
        v54 = *(*(v15 + 56) + 16 * v5);
        sub_2683CF1F8();
        swift_allocObject();

        sub_2683CF1E8();
        v20 = v51;
        sub_2683CFB38();
        v21 = v50;
        __swift_storeEnumTagSinglePayload(v20, 0, 1, v50);
        sub_2683CF1C8();

        sub_26812E924(v20);
        sub_2683CFB38();
        __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
        sub_2683CF1B8();

        sub_26812E924(v20);
        sub_2683CF1D8();

        sub_2683D01F8();
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
        if (v5 >= -(-1 << *(v15 + 32)))
        {
          goto LABEL_32;
        }

        v18 = v49;
        if ((*(v49 + 8 * a1) & (1 << v5)) == 0)
        {
          goto LABEL_33;
        }

        if (v53 != *(v15 + 36))
        {
          goto LABEL_34;
        }

        v22 = sub_2683D0078();
        if (!v52)
        {

          v5 = v50;
          goto LABEL_28;
        }

        v5 = v22;
        v17 = *(v15 + 36);
        v19 = v52 - 1;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_28:
  sub_2683CF118();
  swift_allocObject();
  sub_2683CF108();
  v43 = v47;
  v42 = v48;
  v44 = v51;
  (*(v48 + 16))(v51, v47, v5);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v5);
  sub_2683CF0F8();

  sub_26812E924(v44);
  sub_2683CF0D8();

  v41 = sub_2683CF128();

  (*(v42 + 8))(v43, v5);
  return v41;
}

uint64_t sub_26818FE4C(uint64_t a1, uint64_t a2)
{
  sub_2683CF118();
  swift_allocObject();
  sub_2683CF108();
  sub_2683CF0E8();

  return sub_2683CF128();
}

uint64_t sub_26818FED8(void *a1)
{
  v2 = [a1 appNameMap];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CF9C8();

  return v3;
}

uint64_t sub_26818FF98(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_26_7();
  v4 = sub_2683CF238();
  v5 = OUTLINED_FUNCTION_23(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  sub_2683CCC48();
  type metadata accessor for NotebookCommonCATsSimple(0);
  sub_2683CF228();
  v6 = sub_2683CF198();
  v7 = sub_2683CC548();
  OUTLINED_FUNCTION_42_3(v7);
  v16 = &type metadata for NotebookFeatureManager;
  v17 = &protocol witness table for NotebookFeatureManager;
  v13 = v2;
  v14 = v6;
  v15 = sub_2683CC538();
  v18 = a2 & 1;
  sub_26819320C(v12, v11);

  sub_2683CC868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E3A8, &qword_2683D6978);
  swift_allocObject();
  v11[0] = sub_2681924D4(v11, v10);
  sub_26818A0C8(&qword_28024E3B0, &qword_28024E3A8, &qword_2683D6978, &unk_2683F8F28);
  v8 = sub_2683CBF38();

  sub_268193268(v12);
  return v8;
}

void sub_268190128()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v22 = v2;
  v21 = sub_2683CCBA8();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v9 = OUTLINED_FUNCTION_27_5(v8);
  *(v9 + 16) = xmmword_2683D2250;
  *(v9 + 32) = sub_2681903B0(0);
  v20 = type metadata accessor for RootFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
  v10 = sub_2683CBCE8();
  OUTLINED_FUNCTION_3_1(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2683D2890;
  sub_2683CBCB8();
  v13 = v1[3];
  v12 = v1[4];
  v14 = __swift_project_boxed_opaque_existential_1(v1, v13);
  sub_268348CB0(v14, v13, *(v12 + 8));
  v15 = v21;
  (*(v4 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v21);
  sub_26813CA00(v1, v23);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  sub_268128148(v23, v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *&v23[0] = sub_26817EE64(v11, v9, &unk_2683D6900, v17);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v18, v19, &unk_2683D5B28);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681903B0(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for StringLocalizer(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-1] - v6;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v14);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v8 = qword_28027C938;
  *&v7[*(v2 + 20)] = qword_28027C938;
  sub_268192470(v7, v5);
  v9 = v8;
  v10 = sub_26819251C(v1, v5);
  sub_268193EC0(v7, type metadata accessor for StringLocalizer);
  v14[0] = v10;
  sub_2683CBC18();
  v11 = sub_2683CBF28();

  return v11;
}

uint64_t sub_268190538(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_26818F620;

  return sub_2681E2100();
}

uint64_t sub_268190608(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268190628);
}

uint64_t sub_268190628()
{
  OUTLINED_FUNCTION_14();
  v1 = [objc_allocWithZone(MEMORY[0x277CEF258]) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2681906F0;
  v4 = v0[2];
  v3 = v0[3];

  return sub_268192984(v4, v3, v1);
}

uint64_t sub_2681906F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_16();

  return v6(v5);
}

void sub_2681907EC()
{
  OUTLINED_FUNCTION_30_0();
  v22 = v1;
  v23 = v2;
  v3 = sub_2683CCBA8();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = sub_2683CBCE8();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v14 = OUTLINED_FUNCTION_27_5(v13);
  v21 = xmmword_2683D2250;
  *(v14 + 16) = xmmword_2683D2250;
  sub_2683CBCB8();
  v15 = sub_2683CBC98();
  (*(v11 + 8))(v0, v9);
  *(v14 + 32) = v15;
  v16 = OUTLINED_FUNCTION_27_5(v13);
  *(v16 + 16) = v21;
  *(v16 + 32) = sub_2681903B0(1);
  (*(v5 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v3);
  sub_26813CA00(v23, v24);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_268128148(v24, v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for RootFlow();
  swift_allocObject();
  *&v24[0] = sub_26817DF10(v14, v16, &unk_2683D6970, v18);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v19, v20, &unk_2683D5B28);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268190A7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_268190A9C);
}

uint64_t sub_268190A9C()
{
  OUTLINED_FUNCTION_14();
  sub_2683B429C(*(v0 + 32), *(v0 + 40), (v0 + 16));
  *(v0 + 24) = *(v0 + 16);
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  v1 = OUTLINED_FUNCTION_1_16();

  return v2(v1);
}

void sub_268190B20()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v28 = v3;
  v27 = sub_2683CCBA8();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CBCE8();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D6890;
  sub_2683CBCB8();
  v14 = sub_2683CBC98();
  v15 = *(v11 + 8);
  v15(v0, v9);
  *(v13 + 32) = v14;
  v17 = v2[3];
  v16 = v2[4];
  v18 = __swift_project_boxed_opaque_existential_1(v2, v17);
  sub_268348CB0(v18, v17, *(v16 + 8));
  v19 = sub_2683CBC98();
  v15(v0, v9);
  *(v13 + 40) = v19;
  v21 = v26;
  v20 = v27;
  (*(v5 + 16))(v26, v28, v27);
  sub_26813CA00(v2, v29);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v21, v20);
  sub_268128148(v29, v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for RootFlow();
  swift_allocObject();
  *&v29[0] = sub_26817DF10(v13, MEMORY[0x277D84F90], &unk_2683D6988, v23);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v24, v25, &unk_2683D5B28);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268190DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26818F620;

  return sub_26818AFA4();
}

void sub_268190EB0()
{
  OUTLINED_FUNCTION_30_0();
  v22 = v0;
  v23 = v1;
  v21 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_2683CCBA8();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v14 = OUTLINED_FUNCTION_27_5(v13);
  *(v14 + 16) = xmmword_2683D2250;
  *(v14 + 32) = sub_2681903B0(0);
  type metadata accessor for RootFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
  v15 = sub_2683CBCE8();
  OUTLINED_FUNCTION_3_1(v15);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2683D1EC0;
  sub_2683CBCB8();
  (*(v9 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v7);
  sub_26813CA00(v4, v24);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v22(v24, v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24[0] = sub_26817EE64(v16, v14, v23, v18);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v19, v20, &unk_2683D5B28);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26819110C(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_26818C8B4;

  return sub_26837EED0();
}

void *sub_2681911A8()
{
  OUTLINED_FUNCTION_26_7();
  v1 = sub_2683CF238();
  v2 = OUTLINED_FUNCTION_23(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  sub_2683CC868();
  sub_2683CC078();
  type metadata accessor for NotebookReadingCATs(0);
  sub_2683CF228();
  v3 = sub_2683CF0B8();
  sub_2683CCC48();
  sub_26813CA00(v23, &v19);
  sub_26813CA00(v21, v20);
  v18 = v3;
  v4 = sub_2683CC1B8();
  OUTLINED_FUNCTION_42_3(v4);

  v20[5] = sub_2683CC198();
  sub_26813CA00(v22, v17);
  sub_26813CA00(v22, v16);
  sub_26813CA00(v23, v14);
  sub_26813CA00(v21, v15);
  sub_268193424(v0, v10);
  v5 = sub_2681D9A00();
  v14[5] = v3;
  v15[5] = v5;
  v15[6] = v6;
  v15[7] = v7;
  sub_268193480(v17, v13);
  sub_2681934DC(v16, v12);
  sub_268193538(&v18, v11);
  sub_268193594(v14, v10);
  v8 = sub_2681935F0(v0, v13, v12, v11, v10);
  sub_268193A30(v14);
  sub_268193A84(v16);
  sub_268193AD8(v17);
  v14[0] = v8;
  type metadata accessor for AnnounceRemindersOrchestratorFlow();
  sub_268193B2C(&qword_28024DEE0, type metadata accessor for AnnounceRemindersOrchestratorFlow, &unk_2683D59E0);
  sub_2683CBF28();
  OUTLINED_FUNCTION_38_2();

  sub_268193B74(&v18);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v14;
}

void sub_2681913CC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = sub_2683CF238();
  v3 = OUTLINED_FUNCTION_23(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v4 = sub_2683CB668();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  sub_26812C2A8(v1, &v52, &qword_28024E3C0, &qword_2683D6990);
  if (*(&v53 + 1))
  {
    v11 = 0xD000000000000013;
    sub_268128148(&v52, v63);
    v12 = *__swift_project_boxed_opaque_existential_1(v63, v64);
    v13 = v12 > 0x15;
    v14 = (1 << v12) & 0x2003FE;
    if (v13 || v14 == 0)
    {
      v16 = "reateNote";
    }

    else
    {
      v16 = "reminderListType";
      v11 = 0xD000000000000015;
    }

    sub_2683CCC48();
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    sub_2683CC088();
    v47 = v16 | 0x8000000000000000;
    v61[3] = &type metadata for NotebookReferenceResolver;
    v61[4] = &off_287900140;
    v17 = swift_allocObject();
    v61[0] = v17;
    v18 = sub_2683CF6C8();
    v19 = sub_2683CF6B8();
    v20 = MEMORY[0x277D5FDD8];
    v17[5] = v18;
    v17[6] = v20;
    v17[2] = v19;
    v21 = type metadata accessor for InstalledAppProvider(0);
    v59 = v21;
    v60 = &off_2879042B8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v58);
    v23 = *(v6 + 16);
    v23(boxed_opaque_existential_0 + *(v21 + 20), v10, v4);
    *boxed_opaque_existential_0 = 0;
    v24 = type metadata accessor for RegexAppSearcher(0);
    v55[3] = v24;
    v55[4] = &off_28790BB20;
    v25 = __swift_allocate_boxed_opaque_existential_0(v55);
    sub_26813CA00(&v58, v25);
    v23(v25 + *(v24 + 20), v10, v4);
    v55[8] = &type metadata for InferredAppResolver;
    v55[9] = &off_287902D60;
    OUTLINED_FUNCTION_14_10();
    v26 = swift_allocObject();
    v55[5] = v26;
    sub_26813CA00(&v58, v26 + 32);
    sub_26812C2A8(v61, v26 + 72, &qword_28024E2C8, &unk_2683D6950);
    *(v26 + 16) = v11;
    *(v26 + 24) = v47;
    sub_26813CA00(&v58, &v52);
    (*(v6 + 8))(v10, v4);
    sub_2681433DC(v61, &qword_28024E2C8, &unk_2683D6950);
    __swift_destroy_boxed_opaque_existential_0(&v58);
    v55[10] = 0;
    __swift_destroy_boxed_opaque_existential_0(v62);
    v27 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v62[0] = sub_26812A20C(*v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E3C8, &qword_2683D69A8);
    v28 = sub_2683CFAD8();
    v30 = sub_26835C42C(0, 1, 0, 0, v28, v29);

    if (*(v30 + 16))
    {
      v31 = *(v30 + 32);

      sub_26813CA00(v63, v62);
      sub_2683CCC48();
      type metadata accessor for NotebookCommonCATsSimple(0);
      sub_2683CF228();
      v32 = sub_2683CF198();
      sub_2683CC868();
      sub_26813CA00(&v58, v56);
      sub_26813CA00(v61, &v51);
      sub_26812C2A8(v62, &v48, &qword_28024E3C0, &qword_2683D6990);
      OUTLINED_FUNCTION_14_10();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      sub_268128148(&v51, v33 + 24);
      v34 = v49;
      *(v33 + 64) = v48;
      *(v33 + 80) = v34;
      *(v33 + 96) = v50;
      *(v33 + 104) = v31;
      v35 = sub_2683CB948();
      OUTLINED_FUNCTION_42_3(v35);

      v36 = sub_2683CB938();
      __swift_destroy_boxed_opaque_existential_0(&v58);
      __swift_destroy_boxed_opaque_existential_0(v61);
      sub_2681433DC(v62, &qword_28024E3C0, &qword_2683D6990);
      v62[0] = v36;
      sub_2683CBF28();
    }

    else
    {

      sub_26813CA00(v63, v62);
      sub_2683CCC48();
      type metadata accessor for NotebookCommonCATsSimple(0);
      sub_2683CF228();
      v42 = sub_2683CF198();
      sub_2683CC868();
      sub_26813CA00(&v58, v56);
      sub_26813CA00(v61, &v51);
      sub_26812C2A8(v62, &v48, &qword_28024E3C0, &qword_2683D6990);
      OUTLINED_FUNCTION_14_10();
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      sub_268128148(&v51, v43 + 24);
      v44 = v49;
      *(v43 + 64) = v48;
      *(v43 + 80) = v44;
      *(v43 + 96) = v50;
      *(v43 + 104) = 0;
      v45 = sub_2683CB948();
      OUTLINED_FUNCTION_42_3(v45);
      v46 = sub_2683CB938();
      __swift_destroy_boxed_opaque_existential_0(&v58);
      __swift_destroy_boxed_opaque_existential_0(v61);
      sub_2681433DC(v62, &qword_28024E3C0, &qword_2683D6990);
      v62[0] = v46;
      sub_2683CBF28();
    }

    sub_26818DAF4(&v52);
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    sub_2681433DC(&v52, &qword_28024E3C0, &qword_2683D6990);
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    sub_2683CCC48();
    type metadata accessor for NotebookCommonCATsSimple(0);
    sub_2683CF228();
    v37 = sub_2683CF198();
    sub_2683CC868();
    sub_26813CA00(v62, v61);
    sub_26813CA00(v63, &v58);
    sub_26812C2A8(&v52, v56, &qword_28024E3C0, &qword_2683D6990);
    OUTLINED_FUNCTION_14_10();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    sub_268128148(&v58, v38 + 24);
    v39 = v56[1];
    *(v38 + 64) = v56[0];
    *(v38 + 80) = v39;
    *(v38 + 96) = v57;
    *(v38 + 104) = 0;
    v40 = sub_2683CB948();
    OUTLINED_FUNCTION_42_3(v40);
    v41 = sub_2683CB938();
    __swift_destroy_boxed_opaque_existential_0(v62);
    __swift_destroy_boxed_opaque_existential_0(v63);
    sub_2681433DC(&v52, &qword_28024E3C0, &qword_2683D6990);
    *&v52 = v41;
    sub_2683CBF28();
    OUTLINED_FUNCTION_38_2();
  }

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
}

void sub_268191B5C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_26_7();
  v1 = sub_2683CF238();
  v2 = OUTLINED_FUNCTION_23(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  sub_2683CCC48();
  type metadata accessor for NotebookCommonCATs(0);
  sub_2683CF228();
  v3 = sub_2683CF0B8();
  sub_2683CCC48();
  type metadata accessor for NotebookLabelsV2CATs(0);
  sub_2683CF228();
  v4 = sub_2683CF0B8();
  v20[9] = &type metadata for TCCTemplateProvider;
  v20[10] = &off_287902CB8;
  v20[5] = v4;
  sub_2683CC868();
  sub_26813CA00(v21, v18);
  v5 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v18[5] = v3;
  v18[6] = v5;
  v17 = v0;
  v16[3] = &type metadata for DefaultUndoIntentStrategy;
  v16[4] = &off_2879039F0;
  v16[0] = swift_allocObject();
  sub_268191E3C(&v17, v16[0] + 16);
  type metadata accessor for UndoAndSendOutputFlow();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, &type metadata for DefaultUndoIntentStrategy);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v6[6] = &type metadata for DefaultUndoIntentStrategy;
  v6[7] = &off_2879039F0;
  v12 = swift_allocObject();
  v13 = v10[1];
  v12[1] = *v10;
  v12[2] = v13;
  v14 = v10[3];
  v12[3] = v10[2];
  v12[4] = v14;
  v6[2] = v0;
  v6[3] = v12;
  swift_bridgeObjectRetain_n();

  __swift_destroy_boxed_opaque_existential_0(v16);
  v16[0] = v6;
  sub_268193B2C(&qword_28024E378, type metadata accessor for UndoAndSendOutputFlow, &unk_2683DEA70);
  v15 = sub_2683CBF28();

  sub_268191EE8(&v17);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);

  sub_26818F000(v20);
  v20[0] = v15;
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_38_2();

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
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

uint64_t sub_268191F3C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_9_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_13(v2);

  return sub_268190538(v4, v5);
}

uint64_t sub_268192014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_2683CB668();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for DefaultUnsupportedIntentStrategy(0);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26819210C);
}

uint64_t sub_26819210C()
{
  v1 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  OUTLINED_FUNCTION_38_2();
  sub_2683CC088();
  v2 = sub_2683CC548();
  OUTLINED_FUNCTION_42_3(v2);
  v3 = sub_2683CC538();
  sub_26812C2A8(v1, v0 + 16, &qword_28024E3C0, &qword_2683D6990);
  v4 = *(v0 + 40);
  if (v4)
  {
    v5 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_2681433DC(v0 + 16, &qword_28024E3C0, &qword_2683D6990);
    v5 = 22;
  }

  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 96);
  *v6 = *(v0 + 64);
  (*(v9 + 32))(&v6[v7[5]], v8, v10);
  *&v6[v7[6]] = v3;
  v6[v7[7]] = v5;

  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_268192294;

  return sub_2683BA558();
}

uint64_t sub_268192294()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_268192404;
  }

  else
  {
    v5 = sub_268192398;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_268192398()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268192404()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268192470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringLocalizer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681924D4(void *__src, __int128 *a2)
{
  *(v2 + 16) = 1;
  memcpy((v2 + 24), __src, 0x69uLL);
  sub_268128148(a2, v2 + 136);
  return v2;
}

uint64_t sub_26819251C(char a1, uint64_t a2)
{
  sub_2683CBC18();
  v4 = OUTLINED_FUNCTION_26_7();
  v10[3] = type metadata accessor for StringLocalizer(v4);
  v10[4] = &off_2878FE958;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  sub_2681925E4(a2, boxed_opaque_existential_0);
  sub_26813CA00(v10, v9);
  v6 = swift_allocObject();
  sub_268128148(v9, v6 + 16);
  *(v6 + 56) = a1;
  v7 = sub_2683CBC08();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

uint64_t sub_2681925E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringLocalizer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268192648()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *v3 = v4;
  v3[1] = sub_2681926D8;

  return sub_268388ADC(v0 + 16, v1);
}

uint64_t sub_2681926D8()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_2681927D4()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_9_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_13(v2);

  return sub_26819110C(v4, v5);
}

uint64_t sub_2681928AC()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_9_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_13(v2);

  return sub_268190608(v4, v5);
}

uint64_t sub_268192984(uint64_t a1, uint64_t a2, void *a3)
{
  v3[96] = a2;
  v3[95] = a1;
  v5 = sub_2683CB668();
  v3[97] = v5;
  v3[98] = *(v5 - 8);
  v3[99] = swift_task_alloc();
  v6 = sub_2683CCBA8();
  v3[100] = v6;
  v3[101] = *(v6 - 8);
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[51] = sub_268129504(0, &qword_28024E388, 0x277CEF258);
  v3[52] = &off_287901A10;
  v3[48] = a3;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_268192AE4);
}

uint64_t sub_268192AE4()
{
  v1 = *(v0 + 768);
  v36 = *(*(v0 + 808) + 16);
  v36(*(v0 + 824), *(v0 + 760), *(v0 + 800));
  sub_26813CA00(v1, v0 + 424);
  sub_26813CA00(v0 + 384, v0 + 464);
  v2 = swift_allocObject();
  sub_268128148((v0 + 424), v2 + 16);
  v35 = v2;
  sub_268128148((v0 + 464), v2 + 56);
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);
  *(v0 + 528) = v3;
  *(v0 + 536) = *(v4 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 504));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v5, v3);
  *(v0 + 744) = sub_268129504(0, &qword_28024D5B8, 0x277CD4160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E390, &unk_2683D6940);
  v7 = sub_2683CFAD8();
  v33 = v8;
  v34 = v7;
  v9 = sub_2683CF6C8();
  v10 = sub_2683CF6B8();
  *(v0 + 568) = v9;
  *(v0 + 576) = MEMORY[0x277D5FDD8];
  *(v0 + 544) = v10;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_26812C2A8(v0 + 544, v0 + 664, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 688))
  {
    v11 = swift_allocObject();
    v12 = *(v0 + 680);
    *(v11 + 16) = *(v0 + 664);
    *(v11 + 32) = v12;
    *(v11 + 48) = *(v0 + 696);
    v13 = &off_287900140;
    v14 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_2681433DC(v0 + 664, &qword_28024E2C0, &unk_2683D66D0);
    v11 = 0;
    v14 = 0;
    v13 = 0;
    *(v0 + 632) = 0u;
  }

  v31 = *(v0 + 816);
  v32 = *(v0 + 824);
  v15 = *(v0 + 808);
  v30 = *(v0 + 800);
  v16 = *(v0 + 792);
  v17 = *(v0 + 784);
  v18 = *(v0 + 776);
  *(v0 + 624) = v11;
  *(v0 + 648) = v14;
  *(v0 + 656) = v13;
  v19 = type metadata accessor for InstalledAppProvider(0);
  *(v0 + 728) = v19;
  *(v0 + 736) = &off_2879042B8;
  v20 = __swift_allocate_boxed_opaque_existential_0((v0 + 704));
  v21 = *(v17 + 16);
  v21(v20 + *(v19 + 20), v16, v18);
  *v20 = 0;
  v22 = type metadata accessor for RegexAppSearcher(0);
  *(v0 + 80) = v22;
  *(v0 + 88) = &off_28790BB20;
  v23 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 704, v23);
  v21(v23 + *(v22 + 20), v16, v18);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  OUTLINED_FUNCTION_14_10();
  v24 = swift_allocObject();
  *(v0 + 96) = v24;
  sub_26813CA00(v0 + 704, v24 + 32);
  sub_26812C2A8(v0 + 624, v24 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v24 + 16) = 0xD000000000000013;
  *(v24 + 24) = 0x80000002683FA8D0;
  (*(v17 + 8))(v16, v18);
  sub_26813CA00(v0 + 704, v0 + 16);
  sub_2681433DC(v0 + 624, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 704));
  *(v0 + 136) = 0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v25 = swift_allocObject();
  *(v0 + 144) = v25;
  sub_26818CE54(v0 + 16, v25 + 16);
  sub_26812C2A8(v0 + 504, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v34;
  *(v0 + 192) = v33;
  *(v0 + 200) = 1;
  *(v0 + 208) = &unk_2683DCA78;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v36(v31, v32, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E398, &qword_2683D6960);
  swift_allocObject();
  v26 = sub_2681E516C((v0 + 264), v31, &unk_2683D6938, v35);
  (*(v15 + 8))(v32, v30);
  sub_2681433DC(v0 + 504, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_2681433DC(v0 + 544, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 752) = v26;
  sub_26818A0C8(&qword_28024E3A0, &qword_28024E398, &qword_2683D6960, &unk_2683FA170);
  sub_2683CBF28();

  __swift_destroy_boxed_opaque_existential_0((v0 + 384));

  v27 = OUTLINED_FUNCTION_1_16();

  return v28(v27);
}

uint64_t sub_26819309C()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26818F620;

  return sub_268201460();
}

uint64_t sub_268193134()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_9_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_13(v2);

  return sub_268190A7C(v4, v5);
}

uint64_t objectdestroy_11Tm()
{
  sub_2683CCBA8();
  OUTLINED_FUNCTION_0_9();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_26819334C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_9_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_13(v2);

  return sub_268190DE0();
}

uint64_t sub_2681935F0(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v44[3] = &type metadata for AnnounceReminderProvider;
  v44[4] = &off_28790C0C8;
  v10 = swift_allocObject();
  v44[0] = v10;
  v11 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a2 + 32);
  v43[3] = &type metadata for NotificationProvider;
  v43[4] = &off_28790E260;
  v12 = swift_allocObject();
  v43[0] = v12;
  v13 = *(a3 + 16);
  *(v12 + 16) = *a3;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a3 + 32);
  v42[3] = &type metadata for AnnounceReminderFlowProvider;
  v42[4] = &off_2878FEFD8;
  v42[0] = swift_allocObject();
  memcpy((v42[0] + 16), a4, 0x60uLL);
  v40 = &type metadata for AnnounceFollowUpHintFlow;
  v41 = sub_268193BC8();
  *&v39 = swift_allocObject();
  memcpy((v39 + 16), a5, 0x70uLL);
  type metadata accessor for AnnounceRemindersOrchestratorFlow();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v44, &type metadata for AnnounceReminderProvider);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v43, &type metadata for NotificationProvider);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v42, &type metadata for AnnounceReminderFlowProvider);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  *(v14 + 40) = &type metadata for AnnounceReminderProvider;
  *(v14 + 48) = &off_28790C0C8;
  v27 = swift_allocObject();
  *(v14 + 16) = v27;
  v28 = *(v17 + 1);
  *(v27 + 16) = *v17;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v17 + 4);
  *(v14 + 80) = &type metadata for NotificationProvider;
  *(v14 + 88) = &off_28790E260;
  v29 = swift_allocObject();
  *(v14 + 56) = v29;
  v30 = *(v21 + 1);
  *(v29 + 16) = *v21;
  *(v29 + 32) = v30;
  *(v29 + 48) = *(v21 + 4);
  *(v14 + 120) = &type metadata for AnnounceReminderFlowProvider;
  *(v14 + 128) = &off_2878FEFD8;
  v31 = swift_allocObject();
  *(v14 + 96) = v31;
  memcpy((v31 + 16), v25, 0x60uLL);
  v32 = MEMORY[0x277D84F90];
  *(v14 + 216) = MEMORY[0x277D84FA0];
  *(v14 + 224) = v32;
  *(v14 + 240) = 0;
  sub_268128148(&v39, v14 + 136);
  v33 = a1[3];
  *(v14 + 232) = a1[2];
  *(v14 + 248) = a1[6];
  v34 = a1[4];
  v36 = *a1;
  v35 = a1[1];

  sub_268193C1C(a1);
  *(v14 + 176) = v33;
  *(v14 + 184) = v34;
  *(v14 + 192) = v36;
  *(v14 + 200) = v35;
  *(v14 + 208) = 0;
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  return v14;
}

uint64_t sub_268193B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_268193BC8()
{
  result = qword_28024E3B8;
  if (!qword_28024E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E3B8);
  }

  return result;
}

uint64_t sub_268193C70()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_13(v1);

  return sub_268192014(v3, v4, v5, v6, v7);
}

uint64_t sub_268193CFC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_13(v1);

  return sub_268192014(v3, v4, v5, v6, v7);
}

uint64_t sub_268193D88()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t objectdestroy_67Tm()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  }

  OUTLINED_FUNCTION_14_10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268193EC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_4()
{
  v2 = *(v0 + 128);

  return sub_268193EC0(v2, type metadata accessor for DefaultUnsupportedIntentStrategy);
}

uint64_t OUTLINED_FUNCTION_27_5(uint64_t a1)
{

  return swift_allocObject();
}

void sub_26819402C()
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C958);

  oslog = sub_2683CF7C8();
  v1 = sub_2683CFE68();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = sub_2681955F8();
    v6 = sub_2681610A0(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_2680EB000, oslog, v1, "[SFNI.RchThenReadFlow] transitioned to state %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x26D617A40](v3, -1, -1);
    MEMORY[0x26D617A40](v2, -1, -1);
  }
}

void sub_268194194(void *a1, void *a2, void *a3)
{
  v7 = v3[10];
  v8 = v3[11];
  v9 = v3[12];
  v3[10] = a1;
  v3[11] = a2;
  v3[12] = a3;
  sub_268195C90(a1, a2, a3);
  sub_268195CE4(v7, v8, v9);
  sub_26819402C();

  sub_268195CE4(a1, a2, a3);
}

void *sub_268194218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  v8[11] = 0;
  v8[12] = 0;
  v8[10] = 0;
  return v8;
}

uint64_t sub_268194238(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268194260(uint64_t a1)
{
  v30 = v1;
  v2 = v1[6];
  v3 = v2[10];
  v1[7] = v3;
  switch(v3)
  {
    case 0:
LABEL_11:
      OUTLINED_FUNCTION_1_17();
      v19 = swift_task_alloc();
      v1[12] = v19;
      *v19 = v1;
      v20 = sub_2681948A4;
      goto LABEL_12;
    case 1:
    case 3:
LABEL_2:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v4 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v4, qword_28027C958);

      v5 = sub_2683CF7C8();
      v6 = sub_2683CFE88();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v28[0] = v8;
        *v7 = 136315138;
        v9 = sub_2681955F8();
        v11 = sub_2681610A0(v9, v10, v28);

        *(v7 + 4) = v11;
        OUTLINED_FUNCTION_29();
        _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_7;
    case 2:
      while (2)
      {
        OUTLINED_FUNCTION_1_17();
        v19 = swift_task_alloc();
        v1[16] = v19;
        *v19 = v1;
        v20 = sub_268194E00;
LABEL_12:
        v19[1] = v20;
        v1 = v19;
        v3 = v29;
        v2 = v28[2];

        switch(v29)
        {
          case 0:
            goto LABEL_11;
          case 1:
          case 3:
            goto LABEL_2;
          case 2:
            continue;
          case 4:
            goto LABEL_7;
          default:
            goto LABEL_15;
        }
      }

    case 4:
LABEL_7:
      sub_2683CC3F8();
      OUTLINED_FUNCTION_40();

      result = v17();
      break;
    default:
LABEL_15:
      v21 = v2[12];
      v1[8] = v21;
      v22 = v2[11];
      v1[9] = v22;
      v23 = v2[8];

      v24 = v22;
      v25 = v21;
      v27 = (v23 + *v23);
      v26 = swift_task_alloc();
      v1[10] = v26;
      *v26 = v1;
      v26[1] = sub_268194610;

      result = v27(v3, v24, v25);
      break;
  }

  return result;
}

uint64_t sub_268194610()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681946F8()
{
  if (v0[11])
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v1 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v1, qword_28027C958);
    v2 = sub_2683CF7C8();
    v3 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v3))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_13_10(&dword_2680EB000, v4, v5, "[SFNI.RchThenReadFlow] exiting flow by pushing reading flow");
      OUTLINED_FUNCTION_38();
    }

    v7 = v0[8];
    v6 = v0[9];

    sub_2683CC3E8();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v8, qword_28027C958);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v10))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_38();
    }

    v7 = v0[8];
    v6 = v0[9];

    sub_2683CC3F8();
  }

  OUTLINED_FUNCTION_40();

  return v16();
}

uint64_t sub_2681948A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26819498C()
{
  OUTLINED_FUNCTION_14();
  v3 = (*(*(v0 + 48) + 32) + **(*(v0 + 48) + 32));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_268194A74;

  return v3();
}

uint64_t sub_268194A74()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_268194B5C()
{
  v1 = v0[15];
  v2 = v0[13];
  type metadata accessor for EachFlow();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  sub_268195C10(&qword_28024DF00, 255, type metadata accessor for EachFlow, &unk_2683D8CC0);
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80, MEMORY[0x277D5B820]);
  v4 = sub_2683CBF68();

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v5 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v5, qword_28027C958);
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v7))
  {
    *OUTLINED_FUNCTION_21_5() = 0;
    OUTLINED_FUNCTION_13_10(&dword_2680EB000, v8, v9, "[SFNI.RchThenReadFlow] Pushing preRchFlows guarded by an authentication flow");
    OUTLINED_FUNCTION_38();
  }

  v10 = v0[6];

  OUTLINED_FUNCTION_24();
  sub_268194194(v11, v12, v13);
  v0[4] = v4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_268195C58;
  *(v14 + 24) = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF08, &unk_2683D6750);
  sub_26818A0C8(&qword_28024DF10, &qword_28024DF08, &unk_2683D6750, MEMORY[0x277D5B380]);
  sub_2683CC398();

  OUTLINED_FUNCTION_40();

  return v15();
}

uint64_t sub_268194E00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_268194EE8()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v0 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v0, qword_28027C958);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v2))
  {
    *OUTLINED_FUNCTION_21_5() = 0;
    OUTLINED_FUNCTION_29();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_24();
  sub_268194194(v8, v9, v10);

  sub_2683CC3A8();

  OUTLINED_FUNCTION_40();

  return v11();
}

void sub_268195040(char a1)
{
  if (a1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v1 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v1, qword_28027C958);
    v2 = sub_2683CF7C8();
    v3 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v3))
    {
      v4 = OUTLINED_FUNCTION_21_5();
      *v4 = 0;
      _os_log_impl(&dword_2680EB000, v2, v3, "[SFNI.RchThenReadFlow] Auth guard flow failed exiting flow without pushing rch flow", v4, 2u);
LABEL_10:
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v5, qword_28027C958);
    v2 = sub_2683CF7C8();
    v6 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v6))
    {
      v7 = OUTLINED_FUNCTION_21_5();
      *v7 = 0;
      _os_log_impl(&dword_2680EB000, v2, v6, "[SFNI.RchThenReadFlow] Successfully passed auth flow and executed preRchFlows", v7, 2u);
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_24();

  sub_268194194(v8, v9, v10);
}

void sub_268195198(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E3D0, &qword_2683D6AE8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = *(v5 + 16);
  v14(&v39 - v12, a1, v4);
  if ((*(v5 + 88))(v13, v4) == *MEMORY[0x277D5BCA0])
  {
    (*(v5 + 96))(v13, v4);
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v18 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v18, qword_28027C958);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v20))
    {
      v21 = OUTLINED_FUNCTION_21_5();
      *v21 = 0;
      _os_log_impl(&dword_2680EB000, v19, v20, "[SFNI.RchThenReadFlow] RCHFlow executed successfully", v21, 2u);
      OUTLINED_FUNCTION_38();
    }

    v22 = v16;
    v23 = v17;
    sub_268194194(v15, v16, v17);
  }

  else
  {
    v24 = *(v5 + 8);
    v24(v13, v4);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v25 = sub_2683CF7E8();
    __swift_project_value_buffer(v25, qword_28027C958);
    v14(v11, a1, v4);
    v26 = sub_2683CF7C8();
    v27 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v27))
    {
      v28 = swift_slowAlloc();
      v40 = v24;
      v29 = v28;
      v30 = swift_slowAlloc();
      v41 = v2;
      v42 = v30;
      v31 = v30;
      *v29 = 136446210;
      v14(v8, v11, v4);
      v32 = sub_2683CFAD8();
      v34 = v33;
      v40(v11, v4);
      v35 = sub_2681610A0(v32, v34, &v42);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2680EB000, v26, v27, "[SFNI.RchThenReadFlow] RCHFlow did not exit with complete value, exiting flow without pushing reading flow\nRCHFlow ExitValue: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      v24(v11, v4);
    }

    OUTLINED_FUNCTION_24();
    sub_268194194(v36, v37, v38);
  }
}

uint64_t sub_26819556C(uint64_t a1, uint64_t a2)
{
  _s15RchThenReadFlowCMa();
  sub_268195C10(&qword_28024E2F0, v2, _s15RchThenReadFlowCMa, &unk_2683D6A90);
  return sub_2683CBF48();
}

void *sub_2681956E4()
{

  sub_268195CE4(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t sub_268195728()
{
  sub_2681956E4();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook09SearchForB5ItemsO15RchThenReadFlowC5State33_A5C4C06F7EEC6A6AB38EAABC083E5E2ELLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2681957AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 24))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268195804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_268195858(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_268195888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_268195938;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268195938()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_268195A50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268195AEC;

  return sub_268194238(a1);
}

uint64_t sub_268195AEC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268195BD4(uint64_t a1, uint64_t a2)
{
  _s15RchThenReadFlowCMa();

  return sub_2683CBF88();
}

uint64_t sub_268195C10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_268195C90(id result, void *a2, void *a3)
{
  if (result >= 5)
  {

    v5 = a2;

    return a3;
  }

  return result;
}

void sub_268195CE4(unint64_t a1, void *a2, void *a3)
{
  if (a1 >= 5)
  {
  }
}

void OUTLINED_FUNCTION_13_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for NotebookLabelsV2CATs(uint64_t a1)
{
  result = qword_28024E3D8;
  if (!qword_28024E3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268195E28()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_268195ED4()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268195F80;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_268195F80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_268196074(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_268196098);
}

uint64_t sub_268196098()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2683CF138();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2681961E0;
  v5 = v0[2];

  return v7(v5, 0xD000000000000022, 0x80000002683FDF10, v2);
}

uint64_t sub_2681961E0()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26819631C);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26819631C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268196380()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819642C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_2681964D8()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_2681965D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_268163208(a1);
  return v11;
}

void sub_26819675C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a1)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
LABEL_16:
    *(a3 + 3) = 0;
    v16 = *(type metadata accessor for SetTaskAttributeIntentModelNLv4(0) + 32);
    v17 = sub_2683CB668();
    v18 = *(v17 - 8);
    (*(v18 + 16))(&a3[v16], a2, v17);
    if (a1)
    {
LABEL_17:

      OUTLINED_FUNCTION_3_12();
      sub_2683CDE98();

      if (v23)
      {
        v19 = sub_2683CD4E8();

        sub_2683CB668();
        OUTLINED_FUNCTION_1();
        (*(v20 + 8))(a2);
LABEL_22:
        *&a3[*(type metadata accessor for SetTaskAttributeIntentModelNLv4(0) + 36)] = v19;
        return;
      }

      sub_2683CB668();
      OUTLINED_FUNCTION_1();
      (*(v21 + 8))(a2);
    }

    else
    {
      (*(v18 + 8))(a2, v17);
    }

    v19 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_3_12();
  sub_2683CDE98();

  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = v23;

  v9 = sub_2683CDE88();

  if (!v9)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  v10 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  sub_2683ABE58();
  OUTLINED_FUNCTION_5_12();
  while (1)
  {
    if (a2 == v3)
    {

      *(a3 + 3) = v10;
      v14 = *(type metadata accessor for SetTaskAttributeIntentModelNLv4(0) + 32);
      sub_2683CB668();
      OUTLINED_FUNCTION_1();
      (*(v15 + 16))(&a3[v14], a2);
      goto LABEL_17;
    }

    if (v5)
    {
      MEMORY[0x26D616C90](v3, v9);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_24;
      }
    }

    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v3;
    if (v22)
    {
      MEMORY[0x26D616770](v12);
      OUTLINED_FUNCTION_8_11();
      if (v13)
      {
        OUTLINED_FUNCTION_4_14();
      }

      sub_2683CFD08();
      v10 = v23;
      v3 = v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_268196A78(uint64_t a2@<X1>, char *a3@<X8>)
{

  sub_2683CDDE8();
  *a3 = v19;
  OUTLINED_FUNCTION_3_12();
  sub_2683CDDD8();
  v7 = v19;
  *(a3 + 1) = v19;
  if (!v19)
  {
    v9 = 0;
    *(a3 + 2) = 0;
LABEL_17:
    *(a3 + 3) = v9;
    v13 = type metadata accessor for SetTaskAttributeIntentModelNLv4(0);
    v14 = *(v13 + 32);
    v15 = sub_2683CB668();
    v16 = *(v15 - 8);
    (*(v16 + 16))(&a3[v14], a2, v15);
    OUTLINED_FUNCTION_3_12();
    sub_2683CDDE8();

    if (!v19 || (v17 = sub_2683CD4E8(), , !v17))
    {
      OUTLINED_FUNCTION_3_12();
      sub_2683CDDD8();
      if (!v19)
      {

        v17 = 0;
        goto LABEL_23;
      }

      v17 = sub_2683CD4E8();
    }

LABEL_23:
    (*(v16 + 8))(a2, v15);
    *&a3[*(v13 + 36)] = v17;
    return;
  }

  *(a3 + 2) = sub_2683CD7C8();
  v8 = sub_2683CD7D8();

  if (!v8)
  {
    v9 = 0;
    goto LABEL_17;
  }

  swift_getKeyPath();
  v9 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  sub_2683ABE58();
  OUTLINED_FUNCTION_5_12();
  while (1)
  {
    if (v4 == v7)
    {

      goto LABEL_17;
    }

    if (a2)
    {
      MEMORY[0x26D616C90](v7, v8);
    }

    else
    {
      if (v7 >= *(v3 + 16))
      {
        goto LABEL_25;
      }
    }

    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v7;
    if (v18)
    {
      MEMORY[0x26D616770](v11);
      OUTLINED_FUNCTION_8_11();
      if (v12)
      {
        OUTLINED_FUNCTION_4_14();
      }

      sub_2683CFD08();
      v9 = v19;
      v7 = v10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t type metadata accessor for SetTaskAttributeIntentModelNLv4(uint64_t a1)
{
  result = qword_28024E3E8;
  if (!qword_28024E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_268196D68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_19_3();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  if (!*v0)
  {
    return 0;
  }

  v9 = sub_2683CD7B8();
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v13 = type metadata accessor for SetTaskAttributeIntentModelNLv4(0);
  sub_268129D44(v1 + *(v13 + 32), v11, v12);

  v14 = sub_26835E5F8();
  v15 = sub_2683CB0D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  return sub_26835E66C(v14, 0, 0, 0, 0, v8, v5, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_268196F0C()
{
  v1 = *(v0 + 24);
  if (sub_2683970D4(0, v1))
  {
    return 2;
  }

  if (sub_2683970D4(1, v1))
  {
    return 2;
  }

  return 0;
}

uint64_t sub_268196F5C()
{
  v1 = sub_2683CD928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v57 = &v54[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC60, &qword_2683D4660);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v63 = v6 - v7;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v54[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC68, &qword_2683D4668);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_19_3();
  v62 = v12 - v13;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v14);
  v60 = &v54[-v15];
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v16);
  v61 = &v54[-v17];
  OUTLINED_FUNCTION_8_0();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v54[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v54[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v54[-v25];
  v58 = *v0;
  if (v58 && sub_2683CD4D8())
  {
    sub_2683CD918();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v1);
  }

  v30 = *MEMORY[0x277D5EA28];
  v64 = v2;
  v31 = *(v2 + 104);
  v31(v24, v30, v1);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v1);
  v59 = v4;
  v32 = *(v4 + 48);
  sub_26816284C(v26, v10);
  sub_26816284C(v24, &v10[v32]);
  OUTLINED_FUNCTION_2_6(v10);
  if (v34)
  {
    sub_26812D9E0(v24, &qword_28024DC68, &qword_2683D4668);
    sub_26812D9E0(v26, &qword_28024DC68, &qword_2683D4668);
    OUTLINED_FUNCTION_2_6(&v10[v32]);
    if (v34)
    {
      v33 = v10;
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  sub_26816284C(v10, v21);
  OUTLINED_FUNCTION_2_6(&v10[v32]);
  if (v34)
  {
    sub_26812D9E0(v24, &qword_28024DC68, &qword_2683D4668);
    sub_26812D9E0(v26, &qword_28024DC68, &qword_2683D4668);
    (*(v64 + 8))(v21, v1);
LABEL_13:
    sub_26812D9E0(v10, &qword_28024DC60, &qword_2683D4660);
    goto LABEL_14;
  }

  v56 = v31;
  v44 = v57;
  v45 = v64;
  (*(v64 + 32))(v57, &v10[v32], v1);
  sub_2681628BC();
  v55 = sub_2683CFA58();
  v46 = v44;
  v31 = v56;
  v47 = *(v45 + 8);
  v47(v46, v1);
  sub_26812D9E0(v24, &qword_28024DC68, &qword_2683D4668);
  sub_26812D9E0(v26, &qword_28024DC68, &qword_2683D4668);
  v47(v21, v1);
  sub_26812D9E0(v10, &qword_28024DC68, &qword_2683D4668);
  if (v55)
  {
    goto LABEL_29;
  }

LABEL_14:
  if (v58 && sub_2683CD4D8())
  {
    v35 = v61;
    sub_2683CD918();
  }

  else
  {
    v35 = v61;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v1);
  }

  v39 = v63;
  v40 = v59;
  v41 = v60;
  v31(v60, *MEMORY[0x277D5EA58], v1);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v1);
  v42 = *(v40 + 48);
  sub_26816284C(v35, v39);
  sub_26816284C(v41, v39 + v42);
  OUTLINED_FUNCTION_2_6(v39);
  if (v34)
  {
    OUTLINED_FUNCTION_9_12(v41);
    OUTLINED_FUNCTION_9_12(v35);
    OUTLINED_FUNCTION_2_6(v39 + v42);
    if (!v34)
    {
      goto LABEL_27;
    }

    v33 = v39;
LABEL_23:
    sub_26812D9E0(v33, &qword_28024DC68, &qword_2683D4668);
LABEL_29:
    v51 = 1;
    return v51 & 1;
  }

  sub_26816284C(v39, v62);
  OUTLINED_FUNCTION_2_6(v39 + v42);
  if (v43)
  {
    OUTLINED_FUNCTION_9_12(v41);
    OUTLINED_FUNCTION_9_12(v35);
    (*(v64 + 8))(v62, v1);
LABEL_27:
    sub_26812D9E0(v39, &qword_28024DC60, &qword_2683D4660);
    v51 = 0;
    return v51 & 1;
  }

  v48 = v57;
  v49 = v64;
  (*(v64 + 32))(v57, v39 + v42, v1);
  sub_2681628BC();
  v50 = v62;
  v51 = sub_2683CFA58();
  v52 = *(v49 + 8);
  v52(v48, v1);
  sub_26812D9E0(v41, &qword_28024DC68, &qword_2683D4668);
  sub_26812D9E0(v35, &qword_28024DC68, &qword_2683D4668);
  v52(v50, v1);
  sub_26812D9E0(v39, &qword_28024DC68, &qword_2683D4668);
  return v51 & 1;
}

void sub_2681975FC(uint64_t a1)
{
  sub_268197780(319, &qword_28024E3F8, MEMORY[0x277D5E918]);
  if (v1 <= 0x3F)
  {
    sub_268197780(319, &qword_28024E400, MEMORY[0x277D5EB38]);
    if (v2 <= 0x3F)
    {
      sub_26819771C(319);
      if (v3 <= 0x3F)
      {
        sub_2683CB668();
        if (v4 <= 0x3F)
        {
          sub_268197780(319, &qword_28024E418, MEMORY[0x277D5E720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26819771C(uint64_t a1)
{
  if (!qword_28024E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E410, qword_2683D6BC0);
    v1 = sub_2683CFFA8();
    if (!v2)
    {
      atomic_store(v1, &qword_28024E408);
    }
  }
}

void sub_268197780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2683CFFA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_2683CFCD8();
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
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

uint64_t sub_268197860(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2681978A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2681978FC@<X0>(uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  sub_26812C2A8(a5, &v14 - v10, &qword_28024DD70, &unk_2683D4E80);

  v12 = v6;

  return sub_2681989AC(v12, v11, x8_0);
}

uint64_t sub_2681979F4@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a2;
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v49 - v7;
  v8 = sub_2683CF8B8();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2683CC288();
  v10 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = &v49 - v14;
  v52 = sub_2683CCF08();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v16 = *(v65 - 8);
  v17 = MEMORY[0x28223BE20](v65);
  v62 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (&v49 - v19);
  v53 = a4;
  result = sub_268198178(a1, a4);
  v22 = 0;
  v54 = MEMORY[0x277D84F90];
  v66 = a1;
  v67 = MEMORY[0x277D84F90];
  v23 = *(a1 + 16);
  v58 = v10 + 8;
  v59 = v10 + 16;
  while (v23 != v22)
  {
    if (v22 >= v23)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = sub_26812C2A8(v66 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, v20, &qword_28024E440, &qword_2683D6CD0);
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_27;
    }

    v25 = v20 + *(v65 + 28);
    v26 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0) + 32)];
    if (*(v26 + 16))
    {
      v27 = v60;
      (*(v10 + 16))(v12, v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v60);
      v28 = sub_2683CC268();
      v30 = v29;
      (*(v10 + 8))(v12, v27);
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = (v63)(v28, v30, *v20, v20[1]);

    result = sub_26812C310(v20, &qword_28024E440, &qword_2683D6CD0);
    ++v22;
    if (v31)
    {
      MEMORY[0x26D616770](result);
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v54 = v67;
      v22 = v24;
    }
  }

  v32 = v51;
  sub_268368898();

  v33 = v52;
  if (__swift_getEnumTagSinglePayload(v32, 1, v52) == 1)
  {
    sub_26812C310(v32, &qword_28024DD30, &qword_2683D4CF8);
  }

  else
  {
    v35 = v49;
    v34 = v50;
    (*(v50 + 32))(v49, v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2683D1EC0;
    (*(v34 + 16))(v37 + v36, v35, v33);
    sub_2683CC448();
    (*(v34 + 8))(v35, v33);
  }

  v39 = v56;
  v38 = v57;
  if (v23)
  {
    v65 = v62 + *(v65 + 28);
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0) + 36);
    v41 = v66 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v63 = (v55 + 32);
    v64 = v40;
    v42 = MEMORY[0x277D84F90];
    v66 = *(v16 + 72);
    do
    {
      v43 = v62;
      sub_26812C2A8(v41, v62, &qword_28024E440, &qword_2683D6CD0);
      sub_26812C2A8(v65 + v64, v38, &qword_28024DD28, &qword_2683D4CF0);
      sub_26812C310(v43, &qword_28024E440, &qword_2683D6CD0);
      if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
      {
        sub_26812C310(v38, &qword_28024DD28, &qword_2683D4CF0);
      }

      else
      {
        v44 = *v63;
        (*v63)(v61, v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2682E48E8();
          v42 = v47;
        }

        v45 = *(v42 + 16);
        if (v45 >= *(v42 + 24) >> 1)
        {
          sub_2682E48E8();
          v42 = v48;
        }

        *(v42 + 16) = v45 + 1;
        v46 = v42 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45;
        v39 = v56;
        v44(v46, v61, v56);
        v38 = v57;
      }

      v41 += v66;
      --v23;
    }

    while (v23);
  }

  return sub_2683CC418();
}

uint64_t sub_268198178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v77 = sub_2683CC288();
  v3 = *(v77 - 8);
  v4 = MEMORY[0x28223BE20](v77);
  v66 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v54 - v8;
  v76 = sub_2683CC168();
  v9 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2683CCA28();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  v68 = v16;
  v69 = v3;
  v55 = a1;
  v54 = v13;
  if (v20)
  {
    v65 = &v19[*(v17 + 28)];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0);
    v23 = 0;
    v24 = *(v22 + 32);
    v63 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v64 = v24;
    v25 = *(v13 + 72);
    v61 = v20;
    v62 = v25;
    v71 = v9 + 32;
    v72 = (v3 + 16);
    v26 = v21;
    v60 = v19;
    while (1)
    {
      v70 = v23;
      sub_26812C2A8(v63 + v62 * v23, v19, &qword_28024E440, &qword_2683D6CD0);
      v27 = *&v65[v64];
      v28 = *(v27 + 16);
      if (v28)
      {
        v67 = v26;
        v78 = v21;
        sub_268390678(0, v28, 0);
        v21 = v78;
        v29 = v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v30 = *(v3 + 72);
        do
        {
          v31 = qword_28024CB80;

          if (v31 != -1)
          {
            swift_once();
          }

          sub_2683CD158();
          v32 = v73;
          sub_2683CC258();
          v33 = v77;
          __swift_storeEnumTagSinglePayload(v32, 0, 1, v77);
          (*v72)(v74, v29, v33);
          v34 = v75;
          sub_2683CC158();
          v78 = v21;
          v36 = *(v21 + 16);
          v35 = *(v21 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_268390678(v35 > 1, v36 + 1, 1);
            v34 = v75;
            v21 = v78;
          }

          *(v21 + 16) = v36 + 1;
          (*(v9 + 32))(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36, v34, v76);
          v29 += v30;
          --v28;
        }

        while (v28);
        v16 = v68;
        v3 = v69;
        v19 = v60;
        v20 = v61;
        v26 = v67;
      }

      sub_26812C310(v19, &qword_28024E440, &qword_2683D6CD0);
      v37 = *(v21 + 16);
      v38 = *(v26 + 16);
      if (__OFADD__(v38, v37))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v38 + v37 > *(v26 + 24) >> 1)
      {
        sub_2682E4758();
        v26 = v39;
      }

      if (*(v21 + 16))
      {
        if ((*(v26 + 24) >> 1) - *(v26 + 16) < v37)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v21 = MEMORY[0x277D84F90];
        v40 = v70;
        if (v37)
        {
          v41 = *(v26 + 16);
          v42 = __OFADD__(v41, v37);
          v43 = v41 + v37;
          if (v42)
          {
            goto LABEL_37;
          }

          *(v26 + 16) = v43;
        }
      }

      else
      {

        v21 = MEMORY[0x277D84F90];
        v40 = v70;
        if (v37)
        {
          goto LABEL_35;
        }
      }

      v23 = v40 + 1;
      if (v23 == v20)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_24:
  if (qword_28024CB88 != -1)
  {
LABEL_38:
    swift_once();
  }

  sub_2683CD158();
  sub_2683CCA08();
  if (v20)
  {
    v67 = v26;
    v78 = MEMORY[0x277D84F90];
    sub_268390620(0, v20, 0);
    v44 = v78;
    v45 = v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v76 = *(v54 + 72);
    do
    {
      v46 = v20;
      sub_26812C2A8(v45, v16, &qword_28024E440, &qword_2683D6CD0);
      v47 = qword_28024CB80;

      if (v47 != -1)
      {
        swift_once();
      }

      sub_2683CD158();
      v48 = v66;
      sub_2683CC258();
      sub_26812C310(v16, &qword_28024E440, &qword_2683D6CD0);
      v78 = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_268390620(v49 > 1, v50 + 1, 1);
        v48 = v66;
        v44 = v78;
      }

      *(v44 + 16) = v50 + 1;
      (*(v69 + 32))(v44 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v50, v48, v77);
      v45 += v76;
      --v20;
      v16 = v68;
    }

    while (v46 != 1);
    v26 = v67;
  }

  v51 = v59;
  v52 = sub_2683CCA18();

  (*(v56 + 8))(v51, v57);
  v78 = v26;
  sub_2682C00E0(v52);
  sub_268169078();
}