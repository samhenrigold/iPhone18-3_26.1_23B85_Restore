uint64_t AllSolutionsRequest.caseMetaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = type metadata accessor for AllSolutionsRequest(v7);
  OUTLINED_FUNCTION_108(*(v8 + 20));
  v9 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_8(v9);
  if (v10)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v11 = dword_280448F7C;
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226(&qword_280448E60);
    }

    *(a1 + v11) = qword_28044A6A8;
    v12 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v12, v13);
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12();
    v14 = OUTLINED_FUNCTION_126();
    return sub_26BCFEE08(v14);
  }

  return result;
}

uint64_t AllSolutionsRequest.caseMetaData.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for AllSolutionsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 20), &qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_143();
  sub_26BCFEE08(v3);
  type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
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

void AllSolutionsRequest.caseMetaData.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_277();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_59(v5);
  v6 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_118(v8);
  v10 = type metadata accessor for TriageRequest.CaseMetaData(v9);
  OUTLINED_FUNCTION_241(v10);
  OUTLINED_FUNCTION_34();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  v17 = *(type metadata accessor for AllSolutionsRequest(v16) + 20);
  *(v3 + 40) = v17;
  OUTLINED_FUNCTION_135(v17);
  OUTLINED_FUNCTION_9();
  if (v18)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v19 = *(v1 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226(&qword_280448E60);
    }

    *(v12 + v19) = qword_28044A6A8;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v1 != 1)
    {
      sub_26BD04E80(v2, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12();
    v20 = OUTLINED_FUNCTION_216();
    sub_26BCFEE08(v20);
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCD1BF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_179();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_170();
    sub_26BCFEE5C(v8);
    sub_26BD04E80(v6 + v5, &qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_12();
    sub_26BCFEE08(v2);
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_85();
    sub_26BCFEEB0(v4);
  }

  else
  {
    sub_26BD04E80(v6 + v5, &qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_120();
  }

  free(v4);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v9);
}

uint64_t AllSolutionsRequest.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = type metadata accessor for AllSolutionsRequest(v7);
  OUTLINED_FUNCTION_108(*(v8 + 24));
  v9 = type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_8(v9);
  if (v10)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v11 = SHIDWORD(OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220(&qword_280448E80);
    }

    *(a1 + v11) = qword_28044A6F0;
    v12 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v12, v13);
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11();
    v14 = OUTLINED_FUNCTION_126();
    return sub_26BCFEE08(v14);
  }

  return result;
}

uint64_t sub_26BCD1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v11 = OUTLINED_FUNCTION_173();
  sub_26BCFEE5C(v11);
  return a7(v7);
}

uint64_t AllSolutionsRequest.clientContext.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for AllSolutionsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_11();
  v3 = OUTLINED_FUNCTION_143();
  sub_26BCFEE08(v3);
  type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void AllSolutionsRequest.clientContext.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_277();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_59(v5);
  v6 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_118(v8);
  v10 = type metadata accessor for TriageRequest.ClientContext(v9);
  OUTLINED_FUNCTION_241(v10);
  OUTLINED_FUNCTION_34();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  v17 = *(type metadata accessor for AllSolutionsRequest(v16) + 24);
  *(v3 + 40) = v17;
  OUTLINED_FUNCTION_135(v17);
  OUTLINED_FUNCTION_9();
  if (v18)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v19 = *(v1 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220(&qword_280448E80);
    }

    *(v12 + v19) = qword_28044A6F0;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v1 != 1)
    {
      sub_26BD04E80(v2, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11();
    v20 = OUTLINED_FUNCTION_216();
    sub_26BCFEE08(v20);
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCD20FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_179();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_170();
    sub_26BCFEE5C(v8);
    sub_26BD04E80(v6 + v5, &qword_280448F70, &qword_26BDA1A38);
    OUTLINED_FUNCTION_11();
    sub_26BCFEE08(v2);
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_84();
    sub_26BCFEEB0(v4);
  }

  else
  {
    sub_26BD04E80(v6 + v5, &qword_280448F70, &qword_26BDA1A38);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_120();
  }

  free(v4);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v9);
}

uint64_t AllSolutionsRequest.init()()
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for AllSolutionsRequest(0);
  type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_273();
  type metadata accessor for TriageRequest.ClientContext(v6);
  v7 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t AllSolutionsResponse.supportOptions.getter()
{
  v1 = type metadata accessor for AllSolutionsResponse(0);
  OUTLINED_FUNCTION_154(*(v0 + *(v1 + 20)) + 16, v2);
}

uint64_t sub_26BCD2328@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.supportOptions.getter();
  *a1 = result;
  return result;
}

uint64_t AllSolutionsResponse.supportOptions.setter()
{
  v3 = OUTLINED_FUNCTION_134();
  v4 = OUTLINED_FUNCTION_172(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCE4C34(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 16, v5);
  *(v6 + 16) = v0;
}

uint64_t AllSolutionsResponse.supportOptions.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_33(v3);
  OUTLINED_FUNCTION_127(v0 + 16);
  *(v1 + 48) = *(v0 + 16);

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD2448()
{
  OUTLINED_FUNCTION_186();
  v2 = *(v1 + 48);
  if (v3)
  {

    AllSolutionsResponse.supportOptions.setter();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 56);
      OUTLINED_FUNCTION_94();
      v10 = OUTLINED_FUNCTION_36();
      v7 = sub_26BCE4C34(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_191(v7 + 16);
    *(v7 + 16) = v2;
  }

  free(v0);
}

uint64_t AllSolutionsResponse.contactSupportOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_53(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_152();
  sub_26BD04E2C(v8);
  type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_23(v1);
  if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0xE000000000000000;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0xE000000000000000;
    *(a1 + 56) = v10;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v11 = type metadata accessor for SupportOption(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v9)
    {
      return sub_26BD04E80(v1, &unk_280448F78, &unk_26BDA1A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v18 = OUTLINED_FUNCTION_169();
    return sub_26BCFEE08(v18);
  }

  return result;
}

uint64_t AllSolutionsResponse.contactSupportOptions.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_22();
  v6 = *(type metadata accessor for AllSolutionsResponse(v5) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_83();
  sub_26BCFEE08(a1);
  type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_236(v8 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions, v17);
  v15 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v15);
  return swift_endAccess();
}

uint64_t ContactSupportOptions.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = v2;
  type metadata accessor for ContactSupportOptions(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v3 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
}

void AllSolutionsResponse.contactSupportOptions.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v4 = OUTLINED_FUNCTION_165();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_42(v5);
  v6 = OUTLINED_FUNCTION_131();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_110(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47(v10);
  type metadata accessor for ContactSupportOptions(v11);
  OUTLINED_FUNCTION_34();
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_300(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v3 + 48) = v15;
  OUTLINED_FUNCTION_27();
  v16 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132(v1 + v16);
  OUTLINED_FUNCTION_9();
  if (v17)
  {
    v18 = MEMORY[0x277D84F90];
    *v15 = MEMORY[0x277D84F90];
    v15[1] = 0;
    *(v15 + 16) = 0;
    v15[3] = 0;
    v15[4] = 0xE000000000000000;
    v15[5] = 0;
    v15[6] = 0xE000000000000000;
    v15[7] = v18;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v19 = type metadata accessor for SupportOption(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
    OUTLINED_FUNCTION_9();
    if (!v17)
    {
      sub_26BD04E80(v2, &unk_280448F78, &unk_26BDA1A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v26 = OUTLINED_FUNCTION_216();
    sub_26BCFEE08(v26);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasContactSupportOptions.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearContactSupportOptions()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

void AllSolutionsResponse.heroArticle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasHeroArticle.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearHeroArticle()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

void sub_26BCD2EA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_131();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_150();
  v12 = *(v2 + *(v7(0) + 20));
  v13 = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_230(v13, &v17);
  OUTLINED_FUNCTION_132(v12 + v5);
  sub_26BDA0810();
  OUTLINED_FUNCTION_23(v3);
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_23(v3);
    if (!v14)
    {
      sub_26BD04E80(v3, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    v15 = OUTLINED_FUNCTION_275();
    v16(v15);
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCD3048(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_228();
  v12 = *(v9(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_36();
    *(v2 + v12) = v5(v13);
  }

  v14 = sub_26BDA0810();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_261();
  v15();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  v19 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_236(v19, &v20);
  sub_26BCFF2C8(v3);
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

void AllSolutionsResponse.heroVideo.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasHeroVideo.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearHeroVideo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t ArticleSupportOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  type metadata accessor for ArticleSupportOptions(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void AllSolutionsResponse.popularArticles.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v4 = OUTLINED_FUNCTION_165();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_42(v5);
  v6 = OUTLINED_FUNCTION_131();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_110(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47(v10);
  type metadata accessor for ArticleSupportOptions(v11);
  OUTLINED_FUNCTION_34();
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_300(v13);
  *(v3 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  v15 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132(v1 + v15);
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    OUTLINED_FUNCTION_248(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_9();
    if (!v16)
    {
      sub_26BD04E80(v2, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BCD364C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_167();
    sub_26BCFEE5C(v9);
    v4(v5);
    v10 = OUTLINED_FUNCTION_256();
    sub_26BCFEEB0(v10);
  }

  else
  {
    v3(*(*v2 + 48));
  }

  free(v6);
  free(v5);
  free(v7);
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t AllSolutionsResponse.hasPopularArticles.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearPopularArticles()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD38BC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_228();
  v4 = *(type metadata accessor for AllSolutionsResponse(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v5 = OUTLINED_FUNCTION_36();
    *(v0 + v4) = sub_26BCE4C34(v5);
  }

  v6 = OUTLINED_FUNCTION_130();
  sub_26BCFEE08(v6);
  type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_236(v11, v13);
  sub_26BCFF2C8(v1);
  return swift_endAccess();
}

void AllSolutionsResponse.quickAnswerArticles.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v4 = OUTLINED_FUNCTION_165();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_42(v5);
  v6 = OUTLINED_FUNCTION_131();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_110(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47(v10);
  type metadata accessor for ArticleSupportOptions(v11);
  OUTLINED_FUNCTION_34();
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_300(v13);
  *(v3 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  v15 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles;
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132(v1 + v15);
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    OUTLINED_FUNCTION_248(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_9();
    if (!v16)
    {
      sub_26BD04E80(v2, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasQuickAnswerArticles.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearQuickAnswerArticles()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD3C80@<X0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_256();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v8);
  v9 = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_230(v9, v15);
  OUTLINED_FUNCTION_261();
  sub_26BD04E2C(v10);
  v11 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_8(v11);
  if (v12)
  {
    *a2 = MEMORY[0x277D84F90];
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v12)
    {
      return sub_26BD04E80(v2, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_126();
    return sub_26BCFEE08(v13);
  }

  return result;
}

void AllSolutionsResponse.videoArticles.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v4 = OUTLINED_FUNCTION_165();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_42(v5);
  v6 = OUTLINED_FUNCTION_131();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_110(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47(v10);
  type metadata accessor for ArticleSupportOptions(v11);
  OUTLINED_FUNCTION_34();
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_300(v13);
  *(v3 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  v15 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles;
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132(v1 + v15);
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    OUTLINED_FUNCTION_248(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_9();
    if (!v16)
    {
      sub_26BD04E80(v2, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasVideoArticles.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearVideoArticles()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD40C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.reportingContext.getter(a1);
  *a2 = result;
  return result;
}

uint64_t AllSolutionsResponse.reportingContext.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_33(v2);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.emptyResources.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasEmptyResources.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearEmptyResources()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD457C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.localizedSolutionsInfo.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26BCD45A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AllSolutionsResponse.localizedSolutionsInfo.setter(v1, v2, v3, v4, v5);
}

uint64_t AllSolutionsResponse.localizedSolutionsInfo.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37(v1);
  v3 = type metadata accessor for AllSolutionsResponse(v2);
  OUTLINED_FUNCTION_182(v3);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.notAvailableResources.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasNotAvailableResources.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearNotAvailableResources()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD4A54()
{
  v0 = OUTLINED_FUNCTION_265();
  v1(v0);
  v2 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_154(v2, v3);
}

uint64_t sub_26BCD4A9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.batteryResources.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26BCD4B3C()
{
  OUTLINED_FUNCTION_264();
  v5 = v1;
  v6 = OUTLINED_FUNCTION_134();
  v8 = *(v7(v6) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v10 = v3(v11);
    *(v5 + v8) = v10;
  }

  v12 = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_159(v12, v13);
  *(v10 + v2) = v0;
}

uint64_t AllSolutionsResponse.batteryResources.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_33(v2);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD4CA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = AllSolutionsResponse.isBatteryRelated.getter(a1);
  *a2 = result & 1;
  return result;
}

uint64_t AllSolutionsResponse.isBatteryRelated.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  v4 = type metadata accessor for AllSolutionsResponse(0);
  OUTLINED_FUNCTION_270(*(v4 + 20));
  v5 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  OUTLINED_FUNCTION_99();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26BCD4E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.coverageResources.getter(a1);
  *a2 = result;
  return result;
}

uint64_t AllSolutionsResponse.coverageResources.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_33(v2);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.recommendedSupportOptionsHeader.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasRecommendedSupportOptionsHeader.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearRecommendedSupportOptionsHeader()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

void AllSolutionsResponse.recommendedSupportOptionsHeaderLinkedContent.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasRecommendedSupportOptionsHeaderLinkedContent.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearRecommendedSupportOptionsHeaderLinkedContent()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD561C()
{
  v2 = OUTLINED_FUNCTION_265();
  v4 = v3(v2);
  OUTLINED_FUNCTION_230(*(v1 + *(v4 + 20)) + *v0, v6);

  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BCD5678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.localizedDisclaimerFooter.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26BCD56A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AllSolutionsResponse.localizedDisclaimerFooter.setter(v1, v2, v3, v4, v5);
}

uint64_t sub_26BCD572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v12 = v7;
  v13 = OUTLINED_FUNCTION_90();
  v15 = *(v14(v13) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_36();
    v17 = a5(v18);
    *(v12 + v15) = v17;
  }

  v19 = (v17 + *a6);
  OUTLINED_FUNCTION_235(v19, v21);
  *v19 = v8;
  v19[1] = v6;
}

uint64_t AllSolutionsResponse.localizedDisclaimerFooter.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37(v1);
  v3 = type metadata accessor for AllSolutionsResponse(v2);
  OUTLINED_FUNCTION_182(v3);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.deprecatedV3BillingError.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasDeprecatedV3BillingError.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearDeprecatedV3BillingError()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

void AllSolutionsResponse.warningMessage.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasWarningMessage.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearWarningMessage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

void AllSolutionsResponse.location.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasLocation.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearLocation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

void AllSolutionsResponse.quickAnswerMetadata.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasQuickAnswerMetadata.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearQuickAnswerMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD65F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.quickAnswers.getter(a1);
  *a2 = result;
  return result;
}

uint64_t AllSolutionsResponse.quickAnswers.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_33(v2);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD6760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.heroArticles.getter(a1);
  *a2 = result;
  return result;
}

uint64_t AllSolutionsResponse.heroArticles.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_33(v2);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD68CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.heroVideos.getter(a1);
  *a2 = result;
  return result;
}

uint64_t AllSolutionsResponse.heroVideos.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_33(v2);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD6A38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AllSolutionsResponse.deepDiveURL.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26BCD6A64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AllSolutionsResponse.deepDiveURL.setter(v1, v2, v3, v4, v5);
}

uint64_t AllSolutionsResponse.deepDiveURL.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37(v1);
  v3 = type metadata accessor for AllSolutionsResponse(v2);
  OUTLINED_FUNCTION_182(v3);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.billingError.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasBillingError.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearBillingError()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCE4C34(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t SupportOption.type.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_19();
  result = OUTLINED_FUNCTION_154(v1 + 16, v3);
  v5 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_26BCD6F8C@<X0>(uint64_t a1@<X8>)
{
  result = SupportOption.type.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_26BCD6FD0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  SupportOption.type.setter(&v2);
}

void SupportOption.type.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_307();
  v2 = v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(type metadata accessor for SupportOption(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v10 = OUTLINED_FUNCTION_36();
    v9 = sub_26BCEC404(v10);
    *(v2 + v6) = v9;
  }

  OUTLINED_FUNCTION_159(v9 + 16, v8);
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 88) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 16);
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD7100(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_186();
  v4 = *(v3 + 72);
  v5 = *(v2 + 84);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v2 + 84);
    v11 = *(v2 + 88);
    OUTLINED_FUNCTION_61();
    v12 = OUTLINED_FUNCTION_36();
    v9 = sub_26BCEC404(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_212();
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t SupportOption.subTypeString.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154(v0 + 32, v1);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD71E4@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.subTypeString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD7210(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.subTypeString.setter(v1, v2);
}

void SupportOption.subTypeString.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_307();
  v6 = OUTLINED_FUNCTION_58();
  v8 = *(v3 + v5);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_159(v8 + 32, v7);
  *(v8 + 32) = v4;
  *(v8 + 40) = v2;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.subTypeString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD7314()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    v6 = OUTLINED_FUNCTION_130();
    SupportOption.subTypeString.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCEC404(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191(v9 + 32);
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
  }

  free(v0);
}

double SupportOption.rank.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t SupportOption.rank.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for SupportOption(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v8 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_159(v7 + 48, v6);
  *(v7 + 48) = a1;
  return result;
}

uint64_t SupportOption.rank.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 48);
  *(v1 + 72) = *(v4 + 48);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD751C(uint64_t a1)
{
  OUTLINED_FUNCTION_186();
  v3 = *(v2 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_61();
    v10 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_212();
  *(v7 + 48) = v3;

  free(v1);
}

uint64_t SupportOption.callToActionTitle.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154(v0 + 56, v1);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD7600@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.callToActionTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD762C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.callToActionTitle.setter(v1, v2);
}

void SupportOption.callToActionTitle.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_307();
  v6 = OUTLINED_FUNCTION_58();
  v8 = *(v3 + v5);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_159(v8 + 56, v7);
  *(v8 + 56) = v4;
  *(v8 + 64) = v2;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.callToActionTitle.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 56);
  v6 = *(v5 + 64);
  *(v1 + 48) = *(v5 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD7730()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    v6 = OUTLINED_FUNCTION_130();
    SupportOption.callToActionTitle.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCEC404(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191(v9 + 56);
    *(v9 + 56) = v3;
    *(v9 + 64) = v2;
  }

  free(v0);
}

uint64_t SupportOption.isEligible.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 72, v3);
  return *(v2 + 72);
}

uint64_t sub_26BCD77FC@<X0>(_BYTE *a1@<X8>)
{
  result = SupportOption.isEligible.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SupportOption.isEligible.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_163();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 72, v5);
  *(v6 + 72) = a1 & 1;
  return result;
}

uint64_t SupportOption.isEligible.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127(v0 + 72);
  *(v1 + 84) = *(v0 + 72);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD791C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 72) = v3;

  free(v1);
}

uint64_t SupportOption.imageURLString.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154(v0 + 80, v1);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD79DC@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.imageURLString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD7A08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.imageURLString.setter(v1, v2);
}

void SupportOption.imageURLString.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_307();
  v6 = OUTLINED_FUNCTION_58();
  v8 = *(v3 + v5);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_159(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v2;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.imageURLString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 80);
  v6 = *(v5 + 88);
  *(v1 + 48) = *(v5 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD7B0C()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    v6 = OUTLINED_FUNCTION_130();
    SupportOption.imageURLString.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCEC404(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191(v9 + 80);
    *(v9 + 80) = v3;
    *(v9 + 88) = v2;
  }

  free(v0);
}

uint64_t SupportOption.isForPremiumAdvisor.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t sub_26BCD7BD8@<X0>(_BYTE *a1@<X8>)
{
  result = SupportOption.isForPremiumAdvisor.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SupportOption.isForPremiumAdvisor.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_163();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 96, v5);
  *(v6 + 96) = a1 & 1;
  return result;
}

uint64_t SupportOption.isForPremiumAdvisor.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127(v0 + 96);
  *(v1 + 84) = *(v0 + 96);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD7CF8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t SupportOption.isSerialRequired.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 97, v3);
  return *(v2 + 97);
}

uint64_t sub_26BCD7DB0@<X0>(_BYTE *a1@<X8>)
{
  result = SupportOption.isSerialRequired.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SupportOption.isSerialRequired.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_163();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 97, v5);
  *(v6 + 97) = a1 & 1;
  return result;
}

uint64_t SupportOption.isSerialRequired.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127(v0 + 97);
  *(v1 + 84) = *(v0 + 97);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD7ED0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 97) = v3;

  free(v1);
}

uint64_t SupportOption.localizedDescription.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154(v0 + 104, v1);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD7F90@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD7FBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.localizedDescription.setter(v1, v2);
}

