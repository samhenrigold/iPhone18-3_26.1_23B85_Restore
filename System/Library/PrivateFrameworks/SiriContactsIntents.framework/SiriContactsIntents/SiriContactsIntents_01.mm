void static Siri_Nlu_External_SystemOffered.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v22[0] = v1;
  v22[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_3();
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v22 - v19;
  v21 = *(v5 + 16);
  v21(v0, v22[0], v3);
  Siri_Nlu_External_UserDialogAct.init()();
  v21(v9, v0, v3);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v5 + 8))(v0, v3);
  Siri_Nlu_External_SystemOffered.init()();
  (*(v13 + 16))(v17, v20, v11);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  (*(v13 + 8))(v20, v11);
  OUTLINED_FUNCTION_14();
}

uint64_t ModifyContactAttributeCATs.confirmModifyNickname(requestedNickname:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_24_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_29_1(v1);
  v0[6] = v2;
  *(v2 + 16) = xmmword_266966D90;
  v3 = OUTLINED_FUNCTION_14_3(v2, "requestedNickname");
  OUTLINED_FUNCTION_27_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v5) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v6();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[7] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_9_5(v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_4();

    return v10();
  }
}

uint64_t ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[12] = v2;
  *(v2 + 16) = xmmword_266967350;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x800000026696EEB0;
  OUTLINED_FUNCTION_27_0(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v4) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[11], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v5();
  }

  v6 = v0[10];
  v7 = v0[4];
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x800000026696F030;
  outlined init with copy of URL?(v7, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v8();
  }

  v9 = v0[9];
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_26_1(v10);
  outlined init with copy of URL?(v11, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 144));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v12();
  }

  v13 = v0[8];
  OUTLINED_FUNCTION_5_7();
  *(v2 + 176) = v14;
  *(v2 + 184) = v15;
  outlined init with copy of URL?(v16, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
  }

  else
  {
    *(v2 + 216) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 192));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v17();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[13] = v18;
  *v18 = v19;
  v18[1] = ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_4();

    return v10();
  }
}

uint64_t ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[12] = v2;
  *(v2 + 16) = xmmword_266967350;
  *(v2 + 32) = 0x4E64657461647075;
  *(v2 + 40) = 0xEF656D616E6B6369;
  OUTLINED_FUNCTION_27_0(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v4) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[11], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v5();
  }

  v6 = v0[10];
  v7 = v0[4];
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000026696EFD0;
  outlined init with copy of URL?(v7, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v8();
  }

  v9 = v0[9];
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_26_1(v10);
  outlined init with copy of URL?(v11, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 144));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v12();
  }

  v13 = v0[8];
  OUTLINED_FUNCTION_5_7();
  *(v2 + 176) = v14;
  *(v2 + 184) = v15;
  outlined init with copy of URL?(v16, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
  }

  else
  {
    *(v2 + 216) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 192));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v17();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[13] = v18;
  *v18 = v19;
  v18[1] = ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_4();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_41();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 104) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_266967350;
  v3 = OUTLINED_FUNCTION_14_3(v2, "updatedRelationship");
  OUTLINED_FUNCTION_27_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v5) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v6();
  }

  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_15_2();
  *(v2 + 80) = v8 & 0xFFFFFFFFFFFFLL | 0x4E74000000000000;
  *(v2 + 88) = 0xEB00000000656D61;
  outlined init with copy of URL?(v9, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v10();
  }

  v11 = *(v0 + 56);
  OUTLINED_FUNCTION_5_7();
  *(v2 + 128) = v12;
  *(v2 + 136) = v13;
  outlined init with copy of URL?(v14, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 144));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v15();
  }

  v16 = *(v0 + 104);
  *(v2 + 176) = 0x4D6563696F567369;
  *(v2 + 184) = 0xEB0000000065646FLL;
  *(v2 + 216) = MEMORY[0x277D839B0];
  *(v2 + 192) = v16;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 88) = v17;
  *v17 = v18;
  v17[1] = ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_4();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_41();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ModifyContactAttributeCATs.promptForNickname()()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;
  v5 = MEMORY[0x277D84F90];

  return v7(v2, 0xD000000000000028, 0x800000026696EF40, v5);
}

uint64_t ModifyContactAttributeCATs.promptForRelationship(contact:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ModifyContactAttributeCATs.promptForRelationship(contact:)()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_29_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_266966D90;
  OUTLINED_FUNCTION_15_2();
  v6 = OUTLINED_FUNCTION_30_1(v4, v5);
  if (v1)
  {
    v6 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v6;
  OUTLINED_FUNCTION_25_0(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[6] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_9_5(v7);
  OUTLINED_FUNCTION_32_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t ModifyContactAttributeCATs.promptForRelationshipContact(requestedRelationship:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_24_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_29_1(v1);
  v0[6] = v2;
  *(v2 + 16) = xmmword_266966D90;
  v3 = OUTLINED_FUNCTION_14_3(v2, "requestedRelationship");
  OUTLINED_FUNCTION_27_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v5) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v6();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[7] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_9_5(v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_4();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ModifyContactAttributeCATs.relationshipExists()()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  v5 = MEMORY[0x277D84F90];

  return v7(v2, 0xD000000000000029, 0x800000026696EE80, v5);
}

uint64_t ModifyContactAttributeCATs.relationshipNotFound(contact:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ModifyContactAttributeCATs.relationshipNotFound(contact:)()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_29_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_266966D90;
  OUTLINED_FUNCTION_15_2();
  v6 = OUTLINED_FUNCTION_30_1(v4, v5);
  if (v1)
  {
    v6 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v6;
  OUTLINED_FUNCTION_25_0(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[6] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_9_5(v7);
  OUTLINED_FUNCTION_32_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t ModifyContactAttributeCATs.unsupportedAttributeToModify(device:contactsAppUnavailable:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ModifyContactAttributeCATs.unsupportedAttributeToModify(device:contactsAppUnavailable:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_266966ED0;
  OUTLINED_FUNCTION_31_1();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = 0;
  if (v1)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v0 + 64);
  *(v2 + 48) = v1;
  *(v2 + 88) = 0x800000026696EE30;
  *(v2 + 120) = MEMORY[0x277D839B0];
  *(v2 + 96) = v7;
  v12 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  *(v2 + 72) = v6;
  *(v2 + 80) = 0xD000000000000016;

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 48) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_9_5(v8);

  return v12(v10, 0xD000000000000033, 0x800000026696EDF0, v2);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ModifyContactAttributeCATs.unsupportedDeviceIdiom(contactAttributeType:device:)()
{
  OUTLINED_FUNCTION_4();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v1[6] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v0[7] = v1;
  *(v1 + 16) = xmmword_266966ED0;
  v2 = OUTLINED_FUNCTION_14_3(v1, "contactAttributeType");
  OUTLINED_FUNCTION_27_0(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v4) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v5();
  }

  v6 = v0[4];
  OUTLINED_FUNCTION_31_1();
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  v9 = 0;
  if (v6)
  {
    v9 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  *(v1 + 96) = v6;
  *(v1 + 120) = v9;
  v14 = OUTLINED_FUNCTION_25_0(MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[8] = v10;
  *v10 = v11;
  v10[1] = ModifyContactAttributeCATs.unsupportedDeviceIdiom(contactAttributeType:device:);
  v12 = v0[2];

  return (v14)(v12, 0xD00000000000002DLL, 0x800000026696F0E0, v1);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_4();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ModifyContactAttributeCATs.unsupportedMissingMeCard(contactAttributeType:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_24_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_29_1(v1);
  v0[6] = v2;
  *(v2 + 16) = xmmword_266966D90;
  v3 = OUTLINED_FUNCTION_14_3(v2, "contactAttributeType");
  OUTLINED_FUNCTION_27_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_8_4(v5) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v6();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[7] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_9_5(v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_32_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t ModifyContactAttributeCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_12_3();
  return ModifyContactAttributeCATs.init(templateDir:options:globals:)(v1, v2, v3);
}

uint64_t ModifyContactAttributeCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CATOption();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  outlined init with copy of URL?(a1, &v16 - v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v9, a2, v6);
  v14 = ContactsCommonCATs.init(templateDir:options:globals:)(v13, v9, a3);
  (*(v7 + 8))(a2, v6);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t ModifyContactAttributeCATs.__deallocating_deinit()
{
  v0 = CATWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for ModifyContactAttributeCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeCATs;
  if (!type metadata singleton initialization cache for ModifyContactAttributeCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_14_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = v2;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

double OUTLINED_FUNCTION_22_1()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of URL?(v4, v5, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_28_1()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
  *(a1 + 40) = 0xE700000000000000;
  return 0;
}

uint64_t ContactsBirthdayInfo.__allocating_init(contact:shouldAccountForYearless:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = OUTLINED_FUNCTION_18_0(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  CNContact.timezonedBirthdate.getter(v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
  {
    (*(v20 + 32))(v23, v17, v18);
    v25 = a1;
    if (a2)
    {
      CNContact.timezonedBirthday.getter(v7);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      }

      else
      {
        (*(v10 + 32))(v13, v7, v8);
        DateComponents.year.getter();
        if (v26)
        {
          v27 = type metadata accessor for DialogDateFormatter.Builder();
          OUTLINED_FUNCTION_2_6(v27);
          DialogDateFormatter.Builder.init()();
          dispatch thunk of DialogDateFormatter.Builder.withOmitYear(_:)();
          v46 = v10;

          dispatch thunk of DialogDateFormatter.Builder.build()();

          v28 = type metadata accessor for ContactsBirthdayInfo.Builder(0);
          v29 = OUTLINED_FUNCTION_2_6(v28);
          *(v29 + 16) = 0;
          v30 = OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday;
          v31 = type metadata accessor for SpeakableString();
          __swift_storeEnumTagSinglePayload(v29 + v30, 1, 1, v31);
          v32 = type metadata accessor for DialogCalendar.Builder();
          OUTLINED_FUNCTION_2_6(v32);
          DialogCalendar.Builder.init()();

          dispatch thunk of DialogCalendar.Builder.withDateFormatter(_:)();
          v45 = v25;

          Date.timeIntervalSince1970.getter();
          v33 = dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

          v34 = ContactsBirthdayInfo.Builder.withBirthday(_:)(v33);

          v35 = type metadata accessor for ContactsBirthdayInfo(0);
          OUTLINED_FUNCTION_2_6(v35);
          v24 = ContactsBirthdayInfo.init(builder:)(v34);

          (*(v46 + 8))(v13, v8);
LABEL_10:
          (*(v20 + 8))(v23, v18);
          return v24;
        }

        (*(v10 + 8))(v13, v8);
      }
    }

    v36 = type metadata accessor for ContactsBirthdayInfo.Builder(0);
    v37 = OUTLINED_FUNCTION_2_6(v36);
    *(v37 + 16) = 0;
    v38 = OBJC_IVAR____TtCC19SiriContactsIntents20ContactsBirthdayInfo7Builder_durationUntilBirthday;
    v39 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v37 + v38, 1, 1, v39);
    v40 = type metadata accessor for DialogCalendar.Builder();
    OUTLINED_FUNCTION_2_6(v40);
    DialogCalendar.Builder.init()();
    Date.timeIntervalSince1970.getter();
    v41 = dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

    v42 = ContactsBirthdayInfo.Builder.withBirthday(_:)(v41);

    v43 = type metadata accessor for ContactsBirthdayInfo(0);
    OUTLINED_FUNCTION_2_6(v43);
    v24 = ContactsBirthdayInfo.init(builder:)(v42);

    goto LABEL_10;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return 0;
}

void DialogCalendar.init(contact:mockGlobals:)(void *a1, void *a2)
{
  v113 = a2;
  v3 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1_0();
  v111 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v109 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v110 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v106 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v106 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v22 = OUTLINED_FUNCTION_18_0(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - v23;
  v25 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_4();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v106 - v33;
  v112 = a1;
  CNContact.timezonedBirthday.getter(v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v24, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriContacts);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v38, v39, "[DialogCalendar] no birthday set, returning nil");
      OUTLINED_FUNCTION_11_1();
    }

    return;
  }

  v107 = v25;
  v108 = v27;
  (*(v27 + 32))(v34, v24, v25);
  static DateComponents.startOfToday.getter();
  DateComponents.year.getter();
  if ((v40 & 1) == 0)
  {
    DateComponents.year.setter();
    DateComponents.yearForWeekOfYear.setter();
    DateComponents.date.getter();
    if (__swift_getEnumTagSinglePayload(v20, 1, v3) == 1)
    {
      v41 = v20;
LABEL_12:
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_13;
    }

    Date.timeIntervalSince1970.getter();
    v43 = v42;
    v44 = *(v111 + 8);
    v44(v20, v3);
    DateComponents.date.getter();
    if (__swift_getEnumTagSinglePayload(v18, 1, v3) == 1)
    {
      v41 = v18;
      goto LABEL_12;
    }

    Date.timeIntervalSince1970.getter();
    v76 = v75;
    v44(v18, v3);
    v77 = DateComponents.year.getter();
    if ((v78 & 1) == 0)
    {
      v79 = v77;
      v80 = type metadata accessor for DialogCalendar.Builder();
      OUTLINED_FUNCTION_2_6(v80);
      DialogCalendar.Builder.init()();
      dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

      v81 = type metadata accessor for DialogCalendar();
      OUTLINED_FUNCTION_2_6(v81);
      DialogCalendar.init(builder:)();
      if (v113)
      {
        v82 = v113;
        dispatch thunk of DialogCalendar.mockGlobals.setter();
      }

      if (v43 >= v76 || (dispatch thunk of DialogCalendar.isYesterday.getter() & 1) != 0)
      {
        v83 = 0;
      }

      else
      {
        v83 = dispatch thunk of DialogCalendar.withinPastWeek.getter() ^ 1;
      }

      v84 = DateComponents.month.getter();
      v86 = v85;
      v87 = DateComponents.month.getter();
      if (v86)
      {
        if ((v88 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if ((v88 & 1) != 0 || v84 != v87)
      {
        goto LABEL_48;
      }

      v89 = DateComponents.day.getter();
      v91 = v90;
      v92 = DateComponents.day.getter();
      if (v91)
      {
        if (v93 & 1) != 0 || ((v83 ^ 1))
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      if ((v93 & 1) == 0)
      {
        if ((v83 & (v89 != v92)) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

LABEL_48:
      if ((v83 & 1) == 0)
      {
LABEL_49:
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v100 = type metadata accessor for Logger();
        __swift_project_value_buffer(v100, static Logger.siriContacts);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = OUTLINED_FUNCTION_30();
          *v103 = 0;
          OUTLINED_FUNCTION_6_5(&dword_26686A000, v104, v105, "[DialogCalendar] birthday has not passed yet this year, keep birthday year as current year");
          MEMORY[0x26D5E3300](v103, -1, -1);
        }

LABEL_54:

        goto LABEL_13;
      }

LABEL_42:
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static Logger.siriContacts);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = OUTLINED_FUNCTION_30();
        *v97 = 0;
        OUTLINED_FUNCTION_6_5(&dword_26686A000, v98, v99, "[DialogCalendar] birthday passed already this year, set the birthday year to next year");
        MEMORY[0x26D5E3300](v97, -1, -1);
      }

      if (__OFADD__(v79, 1))
      {
        __break(1u);
        return;
      }

      DateComponents.year.setter();
      DateComponents.yearForWeekOfYear.setter();
      goto LABEL_54;
    }
  }

LABEL_13:
  DateComponents.date.getter();
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriContacts);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v107;
    v50 = v108;
    if (v48)
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v51, v52, "[DialogCalendar] no date set for timezoned birthday, returning nil");
      OUTLINED_FUNCTION_11_1();
    }

    v53 = *(v50 + 8);
    v53(v31, v49);
    v53(v34, v49);
  }

  else
  {
    v55 = v110;
    v54 = v111;
    (*(v111 + 32))(v110, v14, v3);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.siriContacts);
    v57 = v109;
    (*(v54 + 16))(v109, v55, v3);
    v58 = Logger.logObject.getter();
    v59 = v3;
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v60))
    {
      v61 = v57;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v114 = v63;
      *v62 = 136315138;
      lazy protocol witness table accessor for type Date and conformance Date();
      v64 = v34;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v31;
      v67 = v66;
      v68 = *(v111 + 8);
      v68(v61, v59);
      v69 = v65;
      v34 = v64;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v67, &v114);
      v31 = v106;

      *(v62 + 4) = v70;
      _os_log_impl(&dword_26686A000, v58, v60, "[DialogCalendar] timezonedBirthdate: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      v71 = v63;
      v55 = v110;
      MEMORY[0x26D5E3300](v71, -1, -1);
      OUTLINED_FUNCTION_11_1();
    }

    else
    {

      v68 = *(v54 + 8);
      v68(v57, v59);
    }

    v72 = type metadata accessor for DialogCalendar.Builder();
    OUTLINED_FUNCTION_2_6(v72);
    DialogCalendar.Builder.init()();
    Date.timeIntervalSince1970.getter();
    dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

    dispatch thunk of DialogCalendar.__allocating_init(builder:)();
    if (v113)
    {
      dispatch thunk of DialogCalendar.mockGlobals.setter();
    }

    v68(v55, v59);
    v73 = v107;
    v74 = *(v108 + 8);
    v74(v31, v107);
    v74(v34, v73);
  }
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_6_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_7_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t GetContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Parse();
  v4[11] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v4[12] = v6;
  v4[13] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for Input();
  v4[14] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v4[15] = v8;
  v4[16] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for ParameterIdentifier();
  v4[17] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v4[18] = v10;
  v4[19] = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t GetContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v40 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v4 = ParameterIdentifier.name.getter();
  v6 = v5;
  (*(v1 + 8))(v2, v3);

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8.value = GetContactAttributeSlots.init(rawValue:)(v7).value;
  *(v0 + 201) = v8;
  if (v8.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
    type metadata accessor for ContactsError(0);
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    *v9 = v4;
    v9[1] = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_13_0();

    __asm { BRAA            X1, X16 }
  }

  value = v8.value;

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v13 = type metadata accessor for Logger();
  *(v0 + 168) = __swift_project_value_buffer(v13, static Logger.siriContacts);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_23();
    v39[0] = v17;
    *v16 = 136315138;
    *(v0 + 200) = value;
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v39);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_26686A000, v14, v15, "#GetContactAttributeNeedsValueStrategy Slot: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 64), *(v0 + 112));
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 120);
  v25 = *(v0 + 128);
  v26 = *(v0 + 112);
  if (v23)
  {
    v27 = OUTLINED_FUNCTION_24();
    v39[0] = OUTLINED_FUNCTION_23();
    v28 = v39[0];
    *v27 = 136315138;
    Input.parse.getter();
    v29 = String.init<A>(describing:)();
    v31 = v30;
    (*(v24 + 8))(v25, v26);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v39);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_26686A000, v21, v22, "#GetContactAttributeNeedsValueStrategy Parse: %s.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v24 + 8))(v25, v26);
  }

  Input.parse.getter();
  *(v0 + 176) = ParameterResolutionRecord.intent.getter();
  v33 = swift_task_alloc();
  *(v0 + 184) = v33;
  *v33 = v0;
  v33[1] = GetContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
  OUTLINED_FUNCTION_13_0();

  return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v34, v35, v36);
}

{
  OUTLINED_FUNCTION_12_0();
  *v2 = v1;
  v4 = v3[22];
  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = *v0;
  OUTLINED_FUNCTION_12_0();
  *v9 = v8;
  *(v11 + 192) = v10;

  (*(v6 + 8))(v5, v7);
  v12 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t GetContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 192);
  if (v2)
  {
    type metadata accessor for GetContactAttributeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      GetContactAttributeSlots.rawValue.getter(*(v1 + 201));
      if (v6 == 0x6374614D69726973 && v5 == 0xEB00000000736568)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v13 = ParameterResolutionRecord.intent.getter();
      v14 = [v13 contactAttributeToGet];

      [v4 setContactAttributeToGet_];
LABEL_15:
      v15 = v2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_24();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v4;
        *v19 = v4;
        v20 = v15;
        _os_log_impl(&dword_26686A000, v16, v17, "#GetContactAttributeNeedsValueStrategy Converted ContactIntent to SK intent: %@", v18, 0xCu);
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v21 = *(v1 + 201);

      v22 = ParameterResolutionRecord.intent.getter();
      *(v1 + 40) = &type metadata for GetContactAttributeSlots;
      *(v1 + 48) = &protocol witness table for GetContactAttributeSlots;
      *(v1 + 16) = v21;
      specialized SiriKitContactIntent.value(forSlot:)(v26, v1 + 16);

      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
      goto LABEL_18;
    }
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_24();
    v12 = OUTLINED_FUNCTION_23();
    *&v26[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, v26);
    _os_log_impl(&dword_26686A000, v9, v10, "#GetContactAttributeNeedsValueStrategy parseValueResponse: failed to convert parse to expected intent type %s, returning empty answeredValue and same intent", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  memset(v26, 0, sizeof(v26));
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for GetContactAttributeIntent();
LABEL_18:
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents019GetContactAttributeD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents019GetContactAttributeD0CGMR);
  OUTLINED_FUNCTION_11_5(v23);

  OUTLINED_FUNCTION_3();

  return v24();
}

uint64_t GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NLContextUpdate();
  v3[5] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v3[6] = v5;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[9] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for TemplatingResult();
  v3[10] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v3[11] = v7;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = type metadata accessor for ParameterIdentifier();
  v3[14] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v3[15] = v9;
  v3[16] = OUTLINED_FUNCTION_10_0();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v55 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v4 = ParameterIdentifier.name.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8.value = GetContactAttributeSlots.init(rawValue:)(v7).value;
  if (v8.value == SiriContactsIntents_GetContactAttributeSlots_unknownDefault)
  {
    type metadata accessor for ContactsError(0);
    v9 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1(v9);
    *v10 = v4;
LABEL_3:
    v10[1] = v6;
    goto LABEL_4;
  }

  value = v8.value;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriContacts);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v52 = v4;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_24();
    v18 = OUTLINED_FUNCTION_23();
    v54 = v18;
    *v17 = 136315138;
    *(v0 + 176) = value;
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v54);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26686A000, v15, v16, "#GetContactAttributeNeedsValueStrategy Slot: %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  if (value == SiriContactsIntents_GetContactAttributeSlots_contactAttributeToGet)
  {
    v22 = ParameterResolutionRecord.intent.getter();
    GetContactAttributeIntent.requestedName.getter();
    v24 = v23;

    if (v24)
    {
    }

    else
    {
      v31 = ParameterResolutionRecord.intent.getter();
      isa = [v31 isMe];

      if (!isa)
      {
        type metadata accessor for NSNumber();
        isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      }

      v33 = [(objc_class *)isa BOOLValue:v52];

      if (v33)
      {
        v34 = *(v0 + 32);

        v35 = v34[10];
        v36 = v34[11];
        __swift_project_boxed_opaque_existential_1(v34 + 7, v35);
        v37 = (*(v36 + 24))(v35, v36);
        if (!v37)
        {
          type metadata accessor for ContactsError(0);
          v50 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
          OUTLINED_FUNCTION_15_1(v50);
LABEL_4:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          OUTLINED_FUNCTION_5_8();

          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_13_0();

          __asm { BRAA            X1, X16 }
        }

        v38 = v37;
        CNContact.formattedFullName.getter();
      }

      else
      {
        v41 = ParameterResolutionRecord.intent.getter();
        v42 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v41, &selRef_contactIdentifier);
        if (!v43 || (v44 = v42, v45 = v43, v46 = *(v0 + 32), v47 = v46[10], v48 = v46[11], __swift_project_boxed_opaque_existential_1(v46 + 7, v47), v51 = (*(v48 + 8))(v44, v45, v47, v48), , !v51))
        {
          type metadata accessor for ContactsError(0);
          v49 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
          OUTLINED_FUNCTION_15_1(v49);
          *v10 = v53;
          goto LABEL_3;
        }

        CNContact.formattedFullName.getter();
      }
    }

    SpeakableString.init(print:speak:)();
    v25 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_11_5(v25);
    v26 = ParameterResolutionRecord.intent.getter();
    v27 = [v26 isMe];

    if (v27)
    {
      [v27 BOOLValue];
    }

    v39 = swift_task_alloc();
    *(v0 + 144) = v39;
    *v39 = v0;
    v39[1] = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    OUTLINED_FUNCTION_13_0();

    return GetContactAttributeCATs.promptForContactAttribute(contactName:isMe:)();
  }

  else
  {

    v28 = swift_task_alloc();
    *(v0 + 160) = v28;
    *v28 = v0;
    v28[1] = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    OUTLINED_FUNCTION_13_0();

    return ContactsCommonCATs.promptForContact()();
  }
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v2 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    v5 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v5 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[2];
  v4 = ParameterResolutionRecord.intent.getter();
  v5 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v4, &selRef_contactIdentifier);
  static ContactsContextProvider.needsValueGetContactAttribute(contactIdentifier:contactAttributeValue:contactTypeValue:)(v5, v6, 0, 0, 0, 0);

  v7 = type metadata accessor for AceOutput();
  v8 = MEMORY[0x277D5C1D8];
  v3[3] = v7;
  v3[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v3);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v1, v2);
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  (*(v0[6] + 8))(v0[8], v0[5]);
  (*(v11 + 8))(v9, v10);

  OUTLINED_FUNCTION_3();

  return v12();
}

