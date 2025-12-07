uint64_t sub_1AC5D6C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AC5D6E1C()
{
  OUTLINED_FUNCTION_17_8();
  v2 = sub_1AC79F958();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1AC5D6E5C()
{
  OUTLINED_FUNCTION_17_8();
  sub_1AC79F958();
  v0 = OUTLINED_FUNCTION_26_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1AC5D6E9C@<X0>(uint64_t *a1@<X8>)
{
  result = AnalysisContext.UserDataTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AC5D6EC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AC5D6F34()
{
  OUTLINED_FUNCTION_26_11();
  result = AnalysisContext.contextualStrings.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC5D6F60()
{
  OUTLINED_FUNCTION_26_11();
  result = AnalysisContext.userData.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC5D6F8C()
{
  OUTLINED_FUNCTION_26_11();
  result = AnalysisContext.enhancedContextualStrings.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC5D6FB8()
{
  OUTLINED_FUNCTION_26_11();
  result = AnalysisContext.contextualNamedEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC5D6FEC()
{
  OUTLINED_FUNCTION_26_11();
  result = AnalysisContext.profileData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC5D7040()
{
  OUTLINED_FUNCTION_26_11();
  result = AnalysisContext.jitProfileData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *_s6Speech15AnalysisContextC20ContextualStringsTagVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *_s6Speech15AnalysisContextC20ContextualStringsTagVwta_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1AC5D712C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_613();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D7170()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D71A4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_613();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D71E8()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7220()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D72D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AC5D7308()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D733C()
{

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D7370()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7414()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  v1 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7444()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC5D747C()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D74AC()
{
  MEMORY[0x1B26EABE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D74E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D7528()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7558()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  sub_1AC7A01E8();
  OUTLINED_FUNCTION_80();
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AC5D7600()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v1 = sub_1AC7A01E8();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1AC5D7748()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D7780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AC5D7854()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D78F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1AC5D79D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AC79FB18();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t _s6Speech22RecognizerCapabilitiesVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

char *sub_1AC5D7B28(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_16(a3, result, a2);
  }

  return result;
}

uint64_t sub_1AC5D7BEC()
{

  v0 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D7C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_86_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v5 = *(v4 + 64);

  sub_1AC79F7F8();
  OUTLINED_FUNCTION_22_0();
  (*(v6 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v5, v2 | 7);
}

uint64_t sub_1AC5D7D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_86_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v5 = (((*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1AC79F7F8();
  OUTLINED_FUNCTION_22_0();
  (*(v6 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v2 | 7);
}

uint64_t sub_1AC5D7E3C()
{

  v0 = OUTLINED_FUNCTION_19_9();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D7E6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  OUTLINED_FUNCTION_22_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AC5D7F80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D7FC0@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneticEmbedder.InputFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AC5D7FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D8020()
{

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D8080()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D80B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D80F0()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D8124()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8178()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB30, &qword_1AC7B1CA0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5D81A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_24(*(a1 + *(a3 + 20) + 8));
    }

    v7 = sub_1AC79FBA8();
    v8 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1AC5D827C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1AC79FBA8();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1AC5D8358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*(a1 + 16));
  }

  v7 = sub_1AC79FBA8();
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1AC5D83D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1AC79FBA8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AC5D84C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D8508()
{
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D853C()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D8570()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D85FC()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8630()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8670()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_573();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D86B8()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D86EC()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8734()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8768()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AC5D87B8()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D88F8()
{
  _Block_release(*(v0 + 32));
  v1 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8938()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AC5D89C8()
{
  sub_1AC79F498();
  OUTLINED_FUNCTION_80();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AC5D8B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1AC5D8BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AC5D8C90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D8CD8()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D8D34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D8D6C()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D8E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AC5D8EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AC5D9088()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D9104()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D914C()
{
  MEMORY[0x1B26EABE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D9194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1AC5D91DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1AC5D9228()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC5D9268()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D92A0()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D92D4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t initializeBufferWithCopyOfBuffer for AnalyzerInput(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1AC5D9374(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC5D9384(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_1AC5D93E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC5D9408(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC5D9428(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

void sub_1AC5D9454(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1AC5D948C(uint64_t a1)
{
  v1 = a1;
  sub_1AC7A0E78();
  v2 = sub_1AC625934(v1);
  OUTLINED_FUNCTION_3_2(v2, v3, v4);

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D94E8(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9538()
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1B26E9A40](v0 + 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9578()
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1B26E9A40](v0 & 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D95B4()
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1B26E9A40](v0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D95F0(uint64_t a1)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9638(uint64_t a1, char a2)
{
  sub_1AC7A0E78();
  sub_1AC7A0048();

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D96EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9738(uint64_t a1, unsigned __int8 a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2 + 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9780(uint64_t a1, char a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2 & 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D97C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1AC7A0E78();
  v3 = sub_1AC625934(v2);
  OUTLINED_FUNCTION_3_2(v3, v4, v5);

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9810(uint64_t a1, unsigned __int8 a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9854(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9898()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AC5D9918(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC5D9938(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AC5D9988(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC5D99A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_1AC5D9A48()
{
  OUTLINED_FUNCTION_1_0();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1AC5D9A88(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B838, type metadata accessor for SFSpeechError, &unk_1AC7A6970);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AC5D9AF4(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B838, type metadata accessor for SFSpeechError, &unk_1AC7A6970);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AC5D9B64(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError, &unk_1AC7A6A54);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1AC5D9BE4(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError, &unk_1AC7A6A54);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1AC5D9C50(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError, &unk_1AC7A6A54);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1AC5D9CBC(void *a1, uint64_t a2)
{
  v4 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError, &unk_1AC7A6A54);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1AC5D9D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError, &unk_1AC7A6A54);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1AC5D9DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError, &unk_1AC7A6A54);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1AC5D9F2C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AC5DA13C()
{
  result = qword_1EB56B860;
  if (!qword_1EB56B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B860);
  }

  return result;
}

void sub_1AC5DA268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, int a22, char a23, int a24, char a25, __int16 a26, char a27, char a28, char a29, char a30)
{
  v34 = OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId;
  v35 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v30 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId;
  __swift_storeEnumTagSinglePayload(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId, 1, 1, v35);
  v37 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_locale);
  *v40 = 0;
  v40[1] = 0;
  v41 = v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_snrRatio;
  *v41 = 0;
  *(v41 + 4) = 1;
  v42 = v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_pitch;
  *v42 = 0;
  *(v42 + 4) = 1;
  v84 = OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeUsed;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeUsed) = 2;
  v83 = OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeUsed;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeUsed) = 2;
  v82 = OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeRecognized;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeRecognized) = 2;
  v80 = OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeRecognized;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeRecognized) = 2;
  v79 = OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales) = 0;
  swift_beginAccess();
  sub_1AC5DC800(a1, v30 + v34);
  swift_endAccess();
  swift_beginAccess();
  sub_1AC5DC800(a2, v30 + v36);
  swift_endAccess();
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_timestamp) = a3;
  v43 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType);
  *v43 = a4;
  v43[1] = a5;
  *v37 = a6;
  v37[1] = a7;

  v44 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask);
  *v44 = a8;
  v44[1] = a11;
  *v38 = a12;
  v38[1] = a13;

  v45 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId);
  *v45 = a14;
  v45[1] = a15;
  *v39 = a16;
  v39[1] = a17;

  *v40 = a18;
  v40[1] = a19;

  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_audioDurationMs) = a9;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_recognitionDurationMs) = a10;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_completionState) = a20;
  *v41 = a22;
  *(v41 + 4) = a23 & 1;
  *v42 = a24;
  *(v42 + 4) = a25 & 1;
  *(v30 + v84) = a27;
  *(v30 + v83) = a28;
  *(v30 + v82) = a29;
  *(v30 + v80) = a30;
  v46 = MobileGestalt_get_current_device();
  if (!v46)
  {
    __break(1u);
    goto LABEL_9;
  }

  v47 = v46;
  v48 = MobileGestalt_copy_deviceClass_obj();

  if (!v48)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v49 = sub_1AC79FF68();
  v51 = v50;

  v52 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass);
  *v52 = v49;
  v52[1] = v51;
  v53 = MobileGestalt_get_current_device();
  if (!v53)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v54 = v53;
  v55 = MobileGestalt_copy_productType_obj();

  if (!v55)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v56 = sub_1AC79FF68();
  v58 = v57;

  v59 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType);
  *v59 = v56;
  v59[1] = v58;
  v60 = MobileGestalt_get_current_device();
  if (!v60)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v61 = v60;
  v62 = MobileGestalt_copy_buildVersion_obj();

  if (v62)
  {

    v63 = sub_1AC79FF68();
    v65 = v64;

    v66 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild);
    *v66 = v63;
    v66[1] = v65;
    v67 = [objc_opt_self() sharedPreferences];
    v68 = [v67 siriDataSharingOptInStatus];

    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isSiriOptIn) = v68 == 1;
    v69 = OUTLINED_FUNCTION_14_0();
    LOBYTE(v68) = [v69 assistantIsEnabled];

    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isAssistantEnabled) = v68;
    v70 = OUTLINED_FUNCTION_14_0();
    LOBYTE(v68) = [v70 dictationIsEnabled];

    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isDictationEnabled) = v68;
    v71 = OUTLINED_FUNCTION_14_0();
    v72 = [v71 enabledDictationLocales];

    v73 = sub_1AC79FE28();
    v74 = sub_1AC60536C(v73);
    v75 = sub_1AC5DA8E8(v74);

    *(v30 + v79) = v75;

    v76 = OUTLINED_FUNCTION_14_0();
    v77 = [v76 activeDictationLanguages];

    v78 = sub_1AC7A0158();
    sub_1AC5DC870(a2);
    sub_1AC5DC870(a1);
    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_activeDictationLanguages) = v78;
    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isMultipleDictationKeyboardsInstalled) = *(v78 + 16) > 1uLL;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1AC5DA8E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1AC6310CC(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1AC5DC8D8(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC6310CC(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1AC5DA9FC()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v77 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v77 - v11;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1AC7A09C8();
  v82 = v80;
  v83 = v81;
  MEMORY[0x1B26E8C40](0x3A6449727361, 0xE600000000000000);
  v13 = OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId;
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId, &v80);
  sub_1AC5DC36C(v0 + v13, v12);
  v14 = sub_1AC79F958();
  v15 = OUTLINED_FUNCTION_13_1(v12);
  sub_1AC5DC870(v12);
  if (v15 == 1)
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    sub_1AC5DC36C(v2 + v13, v10);
    result = OUTLINED_FUNCTION_13_1(v10);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_82;
    }

    v17 = sub_1AC79F908();
    v16 = v19;
    (*(*(v14 - 8) + 8))(v10, v14);
  }

  MEMORY[0x1B26E8C40](v17, v16);

  MEMORY[0x1B26E8C40](0x736575716572202CLL, 0xEC0000003A644974);
  v20 = OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId;
  OUTLINED_FUNCTION_12(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId, v79);
  sub_1AC5DC36C(v2 + v20, v7);
  v21 = OUTLINED_FUNCTION_13_1(v7);
  sub_1AC5DC870(v7);
  if (v21 != 1)
  {
    sub_1AC5DC36C(v2 + v20, v1);
    result = OUTLINED_FUNCTION_13_1(v1);
    if (result != 1)
    {
      v23 = sub_1AC79F908();
      v22 = v24;
      (*(*(v14 - 8) + 8))(v1, v14);
      goto LABEL_9;
    }

LABEL_82:
    __break(1u);
    return result;
  }

  v22 = 0xE300000000000000;
  v23 = 7104878;
LABEL_9:
  MEMORY[0x1B26E8C40](v23, v22);

  MEMORY[0x1B26E8C40](0x7473656D6974202CLL, 0xEC0000003A706D61);
  v78 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_timestamp);
  v25 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v25);

  MEMORY[0x1B26E8C40](0xD000000000000011, 0x80000001AC7B4AB0);
  v26 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType);
  v27 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType + 8);

  MEMORY[0x1B26E8C40](v26, v27);

  MEMORY[0x1B26E8C40](0x656767697274202CLL, 0xEE003A6570795472);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType))
  {
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  MEMORY[0x1B26E8C40](0x736154727361202CLL, 0xEA00000000003A6BLL);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x1B26E8C40](v27, v14);

  MEMORY[0x1B26E8C40](0x656C646E7562202CLL, 0xEB000000003A6449);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId))
  {
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  MEMORY[0x1B26E8C40](0x746E65696C63202CLL, 0xEB000000003A6449);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x1B26E8C40](v27, v14);

  MEMORY[0x1B26E8C40](0xD000000000000010, 0x80000001AC7B4AD0);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId))
  {
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  MEMORY[0x1B26E8C40](0x656C61636F6C202CLL, 0xE90000000000003ALL);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_locale))
  {
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_10();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0xD000000000000018, 0x80000001AC7B4B10);
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_10();
  LOBYTE(v78) = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_completionState);
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](0x746152726E73202CLL, 0xEB000000003A6F69);
  OUTLINED_FUNCTION_8();
  if (v28)
  {
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    v30 = sub_1AC7A0418();
    v29 = v31;
  }

  MEMORY[0x1B26E8C40](v30, v29);

  MEMORY[0x1B26E8C40](0x3A6863746970202CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_8();
  v32 = 0xE300000000000000;
  v33 = 7104878;
  v34 = 0xE300000000000000;
  if ((v35 & 1) == 0)
  {
    v33 = sub_1AC7A0418();
    v34 = v36;
  }

  MEMORY[0x1B26E8C40](v33, v34);

  MEMORY[0x1B26E8C40](0x656D4C74696A202CLL, 0xED00003A64657355);
  OUTLINED_FUNCTION_1_1();
  if (v39)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  if (v37 == 2)
  {
    v41 = 7104878;
  }

  else
  {
    v41 = v38;
  }

  if (v37 == 2)
  {
    v42 = 0xE300000000000000;
  }

  else
  {
    v42 = v40;
  }

  MEMORY[0x1B26E8C40](v41, v42);

  MEMORY[0x1B26E8C40](0x656D4C746F61202CLL, 0xED00003A64657355);
  OUTLINED_FUNCTION_1_1();
  if (v39)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  if (v43 == 2)
  {
    v46 = 7104878;
  }

  else
  {
    v46 = v44;
  }

  if (v43 == 2)
  {
    v47 = 0xE300000000000000;
  }

  else
  {
    v47 = v45;
  }

  MEMORY[0x1B26E8C40](v46, v47);

  MEMORY[0x1B26E8C40](0xD000000000000013, 0x80000001AC7B4B50);
  OUTLINED_FUNCTION_1_1();
  if (v39)
  {
    v50 = 0xE500000000000000;
  }

  else
  {
    v50 = 0xE400000000000000;
  }

  if (v48 == 2)
  {
    v51 = 7104878;
  }

  else
  {
    v51 = v49;
  }

  if (v48 == 2)
  {
    v52 = 0xE300000000000000;
  }

  else
  {
    v52 = v50;
  }

  MEMORY[0x1B26E8C40](v51, v52);

  MEMORY[0x1B26E8C40](0xD000000000000013, 0x80000001AC7B4B70);
  OUTLINED_FUNCTION_1_1();
  if (v39)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  if (v53 == 2)
  {
    v56 = 7104878;
  }

  else
  {
    v56 = v54;
  }

  if (v53 == 2)
  {
    v57 = 0xE300000000000000;
  }

  else
  {
    v57 = v55;
  }

  MEMORY[0x1B26E8C40](v56, v57);

  MEMORY[0x1B26E8C40](0x656369766564202CLL, 0xEE003A7373616C43);
  v58 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass);
  v59 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass + 8);

  MEMORY[0x1B26E8C40](v58, v59);

  MEMORY[0x1B26E8C40](0x656369766564202CLL, 0xED00003A65707954);
  v60 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType);
  v61 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType + 8);

  MEMORY[0x1B26E8C40](v60, v61);

  MEMORY[0x1B26E8C40](0x656369766564202CLL, 0xEE003A646C697542);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x1B26E8C40](0x656369766564202CLL, v60);

  MEMORY[0x1B26E8C40](0x697269537369202CLL, 0xEE003A6E4974704FLL);
  v62 = OUTLINED_FUNCTION_4(OBJC_IVAR____TtC6Speech14OndeviceRecord_isSiriOptIn);
  if (v39)
  {
    v63 = 0xE500000000000000;
  }

  else
  {
    v63 = 0xE400000000000000;
  }

  MEMORY[0x1B26E8C40](v62, v63);

  MEMORY[0x1B26E8C40](0xD000000000000015, 0x80000001AC7B4B90);
  v64 = OUTLINED_FUNCTION_4(OBJC_IVAR____TtC6Speech14OndeviceRecord_isAssistantEnabled);
  if (v39)
  {
    v65 = 0xE500000000000000;
  }

  else
  {
    v65 = 0xE400000000000000;
  }

  MEMORY[0x1B26E8C40](v64, v65);

  MEMORY[0x1B26E8C40](0xD000000000000015, 0x80000001AC7B4BB0);
  v66 = OUTLINED_FUNCTION_4(OBJC_IVAR____TtC6Speech14OndeviceRecord_isDictationEnabled);
  if (v39)
  {
    v67 = 0xE500000000000000;
  }

  else
  {
    v67 = 0xE400000000000000;
  }

  MEMORY[0x1B26E8C40](v66, v67);

  MEMORY[0x1B26E8C40](0xD00000000000001BLL, 0x80000001AC7B4BD0);
  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales))
  {

    v69 = MEMORY[0x1B26E8D20](v68, MEMORY[0x1E69E6158]);
    v32 = v70;
  }

  else
  {
    v69 = 7104878;
  }

  MEMORY[0x1B26E8C40](v69, v32);

  MEMORY[0x1B26E8C40](0xD00000000000001BLL, 0x80000001AC7B4BF0);

  v72 = MEMORY[0x1B26E8D20](v71, MEMORY[0x1E69E6158]);
  v74 = v73;

  MEMORY[0x1B26E8C40](v72, v74);

  MEMORY[0x1B26E8C40](0xD000000000000028, 0x80000001AC7B4C10);
  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isMultipleDictationKeyboardsInstalled))
  {
    v75 = 1702195828;
  }

  else
  {
    v75 = 0x65736C6166;
  }

  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isMultipleDictationKeyboardsInstalled))
  {
    v76 = 0xE400000000000000;
  }

  else
  {
    v76 = 0xE500000000000000;
  }

  MEMORY[0x1B26E8C40](v75, v76);

  return v82;
}

