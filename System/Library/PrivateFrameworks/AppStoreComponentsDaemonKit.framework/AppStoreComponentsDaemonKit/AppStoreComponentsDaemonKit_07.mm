uint64_t sub_22270C9E4()
{
  v2 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {

    v3 = sub_22270CE00;
  }

  else
  {
    v4 = v2[79];
    v5 = v2[78];
    v6 = v2[77];

    (*(v5 + 8))(v4, v6);
    v3 = sub_22270CB40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22270CB40()
{
  v9 = v0[109];
  v17 = v0[104];
  v1 = v0[101];
  v15 = v0[99];
  v16 = v0[100];
  v2 = v0[98];
  v14 = v0[97];
  v3 = v0[91];
  v12 = v0[90];
  v13 = v0[92];
  v11 = v0[85];
  v4 = v0[84];
  v10 = v0[83];
  v5 = v0[70];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v6 = [v5 id];
  v0[47] = v9;
  v0[44] = v6;
  sub_22273816C();
  sub_222660468((v0 + 44), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  (*(v4 + 8))(v11, v10);
  (*(v3 + 8))(v13, v12);
  (*(v2 + 8))(v15, v14);
  (*(v1 + 8))(v17, v16);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22270CE00()
{
  v1 = v0[113];
  v2 = v0[109];
  v25 = v0[103];
  v26 = v0[104];
  v27 = v0[102];
  v3 = v0[101];
  v24 = v0[100];
  v35 = v0[98];
  v36 = v0[97];
  v37 = v0[99];
  v34 = v0[92];
  v32 = v0[91];
  v33 = v0[90];
  v29 = v0[84];
  v30 = v0[83];
  v31 = v0[85];
  v23 = v0[76];
  v4 = v0[70];
  v28 = v0[69];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v5 = [v4 id];
  v0[39] = v2;
  v0[36] = v5;
  sub_22273816C();
  sub_222660468((v0 + 36), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v7 = v0[48];
  v6 = v0[49];
  v0[43] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 40);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  sub_22273816C();
  sub_222660468((v0 + 40), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v9 = sub_22273946C();
  (*(*(v9 - 8) + 56))(v23, 1, 1, v9);
  (*(v3 + 16))(v25, v26, v24);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  (*(v3 + 32))(&v11[v10], v25, v24);
  *&v11[(v27 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  v12 = v1;
  sub_22269994C(0, 0, v23, &unk_222745638, v11);

  type metadata accessor for ASCAppOfferActionError(0);
  v0[66] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227413C0;
  *(inited + 32) = sub_22273919C();
  *(inited + 40) = v14;
  swift_getErrorValue();
  v15 = v0[51];
  v16 = v0[52];
  *(inited + 72) = v16;
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v16 - 8) + 16))(v17, v15, v16);
  *(inited + 80) = sub_22273919C();
  *(inited + 88) = v18;
  swift_getErrorValue();
  v19 = sub_222739BEC();
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v19;
  *(inited + 104) = v20;
  sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
  sub_22273725C();
  swift_willThrow();

  (*(v29 + 8))(v31, v30);
  (*(v32 + 8))(v34, v33);
  (*(v35 + 8))(v37, v36);
  (*(v3 + 8))(v26, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_22270D3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_2227383CC();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for PresentErrorAction(0);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270D54C, 0, 0);
}

uint64_t sub_22270D54C(uint64_t a1)
{
  v3 = v1[16];
  v2 = v1[17];
  v5 = v1[11];
  v4 = v1[12];
  v6 = v1[10];
  v7 = v1[7];
  sub_22273839C();
  *(v2 + *(v3 + 20)) = v7;
  v1[5] = v3;
  v1[6] = sub_222710B68(&qword_27D013228, type metadata accessor for PresentErrorAction, &unk_222742204);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_2227110C4(v2, boxed_opaque_existential_1, type metadata accessor for PresentErrorAction);
  (*(v5 + 104))(v4, *MEMORY[0x277D21E18], v6);
  v9 = v7;
  v10 = swift_task_alloc();
  v1[18] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  *v10 = v1;
  v10[1] = sub_22270D6C8;
  v12 = v1[15];
  v13 = v1[12];
  v14 = v1[9];

  return MEMORY[0x28217F468](v12, v1 + 2, v13, v14, v11);
}

uint64_t sub_22270D6C8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2227113B8;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = sub_2227113B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22270D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_2227383CC();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for PresentErrorAction(0);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270D9BC, 0, 0);
}

uint64_t sub_22270D9BC(uint64_t a1)
{
  v3 = v1[16];
  v2 = v1[17];
  v5 = v1[11];
  v4 = v1[12];
  v6 = v1[10];
  v7 = v1[7];
  sub_22273839C();
  *(v2 + *(v3 + 20)) = v7;
  v1[5] = v3;
  v1[6] = sub_222710B68(&qword_27D013228, type metadata accessor for PresentErrorAction, &unk_222742204);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_2227110C4(v2, boxed_opaque_existential_1, type metadata accessor for PresentErrorAction);
  (*(v5 + 104))(v4, *MEMORY[0x277D21E18], v6);
  v9 = v7;
  v10 = swift_task_alloc();
  v1[18] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  *v10 = v1;
  v10[1] = sub_22270DB38;
  v12 = v1[15];
  v13 = v1[12];
  v14 = v1[9];

  return MEMORY[0x28217F468](v12, v1 + 2, v13, v14, v11);
}

uint64_t sub_22270DB38()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22270DD74;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = sub_22270DCD0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22270DCD0()
{
  sub_22271112C(*(v0 + 136), type metadata accessor for PresentErrorAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22270DD74()
{
  sub_22271112C(v0[17], type metadata accessor for PresentErrorAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22270DEF4(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for WatchReinstallAction(0);
  MEMORY[0x28223BE20](v7);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227381BC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  type metadata accessor for ObjectGraph(0);
  v39 = v12;
  v35 = v10;
  sub_222738C9C();
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v45 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v44[0] = a1;
  v14 = a1;
  sub_22273816C();
  sub_222660468(v44, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v15 = v36;
  sub_22273839C();
  v16 = v15 + *(v7 + 20);
  *v16 = v14;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v45 = v7;
  v46 = sub_222710B68(&unk_27D013260, type metadata accessor for WatchReinstallAction, &unk_222742398);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v34 = type metadata accessor for WatchReinstallAction;
  sub_2227110C4(v15, boxed_opaque_existential_1, type metadata accessor for WatchReinstallAction);
  v19 = v37;
  v18 = v38;
  (*(v37 + 104))(v6, *MEMORY[0x277D21E18], v38);
  v20 = v14;
  v21 = v35;
  v22 = v39;
  sub_22273862C();
  (*(v19 + 8))(v6, v18);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v23 = swift_allocObject();
  v24 = v42;
  v25 = v43;
  v23[2] = v20;
  v23[3] = v24;
  v26 = ObjectType;
  v23[4] = v25;
  v23[5] = v26;
  v27 = swift_allocObject();
  v27[2] = v20;
  v27[3] = v24;
  v27[4] = v25;
  v27[5] = v26;
  v28 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v29 = v20;
  swift_retain_n();
  v30 = v29;
  v31 = sub_22273955C();
  v45 = v28;
  v46 = MEMORY[0x277D225C0];
  v44[0] = v31;
  sub_222738E8C();

  sub_22271112C(v15, v34);
  (*(v40 + 8))(v22, v21);
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_22270E4A8(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v5 = sub_2227381BC();
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v9[3] = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v9[0] = a2;
  v7 = a2;
  sub_22273816C();
  sub_222660468(v9, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return (a3)(0);
}

uint64_t sub_22270E6C4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = sub_2227381BC();
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v14 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v13[0] = a2;
  v8 = a2;
  sub_22273816C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v14 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a3(a1);
}

uint64_t sub_22270EA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v38 = a1;
  v39 = a3;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = type metadata accessor for WatchReinstallAction(0);
  MEMORY[0x28223BE20](v9);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2227381BC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph);
  type metadata accessor for ObjectGraph(0);
  v35 = v14;
  v32[1] = v15;
  sub_222738C9C();
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v16 = sub_222738F6C();
  __swift_project_value_buffer(v16, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v43 = MEMORY[0x277D837D0];
  v17 = v38;
  v42[0] = v38;
  v42[1] = a2;

  sub_22273816C();
  sub_222660468(v42, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v18 = v40;
  sub_22273839C();
  v19 = v18 + *(v9 + 20);
  *v19 = v17;
  *(v19 + 8) = a2;
  *(v19 + 16) = 1;
  v43 = v9;
  v44 = sub_222710B68(&unk_27D013260, type metadata accessor for WatchReinstallAction, &unk_222742398);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v32[0] = type metadata accessor for WatchReinstallAction;
  sub_2227110C4(v18, boxed_opaque_existential_1, type metadata accessor for WatchReinstallAction);
  v22 = v33;
  v21 = v34;
  (*(v33 + 104))(v8, *MEMORY[0x277D21E18], v34);

  v23 = v35;
  sub_22273862C();
  (*(v22 + 8))(v8, v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = a2;
  v25 = v39;
  v26 = v41;
  v24[4] = v39;
  v24[5] = v26;
  v34 = v12;
  v27 = ObjectType;
  v24[6] = ObjectType;
  v28 = swift_allocObject();
  v28[2] = v17;
  v28[3] = a2;
  v28[4] = v25;
  v28[5] = v26;
  v28[6] = v27;
  v29 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v30 = sub_22273955C();
  v43 = v29;
  v44 = MEMORY[0x277D225C0];
  v42[0] = v30;
  sub_222738E8C();

  sub_22271112C(v18, v32[0]);
  (*(v36 + 8))(v23, v34);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_22270EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128))
{
  v7 = sub_2227381BC();
  MEMORY[0x28223BE20](v7 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v8 = sub_222738F6C();
  __swift_project_value_buffer(v8, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v10[3] = MEMORY[0x277D837D0];
  v10[0] = a2;
  v10[1] = a3;

  sub_22273816C();
  sub_222660468(v10, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return (a4)(0);
}

uint64_t sub_22270F1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v8 = sub_2227381BC();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v15 = MEMORY[0x277D837D0];
  v14[0] = a2;
  v14[1] = a3;

  sub_22273816C();
  sub_222660468(v14, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v15 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v14, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a4(a1);
}

double sub_22270F54C(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appDistribution), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appDistribution + 24));
  v3 = [a1 id];
  v4 = [v3 stringValue];

  v5 = sub_22273919C();
  v7 = v6;

  v8 = [a1 appVersionId];
  v9 = sub_22273919C();
  v11 = v10;

  v12 = [a1 distributorId];
  v13 = sub_22273919C();
  v15 = v14;

  sub_2226A4320(v5, v7, v9, v11, v13, v15);

  return result;
}

uint64_t sub_22270F6E8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v20 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FC0, &unk_222741550);
  sub_22273850C();
  v14 = sub_22273946C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_22266BCCC(v21, v20);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v5;
  sub_222634290(v20, (v15 + 6));
  v15[11] = a2;
  v15[12] = a3;
  v15[13] = a4;
  v15[14] = ObjectType;
  v16 = a1;
  v17 = v5;
  v18 = a2;

  sub_222697DAC(0, 0, v13, &unk_2227455E8, v15);

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_22270F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v15;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  sub_2227381BC();
  v8[17] = swift_task_alloc();
  v9 = sub_2227378CC();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = sub_22273793C();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v11 = sub_2227377AC();
  v8[24] = v11;
  v8[25] = *(v11 - 8);
  v8[26] = swift_task_alloc();
  sub_222737C2C();
  v8[27] = swift_task_alloc();
  v12 = sub_2227377BC();
  v8[28] = v12;
  v8[29] = *(v12 - 8);
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270FAC0, 0, 0);
}

uint64_t sub_22270FAC0()
{
  v1 = [*(v0 + 88) id];
  [v1 int64value];
  sub_222737C1C();
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v15 = *(v0 + 112);
  v13 = *(v0 + 144);
  v14 = *(v0 + 104);
  v5 = *(v0 + 96);
  v12 = *(v0 + 88);
  (*(*(v0 + 200) + 104))(*(v0 + 208), *MEMORY[0x277CEBFE8], *(v0 + 192));
  sub_22273778C();

  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController), *(v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 24));
  sub_222703410(v4);
  sub_2227379EC();
  (*(v3 + 8))(v4, v13);
  v6 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v7 = [objc_allocWithZone(ASCOfferContext) init];
  *(v0 + 248) = sub_2226FE348(v12, v2, v15, v7, *v6);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014490, &qword_222741560);
  v9 = sub_22262BED4(&qword_27D012FC8, &unk_27D014490, &qword_222741560, MEMORY[0x277D224B8]);
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_22270FF80;

  return MEMORY[0x282180360](v0 + 80, v8, v9);
}

uint64_t sub_22270FF80()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_2227101E4;
  }

  else
  {
    *(v2 + 272) = *(v2 + 80);
    v3 = sub_2227100BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2227100BC()
{
  v1 = v0[34];
  v2 = v0[29];
  v10 = v0[28];
  v11 = v0[30];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[15];
  v7 = sub_2226EC744();
  v6(v7);

  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v11, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2227101E4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[33];
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v12 = v0[15];
  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v6 = v0[6];
  v7 = v0[7];
  v0[5] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v6, v7);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v9 = v4;
  v12(0, 0, v4);

  v10 = v0[1];

  return v10();
}

void sub_222710580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_22273916C();
    if (a3)
    {
LABEL_3:
      v7 = sub_22273726C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

unint64_t sub_222710688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013520, &qword_222742590);
    v3 = sub_222739A6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22266110C(v4, &v13, &qword_27D013250, &unk_222741780);
      v5 = v13;
      v6 = v14;
      result = sub_222688818(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22269457C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2227107B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22273793C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277CEC0D8])
  {
    (*(v4 + 8))(v7, v3);
    v9 = 1;
    goto LABEL_8;
  }

  if (v8 == *MEMORY[0x277CEC098])
  {
    (*(v4 + 8))(v7, v3);
LABEL_5:
    v9 = 0;
    goto LABEL_8;
  }

  if (v8 != *MEMORY[0x277CEC0C0])
  {
    if (v8 != *MEMORY[0x277CEC0A8] && v8 != *MEMORY[0x277CEC0B0])
    {
      (*(v4 + 8))(v7, v3);
      return 1;
    }

    goto LABEL_5;
  }

  (*(v4 + 96))(v7, v3);
  v10 = sub_22273786C();
  (*(*(v10 - 8) + 8))(v7, v10);
  v9 = 3;
LABEL_8:
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectRetain();
    v13 = [v12 capabilities];
    if (v13)
    {
      v14 = v13;
      v15 = *(sub_22273937C() + 16);

      if (v15)
      {
        v16 = [objc_opt_self() isCapableOfAction:v9 capabilities:v14];
        swift_unknownObjectRelease();

        return v16;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_222710A70(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_22270F884(a1, v11, v4, v5, v6, (v1 + 6), v7, v8);
}

uint64_t sub_222710B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222710C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222660228;

  return sub_22270B900(a1, v4, v5, (v1 + 4), (v1 + 9), v6, v7, (v1 + 16));
}

uint64_t sub_222710D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D469C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_222710E44(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22266BE24;

  return sub_22270D3F0(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_222710F84(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22266BE24;

  return sub_22270D860(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2227110C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22271112C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22271118C()
{
  result = qword_281312B58;
  if (!qword_281312B58)
  {
    sub_22262E364(255, &qword_281312B70, off_2784B05F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312B58);
  }

  return result;
}

uint64_t sub_2227111F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_222707D18(a1, v4, v5, v6);
}

uint64_t objectdestroy_65Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2227112F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2227088DC(a1, v4, v5, v6);
}

uint64_t sub_2227113C8(uint64_t a1)
{
  v2 = v1;
  v48 = sub_2227377AC();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222737C2C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2227377BC();
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_22273984C();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v59 = MEMORY[0x277D84F90];
    sub_2226AE7A8(0, v11 & ~(v11 >> 63), 0);
    v54 = v59;
    if (v52)
    {
      result = sub_2227397FC();
    }

    else
    {
      result = sub_2227397CC();
      v13 = *(a1 + 36);
    }

    v56 = result;
    v57 = v13;
    v58 = v52 != 0;
    if ((v11 & 0x8000000000000000) == 0)
    {
      v45 = v10;
      v14 = 0;
      v43 = v49 + 32;
      v44 = (v4 + 104);
      v42 = *MEMORY[0x277CEBFE8];
      v40 = a1 + 56;
      v15 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v15 = a1;
      }

      v41 = v15;
      v39 = a1 + 64;
      v50 = v8;
      v51 = a1;
      while (v14 < v11)
      {
        if (__OFADD__(v14++, 1))
        {
          goto LABEL_41;
        }

        v18 = v56;
        v19 = v57;
        v20 = v58;
        sub_222723910(v56, v57, v58, a1);
        v22 = v21;
        [v21 int64value];
        sub_222737C1C();
        if (v2)
        {

          sub_2226A5ADC(v18, v19, v20);
        }

        v53 = 0;
        (*v44)(v47, v42, v48);
        v23 = v45;
        sub_22273778C();

        v24 = v54;
        v59 = v54;
        v26 = *(v54 + 16);
        v25 = *(v54 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2226AE7A8((v25 > 1), v26 + 1, 1);
          v24 = v59;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v54 = v24;
        result = (*(v49 + 32))(v24 + v27 + *(v49 + 72) * v26, v23, v46);
        if (v52)
        {
          a1 = v51;
          if (!v20)
          {
            goto LABEL_46;
          }

          v28 = sub_22273981C();
          v2 = v53;
          if (v28)
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014598, &qword_2227456F8);
          v16 = sub_2227394EC();
          sub_22273989C();
          result = v16(v55, 0);
          if (v14 == v11)
          {
LABEL_38:
            sub_2226A5ADC(v56, v57, v58);
            return v54;
          }
        }

        else
        {
          a1 = v51;
          if (v20)
          {
            goto LABEL_47;
          }

          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          v29 = 1 << *(v51 + 32);
          if (v18 >= v29)
          {
            goto LABEL_42;
          }

          v30 = v18 >> 6;
          v31 = *(v40 + 8 * (v18 >> 6));
          if (((v31 >> v18) & 1) == 0)
          {
            goto LABEL_43;
          }

          if (*(v51 + 36) != v19)
          {
            goto LABEL_44;
          }

          v32 = v31 & (-2 << (v18 & 0x3F));
          if (v32)
          {
            v29 = __clz(__rbit64(v32)) | v18 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = v30 << 6;
            v34 = v30 + 1;
            v35 = (v39 + 8 * v30);
            while (v34 < (v29 + 63) >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                result = sub_2226A5ADC(v18, v19, 0);
                v29 = __clz(__rbit64(v36)) + v33;
                goto LABEL_34;
              }
            }

            result = sub_2226A5ADC(v18, v19, 0);
LABEL_34:
            a1 = v51;
          }

          v38 = *(a1 + 36);
          v56 = v29;
          v57 = v38;
          v58 = 0;
          v2 = v53;
          if (v14 == v11)
          {
            goto LABEL_38;
          }
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  return result;
}

void sub_22271191C(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22273984C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2226AE80C(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_2227397FC();
    }

    else
    {
      v3 = sub_2227397CC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_222723910(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 stringValue];
        v14 = sub_22273919C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2226AE80C((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_22273981C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014598, &qword_2227456F8);
          v6 = sub_2227394EC();
          sub_22273989C();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_2226A5ADC(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_2226A5ADC(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_2226A5ADC(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_222711C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222711D10;

  return sub_2226A18B0();
}

uint64_t sub_222711D10(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_222711E10, 0, 0);
}

uint64_t sub_222711E10()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1) == 0xD000000000000012 && 0x8000000222747B00 == *v3;
      if (!v4 && (sub_222739B4C() & 1) == 0)
      {
        v5 = 1;
        goto LABEL_13;
      }

      v3 += 2;
      --v2;
    }

    while (v2);
    v5 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_13:

  v6 = *(v0 + 8);

  return v6(v5);
}

id sub_222711EF0(uint64_t a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F0, &unk_222745700);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v28 - v2;
  v36 = sub_22273823C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4;
  MEMORY[0x28223BE20](v6);
  v35 = &v28 - v7;
  v33 = a1;
  v8 = sub_2226B37F0();
  v9 = v8;
  v10 = v8 + 56;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 56);
  v14 = (v11 + 63) >> 6;

  for (i = 0; v13; result = [objc_opt_self() jsCallDidBeginWithTag_])
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      sub_22273822C();
      v19 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
      v38 = type metadata accessor for JSInitFailureObserver(0);
      v39 = sub_222724184(qword_281313340, type metadata accessor for JSInitFailureObserver, &unk_222743AC8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      sub_2226D97C4(v34 + v19, boxed_opaque_existential_1);
      v21 = v29;
      sub_22273821C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
      v22 = v35;
      sub_22273820C();
      (*(v30 + 8))(v21, v32);
      v23 = *(v3 + 8);
      v24 = v36;
      v23(v5, v36);
      __swift_destroy_boxed_opaque_existential_1(v37);
      sub_2226D7BBC(v33);
      (*(v3 + 16))(v5, v22, v24);
      v25 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v9;
      (*(v3 + 32))(v26 + v25, v5, v24);
      v38 = sub_22273872C();
      v39 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v37);
      sub_22273871C();
      sub_22273875C();
      v27 = sub_222738E6C();

      v23(v22, v24);
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v27;
    }

    v13 = *(v10 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_222712368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v40 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F0, &unk_222745700);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v32 - v6;
  v41 = sub_22273823C();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v8;
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v11;
  v37 = a1;
  v12 = sub_2226B37F0();
  v13 = v12;
  v14 = v12 + 56;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 56);
  v18 = (v15 + 63) >> 6;

  for (i = 0; v17; result = [objc_opt_self() jsCallDidBeginWithTag_])
  {
    v21 = i;
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      sub_22273822C();
      v23 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
      v46 = type metadata accessor for JSInitFailureObserver(0);
      v47 = sub_222724184(qword_281313340, type metadata accessor for JSInitFailureObserver, &unk_222743AC8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      sub_2226D97C4(v38 + v23, boxed_opaque_existential_1);
      v25 = v33;
      sub_22273821C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
      v26 = v39;
      sub_22273820C();
      (*(v34 + 8))(v25, v36);
      v27 = *(v7 + 8);
      v28 = v41;
      v27(v9, v41);
      __swift_destroy_boxed_opaque_existential_1(v45);
      sub_2226D7BBC(v37);
      (*(v7 + 16))(v9, v26, v28);
      v29 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v13;
      (*(v7 + 32))(v30 + v29, v9, v28);
      v46 = sub_22273872C();
      v47 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v45);
      sub_22273871C();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      v31 = sub_222738E6C();

      v27(v26, v28);
      __swift_destroy_boxed_opaque_existential_1(v45);
      return v31;
    }

    v17 = *(v14 + 8 * v21);
    ++i;
    if (v17)
    {
      i = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_222712778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a4;
  v36 = a1;
  v5 = sub_22273823C();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227380FC();
  MEMORY[0x28223BE20](v7 - 8);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145A8, &qword_222745718);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_9:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = *(*(a2 + 48) + ((v19 << 9) | (8 * v20)));
      v22 = objc_opt_self();
      [v22 jsCallDidEndWithTag_];
      result = [v22 rootViewModelParseDidBeginWithTag_];
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  sub_22273875C();
  sub_22273811C();
  v23 = v34;
  sub_2227383FC();
  (*(v33 + 8))(v11, v23);
  (*(v38 + 16))(v37, v40, v39);
  v24 = v42;
  result = sub_2227386FC();
  if (v24)
  {
    return result;
  }

  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 56);
  v28 = (v25 + 63) >> 6;

  for (i = 0; v27; result = [objc_opt_self() rootViewModelParseDidEndWithTag_])
  {
    v30 = i;
LABEL_20:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
  }

  while (1)
  {
    v30 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
    }

    v27 = *(v12 + 8 * v30);
    ++i;
    if (v27)
    {
      i = v30;
      goto LABEL_20;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_222712B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v37 = a1;
  v45 = sub_22273823C();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2227380FC();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145A8, &qword_222745718);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_9:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = *(*(a2 + 48) + ((v17 << 9) | (8 * v18)));
      v20 = objc_opt_self();
      [v20 jsCallDidEndWithTag_];
      result = [v20 rootViewModelParseDidBeginWithTag_];
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  sub_22273811C();
  v21 = v38;
  v22 = v36;
  sub_2227383FC();
  (*(v35 + 8))(v9, v22);
  v23 = v44;
  v24 = v40;
  v25 = v45;
  (*(v44 + 16))(v40, v39, v45);
  type metadata accessor for ASCLockupContainer();
  v26 = v43;
  v27 = sub_2226F5D84(v21, v24);
  if (!v26)
  {
    (*(v23 + 8))(v24, v25);
    (*(v41 + 8))(v21, v42);
    v28 = 1 << *(a2 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(a2 + 56);
    v31 = (v28 + 63) >> 6;

    for (i = 0; v30; result = [objc_opt_self() rootViewModelParseDidEndWithTag_])
    {
      v33 = i;
LABEL_21:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
    }

    while (1)
    {
      v33 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      if (v33 >= v31)
      {

        return v27;
      }

      v30 = *(v10 + 8 * v33);
      ++i;
      if (v30)
      {
        i = v33;
        goto LABEL_21;
      }
    }
  }

  (*(v23 + 8))(v24, v25);
  (*(v41 + 8))(v21, v42);
  return v27;
}

id sub_222712F64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t (*a6)(char *, char *))
{
  v49 = a6;
  v46 = a5;
  v44 = a4;
  v42 = a3;
  v40 = a1;
  v51 = sub_22273823C();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2227380FC();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145A8, &qword_222745718);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_9:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = *(*(a2 + 48) + ((v19 << 9) | (8 * v20)));
      v22 = objc_opt_self();
      [v22 jsCallDidEndWithTag_];
      result = [v22 rootViewModelParseDidBeginWithTag_];
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  sub_22273811C();
  v23 = v41;
  v24 = v39;
  sub_2227383FC();
  (*(v38 + 8))(v11, v24);
  v25 = v50;
  v26 = v43;
  v27 = v51;
  (*(v50 + 16))(v43, v42, v51);
  sub_22262E364(0, v44, v46);
  v28 = v48;
  v29 = v49(v23, v26);
  if (!v28)
  {
    (*(v25 + 8))(v26, v27);
    (*(v45 + 8))(v23, v47);
    v30 = 1 << *(a2 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a2 + 56);
    v33 = (v30 + 63) >> 6;

    for (i = 0; v32; result = [objc_opt_self() rootViewModelParseDidEndWithTag_])
    {
      v35 = i;
LABEL_21:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
    }

    while (1)
    {
      v35 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      if (v35 >= v33)
      {

        return v29;
      }

      v32 = *(v12 + 8 * v35);
      ++i;
      if (v32)
      {
        i = v35;
        goto LABEL_21;
      }
    }
  }

  (*(v25 + 8))(v26, v27);
  (*(v45 + 8))(v23, v47);
  return v29;
}