{
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    v7 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v7 = GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = ParameterResolutionRecord.intent.getter();
  v2 = [v1 contactAttributeToGet];

  if (v2 && (v3 = v2, v4 = outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v3, &selRef_handleLabel), v6 = v5, v7 = [v3 contactAttributeType], v6))
  {
    v8 = v7;
    v9 = String.mapToNLAttributeValue(forType:)(v7, v4, v6);
    v11 = v10;
    v12 = String.mapToNLContactTypeValue(forType:)(v8, v4, v6);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v9 = 0;
    v11 = 0;
  }

  v15 = v0[12];
  v16 = v0[7];
  v17 = v0[2];
  static ContactsContextProvider.needsValueGetContactAttribute(contactIdentifier:contactAttributeValue:contactTypeValue:)(0, 0, v9, v11, v12, v14);

  v18 = type metadata accessor for AceOutput();
  v19 = MEMORY[0x277D5C1D8];
  v17[3] = v18;
  v17[4] = v19;
  __swift_allocate_boxed_opaque_existential_1(v17);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v15, v16);

  v20 = v0[12];
  v21 = v0[10];
  v22 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v22 + 8))(v20, v21);

  OUTLINED_FUNCTION_3();

  return v23();
}

uint64_t GetContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_8();

  OUTLINED_FUNCTION_3();

  return v1();
}

{
  OUTLINED_FUNCTION_5_8();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t GetContactAttributeNeedsValueStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t type metadata accessor for GetContactAttributeNeedsValueStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactAttributeNeedsValueStrategy;
  if (!type metadata singleton initialization cache for GetContactAttributeNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_5_8()
{
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_8_5(ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:));
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[5];
  v2 = *(v1 + 320);
  type metadata accessor for ParameterResolutionRecord();
  v3 = ParameterResolutionRecord.intent.getter();
  v4 = (*(*(v1 + 336) + 16))(v2);
  v6 = v5;

  if (v6)
  {
    v7 = v0[4];
    v8 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5value_10Foundation6LocaleV6localetMd, _sSS5value_10Foundation6LocaleV6localetMR);
    *v8 = v4;
    v8[1] = v6;
    __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
    dispatch thunk of DeviceState.siriLocale.getter();
    v9 = *MEMORY[0x277D5BD90];
    type metadata accessor for RelationshipLabel();
    OUTLINED_FUNCTION_52();
    (*(v10 + 104))(v8, v9);
    OUTLINED_FUNCTION_6_4();
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v12 = type metadata accessor for Logger();
    v13 = OUTLINED_FUNCTION_52_0(v12, static Logger.siriContacts);
    v14 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_0(v14))
    {
      v15 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v15);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v16, v17, "#ContactsUnsetRelationshipFlowStrategy parseRequestedRelationship throwing error");
      OUTLINED_FUNCTION_11_1();
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_1_7();
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v18, v19);
    OUTLINED_FUNCTION_73();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_3();
  }

  return v11();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return OUTLINED_FUNCTION_8_5(ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:));
}

uint64_t ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)()
{
  v1 = *(v0 + 24);
  type metadata accessor for ParameterResolutionRecord();
  v2 = ParameterResolutionRecord.intent.getter();
  v3 = [v1 firstName];
  v4 = MEMORY[0x26D5E2470](0x6D614E7473726966, 0xE900000000000065);
  [v2 setValue:v3 forKey:v4];

  v5 = OUTLINED_FUNCTION_64();
  v6 = [v1 fullName];
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_17_2(v7);

  v8 = OUTLINED_FUNCTION_64();
  v9 = [v1 lastName];
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_17_2(v10);

  v11 = OUTLINED_FUNCTION_64();
  v12 = [v1 middleName];
  v13 = MEMORY[0x26D5E2470](0x614E656C6464696DLL, 0xEA0000000000656DLL);
  OUTLINED_FUNCTION_17_2(v13);

  v14 = OUTLINED_FUNCTION_64();
  v15 = [v1 nickName];
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_17_2(v16);

  v17 = OUTLINED_FUNCTION_64();
  v18 = RelationshipLabel.asUnboundedSemanticValue.getter();
  v19 = MEMORY[0x26D5E2470](v18);

  v20 = MEMORY[0x26D5E2470](0x52746361746E6F63, 0xEF6E6F6974616C65);
  [v17 setValue:v19 forKey:v20];

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
  v21 = v1;
  OUTLINED_FUNCTION_64();
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_6_4();

  return v26();
}

void ContactsUnsetRelationshipFlowStrategy.actionForPromptForNameInput(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_1(a1, a2, "#ContactsUnsetRelationshipFlowStrategy actionForPromptForNameInput", a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_15();
  v13 = v12;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v14 = type metadata accessor for Logger();
  v15 = OUTLINED_FUNCTION_52_0(v14, static Logger.siriContacts);
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_30();
    *v17 = 0;
    _os_log_impl(&dword_26686A000, v15, v16, v13, v17, 2u);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_14();

  ContactsUnsetRelationshipFlowStrategy.unsetRelationshipActionForInput(_:resolveRecord:shouldExpectPerson:)();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for Parse();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_19_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  Input.parse.getter();
  static UnsetRelationshipPerson.from(parse:)(v1, v2);
  v3 = OUTLINED_FUNCTION_22_0();
  v4(v3);

  OUTLINED_FUNCTION_6_4();

  return v5();
}

uint64_t static UnsetRelationshipPerson.from(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow23UnsetRelationshipPersonVSgMd, &_s11SiriKitFlow23UnsetRelationshipPersonVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v102 - v4;
  v129 = type metadata accessor for UnsetRelationshipPerson();
  v104 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v105 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v102 - v8;
  v113 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v107 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v106 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for USOParse();
  v123 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v122 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v117 = &v102 - v12;
  v13 = type metadata accessor for ContactNLv3Intent(0);
  MEMORY[0x28223BE20](v13 - 8);
  v116 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for PersonIntentNode();
  v111 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v110 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NLIntent();
  v120 = *(v16 - 8);
  v121 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v115 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v119 = &v102 - v19;
  v20 = type metadata accessor for Parse();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v109 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v128 = &v102 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v124 = &v102 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v102 - v28;
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.siriContacts);
  v32 = *(v21 + 16);
  v127 = a1;
  v32(v29, a1, v20);
  v125 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v103 = v5;
    v102 = v36;
    v130[0] = v36;
    *v35 = 136315138;
    v32(v124, v29, v20);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v108 = *(v21 + 8);
    v108(v29, v20);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v130);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_26686A000, v33, v34, "#ContactsUnsetRelationshipFlowStrategy parse: %s", v35, 0xCu);
    v41 = v102;
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    v5 = v103;
    MEMORY[0x26D5E3300](v41, -1, -1);
    MEMORY[0x26D5E3300](v35, -1, -1);
  }

  else
  {

    v108 = *(v21 + 8);
    v108(v29, v20);
  }

  v42 = v127;
  v43 = v128;
  v32(v128, v127, v20);
  v44 = (*(v21 + 88))(v43, v20);
  if (v44 == *MEMORY[0x277D5C128])
  {
    (*(v21 + 96))(v43, v20);
    v46 = v119;
    v45 = v120;
    v47 = v121;
    (*(v120 + 32))(v119, v43, v121);
    v48 = v115;
    (*(v45 + 16))(v115, v46, v47);
    v49 = v116;
    v50 = ContactNLv3Intent.init(intent:)(v48, v116);
    v51 = v117;
    ContactNLv3Intent.person.getter(v50, v52, v53, v54, v55, v56, v57, v58, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v49, type metadata accessor for ContactNLv3Intent);
    v59 = v118;
    if (__swift_getEnumTagSinglePayload(v51, 1, v118) != 1)
    {
      v70 = v111;
      v71 = v110;
      (*(v111 + 32))(v110, v51, v59);
      v130[3] = v59;
      v130[4] = MEMORY[0x277D5E660];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
      (*(v70 + 16))(boxed_opaque_existential_1, v71, v59);
      v73 = v126;
      static UnsetRelationshipPerson.from(personNode:)();
      (*(v70 + 8))(v71, v59);
      (*(v45 + 8))(v46, v47);
      __swift_destroy_boxed_opaque_existential_0Tm(v130);
      v74 = v73;
      v75 = 0;
LABEL_23:
      v95 = v129;
      return __swift_storeEnumTagSinglePayload(v74, v75, 1, v95);
    }

    outlined destroy of ResponseMode?(v51, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26686A000, v60, v61, "#ContactsUnsetRelationshipFlowStrategy Found no Person Node in NLv3 Intent, returning nil for UnsetRelationshipPerson", v62, 2u);
      MEMORY[0x26D5E3300](v62, -1, -1);
    }

    (*(v45 + 8))(v46, v47);
LABEL_22:
    v74 = v126;
    v75 = 1;
    goto LABEL_23;
  }

  if (v44 == *MEMORY[0x277D5C160])
  {
    (*(v21 + 96))(v43, v20);
    (*(v123 + 32))(v122, v43, v114);
    v63 = v112;
    USOParse.preferredUserDialogAct.getter(v112);
    v64 = v63;
    v65 = v63;
    v66 = v113;
    if (__swift_getEnumTagSinglePayload(v65, 1, v113) == 1)
    {
      v67 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
      v68 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
      v69 = v64;
    }

    else
    {
      v90 = v107;
      v91 = v106;
      (*(v107 + 32))(v106, v64, v66);
      static UnsetRelationshipPerson.from(userDialogAct:)(v5);
      (*(v90 + 8))(v91, v66);
      if (__swift_getEnumTagSinglePayload(v5, 1, v129) != 1)
      {
        (*(v123 + 8))(v122, v114);
        v98 = *(v104 + 32);
        v99 = v105;
        v100 = v129;
        v98(v105, v5, v129);
        v101 = v126;
        v98(v126, v99, v100);
        v74 = v101;
        v75 = 0;
        v95 = v100;
        return __swift_storeEnumTagSinglePayload(v74, v75, 1, v95);
      }

      v67 = &_s11SiriKitFlow23UnsetRelationshipPersonVSgMd;
      v68 = &_s11SiriKitFlow23UnsetRelationshipPersonVSgMR;
      v69 = v5;
    }

    outlined destroy of ResponseMode?(v69, v67, v68);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_26686A000, v92, v93, "#ContactsUnsetRelationshipFlowStrategy Found no common_Person in USO parse, returning nil for UnsetRelationshipPerson", v94, 2u);
      MEMORY[0x26D5E3300](v94, -1, -1);
    }

    (*(v123 + 8))(v122, v114);
    goto LABEL_22;
  }

  v76 = v109;
  v32(v109, v42, v20);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v130[0] = v80;
    *v79 = 136315138;
    v32(v124, v76, v20);
    v81 = v20;
    v82 = String.init<A>(describing:)();
    v84 = v83;
    v85 = v76;
    v86 = v108;
    v108(v85, v81);
    v87 = v82;
    v20 = v81;
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v84, v130);

    *(v79 + 4) = v88;
    _os_log_impl(&dword_26686A000, v77, v78, "#ContactsUnsetRelationshipFlowStrategy Encountered unexpected parse type %s, returning nil for UnsetRelationshipPerson", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    MEMORY[0x26D5E3300](v80, -1, -1);
    v89 = v79;
    v43 = v128;
    MEMORY[0x26D5E3300](v89, -1, -1);
  }

  else
  {

    v97 = v76;
    v86 = v108;
    v108(v97, v20);
  }

  __swift_storeEnumTagSinglePayload(v126, 1, 1, v129);
  return v86(v43, v20);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[10] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for NLContextUpdate();
  v1[11] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_10_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v1[14] = OUTLINED_FUNCTION_10_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v1[15] = OUTLINED_FUNCTION_10_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  OUTLINED_FUNCTION_18_0(v9);
  v1[16] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for TemplatingResult();
  v1[17] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[18] = v11;
  v1[19] = OUTLINED_FUNCTION_45();
  v1[20] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 168) = v1;
  *v1 = v2;
  v1[1] = ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:);

  return ContactsCommonCATs.unsupportedRelationshipNotFound()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  v1 = RelationshipLabel.asUnboundedSemanticValue.getter();
  OUTLINED_FUNCTION_49_0(v1, v2);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 184) = v7;
  *v7 = v8;
  v7[1] = ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:);

  return ModifyContactAttributeCATs.promptForRelationshipContact(requestedRelationship:)();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[24] = v0;

  outlined destroy of ResponseMode?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    (*(v3[18] + 8))(v3[19], v3[17]);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_3();

  return v0();
}

