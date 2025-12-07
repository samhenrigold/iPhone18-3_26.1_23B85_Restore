void sub_1DCDDEB34(uint64_t a1)
{
  if (!qword_1EDE46350)
  {
    sub_1DD0DCF7C();
  }
}

_BYTE *NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

void NeedsConfirmationFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v13);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_104_3(v14);
  v15[4] = &unk_1DD0F6EE8;
  v15[5] = 0;
  v15[6] = a8;
  v15[7] = a9;
  sub_1DD0DCF8C();
}

void sub_1DCDDEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v14);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v22 - v17;
  v19 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  OUTLINED_FUNCTION_41_4();
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_104_3(v20);
  v21[4] = a12;
  v21[5] = 0;
  v21[6] = a7;
  v21[7] = a8;
  sub_1DD0DCF8C();
}

void NeedsConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameterName:multicardinalIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v9);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v12);
  OUTLINED_FUNCTION_41_4();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_104_3(v13);
  v14[4] = &unk_1DD0F6F18;
  v14[5] = 0;
  v14[6] = a6;
  v14[7] = a7;
  sub_1DD0DCF8C();
}

void sub_1DCDDEFCC()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v0[15] = type metadata accessor for RefreshableDeviceState();
  v0[16] = &protocol witness table for RefreshableDeviceState;
  v0[12] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDDF0C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDDF1C0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[22];
  sub_1DCDED2EC((v0 + 2), v1);
  v3 = v0[7];
  v2 = v0[8];

  sub_1DCCCF318((v0 + 2));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_43();

  return v4();
}

void NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v11);
  OUTLINED_FUNCTION_41_4();
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_104_3(v12);
  v13[4] = &unk_1DD0F6F28;
  v13[5] = 0;
  v13[6] = a5;
  v13[7] = a6;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDDF314(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)();
}

uint64_t NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

void NeedsConfirmationFlowStrategyAsync.authenticationPolicy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCDDF450()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCF434;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)();
}

uint64_t sub_1DCDDF4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  v14 = *(v10 + 16);
  *(v9 + 16) = *v10;
  *(v9 + 32) = v14;
  *(v9 + 48) = v11;
  *(v9 + 56) = v12;
  *(v9 + 64) = v13;
  OUTLINED_FUNCTION_25_1();
  v27 = v15 + *v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 72) = v16;
  *v16 = v17;
  v16[1] = sub_1DCDDF704;
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1DCDDF704()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v8();
  }
}

uint64_t sub_1DCDDF824(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)();
}

uint64_t NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCDDF940(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)();
}

uint64_t NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCDDFA5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1);
}

void sub_1DCDDFB0C()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDDFC00()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDDFD20(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)();
}

uint64_t NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA568();
}

uint64_t NeedsConfirmationFlowStrategyAsync.actionForInputWrapper(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 72) = *(a3 + 16);
  *(v6 + 80) = *(a3 + 24);
  *(v6 + 104) = *(a3 + 40);
  *(v6 + 96) = *(a3 + 48);
  return OUTLINED_FUNCTION_0_12(sub_1DCDDFE84);
}

uint64_t sub_1DCDDFE84()
{
  OUTLINED_FUNCTION_41();
  v14 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v10[0] = *(v0 + 56);
  v10[1] = v4;
  v11 = v3;
  v12 = v1;
  v13 = v2;
  (*(v5 + 32))(v6, v10, v7);
  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCDDFF18(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)();
}

uint64_t NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCDE004C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_50();
  (*(v1 + 32))(v0 + v2);
  return v0;
}

uint64_t sub_1DCDE00B0()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(*(v0 + 80));
}

uint64_t sub_1DCDE011C()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v0();
}

uint64_t sub_1DCDE019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  *(v4 + 96) = *v3;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE01F8);
}

uint64_t sub_1DCDE01F8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[11];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer(0, AssociatedTypeWitness, v6, v7);
  OUTLINED_FUNCTION_17();
  *v4 = v8;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v9);
}

uint64_t sub_1DCDE0310()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDE042C(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v35 = a4;
  v33 = a1;
  v6 = *a2;
  v34 = *(*a2 + 88);
  v7 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer(255, AssociatedTypeWitness, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DE47C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v28 - v15;
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v14, v18);
  v20 = &v28 - v19;
  (*(v17 + 16))(&v28 - v19, &a2[*(v6 + 96)], v7);
  v21 = a3[2];
  v31 = a3[3];
  v32 = v21;
  if (a3[5])
  {
    v22 = 0;
  }

  else
  {
    v22 = a3[4];
  }

  v23 = *a3;
  v28 = a3[1];
  v29 = a3[6];
  v30 = v22;
  (*(v12 + 16))(v16, v33, v11);
  v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v7;
  *(v25 + 24) = v26;
  (*(v12 + 32))(v25 + v24, v16, v11);
  (*(v26 + 40))(v23, v28, v32, v31, v30, v29, v35, sub_1DCDED218, v25, v7, v26);

  return (*(v17 + 8))(v20, v7);
}

uint64_t sub_1DCDE0718(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v10 = *a1;
  v11 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer(255, AssociatedTypeWitness, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  return sub_1DD05EBE4(&v10, v8);
}

uint64_t sub_1DCDE07B4(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE07E0);
}

uint64_t sub_1DCDE07E0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[9];
  v1 = v0[10];
  v3 = OUTLINED_FUNCTION_115_2();
  v0[11] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_1DCDE08D0;
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCDE08D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCDE09E8(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C50, &qword_1DD0EA340);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - v11;
  v13 = v6[10];
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v24 - v16;
  (*(v14 + 16))(&v24 - v16, &a2[v6[12]], v13);
  v18 = a3[2];
  v28 = a3[3];
  v29 = v18;
  if (a3[5])
  {
    v19 = 0;
  }

  else
  {
    v19 = a3[4];
  }

  v20 = *a3;
  v24 = a3[1];
  v25 = v20;
  v26 = a3[6];
  v27 = v19;
  (*(v8 + 16))(v12, v30, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v12, v7);
  (*(v6[11] + 48))(v25, v24, v29, v28, v27, v26, v31, sub_1DCBCF650, v22, v13, v6[11]);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1DCDE0CA0()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_53_14(v1);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDE0D80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDE0E9C(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - v11;
  v13 = v6[10];
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v24 - v16;
  (*(v14 + 16))(&v24 - v16, &a2[v6[12]], v13);
  v18 = a3[2];
  v28 = a3[3];
  v29 = v18;
  if (a3[5])
  {
    v19 = 0;
  }

  else
  {
    v19 = a3[4];
  }

  v20 = *a3;
  v24 = a3[1];
  v25 = v20;
  v26 = a3[6];
  v27 = v19;
  (*(v8 + 16))(v12, v30, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v12, v7);
  (*(v6[11] + 56))(v25, v24, v29, v28, v27, v26, v31, sub_1DCDED198, v22, v13, v6[11]);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1DCDE1154()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_53_14(v1);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDE1234()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDE1350(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - v11;
  v13 = v6[10];
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v24 - v16;
  (*(v14 + 16))(&v24 - v16, &a2[v6[12]], v13);
  v18 = a3[2];
  v28 = a3[3];
  v29 = v18;
  if (a3[5])
  {
    v19 = 0;
  }

  else
  {
    v19 = a3[4];
  }

  v20 = *a3;
  v24 = a3[1];
  v25 = v20;
  v26 = a3[6];
  v27 = v19;
  (*(v8 + 16))(v12, v30, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v12, v7);
  (*(v6[11] + 64))(v25, v24, v29, v28, v27, v26, v31, sub_1DCDED7C8, v22, v13, v6[11]);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1DCDE1608()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_53_14(v1);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDE16E8(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - v11;
  v13 = v6[10];
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v24 - v16;
  (*(v14 + 16))(&v24 - v16, &a2[v6[12]], v13);
  v18 = a3[2];
  v28 = a3[3];
  v29 = v18;
  if (a3[5])
  {
    v19 = 0;
  }

  else
  {
    v19 = a3[4];
  }

  v20 = *a3;
  v24 = a3[1];
  v25 = v20;
  v26 = a3[6];
  v27 = v19;
  (*(v8 + 16))(v12, v30, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v12, v7);
  (*(v6[11] + 72))(v25, v24, v29, v28, v27, v26, v31, sub_1DCDED7C8, v22, v13, v6[11]);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1DCDE1978(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE19A4);
}

uint64_t sub_1DCDE19A4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[10];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCDE1A94(uint64_t a1, char *a2, uint64_t *a3)
{
  v30 = a1;
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23 - v10;
  v12 = v5[10];
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v23 - v15;
  (*(v13 + 16))(&v23 - v15, &a2[v5[12]], v12);
  v17 = a3[2];
  v28 = a3[3];
  v29 = v17;
  if (a3[5])
  {
    v18 = 0;
  }

  else
  {
    v18 = a3[4];
  }

  v19 = *a3;
  v24 = a3[1];
  v25 = v19;
  v26 = a3[6];
  v27 = v18;
  (*(v7 + 16))(v11, v30, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v11, v6);
  (*(v5[11] + 80))(v25, v24, v29, v28, v27, v26, sub_1DCDED7C8, v21, v12, v5[11]);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1DCDE1D1C(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE1D48);
}

uint64_t sub_1DCDE1D48()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[31];
  v2 = swift_task_alloc();
  v0[32] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[33] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCDE1E3C;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCDE1E3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDE1F3C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 240);
  sub_1DCB17C3C(v0 + 72, v0 + 128, &qword_1ECCA5500, &qword_1DD0F20A0);

  *(v0 + 216) = *(v0 + 104);
  *(v0 + 184) = *(v0 + 72);
  *(v0 + 200) = *(v0 + 88);
  v2 = *(v0 + 120);
  *(v0 + 232) = v2;
  v3 = *(v0 + 224);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 128), v1);
  v1[5] = v3;
  v1[6] = v2;
  v1[7] = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCDE2000()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDE205C(uint64_t a1, char *a2, uint64_t *a3)
{
  v30 = a1;
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23 - v10;
  v12 = v5[10];
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v23 - v15;
  (*(v13 + 16))(&v23 - v15, &a2[v5[12]], v12);
  v17 = a3[2];
  v28 = a3[3];
  v29 = v17;
  if (a3[5])
  {
    v18 = 0;
  }

  else
  {
    v18 = a3[4];
  }

  v19 = *a3;
  v24 = a3[1];
  v25 = v19;
  v26 = a3[6];
  v27 = v18;
  (*(v7 + 16))(v11, v30, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v11, v6);
  (*(v5[11] + 88))(v25, v24, v29, v28, v27, v26, sub_1DCDED0FC, v21, v12, v5[11]);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1DCDE230C()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_24();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_100_5(v1);
  OUTLINED_FUNCTION_12_6(v2, *(v0 + 24), v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v12 = v13;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DE38](v14);
}

uint64_t sub_1DCDE23F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDE250C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v29) = a8;
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a4;
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v28 - v16;
  v28 = v11;
  v18 = *(v11 + 80);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v15, v20);
  v22 = &v28 - v21;
  (*(v19 + 16))(&v28 - v21, &a2[*(v23 + 96)], v18);
  if (v29)
  {
    v24 = 0;
  }

  else
  {
    v24 = a7;
  }

  v29 = v24;
  (*(v13 + 16))(v17, a1, v12);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  (*(v13 + 32))(v26 + v25, v17, v12);
  (*(*(v28 + 88) + 96))(v30, v31, v32, v33, v29, sub_1DCDED7C8, v26, v18, *(v28 + 88));

  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_1DCDE27BC()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_24();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_100_5(v1);
  OUTLINED_FUNCTION_12_6(v2, *(v0 + 24), v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v12 = v13;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DE38](v14);
}

uint64_t sub_1DCDE28A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(*(*(v8 + 88) + 8) + 16))(a3, v18, v19, v20, sub_1DCDED7C8, v15, *(v8 + 80));
}

uint64_t sub_1DCDE2A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a5;
  *(v6 + 72) = *(a5 + 16);
  *(v6 + 104) = *(a5 + 24);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE2A9C);
}

uint64_t sub_1DCDE2A9C()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v1 = v0[1].n128_u64[1];
  v2 = swift_task_alloc();
  v0[5].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12_6(v2, v0[2], v3, v4, v5, v6, v7, v8, v9, v10, v11);
  *(v12 + 72) = v1;
  v13 = swift_task_alloc();
  v0[5].n128_u64[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v13 = v14;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x1EEE6DE38](v15);
}

uint64_t sub_1DCDE2BA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a5;
  v23 = a6;
  v20 = a9;
  v21 = a4;
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  (*(*(*(v11 + 88) + 8) + 24))(a3, v21, v22, v23, v20, sub_1DCDED7C8, v18, *(v11 + 80), *(*(v11 + 88) + 8));
}

uint64_t sub_1DCDE2DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDE019C(a1, a2, a3);
}

uint64_t sub_1DCDE2E8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCCC5288;

  return sub_1DCDE07B4(a1, a2);
}

uint64_t sub_1DCDE2F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDE0C78(a1, a2, a3);
}

uint64_t sub_1DCDE2FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDE112C(a1, a2, a3);
}

uint64_t sub_1DCDE309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDE15E0(a1, a2, a3);
}

uint64_t sub_1DCDE3150(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDE1978(a1, a2);
}

uint64_t sub_1DCDE31FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDE1D1C(a1, a2);
}

uint64_t sub_1DCDE32A8(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDE22E4(a1, a2, a3, a4);
}

uint64_t sub_1DCDE336C(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDE2794(a1, a2, a3, a4);
}

uint64_t sub_1DCDE3430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCDE2A64(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCDE3514(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_65_1();
  a2(a1);
  return v4;
}

uint64_t sub_1DCDE3558(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_50();
  (*(v3 + 16))(v1 + v4, a1);

  return sub_1DCDE004C();
}

uint64_t sub_1DCDE3600()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_24();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_100_5(v1);
  OUTLINED_FUNCTION_12_6(v2, *(v0 + 24), v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v12 = v13;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DE38](v14);
}

uint64_t sub_1DCDE36E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(*(v8 + 216) + 16))(a3, v18, v19, v20, sub_1DCDED7C8, v15, *(v8 + 208));
}

uint64_t sub_1DCDE38A4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  return (*(v1 + 8))(v0 + v2);
}

char *sub_1DCDE3910()
{
  v1 = *v0;
  sub_1DCD76698();
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 208) - 8) + 8))(&v0[*(v2 + 224)]);
  return v0;
}

uint64_t sub_1DCDE39A0(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDE35D8(a1, a2, a3, a4);
}

uint64_t sub_1DCDE3A64(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = OUTLINED_FUNCTION_65_1();
  sub_1DCDE3AB0(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCDE3AB0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  OUTLINED_FUNCTION_87_7();
  v15 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_4_50();
  (*(v9 + 32))(v3 + v10);
  OUTLINED_FUNCTION_66();
  v12 = v3 + *(v11 + 104);
  *v12 = *a2;
  *(v12 + 16) = v15;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v3 + *(v13 + 112));
  return v3;
}

void sub_1DCDE3B98(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDE3CC4()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v1[14] = *v0;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v1[15] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[16] = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCDE3EF0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[21] = v0;

  OUTLINED_FUNCTION_92_6();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDE4004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 72);
  *(v14 + 200) = v15;
  v16 = *(v14 + 80);
  *(v14 + 176) = v16;
  if (v15 == 2)
  {
    v17 = *(v14 + 88);
    *v17 = 2;
    *(v17 + 8) = v16;

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_76();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v28 = *(v14 + 144);
    v27 = *(v14 + 152);
    v29 = *(v14 + 128);
    v30 = *(v14 + 104);
    v31 = v30 + *(v14 + 136);
    v32 = v15 & 1 | 2;
    type metadata accessor for SiriKitEvent(0);
    *v29 = v32;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 8) = v28;
    v33 = *(v31 + 16);
    v34 = *(v31 + 24);
    v35 = *(v31 + 32);
    LOBYTE(v31) = *(v31 + 40);
    *(v29 + 32) = v33;
    *(v29 + 40) = v34;
    v36 = v28;

    [v27 itemToConfirm];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    *(v29 + 80) = v35;
    *(v29 + 88) = v31;
    swift_storeEnumTagMultiPayload();
    v37 = OUTLINED_FUNCTION_59_4();
    *(v14 + 184) = SiriKitEvent.__allocating_init(_:builder:)(v37, v38);
    OUTLINED_FUNCTION_114_2((v30 + *(*v30 + 112)));
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_8();
    v49 = v39 + *v39;
    v40 = swift_task_alloc();
    *(v14 + 192) = v40;
    *v40 = v14;
    OUTLINED_FUNCTION_35_7(v40);
    OUTLINED_FUNCTION_76();

    return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, v49, a12, a13, a14);
  }
}