void sub_2227133C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v105 = a3;
  v107 = v4;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v90 - v8;
  v9 = sub_222736FEC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_222736FFC();
  v108 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227440C0;
  *(inited + 32) = [a1 id];
  sub_2226DDB10(inited);
  v106 = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = [a1 kind];
  v16 = [a1 context];
  v17 = [a1 mediaQueryParams];
  if (v17)
  {
    v18 = v17;
    v101 = sub_22273910C();
  }

  else
  {
    v101 = 0;
  }

  v19 = [a1 clientID];
  if (v19)
  {
    v20 = v19;
    v96 = sub_22273919C();
    v22 = v21;
  }

  else
  {
    v96 = 0;
    v22 = 0;
  }

  v97 = [a1 enableAppDistribution];
  v23 = [a1 platformOverride];
  v24 = [a1 countryCodeOverride];
  v102 = v23;
  if (v24)
  {
    v25 = v24;
    v95 = sub_22273919C();
    v100 = v26;
  }

  else
  {
    v95 = 0;
    v100 = 0;
  }

  v103 = v15;
  v27 = sub_22273919C();
  v29 = v28;
  v30 = sub_22273919C();
  v104 = a2;
  if (v27 == v30 && v29 == v31)
  {
  }

  else
  {
    v32 = sub_222739B4C();

    if ((v32 & 1) == 0)
    {

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
      sub_222736FDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_2227412F0;
      *(v43 + 32) = sub_22273919C();
      *(v43 + 40) = v44;
      *atoken.val = 0;
      *&atoken.val[2] = 0xE000000000000000;
      sub_22273991C();

      strcpy(&atoken, "Lockup kind ");
      BYTE1(atoken.val[3]) = 0;
      HIWORD(atoken.val[3]) = -5120;
      v45 = v103;
      v46 = sub_22273919C();
      MEMORY[0x223DBE5D0](v46);

      MEMORY[0x223DBE5D0](0xD000000000000018, 0x800000022274E5A0);
      v47 = *atoken.val;
      v48 = *&atoken.val[2];
      *(v43 + 72) = MEMORY[0x277D837D0];
      *(v43 + 48) = v47;
      *(v43 + 56) = v48;
      sub_222710688(v43);
      swift_setDeallocating();
      sub_222660468(v43 + 32, &qword_27D013250, &unk_222741780);
      sub_222724184(&qword_27D014560, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
      sub_22273725C();
      sub_222736FCC();
      (*(v108 + 8))(v12, v10);
      sub_222738E9C();

LABEL_36:
      v84 = v105;
      v113 = sub_22273872C();
      v114 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v112);
      sub_22273871C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
      sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730, MEMORY[0x277D224B8]);
      sub_222738EDC();

      __swift_destroy_boxed_opaque_existential_1(&v112);
      v85 = swift_allocObject();
      *(v85 + 16) = v104;
      *(v85 + 24) = v84;
      v86 = swift_allocObject();
      *(v86 + 16) = sub_222725070;
      *(v86 + 24) = v85;
      *(v86 + 32) = "getLockupWith(_:withReplyHandler:)";
      *(v86 + 40) = 34;
      *(v86 + 48) = 2;
      v87 = swift_allocObject();
      *(v87 + 16) = sub_222725070;
      *(v87 + 24) = v85;
      *(v87 + 32) = "getLockupWith(_:withReplyHandler:)";
      *(v87 + 40) = 34;
      *(v87 + 48) = 2;
      v88 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
      swift_retain_n();

      v89 = sub_22273955C();
      v113 = v88;
      v114 = MEMORY[0x277D225C0];
      *&v112 = v89;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v112);
      return;
    }
  }

  v33 = v107 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service;
  __swift_project_boxed_opaque_existential_1((v107 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v107 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
  off_2835CACE8();
  v34 = MEMORY[0x277D84FA0];
  v111 = MEMORY[0x277D84FA0];
  v35 = objc_opt_self();
  v36 = [v35 currentConnection];
  if (!v36)
  {
    v108 = v34;
LABEL_35:
    v59 = [v35 currentConnection];
    v60 = v16;
    v61 = sub_2226A9E18(v59, v96, v22, v60);
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher;
    v69 = v107;
    sub_22266BCCC(v107 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController, &v112);
    sub_22266BCCC(v69 + v68, v110);
    sub_22266BCCC(v33, v109);
    v70 = swift_allocObject();
    sub_222634290(&v112, v70 + 16);
    *(v70 + 56) = v106;
    *(v70 + 64) = v97;
    v71 = v103;
    *(v70 + 72) = v69;
    *(v70 + 80) = v71;
    v72 = v101;
    *(v70 + 88) = v60;
    *(v70 + 96) = v72;
    *(v70 + 104) = v108;
    *(v70 + 112) = v61;
    *(v70 + 120) = v63;
    *(v70 + 128) = v65;
    v73 = v95;
    *(v70 + 136) = v67;
    *(v70 + 144) = v73;
    *(v70 + 152) = v100;
    sub_222634290(v110, v70 + 160);
    sub_222634290(v109, v70 + 200);
    v74 = v102;
    v75 = ObjectType;
    *(v70 + 240) = v102;
    *(v70 + 248) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);

    v76 = v60;
    v77 = v69;
    v78 = v71;
    v79 = v74;
    v80 = sub_222738F2C();
    v81 = sub_22273946C();
    v82 = v99;
    (*(*(v81 - 8) + 56))(v99, 1, 1, v81);
    v83 = swift_allocObject();
    v83[2] = 0;
    v83[3] = 0;
    v83[4] = &unk_222745840;
    v83[5] = v70;
    v83[6] = v80;

    sub_2226D4E54(0, 0, v82, &unk_222745848, v83);

    goto LABEL_36;
  }

  v91 = v35;
  v92 = v33;
  v37 = v36;
  [v36 auditToken];
  LODWORD(v108) = audit_token_to_pid(&atoken);

  v38 = v106;
  v93 = v22;
  v94 = v16;
  if ((v106 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22273980C();
    sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    sub_2226AF270(&qword_281312B58, &qword_281312B70, off_2784B05F0);
    sub_2227394FC();
    v38 = *atoken.val;
    v39 = *&atoken.val[2];
    v40 = *&atoken.val[4];
    v41 = *&atoken.val[6];
    v42 = v116;
  }

  else
  {
    v49 = -1 << *(v106 + 32);
    v39 = v106 + 56;
    v40 = ~v49;
    v50 = -v49;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v42 = v51 & *(v106 + 56);

    v41 = 0;
  }

  v90 = v40;
  if (v38 < 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v52 = v41;
    v53 = v42;
    v54 = v41;
    if (!v42)
    {
      break;
    }

LABEL_28:
    v55 = (v53 - 1) & v53;
    v56 = *(*(v38 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
    if (!v56)
    {
LABEL_34:
      sub_2226342B0(v38);
      v108 = v111;
      v22 = v93;
      v16 = v94;
      v35 = v91;
      v33 = v92;
      goto LABEL_35;
    }

    while (1)
    {
      v58 = ASCSignpostTagFromIDInProcess(v56, v108);
      sub_22268E834(&v112, v58);

      v41 = v54;
      v42 = v55;
      if ((v38 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_30:
      v57 = sub_22273987C();
      if (v57)
      {
        *&v110[0] = v57;
        sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        swift_dynamicCast();
        v56 = v112;
        v54 = v41;
        v55 = v42;
        if (v112)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v54 >= ((v40 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v53 = *(v39 + 8 * v54);
    ++v52;
    if (v53)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_222713FDC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    result = sub_22273984C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    sub_2227247C4();
    swift_allocError();
    *v4 = 0;
    return sub_222738E9C();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DBEC70](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    return sub_222738EAC();
  }

  __break(1u);
  return result;
}

void sub_2227140F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v107 = a2;
  v108 = a3;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v91 - v7;
  v9 = sub_222736FEC();
  MEMORY[0x28223BE20](v9 - 8);
  v94 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222736FFC();
  v111 = *(v11 - 8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 ids];
  v16 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  sub_2226AF270(&qword_281312B58, &qword_281312B70, off_2784B05F0);
  v109 = v16;
  v110 = sub_2227394CC();

  v17 = [a1 kind];
  v103 = [a1 context];
  v18 = [a1 mediaQueryParams];
  if (v18)
  {
    v19 = v18;
    v102 = sub_22273910C();
  }

  else
  {
    v102 = 0;
  }

  v20 = [a1 clientID];
  if (v20)
  {
    v21 = v20;
    v97 = sub_22273919C();
    v101 = v22;
  }

  else
  {
    v97 = 0;
    v101 = 0;
  }

  v98 = [a1 enableAppDistribution];
  v104 = [a1 platformOverride];
  v23 = [a1 countryCodeOverride];
  v106 = a1;
  if (v23)
  {
    v24 = v23;
    v96 = sub_22273919C();
    v100 = v25;
  }

  else
  {
    v96 = 0;
    v100 = 0;
  }

  v105 = v17;
  v26 = sub_22273919C();
  v28 = v27;
  if (v26 == sub_22273919C() && v28 == v29)
  {
  }

  else
  {
    v30 = sub_222739B4C();

    if ((v30 & 1) == 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
      sub_222736FDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 32) = sub_22273919C();
      *(inited + 40) = v42;
      *atoken.val = 0;
      *&atoken.val[2] = 0xE000000000000000;
      sub_22273991C();

      strcpy(&atoken, "Lockup kind ");
      BYTE1(atoken.val[3]) = 0;
      HIWORD(atoken.val[3]) = -5120;
      v43 = v105;
      v44 = sub_22273919C();
      MEMORY[0x223DBE5D0](v44);
      v45 = v107;

      MEMORY[0x223DBE5D0](0xD000000000000018, 0x800000022274E5A0);
      v46 = *atoken.val;
      v47 = *&atoken.val[2];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v46;
      *(inited + 56) = v47;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
      sub_222724184(&qword_27D014560, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
      sub_22273725C();
      sub_222736FCC();
      (*(v111 + 8))(v14, v11);
      sub_222738E9C();

LABEL_36:
      v83 = swift_allocObject();
      v84 = v106;
      *(v83 + 16) = v106;
      v116 = sub_22273872C();
      v117 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v115);
      v85 = v84;
      sub_22273871C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014610, &qword_2227457D8);
      sub_222738E6C();

      __swift_destroy_boxed_opaque_existential_1(&v115);
      v86 = swift_allocObject();
      *(v86 + 16) = v45;
      *(v86 + 24) = v108;
      v87 = swift_allocObject();
      *(v87 + 16) = sub_22272483C;
      *(v87 + 24) = v86;
      *(v87 + 32) = "getLockupsWith(_:withReplyHandler:)";
      *(v87 + 40) = 35;
      *(v87 + 48) = 2;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_22272483C;
      *(v88 + 24) = v86;
      *(v88 + 32) = "getLockupsWith(_:withReplyHandler:)";
      *(v88 + 40) = 35;
      *(v88 + 48) = 2;
      v89 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
      swift_retain_n();

      v90 = sub_22273955C();
      v116 = v89;
      v117 = MEMORY[0x277D225C0];
      *&v115 = v90;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v115);
      return;
    }
  }

  v94 = v4;
  v31 = &v4[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service], *&v4[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24]);
  off_2835CACE8();
  v32 = MEMORY[0x277D84FA0];
  v114 = MEMORY[0x277D84FA0];
  v33 = objc_opt_self();
  v34 = [v33 currentConnection];
  v95 = v8;
  if (!v34)
  {
    v111 = v32;
LABEL_35:
    v58 = [v33 currentConnection];
    v59 = v103;
    v60 = sub_2226A9E18(v58, v97, v101, v59);
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher;
    v68 = v94;
    sub_22266BCCC(&v94[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController], &v115);
    sub_22266BCCC(v68 + v67, v113);
    sub_22266BCCC(v31, v112);
    v69 = swift_allocObject();
    sub_222634290(&v115, v69 + 16);
    *(v69 + 56) = v110;
    *(v69 + 64) = v98;
    v70 = v105;
    *(v69 + 72) = v68;
    *(v69 + 80) = v70;
    v71 = v102;
    *(v69 + 88) = v59;
    *(v69 + 96) = v71;
    *(v69 + 104) = v111;
    *(v69 + 112) = v60;
    *(v69 + 120) = v62;
    *(v69 + 128) = v64;
    v72 = v96;
    *(v69 + 136) = v66;
    *(v69 + 144) = v72;
    *(v69 + 152) = v100;
    sub_222634290(v113, v69 + 160);
    sub_222634290(v112, v69 + 200);
    v73 = v104;
    v74 = ObjectType;
    *(v69 + 240) = v104;
    *(v69 + 248) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);

    v75 = v59;
    v76 = v68;
    v77 = v70;
    v78 = v73;
    v79 = sub_222738F2C();
    v80 = sub_22273946C();
    v81 = v95;
    (*(*(v80 - 8) + 56))(v95, 1, 1, v80);
    v82 = swift_allocObject();
    v82[2] = 0;
    v82[3] = 0;
    v82[4] = &unk_2227457E8;
    v82[5] = v69;
    v82[6] = v79;

    sub_2226D4E54(0, 0, v81, &unk_2227457F0, v82);

    v45 = v107;
    goto LABEL_36;
  }

  v35 = v34;
  [v34 auditToken];
  LODWORD(v111) = audit_token_to_pid(&atoken);

  v36 = v110;
  v92 = v33;
  v93 = v31;
  if ((v110 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22273980C();
    sub_2227394FC();
    v36 = *atoken.val;
    v37 = *&atoken.val[2];
    v38 = *&atoken.val[4];
    v39 = *&atoken.val[6];
    v40 = v119;
  }

  else
  {
    v48 = -1 << *(v110 + 32);
    v37 = v110 + 56;
    v38 = ~v48;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v40 = v50 & *(v110 + 56);

    v39 = 0;
  }

  v91[1] = v38;
  if (v36 < 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v51 = v39;
    v52 = v40;
    v53 = v39;
    if (!v40)
    {
      break;
    }

LABEL_28:
    v54 = (v52 - 1) & v52;
    v55 = *(*(v36 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v52)))));
    if (!v55)
    {
LABEL_34:
      sub_2226342B0(v36);
      v111 = v114;
      v33 = v92;
      v31 = v93;
      goto LABEL_35;
    }

    while (1)
    {
      v57 = ASCSignpostTagFromIDInProcess(v55, v111);
      sub_22268E834(&v115, v57);

      v39 = v53;
      v40 = v54;
      if ((v36 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_30:
      v56 = sub_22273987C();
      if (v56)
      {
        *&v113[0] = v56;
        swift_dynamicCast();
        v55 = v115;
        v53 = v39;
        v54 = v40;
        if (v115)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= ((v38 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v52 = *(v37 + 8 * v53);
    ++v51;
    if (v52)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_222714CA4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*a1 >> 62)
  {
LABEL_38:
    v5 = sub_22273984C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v45 = v4 & 0xC000000000000001;
      v42 = v4 & 0xFFFFFFFFFFFFFF8;
      v7 = MEMORY[0x277D84F98];
      v43 = v5;
      v44 = v4;
      while (1)
      {
        if (v45)
        {
          v10 = MEMORY[0x223DBEC70](v6, v4);
        }

        else
        {
          if (v6 >= *(v42 + 16))
          {
            goto LABEL_37;
          }

          v10 = *(v4 + 8 * v6 + 32);
        }

        v11 = v10;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v46 = v6 + 1;
        v12 = [v10 id];
        v13 = [a2 kind];
        v14 = [a2 context];
        v15 = [objc_allocWithZone(ASCLockupRequest) initWithID:v12 kind:v13 context:v14];

        v16 = [a2 clientID];
        v17 = [v15 lockupRequestWithClientID_];

        v18 = [a2 mediaQueryParams];
        if (v18)
        {
          v19 = v18;
          sub_22273910C();

          v20 = sub_2227390FC();
        }

        else
        {
          v20 = 0;
        }

        v21 = [v17 lockupRequestWithMediaQueryParams_];

        v22 = [a2 platformOverride];
        v23 = [v21 lockupRequestWithPlatformOverride_];

        v24 = [a2 countryCodeOverride];
        v4 = [v23 lockupRequestWithCountryCodeOverride_];

        if ([a2 enableAppDistribution])
        {
          v25 = [v4 lockupRequestWithAppDistributionEnabled];

          v4 = v25;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 >= 0)
          {
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v26 = v11;
          v27 = sub_22273984C();
          if (__OFADD__(v27, 1))
          {
            goto LABEL_35;
          }

          v7 = sub_2227236C4(v7, v27 + 1);
        }

        else
        {
          v28 = v11;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_2226889F8(v4);
        v32 = *(v7 + 16);
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_34;
        }

        v35 = v30;
        if (*(v7 + 24) >= v34)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v30)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_22268D358();
            if (v35)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22268ADC8(v34, isUniquelyReferenced_nonNull_native);
          v36 = sub_2226889F8(v4);
          if ((v35 & 1) != (v37 & 1))
          {
            sub_22262E364(0, &unk_281312CF8, off_2784B06D8);
            sub_222739B8C();
            __break(1u);
            return;
          }

          v31 = v36;
          if (v35)
          {
LABEL_4:
            v8 = *(v7 + 56);
            v9 = *(v8 + 8 * v31);
            *(v8 + 8 * v31) = v11;

            goto LABEL_5;
          }
        }

        *(v7 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        *(*(v7 + 48) + 8 * v31) = v4;
        *(*(v7 + 56) + 8 * v31) = v11;

        v38 = *(v7 + 16);
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_36;
        }

        *(v7 + 16) = v40;
LABEL_5:
        ++v6;
        v4 = v44;
        if (v46 == v43)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_40:
  *a3 = v7;
}

void sub_222715168(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22262E364(0, &unk_281312CF8, off_2784B06D8);
    sub_22262E364(0, &qword_281312B50, off_2784B0650);
    sub_2226AF270(&unk_281312CE8, &unk_281312CF8, off_2784B06D8);
    v5 = sub_2227390FC();
  }

  if (a2)
  {
    v6 = sub_22273726C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_222715268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 832) = v17;
  *(v8 + 824) = v16;
  *(v8 + 808) = v15;
  *(v8 + 792) = v14;
  *(v8 + 776) = v13;
  *(v8 + 760) = v12;
  *(v8 + 752) = a8;
  *(v8 + 744) = a7;
  *(v8 + 736) = a6;
  *(v8 + 728) = a5;
  *(v8 + 1136) = a4;
  *(v8 + 720) = a3;
  *(v8 + 712) = a2;
  *(v8 + 704) = a1;
  sub_222738DAC();
  *(v8 + 840) = swift_task_alloc();
  v9 = sub_22273903C();
  *(v8 + 848) = v9;
  *(v8 + 856) = *(v9 - 8);
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  *(v8 + 960) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222715464, 0, 0);
}

uint64_t sub_222715464()
{
  v30 = v0;
  v1 = *(v0 + 720);
  __swift_project_boxed_opaque_existential_1(*(v0 + 712), *(*(v0 + 712) + 24));
  v2 = sub_2227113C8(v1);
  *(v0 + 968) = 0;
  v3 = *(v0 + 1136);
  sub_2226AF45C(v2);

  sub_22273797C();

  if (v3 == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 976) = v4;
    *v4 = v0;
    v4[1] = sub_2227158E8;

    return sub_222717F58();
  }

  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v27 = *(v0 + 968);
  v28 = *(v0 + 752);
  v11 = *(v0 + 744);
  v12 = *(v0 + 736);
  v13 = *(v0 + 720);
  *(v0 + 1000) = __swift_project_boxed_opaque_existential_1(*(v0 + 816), *(*(v0 + 816) + 24));
  v14 = sub_2226A6000(v12, v11, v10, v9, v8, v7, v6);
  *(v0 + 1008) = v14;
  v15 = v13;
  v16 = v27;
  sub_22271191C(v15);
  v17 = sub_22273936C();

  [v14 setItemIdentifiers_];

  if (v28)
  {
    v18 = *(v0 + 752);

    v19 = [v14 additionalQueryParams];
    if (v19)
    {
      v20 = v19;
      v21 = sub_22273910C();
    }

    else
    {
      v21 = sub_222732D1C(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v21;
    sub_222723B9C(v18, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v29);

    if (v27)
    {
    }

    v23 = sub_2227390FC();

    [v14 setAdditionalQueryParams_];

    v16 = 0;
  }

  *(v0 + 1016) = v16;
  v24 = sub_2226A85D8(*(v0 + 744));
  [v14 setAccount_];

  v25 = [v14 type];
  v26 = swift_task_alloc();
  *(v0 + 1024) = v26;
  *v26 = v0;
  v26[1] = sub_222716164;

  return sub_2226A6FB0(v25);
}

uint64_t sub_2227158E8(char a1)
{
  *(*v1 + 1137) = a1;

  return MEMORY[0x2822009F8](sub_2227159E8, 0, 0);
}

uint64_t sub_2227159E8()
{
  v36 = v0;
  if (*(v0 + 1137) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 984) = v1;
    *v1 = v0;
    v1[1] = sub_222715D5C;
    v2 = *(v0 + 792);
    v3 = *(v0 + 784);
    v4 = *(v0 + 776);
    v5 = *(v0 + 768);
    v6 = *(v0 + 760);
    v7 = *(v0 + 752);
    v8 = *(v0 + 744);
    v9 = *(v0 + 736);
    v10 = *(v0 + 720);
    v39 = *(v0 + 808);
    v38 = v2;

    return sub_2227188BC(v10, v9, v8, v7, v6, v5, v4, v3);
  }

  v12 = *(v0 + 792);
  v13 = *(v0 + 784);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v33 = *(v0 + 968);
  v34 = *(v0 + 752);
  v17 = *(v0 + 744);
  v18 = *(v0 + 736);
  v19 = *(v0 + 720);
  *(v0 + 1000) = __swift_project_boxed_opaque_existential_1(*(v0 + 816), *(*(v0 + 816) + 24));
  v20 = sub_2226A6000(v18, v17, v16, v15, v14, v13, v12);
  *(v0 + 1008) = v20;
  v21 = v19;
  v22 = v33;
  sub_22271191C(v21);
  v23 = sub_22273936C();

  [v20 setItemIdentifiers_];

  if (v34)
  {
    v24 = *(v0 + 752);

    v25 = [v20 additionalQueryParams];
    if (v25)
    {
      v26 = v25;
      v27 = sub_22273910C();
    }

    else
    {
      v27 = sub_222732D1C(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v27;
    sub_222723B9C(v24, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v35);

    if (v33)
    {
    }

    v29 = sub_2227390FC();

    [v20 setAdditionalQueryParams_];

    v22 = 0;
  }

  *(v0 + 1016) = v22;
  v30 = sub_2226A85D8(*(v0 + 744));
  [v20 setAccount_];

  v31 = [v20 type];
  v32 = swift_task_alloc();
  *(v0 + 1024) = v32;
  *v32 = v0;
  v32[1] = sub_222716164;

  return sub_2226A6FB0(v31);
}

uint64_t sub_222715D5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 992) = a1;

    return MEMORY[0x2822009F8](sub_222715F78, 0, 0);
  }
}

uint64_t sub_222715F78()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  v4 = sub_22273946C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_22266BCCC(v3, v0 + 256);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  sub_222634290((v0 + 256), (v5 + 5));

  sub_22269994C(0, 0, v2, &unk_222745810, v5);

  **(v0 + 704) = *(v0 + 992);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_222716164(uint64_t a1)
{
  *(*v1 + 1032) = a1;

  return MEMORY[0x2822009F8](sub_222716264, 0, 0);
}

uint64_t sub_222716264()
{
  v17 = v0;
  v1 = *(v0 + 1008);

  v2 = [v1 additionalQueryParams];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22273910C();
  }

  else
  {
    v4 = sub_222732D1C(MEMORY[0x277D84F90]);
  }

  v5 = *(v0 + 1032);
  v6 = *(v0 + 1016);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v4;
  sub_222723B9C(v5, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v16);

  if (v6)
  {
  }

  else
  {
    v9 = *(v0 + 1008);
    v10 = *(v0 + 808);
    v11 = sub_2227390FC();

    [v9 setAdditionalQueryParams_];

    if (v10)
    {
      v12 = sub_22273916C();
    }

    else
    {
      v12 = 0;
    }

    [*(v0 + 1008) setAppDistributionCountryCodeOverride_];

    v13 = swift_task_alloc();
    *(v0 + 1040) = v13;
    *v13 = v0;
    v13[1] = sub_22271646C;
    v14 = *(v0 + 1008);
    v15 = *(v0 + 760);

    return sub_2226A69BC(v14, v15);
  }
}

uint64_t sub_22271646C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1048) = a1;
  *(v3 + 1056) = v1;

  if (v1)
  {
    v4 = sub_222717154;
  }

  else
  {
    v4 = sub_222716584;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222716584()
{
  v1 = sub_22273919C();
  v3 = v2;
  if (v1 == sub_22273919C() && v3 == v4)
  {

    goto LABEL_9;
  }

  v6 = sub_222739B4C();

  if (v6)
  {
LABEL_9:
    v29 = *(v0 + 1048);
    v30 = *(v0 + 760);
    __swift_project_boxed_opaque_existential_1(*(v0 + 824), *(*(v0 + 824) + 24));
    *(v0 + 1064) = sub_2226FBB60(v29, v30);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    v32 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730, MEMORY[0x277D224B8]);
    v33 = swift_task_alloc();
    *(v0 + 1072) = v33;
    *v33 = v0;
    v33[1] = sub_22271728C;
    v28 = v0 + 696;
    v34 = v31;
    v35 = v32;
    goto LABEL_15;
  }

  v7 = *(v0 + 1136);
  __swift_project_boxed_opaque_existential_1(*(v0 + 824), *(*(v0 + 824) + 24));
  if (v7 == 1)
  {
    v69 = *(v0 + 952);
    v64 = *(v0 + 936);
    v61 = *(v0 + 928);
    v59 = *(v0 + 1048);
    v60 = *(v0 + 920);
    v8 = *(v0 + 912);
    v9 = *(v0 + 904);
    v10 = *(v0 + 896);
    v11 = *(v0 + 856);
    v12 = *(v0 + 848);
    v66 = *(v0 + 792);
    v67 = *(v0 + 944);
    v65 = *(v0 + 784);
    v62 = *(v0 + 768);
    v63 = *(v0 + 776);
    v68 = *(v0 + 760);
    sub_222738D9C();
    sub_22273900C();
    v13 = sub_22273919C();
    v14 = MEMORY[0x277D837D0];
    *(v0 + 480) = MEMORY[0x277D837D0];
    v15 = v14;
    *(v0 + 456) = v13;
    *(v0 + 464) = v16;
    sub_222738FEC();
    v17 = *(v11 + 8);
    v17(v10, v12);
    sub_222660468(v0 + 456, &qword_27D0130C0, &unk_2227413B0);
    v18 = sub_22273919C();
    *(v0 + 512) = v15;
    *(v0 + 488) = v18;
    *(v0 + 496) = v19;
    sub_222738FEC();
    v17(v9, v12);
    sub_222660468(v0 + 488, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
    *(v0 + 520) = v59;
    sub_222738FEC();
    v20 = v8;
    v21 = v12;
    v17(v20, v12);
    sub_222660468(v0 + 520, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    sub_222738FEC();
    v17(v60, v12);
    sub_222660468(v0 + 552, &qword_27D0130C0, &unk_2227413B0);
    v22 = MEMORY[0x277D837D0];
    *(v0 + 608) = MEMORY[0x277D837D0];
    *(v0 + 584) = v62;
    *(v0 + 592) = v63;

    sub_222738FEC();
    v17(v61, v21);
    sub_222660468(v0 + 584, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 640) = v22;
    *(v0 + 616) = v65;
    *(v0 + 624) = v66;

    sub_222738FEC();
    v17(v64, v21);
    sub_222660468(v0 + 616, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 672) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
    *(v0 + 648) = v68;

    sub_222738FEC();
    v17(v67, v21);
    sub_222660468(v0 + 648, &qword_27D0130C0, &unk_2227413B0);
    sub_222712368(v69, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
    v23 = sub_22273872C();
    v24 = MEMORY[0x277D21FB0];
    *(v0 + 160) = v23;
    *(v0 + 168) = v24;
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_22273871C();
    type metadata accessor for ASCLockupContainer();
    sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    *(v0 + 200) = v23;
    *(v0 + 208) = v24;
    __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_22273871C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
    *(v0 + 1088) = sub_222738E6C();

    v17(v69, v21);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
    v26 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8, MEMORY[0x277D224B8]);
    v27 = swift_task_alloc();
    *(v0 + 1096) = v27;
    *v27 = v0;
    v27[1] = sub_222717708;
    v28 = v0 + 688;
  }

  else
  {
    v36 = *(v0 + 952);
    v37 = *(v0 + 944);
    v38 = *(v0 + 856);
    v39 = *(v0 + 848);
    v70 = *(v0 + 832);
    sub_222738D9C();
    sub_22273900C();
    v40 = sub_22273919C();
    v41 = MEMORY[0x277D837D0];
    *(v0 + 320) = MEMORY[0x277D837D0];
    *(v0 + 296) = v40;
    *(v0 + 304) = v42;
    sub_222738FEC();
    v43 = *(v38 + 8);
    v43(v37, v39);
    sub_222660468(v0 + 296, &qword_27D0130C0, &unk_2227413B0);
    v44 = sub_22273919C();
    *(v0 + 352) = v41;
    *(v0 + 328) = v44;
    *(v0 + 336) = v45;
    sub_222738FEC();
    v43(v36, v39);
    sub_222660468(v0 + 328, &qword_27D0130C0, &unk_2227413B0);
    v46 = v70;
    if (v70)
    {
      v47 = sub_22273919C();
      v46 = MEMORY[0x277D837D0];
    }

    else
    {
      v47 = 0;
      v48 = 0;
      *(v0 + 376) = 0;
    }

    v49 = *(v0 + 1048);
    v71 = *(v0 + 888);
    v50 = *(v0 + 880);
    v51 = *(v0 + 872);
    v52 = *(v0 + 864);
    v53 = *(v0 + 848);
    v54 = *(v0 + 760);
    *(v0 + 360) = v47;
    *(v0 + 368) = v48;
    *(v0 + 384) = v46;
    sub_222738FEC();
    v43(v52, v53);
    sub_222660468(v0 + 360, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
    *(v0 + 392) = v49;
    sub_222738FEC();
    v43(v51, v53);
    sub_222660468(v0 + 392, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
    *(v0 + 424) = v54;

    sub_222738FEC();
    v43(v50, v53);
    sub_222660468(v0 + 424, &qword_27D0130C0, &unk_2227413B0);
    sub_222712368(v71, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
    v55 = sub_22273872C();
    v56 = MEMORY[0x277D21FB0];
    *(v0 + 40) = v55;
    *(v0 + 48) = v56;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_22273871C();
    type metadata accessor for ASCLockupContainer();
    sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v0 + 80) = v55;
    *(v0 + 88) = v56;
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_22273871C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
    *(v0 + 1112) = sub_222738E6C();

    v43(v71, v53);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
    v26 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8, MEMORY[0x277D224B8]);
    v57 = swift_task_alloc();
    *(v0 + 1120) = v57;
    *v57 = v0;
    v57[1] = sub_222717B30;
    v28 = v0 + 680;
  }

  v34 = v25;
  v35 = v26;
LABEL_15:

  return MEMORY[0x282180360](v28, v34, v35);
}

uint64_t sub_222717154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22271728C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 1080) = *(v2 + 696);

    return MEMORY[0x2822009F8](sub_2227174C4, 0, 0);
  }
}

uint64_t sub_2227174C4()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227440C0;
  *(v4 + 32) = v1;
  v5 = sub_22273946C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_22266BCCC(v3, v0 + 216);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_222634290((v0 + 216), (v6 + 5));
  v7 = v1;
  sub_22269994C(0, 0, v2, &unk_222745800, v6);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2227440C0;
  *(v8 + 32) = v7;
  **(v0 + 704) = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_222717708()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 1104) = *(v2 + 688);

    return MEMORY[0x2822009F8](sub_222717940, 0, 0);
  }
}