{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_61();
  v23 = v22;
  v24 = v22[19];
  v26 = v22[17];
  v25 = v22[18];
  v63 = v22[14];
  v64 = v22[15];
  v27 = v22[13];
  v28 = v22[10];
  v59 = v22[11];
  v60 = v22[20];
  v57 = v22[9];
  v58 = v22[12];
  v29 = v22[7];
  v62 = v22[16];
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v62, v63, v60);
  outlined destroy of ResponseMode?(v63, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  outlined destroy of ResponseMode?(v62, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v61 = *(v25 + 8);
  v61(v24, v26);
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v37 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v37);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForPromptForRelatedPersonName()(v40 + v39);
  NLContextUpdate.nluSystemDialogActs.setter();
  v41 = OUTLINED_FUNCTION_22_0();
  v42(v41);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v59);
  v46 = type metadata accessor for AceOutput();
  *(v23 + 2) = 0u;
  v23[6] = 0;
  *(v23 + 1) = 0u;
  v47 = MEMORY[0x277D5C1D8];
  v29[3] = v46;
  v29[4] = v47;
  __swift_allocate_boxed_opaque_existential_1(v29);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of ResponseMode?((v23 + 2), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v28, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v58 + 8))(v27, v59);
  v61(v60, v26);

  OUTLINED_FUNCTION_40();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, v23 + 2, v57, v58, v59, v60, v26, v61, v24, v62, v63, v64, a20, a21, a22);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8SAPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8SAPersonCGMR);
  OUTLINED_FUNCTION_44_0();

  v1 = BasicDisambiguationItemContainer.__allocating_init(_:_:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v1[9] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for Parse();
  v1[12] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_45();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[17] = v9;
  OUTLINED_FUNCTION_18_0(v9);
  v1[18] = OUTLINED_FUNCTION_10_0();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v16 = v14[17];
  v15 = v14[18];
  v17 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v86 = v17;
  os_signpost(_:dso:log:name:signpostID:)();
  v18 = v15 + *(v16 + 20);
  *v18 = "ParseUnsetRelationDisambiguationResult";
  *(v18 + 8) = 38;
  *(v18 + 16) = 2;
  Input.parse.getter();
  v19 = OUTLINED_FUNCTION_17_0();
  if (v20(v19) == *MEMORY[0x277D5C150])
  {
    v21 = v14[15];
    v22 = v14[12];
    v23 = v14[13];
    v25 = v14[10];
    v24 = v14[11];
    v26 = v14[9];
    (*(v23 + 16))(v21, v14[16], v22);
    (*(v23 + 96))(v21, v22);
    (*(v25 + 32))(v24, v21, v26);
    if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000025 && 0x800000026696DFF0 == v27)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        (*(v14[10] + 8))(v14[11], v14[9]);
        goto LABEL_10;
      }
    }

    Parse.DirectInvocation.getSelectionIndex()();
    if (v33)
    {
      (*(v14[10] + 8))(v14[11], v14[9]);
      v34 = OUTLINED_FUNCTION_76();
      v35(v34);
      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMR);
    PaginatedItemContainer.items.getter();
    v44 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    v45 = OUTLINED_FUNCTION_71();
    Array.subscript.getter(v45, v46, v44, v47);

    v48 = v14[3];
    if (!v48)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v61 = type metadata accessor for Logger();
      v62 = OUTLINED_FUNCTION_52_0(v61, static Logger.siriContacts);
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_30();
        *v64 = 0;
        _os_log_impl(&dword_26686A000, v62, v63, "#ContactsUnsetRelationshipFlowStrategy User selected item out of bounds", v64, 2u);
        OUTLINED_FUNCTION_6();
      }

      v65 = v14[16];
      v66 = v14[12];
      v67 = v14[13];
      v68 = v14[10];
      v69 = v14[11];
      v70 = v14[9];

      type metadata accessor for ContactsError(0);
      OUTLINED_FUNCTION_1_7();
      v73 = lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v71, v72);
      OUTLINED_FUNCTION_7_1(v73);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v68 + 8))(v69, v70);
      (*(v67 + 8))(v65, v66);
      goto LABEL_27;
    }

    v50 = v14[10];
    v49 = v14[11];
    v51 = v14[9];
    v14[4] = v48;
    static DisambiguationResult.chosenItem(_:)();
    (*(v50 + 8))(v49, v51);

    v52 = OUTLINED_FUNCTION_17_0();
    v53(v52);
LABEL_21:
    v58 = v14[18];
    v59 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_88(v59);
    OUTLINED_FUNCTION_2_7();
    _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v58, v60);

    OUTLINED_FUNCTION_6_4();
    goto LABEL_28;
  }

LABEL_10:
  v30 = *(v14[13] + 8);
  v30(v14[16], v14[12]);
  Input.parse.getter();
  v31 = Parse.toContactId(existingCandidates:)(MEMORY[0x277D84F90]);
  if (!v32)
  {
    v36 = v14[8];
    v30(v14[14], v14[12]);
    v37 = v36[10];
    v38 = v36[11];
    OUTLINED_FUNCTION_77(v36 + 7, v37);
    v39 = (*(v38 + 8))(v31._countAndFlagsBits, v31._object, v37, v38);
    v54 = v39;
    if (!v39)
    {
      type metadata accessor for ContactsError(0);
      OUTLINED_FUNCTION_1_7();
      v42 = lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v40, v41);
      OUTLINED_FUNCTION_7_1(v42);
      *v43 = v31;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_27;
    }

    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAPerson, 0x277D47630);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v55 = v54;
    v56.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v57 = SAPerson.init(contact:isMe:)(v54, v56.super.super.isa);
    v14[2] = v57;
    static DisambiguationResult.chosenItem(_:)();

    goto LABEL_21;
  }

  v30(v14[14], v14[12]);
LABEL_27:
  v74 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_88(v74);
  v75 = v14[18];
  OUTLINED_FUNCTION_2_7();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v75, v76);

  OUTLINED_FUNCTION_3();
LABEL_28:
  OUTLINED_FUNCTION_13_0();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, v86, a11, a12, a13, a14);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = type metadata accessor for PaginationStyle();
  OUTLINED_FUNCTION_18_0(v5);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySSGMd, &_s11SiriKitFlow22PaginatedItemContainerVySSGMR);
  v1[8] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[11] = v8;
  OUTLINED_FUNCTION_18_0(v8);
  v1[12] = OUTLINED_FUNCTION_10_0();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = static Signpost.contactsLog;
  v0[13] = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "MakePromptForUnsetRelationDisambiguation";
  *(v5 + 8) = 40;
  *(v5 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8SAPersonCGMR);
  v0[2] = PaginatedItemContainer.items.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8SAPersonCGMd, &_sSaySo8SAPersonCGMR);
  lazy protocol witness table accessor for type BasicDisambiguationItemContainer<SAPerson> and conformance BasicDisambiguationItemContainer<A>(&lazy protocol witness table cache variable for type [SAPerson] and conformance [A], &_sSaySo8SAPersonCGMd, &_sSaySo8SAPersonCGMR);
  Sequence.compactMap<A>(_:)();

  static PaginationStyle.noPagination()();
  OUTLINED_FUNCTION_60();
  PaginatedItemContainer.init(items:paginationStyle:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[14] = v6;
  *v6 = v7;
  v6[1] = ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:);

  return ContactsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_59();
  v2(v1);
  v3 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_89(v3);
  OUTLINED_FUNCTION_2_7();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v0, v4);

  OUTLINED_FUNCTION_6_4();

  return v5();
}

{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_59();
  v2(v1);
  v3 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_89(v3);
  OUTLINED_FUNCTION_2_7();
  _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(v0, v4);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t closure #1 in ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = outlined bridged method (pb) of @objc SAPerson.internalGUID.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t ContactsUnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v0[4] = OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for Parse();
  v0[5] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_19_1();
  v1 = *(v0 + 32);
  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v2 = OUTLINED_FUNCTION_22_0();
  v3(v2);
  v4 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    outlined destroy of ResponseMode?(*(v0 + 32), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_52_0(v5, static Logger.siriContacts);
    v7 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_0(v7))
    {
      v8 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v8);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v9, v10, "#ContactsUnsetRelationshipFlowStrategy parsePromptToSaveRelationshipResponse throwing error");
      OUTLINED_FUNCTION_11_1();
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_1_7();
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(v11, v12);
    OUTLINED_FUNCTION_73();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    (*(v14 + 32))();

    OUTLINED_FUNCTION_6_4();
  }

  return v13();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v1[33] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for TemplatingResult();
  v1[34] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[35] = v7;
  v1[36] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v8);
  v1[37] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v9);
  v1[38] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[39] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[40] = v11;
  v1[41] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for ContactsSnippetPluginModel();
  v1[42] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v1[43] = v13;
  v1[44] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for ContactsSnippetFlowState();
  v1[45] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[46] = v15;
  v1[47] = OUTLINED_FUNCTION_10_0();
  v16 = type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType();
  v1[48] = v16;
  OUTLINED_FUNCTION_1_1(v16);
  v1[49] = v17;
  v1[50] = OUTLINED_FUNCTION_10_0();
  v18 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[51] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[52] = v19;
  v1[53] = OUTLINED_FUNCTION_10_0();
  v20 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[54] = v20;
  OUTLINED_FUNCTION_1_1(v20);
  v1[55] = v21;
  v1[56] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for ContactsLabelCATContainer();
  v1[57] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[58] = v23;
  v1[59] = OUTLINED_FUNCTION_45();
  v1[60] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v24);
  v1[61] = OUTLINED_FUNCTION_45();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v25 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v25);
  v1[70] = OUTLINED_FUNCTION_10_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  v1[71] = v26;
  OUTLINED_FUNCTION_1_1(v26);
  v1[72] = v27;
  v1[73] = OUTLINED_FUNCTION_45();
  v1[74] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

{
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_6();
  *v6 = v5;
  *(v8 + 632) = v7;
  *(v8 + 640) = v0;

  v9 = *(v2 + 536);
  v10 = *(v2 + 528);

  outlined destroy of ResponseMode?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of ResponseMode?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_71();
  outlined destroy of ResponseMode?(v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = OUTLINED_FUNCTION_69();
  outlined destroy of ResponseMode?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_4();
  type metadata accessor for ContactsLabelCATsModern(0);
  OUTLINED_FUNCTION_90();
  *(v0 + 648) = OUTLINED_FUNCTION_45_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 656) = v1;
  *v1 = v2;
  v1[1] = ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);

  return static ContactsLabelCATContainer.modifyConfirmationCATs(from:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 192));
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v3[88] = v0;

  if (v0)
  {
    v7 = v3[63];
    v8 = v3[61];

    outlined destroy of ResponseMode?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = OUTLINED_FUNCTION_17_0();
    outlined destroy of ResponseMode?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of ResponseMode?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    outlined destroy of ResponseMode?(v3[61], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v11 = OUTLINED_FUNCTION_47_0();
    outlined destroy of ResponseMode?(v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v13 = OUTLINED_FUNCTION_60();
    outlined destroy of ResponseMode?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

id ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v15 = type metadata accessor for Logger();
    v16 = OUTLINED_FUNCTION_52_0(v15, static Logger.siriContacts);
    v17 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v17))
    {
      v18 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v18);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v19, v20, "#ContactsUnsetRelationshipFlowStrategy makePromptToSaveRelationship");
      OUTLINED_FUNCTION_11_1();
    }

    v21 = v14[32];

    v14[17] = &type metadata for InstalledAppsProvider;
    v14[18] = &protocol witness table for InstalledAppsProvider;
    __swift_project_boxed_opaque_existential_1((v21 + 56), *(v21 + 80));
    v22 = OUTLINED_FUNCTION_22_0();
    v24 = v23(v22);
    if (v24)
    {
      v25 = v24;
      v26 = [v24 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v47 = v14[30];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v14[75] = v48;

    v49 = [v47 internalGUID];
    if (v49)
    {
      v50 = v49;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v51 = v14[30];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v14[76] = v52;

    outlined init with copy of ContactServiceProtocol(v21 + 56, (v14 + 19));
    OUTLINED_FUNCTION_77(v14 + 19, v14[22]);
    result = [v51 internalGUID];
    if (result)
    {
      v53 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = OUTLINED_FUNCTION_35_1();
      v55(v54);

      __swift_destroy_boxed_opaque_existential_0Tm(v14 + 19);
      v56 = v14[30];
      [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
      result = [v56 prefix];
      if (result)
      {
        v57 = result;
        v58 = v14[30];
        OUTLINED_FUNCTION_50_0(result, sel_setNamePrefix_);

        v59 = [v58 firstName];
        OUTLINED_FUNCTION_50_0(v59, sel_setFirstName_);

        result = [v58 middleName];
        if (result)
        {
          v60 = result;
          v61 = v14[30];
          OUTLINED_FUNCTION_50_0(result, sel_setMiddleName_);

          v62 = [v61 lastName];
          OUTLINED_FUNCTION_50_0(v62, sel_setLastName_);

          result = [v61 suffix];
          if (result)
          {
            v63 = result;
            OUTLINED_FUNCTION_50_0(result, sel_setNameSuffix_);

            type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
            CodableContact.init(wrappedValue:)();
            type metadata accessor for ModifyContactAttributeCATsModern(0);
            OUTLINED_FUNCTION_90();
            v14[77] = OUTLINED_FUNCTION_45_0();
            v81 = RelationshipLabel.asUnboundedSemanticValue.getter();
            OUTLINED_FUNCTION_49_0(v81, v82);
            v83 = type metadata accessor for SpeakableString();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
            OUTLINED_FUNCTION_37_1();
            __swift_storeEnumTagSinglePayload(v87, v88, v89, v83);
            v90 = CodableContact.wrappedValue.getter();
            v91 = CNContact.formattedFullName.getter();
            v93 = v92;

            OUTLINED_FUNCTION_49_0(v91, v93);
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v94, v95, v96, v83);
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v97, v98, v99, v83);
            v100 = swift_task_alloc();
            v14[78] = v100;
            *v100 = v14;
            v100[1] = ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);
            OUTLINED_FUNCTION_13_0();

            return ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
          }

LABEL_29:
          __break(1u);
          return result;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v14[32];
  v28 = v14[30];
  outlined init with copy of ContactServiceProtocol(v27 + 16, (v14 + 3));
  v29 = *(v27 + 104);
  v14[2] = 10;
  v14[8] = v29;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  v14[86] = v30;
  outlined destroy of ConfirmationViewBuilder((v14 + 2));
  v31 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  outlined init with copy of ContactServiceProtocol(v27 + 56, (v14 + 9));
  OUTLINED_FUNCTION_77(v14 + 9, v14[12]);
  result = [v28 internalGUID];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = OUTLINED_FUNCTION_36_1();
  v38(v37);
  v102 = v31;

  __swift_destroy_boxed_opaque_existential_0Tm(v14 + 9);
  v39 = v14[32];
  v40 = v14[30];
  type metadata accessor for DialogPerson();
  OUTLINED_FUNCTION_77((v27 + 16), *(v39 + 40));
  v41 = v40;
  OUTLINED_FUNCTION_47();
  dispatch thunk of DeviceState.siriLocale.getter();
  v42 = *(v39 + 120);
  v43 = v42;
  OUTLINED_FUNCTION_68();
  DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v44, v45, v46, v42);
  dispatch thunk of DialogPerson.fullName.getter();
  v64 = v14[65];

  outlined destroy of ResponseMode?(v64, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v65 = OUTLINED_FUNCTION_71();
  outlined init with take of SpeakableString?(v65, v66);
  v67 = RelationshipLabel.asUnboundedSemanticValue.getter();
  OUTLINED_FUNCTION_49_0(v67, v68);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v102);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v102);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v102);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v14[87] = v78;
  *v78 = v79;
  v78[1] = ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);
  OUTLINED_FUNCTION_13_0();

  return ModifyContactAttributeCATs.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  v27 = *(v26 + 608);
  v28 = *(v26 + 600);
  v29 = *(v26 + 576);
  v48 = *(v26 + 568);
  v49 = *(v26 + 592);
  v30 = *(v26 + 464);
  v46 = *(v26 + 456);
  v47 = *(v26 + 480);
  v31 = *(v26 + 440);
  v44 = *(v26 + 432);
  v45 = *(v26 + 448);
  v32 = *(v26 + 344);
  v50 = *(v26 + 336);
  v51 = *(v26 + 352);

  v33 = OUTLINED_FUNCTION_58();
  v34(v33);
  (*(v31 + 8))(v45, v44);
  (*(v30 + 8))(v47, v46);
  (*(v29 + 8))(v49, v48);
  outlined destroy of AppUtil(v26 + 112);
  (*(v32 + 8))(v51, v50);
  OUTLINED_FUNCTION_15_3();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_53_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, v44, v45, v46, v47, v48, v49, v50, v51, a24, a25, a26);
}

{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  v27 = v26[65];
  v28 = v26[33];
  v30 = v26[29];
  v29 = v26[30];
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  type metadata accessor for ContactsCommonCATs(0);
  v35 = type metadata accessor for AceOutput();
  v36 = MEMORY[0x277D5C1D8];
  v30[3] = v35;
  v30[4] = v36;
  __swift_allocate_boxed_opaque_existential_1(v30);
  v37 = OUTLINED_FUNCTION_76();
  ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(v37, v38, v29, 1, v28);

  outlined destroy of ResponseMode?(v28, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v39 = OUTLINED_FUNCTION_17_0();
  v40(v39);
  outlined destroy of ResponseMode?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_15_3();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_53_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  v27 = *(v26 + 600);

  v28 = OUTLINED_FUNCTION_60();
  v29(v28);
  outlined destroy of AppUtil(v26 + 112);
  OUTLINED_FUNCTION_14_4(*(v26 + 640));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_53_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

{
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_67();
  outlined destroy of ResponseMode?(*(v26 + 520), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_4(*(v26 + 704));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_53_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t closure #1 in ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  static ContactsContextProvider.confirm(person:attribute:)(a3, 0, 1);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for TemplatingResult();
  v1[26] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[27] = v6;
  v1[28] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v7);
  v1[29] = OUTLINED_FUNCTION_10_0();
  v8 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v8);
  v1[30] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[31] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[32] = v10;
  v1[33] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for ContactsSnippetPluginModel();
  v1[34] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[35] = v12;
  v1[36] = OUTLINED_FUNCTION_10_0();
  v13 = type metadata accessor for ContactsSnippetFlowState();
  v1[37] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v1[38] = v14;
  v1[39] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for ModifyContactAttributeSnippetModel.ModificationType();
  v1[40] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[41] = v16;
  v1[42] = OUTLINED_FUNCTION_10_0();
  v17 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[43] = v17;
  OUTLINED_FUNCTION_1_1(v17);
  v1[44] = v18;
  v1[45] = OUTLINED_FUNCTION_10_0();
  v19 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[46] = v19;
  OUTLINED_FUNCTION_1_1(v19);
  v1[47] = v20;
  v1[48] = OUTLINED_FUNCTION_10_0();
  v21 = type metadata accessor for ContactsLabelCATContainer();
  v1[49] = v21;
  OUTLINED_FUNCTION_1_1(v21);
  v1[50] = v22;
  v1[51] = OUTLINED_FUNCTION_45();
  v1[52] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v23);
  v1[53] = OUTLINED_FUNCTION_45();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v24 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v24);
  v1[60] = OUTLINED_FUNCTION_10_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  v1[61] = v25;
  OUTLINED_FUNCTION_1_1(v25);
  v1[62] = v26;
  v1[63] = OUTLINED_FUNCTION_45();
  v1[64] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_6();
  *v6 = v5;
  *(v8 + 552) = v7;
  *(v8 + 560) = v0;

  v9 = *(v2 + 456);

  outlined destroy of ResponseMode?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_71();
  outlined destroy of ResponseMode?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_69();
  outlined destroy of ResponseMode?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_4();
  type metadata accessor for ContactsLabelCATsModern(0);
  OUTLINED_FUNCTION_90();
  *(v0 + 568) = OUTLINED_FUNCTION_45_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 576) = v1;
  *v1 = v2;
  v1[1] = ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:);

  return static ContactsLabelCATContainer.modifyIntentHandledCATs(from:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 616) = v0;

  v5 = *(v2 + 432);
  outlined destroy of ResponseMode?(*(v2 + 424), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of ResponseMode?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = *(v0 + 520);

  v2 = OUTLINED_FUNCTION_60();
  v3(v2);
  outlined destroy of AppUtil(v0 + 56);
  OUTLINED_FUNCTION_19_2(*(v0 + 560));

  OUTLINED_FUNCTION_3();

  return v4();
}