id sub_1AC5DB44C()
{
  v2 = v0;
  v3 = sub_1AC79F958();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_completionState);
  v12 = OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId;
  OUTLINED_FUNCTION_12(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId, v72);
  sub_1AC5DC36C(v2 + v12, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3))
  {
    sub_1AC5DC870(v10);
    v69 = 0;
    v70 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v10, v3);
    sub_1AC5DC870(v10);
    v13 = sub_1AC79F908();
    v69 = v14;
    v70 = v13;
    (*(v4 + 8))(v6, v3);
  }

  v15 = OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId;
  OUTLINED_FUNCTION_12(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId, v71);
  sub_1AC5DC36C(v2 + v15, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v3))
  {
    sub_1AC5DC870(v1);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v1, v3);
    sub_1AC5DC870(v1);
    v16 = sub_1AC79F908();
    v67 = v17;
    v68 = v16;
    (*(v4 + 8))(v6, v3);
  }

  v18 = sub_1AC7A0EE8();
  v19 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType + 8);
  v65 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType);
  v66 = v18;
  v20 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType + 8);
  v63 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType);
  v21 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask + 8);
  v61 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask);
  v22 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId + 8);
  v59 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId);
  v23 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId + 8);
  v57 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId);
  v24 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId + 8);
  v55 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId);
  v25 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_locale + 8);
  v53 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_locale);
  v52 = v25;

  v64 = v19;

  v60 = v21;

  v56 = v23;

  v62 = v20;

  v58 = v22;

  v54 = v24;

  v51 = sub_1AC7A03D8();
  v50 = sub_1AC7A03D8();
  OUTLINED_FUNCTION_8();
  if (v26)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_1AC7A0408();
  }

  OUTLINED_FUNCTION_8();
  if (v27)
  {
    v48 = 0;
  }

  else
  {
    v48 = sub_1AC7A0408();
  }

  OUTLINED_FUNCTION_9_0();
  if (v28)
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_1AC7A01A8();
  }

  OUTLINED_FUNCTION_9_0();
  if (v28)
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_1AC7A01A8();
  }

  OUTLINED_FUNCTION_9_0();
  if (v28)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_1AC7A01A8();
  }

  OUTLINED_FUNCTION_9_0();
  if (v28)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_1AC7A01A8();
  }

  v43 = v11 + 1;
  v29 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass + 8);
  v42 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass);
  v30 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType + 8);
  v41 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType);
  v31 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild + 8);
  v40 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild);

  v39 = sub_1AC7A01A8();
  v32 = sub_1AC7A01A8();
  v33 = sub_1AC7A01A8();
  v34 = sub_1AC7A01A8();
  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales))
  {
    v35 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_activeDictationLanguages);
  objc_allocWithZone(MEMORY[0x1E698EA80]);

  return sub_1AC5DC3DC(v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v43, v49, v48, v47, v46, v45, v44, v42, v29, v41, v30, v40, v31, v39, v32, v33, v34, v35, v36);
}

uint64_t sub_1AC5DBB1C()
{
  sub_1AC5DC870(v0 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId);
  sub_1AC5DC870(v0 + OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();

  return v0;
}

uint64_t sub_1AC5DBBEC()
{
  sub_1AC5DBB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for OndeviceRecord(uint64_t a1)
{
  result = qword_1EB56B108;
  if (!qword_1EB56B108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC5DBC98(uint64_t a1)
{
  sub_1AC5DBDA8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AC5DBDA8(uint64_t a1)
{
  if (!qword_1ED937D68)
  {
    sub_1AC79F958();
    v1 = sub_1AC7A0798();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED937D68);
    }
  }
}

void sub_1AC5DBE00()
{
  if (!*(v0 + 16))
  {
    v1 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v2 = [v1 ASR];
    swift_unknownObjectRelease();
    v3 = [v2 RequestMetricsRecord];
    swift_unknownObjectRelease();
    v4 = [v3 source];

    v5 = *(v0 + 16);
    *(v0 + 16) = v4;
  }
}

uint64_t sub_1AC5DBEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, void *a11, uint64_t *a12, uint64_t a13)
{
  v60 = a8;
  v61 = a4;
  v64 = a7;
  v65 = a5;
  v66 = a3;
  v62 = a6;
  v63 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v52 - v20;
  v67 = v13;
  sub_1AC5DBE00();
  type metadata accessor for Instrumentation();
  v56 = sub_1AC727560(a11, a13);
  sub_1AC5DC36C(a1, v21);
  sub_1AC5DC36C(a2, v19);
  v22 = mach_continuous_time();
  v23 = a12[3];
  v58 = a12[2];
  v59 = v22;
  v24 = a12[7];
  v57 = a12[6];
  v25 = a12[4];
  v26 = a12[5];
  v27 = a12[1];
  v54 = *a12;
  v55 = v25;
  v28 = *(a13 + 72);
  v29 = *(a13 + 64) * 1000.0;
  v30 = *(a13 + 56);
  v31 = *(a13 + 60);
  v53 = *(a13 + 240);
  type metadata accessor for OndeviceRecord(0);
  v52[1] = swift_allocObject();
  v32 = v60;

  v33 = v61;

  v69 = v31;
  v51 = v63 | ((HIDWORD(v63) & 1) << 32);
  sub_1AC5DA268(v21, v19, v59, v58, v23, v57, v24, v66, v28, v29, v33, v55, v26, v54, v27, v65, v34, v64, v32, v56, v50, v30, (v30 | (v31 << 32)) >> 32, v51, SBYTE4(v51), SHIWORD(v51), v53, SBYTE1(v53), SBYTE2(v53), SHIBYTE(v53));
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v35 = sub_1AC79FDE8();
  __swift_project_value_buffer(v35, qword_1ED9386C8);

  v36 = sub_1AC79FDC8();
  v37 = sub_1AC7A05E8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v68 = v39;
    *v38 = 136315138;
    v40 = sub_1AC5DA9FC();
    v42 = sub_1AC5CFE74(v40, v41, &v68);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1AC5BC000, v36, v37, "Created on-device record with contents %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1B26EAB10](v39, -1, -1);
    MEMORY[0x1B26EAB10](v38, -1, -1);
  }

  v43 = sub_1AC79FDC8();
  v44 = sub_1AC7A05D8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1AC5BC000, v43, v44, "Queueing on-device record for storage to Biome stream Siri.ASR.RequestMetricsRecord", v45, 2u);
    MEMORY[0x1B26EAB10](v45, -1, -1);
  }

  v46 = *(v67 + 16);
  if (v46)
  {
    v47 = v46;
    v48 = sub_1AC5DB44C();
    [v47 sendEvent_];
  }
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

