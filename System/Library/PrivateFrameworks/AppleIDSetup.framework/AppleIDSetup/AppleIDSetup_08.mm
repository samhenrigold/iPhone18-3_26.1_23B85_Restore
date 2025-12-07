uint64_t sub_24063B64C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  *(v0 + 312) = 0;
  *(v0 + 344) = v4;
  *(v0 + 352) = v5;
  v6 = *(v0 + 752) != 0;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;
  *(v0 + 336) = v3;
  *(v0 + 360) = v6;
  sub_240602210();

  sub_240759944();
  sub_24063CFA4(v2, v1, v3, v4, v5, v6);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063B760()
{
  v1 = *(v0 + 752);
  *(v0 + 272) = v1;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = v1 != 0;
  *(v0 + 632) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 752) != 0;
  *(v0 + 320) = v2;
  *(v0 + 328) = v4;
  *(v0 + 336) = 0;
  *(v0 + 360) = v3;
  sub_240602210();
  sub_240759944();
  sub_24063CFA4(v1, 0, 0, 0, 0, v3);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24063B884()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 768) != 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  *(v0 + 464) = v1;
  *(v0 + 488) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86D8, &unk_2407670A0);
  sub_240602210();
  sub_240759944();
  sub_24063CF98(v1, v2);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24063B970()
{
  v1 = *(v0 + 768);
  *(v0 + 624) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 768) != 0;
  *(v0 + 464) = v2;
  *(v0 + 472) = v4;
  *(v0 + 480) = 0;
  *(v0 + 488) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86D8, &unk_2407670A0);
  sub_240602210();
  sub_240759944();
  sub_24063CF98(v1, v3);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24063BA7C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_24063BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_24063BB6C, 0, 0);
}

uint64_t sub_24063BB6C()
{
  v1 = v0[19];
  v2 = sub_2407596B4();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_24063BCA4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063BA7C;
  v0[13] = &block_descriptor_116;
  v0[14] = v3;
  [v1 syncWithSIMData:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24063BCA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_24063BE24;
  }

  else
  {
    v2 = sub_24063BDB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063BDB4()
{
  v1 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24063BE24(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24063BE94(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 176) = a3;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  return MEMORY[0x2822009F8](sub_24063BEB8, 0, 0);
}

uint64_t sub_24063BEB8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24063BFE4;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_240614C9C;
  *(v0 + 104) = &block_descriptor_120;
  *(v0 + 112) = v3;
  [v2 fetchAnisetteDataAndProvisionIfNecessary:v1 withCompletion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24063BFE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_24063C23C;
  }

  else
  {
    v2 = sub_24063C0F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_24063C0F4()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    sub_24063DD00();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v13 = *(v0 + 8);
    goto LABEL_6;
  }

  result = [*(v0 + 144) machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = sub_24075A0B4();
  v6 = v5;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(v0 + 152);
  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = [v1 routingInfo];
  *v8 = v4;
  v8[1] = v6;
  v8[2] = v9;
  v8[3] = v11;
  v8[4] = v12;
  v13 = *(v0 + 8);
LABEL_6:

  return v13();
}

uint64_t sub_24063C23C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24063C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_24063C2CC, 0, 0);
}

uint64_t sub_24063C2CC()
{
  v1 = v0[20];
  v2 = sub_24075A084();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24063C404;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240614C9C;
  v0[13] = &block_descriptor_124;
  v0[14] = v3;
  [v1 legacyAnisetteDataForDSID:v2 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24063C404()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_24063C664;
  }

  else
  {
    v2 = sub_24063C514;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_24063C514()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    sub_24063DD00();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v13 = *(v0 + 8);
    goto LABEL_6;
  }

  result = [v1 machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = sub_24075A0B4();
  v6 = v5;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(v0 + 152);
  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = [v1 routingInfo];
  *v8 = v4;
  v8[1] = v6;
  v8[2] = v9;
  v8[3] = v11;
  v8[4] = v12;
  v13 = *(v0 + 8);
LABEL_6:

  return v13();
}

uint64_t sub_24063C664(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24063C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_240759454();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v6[28] = swift_task_alloc();
  v8 = sub_240759634();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24063C83C, 0, 0);
}

uint64_t sub_24063C83C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_240759614();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240639EB4(v0[28]);
    sub_24063DD00();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[31];
    v8 = v0[32];
    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[23];
    v15 = v0[24];
    v12 = v0[22];
    (*(v9 + 32))(v8, v0[28], v10);
    (*(v9 + 16))(v7, v8, v10);
    sub_240759414();
    sub_2405BB9D4(v12, v11);
    sub_240759444();
    v13 = sub_2407593F4();
    v0[33] = v13;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_24063CAC8;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C08, &qword_24076CEC0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240614C9C;
    v0[13] = &block_descriptor_128;
    v0[14] = v14;
    [v15 fetchPeerAttestationDataForRequest:v13 completion:?];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_24063CAC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_24063CDD0;
  }

  else
  {
    v2 = sub_24063CBD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063CBD8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 240);

  v3 = (v2 + 8);
  v4 = *(v0 + 256);
  if (v1)
  {
    v18 = *(v0 + 232);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 200);
    v17 = *(v0 + 152);
    v8 = [v1 attestationHeaders];
    v9 = sub_240759F74();

    (*(v6 + 8))(v5, v7);
    (*v3)(v4, v18);
    *v17 = v9;
  }

  else
  {
    v11 = *(v0 + 232);
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_24063DD00();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    (*v3)(v4, v11);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24063CDD0(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[32];
  v4 = v1[29];
  v5 = v1[30];
  v7 = v1[26];
  v6 = v1[27];
  v8 = v1[25];
  swift_willThrow();
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v1[1];

  return v9();
}

id AnisetteClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnisetteClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnisetteClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24063CF98(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_24063CFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

void sub_24063D00C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t dispatch thunk of AnisetteClient.provisionAnisette()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24063DDE8;

  return v5();
}

uint64_t dispatch thunk of AnisetteClient.syncAnisette(withSIMData:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24063D29C;

  return v9(a1, a2);
}

uint64_t sub_24063D29C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AnisetteClient.eraseAnisette()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24063DDE8;

  return v5();
}

uint64_t dispatch thunk of AnisetteClient.fetchAnisetteDataAndProvisionIfNecessary(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24063D29C;

  return v7(a1);
}

uint64_t dispatch thunk of AnisetteClient.legacyAnisetteData(forDSID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x80);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24063DDE8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AnisetteClient.fetchPeerAttestationData(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24063DDE8;

  return v7(a1);
}

uint64_t sub_24063D850()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_24063A0B0(v2, v3, v4);
}

uint64_t sub_24063D904()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240639428(v2, v3, v4);
}

uint64_t sub_24063D9B8()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_2406389A0(v2, v4, v3);
}

uint64_t sub_24063DA6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240637F0C(v2, v3);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24063DB60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405CE450;

  return sub_24063755C(v2, v3, v4);
}

uint64_t objectdestroy_70Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24063DC54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240636D6C(v2, v3);
}

unint64_t sub_24063DD00()
{
  result = qword_27E4B9C00;
  if (!qword_27E4B9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9C00);
  }

  return result;
}

unint64_t sub_24063DD68()
{
  result = qword_27E4B9C10;
  if (!qword_27E4B9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9C10);
  }

  return result;
}

uint64_t sub_24063DE14(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v4 = swift_task_alloc();
  v5 = *v2;
  v3[20] = v4;
  v3[21] = v5;

  return MEMORY[0x2822009F8](sub_24063DEB4, 0, 0);
}

uint64_t sub_24063DEB4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_24063DFDC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C20, &qword_24076CFD8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063E25C;
  v0[13] = &block_descriptor_5;
  v0[14] = v4;
  [v2 urlForKey:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24063DFDC(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  else
  {
    sub_24063E450(*(*v1 + 160), *(*v1 + 144));
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t dispatch thunk of AISAKURLBagProtocol.url(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405CE450;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_24063E25C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v13 = swift_allocError();
    *v14 = a3;
    v15 = a3;

    return MEMORY[0x282200958](v12, v13);
  }

  else
  {
    if (a2)
    {
      sub_240759604();
      v16 = sub_240759634();
      (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    }

    else
    {
      v17 = sub_240759634();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    sub_24063E450(v9, v11);
    sub_24063E450(v11, *(*(v12 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_24063E450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ViewServiceConfiguration.serviceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewServiceConfiguration.serviceName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ViewServiceConfiguration.viewControllerClassName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ViewServiceConfiguration.viewControllerClassName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ViewServiceConfiguration.cbDeviceXpcRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ViewServiceConfiguration(0) + 24);

  return sub_24063E660(v3, a1);
}

uint64_t type metadata accessor for ViewServiceConfiguration(uint64_t a1)
{
  result = qword_27E4B9CB0;
  if (!qword_27E4B9CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24063E660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ViewServiceConfiguration.cbDeviceXpcRepresentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ViewServiceConfiguration(0) + 24);

  return sub_24063E714(a1, v3);
}

uint64_t sub_24063E714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ViewServiceConfiguration.init(serviceName:viewControllerClassName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for ViewServiceConfiguration(0) + 24);
  v11 = sub_240759C14();
  result = (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 3) = a4;
  return result;
}

uint64_t sub_24063E860()
{
  v0 = type metadata accessor for ViewServiceConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27E4B9C28);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9C28);
  v2 = *(v0 + 24);
  v3 = sub_240759C14();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001FLL;
  *(v1 + 1) = 0x8000000240786D90;
  *(v1 + 2) = 0xD00000000000002ELL;
  *(v1 + 3) = 0x8000000240787970;
  return result;
}

uint64_t sub_24063E94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewServiceConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24063E9B0()
{
  v0 = type metadata accessor for ViewServiceConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27E4B9C40);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9C40);
  v2 = *(v0 + 24);
  v3 = sub_240759C14();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x8000000240787920;
  *(v1 + 2) = 0xD000000000000029;
  *(v1 + 3) = 0x8000000240787940;
  return result;
}

uint64_t sub_24063EA9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ViewServiceConfiguration(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_24063E94C(v7, a4);
}

uint64_t ViewServiceConfiguration.cbDeviceXpcRepresentation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_240759C14();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = *(type metadata accessor for ViewServiceConfiguration(0) + 24);
  sub_2405B8A50(v2 + v10, &qword_27E4B9C58, &qword_24076CFE0);
  sub_24063EC38(v7, v2 + v10);
  return sub_24063ECA8(v2, a2);
}

uint64_t sub_24063EC38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24063ECA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewServiceConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24063ED10()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E65636976726573;
  }
}

uint64_t sub_24063ED78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406400F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24063EDA0(uint64_t a1)
{
  v2 = sub_24063FD3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24063EDDC(uint64_t a1)
{
  v2 = sub_24063FD3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewServiceConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C60, &qword_24076CFE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24063FD3C();
  sub_24075AF74();
  v8[15] = 0;
  sub_24075ABB4();
  if (!v1)
  {
    v8[14] = 1;
    sub_24075ABB4();
    type metadata accessor for ViewServiceConfiguration(0);
    v8[13] = 2;
    sub_240759C14();
    sub_24064021C(&qword_27E4B9C70, MEMORY[0x277D855F8], MEMORY[0x277D85600]);
    sub_24075AB94();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ViewServiceConfiguration.hash(into:)(uint64_t a1)
{
  v2 = sub_240759C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_24075A114();
  sub_24075A114();
  v9 = type metadata accessor for ViewServiceConfiguration(0);
  sub_24063E660(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_24075AE94();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_24075AE94();
  sub_24064021C(&qword_27E4B9C78, MEMORY[0x277D855F8], MEMORY[0x277D85608]);
  sub_24075A004();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ViewServiceConfiguration.hashValue.getter()
{
  v1 = sub_240759C14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  v8 = type metadata accessor for ViewServiceConfiguration(0);
  sub_24063E660(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_24075AE94();
    sub_24064021C(&qword_27E4B9C78, MEMORY[0x277D855F8], MEMORY[0x277D85608]);
    sub_24075A004();
    (*(v2 + 8))(v4, v1);
  }

  return sub_24075AED4();
}

uint64_t ViewServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C80, &qword_24076CFF0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for ViewServiceConfiguration(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 32);
  v15 = sub_240759C14();
  v16 = *(*(v15 - 8) + 56);
  v25 = v14;
  v16(v13 + v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24063FD3C();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2405B8A50(v13 + v25, &qword_27E4B9C58, &qword_24076CFE0);
  }

  else
  {
    v17 = v23;
    v28 = 0;
    *v13 = sub_24075AAC4();
    v13[1] = v18;
    v21[1] = v18;
    v27 = 1;
    v13[2] = sub_24075AAC4();
    v13[3] = v19;
    v26 = 2;
    sub_24064021C(&qword_27E4B9C88, MEMORY[0x277D855F8], MEMORY[0x277D85618]);
    sub_24075AAA4();
    (*(v17 + 8))(v9, v24);
    sub_24063E714(v6, v13 + v25);
    sub_24063E94C(v13, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24063FD90(v13);
  }
}

uint64_t sub_24063F7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_240759C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24063E660(v2 + *(a2 + 24), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24075AE94();
    sub_24064021C(&qword_27E4B9C78, MEMORY[0x277D855F8], MEMORY[0x277D85608]);
    sub_24075A004();
    (*(v5 + 8))(v7, v4);
  }

  return sub_24075AED4();
}

BOOL _s12AppleIDSetup24ViewServiceConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_240759C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9CE0, &unk_24076D220);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_24075ACF4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ViewServiceConfiguration(0) + 24);
  v15 = *(v11 + 48);
  sub_24063E660(a1 + v14, v13);
  sub_24063E660(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24063E660(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24064021C(&qword_27E4B9CE8, MEMORY[0x277D855F8], MEMORY[0x277D85610]);
      v18 = sub_24075A054();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_2405B8A50(v13, &qword_27E4B9C58, &qword_24076CFE0);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_2405B8A50(v13, &qword_27E4B9CE0, &unk_24076D220);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_2405B8A50(v13, &qword_27E4B9C58, &qword_24076CFE0);
  return 1;
}

unint64_t sub_24063FD3C()
{
  result = qword_27E4B9C68;
  if (!qword_27E4B9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9C68);
  }

  return result;
}

uint64_t sub_24063FD90(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24063FDEC(void *a1)
{
  a1[1] = sub_24064021C(&qword_27E4B9C90, type metadata accessor for ViewServiceConfiguration, &protocol conformance descriptor for ViewServiceConfiguration);
  a1[2] = sub_24064021C(&qword_27E4B9C98, type metadata accessor for ViewServiceConfiguration, &protocol conformance descriptor for ViewServiceConfiguration);
  result = sub_24064021C(&qword_27E4B9CA0, type metadata accessor for ViewServiceConfiguration, &protocol conformance descriptor for ViewServiceConfiguration);
  a1[3] = result;
  return result;
}

void sub_24063FF08(uint64_t a1)
{
  sub_24063FF84(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24063FF84(uint64_t a1)
{
  if (!qword_27E4B9CC0)
  {
    sub_240759C14();
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B9CC0);
    }
  }
}

unint64_t sub_24063FFF0()
{
  result = qword_27E4B9CC8;
  if (!qword_27E4B9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CC8);
  }

  return result;
}

unint64_t sub_240640048()
{
  result = qword_27E4B9CD0;
  if (!qword_27E4B9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CD0);
  }

  return result;
}

unint64_t sub_2406400A0()
{
  result = qword_27E4B9CD8;
  if (!qword_27E4B9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CD8);
  }

  return result;
}