uint64_t sub_1DCDE421C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCDE4300()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 176);
  v2 = *(v0 + 88);
  *v2 = *(v0 + 200);
  *(v2 + 8) = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDE4374()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDE43D0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE4414);
}

uint64_t sub_1DCDE4554()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_76_9();
    v8 = v4[8];

    v9 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_76_9();
    v12 = v4[8];

    v13 = swift_task_alloc();
    v4[15] = v13;
    *v13 = v6;
    v14 = OUTLINED_FUNCTION_37_23(v13);

    return sub_1DCDE47BC(v14, v15);
  }
}

uint64_t sub_1DCDE46DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDE47BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for SiriKitEventPayload(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCDE4854, 0, 0);
}

uint64_t sub_1DCDE4854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v13 = v12[6];
  v14 = v12[4];
  v15 = v12[2];
  OUTLINED_FUNCTION_114_2((v14 + *(*v14 + 112)));
  type metadata accessor for SiriKitEvent(0);
  sub_1DCB0DF6C(v15, v13);
  v16 = v14 + *(*v14 + 104);
  v17 = *(v16 + 8);
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = v17;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v20 = *(v16 + 32);
  LOBYTE(v16) = *(v16 + 40);
  *(v13 + 56) = v18;
  *(v13 + 64) = v19;
  *(v13 + 72) = v20;
  *(v13 + 80) = v16;
  swift_storeEnumTagMultiPayload();
  v21 = v17;

  v22 = OUTLINED_FUNCTION_59_4();
  v12[7] = SiriKitEvent.__allocating_init(_:builder:)(v22, v23);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_25_1();
  v35 = v24 + *v24;
  v25 = swift_task_alloc();
  v12[8] = v25;
  *v25 = v12;
  OUTLINED_FUNCTION_35_7(v25);
  OUTLINED_FUNCTION_96_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, a11, a12);
}

uint64_t sub_1DCDE49F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCDE4AF4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 16);
  *(v0 + 88) = 7477;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2468, &unk_1DD0E97C0);
  OUTLINED_FUNCTION_41_4();
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = xmmword_1DD0E07C0;
  sub_1DCB0DF6C(v1, v2 + 32);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1DCDE4BE8;
  v4 = OUTLINED_FUNCTION_55_2(*(v0 + 24));

  return sub_1DCDE5574(v4, (v0 + 88), v5, v2, 0, 0);
}

uint64_t sub_1DCDE4BE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCDE4D00(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE4D44);
}

uint64_t sub_1DCDE4E84()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_76_9();
    v8 = v4[8];

    v9 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_76_9();
    v12 = v4[8];

    v13 = swift_task_alloc();
    v4[15] = v13;
    *v13 = v6;
    v14 = OUTLINED_FUNCTION_37_23(v13);

    return sub_1DCDE47BC(v14, v15);
  }
}

uint64_t sub_1DCDE500C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE5050);
}

uint64_t sub_1DCDE5190(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE51D0);
}

uint64_t sub_1DCDE51D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 56);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22_25(v13 + *(v14 + 104));
  v16 = *(v15 + 88);
  v17 = *(v16 + 96);
  v31 = v16 + 96;

  v30 = v17 + *v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v12 + 72) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_64_10(v18);
  OUTLINED_FUNCTION_96_0();

  return v26(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, a11, a12);
}

uint64_t sub_1DCDE5318()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    *(v3 + 41) = 9015;
    v10 = v3 + 41;
    v11 = swift_task_alloc();
    *(v10 + 47) = v11;
    *v11 = v5;
    v11[1] = sub_1DCDE5494;
    v12 = OUTLINED_FUNCTION_55_2(*(v10 + 7));

    return sub_1DCDE5574(v12, v10, v13, 0, 0, 0);
  }
}

uint64_t sub_1DCDE5494()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDE5574(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  *(v7 + 56) = type metadata accessor for SiriKitEventPayload(0);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 88) = *a2;
  *(v7 + 89) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1DCDE5630, 0, 0);
}

uint64_t sub_1DCDE5630()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  if (OUTLINED_FUNCTION_109_1())
  {
    v15 = *(v0 + 89);
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1((v3 + *(*v3 + 112)), *(v3 + *(*v3 + 112) + 24));
    type metadata accessor for SiriKitEvent(0);
    *v2 = v1;
    v7 = v3 + *(*v3 + 104);
    v8 = [*(v7 + 8) typeName];
    v9 = sub_1DD0DDFBC();
    v11 = v10;

    *(v2 + 8) = v9;
    *(v2 + 16) = v11;
    *(v2 + 24) = *v7;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0u;
    v12 = *(v7 + 24);
    *(v2 + 136) = *(v7 + 16);
    *(v2 + 144) = v12;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
    *(v2 + 168) = v5;
    *(v2 + 176) = v4;
    *(v2 + 184) = v15;
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCDE58CC()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DCDE59F4()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = *v0;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v1[9] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[10] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCDE5A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v13 = v12[7];
  OUTLINED_FUNCTION_77();
  v15 = *(v14 + 104);
  v12[11] = v15;
  v16 = v13 + v15;
  v12[12] = *(v16 + 8);
  OUTLINED_FUNCTION_22_25(v16);
  v18 = *(*(v17 + 88) + 8);
  v19 = *(v18 + 16);
  v33 = v18 + 16;

  v32 = v19 + *v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v12[13] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_64_10(v20);
  OUTLINED_FUNCTION_96_0();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, a11, a12);
}

uint64_t sub_1DCDE5BEC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCDE5D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = v14[12];
  v16 = v14[10];
  v17 = v14[7];
  v18 = v17 + v14[11];
  OUTLINED_FUNCTION_114_2((v17 + *(*v17 + 112)));
  type metadata accessor for SiriKitEvent(0);
  *v16 = 1;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 8) = v15;
  v19 = *(v18 + 24);
  v20 = *(v18 + 32);
  v21 = *(v18 + 40);
  *(v16 + 32) = *(v18 + 16);
  *(v16 + 40) = v19;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = v20;
  *(v16 + 88) = v21;
  swift_storeEnumTagMultiPayload();
  v22 = v15;

  v23 = OUTLINED_FUNCTION_59_4();
  v14[15] = SiriKitEvent.__allocating_init(_:builder:)(v23, v24);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_8();
  v36 = v25 + *v25;
  v26 = swift_task_alloc();
  v14[16] = v26;
  *v26 = v14;
  OUTLINED_FUNCTION_35_7(v26);
  OUTLINED_FUNCTION_76();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v36, a12, a13, a14);
}

uint64_t sub_1DCDE5E98()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  *(v2 + 41) = 22533;
  v6 = v2 + 41;
  v7 = swift_task_alloc();
  *(v6 + 95) = v7;
  *v7 = v4;
  v7[1] = sub_1DCDE5FF0;
  v8 = OUTLINED_FUNCTION_55_2(*(v6 + 7));

  return sub_1DCDE5574(v8, v6, v9, 0, 0, 0);
}

uint64_t sub_1DCDE5FF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDE60EC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDE6148(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE618C);
}

uint64_t sub_1DCDE618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 96);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22_25(v13 + *(v14 + 104));
  v16 = *(*(v15 + 88) + 8);
  v17 = *(v16 + 24);
  v31 = v16 + 24;

  v30 = v17 + *v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v12 + 112) = v18;
  *v18 = v19;
  v18[1] = sub_1DCDE62F0;
  OUTLINED_FUNCTION_96_0();

  return v27(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, a11, a12);
}

uint64_t sub_1DCDE62F0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCDE6410()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 41) = 23558;
  swift_getErrorValue();
  v1 = sub_1DCEE0FD4(*(v0 + 56), *(v0 + 64));
  v3 = v2;
  *(v0 + 128) = v2;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1DCDE64F0;
  v5 = OUTLINED_FUNCTION_55_2(*(v0 + 80));

  return sub_1DCDE5574(v5, (v0 + 41), v6, 0, v1, v3);
}

uint64_t sub_1DCDE64F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDE6610()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v2 + 8))(v0 + v3);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_110_2(*(v4 + 104));

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v5 + 112)));
  return v0;
}

uint64_t sub_1DCDE66E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDE3CC4();
}

uint64_t sub_1DCDE6788(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDE43D0(a1, a2);
}

uint64_t sub_1DCDE6830(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDE4D00(a1, a2);
}

uint64_t sub_1DCDE68D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDE500C(a1, a2);
}

uint64_t sub_1DCDE6980(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCDE5190(a1);
}

uint64_t sub_1DCDE6A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDE59F4();
}

uint64_t sub_1DCDE6AB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDE6148(a1, a2);
}

void sub_1DCDE6B58()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  OUTLINED_FUNCTION_84_7();
  if (v5 == 4)
  {
    sub_1DCBB12F4(v2, v1, v0);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_88_7();
    v10 = type metadata accessor for SiriKitNeedsConfirmationFlow.NeedsConfirmationError(v6, v7, v8, v9);
    OUTLINED_FUNCTION_47_16();
    WitnessTable = swift_getWitnessTable();
    v12 = OUTLINED_FUNCTION_112_2(WitnessTable);
    v14 = OUTLINED_FUNCTION_42_20(v12, v13);
    sub_1DCDEC924(v14, v15, v16, v17, v18, v19, v20);
    v1 = 0;
    v0 = 1;
    v2 = v10;
  }

  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v0;
  OUTLINED_FUNCTION_49();
}

void sub_1DCDE6C28()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDE6E64()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_72_10();
  sub_1DCDE6EA8();
  return v0;
}

uint64_t sub_1DCDE6EA8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_87_7();
  v12 = *(v4 + 16);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_4_50();
  (*(v5 + 32))(v1 + v6);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v7 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v8 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v9 + 120));
  OUTLINED_FUNCTION_66();
  return OUTLINED_FUNCTION_80_6(v1 + *(v10 + 128), *v4, v12);
}

uint64_t sub_1DCDE6FB8()
{
  OUTLINED_FUNCTION_42();
  v1[50] = v2;
  v1[51] = v0;
  OUTLINED_FUNCTION_13();
  v1[52] = v3;
  v5 = *(v4 + 80);
  v1[53] = v5;
  v1[54] = *(v5 - 8);
  v1[55] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCDE7094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[51];
  v6 = *v5;
  v7 = (v5 + *(*v5 + 128));
  v8 = *v7;
  v4[56] = *v7;
  v9 = v7[1];
  v4[57] = v9;
  v10 = v7[2];
  v4[58] = v10;
  v11 = v7[3];
  v4[59] = v11;
  v12 = v7[4];
  v4[60] = v12;
  v13 = v7[5];
  v4[61] = v13;
  v14 = v7[6];
  v4[62] = v14;
  if (v13 >> 61 == 4)
  {
    v15 = v4[50];
    v16 = *(type metadata accessor for ExecuteResponse(0) + 36);
    v17 = type metadata accessor for PluginAction(0);
    __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
    OUTLINED_FUNCTION_45_13();
  }

  else
  {
    if (!(v13 >> 61))
    {
      v4[63] = *(v6 + 96);
      sub_1DD0DCF8C();
    }

    type metadata accessor for SiriKitNeedsConfirmationFlow.NeedsConfirmationError(0, v4[53], *(v4[52] + 88), a4);
    OUTLINED_FUNCTION_47_16();
    swift_getWitnessTable();
    v18 = swift_allocError();
    *&v19 = v8;
    *(&v19 + 1) = v9;
    *&v20 = v10;
    *(&v20 + 1) = v11;
    *v21 = v19;
    *(v21 + 16) = v20;
    *(v21 + 32) = v12;
    *(v21 + 40) = v13;
    *(v21 + 48) = v14;
    v30 = v18;
    v31 = xmmword_1DD0E3FF0;
    v32 = 0;
    v33 = 0;
    v34 = xmmword_1DD0F6EA0;
    OUTLINED_FUNCTION_107_0();
    sub_1DCDEC924(v22, v23, v24, v25, v26, v13, v14);
    OUTLINED_FUNCTION_3_78();
    sub_1DCDE8E70(&v30, v27, sub_1DCDE6C28);
    static ExecuteResponse.complete()();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCDE73F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 528) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 312));
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCDE74E4()
{
  v33 = v0;
  v1 = *(v0 + 528);
  (*(*(v0 + 432) + 16))(*(v0 + 440), *(v0 + 408) + *(v0 + 504), *(v0 + 424));
  if (v1)
  {
    v3 = *(v0 + 496);
    v4 = *(v0 + 488);
    v5 = *(v0 + 472);
    v6 = *(v0 + 480);
    v8 = *(v0 + 456);
    v7 = *(v0 + 464);
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);
    v11 = *(v0 + 408);
    type metadata accessor for AuthenticationFlowNeedsConfirmationFlowStrategyAdapter(0, *(v0 + 424), *(v0 + 512), v2);
    v26 = v10;
    v27 = v8;
    v28 = v7;
    v29 = v5;
    v30 = v6;
    v31 = v4 & 1;
    v32 = v3;
    sub_1DCDE7D08(v9, &v26);
    OUTLINED_FUNCTION_99_3();
    __swift_project_boxed_opaque_existential_1((v11 + *(v12 + 104)), *(v11 + *(v12 + 104) + 24));
    sub_1DD0DCF8C();
  }

  v14 = *(v0 + 488);
  v13 = *(v0 + 496);
  v15 = *(v0 + 472);
  v16 = *(v0 + 480);
  v17 = *(v0 + 456);
  v18 = *(v0 + 464);
  v19 = *(v0 + 448);
  v25 = *(v0 + 440);
  v20 = *(v0 + 408);
  type metadata accessor for NeedsConfirmationFlowStrategyAdapter(0, *(v0 + 424), *(v0 + 512), v2);
  v26 = v19;
  v27 = v17;
  v28 = v18;
  v29 = v15;
  v30 = v16;
  v31 = v14 & 1;
  v32 = v13;
  sub_1DCDED2EC(v20 + *(*v20 + 112), v0 + 72);
  sub_1DCDE3A64(v25, &v26, (v0 + 72));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for NeedsConfirmationAnswer(255, AssociatedTypeWitness, v22, v23);
  type metadata accessor for PromptForConfirmationFlowAsync(0, MEMORY[0x1E69E7CA0] + 8, v24, &protocol witness table for NeedsConfirmationAnswer<A>);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDE7D08(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_65_1();
  sub_1DCDEAD20(a1, a2);
  return v4;
}

uint64_t sub_1DCDE7DB4(void *a1, char a2)
{
  v3 = *v2;
  v4 = (v2 + *(*v2 + 128));
  v5 = v4[2].u64[1];
  if (v5 >> 61 != 5 || ((v6 = vorrq_s8(*v4, v4[1]), v7 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v4[2].i64[0] | v4[3].i64[0], v5 == 0xA000000000000000) ? (v8 = v7 == 0) : (v8 = 0), !v8))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    v13 = a1;
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_1DD0DF18C();
      v20 = sub_1DCB10E9C(v18, v19, &v29);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1DCAFC000, v14, v15, "SiriKitNeedsConfirmationFlow received an unexpected error while trying to unlock the device: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A8390](v17, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);
    }

    v29 = a1;
    v30 = 0u;
    v31 = 0u;
    v32 = xmmword_1DD0F6EC0;
    v21 = a1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DCAFC000, v23, v24, "SiriKitNeedsConfirmationFlow handed session off to companion device.", v25, 2u);
      MEMORY[0x1E12A8390](v25, -1, -1);
    }

    type metadata accessor for SiriKitNeedsConfirmationFlow.NeedsConfirmationError(0, *(v3 + 80), *(v3 + 88), v26);
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0;
    *(v28 + 40) = xmmword_1DD0F6ED0;
    v29 = v27;
    v30 = 1uLL;
    v31 = 0uLL;
    v32 = xmmword_1DD0F6EC0;
  }

  return sub_1DCDE8E70(&v29, sub_1DCDECA24, sub_1DCDE6C28);
}