uint64_t sub_222717940()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  v4 = sub_22273946C();
  v5 = *(*(v4 - 8) + 56);

  v5(v2, 1, 1, v4);
  sub_22266BCCC(v3, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  sub_222634290((v0 + 96), (v6 + 5));
  sub_22269994C(0, 0, v2, &unk_2227457F8, v6);

  **(v0 + 704) = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_222717B30()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 1128) = *(v2 + 680);

    return MEMORY[0x2822009F8](sub_222717D68, 0, 0);
  }
}

uint64_t sub_222717D68()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  v4 = sub_22273946C();
  v5 = *(*(v4 - 8) + 56);

  v5(v2, 1, 1, v4);
  sub_22266BCCC(v3, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  sub_222634290((v0 + 96), (v6 + 5));
  sub_22269994C(0, 0, v2, &unk_2227457F8, v6);

  **(v0 + 704) = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_222717F58()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222718050, 0, 0);
}

uint64_t sub_222718050()
{
  v0[2] = 0;
  os_eligibility_get_domain_answer();
  v1 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_bag;
  v0[7] = v0[2];
  v0[8] = v1;
  v2 = sub_22273916C();
  sub_222738B0C();

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2227181AC;
  v4 = v0[4];

  return MEMORY[0x282180268](v0 + 14, sub_2226A9B54, 0, v4);
}

uint64_t sub_2227181AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  v5 = *(v3 + 8);
  *(v1 + 80) = v5;
  *(v1 + 88) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_222718344, 0, 0);
}

uint64_t sub_222718344()
{
  *(v0 + 114) = *(v0 + 112);
  v1 = sub_22273916C();
  sub_222738B0C();

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_22271847C;
  v3 = *(v0 + 32);

  return MEMORY[0x282180268](v0 + 113, sub_2226A9B54, 0, v3);
}

uint64_t sub_22271847C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_222718610, 0, 0);
}

uint64_t sub_222718610()
{
  if (*(v0 + 114) == 1 && (*(v0 + 113) & 1) == 0 && *(v0 + 56) == 4)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appDistribution), *(*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appDistribution + 24));
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_222718770;

    return sub_222711C84();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_222718770(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2227188BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = v13;
  *(v9 + 112) = v8;
  *(v9 + 88) = v12;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 120) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22271894C, 0, 0);
}

uint64_t sub_22271894C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v14 = *(v0 + 72);
  v15 = *(v0 + 96);
  v4 = *(v0 + 64);
  v13 = *(v0 + 48);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v2;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = v13;
  *(v9 + 64) = v4;
  *(v9 + 72) = v14;
  *(v9 + 88) = v3;
  *(v9 + 96) = v15;
  *(v9 + 112) = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_222718AC8;

  return MEMORY[0x282200740](v0 + 16, v8, v10, 0, 0, &unk_222745820, v9, v8);
}

uint64_t sub_222718AC8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_222718BE4;
  }

  else
  {

    v2 = sub_22267B520;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222718BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222718C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 568) = v16;
  *(v8 + 552) = v15;
  *(v8 + 536) = v14;
  *(v8 + 520) = v13;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 488) = a5;
  *(v8 + 496) = a6;
  *(v8 + 472) = a3;
  *(v8 + 480) = a4;
  *(v8 + 456) = a1;
  *(v8 + 464) = a2;
  sub_222738DAC();
  *(v8 + 576) = swift_task_alloc();
  v9 = sub_22273903C();
  *(v8 + 584) = v9;
  *(v8 + 592) = *(v9 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145E0, &qword_2227457B0);
  *(v8 + 680) = v10;
  *(v8 + 688) = *(v10 - 8);
  *(v8 + 696) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222718E6C, 0, 0);
}

uint64_t sub_222718E6C()
{
  v1 = *(v0 + 472);
  *(v0 + 48) = v1;
  v2 = v0 + 48;
  v3 = *(v0 + 464);
  *(v0 + 704) = 0x2835CE868;
  *(v0 + 56) = 0x2835CE868;
  v34 = *v3;
  v33 = sub_22273946C();
  v4 = *(v33 - 8);
  v32 = *(v4 + 56);
  v31 = (v4 + 48);
  v30 = (v4 + 8);
  v5 = v1;
  v6 = @"appDistributionApp";
  v7 = 0;
  v8 = 0;
  do
  {
    v43 = v7;
    v10 = *(v0 + 672);
    v40 = *(v0 + 568);
    v41 = *(v0 + 664);
    v39 = *(v0 + 552);
    v37 = *(v0 + 536);
    v38 = *(v0 + 544);
    v11 = *(v0 + 528);
    v12 = *(v0 + 512);
    v35 = *(v0 + 504);
    v36 = *(v0 + 520);
    v13 = *(v0 + 488);
    v14 = *(v0 + 496);
    v15 = *(v0 + 480);
    v16 = *(v2 + 8 * v8);
    v32(v10, 1, 1, v33);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v15;
    *(v17 + 40) = v13;
    *(v17 + 48) = v16;
    *(v17 + 56) = v14;
    *(v17 + 64) = v35;
    *(v17 + 72) = v12;
    *(v17 + 80) = v36;
    *(v17 + 88) = v11;
    *(v17 + 96) = v37;
    *(v17 + 104) = v38;
    *(v17 + 112) = v39;
    *(v17 + 128) = v40;
    sub_2226A5C24(v10, v41);
    LODWORD(v10) = (*v31)(v41, 1, v33);
    v42 = v16;
    v18 = v15;

    v19 = v14;

    v20 = *(v0 + 664);
    if (v10 == 1)
    {
      sub_222660468(*(v0 + 664), &unk_27D013050, &qword_222741370);
    }

    else
    {
      sub_22273945C();
      (*v30)(v20, v33);
    }

    v2 = v0 + 48;
    if (*(v17 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_2227393FC();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
    v24 = v23 | v21;
    if (v23 | v21)
    {
      v24 = v0 + 144;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = v21;
      *(v0 + 168) = v23;
    }

    v9 = *(v0 + 672);
    v7 = 1;
    *(v0 + 400) = 1;
    *(v0 + 408) = v24;
    *(v0 + 416) = v34;
    swift_task_create();

    sub_222660468(v9, &unk_27D013050, &qword_222741370);
    v8 = 1;
  }

  while ((v43 & 1) == 0);
  type metadata accessor for Kind(0);
  *(v0 + 712) = v25;
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273947C();
  *(v0 + 720) = MEMORY[0x277D84F98];
  v26 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0, MEMORY[0x277D85838]);
  v27 = swift_task_alloc();
  *(v0 + 728) = v27;
  *v27 = v0;
  v27[1] = sub_2227192F4;
  v28 = *(v0 + 680);

  return MEMORY[0x282200308](v0 + 424, v28, v26);
}

uint64_t sub_2227192F4()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    (*(v2[86] + 8))(v2[87], v2[85]);

    v3 = sub_222719E14;
  }

  else
  {
    v3 = sub_222719430;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222719430()
{
  v2 = v0[53];
  v3 = v0[90];
  if (v2)
  {
    v4 = v0[54];
    v5 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[56] = v3;
    v7 = sub_222694708();
    v9 = *(v3 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      if (*(v0[90] + 24) < v12)
      {
        sub_22268B030(v12, isUniquelyReferenced_nonNull_native);
        v7 = sub_222694708();
        if ((v1 & 1) != (v13 & 1))
        {

          return sub_222739B8C();
        }

LABEL_16:
        v42 = v0[56];
        if (v1)
        {
LABEL_17:
          *(v42[7] + 8 * v7) = v4;

LABEL_26:
          v0[90] = v42;
          v48 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0, MEMORY[0x277D85838]);
          v49 = swift_task_alloc();
          v0[91] = v49;
          *v49 = v0;
          v49[1] = sub_2227192F4;
          v50 = v0[85];

          return MEMORY[0x282200308](v0 + 53, v50, v48);
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }
    }

    v45 = v7;
    sub_22268D4B8();
    v7 = v45;
    v42 = v0[56];
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_24:
    v42[(v7 >> 6) + 8] |= 1 << v7;
    *(v42[6] + 8 * v7) = v5;
    *(v42[7] + 8 * v7) = v4;

    v46 = v42[2];
    v11 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (!v11)
    {
      v42[2] = v47;
      goto LABEL_26;
    }

    __break(1u);
    return MEMORY[0x282180360](v39, v40, v41);
  }

  (*(v0[86] + 8))(v0[87], v0[85]);
  if (*(v3 + 16))
  {
    v15 = sub_222694708();
    v16 = v0[90];
    if (v17)
    {
      if (*(v3 + 16))
      {
        v18 = *(*(v16 + 56) + 8 * v15);

        v19 = sub_222694708();
        if (v20)
        {
          v63 = v0[82];
          v53 = v0[78];
          v52 = v0[77];
          v21 = v0[76];
          v22 = v0[75];
          v23 = v0[74];
          v51 = v0[73];
          v60 = v0[68];
          v61 = v0[81];
          v58 = v0[80];
          v59 = v0[67];
          v57 = v0[66];
          v55 = v0[79];
          v56 = v0[65];
          v62 = v0[64];
          v24 = v0[60];
          v54 = *(*(v16 + 56) + 8 * v19);

          __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
          sub_222738D9C();
          sub_22273900C();
          v25 = sub_22273919C();
          v26 = MEMORY[0x277D837D0];
          v0[25] = MEMORY[0x277D837D0];
          v27 = v26;
          v0[22] = v25;
          v0[23] = v28;
          sub_222738FEC();
          v29 = *(v23 + 8);
          v29(v22, v51);
          sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
          v30 = sub_22273919C();
          v0[29] = v27;
          v0[26] = v30;
          v0[27] = v31;
          sub_222738FEC();
          v29(v21, v51);
          sub_222660468((v0 + 26), &qword_27D0130C0, &unk_2227413B0);
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
          v0[33] = v32;
          v0[30] = v18;
          sub_222738FEC();
          v29(v52, v51);
          sub_222660468((v0 + 30), &qword_27D0130C0, &unk_2227413B0);
          v0[37] = v32;
          v0[34] = v54;
          sub_222738FEC();
          v29(v53, v51);
          sub_222660468((v0 + 34), &qword_27D0130C0, &unk_2227413B0);
          v33 = MEMORY[0x277D837D0];
          v0[41] = MEMORY[0x277D837D0];
          v0[38] = v56;
          v0[39] = v57;

          sub_222738FEC();
          v29(v55, v51);
          sub_222660468((v0 + 38), &qword_27D0130C0, &unk_2227413B0);
          v0[45] = v33;
          v0[42] = v59;
          v0[43] = v60;

          sub_222738FEC();
          v29(v58, v51);
          sub_222660468((v0 + 42), &qword_27D0130C0, &unk_2227413B0);
          v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
          v0[46] = v62;

          sub_222738FEC();
          v29(v61, v51);
          sub_222660468((v0 + 46), &qword_27D0130C0, &unk_2227413B0);
          sub_222712368(v63, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
          v34 = sub_22273872C();
          v35 = MEMORY[0x277D21FB0];
          v0[11] = v34;
          v0[12] = v35;
          __swift_allocate_boxed_opaque_existential_1(v0 + 8);
          sub_22273871C();
          type metadata accessor for ASCLockupContainer();
          sub_222738E6C();

          __swift_destroy_boxed_opaque_existential_1(v0 + 8);
          v0[16] = v34;
          v0[17] = v35;
          __swift_allocate_boxed_opaque_existential_1(v0 + 13);
          sub_22273871C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
          v0[93] = sub_222738E6C();

          v29(v63, v51);
          __swift_destroy_boxed_opaque_existential_1(v0 + 13);
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
          v37 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8, MEMORY[0x277D224B8]);
          v38 = swift_task_alloc();
          v0[94] = v38;
          *v38 = v0;
          v38[1] = sub_222719F28;
          v39 = (v0 + 55);
          v40 = v36;
          v41 = v37;

          return MEMORY[0x282180360](v39, v40, v41);
        }
      }
    }
  }

  sub_2227247C4();
  swift_allocError();
  *v43 = 1;
  swift_willThrow();

  v44 = v0[1];

  return v44();
}

uint64_t sub_222719E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222719F28()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 456);

    *v5 = *(v2 + 440);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_22271A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v15;
  *(v8 + 240) = v13;
  *(v8 + 256) = v14;
  *(v8 + 224) = v12;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a1;
  *(v8 + 184) = a4;
  sub_2227381BC();
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  *(v8 + 288) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  *(v8 + 296) = v9;
  *(v8 + 304) = *(v9 - 8);
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271A304, 0, 0);
}

uint64_t sub_22271A304()
{
  v0[40] = __swift_project_boxed_opaque_existential_1((v0[23] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher), *(v0[23] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher + 24));
  v1 = sub_22273916C();
  sub_222738B0C();

  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_22271A41C;
  v3 = v0[37];

  return MEMORY[0x282180268](v0 + 49, sub_2226A9B54, 0, v3);
}

uint64_t sub_22271A41C()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 304);
  v4 = *(*v0 + 296);

  (*(v3 + 8))(v2, v4);
  *(v1 + 393) = *(v1 + 392);

  return MEMORY[0x2822009F8](sub_22271A57C, 0, 0);
}

uint64_t sub_22271A57C()
{
  v23 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = sub_2226A6000(*(v0 + 200), *(v0 + 208), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256));
  *(v0 + 336) = v3;
  sub_22271191C(v2);
  v4 = sub_22273936C();

  [v3 setItemIdentifiers_];

  if (v1)
  {
    v5 = *(v0 + 216);

    v6 = [v3 additionalQueryParams];
    if (v6)
    {
      v7 = v6;
      v8 = sub_22273910C();
    }

    else
    {
      v8 = sub_222732D1C(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v8;
    sub_222723B9C(v5, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v22);

    v10 = sub_2227390FC();

    [v3 setAdditionalQueryParams_];
  }

  *(v0 + 344) = 0;
  v11 = *(v0 + 320);
  if (*(v0 + 393) == 1)
  {
    v12 = *(v0 + 288);
    v13 = type metadata accessor for AMSMediaFetcher(0);
    __swift_project_boxed_opaque_existential_1((v11 + *(v13 + 24)), *(v11 + *(v13 + 24) + 24));
    sub_2227384EC();
    v14 = sub_222738CFC();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v12, 1, v14);
    v17 = *(v0 + 288);
    if (v16 == 1)
    {
      sub_222660468(*(v0 + 288), &unk_27D013A90, &unk_222741DC0);
      v18 = 0;
    }

    else
    {
      v18 = MEMORY[0x223DBDFF0]();
      (*(v15 + 8))(v17, v14);
    }
  }

  else
  {
    v18 = sub_2226A85D8(*(v0 + 208));
  }

  [v3 setAccount_];

  v19 = [v3 type];
  v20 = swift_task_alloc();
  *(v0 + 352) = v20;
  *v20 = v0;
  v20[1] = sub_22271A8C0;

  return sub_2226A6FB0(v19);
}

uint64_t sub_22271A8C0(uint64_t a1)
{
  *(*v1 + 360) = a1;

  return MEMORY[0x2822009F8](sub_22271A9C0, 0, 0);
}

uint64_t sub_22271A9C0()
{
  v17 = v0;
  v1 = *(v0 + 336);

  v2 = [v1 additionalQueryParams];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22273910C();
  }

  else
  {
    v4 = sub_222732D1C(MEMORY[0x277D84F90]);
  }

  v5 = *(v0 + 360);
  v6 = *(v0 + 344);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v4;
  sub_222723B9C(v5, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v16);
  if (v6)
  {
  }

  else
  {
    v9 = *(v0 + 336);
    v10 = *(v0 + 272);

    v11 = sub_2227390FC();

    [v9 setAdditionalQueryParams_];

    if (v10)
    {
      v12 = sub_22273916C();
    }

    else
    {
      v12 = 0;
    }

    [*(v0 + 336) setAppDistributionCountryCodeOverride_];

    v13 = swift_task_alloc();
    *(v0 + 368) = v13;
    *v13 = v0;
    v13[1] = sub_22271ABCC;
    v14 = *(v0 + 336);
    v15 = *(v0 + 224);

    return sub_2226A69BC(v14, v15);
  }
}

