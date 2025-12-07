uint64_t sub_21664BDFC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21664BE44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664BE7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664BEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666D3BC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21664BF68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21666D3BC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21664C06C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21664C0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for _ArtworkImageReader(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);

  v9 = v4 + v7 + v5[11];
  v10 = type metadata accessor for ArtworkImage._Proxy(0);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = sub_21666D3BC();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_21664C1E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21664C274(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21664C300(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A8, &qword_21666EF78);
  sub_21666CF6C();
  sub_216653A3C();
  OUTLINED_FUNCTION_0_3();
  return swift_getWitnessTable();
}

uint64_t sub_21664C368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216654054();
  *a1 = result & 1;
  return result;
}

void *sub_21664C3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216654660();
  *a1 = result;
  return result;
}

uint64_t sub_21664C470()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21664C4A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21664C4F4()
{
  MEMORY[0x21CE96510](v0 + 16);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_21664C528(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21664C538()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664C570()
{
  v1 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);

  if (*(v0 + 32))
  {
  }

  v7 = (v4 + 48) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v4 | 7);
}

uint64_t sub_21664C644()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21664C67C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_21664C70C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664C748()
{
  v1 = type metadata accessor for ArtworkImage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34D0, &qword_21666F250);
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v0 + v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34D8, &qword_21666F258);
  }

  v6 = *(v1 + 20);
  sub_21666D3BC();
  OUTLINED_FUNCTION_2();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21664C948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_18();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_21666D3BC();
  OUTLINED_FUNCTION_18();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 56));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_21664CA40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_18();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21666D3BC();
    OUTLINED_FUNCTION_18();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 56)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21664CB60(void *a1)
{
  v1 = sub_21666CF6C();
  sub_21665E838(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_21664CC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666D3BC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21664CCC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21666D3BC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_21664CD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666D3BC();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_2(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_21664CE0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21666D3BC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21664CEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_2_2(*(a1 + 96));
  }

  v7 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21664CF30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21664CFC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21664D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21666D79C();
  }
}

uint64_t sub_21664D028@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSubscriptionOffer.MessageIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21664D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3890, &qword_2166707A0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3898, &qword_2166707A8);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_21664D2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3890, &qword_2166707A0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3898, &qword_2166707A8);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_21664D3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB38D8, &qword_216670820);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB38D0, &qword_216670818);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB38E8, &unk_216670838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3508, &unk_21666F4C0);
  OUTLINED_FUNCTION_1_6();
  sub_2166620F4(v0, &qword_27CAB38E8, &unk_216670838, v1);
  sub_21665EC00();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21664D52C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21664D564()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664D5A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t EnvironmentValues.artworkLoadingObserver.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21664DE04(a1, a2, a3);
  sub_21666CFDC();
  return v4;
}

unint64_t sub_21664DE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB2F30;
  if (!qword_27CAB2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB2F30);
  }

  return result;
}

uint64_t sub_21664DE58@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = EnvironmentValues.artworkLoadingObserver.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.artworkLoadingObserver.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = v3;
  a1[3] = sub_21664DE04(a1, a2, a3);
  sub_21666CFDC();
  return sub_21664DF4C;
}

uint64_t sub_21664DF4C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_21666CFEC();
  }

  sub_21666CFEC();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21664DFF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21664E010(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21664E060(uint64_t a1, id *a2)
{
  result = sub_21666D42C();
  *a2 = 0;
  return result;
}

uint64_t sub_21664E0D8(uint64_t a1, id *a2)
{
  v3 = sub_21666D43C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21664E158()
{
  sub_21666D44C();
  v0 = sub_21666D41C();

  return v0;
}

uint64_t sub_21664E1A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21664E158();
  *a1 = result;
  return result;
}

uint64_t sub_21664E1D0()
{
  v0 = sub_21666D44C();
  v1 = MEMORY[0x21CE95A00](v0);

  return v1;
}

uint64_t sub_21664E210(uint64_t a1, uint64_t a2)
{
  sub_21666D44C();
  sub_21666D47C();
}

uint64_t sub_21664E278@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21666D41C();

  *a2 = v3;
  return result;
}

uint64_t sub_21664E2C0()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_216664E70(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21664E2E8(uint64_t a1)
{
  v2 = sub_21664E448(&qword_27CAB2FC0, &unk_21666E850);
  v3 = sub_21664E448(&qword_27CAB2FC8, &unk_21666E7B0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_21664E394(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21664E448(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Artwork._LoadingError.hashValue.getter()
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

uint64_t sub_21664E588(uint64_t a1)
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

unint64_t sub_21664E5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3030;
  if (!qword_27CAB3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3030);
  }

  return result;
}

uint64_t _s13_LoadingErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s13_LoadingErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_21664E734(uint64_t a1)
{
  result = sub_21666CE5C();
  if (v2 <= 0x3F)
  {
    result = sub_21666D26C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21664E8A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21666CE2C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21666CE1C();
}

uint64_t sub_21664E920()
{
  v0 = sub_21666CE2C();
  __swift_allocate_value_buffer(v0, qword_27CAB5830);
  __swift_project_value_buffer(v0, qword_27CAB5830);
  return sub_21666CE1C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_21664EA3C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_21666CD9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  sub_21666CD8C();
  v7 = sub_21666CD7C();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v1[3] = v7;
  v1[4] = v9;
  v1[6] = 0;
  swift_unknownObjectWeakInit();
  v10 = *v1;
  sub_21664FF08(0, &qword_27CAB3058, 0x277CF3288);
  v11 = sub_21664EEB4(0xD000000000000015, 0x8000000216670B60, 0xD00000000000001DLL, 0x8000000216670B80, 0, 0);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  sub_21664FF08(0, &qword_27CAB3060, 0x277CF3280);
  v13 = v12;
  v14 = sub_21664F008(v13, sub_21664FDB8, v1);
  v15 = v1[2];
  v1[2] = v14;

  v16 = v1[2];
  if (!v16)
  {

    return v1;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v1;
  v17[4] = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21664FDC0;
  *(v18 + 24) = v17;
  aBlock[4] = sub_21664FF6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21664FF68;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  [v20 configureConnection_];

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
LABEL_5:
    if (qword_27CAB2ED0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_27CAB2ED0);
    }

    v21 = sub_21666CE2C();
    __swift_project_value_buffer(v21, qword_27CAB5800);

    v22 = sub_21666CE0C();
    v23 = sub_21666D54C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v24 = 136446466;
      v25 = sub_21666D88C();
      v27 = sub_21666B5BC(v25, v26, aBlock);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_21666B5BC(0xD000000000000015, 0x8000000216670B60, aBlock);
      _os_log_impl(&dword_21664A000, v22, v23, "%{public}s: failed to lookup endpoint with Mach name %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }
  }

  return v1;
}

id sub_21664EEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_21666D41C();

  v8 = sub_21666D41C();

  if (a6)
  {
    v9 = sub_21666D41C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() endpointForMachName:v7 service:v8 instance:v9];

  return v10;
}

void sub_21664EF88(void *a1, uint64_t a2)
{
  v3 = sub_21666D41C();
  v4 = sub_21666D41C();
  [a1 encodeObject:v3 forKey:v4];
}

id sub_21664F008(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v11[4] = sub_21664FE34;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21664FF68;
  v11[3] = &block_descriptor_35;
  v7 = _Block_copy(v11);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v9 = [ObjCClassFromMetadata connectionWithEndpoint:a1 clientContextBuilder:v7];

  _Block_release(v7);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void sub_21664F150(id a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CAB2EF0 != -1)
  {
    swift_once();
  }

  [a1 setInterface_];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v17 = sub_21664FDE4;
  v18 = v7;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21664F59C;
  v16 = &block_descriptor_17;
  v8 = _Block_copy(&v13);

  [a1 setActivationHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a2;
  v17 = sub_21664FDEC;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21664F59C;
  v16 = &block_descriptor_23;
  v10 = _Block_copy(&v13);

  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a2;
  v17 = sub_21664FE10;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21664F59C;
  v16 = &block_descriptor_29;
  v12 = _Block_copy(&v13);

  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_21664F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CAB2ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_21666CE2C();
  __swift_project_value_buffer(v4, qword_27CAB5800);

  oslog = sub_21666CE0C();
  v5 = sub_21666D56C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    v8 = sub_21666D88C();
    v10 = sub_21666B5BC(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_21666B5BC(*(a3 + 24), *(a3 + 32), &v12);
    _os_log_impl(&dword_21664A000, oslog, v5, "%{public}s: connection activated for process %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE96470](v7, -1, -1);
    MEMORY[0x21CE96470](v6, -1, -1);
  }
}

void sub_21664F59C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_21664F604(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_216650964();
    swift_unknownObjectRelease();
  }

  if (qword_27CAB2ED0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27CAB2ED0);
  }

  v6 = sub_21666CE2C();
  __swift_project_value_buffer(v6, qword_27CAB5800);

  oslog = sub_21666CE0C();
  v7 = sub_21666D56C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_21666D88C();
    v11 = sub_21666B5BC(v9, v10, &v13);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_21666B5BC(*(a2 + 24), *(a2 + 32), &v13);
    _os_log_impl(&dword_21664A000, oslog, v7, a4, v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }
}

uint64_t sub_21664F79C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_21664F7F0()
{
  sub_21664FF08(0, &qword_27CAB31B8, 0x277D46E38);
  result = sub_21664F86C(0xD000000000000010, 0x8000000216670C30, 0x676E416369736142, 0xED00004350496C65);
  qword_27CAB3040 = result;
  return result;
}

id sub_21664F86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21666D41C();

  v5 = sub_21666D41C();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

uint64_t sub_21664F900()
{
  type metadata accessor for MusicAngel.Client();
  result = sub_21664F930();
  qword_27CAB3048 = result;
  return result;
}

uint64_t sub_21664F930()
{
  sub_21664FF08(0, &qword_27CAB30C8, 0x277CF3278);
  v0 = sub_21664FA3C(0xD00000000000001DLL, 0x8000000216670B80);
  v1 = [objc_opt_self() protocolForProtocol_];
  [v0 setServer_];

  [v0 copy];
  sub_21666D5CC();

  swift_unknownObjectRelease();
  sub_21664FF08(0, &qword_27CAB30D0, 0x277CF32C0);
  swift_dynamicCast();
  return v3;
}

id sub_21664FA3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21666D41C();

  v3 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier_];

  return v3;
}

void sub_21664FAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v21 = &unk_28290F8B8;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB31A0, &unk_21666EA50);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21666E9F0;
      v8 = qword_27CAB2EE8;
      v9 = v4;
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = qword_27CAB3040;
      *(v7 + 32) = qword_27CAB3040;
      sub_21664FF08(0, &qword_27CAB31A8, 0x277D46DD8);
      v11 = v10;
      v12 = sub_21666D4DC();

      v13 = [v6 remoteTargetWithLaunchingAssertionAttributes_];

      if (v13)
      {
        sub_21666D5CC();

        swift_unknownObjectRelease();
        sub_21664FEF8(v19, v20);
        sub_21664FEF8(v20, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB31B0, &qword_21666EA60);
        v14 = swift_dynamicCast();
        if (v14)
        {

          return;
        }
      }

      else
      {
      }
    }

    else
    {
      v14 = v4;
    }

    sub_21664FE5C(v14, v15, v16);
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  else
  {
    sub_21664FE5C(a1, a2, a3);
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
  }
}

uint64_t MusicAngel.Client.deinit()
{

  sub_21664FD20(v0 + 40);
  return v0;
}

uint64_t MusicAngel.Client.__deallocating_deinit()
{
  MusicAngel.Client.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21664FE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3138;
  if (!qword_27CAB3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3138);
  }

  return result;
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

_OWORD *sub_21664FEF8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21664FF08(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x21CE96470);
}

id sub_21664FFA8()
{
  v1 = OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client;
  type metadata accessor for MusicAngel.Client();
  swift_allocObject();
  *&v0[v1] = sub_21664EA3C();
  *&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController] = 0;
  *&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_presentationTimeout] = 0x4008000000000000;
  v4.receiver = v0;
  v4.super_class = _s14ViewControllerCMa();
  v2 = objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
  sub_21665023C();
  sub_2166501F8();

  return v2;
}

void sub_216650070()
{
  v1 = OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client;
  type metadata accessor for MusicAngel.Client();
  swift_allocObject();
  *(v0 + v1) = sub_21664EA3C();
  *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_presentationTimeout) = 0x4008000000000000;
  sub_21666D69C();
  __break(1u);
}

id sub_216650150(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = _s14ViewControllerCMa();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, v2 & 1);
  return sub_21664FCE0();
}

id sub_2166501F8()
{
  *(*(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client) + 48) = &off_2828FFB98;
  swift_unknownObjectWeakAssign();
  return sub_21664FCD0();
}

void sub_21665023C()
{
  v1 = OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController;
  if (!*&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController])
  {
    v2 = v0;
    aBlock[4] = sub_21664E710;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2166506E4;
    aBlock[3] = &block_descriptor_0;
    v3 = _Block_copy(aBlock);
    [v2 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v3);
    sub_21664FF08(0, &qword_27CAB32A8, 0x277D46F60);
    v4 = sub_216650734(0xD000000000000015, 0x8000000216670B60);
    v5 = *&v2[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client];
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    v8 = objc_allocWithZone(_s18SceneSpecificationCMa());

    v9 = sub_216668290(v6, v7);
    sub_21664FF08(0, &unk_27CAB32B0, 0x277D761E0);
    v10 = v4;
    v11 = v9;
    v12 = sub_2166507C8(v10, v11);
    v13 = *&v2[v1];
    *&v2[v1] = v12;
    v14 = v12;

    if (v14)
    {
      [v14 setDelegate_];
    }

    v15 = *&v2[v1];
    if (v15 && (v16 = [v15 sceneViewController]) != 0)
    {
      v17 = v16;
      v18 = [v16 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v2 view];
        if (v20)
        {
          v21 = v20;
          [v2 addChildViewController_];
          [v21 addSubview_];
          [v19 setTranslatesAutoresizingMaskIntoConstraints_];
          v37 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB31A0, &unk_21666EA50);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_21666EA70;
          v23 = [v19 leadingAnchor];
          v24 = [v21 leadingAnchor];
          v25 = [v23 constraintEqualToAnchor_];

          *(v22 + 32) = v25;
          v26 = [v19 trailingAnchor];
          v27 = [v21 trailingAnchor];
          v28 = [v26 constraintEqualToAnchor_];

          *(v22 + 40) = v28;
          v29 = [v19 topAnchor];
          v30 = [v21 topAnchor];
          v31 = [v29 constraintEqualToAnchor_];

          *(v22 + 48) = v31;
          v32 = [v19 bottomAnchor];
          v33 = [v21 bottomAnchor];
          v34 = [v32 constraintEqualToAnchor_];

          *(v22 + 56) = v34;
          sub_21664FF08(0, &unk_27CAB32C0, 0x277CCAAD0);
          v35 = sub_21666D4DC();

          [v37 activateConstraints_];

          [v17 didMoveToParentViewController_];
          v17 = v19;
          v19 = v21;
        }

        v17 = v19;
      }

      v36 = v11;
    }

    else
    {
      v36 = v10;
      v10 = v11;
    }
  }
}

uint64_t sub_2166506E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

id sub_216650734(uint64_t a1, uint64_t a2)
{
  v2 = sub_21666D41C();

  v3 = [swift_getObjCClassFromMetadata() identityForAngelJobLabel_];

  return v3;
}

id sub_2166507C8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProcessIdentity:a1 sceneSpecification:a2];

  return v4;
}

id sub_21665084C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14ViewControllerCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_216650934()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController);
  v2 = v1;
  return v1;
}