void sub_1DCDE83D0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + *(*v4 + 128);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v11 = *(v5 + 32);
  v10 = *(v5 + 40);
  v12 = *(v5 + 48);
  if (v10 >> 61 == 2)
  {
    if ((a2 & 1) == 0)
    {
      v16 = *v5;
      *&v17 = v6;
      *(&v17 + 1) = v9;
      *&v18 = v8;
      *(&v18 + 1) = v11;
      *&v19 = v10 & 1;
      *(&v19 + 1) = v12;
      sub_1DCDEC924(v7, v6, v9, v8, v11, v10, v12);
      sub_1DD0DCF8C();
    }

    v16 = a1;
    v17 = 0u;
    v18 = 0u;
    v19 = xmmword_1DD0F6EC0;
    sub_1DCDEC924(v7, v6, v9, v8, v11, v10, v12);
    sub_1DCB8D4CC(a1, 1);
    sub_1DCDE8E70(&v16, sub_1DCDECA24, sub_1DCDE6C28);
    sub_1DCDECA24(v7, v6, v9, v8, v11, v10, v12);
  }

  else
  {
    type metadata accessor for SiriKitNeedsConfirmationFlow.NeedsConfirmationError(0, *(*v4 + 80), *(*v4 + 88), a4);
    swift_getWitnessTable();
    v14 = swift_allocError();
    *v15 = v7;
    v15[1] = v6;
    v15[2] = v9;
    v15[3] = v8;
    v15[4] = v11;
    v15[5] = v10;
    v15[6] = v12;
    v16 = v14;
    v17 = 0u;
    v18 = 0u;
    v19 = xmmword_1DD0F6EC0;
    sub_1DCDEC924(v7, v6, v9, v8, v11, v10, v12);
    sub_1DCDE8E70(&v16, sub_1DCDECA24, sub_1DCDE6C28);
  }
}

uint64_t sub_1DCDE865C(uint64_t a1)
{
  if (*(v1 + *(*v1 + 128) + 40) >> 61 != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v3;
  v7 = xmmword_1DD0F6EA0;
  sub_1DCBB12F4(v6[0], v2, v3);
  return sub_1DCDE8E70(v6, sub_1DCDECA24, sub_1DCDE6C28);
}

unint64_t sub_1DCDE8988()
{
  result = 0x646574726174732ELL;
  switch(*(v0 + 40) >> 61)
  {
    case 1:
      result = 0x5374706D6F72702ELL;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x726F7272652ELL;
      break;
    case 4:
      result = 0x74656C706D6F632ELL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDE8AA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCDE6FB8();
}

void sub_1DCDE8B64()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  OUTLINED_FUNCTION_84_7();
  if (v5 == 3)
  {
    sub_1DCBB12F4(v2, v1, v0);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_88_7();
    v10 = type metadata accessor for SiriKitNeedsConfirmationWithCancellationFlow.NeedsConfirmationError(v6, v7, v8, v9);
    OUTLINED_FUNCTION_44_16();
    WitnessTable = swift_getWitnessTable();
    v12 = OUTLINED_FUNCTION_112_2(WitnessTable);
    v14 = OUTLINED_FUNCTION_42_20(v12, v13);
    sub_1DCDEC6D0(v14, v15, v16, v17, v18, v19, v20);
    v1 = 0;
    v0 = 1;
    v2 = v10;
  }

  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v0;
  OUTLINED_FUNCTION_49();
}

void sub_1DCDE8C34()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDE8E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_66();
  v5 = (v3 + *(v4 + 128));
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v14 = v13[1];
  *v5 = *v13;
  *(v5 + 1) = v14;
  *(v5 + 2) = v13[2];
  v5[6] = v15;
  v16(v7, v6, v8, v9, v10, v11, v12);

  return a3();
}

uint64_t sub_1DCDE8EF4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_72_10();
  sub_1DCDE8F38();
  return v0;
}

uint64_t sub_1DCDE8F38()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_87_7();
  v13 = *(v5 + 16);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_4_50();
  (*(v6 + 32))(v1 + v7);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v8 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v9 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v10 + 120));
  OUTLINED_FUNCTION_66();
  return OUTLINED_FUNCTION_80_6(v1 + *(v11 + 128), *v0, v13);
}

void sub_1DCDE9048()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCDE90C8()
{
  OUTLINED_FUNCTION_42();
  v1[50] = v2;
  v1[51] = v0;
  v3 = *v0;
  v1[52] = *v0;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v1[53] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[54] = OUTLINED_FUNCTION_38();
  v5 = *(v3 + 80);
  v1[55] = v5;
  v1[56] = *(v5 - 8);
  v1[57] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCDE91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 408);
  v6 = *v5;
  v7 = (v5 + *(*v5 + 128));
  v8 = *v7;
  *(v4 + 464) = *v7;
  v9 = v7[1];
  *(v4 + 472) = v9;
  v10 = v7[2];
  *(v4 + 480) = v10;
  v11 = v7[3];
  *(v4 + 488) = v11;
  v12 = v7[4];
  *(v4 + 496) = v12;
  v13 = v7[5];
  *(v4 + 504) = v13;
  v14 = v7[6];
  *(v4 + 512) = v14;
  v15 = v13 >> 61;
  if (v13 >> 61 != 3)
  {
    if (v15 != 2)
    {
      if (!v15)
      {
        v16 = *(v4 + 448);
        v61 = *(v4 + 456);
        v63 = v10;
        v17 = *(v4 + 440);
        v18 = v12;
        v19 = v14;
        v65 = type metadata accessor for SiriKitNeedsConfirmationFlow(0, v17, *(*(*(v4 + 416) + 88) + 8), a4);
        (*(v16 + 16))(v61, v5 + *(v6 + 96), v17);
        OUTLINED_FUNCTION_99_3();
        sub_1DCDED2EC(v5 + *(v20 + 104), v4 + 208);
        OUTLINED_FUNCTION_99_3();
        sub_1DCDED2EC(v5 + *(v21 + 120), v4 + 248);
        OUTLINED_FUNCTION_99_3();
        sub_1DCDED2EC(v5 + *(v22 + 112), v4 + 288);
        v23 = sub_1DCDE6E64();
        v31 = OUTLINED_FUNCTION_103_4(v23, v24, v25, v26, v27, v28, v29, v30, v54, v23, v57, v59, v61, v63, v65, v8);
        v35 = sub_1DCDEC6D0(v31, v32, v33, v34, v18, v13, v19);
        v43 = OUTLINED_FUNCTION_103_4(v35, v36, v37, v38, v39, v40, v41, v42, v55, v56, v58, v60, v62, v64, v66, v67);
        sub_1DCDEC6D0(v43, v44, v45, v46, v18, v13, v19);
        sub_1DD0DCF8C();
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v51 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v51, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    *(v4 + 16) = v8;
    *(v4 + 24) = v9;
    *(v4 + 32) = v10;
    *(v4 + 40) = v11;
    *(v4 + 48) = v12;
    *(v4 + 56) = v13 & 1;
    *(v4 + 64) = v14;
    __swift_project_boxed_opaque_existential_1((v5 + *(v6 + 120)), *(v5 + *(v6 + 120) + 24));
    v47 = swift_task_alloc();
    *(v4 + 520) = v47;
    *(v47 + 16) = v5;
    *(v47 + 24) = v4 + 16;
    sub_1DD0DCF8C();
  }

  v48 = *(v4 + 400);
  v49 = *(type metadata accessor for ExecuteResponse(0) + 36);
  v50 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(v48 + v49, 1, 1, v50);
  OUTLINED_FUNCTION_45_13();
  OUTLINED_FUNCTION_116_2();

  OUTLINED_FUNCTION_29();

  return v52();
}

uint64_t sub_1DCDE9920()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 536) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDE9A20()
{
  v11[0] = 0;
  v11[1] = 0;
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = 2;
  v12 = xmmword_1DD0F6EC0;
  OUTLINED_FUNCTION_4_73();
  sub_1DCDE8E70(v11, v1, sub_1DCDE8C34);
  __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
  if (OUTLINED_FUNCTION_109_1())
  {
    v2 = *(v0 + 464);
    v3 = *(v0 + 432);
    v4 = (*(v0 + 408) + *(**(v0 + 408) + 112));
    v5 = [*(v0 + 472) typeName];
    v6 = sub_1DD0DDFBC();
    v8 = v7;

    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0;
    *(v0 + 168) = 0u;
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    type metadata accessor for SiriKitEvent(0);
    *v3 = 5;
    *(v3 + 8) = v6;
    *(v3 + 16) = v8;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = v2;
    sub_1DCB17C3C(v0 + 328, v3 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    sub_1DCB17C3C(v0 + 168, v3 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v3 + 136) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 35;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_108_3();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_116_2();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCDE9D00()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB185D0(v2 + 168, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB185D0(v2 + 328, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCDE9E28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_108_3();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_116_2();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCDE9E98()
{
  v28 = v0;

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[67];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unexpected error while trying to generate output: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v11 = v0[67];
  v13 = v0[63];
  v12 = v0[64];
  v15 = v0[61];
  v14 = v0[62];
  v17 = v0[59];
  v16 = v0[60];
  v18 = v0[58];
  v23 = v11;
  v24 = xmmword_1DD0E3FF0;
  v25 = 0;
  v26 = 0;
  v27 = xmmword_1DD0F6EC0;
  v19 = v11;
  OUTLINED_FUNCTION_4_73();
  sub_1DCDE8E70(&v23, v20, sub_1DCDE8C34);
  sub_1DCDEC7BC(v18, v17, v16, v15, v14, v13, v12);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_116_2();

  OUTLINED_FUNCTION_29();

  return v21();
}

uint64_t sub_1DCDEA108(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *))
{
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = v3;
  return a3(&v5);
}

void sub_1DCDEA14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v2 + *(v3 + 128);
  v8 = *(v7 + 5);
  if (v8 >> 61 != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v9 = *v7;
  v10 = *(v7 + 1);
  v11 = *(v7 + 2);
  v12 = *(v7 + 3);
  v13 = *(v7 + 4);
  v14 = *(v7 + 6);
  if (v6 || v4 == 2 || (v4 & 1) == 0)
  {
    v29 = v4;
    v30 = v5;
    v32 = 0;
    v33 = 0;
    v31 = v6;
    v34 = xmmword_1DD0F6EC0;
    v15 = v9;
    v16 = v10;
    LOBYTE(v17) = v11;
    v18 = v12;
    v19 = v13;
    v20 = v8;
    v21 = v14;
    sub_1DCDEC6D0(v9, v10, v11, v12, v13, v8, v14);
    sub_1DCBB12F4(v4, v5, v6);
    sub_1DCDE8E70(&v29, sub_1DCDEC7BC, sub_1DCDE8C34);
  }

  else
  {
    v15 = *v7;
    v16 = *(v7 + 1);
    v17 = *(v7 + 2);
    v18 = *(v7 + 3);
    v19 = *(v7 + 4);
    v20 = v8;
    v21 = v14;
    sub_1DCDEC6D0(v9, v10, v11, v12, v13, v8, v14);
    v27 = v4;
    v28 = v5;
    sub_1DCBB12F4(v4, v5, 0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DCAFC000, v23, v24, "Prompt flow rejected the parameter confirmation. Transitioning to handle intent cancelled response.", v25, 2u);
      MEMORY[0x1E12A8390](v25, -1, -1);
    }

    v29 = v15;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    v33 = v19;
    *&v34 = v20 & 1 | 0x4000000000000000;
    *(&v34 + 1) = v21;
    sub_1DCDEC6D0(v15, v16, v17, v18, v19, v20, v21);
    sub_1DCDE8E70(&v29, sub_1DCDEC7BC, sub_1DCDE8C34);
    sub_1DCBB1310(v27, v28, 0);
  }

  sub_1DCDEC7BC(v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1DCDEA67C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v3[17] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDEA6C8, 0, 0);
}

uint64_t sub_1DCDEA6C8()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 25);
  *(v0 + 16) = *(v1 + 1);
  *(v0 + 25) = v5;
  v6 = *(v1 + 25);
  *(v0 + 48) = *(v1 + 1);
  *(v0 + 57) = v6;
  v7 = *(v2 + 88);
  v8 = *(v7 + 16);
  sub_1DCDECFFC(v0 + 16, v0 + 80);
  v9 = *(v2 + 80);
  v14 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 144) = v10;
  *v10 = v11;
  v10[1] = sub_1DCDEA850;
  v12 = *(v0 + 112);

  return v14(v12, v3, v4, v0 + 48, v9, v7);
}

uint64_t sub_1DCDEA850()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    v8 = *(v4 + 8);

    return v8();
  }
}

unint64_t sub_1DCDEA9BC()
{
  result = 0x646574726174732ELL;
  switch(*(v0 + 40) >> 61)
  {
    case 1:
      result = 0x5374706D6F72702ELL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x74656C706D6F632ELL;
      break;
    case 4:
      result = 0x726F7272652ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDEAA68(void (*a1)(void, void, void, void, void, void, void))
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v3 + 8))(v1 + v4);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + *(v5 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + *(v6 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + *(v7 + 120)));
  OUTLINED_FUNCTION_66();
  v9 = (v1 + *(v8 + 128));
  a1(*v9, v9[1], v9[2], v9[3], v9[4], v9[5], v9[6]);
  return v1;
}

uint64_t sub_1DCDEAB64(void (*a1)(void, void, void, void, void, void, void))
{
  sub_1DCDEAA68(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDEABF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDE90C8();
}

uint64_t sub_1DCDEACB4()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(*(v0 + 80));
}

uint64_t sub_1DCDEAD20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87_7();
  v12 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_4_50();
  (*(v7 + 32))(v2 + v8);
  OUTLINED_FUNCTION_66();
  v10 = v2 + *(v9 + 104);
  *v10 = *a2;
  *(v10 + 16) = v12;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  *(v10 + 48) = v6;
  return v2;
}

uint64_t sub_1DCDEADE8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDEAE28);
}

uint64_t sub_1DCDEAF60()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[13] = v0;

  OUTLINED_FUNCTION_92_6();

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v11();
  }
}

uint64_t sub_1DCDEB094(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDEB0D4);
}

uint64_t sub_1DCDEB20C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[13] = v0;

  OUTLINED_FUNCTION_92_6();

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v11();
  }
}

uint64_t sub_1DCDEB340()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v2 + 8))(v0 + v3);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_110_2(*(v4 + 104));

  return v0;
}

uint64_t sub_1DCDEB3F4(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDEB450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCDEADE8(a1);
}

uint64_t sub_1DCDEB510(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCDEB094(a1);
}

uint64_t sub_1DCDEB5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_23_7();
  v14 = OUTLINED_FUNCTION_88_7();
  v25 = type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter(v14, v15, v16, v17);
  OUTLINED_FUNCTION_98_6();

  return NeedsConfirmationFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(v18, v19, v20, v21, v22, a6, a7, a8, a9, v25, a11);
}

uint64_t sub_1DCDEB6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v12 = OUTLINED_FUNCTION_88_7();
  v16 = type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter(v12, v13, v14, v15);
  return a12(v16);
}

uint64_t sub_1DCDEB78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  v11 = OUTLINED_FUNCTION_88_7();
  v15 = type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter(v11, v12, v13, v14);
  return a11(v15);
}

uint64_t sub_1DCDEB7E0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  type metadata accessor for RCHDelegateToNeedsConfirmationWithCancellationFlowStrategyAdapter(0, *(v2 + 232), *(v2 + 240), v4);
  *v3 = v0;
  v3[1] = sub_1DCB4AE1C;

  return NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)();
}

uint64_t dispatch thunk of NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_25_1();
  v26 = v12 + *v12;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_0(v13);
  *v14 = v15;
  v14[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_98_6();
  OUTLINED_FUNCTION_96_0();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, v26, a11, a12);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v11, v12, v13, v14);
  OUTLINED_FUNCTION_8();
  v15 = swift_task_alloc();
  *(v10 + 16) = v15;
  *v15 = v10;
  v15[1] = sub_1DCBCF434;
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_47();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_31_2(v7);

  return v10(v9);
}

uint64_t dispatch thunk of NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_31_2(v7);

  return v10(v9);
}