uint64_t sub_22271ABCC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = sub_22271AD94;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = sub_22271ACF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22271ACF4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  *v3 = v2;
  v3[1] = v1;
  v4 = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22271AD94()
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = *(v0 + 200);
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  type metadata accessor for Kind(0);
  *(v0 + 40) = v4;
  *(v0 + 16) = v2;
  v5 = v2;
  sub_22273816C();
  sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  *(v0 + 72) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v6, v7);
  sub_22273816C();
  sub_222660468(v0 + 48, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  *(v0 + 144) = v1;
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(v0 + 152);
  *(v0 + 160) = v10;
  sub_222724184(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);
  v11 = sub_22273723C();

  v12 = sub_22273919C();
  if (!*(v11 + 16))
  {

    goto LABEL_10;
  }

  v14 = sub_222688818(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    goto LABEL_12;
  }

  sub_22262BF70(*(v11 + 56) + 32 * v14, v0 + 80);

  if (!*(v0 + 104))
  {
LABEL_12:
    sub_222660468(v0 + 80, &qword_27D0130C0, &unk_2227413B0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  if (swift_dynamicCast())
  {

    v17 = *(v0 + 168);
    goto LABEL_14;
  }

LABEL_13:
  v18 = *(v0 + 376);
  v17 = sub_222732F68(MEMORY[0x277D84F90]);

LABEL_14:
  v19 = *(v0 + 200);
  v20 = *(v0 + 176);
  *v20 = v19;
  v20[1] = v17;
  v21 = v19;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22271B1C8(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a6;
  v44 = a5;
  v41 = a4;
  v42 = a2;
  v40 = a1;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = &v6[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service];
  __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service], *&v6[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24]);
  off_2835CACE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014568, &qword_2227456B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = ASCSignpostTagUnique();
  v14 = sub_2226DDE20(inited);
  swift_setDeallocating();
  v15 = [objc_opt_self() currentConnection];
  v16 = a3;
  v17 = sub_2226A9E18(v15, 0, 0, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher;
  sub_22266BCCC(v7 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController, &v48);
  sub_22266BCCC(v7 + v24, v47);
  sub_22266BCCC(v12, v46);
  v25 = swift_allocObject();
  *(v25 + 16) = v41;
  v26 = v40;
  *(v25 + 24) = v7;
  *(v25 + 32) = v26;
  *(v25 + 40) = v42;
  *(v25 + 48) = v16;
  *(v25 + 56) = v14;
  *(v25 + 64) = v17;
  *(v25 + 72) = v19;
  *(v25 + 80) = v21;
  *(v25 + 88) = v23;
  sub_222634290(&v48, v25 + 96);
  sub_222634290(v47, v25 + 136);
  sub_222634290(v46, v25 + 176);
  *(v25 + 216) = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
  v27 = v16;
  v28 = v7;

  v29 = sub_222738F2C();
  v30 = sub_22273946C();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_222745760;
  v31[5] = v25;
  v31[6] = v29;

  sub_2226D4E54(0, 0, v11, &unk_222745768, v31);

  v32 = swift_allocObject();
  v33 = v45;
  *(v32 + 16) = v44;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_222725070;
  *(v34 + 24) = v32;
  *(v34 + 32) = "getLockup(forBundleID:withContext:enableAppDistribution:withReplyHandler:)";
  *(v34 + 40) = 74;
  *(v34 + 48) = 2;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_222725070;
  *(v35 + 24) = v32;
  *(v35 + 32) = "getLockup(forBundleID:withContext:enableAppDistribution:withReplyHandler:)";
  *(v35 + 40) = 74;
  *(v35 + 48) = 2;
  v36 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v37 = sub_22273955C();
  v49 = v36;
  v50 = MEMORY[0x277D225C0];
  *&v48 = v37;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(&v48);
}

uint64_t sub_22271B64C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 440) = v14;
  *(v8 + 448) = v15;
  *(v8 + 424) = v13;
  *(v8 + 408) = v12;
  *(v8 + 392) = a7;
  *(v8 + 400) = a8;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 360) = a3;
  *(v8 + 368) = a4;
  *(v8 + 624) = a2;
  *(v8 + 352) = a1;
  sub_222738DAC();
  *(v8 + 456) = swift_task_alloc();
  v9 = sub_22273903C();
  *(v8 + 464) = v9;
  *(v8 + 472) = *(v9 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  *(v8 + 528) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271B7DC, 0, 0);
}

id sub_22271B7DC()
{
  v31 = v0;
  if (*(v0 + 624) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 536) = v1;
    *v1 = v0;
    v1[1] = sub_22271BB5C;

    return sub_222717F58();
  }

  v3 = *(v0 + 392);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  __swift_project_boxed_opaque_existential_1(*(v0 + 440), *(*(v0 + 440) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = v5;
  *(inited + 40) = v4;

  v29 = sub_2226DD5A8(inited);
  swift_setDeallocating();
  sub_22269E384(inited + 32);
  *(v0 + 560) = @"app";
  v7 = -1;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v3 + 56);
  v10 = (63 - v8) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_13:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      result = [objc_opt_self() requestDidBeginWithTag_];
      if (!v9)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v3 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  v15 = *(v0 + 416);
  v14 = *(v0 + 424);
  v17 = *(v0 + 400);
  v16 = *(v0 + 408);
  v19 = *(v0 + 384);
  v18 = *(v0 + 392);

  v20 = sub_2226A6000(@"app", v19, v18, v17, v16, v15, v14);
  *(v0 + 568) = v20;
  v21 = *(v29 + 16);
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = sub_2226959D0(*(v29 + 16), 0);
  v23 = sub_2226E96F0(&v30, v22 + 4, v21, v29);
  sub_2226342B0(v30);
  if (v23 != v21)
  {
    __break(1u);
LABEL_18:
  }

  v24 = *(v0 + 384);
  v25 = sub_22273936C();

  [v20 setBundleIdentifiers_];

  v26 = sub_2226A85D8(v24);
  [v20 setAccount_];

  [v20 setAppDistributionCountryCodeOverride_];
  v27 = swift_task_alloc();
  *(v0 + 576) = v27;
  *v27 = v0;
  v27[1] = sub_22271C40C;
  v28 = *(v0 + 392);

  return sub_2226A69BC(v20, v28);
}

uint64_t sub_22271BB5C(char a1)
{
  *(*v1 + 625) = a1;

  return MEMORY[0x2822009F8](sub_22271BC5C, 0, 0);
}

id sub_22271BC5C()
{
  v39 = v0;
  if (*(v0 + 625) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 544) = v1;
    *v1 = v0;
    v1[1] = sub_22271BFF8;
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v41 = 0;
    v42 = 0;

    return sub_22271CEB8(v9, v8, v6, v7, v4, v5, v2, v3);
  }

  v11 = *(v0 + 392);
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  __swift_project_boxed_opaque_existential_1(*(v0 + 440), *(*(v0 + 440) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = v13;
  *(inited + 40) = v12;

  v37 = sub_2226DD5A8(inited);
  swift_setDeallocating();
  sub_22269E384(inited + 32);
  *(v0 + 560) = @"app";
  v15 = -1;
  v16 = -1 << *(v11 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v11 + 56);
  v18 = (63 - v16) >> 6;

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_13:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      result = [objc_opt_self() requestDidBeginWithTag_];
      if (!v17)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v11 + 56 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_13;
    }
  }

  v23 = *(v0 + 416);
  v22 = *(v0 + 424);
  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v27 = *(v0 + 384);
  v26 = *(v0 + 392);

  v28 = sub_2226A6000(@"app", v27, v26, v25, v24, v23, v22);
  *(v0 + 568) = v28;
  v29 = *(v37 + 16);
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = sub_2226959D0(*(v37 + 16), 0);
  v31 = sub_2226E96F0(&v38, v30 + 4, v29, v37);
  sub_2226342B0(v38);
  if (v31 != v29)
  {
    __break(1u);
LABEL_18:
  }

  v32 = *(v0 + 384);
  v33 = sub_22273936C();

  [v28 setBundleIdentifiers_];

  v34 = sub_2226A85D8(v32);
  [v28 setAccount_];

  [v28 setAppDistributionCountryCodeOverride_];
  v35 = swift_task_alloc();
  *(v0 + 576) = v35;
  *v35 = v0;
  v35[1] = sub_22271C40C;
  v36 = *(v0 + 392);

  return sub_2226A69BC(v28, v36);
}

uint64_t sub_22271BFF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 552) = a1;

    return MEMORY[0x2822009F8](sub_22271C1A8, 0, 0);
  }
}

uint64_t sub_22271C1A8()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 528);
  v3 = *(v0 + 432);
  sub_2226AF8EC(*(v0 + 392));
  sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
  v4 = sub_2227394BC();

  v5 = [v1 lockupWithSignpostTags_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2227440C0;
  *(v6 + 32) = v5;
  v7 = sub_22273946C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_22266BCCC(v3, v0 + 144);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  sub_222634290((v0 + 144), (v8 + 5));
  v9 = *(v0 + 552);
  v10 = *(v0 + 528);
  v11 = *(v0 + 352);
  v12 = v5;
  sub_22269994C(0, 0, v10, &unk_222745790, v8);

  *v11 = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22271C40C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v5 = sub_22271CB84;
  }

  else
  {
    *(v4 + 592) = a1;
    v5 = sub_22271C534;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22271C534()
{
  v1 = *(v0 + 504);
  v20 = *(v0 + 592);
  v21 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 464);
  v7 = *(v0 + 448);
  v22 = *(v0 + 392);
  v23 = *(v0 + 520);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_222738D9C();
  sub_22273900C();
  v8 = sub_22273919C();
  v9 = MEMORY[0x277D837D0];
  *(v0 + 208) = MEMORY[0x277D837D0];
  *(v0 + 184) = v8;
  *(v0 + 192) = v10;
  sub_222738FEC();
  v11 = *(v5 + 8);
  v11(v4, v6);
  sub_222660468(v0 + 184, &qword_27D0130C0, &unk_2227413B0);
  v12 = sub_22273919C();
  *(v0 + 240) = v9;
  *(v0 + 216) = v12;
  *(v0 + 224) = v13;
  sub_222738FEC();
  v11(v2, v6);
  sub_222660468(v0 + 216, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  sub_222738FEC();
  v11(v3, v6);
  sub_222660468(v0 + 248, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  *(v0 + 280) = v20;
  sub_222738FEC();
  v11(v1, v6);
  sub_222660468(v0 + 280, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
  *(v0 + 312) = v22;

  sub_222738FEC();
  v11(v21, v6);
  sub_222660468(v0 + 312, &qword_27D0130C0, &unk_2227413B0);
  sub_222712368(v23, &unk_2835CB828, &qword_27D0141D0, &unk_222744ED0, sub_222724440);
  v14 = sub_22273872C();
  v15 = MEMORY[0x277D21FB0];
  *(v0 + 88) = v14;
  *(v0 + 96) = v15;
  __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  sub_22273871C();
  sub_22262E364(0, &qword_281312B50, off_2784B0650);
  *(v0 + 600) = sub_222738E6C();

  v11(v23, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
  v17 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730, MEMORY[0x277D224B8]);
  v18 = swift_task_alloc();
  *(v0 + 608) = v18;
  *v18 = v0;
  v18[1] = sub_22271C9B8;

  return MEMORY[0x282180360](v0 + 344, v16, v17);
}

uint64_t sub_22271C9B8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 616) = *(v2 + 344);

    return MEMORY[0x2822009F8](sub_22271CC54, 0, 0);
  }
}

uint64_t sub_22271CB84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22271CC54()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 528);
  v3 = *(v0 + 432);
  sub_2226AF8EC(*(v0 + 392));
  sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
  v4 = sub_2227394BC();

  v5 = [v1 lockupWithSignpostTags_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2227440C0;
  *(v6 + 32) = v5;
  v7 = sub_22273946C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_22266BCCC(v3, v0 + 104);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  sub_222634290((v0 + 104), (v8 + 5));
  v9 = *(v0 + 616);
  v10 = *(v0 + 528);
  v11 = *(v0 + 352);
  v12 = v5;
  sub_22269994C(0, 0, v10, &unk_222745778, v8);

  *v11 = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22271CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v13;
  v9[13] = v8;
  v9[10] = a8;
  v9[11] = v12;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v9[14] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22271CF44, 0, 0);
}

uint64_t sub_22271CF44()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  v11 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  *(v6 + 48) = v11;
  *(v6 + 64) = v12;
  *(v6 + 80) = v13;
  *(v6 + 96) = v3;
  *(v6 + 104) = v1;
  v8 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_22271D0A4;

  return MEMORY[0x282200740](v0 + 16, v5, v8, 0, 0, &unk_2227457A8, v6, v5);
}

uint64_t sub_22271D0A4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22271D1C0;
  }

  else
  {

    v2 = sub_22272507C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22271D1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22271D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 560) = v16;
  *(v8 + 552) = v15;
  *(v8 + 536) = v14;
  *(v8 + 520) = v13;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 488) = a5;
  *(v8 + 496) = a6;
  *(v8 + 472) = a3;
  *(v8 + 480) = a4;
  *(v8 + 456) = a1;
  *(v8 + 464) = a2;
  sub_222738DAC();
  *(v8 + 568) = swift_task_alloc();
  v9 = sub_22273903C();
  *(v8 + 576) = v9;
  *(v8 + 584) = *(v9 - 8);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145E0, &qword_2227457B0);
  *(v8 + 672) = v10;
  *(v8 + 680) = *(v10 - 8);
  *(v8 + 688) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271D51C, 0, 0);
}

uint64_t sub_22271D51C()
{
  *(v0 + 48) = @"app";
  v1 = v0 + 48;
  v2 = *(v0 + 464);
  *(v0 + 696) = @"app";
  *(v0 + 704) = 0x2835CE868;
  *(v0 + 56) = 0x2835CE868;
  v34 = *v2;
  v33 = sub_22273946C();
  v3 = *(v33 - 8);
  v32 = *(v3 + 56);
  v31 = (v3 + 48);
  v30 = (v3 + 8);
  v4 = @"app";
  v5 = @"appDistributionApp";
  v6 = 0;
  v7 = 0;
  do
  {
    v43 = v6;
    v9 = *(v0 + 664);
    v41 = *(v0 + 656);
    v40 = *(v0 + 560);
    v39 = *(v0 + 544);
    v37 = *(v0 + 528);
    v38 = *(v0 + 536);
    v10 = *(v0 + 504);
    v35 = *(v0 + 512);
    v36 = *(v0 + 520);
    v11 = *(v0 + 488);
    v12 = *(v0 + 496);
    v13 = *(v0 + 472);
    v14 = *(v0 + 480);
    v15 = *(v1 + 8 * v7);
    v32(v9, 1, 1, v33);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = v13;
    *(v16 + 40) = v14;
    *(v16 + 48) = v11;
    *(v16 + 56) = v15;
    *(v16 + 64) = v12;
    *(v16 + 72) = v10;
    *(v16 + 80) = v35;
    *(v16 + 88) = v36;
    *(v16 + 96) = v37;
    *(v16 + 104) = v38;
    *(v16 + 112) = v39;
    *(v16 + 128) = v40;
    sub_2226A5C24(v9, v41);
    v17 = (*v31)(v41, 1, v33);
    v42 = v15;
    v18 = v13;

    v19 = v12;

    v20 = *(v0 + 656);
    if (v17 == 1)
    {
      sub_222660468(*(v0 + 656), &unk_27D013050, &qword_222741370);
    }

    else
    {
      sub_22273945C();
      (*v30)(v20, v33);
    }

    v1 = v0 + 48;
    if (*(v16 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_2227393FC();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
    v24 = v23 | v21;
    if (v23 | v21)
    {
      v24 = v0 + 144;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = v21;
      *(v0 + 168) = v23;
    }

    v8 = *(v0 + 664);
    v6 = 1;
    *(v0 + 400) = 1;
    *(v0 + 408) = v24;
    *(v0 + 416) = v34;
    swift_task_create();

    sub_222660468(v8, &unk_27D013050, &qword_222741370);
    v7 = 1;
  }

  while ((v43 & 1) == 0);
  type metadata accessor for Kind(0);
  *(v0 + 712) = v25;
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273947C();
  *(v0 + 720) = MEMORY[0x277D84F98];
  v26 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0, MEMORY[0x277D85838]);
  v27 = swift_task_alloc();
  *(v0 + 728) = v27;
  *v27 = v0;
  v27[1] = sub_22271D99C;
  v28 = *(v0 + 672);

  return MEMORY[0x282200308](v0 + 424, v28, v26);
}

uint64_t sub_22271D99C()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    (*(v2[85] + 8))(v2[86], v2[84]);

    v3 = sub_22271E4C8;
  }

  else
  {
    v3 = sub_22271DAD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22271DAD8()
{
  v2 = v0[53];
  v3 = v0[90];
  if (v2)
  {
    v4 = v0[54];
    v5 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[56] = v3;
    v7 = sub_222694708();
    v9 = *(v3 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      if (*(v0[90] + 24) < v12)
      {
        sub_22268B030(v12, isUniquelyReferenced_nonNull_native);
        v7 = sub_222694708();
        if ((v1 & 1) != (v13 & 1))
        {

          return sub_222739B8C();
        }

LABEL_16:
        v42 = v0[56];
        if (v1)
        {
LABEL_17:
          *(v42[7] + 8 * v7) = v4;

LABEL_26:
          v0[90] = v42;
          v48 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0, MEMORY[0x277D85838]);
          v49 = swift_task_alloc();
          v0[91] = v49;
          *v49 = v0;
          v49[1] = sub_22271D99C;
          v50 = v0[84];

          return MEMORY[0x282200308](v0 + 53, v50, v48);
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }
    }

    v45 = v7;
    sub_22268D4B8();
    v7 = v45;
    v42 = v0[56];
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_24:
    v42[(v7 >> 6) + 8] |= 1 << v7;
    *(v42[6] + 8 * v7) = v5;
    *(v42[7] + 8 * v7) = v4;

    v46 = v42[2];
    v11 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (!v11)
    {
      v42[2] = v47;
      goto LABEL_26;
    }

    __break(1u);
    return MEMORY[0x282180360](v39, v40, v41);
  }

  (*(v0[85] + 8))(v0[86], v0[84]);
  if (*(v3 + 16))
  {
    v15 = sub_222694708();
    v16 = v0[90];
    if (v17)
    {
      if (*(v3 + 16))
      {
        v18 = *(*(v16 + 56) + 8 * v15);

        v19 = sub_222694708();
        if (v20)
        {
          v63 = v0[81];
          v53 = v0[77];
          v52 = v0[76];
          v21 = v0[75];
          v22 = v0[74];
          v23 = v0[73];
          v51 = v0[72];
          v60 = v0[67];
          v61 = v0[80];
          v58 = v0[79];
          v59 = v0[66];
          v57 = v0[65];
          v55 = v0[78];
          v56 = v0[64];
          v62 = v0[63];
          v24 = v0[59];
          v54 = *(*(v16 + 56) + 8 * v19);

          __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
          sub_222738D9C();
          sub_22273900C();
          v25 = sub_22273919C();
          v26 = MEMORY[0x277D837D0];
          v0[25] = MEMORY[0x277D837D0];
          v0[22] = v25;
          v0[23] = v27;
          sub_222738FEC();
          v28 = *(v23 + 8);
          v28(v22, v51);
          sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
          v29 = sub_22273919C();
          v0[29] = v26;
          v0[26] = v29;
          v0[27] = v30;
          sub_222738FEC();
          v31 = v28;
          v28(v21, v51);
          sub_222660468((v0 + 26), &qword_27D0130C0, &unk_2227413B0);
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
          v0[33] = v32;
          v0[30] = v18;
          sub_222738FEC();
          v28(v52, v51);
          sub_222660468((v0 + 30), &qword_27D0130C0, &unk_2227413B0);
          v0[37] = v32;
          v0[34] = v54;
          sub_222738FEC();
          v28(v53, v51);
          sub_222660468((v0 + 34), &qword_27D0130C0, &unk_2227413B0);
          v33 = MEMORY[0x277D837D0];
          v0[41] = MEMORY[0x277D837D0];
          v0[38] = v56;
          v0[39] = v57;

          sub_222738FEC();
          v31(v55, v51);
          sub_222660468((v0 + 38), &qword_27D0130C0, &unk_2227413B0);
          v0[45] = v33;
          v0[42] = v59;
          v0[43] = v60;

          sub_222738FEC();
          v31(v58, v51);
          sub_222660468((v0 + 42), &qword_27D0130C0, &unk_2227413B0);
          v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
          v0[46] = v62;

          sub_222738FEC();
          v31(v61, v51);
          sub_222660468((v0 + 46), &qword_27D0130C0, &unk_2227413B0);
          sub_222712368(v63, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
          v34 = sub_22273872C();
          v35 = MEMORY[0x277D21FB0];
          v0[11] = v34;
          v0[12] = v35;
          __swift_allocate_boxed_opaque_existential_1(v0 + 8);
          sub_22273871C();
          type metadata accessor for ASCLockupContainer();
          sub_222738E6C();

          __swift_destroy_boxed_opaque_existential_1(v0 + 8);
          v0[16] = v34;
          v0[17] = v35;
          __swift_allocate_boxed_opaque_existential_1(v0 + 13);
          sub_22273871C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
          v0[93] = sub_222738E6C();

          v31(v63, v51);
          __swift_destroy_boxed_opaque_existential_1(v0 + 13);
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
          v37 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8, MEMORY[0x277D224B8]);
          v38 = swift_task_alloc();
          v0[94] = v38;
          *v38 = v0;
          v38[1] = sub_22271E5DC;
          v39 = (v0 + 55);
          v40 = v36;
          v41 = v37;

          return MEMORY[0x282180360](v39, v40, v41);
        }
      }
    }
  }

  sub_2227247C4();
  swift_allocError();
  *v43 = 1;
  swift_willThrow();

  v44 = v0[1];

  return v44();
}

uint64_t sub_22271E4C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22271E5DC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 760) = *(v2 + 440);

    return MEMORY[0x2822009F8](sub_22271E7F8, 0, 0);
  }
}

uint64_t sub_22271E7F8()
{
  v1 = v0[95];
  if (v1 >> 62)
  {
    result = sub_22273984C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_2227247C4();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v5 = v0[1];
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223DBEC70](0, v0[95]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[95] + 32);
  }

  v4 = v0[57];

  *v4 = v3;

  v5 = v0[1];
LABEL_9:

  return v5();
}

uint64_t sub_22271EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 320) = v15;
  *(v8 + 288) = v13;
  *(v8 + 304) = v14;
  *(v8 + 272) = v12;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 224) = a1;
  *(v8 + 232) = a4;
  sub_2227381BC();
  *(v8 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  *(v8 + 336) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271EBB4, 0, 0);
}

uint64_t sub_22271EBB4()
{
  v2 = v0[30];
  v1 = v0[31];
  v0[46] = __swift_project_boxed_opaque_existential_1((v0[29] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher), *(v0[29] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v0[47] = sub_2226DD5A8(inited);
  swift_setDeallocating();
  sub_22269E384(inited + 32);
  v4 = sub_22273916C();
  sub_222738B0C();

  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_22271ED34;
  v6 = v0[43];

  return MEMORY[0x282180268](v0 + 53, sub_2226A9B54, 0, v6);
}

uint64_t sub_22271ED34()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 344);

  (*(v3 + 8))(v2, v4);
  *(v1 + 425) = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_22271EE94, 0, 0);
}

id sub_22271EE94()
{
  v38 = v0;
  v1 = *(v0 + 272);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      result = [objc_opt_self() requestDidBeginWithTag_];
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v10 = *(v0 + 376);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 256);

  v18 = sub_2226A6000(v17, v16, v15, v14, v13, v12, v11);
  *(v0 + 392) = v18;
  v19 = *(v10 + 16);
  v20 = *(v0 + 376);
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = sub_2226959D0(*(v10 + 16), 0);
  v22 = sub_2226E96F0(&v37, v21 + 4, v19, v20);
  sub_2226342B0(v37);
  if (v22 != v19)
  {
    __break(1u);
LABEL_14:
  }

  v23 = *(v0 + 425);
  v24 = sub_22273936C();

  [v18 setBundleIdentifiers_];

  v25 = *(v0 + 368);
  if (v23)
  {
    v26 = *(v0 + 336);
    v27 = type metadata accessor for AMSMediaFetcher(0);
    __swift_project_boxed_opaque_existential_1((v25 + *(v27 + 24)), *(v25 + *(v27 + 24) + 24));
    sub_2227384EC();
    v28 = sub_222738CFC();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 48))(v26, 1, v28);
    v31 = *(v0 + 336);
    if (v30 == 1)
    {
      sub_222660468(*(v0 + 336), &unk_27D013A90, &unk_222741DC0);
      v32 = 0;
    }

    else
    {
      v32 = MEMORY[0x223DBDFF0]();
      (*(v29 + 8))(v31, v28);
    }
  }

  else
  {
    v32 = sub_2226A85D8(*(v0 + 264));
  }

  [v18 setAccount_];
  v33 = *(v0 + 320);

  if (v33)
  {
    v34 = sub_22273916C();
  }

  else
  {
    v34 = 0;
  }

  [v18 setAppDistributionCountryCodeOverride_];

  v35 = swift_task_alloc();
  *(v0 + 400) = v35;
  *v35 = v0;
  v35[1] = sub_22271F21C;
  v36 = *(v0 + 272);

  return sub_2226A69BC(v18, v36);
}