void sub_216650964()
{
  if (qword_27CAB2ED0 != -1)
  {
    swift_once();
  }

  v1 = sub_21666CE2C();
  __swift_project_value_buffer(v1, qword_27CAB5800);
  v2 = v0;
  v3 = sub_21666CE0C();
  v4 = sub_21666D56C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    swift_getObjectType();
    v7 = sub_21666D88C();
    v9 = sub_21666B5BC(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21664A000, v3, v4, "%{public}s: is calling handleDismissAction", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x21CE96470](v6, -1, -1);
    MEMORY[0x21CE96470](v5, -1, -1);
  }

  v10 = &v2[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v2, 1, 0, 0, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [v2 parentViewController];
    if (v13)
    {
      v14 = v13;
      [v13 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s10ParametersVMa(uint64_t a1)
{
  result = qword_2811AF8A0;
  if (!qword_2811AF8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216650C80(uint64_t a1)
{
  sub_21666D3BC();
  if (v1 <= 0x3F)
  {
    sub_216650D3C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_216650D80();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_216650D3C()
{
  result = qword_2811AF450;
  if (!qword_2811AF450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AF450);
  }

  return result;
}

void sub_216650D80()
{
  if (!qword_2811AF460)
  {
    v0 = sub_21666D5BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811AF460);
    }
  }
}

uint64_t sub_216650E18(uint64_t a1, uint64_t a2)
{
  if ((sub_21666D3AC() & 1) == 0)
  {
    return 0;
  }

  v4 = _s10ParametersVMa(0);
  result = [*(a1 + v4[5]) isArtworkVisuallyIdenticalToCatalog_];
  if (!result)
  {
    return result;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  if (v8 != *v9 || *(v7 + 8) != v9[1])
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_1();
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v14 = *v12 == *v13 && v10 == v11;
  if (!v14 && (sub_21666D79C() & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  OUTLINED_FUNCTION_0_1();
  result = (v15 | v16) == 0;
  if (v15 && v16)
  {
    if (*v17 == *v18 && v15 == v16)
    {
      return 1;
    }

    else
    {

      return sub_21666D79C();
    }
  }

  return result;
}

uint64_t sub_216650F48(uint64_t a1)
{
  sub_21666D3BC();
  sub_2166511B4(&qword_27CAB32D8, MEMORY[0x277CD8460], MEMORY[0x277CD8470]);
  sub_21666D3FC();
  v2 = _s10ParametersVMa(0);
  v3 = [*(v1 + v2[5]) visualIdenticalityIdentifier];
  if (v3)
  {
    v4 = [v3 hash];
    swift_unknownObjectRelease();
    sub_21666D81C();
    MEMORY[0x21CE95D60](v4);
  }

  else
  {
    sub_21666D81C();
  }

  v5 = *(v1 + v2[6]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CE95D80](*&v5);
  v6 = (v1 + v2[7]);
  v7 = *v6;
  if (*v6 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x21CE95D80](*&v7);
  v8 = v6[1];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x21CE95D80](*&v8);
  if (*(v1 + v2[8] + 8))
  {
    sub_21666D81C();
    sub_21666D47C();
  }

  else
  {
    sub_21666D81C();
  }

  if (!*(v1 + v2[9] + 8))
  {
    return sub_21666D81C();
  }

  sub_21666D81C();

  return sub_21666D47C();
}

uint64_t sub_21665112C()
{
  sub_21666D7FC();
  sub_216650F48(v1);
  return sub_21666D83C();
}

uint64_t sub_216651178(uint64_t a1)
{
  sub_21666D7FC();
  sub_216650F48(v2);
  return sub_21666D83C();
}

uint64_t sub_2166511B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216651218(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000216670EA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21666D79C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2166512C0()
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

uint64_t sub_21665133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216651218(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216651384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21664E550();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2166513B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2166516F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2166513EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2166516F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_216651458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216651428(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216651484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21665174C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2166514C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21665174C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MusicAngel.Client.Parameters.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB32E0, &qword_21666EB30);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB32E8, &qword_21666EB38);
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2166516F8(v14, v15, v16);
  v17 = sub_21666D85C();
  sub_21665174C(v17, v18, v19);
  sub_21666D74C();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2166516F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB32F0;
  if (!qword_27CAB32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB32F0);
  }

  return result;
}

unint64_t sub_21665174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB32F8;
  if (!qword_27CAB32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB32F8);
  }

  return result;
}

uint64_t MusicAngel.Client.Parameters.hashValue.getter()
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

uint64_t MusicAngel.Client.Parameters.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3300, &qword_21666EB40);
  OUTLINED_FUNCTION_0_2();
  v44 = v4;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3308, &qword_21666EB48);
  OUTLINED_FUNCTION_0_2();
  v45 = v9;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2166516F8(v13, v14, v15);
  sub_21666D84C();
  if (v1)
  {
    goto LABEL_9;
  }

  v42 = v7;
  v43 = a1;
  v16 = sub_21666D73C();
  result = sub_216651C34(v16, 0);
  v21 = v12;
  if (v19 == v20 >> 1)
  {
    v44 = result;
LABEL_8:
    v35 = v8;
    v36 = v45;
    v37 = sub_21666D65C();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3310, &qword_21666EB50);
    *v39 = &type metadata for MusicAngel.Client.Parameters;
    sub_21666D6FC();
    sub_21666D64C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v21, v35);
    a1 = v43;
LABEL_9:
    v40 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  if (v19 < (v20 >> 1))
  {
    v22 = sub_216651C7C(v19 + 1, v20 >> 1, result, v18, v19, v20);
    v24 = v23;
    v26 = v25;
    v27 = swift_unknownObjectRelease();
    v30 = v24 == v26 >> 1;
    v31 = v43;
    v32 = v44;
    if (v30)
    {
      sub_21665174C(v27, v28, v29);
      v33 = v42;
      sub_21666D6EC();
      v34 = v45;
      swift_unknownObjectRelease();
      (*(v32 + 8))(v33, v3);
      (*(v34 + 8))(v21, v8);
      v40 = v31;
      return __swift_destroy_boxed_opaque_existential_0(v40);
    }

    v44 = v22;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_216651C34(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_216651C7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_216651CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3318;
  if (!qword_27CAB3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3318);
  }

  return result;
}

_BYTE *sub_216651D60(_BYTE *result, int a2, int a3)
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

unint64_t sub_216651E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3320;
  if (!qword_27CAB3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3320);
  }

  return result;
}

unint64_t sub_216651E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3328;
  if (!qword_27CAB3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3328);
  }

  return result;
}

unint64_t sub_216651ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3330;
  if (!qword_27CAB3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3330);
  }

  return result;
}

unint64_t sub_216651F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3338;
  if (!qword_27CAB3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3338);
  }

  return result;
}

unint64_t sub_216651F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3340;
  if (!qword_27CAB3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3340);
  }

  return result;
}

id MusicAngel.Client.Action.init(identifier:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v3 = sub_21666D41C();
  [v2 setObject:v3 forSetting:0];

  _s19AngelToClientActionCMa();
  result = sub_2166520D8(v2, 0);
  *a1 = result;
  return result;
}

id sub_2166520D8(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

void MusicAngel.Client.Action.send(from:)(uint64_t a1)
{
  v2 = *v1;
  sub_216652208(a1, v8);
  if (v8[3])
  {
    sub_216652278();
    v3 = swift_dynamicCast();
    if (v3)
    {
      v6 = v9;
      [v9 sendAction_];

      return;
    }
  }

  else
  {
    v3 = sub_216652DB8(v8, &unk_27CAB3350, &qword_21666EE30);
  }

  sub_21664FE5C(v3, v4, v5);
  swift_allocError();
  *v7 = 0;
  swift_willThrow();
}

uint64_t sub_216652208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3350, &qword_21666EE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216652278()
{
  result = qword_27CAB3360;
  if (!qword_27CAB3360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB3360);
  }

  return result;
}

uint64_t sub_2166522BC(void *a1)
{
  v3 = [a1 delegate];
  if (!v3 || (*&v18 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3388, &qword_21666EF58), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3390, &unk_21666EF60), (swift_dynamicCast() & 1) == 0))
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_13;
  }

  if (!*(&v21 + 1))
  {
LABEL_13:
    sub_216652DB8(&v20, &qword_27CAB3378, &unk_21666EF40);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_21666D62C();
    MEMORY[0x21CE959E0](0x100000000000001ELL, 0x8000000216670FB0);
    v9 = a1;
    v10 = [v9 description];
    v11 = sub_21666D44C();
    v13 = v12;

    MEMORY[0x21CE959E0](v11, v13);

    MEMORY[0x21CE959E0](45, 0xE100000000000000);
    *&v20 = [v9 &selRef_isKindOfClass_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3380, &qword_21666EF50);
    v14 = sub_21666D45C();
    MEMORY[0x21CE959E0](v14);

    MEMORY[0x21CE959E0](0xD000000000000036, 0x8000000216670FD0);
    goto LABEL_17;
  }

  sub_216652E18(&v20, v23);
  v4 = [v1 info];
  if (!v4)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_16:
    sub_216652DB8(&v18, &unk_27CAB3350, &qword_21666EE30);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_21666D5CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_16;
  }

  sub_21664FEF8(&v18, &v20);
  sub_216652E30(&v20, &v18);
  if (swift_dynamicCast())
  {
    v7 = sub_21666D6DC();

    if (!v7)
    {
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      sub_216650964();
      __swift_destroy_boxed_opaque_existential_0(&v20);
      return __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }

  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  sub_21666D62C();
  MEMORY[0x21CE959E0](0x206E6F69746341, 0xE700000000000000);
  sub_216652E30(&v20, &v18);
  v15 = sub_21666D45C();
  MEMORY[0x21CE959E0](v15);

  MEMORY[0x21CE959E0](0xD000000000000034, 0x8000000216671030);
LABEL_17:
  result = sub_21666D69C();
  __break(1u);
  return result;
}

uint64_t MusicAngel.Client.Action.Identifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21666D6DC();

  *a3 = v4 != 0;
  return result;
}

id sub_216652778(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = _s19AngelToClientActionCMa();
  v5 = objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a1, a2);

  return v5;
}

id sub_216652828()
{
  v2.receiver = v0;
  v2.super_class = _s19AngelToClientActionCMa();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_216652884(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = _s19AngelToClientActionCMa();
  v3 = objc_msgSendSuper2(&v5, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id sub_216652928(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s19AngelToClientActionCMa();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2166529BC(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v15[4] = a3;
    v15[5] = a4;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21664F59C;
    v15[3] = &block_descriptor_1;
    v11 = _Block_copy(v15);
  }

  else
  {
    v11 = 0;
  }

  v12 = _s19AngelToClientActionCMa();
  v16.receiver = v5;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v11, a5);
  sub_21664D5A4(a3, a4);

  _Block_release(v11);
  return v13;
}

id sub_216652B84()
{
  v2.receiver = v0;
  v2.super_class = _s19AngelToClientActionCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_216652BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3368;
  if (!qword_27CAB3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3368);
  }

  return result;
}

uint64_t sub_216652C54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_216652C94(uint64_t result, int a2, int a3)
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

_BYTE *_s6ActionV10IdentifierOwst(_BYTE *result, int a2, int a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_216652DB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_216652E18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_216652E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_216652E8C()
{
  sub_21666D34C();
  if (v3)
  {
    sub_216650D3C();
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_216653064(v2);
    return 0;
  }
}

uint64_t sub_216652EFC()
{
  sub_21666D33C();
  sub_21666D30C();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21666D32C();
  sub_216650D3C();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v2);
    return v1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
    v2[0] = 0;
    v2[1] = 0xE000000000000000;
    sub_21666D62C();
    MEMORY[0x21CE959E0](0xD00000000000002CLL, 0x80000002166710B0);
    sub_21666D31C();
    sub_21666D67C();
    MEMORY[0x21CE959E0](46, 0xE100000000000000);
    result = sub_21666D69C();
    __break(1u);
  }

  return result;
}

uint64_t sub_216653064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3350, &qword_21666EE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ArtworkImageReader.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  type metadata accessor for _ArtworkImageReader(0, a3, a4, v13);
  v14 = type metadata accessor for ArtworkImage._Proxy(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  result = sub_2166531B4(v12);
  *a5 = a1;
  a5[1] = a2;
  return result;
}

uint64_t sub_2166531B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  MEMORY[0x28223BE20](v2);
  sub_216653C6C(a1, &v5 - v3);
  sub_21666D1FC();
  return sub_216653760(a1);
}

uint64_t sub_2166532A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  MEMORY[0x28223BE20](v2 - 8);
  sub_216653C6C(a1, &v5 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);
  sub_21666D21C();
  return sub_216653760(a1);
}

uint64_t _ArtworkImageReader.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  v43 = *(v6 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v44 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A8, &qword_21666EF78);
  v17 = sub_21666CF6C();
  OUTLINED_FUNCTION_1_1();
  v42 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v39 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v41 = &v38 - v22;
  v23 = *v2;
  sub_21665325C();
  v23(v11);
  sub_216653760(v11);
  v24 = v40;
  (*(v5 + 16))(v40, v2, a1);
  v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = swift_allocObject();
  v27 = *(a1 + 24);
  *(v26 + 16) = v12;
  *(v26 + 24) = v27;
  v28 = (*(v5 + 32))(v26 + v25, v24, a1);
  sub_21665390C(v28, v29, v30);
  sub_216653960();
  v31 = v39;
  sub_21666D11C();

  (*(v44 + 8))(v16, v12);
  v32 = sub_216653A3C();
  v46 = v27;
  v47 = v32;
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v33 = v41;
  v34 = v42;
  v35 = *(v42 + 16);
  v35(v41, v31, v17);
  v36 = *(v34 + 8);
  v36(v31, v17);
  v35(v45, v33, v17);
  return (v36)(v33, v17);
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

uint64_t sub_216653760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2166537C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_216653C6C(a1, &v12 - v8);
  type metadata accessor for _ArtworkImageReader(0, a3, a4, v10);
  return sub_2166532A8(v9);
}

uint64_t sub_216653880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for _ArtworkImageReader(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_2166537C8(a1, v9, v6, v7);
}

unint64_t sub_21665390C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB33B8;
  if (!qword_27CAB33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB33B8);
  }

  return result;
}

unint64_t sub_216653960()
{
  result = qword_27CAB33C0;
  if (!qword_27CAB33C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A0, &qword_21666EF70);
    sub_2166539E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB33C0);
  }

  return result;
}

unint64_t sub_2166539E4()
{
  result = qword_27CAB33C8;
  if (!qword_27CAB33C8)
  {
    type metadata accessor for ArtworkImage._Proxy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB33C8);
  }

  return result;
}

unint64_t sub_216653A3C()
{
  result = qword_27CAB33D0[0];
  if (!qword_27CAB33D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A8, &qword_21666EF78);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAB33D0);
  }

  return result;
}

void sub_216653B14(uint64_t a1)
{
  sub_216653BC0();
  if (v1 <= 0x3F)
  {
    sub_216653C08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216653BC0()
{
  result = qword_27CAB3458;
  if (!qword_27CAB3458)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CAB3458);
  }

  return result;
}

void sub_216653C08(uint64_t a1)
{
  if (!qword_27CAB3460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A0, &qword_21666EF70);
    v1 = sub_21666D23C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB3460);
    }
  }
}

uint64_t sub_216653C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ArtworkLoader.__allocating_init(shouldEnforceUsageOnMainThread:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(v1);
  return v2;
}

uint64_t ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  v3 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  v4 = _s10ParametersVMa(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  v5 = (v1 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_cachedCloudArtworkCatalog) = 0;
  sub_21666CDEC();
  *(v1 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_shouldEnforceUsageOnMainThread) = a1;
  return v1;
}

uint64_t sub_216653DE0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v7 = v2;
    sub_216656D48(v5, sub_216654134, v6);
  }

  return result;
}

uint64_t ArtworkLoader.deinit()
{
  OUTLINED_FUNCTION_13();
  sub_21665655C(v1, v2, v3);

  sub_216657168(v0 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters, &qword_27CAB3468, &qword_21666F9C0);
  sub_21664D5A4(*(v0 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler), *(v0 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler + 8));

  v4 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  sub_21666CDFC();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v0 + v4);
  return v0;
}