uint64_t sub_1AC5DC36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1AC5DC3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {
    v53 = sub_1AC79FF58();

    if (a4)
    {
LABEL_3:
      v52 = sub_1AC79FF58();

      goto LABEL_6;
    }
  }

  else
  {
    v53 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v52 = 0;
LABEL_6:
  if (a7)
  {
    v51 = sub_1AC79FF58();
  }

  else
  {
    v51 = 0;
  }

  if (a9)
  {
    v50 = sub_1AC79FF58();
  }

  else
  {
    v50 = 0;
  }

  if (a11)
  {
    v49 = sub_1AC79FF58();
  }

  else
  {
    v49 = 0;
  }

  if (a13)
  {
    v48 = sub_1AC79FF58();
  }

  else
  {
    v48 = 0;
  }

  if (a15)
  {
    v47 = sub_1AC79FF58();
  }

  else
  {
    v47 = 0;
  }

  if (a17)
  {
    v60 = sub_1AC79FF58();
  }

  else
  {
    v60 = 0;
  }

  if (a19)
  {
    v59 = sub_1AC79FF58();
  }

  else
  {
    v59 = 0;
  }

  if (a30)
  {
    v57 = sub_1AC79FF58();
  }

  else
  {
    v57 = 0;
  }

  if (a32)
  {
    v58 = sub_1AC79FF58();
  }

  else
  {
    v58 = 0;
  }

  if (a34)
  {
    v42 = sub_1AC79FF58();
  }

  else
  {
    v42 = 0;
  }

  v45 = sub_1AC7A0148();

  v46 = sub_1AC7A0148();

  LODWORD(v44) = a22;
  v55 = [v54 initWithAsrId:v53 requestId:v52 timestamp:a5 invocationType:v51 triggerType:v50 asrTask:v49 bundleId:v48 clientId:v47 geoLMRegionId:v60 locale:v59 audioDurationMs:a20 recognitionDurationMs:a21 completionState:v44 snrRatio:a23 avgPitch:a24 jitLmeUsed:a25 aotLmeUsed:a26 jitLmeRecognized:a27 aotLmeRecognized:a28 deviceClass:v57 deviceType:v58 deviceBuild:v42 isSiriOptIn:a35 isAssistantEnabled:a36 isDictationEnabled:a37 isMultipleDictationKeyboardsInstalled:a38 enabledDictationLocales:v45 activeDictationLanguages:v46];

  return v55;
}

uint64_t sub_1AC5DC800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC5DC870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AC5DC950()
{
  OUTLINED_FUNCTION_85();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v1[12] = v7;
  v1[13] = v8;
  v1[11] = v9;
  v10 = sub_1AC79FC78();
  v1[20] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[21] = v11;
  v1[22] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F8, &unk_1AC7A6D20);
  v1[23] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[26] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[27] = v15;
  v1[28] = OUTLINED_FUNCTION_189();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B908, &qword_1AC7A6D30);
  v1[31] = v16;
  OUTLINED_FUNCTION_22(v16);
  v1[32] = v17;
  v1[33] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1AC5DCB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  if (swift_distributed_actor_is_remote())
  {
    v17 = v16[33];
    v18 = v16[11];
    v19 = OUTLINED_FUNCTION_140();
    v16[9] = v18;
    v16[8] = v19;
    type metadata accessor for EARSpeechRecognitionResultStream();

    sub_1AC79FC98();
    OUTLINED_FUNCTION_92();
    v20 = sub_1AC5DDE3C();
    if (v17)
    {
      (*(v16[32] + 8))(v16[33], v16[31], v20);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_54();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v26 = v16[13];
      v16[2] = v16[12];
      v16[3] = v26;

      sub_1AC79FC98();
      v27 = OUTLINED_FUNCTION_200();
      sub_1AC5C6DD8(v27);
      v28 = v16[15];
      v16[4] = v16[14];
      v16[5] = v28;

      sub_1AC79FC98();
      v29 = OUTLINED_FUNCTION_200();
      sub_1AC5C6DD8(v29);
      v16[10] = v16[16];
      sub_1AC79FC98();
      v30 = OUTLINED_FUNCTION_200();
      sub_1AC5DDF60(v30);
      v31 = v16[18];
      v16[6] = v16[17];
      v16[7] = v31;

      sub_1AC79FC98();
      v32 = OUTLINED_FUNCTION_200();
      sub_1AC5C6DD8(v32);
      nullsub_1();
      nullsub_1();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6DE8);
      v51 = v41;
      v42 = swift_task_alloc();
      v16[34] = v42;
      *v42 = v16;
      v42[1] = sub_1AC5DD024;
      OUTLINED_FUNCTION_31_0(v16[19]);
      OUTLINED_FUNCTION_54();

      return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, v51, a13, a14, a15, a16);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    v16[37] = v21;
    *v21 = v16;
    v21[1] = sub_1AC5DD23C;
    OUTLINED_FUNCTION_54();

    return sub_1AC5E2180(v22, v23, v24);
  }
}

uint64_t sub_1AC5DD024()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC5DD23C()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1AC5DD4E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v10 = a2[4];
  v3[15] = v10;
  v3[16] = *(v10 - 8);
  v3[17] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v11 = swift_task_alloc();
  v3[18] = v11;
  *v11 = v3;
  v11[1] = sub_1AC5DDAB0;

  return sub_1AC5DC950();
}

uint64_t sub_1AC5DDAB0()
{
  v33 = *(*v0 + 136);
  OUTLINED_FUNCTION_108();
  v32 = *(v1 + 128);
  OUTLINED_FUNCTION_108();
  v28 = *(v2 + 120);
  OUTLINED_FUNCTION_108();
  v31 = *(v3 + 112);
  OUTLINED_FUNCTION_108();
  v30 = *(v4 + 104);
  OUTLINED_FUNCTION_108();
  v26 = *(v5 + 96);
  OUTLINED_FUNCTION_108();
  v29 = *(v6 + 88);
  OUTLINED_FUNCTION_108();
  v27 = *(v7 + 80);
  OUTLINED_FUNCTION_108();
  v9 = *(v8 + 72);
  v25 = *(v10 + 64);
  OUTLINED_FUNCTION_108();
  v24 = *(v11 + 56);
  OUTLINED_FUNCTION_108();
  v13 = *(v12 + 48);
  v15 = v14[5];
  v16 = v14[4];
  v17 = v14[3];
  OUTLINED_FUNCTION_141();
  v19 = v18;
  *v21 = v20;

  (*(v16 + 8))(v15, v17);
  (*(v24 + 8))(v25, v13);
  (*(v27 + 8))(v29, v9);
  (*(v30 + 8))(v31, v26);
  (*(v32 + 8))(v33, v28);

  v22 = *(v19 + 8);

  return v22();
}

__n128 sub_1AC5DDE3C()
{
  *(&v14 + 1) = type metadata accessor for EARSpeechRecognitionResultStream();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B908, &qword_1AC7A6D30);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v1 = *v7;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC90, &qword_1AC7A7E08);
  *&v11 = v1;
  v8 = v13;
  v9 = v14;
  sub_1AC5C3968(&v11, v10);
  sub_1AC5C3978();
  v2 = *(*v0 + 16);
  sub_1AC5C1578(v2);
  v3 = *v0;
  *(v3 + 16) = v2 + 1;
  v4 = (v3 + (v2 << 6));
  result = v8;
  v6 = v10[1];
  v4[4] = v10[0];
  v4[5] = v6;
  v4[2] = v8;
  v4[3] = v9;
  *v0 = v3;
  return result;
}

__n128 sub_1AC5DE11C()
{
  *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B938, &qword_1AC7A72C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B920, &qword_1AC7A72B0);
  sub_1AC79FCA8();
  sub_1AC79FCA8();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC40, &qword_1AC7A7DB8);
  *&v10 = *(&v13 + 1);
  v7 = v12;
  v8 = v13;
  sub_1AC5C3968(&v10, v9);
  sub_1AC5C3978();
  v1 = *(*v0 + 16);
  sub_1AC5C1578(v1);
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  v3 = (v2 + (v1 << 6));
  result = v7;
  v5 = v9[1];
  v3[4] = v9[0];
  v3[5] = v5;
  v3[2] = v7;
  v3[3] = v8;
  *v0 = v2;
  return result;
}

__n128 sub_1AC5DE220()
{
  *(&v12 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B940, &qword_1AC7A73B8);
  sub_1AC79FCA8();
  sub_1AC79FCA8();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC38, &qword_1AC7A7DB0);
  *&v9 = *(&v12 + 1);
  v6 = v11;
  v7 = v12;
  sub_1AC5C3968(&v9, v8);
  sub_1AC5C3978();
  v1 = *(*v0 + 16);
  sub_1AC5C1578(v1);
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  v3 = (v2 + (v1 << 6));
  result = v6;
  v5 = v8[1];
  v3[4] = v8[0];
  v3[5] = v5;
  v3[2] = v6;
  v3[3] = v7;
  *v0 = v2;
  return result;
}

void sub_1AC5DE590()
{
  OUTLINED_FUNCTION_28();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v1 = MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_75(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v2 = OUTLINED_FUNCTION_117();
  v3(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBF0, &qword_1AC7A7D60);
  OUTLINED_FUNCTION_81(v4);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v5, v6, v7, v8, v9);
}

void sub_1AC5DE7C4()
{
  OUTLINED_FUNCTION_28();
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v1 = MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_75(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB40, &qword_1AC7A7C60);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v2 = OUTLINED_FUNCTION_117();
  v3(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB48, &qword_1AC7A7C68);
  OUTLINED_FUNCTION_81(v4);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v5, v6, v7, v8, v9);
}

void sub_1AC5DE8D0()
{
  OUTLINED_FUNCTION_28();
  v1 = OUTLINED_FUNCTION_77();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_177(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB30, &qword_1AC7A7C50);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  sub_1AC5C71B8(v0, &qword_1EB56B8F0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB38, &qword_1AC7A7C58);
  *&v10 = v3;
  v7 = v12;
  v8 = v13;
  OUTLINED_FUNCTION_135(&v10, v9);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v6, v7, v8, v9[0], v9[1]);
}

void sub_1AC5DECB0()
{
  OUTLINED_FUNCTION_28();
  sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v1 = MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_75(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA78, &qword_1AC7A7B30);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v2 = OUTLINED_FUNCTION_117();
  v3(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA80, &qword_1AC7A7B38);
  OUTLINED_FUNCTION_81(v4);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v5, v6, v7, v8, v9);
}

uint64_t sub_1AC5DEFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DEFC4, 0, 0);
}

uint64_t sub_1AC5DEFC4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v14);
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DF0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF0E4, 0, 0);
}

