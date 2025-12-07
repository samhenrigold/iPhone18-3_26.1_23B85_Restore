uint64_t SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_3(v1, v2, v3, v4, v5, v6, v7, v8);
  *(v0 + 96) = v9;
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

void SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_133_2(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_2_48();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_19_16(v11);
  OUTLINED_FUNCTION_0_104(v12, xmmword_427BC0);
  if (v1)
  {
    v0 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  *(v12 + 48) = v0;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 72) = v13;
  *(v12 + 80) = 0xD000000000000014;
  *(v12 + 88) = v14;
  if (v7)
  {
    v6 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  *(v12 + 96) = v6;
  OUTLINED_FUNCTION_71_8();
  *(v12 + 120) = v15;
  *(v12 + 128) = v16;
  *(v12 + 136) = 0xE600000000000000;
  if (v2)
  {
    type metadata accessor for SirikitDeviceState();
    v17 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  *(v12 + 144) = v17;
  OUTLINED_FUNCTION_14_8();
  *(v12 + 168) = v18;
  *(v12 + 176) = v19;
  *(v12 + 184) = 0xE600000000000000;
  if (v3)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v20 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  *(v12 + 192) = v20;
  OUTLINED_FUNCTION_55_22();
  *(v12 + 216) = v21;
  *(v12 + 224) = v22;
  OUTLINED_FUNCTION_56_12();
  *(v12 + 232) = v23;
  *(v12 + 240) = v5 & 1;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = v24;
  *(v12 + 272) = v25;
  *(v12 + 280) = 0xE700000000000000;
  v26 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v26, v27, v28, v29);
  v30 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v4);
  if (v31)
  {

    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v30;
    __swift_allocate_boxed_opaque_existential_1((v12 + 288));
    OUTLINED_FUNCTION_6_0();
    (*(v32 + 32))();
  }

  OUTLINED_FUNCTION_205(0xD000000000000027);

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_0_104(v6, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  v6[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v6[4].n128_u64[1] = v7;
  v6[5].n128_u64[0] = 0xD000000000000014;
  v6[5].n128_u64[1] = v8;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v9 = &type metadata for Double;
  }

  v6[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_8_66(v9);
  if (v0)
  {
    v10 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v11 = v0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_2();
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v11;
  v6[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11(0xD000000000000031, v1 | 0x8000000000000000);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  v15 = OUTLINED_FUNCTION_197(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_28_26(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v19 = *(v10 + 32);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 40);
  v11[12] = v19;
  OUTLINED_FUNCTION_8_66(v18);
  v21 = 0;
  if (v20)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 64) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_175(v22);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 72);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  v15 = OUTLINED_FUNCTION_46_15(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_28_26(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 32);
  v11[12] = v19;
  OUTLINED_FUNCTION_8_66(v18);
  v21 = 0;
  if (v20)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_22_19(v22);
  *v23 = v24;
  v23[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_94_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_0_104(v6, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  OUTLINED_FUNCTION_219();
  v6[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v6[4].n128_u64[1] = v7;
  v6[5].n128_u64[0] = v4;
  v6[5].n128_u64[1] = v8;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v9 = &type metadata for Double;
  }

  v6[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_29_29(v9);
  if (v0)
  {
    v10 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v11 = v0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_2();
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v11;
  v6[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToCallBack()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(33);
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *(v1 + 16) = xmmword_424FD0;
  v2 = OUTLINED_FUNCTION_3_98(v1);
  OUTLINED_FUNCTION_182(v2, &type metadata for Bool);
  OUTLINED_FUNCTION_78_0(40, v3);
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_3_98(v3);
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_76_9(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_134_0(v7);
  OUTLINED_FUNCTION_174();

  return v9();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_3_98(v3);
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_135_1(v6);
  v7 = OUTLINED_FUNCTION_34_21(40);

  return v8(v7);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *(v1 + 16) = xmmword_424FD0;
  v2 = OUTLINED_FUNCTION_3_98(v1);
  OUTLINED_FUNCTION_138_2(v2, &type metadata for Bool);
  OUTLINED_FUNCTION_180(40);
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1(v0);
  OUTLINED_FUNCTION_23_31(v1, xmmword_424FD0);
  OUTLINED_FUNCTION_70_9();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_182(v2, &type metadata for Bool);
  OUTLINED_FUNCTION_78_0(44, v5);
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_70_9();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v3;
  *(v3 + 16) = v7;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_76_9(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_134_0(v9);
  OUTLINED_FUNCTION_174();

  return v11();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_70_9();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v7;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_135_1(v8);
  v9 = OUTLINED_FUNCTION_34_21(44);

  return v10(v9);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1(v0);
  OUTLINED_FUNCTION_23_31(v1, xmmword_424FD0);
  OUTLINED_FUNCTION_70_9();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_138_2(v2, &type metadata for Bool);
  OUTLINED_FUNCTION_180(44);
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.promptForCallTypes()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(36);
}

uint64_t SearchCallHistoryCATs.promptForDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

uint64_t SearchCallHistoryCATs.promptForRecipient()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(36);
}

uint64_t SearchCallHistoryCATs.promptForUnseen()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(33);
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:completion:)(unint64_t a1, char a2, unint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187(v12);
  OUTLINED_FUNCTION_1_106(v13, xmmword_42BF20);
  if (a1)
  {
    type metadata accessor for PhoneCallRecord(0);
    v14 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v13[3].n128_u64[1] = 0;
    v13[4].n128_u64[0] = 0;
  }

  v13[3].n128_u64[0] = v14;
  OUTLINED_FUNCTION_74_0();
  v13[4].n128_u64[1] = v16;
  v13[5].n128_u64[0] = v15 & 0xFFFFFFFFFFFFLL | 0x664F000000000000;
  v13[5].n128_u64[1] = 0xED000070756F7247;
  v13[6].n128_u8[0] = a2 & 1;
  OUTLINED_FUNCTION_14_8();
  v13[7].n128_u64[1] = &type metadata for Bool;
  v13[8].n128_u64[0] = v17;
  v13[8].n128_u64[1] = 0xE600000000000000;
  if (a3)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v18 = a3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v13[9].n128_u64[1] = 0;
    v13[10].n128_u64[0] = 0;
  }

  v13[9].n128_u64[0] = v18;
  OUTLINED_FUNCTION_27_2();
  v13[10].n128_u64[1] = v19;
  v13[11].n128_u64[0] = 0xD000000000000013;
  v13[11].n128_u64[1] = v20;
  v13[12].n128_u8[0] = a4 & 1;
  OUTLINED_FUNCTION_27_2();
  v13[13].n128_u64[1] = &type metadata for Bool;
  v13[14].n128_u64[0] = 0xD000000000000012;
  v13[14].n128_u64[1] = v21;
  v13[16].n128_u64[1] = &type metadata for Bool;
  v13[15].n128_u8[0] = a5 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 73) = a5;
  *(v7 + 32) = a4;
  *(v7 + 40) = v6;
  *(v7 + 72) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187(v12);
  v10[6] = v13;
  OUTLINED_FUNCTION_1_106(v13, xmmword_42BF20);
  if (v11)
  {
    type metadata accessor for PhoneCallRecord(0);
    v14 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v15 = v10[4];
  v13[3].n128_u64[0] = v14;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v16, v17);
  v13[6].n128_u8[0] = v18;
  OUTLINED_FUNCTION_14_8();
  v13[7].n128_u64[1] = &type metadata for Bool;
  v13[8].n128_u64[0] = v19;
  v20 = OUTLINED_FUNCTION_137_2();
  if (v15)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v13[9].n128_u64[1] = 0;
    v13[10].n128_u64[0] = 0;
  }

  v13[9].n128_u64[0] = v15;
  OUTLINED_FUNCTION_30_2();
  v13[10].n128_u64[1] = v21;
  v13[11].n128_u64[0] = v22;
  v13[11].n128_u64[1] = v23;
  v13[12].n128_u8[0] = v24;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v25);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_22_19(v26);
  *v27 = v28;
  OUTLINED_FUNCTION_44_2(v27);
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_60();

  return v33(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187(v12);
  v10[5] = v13;
  OUTLINED_FUNCTION_1_106(v13, xmmword_42BF20);
  if (v11)
  {
    type metadata accessor for PhoneCallRecord(0);
    v14 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v15 = v10[3];
  v13[3].n128_u64[0] = v14;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v16, v17);
  v13[6].n128_u8[0] = v18;
  OUTLINED_FUNCTION_14_8();
  v13[7].n128_u64[1] = &type metadata for Bool;
  v13[8].n128_u64[0] = v19;
  v20 = OUTLINED_FUNCTION_137_2();
  if (v15)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v13[9].n128_u64[1] = 0;
    v13[10].n128_u64[0] = 0;
  }

  v13[9].n128_u64[0] = v15;
  OUTLINED_FUNCTION_30_2();
  v13[10].n128_u64[1] = v21;
  v13[11].n128_u64[0] = v22;
  v13[11].n128_u64[1] = v23;
  v13[12].n128_u8[0] = v24;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v25);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_16_12(v26);
  *v27 = v28;
  OUTLINED_FUNCTION_114_0(v27);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a4;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_187(v11);
  OUTLINED_FUNCTION_1_106(v12, xmmword_42BF20);
  if (v10)
  {
    type metadata accessor for PhoneCallRecord(0);
    v13 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v12[3].n128_u64[0] = v13;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v14, v15);
  v12[6].n128_u8[0] = v8 & 1;
  OUTLINED_FUNCTION_14_8();
  v12[7].n128_u64[1] = &type metadata for Bool;
  v12[8].n128_u64[0] = v16;
  v12[8].n128_u64[1] = 0xE600000000000000;
  if (v6)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v17 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v12[9].n128_u64[1] = 0;
    v12[10].n128_u64[0] = 0;
  }

  v12[9].n128_u64[0] = v17;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_172();
  v12[10].n128_u64[1] = v18;
  v12[11].n128_u64[0] = v19;
  v12[11].n128_u64[1] = v20;
  v12[12].n128_u8[0] = v4 & 1;
  OUTLINED_FUNCTION_27_2();
  v12[13].n128_u64[1] = &type metadata for Bool;
  v12[14].n128_u64[0] = v0;
  v12[14].n128_u64[1] = v21;
  v12[16].n128_u64[1] = &type metadata for Bool;
  v12[15].n128_u8[0] = v2 & 1;

  OUTLINED_FUNCTION_204(v0 + 14);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_0_104(v6, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  v6[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v6[4].n128_u64[1] = v7;
  v6[5].n128_u64[0] = 0xD000000000000014;
  v6[5].n128_u64[1] = v8;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v9 = &type metadata for Double;
  }

  v6[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_8_66(v9);
  if (v0)
  {
    v10 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v11 = v0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_2();
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v11;
  v6[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11(0xD000000000000033, v1 | 0x8000000000000000);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  v15 = OUTLINED_FUNCTION_197(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_28_26(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v19 = *(v10 + 32);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 40);
  v11[12] = v19;
  OUTLINED_FUNCTION_8_66(v18);
  v21 = 0;
  if (v20)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 64) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_175(v22);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 72);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  v15 = OUTLINED_FUNCTION_46_15(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_28_26(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 32);
  v11[12] = v19;
  OUTLINED_FUNCTION_8_66(v18);
  v21 = 0;
  if (v20)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_22_19(v22);
  *v23 = v24;
  v23[1] = SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_94_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_0_104(v6, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  OUTLINED_FUNCTION_219();
  v6[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v6[4].n128_u64[1] = v7;
  v6[5].n128_u64[0] = v4;
  v6[5].n128_u64[1] = v8;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v9 = &type metadata for Double;
  }

  v6[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_29_29(v9);
  if (v0)
  {
    v10 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v11 = v0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_2();
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v11;
  v6[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:completion:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, uint64_t a11)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v20 = OUTLINED_FUNCTION_185(v19);
  OUTLINED_FUNCTION_38_25(v20, xmmword_43CD90);
  if (a2)
  {
    a1 = 0;
    v20[3].n128_u64[1] = 0;
    v20[4].n128_u64[0] = 0;
  }

  v20[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v20[4].n128_u64[1] = v21;
  v20[5].n128_u64[0] = 0xD000000000000010;
  v20[5].n128_u64[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v20[6].n128_u64[0] = a3;
  OUTLINED_FUNCTION_27_2();
  v20[7].n128_u64[1] = v23;
  v20[8].n128_u64[0] = 0xD000000000000010;
  v20[8].n128_u64[1] = v24;
  v20[9].n128_u64[0] = a4;
  OUTLINED_FUNCTION_27_2();
  v20[10].n128_u64[1] = v25;
  v20[11].n128_u64[0] = 0xD000000000000010;
  v20[11].n128_u64[1] = v26;
  v20[12].n128_u64[0] = a5;
  OUTLINED_FUNCTION_36_7();
  v20[13].n128_u64[1] = v27;
  v20[14].n128_u64[0] = 0xD000000000000010;
  v20[14].n128_u64[1] = v28;
  v20[15].n128_u64[0] = a6;
  OUTLINED_FUNCTION_14_8();
  v20[16].n128_u64[1] = v29;
  v20[17].n128_u64[0] = v30;
  v20[17].n128_u64[1] = 0xE600000000000000;
  if (a7)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v31 = a7;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v20[18].n128_u64[1] = 0;
    v20[19].n128_u64[0] = 0;
  }

  v20[18].n128_u64[0] = v31;
  OUTLINED_FUNCTION_27_2();
  v20[19].n128_u64[1] = v32;
  v20[20].n128_u64[0] = 0xD000000000000013;
  v20[20].n128_u64[1] = v33;
  v20[21].n128_u8[0] = a8 & 1;
  OUTLINED_FUNCTION_39_0();
  v20[22].n128_u64[1] = v34;
  v20[23].n128_u64[0] = 0xD000000000000012;
  v20[23].n128_u64[1] = v35;
  v20[25].n128_u64[1] = v34;
  v20[24].n128_u8[0] = a9 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  *(v10 + 105) = a9;
  *(v10 + 64) = a8;
  *(v10 + 72) = v9;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 104) = a3;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v11, v12, v13);
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  v1 = *(v0 + 104);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_185(v2);
  *(v0 + 80) = v3;
  OUTLINED_FUNCTION_38_25(v3, xmmword_43CD90);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  else
  {
    v4 = *(v0 + 24);
  }

  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  v3[3].n128_u64[0] = v4;
  OUTLINED_FUNCTION_119_3();
  v3[4].n128_u64[1] = v10;
  v3[5].n128_u64[0] = 0xD000000000000010;
  v3[5].n128_u64[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v3[6].n128_u64[0] = v9;
  OUTLINED_FUNCTION_27_2();
  v3[7].n128_u64[1] = v12;
  v3[8].n128_u64[0] = 0xD000000000000010;
  v3[8].n128_u64[1] = v13;
  v3[9].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  v3[10].n128_u64[1] = v14;
  v3[11].n128_u64[0] = 0xD000000000000010;
  v3[11].n128_u64[1] = v15;
  v3[12].n128_u64[0] = v7;
  OUTLINED_FUNCTION_36_7();
  v3[13].n128_u64[1] = v16;
  v3[14].n128_u64[0] = 0xD000000000000010;
  v3[14].n128_u64[1] = v17;
  v3[15].n128_u64[0] = v6;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_223(v18, v19);
  if (v5)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v3[18].n128_u64[1] = 0;
    v3[19].n128_u64[0] = 0;
  }

  v3[18].n128_u64[0] = v5;
  OUTLINED_FUNCTION_13_10();
  v3[19].n128_u64[1] = v21;
  v3[20].n128_u64[0] = 0xD000000000000013;
  v3[20].n128_u64[1] = v22;
  v3[21].n128_u8[0] = v23;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v24);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 88) = v25;
  *v25 = v26;
  v25[1] = SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);
  v27 = *(v0 + 16);

  return v29(v27, 0xD000000000000029, 0x8000000000453C20, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  v1 = *(v0 + 96);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_185(v2);
  *(v0 + 72) = v3;
  OUTLINED_FUNCTION_38_25(v3, xmmword_43CD90);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  else
  {
    v4 = *(v0 + 16);
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);
  v3[3].n128_u64[0] = v4;
  OUTLINED_FUNCTION_119_3();
  v3[4].n128_u64[1] = v10;
  v3[5].n128_u64[0] = 0xD000000000000010;
  v3[5].n128_u64[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v3[6].n128_u64[0] = v9;
  OUTLINED_FUNCTION_27_2();
  v3[7].n128_u64[1] = v12;
  v3[8].n128_u64[0] = 0xD000000000000010;
  v3[8].n128_u64[1] = v13;
  v3[9].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  v3[10].n128_u64[1] = v14;
  v3[11].n128_u64[0] = 0xD000000000000010;
  v3[11].n128_u64[1] = v15;
  v3[12].n128_u64[0] = v7;
  OUTLINED_FUNCTION_36_7();
  v3[13].n128_u64[1] = v16;
  v3[14].n128_u64[0] = 0xD000000000000010;
  v3[14].n128_u64[1] = v17;
  v3[15].n128_u64[0] = v6;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_223(v18, v19);
  if (v5)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v3[18].n128_u64[1] = 0;
    v3[19].n128_u64[0] = 0;
  }

  v3[18].n128_u64[0] = v5;
  OUTLINED_FUNCTION_13_10();
  v3[19].n128_u64[1] = v21;
  v3[20].n128_u64[0] = 0xD000000000000013;
  v3[20].n128_u64[1] = v22;
  v3[21].n128_u8[0] = v23;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v24);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_77_12(v25);
  *v26 = v27;
  v26[1] = SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);

  return v29(0xD000000000000029, 0x8000000000453C20, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *(v10 + 56) = a7;
  *(v10 + 64) = v9;
  *(v10 + 98) = a9;
  *(v10 + 97) = a8;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 96) = a2;
  *(v10 + 16) = a1;
  v11 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v11, v12, v13);
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, char a8, char a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v18 = OUTLINED_FUNCTION_185(v17);
  OUTLINED_FUNCTION_38_25(v18, xmmword_43CD90);
  if (a2)
  {
    a1 = 0;
    v18[3].n128_u64[1] = 0;
    v18[4].n128_u64[0] = 0;
  }

  v18[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v18[4].n128_u64[1] = v19;
  v18[5].n128_u64[0] = 0xD000000000000010;
  v18[5].n128_u64[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v18[6].n128_u64[0] = a3;
  OUTLINED_FUNCTION_27_2();
  v18[7].n128_u64[1] = v21;
  v18[8].n128_u64[0] = 0xD000000000000010;
  v18[8].n128_u64[1] = v22;
  v18[9].n128_u64[0] = a4;
  OUTLINED_FUNCTION_27_2();
  v18[10].n128_u64[1] = v23;
  v18[11].n128_u64[0] = 0xD000000000000010;
  v18[11].n128_u64[1] = v24;
  v18[12].n128_u64[0] = a5;
  OUTLINED_FUNCTION_36_7();
  v18[13].n128_u64[1] = v25;
  v18[14].n128_u64[0] = 0xD000000000000010;
  v18[14].n128_u64[1] = v26;
  v18[15].n128_u64[0] = a6;
  OUTLINED_FUNCTION_14_8();
  v18[16].n128_u64[1] = v27;
  v18[17].n128_u64[0] = v28;
  v18[17].n128_u64[1] = 0xE600000000000000;
  if (a7)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v29 = a7;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v18[18].n128_u64[1] = 0;
    v18[19].n128_u64[0] = 0;
  }

  v18[18].n128_u64[0] = v29;
  OUTLINED_FUNCTION_27_2();
  v18[19].n128_u64[1] = v30;
  v18[20].n128_u64[0] = 0xD000000000000013;
  v18[20].n128_u64[1] = v31;
  v18[21].n128_u8[0] = a8 & 1;
  OUTLINED_FUNCTION_39_0();
  v18[22].n128_u64[1] = v32;
  v18[23].n128_u64[0] = 0xD000000000000012;
  v18[23].n128_u64[1] = v33;
  v18[25].n128_u64[1] = v32;
  v18[24].n128_u8[0] = a9 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, char a22)
{
  OUTLINED_FUNCTION_66();
  v56 = v27;
  v57 = v28;
  v30 = v29;
  OUTLINED_FUNCTION_107_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v31);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_170();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v34 = OUTLINED_FUNCTION_228(v33);
  OUTLINED_FUNCTION_1_106(v34, xmmword_4441E0);
  if (v23)
  {
    type metadata accessor for PhoneCallRecord(0);
    v35 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
  }

  *(v34 + 48) = v35;
  OUTLINED_FUNCTION_14_8();
  *(v34 + 72) = v36;
  *(v34 + 80) = v37;
  *(v34 + 88) = 0xE600000000000000;
  if (v24)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v38 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v34 + 104) = 0;
    *(v34 + 112) = 0;
  }

  *(v34 + 96) = v38;
  OUTLINED_FUNCTION_27_2();
  *(v34 + 120) = v39;
  *(v34 + 128) = 0xD000000000000013;
  *(v34 + 136) = v40;
  *(v34 + 144) = v22 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_216(v41);
  *(v34 + 192) = v42;
  OUTLINED_FUNCTION_36_7();
  *(v34 + 216) = &type metadata for Bool;
  *(v34 + 224) = 0xD000000000000011;
  *(v34 + 232) = v43;
  outlined init with copy of SpeakableString?(v26, v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v44 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_150_0(v44);
  if (v45)
  {

    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v34 + 240) = 0u;
    *(v34 + 256) = 0u;
  }

  else
  {
    *(v34 + 264) = v22;
    __swift_allocate_boxed_opaque_existential_1((v34 + 240));
    OUTLINED_FUNCTION_19_12();
    (*(v46 + 32))();
  }

  OUTLINED_FUNCTION_11_56();
  *(v34 + 272) = v48;
  *(v34 + 280) = v49;
  if (v57)
  {
    v30 = 0;
    v50 = 0;
    *(v34 + 296) = 0;
    *(v34 + 304) = 0;
  }

  else
  {
    v50 = &type metadata for Double;
  }

  *(v34 + 288) = v30;
  *(v34 + 312) = v50;
  *(v34 + 320) = 0xD000000000000011;
  *(v34 + 328) = 0x8000000000460E40;
  if (v47)
  {
    v51 = 0;
    v52 = 0;
    *(v34 + 344) = 0;
    *(v34 + 352) = 0;
  }

  else
  {
    v52 = &type metadata for Double;
    v51 = v56;
  }

  *(v34 + 336) = v51;
  *(v34 + 360) = v52;
  *(v34 + 368) = 0xD000000000000021;
  *(v34 + 376) = 0x800000000045AF80;
  *(v34 + 384) = a22 & 1;
  OUTLINED_FUNCTION_215();
  *(v34 + 408) = &type metadata for Bool;
  *(v34 + 416) = v53;
  OUTLINED_FUNCTION_214();
  *(v34 + 424) = v54;
  *(v34 + 456) = &type metadata for Bool;
  *(v34 + 432) = v55 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, unsigned __int8 a11, unsigned __int8 a12)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  *(v13 + 56) = v14;
  *(v13 + 64) = v12;
  *(v13 + 109) = a12;
  *(v13 + 108) = a11;
  OUTLINED_FUNCTION_82_7(v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v23);
  *(v13 + 72) = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v24, v25, v26);
}