uint64_t ArtworkLoader.__deallocating_deinit()
{
  ArtworkLoader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216653FFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216654054();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216654054()
{
  swift_getKeyPath();
  v7[0] = v0;
  OUTLINED_FUNCTION_0_4();
  v3 = sub_216657D5C(v1, v2, &protocol conformance descriptor for ArtworkLoader);
  OUTLINED_FUNCTION_7(v3, v4, v5);

  OUTLINED_FUNCTION_8(v0 + 16, v7);
  return *(v0 + 16);
}

uint64_t sub_2166540E0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t (*sub_216654154())()
{
  v3 = OUTLINED_FUNCTION_12();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_11(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_4();
  v7 = sub_216657D5C(v5, v6, &protocol conformance descriptor for ArtworkLoader);
  OUTLINED_FUNCTION_4(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_6(KeyPath);

  v2[7] = sub_216653FB4();
  return sub_21665422C;
}

uint64_t sub_21665427C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2166542E4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_2166542E4()
{
  swift_getKeyPath();
  v7[0] = v0;
  OUTLINED_FUNCTION_0_4();
  v3 = sub_216657D5C(v1, v2, &protocol conformance descriptor for ArtworkLoader);
  OUTLINED_FUNCTION_7(v3, v4, v5);

  OUTLINED_FUNCTION_8(v0 + 24, v7);
  return *(v0 + 24);
}

uint64_t sub_216654374(uint64_t a1, uint64_t a2, int a3)
{
  result = swift_beginAccess();
  v8 = *(v3 + 40);
  if ((v8 & 1) == 0 && (a3 & 1) == 0)
  {
    if (*(v3 + 24) != *&a1 || *(v3 + 32) != *&a2)
    {
      goto LABEL_10;
    }

LABEL_8:
    *(v3 + 24) = *&a1;
    *(v3 + 32) = *&a2;
    *(v3 + 40) = a3 & 1;
    return result;
  }

  if (v8 & a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  KeyPath = swift_getKeyPath();
  v11 = MEMORY[0x28223BE20](KeyPath);
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v13 = a3 & 1;
  sub_216656D48(v11, sub_216656DF0, v12);
}

uint64_t sub_216654470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4 & 1;
  return result;
}

uint64_t (*sub_2166544DC())()
{
  v3 = OUTLINED_FUNCTION_12();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_11(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_4();
  v7 = sub_216657D5C(v5, v6, &protocol conformance descriptor for ArtworkLoader);
  OUTLINED_FUNCTION_4(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_6(KeyPath);

  v2[7] = sub_216654238();
  return sub_2166545B4;
}

void *sub_216654604@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216654660();
  *a1 = result;
  return result;
}

void sub_216654630(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2166546F4(v1);
}

void *sub_216654660()
{
  swift_getKeyPath();
  v9[0] = v0;
  OUTLINED_FUNCTION_0_4();
  v3 = sub_216657D5C(v1, v2, &protocol conformance descriptor for ArtworkLoader);
  OUTLINED_FUNCTION_7(v3, v4, v5);

  OUTLINED_FUNCTION_8(v0 + 48, v9);
  v6 = *(v0 + 48);
  v7 = v6;
  return v6;
}

void sub_2166546F4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3;
  LOBYTE(v3) = sub_216656E14(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_216656D48(v6, sub_216656EA0, v8);
  }

  else
  {
    v7 = *(v1 + 48);
    *(v1 + 48) = a1;
  }
}

void sub_2166547D8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

uint64_t (*sub_216654838())()
{
  v3 = OUTLINED_FUNCTION_12();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_11(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_4();
  v7 = sub_216657D5C(v5, v6, &protocol conformance descriptor for ArtworkLoader);
  OUTLINED_FUNCTION_4(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_6(KeyPath);

  v2[7] = sub_2166545C0();
  return sub_216654910;
}

void sub_21665491C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_21666CDCC();

  free(v3);
}

uint64_t sub_2166549B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7, void (*a8)(void *), double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v163 = a8;
  v162 = a7;
  v178 = a5;
  v174 = a4;
  v179 = a3;
  v173 = a2;
  v181 = a1;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3470, &qword_21666F090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9(&v159 - v25);
  v26 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  v176 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v164 = v30 - v29;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3478, &qword_21666F098);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v31);
  v33 = OUTLINED_FUNCTION_9(&v159 - v32);
  v34 = _s10ParametersVMa(v33);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v169 = &v159 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  v42 = OUTLINED_FUNCTION_17(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5();
  v46 = MEMORY[0x28223BE20](v45);
  v177 = &v159 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v159 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3480, &qword_21666F0A0);
  v51 = OUTLINED_FUNCTION_17(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v159 - v54;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9(&v159 - v56);
  v57 = sub_21666CD6C();
  OUTLINED_FUNCTION_0_2();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3();
  v63 = v62 - v61;
  v167 = *a6;
  v64 = COERCE_DOUBLE(sub_2166542E4());
  if ((v66 & 1) != 0 || (v64 == a12 ? (v67 = v65 == a13) : (v67 = 0), !v67))
  {
    sub_216654374(*&a12, *&a13, 0);
  }

  sub_21666CD5C();
  sub_21666CD4C();
  v69 = v68;
  (*(v59 + 8))(v63, v57);
  v70 = sub_216652E8C();
  v71 = v70;
  v180 = v17;
  v166 = v26;
  if (v70)
  {
    v72 = *(v176 + 16);
    v73 = (v176 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74 = v70;
    v75 = v26;
    v76 = v178;
    v77 = v179;
    goto LABEL_26;
  }

  v78 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  OUTLINED_FUNCTION_8(v17 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters, v184);
  sub_2166570A4(v17 + v78, v49, &qword_27CAB3468, &qword_21666F9C0);
  v79 = OUTLINED_FUNCTION_16(v49);
  v80 = (v176 + 16);
  v73 = (v176 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v160 = 0;
  if (v79)
  {
    sub_216657168(v49, &qword_27CAB3468, &qword_21666F9C0);
    v81 = v170;
    __swift_storeEnumTagSinglePayload(v170, 1, 1, v26);
    v82 = *v80;
  }

  else
  {
    v83 = v169;
    sub_216657104(v49, v169);
    sub_216657168(v49, &qword_27CAB3468, &qword_21666F9C0);
    v84 = *v80;
    v81 = v170;
    (*v80)(v170, v83, v26);
    sub_216657230(v83);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v26);
    v82 = v84;
  }

  v171 = v82;
  v82(v55, v181, v26);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v26);
  v91 = *(v165 + 48);
  OUTLINED_FUNCTION_20();
  sub_2166570A4(v92, v93, &qword_27CAB3480, &qword_21666F0A0);
  sub_2166570A4(v55, v80 + v91, &qword_27CAB3480, &qword_21666F0A0);
  OUTLINED_FUNCTION_21(v80);
  if (v67)
  {
    sub_216657168(v55, &qword_27CAB3480, &qword_21666F0A0);
    v94 = v172;
    sub_216657168(v81, &qword_27CAB3480, &qword_21666F0A0);
    OUTLINED_FUNCTION_21(v94 + v91);
    v75 = v26;
    v71 = v160;
    if (v67)
    {
      sub_216657168(v94, &qword_27CAB3480, &qword_21666F0A0);
      v76 = v178;
      v77 = v179;
      v95 = v180;
      v96 = 0x2811AF000;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v97 = v161;
  sub_2166570A4(v80, v161, &qword_27CAB3480, &qword_21666F0A0);
  OUTLINED_FUNCTION_21(v80 + v91);
  if (v98)
  {
    sub_216657168(v55, &qword_27CAB3480, &qword_21666F0A0);
    v99 = v97;
    v94 = v172;
    sub_216657168(v170, &qword_27CAB3480, &qword_21666F0A0);
    (*(v176 + 8))(v99, v26);
    v75 = v26;
    v71 = v160;
LABEL_20:
    sub_216657168(v94, &qword_27CAB3478, &qword_21666F098);
    v76 = v178;
    v77 = v179;
    v95 = v180;
    v96 = 0x2811AF000uLL;
LABEL_21:
    v100 = *(v96 + 2224);
    v101 = *(v95 + v100);
    *(v95 + v100) = 0;

    goto LABEL_22;
  }

  v155 = v176;
  v156 = v80 + v91;
  v157 = v164;
  (*(v176 + 32))(v164, v156, v26);
  sub_216657D5C(&qword_2811AF468, MEMORY[0x277CD8460], MEMORY[0x277CD8478]);
  LODWORD(v165) = sub_21666D40C();
  v158 = *(v155 + 8);
  v158(v157, v26);
  sub_216657168(v55, &qword_27CAB3480, &qword_21666F0A0);
  sub_216657168(v170, &qword_27CAB3480, &qword_21666F0A0);
  v158(v97, v26);
  sub_216657168(v80, &qword_27CAB3480, &qword_21666F0A0);
  v75 = v26;
  v77 = v179;
  v95 = v180;
  v76 = v178;
  v71 = v160;
  v96 = 0x2811AF000;
  if ((v165 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v102 = *(v96 + 2224);
  v103 = *(v95 + v102);
  if (v103)
  {
    v74 = v103;
  }

  else
  {
    v104 = sub_216652EFC();
    v105 = *(v95 + v102);
    *(v95 + v102) = v104;
    v74 = v104;

    v75 = v166;
  }

  v72 = v171;
LABEL_26:
  v170 = v73;
  v171 = v72;
  v72(v38, v181, v75);
  v106 = v71;
  v107 = sub_216667AC0();
  v172 = v74;

  *(v38 + v34[5]) = v107;
  *(v38 + v34[6]) = a9;
  v108 = (v38 + v34[7]);
  *v108 = a10;
  v108[1] = a11;
  v109 = (v38 + v34[8]);
  *v109 = v173;
  v109[1] = v77;
  v110 = (v38 + v34[9]);
  *v110 = v174;
  v110[1] = v76;
  v111 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  v112 = v180;
  OUTLINED_FUNCTION_8(v180 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters, v183);
  v113 = v177;
  sub_216657104(v38, v177);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v34);
  v117 = *(v175 + 48);
  OUTLINED_FUNCTION_20();
  sub_2166570A4(v118, v119, &qword_27CAB3468, &qword_21666F9C0);
  sub_2166570A4(v113, v112 + v117, &qword_27CAB3468, &qword_21666F9C0);
  if (OUTLINED_FUNCTION_16(v112) != 1)
  {
    v122 = v168;
    sub_2166570A4(v112, v168, &qword_27CAB3468, &qword_21666F9C0);
    if (OUTLINED_FUNCTION_16(v112 + v117) != 1)
    {
      v130 = v169;
      sub_21665728C(v112 + v117, v169);

      v131 = v112;
      v112 = sub_216650E18(v122, v130);
      sub_216657230(v130);
      sub_216657168(v177, &qword_27CAB3468, &qword_21666F9C0);
      sub_216657230(v122);
      sub_216657168(v131, &qword_27CAB3468, &qword_21666F9C0);
      v123 = v180;
      v121 = v172;
      if (v112)
      {
LABEL_52:

        return sub_216657230(v38);
      }

LABEL_32:
      v179 = a16;
      OUTLINED_FUNCTION_20();
      sub_2166570A4(v124, v125, v126, v127);
      if (OUTLINED_FUNCTION_16(v112))
      {
        sub_216657168(v112, &qword_27CAB3468, &qword_21666F9C0);
        v128 = 0;
        v129 = 0;
      }

      else
      {
        v132 = v169;
        sub_216657104(v112, v169);
        sub_216657168(v112, &qword_27CAB3468, &qword_21666F9C0);
        v133 = v164;
        v134 = v166;
        v171(v164, v132, v166);
        sub_216657230(v132);
        v135 = sub_21666D39C();
        v136 = v134;
        v128 = v135;
        v129 = v137;
        (*(v176 + 8))(v133, v136);
      }

      v138 = sub_21666D39C();
      v140 = v139;
      if (v129)
      {
        if (v139)
        {
          if (v128 == v138 && v129 == v139)
          {

            goto LABEL_49;
          }

          v142 = sub_21666D79C();

          if ((v142 | v167))
          {
LABEL_49:
            OUTLINED_FUNCTION_20();
            sub_216657104(v143, v144);
            OUTLINED_FUNCTION_13();
            __swift_storeEnumTagSinglePayload(v145, v146, v147, v34);
            swift_beginAccess();
            sub_2166571C0(v140, v123 + v111);
            swift_endAccess();
            sub_2166568C0(v181, a15, v179, a10, a11, v69);
            v182 = 0;
            OUTLINED_FUNCTION_19();
            sub_21665655C(v148, v149, v150);
            if (sub_21666D36C())
            {
              v182 = 2;
              OUTLINED_FUNCTION_19();
              sub_21665655C(v151, v152, v153);
            }

            else
            {
              sub_216655710(v38, v162 & 1, v163, a14);
            }

            goto LABEL_52;
          }

LABEL_47:
          v140 = v123;
          sub_2166546F4(0);
          goto LABEL_49;
        }
      }

      else if (!v139)
      {
        goto LABEL_49;
      }

      if (v167)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    sub_216657168(v177, &qword_27CAB3468, &qword_21666F9C0);
    sub_216657230(v122);
    v121 = v172;
LABEL_31:
    sub_216657168(v112, &qword_27CAB3470, &qword_21666F090);
    v123 = v180;
    goto LABEL_32;
  }

  sub_216657168(v113, &qword_27CAB3468, &qword_21666F9C0);
  v120 = OUTLINED_FUNCTION_16(v112 + v117);
  v121 = v172;
  if (v120 != 1)
  {
    goto LABEL_31;
  }

  sub_216657168(v112, &qword_27CAB3468, &qword_21666F9C0);
  return sub_216657230(v38);
}

uint64_t sub_216655710(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v10 = _s10ParametersVMa(0);
  v11 = (a1 + v10[7]);
  v12 = *(a1 + v10[6]);
  v13 = *v11;
  v14 = v11[1];
  v15 = *(a1 + v10[5]);
  v16 = [v15 token];
  sub_21666D5CC();
  swift_unknownObjectRelease();
  sub_21664FF08(0, &qword_2811AF440, 0x277CD6080);
  if (swift_dynamicCast())
  {
    if (*(a1 + v10[8] + 8))
    {
      v17 = (a1 + v10[9]);
      if (v17[1])
      {
        v18 = *v17;
        v19 = v17[1];
      }

      else
      {
        v18 = sub_21666D44C();
        v19 = v20;
      }

      v21 = sub_21666D41C();
      [v25 setCropStyle_];

      sub_216657BEC(v18, v19, v25);
    }
  }

  if (a3)
  {
    v26[3] = sub_21664FF08(0, &qword_2811AF450, 0x277CD5D50);
    v26[0] = v15;
    sub_21664C528(a3, a4);
    v22 = v15;
    a3(v26);
    sub_21664D5A4(a3, a4);
    sub_2166579D0(v26);
  }

  if (a2)
  {
    [v15 setRenderHint_];
  }

  [v15 setFittingSize_];
  OUTLINED_FUNCTION_14();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_216655B58(v5, 1, sub_2166579C8, v23);
}

void sub_216655968(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = _s10ParametersVMa(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9];
  v11 = *a1;
  v12 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  swift_beginAccess();
  sub_2166570A4(v11 + v12, v10, &qword_27CAB3468, &qword_21666F9C0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5))
  {
    sub_216657168(v10, &qword_27CAB3468, &qword_21666F9C0);
    v13 = 0;
  }

  else
  {
    sub_216657104(v10, v7);
    sub_216657168(v10, &qword_27CAB3468, &qword_21666F9C0);
    v13 = *&v7[*(v5 + 20)];
    sub_216657230(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = sub_216667C84(Strong, v13);

  if (v15)
  {
    v16 = [a2 imageRepresentation];
    sub_216655C64(v16);
  }
}

uint64_t sub_216655B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v13[4] = sub_216657C50;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_216657B64;
  v13[3] = &block_descriptor_2;
  v11 = _Block_copy(v13);

  [v5 setMainThreadBoundDestination:a1 forRepresentationKinds:a2 configurationBlock:v11];
  _Block_release(v11);
}

void sub_216655C64(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  OUTLINED_FUNCTION_17(v4);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-v6 - 8];
  v8 = _s10ParametersVMa(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  OUTLINED_FUNCTION_17(v13);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v31[-v15 - 8];
  v17 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  OUTLINED_FUNCTION_8(v2 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters, v31);
  sub_2166570A4(v2 + v17, v16, &qword_27CAB3468, &qword_21666F9C0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v8))
  {
    sub_216657168(v16, &qword_27CAB3468, &qword_21666F9C0);
    v18 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_216656500(0);
    goto LABEL_8;
  }

  sub_216657104(v16, v12);
  sub_216657168(v16, &qword_27CAB3468, &qword_21666F9C0);
  v18 = *(v12 + *(v8 + 20));
  sub_216657230(v12);
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = a1;
  v20 = sub_216667CD8();
  if (v20)
  {
    v21 = v20;
    v22 = v20;
    sub_216656500(v21);
  }

  else
  {
    v23 = sub_21666D53C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v23);
    OUTLINED_FUNCTION_14();
    v24 = swift_allocObject();
    swift_weakInit();
    sub_21666D51C();
    v25 = v18;

    v26 = v19;
    v27 = sub_21666D50C();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v18;
    v28[5] = v24;
    v28[6] = v26;

    sub_216657FB0(0, 0, v7, &unk_21666F1F0, v28);

    v18 = v25;
  }

LABEL_8:
}

uint64_t sub_216655F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v6[20] = _s10ParametersVMa(0);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_21666D51C();
  v6[24] = sub_21666D50C();
  v8 = sub_21666D4FC();
  v6[25] = v8;
  v6[26] = v7;

  return MEMORY[0x2822009F8](sub_216656044, v8, v7);
}

uint64_t sub_216656044()
{
  OUTLINED_FUNCTION_8(*(v0 + 144) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
    OUTLINED_FUNCTION_8(Strong + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters, v0 + 40);
    sub_2166570A4(v2 + v5, v3, &qword_27CAB3468, &qword_21666F9C0);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
    v7 = *(v0 + 184);
    if (EnumTagSinglePayload)
    {
      sub_216657168(*(v0 + 184), &qword_27CAB3468, &qword_21666F9C0);
      v2 = 0;
    }

    else
    {
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      sub_216657104(*(v0 + 184), v8);
      sub_216657168(v7, &qword_27CAB3468, &qword_21666F9C0);
      v2 = *(v8 + *(v9 + 20));
      sub_216657230(v8);
    }
  }

  v10 = sub_216667C84(v2, *(v0 + 136));

  if (v10)
  {
    v11 = swift_task_alloc();
    *(v0 + 216) = v11;
    *v11 = v0;
    v11[1] = sub_216656224;

    return sub_216667D20();
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_216656224(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return MEMORY[0x2822009F8](sub_21665634C, v4, v3);
}

uint64_t sub_21665634C()
{
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_8(v1 + 16, v0 + 64);
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
    OUTLINED_FUNCTION_8(Strong + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters, v0 + 88);
    sub_2166570A4(v3 + v6, v4, &qword_27CAB3468, &qword_21666F9C0);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    v8 = *(v0 + 176);
    if (EnumTagSinglePayload)
    {
      sub_216657168(*(v0 + 176), &qword_27CAB3468, &qword_21666F9C0);
      v3 = 0;
    }

    else
    {
      v10 = *(v0 + 160);
      v9 = *(v0 + 168);
      sub_216657104(*(v0 + 176), v9);
      sub_216657168(v8, &qword_27CAB3468, &qword_21666F9C0);
      v3 = *(v9 + *(v10 + 20));
      sub_216657230(v9);
    }
  }

  v11 = sub_216667C84(v3, *(v0 + 136));

  if (v11)
  {
    OUTLINED_FUNCTION_8(*(v0 + 144) + 16, v0 + 112);
    v12 = swift_weakLoadStrong();
    v13 = *(v0 + 224);
    if (v12)
    {
      sub_216656500(*(v0 + 224));
    }
  }

  else
  {
    v13 = *(v0 + 224);
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_216656500(void *a1)
{
  v2 = a1;
  sub_2166546F4(a1);
  OUTLINED_FUNCTION_19();
  sub_21665655C(v3, v4, v5);
}

void sub_21665655C(unsigned __int8 *a1, unsigned __int8 a2, char a3)
{
  v7 = a2;
  v8 = sub_21666D28C();
  OUTLINED_FUNCTION_0_2();
  v28 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = sub_21666D2AC();
  OUTLINED_FUNCTION_0_2();
  v27 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = *a1;
  if (v7 == 2)
  {
    if ((*(v3 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_shouldEnforceUsageOnMainThread) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    return;
  }

LABEL_6:
  v21 = (v3 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  v22 = *(v3 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  if (v22)
  {
    v23 = v21[1];
    if ((v20 - 1) >= 2)
    {

      if ((a3 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v21 = 0;
      v21[1] = 0;
      if ((a3 & 1) == 0)
      {
LABEL_9:
        LOBYTE(aBlock[0]) = v20;
        v22(aBlock);
        sub_21664D5A4(v22, v23);
        return;
      }
    }

    sub_21664FF08(0, &qword_2811AF448, 0x277D85C78);
    v24 = sub_21666D57C();
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v23;
    *(v25 + 32) = v20;
    aBlock[4] = sub_216657D1C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21666CC70;
    aBlock[3] = &block_descriptor_58;
    v26 = _Block_copy(aBlock);

    sub_21666D29C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_216657D5C(&qword_2811AF470, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3498, &qword_21666F1F8);
    sub_216657DA4();
    sub_21666D5DC();
    MEMORY[0x21CE95AE0](0, v19, v13, v26);
    _Block_release(v26);

    sub_21664D5A4(v22, v23);
    (*(v28 + 8))(v13, v8);
    (*(v27 + 8))(v19, v14);
  }
}

uint64_t sub_2166568C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v30[15] = 3;
  OUTLINED_FUNCTION_19();
  sub_21665655C(v19, v20, v21);
  OUTLINED_FUNCTION_14();
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(&v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v13);
  v23 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = a6;
  *(v24 + 32) = a2;
  *(v24 + 40) = a3;
  (*(v15 + 32))(v24 + v23, &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v13);
  v25 = (v24 + ((v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = a4;
  v25[1] = a5;
  v26 = (v6 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  v27 = *(v6 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  v28 = v26[1];
  *v26 = sub_216657C70;
  v26[1] = v24;

  sub_21664C528(a2, a3);
  sub_21664D5A4(v27, v28);
}

uint64_t sub_216656A98(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(uint64_t, double *, double, double), double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_21666CD6C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v24) = LOBYTE(v18);
    sub_216656C60(&v24);
  }

  sub_21666CD5C();
  sub_21666CD4C();
  v20 = v19;
  result = (*(v15 + 8))(v17, v14);
  v22 = 3;
  switch(LODWORD(v18))
  {
    case 1:
      v22 = 0;
      v18 = v20 - a4;
      if (a3)
      {
        goto LABEL_8;
      }

      return result;
    case 2:
      v18 = v20 - a4;
      v22 = 1;
      goto LABEL_7;
    case 3:
      v18 = v20 - a4;
      v22 = 2;
      if (!a3)
      {
        return result;
      }

      goto LABEL_8;
    default:
LABEL_7:
      if (a3)
      {
LABEL_8:
        v24 = v18;
        v25 = v22;
        return a3(a8, &v24, a5, a6);
      }

      return result;
  }
}

uint64_t sub_216656C60(unsigned __int8 *a1)
{
  v1 = *a1;
  result = sub_216654054();
  if ((result & 1) != (v1 == 2))
  {

    return sub_216653DE0(v1 == 2);
  }

  return result;
}

uint64_t type metadata accessor for ArtworkLoader(uint64_t a1)
{
  result = qword_2811AF7D8;
  if (!qword_2811AF7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_216656D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_4();
  sub_216657D5C(v3, v4, &protocol conformance descriptor for ArtworkLoader);
  return sub_21666CDAC();
}

BOOL sub_216656E14(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_21664FF08(0, &qword_2811AF428, 0x277D755B8);
    v5 = a1;
    v6 = a2;
    v2 = sub_21666D5AC();
  }

  return (v2 & 1) == 0;
}

BOOL sub_216656EBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 1:
      return v2 == 1;
    case 2:
      return v2 == 2;
    case 3:
      return v2 == 3;
    default:
      return !*a2;
  }
}

uint64_t sub_216656F18()
{
  v1 = *v0;
  switch(*v0)
  {
    case 1:
      v1 = 1;
      break;
    case 2:
      MEMORY[0x21CE95D60](2);
      v1 = 0;
      break;
    case 3:
      v1 = 3;
      break;
    default:
      return MEMORY[0x21CE95D60](v1);
  }

  return MEMORY[0x21CE95D60](v1);
}

uint64_t sub_216656F84()
{
  v1 = *v0;
  sub_21666D7FC();
  switch(v1)
  {
    case 1:
      v1 = 1;
      break;
    case 2:
      MEMORY[0x21CE95D60](2);
      v1 = 0;
      break;
    case 3:
      v1 = 3;
      break;
    default:
      break;
  }

  MEMORY[0x21CE95D60](v1);
  return sub_21666D83C();
}

uint64_t sub_21665701C(uint64_t a1)
{
  v2 = *v1;
  sub_21666D7FC();
  switch(v2)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      MEMORY[0x21CE95D60](2);
      v2 = 0;
      break;
    case 3:
      v2 = 3;
      break;
    default:
      break;
  }

  MEMORY[0x21CE95D60](v2);
  return sub_21666D83C();
}

uint64_t sub_2166570A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216657104(uint64_t a1, uint64_t a2)
{
  v4 = _s10ParametersVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216657168(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2166571C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216657230(uint64_t a1)
{
  v2 = _s10ParametersVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21665728C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ParametersVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2166572F8(uint64_t a1)
{
  sub_2166575DC(319);
  if (v1 <= 0x3F)
  {
    sub_21666CDFC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166575DC(uint64_t a1)
{
  if (!qword_2811AF860)
  {
    _s10ParametersVMa(255);
    v1 = sub_21666D5BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811AF860);
    }
  }
}

uint64_t getEnumTagSinglePayload for ArtworkLoader.SimplifiedLoadingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ArtworkLoader.SimplifiedLoadingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2166577B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3488;
  if (!qword_27CAB3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3488);
  }

  return result;
}

uint64_t sub_21665780C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2166578D4;

  return sub_216655F34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2166578D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_216657A24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  sub_216652E30(a1, v7);
  type metadata accessor for ArtworkLoader(0);
  if (swift_dynamicCast() && v6)
  {
    v8 = v6;
    a3(&v8, a2);
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_21666D62C();
    MEMORY[0x21CE959E0](0xD000000000000054, 0x8000000216671240);
    sub_21666D67C();
    MEMORY[0x21CE959E0](46, 0xE100000000000000);
    result = sub_21666D69C();
    __break(1u);
  }

  return result;
}

uint64_t sub_216657B64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

void sub_216657BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21666D41C();

  [a3 setFormat_];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_216657C70(unsigned __int8 *a1)
{
  v3 = *(sub_21666D3BC() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + 2);
  v6 = v1[3];
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_216656A98(a1, v5, v7, v6, v10, v11, v8, v1 + v4);
}

uint64_t sub_216657D1C()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_216657D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216657DA4()
{
  result = qword_2811AF458;
  if (!qword_2811AF458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3498, &qword_21666F1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF458);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{
  *(v1 + 48) = a1;

  return MEMORY[0x2821FF6F8](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return MEMORY[0x2821FF708](v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return MEMORY[0x2821FF6F8](va, v3, a1);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_216657FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_21665890C(a3, v24 - v10);
  v12 = sub_21666D53C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_21665897C(v11);
  }

  else
  {
    sub_21666D52C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21666D4FC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21666D46C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_21665897C(a3);

      return v22;
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

  sub_21665897C(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_216658254(const void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-v8];
  memcpy(v17, a1, sizeof(v17));
  v10 = sub_21666D53C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_21666D51C();
  v11 = v3;
  sub_216658704(v17, v16);

  v12 = sub_21666D50C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  memcpy(v13 + 5, v17, 0x90uLL);
  v13[23] = a2;
  v13[24] = a3;
  sub_216657FB0(0, 0, v9, &unk_21666F208, v13);
}

uint64_t sub_2166583B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  sub_21666D51C();
  v7[24] = sub_21666D50C();
  v9 = sub_21666D4FC();
  v7[25] = v9;
  v7[26] = v8;

  return MEMORY[0x2822009F8](sub_216658450, v9, v8);
}

uint64_t sub_216658450()
{
  OUTLINED_FUNCTION_2_0();
  memcpy((v0 + 16), *(v0 + 168), 0x90uLL);
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_216658500;

  return sub_216658D58(v0 + 16);
}

uint64_t sub_216658500()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  v3[28] = v0;

  v6 = v3[25];
  v7 = v3[26];
  if (v0)
  {
    v8 = sub_216658670;
  }

  else
  {
    v8 = sub_216658604;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216658604()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 176);

  v1(1, 0);
  OUTLINED_FUNCTION_4_0();

  return v2();
}

uint64_t sub_216658670()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);

  v3 = sub_21666CCFC();
  v2(0, v3);

  OUTLINED_FUNCTION_4_0();

  return v4();
}

uint64_t sub_216658760(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[23];
  v7 = v1[24];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v9[1] = sub_21665882C;

  return sub_2166583B4(a1, v3, v4, v5, (v1 + 5), v6, v7);
}

uint64_t sub_21665882C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_21665890C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21665897C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2166589E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_216658ADC;

  return v6(a1);
}

uint64_t sub_216658ADC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_216658BC0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_2(v1);

  return v4(v3);
}

uint64_t sub_216658C58()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_2(v1);

  return v4(v3);
}

uint64_t sub_216658D58(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_216658D78, 0, 0);
}

uint64_t sub_216658D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = v3;
  sub_21664FAA0(a1, a2, a3);
  *(v3 + 160) = v4;
  v5 = v4;
  memcpy(__dst, *(v3 + 144), 0x90uLL);
  v6 = sub_216659378(__dst);
  *(v3 + 168) = v6;
  *(v3 + 176) = v7;
  if (v7 >> 60 == 15)
  {
    sub_21664FE5C(v6, v7, v8);
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    v10 = *(v3 + 8);

    return v10();
  }

  else
  {
    v12 = sub_21666D41C();
    *(v3 + 184) = v12;
    v13 = sub_21666CD3C();
    *(v3 + 192) = v13;
    *(v3 + 16) = v3;
    *(v3 + 24) = sub_216658F84;
    v14 = swift_continuation_init();
    *(v3 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34A0, &qword_21666F230);
    *(v3 + 80) = MEMORY[0x277D85DD0];
    *(v3 + 88) = 1107296256;
    *(v3 + 96) = sub_216659424;
    *(v3 + 104) = &block_descriptor_3;
    *(v3 + 112) = v14;
    [v5 subscriptionOffer:v12 updateOptionsWithClientID:v13 encodedOptions:v3 + 80 completionHandler:?];

    return MEMORY[0x282200938](v3 + 16);
  }
}

uint64_t sub_216658F84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_216659118;
  }

  else
  {
    v2 = sub_216659094;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_216659094()
{
  v2 = v0[23];
  v1 = v0[24];
  sub_2166594AC(v0[21], v0[22]);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_216659118(uint64_t a1)
{
  v23 = v1;
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  if (qword_27CAB2ED0 != -1)
  {
    swift_once();
  }

  v4 = v1[25];
  v5 = sub_21666CE2C();
  __swift_project_value_buffer(v5, qword_27CAB5800);

  v6 = v4;
  v7 = sub_21666CE0C();
  v8 = sub_21666D54C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136446466;
    v13 = sub_21666D88C();
    v15 = sub_21666B5BC(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_21664A000, v7, v8, "%{public}s: failed to load subscription offer with error: %{public}@", v10, 0x16u);
    sub_216659588(v11);
    MEMORY[0x21CE96470](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CE96470](v12, -1, -1);
    MEMORY[0x21CE96470](v10, -1, -1);
  }

  v18 = v1[21];
  v19 = v1[22];
  swift_willThrow();
  sub_2166594AC(v18, v19);
  swift_unknownObjectRelease();
  v20 = v1[1];

  return v20();
}

uint64_t sub_216659378(const void *a1)
{
  sub_21666CCEC();
  swift_allocObject();
  sub_21666CCDC();
  v2 = memcpy(__dst, a1, sizeof(__dst));
  sub_2166595F0(v2, v3, v4);
  v5 = sub_21666CCCC();

  return v5;
}

uint64_t sub_216659424(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_216659518(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_2166594AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2166594C0(a1, a2);
  }

  return a1;
}

uint64_t sub_2166594C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_216659518(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34B0, &qword_21666F238);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_216659588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34A8, &qword_21666F720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2166595F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB34B8;
  if (!qword_27CAB34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB34B8);
  }

  return result;
}

uint64_t sub_216659644()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34F8, &qword_21666F4A8);
  MEMORY[0x28223BE20](v2);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  MEMORY[0x28223BE20](v5);
  v7 = (v13 - v6);
  sub_21665BF3C(v1, v13 - v6, &qword_27CAB34C0, &qword_21666F240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v13[0] = v8;
    v13[1] = v9;
    v13[2] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3500, &qword_21666F4B0);
    MEMORY[0x21CE957A0](&v14, v11);
  }

  else
  {
    sub_21665BF98(v7, v4);
    sub_21666CE4C();
    sub_216657168(v4, &qword_27CAB34F8, &qword_21666F4A8);
  }

  return v14;
}

uint64_t ArtworkImage.init(artwork:width:height:idealAspectRatio:contentMode:backgroundColor:rawCropStyle:rawImageFormat:reusePolicy:overrideFrameSize:externalLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v39 = *a15;
  v24 = type metadata accessor for ArtworkImage(0);
  v25 = v24[5];
  sub_21666D3BC();
  OUTLINED_FUNCTION_18();
  v27 = v26;
  v44 = v28;
  (*(v26 + 16))(&a9[v25], a1);
  v29 = &a9[v24[6]];
  *v29 = a2;
  v29[8] = a3 & 1;
  v30 = &a9[v24[7]];
  *v30 = a4;
  v30[8] = a5 & 1;
  v31 = &a9[v24[8]];
  *v31 = a6;
  v31[8] = a7 & 1;
  a9[v24[9]] = a8;
  v32 = &a9[v24[10]];
  *v32 = a11;
  *(v32 + 1) = a12;
  v33 = &a9[v24[11]];
  *v33 = a13;
  *(v33 + 1) = a14;
  a9[v24[12]] = v39;
  a9[v24[13]] = a16;
  v34 = sub_21666D38C();
  if (!v34)
  {
    v34 = OUTLINED_FUNCTION_6_0();
  }

  v35 = v34;
  if (a10)
  {
    v36 = a10;
  }

  else
  {
    v37 = v34;
    v36 = sub_21666D1BC();
  }

  *&a9[v24[14]] = v36;
  if (a18)
  {

    sub_21665B750(a17, a18, a19);
    (*(v27 + 8))(a1, v44);

    sub_21665B79C(a17, a18, a19);

    *a9 = a17;
    *(a9 + 1) = a18;
    *(a9 + 2) = a19;
  }

  else
  {
    type metadata accessor for ArtworkLoader(0);
    swift_allocObject();

    ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(1);
    OUTLINED_FUNCTION_13_0();
    sub_21666CE3C();

    (*(v27 + 8))(a1, v44);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(_:width:height:)(double a1)
{
  OUTLINED_FUNCTION_11_0();
  v7 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_3_1(v9, v21);
  v5(v10);
  v11 = type metadata accessor for ArtworkImage(0);
  v12 = OUTLINED_FUNCTION_7_0(v11);
  v5(v12);
  v13 = v1 + v4[6];
  *v13 = a1;
  *(v13 + 8) = 0;
  OUTLINED_FUNCTION_17_0(v4[7]);
  OUTLINED_FUNCTION_10_0(v4[8]);
  v15 = OUTLINED_FUNCTION_2_1(v14);
  if (!v15)
  {
    v15 = OUTLINED_FUNCTION_6_0();
  }

  v16 = v15;
  v17 = sub_21666D1BC();
  v18 = OUTLINED_FUNCTION_20_0(v17);
  OUTLINED_FUNCTION_19_0(v18);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  v19 = OUTLINED_FUNCTION_15_0();
  v2(v19);
  (v2)(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(_:width:)()
{
  OUTLINED_FUNCTION_11_0();
  v4 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_3_1(v6, v17);
  v3(v7);
  v8 = type metadata accessor for ArtworkImage(0);
  v9 = OUTLINED_FUNCTION_7_0(v8);
  v3(v9);
  OUTLINED_FUNCTION_17_0(v2[6]);
  OUTLINED_FUNCTION_5_1(v2[7]);
  OUTLINED_FUNCTION_10_0(v2[8]);
  v11 = OUTLINED_FUNCTION_2_1(v10);
  if (!v11)
  {
    v11 = OUTLINED_FUNCTION_6_0();
  }

  v12 = v11;
  v13 = sub_21666D1BC();
  v14 = OUTLINED_FUNCTION_20_0(v13);
  OUTLINED_FUNCTION_19_0(v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  v15 = OUTLINED_FUNCTION_15_0();
  v0(v15);
  (v0)(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(_:height:)()
{
  OUTLINED_FUNCTION_11_0();
  v4 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_3_1(v6, v17);
  v3(v7);
  v8 = type metadata accessor for ArtworkImage(0);
  v9 = OUTLINED_FUNCTION_7_0(v8);
  v3(v9);
  OUTLINED_FUNCTION_5_1(v2[6]);
  OUTLINED_FUNCTION_17_0(v2[7]);
  OUTLINED_FUNCTION_10_0(v2[8]);
  v11 = OUTLINED_FUNCTION_2_1(v10);
  if (!v11)
  {
    v11 = OUTLINED_FUNCTION_6_0();
  }

  v12 = v11;
  v13 = sub_21666D1BC();
  v14 = OUTLINED_FUNCTION_20_0(v13);
  OUTLINED_FUNCTION_19_0(v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  v15 = OUTLINED_FUNCTION_15_0();
  v0(v15);
  (v0)(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ArtworkImage.automaticallySized(with:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_0();
  v3 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *(v5 + 16);
  v10(v8 - v7, a1, v3);
  v11 = type metadata accessor for ArtworkImage(0);
  v10(v1 + v11[5], v9, v3);
  OUTLINED_FUNCTION_5_1(v11[6]);
  OUTLINED_FUNCTION_10_0(v11[7]);
  *(v12 + 8) = v13;
  OUTLINED_FUNCTION_10_0(v11[8]);
  *(v14 + 8) = v15;
  *(v1 + v11[9]) = 2;
  v16 = (v1 + v11[10]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + v11[11]);
  *v17 = 0;
  v17[1] = 0;
  *(v1 + v11[12]) = 0;
  *(v1 + v11[13]) = 0;
  v18 = sub_21666D38C();
  if (!v18)
  {
    v18 = OUTLINED_FUNCTION_6_0();
  }

  v19 = v18;
  *(v1 + v11[14]) = sub_21666D1BC();
  type metadata accessor for ArtworkLoader(0);
  swift_allocObject();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  (*(v5 + 8))(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(base:idealAspectRatio:contentMode:backgroundColor:rawCropStyle:rawImageFormat:reusePolicy:overrideFrameSize:externalLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned __int8 *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v54 = *a11;
  v27 = type metadata accessor for ArtworkImage(0);
  v52 = v20;
  v48 = *(v22 + 16);
  v48(v26, a1 + v27[5], v20);
  if (a3)
  {
    v28 = a1 + v27[8];
    a2 = *v28;
    v47 = *(v28 + 8);
  }

  else
  {
    v47 = 0;
  }

  v29 = (a1 + v27[6]);
  v30 = (a1 + v27[7]);
  if (a4 == 2)
  {
    a4 = *(a1 + v27[9]);
  }

  v44 = *v29;
  v43 = *(v29 + 8);
  v46 = *v30;
  v45 = *(v30 + 8);
  if (a5)
  {
    v49 = a5;
  }

  else
  {
    v49 = *(a1 + v27[14]);
  }

  v31 = a10;
  if (a7)
  {
    if (a10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = (a1 + v27[10]);
    a6 = *v40;
    a7 = v40[1];

    if (a10)
    {
      goto LABEL_11;
    }
  }

  v41 = (a1 + v27[11]);
  a8 = *v41;
  v31 = v41[1];

LABEL_11:
  v32 = a12;
  if (v54 == 2)
  {
    LOBYTE(v54) = *(a1 + v27[12]);
  }

  if (a12 == 2)
  {
    v32 = *(a1 + v27[13]);
  }

  v48(a9 + v27[5], v26, v52);
  v33 = a9 + v27[6];
  *v33 = v44;
  v33[8] = v43;
  v34 = a9 + v27[7];
  *v34 = v46;
  v34[8] = v45;
  v35 = a9 + v27[8];
  *v35 = a2;
  v35[8] = v47;
  *(a9 + v27[9]) = a4;
  v36 = (a9 + v27[10]);
  *v36 = a6;
  v36[1] = a7;
  v37 = (a9 + v27[11]);
  *v37 = a8;
  v37[1] = v31;
  *(a9 + v27[12]) = v54 & 1;
  *(a9 + v27[13]) = v32 & 1;

  v38 = sub_21666D38C();
  if (!v38)
  {
    v38 = OUTLINED_FUNCTION_6_0();
  }

  v39 = v38;
  *(a9 + v27[14]) = v49;
  if (a14)
  {

    OUTLINED_FUNCTION_9_0();
    (*(v22 + 8))(v26, v52);
    *a9 = a13;
    a9[1] = a14;
    a9[2] = a15;
  }

  else
  {
    type metadata accessor for ArtworkLoader(0);
    swift_allocObject();

    ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(1);
    OUTLINED_FUNCTION_13_0();
    sub_21666CE3C();

    OUTLINED_FUNCTION_9_0();
    (*(v22 + 8))(v26, v52);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.artwork.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = *(type metadata accessor for ArtworkImage(v2) + 20);
  sub_21666D3BC();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t ArtworkImage.rawCropStyle.getter()
{
  type metadata accessor for ArtworkImage(0);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t ArtworkImage.rawImageFormat.getter()
{
  type metadata accessor for ArtworkImage(0);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t ArtworkImage.reusePolicy.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  result = type metadata accessor for ArtworkImage(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t ArtworkImage.backgroundColor.getter()
{
  type metadata accessor for ArtworkImage(0);
}

uint64_t ArtworkImage.containerSize.getter()
{
  sub_21665A70C(v1);
  if (v2 << 8 == 768)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void sub_21665A70C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArtworkImage(0);
  v5 = sub_21666D35C();
  v6 = sub_21666D37C();
  v7 = v6;
  v8 = v2 + v4[6];
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = v2 + v4[7];
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = v2 + v4[8];
  v15 = 1.0;
  if (v5 >= 1 && v6 >= 1)
  {
    v15 = v5 / v6;
  }

  v17 = *(v2 + v4[9]);
  v18 = *v14;
  v19 = *(v14 + 8);
  if (v10)
  {
    if (v13)
    {
      v5 = 0;
      v7 = 0;
      v9 = 0.0;
      v20 = 0;
      v12 = 0.0;
      v21 = 0;
      v22 = 0uLL;
      v18 = 0.0;
      v23 = 0.0;
      v24 = 768;
      v25 = 0.0;
      goto LABEL_21;
    }

    *&v22 = v12;
    v23 = v15 * v12;
  }

  else if (v13)
  {
    v23 = v9;
    *&v22 = v9 / v15;
  }

  else
  {
    *&v22 = v12;
    v23 = v9;
  }

  v26 = v23;
  v25 = *&v22;
  if ((*(v14 + 8) & 1) == 0)
  {
    v30 = *&v22;
    sub_2166687A8(*&v9, v10, *&v12, v13, *v14);
    if (v29)
    {
      v26 = v23;
    }

    else
    {
      v26 = v27;
    }

    v25 = v30;
    if ((v29 & 1) == 0)
    {
      v25 = v28;
    }

    *&v22 = v30;
  }

  v20 = v10;
  v21 = v13;
  *(&v22 + 1) = v26;
  v24 = v19 | (v17 << 8);
LABEL_21:
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v20;
  *(a1 + 32) = v12;
  *(a1 + 40) = v21;
  *(a1 + 48) = v18;
  *(a1 + 56) = v24;
  *(a1 + 64) = v23;
  *(a1 + 72) = v22;
  *(a1 + 88) = v25;
}

uint64_t ArtworkImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for ArtworkImage(0);
  OUTLINED_FUNCTION_0_2();
  v69 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C8, &qword_21666F248);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7);
  v9 = (&v61 - v8);
  v10 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v72 = _s9BaseImageVMa(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  sub_21665A70C(v73);
  v21 = v75;
  if ((v75 & 0xFF00) == 0x300)
  {
    sub_21665B9D4(v1, &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage);
    v22 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v23 = swift_allocObject();
    sub_21665B7EC(&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    *v9 = sub_21665B850;
    v9[1] = v23;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34E0, &qword_21666F260);
    OUTLINED_FUNCTION_8_0();
    sub_21665B98C(v24, v25, &unk_21666F95C);
    sub_21665B8D0();
    OUTLINED_FUNCTION_12_0();
    return sub_21666D00C();
  }

  else
  {
    v81 = v73[1];
    v82 = v73[2];
    v83 = v74;
    v79 = v77;
    v80 = v73[0];
    v78 = v76;
    v27 = v2[5];
    v68 = v12;
    v28 = *(v12 + 16);
    v28(v16, v1 + v27, v10);
    v61 = sub_216659644();
    v29 = v2[14];
    v67 = v10;
    v69 = v9;
    v30 = *(v1 + v29);
    v31 = v2[11];
    v32 = (v1 + v2[10]);
    v34 = *v32;
    v33 = v32[1];
    v66 = v34;
    v65 = v33;
    v35 = (v1 + v31);
    v36 = v2[13];
    v64 = *(v1 + v2[12]);
    v37 = *(v1 + v36);
    v38 = v72;
    v39 = v20 + *(v72 + 32);
    v41 = *v35;
    v40 = v35[1];
    v63 = v41;
    v62 = v40;
    *v39 = swift_getKeyPath();
    *(v39 + 8) = 0;
    v42 = v83;
    v43 = v82;
    *(v20 + 16) = v81;
    *(v20 + 32) = v43;
    v44 = v79;
    *v20 = v80;
    *(v20 + 48) = v42;
    *(v20 + 56) = v21;
    *(v20 + 64) = v78;
    *(v20 + 80) = v44;
    *(v20 + 96) = v30;
    *(v20 + 104) = v37;
    v45 = v20 + *(v38 + 28);
    v28(v45, v16, v10);
    v46 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
    *(v45 + v46[5]) = v61;
    v47 = v45 + v46[6];
    v48 = v81;
    *v47 = v80;
    *(v47 + 16) = v48;
    *(v47 + 32) = v82;
    *(v47 + 48) = v83;
    *(v47 + 56) = v21;
    v49 = v79;
    *(v47 + 64) = v78;
    *(v47 + 80) = v49;
    v50 = (v45 + v46[7]);
    v51 = v65;
    *v50 = v66;
    v50[1] = v51;
    v52 = (v45 + v46[8]);
    v53 = v62;
    *v52 = v63;
    v52[1] = v53;
    *(v45 + v46[9]) = v64;
    v54 = v45 + v46[10];
    *v54 = swift_getKeyPath();
    *(v54 + 8) = 0;
    v55 = v45 + v46[11];
    *v55 = swift_getKeyPath();
    *(v55 + 40) = 0;
    v56 = v45 + v46[12];
    type metadata accessor for ArtworkLoadingObserver(0);
    sub_21665B98C(&qword_2811AF5B0, type metadata accessor for ArtworkLoadingObserver, "IƼk83");

    v57 = sub_21666CE8C();
    LOBYTE(v39) = v58;
    (*(v68 + 8))(v16, v67);
    *v56 = v57;
    *(v56 + 8) = v39 & 1;
    sub_21665B9D4(v20, v69, _s9BaseImageVMa);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34E0, &qword_21666F260);
    OUTLINED_FUNCTION_8_0();
    sub_21665B98C(v59, v60, &unk_21666F95C);
    sub_21665B8D0();
    OUTLINED_FUNCTION_12_0();
    sub_21666D00C();
    return sub_21665BA30(v20, _s9BaseImageVMa);
  }
}

uint64_t sub_21665AE90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = sub_21666D3BC();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkImage(0);
  v8 = v7[5];
  v54 = sub_21666D35C();
  v53 = sub_21666D37C();
  sub_21666CEDC();
  v10 = v9;
  v12 = v11;
  v13 = a1 + v7[8];
  if (*(v13 + 8))
  {
    sub_21666CEDC();
    v15 = v14;
    sub_21666CEDC();
    v17 = v15 / v16;
  }

  else
  {
    v17 = *v13;
  }

  HIDWORD(v46) = *(a1 + v7[9]);
  LOBYTE(v61[0]) = 0;
  LOBYTE(v60[0]) = 0;
  LOBYTE(v58) = 0;
  v56 = v4;
  v18 = *(v4 + 16);
  v19 = a1 + v8;
  v20 = v55;
  v18(v6, v19, v55);
  v47 = sub_216659644();
  v57 = *(a1 + v7[14]);
  v21 = v7[11];
  v22 = (a1 + v7[10]);
  v23 = *v22;
  v49 = v22[1];
  v50 = v23;
  v24 = a1 + v21;
  v25 = *(a1 + v21);
  v51 = *(v24 + 8);
  v52 = v25;
  v26 = v7[13];
  v48 = *(a1 + v7[12]);
  v27 = *(a1 + v26);
  v28 = _s9BaseImageVMa(0);
  v29 = a2 + *(v28 + 32);
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  v31 = v53;
  v30 = v54;
  *a2 = v54;
  *(a2 + 8) = v31;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0;
  *(a2 + 28) = *(v61 + 3);
  *(a2 + 25) = v61[0];
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  *(a2 + 44) = *(v60 + 3);
  *(a2 + 41) = v60[0];
  *(a2 + 48) = v17;
  *(a2 + 56) = 0;
  v32 = BYTE4(v46);
  *(a2 + 57) = BYTE4(v46);
  *(a2 + 62) = v59;
  *(a2 + 58) = v58;
  *(a2 + 64) = v10;
  *(a2 + 72) = v12;
  *(a2 + 80) = v10;
  *(a2 + 88) = v12;
  *(a2 + 96) = v57;
  *(a2 + 104) = v27;
  v33 = (a2 + *(v28 + 28));
  v18(v33, v6, v20);
  v34 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  *&v33[v34[5]] = v47;
  v35 = &v33[v34[6]];
  *v35 = v30;
  *(v35 + 1) = v31;
  *(v35 + 2) = v10;
  v35[24] = 0;
  *(v35 + 25) = v61[0];
  *(v35 + 7) = *(v61 + 3);
  *(v35 + 4) = v12;
  v35[40] = 0;
  *(v35 + 41) = v60[0];
  *(v35 + 11) = *(v60 + 3);
  *(v35 + 6) = v17;
  v35[56] = 0;
  v35[57] = v32;
  *(v35 + 31) = v59;
  *(v35 + 58) = v58;
  *(v35 + 8) = v10;
  *(v35 + 9) = v12;
  *(v35 + 10) = v10;
  *(v35 + 11) = v12;
  v36 = &v33[v34[7]];
  v37 = v49;
  *v36 = v50;
  *(v36 + 1) = v37;
  v38 = &v33[v34[8]];
  v39 = v51;
  *v38 = v52;
  *(v38 + 1) = v39;
  v33[v34[9]] = v48;
  v40 = &v33[v34[10]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = &v33[v34[11]];
  *v41 = swift_getKeyPath();
  v41[40] = 0;
  v42 = &v33[v34[12]];
  type metadata accessor for ArtworkLoadingObserver(0);
  sub_21665B98C(&qword_2811AF5B0, type metadata accessor for ArtworkLoadingObserver, "IƼk83");

  v43 = sub_21666CE8C();
  LOBYTE(v33) = v44;
  result = (*(v56 + 8))(v6, v20);
  *v42 = v43;
  v42[8] = v33 & 1;
  return result;
}

double sub_21665B288()
{
  qword_2811AFA40 = 0;
  result = 0.0;
  xmmword_2811AFA20 = 0u;
  *algn_2811AFA30 = 0u;
  return result;
}

uint64_t sub_21665B2A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811AFA18 != -1)
  {
    swift_once();
  }

  return sub_21665BF3C(&xmmword_2811AFA20, a1, &qword_27CAB34E8, &qword_21666F2C0);
}

void *EnvironmentValues.artworkCatalogConfigurationHandler.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_21665BA88(x0_0, a2, a3);

  return sub_21666CFDC();
}

uint64_t EnvironmentValues.artworkCatalogConfigurationHandler.setter(uint64_t a1)
{
  v2 = sub_21665BF3C(a1, v6, &qword_27CAB34E8, &qword_21666F2C0);
  sub_21665BA88(v2, v3, v4);
  sub_21666CFEC();
  return sub_216657168(a1, &qword_27CAB34E8, &qword_21666F2C0);
}

void (*EnvironmentValues.artworkCatalogConfigurationHandler.modify(void *a1))(char **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_21665BA88(v3, v4, v5);
  sub_21666CFDC();
  return sub_21665B4C0;
}

void sub_21665B4C0(char **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_22();
    sub_21665BF3C(v2 + 40, v2 + 80, &qword_27CAB34E8, &qword_21666F2C0);
    sub_21666CFEC();
    sub_216657168(v2 + 40, &qword_27CAB34E8, &qword_21666F2C0);
  }

  else
  {
    OUTLINED_FUNCTION_22();
    sub_21666CFEC();
  }

  sub_216657168(v2, &qword_27CAB34E8, &qword_21666F2C0);

  free(v2);
}

uint64_t ArtworkLoadingObserver.__allocating_init(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_21666CDEC();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t ArtworkLoadingObserver.init(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21666CDEC();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ArtworkLoadingObserver.deinit()
{

  v1 = OBJC_IVAR____TtC17_MusicKit_SwiftUI22ArtworkLoadingObserver___observationRegistrar;
  sub_21666CDFC();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ArtworkLoadingObserver.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17_MusicKit_SwiftUI22ArtworkLoadingObserver___observationRegistrar;
  sub_21666CDFC();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21665B750(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

uint64_t sub_21665B79C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

uint64_t sub_21665B7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21665B850@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArtworkImage(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21665AE90(v4, a1);
}

unint64_t sub_21665B8D0()
{
  result = qword_2811AF4C8;
  if (!qword_2811AF4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB34E0, &qword_21666F260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4C8);
  }

  return result;
}

uint64_t sub_21665B954(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21665B98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21665B9D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_21_0();
  v5(v4);
  return a2;
}

uint64_t sub_21665BA30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21665BA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AFA08;
  if (!qword_2811AFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AFA08);
  }

  return result;
}

void sub_21665BB20(uint64_t a1)
{
  sub_21665BC48(319);
  if (v1 <= 0x3F)
  {
    sub_21666D3BC();
    if (v2 <= 0x3F)
    {
      sub_21665BCA0(319, &qword_2811AFC48, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_21665BCA0(319, qword_2811AF4F0, MEMORY[0x277CDF400]);
        if (v4 <= 0x3F)
        {
          sub_21665BCA0(319, &qword_2811AF460, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21665BC48(uint64_t a1)
{
  if (!qword_2811AFBC0[0])
  {
    v2 = type metadata accessor for ArtworkLoader(255);
    v5 = type metadata accessor for MusicLazyStateOrBinding(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_2811AFBC0);
    }
  }
}

void sub_21665BCA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21666D5BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21665BD0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21665BD4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21665BDA4(uint64_t a1)
{
  result = sub_21666CDFC();
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

unint64_t sub_21665BE70()
{
  result = qword_2811AF498;
  if (!qword_2811AF498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB34F0, &qword_21666F448);
    sub_21665B98C(qword_2811AFAE8, _s9BaseImageVMa, &unk_21666F95C);
    sub_21665B8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF498);
  }

  return result;
}

uint64_t sub_21665BF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_21_0();
  v6(v5);
  return a2;
}

uint64_t sub_21665BF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34F8, &qword_21666F4A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_1@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 8) = v2;
  *(v3 + v4[9]) = 2;
  v6 = (v3 + v4[10]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v3 + v4[11]);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + v4[12]) = 0;
  *(v3 + v4[13]) = 0;

  return sub_21666D38C();
}

void OUTLINED_FUNCTION_5_1(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

CGColorRef OUTLINED_FUNCTION_6_0()
{

  return CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_21665BA30(v0, type metadata accessor for ArtworkImage);
}

void OUTLINED_FUNCTION_17_0(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{
  *(v1 + *(v2 + 56)) = a1;

  return type metadata accessor for ArtworkLoader(0);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_21665BF3C(v0, v0 + 40, v1, v2);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(1);
}

uint64_t sub_21665C214@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3518, &qword_21666F690);
  v2 = MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v55 = &v45 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3520, &qword_21666F698);
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3528, &qword_21666F6A0);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  MEMORY[0x28223BE20](v7);
  v47 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3530, &qword_21666F6A8);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v45 - v12;
  memcpy(v63, v1, sizeof(v63));
  v61[0] = *v1;
  LOBYTE(v61[1]) = v1[16];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3538, &qword_21666F6B0);
  MEMORY[0x21CE957A0](__src, v13);
  memcpy(v64, &v63[1] + 8, sizeof(v64));
  memcpy(&v62[7], &v63[1] + 8, 0x90uLL);
  memcpy(__src + 1, v62, 0x97uLL);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v63, 0x180uLL);
  sub_216658704(v64, v61);
  sub_21665EAD8(v63, v61);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3540, &qword_21666F6B8);
  v16 = sub_21665EB10();
  v19 = sub_21665EB74(v16, v17, v18);
  sub_21666D15C();

  memcpy(v66, __src, sizeof(v66));
  sub_21665EBC8(v66);
  v65 = v63[23];
  v61[0] = v63[23];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3558, &qword_21666F6C0);
  sub_21666D20C();
  v20 = swift_allocObject();
  memcpy((v20 + 16), v63, 0x180uLL);
  sub_21665EAD8(v63, v61);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3508, &unk_21666F4C0);
  *&v61[0] = v15;
  *(&v61[0] + 1) = &type metadata for MusicSubscriptionOffer.SheetPresentationModifier.PresentationContext;
  *&v61[1] = v16;
  *(&v61[1] + 1) = v19;
  v45 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_21665EC00();
  v24 = v46;
  v25 = v47;
  sub_21666D15C();

  (*(v48 + 8))(v6, v24);
  memcpy(v61, &v63[12] + 8, 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v59, v60, sizeof(v59));
  v26 = swift_allocObject();
  memcpy((v26 + 16), v63, 0x180uLL);
  sub_21665EAD8(v63, v61);
  *&v61[0] = v24;
  *(&v61[0] + 1) = v21;
  *&v61[1] = OpaqueTypeConformance2;
  *(&v61[1] + 1) = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v30 = sub_21665ECE0(v27, v28, v29);
  v31 = v50;
  sub_21666D15C();

  memcpy(__src, v59, 0x9AuLL);
  sub_21665ED34(__src);
  (*(v51 + 8))(v25, v31);
  v60[0] = *(&v63[11] + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3580, &qword_21666F6D0);
  sub_21666D22C();
  v32 = swift_allocObject();
  memcpy((v32 + 16), v63, 0x180uLL);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v63, 0x180uLL);
  sub_21665EAD8(v63, v61);
  sub_21665EAD8(v63, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3588, &qword_21666F6D8);
  *&v61[0] = v31;
  *(&v61[0] + 1) = &_s17PresentationStateON;
  *&v61[1] = v27;
  *(&v61[1] + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_21665EE4C();
  v34 = v54;
  v35 = v52;
  v36 = v58;
  sub_21666D13C();

  (*(v53 + 8))(v36, v35);
  v60[0] = v65;
  sub_21666D22C();
  v37 = v61[0];
  LOBYTE(v31) = v61[1];
  v38 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35A0, &qword_21666F6E0) + 36);
  *v38 = v37;
  *(v38 + 16) = v31;
  LOBYTE(v60[0]) = 0;

  sub_21666D1FC();
  v39 = *(&v61[0] + 1);
  *(v38 + 24) = v61[0];
  *(v38 + 32) = v39;
  v40 = _s20FailureAlertModifierVMa(0);
  v41 = sub_21666D1AC();
  v42 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v41);
  sub_21665EFF4(v42, v56, &qword_27CAB3518, &qword_21666F690);
  sub_21666D1FC();

  sub_216652DB8(v42, &qword_27CAB3518, &qword_21666F690);
  v43 = *(v40 + 28);
  *(v38 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35A8, &qword_216670830);
  return swift_storeEnumTagMultiPayload();
}

void sub_21665CAB0(uint64_t a1, const void *a2, const void *a3)
{
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(v5, a3, sizeof(v5));
  sub_21665CB08(__dst);
}

void sub_21665CB08(const void *a1)
{
  v3 = sub_21666D2DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v67, a1, sizeof(v67));
  memcpy(__dst, (v1 + 200), 0xA8uLL);
  if (v67[0] != 1)
  {
    v11 = *(v1 + 368);
    v12 = *(v1 + 376);
    memcpy(v63, (v1 + 200), sizeof(v63));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
    sub_21666D20C();
    memcpy(v65, v64, 0x9AuLL);
    memcpy(v66, v64, 0x9AuLL);
    v13 = sub_21665F05C(v66);
    if (v13)
    {
      if (v13 != 1)
      {
        return;
      }

      nullsub_1();
      sub_21665ED34(v65);
    }

    else
    {
      nullsub_1();
      v40 = v39;
      v41 = *v39;
      sub_21665F084((v39 + 1));

      v42 = *(v40 + 152);
      if (v42 != 3 && v42 != 2)
      {
        sub_21665E72C(v62);
        memcpy(v61, __dst, sizeof(v61));
        memcpy(v60, v62, 0x9AuLL);
        sub_21665EFF4(__dst, v63, &qword_27CAB3570, &qword_21666F6C8);
        sub_21666D21C();
        memcpy(v63, v61, sizeof(v63));
        sub_216652DB8(v63, &qword_27CAB3570, &qword_21666F6C8);
        LOBYTE(v61[0]) = v11;
        v61[1] = v12;
        LOBYTE(v60[0]) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3558, &qword_21666F6C0);
        sub_21666D21C();
        return;
      }
    }

    sub_21665E72C(v62);
    memcpy(v61, __dst, sizeof(v61));
    memcpy(v60, v62, 0x9AuLL);
    sub_21665EFF4(__dst, v63, &qword_27CAB3570, &qword_21666F6C8);
    goto LABEL_20;
  }

  memcpy(v63, (v1 + 200), sizeof(v63));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v65, v61, 0x9AuLL);
  memcpy(v66, v61, 0x9AuLL);
  v7 = sub_21665F05C(v66);
  if (v7)
  {
    if (v7 == 1)
    {
      nullsub_1();
      sub_21665ED34(v65);
    }

    sub_21666D2BC();
    v8 = sub_21666D2CC();
    (*(v4 + 8))(v6, v3);
    if (v8)
    {
      v9 = objc_allocWithZone(_s14ViewControllerCMa());
      v10 = sub_21664FFA8();
    }

    else
    {
      v10 = [objc_allocWithZone(MusicKit_SPI_SKCloudServiceSetupViewController) init];
    }

    v43 = v10;
    memcpy(&v64[1], &v67[8], 0x90uLL);
    v64[0] = v43;
    LOBYTE(v64[19]) = 2;
    sub_21665F204(v64);
    memcpy(v61, __dst, sizeof(v61));
    memcpy(v62, v64, 0x9AuLL);
    sub_21665F25C(v67, v63);
    sub_21665EFF4(__dst, v63, &qword_27CAB3570, &qword_21666F6C8);
LABEL_20:
    sub_21666D21C();
    memcpy(v63, v61, sizeof(v63));
    sub_216652DB8(v63, &qword_27CAB3570, &qword_21666F6C8);
    return;
  }

  nullsub_1();
  v15 = v14;
  v16 = *v14;
  v17 = *(v14 + 152);
  memcpy(v62, &v67[8], 0x90uLL);
  memcpy(v60, (v15 + 8), 0x90uLL);
  v18 = static MusicSubscriptionOffer.Options.== infix(_:_:)(v62, v60);
  memcpy(v64, v62, 0x90uLL);
  sub_21665F25C(v67, v63);
  sub_21665F25C(v67, v63);
  sub_21665F084(v64);
  if (v18)
  {
    if (qword_27CAB2EE0 != -1)
    {
      swift_once();
    }

    v19 = sub_21666CE2C();
    __swift_project_value_buffer(v19, qword_27CAB5830);
    sub_21665F25C(v67, v63);
    sub_216658704(v15 + 8, v63);
    v20 = v16;
    v21 = sub_21666CE0C();
    v22 = sub_21666D55C();
    sub_21665EBC8(v67);

    sub_21665F084(v15 + 8);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v58 = v17;
      v24 = v23;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59 = v26;
      *v24 = 136446978;
      memcpy(v63, &v67[8], 0x90uLL);
      v27 = MusicSubscriptionOffer.Options.description.getter();
      v29 = v28;
      memcpy(v62, v63, 0x90uLL);
      sub_21665F084(v62);
      v30 = sub_21666B5BC(v27, v29, &v59);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2114;
      *(v24 + 14) = v20;
      *v25 = v20;
      *(v24 + 22) = 2082;
      memcpy(v60, (v15 + 8), 0x90uLL);
      v31 = v20;
      v32 = MusicSubscriptionOffer.Options.description.getter();
      v34 = v33;
      memcpy(v63, v60, 0x90uLL);
      sub_21665F084(v63);
      v35 = sub_21666B5BC(v32, v34, &v59);

      *(v24 + 24) = v35;
      *(v24 + 32) = 2082;
      LOBYTE(v60[0]) = v58;
      v36 = sub_21666D45C();
      v38 = sub_21666B5BC(v36, v37, &v59);

      *(v24 + 34) = v38;
      _os_log_impl(&dword_21664A000, v21, v22, "Unexpectedly changed presentation context for subscription offer to isPresented: true, options: %{public}s while internal presentation state is .active(%{public}@, %{public}s, %{public}s.", v24, 0x2Au);
      sub_216652DB8(v25, &qword_27CAB34A8, &qword_21666F720);
      MEMORY[0x21CE96470](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE96470](v26, -1, -1);
      MEMORY[0x21CE96470](v24, -1, -1);

      return;
    }

    sub_21665EBC8(v67);
  }

  else
  {
    if (qword_27CAB2EE0 != -1)
    {
      swift_once();
    }

    v44 = sub_21666CE2C();
    __swift_project_value_buffer(v44, qword_27CAB5830);
    sub_21665F25C(v67, v63);
    sub_216658704(v15 + 8, v63);
    v45 = sub_21666CE0C();
    v46 = sub_21666D54C();
    sub_21665F084(v15 + 8);
    sub_21665EBC8(v67);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v59 = v48;
      *v47 = 136446466;
      memcpy(v63, (v15 + 8), 0x90uLL);
      v49 = MusicSubscriptionOffer.Options.description.getter();
      v51 = v50;
      memcpy(v62, v63, 0x90uLL);
      sub_21665F084(v62);
      v52 = sub_21666B5BC(v49, v51, &v59);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2082;
      memcpy(v60, &v67[8], 0x90uLL);
      v53 = MusicSubscriptionOffer.Options.description.getter();
      v55 = v54;
      memcpy(v63, v60, 0x90uLL);
      sub_21665F084(v63);
      v56 = sub_21666B5BC(v53, v55, &v59);

      *(v47 + 14) = v56;
      _os_log_impl(&dword_21664A000, v45, v46, "Updating subscription offer options while the subscription offer is presented is not supported. Attempting to update options from %{public}s to %{public}s.", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE96470](v48, -1, -1);
      MEMORY[0x21CE96470](v47, -1, -1);

      return;
    }

    sub_21665EBC8(v67);
  }

  sub_21665F084(v15 + 8);
}

