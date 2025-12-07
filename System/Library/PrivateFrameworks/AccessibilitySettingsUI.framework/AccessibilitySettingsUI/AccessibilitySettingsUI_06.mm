uint64_t ReplicatedState.init(sourceBinding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D9DA604();
  MEMORY[0x23EEF3850]();
  v12 = a3 + *(type metadata accessor for ReplicatedState(0, a2, v10, v11) + 28);
  *(v12 + *(sub_23D9DA3E4() + 28)) = 0;
  (*(v6 + 32))(v12, v8, a2);
  return (*(*(v9 - 8) + 32))(a3, a1, v9);
}

uint64_t AXSUIStreamValueView.init<>(stream:animated:content:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v23 = a4;
  v24 = a6;
  v22 = a3;
  v12 = sub_23D9D8E34();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  (*(v13 + 16))(&v21 - v15, a1, v12, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v18 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
  *(&v20 + 1) = a7;
  *&v20 = v17;
  AXSUIStreamValueView.init(stream:animated:_:loadingView:)(v16, v22, v23, sub_23D9CD254, 0, a5, v24, x8_0, v20, v18);
  return (*(v13 + 8))(a1, v12);
}

id sub_23D9CB304()
{
  type metadata accessor for AXSUISettingsLogger();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E2F7320 = result;
  return result;
}

uint64_t sub_23D9CB370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = MEMORY[0x277D84568];
  v12 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v13 = sub_23D9D8E34();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = *(v10 + *v11);
  v16 = type metadata accessor for AXSUIAsyncStreamBinding(0, *(v12 + 16), v14, v15);
  *(a5 + v16[9]) = a2;
  result = (*(*(v14 - 8) + 32))(a5 + v16[10], a3, v14);
  *(a5 + v16[11]) = a4;
  return result;
}

uint64_t sub_23D9CB498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = (*a2 + *MEMORY[0x277D84568]);
  v11 = v10[1];
  v12 = sub_23D9D8E34();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = *(v11 + 16);
  *(v15 + 24) = *v10;
  v16 = sub_23D9D8E34();
  sub_23D9D8E24();

  (*(*(v16 - 8) + 8))(a1, v16);
  return sub_23D9CB370(v14, a2, a3, a4, a5);
}

uint64_t sub_23D9CB614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23D9DA9B4();
  v3[5] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9CB6B0, v5, v4);
}

uint64_t sub_23D9CB6B0()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v1 - 8);
  (*(v4 + 16))(v3, v2, v1);
  (*(v4 + 56))(v3, 0, 1, v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_23D9CB784(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_23D9DAD74();
  v10 = MEMORY[0x28223BE20](v6);
  if (*(v2 + *(a2 + 44)) == 1)
  {
    MEMORY[0x28223BE20](v7);
    v11 = *(a2 + 24);
    *&v13[-32] = v5;
    *&v13[-24] = v11;
    *&v13[-16] = v2;
    *&v13[-8] = a1;
    sub_23D9DA744();
    sub_23D9D9594();
  }

  else
  {
    (*(v9 + 16))(&v13[-v8], a1, v10);
    return swift_setAtReferenceWritableKeyPath();
  }
}

uint64_t sub_23D9CB8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23D9DAD74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  type metadata accessor for AXSUIAsyncStreamBinding(0, a3, a4, v11);
  (*(v8 + 16))(v10, a2, v7);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_23D9CB9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a1;
  v29 = a3;
  v28 = sub_23D9DA9F4();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  swift_getWitnessTable();
  sub_23D9D9C34();
  sub_23D9D9584();
  v10 = sub_23D9D96C4();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v14);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = *(a2 + 16);
  (*(v7 + 32))(v18 + v17, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  v20 = v24;
  sub_23D9DA9C4();
  sub_23D9DA174();

  (*(v26 + 8))(v20, v28);
  v21 = sub_23D9D0998(&qword_27E2F4228, MEMORY[0x277CDD8B8], MEMORY[0x277CDD8A8]);
  v30 = WitnessTable;
  v31 = v21;
  swift_getWitnessTable();
  sub_23D91F510();
  v22 = *(v25 + 8);
  v22(v12, v10);
  sub_23D91F510();
  return (v22)(v16, v10);
}

uint64_t sub_23D9CBDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_23D9DAD74();
  v3[5] = v4;
  sub_23D9DAD74();
  v3[6] = swift_task_alloc();
  v5 = sub_23D9DAA24();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[12] = v6;
  v3[13] = sub_23D9DA9B4();
  v3[14] = sub_23D9DA9A4();
  v7 = swift_task_alloc();
  v3[15] = v7;
  v8 = sub_23D9D8E34();
  v3[16] = v8;
  *v7 = v3;
  v7[1] = sub_23D9CBF8C;

  return MEMORY[0x282138898](v6, v8);
}

uint64_t sub_23D9CBF8C()
{
  v1 = *v0;

  v3 = sub_23D9DA994();
  *(v1 + 136) = v3;
  *(v1 + 144) = v2;

  return MEMORY[0x2822009F8](sub_23D9CC0D0, v3, v2);
}

uint64_t sub_23D9CC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[12];
  v6 = type metadata accessor for AXSUIAsyncStreamBinding(0, v4[3], v4[4], a4);
  v4[19] = v6;
  sub_23D9CB784(v5, v6);
  sub_23D9D8E14();
  v7 = sub_23D9DA9A4();
  v4[20] = v7;
  v8 = swift_task_alloc();
  v4[21] = v8;
  *v8 = v4;
  v8[1] = sub_23D9CC1C8;
  v9 = v4[6];
  v10 = v4[7];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v9, v7, v11, v10);
}

uint64_t sub_23D9CC1C8()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_23D9CC30C, v3, v2);
}

uint64_t sub_23D9CC30C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[12];
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[7];

    (*(v5 + 8))(v6, v7);
    (*(v1 + 8))(v4, v2);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[19];
    v11 = v0[11];
    (*(v1 + 32))(v11, v3, v2);
    sub_23D9CB784(v11, v10);
    (*(v1 + 8))(v11, v2);
    v12 = sub_23D9DA9A4();
    v0[20] = v12;
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_23D9CC1C8;
    v14 = v0[6];
    v15 = v0[7];
    v16 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v14, v12, v16, v15);
  }
}

uint64_t sub_23D9CC55C(uint64_t a1)
{
  v3 = sub_23D9DAD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  sub_23D9DA3A4();
  return (*(v4 + 8))(a1, v3);
}

void *sub_23D9CC650()
{
  sub_23D9DAD74();
  sub_23D9DA3E4();
  return sub_23D9DA3B4();
}

uint64_t AXSUIStreamValueView.init(stream:animated:_:loadingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10)
{
  v26 = a9;
  v18 = sub_23D9DAD74();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27[-1] - v19;
  v27[0] = a6;
  v27[1] = a7;
  v28 = a9;
  v29 = a10;
  v21 = type metadata accessor for AXSUIStreamValueView(0, v27);
  (*(*(a6 - 8) + 56))(v20, 1, 1, a6);
  sub_23D9CC55C(v20);
  v22 = sub_23D9D8E34();
  result = (*(*(v22 - 8) + 32))(a8, a1, v22);
  v24 = (a8 + v21[15]);
  *v24 = a2;
  v24[1] = a3;
  *(a8 + v21[17]) = 1;
  v25 = (a8 + v21[16]);
  *v25 = a4;
  v25[1] = a5;
  return result;
}