uint64_t sub_22271F21C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v5 = sub_22271F3E4;
  }

  else
  {
    *(v4 + 416) = a1;
    v5 = sub_22271F344;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22271F344()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  *v3 = v2;
  v3[1] = v1;
  v4 = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22271F3E4()
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = *(v0 + 256);
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  type metadata accessor for Kind(0);
  *(v0 + 88) = v4;
  *(v0 + 64) = v2;
  v5 = v2;
  sub_22273816C();
  sub_222660468(v0 + 64, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  *(v0 + 120) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v6, v7);
  sub_22273816C();
  sub_222660468(v0 + 96, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  *(v0 + 192) = v1;
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(v0 + 200);
  *(v0 + 208) = v10;
  sub_222724184(&unk_27D014600, type metadata accessor for AMSError, &unk_222740B74);
  v11 = sub_22273723C();

  v12 = sub_22273919C();
  if (!*(v11 + 16))
  {

    goto LABEL_10;
  }

  v14 = sub_222688818(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_12;
  }

  sub_22262BF70(*(v11 + 56) + 32 * v14, v0 + 128);

  if (!*(v0 + 152))
  {
LABEL_12:
    sub_222660468(v0 + 128, &qword_27D0130C0, &unk_2227413B0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  if (swift_dynamicCast())
  {

    v17 = *(v0 + 216);
    goto LABEL_14;
  }

LABEL_13:
  v18 = *(v0 + 408);
  v17 = sub_222732F68(MEMORY[0x277D84F90]);

LABEL_14:
  v19 = *(v0 + 256);
  v20 = *(v0 + 224);
  *v20 = v19;
  v20[1] = v17;
  v21 = v19;

  v22 = *(v0 + 8);

  return v22();
}

void sub_22271F818(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v5 = v4;
  v38 = a4;
  v37 = a3;
  v36 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_222736FEC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_222736FFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
  off_2835CACE8();
  v16 = [objc_opt_self() currentConnection];
  if (v16 && (v17 = v16, v18 = sub_2226B3064(), v17, (v18 & 1) != 0))
  {
    v19 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController;
    sub_22266BCCC(v15, &v40);
    sub_22266BCCC(v5 + v19, v39);
    v20 = swift_allocObject();
    v20[2] = a2;
    sub_222634290(&v40, (v20 + 3));
    v20[8] = v36;
    sub_222634290(v39, (v20 + 9));
    v20[14] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    v21 = a2;

    v22 = sub_222738F2C();
    v23 = sub_22273946C();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = &unk_222745728;
    v24[5] = v20;
    v24[6] = v22;

    sub_2226D4E54(0, 0, v14, &unk_222745738, v24);

    v25 = swift_allocObject();
    v26 = v38;
    *(v25 + 16) = v37;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_2227243FC;
    *(v27 + 24) = v25;
    *(v27 + 32) = "buildLockup(fromMediaAPIResponse:withContext:withReplyHandler:)";
    *(v27 + 40) = 63;
    *(v27 + 48) = 2;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2227243FC;
    *(v28 + 24) = v25;
    *(v28 + 32) = "buildLockup(fromMediaAPIResponse:withContext:withReplyHandler:)";
    *(v28 + 40) = 63;
    *(v28 + 48) = 2;
    v29 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
    swift_retain_n();

    v30 = sub_22273955C();
    v41 = v29;
    v42 = MEMORY[0x277D225C0];
    *&v40 = v30;
    sub_222738E8C();

    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {
    sub_222736FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v32;
    *(inited + 48) = 0xD000000000000062;
    *(inited + 56) = 0x800000022274E630;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222724184(&qword_27D014560, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_22273725C();
    v33 = sub_222736FCC();
    (*(v9 + 8))(v11, v8);
    v37(0, v33);
  }
}

uint64_t sub_22271FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  sub_222738DAC();
  v5[44] = swift_task_alloc();
  v6 = sub_22273903C();
  v5[45] = v6;
  v5[46] = *(v6 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271FF44, 0, 0);
}

uint64_t sub_22271FF44()
{
  v1 = sub_22273919C();
  v3 = v2;
  if (v1 == sub_22273919C() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_222739B4C();

    if ((v6 & 1) == 0)
    {
      v29 = *(v0 + 408);
      v30 = *(v0 + 416);
      v7 = *(v0 + 392);
      v8 = *(v0 + 376);
      v9 = *(v0 + 384);
      v10 = *(v0 + 360);
      v11 = *(v0 + 368);
      v27 = *(v0 + 400);
      v28 = *(v0 + 336);
      __swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
      sub_222738D9C();
      sub_22273900C();
      v12 = sub_22273919C();
      v13 = MEMORY[0x277D837D0];
      *(v0 + 160) = MEMORY[0x277D837D0];
      *(v0 + 136) = v12;
      *(v0 + 144) = v14;
      sub_222738FEC();
      v15 = *(v11 + 8);
      v15(v8, v10);
      sub_222660468(v0 + 136, &qword_27D0130C0, &unk_2227413B0);
      v16 = sub_22273919C();
      *(v0 + 192) = v13;
      *(v0 + 168) = v16;
      *(v0 + 176) = v17;
      sub_222738FEC();
      v15(v9, v10);
      sub_222660468(v0 + 168, &qword_27D0130C0, &unk_2227413B0);
      *(v0 + 216) = 0u;
      *(v0 + 200) = 0u;
      sub_222738FEC();
      v15(v7, v10);
      sub_222660468(v0 + 200, &qword_27D0130C0, &unk_2227413B0);
      *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
      *(v0 + 232) = v28;

      sub_222738FEC();
      v15(v27, v10);
      sub_222660468(v0 + 232, &qword_27D0130C0, &unk_2227413B0);
      *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
      *(v0 + 264) = MEMORY[0x277D84FA0];
      sub_222738FEC();
      v15(v29, v10);
      sub_222660468(v0 + 264, &qword_27D0130C0, &unk_2227413B0);
      sub_222712368(v30, &unk_2835CB828, &qword_27D0141D0, &unk_222744ED0, sub_222724440);
      v18 = sub_22273872C();
      v19 = MEMORY[0x277D21FB0];
      *(v0 + 40) = v18;
      *(v0 + 48) = v19;
      __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_22273871C();
      sub_22262E364(0, &qword_281312B50, off_2784B0650);
      *(v0 + 456) = sub_222738E6C();

      v15(v30, v10);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
      v21 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730, MEMORY[0x277D224B8]);
      v22 = swift_task_alloc();
      *(v0 + 464) = v22;
      *v22 = v0;
      v22[1] = sub_222720898;
      v23 = v0 + 296;
      goto LABEL_9;
    }
  }

  v24 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
  *(v0 + 432) = sub_2226FBB60(v24, MEMORY[0x277D84FA0]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
  v21 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730, MEMORY[0x277D224B8]);
  v25 = swift_task_alloc();
  *(v0 + 440) = v25;
  *v25 = v0;
  v25[1] = sub_222720504;
  v23 = v0 + 304;
LABEL_9:

  return MEMORY[0x282180360](v23, v20, v21);
}

uint64_t sub_222720504()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 448) = *(v2 + 304);

    return MEMORY[0x2822009F8](sub_2227206CC, 0, 0);
  }
}

uint64_t sub_2227206CC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227440C0;
  *(v4 + 32) = v1;
  v5 = sub_22273946C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_22266BCCC(v3, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_222634290((v0 + 96), (v6 + 5));
  v7 = *(v0 + 424);
  v8 = *(v0 + 312);
  v9 = *(v0 + 448);
  sub_22269994C(0, 0, v7, &unk_222745748, v6);

  *v8 = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_222720898()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 472) = *(v2 + 296);

    return MEMORY[0x2822009F8](sub_222720A60, 0, 0);
  }
}

uint64_t sub_222720A60()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 424);
  v3 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227440C0;
  *(v4 + 32) = v1;
  v5 = sub_22273946C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_22266BCCC(v3, v0 + 56);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_222634290((v0 + 56), (v6 + 5));
  v7 = *(v0 + 424);
  v8 = *(v0 + 312);
  v9 = *(v0 + 472);
  sub_22269994C(0, 0, v7, &unk_222745740, v6);

  *v8 = v9;

  v10 = *(v0 + 8);

  return v10();
}

void sub_222720D0C(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v69 = a2;
  v70 = a3;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_222736FEC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_222736FFC();
  v68 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  v14 = sub_22273916C();
  v67 = v3;
  sub_222738B0C();

  sub_222738B3C();
  (*(v11 + 8))(v13, v10);
  if (v72 != 1)
  {
    sub_222736FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v23;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000022274E580;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222724184(&qword_27D014560, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    goto LABEL_6;
  }

  v15 = v66;
  v16 = [v66 kind];
  v17 = sub_22273919C();
  v19 = v18;
  if (v17 != sub_22273919C() || v19 != v20)
  {
    v25 = sub_222739B4C();

    v21 = v67;
    if (v25)
    {
      goto LABEL_8;
    }

    sub_222736FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_2227412F0;
    *(v56 + 32) = sub_22273919C();
    *(v56 + 40) = v57;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;
    sub_22273991C();

    strcpy(&v72, "Lockup kind ");
    BYTE13(v72) = 0;
    HIWORD(v72) = -5120;
    v58 = [v15 kind];
    v59 = sub_22273919C();
    v61 = v60;

    MEMORY[0x223DBE5D0](v59, v61);

    MEMORY[0x223DBE5D0](0xD000000000000018, 0x800000022274E5A0);
    v62 = v72;
    *(v56 + 72) = MEMORY[0x277D837D0];
    *(v56 + 48) = v62;
    sub_222710688(v56);
    swift_setDeallocating();
    sub_222660468(v56 + 32, &qword_27D013250, &unk_222741780);
    sub_222724184(&qword_27D014560, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
LABEL_6:
    sub_22273725C();
    v24 = sub_222736FCC();
    (*(v68 + 8))(v7, v5);
    v69(0, v24);

    return;
  }

  v21 = v67;
LABEL_8:
  v26 = v21 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service;
  __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v21 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
  off_2835CACE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014568, &qword_2227456B0);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_2227412F0;
  *(v27 + 32) = ASCSignpostTagUnique();
  v28 = sub_2226DDE20(v27);
  swift_setDeallocating();
  v29 = [objc_opt_self() currentConnection];
  v30 = [v15 clientID];
  if (v30)
  {
    v31 = v30;
    v32 = sub_22273919C();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = sub_2226A9E18(v29, v32, v34, [v15 context]);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v15;
  v43 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController;
  sub_22266BCCC(v26, &v72);
  sub_22266BCCC(v21 + v43, v71);
  v44 = swift_allocObject();
  sub_222634290(&v72, (v44 + 2));
  v44[7] = v42;
  v44[8] = v28;
  v44[9] = v35;
  v44[10] = v37;
  v44[11] = v39;
  v44[12] = v41;
  sub_222634290(v71, (v44 + 13));
  v44[18] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
  v45 = v42;
  v46 = sub_222738F2C();
  v47 = sub_22273946C();
  v48 = v65;
  (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = &unk_2227456C0;
  v49[5] = v44;
  v49[6] = v46;

  sub_2226D4E54(0, 0, v48, &unk_2227456D0, v49);

  v50 = swift_allocObject();
  v51 = v70;
  *(v50 + 16) = v69;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_222724068;
  *(v52 + 24) = v50;
  *(v52 + 32) = "getLockupCollection(with:withReplyHandler:)";
  *(v52 + 40) = 43;
  *(v52 + 48) = 2;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_222724068;
  *(v53 + 24) = v50;
  *(v53 + 32) = "getLockupCollection(with:withReplyHandler:)";
  *(v53 + 40) = 43;
  *(v53 + 48) = 2;
  v54 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v55 = sub_22273955C();
  v73 = v54;
  v74 = MEMORY[0x277D225C0];
  *&v72 = v55;
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(&v72);
}

uint64_t sub_222721690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = a8;
  v8[54] = v12;
  v8[51] = a6;
  v8[52] = a7;
  v8[49] = a4;
  v8[50] = a5;
  v8[47] = a2;
  v8[48] = a3;
  v8[46] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v8[55] = swift_task_alloc();
  sub_222738DAC();
  v8[56] = swift_task_alloc();
  v9 = sub_22273903C();
  v8[57] = v9;
  v8[58] = *(v9 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222721820, 0, 0);
}

uint64_t sub_222721820()
{
  v34 = *(v0 + 528);
  v31 = *(v0 + 520);
  v24 = *(v0 + 496);
  v25 = *(v0 + 504);
  v23 = *(v0 + 488);
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v30 = *(v0 + 424);
  v28 = *(v0 + 512);
  v29 = *(v0 + 416);
  v26 = *(v0 + 400);
  v27 = *(v0 + 408);
  v5 = *(v0 + 384);
  v32 = *(v0 + 392);
  __swift_project_boxed_opaque_existential_1(*(v0 + 376), *(*(v0 + 376) + 24));
  v35 = [v5 id];
  v33 = [v5 kind];
  v36 = [v5 context];
  v22 = [v5 limit];
  sub_222738D9C();
  sub_22273900C();
  v6 = sub_22273919C();
  v7 = MEMORY[0x277D837D0];
  *(v0 + 160) = MEMORY[0x277D837D0];
  v8 = v7;
  *(v0 + 136) = v6;
  *(v0 + 144) = v9;
  sub_222738FEC();
  v10 = *(v4 + 8);
  v10(v1, v3);
  sub_222660468(v0 + 136, &qword_27D0130C0, &unk_2227413B0);
  v11 = sub_22273919C();
  *(v0 + 192) = v8;
  *(v0 + 168) = v11;
  *(v0 + 176) = v12;
  sub_222738FEC();
  v10(v2, v3);
  sub_222660468(v0 + 168, &qword_27D0130C0, &unk_2227413B0);
  v13 = sub_22273919C();
  *(v0 + 224) = v8;
  *(v0 + 200) = v13;
  *(v0 + 208) = v14;
  sub_222738FEC();
  v10(v23, v3);
  sub_222660468(v0 + 200, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 256) = MEMORY[0x277D83B88];
  *(v0 + 232) = v22;
  sub_222738FEC();
  v10(v24, v3);
  sub_222660468(v0 + 232, &qword_27D0130C0, &unk_2227413B0);
  v15 = MEMORY[0x277D837D0];
  *(v0 + 288) = MEMORY[0x277D837D0];
  *(v0 + 264) = v26;
  *(v0 + 272) = v27;

  sub_222738FEC();
  v10(v25, v3);
  sub_222660468(v0 + 264, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 320) = v15;
  *(v0 + 296) = v29;
  *(v0 + 304) = v30;

  sub_222738FEC();
  v10(v28, v3);
  sub_222660468(v0 + 296, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
  *(v0 + 328) = v32;

  sub_222738FEC();
  v10(v31, v3);
  sub_222660468(v0 + 328, &qword_27D0130C0, &unk_2227413B0);
  sub_222712368(v34, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
  v16 = sub_22273872C();
  v17 = MEMORY[0x277D21FB0];
  *(v0 + 40) = v16;
  *(v0 + 48) = v17;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22273871C();
  type metadata accessor for ASCLockupContainer();
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 80) = v16;
  *(v0 + 88) = v17;
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
  *(v0 + 536) = sub_222738E6C();

  v10(v34, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
  v19 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8, MEMORY[0x277D224B8]);
  v20 = swift_task_alloc();
  *(v0 + 544) = v20;
  *v20 = v0;
  v20[1] = sub_222721E70;

  return MEMORY[0x282180360](v0 + 360, v18, v19);
}

uint64_t sub_222721E70()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 552) = *(v2 + 360);

    return MEMORY[0x2822009F8](sub_222722060, 0, 0);
  }
}

uint64_t sub_222722060()
{
  v1 = *(v0 + 552);
  if (v1 >> 62)
  {
    v2 = sub_22273984C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v9 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v17 = MEMORY[0x277D84F90];
  result = sub_22273997C();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v16 = *(v0 + 552) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DBEC70](v4, *(v0 + 552));
    }

    else
    {
      v5 = *(v16 + 8 * v4);
    }

    v6 = v5;
    ++v4;
    sub_2226AF8EC(*(v0 + 392));
    sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
    v7 = sub_2227394BC();

    v8 = [v6 lockupWithSignpostTags_];

    sub_22273995C();
    sub_22273998C();
    sub_22273999C();
    sub_22273996C();
  }

  while (v2 != v4);

  v9 = v17;
LABEL_12:
  v10 = *(v0 + 440);
  v11 = *(v0 + 432);
  v12 = *(v0 + 368);
  v13 = sub_22273946C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_22266BCCC(v11, v0 + 96);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v9;
  sub_222634290((v0 + 96), (v14 + 5));

  sub_22269994C(0, 0, v10, &unk_2227456E8, v14);

  *v12 = v9;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2227223B0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_222722458(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22262E364(0, &qword_281312B50, off_2784B0650);
    v5 = sub_22273936C();
  }

  if (a2)
  {
    v6 = sub_22273726C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_222722504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014590, &qword_2227456F0);
  v5[4] = swift_task_alloc();
  v6 = sub_2227378CC();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_2227377AC();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_222737C2C();
  v5[11] = swift_task_alloc();
  v8 = sub_2227377BC();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2227226E0, 0, 0);
}

uint64_t sub_2227226E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 120) = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    v22 = *(v4 + 16);
    if (v22 >> 62)
    {
      v23 = sub_22273984C();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v40 = MEMORY[0x277D84F90];
      v6 = sub_22273997C();
      if (v23 < 0)
      {
LABEL_30:
        __break(1u);
        return MEMORY[0x28213E418](v6, v7, a3, a4);
      }

      v25 = 0;
      v26 = *(v4 + 16);
      v27 = v26 & 0xC000000000000001;
      v28 = v26 + 32;
      do
      {
        if (v27)
        {
          v29 = MEMORY[0x223DBEC70](v25, *(v4 + 16));
        }

        else
        {
          v29 = *(v28 + 8 * v25);
        }

        v30 = v29;
        ++v25;
        v31 = [v29 id];

        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
      }

      while (v23 != v25);
      v24 = v40;
    }

    v32 = sub_2226AF794(v24);

    v33 = sub_2227113C8(v32);

    v34 = *(v4 + 24);
    v35 = sub_2226AF45C(v33);
    *(v4 + 128) = v35;

    v36 = v34[3];
    v37 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v36);
    v38 = swift_task_alloc();
    *(v4 + 136) = v38;
    *v38 = v4;
    v38[1] = sub_222722BE8;
    v6 = v35;
    v7 = 1;
    a3 = v36;
    a4 = v37;

    return MEMORY[0x28213E418](v6, v7, a3, a4);
  }

  v6 = sub_22273984C();
  *(v4 + 120) = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v7 = *(v4 + 16);
  *(v4 + 184) = *MEMORY[0x277CEBFE8];
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x223DBEC70](0);
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v7 + 32);
LABEL_6:
  v9 = v8;
  *(v4 + 152) = v8;
  *(v4 + 160) = 1;
  v10 = *(v4 + 24);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = [v9 id];
  [v13 int64value];
  sub_222737C1C();
  *(v4 + 168) = 0;
  (*(*(v4 + 72) + 104))(*(v4 + 80), *(v4 + 184), *(v4 + 64));
  sub_22273778C();

  v14 = [v9 offer];
  v16 = *(v4 + 48);
  v15 = *(v4 + 56);
  v18 = *(v4 + 32);
  v17 = *(v4 + 40);
  if (v14)
  {
    swift_getObjectType();
    sub_222694714();
    swift_unknownObjectRelease();
    (*(v16 + 56))(v18, 0, 1, v17);
    (*(v16 + 32))(v15, v18, v17);
  }

  else
  {
    (*(v16 + 56))(*(v4 + 32), 1, 1, *(v4 + 40));
    sub_2227378BC();
    if ((*(v16 + 48))(v18, 1, v17) != 1)
    {
      sub_222660468(*(v4 + 32), &qword_27D014590, &qword_2227456F0);
    }
  }

  v19 = swift_task_alloc();
  *(v4 + 176) = v19;
  *v19 = v4;
  v19[1] = sub_222722CFC;
  v20 = *(v4 + 112);
  v21 = *(v4 + 56);

  return MEMORY[0x28213E448](v20, v21, v11, v12);
}

uint64_t sub_222722BE8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_222723444;
  }

  else
  {
    v2 = sub_222723398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222722CFC()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_222722EB0, 0, 0);
}

uint64_t sub_222722EB0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);

  v6 = *(v0 + 168);
  if (v1 == v2)
  {
    v7 = *(v0 + 16);
    if (v7 >> 62)
    {
      v8 = sub_22273984C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x277D84F90];
    if (!v8)
    {
LABEL_19:
      v24 = sub_2226AF794(v16);

      v25 = sub_2227113C8(v24);

      if (v6)
      {
        goto LABEL_20;
      }

      v28 = *(v0 + 24);
      v29 = sub_2226AF45C(v25);
      *(v0 + 128) = v29;

      v30 = v28[3];
      v31 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v30);
      v32 = swift_task_alloc();
      *(v0 + 136) = v32;
      *v32 = v0;
      v32[1] = sub_222722BE8;
      v3 = v29;
      v10 = 1;
      v4 = v30;
      v5 = v31;

      return MEMORY[0x28213E418](v3, v10, v4, v5);
    }

    v41 = MEMORY[0x277D84F90];
    v3 = sub_22273997C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = *(v0 + 16);
      v19 = v18 & 0xC000000000000001;
      v20 = v18 + 32;
      do
      {
        if (v19)
        {
          v21 = MEMORY[0x223DBEC70](v17, *(v0 + 16));
        }

        else
        {
          v21 = *(v20 + 8 * v17);
        }

        v22 = v21;
        ++v17;
        v23 = [v21 id];

        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
      }

      while (v8 != v17);
      v16 = v41;
      goto LABEL_19;
    }

LABEL_36:
    __break(1u);
    return MEMORY[0x28213E418](v3, v10, v4, v5);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 16);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223DBEC70](*(v0 + 160));
  }

  else
  {
    if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v3 = *(v10 + 8 * v9 + 32);
  }

  v11 = v3;
  *(v0 + 152) = v3;
  *(v0 + 160) = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  v12 = *(v0 + 24);
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v15 = [v11 id];
  [v15 int64value];
  sub_222737C1C();
  *(v0 + 168) = v6;
  if (v6)
  {

LABEL_20:

    v26 = *(v0 + 8);

    return v26();
  }

  (*(*(v0 + 72) + 104))(*(v0 + 80), *(v0 + 184), *(v0 + 64));
  sub_22273778C();

  v33 = [v11 offer];
  v35 = *(v0 + 48);
  v34 = *(v0 + 56);
  v37 = *(v0 + 32);
  v36 = *(v0 + 40);
  if (v33)
  {
    swift_getObjectType();
    sub_222694714();
    swift_unknownObjectRelease();
    (*(v35 + 56))(v37, 0, 1, v36);
    (*(v35 + 32))(v34, v37, v36);
  }

  else
  {
    (*(v35 + 56))(*(v0 + 32), 1, 1, *(v0 + 40));
    sub_2227378BC();
    if ((*(v35 + 48))(v37, 1, v36) != 1)
    {
      sub_222660468(*(v0 + 32), &qword_27D014590, &qword_2227456F0);
    }
  }

  v38 = swift_task_alloc();
  *(v0 + 176) = v38;
  *v38 = v0;
  v38[1] = sub_222722CFC;
  v39 = *(v0 + 112);
  v40 = *(v0 + 56);

  return MEMORY[0x28213E448](v39, v40, v13, v14);
}