uint64_t sub_2406400F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002407878E0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000240787900 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24064021C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2406402CC()
{
  result = qword_27E4B9CF0;
  if (!qword_27E4B9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CF0);
  }

  return result;
}

unint64_t sub_240640324()
{
  result = qword_27E4B9CF8;
  if (!qword_27E4B9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CF8);
  }

  return result;
}

unint64_t sub_240640378(void *a1)
{
  a1[1] = sub_2406403B0();
  a1[2] = sub_240640404();
  result = sub_240640458();
  a1[3] = result;
  return result;
}

unint64_t sub_2406403B0()
{
  result = qword_27E4B9D00;
  if (!qword_27E4B9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D00);
  }

  return result;
}

unint64_t sub_240640404()
{
  result = qword_27E4B9D08;
  if (!qword_27E4B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D08);
  }

  return result;
}

unint64_t sub_240640458()
{
  result = qword_27E4B9D10;
  if (!qword_27E4B9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D10);
  }

  return result;
}

unint64_t sub_2406404AC()
{
  result = qword_27E4B9D18;
  if (!qword_27E4B9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D18);
  }

  return result;
}

unint64_t sub_240640504()
{
  result = qword_27E4B9D20[0];
  if (!qword_27E4B9D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4B9D20);
  }

  return result;
}

uint64_t dispatch thunk of BluetoothBase.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405CE450;

  return v7(a1, a2);
}

void sub_240640738(uint64_t a1)
{
  sub_240640B60(319, &qword_27E4B9DA8, MEMORY[0x277D84F78] + 8);
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24075AEE4();
    if (v2 <= 0x3F)
    {
      sub_240640B60(319, &qword_27E4B9DB0, &type metadata for SetupReport);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_240640814(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 81;
  if (v3 + 1 > 0x51)
  {
    v4 = v3 + 1;
  }

  v5 = 251 - (6u >> (8 * v4));
  if (v4 > 3)
  {
    v5 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_240640964(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x51)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 81;
  }

  v7 = 251 - (6u >> (8 * v6));
  if (v6 > 3)
  {
    v7 = 251;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_40:
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_40;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_44:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9)
  {
    a1[v8] = v15;
  }
}

void sub_240640B60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
    v4 = sub_24075AEE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_240640BE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240640C28(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_240640CA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240640CE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BleAdvertisementFlags(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for BleAdvertisementFlags(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t AgeMigrationContext.description.getter()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_24075A864();

  v6 = 0xD00000000000001BLL;
  v7 = 0x80000002407879A0;
  v1 = AgeMigrationModel.description.getter();
  MEMORY[0x245CC5E60](v1);

  MEMORY[0x245CC5E60](0x6E6168637865202CLL, 0xEC000000203A6567);
  v2 = type metadata accessor for AgeMigrationContext(0);
  sub_240640FA4(v0 + *(v2 + 20), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B50, &qword_24076D670);
  v3 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v3);

  return v6;
}

uint64_t type metadata accessor for AgeMigrationContext(uint64_t a1)
{
  result = qword_27E4B9DB8;
  if (!qword_27E4B9DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240640FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B50, &qword_24076D670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AgeMigrationContext.init(model:exchange:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_240641060(a1, a3);
  v5 = a3 + *(type metadata accessor for AgeMigrationContext(0) + 20);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  *(v5 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_240641060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2406410F0(uint64_t a1)
{
  type metadata accessor for AgeMigrationModel(319);
  if (v1 <= 0x3F)
  {
    sub_240641174(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240641174(uint64_t a1)
{
  if (!qword_27E4B9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9DD0, &qword_24076D6F8);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B9DC8);
    }
  }
}

uint64_t sub_2406411E0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_24075A934();
    v4 = v1 + 56;
    result = sub_24075A7A4();
    if (result < 0 || (v5 = result, result >= 1 << *(v1 + 32)))
    {
LABEL_23:
      __break(1u);
      return v34;
    }

    else
    {
      v6 = *(v1 + 36);
      v26 = v1 + 64;
      v27 = v2;
      v7 = 1;
      v29 = v1 + 56;
      v30 = v1;
      v28 = v6;
      while (1)
      {
        v8 = v5 >> 6;
        if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          break;
        }

        if (v6 != *(v1 + 36))
        {
          goto LABEL_27;
        }

        v9 = (*(v1 + 48) + 96 * v5);
        v10 = v9[1];
        v32[0] = *v9;
        v12 = v9[3];
        v11 = v9[4];
        v13 = v9[2];
        *&v33[9] = *(v9 + 73);
        v32[1] = v10;
        v32[2] = v13;
        v32[3] = v12;
        *v33 = v11;
        if (*&v33[16] > 4uLL)
        {
          v14 = 0;
        }

        else
        {
          v14 = qword_24076D9B0[*&v33[16]];
        }

        v15 = v33[24];
        v16 = objc_allocWithZone(AISSymptom);
        sub_2405F1048(v32, v31);
        v17 = sub_24075A084();
        v31[0] = 0x296C6C756E28;
        v31[1] = 0xE600000000000000;
        [v16 initWithAltDSID:v17 priority:v15 problemFlag:v14 errorInfo:sub_24075AD74()];
        swift_unknownObjectRelease();

        sub_2405F10A4(v32);
        sub_24075A914();
        sub_24075A944();
        sub_24075A954();
        result = sub_24075A924();
        v1 = v30;
        v18 = 1 << *(v30 + 32);
        if (v5 >= v18)
        {
          goto LABEL_28;
        }

        v4 = v29;
        v19 = *(v29 + 8 * v8);
        if ((v19 & (1 << v5)) == 0)
        {
          goto LABEL_29;
        }

        v6 = v28;
        if (v28 != *(v30 + 36))
        {
          goto LABEL_30;
        }

        v20 = v19 & (-2 << (v5 & 0x3F));
        if (v20)
        {
          v5 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v8 << 6;
          v22 = v8 + 1;
          v23 = (v26 + 8 * v8);
          while (v22 < (v18 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              result = sub_24061CD88(v5, v28, 0);
              v5 = __clz(__rbit64(v24)) + v21;
              goto LABEL_20;
            }
          }

          result = sub_24061CD88(v5, v28, 0);
          v5 = v18;
        }

LABEL_20:
        if (v7 == v27)
        {
          return v34;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          ++v7;
          if (v5 < 1 << *(v30 + 32))
          {
            continue;
          }
        }

        goto LABEL_23;
      }

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
  }

  return result;
}

uint64_t RepairReport.accountID.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

uint64_t RepairReport.altDSID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RepairReport.newSymptomReport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406424AC(v2, v3, v4, v5);
}

__n128 RepairReport.init(accountID:repairedSymptoms:newSymptomReport:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v4;
  *(a4 + 64) = a1[4];
  v5 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 88) = *a3;
  *(a4 + 80) = a2;
  *(a4 + 104) = v7;
  return result;
}

__n128 RepairReport.init(altDSID:repairedSymptoms:newSymptomReport:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  result = *a4;
  v6 = *(a4 + 16);
  *(a5 + 88) = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 80) = a3;
  *(a5 + 104) = v6;
  return result;
}

uint64_t sub_2406415C4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_24064162C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240642940(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240641654(uint64_t a1)
{
  v2 = sub_2406424FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240641690(uint64_t a1)
{
  v2 = sub_2406424FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairReport.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DD8, &qword_24076D700);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = v1[3];
  v42 = v1[2];
  v43 = v8;
  v44 = v1[4];
  v9 = v1[1];
  v40 = *v1;
  v41 = v9;
  v10 = *(v1 + 11);
  v45 = *(v1 + 10);
  v11 = *(v1 + 13);
  v22 = *(v1 + 12);
  v23 = v10;
  v20 = *(v1 + 14);
  v21 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_2405AF99C(&v40, &v35);
  sub_2406424FC();
  sub_24075AF74();
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  v34 = 0;
  sub_2406185FC();
  sub_24075ABE4();
  if (v2)
  {
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v29 = v35;
    v30 = v36;
    sub_240618468(&v29);
  }

  else
  {
    v17 = v22;
    v16 = v23;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v29 = v35;
    v30 = v36;
    sub_240618468(&v29);
    v24 = v45;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DE8, &qword_24076D708);
    sub_240642550(&qword_27E4B9DF0, sub_2405F5858, MEMORY[0x277D83B50]);
    sub_24075ABE4();
    v24 = v16;
    v25 = v17;
    v26 = v21;
    v27 = v20;
    v28 = 2;
    sub_2406424AC(v16, v17, v21, v20);
    sub_2405EE9C8();
    sub_24075AB94();
    sub_240609C34(v24, v25, v26, v27);
  }

  return (*(v5 + 8))(v7, v15);
}

uint64_t RepairReport.hash(into:)(__int128 *a1)
{
  v3 = v1[10];
  v4 = v1[12];
  v5 = v1[14];
  sub_24075A114();
  sub_2405ECD74(a1, v3);
  if (!v4)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();

  return sub_2405ED470(a1, v5);
}

uint64_t RepairReport.hashValue.getter()
{
  v1 = v0[10];
  v2 = v0[12];
  v3 = v0[14];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ECD74(v5, v1);
  sub_24075AE94();
  if (v2)
  {
    sub_24075A114();
    sub_2405ED470(v5, v3);
  }

  return sub_24075AED4();
}

uint64_t RepairReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DF8, &qword_24076D710);
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406424FC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v47 = 0;
  sub_2406186F8();
  v9 = v19;
  sub_24075AAF4();
  v43 = v38;
  v44 = v39;
  v45 = v40;
  v41 = v36;
  v42 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DE8, &qword_24076D708);
  LOBYTE(v20) = 1;
  sub_240642550(&qword_27E4B9E00, sub_2405F5900, MEMORY[0x277D83B70]);
  sub_24075AAF4();
  v18 = *&v28[0];
  v46 = 2;
  sub_2405EEDE4();
  sub_24075AAA4();
  (*(v8 + 8))(v7, v9);
  v10 = v33;
  v12 = v34;
  v11 = v35;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  v20 = v41;
  v21 = v42;
  v13 = v18;
  *&v25 = v18;
  *(&v25 + 1) = v33;
  v26 = v34;
  v27 = v35;
  *(a2 + 112) = v35;
  v14 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v14;
  *(a2 + 96) = v26;
  v15 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v15;
  v16 = v21;
  *a2 = v20;
  *(a2 + 16) = v16;
  sub_2406425C8(&v20, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[2] = v43;
  v28[3] = v44;
  v28[4] = v45;
  v28[0] = v41;
  v28[1] = v42;
  v29 = v13;
  v30 = v10;
  v31 = v12;
  v32 = v11;
  return sub_2405EEB18(v28);
}

uint64_t sub_240641EB4()
{
  v1 = v0[10];
  v2 = v0[12];
  v3 = v0[14];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ECD74(v5, v1);
  sub_24075AE94();
  if (v2)
  {
    sub_24075A114();
    sub_2405ED470(v5, v3);
  }

  return sub_24075AED4();
}

uint64_t sub_240641F68(__int128 *a1)
{
  v3 = v1[10];
  v4 = v1[12];
  v5 = v1[14];
  sub_24075A114();
  sub_2405ECD74(a1, v3);
  if (!v4)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();

  return sub_2405ED470(a1, v5);
}

uint64_t sub_240642010(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[12];
  v4 = v1[14];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ECD74(v6, v2);
  sub_24075AE94();
  if (v3)
  {
    sub_24075A114();
    sub_2405ED470(v6, v4);
  }

  return sub_24075AED4();
}

void __swiftcall RepairReport.into()(AISRepairReport *__return_ptr retstr)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 96);

  sub_2406411E0(v2);
  if (v3)
  {

    v4 = SymptomReport.into()();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(AISRepairReport);
  v6 = sub_24075A084();

  sub_240642600();
  v7 = sub_24075A2B4();

  [v5 initWithAltDSID:v6 repairedSymptoms:v7 symptomReport:v4];
}

BOOL _s12AppleIDSetup12RepairReportV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[10];
  v2 = a1[11];
  v5 = a1[12];
  v4 = a1[13];
  v6 = a1[14];
  v8 = a2[10];
  v7 = a2[11];
  v10 = a2[12];
  v9 = a2[13];
  v11 = a2[14];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24075ACF4() & 1) == 0 || (sub_2407455F8(v3, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v10)
    {
      if (v2 == v7 && v5 == v10 || (sub_24075ACF4() & 1) != 0)
      {
        sub_2406424AC(v2, v5, v4, v6);
        sub_2406424AC(v7, v10, v9, v11);
        sub_2406424AC(v2, v5, v4, v6);
        v12 = sub_2406B7F50(v6, v11);
        sub_240609C34(v7, v10, v9, v11);

        sub_240609C34(v2, v5, v4, v6);
        return (v12 & 1) != 0;
      }

      sub_2406424AC(v2, v5, v4, v6);
      sub_2406424AC(v7, v10, v9, v11);
      sub_2406424AC(v2, v5, v4, v6);
      sub_240609C34(v7, v10, v9, v11);

      v14 = v2;
      v15 = v5;
      v16 = v4;
      v17 = v6;
      goto LABEL_16;
    }

    sub_2406424AC(v2, v5, v4, v6);
    sub_2406424AC(v7, 0, v9, v11);
    sub_2406424AC(v2, v5, v4, v6);

LABEL_15:
    sub_240609C34(v2, v5, v4, v6);
    v14 = v7;
    v15 = v10;
    v16 = v9;
    v17 = v11;
LABEL_16:
    sub_240609C34(v14, v15, v16, v17);
    return 0;
  }

  sub_2406424AC(v2, 0, v4, v6);
  if (v10)
  {
    sub_2406424AC(v7, v10, v9, v11);
    goto LABEL_15;
  }

  sub_2406424AC(v7, 0, v9, v11);
  sub_240609C34(v2, 0, v4, v6);
  return 1;
}

uint64_t sub_2406424AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2406424FC()
{
  result = qword_27E4B9DE0;
  if (!qword_27E4B9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9DE0);
  }

  return result;
}

uint64_t sub_240642550(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9DE8, &qword_24076D708);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240642600()
{
  result = qword_27E4B9E08;
  if (!qword_27E4B9E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B9E08);
  }

  return result;
}

unint64_t sub_24064264C(void *a1)
{
  a1[1] = sub_2405EEE38();
  a1[2] = sub_2405EEAC4();
  result = sub_240642684();
  a1[3] = result;
  return result;
}

unint64_t sub_240642684()
{
  result = qword_27E4B9E10;
  if (!qword_27E4B9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E10);
  }

  return result;
}

unint64_t sub_2406426DC()
{
  result = qword_27E4B9E18;
  if (!qword_27E4B9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup13SymptomReportVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_240642774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2406427BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24064283C()
{
  result = qword_27E4B9E20;
  if (!qword_27E4B9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E20);
  }

  return result;
}

unint64_t sub_240642894()
{
  result = qword_27E4B9E28;
  if (!qword_27E4B9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E28);
  }

  return result;
}

unint64_t sub_2406428EC()
{
  result = qword_27E4B9E30;
  if (!qword_27E4B9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E30);
  }

  return result;
}

uint64_t sub_240642940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002407879C0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002407879E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t CancellableActor.handleCancellation(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for AnyCancellable(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  CancellableActor.into()(a2, a3, (&v17 - v11));
  v13 = &v12[*(v9 + 36)];
  v14 = *(v13 + 3);
  v15 = *(v13 + 4);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v15 + 24))(a1, v14, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_240642C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _Coordinated.Coerced(0, *(a2 + 80), *(a2 + 88), a4);
  WitnessTable = swift_getWitnessTable();
  return CancellableActor.handleCancellation(error:)(a1, v5, WitnessTable);
}