uint64_t AXSUIStreamValueView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v30 = a2;
  v31 = *(a1 + 24);
  sub_23D9D9B24();
  v4 = sub_23D9DA344();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = *(v3 + 16);
  v27 = type metadata accessor for AXSUIAsyncStreamBinding(255, v7, v3, v8);
  v9 = sub_23D9D96C4();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v26 = &v25 - v13;
  v12.i64[0] = v7;
  *&v14 = vdupq_laneq_s64(v31, 1).u64[0];
  v16 = *(v3 + 40);
  v15 = *(v3 + 48);
  *(&v14 + 1) = v16;
  v36 = vzip1q_s64(v12, v31);
  v37 = v14;
  v38 = v15;
  v39 = v2;
  v43 = v16;
  v44 = v15;
  WitnessTable = swift_getWitnessTable();
  sub_23D9DA334();
  v32 = v7;
  v33 = v31;
  v34 = v16;
  v35 = v15;
  KeyPath = swift_getKeyPath();
  LODWORD(v3) = *(v2 + *(v3 + 68));
  v42 = WitnessTable;
  v19 = swift_getWitnessTable();
  v20 = v25;
  View.bind<A, B>(stream:to:on:animated:)(v2, KeyPath, v2, v3, v4, v19, v25);

  (*(v28 + 8))(v6, v4);
  v21 = swift_getWitnessTable();
  v40 = v19;
  v41 = v21;
  swift_getWitnessTable();
  v22 = v26;
  sub_23D91F510();
  v23 = *(v29 + 8);
  v23(v20, v9);
  sub_23D91F510();
  return (v23)(v22, v9);
}

uint64_t sub_23D9CCBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a7;
  v54 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v45 - v15;
  v52 = *(v16 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v51 = &v45 - v21;
  v22 = sub_23D9DAD74();
  v47 = *(v22 - 8);
  v48 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  v25 = *(a2 - 8);
  MEMORY[0x28223BE20](v26);
  v49 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23D9D9B24();
  v55 = *(v28 - 8);
  v56 = v28;
  MEMORY[0x28223BE20](v28);
  v60 = &v45 - v29;
  v63[0] = a2;
  v63[1] = a3;
  v63[2] = a4;
  v63[3] = a5;
  v57 = a5;
  v58 = a6;
  v63[4] = a6;
  v30 = type metadata accessor for AXSUIStreamValueView(0, v63);
  sub_23D9CC650();
  v31 = a2;
  if ((*(v25 + 48))(v24, 1, a2) == 1)
  {
    v32 = (*(v47 + 8))(v24, v48);
    (*(a1 + *(v30 + 64)))(v32);
    v33 = v51;
    v34 = v58;
    sub_23D91F510();
    v35 = *(v52 + 8);
    v35(v19, a4);
    sub_23D91F510();
    v36 = v57;
    sub_23D9CA7DC(v19, a3, a4, v57, v34);
    v35(v19, a4);
    v35(v33, a4);
  }

  else
  {
    v37 = *(v25 + 32);
    v38 = v49;
    v46 = v31;
    v37(v49, v24, v31);
    v39 = v50;
    (*(a1 + *(v30 + 60)))(v38);
    v40 = v53;
    v36 = v57;
    sub_23D91F510();
    v41 = *(v54 + 8);
    v41(v39, a3);
    sub_23D91F510();
    v34 = v58;
    sub_23D9CA6E4(v39, a3, a4, v36, v58);
    v41(v39, a3);
    v41(v40, a3);
    (*(v25 + 8))(v38, v46);
  }

  v61 = v36;
  v62 = v34;
  v42 = v56;
  swift_getWitnessTable();
  v43 = v60;
  sub_23D91F510();
  return (*(v55 + 8))(v43, v42);
}

void *sub_23D9CD100(void x0_0, uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + a2 - 8);
  v4 = *(a1 + a2 - 24);
  v6[0] = *(a1 + a2 - 40);
  v6[1] = v4;
  v7 = v3;
  type metadata accessor for AXSUIStreamValueView(0, v6);
  return sub_23D9CC650();
}

uint64_t sub_23D9CD158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(a3 + a4 - 24);
  v8[0] = *(a3 + a4 - 40);
  v8[1] = v6;
  v9 = v5;
  type metadata accessor for AXSUIStreamValueView(0, v8);
  return sub_23D9CEFC0(a1);
}

uint64_t sub_23D9CD1B8()
{
  v1 = qword_27E2F73A8;
  v2 = sub_23D9D8A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ReplicatedState.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_23D9CF254(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*ReplicatedState.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  sub_23D9DA3E4();
  sub_23D9DA3B4();
  return sub_23D9CD430;
}

void sub_23D9CD430(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_23D9CF0AC(v3, v7);
    sub_23D9CF17C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_23D9CF0AC((*a1)[5], v7);
    sub_23D9CF17C(v4, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *ReplicatedState.projectedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v16[0] = *(v3 + 16);
  (v16[0])(v16 - v7, v6);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v11 = *(a1 + 16);
  *(v10 + 4) = v11;
  v12 = *(v3 + 32);
  v12(&v10[v9], v8, a1);
  v13 = v17;
  (v16[0])(v17, v16[1], a1);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v11;
  v12(&v14[v9], v13, a1);
  return sub_23D9DA594();
}

uint64_t sub_23D9CD714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ReplicatedState(0, a5, a3, a4);
  sub_23D9CF0AC(a1, v6);
  return sub_23D9CF17C(a1, v6);
}

uint64_t sub_23D9CD780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA584();
  return v1;
}

uint64_t sub_23D9CD7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v50 = a3;
  swift_getWitnessTable();
  v5 = sub_23D9D9C34();
  v6 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v7 = sub_23D9D96C4();
  v42 = v5;
  WitnessTable = swift_getWitnessTable();
  v40 = *(a2 + 24);
  v55 = v40;
  v56 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0, MEMORY[0x277CE0870]);
  v43 = swift_getWitnessTable();
  v51 = v5;
  v52 = v7;
  v53 = WitnessTable;
  v54 = v43;
  v46 = MEMORY[0x277CDEE30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v47 = OpaqueTypeMetadata2;
  v48 = v9;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v36 - v12;
  v13 = *(v6 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_checkMetadataState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v37 = v3;
  (*(v3 + 24))(v21);
  swift_getKeyPath();
  v51 = 0;
  v39 = v23;
  v24 = v40;
  sub_23D9D9FC4();

  (*(v13 + 8))(v16, v6);
  v37 = sub_23D9CD780();
  v25 = v38;
  (*(v18 + 16))(v38, v23, v17);
  v26 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = v24;
  (*(v18 + 32))(v27 + v26, v25, v17);
  v28 = swift_checkMetadataState();
  v29 = v43;
  v30 = WitnessTable;
  v31 = v41;
  sub_23D9DA184();

  (*(v18 + 8))(v39, v17);
  v51 = v28;
  v52 = v17;
  v53 = v30;
  v54 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v45;
  v33 = v47;
  sub_23D91F510();
  v34 = *(v48 + 8);
  v34(v31, v33);
  sub_23D91F510();
  return (v34)(v32, v33);
}

uint64_t sub_23D9CDCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v4 = sub_23D9D96C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0, MEMORY[0x277CE0870]);
  v10[0] = a3;
  v10[1] = v8;
  swift_getWitnessTable();
  sub_23D91F510();
  sub_23D91F510();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23D9CDE54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7630, &qword_23D9E33E8);
  sub_23D91F01C(&qword_27E2F7638, &qword_27E2F7630, &qword_23D9E33E8, MEMORY[0x277CE04B8]);
  sub_23D91B650();
  return sub_23D9DA064();
}

uint64_t AXSUIPlatformFormListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v34 = MEMORY[0x277D84A98];
  v35 = v3;
  v36 = MEMORY[0x277D84AA8];
  v37 = v2;
  v4 = sub_23D9D9E94();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = sub_23D9D96C4();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  type metadata accessor for AXNavigationSink(255);
  v10 = sub_23D9D96C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v27 = v3;
  v28 = v2;
  v29 = v23;
  sub_23D9D9E84();
  WitnessTable = swift_getWitnessTable();
  View.axSettingsAppearance()(v4, WitnessTable);
  (*(v24 + 8))(v6, v4);
  v18 = sub_23D927AFC();
  v32 = WitnessTable;
  v33 = v18;
  v19 = swift_getWitnessTable();
  View.axNavigationSink()(v7, v19);
  (*(v25 + 8))(v9, v7);
  v20 = sub_23D9D0998(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
  v30 = v19;
  v31 = v20;
  swift_getWitnessTable();
  sub_23D91F510();
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_23D91F510();
  return (v21)(v16, v10);
}