void SupportOption.localizedDescription.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_307();
  v6 = OUTLINED_FUNCTION_58();
  v8 = *(v3 + v5);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_159(v8 + 104, v7);
  *(v8 + 104) = v4;
  *(v8 + 112) = v2;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.localizedDescription.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 104);
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD80C0()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    v6 = OUTLINED_FUNCTION_130();
    SupportOption.localizedDescription.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCEC404(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191(v9 + 104);
    *(v9 + 104) = v3;
    *(v9 + 112) = v2;
  }

  free(v0);
}

uint64_t SupportOption.localizedTitle.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154(v0 + 120, v1);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD8194@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD81C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.localizedTitle.setter(v1, v2);
}

void SupportOption.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_307();
  v6 = OUTLINED_FUNCTION_58();
  v8 = *(v3 + v5);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_159(v8 + 120, v7);
  *(v8 + 120) = v4;
  *(v8 + 128) = v2;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.localizedTitle.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 120);
  v6 = *(v5 + 128);
  *(v1 + 48) = *(v5 + 120);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD82C4()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    v6 = OUTLINED_FUNCTION_130();
    SupportOption.localizedTitle.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCEC404(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191(v9 + 120);
    *(v9 + 120) = v3;
    *(v9 + 128) = v2;
  }

  free(v0);
}

uint64_t SupportOption.localizedFooter.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154(v0 + 136, v1);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD8398@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedFooter.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD83C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.localizedFooter.setter(v1, v2);
}

void SupportOption.localizedFooter.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_307();
  v6 = OUTLINED_FUNCTION_58();
  v8 = *(v3 + v5);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_159(v8 + 136, v7);
  *(v8 + 136) = v4;
  *(v8 + 144) = v2;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.localizedFooter.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 136);
  v6 = *(v5 + 144);
  *(v1 + 48) = *(v5 + 136);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD84C8()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    v6 = OUTLINED_FUNCTION_130();
    SupportOption.localizedFooter.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCEC404(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191(v9 + 136);
    *(v9 + 136) = v3;
    *(v9 + 144) = v2;
  }

  free(v0);
}

void SupportOption.footerArticle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasFooterArticle.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearFooterArticle()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_232(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCEC404(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t SupportOption.applicationData.getter()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_230(*(v0 + v1) + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData, v5);
  v2 = OUTLINED_FUNCTION_259();
  sub_26BCFEFC4(v2, v3);
  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BCD8900@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.applicationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SupportOption.applicationData.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_307();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_58();
  v27 = *(v21 + v23);
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v28 = OUTLINED_FUNCTION_36();
    v29 = sub_26BCEC404(v28);
    OUTLINED_FUNCTION_219(v29);
  }

  v30 = (v27 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  OUTLINED_FUNCTION_235(v30, &a10);
  v31 = *v30;
  v32 = v30[1];
  *v30 = v22;
  v30[1] = v20;
  sub_26BCFF01C(v31, v32);
  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.applicationData.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  OUTLINED_FUNCTION_124();
  v4 = *v0;
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;
  sub_26BCFEFC4(v4, v5);
  return OUTLINED_FUNCTION_133();
}

void SupportOption.pricing.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasPricing.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearPricing()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_232(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCEC404(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t sub_26BCD8E60@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedDetails.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BCD8E8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOption.localizedDetails.setter(v1, v2);
}

uint64_t SupportOption.localizedDetails.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_32(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD8FC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_54();
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_282();
    v11 = OUTLINED_FUNCTION_130();
    v10(v11);
  }

  else
  {
    v12 = v7;
    v13 = v6;
    v14 = v5;
    v15 = *(v2 + 72);
    v16 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v15);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = *(v2 + 72);
      v20 = *(v2 + 64);
      v14(0);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v21 = OUTLINED_FUNCTION_36();
      v18 = v13(v21);
      *(v20 + v19) = v18;
    }

    v22 = (v18 + *v12);
    OUTLINED_FUNCTION_235(v22, v2 + 24);
    *v22 = v4;
    v22[1] = v3;
  }

  OUTLINED_FUNCTION_188();

  free(v23);
}

uint64_t sub_26BCD90A8@<X0>(_DWORD *a1@<X8>)
{
  result = SupportOption.displayStyle.getter();
  *a1 = result;
  return result;
}

uint64_t SupportOption.displayStyle.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  OUTLINED_FUNCTION_99();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26BCD91A4@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.eligibleProductIds.getter();
  *a1 = result;
  return result;
}

uint64_t SupportOption.eligibleProductIds.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_142(v4) + 56) = v1;
  OUTLINED_FUNCTION_39();
  *(v2 + 64) = v5;
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD9300(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_186();
  v8 = *(v7 + 48);
  if (v9)
  {
    v10 = v6;

    v10(v11);
  }

  else
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    v15 = *(v2 + 64);
    v16 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v15);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = *(v2 + 64);
      v20 = *(v2 + 56);
      v14(0);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v21 = OUTLINED_FUNCTION_36();
      v18 = v13(v21);
      *(v20 + v19) = v18;
    }

    v22 = *v12;
    OUTLINED_FUNCTION_191(v18 + v22);
    *(v18 + v22) = v8;
  }

  OUTLINED_FUNCTION_283();

  free(v23);
}

uint64_t sub_26BCD93F8()
{
  v2 = OUTLINED_FUNCTION_265();
  v4 = *(v1 + *(v3(v2) + 20));
  v5 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_154(v5, v6);
  return *(v4 + v0);
}

uint64_t sub_26BCD943C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = SupportOption.isEnabledInStoreDemoMode.getter(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_26BCD94DC()
{
  OUTLINED_FUNCTION_264();
  v4 = v0;
  v6 = v5;
  v8 = *(v7(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v10 = v2(v11);
    *(v4 + v8) = v10;
  }

  v12 = OUTLINED_FUNCTION_238();
  result = OUTLINED_FUNCTION_159(v12, v13);
  *(v10 + v1) = v6 & 1;
  return result;
}

uint64_t SupportOption.isEnabledInStoreDemoMode.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  v5 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  OUTLINED_FUNCTION_99();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD961C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_264();
  v6 = *v5;
  v7 = *(*v5 + 80);
  v8 = *(*v5 + 72);
  v9 = *(*v5 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 80);
    v13 = *(v6 + 72);
    v4(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_36();
    v11 = v3(v14);
    *(v13 + v12) = v11;
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_212();
  *(v11 + v2) = v9;
  OUTLINED_FUNCTION_188();

  free(v15);
}

uint64_t sub_26BCD96DC(uint64_t a1)
{
  OUTLINED_FUNCTION_19();
  v3 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_154(v3, v4);
  return *(v1 + a1);
}

uint64_t sub_26BCD9714@<X0>(_DWORD *a1@<X8>)
{
  result = SupportOption.alignment.getter();
  *a1 = result;
  return result;
}

void sub_26BCD9774(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_307();
  v4 = v3;
  v6 = v5;
  v7 = *(type metadata accessor for SupportOption(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v10 = OUTLINED_FUNCTION_36();
    v11 = sub_26BCEC404(v10);
    OUTLINED_FUNCTION_219(v11);
  }

  v12 = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_159(v12, v13);
  *(v9 + v4) = v6;
  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.alignment.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  OUTLINED_FUNCTION_99();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD9860(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_186();
  v6 = *(v5 + 80);
  v7 = *(v2 + 84);
  v8 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v2 + 84);
    v12 = *(v2 + 72);
    OUTLINED_FUNCTION_61();
    v13 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v13);
    *(v12 + v11) = v10;
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_212();
  *(v10 + v4) = v6;
  OUTLINED_FUNCTION_283();

  free(v14);
}

void SupportOption.deprecatedV3ProductCoverageSelectionDetails.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasDeprecatedV3ProductCoverageSelectionDetails.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearDeprecatedV3ProductCoverageSelectionDetails()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_232(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCEC404(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

void SupportOption.productCoverageSelectionDetails.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasProductCoverageSelectionDetails.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearProductCoverageSelectionDetails()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  if ((OUTLINED_FUNCTION_232(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v3 = OUTLINED_FUNCTION_36();
    v4 = sub_26BCEC404(v3);
    OUTLINED_FUNCTION_155(v4);
  }

  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v5);
  OUTLINED_FUNCTION_68();
  v6 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v6);
  swift_endAccess();
}

uint64_t SupportOption.details.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details, v1);
  v2 = OUTLINED_FUNCTION_234();
  return sub_26BD04E2C(v2);
}

uint64_t sub_26BCDA020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_26BD04E2C(a1);
  return SupportOption.details.setter(v4);
}

uint64_t SupportOption.details.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_134();
  v4 = OUTLINED_FUNCTION_232(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  OUTLINED_FUNCTION_236(v5 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details, v10);
  v8 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v8);
  return swift_endAccess();
}

void SupportOption.details.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_192();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_142(v4) + 48) = v1;
  v5 = OUTLINED_FUNCTION_173();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = *(v8 + 64);
  *(v2 + 56) = __swift_coroFrameAllocStub(v9);
  *(v2 + 64) = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_39();
  *(v2 + 72) = v10;
  v11 = *(v1 + v10);
  v12 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  OUTLINED_FUNCTION_127(v11 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details);
  sub_26BD04E2C(v11 + v12);
  OUTLINED_FUNCTION_283();
}

void sub_26BCDA224(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_261();
    sub_26BD04E2C(v5);
    SupportOption.details.setter(v4);
    v6 = OUTLINED_FUNCTION_122();
    sub_26BD04E80(v6, v7, &qword_26BDA1A58);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 72);
      v13 = *(v2 + 48);
      OUTLINED_FUNCTION_61();
      v14 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCEC404(v14);
      *(v13 + v12) = v11;
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_236(v11 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details, v2 + 24);
    sub_26BCFF2C8(v3);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t SupportOption.cin.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_6:
    OUTLINED_FUNCTION_168();
    v9 = type metadata accessor for SupportOption.CINDetails(0);
    OUTLINED_FUNCTION_255(v9);
    OUTLINED_FUNCTION_273();
    sub_26BDA0810();
    v10 = OUTLINED_FUNCTION_48();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_130();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_81();
  v15 = OUTLINED_FUNCTION_126();
  return sub_26BCFEE08(v15);
}

void SupportOption.cin.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.CINDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v14)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_170();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_81();
      v20 = OUTLINED_FUNCTION_173();
      sub_26BCFEE08(v20);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_214();
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  sub_26BDA0810();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
LABEL_7:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.c2C.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_80();
      v9 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_321(v11);
  sub_26BDA0810();
  v12 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t SupportOption.C2CDetails.init()(uint64_t a1)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_321(v1);
  sub_26BDA0810();
  v2 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void SupportOption.c2C.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.C2CDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v14[4] = 0;
    v14[5] = v18;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_80();
  v17 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v17);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.scb.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_79();
      v9 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_168();
  v11 = type metadata accessor for SupportOption.SCBDetails(0);
  OUTLINED_FUNCTION_255(v11);
  OUTLINED_FUNCTION_273();
  sub_26BDA0810();
  v12 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_26BCDAB28(uint64_t a1)
{
  OUTLINED_FUNCTION_168();
  v2 = v1(0);
  OUTLINED_FUNCTION_255(v2);
  OUTLINED_FUNCTION_273();
  sub_26BDA0810();
  v3 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOption.scb.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.SCBDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v14)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_214();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79();
  v16 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v16);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.phone.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_78();
      v9 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_82();
  v11 = type metadata accessor for SupportOption.PhoneDetails(0);
  return OUTLINED_FUNCTION_293(v11);
}

void SupportOption.phone.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.PhoneDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v14)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78();
  v16 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v16);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.c2Ch.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_77();
      v9 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_82();
  return OUTLINED_FUNCTION_301(v11);
}

void SupportOption.c2Ch.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.C2CHDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v14[4] = 0;
    v14[5] = v18;
    v14[6] = 0;
    v14[7] = v18;
    *(v14 + 64) = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_77();
  v17 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v17);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.bzcht.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_76();
      v9 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_82();
  return OUTLINED_FUNCTION_320(v11);
}

void SupportOption.bzcht.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.BZCHTDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v14[32] = 0;
    *(v14 + 5) = 0;
    *(v14 + 6) = v18;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_76();
  v17 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v17);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.eml.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      sub_26BDA0810();
      OUTLINED_FUNCTION_26();
      v9 = OUTLINED_FUNCTION_169();
      return v10(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  return sub_26BDA0800();
}

void SupportOption.eml.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v1);
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_21();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.bcs.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v8);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v9)
  {
    sub_26BD04E80(v2, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_75();
      v11 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v11);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v2);
  }

  OUTLINED_FUNCTION_82();
  *(a2 + 32) = 0;
  type metadata accessor for SupportOption.BCSDetails(0);
  v13 = OUTLINED_FUNCTION_298();
  type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(v13);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t SupportOption.BCSDetails.init()@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_82();
  *(a2 + 32) = 0;
  type metadata accessor for SupportOption.BCSDetails(0);
  v3 = OUTLINED_FUNCTION_298();
  type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(v3);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void SupportOption.bcs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.BCSDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v14[32] = 0;
    type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_75();
  v17 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v17);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.kb.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_74();
      v9 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_82();
  v11 = type metadata accessor for SupportOption.KBDetails(0);
  return OUTLINED_FUNCTION_293(v11);
}

uint64_t sub_26BCDBDD0(uint64_t a1)
{
  OUTLINED_FUNCTION_82();
  v2 = v1(0);
  return OUTLINED_FUNCTION_293(v2);
}

void SupportOption.kb.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.KBDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v14)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_74();
  v16 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v16);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.cas.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v8);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v9)
  {
    sub_26BD04E80(v2, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_73();
      v11 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v11);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v2);
  }

  OUTLINED_FUNCTION_168();
  *(a2 + 16) = MEMORY[0x277D84F90];
  v13 = type metadata accessor for SupportOption.CASDetails(0);
  return OUTLINED_FUNCTION_293(v13);
}