void sub_21665D430(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  if (*a2 == 2)
  {
    v9 = v3;
    v10 = v4;
    v7 = *a3;
    v8 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3538, &qword_21666F6B0);
    MEMORY[0x21CE957A0](&v6);
    if (v6)
    {
      v7 = *a3;
      v8 = *(a3 + 16);
      v6 = 0;
      sub_21666D25C();
    }
  }
}

void sub_21665D4D0(uint64_t a1, const void *a2, const void *a3)
{
  memcpy(v4, a2, 0x9AuLL);
  memcpy(__dst, a3, sizeof(__dst));
  sub_21665D528(v4);
}

void sub_21665D528(void *__src)
{
  memcpy(__dst, __src, 0x9AuLL);
  memcpy(v23, v1, sizeof(v23));
  v2 = sub_21665F05C(__dst);
  if (v2)
  {
    if (v2 == 1)
    {
      nullsub_1();
      (*(&v23[10] + 1))(*v3);
    }

    else
    {
      aBlock[0] = *(&v23[11] + 8);
      v20[0] = *(&v23[11] + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3580, &qword_21666F6D0);
      sub_21666D20C();
      if (LOBYTE(__srca[0]) == 1)
      {
        v20[0] = aBlock[0];
        LOBYTE(__srca[0]) = 0;
        sub_21666D21C();
      }

      v20[0] = v23[0];
      LOBYTE(v20[1]) = v23[1];
      __srca[0] = v23[0];
      LOBYTE(__srca[1]) = v23[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3538, &qword_21666F6B0);
      MEMORY[0x21CE957A0](&v22);
      if (v22 == 1)
      {
        __srca[0] = v20[0];
        LOBYTE(__srca[1]) = v20[1];
        v22 = 0;
        sub_21666D25C();
      }
    }
  }

  else
  {
    nullsub_1();
    v5 = *(v4 + 152);
    if (v5 == 2)
    {
      v8 = v4 + 8;
      v9 = *v4;
      memcpy(__srca, (v4 + 8), sizeof(__srca));
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        memcpy(v20, __srca, 0x90uLL);
        sub_216658704(v8, aBlock);
        v12 = v9;
        sub_2166623D4();
        type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(0);
        sub_21665F568(&qword_27CAB2FC0, type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey, &unk_21666E850);
        v13 = sub_21666D3CC();

        v14 = swift_allocObject();
        memcpy(v14 + 2, v23, 0x180uLL);
        v14[50] = v12;
        memcpy(v14 + 51, __srca, 0x90uLL);
        *&aBlock[2] = sub_21665F1DC;
        *(&aBlock[2] + 1) = v14;
        *&aBlock[0] = MEMORY[0x277D85DD0];
        *(&aBlock[0] + 1) = 1107296256;
        *&aBlock[1] = sub_21665DF90;
        *(&aBlock[1] + 1) = &block_descriptor_4;
        v15 = _Block_copy(aBlock);
        v16 = v12;
        sub_21665EAD8(v23, v20);

        [v11 musicKit:v13 loadWithOptions:v15 completionHandler:?];
        _Block_release(v15);
      }

      else
      {
        _s14ViewControllerCMa();
        if (swift_dynamicCastClass())
        {
          memcpy(aBlock, __srca, sizeof(aBlock));
          v17 = swift_allocObject();
          memcpy(v17 + 2, v23, 0x180uLL);
          v17[50] = v9;
          memcpy(v17 + 51, __srca, 0x90uLL);
          sub_216658704(v8, v20);
          v18 = v9;
          sub_216658704(v8, v20);
          v19 = v18;
          sub_21665EAD8(v23, v20);
          sub_216658254(aBlock, sub_21665F074, v17);

          sub_21665F084(v8);
        }
      }
    }

    else
    {
      if (v5 == 3)
      {
        v20[0] = *(&v23[11] + 8);
        LOBYTE(__srca[0]) = 1;
        v6 = &qword_27CAB3580;
        v7 = &qword_21666F6D0;
      }

      else
      {
        v20[0] = v23[23];
        LOBYTE(__srca[0]) = v5 & 1;
        v6 = &qword_27CAB3558;
        v7 = &qword_21666F6C0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      sub_21666D21C();
      (*(&v23[10] + 1))(0);
    }
  }
}