uint64_t sub_23D9CE294(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D91F510();
  sub_23D91F510();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23D9CE374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v69 = a1;
  v78 = a4;
  v77 = sub_23D9D9714();
  v66 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7640, &qword_23D9E33F0);
  v60 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v59 = &v54 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7648, &qword_23D9E33F8);
  v62 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v61 = &v54 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7650, &qword_23D9E3400);
  v65 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v63 = &v54 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7658, &qword_23D9E3408);
  MEMORY[0x28223BE20](v71);
  v74 = &v54 - v10;
  v67 = sub_23D9D99A4();
  v11 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_23D9D9734();
  v55 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7660, &qword_23D9E3410);
  v58 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v56 = &v54 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7668, &qword_23D9E3418);
  v57 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v18 = &v54 - v17;
  v19 = sub_23D9D9954();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7670, &qword_23D9E3420);
      v24 = sub_23D91F01C(&qword_27E2F7678, &qword_27E2F7670, &qword_23D9E3420, MEMORY[0x277CE04B8]);
      v25 = v59;
      v58 = v23;
      sub_23D9D9F54();
      v26 = v67;
      (*(v11 + 104))(v13, *MEMORY[0x277CDDDB8], v67);
      v79 = v23;
      v80 = v24;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v28 = v61;
      v29 = v73;
      sub_23D9DA144();
      (*(v11 + 8))(v13, v26);
      (*(v60 + 8))(v25, v29);
      v30 = v64;
      sub_23D9DA774();
      v79 = v29;
      v80 = OpaqueTypeConformance2;
      v31 = swift_getOpaqueTypeConformance2();
      v32 = sub_23D9D0998(&qword_27E2F7680, MEMORY[0x277CDDAB0], MEMORY[0x277CDDAA0]);
      v33 = v63;
      v34 = v75;
      v35 = v77;
      sub_23D9DA224();
      (*(v66 + 8))(v30, v35);
      (*(v62 + 8))(v28, v34);
      v36 = v65;
      v37 = v76;
      (*(v65 + 16))(v74, v33, v76);
      swift_storeEnumTagMultiPayload();
      v79 = v58;
      v80 = v68;
      v81 = v24;
      v82 = MEMORY[0x277CDDAC0];
      v38 = swift_getOpaqueTypeConformance2();
      v79 = v70;
      v80 = v38;
      swift_getOpaqueTypeConformance2();
      v79 = v34;
      v80 = v35;
      v81 = v31;
      v82 = v32;
      swift_getOpaqueTypeConformance2();
      sub_23D9D9B14();
      return (*(v36 + 8))(v33, v37);
    }
  }

  else
  {

    sub_23D9DACD4();
    v54 = v18;
    v40 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    v18 = v54;
    sub_23D91F080(a2, 0);
    (*(v20 + 8))(v22, v19);
    if (v79 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_23D9D9724();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7670, &qword_23D9E3420);
  v42 = sub_23D91F01C(&qword_27E2F7678, &qword_27E2F7670, &qword_23D9E3420, MEMORY[0x277CE04B8]);
  v43 = MEMORY[0x277CDDAC0];
  v44 = v56;
  v45 = v68;
  sub_23D9DA234();
  (*(v55 + 8))(v15, v45);
  v46 = v67;
  (*(v11 + 104))(v13, *MEMORY[0x277CDDDA8], v67);
  v79 = v41;
  v80 = v45;
  v81 = v42;
  v82 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v70;
  sub_23D9DA144();
  (*(v11 + 8))(v13, v46);
  (*(v58 + 8))(v44, v48);
  v49 = v57;
  v50 = v72;
  (*(v57 + 16))(v74, v18, v72);
  swift_storeEnumTagMultiPayload();
  v79 = v48;
  v80 = v47;
  swift_getOpaqueTypeConformance2();
  v79 = v41;
  v80 = v42;
  v51 = swift_getOpaqueTypeConformance2();
  v79 = v73;
  v80 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_23D9D0998(&qword_27E2F7680, MEMORY[0x277CDDAB0], MEMORY[0x277CDDAA0]);
  v79 = v75;
  v80 = v77;
  v81 = v52;
  v82 = v53;
  swift_getOpaqueTypeConformance2();
  sub_23D9D9B14();
  return (*(v49 + 8))(v18, v50);
}

uint64_t sub_23D9CEEE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.axBuddySetupMode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D9CEF10@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.axBuddySetupMode.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_23D9CEFAC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_23D9CEFC0(uint64_t a1)
{
  v2 = sub_23D9DAD74();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_23D9DA3E4();
  return sub_23D9DA3C4();
}

uint64_t sub_23D9CF0AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_23D9DA604();
  return sub_23D9DA564();
}

uint64_t sub_23D9CF17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_23D9DA3E4();
  return sub_23D9DA3C4();
}

uint64_t sub_23D9CF254(uint64_t a1, uint64_t a2)
{
  sub_23D9CF0AC(a1, a2);

  return sub_23D9CF17C(a1, a2);
}

void *sub_23D9CF2A0(void x0_0, void x1_0, uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReplicatedState(0, *(v3 + 32), a1, a2);
  sub_23D9DA3E4();
  return sub_23D9DA3B4();
}

uint64_t objectdestroyTm_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for ReplicatedState(0, v5, a3, a4) - 8);
  v7 = (*(*v6 + 80) + 40) & ~*(*v6 + 80);
  swift_unknownObjectRelease();

  v8 = sub_23D9DA604();
  v9 = *(*(v5 - 8) + 8);
  v9(v4 + v7 + *(v8 + 32), v5);
  v9(v4 + v7 + v6[9], v5);
  sub_23D9DA3E4();

  return swift_deallocObject();
}

uint64_t sub_23D9CF46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = *(type metadata accessor for ReplicatedState(0, v6, a3, a4) - 8);
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_23D9CD714(a1, v8, v9, v10, v6);
}