uint64_t SupportOption.CASDetails.init()@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_168();
  *(a2 + 16) = MEMORY[0x277D84F90];
  v3 = type metadata accessor for SupportOption.CASDetails(0);
  return OUTLINED_FUNCTION_293(v3);
}

void SupportOption.cas.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.CASDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_214();
    v14[2] = MEMORY[0x277D84F90];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_73();
  v17 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v17);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.ers.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      sub_26BDA0810();
      OUTLINED_FUNCTION_26();
      v9 = OUTLINED_FUNCTION_169();
      return v10(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  return sub_26BDA0800();
}

uint64_t sub_26BCDC3F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_22();
  v5 = *(type metadata accessor for SupportOption(v4) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v8 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v8);
    *(v1 + v5) = v7;
  }

  sub_26BDA0810();
  OUTLINED_FUNCTION_26();
  v9 = OUTLINED_FUNCTION_169();
  v10(v9);
  v11 = type metadata accessor for SupportOption.OneOf_Details(0);
  OUTLINED_FUNCTION_169();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_236(v7 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details, v17);
  v15 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v15);
  return swift_endAccess();
}

void SupportOption.ers.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v1);
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_21();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.smb.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      sub_26BDA0810();
      OUTLINED_FUNCTION_26();
      v9 = OUTLINED_FUNCTION_169();
      return v10(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  return sub_26BDA0800();
}

void SupportOption.smb.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v1);
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_21();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.maasp.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      sub_26BDA0810();
      OUTLINED_FUNCTION_26();
      v9 = OUTLINED_FUNCTION_169();
      return v10(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  return sub_26BDA0800();
}

void SupportOption.maasp.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v1);
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_21();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.contactOptions.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_72();
      v9 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for SupportOption.ContactOptionsDetails(0);
  sub_26BDA0810();
  v11 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_26BCDCD98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = *(type metadata accessor for SupportOption(v6) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v10 = OUTLINED_FUNCTION_36();
    v9 = sub_26BCEC404(v10);
    *(v3 + v7) = v9;
  }

  v11 = OUTLINED_FUNCTION_302();
  sub_26BCFEE08(v11);
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  OUTLINED_FUNCTION_169();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_236(v9 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details, &v17);
  v16 = OUTLINED_FUNCTION_143();
  sub_26BCFF2C8(v16);
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

uint64_t SupportOption.ContactOptionsDetails.init()(uint64_t a1)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for SupportOption.ContactOptionsDetails(0);
  sub_26BDA0810();
  v1 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void SupportOption.contactOptions.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  type metadata accessor for SupportOption.ContactOptionsDetails(v10);
  OUTLINED_FUNCTION_31();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_213(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v14)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_72();
  v16 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v16);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.mcr.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v7)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      sub_26BDA0810();
      OUTLINED_FUNCTION_26();
      v9 = OUTLINED_FUNCTION_169();
      return v10(v9);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
  }

  return sub_26BDA0800();
}

void SupportOption.mcr.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_144();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_47(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v10);
  *(v2 + 48) = v11;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_162(v13);
  *(v2 + 64) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v1);
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_21();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BCDD33C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 64);
  if (v8)
  {
    v9 = v5[5];
    v10 = v5[6];
    v11 = v5[4];
    v12 = OUTLINED_FUNCTION_262();
    v13(v12);
    v4(v6);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v11 = v5[4];
    v3(*(*v2 + 64));
  }

  free(v7);
  free(v6);
  free(v11);
  OUTLINED_FUNCTION_283();

  free(v14);
}