uint64_t sub_240642CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v6 = (a4)(0, *(a2 + 80), a3);
  WitnessTable = swift_getWitnessTable();
  return CancellableActor.handleCancellation(error:)(a1, v6, WitnessTable);
}

uint64_t AnyCancellable.wrappedValue.setter(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_24058C9C0(a1, v2 + v4);
}

uint64_t AnyCancellable.init<A>(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2407597A4();
  type metadata accessor for AnyCancellableID(0);
  swift_storeEnumTagMultiPayload();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (a5 + *(type metadata accessor for AnyCancellable(0, a2, AssociatedConformanceWitness, v11) + 36));
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  v14 = *(*(a3 - 8) + 32);

  return v14(boxed_opaque_existential_1, a1, a3);
}

uint64_t AnyCancellable.init<A>(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  type metadata accessor for AnyCancellableID(0);
  swift_storeEnumTagMultiPayload();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for AnyCancellable(0, a2, AssociatedConformanceWitness, v11);
  v13 = (a5 + *(result + 36));
  v13[3] = a3;
  v13[4] = a4;
  *v13 = a1;
  return result;
}

{
  *a5 = a1;
  type metadata accessor for AnyCancellableID(0);
  swift_storeEnumTagMultiPayload();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (a5 + *(type metadata accessor for AnyCancellable(0, a2, AssociatedConformanceWitness, v11) + 36));
  v12[3] = type metadata accessor for AnyCancellable._Actor(0, a2, a3, a4);
  result = swift_getWitnessTable();
  v12[4] = result;
  *v12 = a1;
  return result;
}

uint64_t AnyCancellable.handleCancellation(error:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 36));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 24))(a1, v5, v6);
}

uint64_t sub_240643058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_24075A3D4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, a3);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = a5;
  *(v18 + 7) = a2;
  (*(v10 + 32))(&v18[v17], v12, a3);
  swift_unknownObjectRetain();
  sub_240602F08(0, 0, v15, &unk_24076DBE8, v18);
}

uint64_t sub_240643244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = *(a8 + 24);
  v8[7] = (a8 + 24) & 0xFFFFFFFFFFFFLL | 0x4C42000000000000;
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2406432D4, v10, v9);
}

uint64_t sub_2406432D4()
{
  (*(v0 + 48))(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnyCancellableID.hash(into:)(uint64_t a1)
{
  v2 = sub_2407597B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnyCancellableID(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240643A50(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x245CC6BA0](1);
    sub_240643FF0(&qword_27E4B7438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24075A004();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = *v8;
    MEMORY[0x245CC6BA0](0);
    return MEMORY[0x245CC6BA0](v10);
  }
}

uint64_t AnyCancellableID.hashValue.getter()
{
  v1 = v0;
  v2 = sub_2407597B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnyCancellableID(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24075AE64();
  sub_240643A50(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x245CC6BA0](1);
    sub_240643FF0(&qword_27E4B7438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24075A004();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
    MEMORY[0x245CC6BA0](0);
    MEMORY[0x245CC6BA0](v9);
  }

  return sub_24075AED4();
}

uint64_t sub_240643700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2407597B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24075AE64();
  sub_240643A50(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x245CC6BA0](1);
    sub_240643FF0(&qword_27E4B7438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24075A004();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v11 = *v10;
    MEMORY[0x245CC6BA0](0);
    MEMORY[0x245CC6BA0](v11);
  }

  return sub_24075AED4();
}

uint64_t Cancellable.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AnyCancellable.init<A>(wrappedValue:)(v8, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t CancellableActor.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AnyCancellable.init<A>(wrappedValue:)(v3, AssociatedTypeWitness, a1, a2, a3);

  return swift_unknownObjectRetain();
}

uint64_t sub_240643A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCancellableID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AnyCancellableID(uint64_t a1)
{
  result = qword_27E4B9EC8;
  if (!qword_27E4B9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240643B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCancellableID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_240643B7C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F58, &unk_24076DBF0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *a1;
  *(&v14 - v5) = v7;
  type metadata accessor for AnyCancellableID(0);
  swift_storeEnumTagMultiPayload();
  v9 = &v6[*(v4 + 44)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F60, &unk_240782830);
  *(v9 + 3) = v10;
  v11 = sub_2406442F8();
  *(v9 + 4) = v11;
  *v9 = v7;
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = *(v11 + 24);

  v12(&v15, v10, v11);
  return sub_2405B8A50(v6, &qword_27E4B9F58, &unk_24076DBF0);
}

uint64_t _s12AppleIDSetup16AnyCancellableIDO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2407597B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnyCancellableID(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F70, &qword_24076DC00);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_240643A50(a1, &v22 - v16);
  sub_240643A50(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_240643A50(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v13 == *&v17[v18];
      goto LABEL_6;
    }

LABEL_8:
    sub_2405B8A50(v17, &qword_27E4B9F70, &qword_24076DC00);
    v19 = 0;
    return v19 & 1;
  }

  sub_240643A50(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v17[v18], v4);
  v19 = sub_240759784();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
LABEL_6:
  sub_24064435C(v17);
  return v19 & 1;
}

uint64_t sub_240643FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240644060(uint64_t a1)
{
  result = type metadata accessor for AnyCancellableID(319);
  if (v2 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_240644120(uint64_t a1)
{
  result = sub_2407597B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24064418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2406441E8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2405CE450;

  return sub_240643244(a1, v9, v10, v7, v1 + v8, v4, v5, v6);
}

unint64_t sub_2406442F8()
{
  result = qword_27E4B9F68;
  if (!qword_27E4B9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9F60, &unk_240782830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9F68);
  }

  return result;
}

uint64_t sub_24064435C(uint64_t a1)
{
  v2 = type metadata accessor for AnyCancellableID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2406443B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2405B044C(a3, v22 - v9, &unk_27E4B9BF0, &qword_240762710);
  v11 = sub_24075A3D4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2405B8A50(v10, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24075A344();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24075A104() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24064465C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24075AEE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_240644810(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_240644870()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B9F78);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9F78);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8518);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SharingBaseServiceType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24075AA34();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2406449A0()
{
  v0 = sub_24075A0B4();
  v2 = v1;
  if (v0 == sub_24075A0B4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24075ACF4();
  }

  return v5 & 1;
}

uint64_t sub_240644A30()
{
  sub_24075AE64();
  sub_24075A0B4();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_240644A98(uint64_t a1)
{
  sub_24075A0B4();
  sub_24075A114();
}

uint64_t sub_240644AF4(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A0B4();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_240644B58@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24075AA34();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_240644BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24075A0B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_240644BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1F0, &qword_24076E2E8);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1F8, &qword_24076E2F0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v0 + 16) = result;
  off_27E4B9F90 = v0;
  return result;
}

void *sub_240644C54()
{
  v1 = *(*(v0 + 112) + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t SharingServerBase.fixedPin.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t SharingServerBase.targetAuthTag.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_240644D58(int a1)
{
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t SharingServerBase.legacySymptomReport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[25];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406424AC(v2, v3, v4, v5);
}

uint64_t SharingServerBase.stateHandler.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

void sub_240644E40()
{
  swift_beginAccess();
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = qword_27E4B5F30;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_240759AE4();
    __swift_project_value_buffer(v4, qword_27E4B9F78);
    v5 = v3;

    v6 = sub_240759AC4();
    v7 = sub_24075A5D4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      v10 = sub_240644C54();
      *(v8 + 4) = v10;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v10;
      v9[1] = v1;
      v11 = v5;
      _os_log_impl(&dword_240579000, v6, v7, "Disabling needs setup on service: %@ with session: %@", v8, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v9, -1, -1);
      MEMORY[0x245CC76B0](v8, -1, -1);
    }

    v12 = sub_240644C54();
    if (v12)
    {
      v13 = v12;
      [v12 setNeedsSetup_];
    }

    goto LABEL_14;
  }

  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_27E4B9F78);

  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = sub_240644C54();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_240579000, v15, v16, "Enabling needs setup on service: %@", v17, 0xCu);
    sub_2405B8A50(v18, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v18, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  v20 = sub_240644C54();
  if (v20)
  {
    v5 = v20;
    [v20 setNeedsSetup_];
LABEL_14:
  }
}

void *sub_240645144()
{
  v0 = sub_24064E9E8();
  v1 = v0;
  return v0;
}

uint64_t sub_240645170(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[26];
  swift_beginAccess();
  v6 = type metadata accessor for AnyTransportBuilder(255, *(v3 + 80), *(v3 + 88), v5);
  v9 = type metadata accessor for BluetoothBaseState(0, v6, v7, v8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v12, v1 + 30, v9);
  v4(v1, a1, v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24064527C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for AnyTransportBuilder(255, *(v3 + 80), *(v3 + 88), v4);
  v8 = type metadata accessor for BluetoothBaseState(0, v5, v6, v7);
  return (*(*(v8 - 8) + 16))(a1, v1 + 30, v8);
}

uint64_t SharingServerBase.__allocating_init(queue:advertisementRate:fixedPin:targetAuthTag:pinType:serviceType:deviceActionType:legacySymptomReport:service:tags:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a7;
  v21 = swift_allocObject();
  SharingServerBase.init(queue:advertisementRate:fixedPin:targetAuthTag:pinType:serviceType:deviceActionType:legacySymptomReport:service:tags:stateHandler:)(a1, a2, a3, a4, a5, a6, v14, v22, a9, a10, a11, a12, a13, a14);
  return v21;
}

uint64_t SharingServerBase.init(queue:advertisementRate:fixedPin:targetAuthTag:pinType:serviceType:deviceActionType:legacySymptomReport:service:tags:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, __int128 *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v25 = a10[1];
  v26 = *a10;
  swift_defaultActor_initialize();
  *(v14 + 232) = 0u;
  *(v14 + 305) = 0u;
  *(v14 + 280) = 0u;
  *(v14 + 296) = 0u;
  *(v14 + 248) = 0u;
  *(v14 + 264) = 0u;
  *(v14 + 321) = 4;
  *(v14 + 328) = 0;
  if (qword_27E4B5F38 != -1)
  {
    swift_once();
  }

  v18 = off_27E4B9F90;
  sub_24064E760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F98, &qword_24076DC30);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FA0, &qword_24076DC38);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = a11;
  *(v19 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FA8, &qword_24076DC40);
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 16) = sub_24064E9D8;
  *(v21 + 24) = 0;
  *(v19 + 16) = v21;
  v22 = v18[2];
  MEMORY[0x28223BE20](v21);
  v23 = a11;

  os_unfair_lock_lock((v22 + 24));
  sub_24064EA1C((v22 + 16));
  os_unfair_lock_unlock((v22 + 24));

  *(v15 + 112) = v19;
  *(v15 + 120) = a1;
  *(v15 + 128) = a2;
  *(v15 + 136) = a3;
  *(v15 + 144) = a4;
  *(v15 + 152) = a5;
  *(v15 + 160) = a6;
  *(v15 + 168) = a7;
  *(v15 + 172) = a9;
  *(v15 + 176) = v26;
  *(v15 + 192) = v25;
  *(v15 + 208) = a13;
  *(v15 + 216) = a14;
  *(v15 + 224) = a12;
  return v15;
}