unint64_t sub_23D9CF660(uint64_t a1)
{
  result = sub_23D9D8E34();
  if (v2 <= 0x3F)
  {
    result = sub_23D95F334();
    if (v3 <= 0x3F)
    {
      sub_23D9DAD74();
      result = sub_23D9DA3E4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23D9CF738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D9D8E34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 60));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_23D9DAD74();
    v11 = sub_23D9DA3E4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 72);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D9CF888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D9D8E34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  else
  {
    sub_23D9DAD74();
    v11 = sub_23D9DA3E4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 72);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23D9CF9D8(uint64_t a1)
{
  result = sub_23D9D8A54();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23D9CFA88(uint64_t a1)
{
  result = sub_23D9DA604();
  if (v2 <= 0x3F)
  {
    result = sub_23D9DA3E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23D9CFB18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + (((v6 | 7) + v7 + ((v6 + 16) & ~v6)) & ~(v6 | 7)) + 8;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

_BYTE *sub_23D9CFC78(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) == -8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) == -8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) != -8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_23D9CFE74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXSUIAsyncStreamBinding(255, a1[1], a1[2], a4);
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9CFF14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_23D9D9B24();
  sub_23D9DA344();
  v9[0] = v1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v6 = type metadata accessor for AXSUIStreamValueView(255, v9);
  type metadata accessor for AXSUIAsyncStreamBinding(255, v1, v6, v7);
  sub_23D9D96C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9D004C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformSheet(255, a1[1], a1[3], a4);
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9D00E0(uint64_t *a1)
{
  sub_23D9D9E94();
  sub_23D9D96C4();
  type metadata accessor for AXNavigationSink(255);
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D927AFC();
  swift_getWitnessTable();
  sub_23D9D0998(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
  return swift_getWitnessTable();
}

uint64_t sub_23D9D0204(void *a1)
{
  sub_23D9D96C4();
  sub_23D927AFC();
  return swift_getWitnessTable();
}

uint64_t sub_23D9D0268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D9D02A4(uint64_t a1, int a2)
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

uint64_t sub_23D9D02EC(uint64_t result, int a2, int a3)
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

uint64_t sub_23D9D0360(uint64_t a1)
{
  sub_23D9DAD74();
  result = sub_23D9D8E34();
  if (v2 <= 0x3F)
  {
    result = sub_23D9DAFA4();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23D9D0444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23D9DAD74();
  v6 = sub_23D9D8E34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = *(*(*(a3 + 24) - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2);
  }
}

uint64_t sub_23D9D0584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23D9DAD74();
  result = sub_23D9D8E34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = *(*(*(a4 + 24) - 8) + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2);
  }

  return result;
}

uint64_t sub_23D9D0770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = (type metadata accessor for AXSUIAsyncStreamBinding(0, *(v4 + 16), v5, a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  sub_23D9DAD74();
  v8 = sub_23D9D8E34();
  (*(*(v8 - 8) + 8))(v7, v8);

  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);

  return swift_deallocObject();
}

uint64_t sub_23D9D08B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AXSUIAsyncStreamBinding(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23D928310;

  return sub_23D9CBDAC(v4 + v9, v6, v7);
}

uint64_t sub_23D9D0998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9D0A08()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v2 = *(sub_23D9D96C4() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23D9D0B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v3 = *(sub_23D9D96C4() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D9CDCDC(v4, v1, v2);
}

uint64_t sub_23D9D0BCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23D92A70C;

  return sub_23D9CB614(a1, a2, v6);
}

uint64_t sub_23D9D0C80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7630, &qword_23D9E33E8);
  sub_23D91F01C(&qword_27E2F7638, &qword_27E2F7630, &qword_23D9E33E8, MEMORY[0x277CE04B8]);
  sub_23D91B650();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D9D0D30()
{
  result = qword_27E2F7688;
  if (!qword_27E2F7688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7690, &unk_23D9E3480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7660, &qword_23D9E3410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7670, &qword_23D9E3420);
    sub_23D9D9734();
    sub_23D91F01C(&qword_27E2F7678, &qword_27E2F7670, &qword_23D9E3420, MEMORY[0x277CE04B8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7648, &qword_23D9E33F8);
    sub_23D9D9714();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7640, &qword_23D9E33F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D9D0998(&qword_27E2F7680, MEMORY[0x277CDDAB0], MEMORY[0x277CDDAA0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7688);
  }

  return result;
}

uint64_t sub_23D9D0F68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXSUIAsyncStreamBinding(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_23D9D9C34();
  sub_23D9D9584();
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D9D0998(&qword_27E2F4228, MEMORY[0x277CDD8B8], MEMORY[0x277CDD8A8]);
  return swift_getWitnessTable();
}

uint64_t sub_23D9D1060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformSheet(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_23D9D9C34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0, MEMORY[0x277CE0870]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t VoiceSelectionCellDetailView.init(preferredLocale:selectedVoice:languages:dismissOnSelect:sheetOpen:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23D9DA3A4();
  *a9 = v31;
  *(a9 + 16) = v32;
  v19 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v20 = v19[5];
  v21 = sub_23D9D89C4();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = a9 + v19[7];
  *v22 = swift_getKeyPath();
  *(v22 + 40) = 0;
  v23 = v19[11];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  result = sub_23D93DA98(a1, a9 + v20);
  v25 = (a9 + v19[8]);
  *v25 = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v26 = (a9 + v19[9]);
  *v26 = a6;
  v26[1] = a7;
  v26[2] = a8;
  *(a9 + v19[6]) = a10;
  v27 = a9 + v19[10];
  *v27 = a11;
  *(v27 + 8) = a12;
  *(v27 + 16) = a13;
  return result;
}

void *sub_23D9D1374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v34 = a8;
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43E8, &qword_23D9DC0C0);
  v21 = (a9 + v20[13]);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v20[15];
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B8, &qword_23D9DBE20);
  sub_23D9DA3A4();
  v23 = v38;
  *v22 = v37;
  *(v22 + 2) = v23;
  v24 = sub_23D9D88A4();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  sub_23D91F2DC(v19, v16, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  sub_23D91F344(v19, &unk_27E2F6A30, &qword_23D9E0BC0);
  v25 = a9 + v20[17];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = a9 + v20[18];
  LOBYTE(v35) = 0;
  result = sub_23D9DA3A4();
  v28 = *(&v37 + 1);
  *v26 = v37;
  *(v26 + 1) = v28;
  v29 = a9 + v20[14];
  v30 = v32;
  *v29 = v31;
  *(v29 + 1) = v30;
  *(v29 + 2) = v33;
  v29[24] = v34 & 1;
  return result;
}

void *sub_23D9D1614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, uint64_t *a10)
{
  v35 = a7;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a10);
  v22 = a9 + v21[13];
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = a3;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[15];
  v36 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA3A4();
  v24 = v38;
  *v23 = v37;
  *(v23 + 1) = v24;
  v25 = sub_23D9D88A4();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  sub_23D91F2DC(v20, v17, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  sub_23D91F344(v20, &unk_27E2F6A30, &qword_23D9E0BC0);
  v26 = a9 + v21[17];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a9 + v21[18];
  v36 = 0;
  result = sub_23D9DA3A4();
  v29 = v38;
  *v27 = v37;
  *(v27 + 1) = v29;
  v30 = a9 + v21[14];
  v31 = v33;
  *v30 = v32;
  *(v30 + 1) = v31;
  *(v30 + 2) = v34;
  v30[24] = v35 & 1;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.init(label:selectedVoiceId:preferredLocale:dismissOnSelect:showLanguagePicker:languages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, unsigned __int8 a10, __int128 a11, uint64_t a12)
{
  v44 = a8;
  v43 = a7;
  v40 = a5;
  v41 = a6;
  v37 = a3;
  v35 = a2;
  v42 = a10;
  v38 = a12;
  v39 = a4;
  v36 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v21 = v20[5];
  v22 = sub_23D9D89C4();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = sub_23D9D8C74();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  sub_23D91F2DC(v19, v16, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  sub_23D91F344(v19, &qword_27E2F4460, &qword_23D9DC2A0);
  v24 = &a9[v20[11]];
  v45 = 0;
  sub_23D9DA3A4();
  v25 = v47;
  *v24 = v46;
  *(v24 + 1) = v25;
  v26 = v20[12];
  *&a9[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  swift_storeEnumTagMultiPayload();
  v27 = v20[13];
  *&a9[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  v28 = v35;
  *a9 = a1;
  *(a9 + 1) = v28;
  v29 = &a9[v20[8]];
  v31 = v39;
  v30 = v40;
  *v29 = v37;
  *(v29 + 1) = v31;
  *(v29 + 2) = v30;
  *(v29 + 3) = v41;
  v32 = &a9[v20[10]];
  *v32 = v36;
  *(v32 + 2) = v38;
  result = sub_23D93DA98(v43, &a9[v21]);
  a9[v20[7]] = v44;
  a9[v20[6]] = v42;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AXSUIGenericVoiceSelectionCell.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.preferredLocale.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 20);

  return sub_23D93DA98(a1, v3);
}

uint64_t AXSUIGenericVoiceSelectionCell.showLanguagePicker.setter(char a1)
{
  result = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.dismissOnSelect.setter(char a1)
{
  result = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*AXSUIGenericVoiceSelectionCell.selectedVoiceId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v9 = v5[2];
  v8 = v5[3];
  v4[14] = v9;
  v4[15] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850]();
  return sub_23D9D82FC;
}

uint64_t AXSUIGenericVoiceSelectionCell.languages.getter()
{
  v1 = v0 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40);
  v4[1] = *v1;
  v5 = *(v1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850](v4, v2);
  return v4[0];
}

void *sub_23D9D1F7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40);
  v6[1] = *v3;
  v7 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  result = MEMORY[0x23EEF3850](v6, v4);
  *a2 = v6[0];
  return result;
}