void static SupportOption.OneOf_Details.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_189();
  v192 = v23;
  v193 = v22;
  v24 = type metadata accessor for SupportOption.ContactOptionsDetails(0);
  v25 = OUTLINED_FUNCTION_110(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30();
  v178 = v26;
  v27 = OUTLINED_FUNCTION_176();
  v171[0] = type metadata accessor for SupportOption.CASDetails(v27);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_30();
  v180 = v29;
  v30 = OUTLINED_FUNCTION_176();
  v171[2] = type metadata accessor for SupportOption.KBDetails(v30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_30();
  v179 = v32;
  v33 = OUTLINED_FUNCTION_176();
  v34 = type metadata accessor for SupportOption.BCSDetails(v33);
  v35 = OUTLINED_FUNCTION_110(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30();
  v177 = v36;
  OUTLINED_FUNCTION_176();
  sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v190 = v37;
  v191 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_38();
  v176 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_193();
  v174 = v41;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_193();
  v173 = v43;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_193();
  v172 = v45;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_252();
  v48 = OUTLINED_FUNCTION_145(v47);
  v49 = type metadata accessor for SupportOption.BZCHTDetails(v48);
  v50 = OUTLINED_FUNCTION_110(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30();
  v52 = OUTLINED_FUNCTION_145(v51);
  v53 = type metadata accessor for SupportOption.C2CHDetails(v52);
  v54 = OUTLINED_FUNCTION_110(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_30();
  v56 = OUTLINED_FUNCTION_145(v55);
  v171[1] = type metadata accessor for SupportOption.PhoneDetails(v56);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_30();
  v175 = v58;
  v59 = OUTLINED_FUNCTION_176();
  v60 = type metadata accessor for SupportOption.SCBDetails(v59);
  v61 = OUTLINED_FUNCTION_110(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_30();
  v63 = OUTLINED_FUNCTION_145(v62);
  v64 = type metadata accessor for SupportOption.C2CDetails(v63);
  v65 = OUTLINED_FUNCTION_110(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_30();
  v67 = OUTLINED_FUNCTION_145(v66);
  v68 = type metadata accessor for SupportOption.CINDetails(v67);
  v69 = OUTLINED_FUNCTION_110(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_30();
  v71 = OUTLINED_FUNCTION_145(v70);
  v72 = type metadata accessor for SupportOption.OneOf_Details(v71);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_38();
  v186 = v74;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_193();
  v185 = v76;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_193();
  v184 = v78;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_193();
  v183 = v80;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_193();
  v182 = v82;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_193();
  v188 = v84;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_193();
  v189 = v86;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_193();
  v181 = v88;
  OUTLINED_FUNCTION_158();
  v90 = MEMORY[0x28223BE20](v89);
  v92 = v171 - v91;
  v93 = MEMORY[0x28223BE20](v90);
  v95 = v171 - v94;
  v96 = MEMORY[0x28223BE20](v93);
  v98 = v171 - v97;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_193();
  v187 = v99;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_263();
  v102 = MEMORY[0x28223BE20](v101);
  v104 = v171 - v103;
  MEMORY[0x28223BE20](v102);
  v106 = v171 - v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B8, &unk_26BDA1A60);
  OUTLINED_FUNCTION_110(v107);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_228();
  v110 = *(v109 + 56);
  sub_26BCFEE5C(v193);
  v193 = v110;
  sub_26BCFEE5C(v192);
  OUTLINED_FUNCTION_262();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v141 = OUTLINED_FUNCTION_2();
      sub_26BCFEE5C(v141);
      if (OUTLINED_FUNCTION_160() == 1)
      {
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_319(&v106[v20]);
        static SupportOption.C2CDetails.== infix(_:_:)(v104, v72);
        sub_26BCFEEB0(v72);
        v121 = v104;
        goto LABEL_43;
      }

      v113 = v104;
      goto LABEL_76;
    case 2u:
      v128 = OUTLINED_FUNCTION_2();
      sub_26BCFEE5C(v128);
      if (OUTLINED_FUNCTION_160() != 2)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_319(&v106[v20]);
      v129 = OUTLINED_FUNCTION_167();
      static SupportOption.SCBDetails.== infix(_:_:)(v129, v130);
      goto LABEL_42;
    case 3u:
      v131 = OUTLINED_FUNCTION_2();
      v21 = v187;
      sub_26BCFEE5C(v131);
      if (OUTLINED_FUNCTION_160() != 3)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_78();
      v124 = v175;
      sub_26BCFEE08(&v106[v20]);
      OUTLINED_FUNCTION_269();
      v134 = v127 && v132 == v133;
      if (v134 || (sub_26BDA0FB0() & 1) != 0)
      {
        v135 = *(v21 + 16) == *(v124 + 16) && *(v21 + 24) == *(v124 + 24);
        if (v135 || (sub_26BDA0FB0() & 1) != 0)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    case 4u:
      v119 = OUTLINED_FUNCTION_2();
      sub_26BCFEE5C(v119);
      if (OUTLINED_FUNCTION_160() == 4)
      {
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_319(&v106[v20]);
        v120 = OUTLINED_FUNCTION_281();
        static SupportOption.C2CHDetails.== infix(_:_:)(v120);
        sub_26BCFEEB0(v72);
        v121 = v98;
        goto LABEL_43;
      }

      v113 = v98;
      goto LABEL_76;
    case 5u:
      v142 = OUTLINED_FUNCTION_2();
      sub_26BCFEE5C(v142);
      if (OUTLINED_FUNCTION_160() == 5)
      {
        OUTLINED_FUNCTION_76();
        OUTLINED_FUNCTION_319(&v106[v20]);
        v143 = OUTLINED_FUNCTION_272();
        static SupportOption.BZCHTDetails.== infix(_:_:)(v143);
        sub_26BCFEEB0(v72);
        v121 = v95;
        goto LABEL_43;
      }

      v113 = v95;
      goto LABEL_76;
    case 6u:
      v147 = OUTLINED_FUNCTION_2();
      sub_26BCFEE5C(v147);
      if (OUTLINED_FUNCTION_160() == 6)
      {
        v149 = v190;
        v148 = v191;
        (*(v191 + 32))(v171[8], &v106[v20], v190);
        sub_26BDA07F0();
        v150 = *(v148 + 8);
        v151 = OUTLINED_FUNCTION_204();
        v150(v151);
        (v150)(v92, v149);
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_278();
      v158 = v92;
      goto LABEL_52;
    case 7u:
      v136 = OUTLINED_FUNCTION_2();
      v137 = v181;
      sub_26BCFEE5C(v136);
      if (OUTLINED_FUNCTION_160() == 7)
      {
        OUTLINED_FUNCTION_75();
        v138 = v177;
        sub_26BCFEE08(&v106[v20]);
        v139 = OUTLINED_FUNCTION_173();
        static SupportOption.BCSDetails.== infix(_:_:)(v139, v140);
        sub_26BCFEEB0(v138);
        v121 = v137;
        goto LABEL_43;
      }

      v113 = v137;
      goto LABEL_76;
    case 8u:
      v159 = OUTLINED_FUNCTION_2();
      v21 = v189;
      sub_26BCFEE5C(v159);
      if (OUTLINED_FUNCTION_160() != 8)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_74();
      v124 = v179;
      sub_26BCFEE08(&v106[v20]);
      OUTLINED_FUNCTION_269();
      v162 = v127 && v160 == v161;
      if (v162 || (sub_26BDA0FB0() & 1) != 0)
      {
        v163 = *(v21 + 16) == *(v124 + 16) && *(v21 + 24) == *(v124 + 24);
        if (v163 || (sub_26BDA0FB0() & 1) != 0)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    case 9u:
      v123 = OUTLINED_FUNCTION_2();
      v21 = v188;
      sub_26BCFEE5C(v123);
      if (OUTLINED_FUNCTION_160() != 9)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_73();
      v124 = v180;
      sub_26BCFEE08(&v106[v20]);
      OUTLINED_FUNCTION_269();
      v127 = v127 && v125 == v126;
      if (v127 || (sub_26BDA0FB0()) && (sub_26BCFF1F4(*(v21 + 16), *(v124 + 16)))
      {
LABEL_64:
        OUTLINED_FUNCTION_292();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(v164, v165, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_250();
      }

LABEL_65:
      sub_26BCFEEB0(v124);
      v166 = OUTLINED_FUNCTION_302();
      sub_26BCFEEB0(v166);
      OUTLINED_FUNCTION_0();
      sub_26BCFEEB0(v20);
      goto LABEL_78;
    case 0xAu:
      v152 = OUTLINED_FUNCTION_2();
      v115 = v182;
      sub_26BCFEE5C(v152);
      if (OUTLINED_FUNCTION_160() != 10)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_153();
      v117 = v172;
      goto LABEL_48;
    case 0xBu:
      v118 = OUTLINED_FUNCTION_2();
      v115 = v183;
      sub_26BCFEE5C(v118);
      if (OUTLINED_FUNCTION_160() != 11)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_153();
      v117 = v173;
      goto LABEL_48;
    case 0xCu:
      v122 = OUTLINED_FUNCTION_2();
      v115 = v184;
      sub_26BCFEE5C(v122);
      if (OUTLINED_FUNCTION_160() != 12)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_153();
      v117 = v174;
      goto LABEL_48;
    case 0xDu:
      v144 = OUTLINED_FUNCTION_2();
      v21 = v185;
      sub_26BCFEE5C(v144);
      if (OUTLINED_FUNCTION_160() != 13)
      {
LABEL_75:
        v113 = v21;
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_72();
      v72 = v178;
      sub_26BCFEE08(&v106[v20]);
      v145 = OUTLINED_FUNCTION_167();
      static SupportOption.ContactOptionsDetails.== infix(_:_:)(v145, v146);
LABEL_42:
      sub_26BCFEEB0(v72);
      v121 = v21;
LABEL_43:
      sub_26BCFEEB0(v121);
      goto LABEL_49;
    case 0xEu:
      v114 = OUTLINED_FUNCTION_2();
      v115 = v186;
      sub_26BCFEE5C(v114);
      if (OUTLINED_FUNCTION_160() != 14)
      {
LABEL_51:
        OUTLINED_FUNCTION_278();
        v158 = v115;
LABEL_52:
        v157(v158, v190);
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_153();
      v117 = v176;
LABEL_48:
      v153 = v190;
      v116(v117);
      sub_26BDA07F0();
      v154 = *(v72 + 8);
      v155 = OUTLINED_FUNCTION_204();
      v154(v155);
      (v154)(v115, v153);
LABEL_49:
      OUTLINED_FUNCTION_0();
      v156 = v20;
      goto LABEL_50;
    default:
      v111 = OUTLINED_FUNCTION_2();
      sub_26BCFEE5C(v111);
      v112 = v193;
      if (swift_getEnumCaseMultiPayload())
      {
        v113 = v106;
LABEL_76:
        sub_26BCFEEB0(v113);
LABEL_77:
        sub_26BD04E80(v20, &qword_2804490B8, &unk_26BDA1A60);
      }

      else
      {
        OUTLINED_FUNCTION_81();
        v167 = v171[3];
        sub_26BCFEE08(v20 + v112);
        v168 = OUTLINED_FUNCTION_275();
        static SupportOption.CINDetails.== infix(_:_:)(v168, v169);
        sub_26BCFEEB0(v167);
        v170 = OUTLINED_FUNCTION_128();
        sub_26BCFEEB0(v170);
        OUTLINED_FUNCTION_0();
        v156 = v20;
LABEL_50:
        sub_26BCFEEB0(v156);
      }

LABEL_78:
      OUTLINED_FUNCTION_225();
      OUTLINED_FUNCTION_188();
      return;
  }
}

void static SupportOption.C2CDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_90();
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v12);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_233();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v37 = v7;
  v36 = type metadata accessor for SupportOption.C2CDetails(0);
  v21 = *(v36 + 32);
  v22 = *(v16 + 48);
  OUTLINED_FUNCTION_291(v3 + v21);
  OUTLINED_FUNCTION_291(v2 + v21);
  OUTLINED_FUNCTION_28(v4);
  if (!v20)
  {
    v23 = OUTLINED_FUNCTION_131();
    sub_26BD04E2C(v23);
    OUTLINED_FUNCTION_28(v4 + v22);
    if (!v24)
    {
      v26 = v37;
      (*(v37 + 32))(v11, v4 + v22, v5);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v27, v28, MEMORY[0x277D215D8]);
      OUTLINED_FUNCTION_304();
      v29 = sub_26BDA0BB0();
      v30 = *(v26 + 8);
      v31 = OUTLINED_FUNCTION_222();
      v30(v31);
      (v30)(v15, v5);
      sub_26BD04E80(v4, &qword_280448F88, &qword_26BDA5440);
      if ((v29 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    (*(v37 + 8))(v15, v5);
LABEL_14:
    sub_26BD04E80(v4, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_28(v4 + v22);
  if (!v20)
  {
    goto LABEL_14;
  }

  sub_26BD04E80(v4, &qword_280448F88, &qword_26BDA5440);
LABEL_18:
  v32 = v3[2] == v2[2] && v3[3] == v2[3];
  if (v32 || (sub_26BDA0FB0() & 1) != 0)
  {
    v33 = v3[4] == v2[4] && v3[5] == v2[5];
    if (v33 || (sub_26BDA0FB0() & 1) != 0)
    {
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v34, v35, MEMORY[0x277D216D0]);
      v25 = OUTLINED_FUNCTION_308();
      goto LABEL_16;
    }
  }

LABEL_15:
  v25 = 0;
LABEL_16:
  OUTLINED_FUNCTION_258(v25);
  OUTLINED_FUNCTION_188();
}

uint64_t static SupportOption.C2CHDetails.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v10 && (sub_26BDA0FB0() & 1) == 0 || *(v2 + 64) != *(v1 + 64))
  {
    return 0;
  }

  type metadata accessor for SupportOption.C2CHDetails(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v12, v13, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t static SupportOption.BZCHTDetails.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  v10 = *(v2 + 40) == *(v1 + 40) && *(v2 + 48) == *(v1 + 48);
  if (!v10 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SupportOption.BZCHTDetails(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

void static SupportOption.BCSDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_184();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_150();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490E0, &qword_26BDA1A78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_233();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_221();
  v20 = v17 && v18 == v19;
  if (!v20 && (sub_26BDA0FB0() & 1) == 0 || *(v3 + 32) != *(v2 + 32))
  {
    goto LABEL_21;
  }

  v21 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v22 = *(v13 + 48);
  OUTLINED_FUNCTION_291(v3 + v21);
  OUTLINED_FUNCTION_291(v2 + v21);
  v23 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v23, v24, Step);
  if (v17)
  {
    OUTLINED_FUNCTION_112(v4 + v22, 1, Step);
    if (v17)
    {
      sub_26BD04E80(v4, &qword_2804490D8, &qword_26BDA1A70);
LABEL_24:
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v32, v33, MEMORY[0x277D216D0]);
      v27 = OUTLINED_FUNCTION_105();
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v25 = OUTLINED_FUNCTION_173();
  sub_26BD04E2C(v25);
  OUTLINED_FUNCTION_112(v4 + v22, 1, Step);
  if (v26)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v5);
LABEL_20:
    sub_26BD04E80(v4, &qword_2804490E0, &qword_26BDA1A78);
    goto LABEL_21;
  }

  sub_26BCFEE08(v4 + v22);
  v28 = OUTLINED_FUNCTION_216();
  static SupportOption.BCSDetails.OneOf_NextStep.== infix(_:_:)(v28, v29);
  v31 = v30;
  sub_26BCFEEB0(v10);
  sub_26BCFEEB0(v5);
  sub_26BD04E80(v4, &qword_2804490D8, &qword_26BDA1A70);
  if (v31)
  {
    goto LABEL_24;
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  OUTLINED_FUNCTION_258(v27);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCDE9F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_86(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t static SupportOption.CASDetails.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0 || (sub_26BCFF1F4(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SupportOption.CASDetails(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

void static SupportOption.ContactOptionsDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v5 = v4;
  v7 = v6;
  v8 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v30 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_121();
  v11 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_183();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780) - 8;
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  v15 = *(type metadata accessor for SupportOption.ContactOptionsDetails(0) + 20);
  v16 = *(v13 + 56);
  sub_26BD04E2C(v7 + v15);
  sub_26BD04E2C(v5 + v15);
  OUTLINED_FUNCTION_28(v3);
  if (v18)
  {
    OUTLINED_FUNCTION_28(v3 + v16);
    if (v18)
    {
      sub_26BD04E80(v3, &qword_280448F88, &qword_26BDA5440);
LABEL_12:
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v28, v29, MEMORY[0x277D216D0]);
      v21 = sub_26BDA0BB0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_256();
  sub_26BD04E2C(v17);
  OUTLINED_FUNCTION_28(v3 + v16);
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_239();
    v20(v19);
LABEL_9:
    sub_26BD04E80(v3, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_10;
  }

  (*(v30 + 32))(v2, v3 + v16, v8);
  OUTLINED_FUNCTION_3();
  sub_26BCFF280(v22, v23, MEMORY[0x277D215D8]);
  OUTLINED_FUNCTION_272();
  v24 = sub_26BDA0BB0();
  v25 = *(v30 + 8);
  v26 = OUTLINED_FUNCTION_170();
  v25(v26);
  v27 = OUTLINED_FUNCTION_239();
  v25(v27);
  sub_26BD04E80(v3, &qword_280448F88, &qword_26BDA5440);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_258(v21);
  OUTLINED_FUNCTION_188();
}

void SupportOption.CINDetails.localizedStoreSelectionDisclaimerHeader.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_187(v6);
  *(v1 + 16) = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.CINDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 24));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v6, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCDF004()
{
  OUTLINED_FUNCTION_177();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_183();
  v7 = v1(0);
  OUTLINED_FUNCTION_310(*(v7 + 24));
  v8 = v0(0);
  OUTLINED_FUNCTION_112(v2, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v11, v12, v13);
  return v10;
}

uint64_t sub_26BCDF0E8()
{
  OUTLINED_FUNCTION_177();
  v1(0);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v2, v3, v4);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t SupportOption.CINDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.CINDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.C2CDetails.countryItccList.getter()
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = type metadata accessor for SupportOption.C2CDetails(v7);
  OUTLINED_FUNCTION_108(*(v8 + 32));
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_8(v9);
  if (v10)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v10)
    {
      return sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_141();
    return v11();
  }

  return result;
}

uint64_t SupportOption.C2CDetails.countryItccList.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_134();
  v4 = type metadata accessor for SupportOption.C2CDetails(v3);
  sub_26BD04E80(v1 + *(v4 + 32), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_152();
  v5();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
}

void SupportOption.C2CDetails.countryItccList.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_187(v6);
  *(v1 + 16) = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.C2CDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 32));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v6, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

void sub_26BCDF4E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v3 = *(*v2 + 12);
  v4 = (*v2)[4];
  v5 = (*v2)[5];
  v6 = (*v2)[2];
  v7 = (*v2)[3];
  v9 = **v2;
  v8 = (*v2)[1];
  if (v10)
  {
    (*(v7 + 16))((*v2)[4], v5, v6);
    sub_26BD04E80(v9 + v3, &qword_280448F88, &qword_26BDA5440);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
    v14 = OUTLINED_FUNCTION_122();
    v15(v14);
  }

  else
  {
    sub_26BD04E80(v9 + v3, &qword_280448F88, &qword_26BDA5440);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  }

  free(v5);
  free(v4);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t SupportOption.C2CDetails.hasCountryItccList.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_128();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOption.C2CDetails(v6);
  OUTLINED_FUNCTION_139(v1 + *(v7 + 32));
  v8 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v8);
  return v1;
}

Swift::Void __swiftcall SupportOption.C2CDetails.clearCountryItccList()()
{
  v1 = type metadata accessor for SupportOption.C2CDetails(0);
  sub_26BD04E80(v0 + *(v1 + 32), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOption.C2CDetails.estimatedWaitTimeID.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SupportOption.C2CDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.C2CDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BCDF83C(uint64_t (*a1)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_256();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  a1(v8);
  OUTLINED_FUNCTION_261();
  sub_26BD04E2C(v9);
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v11)
    {
      return sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_141();
    return v12();
  }

  return result;
}

uint64_t sub_26BCDF98C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_134();
  v5 = v4(v3);
  sub_26BD04E80(v1 + *(v5 + 24), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_152();
  v6();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
}

void SupportOption.SCBDetails.countryItccList.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_187(v6);
  *(v1 + 16) = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.SCBDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 24));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v6, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCDFBF0()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BCDFC78(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  sub_26BDA0850();
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_234();

  return v4(v3);
}

uint64_t SupportOption.SCBDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.SCBDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.PhoneDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.PhoneDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.C2CHDetails.estimatedWaitTimeID.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SupportOption.C2CHDetails.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for SupportOption.C2CHDetails(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t SupportOption.C2CHDetails.unknownFields.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.C2CHDetails(v1);
  sub_26BDA0850();
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t SupportOption.C2CHDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.C2CHDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.BZCHTDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.BZCHTDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.BCSDetails.bcsType.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SupportOption.BCSDetails.nextStep.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.BCSDetails(v2);
  return sub_26BCFF2C8(v1);
}

uint64_t SupportOption.BCSDetails.nextStep.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.BCSDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.BCSDetails.callToAction.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOption.BCSDetails(v6);
  OUTLINED_FUNCTION_108(*(v7 + 28));
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v9)
  {
    sub_26BD04E80(v1, &qword_2804490D8, &qword_26BDA1A70);
    return sub_26BDA0800();
  }

  OUTLINED_FUNCTION_130();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v1);
    return sub_26BDA0800();
  }

  sub_26BDA0810();
  OUTLINED_FUNCTION_26();
  v12 = OUTLINED_FUNCTION_169();
  return v13(v12);
}

void SupportOption.BCSDetails.callToAction.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_118(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_241(v7);
  OUTLINED_FUNCTION_18();
  *(v2 + 24) = v8;
  v10 = *(v9 + 64);
  *(v2 + 32) = __swift_coroFrameAllocStub(v10);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_140();
  *(v2 + 56) = v11;
  OUTLINED_FUNCTION_135(v11);
  *(v2 + 48) = OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_28(v1);
  if (v12)
  {
    sub_26BD04E80(v1, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_222();
    if (!swift_getEnumCaseMultiPayload())
    {
      v14 = OUTLINED_FUNCTION_21();
      v15(v14);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v1);
  }

  sub_26BDA0800();
LABEL_7:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.BCSDetails.diagnosticsConsideration.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOption.BCSDetails(v6);
  OUTLINED_FUNCTION_108(*(v7 + 28));
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v9)
  {
    sub_26BD04E80(v1, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BDA0810();
      OUTLINED_FUNCTION_26();
      v11 = OUTLINED_FUNCTION_169();
      return v12(v11);
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v1);
  }

  return sub_26BDA0800();
}

uint64_t sub_26BCE0624()
{
  v2 = OUTLINED_FUNCTION_181();
  v3 = *(type metadata accessor for SupportOption.BCSDetails(v2) + 28);
  sub_26BD04E80(v0 + v3, &qword_2804490D8, &qword_26BDA1A70);
  sub_26BDA0810();
  OUTLINED_FUNCTION_26();
  (*(v4 + 32))(v0 + v3, v1);
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, Step);
}

void SupportOption.BCSDetails.diagnosticsConsideration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_118(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_241(v7);
  OUTLINED_FUNCTION_18();
  *(v2 + 24) = v8;
  v10 = *(v9 + 64);
  *(v2 + 32) = __swift_coroFrameAllocStub(v10);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_140();
  *(v2 + 56) = v11;
  OUTLINED_FUNCTION_135(v11);
  *(v2 + 48) = OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_28(v1);
  if (v12)
  {
    sub_26BD04E80(v1, &qword_2804490D8, &qword_26BDA1A70);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BCE0844(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v3 = (*v2)[5];
  v4 = (*v2)[6];
  v5 = *(*v2 + 14);
  v7 = (*v2)[3];
  v6 = (*v2)[4];
  v8 = (*v2)[1];
  v9 = (*v2)[2];
  v10 = **v2;
  if (v11)
  {
    (*(v7 + 16))((*v2)[4], v3, v9);
    sub_26BD04E80(v10 + v5, &qword_2804490D8, &qword_26BDA1A70);
    (*(v7 + 32))(v10 + v5, v6, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
    (*(v7 + 8))(v3, v9);
  }

  else
  {
    sub_26BD04E80(v10 + v5, &qword_2804490D8, &qword_26BDA1A70);
    (*(v7 + 32))(v10 + v5, v3, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }

  free(v3);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_188();

  free(v18);
}

uint64_t SupportOption.BCSDetails.triggerSolution.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOption.BCSDetails(v6);
  OUTLINED_FUNCTION_108(*(v7 + 28));
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v9)
  {
    sub_26BD04E80(v1, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_15();
      v11 = OUTLINED_FUNCTION_126();
      return sub_26BCFEE08(v11);
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v1);
  }

  OUTLINED_FUNCTION_168();
  v13 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  OUTLINED_FUNCTION_255(v13);
  OUTLINED_FUNCTION_273();
  sub_26BDA0810();
  v14 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t SupportOption.BCSDetails.triggerSolution.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for SupportOption.BCSDetails(v2);
  sub_26BD04E80(v1 + *(v3 + 28), &qword_2804490D8, &qword_26BDA1A70);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_143();
  sub_26BCFEE08(v4);
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_234();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, Step);
}

void SupportOption.BCSDetails.triggerSolution.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_277();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_59(v4);
  v5 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  type metadata accessor for SupportOption.BCSDetails.TriggerSolution(v8);
  OUTLINED_FUNCTION_31();
  v10 = *(v9 + 64);
  *(v2 + 16) = __swift_coroFrameAllocStub(v10);
  *(v2 + 24) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_140();
  *(v2 + 40) = v11;
  sub_26BD04E2C(v1 + v11);
  v12 = OUTLINED_FUNCTION_316();
  v13 = OUTLINED_FUNCTION_257(v12);
  OUTLINED_FUNCTION_28(v13);
  if (v14)
  {
    sub_26BD04E80(v7, &qword_2804490D8, &qword_26BDA1A70);
LABEL_7:
    OUTLINED_FUNCTION_214();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v7);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_15();
  v16 = OUTLINED_FUNCTION_173();
  sub_26BCFEE08(v16);
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_283();
}

void sub_26BCE0D00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v3 = (*v2)[3];
  v4 = *(*v2 + 10);
  v5 = (*v2)[1];
  v6 = (*v2)[2];
  v7 = **v2;
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_130();
    sub_26BCFEE5C(v9);
    sub_26BD04E80(v7 + v4, &qword_2804490D8, &qword_26BDA1A70);
    OUTLINED_FUNCTION_15();
    sub_26BCFEE08(v6);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_205();
    sub_26BCFEEB0(v3);
  }

  else
  {
    sub_26BD04E80(v7 + v4, &qword_2804490D8, &qword_26BDA1A70);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_314();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_120();
  }

  free(v3);
  free(v6);
  free(v5);
  OUTLINED_FUNCTION_283();

  free(v10);
}

uint64_t SupportOption.BCSDetails.adaptiveContent.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOption.BCSDetails(v6);
  OUTLINED_FUNCTION_108(*(v7 + 28));
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v9)
  {
    sub_26BD04E80(v1, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      sub_26BDA0810();
      OUTLINED_FUNCTION_26();
      v11 = OUTLINED_FUNCTION_169();
      return v12(v11);
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v1);
  }

  return sub_26BDA0800();
}

void SupportOption.BCSDetails.adaptiveContent.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_118(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_241(v7);
  OUTLINED_FUNCTION_18();
  *(v2 + 24) = v8;
  v10 = *(v9 + 64);
  *(v2 + 32) = __swift_coroFrameAllocStub(v10);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_140();
  *(v2 + 56) = v11;
  OUTLINED_FUNCTION_135(v11);
  *(v2 + 48) = OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_28(v1);
  if (v12)
  {
    sub_26BD04E80(v1, &qword_2804490D8, &qword_26BDA1A70);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0(v1);
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCE10D4()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BCE115C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  sub_26BDA0850();
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_234();

  return v4(v3);
}

uint64_t SupportOption.BCSDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.BCSDetails(v1);
  return OUTLINED_FUNCTION_185();
}