uint64_t sub_1DCDEC3D4(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCDEC480(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCDEC558(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCDEC61C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

id sub_1DCDEC6D0(id result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  switch(a6 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
      sub_1DD0DCF8C();
    case 3uLL:

      result = sub_1DCBB12F4(result, a2, a3);
      break;
    case 4uLL:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCDEC7BC(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  switch(a6 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:

      a1 = a7;

      goto LABEL_4;
    case 3uLL:

      sub_1DCBB1310(a1, a2, a3);
      break;
    case 4uLL:

LABEL_4:

      break;
    default:
      return;
  }
}

id sub_1DCDEC924(id result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  switch(a6 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
      sub_1DD0DCF8C();
    case 3uLL:

      result = result;
      break;
    case 4uLL:

      result = sub_1DCBB12F4(result, a2, a3);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCDECA24(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  switch(a6 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:

      a1 = a7;

      goto LABEL_4;
    case 3uLL:

LABEL_4:

      break;
    case 4uLL:

      sub_1DCBB1310(a1, a2, a3);
      break;
    default:
      return;
  }
}

void *sub_1DCDECB10(void *a1, void *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  a4(*a2, v6, v7, v8, v9, v10, v11);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v11;
  return a1;
}

void sub_1DCDECBC0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  OUTLINED_FUNCTION_107_0();
  v12();
  v13 = *v3;
  v14 = v3[1];
  v15 = v3[2];
  v16 = v3[3];
  v17 = v3[4];
  v18 = v3[5];
  v19 = v3[6];
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v8;
  v3[4] = v9;
  v3[5] = v10;
  v3[6] = v11;
  v1(v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_49();
}

uint64_t *sub_1DCDECC68(uint64_t *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101_2(*a1, a2);
  a1[6] = v4;
  v5(v3);
  return a1;
}

uint64_t sub_1DCDECCB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1DCDECD00(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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

      return OUTLINED_FUNCTION_17_27(a1, -a2);
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_27(a1, -a2);
    }
  }

  return result;
}

uint64_t sub_1DCDECD48(uint64_t a1)
{
  v1 = *(a1 + 40) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DCDECD64(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 40) = *(result + 40) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = xmmword_1DD0F6EB0;
  }

  return result;
}

uint64_t sub_1DCDECDB8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCDECDF4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCDECE3C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCDECE78(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCDECF2C()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCDEA67C(v2, v4, v3);
}

uint64_t sub_1DCDED0FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_78();

  return sub_1DCD753FC(v1);
}

uint64_t sub_1DCDED19C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_78();
  return sub_1DCD75750(v1);
}

uint64_t sub_1DCDED218()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer(255, AssociatedTypeWitness, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v6 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v6);
  v7 = OUTLINED_FUNCTION_78();

  return sub_1DCDE0718(v7, v8, v1, v2);
}

uint64_t sub_1DCDED2EC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4_50();
  (*v3)(a2);
  return a2;
}

uint64_t *sub_1DCDED3D4(uint64_t *result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v3 = result[5];
  if ((v3 >> 1) <= 0x80000000)
  {
    return OUTLINED_FUNCTION_41_18(result, result[1], result[2], result[3], result[4], v3, a3, *result);
  }

  return result;
}

void *sub_1DCDED418(void *a1, uint64_t *a2)
{
  v3 = a2[5];
  if ((v3 >> 1) > 0x80000000)
  {
    OUTLINED_FUNCTION_101_2(a1, a2);
    a1[6] = *(v11 + 48);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[6];
    OUTLINED_FUNCTION_107_0();
    v10();
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
    a1[4] = v8;
    a1[5] = v3;
    a1[6] = v9;
  }

  return a1;
}

void sub_1DCDED4E4()
{
  OUTLINED_FUNCTION_50();
  v3 = v0;
  v5 = v4;
  v6 = v0[5];
  v7 = v6 >> 1;
  if ((v4[5] >> 1) > 0x80000000)
  {
    if (v7 <= 0x80000000)
    {
      v22 = *v0;
      v23 = v0[1];
      v24 = v0[2];
      v25 = v0[3];
      v26 = v0[4];
      v27 = v0[6];
      v1(*v0, v23, v24, v25, v26, v6, v27);
      *v5 = v22;
      v5[1] = v23;
      v5[2] = v24;
      v5[3] = v25;
      v5[4] = v26;
      v5[5] = v6;
      v5[6] = v27;
      goto LABEL_8;
    }

LABEL_7:
    v29 = *v3;
    v30 = *(v3 + 1);
    v31 = *(v3 + 2);
    v5[6] = v3[6];
    *(v5 + 1) = v30;
    *(v5 + 2) = v31;
    *v5 = v29;
    goto LABEL_8;
  }

  v8 = v2;
  if (v7 > 0x80000000)
  {
    v28 = OUTLINED_FUNCTION_56_15();
    v8(v28);
    goto LABEL_7;
  }

  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[6];
  v1(*v0, v10, v11, v12, v13, v6, v14);
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[2];
  v18 = v5[3];
  v19 = v5[4];
  v20 = v5[5];
  v21 = v5[6];
  *v5 = v9;
  v5[1] = v10;
  v5[2] = v11;
  v5[3] = v12;
  v5[4] = v13;
  v5[5] = v6;
  v5[6] = v14;
  (v8)(v15, v16, v17, v18, v19, v20, v21);
LABEL_8:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCDED634(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) >> 1) > 0x80000000)
  {
    goto LABEL_5;
  }

  if ((*(a2 + 40) >> 1) > 0x80000000)
  {
    v10 = OUTLINED_FUNCTION_56_15();
    v11(v10);
LABEL_5:
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return a1;
  }

  v4 = OUTLINED_FUNCTION_56_15();
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  v9(v4);
  return a1;
}

uint64_t sub_1DCDED6D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_68_0();
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40) >> 1;
  if (v3 > 0x80000000)
  {
    v4 = ~v3;
  }

  else
  {
    v4 = -1;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_1DCDED724(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 56) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_17_27(a1, ~a2);
    }
  }
}

double sub_1DCDED780(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_17_27(a1, -a2);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_101_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  result = *(a2 + 32);
  *(v2 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return sub_1DCB651D0(v0);
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1)
{

  return swift_allocError();
}

uint64_t NeedsDisambiguationFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a7 + 24);
  v12 = a7[4];
  v13 = *(a7 + 40);
  v15 = *a7;
  v16 = *(a7 + 1);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  return (*(a11 + 96))(a1, a2, a3, a4, a5, a6, &v15, a8, a9, a10, a11);
}

void NeedsDisambiguationFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DD0F77B8;
  v16[5] = 0;
  v16[6] = a8;
  v16[7] = a9;
  sub_1DD0DCF8C();
}

void sub_1DCDEDB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - v17;
  v19 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a12;
  v20[5] = 0;
  v20[6] = a7;
  v20[7] = a8;
  sub_1DD0DCF8C();
}

void sub_1DCDEDC14()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v0[15] = type metadata accessor for RefreshableDeviceState();
  v0[16] = &protocol witness table for RefreshableDeviceState;
  v0[12] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDEDD08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDEDE08()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[22];
  sub_1DCB17D04((v0 + 2), v1);
  v3 = v0[7];
  v2 = v0[8];

  sub_1DCCCF318((v0 + 2));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_43();

  return v4();
}

void NeedsDisambiguationFlowStrategyAsync.authenticationPolicy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCDEDEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AD3C;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  v13 = *(v10 + 40);
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  v17 = *(v14 + 48);
  *(v9 + 72) = *v10;
  *(v9 + 80) = *(v10 + 8);
  *(v9 + 96) = v11;
  *(v9 + 104) = v12;
  *(v9 + 112) = v13;
  v18 = *(v14 + 16);
  *(v9 + 16) = *v14;
  *(v9 + 32) = v18;
  *(v9 + 48) = v15;
  *(v9 + 56) = v16;
  *(v9 + 64) = v17;
  OUTLINED_FUNCTION_25_1();
  v30 = v19 + *v19;
  v20 = swift_task_alloc();
  *(v9 + 120) = v20;
  *v20 = v9;
  v20[1] = sub_1DCDEE104;
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1DCDEE104()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v8();
  }
}

uint64_t sub_1DCDEE220(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)();
}

uint64_t NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCDEE344(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)();
}

uint64_t NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDB478();
}

uint64_t sub_1DCDEE468(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1);
}

void sub_1DCDEE514()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  v4 = a1[3];
  swift_getObjectType();
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  v6 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](46, 0xE100000000000000);
  MEMORY[0x1E12A6780](v3, v4);
  return v6;
}

uint64_t NeedsDisambiguationFlowStrategyAsync.actionForInputWrapper(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 72) = *(a3 + 16);
  *(v6 + 80) = *(a3 + 24);
  *(v6 + 104) = *(a3 + 40);
  *(v6 + 96) = *(a3 + 48);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDEE704()
{
  OUTLINED_FUNCTION_41();
  v14 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v10[0] = *(v0 + 56);
  v10[1] = v4;
  v11 = v3;
  v12 = v1;
  v13 = v2;
  (*(v5 + 64))(v6, v10, v7);
  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCDEE798()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(*(v0 + 80));
}

uint64_t sub_1DCDEE804()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(v0);
}

uint64_t sub_1DCDEE880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v21 = a1;
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v18 - v7;
  v10 = *v9;
  v18 = v9[1];
  v19 = v10;
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = *(v9 + 40);
  v15 = v9[6];
  (*(v6 + 16))(&v18 - v7, v3 + *(v4 + 96), v5);
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  (*(*(v4 + 88) + 72))(v19, v18, v11, v12, v16, v15, v21, v5, *(v4 + 88));
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DCDEEA04(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[10] = v2;
  v3[11] = *v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDEEA54()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[10];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCDE0D80;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCDEEB58(uint64_t a1, char *a2, uint64_t *a3)
{
  v30 = a1;
  v5 = *a2;
  v31 = *(*a2 + 88);
  v6 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DE47C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v24 - v15;
  (*(v13 + 16))(&v24 - v15, &a2[*(v5 + 96)], v6);
  v17 = a3[2];
  v28 = a3[3];
  v29 = v17;
  if (a3[5])
  {
    v18 = 0;
  }

  else
  {
    v18 = a3[4];
  }

  v19 = a3[1];
  v25 = *a3;
  v26 = a3[6];
  v27 = v18;
  (*(v8 + 16))(v12, v30, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v6;
  *(v21 + 24) = v22;
  (*(v8 + 32))(v21 + v20, v12, v7);
  (*(v22 + 80))(v25, v19, v29, v28, v27, v26, sub_1DCDF6118, v21, v6, v22);

  return (*(v13 + 8))(v16, v6);
}

uint64_t sub_1DCDEEE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v5);
}

uint64_t sub_1DCDEEEB0(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  *(v5 + 128) = a2;
  *(v5 + 136) = v4;
  *(v5 + 120) = a1;
  *(v5 + 144) = *v4;
  v6 = a3[1];
  *(v5 + 72) = *a3;
  *(v5 + 88) = v6;
  *(v5 + 97) = *(a3 + 25);
  v7 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v7;
  *(v5 + 48) = *(a4 + 32);
  *(v5 + 64) = *(a4 + 48);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDEEF1C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = v0[17];
  v2 = v0[16];
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  v3[5] = v0 + 9;
  v4 = swift_task_alloc();
  v0[20] = v4;
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_6_0();
  v9 = type metadata accessor for IntentPromptAnswer(v5, v6, v7, v8);
  type metadata accessor for DisambiguationResult(0, v9, v10, v11);
  OUTLINED_FUNCTION_17();
  *v4 = v12;
  OUTLINED_FUNCTION_67_11();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DE38](v13);
}

uint64_t sub_1DCDEF038()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDEF154()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDEF1B0(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v43 = a4;
  v41 = a1;
  v8 = *a2;
  v42 = *(*a2 + 88);
  v9 = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v11, v12);
  type metadata accessor for DisambiguationResult(255, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v38 = sub_1DD0DE47C();
  v16 = *(v38 - 8);
  v18 = MEMORY[0x1EEE9AC00](v38, v17);
  v20 = &v34 - v19;
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = &v34 - v23;
  (*(v21 + 16))(&v34 - v23, &a2[*(v8 + 96)], v9);
  v25 = a3[2];
  v39 = a3[3];
  v40 = v25;
  if (a3[5])
  {
    v26 = 0;
  }

  else
  {
    v26 = a3[4];
  }

  v27 = a3[1];
  v35 = *a3;
  v36 = a3[6];
  v37 = v26;
  v28 = a5[1];
  v44 = *a5;
  v45[0] = v28;
  *(v45 + 9) = *(a5 + 25);
  v29 = v38;
  (*(v16 + 16))(v20, v41, v38);
  v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v31 = swift_allocObject();
  v32 = v42;
  *(v31 + 16) = v9;
  *(v31 + 24) = v32;
  (*(v16 + 32))(v31 + v30, v20, v29);
  (*(v32 + 88))(v35, v27, v40, v39, v37, v36, v43, &v44, sub_1DCDF603C, v31, v9, v32);

  return (*(v21 + 8))(v24, v9);
}

uint64_t sub_1DCDEF4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v6, v7);
  type metadata accessor for DisambiguationResult(255, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v11);
}