uint64_t sub_222723398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222723444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for LockupFetcherClient(uint64_t a1)
{
  result = qword_281313510;
  if (!qword_281313510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22272361C(uint64_t a1)
{
  result = sub_222738BBC();
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

uint64_t sub_2227236C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013610, &qword_222742608);
    v2 = sub_222739A5C();
    v19 = v2;
    sub_2227399EC();
    v3 = sub_222739A0C();
    if (v3)
    {
      v4 = v3;
      sub_22262E364(0, &unk_281312CF8, off_2784B06D8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_22262E364(0, &qword_281312B50, off_2784B0650);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_22268ADC8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2227396BC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_222739A0C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_222723910(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223DBEBB0](a1, a2, v7);
      sub_22262E364(0, &qword_281312B70, off_2784B05F0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    if (sub_22273982C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22273983C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2227396BC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2227396CC();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_222723B34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_222723B9C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v46 = a5;
  v47 = v7;
  v45 = v11;
  while (v10)
  {
    v59 = a4;
    v17 = v12;
LABEL_14:
    v19 = (v17 << 10) | (16 * __clz(__rbit64(v10)));
    v20 = (*(a1 + 48) + v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(a1 + 56) + v19);
    v24 = *v23;
    v25 = v23[1];
    v55 = v21;
    v56 = v22;
    v57 = v24;
    v58 = v25;

    a2(&v51, &v55);

    v27 = v51;
    v26 = v52;
    v28 = v54;
    v50 = v53;
    v29 = *a5;
    v31 = sub_222688818(v51, v52);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_25;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((v59 & 1) == 0)
      {
        sub_22268C598();
      }
    }

    else
    {
      sub_222689324(v34, v59 & 1);
      v36 = sub_222688818(v27, v26);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v31 = v36;
    }

    v10 &= v10 - 1;
    v38 = *a5;
    if (v35)
    {
      v13 = (v38[7] + 16 * v31);
      v14 = v13[1];
      v55 = *v13;
      v56 = v14;
      swift_bridgeObjectRetain_n();
      MEMORY[0x223DBE5D0](44, 0xE100000000000000);
      MEMORY[0x223DBE5D0](v50, v28);

      v15 = v56;
      v16 = (v38[7] + 16 * v31);
      *v16 = v55;
      v16[1] = v15;
    }

    else
    {
      v38[(v31 >> 6) + 8] |= 1 << v31;
      v39 = (v38[6] + 16 * v31);
      *v39 = v27;
      v39[1] = v26;
      v40 = (v38[7] + 16 * v31);
      *v40 = v50;
      v40[1] = v28;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v12 = v17;
    a5 = v46;
    v7 = v47;
    v11 = v45;
  }

  v18 = v12;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
      sub_2226342B0(a1);
    }

    v10 = *(v7 + 8 * v17);
    ++v18;
    if (v10)
    {
      v59 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_222739B8C();
  __break(1u);
  return result;
}

uint64_t sub_222723E98(uint64_t a1)
{
  v4 = v1[8];
  v11 = v1[7];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_222721690(a1, (v1 + 2), v11, v4, v5, v6, v7, v8);
}

uint64_t sub_222723F8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2227240C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_222722504(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_222724184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2227241CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(sub_22273823C() - 8);
  result = sub_222712B20(a1, *(v2 + 16), v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222724258(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_22271FDDC(a1, v4, v1 + 24, v5, v1 + 72);
}

uint64_t sub_222724320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D48FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22272447C(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 48);
  v9 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_22271B64C(a1, v13, v11, v10, v9, v4, v5, v6);
}

uint64_t sub_22272459C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22266BE24;

  return sub_22271D300(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2227246A4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22266BE24;

  return sub_22271EA60(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_2227247C4()
{
  result = qword_27D0145F8;
  if (!qword_27D0145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0145F8);
  }

  return result;
}

uint64_t sub_222724880(uint64_t a1)
{
  v12 = *(v1 + 56);
  v10 = *(v1 + 64);
  v8 = *(v1 + 80);
  v9 = *(v1 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_222715268(a1, v1 + 16, v12, v10, v9, v8, v4, v5);
}

uint64_t sub_2227249B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_222724ADC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22266BE24;

  return sub_222718C48(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_222724BF4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_222660228;

  return sub_22271A1B0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_141Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

id sub_222724E1C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(char *, char *)@<X3>, void *a5@<X8>)
{
  v12 = *(sub_22273823C() - 8);
  result = sub_222712F64(a1, *(v5 + 16), v5 + ((*(v12 + 80) + 24) & ~*(v12 + 80)), a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_222724ED4()
{
  result = qword_27D014630;
  if (!qword_27D014630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014630);
  }

  return result;
}

uint64_t objectdestroy_31Tm_0()
{
  v1 = sub_22273823C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_222725080(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_222738EEC();

  return result;
}

void sub_222725110(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_22273974C();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_22273974C();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    v18 = sub_2226B55C0(a1, a5, a6);
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_42;
  }

  v19 = sub_2227392CC();
  v29 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v29 = 7;
  }

  v21 = v29 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    v30 = v21;
    v23 = sub_2226B55C0(a2, a5, a6);
    v21 = v30;
  }

  if ((v21 & 0xC) == v17)
  {
    v31 = v23;
    v21 = sub_2226B55C0(v21, a5, a6);
    v23 = v31;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      v24 = (v21 >> 16) - (v23 >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v20 < v23 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_2227392CC();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(a4) & 0xF;
        v27 = __OFADD__(v19, v26);
        v25 = v19 + v26;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = v19 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v19, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v32 = v24;
    v33 = sub_22273929C();
    v24 = v32;
    v27 = __OFADD__(v19, v33);
    v25 = v19 + v33;
    if (!v27)
    {
LABEL_21:
      v27 = __OFADD__(v25, v24);
      v28 = v25 + v24;
      if (!v27)
      {
        MEMORY[0x223DBE570](v28);
LABEL_23:
        sub_22273932C();
        sub_22272BA2C();
        sub_22273927C();

        sub_22273927C();
        sub_222725748(a2, a5, a6);
        sub_22273927C();

        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_222725424(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v11 = sub_22273925C();

  sub_22273974C();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_22273974C();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    v18 = sub_2226B55C0(a1, a5, a6);
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_42;
  }

  v19 = sub_2227392CC();
  v29 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v29 = 7;
  }

  v21 = v29 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = v11;
  if ((v11 & 0xC) == 4 << v22)
  {
    v30 = v21;
    v23 = sub_2226B55C0(v11, a5, a6);
    v21 = v30;
  }

  if ((v21 & 0xC) == v17)
  {
    v31 = v23;
    v21 = sub_2226B55C0(v21, a5, a6);
    v23 = v31;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      v24 = (v21 >> 16) - (v23 >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v20 < v23 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_2227392CC();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(a4) & 0xF;
        v27 = __OFADD__(v19, v26);
        v25 = v19 + v26;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = v19 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v19, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v32 = v24;
    v33 = sub_22273929C();
    v24 = v32;
    v27 = __OFADD__(v19, v33);
    v25 = v19 + v33;
    if (!v27)
    {
LABEL_21:
      v27 = __OFADD__(v25, v24);
      v28 = v25 + v24;
      if (!v27)
      {
        MEMORY[0x223DBE570](v28);
LABEL_23:
        sub_22273932C();
        sub_22272BA2C();
        sub_22273927C();

        sub_22273927C();
        sub_222725748(v11, a5, a6);
        sub_22273927C();

        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

unint64_t sub_222725748(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22273932C();
  }

  __break(1u);
  return result;
}

uint64_t sub_222725794(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v7 = v6;
  v47 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146B0, &unk_222745980);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_22273705C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226E114C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_222660468(v14, &qword_27D0146B0, &unk_222745980);
    sub_2226E014C();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 7;
    return swift_willThrow();
  }

  v46 = a4;
  (*(v16 + 32))(v18, v14, v15);
  v21 = [a2 tags];
  sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  sub_2226FA0EC();
  v22 = sub_2227394CC();

  v23 = sub_2226AE4AC(v22, sub_2226DEA30, 0);
  if (!*(v23 + 16))
  {

    sub_2226E014C();
    swift_allocError();
    *v34 = 1;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 7;
    swift_willThrow();
    return (*(v16 + 8))(v18, v15);
  }

  v43 = objc_autoreleasePoolPush();
  v48 = MEMORY[0x277D84FA0];
  v24 = objc_opt_self();
  v25 = [v24 subsystem];
  if (!v25)
  {
    sub_22273919C();
    v44 = v18;
    v25 = sub_22273916C();
    v7 = v6;
    v18 = v44;
  }

  v45 = a6;
  v26 = [v24 category];
  v27 = v26;
  if (!v26)
  {
    sub_22273919C();
    v27 = sub_22273916C();
  }

  v41 = a5;
  v42 = &v40;
  MEMORY[0x28223BE20](v26);
  v44 = v23;
  *(&v40 - 6) = v23;
  *(&v40 - 5) = &v48;
  v28 = v45;
  *(&v40 - 4) = a5;
  *(&v40 - 3) = v28;
  v29 = v46;
  *(&v40 - 2) = v47;
  *(&v40 - 1) = v29;
  v30 = [objc_allocWithZone(MEMORY[0x277D55030]) init];
  v31 = [objc_allocWithZone(MEMORY[0x277D55040]) init];
  [v31 addSubsystem:v25 category:v27];

  [v30 setSubsystemCategoryFilter_];
  v32 = swift_allocObject();
  *(v32 + 16) = sub_22272BA88;
  *(v32 + 24) = &v40 - 8;
  sub_2226AA558(sub_22272BAB8, v32, v30, v18);
  if (v7)
  {

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_15:

      objc_autoreleasePoolPop(v43);

      return (*(v16 + 8))(v18, v15);
    }

    __break(1u);
  }

  else
  {
    v35 = v41;

    v36 = swift_isEscapingClosureAtFileLocation();

    if ((v36 & 1) == 0)
    {
      v37 = v48;
      if (*(v48 + 16))
      {
        sub_2226E014C();
        v38 = swift_allocError();
        *v39 = v37;
        *(v39 + 8) = 0;
        *(v39 + 16) = 0;
        *(v39 + 24) = 0;
        *(v39 + 32) = 6;

        v35(v38);
      }

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_222725D44(uint64_t a1, void *a2)
{
  v5 = sub_22273701C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x277D84F98];
  v32 = &v37;
  sub_222725794(a1, a2, sub_22272BA80, v31, sub_2227260A8, 0);
  if (v2)
  {
    goto LABEL_2;
  }

  if (!*(v37 + 16))
  {
    sub_2226E014C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 7;
    swift_willThrow();
LABEL_2:

    return;
  }

  v9 = [objc_opt_self() category];
  v10 = sub_22273919C();
  v12 = v11;

  *&v35 = v10;
  *(&v35 + 1) = v12;
  sub_22273700C();
  sub_2226B1104();
  v13 = MEMORY[0x277D837D0];
  sub_22273976C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15)
  {
    v10 = sub_2227391FC();
    v17 = v16;
LABEL_12:

    v12 = v17;
    goto LABEL_13;
  }

  v19 = sub_22273926C();
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    if (v19 >= 0x4000)
    {
      sub_22273932C();
      v27 = sub_22273972C();
      v29 = v28;

      sub_222725110(0xFuLL, v21, v27, v29, v10, v12);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v22 = sub_22273972C();
      v24 = v23;

      sub_222725424(0xFuLL, v21, v22, v24, v10, v12);
    }

    v10 = v25;
    v17 = v26;

    goto LABEL_12;
  }

LABEL_13:
  v36 = v13;
  *&v35 = v10;
  *(&v35 + 1) = v12;
  sub_22269457C(&v35, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v37;
  sub_22268BC94(v34, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
}

void sub_2227260A8(void *a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v14 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  if (swift_dynamicCast())
  {
    if (v13 == 7 && (!(v11 | v10 | v9 | v12) || v9 == 1 && !(v11 | v10 | v12)))
    {

      swift_willThrow();
      v4 = a1;
      return;
    }

    sub_22272BAE0(v9, v10, v11, v12, v13);
  }

  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v6 = sub_22262E364(0, &qword_27D0146B8, &off_2784B0750);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146C0, &qword_222745990);
  v9 = v6;
  sub_22273816C();
  sub_222660468(&v9, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v12 = v8;
  v7 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(v8 - 8) + 16))(v7);
  sub_22273816C();
  sub_222660468(&v9, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

unint64_t sub_2227263F0(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v34 = a1;
  v2 = sub_22273701C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22273877C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014690, &unk_222745970);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2227412F0;
  v11 = [objc_opt_self() category];
  v12 = sub_22273919C();
  v14 = v13;

  v35 = v12;
  v36 = v14;
  sub_22273700C();
  sub_2226B1104();
  sub_22273976C();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  if (v16)
  {
    v12 = sub_2227391FC();
    v18 = v17;
LABEL_8:

    v14 = v18;
    goto LABEL_9;
  }

  v19 = sub_22273926C();
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    if (v19 >= 0x4000)
    {
      sub_22273932C();
      v27 = sub_22273972C();
      v29 = v28;

      sub_222725110(0xFuLL, v21, v27, v29, v12, v14);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v22 = sub_22273972C();
      v24 = v23;

      sub_222725424(0xFuLL, v21, v22, v24, v12, v14);
    }

    v12 = v25;
    v18 = v26;

    goto LABEL_8;
  }

LABEL_9:
  swift_getObjectType();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_22273876C();
  sub_22273846C();
  sub_2227382FC();
  (*(v31 + 8))(v9, v32);
  return v35 & 1;
}

uint64_t sub_2227267B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v49 = a1;
  v50 = a3;
  v43 = sub_22273701C();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273877C();
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146C8, &qword_222745998);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v41 - v12;
  v13 = sub_2227373BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2227412F0;
  v17 = [objc_opt_self() category];
  v18 = sub_22273919C();
  v20 = v19;

  v51 = v18;
  v52 = v20;
  sub_22273700C();
  sub_2226B1104();
  sub_22273976C();
  v22 = v21;
  (*(v4 + 8))(v6, v43);
  if (v22)
  {
    v18 = sub_2227391FC();
    v24 = v23;
  }

  else
  {
    v25 = sub_22273926C();
    if (v26)
    {
      goto LABEL_9;
    }

    v27 = v25;
    if (v25 >= 0x4000)
    {
      sub_22273932C();
      v33 = sub_22273972C();
      v35 = v34;

      sub_222725110(0xFuLL, v27, v33, v35, v18, v20);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v28 = sub_22273972C();
      v30 = v29;

      sub_222725424(0xFuLL, v27, v28, v30, v18, v20);
    }

    v18 = v31;
    v24 = v32;
  }

  v20 = v24;
LABEL_9:
  swift_getObjectType();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  sub_22273876C();
  sub_22273846C();
  v36 = v44;
  sub_2227382FC();
  (*(v45 + 8))(v10, v47);
  if ((*(v14 + 48))(v36, 1, v13) == 1)
  {
    sub_222660468(v36, &unk_27D0146D0, qword_222743270);
    v37 = 1;
    v38 = v50;
  }

  else
  {
    v39 = v42;
    (*(v14 + 32))(v42, v36, v13);
    v38 = v50;
    sub_22273737C();
    (*(v14 + 8))(v39, v13);
    v37 = 0;
  }

  return (*(v14 + 56))(v38, v37, 1, v13);
}

unint64_t sub_222726D24(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222741CB0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000022274EB30;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022274EB50;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 120) = v10;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000022274EB70;
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 168) = v10;
  *(inited + 144) = v11;
  v12 = sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_222726ED8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_22273701C();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22273877C();
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146C8, &qword_222745998);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = sub_2227373BC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  v60 = a2;
  v61 = a1;
  if (sub_2227263F0(a1, a2))
  {
    return 1;
  }

  if (a4 <= 0.0)
  {
    return 0;
  }

  if (a4 >= 1.0)
  {
    return 1;
  }

  sub_2227267B8(v61, v60, v19);
  v28 = v21;
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v26, v19, v20);
    sub_2227373AC();
    v29 = sub_22273736C();
    v30 = *(v28 + 8);
    v30(v23, v20);
    v30(v26, v20);
    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 1;
  }

  sub_222660468(v19, &unk_27D0146D0, qword_222743270);
LABEL_10:
  v31 = sub_222729AC4(0x20000000000001uLL);
  result = 0;
  v32 = vcvtd_n_f64_u64(v31, 0x35uLL);
  if (v32 > 0.0 && v32 <= a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2227412F0;
    v34 = [objc_opt_self() category];
    v35 = sub_22273919C();
    v37 = v36;

    v62 = v35;
    v63 = v37;
    sub_22273700C();
    sub_2226B1104();
    sub_22273976C();
    v39 = v38;
    (*(v57 + 8))(v9, v7);
    if (v39)
    {
      v40 = sub_2227391FC();
      v42 = v41;
    }

    else
    {
      v43 = sub_22273926C();
      if (v44)
      {
        v45 = v35;
LABEL_21:
        swift_getObjectType();
        *(v33 + 32) = v45;
        *(v33 + 40) = v37;
        sub_22273876C();
        sub_22273846C();
        sub_2227373AC();
        (*(v28 + 56))(v16, 0, 1, v20);
        sub_22273830C();
        return 1;
      }

      v46 = v43;
      if (v43 >= 0x4000)
      {
        sub_22273932C();
        v52 = sub_22273972C();
        v54 = v53;

        sub_222725110(0xFuLL, v46, v52, v54, v35, v37);
      }

      else
      {
        sub_22273925C();
        sub_22273932C();
        v47 = sub_22273972C();
        v49 = v48;

        sub_222725424(0xFuLL, v46, v47, v49, v35, v37);
      }

      v55 = v50;
      v42 = v51;

      v40 = v55;
    }

    v45 = v40;

    v37 = v42;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_2227274E4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v52 = a4;
  v43 = a2;
  v44 = a3;
  v6 = sub_2227382CC();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146E0, &unk_2227459A0);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_22273887C();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22273760C();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v45 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = sub_2227381BC();
  MEMORY[0x28223BE20](v19 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v20 = sub_222738F6C();
  __swift_project_value_buffer(v20, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v57 = sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v56[0] = a1;
  a1;
  sub_22273818C();
  sub_222660468(v56, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  sub_22262E364(0, &qword_281312B40, 0x277D86200);
  sub_22273970C();
  sub_2227375EC();
  sub_22273962C();
  v21 = sub_22273970C();
  sub_2227375DC();

  sub_22273886C();
  v22 = v13;
  v23 = v18;
  if (v43)
  {
    v56[0] = v43;
    sub_22273883C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
    sub_22273885C();
    (*(v41 + 8))(v10, v42);
  }

  if (v44)
  {
    v56[0] = v44;
    v24 = qword_27D0129D0;
    v25 = v44;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
    __swift_project_value_buffer(v26, qword_27D019C98);
    sub_22262E364(0, &qword_27D013080, off_2784B06E8);
    sub_22273885C();
  }

  v27 = v46;
  sub_2226E8D3C();
  sub_2227385EC();
  (*(v47 + 8))(v27, v48);
  v57 = sub_22273872C();
  v58 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v56);
  sub_22273871C();
  v29 = v50;
  v28 = v51;
  v30 = v45;
  (*(v50 + 16))(v45, v23, v51);
  v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v32 = swift_allocObject();
  (*(v29 + 32))(v32 + v31, v30, v28);
  sub_222738EBC();

  __swift_destroy_boxed_opaque_existential_1(v56);
  v33 = swift_allocObject();
  v34 = v52;
  v35 = v55;
  *(v33 + 16) = v52;
  *(v33 + 24) = v35;
  v48 = v22;
  v49 = v23;
  *(v33 + 32) = "processMetricsData(_:pageFields:activity:withReplyHandler:)";
  *(v33 + 40) = 59;
  *(v33 + 48) = 2;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  *(v36 + 32) = "processMetricsData(_:pageFields:activity:withReplyHandler:)";
  *(v36 + 40) = 59;
  *(v36 + 48) = 2;
  v37 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v38 = sub_22273955C();
  v57 = v37;
  v58 = MEMORY[0x277D225C0];
  v56[0] = v38;
  sub_222738E8C();

  (*(v53 + 8))(v48, v54);
  (*(v29 + 8))(v49, v28);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_222727D94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v60 = sub_22273701C();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2227382CC();
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22273887C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = objc_opt_self();
  v20 = [v19 requiredFieldNames];
  v21 = sub_2227394CC();

  v22 = sub_22272B3E8(v21, v18);

  if (!*(v22 + 16))
  {
    v34 = v15;
    v35 = v55;

    v36 = sub_222726D24(v56, v57, a5, a6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61[0] = v18;
    sub_22272B71C(v36, sub_222729A78, 0, isUniquelyReferenced_nonNull_native, v61);

    sub_22273886C();
    sub_22273829C();
    v38 = sub_2227385EC();
    (*(v35 + 8))(v13, v11);
    (*(v34 + 8))(v17, v14);
    return v38;
  }

  v62[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227413C0;
  *(inited + 32) = sub_22273919C();
  *(inited + 40) = v24;
  v25 = [v19 category];
  v26 = sub_22273919C();
  v28 = v27;

  v61[0] = v26;
  v61[1] = v28;
  sub_22273700C();
  sub_2226B1104();
  v29 = MEMORY[0x277D837D0];
  sub_22273976C();
  v31 = v30;
  (*(v59 + 8))(v10, v60);
  if (v31)
  {
    v26 = sub_2227391FC();
    v33 = v32;
  }

  else
  {
    v40 = sub_22273926C();
    if (v41)
    {
      goto LABEL_11;
    }

    v42 = v40;
    if (v40 >= 0x4000)
    {
      sub_22273932C();
      v48 = sub_22273972C();
      v50 = v49;

      sub_222725110(0xFuLL, v42, v48, v50, v26, v28);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v43 = sub_22273972C();
      v45 = v44;

      sub_222725424(0xFuLL, v42, v43, v45, v26, v28);
    }

    v26 = v46;
    v33 = v47;
  }

  v28 = v33;
LABEL_11:
  *(inited + 72) = v29;
  *(inited + 48) = v26;
  *(inited + 56) = v28;
  *(inited + 80) = sub_22273919C();
  *(inited + 88) = v51;
  v52 = *(v22 + 16);
  if (!v52)
  {
LABEL_14:

    v53 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v53 = sub_2226959D0(*(v22 + 16), 0);
  v54 = sub_2226E96F0(v61, v53 + 4, v52, v22);
  sub_2226342B0(v61[0]);
  if (v54 != v52)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  type metadata accessor for ASCMetricsError(0);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  *(inited + 96) = v53;
  sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  sub_22272B6C4();
  sub_22273725C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014668, &qword_222745968);
  return sub_222738E9C();
}

void sub_222728438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22273961C();
  sub_22262E364(0, &qword_281312B40, 0x277D86200);
  v4 = sub_22273970C();
  sub_2227375DC();
}

uint64_t sub_222728568(void (**a1)(uint64_t, char *, uint64_t), uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_2227381BC();
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v12 = sub_222738F6C();
  __swift_project_value_buffer(v12, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v24 = MEMORY[0x277D837D0];
  v23[0] = a1;
  v23[1] = a2;

  sub_22273818C();
  sub_222660468(v23, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v24 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v23[0] = a5;
  v13 = a5;
  sub_22273818C();
  sub_222660468(v23, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService), *(v19 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService + 24));
  sub_2226FD828(a1, a2, a3, a4, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  *(v14 + 32) = "recordCampaignToken(_:providerToken:with:withReplyHandler:)";
  *(v14 + 40) = 59;
  *(v14 + 48) = 2;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  *(v15 + 32) = "recordCampaignToken(_:providerToken:with:withReplyHandler:)";
  *(v15 + 40) = 59;
  *(v15 + 48) = 2;
  v16 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v17 = sub_22273955C();
  v24 = v16;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v17;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_222728A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v58 = a5;
  v59 = a6;
  v55 = a3;
  v56 = a4;
  v53 = a1;
  v61 = a8;
  v62 = a9;
  v10 = sub_222738DAC();
  MEMORY[0x28223BE20](v10 - 8);
  v51 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22273903C();
  v12 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = v46 - v15;
  MEMORY[0x28223BE20](v16);
  v54 = v46 - v17;
  MEMORY[0x28223BE20](v18);
  v57 = v46 - v19;
  MEMORY[0x28223BE20](v20);
  v60 = v46 - v21;
  v22 = sub_2227381BC();
  MEMORY[0x28223BE20](v22 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v23 = sub_222738F6C();
  v46[1] = __swift_project_value_buffer(v23, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v65 = MEMORY[0x277D837D0];
  v24 = v53;
  v63 = v53;
  v64 = a2;

  sub_22273818C();
  sub_222660468(&v63, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v65 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v63 = v49;
  v25 = v49;
  sub_22273818C();
  sub_222660468(&v63, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v50 = __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService), *(v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService + 24));
  v49 = [v25 id];
  sub_222738D9C();
  v26 = v47;
  sub_22273900C();
  v27 = MEMORY[0x277D837D0];
  v65 = MEMORY[0x277D837D0];
  v63 = v24;
  v64 = a2;

  v28 = v48;
  sub_222738FEC();
  v29 = *(v12 + 8);
  v30 = v52;
  v29(v26, v52);
  sub_222660468(&v63, &qword_27D0130C0, &unk_2227413B0);
  v65 = v27;
  v63 = v55;
  v64 = v56;

  v31 = v54;
  sub_222738FEC();
  v29(v28, v30);
  sub_222660468(&v63, &qword_27D0130C0, &unk_2227413B0);
  v65 = v27;
  v63 = v58;
  v64 = v59;

  v32 = v57;
  sub_222738FEC();
  v29(v31, v30);
  sub_222660468(&v63, &qword_27D0130C0, &unk_2227413B0);
  v33 = v49;
  v34 = [v49 stringValue];
  v35 = sub_22273919C();
  v37 = v36;

  v65 = MEMORY[0x277D837D0];
  v63 = v35;
  v64 = v37;
  v38 = v60;
  sub_222738FEC();
  v29(v32, v30);
  sub_222660468(&v63, &qword_27D0130C0, &unk_2227413B0);
  sub_2226D7BBC(v38);
  v65 = sub_22273872C();
  v66 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v63);
  sub_22273871C();
  sub_222738E6C();

  v29(v38, v30);
  __swift_destroy_boxed_opaque_existential_1(&v63);

  v39 = swift_allocObject();
  v41 = v61;
  v40 = v62;
  *(v39 + 16) = v61;
  *(v39 + 24) = v40;
  *(v39 + 32) = "recordQToken(_:campaignToken:advertisementID:with:withReplyHandler:)";
  *(v39 + 40) = 68;
  *(v39 + 48) = 2;
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v40;
  *(v42 + 32) = "recordQToken(_:campaignToken:advertisementID:with:withReplyHandler:)";
  *(v42 + 40) = 68;
  *(v42 + 48) = 2;
  v43 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v44 = sub_22273955C();
  v65 = v43;
  v66 = MEMORY[0x277D225C0];
  v63 = v44;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(&v63);
}

uint64_t sub_222729300(uint64_t a1)
{
  v2 = v1;
  v25 = sub_2227381FC();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227385BC();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v26 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227381BC();
  MEMORY[0x28223BE20](v9 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v10 = sub_222738F6C();
  __swift_project_value_buffer(v10, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = *(v4 + 72);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v30[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014640, &qword_222745960);
  v30[0] = a1;

  sub_22273816C();
  sub_222660468(v30, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v12 = *(a1 + 16);
  if (v12)
  {
    v23 = v1;
    v24 = v7;
    v29 = MEMORY[0x277D84F90];
    sub_2226AE88C(0, v12, 0);
    v13 = v29;
    v14 = a1 + 32;
    v15 = (v4 + 32);
    v16 = v25;
    do
    {
      sub_22262BF70(v14, v30);
      sub_2227381DC();
      sub_222660468(v30, &qword_27D0130C0, &unk_2227413B0);
      v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2226AE88C((v17 > 1), v18 + 1, 1);
        v16 = v25;
        v13 = v29;
      }

      *(v13 + 16) = v18 + 1;
      (*v15)(v13 + v11 + v18 * v28, v6, v16);
      v14 += 32;
      --v12;
    }

    while (v12);
    v2 = v23;
    v7 = v24;
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsLogger), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsLogger + 24));
  v20 = v26;
  v19 = v27;
  (*(v27 + 104))(v26, *MEMORY[0x277D21DE8], v7);
  sub_222738C3C();

  return (*(v19 + 8))(v20, v7);
}

uint64_t type metadata accessor for MetricsClient(uint64_t a1)
{
  result = qword_281313D08;
  if (!qword_281313D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2227298F4(uint64_t a1)
{
  result = sub_222738BBC();
  if (v2 <= 0x3F)
  {
    result = sub_2227385FC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t *sub_2227299DC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22272B234(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

double sub_222729A78@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22262BF70((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

unint64_t sub_222729AC4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    result = (__buf * v1) >> 64;
    if (__buf * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > __buf * v1)
      {
        do
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
        }

        while (v2 > __buf * v1);
        return (__buf * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_222729B80@<X0>(uint64_t (*result)(void)@<X0>, uint64_t a2@<X8>))(void)
{
  v3 = result;
  v5 = v2[3];
  v6 = v2[4];
  if (v6)
  {
    v7 = v2[3];
LABEL_10:
    v11 = (*(*v2 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = *v11;
    v13 = v11[1];
    v2[3] = v7;
    v2[4] = (v6 - 1) & v6;
    v14 = v2[5];
    v21[0] = v12;
    v21[1] = v13;

    v14(v21);

    v15 = v3(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = v15;
    v18 = a2;
    v19 = 0;
LABEL_11:

    return v16(v18, v19, 1, v17);
  }

  else
  {
    v8 = (v2[2] + 64) >> 6;
    if (v8 <= v5 + 1)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = (v2[2] + 64) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        v2[3] = v10;
        v2[4] = 0;
        v20 = result(0);
        v16 = *(*(v20 - 8) + 56);
        v17 = v20;
        v18 = a2;
        v19 = 1;
        goto LABEL_11;
      }

      v6 = *(v2[1] + 8 * v7);
      ++v5;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_222729CE8(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22262BF70(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_22269457C(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_222660468(v20, &unk_27D014680, &unk_222744148);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_222729E98(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v32 = a2;
  v33 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - v14;
  v17 = *v3;
  v18 = v3[1];
  v20 = v3[2];
  v19 = v3[3];
  v21 = v3[4];
  v30 = v9;
  v31 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v26 = (v21 - 1) & v21;
    (*(v7 + 16))(&v30 - v14, *(v17 + 48) + *(v7 + 72) * (__clz(__rbit64(v21)) | (v22 << 6)), v6, v15);
    (*(v7 + 56))(v16, 0, 1, v6);
    v25 = v22;
LABEL_11:
    *v3 = v17;
    v3[1] = v18;
    v27 = v32;
    v3[2] = v31;
    v3[3] = v25;
    v3[4] = v26;
    v28 = v3[5];
    sub_2226CA000(v16, v12, v27, v33);
    if ((*(v7 + 48))(v12, 1, v6) != 1)
    {
      v29 = v30;
      (*(v7 + 32))(v30, v12, v6);
      v28(&v34, v29);
      (*(v7 + 8))(v29, v6);
    }
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        (*(v7 + 56))(&v30 - v14, 1, 1, v6, v15);
        v26 = 0;
        goto LABEL_11;
      }

      v21 = *(v18 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_22272A158(uint64_t result)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v5 = sub_22273987C();
    if (v5)
    {
      v13 = v5;
      sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
      swift_dynamicCast();
      v6 = v14;
      if (v14)
      {
LABEL_15:
        v12 = v1[5];
        v14 = v6;
        v12(&v13, &v14);
      }
    }
  }

  else
  {
    v2 = v1[3];
    v3 = v1[4];
    if (v3)
    {
      v4 = v1[3];
LABEL_14:
      v10 = (v3 - 1) & v3;
      v6 = *(*(*v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v3)))));
      v11 = v6;
      v1[3] = v4;
      v1[4] = v10;
      if (v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = (v1[2] + 64) >> 6;
      if (v7 <= v2 + 1)
      {
        v8 = v2 + 1;
      }

      else
      {
        v8 = (v1[2] + 64) >> 6;
      }

      v9 = v8 - 1;
      while (1)
      {
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v4 >= v7)
        {
          v1[3] = v9;
          v1[4] = 0;
          return;
        }

        v3 = *(v1[1] + 8 * v4);
        ++v2;
        if (v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22272A2A8(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = sub_22273834C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22273991C();

  v27 = 0xD000000000000023;
  v28 = 0x800000022274EBC0;
  v10 = objc_opt_self();
  v11 = [v10 category];
  v12 = sub_22273919C();
  v14 = v13;

  MEMORY[0x223DBE5D0](v12, v14);

  v15 = sub_22273916C();

  (*(v7 + 104))(v9, *MEMORY[0x277D21C38], v6);
  v16 = v25;
  sub_222738AFC();

  (*(v7 + 8))(v9, v6);
  sub_222738B3C();
  v17 = *(v3 + 8);
  v17(v5, v2);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22273991C();

  v27 = 0xD00000000000002BLL;
  v28 = 0x800000022274EBF0;
  v18 = [v10 category];
  v19 = sub_22273919C();
  v21 = v20;

  MEMORY[0x223DBE5D0](v19, v21);

  v22 = sub_22273916C();

  sub_222738B5C();

  sub_222738B3C();
  v23 = sub_222738BBC();
  (*(*(v23 - 8) + 8))(v16, v23);
  v17(v5, v2);
  return v26;
}

uint64_t sub_22272A680(void *a1, uint64_t a2, void (**a3)(void, void, __n128))
{
  v6 = sub_2227385FC();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22273760C();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - v11;
  v12 = sub_2227381BC();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_222738BBC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = swift_allocObject();
  *(v65 + 16) = a3;
  (*(v14 + 16))(v16, a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_bag, v13);
  sub_22273865C();
  _Block_copy(a3);
  v17 = sub_22273864C();
  v18 = sub_22272A2A8(v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v66 = v18;
  if (sub_222726ED8(v18, v23, v19, v21))
  {
    v57 = v24;
    if (qword_27D0129B0 != -1)
    {
      swift_once();
    }

    v25 = sub_222738F6C();
    __swift_project_value_buffer(v25, qword_27D019C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v68 = sub_22262E364(0, &unk_27D014650, off_2784B0718);
    *&v67 = a1;
    v26 = a1;
    sub_22273818C();
    sub_222660468(&v67, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    sub_22262E364(0, &qword_281312B40, 0x277D86200);
    sub_22273970C();
    v27 = v64;
    sub_2227375EC();
    sub_22273962C();
    v28 = sub_22273970C();
    sub_2227375DC();

    if (qword_281313008 != -1)
    {
      swift_once();
    }

    v29 = [v26 predicateByAddingTag_];
    sub_22266BCCC(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_signpostExtractor, &v67);
    v30 = swift_allocObject();
    sub_222634290(&v67, v30 + 16);
    *(v30 + 56) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014660, &qword_222743690);
    v56 = v29;
    v31 = sub_222738F2C();
    v32 = swift_allocObject();
    v32[2] = sub_22272B104;
    v32[3] = v30;
    v32[4] = v31;
    v55 = v31;

    sub_2227395AC();

    v34 = v58;
    v33 = v59;
    v35 = v60;
    (*(v59 + 16))(v58, a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsPipeline, v60);
    v36 = (*(v33 + 80) + 48) & ~*(v33 + 80);
    v37 = swift_allocObject();
    v37[2] = v20;
    v37[3] = v22;
    v38 = v57;
    *(v37 + 4) = v66;
    *(v37 + 5) = v38;
    (*(v33 + 32))(v37 + v36, v34, v35);
    v39 = sub_22273872C();
    v40 = MEMORY[0x277D21FB0];
    v68 = v39;
    v69 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(&v67);
    swift_unknownObjectRetain();
    sub_22273871C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014668, &qword_222745968);
    sub_22272B1BC();
    sub_222738EDC();

    __swift_destroy_boxed_opaque_existential_1(&v67);
    v68 = v39;
    v69 = v40;
    __swift_allocate_boxed_opaque_existential_1(&v67);
    sub_22273871C();
    v42 = v61;
    v41 = v62;
    v43 = v27;
    v44 = v63;
    (*(v62 + 16))(v61, v43, v63);
    v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v46 = swift_allocObject();
    (*(v41 + 32))(v46 + v45, v42, v44);
    sub_222738EBC();

    __swift_destroy_boxed_opaque_existential_1(&v67);
    v47 = swift_allocObject();
    v48 = v65;
    *(v47 + 16) = sub_2227113C4;
    *(v47 + 24) = v48;
    *(v47 + 32) = "processViewRender(with:withReplyHandler:)";
    *(v47 + 40) = 41;
    *(v47 + 48) = 2;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_2227113C4;
    *(v49 + 24) = v48;
    *(v49 + 32) = "processViewRender(with:withReplyHandler:)";
    *(v49 + 40) = 41;
    *(v49 + 48) = 2;
    v50 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
    swift_retain_n();
    v51 = sub_22273955C();
    v68 = v50;
    v69 = MEMORY[0x277D225C0];
    *&v67 = v51;
    sub_222738E8C();

    swift_unknownObjectRelease();

    (*(v41 + 8))(v64, v44);
    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  else
  {
    if (qword_27D0129B0 != -1)
    {
      swift_once();
    }

    v53 = sub_222738F6C();
    __swift_project_value_buffer(v53, qword_27D019C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v68 = sub_22262E364(0, &unk_27D014650, off_2784B0718);
    *&v67 = a1;
    v54 = a1;
    sub_22273818C();
    sub_222660468(&v67, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    (a3[2])(a3, 0);

    return swift_unknownObjectRelease();
  }
}

void sub_22272B104(void *a1@<X8>)
{
  sub_222725D44(v1 + 16, *(v1 + 56));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_22272B144(uint64_t *a1)
{
  v3 = *(sub_2227385FC() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_222727D94(a1, v6, v7, v8, v4, v5);
}

unint64_t sub_22272B1BC()
{
  result = qword_27D014670;
  if (!qword_27D014670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014668, &qword_222745968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014670);
  }

  return result;
}

void sub_22272B234(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(a4 + 16);

    if (v19 && (v20 = sub_222688818(v17, v18), (v21 & 1) != 0))
    {
      sub_22262BF70(*(a4 + 56) + 32 * v20, v25);
      sub_222660468(v25, &qword_27D0130C0, &unk_2227413B0);
    }

    else
    {
      memset(v25, 0, sizeof(v25));
      sub_222660468(v25, &qword_27D0130C0, &unk_2227413B0);

      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_17:

        sub_2226942A4(a1, a2, v26, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_17;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22272B3E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = v8;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x28223BE20](v10);
    v31 = v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v9);
    v32 = 0;
    v8 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v9 = v15 | (v8 << 6);
      v18 = (*(a1 + 48) + 16 * v9);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(a2 + 16);

      if (v21 && (v22 = sub_222688818(v19, v20), (v23 & 1) != 0))
      {
        sub_22262BF70(*(a2 + 56) + 32 * v22, v33);
        sub_222660468(v33, &qword_27D0130C0, &unk_2227413B0);
      }

      else
      {
        memset(v33, 0, sizeof(v33));
        sub_222660468(v33, &qword_27D0130C0, &unk_2227413B0);

        *&v31[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_18:
          v25 = sub_2226942A4(v31, v29, v32, a1);

          return v25;
        }
      }
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {
        goto LABEL_18;
      }

      v17 = *(v3 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_2227299DC(v27, v8, a1, a2);

  MEMORY[0x223DBFCA0](v27, -1, -1);

  return v25;
}

unint64_t sub_22272B6C4()
{
  result = qword_27D012C90;
  if (!qword_27D012C90)
  {
    type metadata accessor for ASCMetricsError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012C90);
  }

  return result;
}

unint64_t sub_22272B71C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_222729CE8(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_22269457C(v44, v42);
  v14 = *a5;
  result = sub_222688818(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_2226895E4(v20, a4 & 1);
    result = sub_222688818(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_222739B8C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_22268C710();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_22269457C(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_22269457C(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_222729CE8(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_22269457C(v44, v42);
        v32 = *a5;
        result = sub_222688818(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_2226895E4(v36, 1);
          result = sub_222688818(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_22269457C(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_22269457C(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_222729CE8(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_2226342B0(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22272BA2C()
{
  result = qword_27D0146A0;
  if (!qword_27D0146A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0146A0);
  }

  return result;
}

double sub_22272BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 >= 4u)
    {
      return result;
    }

LABEL_3:

LABEL_5:

    return result;
  }

  switch(a5)
  {
    case 6u:

      goto LABEL_5;
    case 5u:
      goto LABEL_3;
    case 4u:

      goto LABEL_5;
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_22273760C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_22272BCAC(void *a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  MEMORY[0x28223BE20](v11 - 8);
  v16[0] = a1;
  v12 = a1;
  a2(v16, 0);

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = MEMORY[0x277D840E8];
  v16[0] = a4;
  v16[1] = a5;
  v17 = a6;
  sub_22273816C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v18 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v16[0] = v12;
  v14 = v12;
  sub_22273818C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return result;
}

double sub_22272BFE8(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t), void (*a8)(uint64_t), uint64_t *a9, uint64_t *a10)
{
  v16 = sub_2227381BC();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v21[0] = a1;
  (a7)(a1, v17);
  a2(v21, 0);
  a8(a1);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v18 = sub_222738F6C();
  __swift_project_value_buffer(v18, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v23 = MEMORY[0x277D840E8];
  v21[0] = a4;
  v21[1] = a5;
  v22 = a6;
  sub_22273816C();
  sub_222660468(v21, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
  v21[0] = a1;
  a7(a1);
  sub_22273818C();
  sub_222660468(v21, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return result;
}

double sub_22272C284(void *a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  MEMORY[0x28223BE20](v11 - 8);
  v16[0] = a1;
  v12 = a1;
  a2(v16, 0);

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = MEMORY[0x277D840E8];
  v16[0] = a4;
  v16[1] = a5;
  v17 = a6;
  sub_22273816C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v18 = type metadata accessor for AppOfferStateClient();
  v16[0] = v12;
  v14 = v12;
  sub_22273818C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return result;
}

double sub_22272C4F8(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_2227381BC();
  MEMORY[0x28223BE20](v10 - 8);
  v16[0] = 0;
  swift_getErrorValue();
  v11 = sub_2226B1280(v19, v20);
  a2(v16, v11);

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v12 = sub_222738F6C();
  __swift_project_value_buffer(v12, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = MEMORY[0x277D840E8];
  v16[0] = a4;
  v16[1] = a5;
  v17 = a6;
  sub_22273816C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v18 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  return result;
}

uint64_t (*sub_22272C7CC(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22272F9C0;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22272F9C8;
}

id (*sub_22272C85C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_22272F9B8;
}

id (*sub_22272C8C0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_22272F9B0;
}

uint64_t (*sub_22272C924(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22272F97C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22272F984;
}

uint64_t (*sub_22272C9B4(void *a1))(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22272F948;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22272F950;
}

uint64_t sub_22272CA44(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v6 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v7 = *v6;
  v8 = *(*v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v8 lock];
  v9 = *(v7 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v9 >> 62) - 2 >= 2)
  {
    if (v9 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v15[0] = v9 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
    }
  }

  else
  {
    sub_22262D930();
  }

  [v8 unlock];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v13 = sub_22273955C();
  v15[3] = v12;
  v15[4] = MEMORY[0x277D225C0];
  v15[0] = v13;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_22272CD24(uint64_t a1, uint64_t (*a2)(void, __n128))
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  return (a2)(0);
}

void sub_22272CE80(uint64_t a1, void (*a2)(void))
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v10[3] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v10, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_getErrorValue();
  v6 = sub_2226B1280(v7, v8);
  a2();
}

uint64_t sub_22272D128(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v6 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v7 = *v6;
  v8 = *(*v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v8 lock];
  v9 = *(v7 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v9 >> 62) - 2 >= 2)
  {
    if (v9 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v16[0] = v9 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
    }
  }

  else
  {
    sub_22262D930();
  }

  [v8 unlock];
  v17 = sub_22273872C();
  v18 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014860, &unk_222742AF0);
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_222725070;
  *(v11 + 24) = v10;
  *(v11 + 32) = "getLockupFetcherService(replyHandler:)";
  *(v11 + 40) = 38;
  *(v11 + 48) = 2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222725070;
  *(v12 + 24) = v10;
  *(v12 + 32) = "getLockupFetcherService(replyHandler:)";
  *(v12 + 40) = 38;
  *(v12 + 48) = 2;
  v13 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v14 = sub_22273955C();
  v17 = v13;
  v18 = MEMORY[0x277D225C0];
  v16[0] = v14;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_22272D540(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v6 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v7 = *v6;
  v8 = *(*v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v8 lock];
  v9 = *(v7 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v9 >> 62) - 2 >= 2)
  {
    if (v9 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v16[0] = v9 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
    }
  }

  else
  {
    sub_22262D930();
  }

  [v8 unlock];
  v17 = sub_22273872C();
  v18 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013860, &unk_222742B00);
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_222725070;
  *(v11 + 24) = v10;
  *(v11 + 32) = "getMetricsService(replyHandler:)";
  *(v11 + 40) = 32;
  *(v11 + 48) = 2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222725070;
  *(v12 + 24) = v10;
  *(v12 + 32) = "getMetricsService(replyHandler:)";
  *(v12 + 40) = 32;
  *(v12 + 48) = 2;
  v13 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v14 = sub_22273955C();
  v17 = v13;
  v18 = MEMORY[0x277D225C0];
  v16[0] = v14;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_22272D958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v8 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v9 = *v8;
  v10 = *(*v8 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v10 lock];
  v11 = *(v9 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v11 >> 62) - 2 >= 2)
  {
    if (v11 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v22[0] = v11 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
    }
  }

  else
  {
    sub_22262D930();
  }

  [v10 unlock];
  v12 = sub_22273872C();
  v13 = MEMORY[0x277D21FB0];
  v23 = v12;
  v24 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0147E8, &unk_2227459E8);
  sub_22262BED4(&qword_281312EA0, &unk_27D0147E8, &unk_2227459E8, MEMORY[0x277D224B8]);
  sub_222738EDC();

  __swift_destroy_boxed_opaque_existential_1(v22);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22272F8E0;
  *(v15 + 24) = v14;
  v23 = v12;
  v24 = v13;
  __swift_allocate_boxed_opaque_existential_1(v22);
  swift_unknownObjectRetain();
  sub_22273871C();
  type metadata accessor for AppOfferStateClient();
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v22);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2227243FC;
  *(v17 + 24) = v16;
  *(v17 + 32) = "getAppOfferStateService(for:withReplyHandler:)";
  *(v17 + 40) = 46;
  *(v17 + 48) = 2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2227243FC;
  *(v18 + 24) = v16;
  *(v18 + 32) = "getAppOfferStateService(for:withReplyHandler:)";
  *(v18 + 40) = 46;
  *(v18 + 48) = 2;
  v19 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v20 = sub_22273955C();
  v23 = v19;
  v24 = MEMORY[0x277D225C0];
  v22[0] = v20;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_22272DE08(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = *a1;
  v6 = qword_281313EB8;
  swift_beginAccess();
  sub_22266110C(v5 + v6, &v14, &unk_27D013120, &unk_222741980);
  if (v15)
  {
    sub_222634290(&v14, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
    *&v14 = v5;

    sub_222738EAC();
    sub_22266BCCC(v16, &v14);
    v7 = swift_allocObject();
    sub_222634290(&v14, v7 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014858, &qword_222745A60);
    v8 = sub_222738F2C();
    v9 = sub_22273946C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = &unk_222745A58;
    v10[5] = v7;
    v10[6] = v8;

    sub_2226D4E54(0, 0, v4, &unk_222745A68, v10);

    sub_22262BED4(&unk_281312E90, &qword_27D014858, &qword_222745A60, MEMORY[0x277D224B8]);
    v11 = sub_222738E7C();

    __swift_destroy_boxed_opaque_existential_1(v16);
    return v11;
  }

  else
  {
    sub_222660468(&v14, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
    result = sub_22273851C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22272E0C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22272E0E4, 0, 0);
}

uint64_t sub_22272E0E4()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_22272E198;

  return MEMORY[0x28213E438](v2, v3);
}

uint64_t sub_22272E198()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22272E2C8, 0, 0);
  }
}

uint64_t sub_22272E2C8()
{
  sub_22266BCCC(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

id sub_22272E32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0147F8, &qword_2227459F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014800, &qword_222745A00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014808, &qword_222745A08);
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13);
  v84 = v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014810, &qword_222745A10);
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x28223BE20](v15);
  v80 = v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014818, &qword_222745A18);
  v76 = *(v17 - 8);
  v77 = v17;
  MEMORY[0x28223BE20](v17);
  v74 = v73 - v18;
  sub_22266BCCC(a2, v121);
  v19 = qword_281313EB0;
  swift_beginAccess();
  sub_22266110C(a1 + v19, &v113, &qword_27D013070, &qword_222742730);
  if (v114)
  {
    v88 = v12;
    v89 = v10;
    v90 = v9;
    v91 = v8;
    v92 = v6;
    v93 = v5;
    sub_222634290(&v113, v120);
    v20 = qword_281313EC0;
    swift_beginAccess();
    sub_22266110C(a1 + v20, &v113, &unk_27D014820, &unk_222742740);
    if (v114)
    {
      sub_222634290(&v113, v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
      sub_222738C9C();
      v21 = type metadata accessor for JSStackManager(0);
      sub_222738C9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
      sub_222738C9C();
      sub_22266BCCC(a2, &v113);
      sub_222738C9C();
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v118, v118[3]);
      v87 = v73;
      v23 = MEMORY[0x28223BE20](v22);
      v25 = (v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25, v23);
      v27 = __swift_mutable_project_boxed_opaque_existential_1(v117, v117[3]);
      v83 = v73;
      v28 = MEMORY[0x28223BE20](v27);
      v30 = (v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v31 + 16))(v30, v28);
      v32 = v116;
      v73[0] = v116;
      v33 = *v25;
      v34 = *v30;
      v35 = type metadata accessor for ASDContingentPricingSubscriptionManager();
      v111 = v35;
      v112 = &off_2835CAB00;
      v110[0] = v33;
      v36 = type metadata accessor for LegacyAppStoreInstallStateMonitor();
      v108 = v36;
      v109 = &off_2835CAA40;
      v107[0] = v34;
      v106[3] = v21;
      v106[4] = &off_2835CA178;
      v106[0] = v32;
      v104 = &type metadata for DeviceAppDistribution;
      v105 = &off_2835C9118;
      v103[0] = swift_allocObject();
      sub_22269DCB0(&v113, v103[0] + 16);
      v37 = type metadata accessor for AppOfferStateClient();
      v38 = objc_allocWithZone(v37);
      v39 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
      v79 = v73;
      v40 = MEMORY[0x28223BE20](v39);
      v42 = (v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v43 + 16))(v42, v40);
      v44 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
      v78 = v73;
      v45 = MEMORY[0x28223BE20](v44);
      v47 = (v73 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v48 + 16))(v47, v45);
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
      v73[1] = v73;
      v50 = MEMORY[0x28223BE20](v49);
      v52 = (v73 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v53 + 16))(v52, v50);
      v54 = *v42;
      v55 = *v47;
      v101 = v35;
      v102 = &off_2835CAB00;
      v100[0] = v54;
      v98 = v36;
      v99 = &off_2835CAA40;
      v97[0] = v55;
      v96[3] = &type metadata for DeviceAppDistribution;
      v96[4] = &off_2835C9118;
      v56 = swift_allocObject();
      v96[0] = v56;
      v57 = v52[3];
      v56[3] = v52[2];
      v56[4] = v57;
      v56[5] = v52[4];
      v58 = v52[1];
      v56[1] = *v52;
      v56[2] = v58;
      *&v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph] = a1;
      sub_22266BCCC(v121, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController]);
      sub_22266BCCC(v120, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription]);
      sub_22266BCCC(v119, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions]);
      sub_22266BCCC(v100, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers]);
      sub_22266BCCC(v97, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStoreInstallStateMonitor]);
      sub_22266BCCC(v106, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager]);
      sub_22266BCCC(v115, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_localizer]);
      *&v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_delegate] = v75;
      sub_22266BCCC(v96, &v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appDistribution]);
      v59 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

      swift_unknownObjectRetain();
      v60 = [v59 init];
      *&v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock] = v60;
      *&v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations] = sub_2227335E8(MEMORY[0x277D84F90]);
      v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription] = 0;
      v38[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription] = 0;
      v95.receiver = v38;
      v95.super_class = v37;
      v61 = objc_msgSendSuper2(&v95, sel_init);
      __swift_project_boxed_opaque_existential_1(v121, v121[3]);
      v62 = v61;
      sub_22273795C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142B0, qword_2227454A0);
      v63 = MEMORY[0x277D21A98];
      sub_22262BED4(&unk_281312FC0, &qword_27D0142B0, qword_2227454A0, MEMORY[0x277D21A98]);
      sub_22273831C();
      v64 = v74;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v94);
      (*(v76 + 8))(v64, v77);
      __swift_project_boxed_opaque_existential_1(v120, v120[3]);
      sub_222737B9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014838, &qword_222745A20);
      sub_22262BED4(&qword_281312FD0, &unk_27D014838, &qword_222745A20, v63);
      sub_22273831C();
      v65 = v80;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v94);
      (*(v81 + 8))(v65, v82);
      __swift_project_boxed_opaque_existential_1(v119, v119[3]);
      sub_222737A7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014848, &qword_222745A28);
      sub_22262BED4(&unk_281312FB0, &unk_27D014848, &qword_222745A28, v63);
      sub_22273831C();
      v66 = v84;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v94);
      (*(v85 + 8))(v66, v86);
      __swift_project_boxed_opaque_existential_1(v100, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014230, &unk_222745A30);
      sub_22262BED4(&unk_281312F90, &qword_27D014230, &unk_222745A30, v63);

      sub_22273831C();
      v67 = v88;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v94);
      (*(v89 + 8))(v67, v90);
      __swift_project_boxed_opaque_existential_1(v97, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013020, &qword_2227416C8);
      sub_22262BED4(&unk_281312FA0, &qword_27D013020, &qword_2227416C8, v63);

      sub_22273831C();
      v68 = v91;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v94);
      (*(v92 + 8))(v68, v93);
      v69 = [objc_opt_self() defaultCenter];
      [v69 addObserver:v62 selector:sel_didChangeAppCapabilities_ name:*MEMORY[0x277CEC2F0] object:0];

      sub_22269DD0C(&v113);
      __swift_destroy_boxed_opaque_existential_1(v115);

      __swift_destroy_boxed_opaque_existential_1(v106);
      __swift_destroy_boxed_opaque_existential_1(v96);
      __swift_destroy_boxed_opaque_existential_1(v97);
      __swift_destroy_boxed_opaque_existential_1(v100);
      __swift_destroy_boxed_opaque_existential_1(v119);
      __swift_destroy_boxed_opaque_existential_1(v120);
      __swift_destroy_boxed_opaque_existential_1(v121);
      __swift_destroy_boxed_opaque_existential_1(v103);
      __swift_destroy_boxed_opaque_existential_1(v107);
      __swift_destroy_boxed_opaque_existential_1(v110);
      __swift_destroy_boxed_opaque_existential_1(v117);
      __swift_destroy_boxed_opaque_existential_1(v118);
      return v62;
    }

    sub_222660468(&v113, &unk_27D014820, &unk_222742740);
    v71 = &unk_27D0137C0;
    v72 = &qword_222742750;
  }

  else
  {
    sub_222660468(&v113, &qword_27D013070, &qword_222742730);
    v71 = &qword_27D013078;
    v72 = &unk_222741750;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
  result = sub_22273851C();
  __break(1u);
  return result;
}

uint64_t sub_22272F358(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v6 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v7 = *v6;
  v8 = *(*v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v8 lock];
  v9 = *(v7 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v9 >> 62) - 2 >= 2)
  {
    if (v9 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v16[0] = v9 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
    }
  }

  else
  {
    sub_22262D930();
  }

  [v8 unlock];
  v17 = sub_22273872C();
  v18 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013868, &qword_222742B10);
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_222725070;
  *(v11 + 24) = v10;
  *(v11 + 32) = "getUtilityService(replyHandler:)";
  *(v11 + 40) = 32;
  *(v11 + 48) = 2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222725070;
  *(v12 + 24) = v10;
  *(v12 + 32) = "getUtilityService(replyHandler:)";
  *(v12 + 40) = 32;
  *(v12 + 48) = 2;
  v13 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v14 = sub_22273955C();
  v17 = v13;
  v18 = MEMORY[0x277D225C0];
  v16[0] = v14;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_22272F73C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  type metadata accessor for ObjectGraph(0);
  return sub_222738C9C();
}

uint64_t sub_22272F7D4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_22272F8E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  return result;
}

uint64_t sub_22272F9C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_22272FA1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222660228;

  return sub_22272E0C4(a1, v1 + 16);
}

uint64_t sub_22272FAB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D4B70(a1, v4, v5, v6, v7, v8);
}

double sub_22272FC5C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_2227381BC();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  a1(0, v10);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v11 = sub_222738F6C();
  __swift_project_value_buffer(v11, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v15 = MEMORY[0x277D840E8];
  v13[0] = a3;
  v13[1] = a4;
  v14 = a5;
  sub_22273816C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v15 = MEMORY[0x277D84F78] + 8;
  sub_22273818C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return result;
}

double sub_22272FEB4(uint64_t a1, void (*a2)(void, __n128), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  a2(0, v12);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v19 = MEMORY[0x277D840E8];
  v17[0] = a4;
  v17[1] = a5;
  v18 = a6;
  sub_22273816C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v14 = sub_22273875C();
  v19 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a1, v14);
  sub_22273818C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return result;
}

double sub_22273014C(char a1, void (*a2)(void, __n128), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  a2(0, v12);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v17 = MEMORY[0x277D840E8];
  v15[0] = a4;
  v15[1] = a5;
  v16 = a6;
  sub_22273816C();
  sub_222660468(v15, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v17 = MEMORY[0x277D839B0];
  LOBYTE(v15[0]) = a1 & 1;
  sub_22273818C();
  sub_222660468(v15, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return result;
}

void sub_2227303AC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22273726C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_222730544(int a1, id a2, void (*a3)(id))
{
  if (a2)
  {
    v5 = a2;
    a3(a2);
  }

  else
  {
    a3(0);
  }
}

uint64_t sub_2227305BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013270, qword_222741D50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_2227373DC();
    v10 = sub_2227373FC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_2227373FC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_222660468(v8, &qword_27D013270, qword_222741D50);
}

uint64_t sub_222730818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A0, &unk_222741CA0);
  v5 = [objc_opt_self() sharedWorkspace];
  v6 = sub_2227372BC();
  v7 = [v5 openURL_];

  MEMORY[0x223DBE260](v7);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = "openURL(_:withReplyHandler:)";
  *(v8 + 40) = 28;
  *(v8 + 48) = 2;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = "openURL(_:withReplyHandler:)";
  *(v9 + 40) = 28;
  *(v9 + 48) = 2;
  v10 = sub_22262D828();
  swift_retain_n();
  v11 = sub_22273955C();
  v13[3] = v10;
  v13[4] = MEMORY[0x277D225C0];
  v13[0] = v11;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_2227309BC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CEC4B0]);
  v5 = sub_22273916C();
  v6 = [v4 initWithBundleID_];

  [v6 setUserInitiated_];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v11[4] = sub_222730B28;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2227305BC;
  v11[3] = &block_descriptor_15;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v7 installApp:v10 withCompletionHandler:v9];
  _Block_release(v9);
}