void static SupportOption.BCSDetails.OneOf_NextStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v58 = v3;
  v59 = v4;
  v5 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  v6 = OUTLINED_FUNCTION_110(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30();
  v55 = v7;
  OUTLINED_FUNCTION_176();
  sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v56 = v9;
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_38();
  v54 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_263();
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_57();
  v18 = (v16 - v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v54 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490E8, &qword_26BDA1A80);
  OUTLINED_FUNCTION_110(v28);
  OUTLINED_FUNCTION_111();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v54 - v31;
  v33 = *(v30 + 56);
  sub_26BCFEE5C(v58);
  sub_26BCFEE5C(v59);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = OUTLINED_FUNCTION_35();
      sub_26BCFEE5C(v47);
      if (OUTLINED_FUNCTION_311() == 1)
      {
        v48 = v56;
        (*(v56 + 32))(v2, &v32[v33], v57);
        OUTLINED_FUNCTION_122();
        sub_26BDA07F0();
        v49 = *(v48 + 8);
        v50 = OUTLINED_FUNCTION_167();
        v49(v50);
        v51 = OUTLINED_FUNCTION_262();
        v49(v51);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_278();
      v36 = v25;
      goto LABEL_13;
    case 2u:
      v37 = OUTLINED_FUNCTION_35();
      sub_26BCFEE5C(v37);
      if (OUTLINED_FUNCTION_311() == 2)
      {
        OUTLINED_FUNCTION_15();
        v38 = &v32[v33];
        v39 = v55;
        sub_26BCFEE08(v38);
        v40 = OUTLINED_FUNCTION_169();
        static SupportOption.BCSDetails.TriggerSolution.== infix(_:_:)(v40, v41);
        sub_26BCFEEB0(v39);
        v42 = OUTLINED_FUNCTION_128();
        sub_26BCFEEB0(v42);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_205();
      sub_26BCFEEB0(v22);
      goto LABEL_14;
    case 3u:
      v43 = OUTLINED_FUNCTION_35();
      sub_26BCFEE5C(v43);
      if (OUTLINED_FUNCTION_311() == 3)
      {
        OUTLINED_FUNCTION_299();
        v44(v54);
        OUTLINED_FUNCTION_281();
        sub_26BDA07F0();
        v45 = *(v2 + 8);
        v46 = OUTLINED_FUNCTION_130();
        v45(v46);
        (v45)(v18, v25);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_278();
      v36 = v18;
      goto LABEL_13;
    default:
      v34 = OUTLINED_FUNCTION_35();
      sub_26BCFEE5C(v34);
      if (OUTLINED_FUNCTION_311())
      {
        OUTLINED_FUNCTION_278();
        v36 = v27;
LABEL_13:
        v35(v36, v57);
LABEL_14:
        sub_26BD04E80(v32, &qword_2804490E8, &qword_26BDA1A80);
      }

      else
      {
        OUTLINED_FUNCTION_299();
        v52(v14);
        sub_26BDA07F0();
        v53 = *(v2 + 8);
        v53(v14, v25);
        v53(v27, v25);
LABEL_17:
        OUTLINED_FUNCTION_4();
        sub_26BCFEEB0(v32);
      }

      OUTLINED_FUNCTION_188();
      return;
  }
}

void sub_26BCE1684(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v7 = v6;
  OUTLINED_FUNCTION_90();
  v8 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_121();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v12);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_183();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_233();
  v18 = v18 && v16 == v17;
  if (!v18 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = *(v7(0) + 24);
  v20 = *(v14 + 48);
  OUTLINED_FUNCTION_291(v3 + v19);
  OUTLINED_FUNCTION_291(v2 + v19);
  OUTLINED_FUNCTION_28(v5);
  if (v18)
  {
    OUTLINED_FUNCTION_28(v5 + v20);
    if (v18)
    {
      sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
LABEL_17:
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v32, v33, MEMORY[0x277D216D0]);
      v25 = OUTLINED_FUNCTION_308();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v21 = OUTLINED_FUNCTION_256();
  sub_26BD04E2C(v21);
  OUTLINED_FUNCTION_28(v5 + v20);
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_239();
    v24(v23);
LABEL_14:
    sub_26BD04E80(v5, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_15;
  }

  (*(v10 + 32))(v4, v5 + v20, v8);
  OUTLINED_FUNCTION_3();
  sub_26BCFF280(v26, v27, MEMORY[0x277D215D8]);
  OUTLINED_FUNCTION_272();
  v28 = sub_26BDA0BB0();
  v29 = *(v10 + 8);
  v30 = OUTLINED_FUNCTION_170();
  v29(v30);
  v31 = OUTLINED_FUNCTION_239();
  v29(v31);
  sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
  if (v28)
  {
    goto LABEL_17;
  }

LABEL_15:
  v25 = 0;
LABEL_18:
  OUTLINED_FUNCTION_258(v25);
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.BCSDetails.TriggerSolution.serialNumberCollectionTitle.setter()
{
  OUTLINED_FUNCTION_171();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void SupportOption.BCSDetails.TriggerSolution.serialNumberCollectionMyDevicesFooter.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_187(v6);
  *(v1 + 16) = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(v12);
  OUTLINED_FUNCTION_125(*(v13 + 24));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v6, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.BCSDetails.TriggerSolution.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.BCSDetails.TriggerSolution(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BCE1CC8()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BCE1D50(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  sub_26BDA0850();
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_234();

  return v4(v3);
}

uint64_t SupportOption.KBDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.KBDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.CASDetails.supportedLanguageCodes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SupportOption.CASDetails.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOption.CASDetails(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.ContactOptionsDetails.flow.getter()
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = type metadata accessor for SupportOption.ContactOptionsDetails(v7);
  OUTLINED_FUNCTION_108(*(v8 + 20));
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_8(v9);
  if (v10)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v10)
    {
      return sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_141();
    return v11();
  }

  return result;
}

uint64_t sub_26BCE1FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_181();
  sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_121();
  v8 = OUTLINED_FUNCTION_130();
  v9(v8);
  return a5(v5);
}

uint64_t SupportOption.ContactOptionsDetails.flow.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_134();
  v4 = type metadata accessor for SupportOption.ContactOptionsDetails(v3);
  sub_26BD04E80(v1 + *(v4 + 20), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_152();
  v5();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
}

void SupportOption.ContactOptionsDetails.flow.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_187(v6);
  *(v1 + 16) = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  *(v1 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.ContactOptionsDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 20));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v6, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCE22B8()
{
  OUTLINED_FUNCTION_177();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_183();
  v7 = v1(0);
  OUTLINED_FUNCTION_310(*(v7 + 20));
  v8 = v0(0);
  OUTLINED_FUNCTION_112(v2, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v11, v12, v13);
  return v10;
}

uint64_t sub_26BCE239C()
{
  OUTLINED_FUNCTION_177();
  v1(0);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v2, v3, v4);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t _s15SupportServices0A6OptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  OUTLINED_FUNCTION_217();
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_147();

  return v1(v0);
}

uint64_t _s15SupportServices0A6OptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  OUTLINED_FUNCTION_134();
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_259();

  return v2(v1);
}

uint64_t sub_26BCE251C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_130();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t ContactSupportOptions.chatSupportOption.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  v9 = type metadata accessor for ContactSupportOptions(v8);
  OUTLINED_FUNCTION_108(*(v9 + 44));
  v10 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v12 = dword_280449104;
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55(&qword_280448B30);
    }

    *(a2 + v12) = qword_280448B38;
    v13 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v13, v14);
    if (a2 != 1)
    {
      return sub_26BD04E80(v2, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    v15 = OUTLINED_FUNCTION_126();
    return sub_26BCFEE08(v15);
  }

  return result;
}

uint64_t ContactSupportOptions.chatSupportOption.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for ContactSupportOptions(v2);
  sub_26BD04E80(v1 + *(v3 + 44), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_143();
  sub_26BCFEE08(v4);
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void ContactSupportOptions.chatSupportOption.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_277();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_59(v5);
  v6 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_118(v8);
  v10 = type metadata accessor for SupportOption(v9);
  OUTLINED_FUNCTION_241(v10);
  OUTLINED_FUNCTION_34();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  v17 = *(type metadata accessor for ContactSupportOptions(v16) + 44);
  *(v3 + 40) = v17;
  OUTLINED_FUNCTION_135(v17);
  OUTLINED_FUNCTION_9();
  if (v18)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v19 = *(v1 + 20);
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55(&qword_280448B30);
    }

    *(v12 + v19) = qword_280448B38;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v1 != 1)
    {
      sub_26BD04E80(v2, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    v20 = OUTLINED_FUNCTION_216();
    sub_26BCFEE08(v20);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t ContactSupportOptions.hasChatSupportOption.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_128();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for ContactSupportOptions(v6);
  OUTLINED_FUNCTION_139(v1 + *(v7 + 44));
  v8 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_13(v8);
  return v1;
}

Swift::Void __swiftcall ContactSupportOptions.clearChatSupportOption()()
{
  v1 = type metadata accessor for ContactSupportOptions(0);
  sub_26BD04E80(v0 + *(v1 + 44), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ContactSupportOptions.contactAppleSupportOption.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  v9 = type metadata accessor for ContactSupportOptions(v8);
  OUTLINED_FUNCTION_108(*(v9 + 48));
  v10 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v12 = dword_280449104;
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55(&qword_280448B30);
    }

    *(a2 + v12) = qword_280448B38;
    v13 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v13, v14);
    if (a2 != 1)
    {
      return sub_26BD04E80(v2, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    v15 = OUTLINED_FUNCTION_126();
    return sub_26BCFEE08(v15);
  }

  return result;
}

uint64_t ContactSupportOptions.contactAppleSupportOption.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for ContactSupportOptions(v2);
  sub_26BD04E80(v1 + *(v3 + 48), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_143();
  sub_26BCFEE08(v4);
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void ContactSupportOptions.contactAppleSupportOption.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_277();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_59(v5);
  v6 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_118(v8);
  v10 = type metadata accessor for SupportOption(v9);
  OUTLINED_FUNCTION_241(v10);
  OUTLINED_FUNCTION_34();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  v17 = *(type metadata accessor for ContactSupportOptions(v16) + 48);
  *(v3 + 40) = v17;
  OUTLINED_FUNCTION_135(v17);
  OUTLINED_FUNCTION_9();
  if (v18)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v19 = *(v1 + 20);
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55(&qword_280448B30);
    }

    *(v12 + v19) = qword_280448B38;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v1 != 1)
    {
      sub_26BD04E80(v2, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    v20 = OUTLINED_FUNCTION_216();
    sub_26BCFEE08(v20);
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCE2CD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_179();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_170();
    sub_26BCFEE5C(v8);
    sub_26BD04E80(v6 + v5, &qword_2804490F0, &qword_26BDA1A88);
    OUTLINED_FUNCTION_5();
    sub_26BCFEE08(v2);
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_25();
    sub_26BCFEEB0(v4);
  }

  else
  {
    sub_26BD04E80(v6 + v5, &qword_2804490F0, &qword_26BDA1A88);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_120();
  }

  free(v4);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v9);
}

uint64_t ContactSupportOptions.hasContactAppleSupportOption.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_128();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for ContactSupportOptions(v6);
  OUTLINED_FUNCTION_139(v1 + *(v7 + 48));
  v8 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_13(v8);
  return v1;
}

Swift::Void __swiftcall ContactSupportOptions.clearContactAppleSupportOption()()
{
  v1 = type metadata accessor for ContactSupportOptions(0);
  sub_26BD04E80(v0 + *(v1 + 48), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ContactSupportOptions.locale.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ContactSupportOptions.localizedLanguageDetailInfo.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ContactSupportOptions.otherSupportOptions.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ContactSupportOptions.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for ContactSupportOptions(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t ContactSupportOptions.unknownFields.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for ContactSupportOptions(v1);
  sub_26BDA0850();
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t ContactSupportOptions.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for ContactSupportOptions(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t ArticleSupportOptions.articles.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_26BCE31EC()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  OUTLINED_FUNCTION_298();
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BCE3270(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_298();
  sub_26BDA0850();
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_234();

  return v4(v3);
}

uint64_t ArticleSupportOptions.unknownFields.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for ArticleSupportOptions(v1);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BCE3330()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448AC8);
  __swift_project_value_buffer(v0, qword_280448AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "case_meta_data";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_context";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void AllSolutionsRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    v4 = sub_26BDA0900();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      type metadata accessor for AllSolutionsRequest(0);
      type metadata accessor for TriageRequest.ClientContext(0);
      OUTLINED_FUNCTION_197();
      v7 = &protocol conformance descriptor for TriageRequest.ClientContext;
      v8 = &qword_2804490F8;
LABEL_8:
      sub_26BCFF280(v8, v6, v7);
      sub_26BDA09B0();
    }

    else if (v4 == 1)
    {
      type metadata accessor for AllSolutionsRequest(0);
      type metadata accessor for TriageRequest.CaseMetaData(0);
      OUTLINED_FUNCTION_198();
      v7 = &protocol conformance descriptor for TriageRequest.CaseMetaData;
      v8 = &unk_280449100;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void AllSolutionsRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_246();
  v17 = v14;
  v48 = v18;
  v49 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v20);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_229();
  v46 = type metadata accessor for TriageRequest.ClientContext(v22);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_30();
  v45 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_110(v25);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - v27;
  v29 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_44();
  v33 = v32 - v31;
  v34 = type metadata accessor for AllSolutionsRequest(0);
  v35 = *(v34 + 20);
  v47 = v17;
  sub_26BD04E2C(v17 + v35);
  OUTLINED_FUNCTION_112(v28, 1, v29);
  if (v36)
  {
    sub_26BD04E80(v28, &qword_280448F68, &qword_26BDA1A30);
  }

  else
  {
    OUTLINED_FUNCTION_12();
    sub_26BCFEE08(v28);
    OUTLINED_FUNCTION_198();
    sub_26BCFF280(v37, v38, &protocol conformance descriptor for TriageRequest.CaseMetaData);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_85();
    sub_26BCFEEB0(v33);
    if (v15)
    {
      goto LABEL_10;
    }
  }

  sub_26BD04E2C(v47 + *(v34 + 24));
  v39 = OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_112(v39, v40, v46);
  if (v36)
  {
    sub_26BD04E80(v16, &qword_280448F70, &qword_26BDA1A38);
LABEL_9:
    sub_26BDA0830();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11();
  v41 = v45;
  sub_26BCFEE08(v16);
  OUTLINED_FUNCTION_197();
  sub_26BCFF280(v42, v43, &protocol conformance descriptor for TriageRequest.ClientContext);
  OUTLINED_FUNCTION_304();
  sub_26BDA0AD0();
  OUTLINED_FUNCTION_84();
  sub_26BCFEEB0(v41);
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static AllSolutionsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_181();
  v59 = type metadata accessor for TriageRequest.ClientContext(v7);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30();
  v55 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_280();
  v56 = v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449108, &unk_26BDA5490);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_280();
  v60 = v14;
  v15 = OUTLINED_FUNCTION_176();
  v16 = type metadata accessor for TriageRequest.CaseMetaData(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  v18 = OUTLINED_FUNCTION_256();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_110(v20);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449110, &unk_26BDA1AB0) - 8;
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_229();
  v57 = type metadata accessor for AllSolutionsRequest(v26);
  v27 = *(v57 + 20);
  v28 = *(v24 + 56);
  v61 = v2;
  sub_26BD04E2C(v2 + v27);
  sub_26BD04E2C(v6 + v27);
  OUTLINED_FUNCTION_28(v3);
  if (v29)
  {
    OUTLINED_FUNCTION_28(v3 + v28);
    if (v29)
    {
      sub_26BD04E80(v3, &qword_280448F68, &qword_26BDA1A30);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_26BD04E2C(v3);
  OUTLINED_FUNCTION_28(v3 + v28);
  if (v29)
  {
    OUTLINED_FUNCTION_85();
    sub_26BCFEEB0(v23);
LABEL_9:
    v30 = &qword_280449110;
    v31 = &unk_26BDA1AB0;
LABEL_10:
    v32 = v3;
LABEL_24:
    sub_26BD04E80(v32, v30, v31);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_12();
  sub_26BCFEE08(v3 + v28);
  if (*&v23[*(v16 + 20)] != *(v4 + *(v16 + 20)))
  {

    sub_26BD631C8();
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      sub_26BCFEEB0(v4);
      v53 = OUTLINED_FUNCTION_147();
      sub_26BCFEEB0(v53);
      v30 = &qword_280448F68;
      v31 = &qword_26BDA1A30;
      goto LABEL_10;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v35, v36, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_157();
  v37 = sub_26BDA0BB0();
  sub_26BCFEEB0(v4);
  v38 = OUTLINED_FUNCTION_275();
  sub_26BCFEEB0(v38);
  sub_26BD04E80(v3, &qword_280448F68, &qword_26BDA1A30);
  if ((v37 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v39 = *(v57 + 24);
  v40 = *(v58 + 48);
  v41 = v60;
  OUTLINED_FUNCTION_313(v61 + v39);
  OUTLINED_FUNCTION_313(v6 + v39);
  v42 = v59;
  OUTLINED_FUNCTION_112(v41, 1, v59);
  if (v29)
  {
    OUTLINED_FUNCTION_106(v41 + v40);
    if (v29)
    {
      sub_26BD04E80(v41, &qword_280448F70, &qword_26BDA1A38);
LABEL_30:
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v51, v52, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_279();
      v45 = sub_26BDA0BB0();
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v43 = v56;
  sub_26BD04E2C(v41);
  OUTLINED_FUNCTION_106(v41 + v40);
  if (v44)
  {
    OUTLINED_FUNCTION_84();
    sub_26BCFEEB0(v43);
LABEL_22:
    v30 = &qword_280449108;
    v31 = &unk_26BDA5490;
LABEL_23:
    v32 = v41;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_11();
  v46 = v55;
  sub_26BCFEE08(v41 + v40);
  if (*(v43 + *(v42 + 20)) != *(v46 + *(v42 + 20)))
  {

    OUTLINED_FUNCTION_147();
    v47 = sub_26BD67C6C();

    if (!v47)
    {
      sub_26BCFEEB0(v46);
      sub_26BCFEEB0(v43);
      v30 = &qword_280448F70;
      v31 = &qword_26BDA1A38;
      goto LABEL_23;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v48, v49, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_304();
  v50 = sub_26BDA0BB0();
  sub_26BCFEEB0(v46);
  sub_26BCFEEB0(v43);
  sub_26BD04E80(v41, &qword_280448F70, &qword_26BDA1A38);
  if (v50)
  {
    goto LABEL_30;
  }

LABEL_25:
  v45 = 0;
LABEL_26:
  OUTLINED_FUNCTION_258(v45);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCE3F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_2804495B0, type metadata accessor for AllSolutionsRequest, &protocol conformance descriptor for AllSolutionsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCE4020(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804491B8, type metadata accessor for AllSolutionsRequest, &protocol conformance descriptor for AllSolutionsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCE4090(uint64_t a1, uint64_t a2)
{
  sub_26BCFF280(&qword_2804491B8, type metadata accessor for AllSolutionsRequest, &protocol conformance descriptor for AllSolutionsRequest);

  return sub_26BDA0A00();
}

uint64_t sub_26BCE412C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448AE8);
  __swift_project_value_buffer(v0, qword_280448AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26BDA19A0;
  v4 = v62 + v3 + v1[14];
  *(v62 + v3) = 1;
  *v4 = "support_options";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  *(v4 + 24) = "solutions";
  *(v4 + 32) = 9;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x277D21878];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v62 + v3 + v2 + v1[14];
  *(v62 + v3 + v2) = 2;
  *v8 = "contact_support_options";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  *(v8 + 24) = "contactSolutions";
  *(v8 + 32) = 16;
  *(v8 + 40) = 2;
  v7();
  v9 = (v62 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hero_article";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v62 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "hero_video";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v62 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "popular_articles";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v62 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "quick_answer_articles";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v62 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "video_articles";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v62 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "reporting_context";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = v1[14];
  v22 = (v62 + v3 + 8 * v2);
  *v22 = 9;
  v23 = v22 + v21;
  *v23 = "empty_resources";
  *(v23 + 1) = 15;
  v23[16] = 2;
  *(v23 + 3) = "noSolutionsResources";
  *(v23 + 4) = 20;
  v23[40] = 2;
  v7();
  v24 = (v62 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "localized_solutions_info";
  *(v25 + 1) = 24;
  v25[16] = 2;
  v7();
  v26 = v1[14];
  v27 = (v62 + v3 + 10 * v2);
  *v27 = 11;
  v28 = v27 + v26;
  *v28 = "not_available_resources";
  *(v28 + 1) = 23;
  v28[16] = 2;
  *(v28 + 3) = "solutionNotAvailableResources";
  *(v28 + 4) = 29;
  v28[40] = 2;
  v7();
  v29 = (v62 + v3 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "battery_resources";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v7();
  v31 = (v62 + v3 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "is_battery_related";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v62 + v3 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "coverage_resources";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v62 + v3 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "recommended_support_options_header";
  *(v36 + 1) = 34;
  v36[16] = 2;
  v7();
  v37 = (v62 + v3 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "recommended_support_options_header_linked_content";
  *(v38 + 1) = 49;
  v38[16] = 2;
  v7();
  v39 = (v62 + v3 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "localized_disclaimer_footer";
  *(v40 + 1) = 27;
  v40[16] = 2;
  v7();
  v41 = v1[14];
  v42 = (v62 + v3 + 17 * v2);
  *v42 = 18;
  v43 = v42 + v41;
  *v43 = "deprecated_v3_billing_error";
  *(v43 + 1) = 27;
  v43[16] = 2;
  *(v43 + 3) = "billingError";
  *(v43 + 4) = 12;
  v43[40] = 2;
  v7();
  v44 = (v62 + v3 + 18 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "warning_message";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v7();
  v46 = (v62 + v3 + 19 * v2);
  v47 = v46 + v1[14];
  *v46 = 20;
  *v47 = "location";
  *(v47 + 1) = 8;
  v47[16] = 2;
  v7();
  v48 = (v62 + v3 + 20 * v2);
  v49 = v48 + v1[14];
  *v48 = 21;
  *v49 = "quick_answer_metadata";
  *(v49 + 1) = 21;
  v49[16] = 2;
  v7();
  v50 = (v62 + v3 + 21 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "quick_answers";
  *(v51 + 1) = 13;
  v51[16] = 2;
  v7();
  v52 = (v62 + v3 + 22 * v2);
  v53 = v52 + v1[14];
  *v52 = 23;
  *v53 = "hero_articles";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v7();
  v54 = (v62 + v3 + 23 * v2);
  v55 = v54 + v1[14];
  *v54 = 24;
  *v55 = "hero_videos";
  *(v55 + 1) = 11;
  v55[16] = 2;
  v7();
  v56 = (v62 + v3 + 24 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "deep_dive_url";
  *(v57 + 1) = 13;
  v57[16] = 2;
  v7();
  v58 = v1[14];
  v59 = (v62 + v3 + 25 * v2);
  *v59 = 25;
  v60 = v59 + v58;
  *v60 = "billing_error";
  *(v60 + 1) = 13;
  v60[16] = 2;
  *(v60 + 3) = "billingErrorV4";
  *(v60 + 4) = 14;
  v60[40] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCE4990()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v3 = type metadata accessor for ContactSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  v5 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  v7 = type metadata accessor for ArticleSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  *(v0 + v8) = sub_26BDA0B70();
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources, 1, 1, v5);
  v9 = (v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources) = v1;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated) = 0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources) = v1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent, 1, 1, v5);
  v10 = (v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers) = v1;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles) = v1;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos) = v1;
  v11 = (v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError, 1, 1, v5);
  return v0;
}

uint64_t sub_26BCE4C34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v71 - v10;
  v11 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v71 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v13 = type metadata accessor for ContactSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  v73 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  v15 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v74 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  v75 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  v17 = type metadata accessor for ArticleSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v76 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles, 1, 1, v17);
  v77 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  v78 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  *(v1 + v18) = sub_26BDA0B70();
  v79 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources, 1, 1, v15);
  v19 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v80 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources, 1, 1, v15);
  v81 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources) = v11;
  v82 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated) = 0;
  v83 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources) = v11;
  v84 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader, 1, 1, v15);
  v85 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent, 1, 1, v15);
  v20 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  v86 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v87 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError, 1, 1, v15);
  v88 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage, 1, 1, v15);
  v89 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location, 1, 1, v15);
  v90 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata, 1, 1, v15);
  v91 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers) = v11;
  v92 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles) = v11;
  v93 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos) = v11;
  v21 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  v94 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v95 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError, 1, 1, v15);
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v22;

  v23 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  swift_beginAccess();
  v24 = v72;
  sub_26BD04E2C(a1 + v23);
  swift_beginAccess();
  sub_26BCFF2C8(v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v25);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v26);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v27);
  swift_beginAccess();
  sub_26BCFF2C8(v5);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v28);
  swift_beginAccess();
  sub_26BCFF2C8(v5);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v29);
  swift_beginAccess();
  sub_26BCFF2C8(v5);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = v78;
  swift_beginAccess();
  *(v1 + v32) = v31;

  v33 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v33);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  *v19 = v36;
  v19[1] = v35;

  v37 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v37);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v81;
  swift_beginAccess();
  *(v1 + v40) = v39;

  v41 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v82;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v83;
  swift_beginAccess();
  *(v1 + v45) = v44;

  v46 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v46);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v47);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v48 = (a1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  v51 = v86;
  swift_beginAccess();
  *v51 = v50;
  v51[1] = v49;

  v52 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v52);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v53);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v54);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v55);
  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  swift_beginAccess();
  v57 = *(a1 + v56);
  v58 = v91;
  swift_beginAccess();
  *(v1 + v58) = v57;

  v59 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = v92;
  swift_beginAccess();
  *(v1 + v61) = v60;

  v62 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  swift_beginAccess();
  v63 = *(a1 + v62);
  v64 = v93;
  swift_beginAccess();
  *(v1 + v64) = v63;

  v65 = (a1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  swift_beginAccess();
  v67 = *v65;
  v66 = v65[1];
  v68 = v94;
  swift_beginAccess();
  *v68 = v67;
  v68[1] = v66;

  v69 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError;
  swift_beginAccess();
  sub_26BD04E2C(a1 + v69);

  swift_beginAccess();
  sub_26BCFF2C8(v8);
  swift_endAccess();
  return v1;
}