uint64_t sub_21665D98C(uint64_t a1)
{
  sub_21665E72C(__src);
  memcpy(__dst, (a1 + 200), sizeof(__dst));
  memcpy(v4, (a1 + 200), sizeof(v4));
  memcpy(v3, __src, sizeof(v3));
  sub_21665EFF4(__dst, v7, &qword_27CAB3570, &qword_21666F6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D21C();
  memcpy(v7, v4, sizeof(v7));
  return sub_216652DB8(v7, &qword_27CAB3570, &qword_21666F6C8);
}

void *sub_21665DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, (a1 + 200), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D22C();
  memcpy(__dst, v6, 0xAAuLL);
  v3 = sub_21666D0CC();
  v4 = sub_21666CF7C();
  result = memcpy(a2, __dst, 0xB0uLL);
  *(a2 + 176) = v4;
  *(a2 + 184) = v3;
  return result;
}

void sub_21665DAF0(char a1, void *a2, uint64_t a3, void *a4, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, (a3 + 200), sizeof(v19));
  memcpy(v15, (a3 + 200), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v21, __srca, 0x9AuLL);
  memcpy(v22, __srca, 0x9AuLL);
  if (sub_21665F05C(v22))
  {
    sub_21665ED34(v21);
  }

  else
  {
    nullsub_1();
    v11 = v10;
    v12 = *v10;
    sub_21665F084((v10 + 1));

    if (*(v11 + 152) == 2)
    {
      if (a2)
      {
        memcpy(v15, a3, sizeof(v15));
        v13 = a2;
        sub_21665DD2C(a4, a2);
      }

      else if (a1)
      {
        memcpy(&v18[1], __dst, 0x90uLL);
        v18[0] = a4;
        LOBYTE(v18[19]) = 3;
        sub_21665F204(v18);
        memcpy(__srca, v19, sizeof(__srca));
        memcpy(v16, v18, sizeof(v16));
        v14 = a4;
        sub_216658704(__src, v15);
        sub_21665EFF4(v19, v15, &qword_27CAB3570, &qword_21666F6C8);
        sub_21666D21C();
        memcpy(v15, __srca, 0xA8uLL);
        sub_216652DB8(v15, &qword_27CAB3570, &qword_21666F6C8);
      }

      else
      {
        sub_21666D69C();
        __break(1u);
      }
    }
  }
}