uint64_t SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = v11[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_228(v14);
  v16 = OUTLINED_FUNCTION_193(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_4441E0);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = v11[4];
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v17);
  if (v18)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v21);
  OUTLINED_FUNCTION_176();
  if (v22)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v23();
  }

  OUTLINED_FUNCTION_4_78();
  v12[34] = v24;
  v12[35] = v25;
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v27 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v27);
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v29 = v11[7];
  }

  v12[42] = v29;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v30);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[11] = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_109_3(v31);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = v11[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_228(v14);
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_4441E0);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = v11[3];
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v17);
  if (v18)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v21);
  OUTLINED_FUNCTION_173();
  if (v22)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v23();
  }

  OUTLINED_FUNCTION_4_78();
  v12[34] = v24;
  v12[35] = v25;
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v27 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v27);
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v29 = v11[6];
  }

  v12[42] = v29;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v30);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_77_12(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_156_0(v32);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10, unsigned __int8 a11)
{
  OUTLINED_FUNCTION_15();
  *(v11 + 100) = __PAIR16__(a11, a10);
  *(v11 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v12, v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_222(v20, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v23);
  *(v11 + 64) = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v24, v25, v26);
}

void SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, char a22)
{
  OUTLINED_FUNCTION_66();
  v57 = v28;
  v58 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_111_5();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v32);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_129_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v35 = OUTLINED_FUNCTION_228(v34);
  OUTLINED_FUNCTION_1_106(v35, xmmword_4441E0);
  if (v24)
  {
    type metadata accessor for PhoneCallRecord(0);
    v36 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  v35[3].n128_u64[0] = v36;
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_177(v37, v38);
  if (v25)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v35[6].n128_u64[1] = 0;
    v35[7].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  v35[6].n128_u64[0] = v39;
  OUTLINED_FUNCTION_27_2();
  v35[7].n128_u64[1] = v40;
  v35[8].n128_u64[0] = v23 | 2;
  v35[8].n128_u64[1] = v41;
  v35[9].n128_u8[0] = v22 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_220(v42);
  v35[12].n128_u8[0] = v43;
  OUTLINED_FUNCTION_36_7();
  v35[13].n128_u64[1] = &type metadata for Bool;
  v35[14].n128_u64[0] = v23;
  v35[14].n128_u64[1] = v44;
  outlined init with copy of SpeakableString?(v27, v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v45 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v26);
  if (v46)
  {

    outlined destroy of SpeakableString?(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v35[16].n128_u64[1] = v45;
    __swift_allocate_boxed_opaque_existential_1(&v35[15]);
    OUTLINED_FUNCTION_6_0();
    (*(v47 + 32))();
  }

  OUTLINED_FUNCTION_11_56();
  v35[17].n128_u64[0] = v49;
  v35[17].n128_u64[1] = v50;
  if (v58)
  {
    v31 = 0;
    v51 = 0;
    v35[18].n128_u64[1] = 0;
    v35[19].n128_u64[0] = 0;
  }

  else
  {
    v51 = &type metadata for Double;
  }

  v35[18].n128_u64[0] = v31;
  v35[19].n128_u64[1] = v51;
  v35[20].n128_u64[0] = v23;
  v35[20].n128_u64[1] = 0x8000000000460E40;
  if (v48)
  {
    v52 = 0;
    v53 = 0;
    v35[21].n128_u64[1] = 0;
    v35[22].n128_u64[0] = 0;
  }

  else
  {
    v53 = &type metadata for Double;
    v52 = v57;
  }

  v35[21].n128_u64[0] = v52;
  v35[22].n128_u64[1] = v53;
  v35[23].n128_u64[0] = v23 + 16;
  v35[23].n128_u64[1] = 0x800000000045AF80;
  v35[24].n128_u8[0] = a22 & 1;
  OUTLINED_FUNCTION_215();
  v35[25].n128_u64[1] = &type metadata for Bool;
  v35[26].n128_u64[0] = v54;
  OUTLINED_FUNCTION_214();
  v35[26].n128_u64[1] = v55;
  v35[28].n128_u64[1] = &type metadata for Bool;
  v35[27].n128_u8[0] = v56 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:completion:)()
{
  OUTLINED_FUNCTION_66();
  v7 = v6;
  v34 = v8;
  v10 = v9;
  OUTLINED_FUNCTION_107_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_170();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_186(v13);
  OUTLINED_FUNCTION_1_106(v14, xmmword_431D00);
  if (v1)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  v14[3].n128_u64[0] = v15;
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_177(v16, v17);
  if (v2)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v18 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v14[6].n128_u64[1] = 0;
    v14[7].n128_u64[0] = 0;
  }

  v14[6].n128_u64[0] = v18;
  OUTLINED_FUNCTION_27_2();
  v14[7].n128_u64[1] = v19;
  v14[8].n128_u64[0] = 0xD000000000000013;
  v14[8].n128_u64[1] = v20;
  v14[9].n128_u8[0] = v0 & 1;
  OUTLINED_FUNCTION_39_0();
  v14[10].n128_u64[1] = v21;
  v14[11].n128_u64[0] = 0xD000000000000012;
  v14[11].n128_u64[1] = v22;
  v14[12].n128_u8[0] = v5 & 1;
  OUTLINED_FUNCTION_119_3();
  v14[13].n128_u64[1] = v23;
  v14[14].n128_u64[0] = 0xD000000000000011;
  v14[14].n128_u64[1] = v24;
  outlined init with copy of SpeakableString?(v4, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v25 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_150_0(v25);
  if (v26)
  {

    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v14[16].n128_u64[1] = v0;
    __swift_allocate_boxed_opaque_existential_1(&v14[15]);
    OUTLINED_FUNCTION_19_12();
    (*(v27 + 32))();
  }

  OUTLINED_FUNCTION_4_78();
  v14[17].n128_u64[0] = v28;
  v14[17].n128_u64[1] = v29;
  if (v34)
  {
    v10 = 0;
    v14[18].n128_u64[1] = 0;
    v14[19].n128_u64[0] = 0;
  }

  v14[18].n128_u64[0] = v10;
  OUTLINED_FUNCTION_13_10();
  v14[19].n128_u64[1] = v30;
  v14[20].n128_u64[0] = 0xD000000000000011;
  v14[20].n128_u64[1] = v31;
  if (v32)
  {
    v7 = 0;
    v33 = 0;
    v14[21].n128_u64[1] = 0;
    v14[22].n128_u64[0] = 0;
  }

  else
  {
    v33 = &type metadata for Double;
  }

  v14[21].n128_u64[0] = v7;
  v14[22].n128_u64[1] = v33;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  v1[7] = v2;
  v1[8] = v0;
  OUTLINED_FUNCTION_82_7(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v1[9] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v12, v13, v14);
}

uint64_t SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = v11[3];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_186(v15);
  v17 = OUTLINED_FUNCTION_193(v16);
  OUTLINED_FUNCTION_1_106(v17, xmmword_431D00);
  v18 = 0;
  if (v14)
  {
    v18 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v19 = v11[4];
  *(v12 + 48) = v14;
  OUTLINED_FUNCTION_10_67(v18);
  if (v19)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_57_22(v20);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v12 + 168) = v21;
  *(v12 + 176) = v13 + 1;
  *(v12 + 184) = v22;
  *(v12 + 192) = v23;
  OUTLINED_FUNCTION_119_3();
  *(v12 + 216) = v24;
  *(v12 + 224) = v13;
  *(v12 + 232) = v25;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v27);
  OUTLINED_FUNCTION_176();
  if (v28)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v29();
  }

  OUTLINED_FUNCTION_4_78();
  *(v12 + 272) = v30;
  *(v12 + 280) = v31;
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  else
  {
    v33 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v33);
  if (v34)
  {
    OUTLINED_FUNCTION_160_0();
    *(v12 + 344) = 0;
    *(v12 + 352) = 0;
  }

  else
  {
    v35 = v11[7];
    v36 = &type metadata for Double;
  }

  *(v12 + 336) = v35;
  *(v12 + 360) = v36;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[11] = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_109_3(v37);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = v11[2];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_186(v15);
  v17 = OUTLINED_FUNCTION_192(v16);
  OUTLINED_FUNCTION_1_106(v17, xmmword_431D00);
  v18 = 0;
  if (v14)
  {
    v18 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v19 = v11[3];
  *(v12 + 48) = v14;
  OUTLINED_FUNCTION_10_67(v18);
  if (v19)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v20);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v12 + 168) = v21;
  *(v12 + 176) = v13 + 1;
  *(v12 + 184) = v22;
  *(v12 + 192) = v23;
  OUTLINED_FUNCTION_119_3();
  *(v12 + 216) = v24;
  *(v12 + 224) = v13;
  *(v12 + 232) = v25;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v27);
  OUTLINED_FUNCTION_173();
  if (v28)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v29();
  }

  OUTLINED_FUNCTION_4_78();
  *(v12 + 272) = v30;
  *(v12 + 280) = v31;
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  else
  {
    v33 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v33);
  if (v34)
  {
    OUTLINED_FUNCTION_160_0();
    *(v12 + 344) = 0;
    *(v12 + 352) = 0;
  }

  else
  {
    v35 = v11[6];
    v36 = &type metadata for Double;
  }

  *(v12 + 336) = v35;
  *(v12 + 360) = v36;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_77_12(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_156_0(v38);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  *(v9 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v10, v11, v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_222(v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v22, v23, v24);
}

void SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)()
{
  OUTLINED_FUNCTION_66();
  v8 = v7;
  v35 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_111_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_129_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_186(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_431D00);
  if (v3)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
  }

  *(v15 + 48) = v16;
  OUTLINED_FUNCTION_14_8();
  *(v15 + 72) = v17;
  *(v15 + 80) = v18;
  *(v15 + 88) = 0xE600000000000000;
  if (v4)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
  }

  OUTLINED_FUNCTION_125_2();
  *(v15 + 96) = v19;
  OUTLINED_FUNCTION_27_2();
  *(v15 + 120) = v20;
  *(v15 + 128) = v2 | 2;
  *(v15 + 136) = v21;
  *(v15 + 144) = v1 & 1;
  OUTLINED_FUNCTION_39_0();
  *(v15 + 168) = v22;
  *(v15 + 176) = v2 + 1;
  *(v15 + 184) = v23;
  *(v15 + 192) = v0 & 1;
  OUTLINED_FUNCTION_119_3();
  *(v15 + 216) = v24;
  *(v15 + 224) = v2;
  *(v15 + 232) = v25;
  outlined init with copy of SpeakableString?(v6, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v26 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v5);
  if (v27)
  {

    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 240) = 0u;
    *(v15 + 256) = 0u;
  }

  else
  {
    *(v15 + 264) = v26;
    __swift_allocate_boxed_opaque_existential_1((v15 + 240));
    OUTLINED_FUNCTION_6_0();
    (*(v28 + 32))();
  }

  OUTLINED_FUNCTION_4_78();
  *(v15 + 272) = v29;
  *(v15 + 280) = v30;
  if (v35)
  {
    v11 = 0;
    *(v15 + 296) = 0;
    *(v15 + 304) = 0;
  }

  *(v15 + 288) = v11;
  OUTLINED_FUNCTION_13_10();
  *(v15 + 312) = v31;
  *(v15 + 320) = v2;
  *(v15 + 328) = v32;
  if (v33)
  {
    v8 = 0;
    v34 = 0;
    *(v15 + 344) = 0;
    *(v15 + 352) = 0;
  }

  else
  {
    v34 = &type metadata for Double;
  }

  *(v15 + 336) = v8;
  *(v15 + 360) = v34;
  OUTLINED_FUNCTION_205(v2 + 23);

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readPlayVoiceMailPrePrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(44);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(44);
}

void SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:completion:)()
{
  OUTLINED_FUNCTION_66();
  v34 = v5;
  v35 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_107_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_170();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_185(v11);
  OUTLINED_FUNCTION_1_106(v12, xmmword_43CD90);
  if (v1)
  {
    type metadata accessor for PhoneCallRecord(0);
    v13 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  *(v12 + 48) = v13;
  OUTLINED_FUNCTION_14_8();
  *(v12 + 72) = v14;
  *(v12 + 80) = v15;
  *(v12 + 88) = 0xE600000000000000;
  if (v2)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v16 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v16;
  OUTLINED_FUNCTION_27_2();
  *(v12 + 120) = v17;
  *(v12 + 128) = 0xD000000000000013;
  *(v12 + 136) = v18;
  *(v12 + 144) = v0 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_216(v19);
  *(v12 + 192) = v20;
  OUTLINED_FUNCTION_36_7();
  *(v12 + 216) = &type metadata for Bool;
  *(v12 + 224) = 0xD000000000000011;
  *(v12 + 232) = v21;
  outlined init with copy of SpeakableString?(v4, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_150_0(v22);
  if (v23)
  {

    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v0;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_19_12();
    (*(v24 + 32))();
  }

  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_35();
  *(v12 + 272) = v25;
  *(v12 + 280) = v26;
  if (v35)
  {
    v8 = 0;
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  *(v12 + 288) = v8;
  OUTLINED_FUNCTION_26_3();
  *(v12 + 312) = v27;
  *(v12 + 320) = 0xD000000000000011;
  *(v12 + 328) = v28;
  if (v29)
  {
    v30 = 0;
    *(v12 + 344) = 0;
    *(v12 + 352) = 0;
  }

  else
  {
    v30 = v34;
  }

  *(v12 + 336) = v30;
  OUTLINED_FUNCTION_26_3();
  *(v12 + 360) = v31;
  *(v12 + 368) = 0xD000000000000021;
  *(v12 + 376) = v32;
  *(v12 + 408) = &type metadata for Bool;
  *(v12 + 384) = v33 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  *(v12 + 56) = v13;
  *(v12 + 64) = v11;
  *(v12 + 108) = a11;
  OUTLINED_FUNCTION_82_7(v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v22);
  *(v12 + 72) = OUTLINED_FUNCTION_45();
  v23 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v23, v24, v25);
}

uint64_t SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = v11[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_185(v14);
  v16 = OUTLINED_FUNCTION_193(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_43CD90);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = v11[4];
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v17);
  if (v18)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v21);
  OUTLINED_FUNCTION_176();
  if (v22)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v23();
  }

  OUTLINED_FUNCTION_4_78();
  v12[34] = v24;
  v12[35] = v25;
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v27 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v27);
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v29 = v11[7];
  }

  v12[42] = v29;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v30);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[11] = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_109_3(v31);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = v11[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_185(v14);
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_43CD90);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = v11[3];
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v17);
  if (v18)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v21);
  OUTLINED_FUNCTION_173();
  if (v22)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v23();
  }

  OUTLINED_FUNCTION_4_78();
  v12[34] = v24;
  v12[35] = v25;
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v27 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v27);
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v29 = v11[6];
  }

  v12[42] = v29;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v30);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_77_12(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_156_0(v32);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  OUTLINED_FUNCTION_15();
  *(v9 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v10, v11, v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_222(v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v22, v23, v24);
}

void SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)()
{
  OUTLINED_FUNCTION_66();
  v35 = v6;
  v36 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_111_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_129_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_185(v12);
  OUTLINED_FUNCTION_1_106(v13, xmmword_43CD90);
  if (v2)
  {
    type metadata accessor for PhoneCallRecord(0);
    v14 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  v13[3].n128_u64[0] = v14;
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_177(v15, v16);
  if (v3)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  v13[6].n128_u64[0] = v17;
  OUTLINED_FUNCTION_27_2();
  v13[7].n128_u64[1] = v18;
  v13[8].n128_u64[0] = v1 | 2;
  v13[8].n128_u64[1] = v19;
  v13[9].n128_u8[0] = v0 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_220(v20);
  v13[12].n128_u8[0] = v21;
  OUTLINED_FUNCTION_36_7();
  v13[13].n128_u64[1] = &type metadata for Bool;
  v13[14].n128_u64[0] = v1;
  v13[14].n128_u64[1] = v22;
  outlined init with copy of SpeakableString?(v5, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v4);
  if (v24)
  {

    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v13[16].n128_u64[1] = v23;
    __swift_allocate_boxed_opaque_existential_1(&v13[15]);
    OUTLINED_FUNCTION_6_0();
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_35();
  v13[17].n128_u64[0] = v26;
  v13[17].n128_u64[1] = v27;
  if (v36)
  {
    v9 = 0;
    v13[18].n128_u64[1] = 0;
    v13[19].n128_u64[0] = 0;
  }

  v13[18].n128_u64[0] = v9;
  OUTLINED_FUNCTION_26_3();
  v13[19].n128_u64[1] = v28;
  v13[20].n128_u64[0] = v1;
  v13[20].n128_u64[1] = v29;
  if (v30)
  {
    v31 = 0;
    v13[21].n128_u64[1] = 0;
    v13[22].n128_u64[0] = 0;
  }

  else
  {
    v31 = v35;
  }

  v13[21].n128_u64[0] = v31;
  OUTLINED_FUNCTION_26_3();
  v13[22].n128_u64[1] = v32;
  v13[23].n128_u64[0] = v1 + 16;
  v13[23].n128_u64[1] = v33;
  v13[25].n128_u64[1] = &type metadata for Bool;
  v13[24].n128_u8[0] = v34 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_66();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v36);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_27_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v39 = OUTLINED_FUNCTION_187(v38);
  OUTLINED_FUNCTION_0_104(v39, xmmword_42BF20);
  if (v33)
  {
    v35 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  v39[3].n128_u64[0] = v35;
  OUTLINED_FUNCTION_39_0();
  v39[4].n128_u64[1] = v40;
  v39[5].n128_u64[0] = 0xD000000000000014;
  v39[5].n128_u64[1] = v41;
  if (v29)
  {
    v31 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v42 = &type metadata for Double;
  }

  v39[6].n128_u64[0] = v31;
  OUTLINED_FUNCTION_29_29(v42);
  if (v27)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v43 = v27;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v39[9].n128_u64[1] = 0;
    v39[10].n128_u64[0] = 0;
  }

  v39[9].n128_u64[0] = v43;
  OUTLINED_FUNCTION_55_22();
  v39[10].n128_u64[1] = v44;
  v39[11].n128_u64[0] = v45;
  OUTLINED_FUNCTION_56_12();
  v39[11].n128_u64[1] = v46;
  v39[12].n128_u8[0] = v25 & 1;
  OUTLINED_FUNCTION_21_40();
  v39[13].n128_u64[1] = v47;
  v39[14].n128_u64[0] = v48;
  v39[14].n128_u64[1] = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v23, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v49 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v49);
  if (v50)
  {

    outlined destroy of SpeakableString?(v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v39[16].n128_u64[1] = v23;
    __swift_allocate_boxed_opaque_existential_1(&v39[15]);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_47_15();
    v51();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 98) = v3;
  *(v1 + 97) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  OUTLINED_FUNCTION_222(v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 64) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 89) = v6;
  *(v1 + 88) = v7;
  *(v1 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  *(v1 + 56) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 96);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v10 + 72) = v13;
  OUTLINED_FUNCTION_0_104(v13, xmmword_42BF20);
  if (v11)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  else
  {
    v14 = *(v10 + 24);
  }

  *(v13 + 48) = v14;
  OUTLINED_FUNCTION_104_3();
  *(v13 + 72) = v15;
  *(v13 + 80) = 0xD000000000000014;
  *(v13 + 88) = v16;
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  else
  {
    v19 = *(v10 + 32);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 40);
  *(v13 + 96) = v19;
  *(v13 + 120) = v18;
  *(v13 + 128) = 0x746E65746E69;
  v21 = OUTLINED_FUNCTION_137_2();
  if (v20)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  v22 = *(v10 + 64);
  *(v13 + 144) = v20;
  OUTLINED_FUNCTION_53_3();
  *(v13 + 168) = v23;
  *(v13 + 176) = v24;
  OUTLINED_FUNCTION_51_3();
  *(v13 + 184) = v25;
  *(v13 + 192) = v26;
  OUTLINED_FUNCTION_21_40();
  *(v13 + 216) = v28;
  *(v13 + 224) = v27;
  *(v13 + 232) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v29, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v30 = type metadata accessor for SpeakableString();
  v31 = OUTLINED_FUNCTION_58(v30);
  v32 = *(v10 + 64);
  if (v31 == 1)
  {

    outlined destroy of SpeakableString?(v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v13 + 240));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v33();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v47 = v34;
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_77_12(v35);
  *v36 = v37;
  OUTLINED_FUNCTION_156_0(v36);
  OUTLINED_FUNCTION_65_2();

  return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 88);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v10 + 64) = v13;
  OUTLINED_FUNCTION_0_104(v13, xmmword_42BF20);
  if (v11)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  else
  {
    v14 = *(v10 + 16);
  }

  *(v13 + 48) = v14;
  OUTLINED_FUNCTION_104_3();
  *(v13 + 72) = v15;
  *(v13 + 80) = 0xD000000000000014;
  *(v13 + 88) = v16;
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 32);
  *(v13 + 96) = v19;
  *(v13 + 120) = v18;
  *(v13 + 128) = 0x746E65746E69;
  v21 = OUTLINED_FUNCTION_137_2();
  if (v20)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  v22 = *(v10 + 56);
  *(v13 + 144) = v20;
  OUTLINED_FUNCTION_53_3();
  *(v13 + 168) = v23;
  *(v13 + 176) = v24;
  OUTLINED_FUNCTION_51_3();
  *(v13 + 184) = v25;
  *(v13 + 192) = v26;
  OUTLINED_FUNCTION_21_40();
  *(v13 + 216) = v28;
  *(v13 + 224) = v27;
  *(v13 + 232) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v29, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v30 = type metadata accessor for SpeakableString();
  v31 = OUTLINED_FUNCTION_58(v30);
  v32 = *(v10 + 56);
  if (v31 == 1)
  {

    outlined destroy of SpeakableString?(v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v13 + 240));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v33();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v46 = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 72) = v35;
  *v35 = v36;
  v35[1] = SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  OUTLINED_FUNCTION_65_2();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46);
}

void SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v15);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_27_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v18 = OUTLINED_FUNCTION_187(v17);
  OUTLINED_FUNCTION_0_104(v18, xmmword_42BF20);
  if (v12)
  {
    v14 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  v18[3].n128_u64[0] = v14;
  OUTLINED_FUNCTION_39_0();
  v18[4].n128_u64[1] = v19;
  v18[5].n128_u64[0] = 0xD000000000000014;
  v18[5].n128_u64[1] = v20;
  if (v8)
  {
    v10 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v18[6].n128_u64[0] = v10;
  OUTLINED_FUNCTION_29_29(v21);
  if (v6)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v22 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v18[9].n128_u64[1] = 0;
    v18[10].n128_u64[0] = 0;
  }

  v18[9].n128_u64[0] = v22;
  OUTLINED_FUNCTION_55_22();
  v18[10].n128_u64[1] = v23;
  v18[11].n128_u64[0] = v24;
  OUTLINED_FUNCTION_56_12();
  v18[11].n128_u64[1] = v25;
  v18[12].n128_u8[0] = v4 & 1;
  OUTLINED_FUNCTION_21_40();
  v18[13].n128_u64[1] = v26;
  v18[14].n128_u64[0] = v27;
  v18[14].n128_u64[1] = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v2, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v28);
  if (v29)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v18[16].n128_u64[1] = v2;
    __swift_allocate_boxed_opaque_existential_1(&v18[15]);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_47_15();
    v30();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_162_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_161_0(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_42BF10);
  if (v1)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
    v7 = v1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_18_2();
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
  }

  v5[3].n128_u64[0] = v7;
  OUTLINED_FUNCTION_10_67(v6);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v8 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v5[6].n128_u64[1] = 0;
    v5[7].n128_u64[0] = 0;
  }

  v5[6].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_172();
  v5[7].n128_u64[1] = v9;
  v5[8].n128_u64[0] = v10;
  v5[8].n128_u64[1] = v11;
  v5[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_184(v12);

  OUTLINED_FUNCTION_149(v3 + 20, 0x8000000000453CB0, v5);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0(v12);
  v10[6] = v13;
  OUTLINED_FUNCTION_1_106(v13, xmmword_42BF10);
  if (v11)
  {
    v14 = type metadata accessor for PhoneCallRecord(0);
    v15 = v11;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_14();
  }

  v16 = v10[4];
  OUTLINED_FUNCTION_14_52(v14, v15);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v17);
  v13[9].n128_u8[0] = v18;
  OUTLINED_FUNCTION_56_13(v19);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_22_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_44_2(v21);
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_60();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0(v12);
  v10[5] = v13;
  OUTLINED_FUNCTION_1_106(v13, xmmword_42BF10);
  if (v11)
  {
    v14 = type metadata accessor for PhoneCallRecord(0);
    v15 = v11;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_14();
  }

  v16 = v10[3];
  OUTLINED_FUNCTION_14_52(v14, v15);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v17);
  v13[9].n128_u8[0] = v18;
  OUTLINED_FUNCTION_56_13(v19);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_12(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_114_0(v21);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_199();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_161_0(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_42BF10);
  if (v1)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
    v7 = v1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_14_52(v6, v7);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v8 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v5[6].n128_u64[1] = 0;
    v5[7].n128_u64[0] = 0;
  }

  v5[6].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_198(v9, v10);
  v5[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_183(v11);

  OUTLINED_FUNCTION_204(v3 + 20);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_162_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_161_0(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_42BF10);
  if (v1)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
    v7 = v1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_18_2();
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
  }

  v5[3].n128_u64[0] = v7;
  OUTLINED_FUNCTION_10_67(v6);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v8 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v5[6].n128_u64[1] = 0;
    v5[7].n128_u64[0] = 0;
  }

  v5[6].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_172();
  v5[7].n128_u64[1] = v9;
  v5[8].n128_u64[0] = v10;
  v5[8].n128_u64[1] = v11;
  v5[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_184(v12);

  OUTLINED_FUNCTION_149(v3 + 25, 0x8000000000453D20, v5);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0(v12);
  v10[6] = v13;
  OUTLINED_FUNCTION_1_106(v13, xmmword_42BF10);
  if (v11)
  {
    v14 = type metadata accessor for PhoneCallRecord(0);
    v15 = v11;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_14();
  }

  v16 = v10[4];
  OUTLINED_FUNCTION_14_52(v14, v15);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v17);
  v13[9].n128_u8[0] = v18;
  OUTLINED_FUNCTION_56_13(v19);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_22_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_44_2(v21);
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_60();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0(v12);
  v10[5] = v13;
  OUTLINED_FUNCTION_1_106(v13, xmmword_42BF10);
  if (v11)
  {
    v14 = type metadata accessor for PhoneCallRecord(0);
    v15 = v11;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_14();
  }

  v16 = v10[3];
  OUTLINED_FUNCTION_14_52(v14, v15);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v17);
  v13[9].n128_u8[0] = v18;
  OUTLINED_FUNCTION_56_13(v19);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_12(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_114_0(v21);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_199();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_161_0(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_42BF10);
  if (v1)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
    v7 = v1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_14_52(v6, v7);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v8 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v5[6].n128_u64[1] = 0;
    v5[7].n128_u64[0] = 0;
  }

  v5[6].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_198(v9, v10);
  v5[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_183(v11);

  OUTLINED_FUNCTION_204(v3 + 25);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  *(v6 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v7, v8);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  *(v6 + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(v6 + 72) = v9;
  *(v6 + 80) = 0xD000000000000011;
  *(v6 + 88) = v10;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v11 = &type metadata for Double;
  }

  *(v6 + 96) = v1;
  OUTLINED_FUNCTION_8_66(v11);
  if (v0)
  {
    v12 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v13 = v0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_18_2();
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v13;
  *(v6 + 168) = v12;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11(0xD000000000000032, v1 | 0x8000000000000000);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  *(OUTLINED_FUNCTION_197(v14) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v15, v16);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v20 = *(v10 + 32);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 40);
  v11[12] = v20;
  OUTLINED_FUNCTION_8_66(v19);
  v22 = 0;
  if (v21)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 64) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_175(v23);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 72);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  *(OUTLINED_FUNCTION_46_15(v14) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v15, v16);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v20 = *(v10 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 32);
  v11[12] = v20;
  OUTLINED_FUNCTION_8_66(v19);
  v22 = 0;
  if (v21)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_22_19(v23);
  *v24 = v25;
  v24[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_94_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  *(v6 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v7, v8);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  *(v6 + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(v6 + 72) = v9;
  *(v6 + 80) = 0xD000000000000011;
  *(v6 + 88) = v10;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v11 = &type metadata for Double;
  }

  *(v6 + 96) = v1;
  OUTLINED_FUNCTION_29_29(v11);
  if (v0)
  {
    v12 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v13 = v0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_18_2();
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v13;
  *(v6 + 168) = v12;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.repeatVoicemailPause()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

void SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_66();
  v55 = v29;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_200();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v34);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_27_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v37 = OUTLINED_FUNCTION_186(v36);
  OUTLINED_FUNCTION_0_104(v37, xmmword_431D00);
  if (v25)
  {
    v28 = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
  }

  *(v37 + 48) = v28;
  OUTLINED_FUNCTION_39_0();
  *(v37 + 72) = v39;
  *(v37 + 80) = v38 + 1;
  *(v37 + 88) = v40;
  if (v27)
  {
    v26 = 0;
    *(v37 + 104) = 0;
    *(v37 + 112) = 0;
  }

  *(v37 + 96) = v26;
  OUTLINED_FUNCTION_71_8();
  *(v37 + 120) = v41;
  *(v37 + 128) = v42;
  *(v37 + 136) = 0xE600000000000000;
  if (v23)
  {
    type metadata accessor for SirikitDeviceState();
    v43 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v37 + 152) = 0;
    *(v37 + 160) = 0;
  }

  *(v37 + 144) = v43;
  OUTLINED_FUNCTION_14_8();
  *(v37 + 168) = v44;
  *(v37 + 176) = v45;
  *(v37 + 184) = 0xE600000000000000;
  if (v33)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v46 = v33;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v37 + 200) = 0;
    *(v37 + 208) = 0;
  }

  *(v37 + 192) = v46;
  OUTLINED_FUNCTION_55_22();
  *(v37 + 216) = v47;
  *(v37 + 224) = v48;
  OUTLINED_FUNCTION_56_12();
  *(v37 + 232) = v49;
  *(v37 + 240) = v31 & 1;
  OUTLINED_FUNCTION_48_2();
  *(v37 + 264) = &type metadata for Bool;
  *(v37 + 272) = v50;
  *(v37 + 280) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v55, v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v51 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v51);
  if (v52)
  {

    outlined destroy of SpeakableString?(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v37 + 288) = 0u;
    *(v37 + 304) = 0u;
  }

  else
  {
    *(v37 + 312) = v25;
    __swift_allocate_boxed_opaque_existential_1((v37 + 288));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_47_15();
    v53();
  }

  OUTLINED_FUNCTION_39_0();
  *(v37 + 320) = 0xD000000000000013;
  *(v37 + 328) = v54;
  *(v37 + 360) = &type metadata for Bool;
  *(v37 + 336) = a21 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 107) = v3;
  OUTLINED_FUNCTION_157_0(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  *(v1 + 72) = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

uint64_t SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 104);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_186(v13);
  v15 = OUTLINED_FUNCTION_193(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_431D00);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  else
  {
    v16 = *(v10 + 24);
  }

  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 72) = v17;
  *(v11 + 80) = 0xD000000000000014;
  *(v11 + 88) = v18;
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v20 = &type metadata for Double;
  }

  v21 = *(v10 + 40);
  OUTLINED_FUNCTION_36_26(v20);
  if (v21)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v22 = *(v10 + 48);
  *(v11 + 144) = v21;
  OUTLINED_FUNCTION_14_8();
  v25 = OUTLINED_FUNCTION_98_5(v23, v24);
  if (v22)
  {
    v25 = type metadata accessor for PhoneSearchCallHistoryIntent(v25);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  OUTLINED_FUNCTION_20_40(v25);
  *(v11 + 240) = v26;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = &type metadata for Bool;
  *(v11 + 272) = v27;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v28);
  v29 = type metadata accessor for SpeakableString();
  v30 = OUTLINED_FUNCTION_69_12(v29);
  v31 = *(v10 + 72);
  if (v30 == 1)
  {

    outlined destroy of SpeakableString?(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v32();
  }

  OUTLINED_FUNCTION_119_3();
  *(v11 + 320) = 0xD000000000000013;
  *(v11 + 328) = v33;
  *(v11 + 360) = &type metadata for Bool;
  *(v11 + 336) = v34;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 88) = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_109_3(v35);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v41(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 96);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_186(v13);
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_431D00);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  else
  {
    v16 = *(v10 + 16);
  }

  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 72) = v17;
  *(v11 + 80) = 0xD000000000000014;
  *(v11 + 88) = v18;
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v20 = &type metadata for Double;
  }

  v21 = *(v10 + 32);
  OUTLINED_FUNCTION_36_26(v20);
  if (v21)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v22 = *(v10 + 40);
  *(v11 + 144) = v21;
  OUTLINED_FUNCTION_14_8();
  v25 = OUTLINED_FUNCTION_98_5(v23, v24);
  if (v22)
  {
    v25 = type metadata accessor for PhoneSearchCallHistoryIntent(v25);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  OUTLINED_FUNCTION_20_40(v25);
  *(v11 + 240) = v26;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = &type metadata for Bool;
  *(v11 + 272) = v27;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v28);
  v29 = type metadata accessor for SpeakableString();
  v30 = OUTLINED_FUNCTION_69_12(v29);
  v31 = *(v10 + 64);
  if (v30 == 1)
  {

    outlined destroy of SpeakableString?(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v32();
  }

  OUTLINED_FUNCTION_119_3();
  *(v11 + 320) = 0xD000000000000013;
  *(v11 + 328) = v33;
  *(v11 + 360) = &type metadata for Bool;
  *(v11 + 336) = v34;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_77_12(v35);
  *v36 = v37;
  OUTLINED_FUNCTION_156_0(v36);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  *(v9 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v10, v11, v12, v13, v14, v15, v16, v17);
  *(v9 + 96) = v18;
  *(v9 + 16) = v19;
  *(v9 + 24) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v22, v23, v24);
}

void SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_133_2(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v30);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_2_48();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v33 = OUTLINED_FUNCTION_186(v32);
  OUTLINED_FUNCTION_0_104(v33, xmmword_431D00);
  if (v22)
  {
    v21 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  *(v33 + 48) = v21;
  OUTLINED_FUNCTION_39_0();
  *(v33 + 72) = v34;
  *(v33 + 80) = 0xD000000000000014;
  *(v33 + 88) = v35;
  if (v28)
  {
    v27 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  *(v33 + 96) = v27;
  OUTLINED_FUNCTION_71_8();
  *(v33 + 120) = v36;
  *(v33 + 128) = v37;
  *(v33 + 136) = 0xE600000000000000;
  if (v23)
  {
    type metadata accessor for SirikitDeviceState();
    v38 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v33 + 152) = 0;
    *(v33 + 160) = 0;
  }

  *(v33 + 144) = v38;
  OUTLINED_FUNCTION_14_8();
  *(v33 + 168) = v39;
  *(v33 + 176) = v40;
  *(v33 + 184) = 0xE600000000000000;
  if (v24)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v41 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v33 + 200) = 0;
    *(v33 + 208) = 0;
  }

  *(v33 + 192) = v41;
  OUTLINED_FUNCTION_55_22();
  *(v33 + 216) = v42;
  *(v33 + 224) = v43;
  OUTLINED_FUNCTION_56_12();
  *(v33 + 232) = v44;
  *(v33 + 240) = v26 & 1;
  OUTLINED_FUNCTION_48_2();
  *(v33 + 264) = &type metadata for Bool;
  *(v33 + 272) = v45;
  *(v33 + 280) = 0xE700000000000000;
  v46 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v46, v47, v48, v49);
  v50 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v25);
  if (v51)
  {

    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v33 + 288) = 0u;
    *(v33 + 304) = 0u;
  }

  else
  {
    *(v33 + 312) = v50;
    __swift_allocate_boxed_opaque_existential_1((v33 + 288));
    OUTLINED_FUNCTION_6_0();
    (*(v52 + 32))();
  }

  OUTLINED_FUNCTION_39_0();
  *(v33 + 320) = 0xD000000000000013;
  *(v33 + 328) = v53;
  *(v33 + 360) = &type metadata for Bool;
  *(v33 + 336) = a21 & 1;
  OUTLINED_FUNCTION_205(0xD000000000000026);

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.unsupportedCallTypes()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.errorNoTargetCall();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