uint64_t sub_1AC5DF0E4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5EFEBC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 80) = v13;
    *v13 = v14;
    v13[1] = sub_1AC5DF1FC;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1AC5DF1FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5DF2FC()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1AC5DF360()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC5DF3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF3E8, 0, 0);
}

uint64_t sub_1AC5DF3E8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    sub_1AC5CF764(0, &qword_1EB56AB70, off_1E797AC80);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DF4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF51C, 0, 0);
}

uint64_t sub_1AC5DF51C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B998, &unk_1AC7A7A10);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DF628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF64C, 0, 0);
}

uint64_t sub_1AC5DF64C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9A0, &unk_1AC7B2F90);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DF758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF77C, 0, 0);
}

uint64_t sub_1AC5DF77C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    sub_1AC5CF764(0, &qword_1EB56AB28, off_1E797AC78);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DF88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF8B0, 0, 0);
}

uint64_t sub_1AC5DF8B0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5EFEBC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_56_1(v13);
    *v14 = v15;
    v14[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DF9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF9E0, 0, 0);
}

uint64_t sub_1AC5DF9E0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_25_1();
  *(v1 + 56) = sub_1AC5EFEBC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 72) = v13;
    *v13 = v14;
    v13[1] = sub_1AC5DFAEC;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1AC5DFAEC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5DFBEC()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC5DFC48()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC5DFCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DFCD0, 0, 0);
}

uint64_t sub_1AC5DFCD0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9A8, &qword_1AC7A7A20);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DFDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5DFDF4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F00FC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBF8, &qword_1AC7A7D70);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DFF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5DFF18()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5F00FC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_56_1(v13);
    *v14 = v15;
    v14[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E0024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E003C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5F00FC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_56_1(v13);
    *v14 = v15;
    v14[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0160()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v14);
    type metadata accessor for LSRAssetInventory();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0274()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0340(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBC8, &qword_1AC7A7D20);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E0380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0398()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0340(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBB8, &qword_1AC7A7D08);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E04A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E04BC()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5F0340(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    v13 = swift_task_alloc();
    *(v1 + 80) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
    OUTLINED_FUNCTION_26_1();
    *v13 = v14;
    v13[1] = sub_1AC5E05D8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1AC5E05D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E06D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E06F0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0340(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    sub_1AC5CF764(0, &qword_1EB56AB60, off_1E797ADF8);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E0800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0818()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    type metadata accessor for EARSpeechRecognizer();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0930()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_25_1();
  *(v1 + 56) = sub_1AC5C7608(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 72) = v13;
    *v13 = v14;
    v13[1] = sub_1AC5E0A40;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1AC5E0A40()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E0B40()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC5E0B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0BB0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5C7608(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    v13 = swift_task_alloc();
    *(v1 + 80) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB18, &qword_1AC7A7C28);
    OUTLINED_FUNCTION_26_1();
    *v13 = v14;
    v13[1] = sub_1AC5E0CCC;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1AC5E0CCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E0DCC()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1AC5E0E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0E4C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v14);
    type metadata accessor for EAREuclid();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0F60()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v14);
    type metadata accessor for EARLanguageDetector();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E105C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1074()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5C7608(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_56_1(v13);
    *v14 = v15;
    v14[1] = sub_1AC5E1180;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1180()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E1280()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();

  return v1(0);
}

uint64_t sub_1AC5E12E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1300()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v14);
    type metadata accessor for EARFullPayloadCorrector();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5E13FC;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E13FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E14FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1514()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v14);
    type metadata accessor for EARTranscriptionEvaluator();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1628()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_25_1();
  *(v1 + 56) = sub_1AC5D0940(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 72) = v13;
    *v13 = v14;
    v13[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1AC5E1734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E174C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F07C8(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    sub_1AC5CF764(0, &qword_1EB56AB70, off_1E797AC80);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E185C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1874()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5F0A0C(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_56_1(v13);
    *v14 = v15;
    v14[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1998()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0C50(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    sub_1AC5CF764(0, &qword_1EB56BA40, off_1E797AC68);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1AC0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0E94(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA18, &qword_1AC7A7AD0);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1BE4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0E94(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1D0C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0E94(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9F8, &qword_1AC7A7AA0);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1E30()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5F0E94(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 80) = v13;
    *v13 = v14;
    v13[1] = sub_1AC5E05D8;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1AC5E1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1F60()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F07C8(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E2084()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F07C8(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v14);
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    OUTLINED_FUNCTION_26_1();
    *v0 = v15;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E21FC()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B910, &unk_1AC7A6E00);
  v0[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_189();
  v0[14] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E2300()
{
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[14];
    v2 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_206(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v3 = OUTLINED_FUNCTION_92();
    sub_1AC5DDFEC(v3);
    if (v1)
    {
      (*(v0[12] + 8))(v0[14], v0[11]);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_168();

      __asm { BRAA            X1, X16 }
    }

    v8 = v0[13];
    v0[4] = v0[6];

    OUTLINED_FUNCTION_171_0();
    sub_1AC79FC98();
    sub_1AC5DDFEC(v8);
    nullsub_1();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_1AC5E256C;
    OUTLINED_FUNCTION_9_1(v0[7]);
    OUTLINED_FUNCTION_168();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_168();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E256C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E2684()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_166();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_170();
  v3(v4);
  v5 = OUTLINED_FUNCTION_123();
  v3(v5);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_149_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AC5E272C()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5E2798()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_166();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_170();
  v3(v4);
  v5 = OUTLINED_FUNCTION_123();
  v3(v5);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AC5E2844(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_1AC5E2A94;

  return sub_1AC5E21FC();
}

uint64_t sub_1AC5E2A94()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_141();
  v1 = v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_77();
  v4(v3);
  v5 = OUTLINED_FUNCTION_170();
  v6(v5);

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC5E2C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5E2C98, 0, 0);
}

uint64_t sub_1AC5E2C98()
{
  v30 = v1;
  v3 = OUTLINED_FUNCTION_38();
  v4 = sub_1AC5EFEBC(v3);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
LABEL_3:

    return v5();
  }

  v7 = v4;
  v8 = [v4 remoteObjectProxy];
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_43();
  v9 = v1[6];
  sub_1AC79FC68();
  v10 = sub_1AC7A0838();
  v12 = v11;

  if (v12)
  {
    v14 = v1[9];
    v13 = v1[10];
    v26 = MEMORY[0x1E69E7CC0];
    v15 = *(*(v13 + 128) + 16);

    os_unfair_lock_lock(v15);
    sub_1AC5D1B54(&v26, v14);
    os_unfair_lock_unlock(v15);

    type metadata accessor for EARSpeechRecognizer();
    v2 = v9;
    sub_1AC5EDC90(v10, v12, v2);
    v17 = v16;

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v18 = sub_1AC79FDE8();
    __swift_project_value_buffer(v18, qword_1ED9386C8);
    if (v17)
    {

      OUTLINED_FUNCTION_29();
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = v10;
  v25 = v2;

  v19 = sub_1AC79FDC8();
  v20 = sub_1AC7A05F8();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_107();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    v28 = 0;
    *v21 = 136315138;
    v29 = 0xE000000000000000;
    sub_1AC7A09C8();

    v28 = 0xD00000000000002ALL;
    v29 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v24, v12);

    v23 = sub_1AC5CFE74(v28, v29, &v27);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1AC5BC000, v19, v20, "Failed precondition: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5E2FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E36C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E4268()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v0[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v11 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v11);
    v12 = OUTLINED_FUNCTION_117();
    sub_1AC5CFBB8(v12, v13);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v14 = OUTLINED_FUNCTION_63();
    sub_1AC5D0788(v14);
    if (v10)
    {
      v15 = OUTLINED_FUNCTION_59_1();
      v16(v15);

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v42 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_143_0(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_14_1(v32);
      OUTLINED_FUNCTION_174();

      return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, v42);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

uint64_t sub_1AC5E44FC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E4614(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC604AD0;

    return sub_1AC5E4268();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E4788()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v0[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E4880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v11 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v11);
    v12 = OUTLINED_FUNCTION_117();
    sub_1AC5CFBB8(v12, v13);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v14 = OUTLINED_FUNCTION_63();
    sub_1AC5D0788(v14);
    if (v10)
    {
      v15 = OUTLINED_FUNCTION_59_1();
      v16(v15);

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v42 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_143_0(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_14_1(v32);
      OUTLINED_FUNCTION_174();

      return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, v42);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

uint64_t sub_1AC5E4A1C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC604AD0;

    return sub_1AC5E4788();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E4B90()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v0[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v11 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v11);
    v12 = OUTLINED_FUNCTION_117();
    sub_1AC5CFBB8(v12, v13);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v14 = OUTLINED_FUNCTION_63();
    sub_1AC5D0788(v14);
    if (v10)
    {
      v15 = OUTLINED_FUNCTION_59_1();
      v16(v15);

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v42 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_143_0(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_14_1(v32);
      OUTLINED_FUNCTION_174();

      return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, v42);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

uint64_t sub_1AC5E4E24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC604AD0;

    return sub_1AC5E4B90();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E4F98()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5E5034()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7018);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5E5184()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *v7 = *v1;
  v6[9] = v0;

  if (!v0)
  {
    v6[10] = v3;
    v6[11] = v5;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E52BC()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  v3 = v0[1];
  v5 = v0[10];
  v4 = v0[11];

  return v3(v4, v5);
}

uint64_t sub_1AC5E5360()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC5E53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E545C;

  return sub_1AC5E4F98();
}

uint64_t sub_1AC5E545C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 16);
  *v1 = v2;
  v1[1] = v3;

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC5E5590()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5E562C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7070);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5E577C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_132_0();

  if (!v0)
  {
    *(v3 + 80) = v1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E58C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5E5590();
}

uint64_t sub_1AC5E5994()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5E5A30()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A70E0);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5E5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5E5994();
}

uint64_t sub_1AC5E5C7C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5E5D18()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7150);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5E5E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5E5C7C();
}

uint64_t sub_1AC5E5F64()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5E6000()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A71C8);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5E6150()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_132_0();

  if (!v0)
  {
    *(v3 + 80) = v1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E626C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_1AC5E630C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC5E5F64();
}

uint64_t sub_1AC5E63A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  **(v0 + 16) = v1;

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC5E64D8()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5E6574()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5E66B8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E67D0()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC5E6838()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5E6890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC5E64D8();
}

uint64_t sub_1AC5E6924()
{
  OUTLINED_FUNCTION_85();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v1[9] = v7;
  v8 = sub_1AC79FC78();
  v1[16] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[19] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_189();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC5E6A48()
{
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[23];
    v2 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_181(v2);
    OUTLINED_FUNCTION_197();
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v3 = OUTLINED_FUNCTION_92();
    sub_1AC5C6DD8(v3);
    if (v1)
    {
      (*(v0[20] + 8))(v0[23], v0[19]);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_168();

      __asm { BRAA            X1, X16 }
    }

    v8 = v0[12];
    v0[4] = v0[11];
    v0[5] = v8;

    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_164();
    sub_1AC79FC98();
    v9 = OUTLINED_FUNCTION_119();
    sub_1AC5C6DD8(v9);
    v10 = v0[14];
    v0[6] = v0[13];
    v0[7] = v10;

    OUTLINED_FUNCTION_118_0();
    sub_1AC79FC98();
    v11 = OUTLINED_FUNCTION_119();
    sub_1AC5C6DD8(v11);
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_1AC5E6D20;
    OUTLINED_FUNCTION_31_0(v0[15]);
    OUTLINED_FUNCTION_168();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_168();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E6D20()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E6E38()
{
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_172_0();
  v4(v3);
  v5 = *(v2 + 8);
  v5(v0, v1);
  v6 = OUTLINED_FUNCTION_193();
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_198();
  (v5)(v7);

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1AC5E6F08()
{
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5E6F88()
{
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_172_0();
  v4(v3);
  v5 = *(v2 + 8);
  v5(v0, v1);
  v6 = OUTLINED_FUNCTION_193();
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_198();
  (v5)(v7);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC5E705C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1AC6E6540();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_1AC5E73A0;

  return sub_1AC5E6924();
}

uint64_t sub_1AC5E73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_50();
  v43 = *(v17 + 72);
  OUTLINED_FUNCTION_64_1();
  v19 = *(v18 + 64);
  v21 = *(v20 + 56);
  v42 = *(v20 + 48);
  OUTLINED_FUNCTION_64_1();
  v23 = *(v22 + 40);
  v25 = v24[4];
  v26 = v24[3];
  v27 = v24[2];
  OUTLINED_FUNCTION_141();
  v29 = v28;
  OUTLINED_FUNCTION_18();
  *v30 = v29;

  (*(v26 + 8))(v25, v27);
  (*(v42 + 8))(v21, v23);
  v31 = OUTLINED_FUNCTION_117();
  v32(v31);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v19 - 8, v43, v16, a14, a15, a16);
}

uint64_t sub_1AC5E75E8()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 192) = v22;
  *(v1 + 200) = v0;
  *(v1 + 176) = v21;
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  *(v1 + 128) = v6;
  *(v1 + 136) = v7;
  *(v1 + 112) = v8;
  *(v1 + 120) = v9;
  v10 = sub_1AC79FC78();
  *(v1 + 208) = v10;
  OUTLINED_FUNCTION_22(v10);
  *(v1 + 216) = v11;
  *(v1 + 224) = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B920, &qword_1AC7A72B0);
  *(v1 + 232) = v12;
  OUTLINED_FUNCTION_22(v12);
  *(v1 + 240) = v13;
  *(v1 + 248) = OUTLINED_FUNCTION_189();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B928, &qword_1AC7A72B8);
  *(v1 + 288) = v14;
  OUTLINED_FUNCTION_22(v14);
  *(v1 + 296) = v15;
  *(v1 + 304) = OUTLINED_FUNCTION_189();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC5E7EF4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E800C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v24 = OUTLINED_FUNCTION_101();
  v25(v24);
  v26 = *(v19 + 8);
  v26(v23, v17);
  v26(v22, v17);
  v26(v21, v17);
  v26(v20, v17);
  v26(a10, v17);
  v27 = *(v18 + 8);
  v27(a11, v16);
  v27(a12, v16);
  v27(a13, v16);
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_54();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC5E8160()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5E820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v25 = OUTLINED_FUNCTION_101();
  v26(v25);
  v27 = *(v20 + 8);
  v27(v24, v17);
  v27(v23, v17);
  v27(v22, v17);
  v27(v21, v17);
  v27(a10, v17);
  v28 = *(v18 + 8);
  v28(a11, v16);
  v28(a12, v16);
  v28(a13, v16);
  OUTLINED_FUNCTION_204(*(v19 + 320));

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC5E836C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1AC6E6540();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1AC6E6540();
  v8 = a2[3];
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1AC6E6540();
  v9 = a2[4];
  v2[14] = v9;
  v2[15] = *(v9 - 8);
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC6E6540();
  v10 = a2[5];
  v2[17] = v10;
  v2[18] = *(v10 - 8);
  v2[19] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1AC6E6540();
  v11 = a2[6];
  v2[20] = v11;
  v2[21] = *(v11 - 8);
  v2[22] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1AC6E6540();
  v12 = a2[7];
  v2[23] = v12;
  v2[24] = *(v12 - 8);
  v2[25] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v13 = swift_task_alloc();
  v2[26] = v13;
  *v13 = v2;
  v13[1] = sub_1AC5E8DF0;

  return sub_1AC5E75E8();
}