uint64_t sub_21665DD2C(void *a1, void *a2)
{
  memcpy(__dst, (v2 + 24), sizeof(__dst));
  memcpy(__src, (v2 + 200), sizeof(__src));
  v5 = sub_21666CCFC();
  v6 = [v5 domain];
  v7 = sub_21666D44C();
  v9 = v8;

  if (v7 == sub_21666D44C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_21666D79C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![v5 code])
  {
    sub_21665F218();
    v14 = sub_21665E240(0xD000000000000022, 0x8000000216671390);
    if (!v14)
    {
      memcpy(&v19[1], __dst, 0x90uLL);
      v19[0] = a1;
      LOBYTE(v19[19]) = 0;
      sub_21665F204(v19);
      memcpy(v18, __src, sizeof(v18));
      memcpy(v17, v19, sizeof(v17));
      v15 = a1;
      sub_216658704(__dst, v20);
      sub_21665EFF4(__src, v20, &qword_27CAB3570, &qword_21666F6C8);
      goto LABEL_12;
    }
  }

LABEL_9:
  v19[0] = a2;
  sub_21665F20C(v19);
  memcpy(v18, __src, sizeof(v18));
  memcpy(v17, v19, sizeof(v17));
  sub_21665EFF4(__src, v20, &qword_27CAB3570, &qword_21666F6C8);
  v13 = a2;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D21C();

  memcpy(v20, v18, sizeof(v20));
  return sub_216652DB8(v20, &qword_27CAB3570, &qword_21666F6C8);
}