uint64_t sub_23D9D1FF8(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for AXSUIGenericVoiceSelectionCell(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t AXSUIGenericVoiceSelectionCell.languages.setter(uint64_t a1)
{
  type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t (*AXSUIGenericVoiceSelectionCell.languages.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850]();
  return sub_23D9D8300;
}

uint64_t AXSUIGenericVoiceSelectionCell.$languages.getter()
{
  type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  sub_23D9DA584();
  return v1;
}

uint64_t sub_23D9D2214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  sub_23D91F2DC(v1 + *(v10 + 48), v9, &qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9664();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double AXSUIGenericVoiceSelectionCell.cellView.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D9D2214(v7);
  v8 = sub_23D9D9654();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v23 = sub_23D9D9AB4();
    LOBYTE(v24) = 1;
    sub_23D93FCC4();
  }

  else
  {
    v23 = sub_23D9D99B4();
    LOBYTE(v24) = 1;
    sub_23D93FC00();
  }

  *a1 = sub_23D9DA764();

  sub_23D9D25F0(v2, &v13);
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v18 = v13;
  v19 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v23 = v13;
  v24 = v14;
  sub_23D91F2DC(&v18, v12, &qword_27E2F7698, &unk_23D9E3528);
  sub_23D91F344(&v23, &qword_27E2F7698, &unk_23D9E3528);

  v9 = v18;
  *(a1 + 24) = v19;
  v10 = v21;
  *(a1 + 40) = v20;
  *(a1 + 56) = v10;
  result = *&v22;
  *(a1 + 72) = v22;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_23D9D25F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D8C74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39[-v9];
  v11 = a1[1];
  v45 = *a1;
  v46 = v11;
  sub_23D91B650();

  v43 = sub_23D9D9F04();
  v13 = v12;
  v42 = v14;
  v16 = v15;
  type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3B4();
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v22 = v21;
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    v45 = v22;
    v46 = v24;
    v25 = sub_23D9D9F04();
    v27 = v26;
    v41 = v16;
    v29 = v28;
    sub_23D9DA2F4();
    v17 = sub_23D9D9EB4();
    v18 = v30;
    v40 = v31;
    v20 = v32;

    v33 = v29 & 1;
    v16 = v41;
    sub_23D9274BC(v25, v27, v33);

    v19 = v40 & 1;
    sub_23D91E0AC(v17, v18, v40 & 1);
  }

  v34 = v42 & 1;
  LOBYTE(v45) = v42 & 1;
  v44 = 1;
  v35 = v43;
  sub_23D91E0AC(v43, v13, v42 & 1);

  sub_23D992AF4(v17, v18, v19, v20);
  sub_23D992B38(v17, v18, v19, v20);
  v36 = v45;
  v37 = v44;
  *a2 = v35;
  *(a2 + 8) = v13;
  *(a2 + 16) = v36;
  *(a2 + 24) = v16;
  *(a2 + 32) = 0;
  *(a2 + 40) = v37;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  *(a2 + 64) = v19;
  *(a2 + 72) = v20;
  sub_23D992B38(v17, v18, v19, v20);
  sub_23D9274BC(v35, v13, v34);
}