void *SharingServerBase.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4B9F78);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_240579000, v4, v5, "SharingServerBase deallocated", v6, 2u);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  sub_240647E44(1);

  sub_240609C34(v1[22], v1[23], v1[24], v1[25]);

  v8 = type metadata accessor for AnyTransportBuilder(255, *(v2 + 80), *(v2 + 88), v7);
  v11 = type metadata accessor for BluetoothBaseState(0, v8, v9, v10);
  (*(*(v11 - 8) + 8))(v1 + 30, v11);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SharingServerBase.__deallocating_deinit()
{
  SharingServerBase.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_240645810()
{
  *(v1 + 1080) = v0;
  *(v1 + 1088) = *v0;
  return MEMORY[0x2822009F8](sub_240645858, v0, 0);
}

uint64_t sub_240645858()
{
  sub_24064527C(v0 + 184);
  if (*(v0 + 265) != 4 || *(v0 + 264) || (v2 = vorrq_s8(vorrq_s8(*(v0 + 200), *(v0 + 232)), vorrq_s8(*(v0 + 216), *(v0 + 248))), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 192) | *(v0 + 184)))
  {
    v22 = *(v0 + 1088);
    v24 = *(v22 + 80);
    v23 = *(v22 + 88);
    v25 = type metadata accessor for AnyTransportBuilder(255, v24, v23, v1);
    v28 = type metadata accessor for BluetoothBaseState(0, v25, v26, v27);
    (*(*(v28 - 8) + 8))(v0 + 184, v28);
    type metadata accessor for SharingServerBase.Failure(0, v24, v23, v29);
    swift_getWitnessTable();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
    v31 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 1088);
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = type metadata accessor for AnyTransportBuilder(255, v4, v5, v1);
    v9 = type metadata accessor for BluetoothBaseState(0, v6, v7, v8);
    *(v0 + 1096) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 8);
    *(v0 + 1104) = v11;
    *(v0 + 1112) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v0 + 184, v9);
    *(v0 + 272) = 1;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 337) = 0u;
    *(v0 + 353) = 4;
    sub_24064EAA4(v0 + 272);
    v11(v0 + 272, v9);
    v12 = sub_240644C54();
    if (v12)
    {
      v13 = v12;
      [v12 setDispatchQueue_];
    }

    v14 = sub_240644C54();
    v15 = MEMORY[0x277D54D50];
    if (v14)
    {
      v16 = v14;
      [v14 setLabel_];
    }

    v17 = sub_240644C54();
    if (v17)
    {
      v18 = v17;
      [v17 setAdvertiseRate_];
    }

    v19 = sub_240644C54();
    if (v19)
    {
      v20 = v19;
      if (*(*(v0 + 1080) + 144))
      {
        v21 = sub_24075A084();
      }

      else
      {
        v21 = 0;
      }

      [v20 setFixedPIN_];
    }

    v33 = sub_240644C54();
    if (v33)
    {
      v34 = v33;
      v35 = *(v0 + 1080);
      v36 = *(v35 + 160);
      if (v36)
      {
        v37 = *(v35 + 152);

        v38 = sub_2406250C8(v37, v36);
        v40 = v39;
        v36 = sub_2407596B4();
        sub_2405BCD98(v38, v40);
      }

      [v34 setTargetAuthTag_];
    }

    v41 = sub_240644C54();
    if (v41)
    {
      v42 = v41;
      [v41 setIdentifier_];
    }

    v43 = sub_240644C54();
    if (v43)
    {
      v44 = v43;
      [v43 setNeedsSetup_];
    }

    v45 = sub_240644C54();
    if (v45)
    {
      v46 = v45;
      [v45 setOverrideScreenOff_];
    }

    v47 = sub_240644C54();
    if (v47)
    {
      v48 = v47;
      [v47 setDeviceActionType_];
    }

    v49 = sub_240644C54();
    if (v49)
    {
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_240765570;
      *(v0 + 1064) = 0x6C7070612E6D6F63;
      *(v0 + 1072) = 0xEF6E696D64612E65;
      sub_24075A814();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_2405BD674(inited);
      swift_setDeallocating();
      sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
      v52 = sub_240759F54();

      [v50 setPairSetupACL_];
    }

    v53 = sub_240644C54();
    if (v53)
    {
      v54 = v53;
      v55 = *(v0 + 1080);
      v56 = swift_beginAccess();
      if ((*(v55 + 168) & 0x80000000) != 0)
      {
        __break(1u);
        return MEMORY[0x282200938](v56);
      }

      [v54 setPinType_];
    }

    v57 = sub_240644C54();
    if (v57)
    {
      v58 = v57;
      [v57 setSessionFlags_];
    }

    v59 = sub_240644C54();
    if (v59)
    {
      v60 = v59;
      v61 = swift_allocObject();
      swift_weakInit();
      v62 = swift_allocObject();
      v62[2] = v4;
      v62[3] = v5;
      v62[4] = v61;
      *(v0 + 544) = sub_24064EBDC;
      *(v0 + 552) = v62;
      *(v0 + 512) = MEMORY[0x277D85DD0];
      *(v0 + 520) = 1107296256;
      *(v0 + 528) = sub_240646B08;
      *(v0 + 536) = &block_descriptor_6;
      v63 = _Block_copy((v0 + 512));

      [v60 setShowPINHandlerEx_];
      _Block_release(v63);
    }

    v64 = sub_240644C54();
    if (v64)
    {
      v65 = v64;
      v66 = swift_allocObject();
      swift_weakInit();
      v67 = swift_allocObject();
      v67[2] = v4;
      v67[3] = v5;
      v67[4] = v66;
      *(v0 + 592) = sub_24064EC30;
      *(v0 + 600) = v67;
      *(v0 + 560) = MEMORY[0x277D85DD0];
      *(v0 + 568) = 1107296256;
      *(v0 + 576) = sub_240644810;
      *(v0 + 584) = &block_descriptor_10_0;
      v68 = _Block_copy((v0 + 560));

      [v65 setHidePINHandler_];
      _Block_release(v68);
    }

    v69 = sub_240644C54();
    if (v69)
    {
      v70 = v69;
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = swift_allocObject();
      v72[2] = v4;
      v72[3] = v5;
      v72[4] = v71;
      *(v0 + 640) = sub_24064EC88;
      *(v0 + 648) = v72;
      *(v0 + 608) = MEMORY[0x277D85DD0];
      *(v0 + 616) = 1107296256;
      *(v0 + 624) = sub_240646C20;
      *(v0 + 632) = &block_descriptor_17;
      v73 = _Block_copy((v0 + 608));

      [v70 setSessionStartedHandler_];
      _Block_release(v73);
    }

    v74 = sub_240644C54();
    if (v74)
    {
      v75 = v74;
      v76 = swift_allocObject();
      swift_weakInit();
      v77 = swift_allocObject();
      v77[2] = v4;
      v77[3] = v5;
      v77[4] = v76;
      *(v0 + 688) = sub_24064ECCC;
      *(v0 + 696) = v77;
      *(v0 + 656) = MEMORY[0x277D85DD0];
      *(v0 + 664) = 1107296256;
      *(v0 + 672) = sub_240646FBC;
      *(v0 + 680) = &block_descriptor_24;
      v78 = _Block_copy((v0 + 656));

      [v75 setSessionEndedHandler_];
      _Block_release(v78);
    }

    v79 = sub_240644C54();
    if (v79)
    {
      v80 = v79;
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = swift_allocObject();
      v82[2] = v4;
      v82[3] = v5;
      v82[4] = v81;
      *(v0 + 736) = sub_24064ECD8;
      *(v0 + 744) = v82;
      *(v0 + 704) = MEMORY[0x277D85DD0];
      *(v0 + 712) = 1107296256;
      *(v0 + 720) = sub_240646C20;
      *(v0 + 728) = &block_descriptor_31;
      v83 = _Block_copy((v0 + 704));

      [v80 setSessionSecuredHandler_];
      _Block_release(v83);
    }

    v84 = sub_240644C54();
    if (v84)
    {
      v85 = v84;
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      v87[2] = v4;
      v87[3] = v5;
      v87[4] = v86;
      *(v0 + 784) = sub_24064ED1C;
      *(v0 + 792) = v87;
      *(v0 + 752) = MEMORY[0x277D85DD0];
      *(v0 + 760) = 1107296256;
      *(v0 + 768) = sub_240644810;
      *(v0 + 776) = &block_descriptor_38;
      v88 = _Block_copy((v0 + 752));

      [v85 setInvalidationHandler_];
      _Block_release(v88);
    }

    v89 = sub_240644C54();
    if (v89)
    {
      v90 = v89;
      v91 = swift_allocObject();
      swift_weakInit();
      v92 = swift_allocObject();
      v92[2] = v4;
      v92[3] = v5;
      v92[4] = v91;
      *(v0 + 832) = sub_24064ED74;
      *(v0 + 840) = v92;
      *(v0 + 800) = MEMORY[0x277D85DD0];
      *(v0 + 808) = 1107296256;
      *(v0 + 816) = sub_240644810;
      *(v0 + 824) = &block_descriptor_45;
      v93 = _Block_copy((v0 + 800));

      [v90 setInterruptionHandler_];
      _Block_release(v93);
    }

    v94 = sub_240644C54();
    if (v94)
    {
      v95 = v94;
      v96 = swift_allocObject();
      swift_weakInit();
      v97 = swift_allocObject();
      v97[2] = v4;
      v97[3] = v5;
      v97[4] = v96;
      *(v0 + 880) = sub_24064EDCC;
      *(v0 + 888) = v97;
      *(v0 + 848) = MEMORY[0x277D85DD0];
      *(v0 + 856) = 1107296256;
      *(v0 + 864) = sub_240647520;
      *(v0 + 872) = &block_descriptor_52;
      v98 = _Block_copy((v0 + 848));

      [v95 setErrorHandler_];
      _Block_release(v98);
    }

    v99 = sub_240644C54();
    if (v99)
    {
      v100 = v99;
      *(v0 + 928) = sub_24064758C;
      *(v0 + 936) = 0;
      *(v0 + 896) = MEMORY[0x277D85DD0];
      *(v0 + 904) = 1107296256;
      *(v0 + 912) = sub_24064784C;
      *(v0 + 920) = &block_descriptor_55;
      v101 = _Block_copy((v0 + 896));
      [v100 setPeerDisconnectedHandler_];
      _Block_release(v101);
    }

    v102 = sub_240644C54();
    if (v102)
    {
      v103 = v102;
      *(v0 + 976) = sub_240651508;
      *(v0 + 984) = 0;
      *(v0 + 944) = MEMORY[0x277D85DD0];
      *(v0 + 952) = 1107296256;
      *(v0 + 960) = sub_240647520;
      *(v0 + 968) = &block_descriptor_58;
      v104 = _Block_copy((v0 + 944));
      [v103 setPairSetupCompletionHandler_];
      _Block_release(v104);
    }

    v105 = sub_240644C54();
    if (v105)
    {
      v106 = v105;
      v107 = swift_allocObject();
      swift_weakInit();
      v108 = swift_allocObject();
      v108[2] = v4;
      v108[3] = v5;
      v108[4] = v107;
      *(v0 + 1024) = sub_24064EE08;
      *(v0 + 1032) = v108;
      *(v0 + 992) = MEMORY[0x277D85DD0];
      *(v0 + 1000) = 1107296256;
      *(v0 + 1008) = sub_240647BD0;
      *(v0 + 1016) = &block_descriptor_65_0;
      v109 = _Block_copy((v0 + 992));

      [v106 setReceivedRequestHandler_];
      _Block_release(v109);
    }

    v110 = sub_240644C54();
    *(v0 + 1120) = v110;
    if (v110)
    {
      v111 = v110;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_240646838;
      v112 = swift_continuation_init();
      *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
      *(v0 + 448) = MEMORY[0x277D85DD0];
      *(v0 + 456) = 1107296256;
      *(v0 + 464) = sub_240647D90;
      *(v0 + 472) = &block_descriptor_68;
      *(v0 + 480) = v112;
      [v111 activateWithCompletion_];
      v56 = v0 + 16;

      return MEMORY[0x282200938](v56);
    }

    v113 = *(v0 + 1104);
    v114 = *(v0 + 1096);
    *(v0 + 360) = 2;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 425) = 0u;
    *(v0 + 441) = 4;
    sub_24064EAA4(v0 + 360);
    v113(v0 + 360, v114);
    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_240646838()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1128) = v2;
  v3 = *(v1 + 1080);
  if (v2)
  {
    v4 = sub_240646A0C;
  }

  else
  {
    v4 = sub_240646958;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240646958()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  *(v0 + 360) = 2;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 425) = 0u;
  *(v0 + 441) = 4;
  sub_24064EAA4(v0 + 360);
  v1(v0 + 360, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240646A0C(uint64_t a1)
{
  v2 = *(v1 + 1120);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_240646A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  return MEMORY[0x2822009F8](sub_240646AA4, a4, 0);
}

uint64_t sub_240646AA4()
{
  sub_24064EE2C(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_240646B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_24075A0B4();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_240646BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_240646BC0, a4, 0);
}

uint64_t sub_240646BC0()
{
  sub_2406481D8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_240646C20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_240646C88(void *a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v8 = sub_240759AE4();
  __swift_project_value_buffer(v8, qword_27E4B9F78);
  v9 = a1;
  v10 = a2;
  v11 = sub_240759AC4();
  v12 = sub_24075A5D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v9;
    *v14 = v9;
    *(v13 + 12) = 2112;
    v15 = v9;
    if (a2)
    {
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v13 + 14) = v17;
    v14[1] = v18;
    _os_log_impl(&dword_240579000, v11, v12, "sessionEndedHandler called with session: %@ and error: %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = sub_24075A3D4();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = v9;
    v22[6] = a2;
    v23 = v9;
    v24 = a2;
    sub_240602F08(0, 0, v7, &unk_24076E2A0, v22);
  }

  return result;
}

uint64_t sub_240646F5C()
{
  sub_24064EF10();
  v1 = *(v0 + 8);

  return v1();
}

void sub_240646FBC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_240647048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v13 = sub_240759AE4();
  __swift_project_value_buffer(v13, qword_27E4B9F78);
  v14 = a1;
  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_240579000, v15, v16, a5, v17, 0xCu);
    sub_2405B8A50(v18, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v18, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = sub_24075A3D4();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v21;
    v23[5] = v14;
    v24 = v14;
    sub_240602F08(0, 0, v12, a7, v23);
  }

  return result;
}

uint64_t sub_240647298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2406472B8, a4, 0);
}

uint64_t sub_2406472B8()
{
  sub_240648F4C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240647338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = *a4;
  return MEMORY[0x2822009F8](sub_240647380, 0, 0);
}

uint64_t sub_240647380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for SharingServerBase.Failure(0, *(v4[3] + 80), *(v4[3] + 88), a4);
  swift_getWitnessTable();
  v4[4] = swift_allocError();
  *v6 = 4;

  return MEMORY[0x2822009F8](sub_240647430, v5, 0);
}

uint64_t sub_240647430()
{
  v1 = *(v0 + 32);
  sub_240649558(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2406474A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2406474C0, a4, 0);
}

uint64_t sub_2406474C0()
{
  sub_240649558(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_240647520(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_24064758C(uint64_t a1, void *a2)
{
  v4 = sub_2407597B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v8 = sub_240759AE4();
  __swift_project_value_buffer(v8, qword_27E4B9F78);
  (*(v5 + 16))(v7, a1, v4);
  v9 = a2;
  v10 = sub_240759AC4();
  v11 = sub_24075A5D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v12 = 136315394;
    sub_240650B50();
    v14 = sub_24075AC34();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_2405BBA7C(v14, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    if (a2)
    {
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v12 + 14) = v19;
    *v13 = v20;
    _os_log_impl(&dword_240579000, v10, v11, "peerDisconnectedHandler called for peer: %s with error: %@", v12, 0x16u);
    sub_2405B8A50(v13, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v13, -1, -1);
    v21 = v22;
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245CC76B0](v21, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24064784C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2407597B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_240759794();

  v10 = a3;
  v9(v8, a3);

  return (*(v6 + 8))(v8, v5);
}

void sub_240647960(void *a1, int a2, uint64_t a3)
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4B9F78);
  v6 = a1;

  v7 = sub_240759AC4();
  v8 = sub_24075A5E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a2;
    *(v9 + 18) = 2080;
    v12 = v6;
    v13 = sub_240759F84();
    v15 = sub_2405BBA7C(v13, v14, &v19);

    *(v9 + 20) = v15;
    _os_log_impl(&dword_240579000, v7, v8, "receivedRequestHandler called: %@ flags: %u request: %s", v9, 0x1Cu);
    sub_2405B8A50(v10, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  oslog = sub_240759AC4();
  v16 = sub_24075A5D4();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_240579000, oslog, v16, "Interacting with modern device, ignoring received sharing request", v17, 2u);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }
}

void sub_240647BD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = *(a1 + 32);
  sub_240759F74();
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;

  v9 = a2;
  v7();
}

void sub_240647CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_2407595C4();
    if (a3)
    {
LABEL_3:
      v8 = sub_240759F54();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

uint64_t sub_240647D90(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

void sub_240647E44(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_27E4B9F78);
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = sub_24075AFC4();
    v14 = sub_2405BBA7C(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&dword_240579000, v8, v9, "Invalidating %s for deinit: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  if (a1)
  {
    v20 = sub_240759AC4();
    v15 = sub_24075A5D4();
    if (os_log_type_enabled(v20, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_240579000, v20, v15, "Not changing to invalidated state, we are deinitialized", v16, 2u);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    v17 = v20;
  }

  else
  {
    v18 = sub_24075A3D4();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;

    sub_240602F08(0, 0, v6, &unk_24076E2E0, v19);
  }
}

uint64_t sub_240648178()
{
  sub_240649608();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2406481D8(void *a1)
{
  v3 = *v1;
  v4 = a1;
  sub_24064EA4C(a1);

  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4B9F78);
  v6 = v4;
  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = a1;
    v11 = v6;
    _os_log_impl(&dword_240579000, v7, v8, "Communicating with modern OS, running tag exchange with session: %@", v9, 0xCu);
    sub_2405B8A50(v10, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  sub_2406483E0(v6);
  v18 = 3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(v22, 0, 25);
  v22[25] = 4;
  sub_24064EAA4(&v18);
  v13 = type metadata accessor for AnyTransportBuilder(255, *(v3 + 80), *(v3 + 88), v12);
  v16 = type metadata accessor for BluetoothBaseState(0, v13, v14, v15);
  return (*(*(v16 - 8) + 8))(&v18, v16);
}

uint64_t sub_2406483E0(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_24075A3D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for SharingServerBase(255, *(v3 + 80), *(v3 + 88), v8);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = WitnessTable;
  v10[4] = v1;
  v10[5] = a1;
  swift_retain_n();
  v11 = a1;
  sub_2406443B8(0, 0, v6, &unk_24076E1D0, v10);
}

uint64_t sub_240648550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_240648574, a4, 0);
}

uint64_t sub_240648574()
{
  v1 = *(v0[3] + 224);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_240648610;
  v3 = v0[4];

  return sub_240648784(v1, v3);
}

uint64_t sub_240648610(char a1)
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
    v8 = *(v4 + 24);
    *(v4 + 48) = a1 & 1;

    return MEMORY[0x2822009F8](sub_240648760, v8, 0);
  }
}

uint64_t sub_240648784(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_2406487D0, v2, 0);
}

uint64_t sub_2406487D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  type metadata accessor for SharingServerBase(255, *(*(v4 + 40) + 80), *(*(v4 + 40) + 88), a4);
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  *(v4 + 48) = v7;
  v8 = *(v4 + 16);
  *(v7 + 16) = v5;
  *(v7 + 24) = v8;
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_2406488FC;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 72, v5, WitnessTable, 0xD000000000000015, 0x8000000240787D10, sub_2406501BC, v7, v10);
}