void sub_21665DF90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_21665E008(char a1, void *a2, uint64_t a3, void *a4, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, (a3 + 200), sizeof(v19));
  memcpy(v15, (a3 + 200), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v21, __srca, 0x9AuLL);
  memcpy(v22, __srca, 0x9AuLL);
  if (sub_21665F05C(v22))
  {
    sub_21665ED34(v21);
  }

  else
  {
    nullsub_1();
    v11 = v10;
    v12 = *v10;
    sub_21665F084((v10 + 1));

    if (*(v11 + 152) == 2)
    {
      if (a2)
      {
        memcpy(v15, a3, sizeof(v15));
        v13 = a2;
        sub_21665DD2C(a4, v13);
      }

      else if (a1)
      {
        memcpy(&v18[1], __dst, 0x90uLL);
        v18[0] = a4;
        LOBYTE(v18[19]) = 3;
        sub_21665F204(v18);
        memcpy(__srca, v19, sizeof(__srca));
        memcpy(v16, v18, sizeof(v16));
        v14 = a4;
        sub_216658704(__src, v15);
        sub_21665EFF4(v19, v15, &qword_27CAB3570, &qword_21666F6C8);
        sub_21666D21C();
        memcpy(v15, __srca, 0xA8uLL);
        sub_216652DB8(v15, &qword_27CAB3570, &qword_21666F6C8);
      }

      else
      {
        sub_21666D69C();
        __break(1u);
      }
    }
  }
}

id sub_21665E240(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = sub_21666D41C();
  }

  else
  {
    v2 = 0;
  }

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() extensionWithIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_21666CD0C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_21665E324(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  memcpy(__dst, a1 + 8, sizeof(__dst));
  v5 = *a2;
  memcpy(v13, a2 + 8, sizeof(v13));
  if (v4 == v5)
  {
    memcpy(__src, a1 + 8, sizeof(__src));
    memcpy(v8, a2 + 8, sizeof(v8));
    v6 = static MusicSubscriptionOffer.Options.== infix(_:_:)(__src, v8);
    memcpy(v10, v8, sizeof(v10));
    sub_216658704(__dst, v11);
    sub_216658704(v13, v11);
    sub_21665F084(v10);
    memcpy(v11, __src, sizeof(v11));
    sub_21665F084(v11);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21665E414(uint64_t a1)
{
  memcpy(v4, (v1 + 8), sizeof(v4));
  sub_21666D81C();
  return MusicSubscriptionOffer.Options.hash(into:)(a1);
}

uint64_t sub_21665E470()
{
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  sub_21666D7FC();
  sub_21666D81C();
  MusicSubscriptionOffer.Options.hash(into:)(v3);
  return sub_21666D83C();
}

uint64_t sub_21665E4E8(uint64_t a1)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_21666D7FC();
  sub_21666D81C();
  MusicSubscriptionOffer.Options.hash(into:)(v4);
  return sub_21666D83C();
}

uint64_t View.musicSubscriptionOffer(isPresented:options:onLoadCompletion:)(uint64_t a1, uint64_t a2, char a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(&v19[7], v10, 0x90uLL);
  sub_216658704(__dst, v24);

  sub_21666D1FC();
  LOBYTE(v10) = v24[0];
  v14 = v24[1];
  sub_21665E72C(__srca);
  memcpy(v24, __srca, 0x9AuLL);
  sub_21666D1FC();
  memcpy(v23, v22, sizeof(v23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3508, &unk_21666F4C0);
  sub_21666D1FC();
  v18[0] = a1;
  v18[1] = a2;
  LOBYTE(v18[2]) = a3;
  memcpy(&v18[2] + 1, v19, 0x97uLL);
  v18[21] = a5;
  v18[22] = a6;
  LOBYTE(v18[23]) = v10;
  v18[24] = v14;
  memcpy(&v18[25], v23, 0xA8uLL);
  LOBYTE(v18[46]) = v24[0];
  v18[47] = v24[1];
  MEMORY[0x21CE956A0](v18, a7, &type metadata for MusicSubscriptionOffer.SheetPresentationModifier, a8);
  memcpy(v24, v18, 0x180uLL);
  return sub_21665E75C(v24);
}

_BYTE *storeEnumTagSinglePayload for MusicSubscriptionOffer(_BYTE *result, int a2, int a3)
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

unint64_t sub_21665E838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3510;
  if (!qword_27CAB3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3510);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17_MusicKit_SwiftUI21CloudServiceSetupViewV17PresentationStateO(uint64_t a1)
{
  if ((*(a1 + 153) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 153) & 3;
  }
}

uint64_t sub_21665E8B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_21665E8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21665E9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21)
{
  if (a21 == 1)
  {
  }

  else if (!a21)
  {
  }
}

unint64_t sub_21665EB10()
{
  result = qword_27CAB3548;
  if (!qword_27CAB3548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3540, &qword_21666F6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3548);
  }

  return result;
}

unint64_t sub_21665EB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3550;
  if (!qword_27CAB3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3550);
  }

  return result;
}

unint64_t sub_21665EC00()
{
  result = qword_27CAB3560;
  if (!qword_27CAB3560)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3508, &unk_21666F4C0);
    sub_21665EC84(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3560);
  }

  return result;
}

unint64_t sub_21665EC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3568;
  if (!qword_27CAB3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3568);
  }

  return result;
}

unint64_t sub_21665ECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3578;
  if (!qword_27CAB3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3578);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  OUTLINED_FUNCTION_0_6();

  return MEMORY[0x2821FE8E8](v0, 400, 7);
}

unint64_t sub_21665EE4C()
{
  result = qword_27CAB3590;
  if (!qword_27CAB3590)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3588, &qword_21666F6D8);
    sub_21665EED8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3590);
  }

  return result;
}

unint64_t sub_21665EED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CAB3598;
  if (!qword_27CAB3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3598);
  }

  return result;
}

uint64_t sub_21665EF2C(uint64_t a1)
{
  v2 = sub_21666CEFC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21666CFAC();
}

uint64_t sub_21665EFF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21665F05C(uint64_t a1)
{
  if (*(a1 + 153) <= 1u)
  {
    return *(a1 + 153);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t objectdestroy_20Tm()
{

  OUTLINED_FUNCTION_0_6();

  return MEMORY[0x2821FE8E8](v0, 552, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21665F218()
{
  result = qword_27CAB35B0;
  if (!qword_27CAB35B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB35B0);
  }

  return result;
}

uint64_t sub_21665F29C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_21665F2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21665F350()
{
  result = qword_27CAB35B8;
  if (!qword_27CAB35B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB35A0, &qword_21666F6E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3530, &qword_21666F6A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3588, &qword_21666F6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3528, &qword_21666F6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3520, &qword_21666F698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3508, &unk_21666F4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3540, &qword_21666F6B8);
    v1 = sub_21665EB10();
    sub_21665EB74(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_21665EC00();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_21665ECE0(OpaqueTypeConformance2, v5, v6);
    swift_getOpaqueTypeConformance2();
    sub_21665EE4C();
    swift_getOpaqueTypeConformance2();
    sub_21665F568(&qword_27CAB35C0, _s20FailureAlertModifierVMa, &unk_2166707C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB35B8);
  }

  return result;
}

uint64_t sub_21665F568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_0_6()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v16 = *(v0 + 368);
  v15 = *(v0 + 360);
  v13 = *(v0 + 328);
  v14 = *(v0 + 344);
  v11 = *(v0 + 296);
  v12 = *(v0 + 312);
  v10 = *(v0 + 280);

  sub_21665E9C0(v2, v3, v4, v5, v6, v7, v8, v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16, SHIBYTE(v16));
}

uint64_t ArtworkImage._Proxy.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21666D3BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ArtworkImage._Proxy(uint64_t a1)
{
  result = qword_2811AF9F8;
  if (!qword_2811AF9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ArtworkImage._Proxy.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkImage._Proxy(0) + 24));
  v2 = v1;
  return v1;
}

BOOL static ArtworkImage._Proxy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_21666D3AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkImage._Proxy(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {
      sub_21665F7E0();
      v14 = v13;
      v15 = v12;
      v16 = sub_21666D5AC();

      if (v16)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v13;
}

unint64_t sub_21665F7E0()
{
  result = qword_2811AF428;
  if (!qword_2811AF428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AF428);
  }

  return result;
}

void sub_21665F850(uint64_t a1)
{
  sub_21666D3BC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_21665F8EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21665F8EC(uint64_t a1)
{
  if (!qword_2811AF420)
  {
    sub_21665F7E0();
    v1 = sub_21666D5BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811AF420);
    }
  }
}

uint64_t sub_21665F954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  __swift_allocate_value_buffer(v0, qword_27CAB5850);
  v1 = __swift_project_value_buffer(v0, qword_27CAB5850);
  v2 = type metadata accessor for ArtworkImage._Proxy(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_21665F9D0(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_21665FB98(a1, v7);
  v10 = type metadata accessor for ArtworkImage._Proxy(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    a2();
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
    {
      sub_216653760(v7);
    }
  }

  else
  {
    sub_21665FC08(v7, v9);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  }

  return sub_21665FB98(v9, a1);
}

uint64_t sub_21665FB08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB2F00 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  v3 = __swift_project_value_buffer(v2, qword_27CAB5850);

  return sub_216653C6C(v3, a1);
}

uint64_t sub_21665FB98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21665FC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage._Proxy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21665FC6C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client21WrapperViewController_childViewController] = a1;
  v3.receiver = v1;
  v3.super_class = _s21WrapperViewControllerCMa();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_21665FD20()
{
  v3.receiver = v0;
  v3.super_class = _s21WrapperViewControllerCMa();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    sub_21665FDD0(v1);
  }

  else
  {
    __break(1u);
  }
}

id sub_21665FDD0(void *a1)
{
  v3 = [objc_opt_self() systemBackgroundColor];
  [a1 setBackgroundColor_];

  v4 = *&v1[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client21WrapperViewController_childViewController];
  [v1 addChildViewController_];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  [a1 bounds];
  [v6 setFrame_];

  result = [v4 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  [result setAutoresizingMask_];

  result = [v4 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  [a1 addSubview_];

  return [v4 didMoveToParentViewController_];
}

id sub_21665FF88()
{
  v2.receiver = v0;
  v2.super_class = _s21WrapperViewControllerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_216660038(uint64_t a1)
{
  sub_21666D3BC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkLoader(319);
    if (v2 <= 0x3F)
    {
      sub_2166601AC(319, &qword_2811AF460, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2166601AC(319, &qword_2811AF4D8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2166601FC(319, &qword_2811AF4E0, &qword_27CAB34E8, &qword_21666F2C0);
          if (v5 <= 0x3F)
          {
            sub_2166601FC(319, &qword_2811AF4E8, &qword_27CAB35D0, "B3");
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2166601AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2166601FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21666CE7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_216660298(uint64_t a1)
{
  _s9BaseImageV18ArtworkLoaderImageVMa(319);
  if (v1 <= 0x3F)
  {
    sub_2166601AC(319, &qword_2811AF4D8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216660368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21666D1DC();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 48);
  HIDWORD(v34) = *(v1 + 56);
  v11 = *(v1 + 57);
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  v14 = _s9BaseImageVMa(0);
  v15 = sub_2166612A4(*(v2 + *(v14 + 32)), *(v2 + *(v14 + 32) + 8));
  _s9BaseImageV18ArtworkLoaderImageVMa(0);
  if (!sub_216654660())
  {
    if (qword_2811AFBA8 != -1)
    {
      OUTLINED_FUNCTION_1_3(&qword_2811AFBA8);
    }

    v16 = qword_2811AFBB0;
  }

  sub_21666D1CC();
  (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v4);
  v35 = sub_21666D1EC();

  (*(v6 + 8))(v9, v4);
  v17 = sub_216654660();
  if (!v17)
  {
    if (qword_2811AFBA8 != -1)
    {
      OUTLINED_FUNCTION_1_3(&qword_2811AFBA8);
    }

    v17 = qword_2811AFBB0;
  }

  v18 = v17;
  [v17 size];
  v20 = v19;
  v22 = v21;

  if (v11 == 2)
  {
    LOBYTE(v11) = (v34 & 0x100000000) == 0 && (v23 = fabs((v20 / v22 - v10) / v10), v23 > 2.22044605e-16) && v23 < 0.1;
  }

  v24 = v15 * round(v13 / v15);
  v25 = v15 * round(v12 / v15);
  v26 = v11 & 1;
  v27 = *(v2 + 104);
  if (v27)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v25;
  }

  if (*(v2 + 104))
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v24;
  }

  v37 = 1;
  v36 = v27;
  v30 = *(v2 + 96);
  v31 = sub_21666D0BC();
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35D8, &unk_21666F9B0) + 36);

  result = sub_216660668(a1 + v32);
  *a1 = v35;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v26;
  *(a1 + 18) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = v28;
  *(a1 + 32) = v29;
  *(a1 + 40) = v27;
  *(a1 + 48) = v30;
  *(a1 + 56) = v31;
  return result;
}

uint64_t sub_216660668@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21666D3BC();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = _s10ParametersVMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArtworkImage._Proxy(0);
  v36 = a1;
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
  v16 = v1 + *(_s9BaseImageVMa(0) + 28);
  v17 = *(v16 + *(_s9BaseImageV18ArtworkLoaderImageVMa(0) + 20));
  v18 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  swift_beginAccess();
  sub_2166570A4(v17 + v18, v11, &qword_27CAB3468, &qword_21666F9C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_216657168(v11, &qword_27CAB3468, &qword_21666F9C0);
  }

  sub_21665728C(v11, v14);
  v20 = v35;
  (*(v35 + 16))(v5, v14, v3);
  v21 = &v14[*(v12 + 28)];
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = sub_216654660();
  v25 = v5;
  if (v24)
  {
    v26 = v24;
    if (qword_2811AFBA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_2811AFBA8 != -1)
    {
      swift_once();
    }

    v26 = qword_2811AFBB0;
  }

  v27 = qword_2811AFBB0;
  sub_21665F7E0();
  v28 = v27;
  v29 = sub_21666D5AC();

  v30 = 0;
  if ((v29 & 1) == 0)
  {
    v30 = sub_216654660();
    if (!v30)
    {
      v31 = v28;
      v30 = v28;
    }
  }

  sub_216657230(v14);
  v32 = v36;
  sub_216657168(v36, &qword_27CAB33A0, &qword_21666EF70);
  (*(v20 + 32))(v8, v25, v3);
  v33 = &v8[*(v15 + 20)];
  *v33 = v22;
  *(v33 + 1) = v23;
  *&v8[*(v15 + 24)] = v30;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  return sub_21665FB98(v8, v32);
}

uint64_t sub_216660A50()
{
  v1 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  memcpy(v3, (v0 + *(v1 + 24)), sizeof(v3));
  return sub_216660A94(v0, v3);
}

uint64_t sub_216660A94(uint64_t a1, double *a2)
{
  v3 = v2;
  v5 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  v6 = v2 + v5[10];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = sub_2166612A4(*v6, v8);
  v10 = a2[8];
  v11 = a2[9];
  v12 = sub_2166612A4(v7, v8);
  v13 = a2[10];
  v14 = a2[11];
  v15 = sub_2166612A4(v7, v8);
  v16 = (v3 + v5[7]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v3 + v5[8]);
  v20 = *v19;
  v21 = v19[1];
  v31[0] = *(v3 + v5[9]);
  sub_21666149C(v30);
  if (v30[3])
  {
    sub_216661AD4(v30, v29);
    v22 = swift_allocObject();
    sub_216652E18(v29, v22 + 16);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v23 = sub_216661B38;
  }

  else
  {
    sub_216657168(v30, &qword_27CAB34E8, &qword_21666F2C0);
    v23 = 0;
    v22 = 0;
  }

  v24 = sub_216661698(*(v3 + v5[12]), *(v3 + v5[12] + 8));
  if (v24)
  {
    v25 = v24[2];
    v26 = v24[3];
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  sub_2166549B0(a1, v17, v18, v20, v21, v31, 0, v23, v15, v9 * round(v10 / v9), v9 * round(v11 / v9), v12 * round(v13 / v12), v12 * round(v14 / v12), v22, v25, v26);
  sub_21664D5A4(v25, v26);
  return sub_21664D5A4(v23, v22);
}

uint64_t sub_216660CC0(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

id sub_216660D1C()
{
  result = sub_216660D3C();
  qword_2811AFBB0 = result;
  return result;
}

id sub_216660D3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v1 = swift_allocObject();
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 16) = _Q0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_216661470;
  *(v7 + 24) = v1;
  v11[4] = sub_21664FE34;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_216660F54;
  v11[3] = &block_descriptor_5;
  v8 = _Block_copy(v11);

  v9 = [v0 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if ((v0 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

id sub_216660EC4(void *a1, double a2, double a3)
{
  v6 = [objc_opt_self() clearColor];
  [v6 setFill];

  return [a1 fillRect_];
}

void sub_216660F54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_216660FC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3638, &qword_21666FA90);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3640, &qword_21666FA98);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  if (a4)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3648, &unk_21666FAA0);
    (*(*(v12 - 8) + 16))(v8, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_21666203C();
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0, MEMORY[0x277CE04B0]);
    return sub_21666D00C();
  }

  else
  {
    sub_21666D27C();
    sub_21666CECC();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3648, &unk_21666FAA0);
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    v15 = &v11[*(v9 + 36)];
    v16 = v17[1];
    *v15 = v17[0];
    *(v15 + 1) = v16;
    *(v15 + 2) = v17[2];
    sub_2166570A4(v11, v8, &qword_27CAB3640, &qword_21666FA98);
    swift_storeEnumTagMultiPayload();
    sub_21666203C();
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0, MEMORY[0x277CE04B0]);
    sub_21666D00C();
    return sub_216657168(v11, &qword_27CAB3640, &qword_21666FA98);
  }
}

double sub_2166612A4(uint64_t a1, char a2)
{
  v4 = sub_21666CFCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = sub_21666D55C();
  v10 = sub_21666D0AC();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21666B5BC(0x74616F6C464743, 0xE700000000000000, &v14);
    _os_log_impl(&dword_21664A000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CE96470](v12, -1, -1);
    MEMORY[0x21CE96470](v11, -1, -1);
  }

  sub_21666CFBC();
  swift_getAtKeyPath();
  sub_216661490(a1, 0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_216661490(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_21666149C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21666CFCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2166570A4(v2, v16, &qword_27CAB35E0, &qword_21666F9C8);
  if (v18 == 1)
  {
    v9 = v16[1];
    *a1 = v16[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v17;
  }

  else
  {
    v10 = sub_21666D55C();
    v11 = sub_21666D0AC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21666B5BC(0xD00000000000002CLL, 0x8000000216671500, &v15);
      _os_log_impl(&dword_21664A000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x21CE96470](v13, -1, -1);
      MEMORY[0x21CE96470](v12, -1, -1);
    }

    sub_21666CFBC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void *sub_216661698(uint64_t a1, char a2)
{
  v4 = sub_21666CFCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_21666D55C();
    v9 = sub_21666D0AC();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21666B5BC(0xD000000000000020, 0x80000002166714D0, &v14);
      _os_log_impl(&dword_21664A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CE96470](v11, -1, -1);
      MEMORY[0x21CE96470](v10, -1, -1);
    }

    sub_21666CFBC();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_216661864@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21666CFCC();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35A8, &qword_216670830);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_2166570A4(v2, &v19 - v11, &qword_27CAB35A8, &qword_216670830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21666CEFC();
    OUTLINED_FUNCTION_2();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    v15 = sub_21666D55C();
    v16 = sub_21666D0AC();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21666B5BC(0x414C52556E65704FLL, 0xED00006E6F697463, &v20);
      _os_log_impl(&dword_21664A000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x21CE96470](v18, -1, -1);
      MEMORY[0x21CE96470](v17, -1, -1);
    }

    sub_21666CFBC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_216661AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkFrame(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArtworkFrame(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_216661BB4()
{
  result = qword_27CAB35E8;
  if (!qword_27CAB35E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB35D8, &unk_21666F9B0);
    sub_216661C6C();
    sub_2166620F4(&qword_2811AF480, &qword_27CAB3630, &qword_21666FA38, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB35E8);
  }

  return result;
}

unint64_t sub_216661C6C()
{
  result = qword_27CAB35F0;
  if (!qword_27CAB35F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB35F8, "r<");
    sub_216661D24();
    sub_2166620F4(&qword_27CAB2E60, &qword_27CAB3628, &qword_21666FA30, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB35F0);
  }

  return result;
}

unint64_t sub_216661D24()
{
  result = qword_2811AF4A0;
  if (!qword_2811AF4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3600, &qword_21666FA08);
    v3 = sub_216661DB0();
    sub_216661FCC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4A0);
  }

  return result;
}

unint64_t sub_216661DB0()
{
  result = qword_2811AF4A8;
  if (!qword_2811AF4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3608, &qword_21666FA10);
    v3 = sub_216661E3C();
    sub_216661F78(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4A8);
  }

  return result;
}