{
  outlined destroy of ResponseMode?(*(v0 + 448), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_19_2(*(v0 + 616));

  OUTLINED_FUNCTION_3();

  return v1();
}

id ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v16 = type metadata accessor for Logger();
    v17 = OUTLINED_FUNCTION_52_0(v16, static Logger.siriContacts);
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v18))
    {
      v19 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v19);
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v20, v21, "#ContactsUnsetRelationshipFlowStrategy makeSaveRelationshipCompletedResponse");
      OUTLINED_FUNCTION_11_1();
    }

    v22 = v15[25];

    v15[10] = &type metadata for InstalledAppsProvider;
    v15[11] = &protocol witness table for InstalledAppsProvider;
    __swift_project_boxed_opaque_existential_1((v22 + 56), *(v22 + 80));
    v23 = OUTLINED_FUNCTION_22_0();
    v25 = v24(v23);
    if (v25)
    {
      v26 = v25;
      v27 = [v25 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v56 = v15[23];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v15[65] = v57;

    v58 = [v56 internalGUID];
    if (v58)
    {
      v59 = v58;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_65();
    }

    v60 = v15[23];
    OUTLINED_FUNCTION_47_0();
    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v15[66] = v61;

    outlined init with copy of ContactServiceProtocol(v22 + 56, (v15 + 12));
    OUTLINED_FUNCTION_77(v15 + 12, v15[15]);
    result = [v60 internalGUID];
    if (result)
    {
      v62 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = OUTLINED_FUNCTION_35_1();
      v64(v63);

      __swift_destroy_boxed_opaque_existential_0Tm(v15 + 12);
      v65 = v15[23];
      [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
      result = [v65 prefix];
      if (result)
      {
        v66 = result;
        v67 = v15[23];
        OUTLINED_FUNCTION_50_0(result, sel_setNamePrefix_);

        v68 = [v67 firstName];
        OUTLINED_FUNCTION_50_0(v68, sel_setFirstName_);

        result = [v67 middleName];
        if (result)
        {
          v69 = result;
          v70 = v15[23];
          OUTLINED_FUNCTION_50_0(result, sel_setMiddleName_);

          v71 = [v70 lastName];
          OUTLINED_FUNCTION_50_0(v71, sel_setLastName_);

          result = [v70 suffix];
          if (result)
          {
            v72 = result;
            OUTLINED_FUNCTION_50_0(result, sel_setNameSuffix_);

            type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
            CodableContact.init(wrappedValue:)();
            type metadata accessor for ModifyContactAttributeCATsModern(0);
            OUTLINED_FUNCTION_90();
            v15[67] = OUTLINED_FUNCTION_45_0();
            v73 = RelationshipLabel.asUnboundedSemanticValue.getter();
            OUTLINED_FUNCTION_49_0(v73, v74);
            v75 = type metadata accessor for SpeakableString();
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
            v79 = CodableContact.wrappedValue.getter();
            v80 = CNContact.formattedFullName.getter();
            v82 = v81;

            OUTLINED_FUNCTION_49_0(v80, v82);
            OUTLINED_FUNCTION_50();
            __swift_storeEnumTagSinglePayload(v83, v84, v85, v75);
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_50();
            OUTLINED_FUNCTION_56_0(v86, v87, v88, v75);
            v89 = swift_task_alloc();
            v15[68] = v89;
            *v89 = v15;
            v89[1] = ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:);
            OUTLINED_FUNCTION_13_0();

            return ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
          }

          goto LABEL_28;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v28 = v15[25];
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_37_1();
  if (OUTLINED_FUNCTION_56_0(v29, v30, v31, v14))
  {
    v32 = v15[23];
    outlined init with copy of ContactServiceProtocol(v15[25] + 56, (v15 + 2));
    OUTLINED_FUNCTION_77(v15 + 2, v15[5]);
    result = [v32 internalGUID];
    if (!result)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v34 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = OUTLINED_FUNCTION_36_1();
    v36(v35);

    __swift_destroy_boxed_opaque_existential_0Tm(v15 + 2);
  }

  v37 = v15[23];
  type metadata accessor for DialogPerson();
  OUTLINED_FUNCTION_77((v28 + 16), *(v28 + 40));
  v38 = v37;
  OUTLINED_FUNCTION_47();
  dispatch thunk of DeviceState.siriLocale.getter();
  OUTLINED_FUNCTION_68();
  DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v39, v40, v41, 0);
  dispatch thunk of DialogPerson.fullName.getter();
  v42 = v15[56];

  outlined destroy of ResponseMode?(v42, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v43 = OUTLINED_FUNCTION_69();
  outlined init with take of SpeakableString?(v43, v44);
  v45 = RelationshipLabel.asUnboundedSemanticValue.getter();
  OUTLINED_FUNCTION_49_0(v45, v46);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v14);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v14);
  __swift_project_boxed_opaque_existential_1((v28 + 16), *(v28 + 40));
  OUTLINED_FUNCTION_60();
  DeviceState.isVox.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v15[76] = v53;
  *v53 = v54;
  v53[1] = ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:);
  OUTLINED_FUNCTION_13_0();

  return ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_61();
  v23 = *(v22 + 528);
  v24 = *(v22 + 520);
  v25 = *(v22 + 496);
  v44 = *(v22 + 488);
  v45 = *(v22 + 512);
  v26 = *(v22 + 400);
  v42 = *(v22 + 392);
  v43 = *(v22 + 416);
  v27 = *(v22 + 376);
  v40 = *(v22 + 368);
  v41 = *(v22 + 384);
  v28 = *(v22 + 280);
  v46 = *(v22 + 272);
  v47 = *(v22 + 288);

  v29 = OUTLINED_FUNCTION_58();
  v30(v29);
  (*(v27 + 8))(v41, v40);
  (*(v26 + 8))(v43, v42);
  (*(v25 + 8))(v45, v44);
  outlined destroy of AppUtil(v22 + 56);
  (*(v28 + 8))(v47, v46);
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_40();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, v40, v41, v42, v43, v44, v45, v46, v47, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_61();
  v23 = *(v22 + 448);
  ContactsUnsetRelationshipFlowStrategy.makeCompletionOutput(_:)();
  v24 = OUTLINED_FUNCTION_17_0();
  v25(v24);
  outlined destroy of ResponseMode?(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_40();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t closure #1 in ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)()
{
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 56) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_51(v1);

  return ContactsCommonCATs.promptCancelled()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  ContactsUnsetRelationshipFlowStrategy.makeCompletionOutput(_:)();
  v0 = OUTLINED_FUNCTION_22_0();
  v1(v0);

  OUTLINED_FUNCTION_6_4();

  return v2();
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 56) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_51(v1);

  return ContactsCommonCATs.unsupportedAction()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t ContactsUnsetRelationshipFlowStrategy.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 56) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_51(v1);

  return ContactsCommonCATs.genericError()();
}

void ContactsUnsetRelationshipFlowStrategy.makeCompletionOutput(_:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_22_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  OUTLINED_FUNCTION_77((v0 + 16), *(v0 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = type metadata accessor for AceOutput();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = MEMORY[0x277D5C1D8];
  v2[3] = v13;
  v2[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(v2);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of ResponseMode?(v15, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14();
}

void ContactsUnsetRelationshipFlowStrategy.getActionForInput(input:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  v108 = &v104 - v4;
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v110 = v6;
  v111 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  v109 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v9);
  v114 = &v104 - v10;
  v11 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v112 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v104 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v104 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  Input.parse.getter();
  v25 = *(v13 + 88);
  v26 = v25(v24, v11);
  v27 = *MEMORY[0x277D5C150];
  if (v26 != *MEMORY[0x277D5C128] && v26 != v27 && v26 != *MEMORY[0x277D5C160])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v39 = type metadata accessor for Logger();
    v40 = OUTLINED_FUNCTION_52_0(v39, static Logger.siriContacts);
    v41 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v41))
    {
      v42 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v42);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v43, v44, "#ContactsUnsetRelationshipFlowStrategy: Received unsupported parse type, returning .ignore() actionForInput");
      OUTLINED_FUNCTION_11_1();
    }

    static ActionForInput.ignore()();
    (*(v13 + 8))(v24, v11);
    goto LABEL_20;
  }

  v105 = *MEMORY[0x277D5C160];
  v106 = v25;
  v107 = v1;
  v104 = v13;
  v30 = *(v13 + 8);
  v30(v24, v11);
  Input.parse.getter();
  Parse.cancelOrContactIntent.getter();
  v32 = v31;
  v30(v22, v11);
  if (v32)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v33 = type metadata accessor for Logger();
    v34 = OUTLINED_FUNCTION_52_0(v33, static Logger.siriContacts);
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v35))
    {
      v36 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v36);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v37, v38, "#ContactsUnsetRelationshipFlowStrategy: .cancel() actionForInput");
      OUTLINED_FUNCTION_11_1();
    }

    static ActionForInput.cancel()();
    goto LABEL_20;
  }

  if ((v32 & 0x100) != 0)
  {
    Input.parse.getter();
    v51 = OUTLINED_FUNCTION_76();
    v52 = v106(v51);
    v53 = OUTLINED_FUNCTION_76();
    (v30)(v53);
    if (v52 == v27)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v54 = type metadata accessor for Logger();
      v55 = OUTLINED_FUNCTION_52_0(v54, static Logger.siriContacts);
      v56 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_21_2(v56))
      {
        goto LABEL_52;
      }

      v57 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v57);
      v60 = "#ContactsUnsetRelationshipFlowStrategy: Direct Invocation parse, returning .handle()";
LABEL_51:
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v58, v59, v60);
      OUTLINED_FUNCTION_11_1();
LABEL_52:

      static ActionForInput.handle()();
      goto LABEL_20;
    }

    Input.parse.getter();
    v61 = v114;
    Parse.confirmationResponse.getter();
    v62 = OUTLINED_FUNCTION_78();
    (v30)(v62);
    v63 = type metadata accessor for ConfirmationResponse();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v63);
    outlined destroy of ResponseMode?(v61, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (EnumTagSinglePayload != 1)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v78 = type metadata accessor for Logger();
      v55 = OUTLINED_FUNCTION_52_0(v78, static Logger.siriContacts);
      v79 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_21_2(v79))
      {
        goto LABEL_52;
      }

      v80 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v80);
      v60 = "#ContactsUnsetRelationshipFlowStrategy: confirmation response parse, returning .handle()";
      goto LABEL_51;
    }

    v65 = v112;
    Input.parse.getter();
    v66 = OUTLINED_FUNCTION_78();
    v67 = v106(v66);
    if (v67 == v105)
    {
      v68 = OUTLINED_FUNCTION_78();
      v69(v68);
      (*(v110 + 32))(v109, v65, v111);
      if (USOParse.isOrdinalDisambiguation.getter() & 1) != 0 || (USOParse.isContactDisambiguation.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v70 = type metadata accessor for Logger();
        v71 = OUTLINED_FUNCTION_52_0(v70, static Logger.siriContacts);
        v72 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v72))
        {
          v73 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_24_0(v73);
          OUTLINED_FUNCTION_7_4(&dword_26686A000, v74, v75, "#ContactsUnsetRelationshipFlowStrategy: disambiguation task parse, returning .handle()");
          OUTLINED_FUNCTION_11_1();
        }

        static ActionForInput.handle()();
LABEL_41:
        v76 = OUTLINED_FUNCTION_23_2();
        v77(v76);
        goto LABEL_20;
      }

      v85 = v108;
      USOParse.preferredUserDialogAct.getter(v108);
      v86 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      if (__swift_getEnumTagSinglePayload(v85, 1, v86) == 1)
      {
        v87 = OUTLINED_FUNCTION_23_2();
        v88(v87);
        outlined destroy of ResponseMode?(v85, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_60:
        v115 = 0u;
        v116 = 0u;
LABEL_61:
        outlined destroy of ResponseMode?(&v115, &_sypSgMd, &_sypSgMR);
        goto LABEL_47;
      }

      v89 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      OUTLINED_FUNCTION_52();
      v90 = OUTLINED_FUNCTION_47_0();
      v91(v90);
      if (!v89)
      {
        v94 = OUTLINED_FUNCTION_23_2();
        v95(v94);
        goto LABEL_60;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!*(&v116 + 1))
      {
        v96 = OUTLINED_FUNCTION_23_2();
        v97(v96);
        goto LABEL_61;
      }

      outlined init with take of Any(&v115, v117);
      outlined init with copy of Any(v117, &v115);
      type metadata accessor for UsoTask_update_common_Person();
      if (!swift_dynamicCast())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v98 = type metadata accessor for Logger();
        v99 = OUTLINED_FUNCTION_52_0(v98, static Logger.siriContacts);
        v100 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_21_2(v100))
        {
          v101 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_24_0(v101);
          OUTLINED_FUNCTION_7_4(&dword_26686A000, v102, v103, "#ContactsUnsetRelationshipFlowStrategy: Received a non-update-person task type, returning .ignore()");
          OUTLINED_FUNCTION_11_1();
        }

        static ActionForInput.ignore()();
        __swift_destroy_boxed_opaque_existential_0Tm(v117);
        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v117);
      v92 = OUTLINED_FUNCTION_23_2();
      v93(v92);
    }

    else
    {
      v81 = OUTLINED_FUNCTION_78();
      (v30)(v81);
    }

LABEL_47:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v82 = type metadata accessor for Logger();
    v55 = OUTLINED_FUNCTION_52_0(v82, static Logger.siriContacts);
    v83 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_2(v83))
    {
      goto LABEL_52;
    }

    v84 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v84);
    v60 = "#ContactsUnsetRelationshipFlowStrategy: .handle() actionForInput";
    goto LABEL_51;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v45 = type metadata accessor for Logger();
  v46 = OUTLINED_FUNCTION_52_0(v45, static Logger.siriContacts);
  v47 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v47))
  {
    v48 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v48);
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v49, v50, "#ContactsUnsetRelationshipFlowStrategy: .ignore() actionForInput");
    OUTLINED_FUNCTION_11_1();
  }

  static ActionForInput.ignore()();
LABEL_20:
  OUTLINED_FUNCTION_14();
}

void ContactsUnsetRelationshipFlowStrategy.unsetRelationshipActionForInput(_:resolveRecord:shouldExpectPerson:)()
{
  OUTLINED_FUNCTION_15();
  v62 = v1;
  v61 = v2;
  v64 = v4;
  v65 = v3;
  v63 = *v0;
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_1_0();
  v59 = v6;
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  v58 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.siriContacts);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_30();
    *v26 = 0;
    _os_log_impl(&dword_26686A000, v24, v25, "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput", v26, 2u);
    OUTLINED_FUNCTION_6();
  }

  Input.parse.getter();
  Parse.confirmationResponse.getter();
  v27 = *(v14 + 8);
  v27(v21, v12);
  v28 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v28);
  outlined destroy of ResponseMode?(v11, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (EnumTagSinglePayload != 1 || (Input.parse.getter(), v30 = Parse.isUSODisambiguationTask.getter(), v31 = OUTLINED_FUNCTION_47(), (v27)(v31), (v30 & 1) != 0))
  {
    v32 = v23;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_2(v34))
    {
LABEL_10:

LABEL_11:
      ContactsUnsetRelationshipFlowStrategy.getActionForInput(input:)();
      goto LABEL_12;
    }

    v35 = OUTLINED_FUNCTION_30();
    *v35 = 0;
    v36 = "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput detected a confirmation or disambig response, deferring to getActionForInput";
LABEL_9:
    _os_log_impl(&dword_26686A000, v33, v32, v36, v35, 2u);
    OUTLINED_FUNCTION_6();
    goto LABEL_10;
  }

  v37 = static ContactsDisambiguationStrategy.extractCurrentContext(from:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if (v62 & 1) != 0 && !*(v37 + 16) || (Optional<A>.isNilOrEmpty.getter())
  {

    v32 = v23;
    v33 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_2(v43))
    {
      goto LABEL_10;
    }

    v35 = OUTLINED_FUNCTION_30();
    *v35 = 0;
    v36 = "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput deferring to getActionForInput";
    goto LABEL_9;
  }

  Input.parse.getter();
  v44 = OUTLINED_FUNCTION_58();
  if (v45(v44) != *MEMORY[0x277D5C160])
  {

    v57 = OUTLINED_FUNCTION_58();
    (v27)(v57);
    goto LABEL_11;
  }

  v46 = OUTLINED_FUNCTION_58();
  v47(v46);
  v49 = v58;
  v48 = v59;
  v50 = v60;
  (*(v59 + 32))(v58, v18, v60);
  v51 = static ContactsDisambiguationStrategy.isRequestForDifferentContact(_:currentContactIds:currentRelation:)(v49, v38, v40, v42);

  if ((v51 & 1) == 0)
  {
    (*(v48 + 8))(v49, v50);
    goto LABEL_11;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v53))
  {
    v54 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v54);
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v55, v56, "#ContactsUnsetRelationshipFlowStrategy unsetRelationshipActionForInput encountered parse for different contact, ignoring");
    OUTLINED_FUNCTION_11_1();
  }

  static ActionForInput.ignore()();
  (*(v48 + 8))(v49, v50);
LABEL_12:
  OUTLINED_FUNCTION_14();
}

uint64_t ContactsUnsetRelationshipFlowStrategy.deinit()
{
  v0 = ContactsUnsupportedValueStrategy.deinit();

  return v0;
}

uint64_t ContactsUnsetRelationshipFlowStrategy.__deallocating_deinit()
{
  v0 = ContactsUnsetRelationshipFlowStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 200, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseRequestedRelationship(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.applyPersonToIntent(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA138](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 336);
  *(v4 + 16) = *(a3 + 320);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA148](a1, a2, v11, a4);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptForPersonName(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA150](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA158](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA140](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return ContactsUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)(a2);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_5_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptForContactDisambiguation(paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA160](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 336);
  *(v5 + 16) = *(a4 + 320);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA168](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parsePromptToSaveRelationshipResponse(input:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 48) = v13;
  v14 = *(a5 + 336);
  *(v6 + 16) = *(a5 + 320);
  *(v6 + 32) = v14;
  v15 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v6 + 16);
  *v13 = v6;
  v13[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA110](a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnLowConfidence(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 48) = v13;
  v14 = *(a5 + 336);
  *(v6 + 16) = *(a5 + 320);
  *(v6 + 32) = v14;
  v15 = type metadata accessor for ContactsUnsetRelationshipFlowStrategy(0, v6 + 16);
  *v13 = v6;
  v13[1] = protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>;

  return MEMORY[0x2821BA118](a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance ContactsUnsetRelationshipFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ContactsUnsetRelationshipFlowStrategy.makeErrorResponse(error:app:intent:)();
}

uint64_t static UnsetRelationshipPerson.from(userDialogAct:)@<X0>(uint64_t a1@<X8>)
{
  if (Siri_Nlu_External_UserDialogAct.usoTask.getter())
  {
    static UsoTask_CodegenConverter.convert(task:)();

    if (*(&v17 + 1))
    {
      outlined init with take of Any(&v16, v18);
      outlined init with copy of Any(v18, &v16);
      type metadata accessor for UsoTask_setIdentity_common_Person();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

        if (v15)
        {
          dispatch thunk of UsoEntity_common_Person.name.getter();
          v3 = v2;

          if (v3)
          {
LABEL_19:
            UnsetRelationshipPerson.init(firstName:lastName:middleName:fullName:nickname:)();

            __swift_destroy_boxed_opaque_existential_0Tm(v18);
            v12 = type metadata accessor for UnsetRelationshipPerson();
            __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
            return __swift_destroy_boxed_opaque_existential_0Tm(&v16);
          }
        }

        goto LABEL_22;
      }

      type metadata accessor for UsoTask_update_common_Person();
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
LABEL_23:
        __swift_destroy_boxed_opaque_existential_0Tm(&v16);
        goto LABEL_24;
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (!v15 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v5 = v4, , !v5))
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
        if (v15)
        {
          dispatch thunk of UsoEntity_common_Person.name.getter();
          v7 = v6;

          if (v7)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

LABEL_22:
        __swift_destroy_boxed_opaque_existential_0Tm(v18);

        goto LABEL_23;
      }

LABEL_14:
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriContacts);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_26686A000, v9, v10, "#ContactsUnsetRelationshipFlowStrategy returning UnsetRelationshipPerson", v11, 2u);
        MEMORY[0x26D5E3300](v11, -1, -1);
      }

      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  outlined destroy of ResponseMode?(&v16, &_sypSgMd, &_sypSgMR);