uint64_t sub_1DCDEF580()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_56_16();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_44_17(v1);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_67_11();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDEF66C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDEF788()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDEF7E4(uint64_t a1, char *a2, uint64_t *a3, __int128 *a4)
{
  v34 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - v12;
  v27 = v7;
  v14 = *(v7 + 80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v27 - v17;
  (*(v15 + 16))(&v27 - v17, &a2[*(v19 + 96)], v14);
  v20 = a3[2];
  v32 = a3[3];
  v33 = v20;
  if (a3[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = a3[4];
  }

  v22 = *a3;
  v28 = a3[1];
  v29 = v22;
  v30 = a3[6];
  v31 = v21;
  v23 = a4[1];
  v35 = *a4;
  v36[0] = v23;
  *(v36 + 9) = *(a4 + 25);
  (*(v9 + 16))(v13, v34, v8);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v13, v8);
  (*(*(v27 + 88) + 96))(v29, v28, v33, v32, v31, v30, &v35, sub_1DCDED198, v25, v14, *(v27 + 88));

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1DCDEFAB4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_56_16();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_44_17(v1);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_67_11();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDEFBA0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDEFCBC(uint64_t a1, char *a2, uint64_t *a3, __int128 *a4)
{
  v34 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - v12;
  v27 = v7;
  v14 = *(v7 + 80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v27 - v17;
  (*(v15 + 16))(&v27 - v17, &a2[*(v19 + 96)], v14);
  v20 = a3[2];
  v32 = a3[3];
  v33 = v20;
  if (a3[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = a3[4];
  }

  v22 = *a3;
  v28 = a3[1];
  v29 = v22;
  v30 = a3[6];
  v31 = v21;
  v23 = a4[1];
  v35 = *a4;
  v36[0] = v23;
  *(v36 + 9) = *(a4 + 25);
  (*(v9 + 16))(v13, v34, v8);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v13, v8);
  (*(*(v27 + 88) + 104))(v29, v28, v33, v32, v31, v30, &v35, sub_1DCDED7C8, v25, v14, *(v27 + 88));

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1DCDEFF8C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_56_16();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_44_17(v1);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_67_11();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDF0078(uint64_t a1, char *a2, uint64_t *a3, __int128 *a4)
{
  v34 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - v12;
  v27 = v7;
  v14 = *(v7 + 80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v27 - v17;
  (*(v15 + 16))(&v27 - v17, &a2[*(v19 + 96)], v14);
  v20 = a3[2];
  v32 = a3[3];
  v33 = v20;
  if (a3[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = a3[4];
  }

  v22 = *a3;
  v28 = a3[1];
  v29 = v22;
  v30 = a3[6];
  v31 = v21;
  v23 = a4[1];
  v35 = *a4;
  v36[0] = v23;
  *(v36 + 9) = *(a4 + 25);
  (*(v9 + 16))(v13, v34, v8);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v13, v8);
  (*(*(v27 + 88) + 112))(v29, v28, v33, v32, v31, v30, &v35, sub_1DCDED7C8, v25, v14, *(v27 + 88));

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1DCDF0324(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDF034C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[10];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCCAA70C;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCDF0440(uint64_t a1, char *a2, uint64_t *a3)
{
  v30 = a1;
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23 - v10;
  v12 = v5[10];
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v23 - v15;
  (*(v13 + 16))(&v23 - v15, &a2[v5[12]], v12);
  v17 = a3[2];
  v28 = a3[3];
  v29 = v17;
  if (a3[5])
  {
    v18 = 0;
  }

  else
  {
    v18 = a3[4];
  }

  v19 = *a3;
  v24 = a3[1];
  v25 = v19;
  v26 = a3[6];
  v27 = v18;
  (*(v7 + 16))(v11, v30, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v11, v6);
  (*(v5[11] + 120))(v25, v24, v29, v28, v27, v26, sub_1DCDED7C8, v21, v12, v5[11]);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1DCDF06C8(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDF06F0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[31];
  v2 = swift_task_alloc();
  v0[32] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[33] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCDE1E3C;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCDF07E4(uint64_t a1, char *a2, uint64_t *a3)
{
  v30 = a1;
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23 - v10;
  v12 = v5[10];
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v23 - v15;
  (*(v13 + 16))(&v23 - v15, &a2[v5[12]], v12);
  v17 = a3[2];
  v28 = a3[3];
  v29 = v17;
  if (a3[5])
  {
    v18 = 0;
  }

  else
  {
    v18 = a3[4];
  }

  v19 = *a3;
  v24 = a3[1];
  v25 = v19;
  v26 = a3[6];
  v27 = v18;
  (*(v7 + 16))(v11, v30, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v11, v6);
  (*(v5[11] + 128))(v25, v24, v29, v28, v27, v26, sub_1DCDED0FC, v21, v12, v5[11]);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1DCDF0AF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDEEA04(a1, a2);
}

uint64_t sub_1DCDF0B9C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDEEEB0(a1, a2, a3, a4);
}

uint64_t sub_1DCDF0C60(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDEF55C(a1, a2, a3);
}

uint64_t sub_1DCDF0D14(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDEFA90(a1, a2, a3);
}

uint64_t sub_1DCDF0DC8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDEFF68(a1, a2, a3);
}

uint64_t sub_1DCDF0E7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDF0324(a1, a2);
}

uint64_t sub_1DCDF0F28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDF06C8(a1, a2);
}

uint64_t sub_1DCDF1018()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(*(v0 + 80));
}

void sub_1DCDF1084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF118C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCDF11E4(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCDF11E4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v15 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_112();
  (*(v9 + 32))(v3 + v10);
  OUTLINED_FUNCTION_66();
  v12 = v3 + *(v11 + 104);
  *v12 = *a2;
  *(v12 + 16) = v15;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v3 + *(v13 + 112));
  return v3;
}

void sub_1DCDF12D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  sub_1DD0DCF8C();
}

void sub_1DCDF13E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF14F4()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  *(v1 + 432) = v5;
  *(v1 + 440) = v2;
  *(v1 + 424) = v6;
  *(v1 + 448) = *v2;
  v7 = type metadata accessor for SiriKitEventPayload(0);
  *(v1 + 456) = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v8 = OUTLINED_FUNCTION_38();
  v9 = *v4;
  *(v1 + 464) = v8;
  *(v1 + 472) = v9;
  *(v1 + 480) = *(v4 + 1);
  *(v1 + 114) = *(v4 + 24);
  *(v1 + 496) = v4[4];
  *(v1 + 115) = *(v4 + 40);
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDF17B8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[70] = v0;

  OUTLINED_FUNCTION_35_25();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDF18E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100();
  v17 = (v16 + 376);
  swift_getAssociatedTypeWitness();
  v18 = OUTLINED_FUNCTION_6_0();
  v22 = type metadata accessor for IntentPromptAnswer(v18, v19, v20, v21);
  v23 = OUTLINED_FUNCTION_66_0();
  v27 = type metadata accessor for DisambiguationResult(v23, v24, v25, v26);
  DisambiguationResult.chosenItem.getter(v27, v16 + 304);
  sub_1DCB16DB0(v16 + 344, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (*(v16 + 336))
  {
    sub_1DCB17C3C(v16 + 304, v16 + 376, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    OUTLINED_FUNCTION_112();
    (*(v28 + 8))(v16 + 304, v22);
  }

  else
  {
    OUTLINED_FUNCTION_66_0();
    sub_1DD0DE97C();
    OUTLINED_FUNCTION_13_1();
    (*(v29 + 8))(v16 + 304);
    *v17 = 0u;
    *(v16 + 392) = 0u;
  }

  v30 = *(v16 + 392);
  *(v16 + 344) = *v17;
  *(v16 + 360) = v30;
  *(v16 + 72) = *(v16 + 168);
  *(v16 + 88) = *(v16 + 184);
  *(v16 + 97) = *(v16 + 193);
  *(v16 + 113) = 0;
  *(v16 + 568) = *(v16 + 560);
  v31 = *(v16 + 528);
  v32 = *(v16 + 520);
  v33 = *(v16 + 512);
  v34 = *(v16 + 464);
  v35 = *(v16 + 440);
  v36 = v35 + *(v16 + 504);
  sub_1DCB17D04(v35 + *(*v35 + 112), v16 + 264);
  v61 = *(v16 + 288);
  v60 = __swift_project_boxed_opaque_existential_1((v16 + 264), v61);
  *v34 = 57;
  v37 = [v32 typeName];
  v38 = sub_1DD0DDFBC();
  v40 = v39;

  *(v34 + 8) = v38;
  *(v34 + 16) = v40;
  *(v34 + 32) = 0;
  *(v34 + 40) = 0;
  *(v34 + 24) = v33;
  sub_1DCB17C3C(v16 + 344, v34 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v41 = [v31 disambiguationItems];
  v42 = sub_1DD0DE2EC();

  *(v34 + 80) = v42;
  *(v34 + 88) = 0u;
  *(v34 + 104) = 0u;
  *(v34 + 120) = 0u;
  v43 = *(v36 + 24);
  v44 = *(v36 + 32);
  v45 = *(v36 + 40);
  *(v34 + 136) = *(v36 + 16);
  *(v34 + 144) = v43;
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  type metadata accessor for SiriKitEvent(0);
  *(v34 + 152) = 0;
  *(v34 + 160) = 0;
  *(v16 + 408) = v46;

  *(v34 + 168) = sub_1DD0DF03C();
  *(v34 + 176) = v47;
  *(v34 + 184) = 125;
  swift_storeEnumTagMultiPayload();
  *(v16 + 576) = SiriKitEvent.__allocating_init(_:builder:)(v34, 0);
  OUTLINED_FUNCTION_8();
  v59 = v48 + *v48;
  v49 = swift_task_alloc();
  *(v16 + 584) = v49;
  *v49 = v16;
  OUTLINED_FUNCTION_18_31(v49);
  OUTLINED_FUNCTION_73();

  return v53(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, v59, v60, v61, a14, a15, a16);
}

uint64_t sub_1DCDF1C70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCDF1D70()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[71];
  v2 = v0[53];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 33);
  swift_getAssociatedTypeWitness();
  v3 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for DisambiguationResult(v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DF22C();
  v12 = *(v11 - 1);
  (*(v12 + 16))(v0 + 15, v0 + 9, v11);
  sub_1DCDF2174(v11, (v0 + 52), v2);
  sub_1DCB16DB0((v0 + 43), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  (*(v12 + 8))(v0 + 9, v11);

  if (v1)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_43();
  }

  return v13();
}

uint64_t sub_1DCDF1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  *(v14 + 72) = *(v14 + 560);
  *(v14 + 113) = 1;
  *(v14 + 568) = 0;
  v15 = *(v14 + 528);
  v16 = *(v14 + 520);
  v17 = *(v14 + 512);
  v18 = *(v14 + 464);
  v19 = *(v14 + 440);
  v20 = v19 + *(v14 + 504);
  sub_1DCB17D04(v19 + *(*v19 + 112), v14 + 264);
  v44 = __swift_project_boxed_opaque_existential_1((v14 + 264), *(v14 + 288));
  *v18 = 57;
  v21 = [v16 typeName];
  v22 = sub_1DD0DDFBC();
  v24 = v23;

  *(v18 + 8) = v22;
  *(v18 + 16) = v24;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 24) = v17;
  sub_1DCB17C3C(v14 + 344, v18 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v25 = [v15 disambiguationItems];
  v26 = sub_1DD0DE2EC();

  *(v18 + 80) = v26;
  *(v18 + 88) = 0u;
  *(v18 + 104) = 0u;
  *(v18 + 120) = 0u;
  v27 = *(v20 + 24);
  v28 = *(v20 + 32);
  v29 = *(v20 + 40);
  *(v18 + 136) = *(v20 + 16);
  *(v18 + 144) = v27;
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  type metadata accessor for SiriKitEvent(0);
  *(v18 + 152) = 0;
  *(v18 + 160) = 0;
  *(v14 + 408) = v30;

  *(v18 + 168) = sub_1DD0DF03C();
  *(v18 + 176) = v31;
  *(v18 + 184) = 125;
  swift_storeEnumTagMultiPayload();
  *(v14 + 576) = SiriKitEvent.__allocating_init(_:builder:)(v18, 0);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_25_1();
  v43 = v32 + *v32;
  v33 = swift_task_alloc();
  *(v14 + 584) = v33;
  *v33 = v14;
  OUTLINED_FUNCTION_5_68(v33);
  OUTLINED_FUNCTION_76();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, a12, a13, a14);
}

uint64_t sub_1DCDF2174@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1DCDF2244(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDF2284);
}

void sub_1DCDF2284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = (*(v14 + 80) + *(**(v14 + 80) + 104));
  OUTLINED_FUNCTION_40_19(*v15, v15);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF23DC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_25();

    v8 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = *(v4 + 24);
    v12 = *(v4 + 64);

    *(v4 + 120) = 7456;
    v13 = (v4 + 120);
    v14 = swift_task_alloc();
    *(v13 - 1) = v14;
    *v14 = v6;
    v14[1] = sub_1DCDF2588;
    v15 = *(v13 - 6);

    return sub_1DCDF2668(v15, v13, v13 + 1, 0, 0, 0);
  }
}

uint64_t sub_1DCDF2588()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDF2668(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  *(v7 + 56) = type metadata accessor for SiriKitEventPayload(0);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 88) = *a2;
  *(v7 + 89) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1DCDF2724, 0, 0);
}

uint64_t sub_1DCDF2724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100();
  v17 = *(v16 + 16);
  v18 = v17[3];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  if (sub_1DCB651D0(v18))
  {
    v40 = *(v16 + 89);
    v19 = *(v16 + 88);
    v20 = *(v16 + 64);
    v22 = *(v16 + 40);
    v21 = *(v16 + 48);
    v23 = *(v16 + 24);
    v24 = *(v16 + 32);
    __swift_project_boxed_opaque_existential_1((v21 + *(*v21 + 112)), *(v21 + *(*v21 + 112) + 24));
    type metadata accessor for SiriKitEvent(0);
    *v20 = v19;
    v25 = v21 + *(*v21 + 104);
    v26 = [*(v25 + 8) typeName];
    v27 = sub_1DD0DDFBC();
    v29 = v28;

    *(v20 + 8) = v27;
    *(v20 + 16) = v29;
    *(v20 + 24) = *v25;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = v22;
    *(v20 + 88) = 0u;
    *(v20 + 104) = 0u;
    *(v20 + 120) = 0u;
    v30 = *(v25 + 24);
    *(v20 + 136) = *(v25 + 16);
    *(v20 + 144) = v30;
    *(v20 + 152) = 0;
    *(v20 + 160) = 0;
    *(v20 + 168) = v23;
    *(v20 + 176) = v24;
    *(v20 + 184) = v40;
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DCDF29A8()
{
  OUTLINED_FUNCTION_42();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = *v0;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v1[21] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[22] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCDF2A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = (v14[19] + *(*v14[19] + 104));
  v16 = *v15;
  v14[23] = *v15;
  v14[24] = v15[1];
  v14[25] = v15[2];
  v14[26] = v15[3];
  OUTLINED_FUNCTION_40_19(v16, v15);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF2BBC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v3[28] = v0;

  v7 = v3[3];
  v8 = v3[8];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDF2CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100();
  v17 = *(v16 + 208);
  v18 = *(v16 + 184);
  v19 = *(v16 + 176);
  v25 = *(v16 + 200);
  v20 = (*(v16 + 152) + *(**(v16 + 152) + 112));
  v21 = [*(v16 + 192) typeName];
  v22 = sub_1DD0DDFBC();
  v24 = v23;

  *(v16 + 128) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0;
  *(v16 + 72) = 0u;
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  type metadata accessor for SiriKitEvent(0);
  *v19 = 11;
  *(v19 + 8) = v22;
  *(v19 + 16) = v24;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 24) = v18;
  sub_1DCB17C3C(v16 + 112, v19 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  sub_1DCB17C3C(v16 + 72, v19 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v19 + 136) = v25;
  *(v19 + 144) = v17;
  *(v19 + 152) = 0u;
  *(v19 + 168) = 0u;
  *(v19 + 184) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF2F18()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB16DB0(v2 + 72, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16DB0(v2 + 112, &dword_1ECCA3CE0, &unk_1DD0E4F80);

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1DCDF3060()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDF30BC()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v1[18] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v4 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_8_54(v4);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCDF3294()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[28] = v0;

  OUTLINED_FUNCTION_35_25();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDF33BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_50_13(*(v19 + 112));
  v20 = [v17 disambiguationItems];
  v21 = sub_1DD0DE2EC();

  v22 = *(v16 + 16);
  v23 = *(v16 + 24);
  v24 = *(v16 + 32);
  *(v15 + 264) = *(v16 + 40);
  *v14 = v21;
  *(v14 + 8) = v18;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v22;
  *(v14 + 40) = v23;
  *(v14 + 48) = v24;
  *(v14 + 56) = *(v15 + 264);
  swift_storeEnumTagMultiPayload();
  v25 = v18;

  v26 = OUTLINED_FUNCTION_59_4();
  v28 = SiriKitEvent.__allocating_init(_:builder:)(v26, v27);
  OUTLINED_FUNCTION_63_10(v28);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_25_1();
  v42 = v29 + *v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_68_12(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_5_68(v31);
  OUTLINED_FUNCTION_76();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, a11, a12, a13, a14);
}

uint64_t sub_1DCDF3548()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCDF3648()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 208);
  *(v0 + 113) = 7480;
  v2 = [v1 disambiguationItems];
  v3 = sub_1DD0DE2EC();
  *(v0 + 248) = v3;

  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_1DCDF3738;
  v5 = *(v0 + 120);

  return sub_1DCDF2668(v5, (v0 + 113), (v0 + 114), 0, 0, v3);
}

uint64_t sub_1DCDF3738()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDF3850()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDF38AC()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v1[18] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v4 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_8_54(v4);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCDF3A84()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[28] = v0;

  OUTLINED_FUNCTION_35_25();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDF3BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_50_13(*(v16 + 112));
  v17 = [v14 disambiguationItems];
  sub_1DD0DE2EC();

  OUTLINED_FUNCTION_42_21();
  v18 = v15;

  v19 = OUTLINED_FUNCTION_59_4();
  v21 = SiriKitEvent.__allocating_init(_:builder:)(v19, v20);
  OUTLINED_FUNCTION_63_10(v21);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_25_1();
  v35 = v22 + *v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_68_12(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_5_68(v24);
  OUTLINED_FUNCTION_76();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, a11, a12, a13, a14);
}

uint64_t sub_1DCDF3D04()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  *(v2 + 113) = 7480;
  v6 = swift_task_alloc();
  *(v2 + 248) = v6;
  *v6 = v4;
  v7 = OUTLINED_FUNCTION_10_49(v6);

  return sub_1DCDF2668(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCDF3E3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCDF3F38()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v1[18] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v4 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_8_54(v4);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCDF4110()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[28] = v0;

  OUTLINED_FUNCTION_35_25();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDF4238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_50_13(*(v16 + 112));
  v17 = [v14 disambiguationItems];
  sub_1DD0DE2EC();

  OUTLINED_FUNCTION_42_21();
  v18 = v15;

  v19 = OUTLINED_FUNCTION_59_4();
  v21 = SiriKitEvent.__allocating_init(_:builder:)(v19, v20);
  OUTLINED_FUNCTION_63_10(v21);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_25_1();
  v35 = v22 + *v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_68_12(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_5_68(v24);
  OUTLINED_FUNCTION_76();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, a11, a12, a13, a14);
}