void sub_222730B50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_222730BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_22268BB0C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_222688818(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_22268C598();
        v15 = v17;
      }

      sub_22268B2F8(v11, v15);
      *v5 = v15;
    }
  }
}

void sub_222730CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22269457C(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_22268BC94(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_222660468(a1, &qword_27D0130C0, &unk_2227413B0);
    sub_2226890E0(a2, a3, v8);

    sub_222660468(v8, &qword_27D0130C0, &unk_2227413B0);
  }
}

double sub_222730D94()
{
  v1 = objc_allocWithZone(MEMORY[0x277CFA3A0]);
  v2 = sub_22273916C();
  v3 = [v1 initWithServiceDomain:v2 delegate:v0];

  v4 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener;
  v5 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener);
  *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener) = v3;

  v6 = *(v0 + v4);
  if (v6)
  {
    [v6 activate];
  }

  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  return result;
}

uint64_t sub_222730F54(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_222731000()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222738F6C();
  __swift_allocate_value_buffer(v4, qword_281315B70);
  __swift_project_value_buffer(v4, qword_281315B70);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v3, v5, v0);
  return sub_222738F5C();
}

double sub_222731154(void *a1, uint64_t a2, unint64_t a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v6 = sub_2227381BC();
  MEMORY[0x28223BE20](v6 - 8);
  v111 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22273869C();
  v104 = *(v8 - 8);
  v105 = v8;
  MEMORY[0x28223BE20](v8);
  v103 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2227391EC();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x28223BE20](v10);
  v106 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2227370AC();
  v12 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v94 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v94 - v17;
  MEMORY[0x28223BE20](v19);
  v109 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014190, &qword_222744C48);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v94 - v22;
  v24 = sub_2227370EC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a2;
  sub_2227370CC();
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    (*(v25 + 32))(v27, v23, v24);
    v29 = sub_2227370BC();
    v30 = v24;
    v28 = v29;
    if (!v29)
    {
      (*(v25 + 8))(v27, v30);
      v114 = 0;
      goto LABEL_15;
    }

    v96 = v30;
    v97 = v27;
    v98 = v25;
    v99 = a1;
    v100 = a3;
    v31 = *(v29 + 16);
    if (v31)
    {
      a3 = 0;
      v114 = v12 + 16;
      v115 = (v12 + 8);
      while (1)
      {
        if (a3 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v32 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v112 = *(v12 + 72);
        v113 = *(v12 + 16);
        v113(v18, v28 + v32 + v112 * a3, v116);
        if (sub_22273708C() == 0x7363697274656DLL && v33 == 0xE700000000000000)
        {
          break;
        }

        v34 = sub_222739B4C();

        if (v34)
        {
          goto LABEL_37;
        }

        ++a3;
        (*v115)(v18, v116);
        if (v31 == a3)
        {
          goto LABEL_12;
        }
      }

LABEL_37:

      v50 = *(v12 + 32);
      v51 = v109;
      v52 = v116;
      v50(v109, v18, v116);
      sub_22273709C();
      v54 = v53;
      v109 = *(v12 + 8);
      (v109)(v51, v52);
      a1 = v99;
      a3 = v100;
      v55 = v98;
      if (v54)
      {
        v95 = v50;
        v56 = v106;
        sub_2227391DC();
        v57 = sub_2227391AC();
        v59 = v58;

        (*(v107 + 8))(v56, v108);
        if (v59 >> 60 != 15)
        {
          v60 = objc_opt_self();
          v61 = v59;
          v62 = sub_22273732C();
          *&v119 = 0;
          v63 = [v60 JSONObjectWithData:v62 options:0 error:&v119];

          if (v63)
          {
            v94 = v61;
            v108 = v57;
            v64 = v119;
            sub_22273977C();
            swift_unknownObjectRelease();
            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014260, &unk_222745AD0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              (*(v55 + 8))(v97, v96);
              sub_2226D0D38(v108, v94);
              goto LABEL_3;
            }

            v66 = *&v118[0];
            v67 = sub_2227370BC();
            v106 = v66;
            v107 = v65;
            if (v67)
            {
              if (*(v67 + 16))
              {
                v68 = *(v67 + 16);
                v69 = 0;
                v70 = v67 + v32;
                v71 = v102;
                do
                {
                  if (v69 >= *(v67 + 16))
                  {
                    __break(1u);
                  }

                  v72 = v67;
                  v113(v71, v70, v116);
                  if (sub_22273708C() == 0x6369706F74 && v73 == 0xE500000000000000)
                  {
                  }

                  else
                  {
                    v74 = sub_222739B4C();

                    if ((v74 & 1) == 0)
                    {
                      goto LABEL_44;
                    }
                  }

                  v75 = sub_22273709C();
                  if (v76)
                  {
                    v77 = v75;
                    v78 = v76;

                    v79 = HIBYTE(v78) & 0xF;
                    if ((v78 & 0x2000000000000000) == 0)
                    {
                      v79 = v77 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v79)
                    {

                      v80 = v101;
                      v81 = v116;
                      v95(v101, v71, v116);
                      v114 = sub_22273709C();
                      v28 = v82;
                      (v109)(v80, v81);
                      goto LABEL_60;
                    }
                  }

LABEL_44:
                  ++v69;
                  (v109)(v71, v116);
                  v70 += v112;
                  v67 = v72;
                }

                while (v68 != v69);
              }
            }

            v114 = 0;
            v28 = 0;
LABEL_60:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_222741CB0;
            *(inited + 32) = 0x707954746E657665;
            *(inited + 40) = 0xE900000000000065;
            v86 = v103;
            sub_22273867C();
            v87 = sub_22273868C();
            v89 = v88;
            v90 = (*(v104 + 8))(v86, v105);
            v91 = MEMORY[0x277D837D0];
            *(inited + 48) = v87;
            *(inited + 56) = v89;
            *(inited + 72) = v91;
            strcpy((inited + 80), "widgetContext");
            *(inited + 94) = -4864;
            MEMORY[0x28223BE20](v90);
            *(&v94 - 2) = &unk_2835C7798;
            sub_222733F30(v106, sub_222733D5C);
            v93 = v92;
            swift_arrayDestroy();

            *(inited + 96) = v93;
            *(inited + 120) = v107;
            *(inited + 128) = 0x7954707041666572;
            *(inited + 168) = v91;
            *(inited + 136) = 0xEA00000000006570;
            *(inited + 144) = 0x746567646977;
            *(inited + 152) = 0xE600000000000000;
            v12 = sub_222710688(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
            swift_arrayDestroy();
            sub_2226D0D38(v108, v94);
            (*(v98 + 8))(v97, v96);
LABEL_13:
            a1 = v99;
            a3 = v100;
            goto LABEL_16;
          }

          v83 = v119;
          v84 = sub_22273727C();

          swift_willThrow();
          sub_2226D0D38(v57, v61);
        }
      }

      (*(v55 + 8))(v97, v96);
      goto LABEL_3;
    }

LABEL_12:
    (*(v98 + 8))(v97, v96);

    v114 = 0;
    v28 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  sub_222660468(v23, &qword_27D014190, &qword_222744C48);
LABEL_3:
  v114 = 0;
  v28 = 0;
LABEL_15:
  v12 = 0;
LABEL_16:
  v35 = [a1 integerValue];
  if (v35 != 1)
  {
    if (v35)
    {
      if (qword_281313500 != -1)
      {
        swift_once();
      }

      v40 = sub_222738F6C();
      __swift_project_value_buffer(v40, qword_281315B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      goto LABEL_25;
    }

    if (qword_281313500 == -1)
    {
LABEL_19:
      v36 = sub_222738F6C();
      __swift_project_value_buffer(v36, qword_281315B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v37 = sub_22273731C();
      v120 = v37;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v119);
      (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v110, v37);
      sub_22273815C();
      sub_222660468(&v119, &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
LABEL_25:
      sub_222738C4C();
      goto LABEL_29;
    }

LABEL_62:
    swift_once();
    goto LABEL_19;
  }

  v116 = v28;
  if (v12)
  {
    v120 = MEMORY[0x277D837D0];
    *&v119 = 0xD000000000000012;
    *(&v119 + 1) = 0x8000000222747B00;
    sub_22269457C(&v119, v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v12;
    sub_22268BC94(v118, 0x6449746567726174, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v12 = v117;
  }

  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v41 = sub_222738F6C();
  __swift_project_value_buffer(v41, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v42 = sub_22273731C();
  v120 = v42;
  v43 = __swift_allocate_boxed_opaque_existential_1(&v119);
  (*(*(v42 - 8) + 16))(v43, v110, v42);
  sub_22273815C();
  sub_222660468(&v119, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
  v28 = v116;
LABEL_29:

  if (v12 && v28)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = Strong;

      v46 = swift_allocObject();
      v46[2] = a3;
      v46[3] = v12;
      v46[4] = v114;
      v46[5] = v28;
      v47 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);

      v48 = sub_22273955C();
      v120 = v47;
      v121 = MEMORY[0x277D225C0];
      *&v119 = v48;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v119);
    }

    else
    {
    }
  }

  return result;
}

void sub_2227321EC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_222734108(a3, a4, a5, v8);
  }
}