uint64_t sub_1AC5E8DF0()
{
  OUTLINED_FUNCTION_50();
  v47 = *(v0 + 200);
  OUTLINED_FUNCTION_64_1();
  v46 = *(v1 + 192);
  OUTLINED_FUNCTION_64_1();
  v40 = *(v2 + 184);
  OUTLINED_FUNCTION_64_1();
  v45 = *(v3 + 176);
  OUTLINED_FUNCTION_64_1();
  v44 = *(v4 + 168);
  OUTLINED_FUNCTION_64_1();
  v38 = *(v5 + 160);
  OUTLINED_FUNCTION_64_1();
  v43 = *(v6 + 152);
  OUTLINED_FUNCTION_64_1();
  v42 = *(v7 + 144);
  OUTLINED_FUNCTION_64_1();
  v33 = *(v8 + 136);
  OUTLINED_FUNCTION_64_1();
  v41 = *(v9 + 128);
  OUTLINED_FUNCTION_64_1();
  v39 = *(v10 + 120);
  OUTLINED_FUNCTION_64_1();
  v30 = *(v11 + 112);
  OUTLINED_FUNCTION_64_1();
  v37 = *(v12 + 104);
  OUTLINED_FUNCTION_64_1();
  v36 = *(v13 + 96);
  OUTLINED_FUNCTION_64_1();
  v15 = *(v14 + 88);
  v35 = *(v16 + 80);
  OUTLINED_FUNCTION_64_1();
  v34 = *(v17 + 72);
  OUTLINED_FUNCTION_64_1();
  v19 = *(v18 + 64);
  v32 = *(v20 + 56);
  OUTLINED_FUNCTION_64_1();
  v31 = *(v21 + 48);
  OUTLINED_FUNCTION_64_1();
  v23 = *(v22 + 40);
  v25 = v24[4];
  v26 = v24[3];
  v27 = v24[2];
  OUTLINED_FUNCTION_141();

  (*(v26 + 8))(v25, v27);
  (*(v31 + 8))(v32, v23);
  (*(v34 + 8))(v35, v19);
  (*(v36 + 8))(v37, v15);
  (*(v39 + 8))(v41, v30);
  (*(v42 + 8))(v43, v33);
  (*(v44 + 8))(v45, v38);
  (*(v46 + 8))(v47, v40);

  OUTLINED_FUNCTION_44();

  return v28();
}

uint64_t sub_1AC5E92CC()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FC78();
  v1[6] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B940, &qword_1AC7A73B8);
  v1[9] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E93CC()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[11];
    v2 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_206(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
    OUTLINED_FUNCTION_144();
    sub_1AC79FC98();
    OUTLINED_FUNCTION_92();
    v3 = sub_1AC5DE220();
    if (v1)
    {
      (*(v0[10] + 8))(v0[11], v0[9], v3);

      OUTLINED_FUNCTION_207();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v5(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v17 = swift_task_alloc();
      v0[12] = v17;
      *v17 = v0;
      v17[1] = sub_1AC5E9574;
      OUTLINED_FUNCTION_9_1(v0[5]);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC5E9574()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E968C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC604AD0;

    return sub_1AC5E92CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E97FC()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E98F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v11 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v11);

    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v12 = OUTLINED_FUNCTION_63();
    sub_1AC5C6DD8(v12);
    if (v10)
    {
      v13 = OUTLINED_FUNCTION_59_1();
      v14(v13);

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v40 = v28;
      v29 = swift_task_alloc();
      v30 = OUTLINED_FUNCTION_143_0(v29);
      *v30 = v31;
      OUTLINED_FUNCTION_14_1(v30);
      OUTLINED_FUNCTION_174();

      return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, v40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }
}

uint64_t sub_1AC5E9A90(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC604AD0;

    return sub_1AC5E97FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E9C04()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E9CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v11 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v11);

    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v12 = OUTLINED_FUNCTION_63();
    sub_1AC5C6DD8(v12);
    if (v10)
    {
      v13 = OUTLINED_FUNCTION_59_1();
      v14(v13);

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v40 = v28;
      v29 = swift_task_alloc();
      v30 = OUTLINED_FUNCTION_143_0(v29);
      *v30 = v31;
      OUTLINED_FUNCTION_14_1(v30);
      OUTLINED_FUNCTION_174();

      return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, v40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }
}

uint64_t sub_1AC5E9E88()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5E9FA0()
{
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_190();
  v1(v0);
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1AC5EA028()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5EA084()
{
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_190();
  v1(v0);
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC5EA118(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC604AD0;

    return sub_1AC5E9C04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5EA28C()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[11] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5EA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v11 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v11);

    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v12 = OUTLINED_FUNCTION_63();
    sub_1AC5C6DD8(v12);
    if (v10)
    {
      v13 = OUTLINED_FUNCTION_59_1();
      v14(v13);

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v40 = v28;
      v29 = swift_task_alloc();
      v30 = OUTLINED_FUNCTION_143_0(v29);
      *v30 = v31;
      OUTLINED_FUNCTION_14_1(v30);
      OUTLINED_FUNCTION_174();

      return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, v40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }
}

uint64_t sub_1AC5EA510(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC604AD0;

    return sub_1AC5EA28C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5EA684()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5EA720()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5EA864()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5EA97C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC5EA684();
}

uint64_t sub_1AC5EAA10()
{
  OUTLINED_FUNCTION_85();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1AC79FC78();
  v1[12] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B950, &qword_1AC7A7590);
  v1[15] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B958, &qword_1AC7A7598);
  v1[18] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[21] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B968, &qword_1AC7A75A8);
  v1[24] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[25] = v15;
  v1[26] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC5EAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[26];
    v16 = v14[7];
    v17 = OUTLINED_FUNCTION_140();
    v14[3] = v16;
    v14[2] = v17;
    sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
    v18 = v16;
    sub_1AC79FC98();
    v19 = OUTLINED_FUNCTION_92();
    sub_1AC5DE324(v19);
    if (v15)
    {
      (*(v14[25] + 8))(v14[26], v14[24]);

      OUTLINED_FUNCTION_154();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_115();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v24 = v14[23];
      v25 = v14[8];
      v14[4] = v25;
      sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
      v26 = v25;
      sub_1AC79FC98();
      sub_1AC5DE3C0(v24);
      v27 = v14[20];
      v28 = v14[9];
      v14[5] = v28;
      sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
      v29 = v28;
      OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_192();
      sub_1AC79FC98();
      sub_1AC5DE45C(v27);
      v30 = v14[17];
      v31 = v14[10];
      v14[6] = v31;
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B970, &unk_1AC7A75B0);
      OUTLINED_FUNCTION_192();
      sub_1AC79FC98();
      sub_1AC5DE4F8(v30);
      nullsub_1();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v52 = v41;
      v42 = swift_task_alloc();
      v14[27] = v42;
      *v42 = v14;
      v42[1] = sub_1AC5EB054;
      OUTLINED_FUNCTION_15_0(v14[11]);
      OUTLINED_FUNCTION_115();

      return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, a11, a12, a13, a14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }
}

uint64_t sub_1AC5EB054()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5EB254()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5EB3D0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v8 = a2[3];
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v9 = swift_task_alloc();
  v2[14] = v9;
  *v9 = v2;
  v9[1] = sub_1AC5EB834;

  return sub_1AC5EAA10();
}

uint64_t sub_1AC5EB834()
{
  OUTLINED_FUNCTION_50();
  v26 = *(v0 + 104);
  OUTLINED_FUNCTION_64_1();
  v25 = *(v1 + 96);
  OUTLINED_FUNCTION_64_1();
  v3 = *(v2 + 88);
  v24 = *(v4 + 80);
  OUTLINED_FUNCTION_64_1();
  v23 = *(v5 + 72);
  OUTLINED_FUNCTION_64_1();
  v7 = *(v6 + 64);
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_64_1();
  v21 = *(v9 + 48);
  OUTLINED_FUNCTION_64_1();
  v11 = *(v10 + 40);
  v13 = v12[4];
  v14 = v12[3];
  v15 = v12[2];
  OUTLINED_FUNCTION_141();
  v17 = v16;
  OUTLINED_FUNCTION_18();
  *v18 = v17;

  (*(v14 + 8))(v13, v15);
  (*(v21 + 8))(v22, v11);
  (*(v23 + 8))(v24, v7);
  (*(v25 + 8))(v26, v3);

  v19 = *(v17 + 8);

  return v19();
}