uint64_t sub_26BCE59C0()
{

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions, &unk_280448F78, &unk_26BDA1A40);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles, &qword_280448FA0, &qword_26BDA1A50);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles, &qword_280448FA0, &qword_26BDA1A50);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles, &qword_280448FA0, &qword_26BDA1A50);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError, &qword_280448F88, &qword_26BDA5440);
  return v0;
}

uint64_t sub_26BCE5C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        type metadata accessor for SupportOption(0);
        sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption, &protocol conformance descriptor for SupportOption);
        sub_26BDA09A0();
        goto LABEL_14;
      case 2:
        swift_beginAccess();
        type metadata accessor for ContactSupportOptions(0);
        v8 = &qword_280449300;
        v9 = type metadata accessor for ContactSupportOptions;
        v10 = &protocol conformance descriptor for ContactSupportOptions;
        goto LABEL_13;
      case 3:
      case 4:
        swift_beginAccess();
        sub_26BDA0810();
        v8 = &qword_280449130;
        v9 = MEMORY[0x277D215C8];
        v10 = MEMORY[0x277D215C0];
        goto LABEL_13;
      case 5:
        swift_beginAccess();
        type metadata accessor for ArticleSupportOptions(0);
        v8 = &qword_280449318;
        v9 = type metadata accessor for ArticleSupportOptions;
        v10 = &protocol conformance descriptor for ArticleSupportOptions;
        goto LABEL_13;
      case 6:
      case 7:
        swift_beginAccess();
        type metadata accessor for ArticleSupportOptions(0);
        v8 = &qword_280449318;
        v9 = type metadata accessor for ArticleSupportOptions;
        v10 = &protocol conformance descriptor for ArticleSupportOptions;
        goto LABEL_13;
      case 8:
        swift_beginAccess();
        sub_26BDA0820();
        sub_26BDA08F0();
        goto LABEL_14;
      case 9:
      case 11:
      case 15:
      case 16:
      case 18:
      case 19:
      case 20:
      case 21:
        swift_beginAccess();
        sub_26BDA0810();
        v8 = &qword_280449130;
        v9 = MEMORY[0x277D215C8];
        v10 = MEMORY[0x277D215C0];
LABEL_13:
        sub_26BCFF280(v8, v9, v10);
        sub_26BDA09B0();
        goto LABEL_14;
      case 10:
      case 17:
      case 26:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_14;
      case 12:
      case 14:
      case 22:
      case 23:
      case 24:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA09A0();
        goto LABEL_14;
      case 13:
        swift_beginAccess();
        sub_26BDA0920();
LABEL_14:
        v5 = 0;
        swift_endAccess();
        break;
      case 25:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BCE64D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v191 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v192 = &v171 - v11;
  MEMORY[0x28223BE20](v10);
  v193 = &v171 - v12;
  v198 = type metadata accessor for ArticleSupportOptions(0);
  v13 = MEMORY[0x28223BE20](v198);
  v189 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v190 = &v171 - v16;
  MEMORY[0x28223BE20](v15);
  v201 = &v171 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v172 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v175 = &v171 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v177 = &v171 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v179 = &v171 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v180 = &v171 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v183 = &v171 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v184 = &v171 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v186 = &v171 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v188 = &v171 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v195 = &v171 - v38;
  MEMORY[0x28223BE20](v37);
  v197 = &v171 - v39;
  v203 = sub_26BDA0810();
  v199 = *(v203 - 8);
  v40 = MEMORY[0x28223BE20](v203);
  v171 = &v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v173 = &v171 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v174 = &v171 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v176 = &v171 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v178 = &v171 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v181 = &v171 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v182 = &v171 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v185 = &v171 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v187 = &v171 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v200 = &v171 - v59;
  MEMORY[0x28223BE20](v58);
  v194 = &v171 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v171 - v62;
  v64 = type metadata accessor for ContactSupportOptions(0);
  MEMORY[0x28223BE20](v64);
  v66 = &v171 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v202 = a1;
  if (*(*(a1 + 16) + 16))
  {
    type metadata accessor for SupportOption(0);
    sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption, &protocol conformance descriptor for SupportOption);

    v67 = v204;
    sub_26BDA0AC0();
    v68 = v67;
    if (v67)
    {

      v204 = v67;
      return result;
    }

    v196 = a3;
  }

  else
  {
    v196 = a3;
    v68 = v204;
  }

  v70 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v71 = v202;
  swift_beginAccess();
  sub_26BD04E2C(v71 + v70);
  if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
  {
    sub_26BD04E80(v63, &unk_280448F78, &unk_26BDA1A40);
    v204 = v68;
  }

  else
  {
    sub_26BCFEE08(v63);
    sub_26BCFF280(&qword_280449300, type metadata accessor for ContactSupportOptions, &protocol conformance descriptor for ContactSupportOptions);
    sub_26BDA0AD0();
    v204 = v68;
    if (v68)
    {
      v72 = v66;
      return sub_26BCFEEB0(v72);
    }

    sub_26BCFEEB0(v66);
  }

  v73 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  swift_beginAccess();
  v74 = v71 + v73;
  v75 = v197;
  sub_26BD04E2C(v74);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v203);
  v77 = v199;
  v78 = v200;
  v79 = v201;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v75, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v80 = v194;
    (*(v199 + 32))(v194, v75, v203);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v81 = v204;
    sub_26BDA0AD0();
    v204 = v81;
    if (v81)
    {
      return (*(v77 + 8))(v80, v203);
    }

    (*(v77 + 8))(v80, v203);
    v78 = v200;
    v79 = v201;
  }

  v82 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo;
  swift_beginAccess();
  v83 = v71 + v82;
  v84 = v195;
  sub_26BD04E2C(v83);
  if (__swift_getEnumTagSinglePayload(v84, 1, v203) == 1)
  {
    v197 = a2;
    v85 = v79;
    v86 = v71;
    v87 = v204;
    sub_26BD04E80(v84, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    (*(v77 + 32))(v78, v84, v203);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v88 = v204;
    sub_26BDA0AD0();
    v204 = v88;
    if (v88)
    {
      return (*(v77 + 8))(v78, v203);
    }

    v197 = a2;
    v85 = v79;
    v89 = v78;
    v86 = v71;
    v87 = 0;
    (*(v77 + 8))(v89, v203);
  }

  v90 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  swift_beginAccess();
  v91 = v193;
  sub_26BD04E2C(v86 + v90);
  if (__swift_getEnumTagSinglePayload(v91, 1, v198) == 1)
  {
    sub_26BD04E80(v91, &qword_280448FA0, &qword_26BDA1A50);
    v204 = v87;
    goto LABEL_26;
  }

  sub_26BCFEE08(v91);
  sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions, &protocol conformance descriptor for ArticleSupportOptions);
  sub_26BDA0AD0();
  v204 = v87;
  if (v87)
  {
    v72 = v85;
    return sub_26BCFEEB0(v72);
  }

  sub_26BCFEEB0(v85);
LABEL_26:
  v92 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles;
  v93 = v86;
  swift_beginAccess();
  v94 = v86 + v92;
  v95 = v192;
  sub_26BD04E2C(v94);
  if (__swift_getEnumTagSinglePayload(v95, 1, v198) == 1)
  {
    sub_26BD04E80(v95, &qword_280448FA0, &qword_26BDA1A50);
    goto LABEL_31;
  }

  v96 = v95;
  v97 = v190;
  sub_26BCFEE08(v96);
  sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions, &protocol conformance descriptor for ArticleSupportOptions);
  v98 = v204;
  sub_26BDA0AD0();
  v204 = v98;
  if (v98)
  {
    v72 = v97;
    return sub_26BCFEEB0(v72);
  }

  sub_26BCFEEB0(v97);
LABEL_31:
  v99 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles;
  swift_beginAccess();
  v100 = v93 + v99;
  v101 = v191;
  sub_26BD04E2C(v100);
  if (__swift_getEnumTagSinglePayload(v101, 1, v198) == 1)
  {
    sub_26BD04E80(v101, &qword_280448FA0, &qword_26BDA1A50);
    goto LABEL_38;
  }

  v102 = v101;
  v103 = v189;
  sub_26BCFEE08(v102);
  sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions, &protocol conformance descriptor for ArticleSupportOptions);
  v104 = v204;
  sub_26BDA0AD0();
  v204 = v104;
  if (v104)
  {
    v72 = v103;
    return sub_26BCFEEB0(v72);
  }

  sub_26BCFEEB0(v103);