uint64_t sub_2406488FC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_240648A40;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_240648A24;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240648A40()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_240648AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_27E4B9F78);

  v5 = sub_240759AC4();
  v6 = sub_24075A5D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    *&v25 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v9 = sub_24075A0E4();
    v11 = sub_2405BBA7C(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_240579000, v5, v6, "Received tag exchange response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  sub_24075A814();
  if (!*(a3 + 16) || (v12 = sub_2405BB338(v24), (v13 & 1) == 0))
  {
    sub_2405BD160(v24);
LABEL_14:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_15;
  }

  sub_2405BD1CC(*(a3 + 56) + 32 * v12, &v25);
  sub_2405BD160(v24);
  if (!*(&v26 + 1))
  {
LABEL_15:
    sub_2405B8A50(&v25, &qword_27E4BA1E8, &qword_24076E1C0);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v14 = LOBYTE(v24[0]);
    v15 = sub_240759AC4();
    v16 = sub_24075A5C4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v14;
      _os_log_impl(&dword_240579000, v15, v16, "Tag exchange resulted in peer deciding to accept: %{BOOL}d", v17, 8u);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    LOBYTE(v24[0]) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
    return sub_24075A364();
  }

LABEL_16:
  v19 = sub_240759AC4();
  v20 = sub_24075A5E4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_240579000, v19, v20, "Failed to parse tag exchange response", v21, 2u);
    MEMORY[0x245CC76B0](v21, -1, -1);
  }

  sub_2405B8998();
  v22 = swift_allocError();
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 6;
  v24[0] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
  return sub_24075A354();
}

uint64_t sub_240648E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_240759F74();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_240759F74();
  }

LABEL_4:

  v8 = a2;
  v6(a2, v7, v4);
}

uint64_t sub_240648F4C(void *a1)
{
  v3 = *v1;
  v4 = a1;
  sub_24064EA4C(a1);

  v6 = type metadata accessor for AnyTransportBuilder(0, *(v3 + 80), *(v3 + 88), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24064465C(sub_240650198, v11);
  v11[81] = 2;
  sub_24064EAA4(v11);
  v9 = type metadata accessor for BluetoothBaseState(0, v6, v7, v8);
  return (*(*(v9 - 8) + 8))(v11, v9);
}

void sub_240649060(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a4;
  v43 = a5;
  v8 = type metadata accessor for MessageSessionTransport(255, a2, a3, a4);
  v9 = sub_24075A714();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = *(v8 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v44 = &v41 - v20;
  v21 = [a1 messageSessionTemplate];
  if (!v21)
  {
    type metadata accessor for SharingServerBase.Failure(0, a2, a3, v22);
    swift_getWitnessTable();
    v25 = swift_allocError();
    *v27 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v23 = v21;
  MessageSessionTransport.init(templateSession:identifier:)(v23, 0xD000000000000040, 0x8000000240787A00, a2, a3, v13);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    type metadata accessor for SharingServerBase.Failure(0, a2, a3, v24);
    swift_getWitnessTable();
    v25 = swift_allocError();
    *v26 = 2;
    swift_willThrow();

LABEL_5:
    *v45 = v25;
    return;
  }

  v45 = v23;
  v28 = v44;
  (*(v14 + 32))(v44, v13, v8);
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v29 = sub_240759AE4();
  __swift_project_value_buffer(v29, qword_27E4B9F78);
  v30 = *(v14 + 16);
  v30(v19, v28, v8);
  v31 = sub_240759AC4();
  v32 = sub_24075A5C4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v33 = 136315138;
    v30(v42, v19, v8);
    v42 = sub_24075A0E4();
    v35 = v34;
    v36 = *(v14 + 8);
    v36(v19, v8);
    v37 = sub_2405BBA7C(v42, v35, &v46);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_240579000, v31, v32, "Created transport for message session: %s", v33, 0xCu);
    v38 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x245CC76B0](v38, -1, -1);
    v39 = v33;
    v28 = v44;
    MEMORY[0x245CC76B0](v39, -1, -1);
  }

  else
  {

    v36 = *(v14 + 8);
    v36(v19, v8);
  }

  WitnessTable = swift_getWitnessTable();
  TransportBuilding.into()(v8, WitnessTable, v43);

  v36(v28, v8);
}

uint64_t sub_240649558(void *a1)
{
  v2 = *v1;
  v10 = a1;
  v11 = 1;
  v12 = 0;
  v3 = a1;
  sub_24064EAA4(&v10);
  v5 = type metadata accessor for AnyTransportBuilder(255, *(v2 + 80), *(v2 + 88), v4);
  v8 = type metadata accessor for BluetoothBaseState(0, v5, v6, v7);
  return (*(*(v8 - 8) + 8))(&v10, v8);
}

uint64_t sub_240649608()
{
  v1 = *v0;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9F78);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_240579000, v3, v4, "Invalidating sharing service.", v5, 2u);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v6 = sub_240644C54();
  [v6 invalidate];

  v13 = 6;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, 25);
  v17[25] = 4;
  sub_24064EAA4(&v13);
  v8 = type metadata accessor for AnyTransportBuilder(255, *(v1 + 80), *(v1 + 88), v7);
  v11 = type metadata accessor for BluetoothBaseState(0, v8, v9, v10);
  return (*(*(v11 - 8) + 8))(&v13, v11);
}

unint64_t sub_2406497C8(unint64_t result)
{
  if (result >= 0xF)
  {
    return 15;
  }

  return result;
}

uint64_t sub_2406497E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240649854(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2406498C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240649930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_2406499A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2406497C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2406499CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2406497D8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2406499F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_240649A4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();
  v4 = sub_2406500F0();

  return MEMORY[0x28211F498](a1, WitnessTable, v3, v4);
}

uint64_t sub_240649AF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = sub_2406500F0();

  return MEMORY[0x28211BAD0](a1, a2, WitnessTable, v5);
}

uint64_t sub_240649B6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2405DA4B0;

  return sub_240645810();
}

uint64_t SharingClientBase.fixedPin.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t SharingClientBase.filter.getter()
{
  v1 = *(v0 + 152);
  sub_24057B5BC(v1, *(v0 + 160));
  return v1;
}

uint64_t SharingClientBase.stateHandler.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t sub_240649CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for MessageSessionTransport(255, *(*v4 + 80), *(*v4 + 88), a4);
  v10 = type metadata accessor for BluetoothBaseState(0, v7, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  v14 = *(v4 + 21);
  v15 = *(v6 + 160);
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v15], v10);
  v14(v4, a1, v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_240649E38@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v6 = type metadata accessor for MessageSessionTransport(255, *(v3 + 80), *(v3 + 88), v5);
  v9 = type metadata accessor for BluetoothBaseState(0, v6, v7, v8);
  return (*(*(v9 - 8) + 16))(a1, v1 + v4, v9);
}

uint64_t SharingClientBase.__allocating_init(base:queue:fixedPin:serviceType:peerDevice:filter:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  SharingClientBase.init(base:queue:fixedPin:serviceType:peerDevice:filter:stateHandler:)(a1, a2, a3, a4, v18, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t *SharingClientBase.init(base:queue:fixedPin:serviceType:peerDevice:filter:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *v10;
  swift_defaultActor_initialize();
  v18 = type metadata accessor for MessageSessionTransport(255, *(v16 + 80), *(v16 + 88), v17);
  type metadata accessor for BluetoothBaseState(0, v18, v19, v20);
  swift_storeEnumTagMultiPayload();
  v10[14] = a1;
  v10[15] = a2;
  v10[16] = a3;
  v10[17] = a4;
  v10[18] = a6;
  v10[19] = a7;
  v10[20] = a8;
  v10[21] = a9;
  v10[22] = a10;
  return v10;
}

char *SharingClientBase.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4B9F78);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_240579000, v4, v5, "SharingClientBase deallocated", v6, 2u);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  sub_24064C6AC(1);

  sub_24058CA60(*(v1 + 19), *(v1 + 20));

  v7 = *(*v1 + 160);
  v9 = type metadata accessor for MessageSessionTransport(255, *(v2 + 80), *(v2 + 88), v8);
  v12 = type metadata accessor for BluetoothBaseState(0, v9, v10, v11);
  (*(*(v12 - 8) + 8))(&v1[v7], v12);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t SharingClientBase.__deallocating_deinit()
{
  SharingClientBase.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24064A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[66] = v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[67] = v7;
  v8 = *(v6 + 88);
  v5[68] = v8;
  v9 = type metadata accessor for MessageSessionTransport(255, v7, v8, a4);
  v12 = type metadata accessor for BluetoothBaseState(0, v9, v10, v11);
  v5[69] = v12;
  v5[70] = *(v12 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24064A374, v4, 0);
}

uint64_t sub_24064A374()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
  sub_240649E38(v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v2 + 8);
  v0[73] = v5;
  v0[74] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (EnumCaseMultiPayload == 4)
  {
    v7 = v0[71];
    v8 = v0[69];
    v9 = v0[66];
    swift_storeEnumTagMultiPayload();
    sub_24064F4EC(v7, v10, v11, v12);
    v5(v7, v8);
    v13 = v9[14];
    [v13 setDispatchQueue_];
    v14 = *MEMORY[0x277D54D50];
    [v13 setLabel_];
    if (v9[17])
    {
      v15 = sub_24075A084();
    }

    else
    {
      v15 = 0;
    }

    v19 = v0[68];
    v20 = v0[67];
    v21 = v0[66];
    [v13 setFixedPIN_];

    [v13 setPeerDevice_];
    [v13 setServiceIdentifier_];
    [v13 setSessionFlags_];
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v19;
    v23[4] = v22;
    v0[22] = sub_24064F674;
    v0[23] = v23;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24064B298;
    v0[21] = &block_descriptor_78;
    v24 = _Block_copy(v0 + 18);

    [v13 setPromptForPINHandler_];
    _Block_release(v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v20;
    v26[3] = v19;
    v26[4] = v25;
    v0[28] = sub_24064F680;
    v0[29] = v26;
    v0[24] = MEMORY[0x277D85DD0];
    v0[25] = 1107296256;
    v0[26] = sub_240646B08;
    v0[27] = &block_descriptor_85;
    v27 = _Block_copy(v0 + 24);

    [v13 setShowPINHandlerEx_];
    _Block_release(v27);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v20;
    v29[3] = v19;
    v29[4] = v28;
    v0[34] = sub_24064F6BC;
    v0[35] = v29;
    v0[30] = MEMORY[0x277D85DD0];
    v0[31] = 1107296256;
    v0[32] = sub_240644810;
    v0[33] = &block_descriptor_92;
    v30 = _Block_copy(v0 + 30);

    [v13 setHidePINHandler_];
    _Block_release(v30);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v32[2] = v20;
    v32[3] = v19;
    v32[4] = v31;
    v0[40] = sub_24064F714;
    v0[41] = v32;
    v0[36] = MEMORY[0x277D85DD0];
    v0[37] = 1107296256;
    v0[38] = sub_240644810;
    v0[39] = &block_descriptor_99;
    v33 = _Block_copy(aBlock);

    [v13 setSessionStartedHandler_];
    _Block_release(v33);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    v35[2] = v20;
    v35[3] = v19;
    v35[4] = v34;
    v0[46] = sub_24064F76C;
    v0[47] = v35;
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    v0[44] = sub_240644810;
    v0[45] = &block_descriptor_106;
    v36 = _Block_copy(v0 + 42);

    [v13 setInvalidationHandler_];
    _Block_release(v36);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v38[2] = v20;
    v38[3] = v19;
    v38[4] = v37;
    v0[52] = sub_24064F7C4;
    v0[53] = v38;
    v0[48] = MEMORY[0x277D85DD0];
    v0[49] = 1107296256;
    v0[50] = sub_240644810;
    v0[51] = &block_descriptor_113;
    v39 = _Block_copy(v0 + 48);

    [v13 setInterruptionHandler_];
    _Block_release(v39);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = v20;
    v41[3] = v19;
    v41[4] = v40;
    v0[58] = sub_24064F81C;
    v0[59] = v41;
    v0[54] = MEMORY[0x277D85DD0];
    v0[55] = 1107296256;
    v0[56] = sub_240647520;
    v0[57] = &block_descriptor_120_0;
    v42 = _Block_copy(v0 + 54);

    [v13 setErrorHandler_];
    _Block_release(v42);
    v0[64] = sub_240651508;
    v0[65] = 0;
    v0[60] = MEMORY[0x277D85DD0];
    v0[61] = 1107296256;
    v0[62] = sub_240647520;
    v0[63] = &block_descriptor_123;
    v43 = _Block_copy(v0 + 60);
    [v13 setPairSetupCompletionHandler_];
    _Block_release(v43);
    v0[2] = v0;
    v0[3] = sub_24064AC50;
    v44 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240647D90;
    v0[13] = &block_descriptor_126;
    v0[14] = v44;
    [v13 activateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    type metadata accessor for SharingClientBase.Failure(0, v0[67], v0[68], v6);
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24064AC50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 600) = v2;
  v3 = *(v1 + 528);
  if (v2)
  {
    v4 = sub_24064AF7C;
  }

  else
  {
    v4 = sub_24064AD70;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24064AD70()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[69];
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v2, v4, v5, v6);
  v1(v2, v3);
  v7 = swift_task_alloc();
  v0[76] = v7;
  *v7 = v0;
  v7[1] = sub_24064AE48;

  return sub_24064BEC4();
}

uint64_t sub_24064AE48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24064AF7C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24064AFFC(int a1, int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v8 = sub_240759AE4();
  __swift_project_value_buffer(v8, qword_27E4B9F78);
  v9 = sub_240759AC4();
  v10 = sub_24075A5D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = a1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = a2;
    _os_log_impl(&dword_240579000, v9, v10, "promptForPINHandler called with flags: %u and throttleSeconds: %d", v11, 0xEu);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_24075A3D4();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = a1;
    *(v15 + 44) = a2;
    sub_240602F08(0, 0, v7, &unk_24076E240, v15);
  }

  return result;
}

uint64_t sub_24064B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v6 + 24) = a5;
  *(v6 + 28) = a6;
  *(v6 + 16) = a4;
  return MEMORY[0x2822009F8](sub_24064B230, a4, 0);
}

uint64_t sub_24064B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24064CB38(*(v4 + 24), *(v4 + 28), *(*(v4 + 16) + 112), a4);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_24064B298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_24064B2F8(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24[-1] - v12;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_27E4B9F78);

  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = v18;
    *v17 = 67109378;
    *(v17 + 4) = a1;
    *(v17 + 8) = 2080;
    *(v17 + 10) = sub_2405BBA7C(v23, a3, v24);
    _os_log_impl(&dword_240579000, v15, v16, "showPINHandlerEx called with flags: %u and password: %s", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CC76B0](v18, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = sub_24075A3D4();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = v20;
    *(v22 + 40) = a1;
    *(v22 + 48) = v23;
    *(v22 + 56) = a3;

    sub_240602F08(0, 0, v13, a8, v22);
  }

  return result;
}

uint64_t sub_24064B568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  return MEMORY[0x2822009F8](sub_24064B58C, a4, 0);
}

uint64_t sub_24064B58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2406506DC(v4[3], v4[4], a3, a4);
  v5 = v4[1];

  return v5();
}