LABEL_24:
  v14 = type metadata accessor for UnsetRelationshipPerson();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ContactServiceProtocol(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_52();
  (*v3)(a2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<SAPerson> and conformance BasicDisambiguationItemContainer<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc SAPerson.internalGUID.getter(void *a1)
{
  v1 = [a1 internalGUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t type metadata accessor for CNContact(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s19SiriContactsIntents8SignpostO04OpenD0VWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_14_4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  *(v2 - 88) = *(v1 + 264);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v3 = *(v0 + 264);
  *(v1 - 88) = *(v0 + 288);
  *(v1 - 80) = v3;
}

id OUTLINED_FUNCTION_17_2(uint64_t a1)
{

  return [v2 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_19_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
}

BOOL OUTLINED_FUNCTION_21_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_2()
{
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, uint64_t a2)
{

  return SpeakableString.init(print:speak:)();
}

id OUTLINED_FUNCTION_50_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));

  return DeviceState.isVox.getter();
}

void OUTLINED_FUNCTION_63()
{

  JUMPOUT(0x26D5E2470);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return ParameterResolutionRecord.intent.getter();
}

id OUTLINED_FUNCTION_82()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return MEMORY[0x2821B7590](a1, a2, a3, a4, a5, a18, a17, v18, v19);
}

uint64_t OUTLINED_FUNCTION_84()
{
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_90()
{

  return static CATOption.defaultMode.getter();
}

id CNLabeledValue<>.init(relationLabel:contactName:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = static Dictionary<>.cnLabel(forNLSemantic:)(a1, a2);
  v11 = v10;

  v12 = MEMORY[0x26D5E2470](v9, v11);

  type metadata accessor for CNContactRelation();
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  isa = CNContactRelation.__allocating_init(name:)(v13).super.isa;
  v15 = [v8 initWithLabel:v12 value:isa];

  return v15;
}

id CNLabeledValue<>.init(address:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CBDB78]) init];
  v10 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_street);
  if (v11)
  {
    v12 = v11;
    MEMORY[0x26D5E2470](v10);
    OUTLINED_FUNCTION_2_8();
    v13 = MEMORY[0x26D5E2470](0x746565727473, 0xE600000000000000);
    OUTLINED_FUNCTION_0_6(v13);
  }

  v14 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_subLocality);
  if (v15)
  {
    v16 = v15;
    MEMORY[0x26D5E2470](v14);
    OUTLINED_FUNCTION_2_8();
    v17 = MEMORY[0x26D5E2470](0x6C61636F4C627573, 0xEB00000000797469);
    OUTLINED_FUNCTION_0_6(v17);
  }

  v18 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_city);
  if (v19)
  {
    v20 = v19;
    MEMORY[0x26D5E2470](v18);
    OUTLINED_FUNCTION_2_8();
    v21 = MEMORY[0x26D5E2470](2037672291, 0xE400000000000000);
    OUTLINED_FUNCTION_0_6(v21);
  }

  v22 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_subAdministrativeArea);
  if (v23)
  {
    v24 = v23;
    MEMORY[0x26D5E2470](v22);
    OUTLINED_FUNCTION_2_8();
    v25 = MEMORY[0x26D5E2470](0xD000000000000015, 0x800000026696F260);
    OUTLINED_FUNCTION_0_6(v25);
  }

  v26 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_state);
  if (v27)
  {
    v28 = v27;
    MEMORY[0x26D5E2470](v26);
    OUTLINED_FUNCTION_2_8();
    v29 = MEMORY[0x26D5E2470](0x6574617473, 0xE500000000000000);
    OUTLINED_FUNCTION_0_6(v29);
  }

  v30 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_postalCode);
  if (v31)
  {
    v32 = v31;
    MEMORY[0x26D5E2470](v30);
    OUTLINED_FUNCTION_2_8();
    v33 = MEMORY[0x26D5E2470](0x6F436C6174736F70, 0xEA00000000006564);
    OUTLINED_FUNCTION_0_6(v33);
  }

  v34 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_country);
  if (v35)
  {
    v36 = v35;
    MEMORY[0x26D5E2470](v34);
    OUTLINED_FUNCTION_2_8();
    v37 = MEMORY[0x26D5E2470](0x7972746E756F63, 0xE700000000000000);
    OUTLINED_FUNCTION_0_6(v37);
  }

  v38 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_isoCountryCode);
  if (v39)
  {
    v40 = v39;
    MEMORY[0x26D5E2470](v38);
    OUTLINED_FUNCTION_2_8();
    v41 = MEMORY[0x26D5E2470](0x746E756F434F5349, 0xEE0065646F437972);
    OUTLINED_FUNCTION_0_6(v41);
  }

  v42 = a1;
  v43 = outlined bridged method (ob) of @objc INObject.identifier.getter(v42);
  if (v44)
  {
    v45 = v43;
    v46 = v44;
  }

  else
  {
    UUID.init()();
    v45 = UUID.uuidString.getter();
    v46 = v47;
    (*(v5 + 8))(v8, v3);
  }

  v48 = MEMORY[0x26D5E2470](v45, v46);

  v49 = outlined bridged method (pb) of @objc PostalAddress.street.getter(v42, &selRef_handleLabel);
  if (!v50)
  {
    v49 = static String.EMPTY.getter();
  }

  v51 = v49;
  v52 = v50;
  v53 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v54 = MEMORY[0x26D5E2470](v51, v52);

  v55 = v9;
  v56 = [v53 initWithIdentifier:v48 label:v54 value:v55];

  return v56;
}

uint64_t CNLabeledValue<>.buildMapsURL(contact:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v3 value];
  v13 = [v11 singleLineStringFromPostalAddress:v12 addCountryName:0];

  if (v13 && (v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v16 = v15, v13, v51[0] = v14, v51[1] = v16, static CharacterSet.urlPathAllowed.getter(), lazy protocol witness table accessor for type String and conformance String(), v17 = MEMORY[0x277D837D0], v18 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)(), v20 = v19, (*(v7 + 8))(v10, v5), , v20))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_266966EE0;
    *(v21 + 56) = v17;
    v22 = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 64) = v22;
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    v23 = [a1 iOSLegacyIdentifier];
    v24 = MEMORY[0x277D849A8];
    v25 = MEMORY[0x277D84A20];
    *(v21 + 96) = MEMORY[0x277D849A8];
    *(v21 + 104) = v25;
    *(v21 + 72) = v23;
    v26 = [v3 iOSLegacyIdentifier];
    *(v21 + 136) = v24;
    *(v21 + 144) = v25;
    *(v21 + 112) = v26;
    v27 = [a1 identifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(v21 + 176) = v17;
    *(v21 + 184) = v22;
    *(v21 + 152) = v28;
    *(v21 + 160) = v30;
    v31 = [v3 identifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    *(v21 + 216) = v17;
    *(v21 + 224) = v22;
    *(v21 + 192) = v32;
    *(v21 + 200) = v34;
    v35 = String.init(format:_:)();
    v37 = v36;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriContacts);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v51);
      _os_log_impl(&dword_26686A000, v39, v40, "#buildMapsURL Building Maps punchout URL from string: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x26D5E3300](v42, -1, -1);
      MEMORY[0x26D5E3300](v41, -1, -1);
    }

    URL.init(string:)();
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.siriContacts);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26686A000, v45, v46, "#buildMapsURL Failed to format CNPostalAddress into percent encoded string, returning nil", v47, 2u);
      MEMORY[0x26D5E3300](v47, -1, -1);
    }

    v48 = type metadata accessor for URL();
    return __swift_storeEnumTagSinglePayload(v50, 1, 1, v48);
  }
}

CNContactRelation __swiftcall CNContactRelation.__allocating_init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x26D5E2470](countAndFlagsBits, object);

  v5 = [v3 initWithName_];

  return v5;
}

uint64_t outlined bridged method (pb) of @objc PostalAddress.street.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t type metadata accessor for CNContactRelation()
{
  result = lazy cache variable for type metadata for CNContactRelation;
  if (!lazy cache variable for type metadata for CNContactRelation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContactRelation);
  }

  return result;
}

id OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return [v1 (v3 + 3192)];
}

uint64_t OUTLINED_FUNCTION_2_8()
{
}

uint64_t type metadata accessor for ContactsLabelCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactsLabelCATs;
  if (!type metadata singleton initialization cache for ContactsLabelCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactsLabelCATs.address()(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_4();
  v3 = OUTLINED_FUNCTION_3_4(v2);
  *v3 = v4;
  v3[1] = ContactsLabelCATs.address();
  v5 = MEMORY[0x277D84F90];

  return v7(a1, 0xD000000000000015, 0x800000026696F440, v5);
}

uint64_t ContactsLabelCATs.email()()
{
  v0 = OUTLINED_FUNCTION_5_4();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = ContactsLabelCATs.email();
  v3 = OUTLINED_FUNCTION_2_9();

  return v4(v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  return OUTLINED_FUNCTION_0_7(19, 0x800000026696F3C0, MEMORY[0x277D84F90]);
}

uint64_t ContactsLabelCATs.phone()()
{
  v0 = OUTLINED_FUNCTION_5_4();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = ContactsLabelCATs.address();
  v3 = OUTLINED_FUNCTION_2_9();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_0_7(19, 0x800000026696F340, MEMORY[0x277D84F90]);
}

uint64_t ContactsLabelCATs.relationship(relationship:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_266966D90;
  strcpy((v5 + 32), "relationship");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  outlined init with copy of URL?(a1, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v4, v6);
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t ContactsLabelCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v11;
}

uint64_t ContactsLabelCATs.__deallocating_deinit()
{
  v0 = CATWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

void RedirectToCompanionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);

  v16 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
    swift_beginAccess();
    outlined init with copy of RedirectToCompanionFlow.State(v1 + v9, v4);
    v10 = RedirectToCompanionFlow.State.description.getter();
    v12 = v11;
    outlined destroy of RedirectToCompanionFlow.State(v4);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_26686A000, v16, v6, "#RedirectToCompanionFlow state: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x26D5E3300](v8, -1, -1);
    MEMORY[0x26D5E3300](v7, -1, -1);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t RedirectToCompanionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined assign with copy of RedirectToCompanionFlow.State(a1, v1 + v3);
  swift_endAccess();
  RedirectToCompanionFlow.state.didset();
  return outlined destroy of RedirectToCompanionFlow.State(a1);
}

uint64_t RedirectToCompanionFlow.__allocating_init(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_47_0();
  v11(v10);
  Input.init(parse:)();
  (*(v4 + 8))(a1, v2);
  v12 = type metadata accessor for Input();
  __swift_storeEnumTagSinglePayload(v9, 0, 3, v12);
  type metadata accessor for RedirectToCompanionFlow(0);
  v13 = swift_allocObject();
  outlined init with take of RedirectToCompanionFlow.State(v9, v13 + OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state);
  return v13;
}

uint64_t outlined init with take of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL RedirectToCompanionFlow.on(input:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000070, 0x800000026696F460, v14);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, v14);
    _os_log_impl(&dword_26686A000, v7, v8, "%s:%s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v10 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined init with copy of RedirectToCompanionFlow.State(v1 + v10, v5);
  v11 = type metadata accessor for Input();
  v12 = __swift_getEnumTagSinglePayload(v5, 3, v11) == 0;
  outlined destroy of RedirectToCompanionFlow.State(v5);
  return v12;
}

uint64_t RedirectToCompanionFlow.execute()()
{
  OUTLINED_FUNCTION_4();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v1[10] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_10_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMd, &_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMR);
  v1[13] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for UserIdentityCheckFlowStrategy();
  v1[14] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for UserIdentityCheckFlowStrategy.HandoffConfiguration();
  v1[17] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for CompanionDeviceInfoRequirement();
  v1[20] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for FlowUnhandledReason();
  v1[23] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[24] = v12;
  v1[25] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_4_5();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v13 = type metadata accessor for Input();
  v1[28] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v1[29] = v14;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](RedirectToCompanionFlow.execute(), 0, 0);
}

{
  v44 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000070, 0x800000026696F460, v43);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, v43);
    _os_log_impl(&dword_26686A000, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[9];
  v8 = OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined init with copy of RedirectToCompanionFlow.State(v7 + v8, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 3, v6);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 3)
    {
      v11 = v0[24];
      v10 = v0[25];
      v12 = v0[23];
      (*(v11 + 104))(v10, *MEMORY[0x277D5B8A0], v12);
      static ExecuteResponse.unhandled(reason:)();
      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v26 = v0[27];
      static ExecuteResponse.complete()();
      outlined destroy of RedirectToCompanionFlow.State(v26);
    }
  }

  else
  {
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[28];
    v16 = v0[29];
    v17 = v0[26];
    v18 = v0[21];
    v29 = v0[20];
    v30 = v0[22];
    v41 = v0[19];
    v42 = v0[18];
    v40 = v0[17];
    v38 = v0[15];
    v39 = v0[14];
    v31 = v0[13];
    v32 = v0[16];
    v33 = v0[11];
    v34 = v0[12];
    v35 = v0[10];
    (*(v16 + 32))(v14, v0[27], v15);
    v19 = *(v16 + 16);
    v19(v13, v14, v15);
    __swift_storeEnumTagSinglePayload(v17, 1, 3, v15);
    RedirectToCompanionFlow.state.setter(v17);
    v37 = *(v16 + 8);
    v36 = v15;
    v37(v14, v15);
    type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
    (*(v18 + 104))(v30, *MEMORY[0x277D5C088], v29);
    static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:shouldOutputErrorDialog:)();
    (*(v18 + 8))(v30, v29);
    v20 = type metadata accessor for SimpleHandoffStrategy();
    v21 = swift_allocObject();
    v43[3] = v20;
    v43[4] = lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy, v22, type metadata accessor for SimpleHandoffStrategy, &protocol conformance descriptor for SimpleHandoffStrategy);
    v43[0] = v21;

    UserIdentityCheckFlowStrategy.HandoffConfiguration.init(companionCompatiblityCheck:handoffStrategy:)();
    (*(v42 + 16))(v31, v41, v40);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v40);
    UserIdentityCheckFlowStrategy.init(allowsAnonymousUser:allowsUserInteraction:handoffConfiguration:requireSpeechProfile:)();
    UserIdentityCheckFlowStrategy.requireSpeechProfile.setter();
    v19(v14, v13, v15);
    (*(v33 + 104))(v34, *MEMORY[0x277D5C0E0], v35);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for ExecuteOnRemoteFlow();
    swift_allocObject();
    OUTLINED_FUNCTION_47_0();
    v0[5] = ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
    v23 = type metadata accessor for CommonFlowGuard();
    OUTLINED_FUNCTION_1_1(v23);
    *(swift_allocObject() + 16) = xmmword_266966ED0;
    static CommonFlowGuard.ensuringUserIdentity(using:)();
    static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)();
    v24 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

    v0[6] = v24;
    type metadata accessor for GuardFlow();
    v25 = Flow.guarded<A>(by:)();

    v0[7] = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    (*(v38 + 8))(v32, v39);
    (*(v42 + 8))(v41, v40);
    v37(v13, v36);
  }

  OUTLINED_FUNCTION_3();

  return v27();
}

uint64_t closure #1 in RedirectToCompanionFlow.execute()(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = type metadata accessor for ExecuteOnRemoteFlowResult();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v58 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v58 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v58 - v17;
  v19 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v62 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(a1, v18);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMd, &_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMR);
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriContacts);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26686A000, v26, v27, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v28, 2u);
      MEMORY[0x26D5E3300](v28, -1, -1);
    }

    v29 = type metadata accessor for Input();
    __swift_storeEnumTagSinglePayload(v23, 2, 3, v29);
    outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(v18);
  }

  else
  {
    (*(v4 + 32))(v15, v18, v3);
    v30 = *(v4 + 16);
    v30(v13, v15, v3);
    if ((*(v4 + 88))(v13, v3) == *MEMORY[0x277D5B4B0])
    {
      (*(v4 + 96))(v13, v3);
      v31 = *v13;
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriContacts);
      v33 = v31;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v64 = v31;
        v65 = v61;
        *v36 = 136315138;
        v37 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v38 = String.init<A>(describing:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v65);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_26686A000, v34, v35, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v36, 0xCu);
        v41 = v61;
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x26D5E3300](v41, -1, -1);
        MEMORY[0x26D5E3300](v36, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v15, v3);
      v54 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v23, 3, 3, v54);
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriContacts);
      v30(v10, v15, v3);
      v43 = Logger.logObject.getter();
      LODWORD(v61) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v61))
      {
        v44 = swift_slowAlloc();
        v59 = v43;
        v45 = v44;
        v60 = swift_slowAlloc();
        v65 = v60;
        *v45 = 136315138;
        v30(v7, v10, v3);
        v58 = String.init<A>(describing:)();
        v47 = v46;
        v48 = *(v4 + 8);
        v48(v10, v3);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v47, &v65);

        v50 = v45;
        *(v45 + 4) = v49;
        v51 = v59;
        v52 = v50;
        _os_log_impl(&dword_26686A000, v59, v61, "ExecuteOnRemote flow completed with: %s", v50, 0xCu);
        v53 = v60;
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x26D5E3300](v53, -1, -1);
        MEMORY[0x26D5E3300](v52, -1, -1);
      }

      else
      {

        v48 = *(v4 + 8);
        v48(v10, v3);
      }

      v48(v15, v3);
      v55 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v23, 2, 3, v55);
      v48(v13, v3);
    }
  }

  v56 = v62;
  outlined init with copy of RedirectToCompanionFlow.State(v23, v62);
  RedirectToCompanionFlow.state.setter(v56);
  return outlined destroy of RedirectToCompanionFlow.State(v23);
}

uint64_t RedirectToCompanionFlow.execute(completion:)()
{
  type metadata accessor for RedirectToCompanionFlow(0);
  lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow, 255, type metadata accessor for RedirectToCompanionFlow, &protocol conformance descriptor for RedirectToCompanionFlow);
  OUTLINED_FUNCTION_47_0();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t RedirectToCompanionFlow.State.description.getter()
{
  v1 = type metadata accessor for Input();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  outlined init with copy of RedirectToCompanionFlow.State(v0, v10 - v9);
  v12 = 0x676E696E6E75722ELL;
  switch(__swift_getEnumTagSinglePayload(v11, 3, v1))
  {
    case 1u:
      return v12;
    case 2u:
      v12 = 0x74656C706D6F632ELL;
      break;
    case 3u:
      v12 = 0xD000000000000011;
      break;
    default:
      (*(v3 + 32))(v7, v11, v1);
      _StringGuts.grow(_:)(18);

      lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5E2570](v13);

      MEMORY[0x26D5E2570](41, 0xE100000000000000);
      v12 = 0x65527475706E692ELL;
      v14 = OUTLINED_FUNCTION_47_0();
      v15(v14);
      break;
  }

  return v12;
}