LABEL_38:
  v105 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v106 = v199;
  if (*(*(v93 + v105) + 16))
  {
    sub_26BDA0820();

    v107 = v204;
    sub_26BDA0A30();
    v204 = v107;
    if (v107)
    {
    }
  }

  v108 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources;
  swift_beginAccess();
  v109 = v93 + v108;
  v110 = v188;
  sub_26BD04E2C(v109);
  if (__swift_getEnumTagSinglePayload(v110, 1, v203) == 1)
  {
    sub_26BD04E80(v110, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v111 = v187;
    (*(v106 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v112 = v204;
    sub_26BDA0AD0();
    v204 = v112;
    if (v112)
    {
      return (*(v106 + 8))(v111, v203);
    }

    (*(v106 + 8))(v111, v203);
  }

  v113 = (v93 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v114 = *v113;
  v115 = v113[1];
  v116 = HIBYTE(v115) & 0xF;
  if ((v115 & 0x2000000000000000) == 0)
  {
    v116 = v114 & 0xFFFFFFFFFFFFLL;
  }

  if (v116)
  {

    v117 = v204;
    sub_26BDA0AB0();
    v204 = v117;
    if (v117)
    {
    }
  }

  v118 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources;
  swift_beginAccess();
  v119 = v93 + v118;
  v120 = v186;
  sub_26BD04E2C(v119);
  if (__swift_getEnumTagSinglePayload(v120, 1, v203) == 1)
  {
    sub_26BD04E80(v120, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v111 = v185;
    (*(v106 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v121 = v204;
    sub_26BDA0AD0();
    v204 = v121;
    if (v121)
    {
      return (*(v106 + 8))(v111, v203);
    }

    (*(v106 + 8))(v111, v203);
  }

  v122 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  swift_beginAccess();
  if (*(*(v93 + v122) + 16))
  {
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);

    v123 = v204;
    sub_26BDA0AC0();
    v204 = v123;
    if (v123)
    {
    }
  }

  v124 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  swift_beginAccess();
  if (*(v93 + v124) == 1)
  {
    v125 = v204;
    result = sub_26BDA0A40();
    v204 = v125;
    if (v125)
    {
      return result;
    }
  }

  v126 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  swift_beginAccess();
  if (*(*(v93 + v126) + 16))
  {
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);

    v127 = v204;
    sub_26BDA0AC0();
    v204 = v127;
    if (!v127)
    {

      goto LABEL_63;
    }
  }

LABEL_63:
  v128 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader;
  swift_beginAccess();
  v129 = v93 + v128;
  v130 = v184;
  sub_26BD04E2C(v129);
  if (__swift_getEnumTagSinglePayload(v130, 1, v203) == 1)
  {
    sub_26BD04E80(v130, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v111 = v182;
    (*(v106 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v131 = v204;
    sub_26BDA0AD0();
    v204 = v131;
    if (v131)
    {
      return (*(v106 + 8))(v111, v203);
    }

    (*(v106 + 8))(v111, v203);
  }

  v132 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent;
  swift_beginAccess();
  v133 = v93 + v132;
  v134 = v183;
  sub_26BD04E2C(v133);
  if (__swift_getEnumTagSinglePayload(v134, 1, v203) == 1)
  {
    sub_26BD04E80(v134, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v111 = v181;
    (*(v106 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v135 = v204;
    sub_26BDA0AD0();
    v204 = v135;
    if (v135)
    {
      return (*(v106 + 8))(v111, v203);
    }

    (*(v106 + 8))(v111, v203);
  }

  v136 = (v93 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v137 = *v136;
  v138 = v136[1];
  v139 = HIBYTE(v138) & 0xF;
  if ((v138 & 0x2000000000000000) == 0)
  {
    v139 = v137 & 0xFFFFFFFFFFFFLL;
  }

  if (v139)
  {

    v140 = v204;
    sub_26BDA0AB0();
    v204 = v140;
    if (v140)
    {
    }
  }

  v141 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError;
  swift_beginAccess();
  v142 = v93 + v141;
  v143 = v180;
  sub_26BD04E2C(v142);
  if (__swift_getEnumTagSinglePayload(v143, 1, v203) == 1)
  {
    sub_26BD04E80(v143, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v111 = v178;
    (*(v106 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v144 = v204;
    sub_26BDA0AD0();
    v204 = v144;
    if (v144)
    {
      return (*(v106 + 8))(v111, v203);
    }

    (*(v106 + 8))(v111, v203);
  }

  v145 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage;
  swift_beginAccess();
  v146 = v93 + v145;
  v147 = v179;
  sub_26BD04E2C(v146);
  if (__swift_getEnumTagSinglePayload(v147, 1, v203) == 1)
  {
    sub_26BD04E80(v147, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v111 = v176;
    (*(v106 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v148 = v204;
    sub_26BDA0AD0();
    v204 = v148;
    if (v148)
    {
      return (*(v106 + 8))(v111, v203);
    }

    (*(v106 + 8))(v111, v203);
  }

  v149 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location;
  swift_beginAccess();
  v150 = v93 + v149;
  v151 = v177;
  sub_26BD04E2C(v150);
  if (__swift_getEnumTagSinglePayload(v151, 1, v203) == 1)
  {
    sub_26BD04E80(v151, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v111 = v174;
    (*(v106 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    v152 = v204;
    sub_26BDA0AD0();
    v204 = v152;
    if (v152)
    {
      return (*(v106 + 8))(v111, v203);
    }

    (*(v106 + 8))(v111, v203);
  }

  v153 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata;
  swift_beginAccess();
  v154 = v93 + v153;
  v155 = v175;
  sub_26BD04E2C(v154);
  if (__swift_getEnumTagSinglePayload(v155, 1, v203) == 1)
  {
    sub_26BD04E80(v155, &qword_280448F88, &qword_26BDA5440);
    goto LABEL_93;
  }

  v111 = v173;
  (*(v106 + 32))();
  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v156 = v204;
  sub_26BDA0AD0();
  v204 = v156;
  if (v156)
  {
    return (*(v106 + 8))(v111, v203);
  }

  (*(v106 + 8))(v111, v203);
LABEL_93:
  v157 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  swift_beginAccess();
  if (*(*(v93 + v157) + 16))
  {
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);

    v158 = v204;
    sub_26BDA0AC0();
    v204 = v158;
    if (v158)
    {
    }

    v159 = 0;
  }

  else
  {
    v159 = v204;
  }

  v160 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  swift_beginAccess();
  if (!*(*(v93 + v160) + 16) || (sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]), , sub_26BDA0AC0(), result = , !v159))
  {
    v161 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
    v162 = v202;
    swift_beginAccess();
    if (!*(*(v162 + v161) + 16) || (sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]), , sub_26BDA0AC0(), result = , !v159))
    {
      v163 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError;
      v164 = v202;
      swift_beginAccess();
      v165 = v164 + v163;
      v166 = v172;
      sub_26BD04E2C(v165);
      if (__swift_getEnumTagSinglePayload(v166, 1, v203) == 1)
      {
        sub_26BD04E80(v172, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v199 + 32))(v171, v172, v203);
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA0AD0();
        if (v159)
        {
          return (*(v199 + 8))(v171, v203);
        }

        (*(v199 + 8))(v171, v203);
      }

      v167 = (v202 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
      result = swift_beginAccess();
      v168 = *v167;
      v169 = v167[1];
      v170 = HIBYTE(v169) & 0xF;
      if ((v169 & 0x2000000000000000) == 0)
      {
        v170 = v168 & 0xFFFFFFFFFFFFLL;
      }

      if (v170)
      {

        sub_26BDA0AB0();
      }
    }
  }

  return result;
}

BOOL sub_26BCE820C(uint64_t a1, uint64_t a2)
{
  v416 = type metadata accessor for ArticleSupportOptions(0);
  v4 = MEMORY[0x28223BE20](v416);
  v404 = &v377 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v407 = &v377 - v7;
  MEMORY[0x28223BE20](v6);
  v410 = &v377 - v8;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449640, &qword_26BDA3578);
  v9 = MEMORY[0x28223BE20](v418);
  v408 = &v377 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v411 = &v377 - v12;
  MEMORY[0x28223BE20](v11);
  v415 = &v377 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v406 = &v377 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v412 = &v377 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v409 = (&v377 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v413 = &v377 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v414 = &v377 - v24;
  MEMORY[0x28223BE20](v23);
  v419 = &v377 - v25;
  v430 = sub_26BDA0810();
  v425 = *(v430 - 8);
  MEMORY[0x28223BE20](v430);
  v420 = &v377 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v27 = MEMORY[0x28223BE20](v428);
  v385 = &v377 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v382 = &v377 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v379 = &v377 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v389 = &v377 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v392 = &v377 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v395 = &v377 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v397 = &v377 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v402 = &v377 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v403 = &v377 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v421 = &v377 - v46;
  MEMORY[0x28223BE20](v45);
  v426 = &v377 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v384 = &v377 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v383 = &v377 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v381 = &v377 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v380 = &v377 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v378 = &v377 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v377 = &v377 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v386 = &v377 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v387 = &v377 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v388 = &v377 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v390 = &v377 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v391 = &v377 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v393 = &v377 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v394 = &v377 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v396 = &v377 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v398 = &v377 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v401 = &v377 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v400 = &v377 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v405 = &v377 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v417 = &v377 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v423 = &v377 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v422 = &v377 - v90;
  MEMORY[0x28223BE20](v89);
  v429 = &v377 - v91;
  v92 = type metadata accessor for ContactSupportOptions(0);
  MEMORY[0x28223BE20](v92);
  v424 = &v377 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449648, &qword_26BDA3580);
  MEMORY[0x28223BE20](v94);
  v96 = &v377 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  v98 = MEMORY[0x28223BE20](v97 - 8);
  v427 = &v377 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v101 = &v377 - v100;
  swift_beginAccess();
  v102 = *(a1 + 16);
  swift_beginAccess();
  v103 = *(a2 + 16);
  v104 = a1;

  LOBYTE(a1) = sub_26BD011F4(v102, v103);

  if ((a1 & 1) == 0)
  {
    goto LABEL_25;
  }

  v431 = a2;
  v105 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  swift_beginAccess();
  v399 = v104;
  sub_26BD04E2C(v104 + v105);
  v106 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  swift_beginAccess();
  v107 = *(v94 + 48);
  sub_26BD04E2C(v101);
  v108 = v431 + v106;
  v109 = v431;
  sub_26BD04E2C(v108);
  if (__swift_getEnumTagSinglePayload(v96, 1, v92) == 1)
  {
    sub_26BD04E80(v101, &unk_280448F78, &unk_26BDA1A40);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v96[v107], 1, v92);
    v111 = v399;
    v112 = v429;
    if (EnumTagSinglePayload == 1)
    {
      sub_26BD04E80(v96, &unk_280448F78, &unk_26BDA1A40);
      goto LABEL_11;
    }

LABEL_8:
    v115 = &qword_280449648;
    v116 = &qword_26BDA3580;
LABEL_9:
    v117 = v96;
LABEL_24:
    sub_26BD04E80(v117, v115, v116);
    goto LABEL_25;
  }

  v113 = v427;
  sub_26BD04E2C(v96);
  v114 = __swift_getEnumTagSinglePayload(&v96[v107], 1, v92);
  v112 = v429;
  if (v114 == 1)
  {
    sub_26BD04E80(v101, &unk_280448F78, &unk_26BDA1A40);
    sub_26BCFEEB0(v113);
    goto LABEL_8;
  }

  v118 = v424;
  sub_26BCFEE08(&v96[v107]);
  static ContactSupportOptions.== infix(_:_:)(v113, v118);
  v120 = v119;
  sub_26BCFEEB0(v118);
  sub_26BD04E80(v101, &unk_280448F78, &unk_26BDA1A40);
  sub_26BCFEEB0(v113);
  v109 = v431;
  sub_26BD04E80(v96, &unk_280448F78, &unk_26BDA1A40);
  v111 = v399;
  if ((v120 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v121 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  swift_beginAccess();
  sub_26BD04E2C(v111 + v121);
  v122 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  swift_beginAccess();
  v123 = *(v428 + 48);
  v124 = v112;
  v125 = v112;
  v126 = v426;
  sub_26BD04E2C(v124);
  sub_26BD04E2C(v109 + v122);
  if (__swift_getEnumTagSinglePayload(v126, 1, v430) == 1)
  {
    sub_26BD04E80(v125, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v126 + v123, 1, v430) != 1)
    {
      goto LABEL_23;
    }

    sub_26BD04E80(v126, &qword_280448F88, &qword_26BDA5440);
    v127 = v423;
    goto LABEL_17;
  }

  v128 = v422;
  sub_26BD04E2C(v126);
  if (__swift_getEnumTagSinglePayload(v126 + v123, 1, v430) == 1)
  {
    v129 = v429;
LABEL_22:
    sub_26BD04E80(v129, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v128, v430);
    goto LABEL_23;
  }

  v130 = v425;
  v131 = v420;
  v132 = v430;
  (*(v425 + 32))(v420, v126 + v123, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  LODWORD(v427) = sub_26BDA0BB0();
  v133 = *(v130 + 8);
  v133(v131, v132);
  sub_26BD04E80(v429, &qword_280448F88, &qword_26BDA5440);
  v133(v128, v132);
  v127 = v423;
  sub_26BD04E80(v126, &qword_280448F88, &qword_26BDA5440);
  if ((v427 & 1) == 0)
  {
LABEL_25:

    return 0;
  }

LABEL_17:
  v134 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo;
  swift_beginAccess();
  sub_26BD04E2C(v111 + v134);
  v135 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo;
  swift_beginAccess();
  v136 = *(v428 + 48);
  v126 = v421;
  sub_26BD04E2C(v127);
  sub_26BD04E2C(v109 + v135);
  if (__swift_getEnumTagSinglePayload(v126, 1, v430) == 1)
  {
    sub_26BD04E80(v127, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v126 + v136, 1, v430) == 1)
    {
      sub_26BD04E80(v126, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_28;
    }

LABEL_23:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v126;
    goto LABEL_24;
  }

  v128 = v417;
  sub_26BD04E2C(v126);
  if (__swift_getEnumTagSinglePayload(v126 + v136, 1, v430) == 1)
  {
    v129 = v127;
    goto LABEL_22;
  }

  v138 = v425;
  v139 = v420;
  v140 = v430;
  (*(v425 + 32))(v420, v126 + v136, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  LODWORD(v429) = sub_26BDA0BB0();
  v141 = *(v138 + 8);
  v141(v139, v140);
  sub_26BD04E80(v127, &qword_280448F88, &qword_26BDA5440);
  v141(v128, v140);
  sub_26BD04E80(v126, &qword_280448F88, &qword_26BDA5440);
  if ((v429 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  v142 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  swift_beginAccess();
  v143 = v419;
  sub_26BD04E2C(v111 + v142);
  v144 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  swift_beginAccess();
  v145 = *(v418 + 48);
  v146 = v415;
  sub_26BD04E2C(v143);
  v147 = v109 + v144;
  v148 = v146;
  sub_26BD04E2C(v147);
  v149 = v146;
  v150 = v416;
  if (__swift_getEnumTagSinglePayload(v149, 1, v416) == 1)
  {
    sub_26BD04E80(v143, &qword_280448FA0, &qword_26BDA1A50);
    if (__swift_getEnumTagSinglePayload(v148 + v145, 1, v150) != 1)
    {
      goto LABEL_54;
    }

    sub_26BD04E80(v148, &qword_280448FA0, &qword_26BDA1A50);
  }

  else
  {
    v174 = v414;
    sub_26BD04E2C(v148);
    if (__swift_getEnumTagSinglePayload(v148 + v145, 1, v150) == 1)
    {
      v175 = v419;
LABEL_43:
      sub_26BD04E80(v175, &qword_280448FA0, &qword_26BDA1A50);
      v176 = v174;
LABEL_53:
      sub_26BCFEEB0(v176);
      goto LABEL_54;
    }

    v177 = v148 + v145;
    v178 = v410;
    sub_26BCFEE08(v177);
    sub_26BD01478(*v174, *v178);
    if ((v179 & 1) == 0 || *(v174 + 8) != *(v178 + 8) || *(v174 + 16) != *(v178 + 16))
    {
      sub_26BD04E80(v419, &qword_280448FA0, &qword_26BDA1A50);
      v181 = v178;
LABEL_50:
      sub_26BCFEEB0(v181);
      v182 = v174;
LABEL_61:
      sub_26BCFEEB0(v182);
      v117 = v148;
      v115 = &qword_280448FA0;
      v116 = &qword_26BDA1A50;
      goto LABEL_24;
    }

    sub_26BDA0850();
    sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v180 = sub_26BDA0BB0();
    sub_26BD04E80(v419, &qword_280448FA0, &qword_26BDA1A50);
    sub_26BCFEEB0(v178);
    sub_26BCFEEB0(v174);
    sub_26BD04E80(v148, &qword_280448FA0, &qword_26BDA1A50);
    if ((v180 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v151 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles;
  swift_beginAccess();
  v152 = v413;
  sub_26BD04E2C(v111 + v151);
  v153 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles;
  swift_beginAccess();
  v154 = *(v418 + 48);
  v148 = v411;
  sub_26BD04E2C(v152);
  sub_26BD04E2C(v109 + v153);
  if (__swift_getEnumTagSinglePayload(v148, 1, v150) == 1)
  {
    sub_26BD04E80(v152, &qword_280448FA0, &qword_26BDA1A50);
    v155 = __swift_getEnumTagSinglePayload(v148 + v154, 1, v150);
    v156 = v412;
    if (v155 != 1)
    {
      goto LABEL_54;
    }

    sub_26BD04E80(v148, &qword_280448FA0, &qword_26BDA1A50);
  }

  else
  {
    v183 = v409;
    sub_26BD04E2C(v148);
    v184 = __swift_getEnumTagSinglePayload(v148 + v154, 1, v150);
    v156 = v412;
    if (v184 == 1)
    {
      sub_26BD04E80(v413, &qword_280448FA0, &qword_26BDA1A50);
      v176 = v183;
      goto LABEL_53;
    }

    v185 = v407;
    sub_26BCFEE08(v148 + v154);
    sub_26BD01478(*v183, *v185);
    if ((v186 & 1) == 0 || v183[1] != *(v185 + 8) || *(v183 + 4) != *(v185 + 16))
    {
      sub_26BD04E80(v413, &qword_280448FA0, &qword_26BDA1A50);
      sub_26BCFEEB0(v185);
      v182 = v183;
      goto LABEL_61;
    }

    sub_26BDA0850();
    v187 = v183;
    sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v188 = sub_26BDA0BB0();
    sub_26BD04E80(v413, &qword_280448FA0, &qword_26BDA1A50);
    sub_26BCFEEB0(v185);
    sub_26BCFEEB0(v187);
    sub_26BD04E80(v148, &qword_280448FA0, &qword_26BDA1A50);
    if ((v188 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v157 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles;
  swift_beginAccess();
  sub_26BD04E2C(v111 + v157);
  v158 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles;
  swift_beginAccess();
  v159 = *(v418 + 48);
  v160 = v408;
  sub_26BD04E2C(v156);
  v161 = v109 + v158;
  v148 = v160;
  v162 = v416;
  sub_26BD04E2C(v161);
  if (__swift_getEnumTagSinglePayload(v148, 1, v162) == 1)
  {
    sub_26BD04E80(v156, &qword_280448FA0, &qword_26BDA1A50);
    if (__swift_getEnumTagSinglePayload(v148 + v159, 1, v162) == 1)
    {
      sub_26BD04E80(v148, &qword_280448FA0, &qword_26BDA1A50);
      goto LABEL_37;
    }

LABEL_54:
    v115 = &qword_280449640;
    v116 = &qword_26BDA3578;
    v117 = v148;
    goto LABEL_24;
  }

  v174 = v406;
  sub_26BD04E2C(v148);
  if (__swift_getEnumTagSinglePayload(v148 + v159, 1, v162) == 1)
  {
    v175 = v156;
    goto LABEL_43;
  }

  v189 = v404;
  sub_26BCFEE08(v148 + v159);
  sub_26BD01478(*v174, *v189);
  if ((v190 & 1) == 0 || *(v174 + 8) != *(v189 + 8) || *(v174 + 16) != *(v189 + 16))
  {
    sub_26BD04E80(v156, &qword_280448FA0, &qword_26BDA1A50);
    v181 = v189;
    goto LABEL_50;
  }

  sub_26BDA0850();
  sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v191 = sub_26BDA0BB0();
  sub_26BD04E80(v156, &qword_280448FA0, &qword_26BDA1A50);
  sub_26BCFEEB0(v189);
  sub_26BCFEEB0(v174);
  sub_26BD04E80(v148, &qword_280448FA0, &qword_26BDA1A50);
  if ((v191 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_37:
  v163 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v164 = *(v111 + v163);
  v165 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v166 = *(v109 + v165);

  sub_26BD2F284(v164, v166);
  v168 = v167;

  v169 = v405;
  if ((v168 & 1) == 0)
  {
    goto LABEL_25;
  }

  v170 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources;
  swift_beginAccess();
  sub_26BD04E2C(v111 + v170);
  v171 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources;
  swift_beginAccess();
  v172 = *(v428 + 48);
  v173 = v403;
  sub_26BD04E2C(v169);
  v96 = v173;
  sub_26BD04E2C(v109 + v171);
  if (__swift_getEnumTagSinglePayload(v173, 1, v430) == 1)
  {
    sub_26BD04E80(v169, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v173 + v172, 1, v430) == 1)
    {
      sub_26BD04E80(v173, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v192 = v173;
  v193 = v400;
  sub_26BD04E2C(v192);
  if (__swift_getEnumTagSinglePayload(&v96[v172], 1, v430) == 1)
  {
    sub_26BD04E80(v169, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v193, v430);
LABEL_72:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    goto LABEL_9;
  }

  v194 = v425;
  v195 = v420;
  v196 = v430;
  (*(v425 + 32))(v420, &v96[v172], v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  LODWORD(v429) = sub_26BDA0BB0();
  v197 = *(v194 + 8);
  v197(v195, v196);
  sub_26BD04E80(v169, &qword_280448F88, &qword_26BDA5440);
  v197(v193, v196);
  sub_26BD04E80(v403, &qword_280448F88, &qword_26BDA5440);
  if ((v429 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_74:
  v198 = (v111 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v199 = *v198;
  v200 = v198[1];
  v201 = (v109 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v202 = v199 == *v201 && v200 == v201[1];
  if (!v202 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v203 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources;
  swift_beginAccess();
  v204 = v401;
  sub_26BD04E2C(v111 + v203);
  v205 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources;
  swift_beginAccess();
  v206 = *(v428 + 48);
  v207 = v204;
  v208 = v402;
  sub_26BD04E2C(v207);
  sub_26BD04E2C(v109 + v205);
  if (__swift_getEnumTagSinglePayload(v208, 1, v430) == 1)
  {
    sub_26BD04E80(v401, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v208 + v206, 1, v430) == 1)
    {
      sub_26BD04E80(v402, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  sub_26BD04E2C(v208);
  if (__swift_getEnumTagSinglePayload(v208 + v206, 1, v430) == 1)
  {
    sub_26BD04E80(v401, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v398, v430);
LABEL_84:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v402;
    goto LABEL_24;
  }

  v209 = v425;
  v210 = v402;
  v211 = v420;
  v212 = v430;
  (*(v425 + 32))(v420, v402 + v206, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v213 = v398;
  v214 = sub_26BDA0BB0();
  v215 = *(v209 + 8);
  v215(v211, v212);
  sub_26BD04E80(v401, &qword_280448F88, &qword_26BDA5440);
  v215(v213, v212);
  sub_26BD04E80(v210, &qword_280448F88, &qword_26BDA5440);
  if ((v214 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_86:
  v216 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  v217 = v399;
  swift_beginAccess();
  v218 = *(v217 + v216);
  v219 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  v220 = v431;
  swift_beginAccess();
  v221 = *(v220 + v219);

  sub_26BD01478(v218, v221);
  LOBYTE(v220) = v222;

  if ((v220 & 1) == 0)
  {
    goto LABEL_25;
  }

  v223 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  v224 = v399;
  swift_beginAccess();
  LODWORD(v223) = *(v224 + v223);
  v225 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  v226 = v431;
  swift_beginAccess();
  if (v223 != *(v226 + v225))
  {
    goto LABEL_25;
  }

  v227 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  v228 = v399;
  swift_beginAccess();
  v229 = *(v228 + v227);
  v230 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  v231 = v431;
  swift_beginAccess();
  v232 = *(v231 + v230);

  sub_26BD01478(v229, v232);
  LOBYTE(v231) = v233;

  if ((v231 & 1) == 0)
  {
    goto LABEL_25;
  }

  v234 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader;
  v235 = v399;
  swift_beginAccess();
  v236 = v396;
  sub_26BD04E2C(v235 + v234);
  v237 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader;
  v238 = v431;
  swift_beginAccess();
  v239 = *(v428 + 48);
  v240 = v236;
  v241 = v397;
  sub_26BD04E2C(v240);
  sub_26BD04E2C(v238 + v237);
  if (__swift_getEnumTagSinglePayload(v241, 1, v430) == 1)
  {
    sub_26BD04E80(v396, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v397 + v239, 1, v430) == 1)
    {
      sub_26BD04E80(v397, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v242 = v397;
  sub_26BD04E2C(v397);
  if (__swift_getEnumTagSinglePayload(v242 + v239, 1, v430) == 1)
  {
    sub_26BD04E80(v396, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v394, v430);
LABEL_94:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v397;
    goto LABEL_24;
  }

  v243 = v425;
  v244 = v397;
  v245 = v420;
  v246 = v430;
  (*(v425 + 32))(v420, v397 + v239, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v247 = v394;
  v248 = sub_26BDA0BB0();
  v249 = *(v243 + 8);
  v249(v245, v246);
  sub_26BD04E80(v396, &qword_280448F88, &qword_26BDA5440);
  v249(v247, v246);
  sub_26BD04E80(v244, &qword_280448F88, &qword_26BDA5440);
  if ((v248 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_96:
  v250 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent;
  v251 = v399;
  swift_beginAccess();
  v252 = v393;
  sub_26BD04E2C(v251 + v250);
  v253 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent;
  v254 = v431;
  swift_beginAccess();
  v255 = *(v428 + 48);
  v256 = v252;
  v257 = v395;
  sub_26BD04E2C(v256);
  sub_26BD04E2C(v254 + v253);
  if (__swift_getEnumTagSinglePayload(v257, 1, v430) == 1)
  {
    sub_26BD04E80(v393, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v395 + v255, 1, v430) == 1)
    {
      sub_26BD04E80(v395, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v258 = v395;
  sub_26BD04E2C(v395);
  if (__swift_getEnumTagSinglePayload(v258 + v255, 1, v430) == 1)
  {
    sub_26BD04E80(v393, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v391, v430);
LABEL_101:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v395;
    goto LABEL_24;
  }

  v259 = v425;
  v260 = v395;
  v261 = v420;
  v262 = v430;
  (*(v425 + 32))(v420, v395 + v255, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v263 = v391;
  v264 = sub_26BDA0BB0();
  v265 = *(v259 + 8);
  v265(v261, v262);
  sub_26BD04E80(v393, &qword_280448F88, &qword_26BDA5440);
  v265(v263, v262);
  sub_26BD04E80(v260, &qword_280448F88, &qword_26BDA5440);
  if ((v264 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_103:
  v266 = (v399 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v267 = *v266;
  v268 = v266[1];
  v269 = (v431 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v270 = v267 == *v269 && v268 == v269[1];
  if (!v270 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v271 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError;
  v272 = v399;
  swift_beginAccess();
  v273 = v390;
  sub_26BD04E2C(v272 + v271);
  v274 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError;
  v275 = v431;
  swift_beginAccess();
  v276 = *(v428 + 48);
  v277 = v273;
  v278 = v392;
  sub_26BD04E2C(v277);
  sub_26BD04E2C(v275 + v274);
  if (__swift_getEnumTagSinglePayload(v278, 1, v430) == 1)
  {
    sub_26BD04E80(v390, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v392 + v276, 1, v430) == 1)
    {
      sub_26BD04E80(v392, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v279 = v392;
  sub_26BD04E2C(v392);
  if (__swift_getEnumTagSinglePayload(v279 + v276, 1, v430) == 1)
  {
    sub_26BD04E80(v390, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v388, v430);
LABEL_113:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v392;
    goto LABEL_24;
  }

  v280 = v425;
  v281 = v392;
  v282 = v420;
  v283 = v430;
  (*(v425 + 32))(v420, v392 + v276, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v284 = v388;
  v285 = sub_26BDA0BB0();
  v286 = *(v280 + 8);
  v286(v282, v283);
  sub_26BD04E80(v390, &qword_280448F88, &qword_26BDA5440);
  v286(v284, v283);
  sub_26BD04E80(v281, &qword_280448F88, &qword_26BDA5440);
  if ((v285 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_115:
  v287 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage;
  v288 = v399;
  swift_beginAccess();
  v289 = v387;
  sub_26BD04E2C(v288 + v287);
  v290 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage;
  v291 = v431;
  swift_beginAccess();
  v292 = *(v428 + 48);
  v293 = v289;
  v294 = v389;
  sub_26BD04E2C(v293);
  sub_26BD04E2C(v291 + v290);
  if (__swift_getEnumTagSinglePayload(v294, 1, v430) == 1)
  {
    sub_26BD04E80(v387, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v389 + v292, 1, v430) == 1)
    {
      sub_26BD04E80(v389, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_122;
    }

    goto LABEL_120;
  }

  v295 = v389;
  sub_26BD04E2C(v389);
  if (__swift_getEnumTagSinglePayload(v295 + v292, 1, v430) == 1)
  {
    sub_26BD04E80(v387, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v386, v430);
LABEL_120:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v389;
    goto LABEL_24;
  }

  v296 = v425;
  v297 = v389;
  v298 = v420;
  v299 = v430;
  (*(v425 + 32))(v420, v389 + v292, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v300 = v386;
  v301 = sub_26BDA0BB0();
  v302 = *(v296 + 8);
  v302(v298, v299);
  sub_26BD04E80(v387, &qword_280448F88, &qword_26BDA5440);
  v302(v300, v299);
  sub_26BD04E80(v297, &qword_280448F88, &qword_26BDA5440);
  if ((v301 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_122:
  v303 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location;
  v304 = v399;
  swift_beginAccess();
  v305 = v377;
  sub_26BD04E2C(v304 + v303);
  v306 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location;
  v307 = v431;
  swift_beginAccess();
  v308 = *(v428 + 48);
  v309 = v305;
  v310 = v379;
  sub_26BD04E2C(v309);
  sub_26BD04E2C(v307 + v306);
  if (__swift_getEnumTagSinglePayload(v310, 1, v430) == 1)
  {
    sub_26BD04E80(v377, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v379 + v308, 1, v430) == 1)
    {
      sub_26BD04E80(v379, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_129;
    }

    goto LABEL_127;
  }

  v311 = v379;
  sub_26BD04E2C(v379);
  if (__swift_getEnumTagSinglePayload(v311 + v308, 1, v430) == 1)
  {
    sub_26BD04E80(v377, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v378, v430);
LABEL_127:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v379;
    goto LABEL_24;
  }

  v312 = v425;
  v313 = v379;
  v314 = v420;
  v315 = v430;
  (*(v425 + 32))(v420, v379 + v308, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v316 = v378;
  v317 = sub_26BDA0BB0();
  v318 = *(v312 + 8);
  v318(v314, v315);
  sub_26BD04E80(v377, &qword_280448F88, &qword_26BDA5440);
  v318(v316, v315);
  sub_26BD04E80(v313, &qword_280448F88, &qword_26BDA5440);
  if ((v317 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_129:
  v319 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata;
  v320 = v399;
  swift_beginAccess();
  v321 = v380;
  sub_26BD04E2C(v320 + v319);
  v322 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata;
  v323 = v431;
  swift_beginAccess();
  v324 = *(v428 + 48);
  v325 = v321;
  v326 = v382;
  sub_26BD04E2C(v325);
  sub_26BD04E2C(v323 + v322);
  if (__swift_getEnumTagSinglePayload(v326, 1, v430) == 1)
  {
    sub_26BD04E80(v380, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v382 + v324, 1, v430) == 1)
    {
      sub_26BD04E80(v382, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_136;
    }

    goto LABEL_134;
  }

  v327 = v382;
  sub_26BD04E2C(v382);
  if (__swift_getEnumTagSinglePayload(v327 + v324, 1, v430) == 1)
  {
    sub_26BD04E80(v380, &qword_280448F88, &qword_26BDA5440);
    (*(v425 + 8))(v381, v430);
LABEL_134:
    v115 = &qword_2804490C8;
    v116 = &qword_26BDA7780;
    v117 = v382;
    goto LABEL_24;
  }

  v328 = v425;
  v329 = v382;
  v330 = v420;
  v331 = v430;
  (*(v425 + 32))(v420, v382 + v324, v430);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v332 = v381;
  v333 = sub_26BDA0BB0();
  v334 = *(v328 + 8);
  v334(v330, v331);
  sub_26BD04E80(v380, &qword_280448F88, &qword_26BDA5440);
  v334(v332, v331);
  sub_26BD04E80(v329, &qword_280448F88, &qword_26BDA5440);
  if ((v333 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_136:
  v335 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  v336 = v399;
  swift_beginAccess();
  v337 = *(v336 + v335);
  v338 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  v339 = v431;
  swift_beginAccess();
  v340 = *(v339 + v338);

  sub_26BD01478(v337, v340);
  LOBYTE(v339) = v341;

  if ((v339 & 1) == 0)
  {
    goto LABEL_25;
  }

  v342 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  v343 = v399;
  swift_beginAccess();
  v344 = *(v343 + v342);
  v345 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  v346 = v431;
  swift_beginAccess();
  v347 = *(v346 + v345);

  sub_26BD01478(v344, v347);
  LOBYTE(v346) = v348;

  if ((v346 & 1) == 0)
  {
    goto LABEL_25;
  }

  v349 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  v350 = v399;
  swift_beginAccess();
  v351 = *(v350 + v349);
  v352 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  v353 = v431;
  swift_beginAccess();
  v354 = *(v353 + v352);

  sub_26BD01478(v351, v354);
  LOBYTE(v353) = v355;

  if ((v353 & 1) == 0)
  {
    goto LABEL_25;
  }

  v356 = (v399 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  swift_beginAccess();
  v357 = *v356;
  v358 = v356[1];
  v359 = (v431 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  swift_beginAccess();
  v360 = v357 == *v359 && v358 == v359[1];
  if (!v360 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v361 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError;
  v362 = v399;
  swift_beginAccess();
  v363 = v383;
  sub_26BD04E2C(v362 + v361);
  v364 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError;
  v365 = v431;
  swift_beginAccess();
  v366 = *(v428 + 48);
  v367 = v363;
  v368 = v385;
  sub_26BD04E2C(v367);
  sub_26BD04E2C(v365 + v364);
  if (__swift_getEnumTagSinglePayload(v368, 1, v430) != 1)
  {
    v369 = v385;
    sub_26BD04E2C(v385);
    if (__swift_getEnumTagSinglePayload(v369 + v366, 1, v430) == 1)
    {

      sub_26BD04E80(v383, &qword_280448F88, &qword_26BDA5440);
      (*(v425 + 8))(v384, v430);
      goto LABEL_150;
    }

    v370 = v425;
    v371 = v385;
    v372 = v420;
    v373 = v430;
    (*(v425 + 32))(v420, v385 + v366, v430);
    sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
    v374 = v384;
    v375 = sub_26BDA0BB0();

    v376 = *(v370 + 8);
    v376(v372, v373);
    sub_26BD04E80(v383, &qword_280448F88, &qword_26BDA5440);
    v376(v374, v373);
    sub_26BD04E80(v371, &qword_280448F88, &qword_26BDA5440);
    return (v375 & 1) != 0;
  }

  sub_26BD04E80(v383, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(v385 + v366, 1, v430) != 1)
  {
LABEL_150:
    sub_26BD04E80(v385, &qword_2804490C8, &qword_26BDA7780);
    return 0;
  }

  sub_26BD04E80(v385, &qword_280448F88, &qword_26BDA5440);
  return 1;
}