uint64_t sub_24064B60C()
{
  sub_24065080C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24064B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24064CA20(*(*(v4 + 16) + 112), a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_24064B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), const char *a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v13 = sub_240759AE4();
  __swift_project_value_buffer(v13, qword_27E4B9F78);
  v14 = sub_240759AC4();
  v15 = a4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_240579000, v14, v15, a5, v16, 2u);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = sub_24075A3D4();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    sub_240602F08(0, 0, v12, a7, v20);
  }

  return result;
}

uint64_t sub_24064B8F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = *a4;
  return MEMORY[0x2822009F8](sub_24064B93C, 0, 0);
}

uint64_t sub_24064B93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for SharingClientBase.Failure(0, *(v4[3] + 80), *(v4[3] + 88), a4);
  swift_getWitnessTable();
  v4[4] = swift_allocError();
  *v6 = 4;

  return MEMORY[0x2822009F8](sub_24064B9EC, v5, 0);
}

uint64_t sub_24064B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  sub_24064D610(v5, a2, a3, a4);

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_24064BA5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v11 = sub_240759AE4();
  __swift_project_value_buffer(v11, qword_27E4B9F78);
  v12 = a1;
  v13 = sub_240759AC4();
  v14 = sub_24075A5E4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    if (a1)
    {
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v15 + 4) = v18;
    *v16 = v19;
    _os_log_impl(&dword_240579000, v13, v14, "errorHandler called: %@", v15, 0xCu);
    sub_2405B8A50(v16, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v16, -1, -1);
    MEMORY[0x245CC76B0](v15, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v21 = result;
      v22 = sub_24075A3D4();
      (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v21;
      v23[5] = a1;
      v24 = a1;
      sub_240602F08(0, 0, v10, a6, v23);
    }
  }

  return result;
}

uint64_t sub_24064BCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24064BCF4, a4, 0);
}

uint64_t sub_24064BCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24064D610(*(v4 + 24), a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

void sub_24064BD54(void *a1)
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9F78);
  v3 = a1;
  oslog = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_240579000, oslog, v4, "pairSetupCompletionHandler called with error: %@", v5, 0xCu);
    sub_2405B8A50(v6, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }
}

uint64_t sub_24064BEE4()
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  v0[27] = __swift_project_value_buffer(v1, qword_27E4B9F78);

  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[26];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v4 + 112);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_240579000, v2, v3, "Attempting to pair verify base: %@", v5, 0xCu);
    sub_2405B8A50(v6, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v9 = v0[26];

  v10 = *(v9 + 112);
  v0[28] = v10;
  v0[2] = v0;
  v0[3] = sub_24064C12C;
  v11 = swift_continuation_init();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
  v0[29] = v12;
  v0[25] = v12;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_240647D90;
  v0[21] = &block_descriptor_194;
  v0[22] = v11;
  [v10 pairVerifyWithFlags:8 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24064C12C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 208);
  if (v2)
  {
    v4 = sub_24064C2B4;
  }

  else
  {
    v4 = sub_24064C24C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24064C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24064CF0C(*(v4 + 224), a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_24064C2B4(uint64_t a1)
{
  v2 = v1[30];
  swift_willThrow();
  v3 = v2;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to pair verify with error: %@, attempting pair setup", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = v1[28];
  v12 = v1[29];

  v1[10] = v1;
  v1[11] = sub_24064C4A0;
  v13 = swift_continuation_init();
  v1[25] = v12;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_240647D90;
  v1[21] = &block_descriptor_197;
  v1[22] = v13;
  [v11 pairSetupWithFlags:8 completion:v1 + 18];

  return MEMORY[0x282200938](v1 + 10);
}

uint64_t sub_24064C4A0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 208);
  if (v2)
  {
    v4 = sub_24064C630;
  }

  else
  {
    v4 = sub_24064C5C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24064C5C0()
{
  sub_24064CF0C(*(v0 + 224), v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24064C630(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_24064C6AC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_27E4B9F78);

  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = *(v1 + 112);
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    v13 = v12;
    _os_log_impl(&dword_240579000, v8, v9, "Invalidating %@ for deinit: %{BOOL}d", v10, 0x12u);
    sub_2405B8A50(v11, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  [*(v1 + 112) invalidate];
  if (a1)
  {
    v20 = sub_240759AC4();
    v14 = sub_24075A5D4();
    if (os_log_type_enabled(v20, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_240579000, v20, v14, "Not changing to invalidated state, we are deinitialized", v15, 2u);
      MEMORY[0x245CC76B0](v15, -1, -1);
    }

    v16 = v20;
  }

  else
  {
    v17 = sub_24075A3D4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v2;

    sub_240602F08(0, 0, v6, &unk_24076E250, v18);
  }
}

uint64_t sub_24064C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24064D50C(a1, a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

void sub_24064CA20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageSessionTransport(255, *(*v4 + 80), *(*v4 + 88), a4);
  v9 = type metadata accessor for BluetoothBaseState(0, v6, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v12, v13, v14, v15);
  (*(v10 + 8))(v12, v9);
  sub_24064D734(a1);
}

uint64_t sub_24064CB38(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for MessageSessionTransport(255, *(*v4 + 80), *(*v4 + 88), a4);
  v11 = type metadata accessor for BluetoothBaseState(0, v8, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *v14 = (a1 << 32) | 1;
  *(v14 + 8) = __PAIR128__(a2 >> 31, a2) * 0xDE0B6B3A7640000;
  *(v14 + 3) = sub_24065017C;
  *(v14 + 4) = v15;
  v14[40] = 1;
  swift_storeEnumTagMultiPayload();
  v16 = a3;
  sub_24064F4EC(v14, v17, v18, v19);
  return (*(v12 + 8))(v14, v11);
}

void sub_24064CCBC(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    if (qword_27E4B5F30 != -1)
    {
      swift_once();
    }

    v5 = sub_240759AE4();
    __swift_project_value_buffer(v5, qword_27E4B9F78);
    oslog = sub_240759AC4();
    v6 = sub_24075A5E4();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_240579000, oslog, v6, "Unable to change to new pin type because SharingClient only supports 4 digit codes: %d", v7, 8u);
      MEMORY[0x245CC76B0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27E4B5F30 != -1)
    {
      swift_once();
    }

    v10 = sub_240759AE4();
    __swift_project_value_buffer(v10, qword_27E4B9F78);

    v11 = sub_240759AC4();
    v12 = sub_24075A5C4();
    sub_240650188(a1, a2, 0);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2405BBA7C(a1, a2, &v16);
      _os_log_impl(&dword_240579000, v11, v12, "Trying pair setup with pin: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245CC76B0](v14, -1, -1);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }

    oslog = sub_24075A084();
    [a4 pairSetupTryPIN_];
  }
}

uint64_t sub_24064CF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for MessageSessionTransport(255, v6, v7, a4);
  v11 = type metadata accessor for BluetoothBaseState(0, v8, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19[-v13];
  v20 = v6;
  v21 = v7;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24064465C(sub_240650158, v14);
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v14, v15, v16, v17);
  return (*(v12 + 8))(v14, v11);
}

void sub_24064D080(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v38 = a4;
  v37 = a5;
  v8 = type metadata accessor for MessageSessionTransport(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = sub_24075A714();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v18 = [a1 messageSessionTemplate];
  if (!v18)
  {
    type metadata accessor for SharingClientBase.Failure(0, a2, a3, v19);
    swift_getWitnessTable();
    v22 = swift_allocError();
    *v24 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v20 = v18;
  MessageSessionTransport.init(templateSession:identifier:)(v20, 0xD000000000000040, 0x8000000240787A00, a2, a3, v17);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    (*(v15 + 8))(v17, v14);
    type metadata accessor for SharingClientBase.Failure(0, a2, a3, v21);
    swift_getWitnessTable();
    v22 = swift_allocError();
    *v23 = 2;
    swift_willThrow();

LABEL_5:
    *v38 = v22;
    return;
  }

  v38 = v20;
  v25 = v37;
  (*(v9 + 32))(v37, v17, v8);
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  __swift_project_value_buffer(v26, qword_27E4B9F78);
  v27 = *(v9 + 16);
  v27(v13, v25, v8);
  v28 = sub_240759AC4();
  v29 = sub_24075A5C4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v30 = 136315138;
    v27(v36, v13, v8);
    v31 = sub_24075A0E4();
    v33 = v32;
    (*(v9 + 8))(v13, v8);
    v34 = sub_2405BBA7C(v31, v33, &v39);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_240579000, v28, v29, "Created transport for message session: %s", v30, 0xCu);
    v35 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x245CC76B0](v35, -1, -1);
    MEMORY[0x245CC76B0](v30, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_24064D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MessageSessionTransport(255, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = type metadata accessor for BluetoothBaseState(0, v5, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v11, v12, v13, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24064D610(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageSessionTransport(255, *(*v4 + 80), *(*v4 + 88), a4);
  v9 = type metadata accessor for BluetoothBaseState(0, v6, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  *v12 = a1;
  v12[8] = 1;
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  sub_24064F4EC(v12, v14, v15, v16);
  return (*(v10 + 8))(v12, v9);
}

void sub_24064D734(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_24075A084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  aBlock = 0xD000000000000010;
  v12 = 0x8000000240787C90;
  sub_24075A814();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_2405BD674(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
  v7 = sub_240759F54();

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v4 + 80);
  v9[3] = *(v4 + 88);
  v9[4] = v8;
  v15 = sub_240650144;
  v16 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24064E048;
  v14 = &block_descriptor_166;
  v10 = _Block_copy(&aBlock);

  [a1 registerRequestID:v5 options:v7 handler:v10];
  _Block_release(v10);
}

void sub_24064D96C(uint64_t a1, uint64_t a2, void (*a3)(void *, unint64_t, unint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B9F78);

  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41[0] = v10;
    *v9 = 136315138;
    v11 = sub_240759F84();
    v13 = sub_2405BBA7C(v11, v12, v41);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_240579000, v7, v8, "Received tag exchange request: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  sub_24075A814();
  if (*(a2 + 16) && (v14 = sub_2405BB338(v41), (v15 & 1) != 0))
  {
    sub_2405BD1CC(*(a2 + 56) + 32 * v14, &v42);
    sub_2405BD160(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1D8, &qword_24076E1B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v16 = sub_24064E240(1936154996);

        v17 = sub_240759AC4();
        v18 = sub_24075A5D4();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v42 = v20;
          *v19 = 136315394;
          v21 = MEMORY[0x245CC5FF0](1936154996, MEMORY[0x277CC9318]);
          v23 = v22;

          v24 = sub_2405BBA7C(v21, v23, &v42);

          *(v19 + 4) = v24;
          *(v19 + 12) = 1024;
          *(v19 + 14) = v16 & 1;
          _os_log_impl(&dword_240579000, v17, v18, "Evaluated tags: %s with filter and decided: %{BOOL}d", v19, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v20);
          MEMORY[0x245CC76B0](v20, -1, -1);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_240765570;
        v42 = 0xD000000000000010;
        v43 = 0x8000000240787C90;
        sub_24075A814();
        v36 = MEMORY[0x277D839B0];
        *(inited + 96) = MEMORY[0x277D839B0];
        *(inited + 72) = 1;
        v37 = sub_2405BD674(inited);
        swift_setDeallocating();
        sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_240765570;
        v42 = 0x747065636361;
        v43 = 0xE600000000000000;
        sub_24075A814();
        *(v38 + 96) = v36;
        *(v38 + 72) = 1;
        v39 = sub_2405BD674(v38);
        swift_setDeallocating();
        sub_2405B8A50(v38 + 32, &unk_27E4B73D0, &qword_240770790);
        a3(0, v37, v39);

        return;
      }
    }
  }

  else
  {
    sub_2405BD160(v41);
  }

  v25 = sub_240759AC4();
  v26 = sub_24075A5E4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_240579000, v25, v26, "Failed to parse tag exchange request", v27, 2u);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  sub_2405B8998();
  v28 = swift_allocError();
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_240765570;
  v42 = 0xD000000000000010;
  v43 = 0x8000000240787C90;
  sub_24075A814();
  v31 = MEMORY[0x277D839B0];
  *(v30 + 96) = MEMORY[0x277D839B0];
  *(v30 + 72) = 1;
  v32 = sub_2405BD674(v30);
  swift_setDeallocating();
  sub_2405B8A50(v30 + 32, &unk_27E4B73D0, &qword_240770790);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_240765570;
  v42 = 0x747065636361;
  v43 = 0xE600000000000000;
  sub_24075A814();
  *(v33 + 96) = v31;
  *(v33 + 72) = 0;
  v34 = sub_2405BD674(v33);
  swift_setDeallocating();
  sub_2405B8A50(v33 + 32, &unk_27E4B73D0, &qword_240770790);
  a3(v28, v32, v34);
}

uint64_t sub_24064E048(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = sub_240759F74();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_240759F74();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v5(v6, v7, sub_240650150, v9);
}

void sub_24064E15C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = sub_2407595C4();
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    a2 = sub_240759F54();
  }

  if (a3)
  {
    v8 = sub_240759F54();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t sub_24064E240(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (a1 + 40);
    v5 = 1;
    while ((v5 & 1) != 0)
    {
      v8 = *(v3 + 152);
      if (v8)
      {
        v6 = *(v4 - 1);
        v7 = *v4;
        sub_2405BB9D4(v6, *v4);
        v5 = v8(v6, v7);
        sub_2405BCD98(v6, v7);
      }

      else
      {
        v5 = 1;
      }

      v4 += 2;
      if (!--v2)
      {
        return v5 & 1;
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_24064E30C(uint64_t a1)
{
  sub_24075AE64();
  sub_24057C4E4(v3, *v1);
  return sub_24075AED4();
}

uint64_t sub_24064E358()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2405CE450;

  return sub_24064A268(v1, v2, v3, v4);
}

id BLEDevice.into()()
{
  v1 = sub_2407597B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FC0, &qword_24076DC78);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  if (*(v0 + 8))
  {

    sub_240759754();

    sub_24064F870(v11, v13);
    sub_2405B044C(v13, v8, &qword_27E4B9FC0, &qword_24076DC78);
    if ((*(v2 + 48))(v8, 1, v1) != 1)
    {
      (*(v2 + 32))(v4, v8, v1);
      v19 = [objc_allocWithZone(MEMORY[0x277D54C48]) init];
      v20 = sub_240759774();
      [v19 setIdentifier_];

      (*(v2 + 8))(v4, v1);
      sub_2405B8A50(v13, &qword_27E4B9FC0, &qword_24076DC78);
      return v19;
    }

    sub_2405B8A50(v13, &qword_27E4B9FC0, &qword_24076DC78);
    sub_2405B8A50(v8, &qword_27E4B9FC0, &qword_24076DC78);
  }

  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_27E4B9F78);
  v15 = sub_240759AC4();
  v16 = sub_24075A5E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_240579000, v15, v16, "Cannot transform BLEDevice: into SFDevice", v17, 2u);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  return 0;
}

BOOL sub_24064E760()
{
  v1 = v0;
  v2 = *(v0 + 16);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  if (v3)
  {

    sub_24064E848();
    v4 = *(v1 + 16);
    MEMORY[0x28223BE20](v5);

    os_unfair_lock_lock((v4 + 24));
    sub_2406514F0((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  return v3 != 0;
}

void sub_24064E848()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = v3;
  os_unfair_lock_unlock((v2 + 24));

  v11 = 0;
  v5 = *(v1 + 24);

  os_unfair_lock_lock((v5 + 24));
  sub_2406513C4((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  v6 = *(v1 + 16);

  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_24065140C;
    *(v8 + 24) = v9;
    v10 = sub_240651448;
  }

  else
  {
    v10 = 0;
  }

  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  os_unfair_lock_unlock((v6 + 32));

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    v11 = v4;
    v10(&v11);
    sub_24058CA60(v10, v8);
LABEL_7:

    return;
  }

  sub_24058CA60(v10, v8);
}

void sub_24064EA4C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
  v4 = a1;

  sub_240644E40();
}

uint64_t sub_24064EAA4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for AnyTransportBuilder(255, *(v3 + 80), *(v3 + 88), v4);
  v8 = type metadata accessor for BluetoothBaseState(0, v5, v6, v7);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v11, v1 + 30, v8);
  swift_beginAccess();
  (*(v9 + 24))(v1 + 30, a1, v8);
  swift_endAccess();
  sub_240645170(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24064EE2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v2 + 42);
  v13[0] = a1;
  v13[1] = a2;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v6;
  v14 = 0;
  v15 = 1;

  sub_24064EAA4(v13);
  v8 = type metadata accessor for AnyTransportBuilder(255, *(v5 + 80), *(v5 + 88), v7);
  v11 = type metadata accessor for BluetoothBaseState(0, v8, v9, v10);
  return (*(*(v11 - 8) + 8))(v13, v11);
}

uint64_t sub_24064EF10()
{
  v1 = *v0;
  sub_24064EA4C(0);
  v8 = 4;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, 25);
  v12[25] = 4;
  sub_24064EAA4(&v8);
  v3 = type metadata accessor for AnyTransportBuilder(255, *(v1 + 80), *(v1 + 88), v2);
  v6 = type metadata accessor for BluetoothBaseState(0, v3, v4, v5);
  return (*(*(v6 - 8) + 8))(&v8, v6);
}

void sub_24064EFD0(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
  v36 = *(v5 - 8);
  v37 = v5;
  v33 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - v6;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_27E4B9F78);

  v8 = a2;
  v9 = sub_240759AC4();
  v10 = sub_24075A5D4();

  v11 = os_log_type_enabled(v9, v10);
  v32 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v12 = 136315394;
    v15 = MEMORY[0x245CC5FF0](a1, MEMORY[0x277CC9318]);
    v17 = sub_2405BBA7C(v15, v16, &v38);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    v18 = v8;
    _os_log_impl(&dword_240579000, v9, v10, "Exchanging tags: %s with session: %@", v12, 0x16u);
    sub_2405B8A50(v13, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  v31 = sub_24075A084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  inited = swift_initStackObject();
  v30 = xmmword_240765570;
  *(inited + 16) = xmmword_240765570;
  v38 = 0xD000000000000010;
  v39 = 0x8000000240787C90;
  sub_24075A814();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_2405BD674(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
  v20 = sub_240759F54();

  v21 = swift_initStackObject();
  *(v21 + 16) = v30;
  v38 = 1936154996;
  v39 = 0xE400000000000000;
  sub_24075A814();
  *(v21 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1D8, &qword_24076E1B0);
  *(v21 + 72) = a1;

  sub_2405BD674(v21);
  swift_setDeallocating();
  sub_2405B8A50(v21 + 32, &unk_27E4B73D0, &qword_240770790);
  v22 = sub_240759F54();

  v23 = v36;
  v24 = v34;
  v25 = v37;
  (*(v36 + 16))(v34, v35, v37);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = swift_allocObject();
  (*(v23 + 32))(v27 + v26, v24, v25);
  v42 = sub_2406501F8;
  v43 = v27;
  v38 = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_240648E68;
  v41 = &block_descriptor_180;
  v28 = _Block_copy(&v38);

  v29 = v31;
  [v32 sendRequestID:v31 options:v20 request:v22 responseHandler:v28];
  _Block_release(v28);
}

uint64_t sub_24064F4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for MessageSessionTransport(255, *(*v4 + 80), *(*v4 + 88), a4);
  v10 = type metadata accessor for BluetoothBaseState(0, v7, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-v12];
  v14 = *(v6 + 160);
  swift_beginAccess();
  (*(v11 + 16))(v13, v4 + v14, v10);
  swift_beginAccess();
  (*(v11 + 24))(v4 + v14, a1, v10);
  swift_endAccess();
  sub_240649CD0(v13, v15, v16, v17);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24064F870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FC0, &qword_24076DC78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24064F8E4()
{
  result = qword_27E4B9FC8[0];
  if (!qword_27E4B9FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4B9FC8);
  }

  return result;
}

uint64_t dispatch thunk of SharingServerBase.activate()()
{
  v4 = (*(*v0 + 344) + **(*v0 + 344));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2405DA4B0;

  return v4();
}

uint64_t sub_24064FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MessageSessionTransport(255, *(a1 + 80), *(a1 + 88), a4);
  result = type metadata accessor for BluetoothBaseState(319, v4, v5, v6);
  if (v8 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SharingClientBase.activate()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2405CE450;

  return v4();
}

uint64_t getEnumTagSinglePayload for AppleIDSetupFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleIDSetupFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2406500F0()
{
  result = qword_27E4BA1D0;
  if (!qword_27E4BA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA1D0);
  }

  return result;
}

uint64_t sub_240650188(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2406501F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);

  return sub_240648AA8(a1, a2, a3);
}

uint64_t sub_24065028C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_240648550(a1, v4, v5, v7, v6);
}