uint64_t SearchCallHistoryCATs.unsupportedDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(40);
}

uint64_t SearchCallHistoryCATs.unsupportedRecipient()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_161_0(v8);
  v10 = OUTLINED_FUNCTION_27_33(v9, xmmword_42BF10);
  v10[3].n128_u8[0] = v7;
  v11 = OUTLINED_FUNCTION_41_31(v10, &type metadata for Bool);
  *(v11 + 96) = v5;
  *(OUTLINED_FUNCTION_52_19(v11, v12) + 144) = v3;
  OUTLINED_FUNCTION_39_0();
  v13[21] = v14;
  v13[22] = 0xD000000000000010;
  v13[23] = v15;
  if (v1)
  {
    v16 = type metadata accessor for DialogPerson();
    v17 = v1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_2();
    v9[12].n128_u64[1] = 0;
    v9[13].n128_u64[0] = 0;
  }

  v9[12].n128_u64[0] = v17;
  v9[13].n128_u64[1] = v16;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11(0xD00000000000002DLL, v3 | 0x8000000000000000);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 66) = a4;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  v13 = *(v10 + 66);
  v14 = *(v10 + 65);
  v15 = *(v10 + 64);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_161_0(v16);
  v18 = OUTLINED_FUNCTION_50_0(v17);
  v19 = OUTLINED_FUNCTION_27_33(v18, xmmword_42BF10);
  v19[3].n128_u8[0] = v15;
  v20 = OUTLINED_FUNCTION_41_31(v19, &type metadata for Bool);
  *(v20 + 96) = v14;
  *(OUTLINED_FUNCTION_52_19(v20, v21) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v22[21] = v23;
  v22[22] = 0xD000000000000010;
  v22[23] = v24;
  v25 = 0;
  if (v12)
  {
    v25 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[25] = 0;
    v11[26] = 0;
  }

  v11[24] = v12;
  v11[27] = v25;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_16_12(v26);
  *v27 = v28;
  OUTLINED_FUNCTION_24(v27);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v33(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = *(v10 + 58);
  v14 = *(v10 + 57);
  v15 = *(v10 + 56);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_161_0(v16);
  v18 = OUTLINED_FUNCTION_51(v17);
  v19 = OUTLINED_FUNCTION_27_33(v18, xmmword_42BF10);
  v19[3].n128_u8[0] = v15;
  v20 = OUTLINED_FUNCTION_41_31(v19, &type metadata for Bool);
  *(v20 + 96) = v14;
  *(OUTLINED_FUNCTION_52_19(v20, v21) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v22[21] = v23;
  v22[22] = 0xD000000000000010;
  v22[23] = v24;
  v25 = 0;
  if (v12)
  {
    v25 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[25] = 0;
    v11[26] = 0;
  }

  v11[24] = v12;
  v11[27] = v25;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_76_9(v26);
  *v27 = v28;
  OUTLINED_FUNCTION_39(v27);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = v4;
  *(v5 + 58) = a3;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_161_0(v8);
  v10 = OUTLINED_FUNCTION_27_33(v9, xmmword_42BF10);
  v10[3].n128_u8[0] = v7;
  v11 = OUTLINED_FUNCTION_41_31(v10, &type metadata for Bool);
  *(v11 + 96) = v5;
  *(OUTLINED_FUNCTION_52_19(v11, v12) + 144) = v3;
  OUTLINED_FUNCTION_39_0();
  v13[21] = v14;
  v13[22] = 0xD000000000000010;
  v13[23] = v15;
  if (v1)
  {
    v16 = type metadata accessor for DialogPerson();
    v17 = v1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_2();
    v9[12].n128_u64[1] = 0;
    v9[13].n128_u64[0] = 0;
  }

  v9[12].n128_u64[0] = v17;
  v9[13].n128_u64[1] = v16;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_12_6(v3, xmmword_424FD0);
  if (v0)
  {
    v4 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v4, v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0(35, v1 | 0x8000000000000000);
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  OUTLINED_FUNCTION_12_6(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_24(v8);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_12_6(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(35);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v3, v4);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180(35);
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.visualCatText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(31);
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  *(v5 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v5) + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(OUTLINED_FUNCTION_188(v6, v7) + 96) = v1;
  OUTLINED_FUNCTION_149(v8 | 0x11, 0x8000000000454440, v5);
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v3) + 48) = v1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_167(v4, v5);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v12 = v6;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_76_9(v7);
  *v8 = v9;
  v8[1] = SearchCallHistoryCATs.offerToContinueReading(isLastPage:);
  v10 = *(v0 + 16);

  return v12(v10, v1 | 0x11, 0x8000000000454440, v3);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v3) + 48) = v1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_167(v4, v5);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v10 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);

  return v10(v1 | 0x11, 0x8000000000454440, v3);
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  *(v5 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v5) + 48) = a1;
  OUTLINED_FUNCTION_39_0();
  *(OUTLINED_FUNCTION_188(v6, v7) + 96) = a2;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *(v1 + 16) = xmmword_424FD0;
  v2 = OUTLINED_FUNCTION_3_98(v1);
  OUTLINED_FUNCTION_182(v2, &type metadata for Bool);
  OUTLINED_FUNCTION_78_0(48, v3);
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_3_98(v3);
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_76_9(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_134_0(v7);
  OUTLINED_FUNCTION_174();

  return v9();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_3_98(v3);
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_135_1(v6);
  v7 = OUTLINED_FUNCTION_34_21(48);

  return v8(v7);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *(v1 + 16) = xmmword_424FD0;
  v2 = OUTLINED_FUNCTION_3_98(v1);
  OUTLINED_FUNCTION_138_2(v2, &type metadata for Bool);
  OUTLINED_FUNCTION_180(48);
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.voiceMailPromptToPlay()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(39);
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = OUTLINED_FUNCTION_22_30(v9, xmmword_426980);
  v10[3].n128_u8[0] = v7;
  v11 = OUTLINED_FUNCTION_26_32(v10, &type metadata for Bool);
  *(v11 + 96) = v5;
  OUTLINED_FUNCTION_39_24(v11, v12);
  if (v1)
  {
    v3 = 0;
    v13 = 0;
    v9[9].n128_u64[1] = 0;
    v9[10].n128_u64[0] = 0;
  }

  else
  {
    v13 = &type metadata for Double;
  }

  v9[9].n128_u64[0] = v3;
  v9[10].n128_u64[1] = v13;
  OUTLINED_FUNCTION_78_0(54, 0x8000000000454480);
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 66);
  v2 = *(v0 + 65);
  v3 = *(v0 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  *(v0 + 40) = v5;
  v6 = OUTLINED_FUNCTION_22_30(v5, xmmword_426980);
  v6[3].n128_u8[0] = v3;
  v7 = OUTLINED_FUNCTION_26_32(v6, &type metadata for Bool);
  *(v7 + 96) = v2;
  OUTLINED_FUNCTION_39_24(v7, v8);
  if (v1)
  {
    OUTLINED_FUNCTION_160_0();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = &type metadata for Double;
  }

  v5[9].n128_u64[0] = v9;
  v5[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v17 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_12(v12);
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_24(v13);

  return v17(v15, 0xD000000000000036, 0x8000000000454480, v5);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  *(v0 + 32) = v5;
  v6 = OUTLINED_FUNCTION_22_30(v5, xmmword_426980);
  v6[3].n128_u8[0] = v3;
  v7 = OUTLINED_FUNCTION_26_32(v6, &type metadata for Bool);
  *(v7 + 96) = v2;
  OUTLINED_FUNCTION_39_24(v7, v8);
  if (v1)
  {
    OUTLINED_FUNCTION_160_0();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = &type metadata for Double;
  }

  v5[9].n128_u64[0] = v9;
  v5[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v16 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_117(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_39(v13);

  return v16(0xD000000000000036, 0x8000000000454480, v5);
}

{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = OUTLINED_FUNCTION_22_30(v9, xmmword_426980);
  v10[3].n128_u8[0] = v7;
  v11 = OUTLINED_FUNCTION_26_32(v10, &type metadata for Bool);
  *(v11 + 96) = v5;
  OUTLINED_FUNCTION_39_24(v11, v12);
  if (v1)
  {
    v3 = 0;
    v13 = 0;
    v9[9].n128_u64[1] = 0;
    v9[10].n128_u64[0] = 0;
  }

  else
  {
    v13 = &type metadata for Double;
  }

  v9[9].n128_u64[0] = v3;
  v9[10].n128_u64[1] = v13;
  OUTLINED_FUNCTION_180(54);
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)(char a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

void SearchCallHistoryCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for CATOption();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v31);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_129_2();
  outlined init with copy of SpeakableString?(v26, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v28 + 16))(v30, v24, v27);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v28 + 8))(v24, v27);
  outlined destroy of SpeakableString?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for SearchCallHistoryCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryCATs;
  if (!type metadata singleton initialization cache for SearchCallHistoryCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryCATs.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_32@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  strcpy((result + 80), "isLastWindow");
  *(result + 93) = 0;
  *(result + 94) = -5120;
  return result;
}

void OUTLINED_FUNCTION_29_29(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v1[16] = 0x746E65746E69;
  v1[17] = 0xE600000000000000;
}

uint64_t OUTLINED_FUNCTION_36_26@<X0>(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x656369766564;
  v2[17] = 0xE600000000000000;
  return 0;
}

__n128 *OUTLINED_FUNCTION_38_25(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6953776F646E6977;
  result[2].n128_u64[1] = 0xEA0000000000657ALL;
  return result;
}

void *OUTLINED_FUNCTION_39_24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[15] = a2;
  result[16] = 0x6953776F646E6977;
  result[17] = 0xEA0000000000657ALL;
  return result;
}

void OUTLINED_FUNCTION_56_13(char a1@<W8>)
{
  *(v3 + 168) = v2;
  *(v3 + 176) = v4;
  *(v3 + 184) = (v1 - 32) | 0x8000000000000000;
  *(v3 + 216) = v2;
  *(v3 + 192) = a1;
}