uint64_t RedirectToCompanionFlow.__deallocating_deinit()
{
  outlined destroy of RedirectToCompanionFlow.State(v0 + OBJC_IVAR____TtC19SiriContactsIntents23RedirectToCompanionFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToCompanionFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow;
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToCompanionFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return RedirectToCompanionFlow.execute()();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToCompanionFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToCompanionFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance SimpleHandoffStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

uint64_t outlined init with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RedirectToCompanionFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>()
{
  result = lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>;
  if (!lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata completion function for RedirectToCompanionFlow(uint64_t a1)
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
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

uint64_t dispatch thunk of RedirectToCompanionFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v6(a1);
}

uint64_t type metadata completion function for RedirectToCompanionFlow.State(uint64_t a1)
{
  v1 = type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t MissingMeCardViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26686A000, v6, v7, "#MissingMeCardViewBuilder Constructing punchout button for macOS.", v8, 2u);
    MEMORY[0x26D5E3300](v8, -1, -1);
  }

  ContactsLabelCATs.openContacts()();
  v9 = specialized IdiomSensitiveViewBuilder.makeContactsAppLaunchButton(appUtil:result:)(v1 + 48, v4);
  outlined destroy of Result<TemplatingResult, Error>(v4);
  return v9;
}

uint64_t MissingMeCardViewBuilder.makeViewsForWatch()(const char *a1)
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, a1, v5, 2u);
    MEMORY[0x26D5E3300](v5, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t MissingMeCardViewBuilder.makeViewsForIOS()(const char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26686A000, v6, v7, a1, v8, 2u);
    MEMORY[0x26D5E3300](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v15 = xmmword_266966A40;
  *(v9 + 16) = xmmword_266966A40;
  v10 = swift_allocObject();
  *(v10 + 16) = v15;
  static AppUtil.buildPunchoutFor(string:)();
  *(v10 + 32) = v11;
  ContactsLabelCATs.siriSettings()();
  Result<>.firstPrint.getter();
  v13 = v12;
  outlined destroy of Result<TemplatingResult, Error>(v4);
  if (!v13)
  {
    static String.EMPTY.getter();
  }

  type metadata accessor for SAUIButton();
  *(v9 + 32) = SAUIButton.init(commands:text:)();
  return v9;
}

uint64_t outlined destroy of Result<TemplatingResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for SAUIButton()
{
  result = lazy cache variable for type metadata for SAUIButton;
  if (!lazy cache variable for type metadata for SAUIButton)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIButton);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MissingMeCardViewBuilder(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MissingMeCardViewBuilder(uint64_t result, int a2, int a3)
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

void UsoEntityBuilder_common_Person.init(name:contactId:handle:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  dispatch thunk of UsoEntityBuilder_common_Person.__allocating_init()();

  dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  if (v1)
  {
    if (one-time initialization token for transformer != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMd, &_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMR);
    __swift_project_value_buffer(v3, static Transformer<>.transformer);
    v4 = Transformer.transform.getter();
    v12 = v1;
    v4(&v11, &v12);

    if (v11)
    {
      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();

      v7 = OUTLINED_FUNCTION_3_5();
      v8(v7);
    }

    else
    {
      v9 = OUTLINED_FUNCTION_3_5();
      v10(v9);
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_3_5();
    v6(v5);
  }

  OUTLINED_FUNCTION_14();
}

void static UsoEntityBuilder_common_PhoneNumber.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
  OUTLINED_FUNCTION_2_6(v16);
  UsoEntityBuilder_common_PhoneNumber.init()();
  v17 = [v1 label];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of UsoEntityBuilder_common_PhoneNumber.setLabel(value:)();
  }

  v19 = [v1 value];
  v20 = [v19 stringValue];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of UsoEntityBuilder_common_PhoneNumber.setValue(value:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_1_8();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_14();
}

uint64_t UsoEntityBuilder_common_PhoneNumber.init(phoneNumber:)(void *a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v7 = a2();

  outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
  if (v8)
  {
    v9 = String.sanitizeCNLabel.getter();
    v11 = v10;

    a3(v9, v11);
  }

  v12 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(a1);
  if (v13)
  {
    a4(v12);
  }

  return v7;
}

void static UsoEntityBuilder_common_EmailAddress.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = type metadata accessor for UsoEntityBuilder_common_EmailAddress();
  OUTLINED_FUNCTION_2_6(v16);
  UsoEntityBuilder_common_EmailAddress.init()();
  v17 = [v1 label];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of UsoEntityBuilder_common_EmailAddress.setLabel(value:)();
  }

  v19 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_EmailAddress.setValue(value:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_1_8();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_14();
}

void static UsoEntityBuilder_common_PostalAddress.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v23 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v21 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v20 = v5 - v4;
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v24 = v7;
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v22 = v9 - v8;
  v10 = type metadata accessor for UsoEntityBuilder_common_PostalAddress();
  OUTLINED_FUNCTION_2_6(v10);
  UsoEntityBuilder_common_PostalAddress.init()();
  v11 = [v1 label];
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.sanitizeCNLabel.getter();

    dispatch thunk of UsoEntityBuilder_common_PostalAddress.setLabel(value:)();
  }

  v13 = [v1 value];
  v14 = type metadata accessor for UsoEntityBuilder_common_GeographicArea();
  OUTLINED_FUNCTION_2_6(v14);
  UsoEntityBuilder_common_GeographicArea.init()();
  v15 = [v13 street];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setStreet(value:)();

  OUTLINED_FUNCTION_4_6();
  UsoEntityBuilder_common_GeographicArea.init()();
  v16 = [v13 city];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setCity(value:)();

  OUTLINED_FUNCTION_4_6();
  UsoEntityBuilder_common_GeographicArea.init()();
  v17 = [v13 state];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setProvince(value:)();

  v18 = [v13 postalCode];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setPostalCode(value:)();

  OUTLINED_FUNCTION_4_6();
  UsoEntityBuilder_common_GeographicArea.init()();
  v19 = [v13 country];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)();

  OUTLINED_FUNCTION_5_9();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setCountry(value:)();

  CNLabeledValue<>.formattedString.getter();
  dispatch thunk of UsoEntityBuilder_common_PostalAddress.setValue(value:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v21 + 8))(v20, v23);
  OUTLINED_FUNCTION_1_8();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

  (*(v24 + 8))(v22, v25);
  OUTLINED_FUNCTION_14();
}

uint64_t outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(void *a1)
{
  v1 = [a1 handleValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_allocObject();
}

uint64_t ModifyNicknameUnsupportedViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, "[ModifyNicknameUnsupportedViewBuilder] Constructing PersonSnippet with all display properties for macOS.", v5, 2u);
    MEMORY[0x26D5E3300](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPersonSnippet, 0x277D47108);
  v7 = *(v1 + 80);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = v7;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  outlined init with copy of AppUtil(v1, v11);
  *(v6 + 32) = SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(v8, 0, isa, v11);
  return v6;
}

uint64_t ModifyNicknameUnsupportedViewBuilder.makeViewsForIOS()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26686A000, v7, v8, "[ModifyContactAttributeViewBuilder] Constructing PersonSnippet-like CardSnippet for iOS.", v9, 2u);
    MEMORY[0x26D5E3300](v9, -1, -1);
  }

  v10 = v1[11];
  outlined init with copy of AppUtil(v1, v18);
  v17 = v10;
  v18[5] = 0;
  type metadata accessor for ContactAttribute();

  v11 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(0, 0, 0, 0, 0, 0, 0, 0, 0);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v16[5] = Locale.identifier.getter();
  v16[6] = v12;
  v16[3] = 45;
  v16[4] = 0xE100000000000000;
  v16[1] = 95;
  v16[2] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  (*(v3 + 8))(v5, v2);
  CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
  v14 = v13;

  outlined destroy of CompactViews(&v17);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_266966A40;
  *(result + 32) = v14;
  return result;
}

uint64_t getEnumTagSinglePayload for ModifyNicknameUnsupportedViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for ModifyNicknameUnsupportedViewBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ContactAttribute.isEmpty.getter()
{
  outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v0);
  if (v1)
  {
  }

  else
  {
    v2 = [v0 ageDateTime];
    if (!v2)
    {
      v2 = [v0 postalAddress];
      if (!v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

id ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  v32 = a4;
  v33 = a6;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    UUID.init()();
    a2 = UUID.uuidString.getter();
    a3 = v21;
    (*(v18 + 8))(v20, v17);
  }

  v22 = objc_allocWithZone(v10);
  v23 = static String.EMPTY.getter();
  v24 = MEMORY[0x26D5E2470](v23);

  v25 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(a2, a3, v24, v22);

  v26 = v25;
  [v26 setContactAttributeType_];
  if (a5)
  {
    v27 = MEMORY[0x26D5E2470](v32, a5);
  }

  else
  {
    v27 = 0;
  }

  [v26 setHandleLabel_];

  if (a7)
  {
    v28 = MEMORY[0x26D5E2470](v33, a7);
  }

  else
  {
    v28 = 0;
  }

  [v26 setHandleValue_];

  [v26 setAgeDateTime_];
  if (a9)
  {
    type metadata accessor for PostalAddress();
    v29 = a9;
    v30 = PostalAddress.__allocating_init(labeledAddress:)(v29);
    [v26 setPostalAddress_];
  }

  return v26;
}

id PostalAddress.__allocating_init(labeledAddress:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = [a1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = CNLabeledValue<>.formattedString.getter();
  v10 = MEMORY[0x26D5E2470](v9);

  v11 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(v6, v8, v10, v4);

  v12 = v11;
  v13 = [a1 label];
  [v12 setHandleLabel_];

  v14 = OUTLINED_FUNCTION_1_9();
  v15 = [v14 street];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v16, v17, v18, &selRef_setStreet_);
  v19 = OUTLINED_FUNCTION_1_9();
  v20 = [v19 subLocality];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v21, v22, v23, &selRef_setSubLocality_);
  v24 = OUTLINED_FUNCTION_1_9();
  v25 = [v24 city];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v26, v27, v28, &selRef_setCity_);
  v29 = OUTLINED_FUNCTION_1_9();
  v30 = [v29 subAdministrativeArea];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v31, v32, v33, &selRef_setSubAdministrativeArea_);
  v34 = OUTLINED_FUNCTION_1_9();
  v35 = [v34 state];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v36, v37, v38, &selRef_setState_);
  v39 = OUTLINED_FUNCTION_1_9();
  v40 = [v39 postalCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v41, v42, v43, &selRef_setPostalCode_);
  v44 = OUTLINED_FUNCTION_1_9();
  v45 = [v44 country];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v46, v47, v48, &selRef_setCountry_);
  v49 = OUTLINED_FUNCTION_1_9();
  v50 = [v49 ISOCountryCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_0_8(v51, v52, v53, &selRef_setIsoCountryCode_);

  return v12;
}

uint64_t ContactAttribute.getINPersonHandleLabel.getter()
{
  v1 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x26D5E2470](v1);

  return v3;
}

void outlined bridged method (mbnn) of @objc PostalAddress.street.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x26D5E2470](a1);

  [a3 *a4];
}

void OUTLINED_FUNCTION_0_8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v5, v6, v4, a4);
}

id OUTLINED_FUNCTION_1_9()
{

  return [v0 (v1 + 376)];
}

void OUTLINED_FUNCTION_2_10()
{
}

uint64_t ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 176) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  *(v1 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v1 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  *(v1 + 80) = v6;
  *(v1 + 88) = *(v6 - 8);
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = DeviceState.toSiriKitDeviceState.getter();
  *(v0 + 120) = v1;
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:);
  v3 = *(v0 + 112);

  return ContactsCommonCATs.meCardSetup(device:)(v3, v1);
}

{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  *(v2 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  type metadata accessor for ModifyContactAttributeCATs(0);
  if (swift_dynamicCastClass())
  {
    v1 = *(v0 + 56);
    String.toSpeakableString.getter();

    v2 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:);

    return ModifyContactAttributeCATs.unsupportedMissingMeCard(contactAttributeType:)();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:);
    v6 = *(v0 + 96);
    v7 = *(v0 + 176);

    return ContactsCommonCATs.unsupportedMissingMeCard(isMe:)(v6, v7);
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_28();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  OUTLINED_FUNCTION_5_10(v6);
  (*(v4 + 32))(v2, v6, v3);
  v9 = OUTLINED_FUNCTION_6_6();
  v10(v9);
  OUTLINED_FUNCTION_5_10(v5);
  v11 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v5, v7, v8);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v12 = *(v4 + 8);
  v12(v2, v3);
  v12(v1, v3);
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_3();

  return v13();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v11 = v10[14];
  v13 = v10[11];
  v12 = v10[12];
  v14 = v10[10];
  v15 = v10[8];
  v16 = v10[6];
  v17 = v10[2];
  v18 = OUTLINED_FUNCTION_6_6();
  v19(v18);
  OUTLINED_FUNCTION_5_10(v15);
  v20 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v15, v16, v17);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v21 = *(v13 + 8);
  v21(v12, v14);
  v21(v11, v14);
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_0_9();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  (*(v10[11] + 8))(v10[14], v10[10]);
  OUTLINED_FUNCTION_0_9();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  (*(v10[11] + 8))(v10[14], v10[10]);
  OUTLINED_FUNCTION_0_9();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8_6();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t OUTLINED_FUNCTION_0_9()
{
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_9_7()
{
}

uint64_t CNContact.containsData(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v50 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v50 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v50 - v15;
  v17 = [a1 contactAttributeType];
  v18 = 1;
  switch(v17)
  {
    case 0uLL:
      return v18 & 1;
    case 1uLL:
      v32 = [v1 emailAddresses];
      goto LABEL_20;
    case 2uLL:
      v32 = [v1 phoneNumbers];
      goto LABEL_20;
    case 3uLL:
      v32 = [v1 postalAddresses];
      goto LABEL_20;
    case 4uLL:
      v26 = [v1 birthday];
      if (!v26)
      {
        v46 = type metadata accessor for DateComponents();
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v46);
        v31 = v16;
        goto LABEL_26;
      }

      v27 = v26;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for DateComponents();
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v28);
      outlined destroy of ResponseMode?(v16, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      v29 = [v1 birthday];
      if (v29)
      {
        v30 = v29;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = 0;
      }

      __swift_storeEnumTagSinglePayload(v11, v18, 1, v28);
      outlined init with take of DateComponents?(v11, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v28) == 1)
      {
        v31 = v14;
LABEL_26:
        outlined destroy of ResponseMode?(v31, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        LOBYTE(v18) = 0;
        return v18 & 1;
      }

      DateComponents.year.getter();
      v48 = v47;
      OUTLINED_FUNCTION_52();
      (*(v49 + 8))(v14, v28);
      LOBYTE(v18) = v48 ^ 1;
      return v18 & 1;
    case 5uLL:
      v33 = [v1 birthday];
      LOBYTE(v18) = v33 != 0;
      if (v33)
      {
        v34 = v33;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = type metadata accessor for DateComponents();
        v36 = 0;
      }

      else
      {
        v35 = type metadata accessor for DateComponents();
        v36 = 1;
      }

      __swift_storeEnumTagSinglePayload(v7, v36, 1, v35);
      outlined destroy of ResponseMode?(v7, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      return v18 & 1;
    case 6uLL:
      v25 = [v1 nickname];
      goto LABEL_15;
    case 7uLL:
    case 8uLL:
    case 9uLL:
      v19 = CNContact.formattedFullName.getter();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      v23 = v19 & 0xFFFFFFFFFFFFLL;
      v24 = (v21 & 0x2000000000000000) == 0;
      goto LABEL_16;
    case 0xAuLL:
      v32 = [v1 contactRelations];
LABEL_20:
      v42 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = specialized Array._getCount()(v43);

      v41 = v44 == 0;
      goto LABEL_21;
    case 0xBuLL:
      v25 = [v1 organizationName];
LABEL_15:
      v37 = v25;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v22 = HIBYTE(v40) & 0xF;
      v23 = v38 & 0xFFFFFFFFFFFFLL;
      v24 = (v40 & 0x2000000000000000) == 0;
LABEL_16:
      if (v24)
      {
        v22 = v23;
      }

      v41 = v22 == 0;
LABEL_21:
      LOBYTE(v18) = !v41;
      return v18 & 1;
    default:
      v50[1] = v17;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
  }
}

uint64_t CNContact.toDialogPerson(useConversationalName:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  type metadata accessor for DialogPerson.Builder();
  swift_allocObject();
  DialogPerson.Builder.init()();
  v7 = [v1 organizationName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withCompany(_:)();

  OUTLINED_FUNCTION_5_11();
  v8 = [v1 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withNickname(_:)();

  OUTLINED_FUNCTION_5_11();
  v9 = [v2 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withGivenName(_:)();

  OUTLINED_FUNCTION_5_11();
  v10 = [v2 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withMiddleName(_:)();

  OUTLINED_FUNCTION_5_11();
  v11 = [v2 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_10_8();

  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPerson.Builder.withFamilyName(_:)();

  OUTLINED_FUNCTION_5_11();
  dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();

  v12 = [v2 termsOfAddress];
  type metadata accessor for NSTermOfAddress();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array._getCount()(v13))
  {
    goto LABEL_11;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26D5E29D0](0, v13);
  }

  else
  {
    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = outlined bridged method (pb) of @objc NSTermOfAddress.pronouns.getter(v15);
  if (!v16)
  {

    goto LABEL_12;
  }

  v17 = v16;
  if (!specialized Array._getCount()(v16))
  {

LABEL_11:

    goto LABEL_12;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x26D5E29D0](0, v17);
  }

  else
  {
    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = [v19 pronoun];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for DialogPronoun.Builder();
  swift_allocObject();
  DialogPronoun.Builder.init()();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_0_10();
  dispatch thunk of DialogPronoun.Builder.withInitialPronoun(_:)();

  outlined destroy of ResponseMode?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  dispatch thunk of DialogPronoun.Builder.build()();
  dispatch thunk of DialogPerson.Builder.withPronoun(_:)();

LABEL_12:
  v21 = dispatch thunk of DialogPerson.Builder.build()();

  return v21;
}

uint64_t CNContact.timezonedBirthdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  CNContact.timezonedBirthday.getter(&v15 - v8);
  v10 = type metadata accessor for DateComponents();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  outlined destroy of ResponseMode?(v9, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_4;
  }

  CNContact.timezonedBirthday.getter(v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    outlined destroy of ResponseMode?(v6, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_4:
    v12 = type metadata accessor for Date();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }

  DateComponents.date.getter();
  OUTLINED_FUNCTION_52();
  return (*(v14 + 8))(v6, v10);
}

uint64_t CNContact.timezonedBirthday.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, _s10Foundation8TimeZoneVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v23 = [v2 birthday];
  if (v23)
  {
    v24 = v23;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v25, 1, v16);
  outlined init with take of DateComponents?(v12, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of ResponseMode?(v15, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v26 = 1;
  }

  else
  {
    (*(v18 + 16))(v22, v15, v16);
    static TimeZone.current.getter();
    v27 = type metadata accessor for TimeZone();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v27);
    DateComponents.timeZone.setter();
    (*(v18 + 8))(v15, v16);
    (*(v18 + 32))(a1, v22, v16);
    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v26, 1, v16);
}

id CNContact.init(from:)(void *a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = outlined bridged method (pb) of @objc Contact.givenName.getter(a1);
  if (v5)
  {
    MEMORY[0x26D5E2470](v4);
    OUTLINED_FUNCTION_8_7();
  }

  else
  {
    v1 = 0;
  }

  v6 = MEMORY[0x26D5E2470](0x6D614E6E65766967, 0xE900000000000065);
  [v3 setValue:v1 forKeyPath:v6];
  swift_unknownObjectRelease();

  v7 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_nickName);
  if (v8)
  {
    v6 = v8;
    MEMORY[0x26D5E2470](v7);
    OUTLINED_FUNCTION_8_7();
  }

  v9 = MEMORY[0x26D5E2470](0x656D616E6B63696ELL, 0xE800000000000000);
  OUTLINED_FUNCTION_1_10(v9);
  swift_unknownObjectRelease();

  v10 = outlined bridged method (pb) of @objc Contact.middleName.getter(a1);
  if (v11)
  {
    v6 = v11;
    MEMORY[0x26D5E2470](v10);
    OUTLINED_FUNCTION_8_7();
  }

  v12 = MEMORY[0x26D5E2470](0x614E656C6464696DLL, 0xEA0000000000656DLL);
  OUTLINED_FUNCTION_1_10(v12);
  swift_unknownObjectRelease();

  v13 = outlined bridged method (pb) of @objc Contact.familyName.getter(a1);
  if (v14)
  {
    v6 = v14;
    MEMORY[0x26D5E2470](v13);
    OUTLINED_FUNCTION_8_7();
  }

  v15 = MEMORY[0x26D5E2470](0x614E796C696D6166, 0xEA0000000000656DLL);
  OUTLINED_FUNCTION_1_10(v15);
  swift_unknownObjectRelease();

  v16 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_namePrefix);
  if (v17)
  {
    v6 = v17;
    MEMORY[0x26D5E2470](v16);
    OUTLINED_FUNCTION_8_7();
  }

  v18 = MEMORY[0x26D5E2470](0x66657250656D616ELL, 0xEA00000000007869);
  OUTLINED_FUNCTION_1_10(v18);
  swift_unknownObjectRelease();

  v19 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_nameSuffix);
  if (v20)
  {
    v6 = v20;
    MEMORY[0x26D5E2470](v19);
    OUTLINED_FUNCTION_8_7();
  }

  v21 = MEMORY[0x26D5E2470](0x66667553656D616ELL, 0xEA00000000007869);
  OUTLINED_FUNCTION_1_10(v21);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t CNContact.requestedName(_:)(uint64_t a1)
{
  switch(a1)
  {
    case 6:
      v2 = [v1 nickname];
      goto LABEL_7;
    case 8:
      v2 = [v1 familyName];
      goto LABEL_7;
    case 7:
      v2 = [v1 givenName];
LABEL_7:
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
  }

  return CNContact.formattedFullName.getter();
}

uint64_t CNContact.formattedBirthdateString.getter()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = OUTLINED_FUNCTION_18_0(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  CNContact.timezonedBirthdate.getter(v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    (*(v22 + 32))(v26, v19, v20);
    v28 = [v0 birthday];
    if (v28)
    {
      v29 = v28;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = type metadata accessor for DateComponents();
    __swift_storeEnumTagSinglePayload(v12, v30, 1, v31);
    outlined init with take of DateComponents?(v12, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v31) == 1)
    {
      outlined destroy of ResponseMode?(v15, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    }

    else
    {
      DateComponents.year.getter();
      v33 = v32;
      OUTLINED_FUNCTION_52();
      (*(v34 + 8))(v15, v31);
      if ((v33 & 1) == 0)
      {
        v42 = objc_opt_self();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v41 = [v42 localizedStringFromDate:isa dateStyle:3 timeStyle:0];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        goto LABEL_11;
      }
    }

    v35 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v36 = objc_opt_self();
    v37 = MEMORY[0x26D5E2470](0x644D4D4D4DLL, 0xE500000000000000);
    static Locale.current.getter();
    v38 = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v7, v1);
    v39 = [v36 dateFormatFromTemplate:v37 options:0 locale:v38];

    [v35 setDateFormat_];
    v40 = Date._bridgeToObjectiveC()().super.isa;
    v41 = [v35 stringFromDate_];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_11:

    (*(v22 + 8))(v26, v20);
    return v27;
  }

  outlined destroy of ResponseMode?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return static String.EMPTY.getter();
}

uint64_t outlined init with take of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D5E2AA0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

unint64_t type metadata accessor for NSTermOfAddress()
{
  result = lazy cache variable for type metadata for NSTermOfAddress;
  if (!lazy cache variable for type metadata for NSTermOfAddress)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTermOfAddress);
  }

  return result;
}

id OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return [v1 (v3 + 632)];
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return outlined destroy of ResponseMode?(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_7()
{
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriContacts);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26686A000, v14, v15, "#ModifyContactAttributeHandleIntentStrategy makeIntentExecutionBehavior", v16, 2u);
    MEMORY[0x26D5E3300](v16, -1, -1);
  }

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v17 = one-time initialization token for current;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = v12[5];
  v18 = v12[6];
  v21 = v12[3];
  v20 = v12[4];
  type metadata accessor for ContactResolver();
  swift_allocObject();
  v22 = ContactResolver.init()();
  v23 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentHandler(0));

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v24, v22, v23);
  type metadata accessor for ModifyContactAttributeIntent();
  v25 = v21;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  (*(v19 + 8))(v18, v20);

  OUTLINED_FUNCTION_22_3();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[29] = v2;
  v1[30] = v0;
  v1[28] = v3;
  v4 = type metadata accessor for TemplatingResult();
  v1[31] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[32] = v5;
  v1[33] = OUTLINED_FUNCTION_45();
  v1[34] = swift_task_alloc();
  v6 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v6);
  v1[35] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[36] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[37] = v8;
  v1[38] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for ContactsSnippetPluginModel();
  v1[39] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[40] = v10;
  v1[41] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v11);
  v1[42] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for ContactsSnippetFlowState();
  v1[43] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v1[44] = v13;
  v1[45] = OUTLINED_FUNCTION_10_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_18_0(v14);
  v1[46] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[47] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[48] = v16;
  v1[49] = OUTLINED_FUNCTION_45();
  v1[50] = swift_task_alloc();
  v17 = type metadata accessor for Locale();
  v1[51] = v17;
  OUTLINED_FUNCTION_18_0(v17);
  v1[52] = OUTLINED_FUNCTION_10_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v18);
  v1[53] = OUTLINED_FUNCTION_45();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  OUTLINED_FUNCTION_18_0(v19);
  v1[70] = OUTLINED_FUNCTION_45();
  v1[71] = swift_task_alloc();
  v20 = type metadata accessor for SpeakableString();
  v1[72] = v20;
  OUTLINED_FUNCTION_1_1(v20);
  v1[73] = v21;
  v1[74] = OUTLINED_FUNCTION_45();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 664);
  v3 = *(v1 + 656);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_22_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  *(v3 + 704) = v5;
  *(v3 + 712) = v0;

  v6 = *(v2 + 528);
  v7 = *(v2 + 520);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = v1[94];
  v3 = v1[93];
  v4 = v1[45];
  v5 = v1[44];
  v6 = v1[43];
  v7 = *v0;
  OUTLINED_FUNCTION_0();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);
  v9 = OUTLINED_FUNCTION_22_0();
  v10(v9);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v1 = v0[92];
  v2 = v0[91];
  v14 = v0[78];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[61];

  OUTLINED_FUNCTION_49_0(v2, v1);
  type metadata accessor for ModifyContactAttributeCATsModern(0);
  static CATOption.defaultMode.getter();
  v0[97] = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_49_0(v2, v1);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  dispatch thunk of DialogPerson.fullName.getter();
  (*(v3 + 16))(v5, v14, v4);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  v12 = swift_task_alloc();
  v0[98] = v12;
  *v12 = v0;
  v12[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

  return ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  *(v3 + 792) = v5;
  *(v3 + 800) = v0;

  v6 = v2[63];
  v7 = v2[62];
  v8 = v2[61];

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 160));
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 848) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_22_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = OUTLINED_FUNCTION_37_0();
  }

  else
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v3 + 456), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = OUTLINED_FUNCTION_60();
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 872) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_22_0();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = OUTLINED_FUNCTION_37_0();
  }

  else
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v3 + 424), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = OUTLINED_FUNCTION_60();
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = v40[30];
  __swift_project_boxed_opaque_existential_1((v41 + 56), *(v41 + 80));
  v42 = OUTLINED_FUNCTION_22_0();
  v44 = v43(v42);
  v40[79] = v44;
  if (!v44)
  {
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_2_12();
    lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v69, v70, &protocol conformance descriptor for ContactsError);
    v71 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v268 = v71;
    swift_willThrow();
    goto LABEL_40;
  }

  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v46 = IntentResolutionRecord.intent.getter();
  v47 = [v46 modifyOperation];

  v48 = ModifyOperation.stringify.getter(v47);
  OUTLINED_FUNCTION_49_0(v48, v49);
  v50 = &selRef_isoCountryCode;
  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.siriContacts);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26686A000, v52, v53, "#ModifyContactAttributeHandleIntentStrategy makeIntentHandledResponse constructing SMART snippet", v54, 2u);
      MEMORY[0x26D5E3300](v54, -1, -1);
    }

    v40[27] = MEMORY[0x277D84F90];
    v55 = IntentResolutionRecord.intent.getter();
    v56 = [v55 &selRef_setCode_ + 5];

    if (v56 == 6)
    {
      v93 = v40[52];
      v94 = v40[30];
      type metadata accessor for DialogPerson();
      __swift_project_boxed_opaque_existential_1(v94 + 2, v94[5]);
      v95 = v45;
      dispatch thunk of DeviceState.siriLocale.getter();
      v96 = v94[15];
      v97 = v96;
      v40[90] = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v95, 0, v93, v96);
      DialogPerson.nickname.getter();
      v98 = IntentResolutionRecord.intent.getter();
      v99 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v98);
      if (!v100)
      {
        v99 = static String.EMPTY.getter();
      }

      v101 = v99;
      v102 = v100;
      v40[92] = v100;
      v40[91] = v99;
      v103 = v40[48];
      v104 = v40[49];
      v105 = v40[47];
      v106 = v40[44];
      v262 = v40[45];
      v255 = v40[43];
      v40[93] = IntentResolutionRecord.intent.getter();
      v40[94] = IntentResolutionRecord.intentResponse.getter();
      *v104 = v101;
      v104[1] = v102;
      (*(v103 + 104))(v104, *MEMORY[0x277D55AB8], v105);
      (*(v106 + 104))(v262, *MEMORY[0x277D55970], v255);
      type metadata accessor for ContactsLabelCATsModern(0);

      static CATOption.defaultMode.getter();
      v40[95] = CATWrapperSimple.__allocating_init(options:globals:)();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      v40[96] = v107;
      *v107 = v108;
      v107[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      goto LABEL_62;
    }

    if (v56 == 10)
    {
      v57 = v40[29];
      __swift_storeEnumTagSinglePayload(v40[69], 1, 1, v40[72]);
      v58 = IntentResolutionRecord.intent.getter();
      v59 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v58);
      if (v59)
      {
        OUTLINED_FUNCTION_33_1(v59);
        v60 = &selRef_isoCountryCode ? MEMORY[0x26D5E29D0](0, v57) : *(v57 + 32);
        v61 = v60;

        outlined bridged method (ob) of @objc INObject.identifier.getter(v61);
        if (v62)
        {
          __swift_project_boxed_opaque_existential_1((v41 + 56), *(v41 + 80));
          v63 = OUTLINED_FUNCTION_32_2();
          v65 = v64(v63);
          if (v61)
          {
          }

          else
          {
            v233 = v65;

            if (v233)
            {
              v177 = v40 + 68;
              v267 = v40[69];
              v234 = v40[52];
              v235 = v40[30];
              type metadata accessor for DialogPerson();
              __swift_project_boxed_opaque_existential_1(v235 + 2, v235[5]);
              v236 = v233;
              v50 = &selRef_isoCountryCode;
              dispatch thunk of DeviceState.siriLocale.getter();
              v237 = v235[15];
              v238 = v237;
              DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v236, 0, v234, v237);
              dispatch thunk of DialogPerson.fullName.getter();

              outlined destroy of UsoEntity_common_Person.DefinedValues?(v267, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_57:
              outlined init with take of SpeakableString?(*v177, v40[69]);
              v183 = IntentResolutionRecord.intentResponse.getter();
              v184 = [v183 v50[43]];

              if (v184 && (v185 = outlined bridged method (ob) of @objc ContactRelation.relationship.getter(v184), v186))
              {
                v187 = v185;
                v188 = v186;
              }

              else
              {
                v187 = static String.EMPTY.getter();
                v188 = v189;
              }

              v40[81] = v188;
              v40[80] = v187;
              v190 = v40[50];
              v249 = v40[51];
              v191 = v40[48];
              v192 = v40[46];
              v252 = v40[47];
              v254 = v40[44];
              v258 = v40[43];
              v265 = v40[45];
              v193 = v40[30];
              v194 = static Dictionary<>.cnLabel(forNLSemantic:)(v187, v188);
              v196 = v195;
              v197 = objc_opt_self();
              v198 = MEMORY[0x26D5E2470](v194, v196);

              v199 = [v197 localizedStringForLabel_];

              v200 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v202 = v201;

              v40[25] = v200;
              v40[26] = v202;
              v203 = *(v193 + 40);
              __swift_project_boxed_opaque_existential_1((v193 + 16), v203);
              dispatch thunk of DeviceState.siriLocale.getter();
              OUTLINED_FUNCTION_50();
              __swift_storeEnumTagSinglePayload(v204, v205, v206, v249);
              lazy protocol witness table accessor for type String and conformance String();
              StringProtocol.capitalized(with:)();
              OUTLINED_FUNCTION_30_3();
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v192, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

              *v190 = v40 + 25;
              v190[1] = v203;
              (*(v191 + 104))(v190, *MEMORY[0x277D55AB0], v252);
              v40[82] = IntentResolutionRecord.intent.getter();
              v40[83] = IntentResolutionRecord.intentResponse.getter();
              (*(v254 + 104))(v265, *MEMORY[0x277D55970], v258);
              type metadata accessor for ContactsLabelCATsModern(0);
              static CATOption.defaultMode.getter();
              v40[84] = CATWrapperSimple.__allocating_init(options:globals:)();
              swift_task_alloc();
              OUTLINED_FUNCTION_36_0();
              v40[85] = v207;
              *v207 = v208;
              v207[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
LABEL_62:
              OUTLINED_FUNCTION_12_4();

              return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
            }
          }
        }
      }

      v66 = IntentResolutionRecord.intentResponse.getter();
      v67 = [v66 updatedRelationship];

      if (v67 && (outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v67), v68))
      {
        OUTLINED_FUNCTION_30_3();
      }

      else
      {
        static String.EMPTY.getter();
        OUTLINED_FUNCTION_30_3();
      }

      v175 = v40[72];
      v176 = v40[69];
      v177 = v40 + 67;
      v178 = OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_49_0(v178, v179);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v176, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v180, v181, v182, v175);
      goto LABEL_57;
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_2_12();
    v135 = lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v133, v134, &protocol conformance descriptor for ContactsError);
    v136 = OUTLINED_FUNCTION_7_1(v135);
    swift_storeEnumTagMultiPayload();
    v268 = v136;
    swift_willThrow();

    v137 = OUTLINED_FUNCTION_60();
    v138(v137);
    goto LABEL_40;
  }

  v269 = v41;
  v72 = IntentResolutionRecord.intent.getter();
  v261 = [v72 contactAttributeToModify];

  v73 = IntentResolutionRecord.intent.getter();
  v74 = [v73 modifyOperation];

  v75 = IntentResolutionRecord.intentResponse.getter();
  v76 = [v75 updatedRelationship];

  if (v76)
  {
    v77 = outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v76);
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = IntentResolutionRecord.intentResponse.getter();
  v81 = [v80 updatedRelationship];

  if (v81)
  {
    v81 = outlined bridged method (ob) of @objc ContactRelation.relationship.getter(v81);
    v83 = v82;
  }

  else
  {
    v83 = 0;
  }

  v84 = v40[30];
  outlined init with copy of DeviceState(v84 + 16, (v40 + 9));
  v85 = *(v84 + 104);
  v40[17] = &type metadata for InstalledAppsProvider;
  v40[18] = &protocol witness table for InstalledAppsProvider;
  v40[2] = v45;
  v40[3] = v261;
  v40[4] = v74;
  v40[5] = v77;
  v40[6] = v79;
  v40[7] = v81;
  v40[8] = v83;
  v40[19] = v85;
  v86 = v45;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  v40[104] = v87;
  outlined destroy of ModifyContactAttributeViewBuilder((v40 + 2));
  v88 = IntentResolutionRecord.intent.getter();
  v89 = [v88 contactAttributeToModify];

  if (v89 != 6)
  {
    if (v89 == 10)
    {
      OUTLINED_FUNCTION_28_3();
      v90 = IntentResolutionRecord.intentResponse.getter();
      v91 = [v90 updatedRelationship];

      if (v91 && (outlined bridged method (ob) of @objc ContactRelation.relationship.getter(v91), v92))
      {
        OUTLINED_FUNCTION_30_3();
      }

      else
      {
        static String.EMPTY.getter();
        OUTLINED_FUNCTION_30_3();
      }

      v154 = v40[72];
      v155 = v40[60];
      v156 = v40[30];
      v157 = OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_49_0(v157, v158);
      __swift_storeEnumTagSinglePayload(v155, 1, 1, v154);
      v160 = *(v156 + 40);
      v159 = *(v156 + 48);
      v161 = OUTLINED_FUNCTION_37_2();
      __swift_project_boxed_opaque_existential_1(v161, v160);
      OUTLINED_FUNCTION_60();
      v163 = v162;
      if ((DeviceState.isVox.getter() & 1) == 0)
      {
        OUTLINED_FUNCTION_28_3();
        v163 = IntentResolutionRecord.intent.getter();
        v159 = [v163 modifyOperation];

        if (v159 != 3)
        {
          goto LABEL_68;
        }
      }

      OUTLINED_FUNCTION_28_3();
      v164 = IntentResolutionRecord.intent.getter();
      v165 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v164);
      if (v165)
      {
        OUTLINED_FUNCTION_33_1(v165);
        v166 = v159 ? MEMORY[0x26D5E29D0](0, v163) : v163[4];
        v167 = v166;

        outlined bridged method (ob) of @objc INObject.identifier.getter(v167);
        if (v168)
        {
          __swift_project_boxed_opaque_existential_1((v269 + 56), *(v269 + 80));
          v169 = OUTLINED_FUNCTION_32_2();
          v171 = v170(v169);
          if (v167)
          {
          }

          else
          {
            v239 = v171;

            if (v239)
            {
              v211 = v40 + 68;
              v271 = v40[60];
              v240 = v40[52];
              v241 = v40[30];
              type metadata accessor for DialogPerson();
              v242 = *(v156 + 40);
              v243 = OUTLINED_FUNCTION_37_2();
              __swift_project_boxed_opaque_existential_1(v243, v242);
              v244 = v239;
              dispatch thunk of DeviceState.siriLocale.getter();
              v245 = *(v241 + 120);
              v246 = v245;
              DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v244, 0, v240, v245);
              dispatch thunk of DialogPerson.fullName.getter();

              outlined destroy of UsoEntity_common_Person.DefinedValues?(v271, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_67:
              outlined init with take of SpeakableString?(*v211, v40[60]);
LABEL_68:
              v218 = v40[78];
              v219 = v40[72];
              v220 = v40[57];
              v221 = *(v40[73] + 16);
              v221(v40[58], v40[75], v219);
              OUTLINED_FUNCTION_50();
              __swift_storeEnumTagSinglePayload(v222, v223, v224, v219);
              v221(v220, v218, v219);
              OUTLINED_FUNCTION_50();
              __swift_storeEnumTagSinglePayload(v225, v226, v227, v219);
              v228 = *(v156 + 40);
              v229 = OUTLINED_FUNCTION_37_2();
              __swift_project_boxed_opaque_existential_1(v229, v228);
              OUTLINED_FUNCTION_37_0();
              DeviceState.isVox.getter();
              swift_task_alloc();
              OUTLINED_FUNCTION_36_0();
              v40[105] = v230;
              *v230 = v231;
              v230[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
              OUTLINED_FUNCTION_12_4();

              return ModifyContactAttributeCATs.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
            }
          }
        }
      }

      OUTLINED_FUNCTION_28_3();
      v172 = IntentResolutionRecord.intentResponse.getter();
      v173 = [v172 updatedRelationship];

      if (!v173 || (outlined bridged method (ob) of @objc ContactRelation.relatedFullName.getter(v173), !v174))
      {
        static String.EMPTY.getter();
      }

      v210 = v40[72];
      v211 = v40 + 59;
      v212 = v40[60];
      v213 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_49_0(v213, v214);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v212, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v215, v216, v217, v210);
      goto LABEL_67;
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_2_12();
    v141 = lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v139, v140, &protocol conformance descriptor for ContactsError);
    v142 = OUTLINED_FUNCTION_7_1(v141);
    swift_storeEnumTagMultiPayload();
    v268 = v142;
    swift_willThrow();

    v143 = OUTLINED_FUNCTION_60();
    v144(v143);
