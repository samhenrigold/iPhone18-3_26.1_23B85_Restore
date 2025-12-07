void sub_24DD70ED0(uint64_t a1@<X8>)
{
  sub_24DD70F40();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD70F0C()
{
  sub_24DD70F40();

  return sub_24DE22B00();
}

unint64_t sub_24DD70F40()
{
  result = qword_27F1B27E0;
  if (!qword_27F1B27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B27E0);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKFriendService_woaWaGetFriendPlayerIds(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_203(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_1277();
  v5 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_24DD71104()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_951();
    sub_24DD71294(v3 + 200);
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_950();
    sub_24DD71294(v3 + 384);
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

double Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_1140(v0, v1);
  v2 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v2, v3, v4, v5);
  *&result = OUTLINED_FUNCTION_368().n128_u64[0];
  return result;
}

void sub_24DD712C4(uint64_t a1@<X8>)
{
  sub_24DD71334();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD71300()
{
  sub_24DD71334();

  return sub_24DE22B00();
}

unint64_t sub_24DD71334()
{
  result = qword_27F1B27E8;
  if (!qword_27F1B27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B27E8);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKInvitationService_woaWaShareActivity(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v3 = v2;
  v1[167] = v0;
  v1[166] = v4;
  v1[165] = v5;
  v1[164] = v6;
  v1[163] = v7;
  memcpy(v1 + 92, v6, 0x98uLL);
  memcpy(v1 + 141, v3, 0x58uLL);
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD71410()
{
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0u;
  *(v0 + 1088) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1120) = 0;
  sub_24DD717AC(v0 + 736, v0 + 888);
  sub_24DDE73DC(v0 + 1128);
  sub_24DDE8DAC(v0 + 1040, &unk_27F1B27F0);
  v1 = *(v0 + 1208);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1128);
  v7 = *(v0 + 1176);
  v8 = *(v0 + 1160);
  v6 = *(v0 + 1192);
  OUTLINED_FUNCTION_839((v0 + 16));
  *(v0 + 168) = v10;
  *(v0 + 184) = v9;
  *(v0 + 200) = v8;
  *(v0 + 216) = v7;
  *(v0 + 232) = v6;
  *(v0 + 248) = v1;
  OUTLINED_FUNCTION_432();
  v11 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v0 + 1344) = v3;
  *v3 = v4;
  v3[1] = sub_24DD715E4;
  OUTLINED_FUNCTION_640();

  return v11();
}

uint64_t sub_24DD715E4()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[169] = v0;

  if (v0)
  {
    memcpy(v3 + 32, v3 + 2, 0xF0uLL);
    sub_24DD7182C((v3 + 32));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 62, v3 + 2, 0xF0uLL);
    sub_24DD7182C((v3 + 62));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void *Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_1140(v0, v1);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  sub_24DDE8DAC(v5, &unk_27F1B27F0);
  v2 = OUTLINED_FUNCTION_1264();
  return memcpy(v2, v3, 0x58uLL);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_24DD7185C(uint64_t a1@<X8>)
{
  sub_24DD718CC();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD71898()
{
  sub_24DD718CC();

  return sub_24DE22B00();
}

unint64_t sub_24DD718CC()
{
  result = qword_27F1B27F8;
  if (!qword_27F1B27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B27F8);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKProfileService_woaWaAppInit(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v1[43] = v2;
  v1[44] = v0;
  v1[41] = v3;
  v1[42] = v4;
  v1[40] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2800, &qword_24DE22FB0);
  OUTLINED_FUNCTION_443(v6);
  v1[45] = OUTLINED_FUNCTION_1318();
  v7 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(0);
  v1[46] = v7;
  OUTLINED_FUNCTION_443(v7);
  v1[47] = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_839(v1 + 2);
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD71A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_1080();
  OUTLINED_FUNCTION_496();
  v10 = v9[47];
  v11 = v9[45];
  OUTLINED_FUNCTION_409();
  sub_24DDE73DC(v12);
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body(0);
  OUTLINED_FUNCTION_778();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  memcpy(v10, v9 + 2, 0x98uLL);
  sub_24DD71E50((v9 + 2), (v9 + 21));
  sub_24DDE444C(v11);
  OUTLINED_FUNCTION_217();
  v29 = v17 + *v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v9[48] = v18;
  *v18 = v19;
  v18[1] = sub_24DD71BA0;
  OUTLINED_FUNCTION_1077();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

uint64_t sub_24DD71BA0(uint64_t a1)
{
  OUTLINED_FUNCTION_552();
  v4 = v3;
  OUTLINED_FUNCTION_167();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_162();
  *v7 = v6;
  *(v4 + 392) = v1;

  sub_24DD74008();
  if (v1)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {

    OUTLINED_FUNCTION_1327();

    return v9();
  }
}

uint64_t sub_24DD71D0C()
{
  OUTLINED_FUNCTION_441();

  OUTLINED_FUNCTION_1327();

  return v0();
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_398();
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(0);
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body(0);
  OUTLINED_FUNCTION_778();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_674();
  memcpy(v5, v6, 0x98uLL);
  return sub_24DDE444C(v0);
}

double sub_24DD71E88()
{
  sub_24DD71EF4();
  v0 = sub_24DE22B00();
  return OUTLINED_FUNCTION_490(v0);
}

uint64_t sub_24DD71EC0()
{
  sub_24DD71EF4();

  return sub_24DE22B00();
}

unint64_t sub_24DD71EF4()
{
  result = qword_27F1B2808;
  if (!qword_27F1B2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2808);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKProfileService_woaWaSetProfileSettings(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  *(v1 + 1504) = v0;
  *(v1 + 1496) = v2;
  *(v1 + 1488) = v3;
  *(v1 + 1480) = v4;
  v6 = *(v5 + 16);
  *(v1 + 1512) = *v5;
  *(v1 + 1528) = v6;
  *(v1 + 1544) = *(v5 + 32);
  memcpy((v1 + 1096), v7, 0xC0uLL);
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD71FD0()
{
  OUTLINED_FUNCTION_1257();
  v1 = v0[193];
  v2 = v0[192];
  v3 = v0[191];
  v4 = v0[190];
  v5 = v0[189];
  sub_24DD72374((v0 + 113));
  memcpy(v0 + 89, v0 + 113, 0xC0uLL);

  sub_24DDE73DC((v0 + 137));
  OUTLINED_FUNCTION_533();
  sub_24DDE8DAC(v6, v7);
  memcpy(v0 + 7, v0 + 137, 0xC0uLL);
  v0[2] = v5;
  v0[3] = v4;
  v0[4] = v3;
  v0[5] = v2;
  v0[6] = v1;
  OUTLINED_FUNCTION_217();
  v15 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v0[194] = v9;
  *v9 = v10;
  v9[1] = sub_24DD7218C;
  v11 = v0[187];
  v12 = v0[186];
  v13 = v0[185];

  return (v15)(v13, v0 + 2, v12, v11);
}

uint64_t sub_24DD7218C()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[195] = v0;

  if (v0)
  {
    memcpy(v3 + 31, v3 + 2, 0xE8uLL);
    sub_24DD7239C((v3 + 31));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 60, v3 + 2, 0xE8uLL);
    sub_24DD7239C((v3 + 60));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void *Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_398();
  v4 = *(v3 + 32);
  sub_24DD72374(v17);
  v5 = v1[1];
  *v2 = *v1;
  *(v2 + 16) = v5;
  *(v2 + 32) = v4;
  v14 = OUTLINED_FUNCTION_1252(v6, v7, v8, v9, v10, v11, v12, v13, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v17[17], v17[18], v17[19], v17[20], v17[21], v17[22], v17[23], v18[0]);
  memcpy(v14, v15, 0xC0uLL);
  sub_24DDE8DAC(v18, &unk_27F1B2810);
  return memcpy((v2 + 40), v0, 0xC0uLL);
}

double sub_24DD72374(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

double sub_24DD723CC()
{
  sub_24DD72438();
  v0 = sub_24DE22B00();
  return OUTLINED_FUNCTION_490(v0);
}

uint64_t sub_24DD72404()
{
  sub_24DD72438();

  return sub_24DE22B00();
}

unint64_t sub_24DD72438()
{
  result = qword_27F1B2818;
  if (!qword_27F1B2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2818);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKProfileService_woaWaGetProfileInfo(headers:body:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 16);
  *(v6 + 104) = *a2;
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a1;
  *(v6 + 80) = a4;
  *(v6 + 120) = v7;
  v8 = *a3;
  *(v6 + 136) = *(a2 + 32);
  *(v6 + 144) = v8;
  v9 = *(a3 + 2);
  *(v6 + 156) = *(a3 + 12);
  *(v6 + 152) = v9;
  v10 = OUTLINED_FUNCTION_183();
  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_24DD724E0()
{
  v1 = *(v0 + 156);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v14 = *(v0 + 120);

  v8 = OUTLINED_FUNCTION_370();
  sub_24DD72868(v8);
  sub_24DD72878(1);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v14;
  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 68) = v1;
  *(v0 + 64) = v2;
  OUTLINED_FUNCTION_217();
  v15 = (v9 + *v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v0 + 160) = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_1078(v10);

  return v15(v12);
}

uint64_t sub_24DD7265C()
{
  OUTLINED_FUNCTION_1060();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_162();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 56);

  sub_24DD72878(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaGetProfileInfo.Input.init(headers:body:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 12);
  v7 = OUTLINED_FUNCTION_1057(a3, *(a3 + 32));
  result = sub_24DD72878(v7);
  *(a2 + 40) = v4;
  *(a2 + 52) = v6;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_24DD72868(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24DD72878(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double sub_24DD72888()
{
  sub_24DD728F4();
  v0 = sub_24DE22B00();
  return OUTLINED_FUNCTION_490(v0);
}

uint64_t sub_24DD728C0()
{
  sub_24DD728F4();

  return sub_24DE22B00();
}

unint64_t sub_24DD728F4()
{
  result = qword_27F1B2820;
  if (!qword_27F1B2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2820);
  }

  return result;
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaGetScopedIDs.Input.Headers.init(xGkUdid:userAgent:accept:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t APIProtocol.postWebObjectsGKProfileService_woaWaGetScopedIDs(headers:body:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 16);
  *(v6 + 104) = *a2;
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a1;
  *(v6 + 80) = a4;
  *(v6 + 120) = v7;
  *(v6 + 136) = *(a2 + 32);
  *(v6 + 144) = *a3;
  v8 = OUTLINED_FUNCTION_183();
  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD729A0()
{
  OUTLINED_FUNCTION_1257();
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];

  v8 = OUTLINED_FUNCTION_370();
  sub_24DD72D04(v8, v9);
  sub_24DD72D4C(1, 0);
  v0[2] = v7;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v4;
  v0[6] = v3;
  v0[7] = v1;
  v0[8] = v2;
  OUTLINED_FUNCTION_148();
  v15 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v0[20] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_1078(v11);

  return v15(v13);
}

uint64_t sub_24DD72B08()
{
  OUTLINED_FUNCTION_1060();
  OUTLINED_FUNCTION_167();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 168) = v0;

  v5 = OUTLINED_FUNCTION_935();
  sub_24DD72D4C(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t Operations.PostWebObjectsGKProfileService_woaWaGetScopedIDs.Input.init(headers:body:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = OUTLINED_FUNCTION_1057(a3, *(a3 + 32));
  result = sub_24DD72D4C(v6, v7);
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_24DD72D04(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24DD72D4C(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_24DD72D90(uint64_t a1@<X8>)
{
  sub_24DD72E00();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD72DCC()
{
  sub_24DD72E00();

  return sub_24DE22B00();
}

unint64_t sub_24DD72E00()
{
  result = qword_27F1B2828;
  if (!qword_27F1B2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2828);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKProfileService_woaWaGetSuggestedPlayerNickname(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v3 = v2;
  *(v1 + 832) = v0;
  *(v1 + 824) = v4;
  *(v1 + 816) = v5;
  *(v1 + 808) = v6;
  *(v1 + 800) = v7;
  memcpy((v1 + 496), v6, 0x98uLL);
  v8 = *v3;
  *(v1 + 844) = *(v3 + 4);
  *(v1 + 840) = v8;
  *(v1 + 175) = *(v3 + 5);
  v9 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_24DD72EE4()
{
  OUTLINED_FUNCTION_1060();
  v1 = *(v0 + 175);
  v2 = *(v0 + 840);
  v3 = *(v0 + 844);
  memcpy((v0 + 16), *(v0 + 808), 0x98uLL);
  *(v0 + 174) = v1;
  *(v0 + 172) = v3;
  *(v0 + 168) = v2;
  *(v0 + 173) = v1;
  sub_24DD731EC(v0 + 496, v0 + 648);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v0 + 848) = v4;
  *v4 = v5;
  v4[1] = sub_24DD73038;
  OUTLINED_FUNCTION_317();

  return v6();
}

uint64_t sub_24DD73038()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[107] = v0;

  if (v0)
  {
    memcpy(v3 + 22, v3 + 2, 0x9EuLL);
    sub_24DD73224((v3 + 22));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 42, v3 + 2, 0x9EuLL);
    sub_24DD73224((v3 + 42));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void *Operations.PostWebObjectsGKProfileService_woaWaGetSuggestedPlayerNickname.Input.init(headers:body:)@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = OUTLINED_FUNCTION_1076(a2);
  result = memcpy(v6, v7, 0x98uLL);
  *(a2 + 156) = v4;
  *(a2 + 152) = v3;
  *(a2 + 157) = v5;
  return result;
}

uint64_t APIProtocol.postWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v3 = v2;
  v1[274] = v0;
  v1[273] = v4;
  v1[272] = v5;
  v1[271] = v6;
  memcpy(v1 + 137, v7, 0xB8uLL);
  memcpy(v1 + 227, v3, 0xB0uLL);
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD732D8()
{
  v7 = v0;
  sub_24DD7365C(v0 + 205);
  memcpy(__dst, v0 + 137, 0xB8uLL);
  memcpy(v0 + 183, v0 + 205, 0xB0uLL);
  sub_24DD73664((v0 + 137), (v0 + 160));
  OUTLINED_FUNCTION_430();
  sub_24DDE73DC(v1);
  sub_24DDE8DAC((v0 + 183), &unk_27F1B2830);
  memcpy(&__dst[184], v0 + 227, 0xB0uLL);
  memcpy(v0 + 2, __dst, 0x168uLL);
  OUTLINED_FUNCTION_217();
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v0[275] = v2;
  *v2 = v3;
  v2[1] = sub_24DD7347C;
  OUTLINED_FUNCTION_317();

  return v4();
}

uint64_t sub_24DD7347C()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[276] = v0;

  if (v0)
  {
    memcpy(v3 + 47, v3 + 2, 0x168uLL);
    sub_24DD7369C((v3 + 47));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 92, v3 + 2, 0x168uLL);
    sub_24DD7369C((v3 + 92));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_398();
  sub_24DD7365C(v5);
  v2 = OUTLINED_FUNCTION_674();
  memcpy(v2, v3, 0xB8uLL);
  memcpy(__dst, v5, sizeof(__dst));
  sub_24DDE8DAC(__dst, &unk_27F1B2830);
  return memcpy((v1 + 184), v0, 0xB0uLL);
}

uint64_t APIProtocol.postWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v1[253] = v0;
  v1[252] = v2;
  v1[251] = v3;
  v1[250] = v4;
  memcpy(v1 + 128, v5, 0xB8uLL);
  OUTLINED_FUNCTION_839(v1 + 212);
  v6 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_24DD73748()
{
  v8 = v0;
  sub_24DD73AC8(v0 + 193);
  memcpy(__dst, v0 + 128, 0xB8uLL);
  memcpy(v0 + 174, v0 + 193, 0x98uLL);
  sub_24DD73AD0((v0 + 128), (v0 + 151));
  OUTLINED_FUNCTION_430();
  sub_24DDE73DC(v1);
  sub_24DDE8DAC((v0 + 174), &unk_27F1B2838);
  memcpy(&__dst[184], v0 + 212, 0x98uLL);
  memcpy(v0 + 2, __dst, 0x150uLL);
  OUTLINED_FUNCTION_148();
  v6 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v0[254] = v3;
  *v3 = v4;
  v3[1] = sub_24DD738F0;
  OUTLINED_FUNCTION_640();

  return v6();
}

uint64_t sub_24DD738F0()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[255] = v0;

  if (v0)
  {
    memcpy(v3 + 44, v3 + 2, 0x150uLL);
    sub_24DD73B08((v3 + 44));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 86, v3 + 2, 0x150uLL);
    sub_24DD73B08((v3 + 86));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_398();
  sub_24DD73AC8(v4);
  v1 = OUTLINED_FUNCTION_674();
  memcpy(v1, v2, 0xB8uLL);
  memcpy(__dst, v4, sizeof(__dst));
  sub_24DDE8DAC(__dst, &unk_27F1B2838);
  return OUTLINED_FUNCTION_839((v0 + 184));
}

uint64_t APIProtocol.postWebObjectsGKGameStatsService_woaWaGetLeaderboards(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v3 = v2;
  v1[50] = v4;
  v1[51] = v0;
  v1[48] = v5;
  v1[49] = v6;
  v1[47] = v7;
  v8 = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(0);
  v1[52] = v8;
  OUTLINED_FUNCTION_443(v8);
  v1[53] = OUTLINED_FUNCTION_1318();
  memcpy(v1 + 17, v3, 0x78uLL);
  v9 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_24DD73BD0()
{
  OUTLINED_FUNCTION_1060();
  v1 = v0[52];
  v2 = v0[53];
  OUTLINED_FUNCTION_703();
  sub_24DD74A90();
  v3 = v2 + *(v1 + 20);
  OUTLINED_FUNCTION_986(xmmword_24DE22F30);
  *(v3 + 64) = v4;
  *(v3 + 80) = v4;
  *(v3 + 96) = v4;
  *(v3 + 112) = 0;
  memcpy(v0 + 2, v3, 0x78uLL);
  OUTLINED_FUNCTION_553();
  sub_24DDE73DC(v5);
  OUTLINED_FUNCTION_409();
  sub_24DDE8DAC(v6, v7);
  memcpy(v3, v0 + 17, 0x78uLL);
  OUTLINED_FUNCTION_217();
  v16 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v0[54] = v9;
  *v9 = v10;
  v9[1] = sub_24DD73D64;
  v11 = v0[53];
  v12 = v0[50];
  v13 = v0[49];
  v14 = v0[47];

  return v16(v14, v11, v13, v12);
}

uint64_t sub_24DD73D64(uint64_t a1)
{
  OUTLINED_FUNCTION_552();
  v4 = v3;
  OUTLINED_FUNCTION_167();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_162();
  *v7 = v6;
  *(v4 + 440) = v1;

  sub_24DD74008();
  if (v1)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {

    OUTLINED_FUNCTION_1327();

    return v9();
  }
}

uint64_t sub_24DD73EC0()
{
  OUTLINED_FUNCTION_441();

  OUTLINED_FUNCTION_1327();

  return v0();
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_398();
  v1 = v0 + *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(0) + 20);
  *v1 = xmmword_24DE22F30;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  OUTLINED_FUNCTION_638();
  v2 = sub_24DD74B08();
  v10 = OUTLINED_FUNCTION_538(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16[0]);
  memcpy(v10, v11, 0x78uLL);
  sub_24DDE8DAC(v16, &unk_27F1B2840);
  v12 = OUTLINED_FUNCTION_446();
  return memcpy(v12, v13, 0x78uLL);
}

uint64_t sub_24DD74008()
{
  v1 = OUTLINED_FUNCTION_429();
  v2(v1);
  OUTLINED_FUNCTION_90();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_24DD7405C(uint64_t a1@<X8>)
{
  sub_24DD740CC();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD74098()
{
  sub_24DD740CC();

  return sub_24DE22B00();
}

unint64_t sub_24DD740CC()
{
  result = qword_27F1B2848;
  if (!qword_27F1B2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2848);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v3 = v2;
  v1[185] = v0;
  v1[184] = v4;
  v1[183] = v5;
  v1[182] = v6;
  v1[181] = v7;
  memcpy(v1 + 101, v6, 0x98uLL);
  memcpy(v1 + 153, v3, 0x70uLL);
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD741A8()
{
  *(v0 + 1112) = 0;
  *(v0 + 1120) = 1;
  *(v0 + 1128) = 0u;
  *(v0 + 1144) = 0u;
  *(v0 + 1160) = 0u;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = 0u;
  *(v0 + 1208) = 0u;
  sub_24DD74588(v0 + 808, v0 + 960);
  sub_24DDE73DC(v0 + 1224);
  sub_24DDE8DAC(v0 + 1112, &unk_27F1B2850);
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1328);
  v12 = *(v0 + 1224);
  v10 = *(v0 + 1256);
  v11 = *(v0 + 1240);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1272);
  v7 = *(v0 + 1304);
  OUTLINED_FUNCTION_839((v0 + 16));
  *(v0 + 168) = v12;
  *(v0 + 184) = v11;
  *(v0 + 200) = v10;
  *(v0 + 216) = v9;
  *(v0 + 232) = v8;
  *(v0 + 248) = v7;
  *(v0 + 264) = v1;
  *(v0 + 272) = v2;
  OUTLINED_FUNCTION_432();
  v13 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v0 + 1488) = v4;
  *v4 = v5;
  v4[1] = sub_24DD74390;
  OUTLINED_FUNCTION_640();

  return v13();
}

uint64_t sub_24DD74390()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[187] = v0;

  if (v0)
  {
    memcpy(v3 + 35, v3 + 2, 0x108uLL);
    sub_24DD745C0((v3 + 35));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 68, v3 + 2, 0x108uLL);
    sub_24DD745C0((v3 + 68));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_385();
  *(v0 + 152) = xmmword_24DE22F30;
  v1 = (v0 + 152);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  memcpy(v0, v2, 0x98uLL);
  memcpy(v6, v1, sizeof(v6));
  sub_24DDE8DAC(v6, &unk_27F1B2850);
  v3 = OUTLINED_FUNCTION_407();
  return memcpy(v3, v4, 0x70uLL);
}

uint64_t APIProtocol.postWebObjectsGKGameStatsService_woaWaGetGameAchievements(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  v1[38] = v5;
  Game = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(0);
  v1[43] = Game;
  OUTLINED_FUNCTION_443(Game);
  v1[44] = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_949(v1 + 14);
  v7 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_24DD74680()
{
  OUTLINED_FUNCTION_1060();
  v1 = v0[43];
  v2 = v0[44];
  OUTLINED_FUNCTION_699();
  sub_24DD74A90();
  v3 = (v2 + *(v1 + 20));
  OUTLINED_FUNCTION_986(xmmword_24DE22F40);
  v3[4] = v4;
  *(v3 + 73) = v4;
  OUTLINED_FUNCTION_524();
  memcpy(v5, v6, v7);
  OUTLINED_FUNCTION_553();
  sub_24DDE73DC(v8);
  OUTLINED_FUNCTION_409();
  sub_24DDE8DAC(v9, v10);
  memcpy(v3, v0 + 14, 0x59uLL);
  OUTLINED_FUNCTION_217();
  v19 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v0[45] = v12;
  *v12 = v13;
  v12[1] = sub_24DD7480C;
  v14 = v0[44];
  v15 = v0[41];
  v16 = v0[40];
  v17 = v0[38];

  return v19(v17, v14, v16, v15);
}

uint64_t sub_24DD7480C(uint64_t a1)
{
  OUTLINED_FUNCTION_552();
  v4 = v3;
  OUTLINED_FUNCTION_167();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_162();
  *v7 = v6;
  *(v4 + 368) = v1;

  sub_24DD74008();
  if (v1)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {

    OUTLINED_FUNCTION_1327();

    return v9();
  }
}

uint64_t sub_24DD74968()
{
  OUTLINED_FUNCTION_441();

  OUTLINED_FUNCTION_1327();

  return v0();
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_398();
  v1 = (v0 + *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(0) + 20));
  *v1 = xmmword_24DE22F40;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  *(v1 + 73) = 0u;
  OUTLINED_FUNCTION_638();
  sub_24DD74B08();
  memcpy(v5, v1, 0x59uLL);
  sub_24DDE8DAC(v5, &unk_27F1B2858);
  v2 = OUTLINED_FUNCTION_446();
  return memcpy(v2, v3, 0x59uLL);
}

uint64_t sub_24DD74A90()
{
  OUTLINED_FUNCTION_569();
  v1(0);
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_370();
  v3(v2);
  return v0;
}

uint64_t sub_24DD74B08()
{
  OUTLINED_FUNCTION_569();
  v1(0);
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_370();
  v3(v2);
  return v0;
}

void sub_24DD74B60(uint64_t a1@<X8>)
{
  sub_24DD74BD0();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD74B9C()
{
  sub_24DD74BD0();

  return sub_24DE22B00();
}

unint64_t sub_24DD74BD0()
{
  result = qword_27F1B2860;
  if (!qword_27F1B2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2860);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeCreate(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v3 = v2;
  v1[268] = v0;
  v1[267] = v4;
  v1[266] = v5;
  v1[265] = v6;
  memcpy(v1 + 227, v7, 0x98uLL);
  memcpy(v1 + 179, v3, 0xBEuLL);
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD74CA8()
{
  v7 = v0;
  sub_24DD75028(v0 + 155);
  memcpy(__dst, v0 + 227, 0x98uLL);
  memcpy(v0 + 131, v0 + 155, 0xBEuLL);
  sub_24DD75030((v0 + 227), (v0 + 246));
  OUTLINED_FUNCTION_430();
  sub_24DDE73DC(v1);
  sub_24DDE8DAC((v0 + 131), &unk_27F1B2868);
  memcpy(&__dst[152], v0 + 179, 0xBEuLL);
  memcpy(v0 + 2, __dst, 0x156uLL);
  OUTLINED_FUNCTION_217();
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  v0[269] = v2;
  *v2 = v3;
  v2[1] = sub_24DD74E4C;
  OUTLINED_FUNCTION_317();

  return v4();
}

uint64_t sub_24DD74E4C()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[270] = v0;

  if (v0)
  {
    memcpy(v3 + 45, v3 + 2, 0x156uLL);
    sub_24DD75068((v3 + 45));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 88, v3 + 2, 0x156uLL);
    sub_24DD75068((v3 + 88));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_398();
  sub_24DD75028(v15);
  v2 = OUTLINED_FUNCTION_674();
  v4 = memcpy(v2, v3, 0x98uLL);
  v12 = OUTLINED_FUNCTION_1252(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v15[21], v15[22], v15[23], v16[0]);
  memcpy(v12, v13, 0xBEuLL);
  sub_24DDE8DAC(v16, &unk_27F1B2868);
  return memcpy((v1 + 152), v0, 0xBEuLL);
}

void sub_24DD75098(uint64_t a1@<X8>)
{
  sub_24DD75108();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD750D4()
{
  sub_24DD75108();

  return sub_24DE22B00();
}

unint64_t sub_24DD75108()
{
  result = qword_27F1B2870;
  if (!qword_27F1B2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2870);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeDetail(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_203(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_1277();
  v5 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_24DD752CC()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_951();
    sub_24DD75470(v3 + 200);
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_950();
    sub_24DD75470(v3 + 384);
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void sub_24DD7542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_24DD754A0(uint64_t a1@<X8>)
{
  sub_24DD75510();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD754DC()
{
  sub_24DD75510();

  return sub_24DE22B00();
}

unint64_t sub_24DD75510()
{
  result = qword_27F1B2878;
  if (!qword_27F1B2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2878);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeSummary(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  v3 = v2;
  *(v1 + 928) = v0;
  *(v1 + 920) = v4;
  *(v1 + 912) = v5;
  *(v1 + 904) = v6;
  *(v1 + 896) = v7;
  memcpy((v1 + 592), v6, 0x98uLL);
  v8 = *(v3 + 16);
  *(v1 + 936) = *v3;
  *(v1 + 952) = v8;
  *(v1 + 201) = *(v3 + 32);
  v9 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_24DD755F0()
{
  OUTLINED_FUNCTION_496();
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  v5 = *(v0 + 201);
  sub_24DD75908(v0 + 592, v0 + 744);
  v6 = OUTLINED_FUNCTION_297();
  sub_24DD7542C(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_133();
  sub_24DD75940(v10, v11, v12, v13);
  OUTLINED_FUNCTION_788();
  *(v0 + 168) = v4;
  *(v0 + 176) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;
  *(v0 + 200) = v5;
  OUTLINED_FUNCTION_148();
  v18 = (v14 + *v14);
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v0 + 968) = v15;
  *v15 = v16;
  v15[1] = sub_24DD75760;
  OUTLINED_FUNCTION_640();

  return v18();
}

uint64_t sub_24DD75760()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[122] = v0;

  if (v0)
  {
    memcpy(v3 + 26, v3 + 2, 0xB9uLL);
    sub_24DD75984((v3 + 26));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 50, v3 + 2, 0xB9uLL);
    sub_24DD75984((v3 + 50));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_89();
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_1140(v3, v4);
  v5 = OUTLINED_FUNCTION_133();
  sub_24DD75940(v5, v6, v7, v8);
  OUTLINED_FUNCTION_368();
  *(v1 + 184) = v2;
}

void sub_24DD75940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_24DD759B4(uint64_t a1@<X8>)
{
  sub_24DD75A24();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD759F0()
{
  sub_24DD75A24();

  return sub_24DE22B00();
}

unint64_t sub_24DD75A24()
{
  result = qword_27F1B2880;
  if (!qword_27F1B2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2880);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeInvite(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_203(v2, v3, v4, v5, v6);
  *(v1 + 912) = *v0;
  *(v1 + 928) = *(v0 + 16);
  v7 = *(v0 + 24);
  *(v1 + 940) = *(v0 + 28);
  *(v1 + 936) = v7;
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD75AF0()
{
  OUTLINED_FUNCTION_1257();
  v4 = *(v2 + 940);
  v5 = *(v2 + 936);
  v6 = OUTLINED_FUNCTION_87();
  sub_24DD75DE0(v6, v7);
  v8 = OUTLINED_FUNCTION_297();
  sub_24DD75E18(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_133();
  sub_24DD75E5C(v11, v12, v13);
  OUTLINED_FUNCTION_788();
  *(v2 + 168) = v3;
  *(v2 + 176) = v1;
  *(v2 + 184) = v0;
  *(v2 + 196) = v4;
  *(v2 + 192) = v5;
  OUTLINED_FUNCTION_217();
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v2 + 944) = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_86(v14);

  return v17(v16);
}

uint64_t sub_24DD75C2C()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[119] = v0;

  if (v0)
  {
    memcpy(v3 + 25, v3 + 2, 0xB6uLL);
    sub_24DD75EA0((v3 + 25));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 48, v3 + 2, 0xB6uLL);
    sub_24DD75EA0((v3 + 48));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

__n128 Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.init(headers:body:)@<Q0>(__n128 *a1@<X1>, uint64_t a2@<X8>)
{
  v12 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u32[2];
  v5 = a1[1].n128_u16[6];
  v6 = OUTLINED_FUNCTION_1076(a2);
  memcpy(v6, v7, 0x98uLL);
  v8 = OUTLINED_FUNCTION_133();
  sub_24DD75E5C(v8, v9, v10);
  result = v12;
  *(a2 + 152) = v12;
  *(a2 + 168) = v3;
  *(a2 + 180) = v5;
  *(a2 + 176) = v4;
  return result;
}

void sub_24DD75E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_24DD75E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_24DD75ED0(uint64_t a1@<X8>)
{
  sub_24DD75F40();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD75F0C()
{
  sub_24DD75F40();

  return sub_24DE22B00();
}

unint64_t sub_24DD75F40()
{
  result = qword_27F1B2888;
  if (!qword_27F1B2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2888);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeAccept(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_874(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1276();
  v7 = *(v0 + 40);
  *(v1 + 1004) = *(v0 + 44);
  *(v1 + 1000) = v7;
  v8 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_24DD76000()
{
  v1 = *(v0 + 1004);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 960);
  v8 = *(v0 + 928);
  sub_24DD76364(v0 + 616, v0 + 768);
  v9 = OUTLINED_FUNCTION_379();
  sub_24DD7639C(v9, v10, v5, v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1042();
  sub_24DD763E4(v11, v12, v13, v14);
  memcpy((v0 + 16), v8, 0x98uLL);
  *(v0 + 168) = v7;
  *(v0 + 176) = v6;
  *(v0 + 184) = v5;
  *(v0 + 192) = v4;
  *(v0 + 200) = v3;
  *(v0 + 212) = v1;
  *(v0 + 208) = v2;
  OUTLINED_FUNCTION_217();
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v0 + 1008) = v15;
  *v15 = v16;
  v15[1] = sub_24DD761A4;
  OUTLINED_FUNCTION_317();

  return v17();
}

uint64_t sub_24DD761A4()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[127] = v0;

  if (v0)
  {
    memcpy(v3 + 27, v3 + 2, 0xC6uLL);
    sub_24DD7642C((v3 + 27));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 52, v3 + 2, 0xC6uLL);
    sub_24DD7642C((v3 + 52));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_89();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  OUTLINED_FUNCTION_1140(v5, v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1042();
  sub_24DD763E4(v7, v8, v9, v10);
  OUTLINED_FUNCTION_368();
  *(v1 + 184) = v2;
  *(v1 + 196) = v4;
  *(v1 + 192) = v3;
}

void sub_24DD7639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_24DD763E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_24DD7645C(uint64_t a1@<X8>)
{
  sub_24DD764CC();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD76498()
{
  sub_24DD764CC();

  return sub_24DE22B00();
}

unint64_t sub_24DD764CC()
{
  result = qword_27F1B2890;
  if (!qword_27F1B2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2890);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeLeave(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_203(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_1277();
  v5 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_24DD76690()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_951();
    sub_24DD76820(v3 + 200);
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_950();
    sub_24DD76820(v3 + 384);
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

double Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_1140(v0, v1);
  v2 = OUTLINED_FUNCTION_133();
  sub_24DD75940(v2, v3, v4, v5);
  *&result = OUTLINED_FUNCTION_368().n128_u64[0];
  return result;
}

void sub_24DD76850(uint64_t a1@<X8>)
{
  sub_24DD768C0();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD7688C()
{
  sub_24DD768C0();

  return sub_24DE22B00();
}

unint64_t sub_24DD768C0()
{
  result = qword_27F1B2898;
  if (!qword_27F1B2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2898);
  }

  return result;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeGetCompleted(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_874(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1276();
  *(v1 + 210) = *(v0 + 40);
  v7 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_24DD76978()
{
  OUTLINED_FUNCTION_1257();
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 210);
  sub_24DD76CB0(v0 + 616, v0 + 768);
  OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_410();
  sub_24DD7542C(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_133();
  sub_24DD75940(v11, v12, v13, v14);
  OUTLINED_FUNCTION_1096((v0 + 16));
  *(v0 + 168) = v5;
  *(v0 + 176) = v4;
  *(v0 + 184) = v3;
  *(v0 + 192) = v2;
  *(v0 + 200) = v1;
  *(v0 + 208) = v6;
  OUTLINED_FUNCTION_217();
  swift_task_alloc();
  OUTLINED_FUNCTION_434();
  *(v0 + 1000) = v15;
  *v15 = v16;
  v15[1] = sub_24DD76AFC;
  OUTLINED_FUNCTION_317();

  return v17();
}

uint64_t sub_24DD76AFC()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  v3[126] = v0;

  if (v0)
  {
    memcpy(v3 + 27, v3 + 2, 0xC2uLL);
    sub_24DD76CE8((v3 + 27));
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    memcpy(v3 + 52, v3 + 2, 0xC2uLL);
    sub_24DD76CE8((v3 + 52));
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.init(headers:body:)()
{
  OUTLINED_FUNCTION_89();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_1140(v4, v5);
  v6 = OUTLINED_FUNCTION_133();
  sub_24DD75940(v6, v7, v8, v9);
  OUTLINED_FUNCTION_368();
  *(v1 + 184) = v2;
  *(v1 + 192) = v3;
}

void sub_24DD76D18(uint64_t a1@<X8>)
{
  sub_24DD76D88();
  sub_24DE22B00();
  OUTLINED_FUNCTION_437();
  *(a1 + 144) = v1;
}

uint64_t sub_24DD76D54()
{
  sub_24DD76D88();

  return sub_24DE22B00();
}

unint64_t sub_24DD76D88()
{
  result = qword_27F1B28A0;
  if (!qword_27F1B28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B28A0);
  }

  return result;
}

void sub_24DD76DDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *x8_0@<X8>)
{
  OUTLINED_FUNCTION_1329(a1, a2, a3, a4, a5, a6, a7, a8, x8_0);
  *(v14 + 64) = v16;
  *(v14 + 80) = v15;
  *(v14 + 96) = v18;
  *(v14 + 112) = v17;
  *(v14 + 128) = v19;
  *(v14 + 144) = v20;
}

uint64_t APIProtocol.postWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode(headers:body:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_203(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_1277();
  v5 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_24DD76F84()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_951();
    sub_24DD77128(v3 + 200);
    v7 = OUTLINED_FUNCTION_183();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_950();
    sub_24DD77128(v3 + 384);
    OUTLINED_FUNCTION_1327();

    return v8();
  }
}

void sub_24DD770E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

GameCenterServerClient::Servers::Server1::Env_optional __swiftcall Servers.Server1.Env.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t Servers.Server1.Env.rawValue.getter(char a1)
{
  result = 3302516;
  if (a1)
  {
    if (a1 == 1)
    {
      return 3368052;
    }

    else
    {
      return 0x746E6563656D6167;
    }
  }

  return result;
}

uint64_t sub_24DD771F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Servers.Server1.Service.rawValue.getter(a1);
  v4 = v3;
  v6 = v5;
  Servers.Server1.Service.rawValue.getter(v2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24DE22CA0();
  }

  return v10 & 1;
}

uint64_t sub_24DD77278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1040();
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v4 = 0xD000000000000010;
    v9 = v8;
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v6 = 0xD000000000000010;
    v10 = v8;
  }

  if (v4 == v6 && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_812();
    v12 = sub_24DE22CA0();
  }

  return v12 & 1;
}

uint64_t sub_24DD77320(unsigned __int8 a1, char a2)
{
  v2 = 0x746867696568;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746867696568;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x726F6C6F436762;
      break;
    case 2:
      v5 = 0x6F6C6F4374786574;
      v3 = 0xEA00000000003172;
      break;
    case 3:
      v5 = 0x6F6C6F4374786574;
      v3 = 0xEA00000000003272;
      break;
    case 4:
      v5 = 0x6F6C6F4374786574;
      v3 = 0xEA00000000003372;
      break;
    case 5:
      v5 = 0x6F6C6F4374786574;
      v3 = 0xEA00000000003472;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 7107189;
      break;
    case 7:
      v3 = 0xE500000000000000;
      v5 = 0x6874646977;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x726F6C6F436762;
      break;
    case 2:
      v2 = 0x6F6C6F4374786574;
      v6 = 0xEA00000000003172;
      break;
    case 3:
      v2 = 0x6F6C6F4374786574;
      v6 = 0xEA00000000003272;
      break;
    case 4:
      v2 = 0x6F6C6F4374786574;
      v6 = 0xEA00000000003372;
      break;
    case 5:
      v2 = 0x6F6C6F4374786574;
      v6 = 0xEA00000000003472;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 7107189;
      break;
    case 7:
      v6 = 0xE500000000000000;
      v2 = 0x6874646977;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD77590(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6567617373656DLL;
    }

    else
    {
      v4 = 0x7472656C61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x737574617473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6567617373656DLL;
    }

    else
    {
      v2 = 0x7472656C61;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD77680(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x692D656C646E7562;
  v4 = a1;
  v5 = 0x692D656C646E7562;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x7974697669746361;
      v6 = 0xEC0000006C72752DLL;
      break;
    case 3:
      v5 = 0xD000000000000012;
      v6 = 0x800000024DE39020;
      break;
    case 4:
      v5 = 0x7974697669746361;
      v6 = 0xED0000657079742DLL;
      break;
    case 5:
      v5 = 0x6F7365722D637361;
      v6 = 0xEF64692D65637275;
      break;
    default:
      v6 = 0x800000024DE38FF0;
      v5 = 0xD000000000000014;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x7974697669746361;
      v2 = 0xEC0000006C72752DLL;
      break;
    case 3:
      v3 = 0xD000000000000012;
      v2 = 0x800000024DE39020;
      break;
    case 4:
      v3 = 0x7974697669746361;
      v2 = 0xED0000657079742DLL;
      break;
    case 5:
      v3 = 0x6F7365722D637361;
      v2 = 0xEF64692D65637275;
      break;
    default:
      v2 = 0x800000024DE38FF0;
      v3 = 0xD000000000000014;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD778AC(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000065646FLL;
  v3 = 0x632D657469766E69;
  v4 = a1;
  v5 = 0x632D657469766E69;
  v6 = 0xEB0000000065646FLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x737574617473;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x737574617473;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x6567617373656DLL;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x7472656C61;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD77A10(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000064692D65;
  v3 = 0x676E656C6C616863;
  v4 = a1;
  v5 = 0x676E656C6C616863;
  v6 = 0xEC00000064692D65;
  switch(v4)
  {
    case 1:
      v6 = 0x800000024DE39D30;
      v5 = 0xD000000000000013;
      break;
    case 2:
      v5 = 0x616C702D6D6F7266;
      v6 = 0xEE0064692D726579;
      break;
    case 3:
      v5 = 0x692D656C646E7562;
      v6 = 0xE900000000000064;
      break;
    case 4:
      v5 = 0x692D656C646E7562;
      v6 = 0xEA00000000007364;
      break;
    case 5:
      v5 = 0xD000000000000011;
      v6 = 0x800000024DE39C30;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000024DE39D30;
      v3 = 0xD000000000000013;
      break;
    case 2:
      v3 = 0x616C702D6D6F7266;
      v2 = 0xEE0064692D726579;
      break;
    case 3:
      v3 = 0x692D656C646E7562;
      v2 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0x692D656C646E7562;
      v2 = 0xEA00000000007364;
      break;
    case 5:
      v3 = 0xD000000000000011;
      v2 = 0x800000024DE39C30;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD77C24(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574656C706D6F63;
  }

  else
  {
    v3 = 7237495;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 7237495;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD77CBC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x692D726579616C70;
  v4 = a1;
  v5 = 0x692D726579616C70;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0x692D656C646E7562;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 3:
      v5 = 0x74706F2D74736574;
      v6 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x692D656C646E7562;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1701869940;
      break;
    case 3:
      v3 = 0x74706F2D74736574;
      v2 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD77E28(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 13366;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 3682865;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v4 = 3552562;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v4 = 3289397;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v4 = 0x6574616C706D6574;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v4 = 0x656E6F6870;
      break;
    case 6:
      v4 = 0x69682D656E6F6870;
      v3 = 0xEC0000007365722DLL;
      break;
    case 7:
      v4 = 0xD000000000000013;
      v3 = 0x800000024DE39890;
      break;
    case 8:
      v3 = 0x800000024DE398B0;
      v4 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 13366;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 3682865;
      break;
    case 2:
      v5 = 0xE300000000000000;
      v6 = 3552562;
      break;
    case 3:
      v5 = 0xE300000000000000;
      v6 = 3289397;
      break;
    case 4:
      v5 = 0xE800000000000000;
      v6 = 0x6574616C706D6574;
      break;
    case 5:
      v5 = 0xE500000000000000;
      v6 = 0x656E6F6870;
      break;
    case 6:
      v6 = 0x69682D656E6F6870;
      v5 = 0xEC0000007365722DLL;
      break;
    case 7:
      v6 = 0xD000000000000013;
      v5 = 0x800000024DE39890;
      break;
    case 8:
      v5 = 0x800000024DE398B0;
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD78084(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x692D726579616C70;
  v4 = a1;
  v5 = 0x692D726579616C70;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000015;
      v6 = 0x800000024DE399B0;
      break;
    case 2:
      v5 = 0x61762D65726F6373;
      v6 = 0xEB0000000065756CLL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1802396018;
      break;
    case 4:
      v5 = 0x2D74706D65747461;
      v6 = 0xED0000746E756F63;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000015;
      v2 = 0x800000024DE399B0;
      break;
    case 2:
      v3 = 0x61762D65726F6373;
      v2 = 0xEB0000000065756CLL;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1802396018;
      break;
    case 4:
      v3 = 0x2D74706D65747461;
      v2 = 0xED0000746E756F63;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD78248(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000025;
  }

  if (v2)
  {
    v4 = "id";
  }

  else
  {
    v4 = "previous-challenge-id";
  }

  if (a2)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000025;
  }

  if (a2)
  {
    v6 = "previous-challenge-id";
  }

  else
  {
    v6 = "id";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD782EC(char a1, char a2)
{
  v2 = "id";
  if (a1)
  {
    v3 = "p";
  }

  else
  {
    v3 = "id";
  }

  if (a2)
  {
    v2 = "p";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24DE22CA0();
  }

  return v4 & 1;
}

uint64_t sub_24DD78388(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0x6574656C706D6F63;
      v3 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0x800000024DE39CE0;
      v5 = 0xD000000000000014;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1936615799;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x73657469766E69;
      break;
    case 7:
      v5 = 0xD000000000000011;
      v3 = 0x800000024DE39D10;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0x6574656C706D6F63;
      v6 = 0xE900000000000064;
      break;
    case 4:
      v6 = 0x800000024DE39CE0;
      v2 = 0xD000000000000014;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1936615799;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x73657469766E69;
      break;
    case 7:
      v2 = 0xD000000000000011;
      v6 = 0x800000024DE39D10;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD785C8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x692D726579616C70;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x692D656C646E7562;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0x800000024DE39B70;
    }
  }

  else
  {
    v5 = 0x692D726579616C70;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x692D656C646E7562 : 0xD00000000000001FLL;
    if (a2 != 1)
    {
      v2 = 0x800000024DE39B70;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD786C0(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0x65736E6F70736572;
      v3 = 0xE900000000000073;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0x65736E6F70736572;
      v6 = 0xE900000000000073;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD78828()
{
  OUTLINED_FUNCTION_1039();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE700000000000000;
      v3 = OUTLINED_FUNCTION_966();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_1215();
      break;
    case 3:
      v3 = 0x746C75736572;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_1037();
      break;
    case 2:
      OUTLINED_FUNCTION_1214();
      break;
    case 3:
      v2 = 0x746C75736572;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == 0xE600000000000000)
  {
    v6 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v6 = sub_24DE22CA0();
  }

  return v6 & 1;
}

uint64_t sub_24DD78930(unsigned __int8 a1, char a2)
{
  v2 = 0xEF7375746174732DLL;
  v3 = 0x65736E6F70736572;
  v4 = a1;
  v5 = 0x65736E6F70736572;
  v6 = 0xEF7375746174732DLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x737574617473;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x737574617473;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x6567617373656DLL;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x7472656C61;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD78A98()
{
  v1 = OUTLINED_FUNCTION_1213();
  switch(v3)
  {
    case 1:
      v0 = 0x800000024DE39E50;
      v1 = 0xD000000000000017;
      break;
    case 2:
      v1 = 0xD000000000000011;
      v0 = 0x800000024DE39FD0;
      break;
    case 3:
      v1 = 0x656363615F746F6ELL;
      v0 = 0xEC00000064657470;
      break;
    default:
      break;
  }

  v4 = 0xE200000000000000;
  v5 = 27503;
  switch(v2)
  {
    case 1:
      v4 = 0x800000024DE39E50;
      v5 = 0xD000000000000017;
      break;
    case 2:
      v5 = 0xD000000000000011;
      v4 = 0x800000024DE39FD0;
      break;
    case 3:
      v5 = 0x656363615F746F6ELL;
      v4 = 0xEC00000064657470;
      break;
    default:
      break;
  }

  if (v1 == v5 && v0 == v4)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v7 = sub_24DE22CA0();
  }

  return v7 & 1;
}

uint64_t sub_24DD78C04(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000064692D65;
  v3 = 0x676E656C6C616863;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x692D726579616C70;
    }

    else
    {
      v5 = 0x74706F2D74736574;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000007364;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  else
  {
    v5 = 0x676E656C6C616863;
    v6 = 0xEC00000064692D65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x692D726579616C70;
    }

    else
    {
      v3 = 0x74706F2D74736574;
    }

    if (a2 == 1)
    {
      v2 = 0xEA00000000007364;
    }

    else
    {
      v2 = 0xEB000000006E6F69;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD78D1C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x632D657469766E69;
  }

  else
  {
    v3 = 0x676E656C6C616863;
  }

  if (v2)
  {
    v4 = 0xEC00000064692D65;
  }

  else
  {
    v4 = 0xEB0000000065646FLL;
  }

  if (a2)
  {
    v5 = 0x632D657469766E69;
  }

  else
  {
    v5 = 0x676E656C6C616863;
  }

  if (a2)
  {
    v6 = 0xEB0000000065646FLL;
  }

  else
  {
    v6 = 0xEC00000064692D65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD78DCC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x692D726579616C70;
  v4 = a1;
  v5 = 0x692D726579616C70;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000011;
      v6 = 0x800000024DE39C30;
      break;
    case 2:
      v5 = 0x616C702D6D6F7266;
      v6 = 0xEE0064692D726579;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x737574617473;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000011;
      v2 = 0x800000024DE39C30;
      break;
    case 2:
      v3 = 0x616C702D6D6F7266;
      v2 = 0xEE0064692D726579;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x737574617473;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD78F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_729();
    OUTLINED_FUNCTION_641();
    v9 = sub_24DE22CA0();
  }

  return v9 & 1;
}

uint64_t sub_24DD78FE8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x692D656C646E7562;
  v4 = a1;
  v5 = 0x692D656C646E7562;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v6 = 0x800000024DE39F20;
      v5 = 0xD000000000000016;
      break;
    case 2:
      v6 = 0x800000024DE39D30;
      v5 = 0xD000000000000013;
      break;
    case 3:
      v5 = 0x6F6272656461656CLL;
      v6 = 0xEE0064692D647261;
      break;
    case 4:
      v5 = 0x2D74706D65747461;
      v6 = 0xED000074696D696CLL;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v5 = 0x6E6F697461727564;
      break;
    case 6:
      v5 = 0x6E6F697461727564;
      v6 = 0xEC00000065646F43;
      break;
    case 7:
      v5 = 0xD000000000000012;
      v6 = 0x800000024DE39F40;
      break;
    case 8:
      v6 = 0x800000024DE39F60;
      v5 = 0xD000000000000015;
      break;
    case 9:
      v5 = 0x74706F2D74736574;
      v6 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000024DE39F20;
      v3 = 0xD000000000000016;
      break;
    case 2:
      v2 = 0x800000024DE39D30;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v3 = 0x6F6272656461656CLL;
      v2 = 0xEE0064692D647261;
      break;
    case 4:
      v3 = 0x2D74706D65747461;
      v2 = 0xED000074696D696CLL;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v3 = 0x6E6F697461727564;
      break;
    case 6:
      v3 = 0x6E6F697461727564;
      v2 = 0xEC00000065646F43;
      break;
    case 7:
      v3 = 0xD000000000000012;
      v2 = 0x800000024DE39F40;
      break;
    case 8:
      v2 = 0x800000024DE39F60;
      v3 = 0xD000000000000015;
      break;
    case 9:
      v3 = 0x74706F2D74736574;
      v2 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79314(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000657469766ELL;
  v3 = 0x692D726579616C70;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x766E692D65646F63;
    }

    else
    {
      v5 = 0x74706F2D74736574;
    }

    if (v4 == 1)
    {
      v6 = 0xEB00000000657469;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  else
  {
    v5 = 0x692D726579616C70;
    v6 = 0xED0000657469766ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x766E692D65646F63;
    }

    else
    {
      v3 = 0x74706F2D74736574;
    }

    if (a2 == 1)
    {
      v2 = 0xEB00000000657469;
    }

    else
    {
      v2 = 0xEB000000006E6F69;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79438(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x676E656C6C616863;
  }

  else
  {
    v3 = 0x692D726579616C70;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEC00000064692D65;
  }

  if (a2)
  {
    v5 = 0x676E656C6C616863;
  }

  else
  {
    v5 = 0x692D726579616C70;
  }

  if (a2)
  {
    v6 = 0xEC00000064692D65;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD794E0(unsigned __int8 a1, char a2)
{
  v2 = 1701667175;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667175;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v3 = 0x800000024DE397E0;
      break;
    case 2:
      v5 = 0x6F6272656461656CLL;
      v3 = 0xEE0064692D647261;
      break;
    case 3:
      v5 = 0x6F63732D656D6974;
      v3 = 0xEA00000000006570;
      break;
    case 4:
      v5 = 0x692D726579616C70;
      v3 = 0xEA00000000007364;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v6 = 0x800000024DE397E0;
      break;
    case 2:
      v2 = 0x6F6272656461656CLL;
      v6 = 0xEE0064692D647261;
      break;
    case 3:
      v2 = 0x6F63732D656D6974;
      v6 = 0xEA00000000006570;
      break;
    case 4:
      v2 = 0x692D726579616C70;
      v6 = 0xEA00000000007364;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD796B0(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0x6974736567677573;
      v3 = 0xEB00000000736E6FLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0x6974736567677573;
      v6 = 0xEB00000000736E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79820(unsigned __int8 a1, char a2)
{
  v2 = 1701667175;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x656D616E2D746573;
    }

    if (v3 == 1)
    {
      v5 = 0x800000024DE397A0;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701667175;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x656D616E2D746573;
    }

    if (a2 == 1)
    {
      v6 = 0x800000024DE397A0;
    }

    else
    {
      v6 = 0xE800000000000000;
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
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79918(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0x6E652D6C61746F74;
      v3 = 0xED00007365697274;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x617461646174656DLL;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x73746C75736572;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0x6E652D6C61746F74;
      v6 = 0xED00007365697274;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x617461646174656DLL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x73746C75736572;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79B00(unsigned __int8 a1, char a2)
{
  v2 = 1701667175;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667175;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v3 = 0x800000024DE397E0;
      break;
    case 2:
      v5 = 0x6F6272656461656CLL;
      v3 = 0xEE0064692D647261;
      break;
    case 3:
      v5 = 0x6F63732D656D6974;
      v3 = 0xEA00000000006570;
      break;
    case 4:
      v5 = 0x732D726579616C70;
      v3 = 0xEC00000065706F63;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x746E756F63;
      break;
    case 6:
      v5 = 0x676E697472617473;
      v3 = 0xED00006B6E61722DLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v6 = 0x800000024DE397E0;
      break;
    case 2:
      v2 = 0x6F6272656461656CLL;
      v6 = 0xEE0064692D647261;
      break;
    case 3:
      v2 = 0x6F63732D656D6974;
      v6 = 0xEA00000000006570;
      break;
    case 4:
      v2 = 0x732D726579616C70;
      v6 = 0xEC00000065706F63;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x746E756F63;
      break;
    case 6:
      v2 = 0x676E697472617473;
      v6 = 0xED00006B6E61722DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79D50(unsigned __int8 a1, char a2)
{
  v2 = 0x747865746E6F63;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x747865746E6F63;
  switch(v4)
  {
    case 1:
      v3 = 0x800000024DE399B0;
      v5 = 0xD000000000000015;
      break;
    case 2:
      v5 = 0xD000000000000011;
      v3 = 0x800000024DE39B50;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1802396018;
      break;
    case 4:
      v5 = 0x61762D65726F6373;
      v3 = 0xEB0000000065756CLL;
      break;
    case 5:
      v5 = 0x6D617473656D6974;
      v3 = 0xE900000000000070;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0x800000024DE399B0;
      v2 = 0xD000000000000015;
      break;
    case 2:
      v2 = 0xD000000000000011;
      v6 = 0x800000024DE39B50;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1802396018;
      break;
    case 4:
      v2 = 0x61762D65726F6373;
      v6 = 0xEB0000000065756CLL;
      break;
    case 5:
      v2 = 0x6D617473656D6974;
      v6 = 0xE900000000000070;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79F3C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6567617373656DLL;
  }

  else
  {
    v3 = 0x656C746974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6567617373656DLL;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD79FD8(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0x6E652D6C61746F74;
      v3 = 0xED00007365697274;
      break;
    case 4:
      v5 = 0x732D726579616C70;
      v3 = 0xEC00000065726F63;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x617461646174656DLL;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x73746C75736572;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0x6E652D6C61746F74;
      v6 = 0xED00007365697274;
      break;
    case 4:
      v2 = 0x732D726579616C70;
      v6 = 0xEC00000065726F63;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x617461646174656DLL;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x73746C75736572;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7A208(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73746C75736572;
  }

  else
  {
    v3 = 0x737574617473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x73746C75736572;
  }

  else
  {
    v5 = 0x737574617473;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7A2A4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x73656D6167;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x800000024DE39430;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x73656D6167;
  }

  if (a2)
  {
    v6 = 0x800000024DE39430;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7A344(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x692D726579616C70;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7361696C61;
    }

    else
    {
      v5 = 0x72752D6567616D69;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA0000000000736CLL;
    }
  }

  else
  {
    v5 = 0x692D726579616C70;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7361696C61;
    }

    else
    {
      v3 = 0x72752D6567616D69;
    }

    if (a2 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xEA0000000000736CLL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7A444(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0x6470752D7473616CLL;
      v3 = 0xEC00000064657461;
      break;
    case 4:
      v5 = 0xD000000000000016;
      v3 = 0x800000024DE38F20;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0x6470752D7473616CLL;
      v6 = 0xEC00000064657461;
      break;
    case 4:
      v2 = 0xD000000000000016;
      v6 = 0x800000024DE38F20;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7A5EC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x742D726174617661;
  }

  else
  {
    v3 = 0x6574616C706D6574;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000657079;
  }

  if (a2)
  {
    v5 = 0x742D726174617661;
  }

  else
  {
    v5 = 0x6574616C706D6574;
  }

  if (a2)
  {
    v6 = 0xEB00000000657079;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7A694(char a1, char a2)
{
  v2 = 0xD000000000000010;
  v3 = "num-games-played";
  v5 = 0xD000000000000010;
  v6 = "num-games-played";
  switch(a1)
  {
    case 1:
      v6 = "is-arcade-subscriber";
      v5 = 0xD000000000000011;
      break;
    case 2:
      v6 = "has-privacy-settings";
      v5 = 0xD000000000000014;
      break;
    case 3:
      v6 = "suggestions";
      goto LABEL_10;
    case 4:
      v6 = "okup";
      v5 = 0xD000000000000016;
      break;
    case 5:
      v6 = "privacy-notice-version";
      v5 = 0xD00000000000001CLL;
      break;
    case 6:
      v6 = "games-privacy-notice-version";
LABEL_10:
      v5 = 0xD00000000000001ELL;
      break;
    case 7:
      v6 = "games-cross-use-notice-version";
      v5 = 0xD000000000000015;
      break;
    case 8:
      v6 = "allow-friends-api";
      v5 = 0xD000000000000024;
      break;
    case 9:
      v6 = "ites-from-challenges";
      v5 = 0xD00000000000002DLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "is-arcade-subscriber";
      v2 = 0xD000000000000011;
      break;
    case 2:
      v3 = "has-privacy-settings";
      v2 = 0xD000000000000014;
      break;
    case 3:
      v3 = "suggestions";
      goto LABEL_21;
    case 4:
      v3 = "okup";
      v2 = 0xD000000000000016;
      break;
    case 5:
      v3 = "privacy-notice-version";
      v2 = 0xD00000000000001CLL;
      break;
    case 6:
      v3 = "games-privacy-notice-version";
LABEL_21:
      v2 = 0xD00000000000001ELL;
      break;
    case 7:
      v3 = "games-cross-use-notice-version";
      v2 = 0xD000000000000015;
      break;
    case 8:
      v3 = "allow-friends-api";
      v2 = 0xD000000000000024;
      break;
    case 9:
      v3 = "ites-from-challenges";
      v2 = 0xD00000000000002DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7A8D0(unsigned __int8 a1, char a2)
{
  v2 = 0x747865746E6F63;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x747865746E6F63;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000015;
      v3 = 0x800000024DE399B0;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1802396018;
      break;
    case 3:
      v5 = 0x61762D65726F6373;
      v3 = 0xEB0000000065756CLL;
      break;
    case 4:
      v5 = 0x6D617473656D6974;
      v3 = 0xE900000000000070;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000015;
      v6 = 0x800000024DE399B0;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1802396018;
      break;
    case 3:
      v2 = 0x61762D65726F6373;
      v6 = 0xEB0000000065756CLL;
      break;
    case 4:
      v2 = 0x6D617473656D6974;
      v6 = 0xE900000000000070;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7AA7C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6B726F77747261;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6B726F77747261;
  }

  else
  {
    v5 = 1701869940;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7AB14(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v3 = 0x800000024DE398D0;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x73746C75736572;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0xD000000000000015;
      v6 = 0x800000024DE398D0;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x73746C75736572;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7ACAC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x692D726579616C70;
  }

  else
  {
    v3 = 1701667175;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x692D726579616C70;
  }

  else
  {
    v5 = 1701667175;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7AD48(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000656D616E2DLL;
  v3 = 0x79726F6765746163;
  v4 = a1;
  v5 = 0x79726F6765746163;
  v6 = 0xED0000656D616E2DLL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v7 = "rls";
      goto LABEL_6;
    case 3:
      v6 = 0xEE00656C7469742DLL;
      v5 = 0x79726F6765746163;
      break;
    case 4:
      v5 = 0x722D646E65697266;
      v6 = 0xEB000000006B6E61;
      break;
    case 5:
      v6 = 0x800000024DE39950;
      v5 = 0xD000000000000010;
      break;
    case 6:
      v5 = 0xD000000000000012;
      v8 = "leaderboard-size";
      goto LABEL_12;
    case 7:
      v6 = 0xE400000000000000;
      v5 = 1802396018;
      break;
    case 8:
      v5 = 0xD000000000000012;
      v8 = "num-friends-ranked";
LABEL_12:
      v6 = v8 | 0x8000000000000000;
      break;
    case 9:
      v6 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    default:
      v7 = "default-category-name";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000013;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v9 = "rls";
      goto LABEL_18;
    case 3:
      v2 = 0xEE00656C7469742DLL;
      break;
    case 4:
      v3 = 0x722D646E65697266;
      v2 = 0xEB000000006B6E61;
      break;
    case 5:
      v2 = 0x800000024DE39950;
      v3 = 0xD000000000000010;
      break;
    case 6:
      v3 = 0xD000000000000012;
      v10 = "leaderboard-size";
      goto LABEL_24;
    case 7:
      v2 = 0xE400000000000000;
      v3 = 1802396018;
      break;
    case 8:
      v3 = 0xD000000000000012;
      v10 = "num-friends-ranked";
LABEL_24:
      v2 = v10 | 0x8000000000000000;
      break;
    case 9:
      v2 = 0xE400000000000000;
      v3 = 1701869940;
      break;
    default:
      v9 = "default-category-name";
LABEL_18:
      v2 = v9 | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24DE22CA0();
  }

  return v12 & 1;
}

uint64_t sub_24DD7AFEC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x692D726579616C70;
  }

  else
  {
    v3 = 1802396018;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x692D726579616C70;
  }

  else
  {
    v5 = 1802396018;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7B088(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746C75736572;
  }

  else
  {
    v3 = 0x6C72752D7478656ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x746C75736572;
  }

  else
  {
    v5 = 0x6C72752D7478656ELL;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7B120(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000070;
  v3 = 0x6D617473656D6974;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6B6F742D68737570;
    }

    else
    {
      v5 = 0x756F72676B636162;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000006E65;
    }

    else
    {
      v6 = 0xEA0000000000646ELL;
    }
  }

  else
  {
    v5 = 0x6D617473656D6974;
    v6 = 0xE900000000000070;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6B6F742D68737570;
    }

    else
    {
      v3 = 0x756F72676B636162;
    }

    if (a2 == 1)
    {
      v2 = 0xEA00000000006E65;
    }

    else
    {
      v2 = 0xEA0000000000646ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7B220()
{
  v1 = OUTLINED_FUNCTION_1213();
  v3 = "player_invite_limit_exceeded";
  v4 = "player_challenges_limit_exceeded";
  v5 = "already_accepted";
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_1211();
      break;
    case 2:
      v1 = 0xD000000000000010;
      v0 = 0x800000024DE39BB0;
      break;
    case 3:
      v0 = 0x800000024DE39BD0;
      v1 = 0xD000000000000020;
      break;
    case 4:
      v0 = 0x800000024DE39C00;
      v1 = 0xD00000000000001CLL;
      break;
    case 5:
      v0 = 0xE500000000000000;
      v1 = 0x726F727265;
      break;
    default:
      break;
  }

  v7 = 0xE200000000000000;
  v8 = 27503;
  switch(v2)
  {
    case 1:
      v8 = 0x5F79646165726C61;
      v7 = 0xEF64657469766E69;
      break;
    case 2:
      v8 = 0xD000000000000010;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    case 3:
      v7 = (v4 - 32) | 0x8000000000000000;
      v8 = 0xD000000000000020;
      break;
    case 4:
      v7 = (v3 - 32) | 0x8000000000000000;
      v8 = 0xD00000000000001CLL;
      break;
    case 5:
      v7 = 0xE500000000000000;
      v8 = 0x726F727265;
      break;
    default:
      break;
  }

  if (v1 == v8 && v0 == v7)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v10 = sub_24DE22CA0();
  }

  return v10 & 1;
}

uint64_t sub_24DD7B3F8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x692D726579616C70;
  }

  else
  {
    v3 = 0x737574617473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x692D726579616C70;
  }

  else
  {
    v5 = 0x737574617473;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7B498(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007470;
  v3 = 0x656363615F6E6163;
  v4 = a1;
  v5 = 0x656363615F6E6163;
  v6 = 0xEA00000000007470;
  switch(v4)
  {
    case 1:
      v6 = 0x800000024DE39BB0;
      v5 = 0xD000000000000010;
      break;
    case 2:
      v6 = 0x800000024DE39E50;
      v5 = 0xD000000000000017;
      break;
    case 3:
      v6 = 0x800000024DE39E70;
      v5 = 0xD000000000000012;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x64696C61766E69;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000024DE39BB0;
      v3 = 0xD000000000000010;
      break;
    case 2:
      v2 = 0x800000024DE39E50;
      v3 = 0xD000000000000017;
      break;
    case 3:
      v2 = 0x800000024DE39E70;
      v3 = 0xD000000000000012;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x64696C61766E69;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7B63C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574656C706D6F63;
  }

  else
  {
    v3 = 0x657669746361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 0x657669746361;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7B6D8(unsigned __int8 a1, char a2)
{
  v2 = 0x6D726F6674616C70;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6D726F6674616C70;
  switch(v4)
  {
    case 1:
      v5 = 0x692D656C646E7562;
      v3 = 0xE900000000000064;
      break;
    case 2:
      v5 = 0xD000000000000014;
      v3 = 0x800000024DE38FA0;
      break;
    case 3:
      v5 = 0x762D656C646E7562;
      v3 = 0xEE006E6F69737265;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x692D656C646E7562;
      v6 = 0xE900000000000064;
      break;
    case 2:
      v2 = 0xD000000000000014;
      v6 = 0x800000024DE38FA0;
      break;
    case 3:
      v2 = 0x762D656C646E7562;
      v6 = 0xEE006E6F69737265;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7B864(unsigned __int8 a1, char a2)
{
  v2 = 0x6D726F6674616C70;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6D726F6674616C70;
  switch(v4)
  {
    case 1:
      v5 = 0x692D656C646E7562;
      v3 = 0xE900000000000064;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x64692D6D616461;
      break;
    case 3:
      v3 = 0x800000024DE38FA0;
      v5 = 0xD000000000000014;
      break;
    case 4:
      v5 = 0x762D656C646E7562;
      v3 = 0xEE006E6F69737265;
      break;
    case 5:
      v5 = 0xD000000000000010;
      v3 = 0x800000024DE38FD0;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x692D656C646E7562;
      v6 = 0xE900000000000064;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x64692D6D616461;
      break;
    case 3:
      v6 = 0x800000024DE38FA0;
      v2 = 0xD000000000000014;
      break;
    case 4:
      v2 = 0x762D656C646E7562;
      v6 = 0xEE006E6F69737265;
      break;
    case 5:
      v2 = 0xD000000000000010;
      v6 = 0x800000024DE38FD0;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7BA68(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v6 = 0x656C646E7562;
      goto LABEL_5;
    case 2:
      v6 = 0x726579616C70;
LABEL_5:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
      v3 = 0xE900000000000064;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v7 = "s";
      goto LABEL_7;
    case 4:
      v5 = 0xD000000000000015;
      v7 = "game-scoped-player-id";
LABEL_7:
      v3 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v9 = 0x656C646E7562;
      goto LABEL_12;
    case 2:
      v9 = 0x726579616C70;
LABEL_12:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
      v8 = 0xE900000000000064;
      break;
    case 3:
      v2 = 0xD000000000000015;
      v10 = "s";
      goto LABEL_14;
    case 4:
      v2 = 0xD000000000000015;
      v10 = "game-scoped-player-id";
LABEL_14:
      v8 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24DE22CA0();
  }

  return v12 & 1;
}

uint64_t sub_24DD7BBF8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x72752D6567616D69;
  }

  else
  {
    v3 = 0x64692D70756F7267;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000736CLL;
  }

  if (a2)
  {
    v5 = 0x72752D6567616D69;
  }

  else
  {
    v5 = 0x64692D70756F7267;
  }

  if (a2)
  {
    v6 = 0xEA0000000000736CLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7BC9C(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7472656C61;
      break;
    case 3:
      v5 = 0x2D656C69666F7270;
      v3 = 0xED0000736F666E69;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7472656C61;
      break;
    case 3:
      v2 = 0x2D656C69666F7270;
      v6 = 0xED0000736F666E69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7BE14(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000073746E65;
  v3 = 0x6D65766569686361;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x73646E65697266;
    }

    else
    {
      v5 = 0x6C702D73656D6167;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEC00000064657961;
    }
  }

  else
  {
    v5 = 0x6D65766569686361;
    v6 = 0xEC00000073746E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73646E65697266;
    }

    else
    {
      v3 = 0x6C702D73656D6167;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xEC00000064657961;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_858();
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7BF20(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007364;
  v3 = 0x692D726579616C70;
  v4 = 0xEA00000000007364;
  v5 = a1;
  v6 = 0x692D726579616C70;
  switch(v5)
  {
    case 1:
      v6 = 0x6363612D776F6873;
      v4 = 0xED000073746E756FLL;
      break;
    case 2:
      v6 = 0x7465642D776F6873;
      v4 = 0xEC000000736C6961;
      break;
    case 3:
      v6 = 0x6165722D776F6873;
      v4 = 0xEE00656D616E2D6CLL;
      break;
    case 4:
      v6 = 0x6174732D776F6873;
      v4 = 0xEA00000000007374;
      break;
    case 5:
      v6 = 0xD00000000000001FLL;
      v4 = 0x800000024DE39770;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6363612D776F6873;
      v2 = 0xED000073746E756FLL;
      break;
    case 2:
      v3 = 0x7465642D776F6873;
      v2 = 0xEC000000736C6961;
      break;
    case 3:
      v3 = 0x6165722D776F6873;
      v2 = 0xEE00656D616E2D6CLL;
      break;
    case 4:
      v3 = 0x6174732D776F6873;
      v2 = 0xEA00000000007374;
      break;
    case 5:
      v3 = 0xD00000000000001FLL;
      v2 = 0x800000024DE39770;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7C144(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574616C706D6574;
  }

  else
  {
    v3 = 0x742D726174617661;
  }

  if (v2)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6574616C706D6574;
  }

  else
  {
    v5 = 0x742D726174617661;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7C1EC()
{
  OUTLINED_FUNCTION_1039();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE700000000000000;
      v3 = OUTLINED_FUNCTION_966();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_1215();
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = 0x73746C75736572;
      break;
    default:
      break;
  }

  v5 = 0xE600000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_1037();
      break;
    case 2:
      OUTLINED_FUNCTION_1214();
      break;
    case 3:
      v5 = 0xE700000000000000;
      v2 = 0x73746C75736572;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_641();
    v7 = sub_24DE22CA0();
  }

  return v7 & 1;
}

uint64_t sub_24DD7C304(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x742D646E65697266;
  }

  if (v2)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v4 = 0x800000024DE38F50;
  }

  if (a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x742D646E65697266;
  }

  if (a2)
  {
    v6 = 0x800000024DE38F50;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7C3B0(unsigned __int8 a1, char a2)
{
  v2 = 3302516;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 3368052;
    }

    else
    {
      v4 = 0x746E6563656D6167;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xEA00000000007265;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 3302516;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 3368052;
    }

    else
    {
      v2 = 0x746E6563656D6167;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DE22CA0();
  }

  return v8 & 1;
}

uint64_t sub_24DD7C4A0(char a1)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7C584(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_796(a1);
  v11 = OUTLINED_FUNCTION_550(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  a2(v11);
  return sub_24DE22D10();
}

uint64_t sub_24DD7C66C()
{
  sub_24DE22CC0();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD7C724(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_796(a1);
  v11 = OUTLINED_FUNCTION_550(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  a2(v11);
  return sub_24DE22D10();
}

uint64_t sub_24DD7C818(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_796(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_563(v4, v5, v6);

  return sub_24DE22D10();
}

uint64_t sub_24DD7C868()
{
  sub_24DE22CC0();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD7C97C(uint64_t a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_796(a1);
  if (v1)
  {
    v4 = 0x6574656C706D6F63;
  }

  else
  {
    v4 = 0x657669746361;
  }

  OUTLINED_FUNCTION_1169(v2, v4, v3);

  return sub_24DE22D10();
}

uint64_t sub_24DD7CA98(char a1)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7CB18()
{
  sub_24DE22CC0();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD7CB70()
{
  OUTLINED_FUNCTION_569();
  v1 = OUTLINED_FUNCTION_796(v0);
  OUTLINED_FUNCTION_550(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD7CBB0()
{
  OUTLINED_FUNCTION_569();
  OUTLINED_FUNCTION_796(v0);
  OUTLINED_FUNCTION_1040();

  OUTLINED_FUNCTION_550(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7CC30(uint64_t a1, uint64_t a2)
{
  Servers.Server1.Service.rawValue.getter(a2);
  sub_24DE22AD0();
}

uint64_t sub_24DD7CC84(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7CD04()
{
  OUTLINED_FUNCTION_1040();

  OUTLINED_FUNCTION_370();
  sub_24DE22AD0();
}

uint64_t sub_24DD7CD74(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7CED4(uint64_t a1, unsigned __int8 a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7CF58(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D094(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D15C(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D274(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D2DC(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D3A4(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D4E4(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D5DC(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D644(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D6C0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D7F8(uint64_t a1, unsigned __int8 a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D888(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7D94C()
{
  OUTLINED_FUNCTION_914();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_1038();
      break;
    case 2:
      OUTLINED_FUNCTION_1216();
      break;
    default:
      break;
  }

  sub_24DE22AD0();
}

uint64_t sub_24DD7D9D4(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7DAA0()
{
  OUTLINED_FUNCTION_1204();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_1041();
      break;
    default:
      break;
  }

  sub_24DE22AD0();
}

uint64_t sub_24DD7DB5C(uint64_t a1, unsigned __int8 a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7DBFC(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7DC78(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7DD50(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_1127(v3, v4);
}

uint64_t sub_24DD7DDA0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7DF48(uint64_t a1, unsigned __int8 a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7DFF0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E068(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E160(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E244(uint64_t a1, unsigned __int8 a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E2CC(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E3D0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E508(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E618(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E680(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E7A8(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E810(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E87C(uint64_t a1, unsigned __int8 a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E90C(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7E9F4(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7EA68(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7EBB4(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7ECA0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7ED04(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7EDE4(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7EE4C(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7EFC0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F028(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F090(uint64_t a1, unsigned __int8 a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F12C()
{
  OUTLINED_FUNCTION_1204();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_1211();
      break;
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_1041();
      break;
    default:
      break;
  }

  sub_24DE22AD0();
}

uint64_t sub_24DD7F218(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F284(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F380(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F41C(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F4F8(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F614(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F6F0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F760(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F82C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_853();
  }

  sub_24DE22AD0();
}

uint64_t sub_24DD7F8B0(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7F9D8(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7FA4C()
{
  OUTLINED_FUNCTION_914();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_1038();
      break;
    case 2:
      OUTLINED_FUNCTION_1216();
      break;
    default:
      break;
  }

  sub_24DE22AD0();
}

uint64_t sub_24DD7FADC(uint64_t a1, char a2)
{
  sub_24DE22AD0();
}

uint64_t sub_24DD7FB5C(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7FBE8(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7FC70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_958(a1, a2);
  v11 = OUTLINED_FUNCTION_550(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  v2(v11);
  return sub_24DE22D10();
}

uint64_t sub_24DD7FCAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_958(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_563(v4, v5, v6);

  return sub_24DE22D10();
}

uint64_t sub_24DD7FCF8(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7FD7C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_1303(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x73646E65697266;
    }

    else
    {
      v5 = 0x6C702D73656D6167;
    }
  }

  else
  {
    OUTLINED_FUNCTION_853();
  }

  OUTLINED_FUNCTION_1169(v3, v5, v4);

  return sub_24DE22D10();
}

uint64_t sub_24DD7FE04(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_958(a1, a2);
  v11 = OUTLINED_FUNCTION_550(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  v2(v11);
  return sub_24DE22D10();
}

uint64_t sub_24DD7FE40(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7FEC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_958(a1, a2);
  v4 = v2(v3);
  OUTLINED_FUNCTION_563(v4, v5, v6);

  return sub_24DE22D10();
}

uint64_t sub_24DD7FF08(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD7FFB8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_1303(a1, a2);
  if (v2)
  {
    v5 = 0x746C75736572;
  }

  else
  {
    v5 = 0x6C72752D7478656ELL;
  }

  OUTLINED_FUNCTION_1169(v3, v5, v4);

  return sub_24DE22D10();
}

uint64_t sub_24DD80024(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD800A0(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD8011C(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD80194(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD8021C(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD802C0(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD80340(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD803BC(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD80438(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD804D4(uint64_t a1)
{
  sub_24DE22CC0();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD80528(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD805E4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_1303(a1, a2);
  if (v2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 0x657669746361;
  }

  OUTLINED_FUNCTION_1169(v3, v5, v4);

  return sub_24DE22D10();
}

uint64_t sub_24DD80654(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD806E4(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD80798(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD8083C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24DE22CC0();
  OUTLINED_FUNCTION_550(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD80884(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD808F4(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD80970(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD809EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_1303(a1, a2);
  if (v2)
  {
    v5 = 0x676E656C6C616863;
  }

  else
  {
    v5 = 0x692D726579616C70;
  }

  OUTLINED_FUNCTION_1169(v3, v5, v4);

  return sub_24DE22D10();
}

uint64_t sub_24DD80A68(uint64_t a1)
{
  sub_24DE22CC0();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD80ABC(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD80B54(uint64_t a1)
{
  sub_24DE22CC0();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t sub_24DD80BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1040();

  OUTLINED_FUNCTION_550(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  sub_24DE22AD0();

  return sub_24DE22D10();
}

uint64_t sub_24DD80C28(uint64_t a1, char a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();

  return sub_24DE22D10();
}

GameCenterServerClient::Servers::Server1::Env_optional sub_24DD80CBC@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Servers::Server1::Env_optional *a2@<X8>)
{
  result.value = Servers.Server1.Env.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_24DD80CEC@<X0>(uint64_t *a1@<X8>)
{
  result = Servers.Server1.Env.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

GameCenterServerClient::Servers::Server1::Service_optional __swiftcall Servers.Server1.Service.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v1 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v1;
  }
}

void Servers.Server1.Service.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 8:
    case 9:
    case 11:
      return;
    case 3:
      OUTLINED_FUNCTION_559(18);
      break;
    case 7:
      OUTLINED_FUNCTION_68();
      break;
    case 10:
      OUTLINED_FUNCTION_423(18);
      break;
    default:
      OUTLINED_FUNCTION_155();
      break;
  }
}

GameCenterServerClient::Servers::Server1::Service_optional sub_24DD80F6C@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Servers::Server1::Service_optional *a2@<X8>)
{
  result.value = Servers.Server1.Service.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_24DD80F9C(uint64_t *a1@<X8>)
{
  Servers.Server1.Service.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void static Servers.Server1.url(env:service:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_645();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B28A8, &qword_24DE23078);
  sub_24DE22910();
  OUTLINED_FUNCTION_432();
  *(swift_allocObject() + 16) = xmmword_24DE22F50;
  sub_24DE22900();
  Servers.Server1.Service.rawValue.getter(v5);
  OUTLINED_FUNCTION_1200();
  sub_24DE22900();

  OUTLINED_FUNCTION_657();
  sub_24DE22900();
  sub_24DE227D0();
  OUTLINED_FUNCTION_644();
}

uint64_t static Servers.server1(env:service:instance:)()
{
  OUTLINED_FUNCTION_749();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B28A8, &qword_24DE23078);
  sub_24DE22910();
  OUTLINED_FUNCTION_432();
  *(swift_allocObject() + 16) = xmmword_24DE22F50;

  sub_24DE22900();

  OUTLINED_FUNCTION_1200();
  sub_24DE22900();

  OUTLINED_FUNCTION_657();
  sub_24DE22900();
  return sub_24DE227D0();
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_Alert.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24DD81408@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_jackson_Alert.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD8143C()
{
  sub_24DD81524();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD81474()
{
  sub_24DD81524();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24DD81524()
{
  result = qword_27F1B28B8;
  if (!qword_27F1B28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B28B8);
  }

  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.playerId.setter()
{
  OUTLINED_FUNCTION_372();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.alias.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.firstName.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.lastName.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.lastPlayedTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.lastPlayedGame.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.lastChallengedGame.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.contactAssociationId.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

__n128 Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.init(playerId:alias:biDirectional:playedWith:challengedTogether:nearbyPlayedWith:sharedlinkPlayedWith:acceptedGameInvitation:initiatedGameInvitation:automatchedTogether:firstName:lastName:lastPlayedTimestamp:lastPlayedGame:lastChallengedTimestamp:lastChallengedGame:contactAssociationId:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, int a10, __int128 a11, __int128 a12, uint64_t a13, char a14, __int128 a15, uint64_t a16, char a17, __n128 a18, uint64_t a19, uint64_t a20)
{
  result = a18;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 34) = a7;
  *(a9 + 35) = a8;
  *(a9 + 36) = a10;
  *(a9 + 40) = a11;
  *(a9 + 56) = a12;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14 & 1;
  *(a9 + 88) = a15;
  *(a9 + 104) = a16;
  *(a9 + 112) = a17 & 1;
  *(a9 + 120) = a18;
  *(a9 + 136) = a19;
  *(a9 + 144) = a20;
  return result;
}

GameCenterServerClient::Components::Schemas::Friend_GetFriendPlayerIdsYukon_FriendEntry::CodingKeys_optional __swiftcall Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 17;
  if (v2 < 0x11)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Friend_GetFriendPlayerIdsYukon_FriendEntry::CodingKeys_optional __swiftcall Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_830();
      break;
    case 4:
      OUTLINED_FUNCTION_344(20);
      break;
    case 5:
      OUTLINED_FUNCTION_423(20);
      break;
    case 7:
      OUTLINED_FUNCTION_1121(20);
      break;
    case 8:
    case 0xE:
      OUTLINED_FUNCTION_1122(20);
      break;
    case 9:
    case 0xF:
      OUTLINED_FUNCTION_155();
      break;
    case 0xB:
      OUTLINED_FUNCTION_828();
      break;
    case 0xC:
      OUTLINED_FUNCTION_244(20);
      break;
    case 0xD:
      OUTLINED_FUNCTION_760(20);
      break;
    default:
      return;
  }
}

void sub_24DD81E74(uint64_t *a1@<X8>)
{
  Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DD81EA8()
{
  sub_24DD82994();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD81EE0()
{
  sub_24DD82994();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v141 = a1[2];
  v149 = a1[3];
  v148 = *(a1 + 32);
  v138 = *(a1 + 34);
  v139 = *(a1 + 33);
  v136 = *(a1 + 35);
  v134 = *(a1 + 36);
  v131 = *(a1 + 38);
  v132 = *(a1 + 37);
  v129 = *(a1 + 39);
  v126 = a1[5];
  v128 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v124 = *(a1 + 80);
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = *(a1 + 112);
  v11 = a1[15];
  v12 = a1[16];
  v13 = a1[17];
  v14 = a1[18];
  v15 = *(a2 + 8);
  v140 = *(a2 + 16);
  v16 = *(a2 + 24);
  v145 = *(a2 + 32);
  v154 = *(a2 + 33);
  v137 = *(a2 + 34);
  v135 = *(a2 + 35);
  v133 = *(a2 + 36);
  v146 = *(a2 + 37);
  v147 = *(a2 + 38);
  v130 = *(a2 + 39);
  v125 = *(a2 + 40);
  v127 = *(a2 + 48);
  v18 = *(a2 + 64);
  v17 = *(a2 + 72);
  v19 = *(a2 + 80);
  v21 = *(a2 + 88);
  v20 = *(a2 + 96);
  v22 = *(a2 + 104);
  v23 = *(a2 + 112);
  v24 = *(a2 + 120);
  v25 = *(a2 + 128);
  v27 = *(a2 + 136);
  v26 = *(a2 + 144);
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    v123 = *(a2 + 56);
    if (*a1 != *a2 || v3 != v15)
    {
      v99 = *(a2 + 96);
      v103 = a1[18];
      v115 = a1[15];
      v119 = a1[16];
      v91 = *(a2 + 72);
      v107 = *(a2 + 128);
      v111 = *(a2 + 144);
      v87 = *(a2 + 88);
      v88 = *(a2 + 64);
      v29 = a1[17];
      v30 = a1[13];
      v31 = *(a2 + 120);
      v32 = *(a1 + 112);
      v33 = a1[11];
      v34 = a1[12];
      v95 = *(a2 + 80);
      v35 = *(a2 + 112);
      v85 = a1[7];
      v86 = *(a2 + 104);
      v36 = a1[9];
      v37 = sub_24DE22CA0();
      v4 = v85;
      v22 = v86;
      v21 = v87;
      v6 = v36;
      v23 = v35;
      v19 = v95;
      v8 = v34;
      v7 = v33;
      v10 = v32;
      v17 = v91;
      v24 = v31;
      v9 = v30;
      v25 = v107;
      v26 = v111;
      v13 = v29;
      v18 = v88;
      v20 = v99;
      v14 = v103;
      v11 = v115;
      v12 = v119;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v123 = *(a2 + 56);
    if (v15)
    {
      return 0;
    }
  }

  if (v149)
  {
    v38 = v154;
    if (!v16)
    {
      return 0;
    }

    if (v141 != v140 || v149 != v16)
    {
      v100 = v20;
      v150 = v13;
      v96 = v19;
      v40 = v9;
      v142 = v24;
      v92 = v17;
      v41 = v10;
      v104 = v14;
      v108 = v25;
      v42 = v7;
      v89 = v18;
      v43 = v8;
      v116 = v11;
      v120 = v12;
      v44 = v23;
      v45 = v22;
      v46 = v6;
      v112 = v26;
      v47 = v21;
      v48 = v4;
      v49 = sub_24DE22CA0();
      v38 = v154;
      v4 = v48;
      v21 = v47;
      v6 = v46;
      v12 = v120;
      v22 = v45;
      v20 = v100;
      v14 = v104;
      v23 = v44;
      v26 = v112;
      v11 = v116;
      v8 = v43;
      v18 = v89;
      v7 = v42;
      v25 = v108;
      v10 = v41;
      v17 = v92;
      v24 = v142;
      v9 = v40;
      v19 = v96;
      v13 = v150;
      if ((v49 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v38 = v154;
    if (v16)
    {
      return 0;
    }
  }

  if (v148 == 2)
  {
    v50 = v146;
    v51 = v147;
    if (v145 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v145 == 2)
    {
      return result;
    }

    v51 = v147;
    v50 = v146;
    if ((v145 ^ v148))
    {
      return result;
    }
  }

  if (v139 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v38 == 2 || ((v38 ^ v139) & 1) != 0)
    {
      return result;
    }
  }

  if (v138 == 2)
  {
    if (v137 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v137 == 2 || ((v137 ^ v138) & 1) != 0)
    {
      return result;
    }
  }

  if (v136 == 2)
  {
    if (v135 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v135 == 2 || ((v135 ^ v136) & 1) != 0)
    {
      return result;
    }
  }

  if (v134 == 2)
  {
    if (v133 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v133 == 2 || ((v133 ^ v134) & 1) != 0)
    {
      return result;
    }
  }

  if (v132 == 2)
  {
    if (v50 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v50 == 2 || ((v50 ^ v132) & 1) != 0)
    {
      return result;
    }
  }

  if (v131 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v51 == 2 || ((v51 ^ v131) & 1) != 0)
    {
      return result;
    }
  }

  if (v129 == 2)
  {
    if (v130 != 2)
    {
      return 0;
    }

    goto LABEL_59;
  }

  result = 0;
  if (v130 != 2 && ((v130 ^ v129) & 1) == 0)
  {
LABEL_59:
    if (v128)
    {
      if (!v127)
      {
        return 0;
      }

      if (v126 != v125 || v128 != v127)
      {
        v101 = v20;
        v151 = v13;
        v97 = v19;
        v54 = v9;
        v143 = v24;
        v93 = v17;
        v55 = v10;
        v105 = v14;
        v109 = v25;
        v56 = v7;
        v90 = v18;
        v57 = v8;
        v117 = v11;
        v121 = v12;
        v58 = v23;
        v59 = v22;
        v60 = v6;
        v113 = v26;
        v61 = v21;
        v62 = v4;
        v63 = sub_24DE22CA0();
        v4 = v62;
        v21 = v61;
        v6 = v60;
        v12 = v121;
        v22 = v59;
        v20 = v101;
        v14 = v105;
        v23 = v58;
        v26 = v113;
        v11 = v117;
        v8 = v57;
        v18 = v90;
        v7 = v56;
        v25 = v109;
        v10 = v55;
        v17 = v93;
        v24 = v143;
        v9 = v54;
        v19 = v97;
        v13 = v151;
        if ((v63 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v127)
    {
      return 0;
    }

    if (v5)
    {
      if (!v18)
      {
        return 0;
      }

      if (v4 != v123 || v5 != v18)
      {
        v102 = v20;
        v152 = v13;
        v98 = v19;
        v65 = v9;
        v144 = v24;
        v94 = v17;
        v66 = v10;
        v106 = v14;
        v110 = v25;
        v67 = v7;
        v68 = v8;
        v118 = v11;
        v122 = v12;
        v69 = v23;
        v70 = v22;
        v71 = v6;
        v114 = v26;
        v72 = v21;
        v73 = sub_24DE22CA0();
        v21 = v72;
        v6 = v71;
        v12 = v122;
        v22 = v70;
        v20 = v102;
        v14 = v106;
        v23 = v69;
        v26 = v114;
        v11 = v118;
        v8 = v68;
        v7 = v67;
        v25 = v110;
        v10 = v66;
        v17 = v94;
        v24 = v144;
        v9 = v65;
        v19 = v98;
        v13 = v152;
        if ((v73 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v18)
    {
      return 0;
    }

    v74 = v25;
    if (v124)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (v6 == v17)
      {
        v75 = v19;
      }

      else
      {
        v75 = 1;
      }

      if (v75)
      {
        return 0;
      }
    }

    v76 = v22;
    v77 = v23;
    v78 = v10;
    v79 = v24;
    v80 = v9;
    v153 = v13;
    if (v8)
    {
      if (!v20)
      {
        return 0;
      }

      v81 = v7 == v21 && v8 == v20;
      if (!v81 && (sub_24DE22CA0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }

    if (v78)
    {
      if (!v77)
      {
        return 0;
      }
    }

    else
    {
      if (v80 == v76)
      {
        v82 = v77;
      }

      else
      {
        v82 = 1;
      }

      if (v82)
      {
        return 0;
      }
    }

    if (v12)
    {
      if (!v74)
      {
        return 0;
      }

      if (v11 != v79 || v12 != v74)
      {
        OUTLINED_FUNCTION_708();
        OUTLINED_FUNCTION_410();
        if ((sub_24DE22CA0() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v74)
    {
      return 0;
    }

    if (v14)
    {
      if (!v26)
      {
        return 0;
      }

      v84 = v153 == v27 && v14 == v26;
      return v84 || (sub_24DE22CA0() & 1) != 0;
    }

    return !v26;
  }

  return result;
}

void Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B28C8, &qword_24DE23090);
  OUTLINED_FUNCTION_18();
  v8 = v7;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_223();
  v10 = *v5;
  v11 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_387(v11, v12);
  sub_24DD82994();
  OUTLINED_FUNCTION_470();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_1284(v10);
  if (v6)
  {
    v13 = OUTLINED_FUNCTION_386();
    v14(v13);
  }

  else
  {
    OUTLINED_FUNCTION_803(1);
    OUTLINED_FUNCTION_673();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_802(2);
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_598();
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_802(4);
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_802(5);
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_802(6);
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_802(7);
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_802(8);
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_802(9);
    OUTLINED_FUNCTION_728();
    sub_24DE22C00();
    OUTLINED_FUNCTION_803(10);
    sub_24DE22BF0();
    OUTLINED_FUNCTION_803(11);
    OUTLINED_FUNCTION_478();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_803(12);
    OUTLINED_FUNCTION_478();
    sub_24DE22C40();
    OUTLINED_FUNCTION_803(13);
    OUTLINED_FUNCTION_478();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_803(14);
    OUTLINED_FUNCTION_478();
    sub_24DE22C40();
    OUTLINED_FUNCTION_803(15);
    OUTLINED_FUNCTION_478();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_803(16);
    OUTLINED_FUNCTION_478();
    sub_24DE22BF0();
    (*(v8 + 8))(v5);
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

unint64_t sub_24DD82994()
{
  result = qword_27F1B28D0;
  if (!qword_27F1B28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B28D0);
  }

  return result;
}

void Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1000();
  OUTLINED_FUNCTION_438();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v12 = *(v1 + 33);
  v13 = *(v1 + 34);
  v11 = *(v1 + 35);
  v4 = *(v1 + 36);
  v5 = *(v1 + 37);
  v14 = *(v1 + 38);
  v6 = *(v1 + 39);
  v7 = *(v1 + 48);
  v15 = *(v1 + 64);
  v17 = *(v1 + 80);
  v18 = *(v1 + 96);
  v9 = *(v1 + 72);
  v10 = *(v1 + 104);
  v19 = *(v1 + 112);
  v16 = *(v1 + 128);
  v20 = *(v1 + 144);
  if (*(v1 + 8))
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_386();
    sub_24DE22AD0();
    if (v2)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_593();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v3 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v12 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v13 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v11 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v4 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v5 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v14 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v6 != 2)
  {
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v7)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1073();
    sub_24DE22AD0();
    if (v15)
    {
LABEL_24:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1074();
      sub_24DE22AD0();
      goto LABEL_27;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v15)
    {
      goto LABEL_24;
    }
  }

  sub_24DE22CE0();
LABEL_27:
  if (v17)
  {
    sub_24DE22CE0();
    if (v18)
    {
LABEL_29:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1268();
      sub_24DE22AD0();
      goto LABEL_32;
    }
  }

  else
  {
    sub_24DE22CE0();
    MEMORY[0x253039750](v9);
    if (v18)
    {
      goto LABEL_29;
    }
  }

  sub_24DE22CE0();
LABEL_32:
  if (v19)
  {
    sub_24DE22CE0();
    if (v16)
    {
      goto LABEL_34;
    }

LABEL_39:
    sub_24DE22CE0();
    if (v20)
    {
      goto LABEL_35;
    }

LABEL_40:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_827();
    return;
  }

  sub_24DE22CE0();
  MEMORY[0x253039750](v10);
  if (!v16)
  {
    goto LABEL_39;
  }

LABEL_34:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_781();
  sub_24DE22AD0();
  if (!v20)
  {
    goto LABEL_40;
  }

LABEL_35:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_868();
  OUTLINED_FUNCTION_827();

  sub_24DE22AD0();
}

void Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_469();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B28D8, &qword_24DE23098);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_735();
  v40 = v5;
  OUTLINED_FUNCTION_173(v5);
  sub_24DD82994();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v7)
  {
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_156();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 2;
    v61 = 2;
    v62 = 2;
    v63 = v6;
    v64 = v8;
    OUTLINED_FUNCTION_717();
    v65 = v79;
    *v66 = *v78;
    *&v66[3] = *&v78[3];
    v67 = v44;
    v68 = v46;
    v69 = v42;
    v70 = v77;
    *v71 = *v76;
    *&v71[3] = *&v76[3];
    v72 = v36;
    v73 = v38;
    v74 = 0;
    v75 = 0;
  }

  else
  {
    LOBYTE(v56) = 0;
    OUTLINED_FUNCTION_435();
    v10 = sub_24DE22B40();
    v32 = v11;
    v33 = v10;
    OUTLINED_FUNCTION_73(1);
    v31 = sub_24DE22B40();
    v41 = v12;
    OUTLINED_FUNCTION_73(2);
    v30 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(3);
    v29 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(4);
    v28 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(5);
    v27 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(6);
    v26 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(7);
    v35 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(8);
    v34 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(9);
    v53 = sub_24DE22B50();
    OUTLINED_FUNCTION_73(10);
    v51 = sub_24DE22B40();
    v52 = v13;
    OUTLINED_FUNCTION_73(11);
    v49 = sub_24DE22B40();
    v50 = v14;
    OUTLINED_FUNCTION_73(12);
    v48 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v48, v15);
    OUTLINED_FUNCTION_73(13);
    v45 = sub_24DE22B40();
    v47 = v16;
    OUTLINED_FUNCTION_73(14);
    v43 = sub_24DE22B90();
    OUTLINED_FUNCTION_1188(v43, v17);
    OUTLINED_FUNCTION_73(15);
    v37 = sub_24DE22B40();
    v39 = v18;
    v55 = 16;
    OUTLINED_FUNCTION_435();
    v19 = sub_24DE22B40();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_106();
    v23(v22);
    v54[0] = v33;
    v54[1] = v32;
    v54[2] = v31;
    v54[3] = v41;
    LOBYTE(v54[4]) = v30;
    BYTE1(v54[4]) = v29;
    BYTE2(v54[4]) = v28;
    BYTE3(v54[4]) = v27;
    BYTE4(v54[4]) = v26;
    BYTE5(v54[4]) = v35;
    BYTE6(v54[4]) = v34;
    HIBYTE(v54[4]) = v53;
    v54[5] = v51;
    v54[6] = v52;
    v54[7] = v49;
    v54[8] = v50;
    v54[9] = v48;
    v24 = v79;
    LOBYTE(v54[10]) = v79;
    v54[11] = v45;
    v54[12] = v47;
    v54[13] = v43;
    v25 = v77;
    LOBYTE(v54[14]) = v77;
    v54[15] = v37;
    v54[16] = v39;
    v54[17] = v19;
    v54[18] = v21;
    memcpy(v6, v54, 0x98uLL);
    sub_24DD83490(v54, &v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v56 = v33;
    v57 = v32;
    v58 = v31;
    v59 = v41;
    v60 = v30;
    v61 = v29;
    v62 = v28;
    v63 = v27;
    v64 = v26;
    OUTLINED_FUNCTION_717();
    v65 = v24;
    *&v66[3] = *&v78[3];
    *v66 = *v78;
    v67 = v45;
    v68 = v47;
    v69 = v43;
    v70 = v25;
    *&v71[3] = *&v76[3];
    *v71 = *v76;
    v72 = v37;
    v73 = v39;
    v74 = v19;
    v75 = v21;
  }

  sub_24DD83460(&v56);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.friendType.setter()
{
  OUTLINED_FUNCTION_372();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.requestedPlayerId.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x742D646E65697266;
  }
}

uint64_t sub_24DD83654@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD83688()
{
  sub_24DD838D4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD836C0()
{
  sub_24DD838D4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_24DD836FC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_360(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      v10 = v2 == v5 && v3 == v6;
      if (v10 || (OUTLINED_FUNCTION_369() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

void sub_24DD837BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_645();
  v25 = v15;
  v17 = v16;
  v19 = OUTLINED_FUNCTION_632(v16, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_100();
  v22 = OUTLINED_FUNCTION_301(v17);
  v25(v22);
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_616();
  OUTLINED_FUNCTION_453();
  sub_24DE22BF0();
  if (!v14)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
  }

  v23 = OUTLINED_FUNCTION_213();
  v24(v23);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

unint64_t sub_24DD838D4()
{
  result = qword_27F1B28E8;
  if (!qword_27F1B28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B28E8);
  }

  return result;
}

uint64_t sub_24DD8392C(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    OUTLINED_FUNCTION_962();
    if (v2)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_962();
  }

  OUTLINED_FUNCTION_964();
  OUTLINED_FUNCTION_503();
  sub_24DE22AD0();
  if (!v2)
  {
    return OUTLINED_FUNCTION_962();
  }

LABEL_3:
  OUTLINED_FUNCTION_964();
  OUTLINED_FUNCTION_409();

  return sub_24DE22AD0();
}

void sub_24DD839C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  OUTLINED_FUNCTION_619();
  sub_24DE22CC0();
  sub_24DE22CE0();
  if (v27)
  {
    OUTLINED_FUNCTION_519();
    sub_24DE22AD0();
  }

  sub_24DE22CE0();
  if (v26)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void sub_24DD83A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_645();
  v23 = v22;
  v25 = v24;
  v36 = v26;
  v28 = OUTLINED_FUNCTION_632(v24, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_140();
  v31 = v25[3];
  v32 = OUTLINED_FUNCTION_255(v25);
  v23(v32);
  OUTLINED_FUNCTION_1222();
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (v19)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    OUTLINED_FUNCTION_578();
    OUTLINED_FUNCTION_311();
    sub_24DE22B40();
    OUTLINED_FUNCTION_1026();
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_405();
    sub_24DE22B40();
    OUTLINED_FUNCTION_1036();
    v35 = v33;
    v34(v21, v20);
    *v36 = v31;
    v36[1] = 0;
    v36[2] = v35;
    v36[3] = v18;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD83C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_24DE22CC0();
  v13 = OUTLINED_FUNCTION_1051(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.message.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

double sub_24DD83D54@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.results.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

GameCenterServerClient::Components::Schemas::Friend_GetFriendPlayerIdsYukon_Response::CodingKeys_optional __swiftcall Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_1287();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD83F40@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD83F74()
{
  sub_24DD870E4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD83FAC()
{
  sub_24DD870E4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B28F8, &qword_24DE230B0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DD870E4();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_488();
  sub_24DE22C30();
  if (!v8)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_141();
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2910, &qword_24DE230B8);
    sub_24DD8718C();
    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
  }

  v6 = OUTLINED_FUNCTION_180();
  v7(v6);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Friend_GetFriendPlayerIdsYukon_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2928, &qword_24DE230C0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_168();
  sub_24DD870E4();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_93();
    v8 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v8);
    v20[0] = v9;
    OUTLINED_FUNCTION_93();
    v10 = sub_24DE22B40();
    OUTLINED_FUNCTION_776(v10, v11);
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    OUTLINED_FUNCTION_824();
    v12 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2910, &qword_24DE230B8);
    OUTLINED_FUNCTION_493();
    sub_24DDE1EF0();
    OUTLINED_FUNCTION_144();
    v16 = OUTLINED_FUNCTION_124();
    v17(v16);
    v18 = OUTLINED_FUNCTION_14();
    sub_24DDE1FC8(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_40();
  }

  sub_24DDE1E6C(v20);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.platform.setter()
{
  OUTLINED_FUNCTION_372();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.bundleId.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.shortBundleVersion.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.bundleVersion.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.init(platform:bundleId:adamId:shortBundleVersion:bundleVersion:externalVersion:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, char a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u8[8] = a6 & 1;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = a12 & 1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_jackson_GameDescriptor::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_932();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_jackson_GameDescriptor::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t sub_24DD846A8()
{
  result = 0x6D726F6674616C70;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_65();
      break;
    case 2:
      result = OUTLINED_FUNCTION_752();
      break;
    case 3:
      result = OUTLINED_FUNCTION_560(16);
      break;
    case 4:
      result = OUTLINED_FUNCTION_1328();
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD847D4@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD84804()
{
  sub_24DDE2000();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD8483C()
{
  sub_24DDE2000();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_597();
  v4 = v3;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v13 = *(v2 + 72);
  v14 = *(v4 + 8);
  v15 = *(v4 + 16);
  v17 = *(v4 + 24);
  v16 = *(v4 + 32);
  v18 = *(v4 + 40);
  v20 = *(v4 + 48);
  v19 = *(v4 + 56);
  v21 = *(v4 + 64);
  v22 = *(v4 + 72);
  if (v5)
  {
    if (!v14)
    {
      goto LABEL_42;
    }

    if (*v2 != *v4 || v5 != v14)
    {
      v46 = *(v4 + 72);
      v48 = *(v4 + 32);
      v43 = *(v2 + 64);
      v44 = *(v2 + 72);
      v52 = *(v4 + 56);
      v24 = *(v4 + 64);
      v25 = *(v2 + 48);
      v26 = *(v4 + 48);
      v27 = *(v2 + 32);
      v28 = *(v2 + 40);
      v50 = *(v4 + 40);
      v29 = *(v2 + 16);
      v30 = sub_24DE22CA0();
      v6 = v29;
      v18 = v50;
      v9 = v28;
      v7 = v27;
      v20 = v26;
      v19 = v52;
      v10 = v25;
      v21 = v24;
      v12 = v43;
      v13 = v44;
      v22 = v46;
      v16 = v48;
      if ((v30 & 1) == 0)
      {
        goto LABEL_42;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_42;
  }

  if (v8)
  {
    if (!v17)
    {
      goto LABEL_42;
    }

    if (v6 != v15 || v8 != v17)
    {
      v47 = v7;
      v49 = v16;
      v53 = v19;
      v32 = v21;
      v45 = v10;
      v33 = v11;
      v34 = v20;
      v35 = v9;
      v51 = v18;
      v36 = sub_24DE22CA0();
      v7 = v47;
      v16 = v49;
      v18 = v51;
      v9 = v35;
      v20 = v34;
      v19 = v53;
      v11 = v33;
      v10 = v45;
      v21 = v32;
      if ((v36 & 1) == 0)
      {
        goto LABEL_42;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_42;
  }

  if (v9)
  {
    if (!v18)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v7 == v16)
    {
      v37 = v18;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_42;
    }
  }

  if (v11)
  {
    if (!v19)
    {
      goto LABEL_42;
    }

    if (v10 != v20 || v11 != v19)
    {
      OUTLINED_FUNCTION_1044();
      v40 = v39;
      v41 = sub_24DE22CA0();
      v21 = v40;
      if ((v41 & 1) == 0)
      {
        goto LABEL_42;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_42;
  }

  if (v13 && v22 && (v12 != v21 || v13 != v22))
  {
    OUTLINED_FUNCTION_1069();
    OUTLINED_FUNCTION_947();
    sub_24DE22CA0();
  }

LABEL_42:
  OUTLINED_FUNCTION_586();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2948, &qword_24DE230C8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_1241();
  OUTLINED_FUNCTION_153(v7);
  sub_24DDE2000();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_642();
  OUTLINED_FUNCTION_819();
  sub_24DE22BF0();
  if (!v5)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_195();
    sub_24DE22C40();
    OUTLINED_FUNCTION_629();
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_889();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_195();
    sub_24DE22C40();
  }

  v10 = OUTLINED_FUNCTION_530();
  v11(v10, v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_885();
  OUTLINED_FUNCTION_438();
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  if (*(v1 + 8))
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_407();
    sub_24DE22AD0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v3)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_426();
      sub_24DE22AD0();
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_24DE22CE0();
  if (v4)
  {
LABEL_4:
    sub_24DE22CE0();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_24DE22CE0();
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_24DE22CE0();
  MEMORY[0x253039750](v2);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  if (v6)
  {
LABEL_6:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_714();
    sub_24DE22AD0();
    goto LABEL_12;
  }

LABEL_11:
  sub_24DE22CE0();
LABEL_12:
  sub_24DE22CE0();
  if (!v8)
  {
    MEMORY[0x253039750](v7);
  }

  OUTLINED_FUNCTION_720();
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v2);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1256();
  OUTLINED_FUNCTION_455();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2958, &qword_24DE230D0);
  OUTLINED_FUNCTION_27();
  v13 = v12;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_735();
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  *(v9 - 72) = v5;
  OUTLINED_FUNCTION_168();
  sub_24DDE2000();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_675();
  sub_24DE22D30();
  if (v6)
  {
    *(v9 - 304) = v6;
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_989();
    __swift_destroy_boxed_opaque_existential_1Tm(*(v9 - 72));
    *(v9 - 200) = 0;
    *(v9 - 192) = 0;
    *(v9 - 184) = v15;
    *(v9 - 176) = v16;
    *(v9 - 168) = v13;
    *(v9 - 160) = *(v9 - 96);
    *(v9 - 159) = *(v9 - 103);
    *(v9 - 156) = *(v9 - 100);
    *(v9 - 152) = v5;
    *(v9 - 144) = v11;
    v17 = *(v9 - 312);
    *(v9 - 136) = v7;
    *(v9 - 128) = v17;
    *(v9 - 120) = 0;
    *(v9 - 112) = *(v9 - 104);
  }

  else
  {
    *(v9 - 200) = 0;
    OUTLINED_FUNCTION_662();
    *(v9 - 320) = sub_24DE22B40();
    *(v9 - 328) = v18;
    OUTLINED_FUNCTION_518(1);
    v19 = sub_24DE22B40();
    OUTLINED_FUNCTION_816(v20, v9 - 80);
    OUTLINED_FUNCTION_518(v21);
    v22 = sub_24DE22B90();
    *(v9 - 344) = v22;
    OUTLINED_FUNCTION_666(v22, v23);
    OUTLINED_FUNCTION_518(3);
    *(v9 - 360) = sub_24DE22B40();
    *(v9 - 352) = v24;
    OUTLINED_FUNCTION_518(4);
    v25 = sub_24DE22B40();
    *(v9 - 312) = v26;
    *(v9 - 201) = 5;
    OUTLINED_FUNCTION_662();
    v27 = sub_24DE22B90();
    *(v9 - 304) = 0;
    v29 = v28;
    v30 = v27;
    v31 = OUTLINED_FUNCTION_463();
    v32(v31);
    v29 &= 1u;
    *(v9 - 104) = v29;
    OUTLINED_FUNCTION_1236();
    *(v9 - 296) = v33;
    v34 = *(v9 - 328);
    *(v9 - 288) = v34;
    *(v9 - 280) = v19;
    *(v9 - 368) = v19;
    *(v9 - 272) = *(v9 - 336);
    OUTLINED_FUNCTION_1234();
    OUTLINED_FUNCTION_824();
    v35 = *(v9 - 96);
    *(v9 - 372) = v35;
    *(v9 - 256) = v35;
    OUTLINED_FUNCTION_1235(v9 - 104);
    v36 = v25;
    *(v9 - 232) = v25;
    v37 = *(v9 - 312);
    *(v9 - 224) = v37;
    *(v9 - 216) = v30;
    *(v9 - 208) = v29;
    memcpy(v11, (v9 - 296), 0x59uLL);
    sub_24DDE2084(v9 - 296, v9 - 200);
    __swift_destroy_boxed_opaque_existential_1Tm(*(v9 - 72));
    OUTLINED_FUNCTION_1236();
    *(v9 - 200) = v38;
    *(v9 - 192) = v34;
    v39 = *(v9 - 336);
    *(v9 - 184) = *(v9 - 368);
    *(v9 - 176) = v39;
    *(v9 - 168) = v13 + 8;
    *(v9 - 160) = *(v9 - 372);
    *(v9 - 152) = v8;
    *(v9 - 144) = v11;
    *(v9 - 136) = v36;
    *(v9 - 128) = v37;
    *(v9 - 120) = v30;
    *(v9 - 112) = v29;
  }

  sub_24DDE2054(v9 - 200);
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.receivingPlayerIds.setter()
{
  result = OUTLINED_FUNCTION_1311();
  *v1 = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.bundleId.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.activityUrl.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.activityVendorId.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.activityType.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

void __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.init(receivingPlayerIds:bundleId:activityUrl:activityVendorId:activityType:ascResourceId:)(GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent *__return_ptr retstr, Swift::OpaquePointer receivingPlayerIds, Swift::String bundleId, Swift::String activityUrl, Swift::String activityVendorId, Swift::String activityType, Swift::String_optional ascResourceId)
{
  OUTLINED_FUNCTION_1329(receivingPlayerIds._rawValue, bundleId._countAndFlagsBits, bundleId._object, activityUrl._countAndFlagsBits, activityUrl._object, activityVendorId._countAndFlagsBits, activityVendorId._object, activityType._countAndFlagsBits, retstr);
  *(v7 + 64) = v8;
  *(v7 + 80) = v9;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_932();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DD85498()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 4:
      return;
    case 3:
      OUTLINED_FUNCTION_155();
      break;
    case 5:
      OUTLINED_FUNCTION_925();
      break;
    default:
      OUTLINED_FUNCTION_345();
      break;
  }
}

uint64_t sub_24DD855D8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD85608()
{
  sub_24DDE20BC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD85640()
{
  sub_24DDE20BC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_597();
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v29 = v2[6];
  v30 = v2[5];
  v28 = v2[7];
  v27 = v2[8];
  v24 = v2[10];
  v8 = v7[1];
  v10 = v7[2];
  v9 = v7[3];
  v12 = v7[4];
  v11 = v7[5];
  v13 = v7[6];
  v26 = v7[7];
  v25 = v7[8];
  v21 = v7[9];
  v22 = v2[9];
  v23 = v7[10];
  v14 = OUTLINED_FUNCTION_1076(*v2);
  if (sub_24DD85994(v14, v15))
  {
    v16 = v3 == v8 && v5 == v10;
    if (v16 || (OUTLINED_FUNCTION_393(), OUTLINED_FUNCTION_1179(), (sub_24DE22CA0() & 1) != 0))
    {
      v17 = v4 == v9 && v6 == v12;
      if (v17 || (OUTLINED_FUNCTION_638(), OUTLINED_FUNCTION_818(), (sub_24DE22CA0() & 1) != 0))
      {
        v18 = v30 == v11 && v29 == v13;
        if (v18 || (OUTLINED_FUNCTION_812(), (sub_24DE22CA0() & 1) != 0))
        {
          v19 = v28 == v26 && v27 == v25;
          if (v19 || (sub_24DE22CA0()) && v24 && v23 && (v22 != v21 || v24 != v23))
          {
            sub_24DE22CA0();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_586();
}

void sub_24DD857C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_659();
  v34 = v5;
  v7 = v6;
  v9 = v8;
  v11 = OUTLINED_FUNCTION_1208(v8, v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_27();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v16);
  v17 = *(v9 + 16);
  if (v17 == *(v7 + 16) && v17 && v9 != v7)
  {
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = v9 + v18;
    v20 = v7 + v18;
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v23 = (v21 - 8);
    v32 = *(v21 + 56);
    v33 = v22;
    while (1)
    {
      v24 = OUTLINED_FUNCTION_616();
      v33(v24);
      if (!v17)
      {
        break;
      }

      v25 = OUTLINED_FUNCTION_642();
      v26 = v21;
      v33(v25);
      sub_24DDFCE60(v34);
      OUTLINED_FUNCTION_539();
      v27 = sub_24DE22AB0();
      v28 = *v23;
      v29 = OUTLINED_FUNCTION_546();
      v28(v29);
      v30 = OUTLINED_FUNCTION_615();
      v28(v30);
      if (v27)
      {
        v20 += v32;
        v19 += v32;
        v31 = v17-- == 1;
        v21 = v26;
        if (!v31)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_653();
  }
}

uint64_t sub_24DD85994(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24DE22CA0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD85A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a2 + v5 + 36);
      if (*(a1 + v5 + 36))
      {
        if (!*(a2 + v5 + 36))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v5 + 32) != *(a2 + v5 + 32))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v7 = *(a1 + v5 + 40) == *(a2 + v5 + 40) && *(a1 + v5 + 48) == *(a2 + v5 + 48);
      if (!v7 && (sub_24DE22CA0() & 1) == 0)
      {
        return 0;
      }

      v5 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24DD85ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = 0xE200000000000000;
      v8 = 27503;
      v10 = *(v4 - 1);
      v9 = *v4;
      switch(*(v3 - 16))
      {
        case 1:
          v8 = 0x5F79646165726C61;
          v7 = 0xEF64657469766E69;
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x800000024DE39BB0;
          break;
        case 3:
          v8 = 0xD000000000000020;
          v7 = 0x800000024DE39BD0;
          break;
        case 4:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000024DE39C00;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
          break;
        default:
          break;
      }

      v11 = 0xE200000000000000;
      v12 = 27503;
      switch(*(v4 - 16))
      {
        case 1:
          v12 = 0x5F79646165726C61;
          v11 = 0xEF64657469766E69;
          break;
        case 2:
          v12 = 0xD000000000000010;
          v11 = 0x800000024DE39BB0;
          break;
        case 3:
          v12 = 0xD000000000000020;
          v11 = 0x800000024DE39BD0;
          break;
        case 4:
          v12 = 0xD00000000000001CLL;
          v11 = 0x800000024DE39C00;
          break;
        case 5:
          v11 = 0xE500000000000000;
          v12 = 0x726F727265;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
      }

      else
      {
        v14 = sub_24DE22CA0();

        if ((v14 & 1) == 0)
        {

          return 0;
        }
      }

      if (v6 == v10 && v5 == v9)
      {
      }

      else
      {
        v16 = sub_24DE22CA0();

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}