void OUTLINED_FUNCTION_72_10()
{
  *(v3 + 192) = v0;
  *(v3 + 216) = v2;
  *(v3 + 224) = v4;
  *(v3 + 232) = (v1 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 107) = v8;
  *(v9 + 106) = a8;
  *(v9 + 40) = a6;
  *(v9 + 48) = a7;
  *(v9 + 105) = a5;
  *(v9 + 104) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  *(result + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_157_0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 106) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 105) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 104) = a3;
  *(v8 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_161_0(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_165_0()
{
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_167@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  *(result + 80) = 0xD000000000000020;
  *(result + 88) = v2;
  *(result + 120) = a2;
  *(result + 96) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_168()
{
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of SpeakableString?(a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_171()
{
}

uint64_t OUTLINED_FUNCTION_177@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[9] = result;
  v2[10] = a2;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OUTLINED_FUNCTION_182@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  *(result + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_183@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v4;
  *(v3 + 184) = v1;
  *(v3 + 216) = a1;
  *(v3 + 192) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_184@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v4;
  *(v3 + 184) = v1;
  *(v3 + 216) = a1;
  *(v3 + 192) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_185(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_186(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_187(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_188@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[9] = a2;
  result[10] = 0xD000000000000020;
  result[11] = v2;
  result[15] = a2;
  return result;
}

void OUTLINED_FUNCTION_189(uint64_t a1@<X8>)
{
  *(v4 + 360) = a1;
  *(v4 + 368) = v5 + 16;
  *(v4 + 376) = v1;
  *(v4 + 408) = v3;
  *(v4 + 384) = v2;
}

void OUTLINED_FUNCTION_195(char a1@<W8>)
{
  *(v3 + 360) = v2;
  *(v3 + 368) = v4 + 2;
  *(v3 + 376) = v1;
  *(v3 + 408) = v2;
  *(v3 + 384) = a1;
}

uint64_t OUTLINED_FUNCTION_198@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[15] = result;
  v2[16] = 0xD000000000000013;
  v2[17] = a2;
  return result;
}

double OUTLINED_FUNCTION_202()
{
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_204(uint64_t a1)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OUTLINED_FUNCTION_205(uint64_t a1)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t *OUTLINED_FUNCTION_206()
{
  *(v1 + 264) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 240));
}

void OUTLINED_FUNCTION_216(uint64_t a1@<X8>)
{
  v3[21] = v1;
  v3[22] = v2 + 1;
  v3[23] = a1;
}

void OUTLINED_FUNCTION_217(char a1@<W8>)
{
  *(v3 + 216) = v2;
  *(v3 + 224) = v4;
  *(v3 + 232) = v1;
  *(v3 + 264) = v2;
  *(v3 + 240) = a1;
}

void OUTLINED_FUNCTION_220(uint64_t a1@<X8>)
{
  v2[21] = v1;
  v2[22] = v3 + 1;
  v2[23] = a1;
}

uint64_t OUTLINED_FUNCTION_222(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_223@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[33] = a1;
  v2[34] = a2;
  v2[35] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_224(uint64_t result)
{
  v3[15] = result;
  v3[16] = v2;
  v3[17] = v1;
  return result;
}

double OUTLINED_FUNCTION_225()
{
  result = 0.0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_228(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_229()
{
  *(v1 + 312) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 288));
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::Properties_optional __swiftcall SearchCallHistoryCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v1;
  }
}

unint64_t SearchCallHistoryCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 12:
    case 22:
      result = 0xD00000000000002CLL;
      break;
    case 2:
    case 4:
      result = 0xD000000000000022;
      break;
    case 3:
    case 13:
    case 15:
      result = 0xD000000000000024;
      break;
    case 5:
    case 6:
    case 35:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000037;
      break;
    case 8:
    case 38:
      result = 0xD000000000000027;
      break;
    case 9:
    case 36:
      result = 0xD000000000000031;
      break;
    case 10:
    case 16:
      result = 0xD000000000000021;
      break;
    case 11:
    case 21:
    case 31:
      result = 0xD000000000000028;
      break;
    case 14:
    case 25:
    case 28:
    case 29:
    case 30:
    case 32:
      result = 0xD000000000000026;
      break;
    case 17:
      result = 0xD000000000000020;
      break;
    case 18:
    case 24:
      result = 0xD000000000000033;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD00000000000002FLL;
      break;
    case 23:
      result = 0xD00000000000002ALL;
      break;
    case 26:
      result = 0xD00000000000002BLL;
      break;
    case 27:
      result = 0xD000000000000032;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    case 34:
      result = 0xD000000000000023;
      break;
    case 37:
      result = 0xD000000000000030;
      break;
    case 39:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetail(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetail(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(39);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

BOOL SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetailAsLabels(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetailAsLabels(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(39);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayName(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayName(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(44);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

BOOL SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayNameAsLabels(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayNameAsLabels(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(44);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmCallTypes(callTypeToConfirm:callTypesCount:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_164_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v5 = OUTLINED_FUNCTION_46_15(v4);
  *(v5 + 16) = xmmword_424FF0;
  v6 = OUTLINED_FUNCTION_0_8(v5, "callTypeToConfirm");
  OUTLINED_FUNCTION_48_1(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v8);
  if (v9)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_80_9();
  if (v11)
  {
    OUTLINED_FUNCTION_160_0();
    v2[13] = 0;
    v2[14] = 0;
  }

  else
  {
    v12 = *(v1 + 24);
    v13 = &type metadata for Double;
  }

  v2[12] = v12;
  v2[15] = v13;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_114_0(v14);
  OUTLINED_FUNCTION_65_1();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmCallTypesDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

void SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_151_1();
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmCallTypesDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmCallTypesDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t SearchCallHistoryCATsSimple.confirmCallTypesAsLabels(callTypeToConfirm:callTypesCount:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_164_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v6 = OUTLINED_FUNCTION_46_15(v5);
  *(v6 + 16) = xmmword_424FF0;
  v7 = OUTLINED_FUNCTION_0_8(v6, "callTypeToConfirm");
  OUTLINED_FUNCTION_48_1(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v9);
  if (v10)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_80_9();
  if (v12)
  {
    OUTLINED_FUNCTION_160_0();
    v3[13] = 0;
    v3[14] = 0;
  }

  else
  {
    v13 = *(v2 + 24);
    v14 = &type metadata for Double;
  }

  v3[12] = v13;
  v3[15] = v14;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v15);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v16;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_65_1();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_51(v14);
  OUTLINED_FUNCTION_122_2(v15, "dateCreatedToConfirm", xmmword_424FF0);
  if (v10)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  *(v12 + 48) = v10;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 88) = v16;
  *(v12 + 120) = &type metadata for Bool;
  *(v12 + 96) = v17;
  OUTLINED_FUNCTION_218();
  *(v12 + 72) = v18;
  *(v12 + 80) = 17;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 40) = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_39(v19);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmDateCreatedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmDateCreatedDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreatedAsLabels(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreatedAsLabels(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v14 = OUTLINED_FUNCTION_51(v13);
  OUTLINED_FUNCTION_122_2(v14, "dateCreatedToConfirm", xmmword_424FF0);
  if (v10)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  *(v11 + 48) = v10;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 88) = v15;
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v16;
  OUTLINED_FUNCTION_218();
  *(v11 + 72) = v17;
  *(v11 + 80) = 17;

  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v18);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v19;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v25(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipient(recipientToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipient(recipientToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_35_1(v13);
  v15 = OUTLINED_FUNCTION_51(v14);
  *(v15 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v15, "recipientToConfirm");
  v16 = 0;
  if (v10)
  {
    v16 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v16);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 40) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_39(v17);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x31676F6C616964;
  }

  else
  {
    return 0xD000000000000014;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmRecipientDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmRecipientDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipientAsLabels(recipientToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipientAsLabels(recipientToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1(v12);
  v14 = OUTLINED_FUNCTION_51(v13);
  *(v14 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v14, "recipientToConfirm");
  v15 = 0;
  if (v10)
  {
    v15 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v15);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v16);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v17;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(OUTLINED_FUNCTION_51(v4) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v7 = OUTLINED_FUNCTION_73_9(v5, v6);
  if (v2)
  {
    v7 = type metadata accessor for PhoneSearchCallHistoryIntent(v7);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v7);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_117(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_30(v9);
  OUTLINED_FUNCTION_43_4(31);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x32676F6C616964;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmUnseenDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmUnseenDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseenAsLabels(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseenAsLabels(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(OUTLINED_FUNCTION_51(v4) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v7 = OUTLINED_FUNCTION_73_9(v5, v6);
  if (v2)
  {
    v7 = type metadata accessor for PhoneSearchCallHistoryIntent(v7);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v7);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v8);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v9;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(31);
  OUTLINED_FUNCTION_65_1();

  return v15(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCodeAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(31);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCodeAppConfigurationRequired(appName:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_164_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v5 = OUTLINED_FUNCTION_46_15(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v8);
  if (v9)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = *(v1 + 24);
  OUTLINED_FUNCTION_14_8();
  v2[10] = v12;
  v2[11] = 0xE600000000000000;
  v13 = 0;
  if (v11)
  {
    v13 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v2[13] = 0;
    v2[14] = 0;
  }

  v2[12] = v11;
  v2[15] = v13;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v14 = swift_task_alloc();
  *(v1 + 56) = v14;
  *v14 = v1;
  OUTLINED_FUNCTION_114_0(v14);
  OUTLINED_FUNCTION_43_4(55);
  OUTLINED_FUNCTION_65_1();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCodeAppConfigurationRequiredAsLabels(appName:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_164_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v5 = OUTLINED_FUNCTION_46_15(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v8);
  if (v9)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = *(v1 + 24);
  OUTLINED_FUNCTION_14_8();
  v2[10] = v12;
  v2[11] = 0xE600000000000000;
  v13 = 0;
  if (v11)
  {
    v13 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v2[13] = 0;
    v2[14] = 0;
  }

  v2[12] = v11;
  v2[15] = v13;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v14);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds();
  OUTLINED_FUNCTION_9();
  *v11 = v15;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(55);
  OUTLINED_FUNCTION_65_1();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_168_0(v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  *(v12 + 48) = v16;
  OUTLINED_FUNCTION_104_3();
  *(v12 + 72) = v17;
  *(v12 + 80) = 0xD000000000000014;
  *(v12 + 88) = v18;
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v20 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_25_33(v20);
  if (v10)
  {
    v21 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v22 = OUTLINED_FUNCTION_24_36(v21);
  if (v13)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v22);
  *(v12 + 240) = v23;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = v25;
  *(v12 + 272) = v24;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v27);
  OUTLINED_FUNCTION_160_1();
  if (v28)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v29();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_77_12(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_156_0(v31);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_168_0(v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  *(v12 + 48) = v16;
  OUTLINED_FUNCTION_104_3();
  *(v12 + 72) = v17;
  *(v12 + 80) = 0xD000000000000014;
  *(v12 + 88) = v18;
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v20 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_25_33(v20);
  if (v10)
  {
    v21 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v22 = OUTLINED_FUNCTION_24_36(v21);
  if (v13)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v22);
  *(v12 + 240) = v23;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = v25;
  *(v12 + 272) = v24;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v27);
  OUTLINED_FUNCTION_160_1();
  if (v28)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v29();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v30 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v30);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v31;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v37(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_46_15(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v20 = type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v20);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 56) = v21;
  *v21 = v22;
  v21[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseMissedCallAsLabels(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_46_15(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v20 = type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v20);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v21 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v21);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v22;
  v10[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToCallBack()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.OfferToCallBackDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.OfferToCallBackDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.OfferToCallBackDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToCallBackAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(33);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReading(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReading(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_3_98(v3);
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_135_1(v6);
  v7 = OUTLINED_FUNCTION_34_21(40);

  return v8(v7);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToContinueReadingDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToContinueReadingDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReadingAsLabels(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReadingAsLabels(isLastPage:)()
{
  OUTLINED_FUNCTION_75_6();
  v13 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  v6 = OUTLINED_FUNCTION_3_98(v5);
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 48) = v3;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v1 + 24) = v5;
  *(v5 + 16) = v7;
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v8);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v9;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  v10 = OUTLINED_FUNCTION_97_4(40);

  return v11(v10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecords(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecords(isLastWindow:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_74_0();
  v6 = OUTLINED_FUNCTION_144_1(v4, v5);
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v7;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_135_1(v8);
  v9 = OUTLINED_FUNCTION_34_21(44);

  return v10(v9);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToReadMoreCallRecordsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToReadMoreCallRecordsDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecordsAsLabels(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecordsAsLabels(isLastWindow:)()
{
  OUTLINED_FUNCTION_75_6();
  v15 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  OUTLINED_FUNCTION_74_0();
  v8 = OUTLINED_FUNCTION_144_1(v6, v7);
  *(v8 + 72) = &type metadata for Bool;
  *(v8 + 48) = v3;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v1 + 24) = v5;
  *(v5 + 16) = v9;
  v10 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v10);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v11;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  v12 = OUTLINED_FUNCTION_97_4(44);

  return v13(v12);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForCallTypes()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForCallTypesAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(36);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForDateCreatedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForRecipient()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.PromptForRecipientDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForRecipientDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.PromptForRecipientDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForRecipientAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(36);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForUnseen()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.PromptForUnseenDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForUnseenDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.PromptForUnseenDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForUnseenAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(33);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a4;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v17 = v10[3];
  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v18, v19);
  *(v11 + 96) = v20;
  OUTLINED_FUNCTION_14_8();
  v22 = OUTLINED_FUNCTION_171_0(v21);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  *(v11 + 144) = v17;
  OUTLINED_FUNCTION_30_2();
  *(v11 + 168) = v23;
  *(v11 + 176) = v24;
  *(v11 + 184) = v25;
  *(v11 + 192) = v26;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v27);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[6] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_114_0(v28);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadCallRecordDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadCallRecordDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadCallRecordDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readCallRecordAsLabels(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a4;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readCallRecordAsLabels(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v17 = v10[3];
  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v18, v19);
  *(v11 + 96) = v20;
  OUTLINED_FUNCTION_14_8();
  v22 = OUTLINED_FUNCTION_171_0(v21);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  *(v11 + 144) = v17;
  OUTLINED_FUNCTION_30_2();
  *(v11 + 168) = v23;
  *(v11 + 176) = v24;
  *(v11 + 184) = v25;
  *(v11 + 192) = v26;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v27);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v28 = swift_task_alloc();
  v10[6] = v28;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v28 = v29;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_60();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_46_15(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v20 = type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v20);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 56) = v21;
  *v21 = v22;
  v21[1] = SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMissedCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_46_15(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v20 = type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v20);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v21 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v21);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v22;
  v10[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  v5 = *(v1 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_185(v6);
  *(v1 + 72) = v7;
  OUTLINED_FUNCTION_38_25(v7, xmmword_43CD90);
  if (v5)
  {
    OUTLINED_FUNCTION_5_15();
    v7[3].n128_u64[1] = 0;
    v7[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_135_2();
  v7[3].n128_u64[0] = v8;
  OUTLINED_FUNCTION_119_3();
  v7[4].n128_u64[1] = v9;
  v7[5].n128_u64[0] = v4;
  v7[5].n128_u64[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v7[6].n128_u64[0] = v3;
  v12 = OUTLINED_FUNCTION_163_1(v11, "callRecordsItem2");
  v7[10].n128_u64[1] = v12;
  v7[11].n128_u64[0] = v4;
  v7[11].n128_u64[1] = 0x8000000000460EA0;
  v7[12].n128_u64[0] = v2;
  v7[13].n128_u64[1] = v12;
  v7[14].n128_u64[0] = v4;
  v7[14].n128_u64[1] = 0x8000000000460EC0;
  v7[15].n128_u64[0] = v5;
  OUTLINED_FUNCTION_14_8();
  v15 = OUTLINED_FUNCTION_223(v13, v14);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v15);
  }

  else
  {
    v7[18].n128_u64[1] = 0;
    v7[19].n128_u64[0] = 0;
  }

  v7[18].n128_u64[0] = v0;
  OUTLINED_FUNCTION_13_10();
  v7[19].n128_u64[1] = v16;
  v7[20].n128_u64[0] = v4 + 3;
  v7[20].n128_u64[1] = v17;
  v7[21].n128_u8[0] = v18;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v19);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_77_12(v20);
  *v21 = v22;
  v21[1] = SearchCallHistoryCATsSimple.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);

  return v24(v4 + 25, 0x8000000000453C20, v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadMultipleCallRecordsDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadMultipleCallRecordsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadMultipleCallRecordsDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.rawValue.getter();
  *v0 = 0x61696423316C6C61;
  v0[1] = v2;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMultipleCallRecordsAsLabels(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  v5 = *(v1 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_185(v6);
  *(v1 + 72) = v7;
  OUTLINED_FUNCTION_38_25(v7, xmmword_43CD90);
  if (v5)
  {
    OUTLINED_FUNCTION_5_15();
    v7[3].n128_u64[1] = 0;
    v7[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_135_2();
  v7[3].n128_u64[0] = v8;
  OUTLINED_FUNCTION_119_3();
  v7[4].n128_u64[1] = v9;
  v7[5].n128_u64[0] = v4;
  v7[5].n128_u64[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v7[6].n128_u64[0] = v3;
  v12 = OUTLINED_FUNCTION_163_1(v11, "callRecordsItem2");
  v7[10].n128_u64[1] = v12;
  v7[11].n128_u64[0] = v4;
  v7[11].n128_u64[1] = 0x8000000000460EA0;
  v7[12].n128_u64[0] = v2;
  v7[13].n128_u64[1] = v12;
  v7[14].n128_u64[0] = v4;
  v7[14].n128_u64[1] = 0x8000000000460EC0;
  v7[15].n128_u64[0] = v5;
  OUTLINED_FUNCTION_14_8();
  v15 = OUTLINED_FUNCTION_223(v13, v14);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v15);
  }

  else
  {
    v7[18].n128_u64[1] = 0;
    v7[19].n128_u64[0] = 0;
  }

  v7[18].n128_u64[0] = v0;
  OUTLINED_FUNCTION_13_10();
  v7[19].n128_u64[1] = v16;
  v7[20].n128_u64[0] = v4 + 3;
  v7[20].n128_u64[1] = v17;
  v7[21].n128_u8[0] = v18;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v19);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v20 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v20);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v21;
  v0[1] = SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);
  OUTLINED_FUNCTION_19_4();

  return v23();
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v10 + 101) = a10;
  *(v10 + 100) = v11;
  OUTLINED_FUNCTION_14_53(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  *(v10 + 64) = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v22, v23, v24);
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_4441E0);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_8_67(v17);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v18);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v21);
  OUTLINED_FUNCTION_123_3();
  if (v22)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v23();
  }

  OUTLINED_FUNCTION_5_82();
  if (v24)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v25 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v25);
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v27 = *(v12 + 48);
  }

  v13[42] = v27;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v28);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_77_12(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_156_0(v30);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewOrSavedVoiceMailRecordDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewOrSavedVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewOrSavedVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v10 + 101) = a10;
  *(v10 + 100) = v11;
  OUTLINED_FUNCTION_14_53(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  *(v10 + 64) = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v22, v23, v24);
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_4441E0);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_8_67(v17);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v18);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v21);
  OUTLINED_FUNCTION_123_3();
  if (v22)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v23();
  }

  OUTLINED_FUNCTION_5_82();
  if (v24)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v25 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v25);
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v27 = *(v12 + 48);
  }

  v13[42] = v27;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v28);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v29 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v29);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v30;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v36(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_53(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v19, v20, v21);
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v15 = *(v12 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_186(v16);
  v18 = OUTLINED_FUNCTION_192(v17);
  OUTLINED_FUNCTION_1_106(v18, xmmword_431D00);
  v19 = 0;
  if (v15)
  {
    v19 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  v20 = OUTLINED_FUNCTION_8_67(v19);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v21);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v13 + 168) = v22;
  *(v13 + 176) = v14 + 1;
  *(v13 + 184) = v23;
  *(v13 + 192) = v24;
  OUTLINED_FUNCTION_119_3();
  *(v13 + 216) = v25;
  *(v13 + 224) = v14;
  *(v13 + 232) = v26;
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v28);
  OUTLINED_FUNCTION_123_3();
  if (v29)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v30();
  }

  OUTLINED_FUNCTION_5_82();
  if (v31)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 296) = 0;
    *(v13 + 304) = 0;
  }

  else
  {
    v32 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v32);
  if (v33)
  {
    OUTLINED_FUNCTION_160_0();
    *(v13 + 344) = 0;
    *(v13 + 352) = 0;
  }

  else
  {
    v34 = *(v12 + 48);
    v35 = &type metadata for Double;
  }

  *(v13 + 336) = v34;
  *(v13 + 360) = v35;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v36 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_77_12(v36);
  *v37 = v38;
  OUTLINED_FUNCTION_156_0(v37);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_53(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v19, v20, v21);
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v15 = *(v12 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_186(v16);
  v18 = OUTLINED_FUNCTION_192(v17);
  OUTLINED_FUNCTION_1_106(v18, xmmword_431D00);
  v19 = 0;
  if (v15)
  {
    v19 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  v20 = OUTLINED_FUNCTION_8_67(v19);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v21);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v13 + 168) = v22;
  *(v13 + 176) = v14 + 1;
  *(v13 + 184) = v23;
  *(v13 + 192) = v24;
  OUTLINED_FUNCTION_119_3();
  *(v13 + 216) = v25;
  *(v13 + 224) = v14;
  *(v13 + 232) = v26;
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v28);
  OUTLINED_FUNCTION_123_3();
  if (v29)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v30();
  }

  OUTLINED_FUNCTION_5_82();
  if (v31)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 296) = 0;
    *(v13 + 304) = 0;
  }

  else
  {
    v32 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v32);
  if (v33)
  {
    OUTLINED_FUNCTION_160_0();
    *(v13 + 344) = 0;
    *(v13 + 352) = 0;
  }

  else
  {
    v34 = *(v12 + 48);
    v35 = &type metadata for Double;
  }

  *(v13 + 336) = v34;
  *(v13 + 360) = v35;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v36);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v37;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v43(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readPlayVoiceMailPrePrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(44);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readPlayVoiceMailPrePromptAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(44);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v0 + 100) = v1;
  OUTLINED_FUNCTION_14_53(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v12, v13, v14);
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_185(v15);
  v17 = OUTLINED_FUNCTION_192(v16);
  OUTLINED_FUNCTION_1_106(v17, xmmword_43CD90);
  v18 = 0;
  if (v14)
  {
    v18 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v19 = OUTLINED_FUNCTION_8_67(v18);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v20);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v21);
  v22 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v22);
  OUTLINED_FUNCTION_123_3();
  if (v23)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v24();
  }

  OUTLINED_FUNCTION_5_82();
  if (v25)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v26 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v26);
  if (v27)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v28 = *(v12 + 48);
  }

  v13[42] = v28;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v29);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_77_12(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_156_0(v31);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSavedVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSavedVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v0 + 100) = v1;
  OUTLINED_FUNCTION_14_53(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v12, v13, v14);
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_185(v15);
  v17 = OUTLINED_FUNCTION_192(v16);
  OUTLINED_FUNCTION_1_106(v17, xmmword_43CD90);
  v18 = 0;
  if (v14)
  {
    v18 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v19 = OUTLINED_FUNCTION_8_67(v18);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v20);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v21);
  v22 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v22);
  OUTLINED_FUNCTION_123_3();
  if (v23)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v24();
  }

  OUTLINED_FUNCTION_5_82();
  if (v25)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v26 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_33_5(v26);
  if (v27)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v28 = *(v12 + 48);
  }

  v13[42] = v28;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v29);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v30 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v30);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v31;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v37(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_120_3(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  *(v0 + 56) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v11 + 88);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v11 + 64) = v14;
  OUTLINED_FUNCTION_0_104(v14, xmmword_42BF20);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  else
  {
    v15 = *(v11 + 16);
  }

  *(v14 + 48) = v15;
  OUTLINED_FUNCTION_104_3();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000014;
  *(v14 + 88) = v17;
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_89_4(v19);
  if (v12)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v21 = *(v11 + 56);
  *(v14 + 144) = v12;
  OUTLINED_FUNCTION_53_3();
  *(v14 + 168) = v22;
  *(v14 + 176) = v23;
  OUTLINED_FUNCTION_51_3();
  *(v14 + 184) = v24;
  *(v14 + 192) = v25;
  OUTLINED_FUNCTION_21_40();
  *(v14 + 216) = v27;
  *(v14 + 224) = v26;
  *(v14 + 232) = 0xE700000000000000;
  outlined init with copy of PhoneCallNLIntent?(v28, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = type metadata accessor for SpeakableString();
  v30 = OUTLINED_FUNCTION_58(v29);
  v31 = *(v11 + 56);
  if (v30 == 1)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 240) = 0u;
    *(v14 + 256) = 0u;
  }

  else
  {
    *(v14 + 264) = v10;
    __swift_allocate_boxed_opaque_existential_1((v14 + 240));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v32();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 72) = v33;
  *v33 = v34;
  v33[1] = SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  OUTLINED_FUNCTION_65_2();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}