void sub_222732270(uint64_t a1, uint64_t a2)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v12 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v11, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v5 = sub_22273731C();
  v12 = v5;
  v6 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v5 - 8) + 16))(v6, a2, v5);
  sub_22273815C();
  sub_222660468(v11, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v7 = [objc_opt_self() sharedWorkspace];
  v8 = sub_2227372BC();
}

void *sub_2227327A0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_222733DB4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_222732830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013620, &qword_222742610);
  result = sub_222739A6C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_22269458C(v17 + 40 * v16, v36);
    v33 = v36[0];
    v34 = v36[1];
    v35 = v37;
    sub_222739C5C();

    sub_22273924C();
    result = sub_222739C8C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    v30 = *(v9 + 56) + 40 * v24;
    *v30 = v33;
    *(v30 + 16) = v34;
    *(v30 + 32) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222732A94(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222739B4C() & 1;
  }
}

double sub_222732AEC(uint64_t a1)
{
  v1 = sub_2227381BC();
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v6, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  return result;
}

unint64_t sub_222732D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013600, &qword_222742DD0);
    v3 = sub_222739A6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_222688818(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222732E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013620, &qword_222742610);
    v3 = sub_222739A6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22266110C(v4, &v16, &qword_27D014928, &unk_222745B10);
      v5 = v16;
      v6 = v17;
      result = sub_222688818(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222732F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B20, &qword_222745B00);
    v3 = sub_222739A6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22266110C(v4, v13, &unk_27D014910, &qword_222741B10);
      result = sub_222688890(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22269457C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2227330A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0148F0, &unk_222745AE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013500, &qword_222742578);
    v7 = sub_222739A6C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22266110C(v9, v5, &unk_27D0148F0, &unk_222745AE0);
      result = sub_2226888D4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_222737C2C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_22273793C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2227332C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014900, &unk_222745AF0);
  v3 = sub_222739A6C();
  LOWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_22268896C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 2 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 8);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22268896C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2227333D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014920, &qword_222745B08);
    v3 = sub_222739A6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_222694708();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2227334D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0135F0, &qword_2227425E8);
    v3 = sub_222739A6C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_222688818(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2227335E8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013628, &qword_222742618);
  v3 = sub_222739A6C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2226889B4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2226889B4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_2227336F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22273731C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = v4;
  v30 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2227381BC();
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v36 = v2;
  v7 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v8 = *(v3 + 16);
  v8(v7, a1, v2);
  v25 = v8;
  v26 = v3 + 16;
  sub_22273815C();
  sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v9 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  v28 = v9;
  v10 = sub_2227372BC();
  v27 = [v9 handleURL_];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v30;
  v8(v30, a1, v2);
  v13 = v3;
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v29 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = a1;
  v16 = swift_allocObject();
  v17 = v12;
  v18 = *(v13 + 32);
  v24[1] = v13 + 32;
  v31 = v18;
  v18(v16 + v14, v12, v2);
  *(v16 + v15) = v11;
  v19 = ObjectType;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v37 = sub_222733C0C;
  v38 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_222730B40;
  v36 = &block_descriptor_16;
  v20 = _Block_copy(&aBlock);

  v21 = v27;
  [v27 addSuccessBlock_];
  _Block_release(v20);
  v25(v17, v29, v2);
  v22 = swift_allocObject();
  v31(v22 + v14, v17, v2);
  *(v22 + v15) = v19;
  v37 = sub_222733CB4;
  v38 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_222730B48;
  v36 = &block_descriptor_11;
  v23 = _Block_copy(&aBlock);

  [v21 addErrorBlock_];
  _Block_release(v23);
}

double sub_222733C0C(void *a1)
{
  v3 = *(sub_22273731C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_222731154(a1, v1 + v4, v5);
}

void sub_222733CB4(uint64_t a1)
{
  v3 = *(sub_22273731C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_222732270(a1, v4);
}

uint64_t sub_222733D5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;
  return sub_222730F54(sub_2227340B0, v5, v3) & 1;
}

void sub_222733DB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *, __n128))
{
  v23 = a4;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_22269458C(*(a3 + 56) + 40 * v14, v22);

    LOBYTE(v16) = (v23)(v16, v17, v22);
    sub_2226945E8(v22);

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_222732830(a1, a2, v21, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_222733F30(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _BYTE *, __n128))
{
  v4 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_2227327A0(v9, v6, v4, a2);
      MEMORY[0x223DBFCA0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_222733DB4(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_2227340B0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_222739B4C() & 1;
  }
}

uint64_t sub_222734108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a2;
  v26 = sub_22273887C();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = sub_2227382CC();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2227385FC();
  v23 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222738C9C();

  sub_22273829C();
  sub_22273886C();
  v16 = objc_allocWithZone(ASCMetricsActivity);
  v17 = [v16 init];
  v27 = v17;
  if (qword_27D0129D0 != -1)
  {
    swift_once();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
  __swift_project_value_buffer(v18, qword_27D019C98);
  sub_22262E364(0, &qword_27D013080, off_2784B06E8);
  sub_22273882C();

  v19 = *(v4 + 8);
  v19(v6, v26);
  sub_2227385EC();

  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v20 = sub_222738F6C();
  __swift_project_value_buffer(v20, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v19(v9, v26);
  (*(v24 + 8))(v12, v25);
  return (*(v23 + 8))(v15, v13);
}

id sub_22273458C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_2227381BC();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  ObjectType = &type metadata for XPCEntitledConnection;
  aBlock[0] = a3;
  v10 = a3;
  sub_22273815C();
  sub_222672BA0(aBlock);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v11 = *(v3 + 16);
  [*(v4 + 16) lock];
  swift_beginAccess();
  v12 = *(v4 + 24);
  v13 = v10;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 24) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_222695340(0, *(v12 + 2) + 1, 1, v12);
    *(v4 + 24) = v12;
  }

  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  if (v16 >= v15 >> 1)
  {
    v12 = sub_222695340((v15 > 1), v16 + 1, 1, v12);
  }

  *(v12 + 2) = v16 + 1;
  v17 = &v12[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = a1;
  *(v4 + 24) = v12;
  swift_endAccess();
  v18 = &selRef_isPad;
  [v11 unlock];
  v19 = v13;
  [v19 setExportedInterface_];
  ObjectType = swift_getObjectType();
  aBlock[0] = a1;
  sub_2226FD65C(aBlock, v36);
  v20 = v37;
  if (v37)
  {
    v21 = __swift_project_boxed_opaque_existential_1(v36, v37);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = aBlock - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    swift_unknownObjectRetain();
    v26 = sub_222739B2C();
    (*(v22 + 8))(v25, v20);
    v18 = &selRef_isPad;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    swift_unknownObjectRetain();
    v26 = 0;
  }

  [v19 setExportedObject_];

  swift_unknownObjectRelease();
  sub_222672BA0(aBlock);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a1;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_222734F9C;
  *(v29 + 24) = v28;
  v34 = sub_222734FA4;
  v35 = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22269F82C;
  ObjectType = &block_descriptor_17;
  v30 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v19 setInvalidationHandler_];
  _Block_release(v30);

  [v11 lock];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  return [v11 v18[176]];
}

uint64_t sub_222734B10()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      [*(v1 + v3) invalidate];
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_222694698(v0 + 32);
  return swift_deallocClassInstance();
}

uint64_t sub_222734BF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    [v5 lock];
    sub_222734CA4(v4, a2);
    [v5 unlock];
  }

  return result;
}

void sub_222734CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (*v8 != a2)
    {
      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    v9 = qword_281312E18;
    v10 = *(v8 - 1);
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_222738F6C();
    __swift_project_value_buffer(v11, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v15[3] = &type metadata for XPCEntitledConnection;
    v15[0] = v10;
    v12 = v10;
    sub_22273815C();
    sub_222672BA0(v15);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    swift_beginAccess();
    v13 = sub_2226A5F74(v7);
    swift_endAccess();
    swift_unknownObjectRelease();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_unknownObjectRelease();
    }
  }

LABEL_10:
  if (!*(*(a1 + 24) + 16))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2226A0CC8();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_222734FCC()
{
  v1 = [*v0 description];
  v2 = sub_22273919C();

  return v2;
}

void *sub_222735024(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22273916C();

  v5 = [a1 valueForEntitlement_];

  if (v5)
  {
    sub_22273977C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {

    sub_222672BA0(v11);
    return 0;
  }

  sub_2226CB914();
  if ((swift_dynamicCast() & 1) == 0 || (v6 = [v8 BOOLValue], v8, !v6))
  {

    return 0;
  }

  return a1;
}

void __ASCSignpostTagCreateForProcess_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = 136446466;
  v3 = "ASCSignpostTag ASCSignpostTagCreateForProcess(uint64_t, pid_t)_block_invoke";
  v4 = 2050;
  v5 = v1;
  _os_log_fault_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "*** %{public}s: Value %{public}llul exceeds 47 bits, break on _ASCSignpostTag_valueTooLarge to debug", &v2, 0x16u);
}

void ASCPostRebootstrapNotification_cold_2(uint64_t a1)
{
  v1 = ASCStringFromNotifyStatus(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_get_state failed: %{public}@", v3, v4, v5, v6, v7);
}

void ASCPostRebootstrapNotification_cold_3(uint64_t a1)
{
  v1 = ASCStringFromNotifyStatus(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_set_state failed: %{public}@", v3, v4, v5, v6, v7);
}

void ASCRegisterForRebootstrapQANotification_cold_1(uint64_t a1)
{
  v1 = ASCStringFromNotifyStatus(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_register_dispatch failed: %{public}@", v3, v4, v5, v6, v7);
}

void ASCUnregisterForRebootstrapQANotification_cold_1(uint64_t a1)
{
  v1 = ASCStringFromNotifyStatus(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_cancel failed: %{public}@", v3, v4, v5, v6, v7);
}

void __ASCRebootstrapNotificationGetToken_block_invoke_cold_1(uint64_t a1)
{
  v1 = ASCStringFromNotifyStatus(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_register_check failed: %{public}@", v3, v4, v5, v6, v7);
}