uint64_t sub_1AC5EBB24()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FC78();
  v1[6] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[9] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5EBC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  if (swift_distributed_actor_is_remote())
  {
    v11 = v10[11];
    v12 = v10[4];
    v13 = OUTLINED_FUNCTION_140();
    v10[3] = v12;
    v10[2] = v13;
    sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    v14 = v12;
    OUTLINED_FUNCTION_144();
    sub_1AC79FC98();
    v15 = OUTLINED_FUNCTION_92();
    sub_1AC5DE3C0(v15);
    if (v11)
    {
      (*(v10[10] + 8))(v10[11], v10[9]);

      OUTLINED_FUNCTION_207();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A6E70);
      v39 = v29;
      v30 = swift_task_alloc();
      v10[12] = v30;
      *v30 = v10;
      v30[1] = sub_1AC5EBDE4;
      OUTLINED_FUNCTION_15_0(v10[5]);
      OUTLINED_FUNCTION_174();

      return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, v39);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }
}

uint64_t sub_1AC5EBDE4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_88();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC5EBEFC()
{
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_199();
  v1(v0);
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);
  OUTLINED_FUNCTION_207();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1AC5EBF84()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_207();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5EBFE0()
{
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_199();
  v1(v0);
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC5EC074(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_1AC5EC1E4;

    return sub_1AC5EBB24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5EC1E4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_141();
  v1 = v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_170();
  v4(v3);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC5EC338()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5EC3D4()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_155();

      return v4(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7750);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5EC524()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  OUTLINED_FUNCTION_132_0();

  if (!v0)
  {
    *(v4 + 80) = v3 & 1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC5EC64C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_1AC5EC6EC()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_82();

  return v2(0);
}

uint64_t sub_1AC5EC754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5EC7EC;

  return sub_1AC5EC338();
}

uint64_t sub_1AC5EC7EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  **(v0 + 16) = v1;

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC5EC920()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5EC9BC()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A77A8);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5ECB0C()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC5ECC40()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  OUTLINED_FUNCTION_44();
  v4.n128_u64[0] = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_1AC5ECCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5ECD78;

  return sub_1AC5EC920();
}

uint64_t sub_1AC5ECD78()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;
  *v3 = v4;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC5ECEA4()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5ECF40()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7808);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5ED0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5ECEA4();
}

uint64_t sub_1AC5ED18C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5ED228()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_155();

      return v4(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7750);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC5ED378()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  OUTLINED_FUNCTION_132_0();

  if (!v0)
  {
    *(v4 + 80) = v3 & 1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC5ED4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AE4;

  return sub_1AC5ED18C();
}

uint64_t sub_1AC5ED59C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EF99C(a1, a2, a3, a4, type metadata accessor for EARSpeechRecognizer);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARSpeechRecognizer();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    v11 = OUTLINED_FUNCTION_117();
    sub_1AC5D0DD0(v11, v12, v6);
  }

  return v10;
}