uint64_t sub_23D9D2958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  sub_23D91F2DC(v1 + *(v10 + 52), v9, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9574();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D9D2B60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v72 - v4;
  v5 = type metadata accessor for VoiceSelectionCellDetailView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7738, &qword_23D9E3740);
  MEMORY[0x28223BE20](v89);
  v78 = &v72 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7740, &qword_23D9E3748);
  v80 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v79 = &v72 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7748, &unk_23D9E3750);
  MEMORY[0x28223BE20](v87);
  v88 = &v72 - v10;
  v11 = sub_23D9D99A4();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x28223BE20](v11);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CE8, &unk_23D9DE890);
  MEMORY[0x28223BE20](v81);
  v17 = &v72 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7750, &qword_23D9E3760);
  *&v76 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v19 = &v72 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7758, &qword_23D9E3768);
  MEMORY[0x28223BE20](v86);
  v22 = &v72 - v21;
  if (*(v2 + v13[6]) == 1)
  {
    v80 = v20;
    sub_23D9D7DD0(v2, &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIGenericVoiceSelectionCell);
    v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v24 = swift_allocObject();
    sub_23D9D805C(&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AXSUIGenericVoiceSelectionCell);
    sub_23D93B644(sub_23D9D8264, v24, v17);
    v25._countAndFlagsBits = 0x45474155474E414CLL;
    v25._object = 0xEE00454C5449545FLL;
    *v94 = AXSUILocString(_:)(v25);
    v26 = sub_23D91F01C(&qword_27E2F4CE0, &qword_27E2F4CE8, &unk_23D9DE890, &protocol conformance descriptor for AXSUITTSLanguageList<A, B>);
    v27 = sub_23D91B650();
    v28 = v81;
    sub_23D9DA064();

    sub_23D91F344(v17, &qword_27E2F4CE8, &unk_23D9DE890);
    v30 = v82;
    v29 = v83;
    v31 = v84;
    (*(v83 + 104))(v82, *MEMORY[0x277CDDDB8], v84);
    *v94 = v28;
    *&v94[8] = MEMORY[0x277D837D0];
    *&v94[16] = v26;
    *&v94[24] = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v85;
    sub_23D9DA144();
    (*(v29 + 8))(v30, v31);
    (*(v76 + 8))(v19, v33);
    v34 = v80;
    v35 = v86;
    (*(v80 + 16))(v88, v22, v86);
    swift_storeEnumTagMultiPayload();
    *v94 = v33;
    *&v94[8] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v36 = sub_23D9D81A8();
    *v94 = v89;
    *&v94[8] = v36;
    swift_getOpaqueTypeConformance2();
    sub_23D9D9B14();
    return (*(v34 + 8))(v22, v35);
  }

  else
  {
    v38 = v77;
    sub_23D91F2DC(v2 + v13[5], v77, &qword_27E2F4670, &qword_23D9DC650);
    v39 = v2 + v13[8];
    v40 = *(v39 + 1);
    *v94 = *v39;
    *&v94[8] = v40;
    *&v94[16] = *(v39 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    sub_23D9DA584();
    v76 = *v92;
    v75 = *&v92[16];
    v74 = v93;
    v41 = v2 + v13[10];
    *v94 = *v41;
    *&v94[8] = *(v41 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
    sub_23D9DA584();
    v73 = *v92;
    v72 = *&v92[8];
    v42 = *(v2 + v13[7]);
    v43 = v2 + v13[11];
    v44 = *v43;
    v45 = *(v43 + 1);
    v92[0] = v44;
    *&v92[8] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
    sub_23D9DA3D4();
    v46 = *v94;
    v47 = v94[16];
    *v92 = 0;
    *&v92[8] = 0xE000000000000000;
    sub_23D9DA3A4();
    v48 = *&v94[16];
    *v7 = *v94;
    *(v7 + 2) = v48;
    v49 = v5[5];
    v50 = sub_23D9D89C4();
    (*(*(v50 - 8) + 56))(&v7[v49], 1, 1, v50);
    v51 = &v7[v5[7]];
    *v51 = swift_getKeyPath();
    v51[40] = 0;
    v52 = v5[11];
    *&v7[v52] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
    swift_storeEnumTagMultiPayload();
    sub_23D93DA98(v38, &v7[v49]);
    v53 = &v7[v5[8]];
    *v53 = v76;
    v54 = v74;
    *(v53 + 2) = v75;
    *(v53 + 3) = v54;
    v55 = &v7[v5[9]];
    *v55 = v73;
    *(v55 + 8) = v72;
    v7[v5[6]] = v42;
    v56 = &v7[v5[10]];
    *v56 = v46;
    v56[16] = v47;
    v58 = *v2;
    v57 = v2[1];
    v59 = v78;
    sub_23D9D7DD0(v7, v78, type metadata accessor for VoiceSelectionCellDetailView);
    v60 = v89;
    v61 = (v59 + *(v89 + 36));
    *v61 = v58;
    v61[1] = v57;

    sub_23D9D814C(v7);
    v63 = v82;
    v62 = v83;
    v64 = v84;
    (*(v83 + 104))(v82, *MEMORY[0x277CDDDB8], v84);
    v65 = sub_23D9D81A8();
    v66 = v79;
    sub_23D9DA144();
    (*(v62 + 8))(v63, v64);
    sub_23D91F344(v59, &qword_27E2F7738, &qword_23D9E3740);
    v67 = v80;
    v68 = v90;
    (*(v80 + 16))(v88, v66, v90);
    swift_storeEnumTagMultiPayload();
    v69 = sub_23D91F01C(&qword_27E2F4CE0, &qword_27E2F4CE8, &unk_23D9DE890, &protocol conformance descriptor for AXSUITTSLanguageList<A, B>);
    v70 = sub_23D91B650();
    *v94 = v81;
    *&v94[8] = MEMORY[0x277D837D0];
    *&v94[16] = v69;
    *&v94[24] = v70;
    v71 = swift_getOpaqueTypeConformance2();
    *v94 = v85;
    *&v94[8] = v71;
    swift_getOpaqueTypeConformance2();
    *v94 = v60;
    *&v94[8] = v65;
    swift_getOpaqueTypeConformance2();
    sub_23D9D9B14();
    return (*(v67 + 8))(v66, v68);
  }
}

double sub_23D9D36B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  sub_23D91F2DC(a2 + v9[5], v8, &qword_27E2F4670, &qword_23D9DC650);
  v10 = (a2 + v9[8]);
  v11 = v10[1];
  v42 = *v10;
  *v43 = v11;
  *&v43[8] = *(v10 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  sub_23D9DA584();
  v36 = v39;
  v34 = v41;
  v35 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v12 = sub_23D9D8954();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23D9DC3E0;
  (*(v13 + 16))(v15 + v14, a1, v12);
  v16 = sub_23D93D8F8(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  *&v39 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v17 = v42;
  LOBYTE(v16) = *(a2 + v9[7]);
  v18 = (a2 + v9[11]);
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v37) = v19;
  v38 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  v33 = *v43;
  sub_23D9DA3D4();
  v21 = v39;
  LOBYTE(v13) = v40;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_23D9DA3A4();
  v22 = v40;
  *a3 = v39;
  *(a3 + 16) = v22;
  v23 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v24 = v23[5];
  v25 = sub_23D9D89C4();
  (*(*(v25 - 8) + 56))(a3 + v24, 1, 1, v25);
  v26 = a3 + v23[7];
  *v26 = swift_getKeyPath();
  *(v26 + 40) = 0;
  v27 = v23[11];
  *(a3 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  sub_23D93DA98(v8, a3 + v24);
  v28 = a3 + v23[8];
  *v28 = v36;
  v29 = v34;
  *(v28 + 16) = v35;
  *(v28 + 24) = v29;
  v30 = a3 + v23[9];
  *v30 = v17;
  result = *&v33;
  *(v30 + 8) = v33;
  *(a3 + v23[6]) = v16;
  v32 = a3 + v23[10];
  *v32 = v21;
  *(v32 + 16) = v13;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v76 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4260, &qword_23D9DBEA0) - 8);
  MEMORY[0x28223BE20](v76);
  v78 = &v63 - v2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76A0, &qword_23D9E3538);
  MEMORY[0x28223BE20](v75);
  v66 = &v63 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76A8, &unk_23D9E3540);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v63 - v4;
  v6 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v10;
  sub_23D9D7DD0(v1, &v63 - v10, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v72 = *(v8 + 80);
  v12 = swift_allocObject();
  sub_23D9D805C(&v63 - v10, v12 + v11, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  v79 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76B0, &qword_23D9E3550);
  sub_23D9D47C8();
  sub_23D9DA404();
  v13 = (v1 + *(v7 + 52));
  LODWORD(v74) = *v13;
  v73 = *(v13 + 1);
  LOBYTE(v83) = v74;
  v84 = v73;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  v14 = sub_23D9DA3B4();
  LOBYTE(v83) = v80;
  MEMORY[0x28223BE20](v14);
  v68 = type metadata accessor for AXSUIGenericVoiceSelectionCell;
  sub_23D9D7DD0(v1, &v63 - v10, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  v69 = v11;
  v15 = swift_allocObject();
  sub_23D9D805C(&v63 - v10, v15 + v11, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  sub_23D91F01C(&qword_27E2F76C8, &qword_27E2F76A8, &unk_23D9E3540, MEMORY[0x277CDF030]);
  v16 = v66;
  v17 = v65;
  sub_23D9DA1E4();

  (*(v67 + 8))(v5, v17);
  v18 = v1 + *(v7 + 40);
  v19 = *(v18 + 8);
  v83 = *v18;
  v84 = v19;
  v85 = *(v18 + 16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](&v80, v20);
  v21 = v80;
  v22 = v81;
  v23 = (v16 + *(v75 + 36));
  v24 = type metadata accessor for AXSUIVoiceLoader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v64 = v1;
  sub_23D9DA3D4();
  KeyPath = swift_getKeyPath();
  *v23 = v21;
  v23[1] = v22;
  v26 = v23 + *(v24 + 24);
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - v29;
  sub_23D9D9B54();
  sub_23D9D4D68();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  sub_23D9D9FA4();
  (*(v28 + 8))(v30, v27);
  sub_23D9D4EA8(v16);
  LOBYTE(v80) = v74;
  v81 = v73;
  v31 = sub_23D9DA3D4();
  v32 = v83;
  v33 = v84;
  LOBYTE(v23) = v85;
  MEMORY[0x28223BE20](v31);
  v34 = v71;
  v35 = v68;
  sub_23D9D7DD0(v1, &v63 - v71, v68);
  v36 = v69;
  v37 = v72;
  v38 = swift_allocObject();
  sub_23D9D805C(&v63 - v34, v38 + v36, v35);
  v80 = v32;
  v81 = v33;
  v82 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();
  v39 = v83;
  v40 = v84;
  LOBYTE(v23) = v85;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_23D9D4F10;
  *(v41 + 24) = v38;
  sub_23D9D1614(v39, v40, v23, sub_23D99275C, v41, 0, 0, &qword_27E2F7728, (v78 + *(v76 + 11)), &qword_23D9E36D8);

  MEMORY[0x28223BE20](v42);
  sub_23D9D7DD0(v64, &v63 - v34, v35);
  sub_23D9DA9B4();
  v43 = sub_23D9DA9A4();
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D85700];
  *(v44 + 16) = v43;
  *(v44 + 24) = v45;
  sub_23D9D805C(&v63 - v34, v44 + ((v37 + 32) & ~v37), v35);
  v46 = sub_23D9DA9F4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = &v63 - v49;
  sub_23D9DA9C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v75 = sub_23D9D9614();
    v76 = &v63;
    v74 = *(v75 - 8);
    MEMORY[0x28223BE20](v75);
    v52 = &v63 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_23D9DAE64();

    v83 = 0xD000000000000042;
    v84 = 0x800000023D9E4E00;
    v80 = 135;
    v53 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v53);

    v55 = MEMORY[0x28223BE20](v54);
    (*(v47 + 16))(&v63 - v49, &v63 - v49, v46, v55);
    sub_23D9D9604();
    (*(v47 + 8))(&v63 - v49, v46);
    v56 = v77;
    sub_23D9D6CFC(v78, v77);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4268, &qword_23D9DBEA8);
    return (*(v74 + 32))(v56 + *(v57 + 36), v52, v75);
  }

  else
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4270, &qword_23D9DBEB0);
    v60 = v77;
    v61 = (v77 + *(v59 + 36));
    v62 = sub_23D9D9584();
    (*(v47 + 32))(&v61[*(v62 + 20)], v50, v46);
    *v61 = &unk_23D9E3590;
    *(v61 + 1) = v44;
    return sub_23D9D6CFC(v78, v60);
  }
}