unint64_t sub_216661E3C()
{
  result = qword_2811AF4B0;
  if (!qword_2811AF4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3610, &qword_21666FA18);
    sub_216661EF4();
    sub_2166620F4(&qword_2811AF4D0, &qword_27CAB3620, &qword_21666FA28, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4B0);
  }

  return result;
}

unint64_t sub_216661EF4()
{
  result = qword_2811AF4B8;
  if (!qword_2811AF4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3618, &qword_21666FA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4B8);
  }

  return result;
}

unint64_t sub_216661F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AF478;
  if (!qword_2811AF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF478);
  }

  return result;
}

unint64_t sub_216661FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AFBB8;
  if (!qword_2811AFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AFBB8);
  }

  return result;
}

unint64_t sub_21666203C()
{
  result = qword_2811AF4C0;
  if (!qword_2811AF4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3640, &qword_21666FA98);
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4C0);
  }

  return result;
}

uint64_t sub_2166620F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_21666213C()
{
  result = qword_2811AF490;
  if (!qword_2811AF490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3650, &unk_21666FAB0);
    sub_21666203C();
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF490);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_216662228(uint64_t a1, uint64_t a2)
{
  v2 = sub_21666D44C();
  v4 = v3;
  if (v2 == sub_21666D44C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21666D79C();
  }

  return v7 & 1;
}

uint64_t sub_2166622AC()
{
  v0 = sub_21666D7FC();
  OUTLINED_FUNCTION_19_1(v0);
  return sub_21666D83C();
}

uint64_t sub_2166622E8(uint64_t a1, uint64_t a2)
{
  sub_21666D7FC();
  sub_21666D47C();
  return sub_21666D83C();
}

uint64_t sub_216662350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21666D7FC();
  sub_21666D47C();
  return sub_21666D83C();
}

uint64_t sub_21666239C(uint64_t a1)
{
  v1 = sub_21666D7FC();
  OUTLINED_FUNCTION_19_1(v1);
  return sub_21666D83C();
}

uint64_t sub_2166623D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[7];
  v7 = v0[9];
  v144 = v0[6];
  v155 = v0[8];
  v210 = v0[2];
  v221 = v0[11];
  v166 = v0[10];
  v177 = v0[12];
  v232 = v0[13];
  v243 = v0[15];
  v188 = v0[14];
  v199 = v0[16];
  v254 = v0[17];
  type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(0);
  sub_216665710();

  v8 = sub_21666D3EC();
  v9 = MEMORY[0x277D837D0];
  v280 = MEMORY[0x277D837D0];
  v278 = v1;
  v279 = v2;
  OUTLINED_FUNCTION_17_1(v8, v10, v11, v12, v13, v14, v15, v16, v133, v144, v155, v166, v177, v188, v199, v210, v221, v232, v243, v254, v265, *v277);
  v17 = @"musicKit_action";
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v266 = v8;
  sub_216664FC4(v277, v17, isUniquelyReferenced_nonNull_native);

  if (v5)
  {
    v280 = v9;
    v278 = v4;
    v279 = v5;
    OUTLINED_FUNCTION_17_1(v19, v20, v21, v22, v23, v24, v25, v26, v134, v145, v156, v167, v178, v189, v200, v211, v222, v233, v244, v255, v8, *v277);
    v27 = @"musicKit_iTunesItemIdentifier";
    v28 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v28, v29, v30, v31, v32, v33, v34, v35, v135, v146, v157, v168, v179, v190, v201, v212, v223, v234, v245, v256, v267, *v277);
  }

  v280 = v9;
  v278 = v211;
  v279 = v3;
  OUTLINED_FUNCTION_17_1(v19, v20, v21, v22, v23, v24, v25, v26, v134, v145, v156, v167, v178, v189, v200, v211, v222, v233, v244, v255, v266, *v277);
  v36 = @"musicKit_messageIdentifier";

  v37 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_4(v37, v38, v39, v40, v41, v42, v43, v44, v136, v147, v158, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, *v277);

  v53 = v269;
  v54 = v247;
  if (v6)
  {
    v280 = v9;
    v278 = v148;
    v279 = v6;
    OUTLINED_FUNCTION_17_1(v45, v46, v47, v48, v49, v50, v51, v52, v137, v148, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, *v277);

    v55 = @"musicKit_affiliateToken";
    v56 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v56, v57, v58, v59, v60, v61, v62, v63, v138, v149, v160, v171, v182, v193, v204, v215, v226, v237, v248, v259, v270, *v277);

    v53 = v269;
  }

  v64 = v258;
  v65 = v225;
  if (v7)
  {
    v280 = v9;
    v278 = v159;
    v279 = v7;
    OUTLINED_FUNCTION_17_1(v45, v46, v47, v48, v49, v50, v51, v52, v137, v148, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, *v277);

    v66 = @"musicKit_campaignToken";
    v67 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v67, v68, v69, v70, v71, v72, v73, v74, v139, v150, v161, v172, v183, v194, v205, v216, v227, v238, v249, v260, v271, *v277);

    v53 = v269;
  }

  v75 = v236;
  if (v65)
  {
    v76 = qword_27CAB2F18;

    if (v76 != -1)
    {
      v77 = swift_once();
    }

    v85 = qword_27CAB5868;
    v280 = v9;
    v278 = v170;
    v279 = v65;
    OUTLINED_FUNCTION_17_1(v77, v78, v79, v80, v81, v82, v83, v84, v137, v148, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, *v277);
    v86 = v85;
    v87 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v87, v88, v89, v90, v91, v92, v93, v94, v140, v151, v162, v173, v184, v195, v206, v217, v228, v239, v250, v261, v272, *v277);

    v53 = v269;
  }

  if (v75)
  {
    v95 = qword_27CAB2F20;

    if (v95 != -1)
    {
      v96 = swift_once();
    }

    v104 = qword_27CAB5870;
    v280 = v9;
    v278 = v181;
    v279 = v75;
    OUTLINED_FUNCTION_17_1(v96, v97, v98, v99, v100, v101, v102, v103, v137, v148, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, *v277);
    v105 = v104;
    v106 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v106, v107, v108, v109, v110, v111, v112, v113, v141, v152, v163, v174, v185, v196, v207, v218, v229, v240, v251, v262, v273, *v277);

    v53 = v269;
  }

  if (v54)
  {
    v280 = v9;
    v278 = v192;
    v279 = v54;
    OUTLINED_FUNCTION_17_1(v45, v46, v47, v48, v49, v50, v51, v52, v137, v148, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, *v277);

    v114 = @"musicKit__audioAccessorySerialNumber";
    v115 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v115, v116, v117, v118, v119, v120, v121, v122, v142, v153, v164, v175, v186, v197, v208, v219, v230, v241, v252, v263, v274, *v277);

    v53 = v269;
  }

  if (v64)
  {
    v280 = v9;
    v278 = v203;
    v279 = v64;
    OUTLINED_FUNCTION_17_1(v45, v46, v47, v48, v49, v50, v51, v52, v137, v148, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, *v277);

    v123 = @"musicKit__audioAccessoryUniqueDeviceIdentifier";
    v124 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v124, v125, v126, v127, v128, v129, v130, v131, v143, v154, v165, v176, v187, v198, v209, v220, v231, v242, v253, v264, v275, *v277);

    return v276;
  }

  return v53;
}

uint64_t static MusicSubscriptionOffer.Options.default.getter()
{
  if (qword_27CAB2F10 != -1)
  {
    OUTLINED_FUNCTION_7_1(&qword_27CAB2F10);
  }

  memcpy(__dst, &qword_27CAB3658, sizeof(__dst));
  v0 = OUTLINED_FUNCTION_21_0();
  memcpy(v0, v1, 0x90uLL);
  return sub_216658704(__dst, &v3);
}

uint64_t MusicSubscriptionOffer.MessageIdentifier.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_216662880@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.action.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.messageIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.itemID.setter()
{
  OUTLINED_FUNCTION_13_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.affiliateToken.setter()
{
  OUTLINED_FUNCTION_13_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.campaignToken.setter()
{
  OUTLINED_FUNCTION_13_1();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._figaroCampaignToken.setter()
{
  OUTLINED_FUNCTION_13_1();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._figaroCampaignGroup.setter()
{
  OUTLINED_FUNCTION_13_1();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._homePodSerialNumber.setter()
{
  OUTLINED_FUNCTION_13_1();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._homePodUniqueDeviceIdentifier.setter()
{
  OUTLINED_FUNCTION_13_1();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_216662CFC()
{
  qword_27CAB3668 = 1852403562;
  qword_27CAB3670 = 0xE400000000000000;
  xmmword_27CAB3678 = 0u;
  *&qword_27CAB3688 = 0u;
  xmmword_27CAB3698 = 0u;
  unk_27CAB36A8 = 0u;
  xmmword_27CAB36B8 = 0u;
  unk_27CAB36C8 = 0u;
  xmmword_27CAB36D8 = 0u;
  strcpy(&qword_27CAB3658, "sdkSubscribe");
  unk_27CAB3665 = 0;
  unk_27CAB3666 = -5120;

  qword_27CAB3668 = 1852403562;
  qword_27CAB3670 = 0xE400000000000000;

  xmmword_27CAB3678 = 0uLL;

  qword_27CAB3688 = 0;
  qword_27CAB3690 = 0;

  xmmword_27CAB3698 = 0uLL;
}

uint64_t MusicSubscriptionOffer.Options.init(action:messageIdentifier:itemID:affiliateToken:campaignToken:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  v18 = *a2;
  v17 = a2[1];
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;

  *a9 = v15;
  *(a9 + 8) = v16;

  *(a9 + 16) = v18;
  *(a9 + 24) = v17;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  return result;
}

uint64_t sub_216662E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_21666D79C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000216671660 == a2;
    if (v6 || (sub_21666D79C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
      if (v7 || (sub_21666D79C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461696C69666661 && a2 == 0xEE006E656B6F5465;
        if (v8 || (sub_21666D79C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E676961706D6163 && a2 == 0xED00006E656B6F54;
          if (v9 || (sub_21666D79C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000216671680 == a2;
            if (v10 || (sub_21666D79C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000002166716A0 == a2;
              if (v11 || (sub_21666D79C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000002166716C0 == a2;
                if (v12 || (sub_21666D79C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001ELL && 0x80000002166716E0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_21666D79C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_216663160(unsigned __int8 a1)
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](a1);
  return sub_21666D83C();
}

unint64_t sub_2166631A8(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x44496D657469;
      break;
    case 3:
      result = 0x7461696C69666661;
      break;
    case 4:
      result = 0x6E676961706D6163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2166632DC(uint64_t a1)
{
  v2 = *v1;
  sub_21666D7FC();
  MEMORY[0x21CE95D60](v2);
  return sub_21666D83C();
}

uint64_t sub_216663328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216662E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216663370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216663120();
  *a1 = result;
  return result;
}

uint64_t sub_216663398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_216663C04(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2166633D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_216663C04(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t static MusicSubscriptionOffer.Options.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v43 = a1[6];
  v48 = a1[7];
  v39 = a1[8];
  v50 = a1[9];
  v36 = a1[10];
  v33 = a1[12];
  v37 = a1[13];
  v30 = a1[14];
  v35 = a1[15];
  v29 = a1[16];
  v32 = a1[17];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v41 = a1[11];
  v42 = a2[6];
  v47 = a2[7];
  v10 = a2[9];
  v49 = a2[8];
  v11 = a2[10];
  v40 = a2[11];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v38 = a2[13];
  v44 = a2[12];
  v45 = a2[14];
  v34 = a2[15];
  v46 = a2[16];
  v31 = a2[17];
  if (!v12 && (sub_21666D79C() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v6 && v4 == v7;
  if (!v13 && (sub_21666D79C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v3 == v8 && v5 == v9;
    if (!v14 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v48)
  {
    v16 = v49;
    v15 = v50;
    if (!v47)
    {
      return 0;
    }

    v17 = v11;
    v18 = v10;
    v19 = v43 == v42 && v48 == v47;
    if (!v19 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = v11;
    v16 = v49;
    v15 = v50;
    v18 = v10;
    if (v47)
    {
      return 0;
    }
  }

  if (v15)
  {
    v20 = v46;
    v22 = v44;
    v21 = v45;
    if (!v18)
    {
      return 0;
    }

    v23 = v39 == v16 && v15 == v18;
    if (!v23 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v20 = v46;
    v22 = v44;
    v21 = v45;
    if (v18)
    {
      return 0;
    }
  }

  if (v41)
  {
    if (!v40)
    {
      return 0;
    }

    v24 = v36 == v17 && v41 == v40;
    if (!v24 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    v25 = v33 == v22 && v37 == v38;
    if (!v25 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  if (v35)
  {
    if (!v34)
    {
      return 0;
    }

    v26 = v30 == v21 && v35 == v34;
    if (!v26 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (v32)
  {
    if (v31)
    {
      v27 = v29 == v20 && v32 == v31;
      if (v27 || (sub_21666D79C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

uint64_t MusicSubscriptionOffer.Options.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[7];
  v4 = v1[9];
  v5 = v1[13];
  v6 = v1[15];
  v8 = v1[11];
  v9 = v1[17];
  sub_21666D47C();
  sub_21666D47C();
  if (v2)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  if (v3)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  if (v4)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
    if (v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
    if (v5)
    {
LABEL_12:
      OUTLINED_FUNCTION_23_0();
      sub_21666D47C();
      if (v6)
      {
        goto LABEL_13;
      }

LABEL_19:
      OUTLINED_FUNCTION_22_0();
      if (v9)
      {
        goto LABEL_14;
      }

      return OUTLINED_FUNCTION_22_0();
    }
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_13:
  OUTLINED_FUNCTION_23_0();
  sub_21666D47C();
  if (!v9)
  {
    return OUTLINED_FUNCTION_22_0();
  }

LABEL_14:
  OUTLINED_FUNCTION_23_0();

  return sub_21666D47C();
}