uint64_t sub_1DCDF4390()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  *(v2 + 113) = 7480;
  v6 = swift_task_alloc();
  *(v2 + 248) = v6;
  *v6 = v4;
  v7 = OUTLINED_FUNCTION_10_49(v6);

  return sub_1DCDF2668(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCDF44C8()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = *v0;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v1[9] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[10] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCDF456C()
{
  v4 = v0[7];
  OUTLINED_FUNCTION_77();
  v6 = *(v5 + 104);
  v0[11] = v6;
  v7 = (v4 + v6);
  v8 = *v7;
  v9 = v7[1];
  v0[12] = v9;
  OUTLINED_FUNCTION_43_18(v7);
  v11 = *(v10 + 16);

  v16 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[13] = v12;
  *v12 = v13;
  v12[1] = sub_1DCDF46E8;
  v14 = v0[6];

  return v16(v14, v8, v9, v1, v2, v3);
}

uint64_t sub_1DCDF46E8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCDF4808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = v14[12];
  v16 = v14[10];
  v17 = v14[7];
  v18 = v17 + v14[11];
  __swift_project_boxed_opaque_existential_1((v17 + *(*v17 + 112)), *(v17 + *(*v17 + 112) + 24));
  type metadata accessor for SiriKitEvent(0);
  *v16 = 1;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 8) = v15;
  v19 = *(v18 + 24);
  v20 = *(v18 + 32);
  v21 = *(v18 + 40);
  *(v16 + 32) = *(v18 + 16);
  *(v16 + 40) = v19;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = v20;
  *(v16 + 88) = v21;
  swift_storeEnumTagMultiPayload();
  v22 = v15;

  v23 = OUTLINED_FUNCTION_59_4();
  v14[15] = SiriKitEvent.__allocating_init(_:builder:)(v23, v24);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_8();
  v36 = v25 + *v25;
  v26 = swift_task_alloc();
  v14[16] = v26;
  *v26 = v14;
  OUTLINED_FUNCTION_18_31(v26);
  OUTLINED_FUNCTION_76();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v36, a12, a13, a14);
}

uint64_t sub_1DCDF49AC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  *(v2 + 41) = 22277;
  v6 = swift_task_alloc();
  *(v2 + 136) = v6;
  *v6 = v4;
  v7 = OUTLINED_FUNCTION_10_49(v6);

  return sub_1DCDF2668(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCDF4AE4(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDF4B28);
}

uint64_t sub_1DCDF4B28()
{
  v4 = v0[12];
  OUTLINED_FUNCTION_77();
  v6 = (v4 + *(v5 + 104));
  v7 = *v6;
  v8 = v6[1];
  OUTLINED_FUNCTION_43_18(v6);
  v10 = *(v9 + 24);

  v16 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[14] = v11;
  *v11 = v12;
  v11[1] = sub_1DCDF4C9C;
  v13 = v0[10];
  v14 = v0[11];

  return v16(v13, v14, v7, v8, v1, v2, v3);
}

uint64_t sub_1DCDF4C9C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCDF4DBC()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 41) = 23302;
  swift_getErrorValue();
  v1 = sub_1DCEE0FD4(*(v0 + 56), *(v0 + 64));
  v3 = v2;
  *(v0 + 128) = v2;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1DCDE64F0;
  v5 = *(v0 + 80);

  return sub_1DCDF2668(v5, (v0 + 41), (v0 + 42), v1, v3, 0);
}

uint64_t sub_1DCDF4EB8(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDF4F1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDF14F4();
}

uint64_t sub_1DCDF4FCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDF30BC();
}

uint64_t sub_1DCDF5074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDF38AC();
}

uint64_t sub_1DCDF511C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDF3F38();
}

uint64_t sub_1DCDF51C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDF44C8();
}

uint64_t sub_1DCDF525C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDF4AE4(a1, a2);
}

uint64_t sub_1DCDF532C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCDF2244(a1);
}

uint64_t sub_1DCDF53C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCDF29A8();
}

uint64_t sub_1DCDF5498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for RCHDelegateToNeedsDisambiguationFlowStrategyAdapter(0, *(a10 + 80), *(a10 + 88), a4);

  return NeedsDisambiguationFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t dispatch thunk of NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_8();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_0(v13);
  *v14 = v15;
  v14[1] = sub_1DCB4AE1C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t sub_1DCDF5E74(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCDF5F50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_90Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCDF603C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v3 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for DisambiguationResult(v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_66_0();
  v11 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v11);
  v12 = OUTLINED_FUNCTION_78();

  return sub_1DCDEF4C0(v12, v13, v1, v2);
}

uint64_t sub_1DCDF6118()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_66_0();
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v3);
  v4 = OUTLINED_FUNCTION_78();

  return sub_1DCDEEE28(v4, v5, v1, v2);
}

void NeedsDisambiguationDetailedFlowProvider.authenticationRequirements.getter(void *a1@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v5, v6, "NeedsDisambiguationDetailedFlowProvider default implementation of makeAuthenticationFlowProviderIfNeeded not requesting authentication");
    OUTLINED_FUNCTION_80();
  }

  *a1 = 0x8000000000000000;
}

uint64_t NeedsDisambiguationDetailedSelectionFlowProvider.makeAllItemsFlow()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDF62BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v15 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
  v16 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v18);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v19, v20, "NeedsDisambiguationDetailedSelectionFlowProvider default makeAllItemsFlow implementation");
    OUTLINED_FUNCTION_62();
  }

  v21 = v14[8];
  v22 = v14[7];

  v23 = OUTLINED_FUNCTION_86();
  v24(v23);
  v25 = v14[5];
  v26 = v14[6];
  v43 = __swift_project_boxed_opaque_existential_1(v14 + 2, v25);
  v27 = (*(*(*(v21 + 8) + 8) + 24))(v22);
  v28 = OUTLINED_FUNCTION_86();
  v30 = v29(v28);
  v42 = *(v26 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42(v27, v30, AssociatedTypeWitness, AssociatedConformanceWitness, v25, v26);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_76();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14);
}

uint64_t NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowingConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDF64A0()
{
  OUTLINED_FUNCTION_90();
  v21 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "NeedsDisambiguationDetailedSelectionFlowProvider default makeWindowConfiguration implementation");
    OUTLINED_FUNCTION_62();
  }

  v8 = v0[4];
  v7 = v0[5];
  v10 = v0[2];
  v9 = v0[3];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v12 = sub_1DD0DE40C();
  static PromptFlowProviderType.selection<A>(_:)(v7, AssociatedTypeWitness, v12, v9, *(v8 + 16));
  WindowingConfiguration.init(promptFlowProviderType:padding:windowSizeOverride:)(&v20, 1, 0, 1, &v17);
  v13 = v18;
  v14 = v19;
  *v10 = v17;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_18(v1, v2, v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 88) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  *(v0 + 96) = v6;
  v7 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_11_45(v7);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDF66EC()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v5, v6, "NeedsDisambiguationDetailedSelectionFlowProvider default makeWindowFlow implementation");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_12_43();
  v7 = OUTLINED_FUNCTION_49_3();
  v8(v7);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v9 = OUTLINED_FUNCTION_4_75();
  v11 = v10(v9);
  v14 = OUTLINED_FUNCTION_60_8(v11, v12, v13, &protocol requirements base descriptor for NeedsDisambiguationDetailedSelectionFlowProvider);
  OUTLINED_FUNCTION_38_19(v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_20();
  v23(v22);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v24 = OUTLINED_FUNCTION_19_3();

  return v25(v24);
}

uint64_t NeedsDisambiguationDetailedSelectionFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_18(v1, v2, v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 88) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  *(v0 + 96) = v6;
  v7 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_11_45(v7);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDF6904()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v5, v6, "NeedsDisambiguationDetailedSelectionFlowProvider default makeFinalWindowFlow implementation");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_12_43();
  v7 = OUTLINED_FUNCTION_49_3();
  v8(v7);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v9 = OUTLINED_FUNCTION_4_75();
  v11 = v10(v9);
  v14 = OUTLINED_FUNCTION_60_8(v11, v12, v13, &protocol requirements base descriptor for NeedsDisambiguationDetailedSelectionFlowProvider);
  OUTLINED_FUNCTION_38_19(v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_20();
  v23(v22);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v24 = OUTLINED_FUNCTION_19_3();

  return v25(v24);
}

void sub_1DCDF6A64(uint64_t a1, __n128 *a2)
{
  OUTLINED_FUNCTION_16_33(a1, a2);
  v3 = OUTLINED_FUNCTION_59_14();
  v4 = OUTLINED_FUNCTION_59_14();
  type metadata accessor for NeedsDisambiguationAdapterFlow(0, v3, v4, v5);
  sub_1DCB17CA0(v2, &v15);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v21[2], v22);
  sub_1DCDF7204();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF6B74(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a8;
  *(v8 + 120) = v14;
  *(v8 + 96) = a6;
  *(v8 + 104) = a7;
  *(v8 + 80) = a1;
  *(v8 + 88) = a5;
  v9 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = *(a4 + 48);
  v12 = (a2 + *a2);
  v10 = swift_task_alloc();
  *(v8 + 128) = v10;
  *v10 = v8;
  v10[1] = sub_1DCDF6C90;

  return v12(v8 + 16);
}

uint64_t sub_1DCDF6C90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v7[17] = v2;

  if (!v2)
  {
    v7[18] = a2;
    v7[19] = a1;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCDF6DB0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v13 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(*(v0 + 88), *(*(v0 + 88) + 24));
  v5 = OUTLINED_FUNCTION_86();
  v7 = v6(v5);

  *(v0 + 72) = v1;
  (*(*(v2 + 8) + 24))(v3);
  v8 = sub_1DCDF6F04(v1, v4, v13, v3, v2);
  v10 = v9;
  swift_unknownObjectRelease();
  v11 = *(v0 + 8);

  return v11(v7, v8, v10);
}

void *sub_1DCDF6F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0F7E88;
}

uint64_t sub_1DCDF6F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a3;
  v11 = *(a7 + 8);
  v14 = (*(v11 + 32) + **(v11 + 32));
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = sub_1DCDF70C8;

  return v14(a1, a2, a6, v11);
}

uint64_t sub_1DCDF70C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t *sub_1DCDF7204()
{
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_86();
  return sub_1DCDF836C(v0, v1, v2, v3);
}

void sub_1DCDF7248(uint64_t a1, __n128 *a2)
{
  OUTLINED_FUNCTION_16_33(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsDisambiguationAdapterFlow(0, AssociatedTypeWitness, v4, v5);
  sub_1DCB17CA0(v2, &v15);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v21[2], v22);
  sub_1DCDF7204();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF736C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a8;
  *(v8 + 112) = v17;
  *(v8 + 88) = a6;
  *(v8 + 96) = a7;
  *(v8 + 72) = a1;
  *(v8 + 80) = a5;
  *(v8 + 120) = *(a8 - 8);
  v11 = swift_task_alloc();
  *(v8 + 128) = v11;
  *(v8 + 64) = *(a4 + 48);
  v12 = *(a4 + 32);
  *(v8 + 32) = *(a4 + 16);
  *(v8 + 48) = v12;
  *(v8 + 16) = *a4;
  v15 = (a2 + *a2);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_1DCDF74F4;

  return v15(v11, v8 + 16);
}

uint64_t sub_1DCDF74F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDF75F0()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v10 = (*(v4 + 104) + **(v4 + 104));
  v5 = swift_task_alloc();
  v0[19] = v5;
  v6 = *(v1 + 8);
  *v5 = v0;
  v5[1] = sub_1DCDF7730;
  v7 = v0[16];
  v8 = v0[13];

  return v10(v7, v8, v6, v3, v4);
}

uint64_t sub_1DCDF7730()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDF7840()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  (*(*(v3 + 16) + 24))(v4);
  v7 = sub_1DCDF79F4(v1, v6, v5, v4, v3);
  v9 = v8;
  (*(v2 + 8))(v1, v4);

  v10 = v0[1];
  v11 = v0[21];

  return v10(v11, v7, v9);
}

uint64_t sub_1DCDF7924()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDF7980()
{
  OUTLINED_FUNCTION_42();
  (*(v0[15] + 8))(v0[16], v0[13]);

  OUTLINED_FUNCTION_29();

  return v1();
}

void *sub_1DCDF79F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a4);
  return &unk_1DD0F7E68;
}

uint64_t sub_1DCDF7B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a7 + 16);
  v14 = (*(v11 + 32) + **(v11 + 32));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1DCB4AD3C;

  return v14(a1, a2, a6, v11);
}

__n128 sub_1DCDF7C60@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v6 = type metadata accessor for NeedsDisambiguationAdapterFlow.State(0, v3, *(v4 + 88), v5);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - v13;
  sub_1DCDF81CC(&v18 - v13);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v19 = *(v8 + 8);
    v19(v14, v6);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v17 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v17, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v15 = *(v14 + 1);
  *a1 = *v14;
  *(a1 + 16) = v15;
  result = *(v14 + 25);
  *(a1 + 25) = result;
  return result;
}

void sub_1DCDF7F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NeedsDisambiguationAdapterFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF81CC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for NeedsDisambiguationAdapterFlow.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

void sub_1DCDF8278(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  v8 = type metadata accessor for NeedsDisambiguationAdapterFlow.State(0, v6, *(v5 + 88), v7);
  (*(*(v8 - 8) + 24))(v1 + v4, a1, v8);
  v9 = swift_endAccess();
  sub_1DCDF7F18(v9, v10, v11, v12);
}

uint64_t *sub_1DCDF836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for NeedsDisambiguationAdapterFlow.State(0, *(v5 + 80), *(v5 + 88), a4);
  swift_storeEnumTagMultiPayload();
  return v4;
}

void sub_1DCDF83E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for NeedsDisambiguationAdapterFlow(0, v1, *(v0 + 88), v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCDF847C()
{
  OUTLINED_FUNCTION_39();
  v1[20] = v2;
  v1[21] = v0;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v1[22] = v4;
  v7 = type metadata accessor for PromptResult(0, v4, v5, v6);
  v1[23] = v7;
  OUTLINED_FUNCTION_99(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_38();
  v9 = *(v3 + 88);
  v1[26] = v9;
  v11 = type metadata accessor for NeedsDisambiguationAdapterFlow.State(0, v4, v9, v10);
  v1[27] = v11;
  OUTLINED_FUNCTION_99(v11);
  v1[28] = v12;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCDF85C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  sub_1DCDF81CC(v22[30]);
  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v42 = v22[30];
    v44 = v22[24];
    v43 = v22[25];
    v45 = v22[23];
    v22[36] = *(v42 + 8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCA71D8, &qword_1DD0F7E48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v44 + 32))(v43, v42 + *(TupleTypeMetadata2 + 48), v45);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v47 = sub_1DD0DD8FC();
    v22[37] = __swift_project_value_buffer(v47, qword_1EDE57E00);
    v48 = sub_1DD0DD8EC();
    v49 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v49))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v50, v51, "NeedsDisambiguationAdapterFlow received a response. Converting.");
      OUTLINED_FUNCTION_37();
    }

    v52 = swift_task_alloc();
    v22[38] = v52;
    *v52 = v22;
    v52[1] = sub_1DCDF9024;
    OUTLINED_FUNCTION_76();

    return sub_1DCDFA194();
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v34 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
      v35 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v37);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v38, v39, "NeedsDisambiguationAdapterFlow complete. Exiting...");
        OUTLINED_FUNCTION_62();
      }

      static ExecuteResponse.complete()();
      v40 = OUTLINED_FUNCTION_20();
      v41(v40);
      OUTLINED_FUNCTION_46_14();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_76();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v54 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v54, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

      a10 = (*(v22[21] + 16) + **(v22[21] + 16));
      v24 = swift_task_alloc();
      v22[31] = v24;
      *v24 = v22;
      v24[1] = sub_1DCDF8AF0;
      OUTLINED_FUNCTION_76();
    }

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCDF8AF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  v2[32] = v4;
  v2[33] = v5;
  v2[34] = v6;
  v2[35] = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDF8BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = v14[15];
  if (v15 >> 62)
  {
    if (v15 >> 62 == 1)
    {
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
    v31 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_8_5();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v33);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v34, v35, "NeedsDisambiguationAdapterFlow received no authentication requirements for disambiguation. Proceeding with disambiguation.");
      OUTLINED_FUNCTION_62();
    }

    v37 = v14[33];
    v36 = v14[34];
    v38 = v14[29];

    *v38 = v37;
    v38[1] = v36;
    OUTLINED_FUNCTION_124();
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v16 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v19);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v20, v21, "NeedsDisambiguationAdapterFlow received authentication pre-requisites so we will execute the flow guarded by the provided GuardFlow");
    OUTLINED_FUNCTION_62();
  }

  v22 = v14[33];
  v23 = v14[34];
  v24 = v14[32];
  v25 = v14[29];

  v14[17] = v24;
  v14[18] = v15;
  v26 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for AnyValueFlow(v26, v27, v28, v29);
  type metadata accessor for GuardFlow();
  swift_getWitnessTable();
  Flow.guarded<A>(by:)();
  *v25 = v22;
  v25[1] = v23;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDF9024()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDF9120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 232);
  v6 = type metadata accessor for IntentPromptAnswer(255, *(v4 + 208), a3, a4);
  v9 = type metadata accessor for PromptResult(0, v6, v7, v8);
  (*(*(v9 - 8) + 16))(v5, v4 + 16, v9);
  swift_storeEnumTagMultiPayload();
  sub_1DCDF8278(v5);
}