LABEL_40:
    OUTLINED_FUNCTION_1_11();
    v247 = v145;
    v248 = v40[46];
    v250 = v40[45];
    v251 = v40[42];
    v253 = v40[41];
    v257 = v40[38];
    v260 = v40[35];
    v264 = v40[34];
    v266 = v40[33];

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_12_4();

    return v147(v146, v147, v148, v149, v150, v151, v152, v153, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v247, v248, v250, v251, v253, v257, v260, v264, v266, v268, a36, a37, a38, a39, a40);
  }

  OUTLINED_FUNCTION_28_3();
  v109 = IntentResolutionRecord.intent.getter();
  v110 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyNickName.getter(v109);
  v112 = v86;
  if (!v111)
  {
    v110 = static String.EMPTY.getter();
  }

  v270 = v40[78];
  v113 = v40[73];
  v114 = v40[72];
  v256 = v40[74];
  v259 = v40[54];
  v263 = v40[53];
  v115 = v40[52];
  v116 = v40[30];
  OUTLINED_FUNCTION_49_0(v110, v111);
  type metadata accessor for DialogPerson();
  v117 = *(v116 + 40);
  v118 = OUTLINED_FUNCTION_37_2();
  __swift_project_boxed_opaque_existential_1(v118, v117);
  v119 = v112;
  dispatch thunk of DeviceState.siriLocale.getter();
  v120 = *(v116 + 120);
  v121 = v120;
  v40[107] = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v119, 0, v115, v120);
  DialogPerson.nickname.getter();
  dispatch thunk of DialogPerson.fullName.getter();
  v122 = *(v113 + 16);
  v122(v259, v256, v114);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v114);
  v122(v263, v270, v114);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v114);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v40[108] = v129;
  *v129 = v130;
  v129[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  OUTLINED_FUNCTION_12_4();

  return ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v59 = *(v40 + 624);
  v41 = *(v40 + 584);
  v42 = *(v40 + 576);
  v43 = *(v40 + 568);
  v44 = *(v40 + 552);
  v45 = *(v40 + 400);
  v46 = *(v40 + 376);
  v47 = *(v40 + 384);

  v48 = *(v41 + 8);
  v49 = OUTLINED_FUNCTION_22_0();
  v48(v49);
  (*(v47 + 8))(v45, v46);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v44, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v43, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  (v48)(v59, v42);
  OUTLINED_FUNCTION_0_11(*(v40 + 712));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v59, a37, a38, a39, a40);
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = v40[79];
  v42 = v40[73];
  v43 = v40[71];
  v44 = v40[64];

  v45 = *(v42 + 8);
  v46 = OUTLINED_FUNCTION_22_0();
  v45(v46);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v44, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v43, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  v47 = OUTLINED_FUNCTION_37_0();
  v45(v47);
  OUTLINED_FUNCTION_0_11(v40[100]);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = *(v40 + 584);
  v42 = *(v40 + 480);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v42, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v43 = *(v41 + 8);
  v44 = OUTLINED_FUNCTION_22_0();
  v43(v44);
  v45 = OUTLINED_FUNCTION_37_0();
  v43(v45);
  OUTLINED_FUNCTION_0_11(*(v40 + 848));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

{
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_29_2();
  v41 = v40[79];
  v42 = v40[73];
  v44 = v40[55];
  v43 = v40[56];

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v44, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v43, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v45 = *(v42 + 8);
  v46 = OUTLINED_FUNCTION_22_0();
  v45(v46);
  v47 = OUTLINED_FUNCTION_37_0();
  v45(v47);
  OUTLINED_FUNCTION_0_11(v40[109]);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_4();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v15 = v14[78];
  v16 = v14[77];
  v17 = v14[73];
  v18 = v14[72];
  v19 = v14[66];
  v20 = v14[65];
  v21 = v14[30];
  OUTLINED_FUNCTION_49_0(v14[80], v14[81]);
  type metadata accessor for ModifyContactAttributeCATsModern(0);
  static CATOption.defaultMode.getter();
  v14[86] = CATWrapperSimple.__allocating_init(options:globals:)();
  v22 = *(v17 + 16);
  v22(v19, v16, v18);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
  v22(v20, v15, v18);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v18);
  __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));
  OUTLINED_FUNCTION_37_0();
  DeviceState.isVox.getter();
  v29 = swift_task_alloc();
  v14[87] = v29;
  *v29 = v14;
  v29[1] = ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  OUTLINED_FUNCTION_22_3();

  return ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)();
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_36_2();
  if (v13)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v14 = v12[77];
  v15 = v12[73];
  v16 = v12[72];
  v17 = v12[69];
  v18 = v12[50];
  v19 = v12[47];
  v20 = v12[48];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(v15 + 8))(v14, v16);
  (*(v20 + 8))(v18, v19);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_41_1();
  v21 = type metadata accessor for ModifyContactAttributeSnippetModel();
  result = __swift_getEnumTagSinglePayload(v14, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    (*(v23 + 32))(v14);
    v24 = OUTLINED_FUNCTION_35_2();
    v25(v24);
    static DialogPhase.completion.getter();
    v26 = swift_task_alloc();
    OUTLINED_FUNCTION_9_8(v26);

    type metadata accessor for ResponseFactory();
    swift_allocObject();
    v12[102] = ResponseFactory.init()();
    v12[23] = v16;
    OUTLINED_FUNCTION_11_6();
    v12[24] = lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v27, v28, MEMORY[0x277D559E0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 20);
    (*(v19 + 16))(boxed_opaque_existential_1, v14, v16);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_36_0();
    v12[103] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_6_7(v30);
    OUTLINED_FUNCTION_22_3();

    return v36(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  return result;
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_36_2();
  if (v13)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v14 = v12[90];
  v15 = v12[76];
  v16 = v12[73];
  v17 = v12[72];
  v18 = v12[64];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v20 = *(v16 + 8);
  v19 = v16 + 8;
  v20(v15, v17);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_41_1();
  v21 = type metadata accessor for ModifyContactAttributeSnippetModel();
  result = __swift_getEnumTagSinglePayload(v14, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    (*(v23 + 32))(v14);
    v24 = OUTLINED_FUNCTION_35_2();
    v25(v24);
    static DialogPhase.completion.getter();
    v26 = swift_task_alloc();
    OUTLINED_FUNCTION_9_8(v26);

    type metadata accessor for ResponseFactory();
    swift_allocObject();
    v12[102] = ResponseFactory.init()();
    v12[23] = v15;
    OUTLINED_FUNCTION_11_6();
    v12[24] = lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(v27, v28, MEMORY[0x277D559E0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 20);
    (*(v19 + 16))(boxed_opaque_existential_1, v14, v15);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_36_0();
    v12[103] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_6_7(v30);
    OUTLINED_FUNCTION_22_3();

    return v36(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  return result;
}

uint64_t ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_21_1();
  v39 = *(v38 + 568);
  v40 = *(v38 + 320);
  v56 = *(v38 + 328);
  v42 = *(v38 + 304);
  v41 = *(v38 + 312);
  v44 = *(v38 + 288);
  v43 = *(v38 + 296);

  (*(v43 + 8))(v42, v44);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v39, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  v45 = OUTLINED_FUNCTION_60();
  v46(v45);
  (*(v40 + 8))(v56, v41);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20_1();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v56, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  v39 = v38[104];
  v40 = v38[79];
  v60 = v38[75];
  v61 = v38[78];
  v41 = v38[73];
  v42 = v38[72];
  v59 = v38[60];
  v43 = v38[34];
  v45 = v38[31];
  v44 = v38[32];
  v46 = v38[28];
  v47 = type metadata accessor for AceOutput();
  v48 = MEMORY[0x277D5C1D8];
  v46[3] = v47;
  v46[4] = v48;
  __swift_allocate_boxed_opaque_existential_1(v46);
  ModifyContactAttributeHandleIntentStrategy.intentHandledOutput(templateResult:views:meCard:)(v43, v39, v40);

  (*(v44 + 8))(v43, v45);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v59, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v49 = *(v41 + 8);
  v49(v60, v42);
  v49(v61, v42);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20_1();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v59, v60, v61, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  v39 = v38[104];
  v40 = v38[79];
  v61 = v38[74];
  v62 = v38[78];
  v41 = v38[73];
  v42 = v38[72];
  v59 = v38[55];
  v60 = v38[56];
  v44 = v38[32];
  v43 = v38[33];
  v58 = v38[31];
  v45 = v38[28];
  v46 = type metadata accessor for AceOutput();
  v47 = MEMORY[0x277D5C1D8];
  v45[3] = v46;
  v45[4] = v47;
  __swift_allocate_boxed_opaque_existential_1(v45);
  ModifyContactAttributeHandleIntentStrategy.intentHandledOutput(templateResult:views:meCard:)(v43, v39, v40);

  (*(v44 + 8))(v43, v58);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v59, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v60, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v48 = *(v41 + 8);
  v48(v61, v42);
  v48(v62, v42);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20_1();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v58, v59, v60, v61, v62, a35, a36, a37, a38);
}

uint64_t closure #1 in ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  static ContactsContextProvider.handleGetContact(contact:needsSDA:)(a3, 0, v6);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ModifyContactAttributeHandleIntentStrategy.intentHandledOutput(templateResult:views:meCard:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  static ContactsContextProvider.handleGetContact(contact:needsSDA:)(a3, 0, v13 - v6);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t type metadata accessor for ModifyContactAttributeHandleIntentStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeHandleIntentStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance ModifyContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance ModifyContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance ModifyContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance ModifyContactAttributeHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return ModifyContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance ModifyContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance ModifyContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance ModifyContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ModifyContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821B9C38](a1, a2, v9, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance ModifyContactAttributeHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow;

  return ModifyContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)();
}

uint64_t outlined init with copy of ModifyContactAttributeSnippetModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ModifyContactAttributeHandleIntentStrategy and conformance ModifyContactAttributeHandleIntentStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_11@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v5 = v1[41];
  v4 = v1[42];
  *(v2 - 144) = v1[45];
  *(v2 - 136) = v4;
  v6 = v1[38];
  *(v2 - 128) = v5;
  *(v2 - 120) = v6;
  v7 = v1[34];
  *(v2 - 112) = v1[35];
  *(v2 - 104) = v7;
  *(v2 - 96) = v1[33];
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v4 = v0[41];
  v3 = v0[42];
  *(v1 - 136) = v0[45];
  *(v1 - 128) = v3;
  v5 = v0[38];
  *(v1 - 120) = v4;
  *(v1 - 112) = v5;
  v6 = v0[34];
  *(v1 - 104) = v0[35];
  *(v1 - 96) = v6;
  *(v1 - 88) = v0[33];
}

uint64_t OUTLINED_FUNCTION_9_8(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1)
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  v1[101] = v0;
  v3 = v1[71];
  v4 = v1[70];

  return outlined init with copy of ModifyContactAttributeSnippetModel?(v3, v4);
}

uint64_t GetContactAttributeCATsModern.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:isModern:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 232) = v18;
  *(v9 + 240) = v8;
  *(v9 + 489) = a8;
  *(v9 + 216) = a6;
  *(v9 + 224) = a7;
  *(v9 + 488) = a5;
  *(v9 + 200) = a3;
  *(v9 + 208) = a4;
  *(v9 + 184) = a1;
  *(v9 + 192) = a2;
  v10 = type metadata accessor for SpeakableString();
  *(v9 + 248) = v10;
  *(v9 + 256) = *(v10 - 8);
  *(v9 + 264) = OUTLINED_FUNCTION_10_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v11);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  v12 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v12);
  *(v9 + 328) = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t GetContactAttributeCATsModern.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:isModern:)()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_22_4();
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  OUTLINED_FUNCTION_22_4();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_26_2();
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  OUTLINED_FUNCTION_26_2();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  OUTLINED_FUNCTION_25_1();
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  OUTLINED_FUNCTION_25_1();
  v8 = *(v2 + 312);
  if (v0)
  {

    outlined destroy of SpeakableString?(v8);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v2 + 312));
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  OUTLINED_FUNCTION_26_2();
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  OUTLINED_FUNCTION_26_2();
  v8 = *(v2 + 304);
  if (v0)
  {

    outlined destroy of SpeakableString?(v8);
  }

  else
  {
    outlined destroy of SpeakableString?(v8);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v0;
  OUTLINED_FUNCTION_26_2();
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  OUTLINED_FUNCTION_26_2();
  v8 = *(v2 + 296);
  if (v0)
  {

    outlined destroy of SpeakableString?(v8);
  }

  else
  {
    outlined destroy of SpeakableString?(v8);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v3[17] = v1;
  v3[18] = v5;
  v3[19] = v0;
  OUTLINED_FUNCTION_25_1();
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  OUTLINED_FUNCTION_25_1();
  v8 = *(v2 + 288);
  if (v0)
  {

    outlined destroy of SpeakableString?(v8);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v2 + 288));
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_19_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_25_1();
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  OUTLINED_FUNCTION_25_1();
  v8 = *(v2 + 272);
  if (v0)
  {

    outlined destroy of SpeakableString?(v8);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v2 + 272));
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t GetContactAttributeCATsModern.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:isModern:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_20_2();
  type metadata accessor for ContactsError(0);
  v17 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  OUTLINED_FUNCTION_6_8(v18, v19);
  OUTLINED_FUNCTION_14_6();
  v22 = OUTLINED_FUNCTION_8_8(v20, v21);
  OUTLINED_FUNCTION_2_13(v22);

  outlined destroy of SpeakableString?(v16);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_20_2();
  type metadata accessor for ContactsError(0);
  v17 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  OUTLINED_FUNCTION_6_8(v18, v19);
  OUTLINED_FUNCTION_14_6();
  v22 = OUTLINED_FUNCTION_8_8(v20, v21);
  OUTLINED_FUNCTION_2_13(v22);

  outlined destroy of SpeakableString?(v16);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_20_2();
  type metadata accessor for ContactsError(0);
  v17 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  OUTLINED_FUNCTION_6_8(v18, v19);
  OUTLINED_FUNCTION_14_6();
  v22 = OUTLINED_FUNCTION_8_8(v20, v21);
  OUTLINED_FUNCTION_2_13(v22);

  outlined destroy of SpeakableString?(v16);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_20_2();
  type metadata accessor for ContactsError(0);
  v17 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  OUTLINED_FUNCTION_6_8(v18, v19);
  OUTLINED_FUNCTION_14_6();
  v22 = OUTLINED_FUNCTION_8_8(v20, v21);
  OUTLINED_FUNCTION_2_13(v22);

  outlined destroy of SpeakableString?(v16);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_20_2();
  type metadata accessor for ContactsError(0);
  v17 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  OUTLINED_FUNCTION_6_8(v18, v19);
  OUTLINED_FUNCTION_14_6();
  v22 = OUTLINED_FUNCTION_8_8(v20, v21);
  OUTLINED_FUNCTION_2_13(v22);

  outlined destroy of SpeakableString?(v16);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_20_2();
  type metadata accessor for ContactsError(0);
  v17 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  OUTLINED_FUNCTION_6_8(v18, v19);
  OUTLINED_FUNCTION_14_6();
  v22 = OUTLINED_FUNCTION_8_8(v20, v21);
  OUTLINED_FUNCTION_2_13(v22);

  outlined destroy of SpeakableString?(v16);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_20_2();
  type metadata accessor for ContactsError(0);
  v17 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  OUTLINED_FUNCTION_6_8(v18, v19);
  OUTLINED_FUNCTION_14_6();
  v22 = OUTLINED_FUNCTION_8_8(v20, v21);
  OUTLINED_FUNCTION_2_13(v22);

  outlined destroy of SpeakableString?(v16);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t GetContactAttributeCATsModern.disambiguateLabeledAttribute(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 128) = a7;
  *(v9 + 136) = v8;
  *(v9 + 241) = a8;
  *(v9 + 112) = a4;
  *(v9 + 120) = a6;
  *(v9 + 240) = a5;
  *(v9 + 96) = a2;
  *(v9 + 104) = a3;
  *(v9 + 88) = a1;
  v10 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v10);
  *(v9 + 144) = OUTLINED_FUNCTION_10_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v11);
  *(v9 + 152) = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t GetContactAttributeCATsModern.disambiguateLabeledAttribute(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:)()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_22_4();
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  OUTLINED_FUNCTION_22_4();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 152);

  outlined destroy of SpeakableString?(v1);

  v2 = OUTLINED_FUNCTION_8_1();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for ContactsError(0);
  v1 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v2 = OUTLINED_FUNCTION_56(v1);
  OUTLINED_FUNCTION_31_2(v2, v3);
  OUTLINED_FUNCTION_14_6();
  v6 = OUTLINED_FUNCTION_23_4(v4, v5);
  OUTLINED_FUNCTION_24_3(v6);

  outlined destroy of SpeakableString?(v0);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_1();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_22_4();
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  OUTLINED_FUNCTION_22_4();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 152);

  outlined destroy of SpeakableString?(v1);

  v2 = OUTLINED_FUNCTION_8_1();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for ContactsError(0);
  v1 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v2 = OUTLINED_FUNCTION_56(v1);
  OUTLINED_FUNCTION_31_2(v2, v3);
  OUTLINED_FUNCTION_14_6();
  v6 = OUTLINED_FUNCTION_23_4(v4, v5);
  OUTLINED_FUNCTION_24_3(v6);

  outlined destroy of SpeakableString?(v0);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_1();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_22_4();
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  OUTLINED_FUNCTION_22_4();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 152);

  outlined destroy of SpeakableString?(v1);

  v2 = OUTLINED_FUNCTION_8_1();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for ContactsError(0);
  v1 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  v2 = OUTLINED_FUNCTION_56(v1);
  OUTLINED_FUNCTION_31_2(v2, v3);
  OUTLINED_FUNCTION_14_6();
  v6 = OUTLINED_FUNCTION_23_4(v4, v5);
  OUTLINED_FUNCTION_24_3(v6);

  outlined destroy of SpeakableString?(v0);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_1();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}