uint64_t sub_23D9D4510(uint64_t a1)
{
  type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9D4588()
{
  v1 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D9D4510(v2);
}

double sub_23D9D45E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D9D2214(v7);
  v8 = sub_23D9D9654();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v24 = sub_23D9D9AB4();
    LOBYTE(v25) = 1;
    sub_23D93FCC4();
  }

  else
  {
    v24 = sub_23D9D99B4();
    LOBYTE(v25) = 1;
    sub_23D93FC00();
  }

  v9 = sub_23D9DA764();

  sub_23D9D25F0(a1, &v14);
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v19 = v14;
  v20 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v24 = v14;
  v25 = v15;
  sub_23D91F2DC(&v19, v13, &qword_27E2F7698, &unk_23D9E3528);
  sub_23D91F344(&v24, &qword_27E2F7698, &unk_23D9E3528);

  *a2 = v9;
  v10 = v19;
  *(a2 + 24) = v20;
  v11 = v22;
  *(a2 + 40) = v21;
  *(a2 + 56) = v11;
  result = *&v23;
  *(a2 + 72) = v23;
  *(a2 + 8) = v10;
  return result;
}

unint64_t sub_23D9D47C8()
{
  result = qword_27E2F76B8;
  if (!qword_27E2F76B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76B0, &qword_23D9E3550);
    sub_23D91F01C(&qword_27E2F4DA0, &qword_27E2F4DA8, &unk_23D9DD4F0, MEMORY[0x277CDF508]);
    sub_23D91F01C(&qword_27E2F76C0, &qword_27E2F7698, &unk_23D9E3528, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F76B8);
  }

  return result;
}

void sub_23D9D48AC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_23D9D9574();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    v10 = v7;
    v11 = a3 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 32);
    v12 = *(v11 + 8);
    v14[2] = *v11;
    v14[3] = v12;
    v15 = *(v11 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    MEMORY[0x23EEF3850](v14, v13);
    if (v14[1])
    {
    }

    else
    {
      sub_23D9D2958(v9);
      sub_23D9D9564();
      (*(v6 + 8))(v9, v10);
    }
  }
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_23D9D89C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v2 + v1[9];
  v7 = sub_23D9D8C74();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  v9 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D9D9664();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D9D9574();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_23D9D4CE0(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23D9D48AC(a1, a2, v6);
}

unint64_t sub_23D9D4D68()
{
  result = qword_27E2F76D0;
  if (!qword_27E2F76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76A0, &qword_23D9E3538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76A8, &unk_23D9E3540);
    sub_23D91F01C(&qword_27E2F76C8, &qword_27E2F76A8, &unk_23D9E3540, MEMORY[0x277CDF030]);
    swift_getOpaqueTypeConformance2();
    sub_23D9D6E2C(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader, &unk_23D9E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F76D0);
  }

  return result;
}

uint64_t sub_23D9D4EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76A0, &qword_23D9E3538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9D4F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v4 = sub_23D9DAF04();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  sub_23D9DA9B4();
  v3[14] = sub_23D9DA9A4();
  v6 = sub_23D9DA994();
  v3[15] = v6;
  v3[16] = v5;

  return MEMORY[0x2822009F8](sub_23D9D5068, v6, v5);
}

uint64_t sub_23D9D5068()
{
  sub_23D9DB024();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_23D9D5134;

  return sub_23D9C9FEC(50000000000000000, 0, 0, 0, 1);
}

uint64_t sub_23D9D5134()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_23D9D82EC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_23D9D52C8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23D9D52C8()
{
  v1 = *(v0 + 80);

  v2 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v3 = v1 + *(v2 + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](v6);
  if (*(v0 + 56))
  {
  }

  else
  {
    v7 = (*(v0 + 80) + *(v2 + 44));
    v8 = *v7;
    v9 = *(v7 + 1);
    *(v0 + 64) = v8;
    *(v0 + 72) = v9;
    *(v0 + 144) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
    sub_23D9DA3C4();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23D9D53D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VoiceSelectionCellDetailView(0);
  sub_23D91F2DC(v1 + *(v7 + 28), v10, &qword_27E2F7730, qword_23D9E36E0);
  if (v11 == 1)
  {
    return sub_23D95EBF8(v10, a1);
  }

  sub_23D9DACD4();
  v9 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D9D5568(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  v3 = *(v2 + 8);
  v6[2] = *v2;
  v6[3] = v3;
  v7 = *(v2 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](v6, v4);
  return v6[0];
}

double sub_23D9D55D8@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  v9 = *v4;
  v10 = v5;
  v11 = *(v4 + 1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](&v8, v6);
  result = *&v8;
  *a3 = v8;
  return result;
}

uint64_t sub_23D9D5658(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  return sub_23D9DA564();
}

uint64_t sub_23D9D56F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  return sub_23D9DA564();
}

uint64_t (*VoiceSelectionCellDetailView.selectedVoice.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v9 = v5[2];
  v8 = v5[3];
  v4[14] = v9;
  v4[15] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850]();
  return sub_23D9D5844;
}

void sub_23D9D5848(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_23D9DA564();
  }

  else
  {
    sub_23D9DA564();
  }

  free(v2);
}

uint64_t sub_23D9D5938(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  sub_23D9DA584();
  return v2;
}

uint64_t VoiceSelectionCellDetailView.languages.getter()
{
  v1 = v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36);
  v4[1] = *v1;
  v5 = *(v1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850](v4, v2);
  return v4[0];
}

void *sub_23D9D5A14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36);
  v6[1] = *v3;
  v7 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  result = MEMORY[0x23EEF3850](v6, v4);
  *a2 = v6[0];
  return result;
}

uint64_t sub_23D9D5A90(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for VoiceSelectionCellDetailView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t VoiceSelectionCellDetailView.languages.setter(uint64_t a1)
{
  type metadata accessor for VoiceSelectionCellDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t (*VoiceSelectionCellDetailView.languages.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850]();
  return sub_23D9D5C40;
}

void sub_23D9D5C44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_23D9DA564();
  }

  else
  {
    sub_23D9DA564();
  }

  free(v2);
}

uint64_t VoiceSelectionCellDetailView.$languages.getter()
{
  type metadata accessor for VoiceSelectionCellDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  sub_23D9DA584();
  return v1;
}