void sub_1DCDF9278()
{
  OUTLINED_FUNCTION_41();
  v17 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 280);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v16 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v16);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v11, v12, "Unexpected error while trying to build child flow: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  v13 = *(v0 + 280);
  v14 = *(v0 + 232);
  *v14 = v13;
  OUTLINED_FUNCTION_54_14();
  swift_storeEnumTagMultiPayload();
  v15 = v13;
  sub_1DCDF8278(v14);
}

void sub_1DCDF9424()
{
  v16 = v0;
  v1 = *(v0 + 312);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_151();
    v6 = OUTLINED_FUNCTION_83();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1DD0DF18C();
    v9 = sub_1DCB10E9C(v7, v8, &v15);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v10, v11, "Unexpected error while trying to convert flow results: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  v12 = *(v0 + 312);
  v13 = *(v0 + 232);
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v14 = v12;
  sub_1DCDF8278(v13);
}

void sub_1DCDF96C8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_0();
  v6 = type metadata accessor for PromptResult(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for NeedsDisambiguationAdapterFlow.State(v13, v14, v15, v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - v19;
  type metadata accessor for ConditionalFlowResult(0, v6, v21, v22);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v38 - v25;
  (*(v27 + 16))(&v38 - v25, a1);
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v28 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v30))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v31, v32, "NeedsDisambiguationAdapterFlow was not executed because the authentication precondition failed. Returning unanswered.");
      OUTLINED_FUNCTION_80();
    }

    *v20 = 1;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    v20[40] = 2;
    swift_storeEnumTagMultiPayload();
    sub_1DCDF8278(v20);
  }

  (*(v8 + 32))(v12, v26, v6);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v33 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
  v34 = sub_1DD0DD8EC();
  v35 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v35))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v36, v37, "NeedsDisambiguationAdapterFlow was executed because pre-conditions passed. Processing result");
    OUTLINED_FUNCTION_37();
  }

  sub_1DCDF99E0(v12);
}

void sub_1DCDF99E0(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v6 = OUTLINED_FUNCTION_56_3();
  v9 = type metadata accessor for NeedsDisambiguationAdapterFlow.State(v6, v7, v5, v8);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v28 - v19);
  sub_1DCDF81CC(&v28 - v19);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v11 + 8))(v20, v9);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v21 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v23 = *v20;
  v22 = v20[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCA71D8, &qword_1DD0F7E48);
  v26 = type metadata accessor for PromptResult(255, v3, v24, v25);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  *v16 = v23;
  *(v16 + 1) = v22;
  (*(*(v26 - 8) + 16))(&v16[v27], a1, v26);
  OUTLINED_FUNCTION_19();
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCDF9D34(void *a1, char a2)
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v6 = OUTLINED_FUNCTION_56_3();
  v9 = type metadata accessor for NeedsDisambiguationAdapterFlow.State(v6, v7, v5, v8);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_2();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v37 - v19;
  sub_1DCDF81CC(&v37 - v19);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v11 + 8))(v20, v9);
    if (a2)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      v22 = a1;
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6EC();
      sub_1DCB79378(a1, 1);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_151();
        v26 = OUTLINED_FUNCTION_83();
        v38 = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = sub_1DD0DF18C();
        v29 = sub_1DCB10E9C(v27, v28, &v38);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1DCAFC000, v23, v24, "NeedsDisambiguationAdapterFlow received an unexpected error while trying to unlock the device: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      *v16 = a1;
      OUTLINED_FUNCTION_54_14();
      swift_storeEnumTagMultiPayload();
      v30 = a1;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v34))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v35, v36, "NeedsDisambiguationAdapterFlow handed session off to companion device.");
        OUTLINED_FUNCTION_37();
      }

      *(v16 + 32) = 0;
      *v16 = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 40) = 2;
      swift_storeEnumTagMultiPayload();
    }

    sub_1DCDF8278(v16);
  }

  (*(v11 + 8))(v20, v9);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v31 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDFA194()
{
  OUTLINED_FUNCTION_42();
  v1[9] = v2;
  v1[10] = v3;
  v1[7] = v4;
  v1[8] = v5;
  v6 = *(*v0 + 80);
  v1[11] = v6;
  v1[12] = *(v6 - 8);
  v1[13] = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for PromptResult(0, v6, v7, v8);
  v1[14] = v9;
  OUTLINED_FUNCTION_99(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCDFA2A8()
{
  OUTLINED_FUNCTION_39();
  (*(v0[15] + 16))(v0[16], v0[10], v0[14]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = v0[16];
      v7 = v0[7];
      v8 = *v6;
      LOBYTE(v6) = *(v6 + 8);
      *v7 = v8;
      *(v7 + 8) = v6;
      *(v7 + 40) = 1;
      goto LABEL_9;
    case 2u:
      v5 = v0[7];
      *(v5 + 32) = 0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      goto LABEL_7;
    case 3u:
      v5 = v0[7];
      *v5 = 1;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
LABEL_7:
      *(v5 + 40) = 2;
LABEL_9:

      OUTLINED_FUNCTION_29();

      result = v9();
      break;
    default:
      v1 = v0[8];
      (*(v0[12] + 32))(v0[13], v0[16], v0[11]);
      v10 = (v1 + *v1);
      v2 = swift_task_alloc();
      v0[17] = v2;
      *v2 = v0;
      v2[1] = sub_1DCDFA4B0;
      v3 = v0[13];

      result = (v10)(v0 + 2, v3);
      break;
  }

  return result;
}

uint64_t sub_1DCDFA4B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDFA5AC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = v2;
  *(v1 + 16) = v3;
  *(v1 + 40) = 0;

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCDFA644()
{
  OUTLINED_FUNCTION_42();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_29();

  return v1();
}

unint64_t sub_1DCDFA6C8(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = 0x646574726174732ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = 0xD000000000000011;

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCA71D8, &qword_1DD0F7E48);
      v9 = type metadata accessor for PromptResult(255, *(a1 + 16), v7, v8);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v9 - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], v9);
      break;
    case 2u:
      (*(v3 + 8))(v5, a1);
      v6 = 0x74656C706D6F632ELL;
      break;
    case 3u:
      return v6;
    case 4u:
      v6 = 0xD000000000000012;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000013;
      break;
  }

  return v6;
}

char *sub_1DCDFA8F8()
{
  v1 = *v0;

  v2 = *(*v0 + 104);
  type metadata accessor for NeedsDisambiguationAdapterFlow.State(0, *(v1 + 80), *(v1 + 88), v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1DCDFA998()
{
  sub_1DCDFA8F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDFAA8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCDF847C();
}

uint64_t sub_1DCDFAB4C()
{

  return swift_unknownObjectRelease();
}

uint64_t *sub_1DCDFAB88(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  swift_unknownObjectRetain();
  return a1;
}

uint64_t *sub_1DCDFABC0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

_OWORD *sub_1DCDFAC20(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t dispatch thunk of NeedsDisambiguationAdaptable.makeIntentPromptAnswer(choice:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v12 = (*(v0 + 32) + **(v0 + 32));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v9[1] = sub_1DCB4AE1C;

  return v12(v7, v5, v3, v1);
}

uint64_t sub_1DCDFADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NeedsDisambiguationAdapterFlow.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCDFAEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7CB8] + 64;
  result = type metadata accessor for PromptResult(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v8 = &v6;
    v9 = ")";
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCDFAF80(_OWORD *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8;
  if (*(v5 + 64) <= 9uLL)
  {
    v8 = 9;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  if ((v7 + v8 + 1) <= 0x29)
  {
    v9 = 41;
  }

  else
  {
    v9 = v7 + v8 + 1;
  }

  v10 = v9 + 1;
  if ((v6 & 0x1000F8) != 0 || v10 > 0x18)
  {
    *__dst = *__src;
    goto LABEL_13;
  }

  v12 = __src[v9];
  v13 = v12 - 3;
  if (v12 >= 3)
  {
    if (v9 <= 3)
    {
      v14 = v9;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *__src;
        goto LABEL_23;
      case 2:
        v15 = *__src;
        goto LABEL_23;
      case 3:
        v15 = *__src | (__src[2] << 16);
        goto LABEL_23;
      case 4:
        v15 = *__src;
LABEL_23:
        v16 = (v15 | (v13 << (8 * v9))) + 3;
        if (v9 >= 4)
        {
          v12 = v15 + 3;
        }

        else
        {
          v12 = v16;
        }

        break;
      default:
        break;
    }
  }

  switch(v12)
  {
    case 2u:
      v19 = __src[40];
      if (v19 >= 2)
      {
        v19 = *__src + 2;
      }

      if (v19 == 1)
      {
        v22 = *__src;
        v23 = *__src;
        *__dst = v22;
        *(__dst + 8) = __src[8];
        *(__dst + 40) = 1;
      }

      else if (v19)
      {
        v24 = *(__src + 1);
        *__dst = *__src;
        __dst[1] = v24;
        *(__dst + 25) = *(__src + 25);
      }

      else
      {
        v20 = *(__src + 3);
        if (v20)
        {
          *(__dst + 3) = v20;
          (**(v20 - 8))(__dst, __src);
        }

        else
        {
          v25 = *(__src + 1);
          *__dst = *__src;
          __dst[1] = v25;
        }

        v26 = *(__src + 4);
        *(__dst + 4) = v26;
        *(__dst + 40) = 0;
        v27 = v26;
      }

      *(__dst + v9) = 2;
      return __dst;
    case 1u:
      v18 = *(__src + 1);
      *__dst = *__src;
      *(__dst + 1) = v18;
      sub_1DD0DCF8C();
    case 0u:
      v17 = *(__src + 1);
      *__dst = *__src;
      *(__dst + 1) = v17;
      *(__dst + v9) = 0;
LABEL_13:
      sub_1DD0DCF8C();
    default:

      return memcpy(__dst, __src, v10);
  }
}

void sub_1DCDFB2FC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = (v4 + 23) & ~(v4 | 7);
  if (*(v3 + 64) <= 9uLL)
  {
    v7 = 9;
  }

  else
  {
    v7 = *(v3 + 64);
  }

  v8 = v7 + v6;
  if ((v8 + 1) > 0x29)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 41;
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    switch(v12)
    {
      case 1:
        v13 = *a1;
        goto LABEL_16;
      case 2:
        v13 = *a1;
        goto LABEL_16;
      case 3:
        v13 = *a1 | (a1[2] << 16);
        goto LABEL_16;
      case 4:
        v13 = *a1;
LABEL_16:
        v14 = (v13 | (v11 << (8 * v9))) + 3;
        if (v9 >= 4)
        {
          v10 = v13 + 3;
        }

        else
        {
          v10 = v14;
        }

        break;
      default:
        break;
    }
  }

  if (v10 == 2)
  {
    v20 = a1[40];
    if (v20 >= 2)
    {
      v20 = *a1 + 2;
    }

    if (v20 != 1)
    {
      if (v20)
      {
        return;
      }

      if (*(a1 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v21 = *(a1 + 4);

LABEL_39:

      return;
    }

    v21 = *a1;
LABEL_54:

    goto LABEL_39;
  }

  if (v10 != 1)
  {
    if (!v10)
    {
    }

    return;
  }

  v24 = *(*(a2 + 16) - 8);

  v15 = (&a1[v5 + 16] & ~v5);
  v16 = v15[v7];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v7 <= 3)
    {
      v18 = v7;
    }

    else
    {
      v18 = 4;
    }

    switch(v18)
    {
      case 1:
        v19 = *v15;
        goto LABEL_44;
      case 2:
        v19 = *v15;
        goto LABEL_44;
      case 3:
        v19 = *v15 | (*((&a1[v5 + 16] & ~v5) + 2) << 16);
        goto LABEL_44;
      case 4:
        v19 = *v15;
LABEL_44:
        v22 = (v19 | (v17 << (8 * v7))) + 2;
        if (v7 >= 4)
        {
          v16 = v19 + 2;
        }

        else
        {
          v16 = v22;
        }

        break;
      default:
        break;
    }
  }

  if (v16 == 1)
  {
    v21 = *v15;
    goto LABEL_54;
  }

  if (!v16)
  {
    v23 = *(v24 + 8);

    v23();
  }
}

char *sub_1DCDFB5D4(char *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80) & 0xF8;
  v7 = (v6 + 23) & ~(v6 | 7);
  if (*(v5 + 64) <= 9uLL)
  {
    v8 = 9;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  if ((v7 + v8 + 1) <= 0x29)
  {
    v9 = 41;
  }

  else
  {
    v9 = v7 + v8 + 1;
  }

  v10 = __src[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    switch(v12)
    {
      case 1:
        v13 = *__src;
        goto LABEL_16;
      case 2:
        v13 = *__src;
        goto LABEL_16;
      case 3:
        v13 = *__src | (__src[2] << 16);
        goto LABEL_16;
      case 4:
        v13 = *__src;
LABEL_16:
        v14 = (v13 | (v11 << (8 * v9))) + 3;
        if (v9 >= 4)
        {
          v10 = v13 + 3;
        }

        else
        {
          v10 = v14;
        }

        break;
      default:
        break;
    }
  }

  switch(v10)
  {
    case 2u:
      v17 = __src[40];
      if (v17 >= 2)
      {
        v17 = *__src + 2;
      }

      if (v17 == 1)
      {
        v20 = *__src;
        v21 = *__src;
        *__dst = v20;
        __dst[8] = __src[8];
        __dst[40] = 1;
      }

      else if (v17)
      {
        v22 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v22;
        *(__dst + 25) = *(__src + 25);
      }

      else
      {
        v18 = *(__src + 3);
        if (v18)
        {
          *(__dst + 3) = v18;
          (**(v18 - 8))(__dst, __src);
        }

        else
        {
          v23 = *(__src + 1);
          *__dst = *__src;
          *(__dst + 1) = v23;
        }

        v24 = *(__src + 4);
        *(__dst + 4) = v24;
        __dst[40] = 0;
        v25 = v24;
      }

      __dst[v9] = 2;
      return __dst;
    case 1u:
      v16 = *(__src + 1);
      *__dst = *__src;
      *(__dst + 1) = v16;
      sub_1DD0DCF8C();
    case 0u:
      v15 = *(__src + 1);
      *__dst = *__src;
      *(__dst + 1) = v15;
      __dst[v9] = 0;
      sub_1DD0DCF8C();
    default:

      return memcpy(__dst, __src, v9 + 1);
  }
}

unsigned __int8 *sub_1DCDFB934(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = (v6 + 23) & ~(v6 | 7);
  if (*(v5 + 64) <= 9uLL)
  {
    v9 = 9;
  }

  else
  {
    v9 = *(v5 + 64);
  }

  v10 = v8 + v9 + 1;
  if (v10 <= 0x29)
  {
    v11 = 41;
  }

  else
  {
    v11 = v10;
  }

  v12 = 8 * v11;
  v13 = __dst[v11];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v11 <= 3)
    {
      v15 = v11;
    }

    else
    {
      v15 = 4;
    }

    switch(v15)
    {
      case 1:
        v16 = *__dst;
        goto LABEL_17;
      case 2:
        v16 = *__dst;
        goto LABEL_17;
      case 3:
        v16 = *__dst | (__dst[2] << 16);
        goto LABEL_17;
      case 4:
        v16 = *__dst;
LABEL_17:
        if (v11 < 4)
        {
          v13 = (v16 | (v14 << v12)) + 3;
        }

        else
        {
          v13 = v16 + 3;
        }

        break;
      default:
        break;
    }
  }

  v17 = ~v7;
  if (v13 != 2)
  {
    if (v13 != 1)
    {
      if (!v13)
      {
      }

      goto LABEL_48;
    }

    v18 = (&__dst[v7 + 16] & v17);
    v19 = v18[v9];
    v20 = v19 - 2;
    if (v19 >= 2)
    {
      if (v9 <= 3)
      {
        v21 = v9;
      }

      else
      {
        v21 = 4;
      }

      switch(v21)
      {
        case 1:
          v22 = *v18;
          goto LABEL_41;
        case 2:
          v22 = *v18;
          goto LABEL_41;
        case 3:
          v22 = *v18 | (*((&__dst[v7 + 16] & v17) + 2) << 16);
          goto LABEL_41;
        case 4:
          v22 = *v18;
LABEL_41:
          v25 = (v22 | (v20 << (8 * v9))) + 2;
          v19 = v22 + 2;
          if (v9 < 4)
          {
            v19 = v25;
          }

          break;
        default:
          break;
      }
    }

    if (v19 != 1)
    {
      if (!v19)
      {
        (*(v5 + 8))();
      }

      goto LABEL_48;
    }

    v24 = *v18;
LABEL_47:

    goto LABEL_48;
  }

  v23 = __dst[40];
  if (v23 >= 2)
  {
    v23 = *__dst + 2;
  }

  if (v23 == 1)
  {
    v24 = *__dst;
    goto LABEL_47;
  }

  if (!v23)
  {
    if (*(__dst + 3))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    }
  }