uint64_t sub_1AC5ED634()
{
  sub_1AC6E80A4(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_1AC5D1128(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC5ED684()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_1AC5D1128(*(v0 + 112), *(v0 + 120), *(v0 + 128));

    swift_defaultActor_destroy();
  }

  else
  {
    sub_1AC5ED634();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC5ED700()
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognizer();
  OUTLINED_FUNCTION_103_0();
  sub_1AC604360(v0, v1, v2, &unk_1AC7A7944);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5ED77C()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARSpeechRecognizer();
    OUTLINED_FUNCTION_103_0();
    sub_1AC604360(v1, v2, v3, &unk_1AC7A7994);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC5ED84C(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC604360(&qword_1EB56AE98, v1, type metadata accessor for EARSpeechRecognizer, &unk_1AC7A7994);
  return sub_1AC79FC28();
}

uint64_t sub_1AC5ED8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

id sub_1AC5ED91C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 128);
  *(a1 + 16) = v5;
  return sub_1AC5D0DD0(v3, v4, v5);
}

uint64_t sub_1AC5ED934(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARSpeechRecognizer();
  v6 = sub_1AC604360(&qword_1EB56AE98, v5, type metadata accessor for EARSpeechRecognizer, &unk_1AC7A7994);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC5ED9BC(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC604360(&qword_1EB56AE98, v1, type metadata accessor for EARSpeechRecognizer, &unk_1AC7A7994);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC5EDA50@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC604360(&qword_1EB56AE98, v4, type metadata accessor for EARSpeechRecognizer, &unk_1AC7A7994);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1AC5EDAF0()
{
  result = qword_1ED937958;
  if (!qword_1ED937958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED937958);
  }

  return result;
}

id sub_1AC5EDC68()
{
  result = xpcInterface_EARSpeechRecognizer();
  qword_1EB56E668 = result;
  return result;
}

void sub_1AC5EDC90(char *a1, char *a2, void *a3)
{
  v7 = 0xD000000000000035;
  OUTLINED_FUNCTION_65();
  v12 = a1 == 0xD000000000000022 && v8 == a2;
  if (v12 || (v13 = v11, v14 = v10, v15 = v9, (OUTLINED_FUNCTION_53(0xD000000000000022, v8) & 1) != 0))
  {
    [a3 hello];
    return;
  }

  OUTLINED_FUNCTION_65();
  v17 = a1 == 0xD000000000000070 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_53(0xD000000000000070, v16) & 1) != 0)
  {
    v18 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v18, v19, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v366)
    {
      v20 = OUTLINED_FUNCTION_71();
      sub_1AC5C3968(v20, v21);
      sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
      OUTLINED_FUNCTION_66();
      swift_dynamicCast();
      v13 = v357;
      OUTLINED_FUNCTION_128();
      sub_1AC5D1E4C(v15 + 64, &v354, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v356)
      {
        sub_1AC5C3968(&v354, &v358);
        v22 = sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
        OUTLINED_FUNCTION_134(&v350, &v358, v23, v22);
        v14 = v350;
        OUTLINED_FUNCTION_129_1(2);
        sub_1AC5D1E4C(v15 + 96, &v347, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v349)
        {
          sub_1AC5C3968(&v347, &v351);
          v24 = sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
          OUTLINED_FUNCTION_134(&v346, &v351, v25, v24);
          v26 = v346;
          OUTLINED_FUNCTION_129_1(3);
          sub_1AC5D1E4C(v15 + 128, &v342, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v345)
          {
            sub_1AC5CF764(0, &qword_1EB56AB68, off_1E797ADC0);
            if (swift_dynamicCast())
            {
              v27 = v335;
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            sub_1AC5C71B8(&v342, &unk_1EB56C620);
            v27 = 0;
          }

          v28 = OUTLINED_FUNCTION_116_0();
          [v28 v29];

          goto LABEL_21;
        }

        goto LABEL_103;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    OUTLINED_FUNCTION_65();
    v124 = a1 == 0xD00000000000002DLL && v123 == a2;
    if (v124 || (OUTLINED_FUNCTION_53(0xD00000000000002DLL, v123) & 1) != 0)
    {
      [a3 pauseRecognition];
      return;
    }

LABEL_115:
    OUTLINED_FUNCTION_65();
    v126 = a1 == v7 + 35 && v125 == a2;
    if (v126 || (OUTLINED_FUNCTION_53((v7 + 35), v125) & 1) != 0)
    {
      v127 = OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_145(v127, v128, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v366)
      {
        v129 = OUTLINED_FUNCTION_71();
        v131 = sub_1AC5C3968(v129, v130);
        OUTLINED_FUNCTION_36(v131, v132, v133, MEMORY[0x1E69E6158], v134, v135, v136, v137, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
        swift_dynamicCast();
        v138 = sub_1AC79FF58();

        OUTLINED_FUNCTION_128();
        sub_1AC5D1E4C(v15 + 64, &v365, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v366)
        {
          v139 = OUTLINED_FUNCTION_71();
          v141 = sub_1AC5C3968(v139, v140);
          OUTLINED_FUNCTION_36(v141, v142, v143, MEMORY[0x1E69E6158], v144, v145, v146, v147, v315, v322, v329, v336, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
          swift_dynamicCast();
          v148 = sub_1AC79FF58();

          OUTLINED_FUNCTION_129_1(2);
          sub_1AC5D1E4C(v15 + 96, &v365, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v366)
          {
            v149 = OUTLINED_FUNCTION_71();
            v151 = sub_1AC5C3968(v149, v150);
            OUTLINED_FUNCTION_36(v151, v152, v153, MEMORY[0x1E69E6158], v154, v155, v156, v157, v316, v323, v330, v337, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
            v158 = swift_dynamicCast();
            v166 = OUTLINED_FUNCTION_208(v158, v159, v160, v161, v162, v163, v164, v165, v317, v324, v331, v338, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358, *(&v358 + 1));

            v167 = OUTLINED_FUNCTION_116_0();
            [v167 v168];

            return;
          }

          goto LABEL_250;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

LABEL_126:
    OUTLINED_FUNCTION_65();
    v170 = a1 == v7 + 140 && v169 == a2;
    if (v170 || (OUTLINED_FUNCTION_53((v7 + 140), v169) & 1) != 0)
    {
      OUTLINED_FUNCTION_74_1();
      v171 = sub_1AC5D1E4C(v15 + 32, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v362)
      {
        if (OUTLINED_FUNCTION_49(v171, v172, v173, MEMORY[0x1E69E6158]))
        {
          v174 = sub_1AC79FF58();

          goto LABEL_137;
        }

LABEL_136:
        v174 = 0;
LABEL_137:
        OUTLINED_FUNCTION_128();
        v175 = sub_1AC5D1E4C(v15 + 64, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v362)
        {
          if (OUTLINED_FUNCTION_49(v175, v176, v177, MEMORY[0x1E69E6158]))
          {
            v178 = sub_1AC79FF58();

            goto LABEL_142;
          }
        }

        else
        {
          sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
        }

        v178 = 0;
LABEL_142:
        OUTLINED_FUNCTION_129_1(2);
        v179 = sub_1AC5D1E4C(v15 + 96, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v362)
        {
          if (OUTLINED_FUNCTION_49(v179, v180, v181, MEMORY[0x1E69E6158]))
          {
            v182 = sub_1AC79FF58();

LABEL_147:
            OUTLINED_FUNCTION_129_1(3);
            sub_1AC5D1E4C(v15 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v362)
            {
              v183 = sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49(v183, v184, v185, v183);
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v187 = 0;
              }

              else
              {
                v187 = v186;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v187 = 0;
            }

            OUTLINED_FUNCTION_129_1(4);
            sub_1AC5D1E4C(v15 + 160, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v362)
            {
              v188 = sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49(v188, v189, v190, v188);
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v192 = 0;
              }

              else
              {
                v192 = v191;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v192 = 0;
            }

            OUTLINED_FUNCTION_129_1(5);
            sub_1AC5D1E4C(v15 + 192, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v362)
            {
              v193 = sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49(v193, v194, v195, v193);
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v197 = 0;
              }

              else
              {
                v197 = v196;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v197 = 0;
            }

            OUTLINED_FUNCTION_129_1(6);
            sub_1AC5D1E4C(v15 + 224, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v362)
            {
              v198 = sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49(v198, v199, v200, v198);
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v202 = 0;
              }

              else
              {
                v202 = v201;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v202 = 0;
            }

            OUTLINED_FUNCTION_129_1(7);
            sub_1AC5D1E4C(v15 + 256, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v362)
            {
              v203 = sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
              OUTLINED_FUNCTION_49(v203, v204, v205, v203);
              OUTLINED_FUNCTION_165();
              if (v12)
              {
                v35 = 0;
              }

              else
              {
                v35 = v206;
              }
            }

            else
            {
              sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
              v35 = 0;
            }

            v207 = OUTLINED_FUNCTION_116_0();
            [v207 v208];

            goto LABEL_35;
          }
        }

        else
        {
          sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
        }

        v182 = 0;
        goto LABEL_147;
      }

LABEL_135:
      sub_1AC5C71B8(&aBlock, &unk_1EB56C620);
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_65();
    v210 = a1 == v7 - 4 && v209 == a2;
    if (v210 || (OUTLINED_FUNCTION_53((v7 - 4), v209) & 1) != 0)
    {
      v211 = OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_145(v211, v212, &unk_1EB56C620, &unk_1AC7A7A00);
      if (!v366)
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v213 = OUTLINED_FUNCTION_71();
      sub_1AC5C3968(v213, v214);
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
      OUTLINED_FUNCTION_36(v215, v216, v217, v215, v218, v219, v220, v221, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
      swift_dynamicCast();
      v13 = v358;
      v222 = *(v358 + 16);
      if (v222)
      {
        *&v354 = MEMORY[0x1E69E7CC0];
        sub_1AC7A0A88();
        v223 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
          sub_1AC7A0A68();
          sub_1AC7A0A98();
          OUTLINED_FUNCTION_117();
          sub_1AC7A0AA8();
          sub_1AC7A0A78();
          v223 += 8;
          --v222;
        }

        while (v222);
      }

      goto LABEL_184;
    }

    OUTLINED_FUNCTION_65();
    v225 = a1 == v7 - 5 && v224 == a2;
    if (v225 || (OUTLINED_FUNCTION_53((v7 - 5), v224) & 1) != 0)
    {
      if (!v14)
      {
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      OUTLINED_FUNCTION_99();
      v226 = swift_allocObject();
      *(v226 + 16) = v14;
      *(v226 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v226);
      OUTLINED_FUNCTION_98_0(COERCE_DOUBLE(1107296256));
      v361 = v227;
      v362 = &block_descriptor_124;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 isSpeechProfileUsedWithReply_];
LABEL_72:
      _Block_release(v15);
      return;
    }

    goto LABEL_194;
  }

  OUTLINED_FUNCTION_65();
  v31 = a1 == 0xD000000000000074 && v30 == a2;
  if (v31 || (OUTLINED_FUNCTION_53(0xD000000000000074, v30) & 1) != 0)
  {
    OUTLINED_FUNCTION_74_1();
    sub_1AC5D1E4C(v15 + 32, &v358, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v359)
    {
      sub_1AC5C3968(&v358, &v365);
      v32 = sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
      OUTLINED_FUNCTION_134(&v357, &v365, v33, v32);
      a2 = v357;
      OUTLINED_FUNCTION_128();
      sub_1AC5D1E4C(v15 + 64, &v354, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v356)
      {
        sub_1AC5C3968(&v354, &aBlock);
        OUTLINED_FUNCTION_66();
        swift_dynamicCast();
        v3 = *(&v351 + 1);
        a1 = sub_1AC79FF58();

        OUTLINED_FUNCTION_129_1(2);
        sub_1AC5D1E4C(v15 + 96, &v354, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v356)
        {
          sub_1AC5C3968(&v354, &aBlock);
          OUTLINED_FUNCTION_66();
          swift_dynamicCast();
          v7 = *(&v351 + 1);
          v3 = sub_1AC79FF58();

          OUTLINED_FUNCTION_129_1(3);
          sub_1AC5D1E4C(v15 + 128, &v351, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v353)
          {
            sub_1AC5C3968(&v351, &v354);
            OUTLINED_FUNCTION_134(&v350, &v354, v34, MEMORY[0x1E69E6810]);
            v7 = v350;
            OUTLINED_FUNCTION_129_1(4);
            sub_1AC5D1E4C(v15 + 160, &v347, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v349)
            {
              sub_1AC5C3968(&v347, &aBlock);
              OUTLINED_FUNCTION_66();
              swift_dynamicCast();
              v35 = sub_1AC79FF58();

              OUTLINED_FUNCTION_99();
              v36 = swift_allocObject();
              *(v36 + 16) = v14;
              *(v36 + 24) = v13;
              v363 = sub_1AC60153C;
              v364 = v36;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v361 = sub_1AC5C0904;
              v362 = &block_descriptor_160;
              v37 = _Block_copy(&aBlock);
              sub_1AC5D9374(v14, v13);

              [a3 runRecognitionWithResultStream:a2 language:a1 task:v3 samplingRate:v7 lastStringOfPriorFinalResult:v35 reply:v37];

              _Block_release(v37);
              goto LABEL_35;
            }

            goto LABEL_114;
          }

LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_65();
  v39 = a1 == 0xD000000000000049 && v38 == a2;
  if (v39 || (OUTLINED_FUNCTION_53(0xD000000000000049, v38) & 1) != 0)
  {
    v40 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v40, v41, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v366)
    {
      v42 = OUTLINED_FUNCTION_71();
      sub_1AC5C3968(v42, v43);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
      OUTLINED_FUNCTION_36(v14, v44, v45, v46, v47, v48, v49, v50, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
      swift_dynamicCast();
      a2 = v358;
      v13 = sub_1AC7A0148();

      OUTLINED_FUNCTION_128();
      sub_1AC5D1E4C(v15 + 64, &v365, &unk_1EB56C620, &unk_1AC7A7A00);
      if (v366)
      {
        v51 = OUTLINED_FUNCTION_71();
        v53 = sub_1AC5C3968(v51, v52);
        OUTLINED_FUNCTION_36(v53, v54, v55, v56, v57, v58, v59, v60, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
        swift_dynamicCast();
        v14 = sub_1AC7A0148();

        v61 = OUTLINED_FUNCTION_116_0();
        [v61 v62];
LABEL_21:

LABEL_22:
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_126;
  }

  OUTLINED_FUNCTION_65();
  v3 = 0xD00000000000003FLL;
  v64 = a1 == 0xD00000000000003FLL && v63 == a2;
  if (v64 || (OUTLINED_FUNCTION_53(0xD00000000000003FLL, v63) & 1) != 0)
  {
    v65 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v65, v66, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v366)
    {
      v67 = OUTLINED_FUNCTION_71();
      v69 = sub_1AC5C3968(v67, v68);
      OUTLINED_FUNCTION_36(v69, v70, v71, MEMORY[0x1E6969080], v72, v73, v74, v75, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
      swift_dynamicCast();
      OUTLINED_FUNCTION_123();
      v14 = sub_1AC79F858();
      v76 = OUTLINED_FUNCTION_123();
      sub_1AC5C28A8(v76, v77);
      [a3 setUserProfileData_];
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_65();
  v79 = a1 == 0xD000000000000042 && v78 == a2;
  if (v79 || (OUTLINED_FUNCTION_53(0xD000000000000042, v78) & 1) != 0)
  {
    v80 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v80, v81, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v366)
    {
      v82 = OUTLINED_FUNCTION_71();
      v84 = sub_1AC5C3968(v82, v83);
      OUTLINED_FUNCTION_36(v84, v85, v86, MEMORY[0x1E6969080], v87, v88, v89, v90, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
      swift_dynamicCast();
      OUTLINED_FUNCTION_123();
      v14 = sub_1AC79F858();
      v91 = OUTLINED_FUNCTION_123();
      sub_1AC5C28A8(v91, v92);
      [a3 updateUserProfileData_];
      goto LABEL_22;
    }

    __break(1u);
LABEL_184:

    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    sub_1AC7A0148();
    OUTLINED_FUNCTION_209();
    [a3 requestEagerResult_];
    goto LABEL_185;
  }

  OUTLINED_FUNCTION_65();
  v94 = a1 == 0xD000000000000040 && v93 == a2;
  if (v94 || (OUTLINED_FUNCTION_53(0xD000000000000040, v93) & 1) != 0)
  {
    v95 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v95, v96, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v366)
    {
      v97 = OUTLINED_FUNCTION_71();
      v99 = sub_1AC5C3968(v97, v98);
      OUTLINED_FUNCTION_36(v99, v100, v101, MEMORY[0x1E6969080], v102, v103, v104, v105, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
      swift_dynamicCast();
      OUTLINED_FUNCTION_123();
      v14 = sub_1AC79F858();
      v106 = OUTLINED_FUNCTION_123();
      sub_1AC5C28A8(v106, v107);
      [a3 updateJitProfileData_];
      goto LABEL_22;
    }

    __break(1u);
LABEL_194:
    OUTLINED_FUNCTION_65();
    v229 = a1 == v7 - 11 && v228 == a2;
    if (v229 || (OUTLINED_FUNCTION_53((v7 - 11), v228) & 1) != 0)
    {
      if (!v14)
      {
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }

      OUTLINED_FUNCTION_99();
      v230 = swift_allocObject();
      *(v230 + 16) = v14;
      *(v230 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v230);
      OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
      v361 = sub_1AC5EF8A8;
      v362 = &block_descriptor_117;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 modelLoadTimeWithReply_];
      goto LABEL_72;
    }

    goto LABEL_202;
  }

  OUTLINED_FUNCTION_65();
  v109 = a1 == 0xD000000000000029 && v108 == a2;
  if (v109 || (OUTLINED_FUNCTION_53(0xD000000000000029, v108) & 1) != 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_99();
      v110 = swift_allocObject();
      *(v110 + 16) = v14;
      *(v110 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v110);
      OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
      v361 = sub_1AC5EF46C;
      v362 = &block_descriptor_154;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 rightContextWithReply_];
      goto LABEL_72;
    }

    __break(1u);
LABEL_202:
    OUTLINED_FUNCTION_65();
    v232 = a1 == v7 && v231 == a2;
    if (v232 || (OUTLINED_FUNCTION_53(0xD000000000000035, v231) & 1) != 0)
    {
      if (!v14)
      {
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      OUTLINED_FUNCTION_99();
      v233 = swift_allocObject();
      *(v233 + 16) = v14;
      *(v233 + 24) = v13;
      OUTLINED_FUNCTION_4_0(v233);
      OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
      v361 = sub_1AC5EF8FC;
      v362 = &block_descriptor_111;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_91_0();

      [a3 speechProfileCodepathIdsWithReply_];
      goto LABEL_72;
    }

    goto LABEL_210;
  }

  OUTLINED_FUNCTION_65();
  v112 = a1 == 0xD000000000000026 && v111 == a2;
  if (!v112 && (OUTLINED_FUNCTION_53(0xD000000000000026, v111) & 1) == 0)
  {
    OUTLINED_FUNCTION_65();
    v115 = a1 == 0xD000000000000032 && v114 == a2;
    if (v115 || (OUTLINED_FUNCTION_53(0xD000000000000032, v114) & 1) != 0)
    {
      if (v14)
      {
        OUTLINED_FUNCTION_99();
        v116 = swift_allocObject();
        *(v116 + 16) = v14;
        *(v116 + 24) = v13;
        OUTLINED_FUNCTION_4_0(v116);
        OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
        v361 = sub_1AC5EF5DC;
        v362 = &block_descriptor_142;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_91_0();

        [a3 recognitionStatisticsWithReply_];
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_218;
    }

    OUTLINED_FUNCTION_65();
    v118 = a1 == 0xD00000000000003BLL && v117 == a2;
    if (v118 || (OUTLINED_FUNCTION_53(0xD00000000000003BLL, v117) & 1) != 0)
    {
      if (v14)
      {
        OUTLINED_FUNCTION_99();
        v119 = swift_allocObject();
        *(v119 + 16) = v14;
        *(v119 + 24) = v13;
        OUTLINED_FUNCTION_4_0(v119);
        OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
        v361 = sub_1AC5EF6E8;
        v362 = &block_descriptor_136;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_91_0();

        [a3 recognitionUtterenceStatisticsWithReply_];
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_226;
    }

    OUTLINED_FUNCTION_65();
    v121 = a1 == 0xD00000000000002FLL && v120 == a2;
    if (v121 || (OUTLINED_FUNCTION_53(0xD00000000000002FLL, v120) & 1) != 0)
    {
      if (v14)
      {
        OUTLINED_FUNCTION_99();
        v122 = swift_allocObject();
        *(v122 + 16) = v14;
        *(v122 + 24) = v13;
        OUTLINED_FUNCTION_4_0(v122);
        OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
        v361 = sub_1AC5EF7E0;
        v362 = &block_descriptor_130;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_91_0();

        [a3 recognitionMetricsWithReply_];
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_234;
    }

    goto LABEL_104;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_99();
    v113 = swift_allocObject();
    *(v113 + 16) = v14;
    *(v113 + 24) = v13;
    OUTLINED_FUNCTION_4_0(v113);
    OUTLINED_FUNCTION_113_0(COERCE_DOUBLE(1107296256));
    v361 = sub_1AC5EF570;
    v362 = &block_descriptor_148;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_91_0();

    [a3 modelInfoWithReply_];
    goto LABEL_72;
  }

  __break(1u);
LABEL_210:
  OUTLINED_FUNCTION_65();
  v235 = a1 == v7 && v234 == a2;
  if (v235 || (OUTLINED_FUNCTION_53(0xD000000000000035, v234) & 1) != 0)
  {
    if (!v14)
    {
LABEL_255:
      __break(1u);
      goto LABEL_256;
    }

    OUTLINED_FUNCTION_99();
    v236 = swift_allocObject();
    *(v236 + 16) = v14;
    *(v236 + 24) = v13;
    OUTLINED_FUNCTION_4_0(v236);
    OUTLINED_FUNCTION_98_0(COERCE_DOUBLE(1107296256));
    v361 = v237;
    v362 = &block_descriptor;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_91_0();

    [a3 isVADSupportedForRequestWithReply_];
    goto LABEL_72;
  }

LABEL_218:
  OUTLINED_FUNCTION_65();
  v239 = a1 == v7 - 9 && v238 == a2;
  if (v239 || (OUTLINED_FUNCTION_53((v7 - 9), v238) & 1) != 0)
  {
    v240 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v240, v241, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v366)
    {
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    v242 = OUTLINED_FUNCTION_71();
    sub_1AC5C3968(v242, v243);
    v244 = sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    OUTLINED_FUNCTION_36(v244, v245, v246, v244, v247, v248, v249, v250, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
    swift_dynamicCast();
    v35 = v358;
    [a3 setClientInfo_];
LABEL_35:

    return;
  }

LABEL_226:
  OUTLINED_FUNCTION_65();
  v252 = a1 == v3 && v251 == a2;
  if (v252 || (OUTLINED_FUNCTION_53((v7 + 10), v251) & 1) != 0)
  {
    v253 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v253, v254, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v366)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v255 = OUTLINED_FUNCTION_71();
    v257 = sub_1AC5C3968(v255, v256);
    OUTLINED_FUNCTION_36(v257, v258, v259, MEMORY[0x1E69E6158], v260, v261, v262, v263, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
    v264 = swift_dynamicCast();
    OUTLINED_FUNCTION_208(v264, v265, v266, v267, v268, v269, v270, v271, v318, v325, v332, v339, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358, *(&v358 + 1));
    OUTLINED_FUNCTION_209();
    [a3 setLeftContextText_];
LABEL_185:

    return;
  }

LABEL_234:
  OUTLINED_FUNCTION_65();
  v13 = v7 + 4;
  v273 = a1 == v7 + 4 && v272 == a2;
  if (v273 || (OUTLINED_FUNCTION_53((v7 + 4), v272) & 1) != 0)
  {
    v274 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v274, v275, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v366)
    {
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    v276 = OUTLINED_FUNCTION_71();
    v278 = sub_1AC5C3968(v276, v277);
    OUTLINED_FUNCTION_36(v278, v279, v280, MEMORY[0x1E69E6158], v281, v282, v283, v284, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
    v285 = swift_dynamicCast();
    OUTLINED_FUNCTION_208(v285, v286, v287, v288, v289, v290, v291, v292, v319, v326, v333, v340, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358, *(&v358 + 1));
    OUTLINED_FUNCTION_209();
    [a3 setRightContext_];
    goto LABEL_185;
  }

  OUTLINED_FUNCTION_65();
  v294 = a1 == v13 && v293 == a2;
  if (v294 || (OUTLINED_FUNCTION_53((v7 + 4), v293) & 1) != 0)
  {
    v295 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_145(v295, v296, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v366)
    {
LABEL_259:
      __break(1u);
      return;
    }

    v297 = OUTLINED_FUNCTION_71();
    v299 = sub_1AC5C3968(v297, v298);
    OUTLINED_FUNCTION_36(v299, v300, v301, MEMORY[0x1E69E6158], v302, v303, v304, v305, v314, v321, v328, v335, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358);
    v306 = swift_dynamicCast();
    OUTLINED_FUNCTION_208(v306, v307, v308, v309, v310, v311, v312, v313, v320, v327, v334, v341, v342, v343, v344, v345, v346, v347, *(&v347 + 1), v348, v349, v350, v351, *(&v351 + 1), v352, v353, v354, *(&v354 + 1), v355, v356, v357, v358, *(&v358 + 1));
    OUTLINED_FUNCTION_209();
    [a3 setSelectedText_];
    goto LABEL_185;
  }
}

id sub_1AC5EF334(id result, id a2, void (*a3)(id *))
{
  v4 = result;
  v5 = result;
  if (!result)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    result = a2;
    v5 = a2;
  }

  if (a3)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B990, &unk_1AC7B1850);
    v8 = v5;
    v9 = v4 == 0;
    v7 = v4;
    sub_1AC5C1AD0(v5);
    a3(&v8);
    sub_1AC601544(v5);
    return sub_1AC5C71B8(&v8, &unk_1EB56C620);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC5EF404(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = a1;
  v5[1] = a2;

  a3(v5);
  return sub_1AC5C71B8(v5, &unk_1EB56C620);
}

uint64_t sub_1AC5EF46C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1AC79FF68();

  v3 = OUTLINED_FUNCTION_170();
  v2(v3);
}

uint64_t sub_1AC5EF4D4(void *a1, void (*a2)(_OWORD *))
{
  if (a1)
  {
    v7 = sub_1AC5CF764(0, &qword_1EB56AB70, off_1E797AC80);
    *&v6 = a1;
    sub_1AC5C3968(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v4 = a1;
  a2(v8);
  return sub_1AC5C71B8(v8, &unk_1EB56C620);
}

void sub_1AC5EF570(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1AC5EF5DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC79FE28();

  v2(v3);
}

uint64_t sub_1AC5EF670(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8[0] = a1;

  a2(v8);
  return sub_1AC5C71B8(v8, &unk_1EB56C620);
}

uint64_t sub_1AC5EF6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1AC79FE28();

  v2(v3);
}

uint64_t sub_1AC5EF760(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1AC5CF764(0, &qword_1EB56AB28, off_1E797AC78);
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1AC5C71B8(v6, &unk_1EB56C620);
}

void sub_1AC5EF7E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1AC5EF848(void (*a1)(void *), double a2)
{
  v3[3] = MEMORY[0x1E69E63B0];
  *v3 = a2;
  a1(v3);
  return sub_1AC5C71B8(v3, &unk_1EB56C620);
}

uint64_t sub_1AC5EF8A8(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_1AC5EF8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1AC7A0448();

  v2(v3);
}

void *sub_1AC5EF99C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a3;
  v10 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_40();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;
  v31 = v7;
  result = sub_1AC6E880C();
  if (result)
  {
    v17 = result;
    v18 = v16;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, qword_1ED9386C8);
    v20 = v32;
    (*(v12 + 16))(v32, v19, v10);
    a5(a4);
    if (swift_dynamicCastClass())
    {
      (*(v12 + 8))(v20, v10);
      v33 = v17;
      v34 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      return v36;
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1AC5D0DD0(v29, v30, v31);
      v21 = sub_1AC79FDC8();
      v22 = sub_1AC7A05F8();
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_107();
        v23 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v38 = v28;
        *v23 = 136315138;
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_1AC7A09C8();
        v36 = v33;
        v37 = v34;
        MEMORY[0x1B26E8C40](0x20726F746341, 0xE600000000000000);
        v24 = v29;
        v33 = v29;
        v34 = v30;
        v35 = v31;
        sub_1AC7A0AF8();
        OUTLINED_FUNCTION_65();
        MEMORY[0x1B26E8C40](0xD000000000000017);
        swift_getObjectType();
        v25 = sub_1AC7A0F78();
        MEMORY[0x1B26E8C40](v25);

        v26 = sub_1AC5CFE74(v36, v37, &v38);

        *(v23 + 4) = v26;
        _os_log_impl(&dword_1AC5BC000, v21, v22, "Failed precondition: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        OUTLINED_FUNCTION_70_1();
        MEMORY[0x1B26EAB10]();
        OUTLINED_FUNCTION_70_1();
        MEMORY[0x1B26EAB10]();

        sub_1AC5D1128(v24, v30, v31);
        swift_unknownObjectRelease();
        v27 = *(v12 + 8);
        v12 += 8;
        v27(v32, v10);
        __break(1u);
      }

      sub_1AC5D1128(v29, v30, v31);
      swift_unknownObjectRelease();
      result = (*(v12 + 8))(v32, v10);
      __break(1u);
    }
  }

  return result;
}

id sub_1AC5EFEBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARSpeechRecognizer();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56AEA0;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC60163C(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

id sub_1AC5F00FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for LSRAssetInventory();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56B590;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC6019B8(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

id sub_1AC5F0340(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for LSRAssets();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56ACF0;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC6020C0(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

id sub_1AC5F0584(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARLanguageDetectorAudioBuffer();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56B5A8;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC602444(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

id sub_1AC5F07C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARLanguageDetector();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56B5F0;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC602B4C(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

id sub_1AC5F0A0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARTranscriptionEvaluator();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56B5E8;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC602F00(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

id sub_1AC5F0C50(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARFullPayloadCorrector();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56B618;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC603284(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

id sub_1AC5F0E94(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      goto LABEL_7;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      goto LABEL_7;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EAREuclid();
      sub_1AC7A0AF8();
      result = sub_1AC7A0B78();
      __break(1u);
      return result;
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C(v4, v5);
LABEL_7:
      v10 = qword_1EB56AD20;
      v8 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      [v8 setRemoteObjectInterface_];

      sub_1AC6E9C00(v8, v4, v5, v6);
      sub_1AC603608(v8, a1, 0, 0, v2);
      break;
  }

  return v8;
}

void sub_1AC5F10D8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v38 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC78, &qword_1AC7A7DF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = *(v9 + 16);
  v40 = a1;
  v37 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v39 = v10;
  v15 = swift_allocObject();
  v17 = *(v9 + 32);
  v16 = (v9 + 32);
  v36 = v17;
  v17(v15 + ((v14 + 16) & ~v14), v12, v8);
  v47 = sub_1AC6048A8;
  v48 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1AC6E9230;
  v46 = &block_descriptor_790;
  v18 = _Block_copy(&aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v34 = v42;
  sub_1AC79FC68();
  v21 = v20;
  v35 = sub_1AC7A0838();
  v23 = v22;

  if (v23)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v24 = *(*(a3 + 128) + 16);

    os_unfair_lock_lock(v24);
    sub_1AC5D1B54(&v42, v38);
    os_unfair_lock_unlock(v24);

    v37(v12, v40, v8);
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    v36(v25 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    v21 = v34;
    v16 = v35;
    sub_1AC5EDC90(v35, v23, v21);
    v27 = v26;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v28 = sub_1AC79FDE8();
    __swift_project_value_buffer(v28, qword_1ED9386C8);
    if (v27)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  v40 = v21;

  v29 = sub_1AC79FDC8();
  v30 = sub_1AC7A05F8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315138;
    aBlock = 0;
    v44 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v44 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v16, v23);
    v33 = sub_1AC5CFE74(aBlock, v44, &v41);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B26EAB10](v32, -1, -1);
    MEMORY[0x1B26EAB10](v31, -1, -1);
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
}

uint64_t sub_1AC5F15D8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9F0, &qword_1AC7A7A90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC6047D8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_778;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F1AF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA0, &qword_1AC7A7B70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BFC;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_767;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F2018(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC60, &qword_1AC7A7DD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604670;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_756;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F2538(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC58, &qword_1AC7A7DD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604620;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_745;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F2A58(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC50, &qword_1AC7A7DC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC6045CC;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_734;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}