uint64_t VoiceSelectionCellDetailView.sheetOpen.getter()
{
  v1 = (v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  MEMORY[0x23EEF3850](&v6, v4);
  return v6;
}

void *sub_23D9D5DE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  result = MEMORY[0x23EEF3850](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_23D9D5E5C(char *a1, uint64_t a2)
{
  type metadata accessor for VoiceSelectionCellDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  return sub_23D9DA564();
}

uint64_t VoiceSelectionCellDetailView.sheetOpen.setter(char a1)
{
  type metadata accessor for VoiceSelectionCellDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  return sub_23D9DA564();
}

void (*VoiceSelectionCellDetailView.sheetOpen.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  MEMORY[0x23EEF3850]();
  return sub_23D9D6004;
}

void sub_23D9D6004(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_23D9DA564();

  free(v1);
}

uint64_t VoiceSelectionCellDetailView.$sheetOpen.getter()
{
  type metadata accessor for VoiceSelectionCellDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA584();
  return v1;
}

uint64_t sub_23D9D60E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VoiceSelectionCellDetailView(0);
  sub_23D91F2DC(v1 + *(v10 + 44), v9, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9574();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D9D62F0()
{
  v1 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = v0 + *(v4 + 40);
  v6 = *(v5 + 8);
  v11 = *v5;
  v12 = v6;
  v13 = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  sub_23D9DA584();
  sub_23D9D7DD0(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceSelectionCellDetailView);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_23D9D805C(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for VoiceSelectionCellDetailView);
  sub_23D9DA524();

  return v11;
}

uint64_t sub_23D9D649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D9D9574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for VoiceSelectionCellDetailView(0);
  if (*(a3 + *(result + 24)) == 1)
  {
    sub_23D9D60E8(v7);
    sub_23D9D9564();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t VoiceSelectionCellDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_23D9D9B74();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76D8, &unk_23D9E3598);
  MEMORY[0x28223BE20](v23);
  v8 = v19 - v7;
  v9 = type metadata accessor for VoiceSelectionCellDetailView(0);
  sub_23D91F2DC(v1 + *(v9 + 20), v6, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D9D53D8(&v33);
  v19[4] = sub_23D9D62F0();
  v19[3] = v10;
  v19[2] = v11;
  v19[1] = v12;
  v13 = *v1;
  v21 = v1[1];
  v22 = v13;
  v20 = v1[2];
  v30 = v13;
  v31 = v21;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3D4();
  v14 = v1 + *(v9 + 36);
  v28 = *v14;
  v29 = *(v14 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  sub_23D9DA584();
  sub_23D9D9154();
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(v23 + 36)];
  *v16 = KeyPath;
  v16[8] = 0;
  v28 = v22;
  *&v29 = v21;
  *(&v29 + 1) = v20;
  sub_23D9DA3D4();
  v17 = v24;
  sub_23D9D9B64();
  sub_23D9D6D70();
  sub_23D9D9F94();

  (*(v26 + 8))(v17, v27);
  return sub_23D91F344(v8, &qword_27E2F76D8, &unk_23D9E3598);
}

uint64_t sub_23D9D68E4()
{

  return swift_deallocObject();
}

uint64_t sub_23D9D691C()
{
  v1 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  v5 = sub_23D9D89C4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v3 + v1[9];
  v8 = sub_23D9D8C74();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  v10 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9664();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9574();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D9D6C20()
{
  v2 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D928310;

  return sub_23D9D4F74(v4, v5, v0 + v3);
}

uint64_t sub_23D9D6CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4260, &qword_23D9DBEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9D6D70()
{
  result = qword_27E2F76E0;
  if (!qword_27E2F76E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76D8, &unk_23D9E3598);
    sub_23D9D6E2C(&qword_27E2F76E8, MEMORY[0x277D707B0], MEMORY[0x277D707A8]);
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F76E0);
  }

  return result;
}

uint64_t sub_23D9D6E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9D6F88(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_23D9D7180(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_23D9D7364(uint64_t a1)
{
  sub_23D9D75B8(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23D9D7AEC(319, &qword_27E2F7700, &qword_27E2F4458, &qword_23D9DD3A0, MEMORY[0x277CE1200]);
    if (v2 <= 0x3F)
    {
      sub_23D9D7AEC(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
      if (v3 <= 0x3F)
      {
        sub_23D9D7AEC(319, &qword_27E2F6E10, &qword_27E2F4778, &qword_23D9DC800, MEMORY[0x277CE1200]);
        if (v4 <= 0x3F)
        {
          sub_23D9D7B50(319, &qword_27E2F46A0, MEMORY[0x277D839B0], MEMORY[0x277CE10B0]);
          if (v5 <= 0x3F)
          {
            sub_23D9D75B8(319, &qword_27E2F4D58, MEMORY[0x277CDFA20], MEMORY[0x277CDF470]);
            if (v6 <= 0x3F)
            {
              sub_23D9D75B8(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
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

void sub_23D9D75B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23D9D7630(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23D9D7780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D9D78BC(uint64_t a1)
{
  sub_23D9D7B50(319, &qword_27E2F48E0, MEMORY[0x277D837D0], MEMORY[0x277CE10B0]);
  if (v1 <= 0x3F)
  {
    sub_23D9D75B8(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23D9D7AEC(319, &qword_27E2F67D8, &qword_27E2F67E0, "XO", MEMORY[0x277CDF470]);
      if (v3 <= 0x3F)
      {
        sub_23D9D7AEC(319, &qword_27E2F7700, &qword_27E2F4458, &qword_23D9DD3A0, MEMORY[0x277CE1200]);
        if (v4 <= 0x3F)
        {
          sub_23D9D7AEC(319, &qword_27E2F6E10, &qword_27E2F4778, &qword_23D9DC800, MEMORY[0x277CE1200]);
          if (v5 <= 0x3F)
          {
            sub_23D9D7B50(319, &qword_27E2F4CB0, MEMORY[0x277D839B0], MEMORY[0x277CE1200]);
            if (v6 <= 0x3F)
            {
              sub_23D9D75B8(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
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

void sub_23D9D7AEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23D9D7B50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23D9D7BE0()
{
  result = qword_27E2F7718;
  if (!qword_27E2F7718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4260, &qword_23D9DBEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76A0, &qword_23D9E3538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
    sub_23D9D4D68();
    sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F7720, &qword_27E2F7728, &qword_23D9E36D8, &unk_23D9E1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7718);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAA15ModifiedContentVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyALyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA0O0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVyAA03AnyV0VGAA05TupleC0VyAA4TextV_AA6SpacerVA4_SgtGGG_SbQo_021AccessibilitySettingsB016AXSUIVoiceLoaderVG_AA014NavigationLinkoM0Vys5NeverOGQo_A12_28AXValueNavigationDestinationVySbAA012_ConditionalK0VyAcAE29navigationBarTitleDisplayModeyQrAA17NavigationBarItemV16TitleDisplayModeOFQOyAcAE15navigationTitleyQrqd__SyRd__lFQOyA12_20AXSUITTSLanguageListVyA12_024VoiceSelectionCellDetailC0VAA05EmptyC0VG_SSQo__Qo_AcAEA26_yQrA30_FQOyALyA35_A12_23PlatformNavigationTitleVG_Qo_GGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9D7DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9D7E38()
{
  v1 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_23D9D89C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v2 + v1[7];
  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
  }

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D9574();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D9D805C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9D80C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VoiceSelectionCellDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9D649C(a1, a2, v6);
}

uint64_t sub_23D9D814C(uint64_t a1)
{
  v2 = type metadata accessor for VoiceSelectionCellDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D9D81A8()
{
  result = qword_27E2F7760;
  if (!qword_27E2F7760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7738, &qword_23D9E3740);
    sub_23D9D6E2C(&qword_27E2F7768, type metadata accessor for VoiceSelectionCellDetailView, &protocol conformance descriptor for VoiceSelectionCellDetailView);
    sub_23D99B160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7760);
  }

  return result;
}

double sub_23D9D8264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9D36B4(a1, v6, a2);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E2FB7E8 == -1)
  {
    if (qword_27E2FB7F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E2FB7F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E2FB7E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E2FB7D4 > a3)
      {
        return 1;
      }

      if (dword_27E2FB7D4 >= a3)
      {
        return dword_27E2FB7D8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E2FB7F0;
  if (qword_27E2FB7F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E2FB7F0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEF4510](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E2FB7D4, &dword_27E2FB7D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}