LABEL_48:
  v26 = __src[v11];
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v11 <= 3)
    {
      v28 = v11;
    }

    else
    {
      v28 = 4;
    }

    switch(v28)
    {
      case 1:
        v29 = *__src;
        goto LABEL_57;
      case 2:
        v29 = *__src;
        goto LABEL_57;
      case 3:
        v29 = *__src | (__src[2] << 16);
        goto LABEL_57;
      case 4:
        v29 = *__src;
LABEL_57:
        if (v11 < 4)
        {
          v26 = (v29 | (v27 << v12)) + 3;
        }

        else
        {
          v26 = v29 + 3;
        }

        break;
      default:
        break;
    }
  }

  switch(v26)
  {
    case 2u:
      v32 = __src[40];
      if (v32 >= 2)
      {
        v32 = *__src + 2;
      }

      if (v32 == 1)
      {
        v35 = *__src;
        v36 = *__src;
        *__dst = v35;
        __dst[8] = __src[8];
        __dst[40] = 1;
      }

      else if (v32)
      {
        v37 = *__src;
        v38 = *(__src + 1);
        *(__dst + 25) = *(__src + 25);
        *__dst = v37;
        *(__dst + 1) = v38;
      }

      else
      {
        v33 = *(__src + 3);
        if (v33)
        {
          *(__dst + 3) = v33;
          (**(v33 - 8))(__dst, __src);
        }

        else
        {
          v39 = *(__src + 1);
          *__dst = *__src;
          *(__dst + 1) = v39;
        }

        v40 = *(__src + 4);
        *(__dst + 4) = v40;
        __dst[40] = 0;
        v41 = v40;
      }

      __dst[v11] = 2;
      return __dst;
    case 1u:
      v31 = *(__src + 1);
      *__dst = *__src;
      *(__dst + 1) = v31;
      sub_1DD0DCF8C();
    case 0u:
      v30 = *(__src + 1);
      *__dst = *__src;
      *(__dst + 1) = v30;
      __dst[v11] = 0;
      sub_1DD0DCF8C();
  }

  return memcpy(__dst, __src, v11 + 1);
}

char *sub_1DCDFBE4C(char *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80) & 0xF8;
  v6 = v5 | 7;
  if (*(v4 + 64) <= 9uLL)
  {
    v8 = 9;
  }

  else
  {
    v8 = *(v4 + 64);
  }

  v7 = (v5 + 23) & ~(v5 | 7);
  if ((v7 + v8 + 1) <= 0x29)
  {
    v9 = 41;
  }

  else
  {
    v9 = v7 + v8 + 1;
  }

  v10 = a2[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    switch(v12)
    {
      case 1:
        v13 = *a2;
        goto LABEL_16;
      case 2:
        v13 = *a2;
        goto LABEL_16;
      case 3:
        v13 = *a2 | (a2[2] << 16);
        goto LABEL_16;
      case 4:
        v13 = *a2;
LABEL_16:
        v14 = (v13 | (v11 << (8 * v9))) + 3;
        if (v9 >= 4)
        {
          v10 = v13 + 3;
        }

        else
        {
          v10 = v14;
        }

        break;
      default:
        break;
    }
  }

  switch(v10)
  {
    case 2u:
      v21 = a2[40];
      if (v21 >= 2)
      {
        v21 = *a2 + 2;
      }

      if (v21 == 1)
      {
        *__dst = *a2;
        __dst[8] = a2[8];
        __dst[40] = 1;
      }

      else
      {
        v22 = *(a2 + 1);
        *__dst = *a2;
        *(__dst + 1) = v22;
        if (v21)
        {
          *(__dst + 25) = *(a2 + 25);
        }

        else
        {
          *(__dst + 4) = *(a2 + 4);
          __dst[40] = 0;
        }
      }

      v24 = 2;
      goto LABEL_52;
    case 1u:
      *__dst = *a2;
      v15 = (&__dst[v6 + 16] & ~v6);
      v16 = (&a2[v6 + 16] & ~v6);
      v17 = v16[v8];
      v18 = v17 - 2;
      if (v17 >= 2)
      {
        if (v8 <= 3)
        {
          v19 = v8;
        }

        else
        {
          v19 = 4;
        }

        switch(v19)
        {
          case 1:
            v20 = *v16;
            goto LABEL_43;
          case 2:
            v20 = *v16;
            goto LABEL_43;
          case 3:
            v20 = *v16 | (v16[2] << 16);
            goto LABEL_43;
          case 4:
            v20 = *v16;
LABEL_43:
            v25 = (v20 | (v18 << (8 * v8))) + 2;
            if (v8 >= 4)
            {
              v17 = v20 + 2;
            }

            else
            {
              v17 = v25;
            }

            break;
          default:
            break;
        }
      }

      if (v17 == 1)
      {
        v26 = *v16;
        v15[8] = v16[8];
        *v15 = v26;
        v15[v8] = 1;
      }

      else if (v17)
      {
        memcpy(v15, v16, v8 + 1);
      }

      else
      {
        (*(v4 + 32))(v15);
        v15[v8] = 0;
      }

      v24 = 1;
LABEL_52:
      __dst[v9] = v24;
      return __dst;
    case 0u:
      *__dst = *a2;
      __dst[v9] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v9 + 1);
}

unsigned __int8 *sub_1DCDFC118(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = (v6 + 23) & ~(v6 | 7);
  if (*(v5 + 64) <= 9uLL)
  {
    v9 = 9;
  }

  else
  {
    v9 = *(v5 + 64);
  }

  v10 = v8 + v9 + 1;
  if (v10 <= 0x29)
  {
    v11 = 41;
  }

  else
  {
    v11 = v10;
  }

  v12 = 8 * v11;
  v13 = __dst[v11];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v11 <= 3)
    {
      v15 = v11;
    }

    else
    {
      v15 = 4;
    }

    switch(v15)
    {
      case 1:
        v16 = *__dst;
        goto LABEL_17;
      case 2:
        v16 = *__dst;
        goto LABEL_17;
      case 3:
        v16 = *__dst | (__dst[2] << 16);
        goto LABEL_17;
      case 4:
        v16 = *__dst;
LABEL_17:
        if (v11 < 4)
        {
          v13 = (v16 | (v14 << v12)) + 3;
        }

        else
        {
          v13 = v16 + 3;
        }

        break;
      default:
        break;
    }
  }

  v17 = ~v7;
  v43 = 8 * v9;
  if (v13 != 2)
  {
    if (v13 != 1)
    {
      if (!v13)
      {
      }

      goto LABEL_48;
    }

    v18 = (&__dst[v7 + 16] & v17);
    v19 = v18[v9];
    v20 = v19 - 2;
    if (v19 >= 2)
    {
      if (v9 <= 3)
      {
        v21 = v9;
      }

      else
      {
        v21 = 4;
      }

      switch(v21)
      {
        case 1:
          v22 = *v18;
          goto LABEL_41;
        case 2:
          v22 = *v18;
          goto LABEL_41;
        case 3:
          v22 = *v18 | (*((&__dst[v7 + 16] & v17) + 2) << 16);
          goto LABEL_41;
        case 4:
          v22 = *v18;
LABEL_41:
          v25 = (v22 | (v20 << v43)) + 2;
          v19 = v22 + 2;
          if (v9 < 4)
          {
            v19 = v25;
          }

          break;
        default:
          break;
      }
    }

    if (v19 != 1)
    {
      if (!v19)
      {
        (*(v5 + 8))();
      }

      goto LABEL_48;
    }

    v24 = *v18;
LABEL_47:

    goto LABEL_48;
  }

  v23 = __dst[40];
  if (v23 >= 2)
  {
    v23 = *__dst + 2;
  }

  if (v23 == 1)
  {
    v24 = *__dst;
    goto LABEL_47;
  }

  if (!v23)
  {
    if (*(__dst + 3))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    }
  }

LABEL_48:
  v26 = __src[v11];
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v11 <= 3)
    {
      v28 = v11;
    }

    else
    {
      v28 = 4;
    }

    switch(v28)
    {
      case 1:
        v29 = *__src;
        goto LABEL_57;
      case 2:
        v29 = *__src;
        goto LABEL_57;
      case 3:
        v29 = *__src | (__src[2] << 16);
        goto LABEL_57;
      case 4:
        v29 = *__src;
LABEL_57:
        if (v11 < 4)
        {
          v26 = (v29 | (v27 << v12)) + 3;
        }

        else
        {
          v26 = v29 + 3;
        }

        break;
      default:
        break;
    }
  }

  switch(v26)
  {
    case 2u:
      v37 = __src[40];
      if (v37 >= 2)
      {
        v37 = *__src + 2;
      }

      if (v37 == 1)
      {
        *__dst = *__src;
        __dst[8] = __src[8];
        __dst[40] = 1;
      }

      else
      {
        v38 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v38;
        if (v37)
        {
          *(__dst + 25) = *(__src + 25);
        }

        else
        {
          *(__dst + 4) = *(__src + 4);
          __dst[40] = 0;
        }
      }

      v40 = 2;
      goto LABEL_92;
    case 1u:
      *__dst = *__src;
      v30 = &__src[v7];
      v31 = (&__dst[v7 + 16] & v17);
      v32 = ((v30 + 16) & v17);
      v33 = v32[v9];
      v34 = v33 - 2;
      if (v33 >= 2)
      {
        if (v9 <= 3)
        {
          v35 = v9;
        }

        else
        {
          v35 = 4;
        }

        switch(v35)
        {
          case 1:
            v36 = *v32;
            goto LABEL_84;
          case 2:
            v36 = *v32;
            goto LABEL_84;
          case 3:
            v36 = *v32 | (v32[2] << 16);
            goto LABEL_84;
          case 4:
            v36 = *v32;
LABEL_84:
            v41 = (v36 | (v34 << v43)) + 2;
            v33 = v36 + 2;
            if (v9 < 4)
            {
              v33 = v41;
            }

            break;
          default:
            break;
        }
      }

      if (v33 == 1)
      {
        v42 = *v32;
        *((&__dst[v7 + 16] & v17) + 8) = v32[8];
        *v31 = v42;
        *(v31 + v9) = 1;
      }

      else if (v33)
      {
        memcpy((&__dst[v7 + 16] & v17), v32, v9 + 1);
      }

      else
      {
        (*(v5 + 32))(&__dst[v7 + 16] & v17);
        *(v31 + v9) = 0;
      }

      v40 = 1;
LABEL_92:
      __dst[v11] = v40;
      return __dst;
    case 0u:
      *__dst = *__src;
      __dst[v11] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v11 + 1);
}

uint64_t sub_1DCDFC5CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = (v4 + 23) & ~v4 & 0x1F8;
  v6 = *(v3 + 64);
  if (v6 <= 9)
  {
    v6 = 9;
  }

  v7 = v6 + v5;
  v8 = 41;
  if ((v7 + 1) > 0x29)
  {
    v8 = v7 + 1;
  }

  v9 = 252 - (1u >> (8 * v8));
  if (v8 >= 4)
  {
    v9 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_26;
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v14 = ((~(-1 << v11) + a2 - v9) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = *(a1 + v8);
      if (v9 <= (v16 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v16);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v9 + (v10 | v15) + 1;
}

void sub_1DCDFC76C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80) & 0xF8;
  v7 = (v6 + 23) & ~v6 & 0x1F8;
  v8 = *(v5 + 64);
  if (v8 <= 9)
  {
    v8 = 9;
  }

  v9 = v8 + v7;
  if ((v9 + 1) > 0x29)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 41;
  }

  if (v10 >= 4)
  {
    v11 = 252;
  }

  else
  {
    v11 = 252 - (1u >> (8 * v10));
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if (v11 >= a3)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((~(-1 << v13) + a3 - v11) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v11 >= a2)
  {
    switch(v14)
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
LABEL_43:
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
          a1[v10] = -a2;
        }

        break;
    }
  }

  else
  {
    v15 = ~v11 + a2;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v10 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCDFC9A4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = (v3 + 23) & ~v3 & 0x1F8;
  v5 = *(v2 + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + v4;
  v7 = 41;
  if ((v6 + 1) > 0x29)
  {
    v7 = v6 + 1;
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *a1;
        goto LABEL_14;
      case 2:
        v11 = *a1;
        goto LABEL_14;
      case 3:
        v11 = *a1 | (a1[2] << 16);
        goto LABEL_14;
      case 4:
        v11 = *a1;
LABEL_14:
        v12 = (v11 | (v9 << (8 * v7))) + 3;
        LODWORD(v8) = v11 + 3;
        if (v7 >= 4)
        {
          v8 = v8;
        }

        else
        {
          v8 = v12;
        }

        break;
      default:
        return v8;
    }
  }

  return v8;
}

void sub_1DCDFCA9C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80) & 0xF8 | 7;
  v6 = *(v4 + 64);
  if (v6 <= 9)
  {
    v6 = 9;
  }

  v7 = v6 + 1 + ((v5 + 16) & ~v5);
  if (a2 > 2)
  {
    if (v7 <= 0x29)
    {
      v7 = 41;
    }

    v8 = a2 - 3;
    if (v7 < 4)
    {
      a1[v7] = (v8 >> (8 * v7)) + 3;
      if (!v7)
      {
        return;
      }

      v8 &= ~(-1 << (8 * v7));
    }

    else
    {
      a1[v7] = 3;
    }

    if (v7 >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v7;
    }

    bzero(a1, v7);
    switch(v9)
    {
      case 2:
        *a1 = v8;
        break;
      case 3:
        *a1 = v8;
        a1[2] = BYTE2(v8);
        break;
      case 4:
        *a1 = v8;
        break;
      default:
        *a1 = v8;
        break;
    }
  }

  else
  {
    if (v7 <= 0x29)
    {
      v7 = 41;
    }

    a1[v7] = a2;
  }
}

uint64_t sub_1DCDFCBF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCDFCC7C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_44(v1);

  return sub_1DCDF736C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCDFCD1C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_55_13();

  return sub_1DCDF7B28(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_9Tm_2()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_1DCDFCE64()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_44(v1);

  return sub_1DCDF6B74(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCDFCF04()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_32_1();
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v6, v4, v2);
}

uint64_t sub_1DCDFD008()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_55_13();

  return sub_1DCDF6F8C(v3, v4, v5, v6, v7, v8, v9);
}

_BYTE *sub_1DCDFD0C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

void NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v15 - v11;
  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DD0F7FD8;
  v14[5] = 0;
  v14[6] = a6;
  v14[7] = a7;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDFD300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DCB4AD3C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)();
}

uint64_t NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  v10 = *(v7 + 48);
  v11 = *(v7 + 16);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v11;
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  OUTLINED_FUNCTION_8();
  v16 = (v12 + *v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 72) = v13;
  *v13 = v14;
  v13[1] = sub_1DCDDF704;

  return v16(v6, v0 + 16, v4, v2);
}

uint64_t sub_1DCDFD508(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)();
}