uint64_t sub_24065034C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_24064BCD4(a1, v4, v5, v7, v6);
}

uint64_t sub_24065040C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B8F4(a1, v4, v5, v6);
}

uint64_t sub_2406504C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B6EC(a1, v4, v5, v6);
}

uint64_t sub_240650574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B668(a1, v4, v5, v6);
}

uint64_t sub_240650628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B5F0(a1, v4, v5, v6);
}

uint64_t sub_2406506DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MessageSessionTransport(255, *(*v4 + 80), *(*v4 + 88), a4);
  v10 = type metadata accessor for BluetoothBaseState(0, v7, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  *(v13 + 2) = 1;
  v13[40] = 0;
  swift_storeEnumTagMultiPayload();

  sub_24064F4EC(v13, v14, v15, v16);
  return (*(v11 + 8))(v13, v10);
}

void sub_24065080C()
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v0 = sub_240759AE4();
  __swift_project_value_buffer(v0, qword_27E4B9F78);
  oslog = sub_240759AC4();
  v1 = sub_24075A5E4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_240579000, oslog, v1, "Received PIN hide but not supported yet", v2, 2u);
    MEMORY[0x245CC76B0](v2, -1, -1);
  }
}

uint64_t sub_2406508F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2405DA4B0;

  return sub_24064B568(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2406509CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 44);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_24064B20C(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_240650A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_24064C9A0(a1, v4, v5, v6);
}

unint64_t sub_240650B50()
{
  result = qword_27E4B7458;
  if (!qword_27E4B7458)
  {
    sub_2407597B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7458);
  }

  return result;
}

uint64_t objectdestroy_200Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240650BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_2406474A0(a1, v4, v5, v7, v6);
}

uint64_t sub_240650CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240647338(a1, v4, v5, v6);
}

uint64_t sub_240650D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240647318(a1, v4, v5, v6);
}

uint64_t sub_240650E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_240647298(a1, v4, v5, v7, v6);
}

uint64_t sub_240650ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240646F3C(a1, v4, v5, v6);
}

uint64_t objectdestroy_182Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240650FE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_240646BA0(a1, v4, v5, v7, v6);
}

uint64_t sub_2406510A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240646B84(a1, v4, v5, v6);
}

uint64_t objectdestroy_220Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2406511A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2405DA4B0;

  return sub_240646A80(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_204Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2406512C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240648158(a1, v4, v5, v6);
}

uint64_t sub_24065137C(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

id sub_2406513C4(id *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_24065140C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_240651448(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_2406515BC()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_240651654()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA208, &unk_24076E300);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  *(v1 + v12) = 1;
  v13 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedContinuation;
  swift_beginAccess();
  sub_240651894(v1 + v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_240651904(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_24075A364();
  (*(v9 + 8))(v11, v8);
  (*(v9 + 56))(v5, 1, 1, v8);
  swift_beginAccess();
  sub_24065196C(v5, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_240651894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240651904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24065196C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_240651A24()
{
  v1[5] = v0;
  sub_24075A3A4();
  v1[6] = sub_24075A394();
  v3 = sub_24075A344();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_240651ABC, v3, v2);
}

uint64_t sub_240651ABC()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[9] = sub_240652334();
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_240651BCC;

    return MEMORY[0x282200460]();
  }
}

uint64_t sub_240651BCC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_240651D10, v3, v2);
}

uint64_t sub_240651D10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240651EE4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_24075A3A4();
  v2[8] = sub_24075A394();
  v4 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_240651F80, v4, v3);
}

uint64_t sub_240651F80()
{
  v1 = v0[5];
  v2 = v0[6];

  v0[9] = _Block_copy(v1);
  v3 = v2;
  v0[10] = sub_24075A394();
  v5 = sub_24075A344();
  v0[11] = v5;
  v0[12] = v4;

  return MEMORY[0x2822009F8](sub_24065202C, v5, v4);
}

uint64_t sub_24065202C()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {

    v3 = *(v0 + 72);
    v3[2](v3);
    _Block_release(v3);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 104) = sub_240652334();
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_240652168;

    return MEMORY[0x282200460]();
  }
}

uint64_t sub_240652168()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2406522AC, v3, v2);
}

uint64_t sub_2406522AC()
{

  v1 = *(v0 + 72);
  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240652334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask;
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask))
  {
    v5 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask);
  }

  else
  {
    v6 = sub_24075A3D4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v5 = sub_240602F08(0, 0, v3, &unk_24076E3B0, v8);
    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t sub_2406524A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = v0[1];

    return v4();
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {

    goto LABEL_4;
  }

  v6 = swift_task_alloc();
  v0[10] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_240652624;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_240652624()
{

  return MEMORY[0x2822009F8](sub_24065273C, 0, 0);
}

uint64_t sub_24065273C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24065279C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA208, &unk_24076E300);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedContinuation;
  swift_beginAccess();
  sub_24065196C(v6, a2 + v9);
  return swift_endAccess();
}

id AISFlowTask.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask])
  {

    sub_24075A4A4();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISFlowTask(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AISFlowTask(uint64_t a1)
{
  result = qword_27E4BA220;
  if (!qword_27E4BA220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AISFlowTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISFlowTask.init()()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA208, &unk_24076E300);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask] = 0;
  v0[OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AISFlowTask(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AISFlowTaskInfoProtocol_Internal.complete(after:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_24075A3D4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = v2;
  v9[6] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_240602F08(0, 0, v7, &unk_24076E320, v9);
}

uint64_t sub_240652D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_240652D50, 0, 0);
}

uint64_t sub_240652D50()
{
  if ([*(v0 + 144) completed])
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_240652EA8;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA238, &qword_24076E3A0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_240653414;
    *(v0 + 104) = &block_descriptor_7;
    *(v0 + 112) = v4;
    [v3 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_240652EA8()
{

  return MEMORY[0x2822009F8](sub_240652F88, 0, 0);
}

uint64_t sub_240652F88()
{
  [*(v0 + 144) complete];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240652FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_240652D30(a1, v4, v5, v6, v7);
}

void sub_2406530C0(uint64_t a1)
{
  sub_240653304(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AISFlowTask.waitUntilLoaded()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return v5();
}

void sub_240653304(uint64_t a1)
{
  if (!qword_27E4BA230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BA208, &unk_24076E300);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4BA230);
    }
  }
}

uint64_t sub_240653368()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240651EE4(v2, v3);
}

uint64_t sub_240653414(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_240653460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_240652488(a1, v4, v5, v6);
}

uint64_t sub_240653534()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2406535D4;

  return sub_240653864();
}

uint64_t sub_2406535D4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2406536D4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_2406537C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240653E30;

  return sub_240653864();
}

uint64_t sub_240653880()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2406539B8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA240, &unk_24076E460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2406536D4;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2406539B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_240653B30;
  }

  else
  {
    v2 = sub_240653AC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240653AC8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240653B30(uint64_t a1)
{
  v2 = *(v1 + 152);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t dispatch thunk of FamilyCircleProviderProtocol.fetchFamilyCircle()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24063DDE8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FamilyCircleProvider.fetchFamilyCircle()()
{
  v4 = (*(*v0 + 88) + **(*v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24063D29C;

  return v4();
}

id SimpleRepairModelExchange.queue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SimpleRepairModelExchange.init(queue:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Message.Metrics.epochsByStage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *Message.Metrics.init(sourceSendEpoch:destinationReceiveEpoch:destinationSendEpoch:sourceReceiveEpoch:)@<X0>(uint64_t a4@<X3>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = type metadata accessor for Message.Metrics.EpochStage(255, a10, a11, a4);
  v12 = MEMORY[0x277D84D38];
  swift_getTupleTypeMetadata2();
  v13 = sub_24075A2E4();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_2405D487C(v13, v11, v12, WitnessTable);

  v23 = v15;
  v17 = type metadata accessor for Message.Metrics(0, a10, a11, v16);
  Message.Metrics.updatingEpoch(for:to:)(v17, &v20);
  LOBYTE(v23) = 1;
  Message.Metrics.updatingEpoch(for:to:)(v17, &v21);
  LOBYTE(v23) = 2;
  Message.Metrics.updatingEpoch(for:to:)(v17, &v22);
  result = Message.Metrics.updatingEpoch(for:to:)(v17, &v23);
  *a9 = v23;
  return result;
}

uint64_t Message.Metrics.updatingEpoch(for:to:)@<X0>(uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *v5;
  type metadata accessor for Message.Metrics.EpochStage(255, *(a4 + 16), *(a4 + 24), a4);
  swift_getWitnessTable();
  sub_240759FA4();
  return sub_240759FE4();
}

uint64_t sub_24065417C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Message.Metrics.EpochStage(0, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_240759FD4();
  return v5;
}

unint64_t sub_240654254(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = a2();
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  result = a3(a1);
  if (v9)
  {
    return 0;
  }

  if (result >= v7)
  {
    return 1000000000000000 * (result - v7);
  }

  __break(1u);
  return result;
}

uint64_t Message.Metrics.roundtripDuration.getter(uint64_t a1)
{
  Message.Metrics.onewaySendDuration.getter(a1);
  if (v2)
  {
    return 0;
  }

  Message.Metrics.onewayReceiveDuration.getter(a1);
  if (v3)
  {
    return 0;
  }

  else
  {
    return sub_24075AF94();
  }
}

uint64_t Message.Metrics.updateEpoch(for:to:)(char *a1, uint64_t a2, char a3, uint64_t a4)
{
  result = Message.Metrics.updatingEpoch(for:to:)(a4, &v6);
  *v4 = v6;
  return result;
}

uint64_t static Message.Metrics.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for Message.Metrics.EpochStage(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D84D38];
  v9 = MEMORY[0x277D84D58];

  return MEMORY[0x2821FB928](v4, v5, v6, v8, WitnessTable, v9);
}

uint64_t sub_24065449C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79427368636F7065 && a2 == 0xED00006567617453)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24075ACF4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_240654540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24065449C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_240654574(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406545C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = v6;
  _s14descr285266561O7MetricsV10CodingKeysOMa(255, v6, v13, a4);
  swift_getWitnessTable();
  v7 = sub_24075AC24();
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_24075AF74();
  v18 = v10;
  type metadata accessor for Message.Metrics.EpochStage(255, v14, v13, v11);
  swift_getWitnessTable();
  sub_240759FA4();
  WitnessTable = swift_getWitnessTable();
  v17 = MEMORY[0x277D84D40];
  swift_getWitnessTable();
  sub_24075ABE4();

  return (*(v15 + 8))(v9, v7);
}

uint64_t Message.Metrics.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for Message.Metrics.EpochStage(0, *(a2 + 16), *(a2 + 24), a4);
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277D84D38];
  v10 = MEMORY[0x277D84D48];

  return MEMORY[0x2821FB920](a1, v6, v7, v9, WitnessTable, v10);
}

uint64_t Message.Metrics.hashValue.getter(uint64_t a1)
{
  v6[9] = *v1;
  sub_24075AE64();
  Message.Metrics.hash(into:)(v6, a1, v3, v4);
  return sub_24075AED4();
}

uint64_t Message.Metrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v18 = a4;
  _s14descr285266561O7MetricsV10CodingKeysOMa(255, a2, a3, a5);
  swift_getWitnessTable();
  v19 = sub_24075AB44();
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF34();
  if (!v5)
  {
    v13 = v17;
    v12 = v18;
    type metadata accessor for Message.Metrics.EpochStage(255, a2, a3, v11);
    swift_getWitnessTable();
    sub_240759FA4();
    WitnessTable = swift_getWitnessTable();
    v21 = MEMORY[0x277D84D68];
    swift_getWitnessTable();
    v14 = v19;
    sub_24075AAF4();
    (*(v13 + 8))(v10, v14);
    *v12 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_240654BAC(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  Message.Metrics.hash(into:)(v6, a2, v3, v4);
  return sub_24075AED4();
}

uint64_t sub_240654C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553656372756F73 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240787E70 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEF646E65536E6F69 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552656372756F73 && a2 == 0xED00006576696563)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_240654D88(unsigned __int8 a1)
{
  v1 = 0x6553656372756F73;
  v2 = 0x74616E6974736564;
  if (a1 != 2)
  {
    v2 = 0x6552656372756F73;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_240654E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240654C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240654E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240654EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240654F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240654F74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240654FC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24065501C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240655070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406550C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240655118@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_240655164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406551B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.EpochStage.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = _s14descr285266561O7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa(255, v7, v8, a4);
  WitnessTable = swift_getWitnessTable();
  v53 = v9;
  v10 = sub_24075AC24();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v49 = &v35 - v11;
  v13 = _s14descr285266561O7MetricsV10EpochStageO25DestinationSendCodingKeysOMa(255, v7, v8, v12);
  v14 = swift_getWitnessTable();
  v48 = v13;
  v46 = v14;
  v47 = sub_24075AC24();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v35 - v15;
  v17 = _s14descr285266561O7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa(255, v7, v8, v16);
  v18 = swift_getWitnessTable();
  v43 = v17;
  v41 = v18;
  v42 = sub_24075AC24();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v35 - v19;
  _s14descr285266561O7MetricsV10EpochStageO20SourceSendCodingKeysOMa(255, v7, v8, v20);
  v37 = swift_getWitnessTable();
  v38 = sub_24075AC24();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - v21;
  _s14descr285266561O7MetricsV10EpochStageO10CodingKeysOMa(255, v7, v8, v22);
  swift_getWitnessTable();
  v54 = sub_24075AC24();
  v23 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v25 = &v35 - v24;
  v26 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v27 = (v23 + 8);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v57 = 2;
      v30 = v44;
      v31 = v54;
      sub_24075AB54();
      (*(v45 + 8))(v30, v47);
    }

    else
    {
      v58 = 3;
      v34 = v49;
      v31 = v54;
      sub_24075AB54();
      (*(v50 + 8))(v34, v51);
    }

    return (*v27)(v25, v31);
  }

  else
  {
    if (v26)
    {
      v56 = 1;
      v32 = v39;
      v29 = v54;
      sub_24075AB54();
      (*(v40 + 8))(v32, v42);
    }

    else
    {
      v55 = 0;
      v28 = v35;
      v29 = v54;
      sub_24075AB54();
      (*(v36 + 8))(v28, v38);
    }

    return (*v27)(v25, v29);
  }
}

uint64_t Message.Metrics.EpochStage.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t Message.Metrics.EpochStage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, uint64_t a5@<X3>)
{
  v69 = a4;
  v8 = _s14descr285266561O7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v68 = v8;
  v58 = sub_24075AB44();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v66 = &v48 - v9;
  v11 = _s14descr285266561O7MetricsV10EpochStageO25DestinationSendCodingKeysOMa(255, a2, a3, v10);
  v64 = swift_getWitnessTable();
  v65 = v11;
  v56 = sub_24075AB44();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v63 = &v48 - v12;
  v14 = _s14descr285266561O7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa(255, a2, a3, v13);
  v61 = swift_getWitnessTable();
  v62 = v14;
  v54 = sub_24075AB44();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v60 = &v48 - v15;
  v17 = _s14descr285266561O7MetricsV10EpochStageO20SourceSendCodingKeysOMa(255, a2, a3, v16);
  v59 = swift_getWitnessTable();
  v52 = sub_24075AB44();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v19 = &v48 - v18;
  _s14descr285266561O7MetricsV10EpochStageO10CodingKeysOMa(255, a2, a3, v20);
  swift_getWitnessTable();
  v21 = sub_24075AB44();
  v22 = *(v21 - 8);
  v70 = v21;
  v71 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = v72;
  sub_24075AF34();
  if (!v26)
  {
    v49 = v19;
    v50 = v17;
    v72 = a2;
    v27 = v70;
    v28 = v24;
    *&v73 = sub_24075AB34();
    sub_24075A334();
    swift_getWitnessTable();
    *&v75 = sub_24075A774();
    *(&v75 + 1) = v29;
    *&v76 = v30;
    *(&v76 + 1) = v31;
    sub_24075A764();
    swift_getWitnessTable();
    sub_24075A5A4();
    v32 = v73;
    if (v73 == 4 || (v48 = v75, v73 = v75, v74 = v76, (sub_24075A5B4() & 1) == 0))
    {
      v36 = v27;
      v37 = sub_24075A8C4();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v39 = type metadata accessor for Message.Metrics.EpochStage(0, v72, a3, v40);
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v71 + 8))(v28, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32 > 1)
      {
        v42 = v28;
        if (v32 == 2)
        {
          LOBYTE(v73) = 2;
          v43 = v63;
          sub_24075AA54();
          v35 = v69;
          v44 = v27;
          v45 = v71;
          (*(v55 + 8))(v43, v56);
        }

        else
        {
          LOBYTE(v73) = 3;
          v47 = v66;
          sub_24075AA54();
          v35 = v69;
          v44 = v27;
          v45 = v71;
          (*(v57 + 8))(v47, v58);
        }

        (*(v45 + 8))(v42, v44);
        goto LABEL_14;
      }

      v33 = v28;
      if (!v32)
      {
        LOBYTE(v73) = 0;
        v34 = v49;
        sub_24075AA54();
        v35 = v69;
        (*(v51 + 8))(v34, v52);
        (*(v71 + 8))(v33, v27);
LABEL_14:
        swift_unknownObjectRelease();
        *v35 = v32;
        return __swift_destroy_boxed_opaque_existential_1(v77);
      }

      LOBYTE(v73) = 1;
      v46 = v60;
      sub_24075AA54();
      (*(v53 + 8))(v46, v54);
      (*(v71 + 8))(v28, v27);
      swift_unknownObjectRelease();
      *v69 = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_240656068(uint64_t a1)
{
  sub_24075AE64();
  Message.Metrics.EpochStage.hash(into:)();
  return sub_24075AED4();
}

void static UInt64.epoch(for:)()
{
  sub_240759704();
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_2406562C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SignInPreflightHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SignInPreflightHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240656510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2405B044C(a3, v25 - v10, &unk_27E4B9BF0, &qword_240762710);
  v12 = sub_24075A3D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2405B8A50(v11, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24075A344();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24075A104() + 32;
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

uint64_t TransportBuilding.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, a1);
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v7 + 32))(boxed_opaque_existential_1, v9, a1);
}

uint64_t AnyTransport.wrappedValue.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24058C9C0(a1, v1);
}

uint64_t AnyTransport.messageSessionTemplate.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AnyTransport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2406569B8, 0, 0);
}

uint64_t sub_2406569B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v1[3];
  v3 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *v6 = v0;
  v6[1] = sub_2405D3110;
  v9 = v0[2];
  v10 = v0[3];

  return sub_240656A78(v9, v5, v10, v7, v4, v8, v3);
}

uint64_t sub_240656A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *(a4 - 8);
  v7[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[10] = AssociatedTypeWitness;
  v7[11] = *(AssociatedTypeWitness - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240656BBC, 0, 0);
}

uint64_t sub_240656BBC()
{
  v8 = v0[7];
  (*(v0[8] + 16))(v0[9], v0[4], v0[5]);
  swift_dynamicCast();
  v7 = (*(v8 + 32) + **(v8 + 32));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_240656D20;
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[6];
  v5 = v0[7];

  return v7(v2, v3, v4, v5);
}

uint64_t sub_240656D20()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_240656EE4;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_240656E4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240656E4C()
{
  swift_dynamicCast();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240656EE4()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

Swift::Void __swiftcall AnyTransport.invalidate()()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 40))(v1, v2);
}

uint64_t sub_240656FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return AnyTransport.send(_:)(a1, a2, a3);
}

uint64_t Transport.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 32);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t TransportBuilding.buildAny()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  result = (*(v6 + 16))(a1, v6);
  if (!v3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a3[3] = AssociatedTypeWitness;
    a3[4] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v8 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t _s12AppleIDSetup12AnyTransportVyACyxGqd__c11MessageTypeQyd__RszAA0D0Rd__lufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

__n128 AnyTransportBuilder.onReceive(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24058C9C0(v4, v14);
  v9 = v15;
  v10 = v16;
  v11 = __swift_project_boxed_opaque_existential_1(v14, v15);
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_240657380(v11, a1, a2, *(a3 + 16), v9, *(a3 + 24), v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = *v4;
  v13 = *(v4 + 16);
  *a4 = *v4;
  *(a4 + 16) = v13;
  *(a4 + 32) = *(v4 + 32);
  return result;
}

uint64_t sub_240657380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x28223BE20](a1);
  (*(v13 + 16))(v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[2] = a2;
  v15[3] = a3;

  v15[0] = a4;
  swift_getFunctionTypeMetadata();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15[0] = swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata();
  swift_dynamicCast();
  (*(a7 + 24))(v15[0], v15[1], a5, a7);
}

__n128 AnyTransportBuilder.onInvalidation(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = __swift_project_boxed_opaque_existential_1(v4, v8);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_destroy_boxed_opaque_existential_1(v4);
  v13 = *(v9 + 32);
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  __swift_allocate_boxed_opaque_existential_1(v4);
  v13(a1, a2, v8, v9);
  result = *v4;
  v15 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v15;
  *(a3 + 32) = *(v4 + 32);
  return result;
}

uint64_t AnyTransportBuilder.build()(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);
  return sub_2406576F4(v5, *(a1 + 16), v3, *(a1 + 24), v4);
}

uint64_t sub_2406576F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  (*(v12 + 16))(&v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TransportBuilding.buildAny()(a3, a5, v19);
  if (!v6)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for AnyTransport(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
    type metadata accessor for AnyTransport(0, a2, a4, v17);
    return swift_dynamicCast();
  }

  return result;
}

uint64_t CustomTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v11 = *(v3 + 16);
  v9 = *(v3 + 32);
  sub_24058CA60(v7, v8);
  *(a3 + 16) = v11;
  *(a3 + 32) = v9;
  *a3 = a1;
  *(a3 + 8) = a2;
}

uint64_t CustomTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  sub_24058CA60(v9, v10);
  *a3 = v7;
  a3[1] = v8;
  a3[3] = a2;
  a3[4] = v11;
  a3[2] = a1;
}

uint64_t CustomTransport.interface(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = v2[1];
  *a2 = *v2;
  *(a2 + 16) = v5;
  *(a2 + 32) = a1;
}

uint64_t CustomTransport.build()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24[-v7 - 8];
  v9 = v2[1];
  v25 = *v2;
  v26 = v9;
  v27 = *(v2 + 4);
  if (v25 && v27)
  {
    v10 = sub_24075A3D4();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v28 = v3;
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    *(v11 + 32) = v13;
    *(v11 + 40) = v12;
    v14 = v26;
    *(v11 + 48) = v25;
    *(v11 + 64) = v14;
    *(v11 + 80) = v27;
    v15 = *(*(a1 - 8) + 16);
    v15(v24, &v25, a1);
    v23 = sub_240656510(0, 0, v8, &unk_24076ECD0, v11);
    sub_2405B8A50(v8, &unk_27E4B9BF0, &qword_240762710);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    v17 = v26;
    *(v16 + 32) = v25;
    *(v16 + 48) = v17;
    *(v16 + 64) = v27;
    v15(v24, &v25, a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24075A374();
    swift_getTupleTypeMetadata2();
    sub_24075A434();
    result = sub_24075A3F4();
    v19 = v27;
    v20 = v26;
    *a2 = v25;
    *(a2 + 16) = v20;
    *(a2 + 32) = v19;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = v23;
  }

  else
  {
    (*(*(a1 - 8) + 8))(&v25, a1);
    type metadata accessor for CustomTransport.Failure(0, *(a1 + 16), *(a1 + 24), v21);
    swift_getWitnessTable();
    swift_allocError();
    *v22 = 0xD00000000000001DLL;
    v22[1] = 0x8000000240787E90;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_240657D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v8 = sub_24075AEE4();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v9 = sub_24075A374();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(a5 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_getTupleTypeMetadata2();
  sub_24075A714();
  v6[14] = swift_task_alloc();
  v10 = sub_24075A464();
  v6[15] = v10;
  v6[16] = *(v10 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240658004, 0, 0);
}

uint64_t sub_240658004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4[2] + 32))
  {
    sub_24075A474();
    sub_24075A444();
    v5 = swift_task_alloc();
    v4[18] = v5;
    *v5 = v4;
    v5[1] = sub_2406580F0;
    a1 = v4[14];
    a4 = v4[15];
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822003E8](a1, a2, a3, a4);
}

uint64_t sub_2406580F0()
{

  return MEMORY[0x2822009F8](sub_2406581EC, 0, 0);
}

uint64_t sub_2406581EC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = *(v0 + 16);
    v10 = *(v1 + 48);
    v15 = *(v0 + 24);
    (*(*(v0 + 88) + 32))(v5, v2, *(v0 + 24));
    (*(v7 + 32))(v6, v2 + v10, v8);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *(v11 + 16) = v15;
    *(v11 + 32) = v9;
    *(v11 + 40) = v5;
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_2406583F4;
    v13 = *(v0 + 56);
    v14 = *(v0 + 24);

    return static Result<>.catching<A>(_:)(v13, &unk_24076F150, v11, v14);
  }
}

uint64_t sub_2406583F4()
{

  return MEMORY[0x2822009F8](sub_24065850C, 0, 0);
}

uint64_t sub_24065850C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_240658A74(v6, v5);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v9);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_2406580F0;
  v11 = v0[14];
  v12 = v0[15];

  return MEMORY[0x2822003E8](v11, 0, 0, v12);
}

uint64_t sub_240658638(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405CE450;

  return sub_240657D94(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_2406586FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a4 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406587B4, 0, 0);
}

void sub_2406587B4()
{
  v1 = **(v0 + 24);
  if (v1)
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2406588D4;
    v3 = *(v0 + 56);
    v4 = *(v0 + 16);

    v5(v4, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2406588D4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_240658A10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_240658A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240658A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24075AEE4();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_24075A354();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_24075A364();
  }
}