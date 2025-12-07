uint64_t sub_242C2A838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2A8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2AC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 44);

  return v15(v16, a2, v14);
}

uint64_t sub_242C2AD78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 44);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_242C2AEE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_242C2B0A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_242C2B308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C4A09C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242C2B700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E10, &qword_242C4BE48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C2B7CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E10, &qword_242C4BE48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C2B8A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A03C();
  *a1 = result;
  return result;
}

uint64_t sub_242C2B8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_242C2B9C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_242C2BA8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9ED8, &qword_242C4C0A0);
  sub_242C3B974(&qword_27ECE9F18, &qword_27ECE9ED8, &qword_242C4C0A0, MEMORY[0x277D63CE0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2BB24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242C2BBE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C2BC90()
{
  v1 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  v6 = sub_242C4A35C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_242C2BDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2BE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2BED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2BF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2C018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC0, &qword_242C4C350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C2C080()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9FC8, &qword_242C4C358);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9FC0, &qword_242C4C350);
  sub_242C40B20();
  sub_242C40C60();
  sub_242C40CB4();
  sub_242C40D08();
  swift_getOpaqueTypeConformance2();
  sub_242C40E04();
  sub_242C40E58();
  sub_242C40EAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2C188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2C8, &qword_242C4D840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C2C1F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A0BC();
  *a1 = result;
  return result;
}

uint64_t sub_242C2C24C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A07C();
  *a1 = result;
  return result;
}

uint64_t sub_242C2C2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEA320, &qword_242C4D9B8);
  sub_242C3B974(&qword_27ECEA338, &qword_27ECEA320, &qword_242C4D9B8, MEMORY[0x277D63B90]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2C348()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242C2C388()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEA408, &qword_242C4DBE8);
  sub_242C499C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2C3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2C458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2C4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double TrunkStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();

  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v2 = sub_242C4A01C();
  v4 = v3;

  result = 3.89653885e233;
  *a1 = xmmword_242C4AC50;
  *(a1 + 16) = xmmword_242C4AC60;
  *(a1 + 32) = 384;
  *(a1 + 34) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = 0xD00000000000003DLL;
  *(a1 + 128) = 0x8000000242C4DC60;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = v6;
  *(a1 + 160) = v7;
  *(a1 + 168) = v6;
  *(a1 + 176) = 0;
  *(a1 + 184) = v6;
  *(a1 + 192) = v7;
  *(a1 + 200) = 0;
  *(a1 + 208) = v2;
  *(a1 + 216) = v4;
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

unint64_t sub_242C2C7A0()
{
  result = qword_27ECE99B0;
  if (!qword_27ECE99B0)
  {
    sub_242C4A44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99B0);
  }

  return result;
}

uint64_t type metadata accessor for TrunkStatusSnippet(uint64_t a1)
{
  result = qword_27ECE99B8;
  if (!qword_27ECE99B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C2C8B0(uint64_t a1)
{
  result = type metadata accessor for CarCommandsToggleSnippetModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242C2C91C()
{
  result = qword_27ECE99C8;
  if (!qword_27ECE99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99C8);
  }

  return result;
}

void type metadata accessor for VRXVisualResponseLocation()
{
  if (!qword_27ECE99D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ECE99D0);
    }
  }
}

uint64_t CarCommandsToggleSnippetModel.isOn.getter()
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  return v1;
}

uint64_t CarCommandsToggleSnippetModel.onTransitionText.getter()
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v1;
}

uint64_t CarCommandsToggleSnippetModel.offTransitionText.getter()
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v1;
}

uint64_t CarCommandsToggleSnippetModel.appId.getter()
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v1;
}

uint64_t CarCommandsToggleSnippetModel.carNameDirectInvocationPayloadValue.getter()
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  return v1;
}

uint64_t CarCommandsToggleSnippetModel.init(carNameText:onStateText:offStateText:onTransitionText:offTransitionText:isOn:appId:carNameDirectInvocationPayloadValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsConfirmationSnippetModel.confirmText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2CE14(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v2;
}

uint64_t (*CarCommandsConfirmationSnippetModel.denyText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2CF3C()
{
  if (*v0)
  {
    return 0x74786554796E6564;
  }

  else
  {
    return 0x546D7269666E6F63;
  }
}

uint64_t sub_242C2CF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546D7269666E6F63 && a2 == 0xEB00000000747865;
  if (v6 || (sub_242C4A6DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74786554796E6564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C4A6DC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242C2D06C(uint64_t a1)
{
  v2 = sub_242C2EAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C2D0A8(uint64_t a1)
{
  v2 = sub_242C2EAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsConfirmationSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99E0, &qword_242C4AD50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2EAF0();
  sub_242C4A74C();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    type metadata accessor for CarCommandsConfirmationSnippetModel(0);
    v8[14] = 1;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CarCommandsConfirmationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v25 = *(v29 - 8);
  v4 = MEMORY[0x28223BE20](v29);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v26 = v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99F8, &qword_242C4AD58);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2EAF0();
  sub_242C4A73C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v23 = v13;
  v14 = v25;
  v31 = 0;
  v15 = sub_242C2EC5C();
  v16 = v26;
  v17 = v28;
  sub_242C4A65C();
  v21[1] = v15;
  v26 = *(v14 + 32);
  (v26)(v23, v16, v29);
  v30 = 1;
  v18 = v6;
  sub_242C4A65C();
  (*(v27 + 8))(v10, v17);
  v19 = v23;
  (v26)(&v23[*(v22 + 20)], v18, v29);
  sub_242C2ED54(v19, v24, type metadata accessor for CarCommandsConfirmationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_242C2EDBC(v19, type metadata accessor for CarCommandsConfirmationSnippetModel);
}

uint64_t (*CarCommandsAppPunchoutSnippetModel.appNameText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

void *sub_242C2D6CC@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_242C2D738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t sub_242C2D7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsAppPunchoutSnippetModel.appIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_242C49EFC();
  a5(0);
  return sub_242C49EFC();
}

uint64_t sub_242C2D954()
{
  if (*v0)
  {
    return 0x746E656449707061;
  }

  else
  {
    return 0x54656D614E707061;
  }
}

uint64_t sub_242C2D9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54656D614E707061 && a2 == 0xEB00000000747865;
  if (v6 || (sub_242C4A6DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656449707061 && a2 == 0xED00007265696669)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C4A6DC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242C2DA8C(uint64_t a1)
{
  v2 = sub_242C2ED00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C2DAC8(uint64_t a1)
{
  v2 = sub_242C2ED00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsAppPunchoutSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A08, &qword_242C4AD60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2ED00();
  sub_242C4A74C();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
    v8[14] = 1;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CarCommandsAppPunchoutSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v25 = *(v29 - 8);
  v4 = MEMORY[0x28223BE20](v29);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v26 = v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A18, &qword_242C4AD68);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2ED00();
  sub_242C4A73C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v23 = v13;
  v14 = v25;
  v31 = 0;
  v15 = sub_242C2EC5C();
  v16 = v26;
  v17 = v28;
  sub_242C4A65C();
  v21[1] = v15;
  v26 = *(v14 + 32);
  (v26)(v23, v16, v29);
  v30 = 1;
  v18 = v6;
  sub_242C4A65C();
  (*(v27 + 8))(v10, v17);
  v19 = v23;
  (v26)(&v23[*(v22 + 20)], v18, v29);
  sub_242C2ED54(v19, v24, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_242C2EDBC(v19, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
}

uint64_t (*CarCommandsToggleSnippetModel.carNameText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t (*CarCommandsToggleSnippetModel.onStateText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t (*CarCommandsToggleSnippetModel.offStateText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

void *sub_242C2E23C@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_242C2E2A4(void *a1)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.onTransitionText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.onTransitionText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

void *sub_242C2E408@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_242C2E470(void *a1)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.offTransitionText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.offTransitionText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

void *sub_242C2E5D4@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  result = sub_242C49F1C();
  *a1 = v3;
  return result;
}

uint64_t sub_242C2E63C(char *a1)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.isOn.setter(char a1)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.isOn.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

void *sub_242C2E790@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_242C2E7F8(void *a1)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.appId.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.appId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

double sub_242C2E95C@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C2E9C4(void *a1)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.carNameDirectInvocationPayloadValue.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_242C2EAF0()
{
  result = qword_27ECE99E8;
  if (!qword_27ECE99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99E8);
  }

  return result;
}

unint64_t sub_242C2EB44()
{
  result = qword_27ECE99F0;
  if (!qword_27ECE99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99A0, &unk_242C4B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99F0);
  }

  return result;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_242C2EC5C()
{
  result = qword_27ECE9A00;
  if (!qword_27ECE9A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99A0, &unk_242C4B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A00);
  }

  return result;
}

unint64_t sub_242C2ED00()
{
  result = qword_27ECE9A10;
  if (!qword_27ECE9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A10);
  }

  return result;
}

uint64_t sub_242C2ED54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C2EDBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*CarCommandsToggleSnippetModel.carNameDirectInvocationPayloadValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2EEB8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6449707061;
    if (v1 != 6)
    {
      v5 = 0xD000000000000023;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 1850700649;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x54656D614E726163;
    v3 = 0x657461745366666FLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x5465746174536E6FLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_242C2EFC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C35098(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C2EFF4(uint64_t a1)
{
  v2 = sub_242C2F3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C2F030(uint64_t a1)
{
  v2 = sub_242C2F3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsToggleSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A20, &qword_242C4AD70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2F3AC();
  sub_242C4A74C();
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v7 = type metadata accessor for CarCommandsToggleSnippetModel(0);
    v16 = 1;
    sub_242C4A6AC();
    v15 = 2;
    sub_242C4A6AC();
    v14 = 3;
    sub_242C4A6AC();
    v13 = 4;
    sub_242C4A6AC();
    v9[1] = *(v7 + 36);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
    sub_242C2F400();
    sub_242C4A6AC();
    v11 = 6;
    sub_242C4A6AC();
    v10 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2FF84(&qword_27ECE9A38, MEMORY[0x277D637D0]);
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242C2F3AC()
{
  result = qword_27ECE9A28;
  if (!qword_27ECE9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A28);
  }

  return result;
}

unint64_t sub_242C2F400()
{
  result = qword_27ECE9A30;
  if (!qword_27ECE9A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9998, &unk_242C4AC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A30);
  }

  return result;
}

uint64_t sub_242C2F484(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99D8, &qword_242C4AD48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CarCommandsToggleSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v51 = v45 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v55 = *(v59 - 8);
  v8 = MEMORY[0x28223BE20](v59);
  v50 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = v45 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v45 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v45 - v19;
  MEMORY[0x28223BE20](v18);
  v57 = v45 - v21;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A50, &qword_242C4AD78);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v23 = v45 - v22;
  v24 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 44);
  v65 = 0;
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  v67 = v27;
  v62 = v28;
  sub_242C49EFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2F3AC();
  v60 = v23;
  v29 = v61;
  sub_242C4A73C();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v63 + 8))(&v67[v62], v64);
  }

  else
  {
    v30 = v20;
    v46 = v14;
    v47 = v24;
    v31 = v56;
    v61 = a1;
    LOBYTE(v65) = 0;
    v32 = sub_242C2EC5C();
    sub_242C4A65C();
    v33 = *(v55 + 32);
    v33(v67, v57, v59);
    LOBYTE(v65) = 1;
    v57 = v32;
    sub_242C4A65C();
    v34 = v31;
    v33(&v67[v47[5]], v30, v59);
    LOBYTE(v65) = 2;
    v45[1] = 0;
    sub_242C4A65C();
    v35 = v47;
    v33(&v67[v47[6]], v17, v59);
    LOBYTE(v65) = 3;
    v36 = v46;
    sub_242C4A65C();
    v37 = v33;
    v33(&v67[v35[7]], v36, v59);
    LOBYTE(v65) = 4;
    v38 = v52;
    sub_242C4A65C();
    v33(&v67[v35[8]], v38, v59);
    LOBYTE(v65) = 5;
    sub_242C2FF00();
    v39 = v51;
    v40 = v53;
    sub_242C4A65C();
    (*(v54 + 32))(&v67[v35[9]], v39, v40);
    LOBYTE(v65) = 6;
    v41 = v50;
    sub_242C4A65C();
    v37(&v67[v35[10]], v41);
    LOBYTE(v65) = 7;
    sub_242C2FF84(&qword_27ECE9A60, MEMORY[0x277D637E0]);
    v42 = v49;
    sub_242C4A65C();
    (*(v34 + 8))(v60, v58);
    v43 = v67;
    (*(v63 + 40))(&v67[v62], v42, v64);
    sub_242C2ED54(v43, v48, type metadata accessor for CarCommandsToggleSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(v61);
    return sub_242C2EDBC(v43, type metadata accessor for CarCommandsToggleSnippetModel);
  }
}

unint64_t sub_242C2FF00()
{
  result = qword_27ECE9A58;
  if (!qword_27ECE9A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9998, &unk_242C4AC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A58);
  }

  return result;
}

uint64_t sub_242C2FF84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2F484(&qword_27ECE9A40, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_242C2F484(&qword_27ECE9A48, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*CarCommandsGaugeSnippetModel.carName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t (*CarCommandsGaugeSnippetModel.primaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsGaugeSnippetModel.secondaryText.getter()
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  return v1;
}

double sub_242C30248@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C302B0(void *a1)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.secondaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

float CarCommandsGaugeSnippetModel.gaugePercentFull.getter()
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  sub_242C49F1C();
  return v1;
}

float sub_242C30468@<S0>(float *a1@<X8>)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  sub_242C49F1C();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C304D0(int *a1)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.gaugePercentFull.setter(float a1)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.gaugePercentFull.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsGaugeSnippetModel.showGaugeAccessoryView.getter()
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  return v1;
}

void *sub_242C30678@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  result = sub_242C49F1C();
  *a1 = v3;
  return result;
}

uint64_t sub_242C306E0(char *a1)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.showGaugeAccessoryView.setter(char a1)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.showGaugeAccessoryView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C30834;
}

uint64_t CarCommandsGaugeSnippetModel.appId.getter()
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v1;
}

void *sub_242C3088C@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_242C308F4(void *a1)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.appId.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.appId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsGaugeSnippetModel.init(carName:primaryText:secondaryText:gaugePercentFull:showGaugeAccessoryView:appId:)@<X0>(uint64_t a9@<X8>, uint64_t a11)
{
  v12 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  (*(*(v13 - 8) + 8))(a9 + v12, v13);
  sub_242C49EFC();
  sub_242C49EFC();
  sub_242C49EFC();
  return sub_242C49EFC();
}

unint64_t sub_242C30BF4()
{
  v1 = *v0;
  v2 = 0x656D614E726163;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x6449707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x547972616D697270;
  if (v1 != 1)
  {
    v5 = 0x7261646E6F636573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242C30CC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C35338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C30CF8(uint64_t a1)
{
  v2 = sub_242C31074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C30D34(uint64_t a1)
{
  v2 = sub_242C31074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsGaugeSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A70, &qword_242C4AD88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C31074();
  sub_242C4A74C();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v7 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
    v15 = 1;
    sub_242C4A6AC();
    v10 = v7[6];
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2FF84(&qword_27ECE9A38, MEMORY[0x277D637D0]);
    sub_242C4A6AC();
    v10 = v7[7];
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
    sub_242C310C8();
    sub_242C4A6AC();
    v10 = v7[8];
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
    sub_242C2F400();
    sub_242C4A6AC();
    v11 = 5;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242C31074()
{
  result = qword_27ECE9A78;
  if (!qword_27ECE9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A78);
  }

  return result;
}

unint64_t sub_242C310C8()
{
  result = qword_27ECE9A80;
  if (!qword_27ECE9A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9A68, &qword_242C4AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A80);
  }

  return result;
}

uint64_t CarCommandsGaugeSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v48 = v44 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  v55 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v49 = v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v51 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A88, &qword_242C4AD90);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v44 - v17;
  v19 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v20;
  v23 = *(v20 + 24);
  v64 = 0;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  v60 = v23;
  v24 = v22;
  sub_242C49EFC();
  v25 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_242C31074();
  v56 = v18;
  v26 = v57;
  sub_242C4A73C();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    return (*(v61 + 8))(&v24[v60], v62);
  }

  else
  {
    v57 = v10;
    LOBYTE(v64) = 0;
    v27 = sub_242C2EC5C();
    sub_242C4A65C();
    v29 = (v51 + 32);
    v28 = *(v51 + 32);
    v46 = v24;
    v30 = v15;
    v31 = v28;
    v28(v24, v30, v7);
    LOBYTE(v64) = 1;
    sub_242C4A65C();
    v45 = v7;
    v44[1] = v27;
    v31(v46 + *(v66 + 20), v13, v7);
    LOBYTE(v64) = 2;
    sub_242C2FF84(&qword_27ECE9A60, MEMORY[0x277D637E0]);
    v32 = v50;
    v33 = v62;
    v34 = v31;
    sub_242C4A65C();
    v35 = v63;
    v44[0] = v34;
    (*(v61 + 40))(v46 + v60, v32, v33);
    LOBYTE(v64) = 3;
    sub_242C319DC();
    v36 = v49;
    sub_242C4A65C();
    v37 = v59;
    v50 = v29;
    v38 = v66;
    v39 = v36;
    v40 = v46;
    (*(v55 + 32))(v46 + *(v66 + 28), v39, v35);
    LOBYTE(v64) = 4;
    sub_242C2FF00();
    v41 = v48;
    sub_242C4A65C();
    (*(v54 + 32))(v40 + *(v38 + 32), v41, v37);
    LOBYTE(v64) = 5;
    v42 = v45;
    sub_242C4A65C();
    (*(v52 + 8))(v56, v53);
    (v44[0])(v40 + *(v38 + 36), v57, v42);
    sub_242C2ED54(v40, v47, type metadata accessor for CarCommandsGaugeSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_242C2EDBC(v40, type metadata accessor for CarCommandsGaugeSnippetModel);
  }
}

unint64_t sub_242C319DC()
{
  result = qword_27ECE9A90;
  if (!qword_27ECE9A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9A68, &qword_242C4AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A90);
  }

  return result;
}

uint64_t (*CarCommandsDisambiguationSnippetModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsDisambiguationSnippetModel.disambiguationOptions.getter()
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  sub_242C49F1C();
  return v1;
}

void *sub_242C31B90@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  result = sub_242C49F1C();
  *a1 = v3;
  return result;
}

uint64_t sub_242C31BF8(uint64_t *a1)
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  return sub_242C49F2C();
}

uint64_t CarCommandsDisambiguationSnippetModel.disambiguationOptions.setter(uint64_t a1)
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.disambiguationOptions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsDisambiguationSnippetModel.init(title:disambiguationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242C49EFC();
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AA0, &qword_242C4ADA0);
  return sub_242C49EFC();
}

uint64_t sub_242C31DD8()
{
  v1 = *v0;
  sub_242C4A6FC();
  MEMORY[0x245D24420](v1);
  return sub_242C4A72C();
}

uint64_t sub_242C31E20(uint64_t a1)
{
  v2 = *v1;
  sub_242C4A6FC();
  MEMORY[0x245D24420](v2);
  return sub_242C4A72C();
}

uint64_t sub_242C31E64()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_242C31EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_242C4A6DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C4DD50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C4A6DC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242C31F80(uint64_t a1)
{
  v2 = sub_242C321CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C31FBC(uint64_t a1)
{
  v2 = sub_242C321CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsDisambiguationSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AA8, &qword_242C4ADA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C321CC();
  sub_242C4A74C();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
    sub_242C32220(&qword_27ECE9AB8, MEMORY[0x277D637D0]);
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242C321CC()
{
  result = qword_27ECE9AB0;
  if (!qword_27ECE9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9AB0);
  }

  return result;
}

uint64_t sub_242C32220(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9A98, &qword_242C4AD98);
    sub_242C32360(&qword_27ECE9AC0, &qword_27ECE9AC8, &protocol conformance descriptor for CarCommandsDisambiguationSnippetModel.DisambiguationOption, MEMORY[0x277D83978]);
    sub_242C32360(&qword_27ECE9AD0, &qword_27ECE9AD8, &protocol conformance descriptor for CarCommandsDisambiguationSnippetModel.DisambiguationOption, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C32328(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C32360(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9AA0, &qword_242C4ADA0);
    sub_242C323FC(a2, type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C323FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CarCommandsDisambiguationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AE0, &qword_242C4ADB0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C321CC();
  sub_242C4A73C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v26;
  v32 = 0;
  sub_242C2EC5C();
  v15 = v27;
  v16 = v29;
  sub_242C4A65C();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v15, v30);
  v31 = 1;
  sub_242C32220(&qword_27ECE9AE8, MEMORY[0x277D637E0]);
  v18 = v25;
  sub_242C4A65C();
  (*(v28 + 8))(v9, v16);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v18);
  sub_242C2ED54(v19, v24, type metadata accessor for CarCommandsDisambiguationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_242C2EDBC(v19, type metadata accessor for CarCommandsDisambiguationSnippetModel);
}

uint64_t _s22CarCommandsUIFramework0aB17GaugeSnippetModelV7carNameSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v1;
}

uint64_t sub_242C3289C(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.DisambiguationOption.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.iconImageIdentifier.getter()
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  return v1;
}

double sub_242C32A10@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C32A78(void *a1)
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.iconImageIdentifier.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.DisambiguationOption.iconImageIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C32BF4(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v2;
}

void *sub_242C32C50@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_242C32CBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t sub_242C32D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.DisambiguationOption.directInvocationPayloadValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

void sub_242C32E40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.init(text:iconImageIdentifier:directInvocationPayloadValue:)@<X0>(uint64_t a7@<X8>)
{
  v8 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  (*(*(v9 - 8) + 8))(a7 + v8, v9);
  sub_242C49EFC();
  return sub_242C49EFC();
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.init(text:directInvocationPayloadValue:)@<X0>(uint64_t a5@<X8>)
{
  v6 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  (*(*(v7 - 8) + 8))(a5 + v6, v7);
  sub_242C49EFC();
  return sub_242C49EFC();
}

unint64_t sub_242C330CC()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_242C33124@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C35548(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C33158(uint64_t a1)
{
  v2 = sub_242C333EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C33194(uint64_t a1)
{
  v2 = sub_242C333EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AF0, &qword_242C4ADB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C333EC();
  sub_242C4A74C();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v8[1] = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2FF84(&qword_27ECE9A38, MEMORY[0x277D637D0]);
    sub_242C4A6AC();
    v9 = 2;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242C333EC()
{
  result = qword_27ECE9AF8;
  if (!qword_27ECE9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9AF8);
  }

  return result;
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v30 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v29 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9B00, &qword_242C4ADC0);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  v35 = v16;
  sub_242C49EFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C333EC();
  v17 = v34;
  sub_242C4A73C();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v36 + 8))(&v15[v35], v39);
  }

  else
  {
    v26 = v12;
    v27 = v7;
    v18 = v30;
    v34 = a1;
    LOBYTE(v37) = 0;
    v19 = sub_242C2EC5C();
    v20 = v31;
    sub_242C4A65C();
    v25 = v19;
    v21 = *(v29 + 32);
    v21(v15, v20, v4);
    LOBYTE(v37) = 1;
    sub_242C2FF84(&qword_27ECE9A60, MEMORY[0x277D637E0]);
    sub_242C4A65C();
    v31 = v21;
    (*(v36 + 40))(&v15[v35], v18, v39);
    LOBYTE(v37) = 2;
    v22 = v27;
    v23 = v33;
    sub_242C4A65C();
    (*(v32 + 8))(v11, v23);
    (v31)(&v15[*(v26 + 24)], v22, v4);
    sub_242C2ED54(v15, v28, type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_242C2EDBC(v15, type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption);
  }
}

void *keypath_getTm@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_242C33DC4(uint64_t a1)
{
  sub_242C34074(319, &qword_27ECE9B68, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_242C33E68(uint64_t a1)
{
  sub_242C34074(319, &qword_27ECE9B68, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_242C34074(319, &qword_27ECE9B90, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_242C34194(319, &qword_27ECE9B98, &qword_27ECE99D8, &qword_242C4AD48);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242C33F74(uint64_t a1)
{
  sub_242C34074(319, &qword_27ECE9B68, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_242C34194(319, &qword_27ECE9B98, &qword_27ECE99D8, &qword_242C4AD48);
    if (v2 <= 0x3F)
    {
      sub_242C34074(319, &qword_27ECE9BB0, MEMORY[0x277D83A90]);
      if (v3 <= 0x3F)
      {
        sub_242C34074(319, &qword_27ECE9B90, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242C34074(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_242C49F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_242C340E8(uint64_t a1)
{
  sub_242C34074(319, &qword_27ECE9B68, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_242C34194(319, &qword_27ECE9BC8, &qword_27ECE9AA0, &qword_242C4ADA0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242C34194(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_242C49F3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_89Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_90Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_242C34444(uint64_t a1)
{
  sub_242C34074(319, &qword_27ECE9B68, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_242C34194(319, &qword_27ECE9B98, &qword_27ECE99D8, &qword_242C4AD48);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CarCommandsDisambiguationSnippetModel.DisambiguationOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarCommandsDisambiguationSnippetModel.DisambiguationOption.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsGaugeSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarCommandsGaugeSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsToggleSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarCommandsToggleSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_242C34918(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarCommandsToggleSnippetUpdateValue(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C34A6C()
{
  result = qword_27ECE9BE0;
  if (!qword_27ECE9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BE0);
  }

  return result;
}

unint64_t sub_242C34AC4()
{
  result = qword_27ECE9BE8;
  if (!qword_27ECE9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BE8);
  }

  return result;
}

unint64_t sub_242C34B1C()
{
  result = qword_27ECE9BF0;
  if (!qword_27ECE9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BF0);
  }

  return result;
}

unint64_t sub_242C34B74()
{
  result = qword_27ECE9BF8;
  if (!qword_27ECE9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BF8);
  }

  return result;
}

unint64_t sub_242C34BCC()
{
  result = qword_27ECE9C00;
  if (!qword_27ECE9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C00);
  }

  return result;
}

unint64_t sub_242C34C24()
{
  result = qword_27ECE9C08;
  if (!qword_27ECE9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C08);
  }

  return result;
}

unint64_t sub_242C34C7C()
{
  result = qword_27ECE9C10;
  if (!qword_27ECE9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C10);
  }

  return result;
}

unint64_t sub_242C34CD4()
{
  result = qword_27ECE9C18;
  if (!qword_27ECE9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C18);
  }

  return result;
}

unint64_t sub_242C34D2C()
{
  result = qword_27ECE9C20;
  if (!qword_27ECE9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C20);
  }

  return result;
}

unint64_t sub_242C34D84()
{
  result = qword_27ECE9C28;
  if (!qword_27ECE9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C28);
  }

  return result;
}

unint64_t sub_242C34DDC()
{
  result = qword_27ECE9C30;
  if (!qword_27ECE9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C30);
  }

  return result;
}

unint64_t sub_242C34E34()
{
  result = qword_27ECE9C38;
  if (!qword_27ECE9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C38);
  }

  return result;
}

unint64_t sub_242C34E8C()
{
  result = qword_27ECE9C40;
  if (!qword_27ECE9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C40);
  }

  return result;
}

unint64_t sub_242C34EE4()
{
  result = qword_27ECE9C48;
  if (!qword_27ECE9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C48);
  }

  return result;
}

unint64_t sub_242C34F3C()
{
  result = qword_27ECE9C50;
  if (!qword_27ECE9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C50);
  }

  return result;
}

unint64_t sub_242C34F94()
{
  result = qword_27ECE9C58;
  if (!qword_27ECE9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C58);
  }

  return result;
}

unint64_t sub_242C34FEC()
{
  result = qword_27ECE9C60;
  if (!qword_27ECE9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C60);
  }

  return result;
}

unint64_t sub_242C35044()
{
  result = qword_27ECE9C68;
  if (!qword_27ECE9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C68);
  }

  return result;
}

uint64_t sub_242C35098(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54656D614E726163 && a2 == 0xEB00000000747865;
  if (v4 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5465746174536E6FLL && a2 == 0xEB00000000747865 || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461745366666FLL && a2 == 0xEC00000074786554 || (sub_242C4A6DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C4DCA0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C4DCC0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1850700649 && a2 == 0xE400000000000000 || (sub_242C4A6DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000 || (sub_242C4A6DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000242C4DCE0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_242C4A6DC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_242C35338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E726163 && a2 == 0xE700000000000000;
  if (v4 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEB00000000747865 || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (sub_242C4A6DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C4DD10 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242C4DD30 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_242C4A6DC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_242C35548(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242C4DD70 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242C4DD90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C4A6DC();

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

double AudibleSignalStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();

  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v2 = sub_242C4A01C();
  v4 = v3;

  result = 9.07234538e223;
  *a1 = xmmword_242C4B7D0;
  *(a1 + 16) = xmmword_242C4B7E0;
  *(a1 + 32) = 129;
  *(a1 + 34) = 1;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = 0xD000000000000045;
  *(a1 + 128) = 0x8000000242C4DDB0;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = v6;
  *(a1 + 160) = v7;
  *(a1 + 168) = v6;
  *(a1 + 176) = 0;
  *(a1 + 184) = v6;
  *(a1 + 192) = v7;
  *(a1 + 200) = 0;
  *(a1 + 208) = v2;
  *(a1 + 216) = v4;
  return result;
}

uint64_t type metadata accessor for AudibleSignalStatusSnippet(uint64_t a1)
{
  result = qword_27ECE9C70;
  if (!qword_27ECE9C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C35988(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = sub_242C49F9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9C80, &qword_242C4B870);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = *a1;
  v14 = *(a1 + 32);
  if ((v14 & 0x80000000) == 0)
  {

    sub_242C4A23C();
    v15 = *MEMORY[0x277CE1020];
    v16 = sub_242C4A26C();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v12, v15, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v18 = sub_242C4A25C();

    (*(v7 + 8))(a2, v6);
LABEL_18:
    sub_242C35E1C(v12);
    goto LABEL_19;
  }

  if (a3)
  {
    v19 = a1[1];
  }

  else
  {
    v19 = a1[3];
  }

  if ((a3 & 1) == 0)
  {
    v13 = a1[2];
  }

  v34 = v13;

  (*(v7 + 104))(v9, *MEMORY[0x277CDF3D0], v6);
  v37 = a2;
  v20 = sub_242C49F8C();
  v21 = *(v7 + 8);
  v35 = v6;
  v36 = v21;
  v21(v9, v6);
  if (v20)
  {
    v22 = 0x746867696C5FLL;
  }

  else
  {
    v22 = 0x6B7261645FLL;
  }

  if (v20)
  {
    v23 = 0xE600000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v25 = sub_242C4A46C();
  v26 = [v24 initWithPath_];

  if ((v14 & 1) == 0 || (a3 & 1) == 0)
  {
    v40 = v22;
    v41 = v23;
    v38 = v34;
    v39 = v19;
    v38 = sub_242C4A4CC();
    v39 = v28;
    sub_242C4A49C();

    v29 = v26;
    sub_242C4A28C();
    v30 = *MEMORY[0x277CE1020];
    v31 = sub_242C4A26C();
    v32 = *(v31 - 8);
    (*(v32 + 104))(v12, v30, v31);
    (*(v32 + 56))(v12, 0, 1, v31);
    v18 = sub_242C4A25C();

    v36(v37, v35);
    goto LABEL_18;
  }

  v40 = v22;
  v41 = v23;
  v38 = v34;
  v39 = v19;
  v38 = sub_242C4A4CC();
  v39 = v27;
  sub_242C4A49C();

  v18 = sub_242C4A28C();
  v36(v37, v35);
LABEL_19:
  sub_242C35E84(a1);
  return v18;
}

uint64_t sub_242C35E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9C80, &qword_242C4B870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242C35ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242C35F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t CarNameDisambiguationSnippet.body.getter@<X0>(void *a1@<X8>)
{
  v34 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v8 = v36;
  v30 = v37;
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  sub_242C49F1C();
  v9 = v36;
  v10 = *(v36 + 16);
  if (v10)
  {
    v28 = v8;
    v29 = a1;
    v35 = MEMORY[0x277D84F90];
    sub_242C36348(0, v10, 0);
    v11 = v35;
    v12 = *(v2 + 80);
    v27[1] = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v31 = *(v2 + 72);
    do
    {
      sub_242C36368(v13, v4);
      sub_242C49F1C();
      v14 = v36;
      v15 = v37;
      v16 = v33;
      v17 = *(v33 + 20);
      v18 = sub_242C4A35C();
      (*(*(v18 - 8) + 56))(&v7[v17], 1, 1, v18);
      sub_242C49F1C();
      sub_242C363CC(v4);
      v19 = v36;
      v20 = v37;
      *v7 = v14;
      *(v7 + 1) = v15;
      v21 = &v7[*(v16 + 24)];
      *v21 = v19;
      *(v21 + 1) = v20;
      v35 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_242C36348((v22 > 1), v23 + 1, 1);
        v11 = v35;
      }

      *(v11 + 16) = v23 + 1;
      sub_242C36428(v7, v11 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23, type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption);
      v13 += v31;
      --v10;
    }

    while (v10);

    v8 = v28;
    a1 = v29;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  sub_242C4A44C();
  sub_242C2C7A0();
  result = sub_242C4A01C();
  v25 = v30;
  *a1 = v8;
  a1[1] = v25;
  a1[2] = v11;
  a1[3] = 0xD00000000000003FLL;
  a1[4] = 0x8000000242C4DE60;
  a1[5] = result;
  a1[6] = v26;
  return result;
}

void *sub_242C36348(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242C386BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_242C36368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C363CC(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C36428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CarNameDisambiguationSnippet(uint64_t a1)
{
  result = qword_27ECE9C88;
  if (!qword_27ECE9C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C36520(uint64_t a1)
{
  result = type metadata accessor for CarCommandsDisambiguationSnippetModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242C3658C()
{
  result = qword_27ECE9C98;
  if (!qword_27ECE9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C98);
  }

  return result;
}

double LockStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();

  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v2 = sub_242C4A01C();
  v4 = v3;

  *&result = 1801678700;
  *a1 = xmmword_242C4B9B0;
  *(a1 + 16) = xmmword_242C4B9C0;
  *(a1 + 32) = 128;
  *(a1 + 34) = 1;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = 0xD00000000000003CLL;
  *(a1 + 128) = 0x8000000242C4DEA0;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = v6;
  *(a1 + 160) = v7;
  *(a1 + 168) = v6;
  *(a1 + 176) = 0;
  *(a1 + 184) = v6;
  *(a1 + 192) = v7;
  *(a1 + 200) = 0;
  *(a1 + 208) = v2;
  *(a1 + 216) = v4;
  return result;
}

uint64_t type metadata accessor for LockStatusSnippet(uint64_t a1)
{
  result = qword_27ECE9CA0;
  if (!qword_27ECE9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ClimateStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();

  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v2 = sub_242C4A01C();
  v4 = v3;

  result = 3.51146621e151;
  *a1 = xmmword_242C4BA50;
  *(a1 + 16) = xmmword_242C4BA60;
  *(a1 + 32) = 128;
  *(a1 + 34) = 1;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = 0xD00000000000003FLL;
  *(a1 + 128) = 0x8000000242C4DEE0;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = v6;
  *(a1 + 160) = v7;
  *(a1 + 168) = v6;
  *(a1 + 176) = 0;
  *(a1 + 184) = v6;
  *(a1 + 192) = v7;
  *(a1 + 200) = 0;
  *(a1 + 208) = v2;
  *(a1 + 216) = v4;
  return result;
}

uint64_t type metadata accessor for ClimateStatusSnippet(uint64_t a1)
{
  result = qword_27ECE9CB0;
  if (!qword_27ECE9CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C36B60()
{
  sub_242C3A4B0();
  result = sub_242C4A50C();
  qword_27ECE9CC0 = result;
  return result;
}

uint64_t sub_242C36BCC()
{
  v0 = sub_242C49F6C();
  __swift_allocate_value_buffer(v0, qword_27ECE9CC8);
  __swift_project_value_buffer(v0, qword_27ECE9CC8);
  if (qword_27ECE9980 != -1)
  {
    swift_once();
  }

  v1 = qword_27ECE9CC0;
  return sub_242C49F7C();
}

uint64_t sub_242C36C6C(uint64_t a1)
{
  if (qword_27ECE9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_27ECE9CE0;
  if (!*(off_27ECE9CE0 + 2) || (v3 = sub_242C389A0(a1), (v4 & 1) == 0))
  {
    swift_endAccess();
    if (a1)
    {
      v6 = sub_242C38008(0, 1, 1, MEMORY[0x277D84F90]);
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_242C38008((v7 > 1), v8 + 1, 1, v6);
      }

      *(v6 + 2) = v8 + 1;
      v9 = &v6[16 * v8];
      *(v9 + 4) = 0x657372617023;
      *(v9 + 5) = 0xE600000000000000;
      if ((a1 & 2) == 0)
      {
LABEL_17:
        if ((a1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
          }

          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v14 >= v13 >> 1)
          {
            v6 = sub_242C38008((v13 > 1), v14 + 1, 1, v6);
          }

          *(v6 + 2) = v14 + 1;
          v15 = &v6[16 * v14];
          strcpy(v15 + 32, "#appResolution");
          v15[47] = -18;
          if ((a1 & 8) == 0)
          {
LABEL_19:
            if ((a1 & 0x10) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_31;
          }
        }

        else if ((a1 & 8) == 0)
        {
          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
        }

        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        if (v17 >= v16 >> 1)
        {
          v6 = sub_242C38008((v16 > 1), v17 + 1, 1, v6);
        }

        *(v6 + 2) = v17 + 1;
        v18 = &v6[16 * v17];
        *(v18 + 4) = 0x747865746E6F6323;
        *(v18 + 5) = 0xE800000000000000;
        if ((a1 & 0x10) == 0)
        {
LABEL_36:
          if ((a1 & 0x20) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v23 = *(v6 + 2);
            v22 = *(v6 + 3);
            if (v23 >= v22 >> 1)
            {
              v6 = sub_242C38008((v22 > 1), v23 + 1, 1, v6);
            }

            *(v6 + 2) = v23 + 1;
            v24 = &v6[16 * v23];
            strcpy(v24 + 32, "#getLockStatus");
            v24[47] = -18;
            if ((a1 & 0x40) == 0)
            {
LABEL_38:
              if ((a1 & 0x80) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_51;
            }
          }

          else if ((a1 & 0x40) == 0)
          {
            goto LABEL_38;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
          }

          v26 = *(v6 + 2);
          v25 = *(v6 + 3);
          if (v26 >= v25 >> 1)
          {
            v6 = sub_242C38008((v25 > 1), v26 + 1, 1, v6);
          }

          *(v6 + 2) = v26 + 1;
          v27 = &v6[16 * v26];
          strcpy(v27 + 32, "#setLockStatus");
          v27[47] = -18;
          if ((a1 & 0x80) == 0)
          {
LABEL_39:
            if ((a1 & 0x100) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_56;
          }

LABEL_51:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
          }

          v29 = *(v6 + 2);
          v28 = *(v6 + 3);
          if (v29 >= v28 >> 1)
          {
            v6 = sub_242C38008((v28 > 1), v29 + 1, 1, v6);
          }

          *(v6 + 2) = v29 + 1;
          v30 = &v6[16 * v29];
          *(v30 + 4) = 0x7461766974636123;
          *(v30 + 5) = 0xEF6C616E67695365;
          if ((a1 & 0x100) == 0)
          {
LABEL_61:
            if ((a1 & 0x400) != 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
              }

              v35 = *(v6 + 2);
              v34 = *(v6 + 3);
              if (v35 >= v34 >> 1)
              {
                v6 = sub_242C38008((v34 > 1), v35 + 1, 1, v6);
              }

              *(v6 + 2) = v35 + 1;
              v36 = &v6[16 * v35];
              *(v36 + 4) = 0xD000000000000016;
              *(v36 + 5) = 0x8000000242C4E080;
              if ((a1 & 0x800) == 0)
              {
LABEL_63:
                if ((a1 & 0x4000) == 0)
                {
                  goto LABEL_64;
                }

                goto LABEL_84;
              }
            }

            else if ((a1 & 0x800) == 0)
            {
              goto LABEL_63;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v38 = *(v6 + 2);
            v37 = *(v6 + 3);
            if (v38 >= v37 >> 1)
            {
              v6 = sub_242C38008((v37 > 1), v38 + 1, 1, v6);
            }

            *(v6 + 2) = v38 + 1;
            v39 = &v6[16 * v38];
            *(v39 + 4) = 0xD000000000000010;
            *(v39 + 5) = 0x8000000242C4E060;
            if ((a1 & 0x4000) == 0)
            {
LABEL_64:
              if ((a1 & 0x8000) == 0)
              {
                goto LABEL_65;
              }

              goto LABEL_89;
            }

LABEL_84:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v41 = *(v6 + 2);
            v40 = *(v6 + 3);
            if (v41 >= v40 >> 1)
            {
              v6 = sub_242C38008((v40 > 1), v41 + 1, 1, v6);
            }

            *(v6 + 2) = v41 + 1;
            v42 = &v6[16 * v41];
            *(v42 + 4) = 0xD000000000000011;
            *(v42 + 5) = 0x8000000242C4E040;
            if ((a1 & 0x8000) == 0)
            {
LABEL_65:
              if ((a1 & 0x10000) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_94;
            }

LABEL_89:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v44 = *(v6 + 2);
            v43 = *(v6 + 3);
            if (v44 >= v43 >> 1)
            {
              v6 = sub_242C38008((v43 > 1), v44 + 1, 1, v6);
            }

            *(v6 + 2) = v44 + 1;
            v45 = &v6[16 * v44];
            *(v45 + 4) = 0xD00000000000001ALL;
            *(v45 + 5) = 0x8000000242C4E020;
            if ((a1 & 0x10000) == 0)
            {
LABEL_66:
              if ((a1 & 0x20000) == 0)
              {
                goto LABEL_67;
              }

              goto LABEL_99;
            }

LABEL_94:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v47 = *(v6 + 2);
            v46 = *(v6 + 3);
            if (v47 >= v46 >> 1)
            {
              v6 = sub_242C38008((v46 > 1), v47 + 1, 1, v6);
            }

            *(v6 + 2) = v47 + 1;
            v48 = &v6[16 * v47];
            *(v48 + 4) = 0x6E75725474656723;
            *(v48 + 5) = 0xEF7375746174536BLL;
            if ((a1 & 0x20000) == 0)
            {
LABEL_67:
              if ((a1 & 0x40000) == 0)
              {
                goto LABEL_68;
              }

              goto LABEL_104;
            }

LABEL_99:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v50 = *(v6 + 2);
            v49 = *(v6 + 3);
            if (v50 >= v49 >> 1)
            {
              v6 = sub_242C38008((v49 > 1), v50 + 1, 1, v6);
            }

            *(v6 + 2) = v50 + 1;
            v51 = &v6[16 * v50];
            *(v51 + 4) = 0xD00000000000001CLL;
            *(v51 + 5) = 0x8000000242C4E000;
            if ((a1 & 0x40000) == 0)
            {
LABEL_68:
              if ((a1 & 0x100000) == 0)
              {
                goto LABEL_69;
              }

              goto LABEL_109;
            }

LABEL_104:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v53 = *(v6 + 2);
            v52 = *(v6 + 3);
            if (v53 >= v52 >> 1)
            {
              v6 = sub_242C38008((v52 > 1), v53 + 1, 1, v6);
            }

            *(v6 + 2) = v53 + 1;
            v54 = &v6[16 * v53];
            *(v54 + 4) = 0xD000000000000011;
            *(v54 + 5) = 0x8000000242C4DFE0;
            if ((a1 & 0x100000) == 0)
            {
LABEL_69:
              if ((a1 & 0x80000) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_114;
            }

LABEL_109:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v56 = *(v6 + 2);
            v55 = *(v6 + 3);
            if (v56 >= v55 >> 1)
            {
              v6 = sub_242C38008((v55 > 1), v56 + 1, 1, v6);
            }

            *(v6 + 2) = v56 + 1;
            v57 = &v6[16 * v56];
            strcpy(v57 + 32, "#openCarPlay");
            v57[45] = 0;
            *(v57 + 23) = -5120;
            if ((a1 & 0x80000) == 0)
            {
LABEL_70:
              if ((a1 & 0x200000) == 0)
              {
                goto LABEL_71;
              }

              goto LABEL_119;
            }

LABEL_114:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v59 = *(v6 + 2);
            v58 = *(v6 + 3);
            if (v59 >= v58 >> 1)
            {
              v6 = sub_242C38008((v58 > 1), v59 + 1, 1, v6);
            }

            *(v6 + 2) = v59 + 1;
            v60 = &v6[16 * v59];
            *(v60 + 4) = 0xD000000000000019;
            *(v60 + 5) = 0x8000000242C4DFC0;
            if ((a1 & 0x200000) == 0)
            {
LABEL_71:
              if ((a1 & 0x400000) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_124;
            }

LABEL_119:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v62 = *(v6 + 2);
            v61 = *(v6 + 3);
            if (v62 >= v61 >> 1)
            {
              v6 = sub_242C38008((v61 > 1), v62 + 1, 1, v6);
            }

            *(v6 + 2) = v62 + 1;
            v63 = &v6[16 * v62];
            *(v63 + 4) = 0xD000000000000010;
            *(v63 + 5) = 0x8000000242C4DFA0;
            if ((a1 & 0x400000) == 0)
            {
LABEL_72:
              if ((a1 & 0x4000000) == 0)
              {
                goto LABEL_134;
              }

              goto LABEL_129;
            }

LABEL_124:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v65 = *(v6 + 2);
            v64 = *(v6 + 3);
            if (v65 >= v64 >> 1)
            {
              v6 = sub_242C38008((v64 > 1), v65 + 1, 1, v6);
            }

            *(v6 + 2) = v65 + 1;
            v66 = &v6[16 * v65];
            *(v66 + 4) = 0xD000000000000014;
            *(v66 + 5) = 0x8000000242C4DF80;
            if ((a1 & 0x4000000) == 0)
            {
LABEL_134:
              if ((a1 & 0x8000000) != 0)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
                }

                v71 = *(v6 + 2);
                v70 = *(v6 + 3);
                if (v71 >= v70 >> 1)
                {
                  v6 = sub_242C38008((v70 > 1), v71 + 1, 1, v6);
                }

                *(v6 + 2) = v71 + 1;
                v72 = &v6[16 * v71];
                strcpy(v72 + 32, "#setAutoMode");
                v72[45] = 0;
                *(v72 + 23) = -5120;
                if ((a1 & 0x20000000) == 0)
                {
LABEL_136:
                  if ((a1 & 0x40000000) == 0)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_152;
                }
              }

              else if ((a1 & 0x20000000) == 0)
              {
                goto LABEL_136;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
              }

              v74 = *(v6 + 2);
              v73 = *(v6 + 3);
              if (v74 >= v73 >> 1)
              {
                v6 = sub_242C38008((v73 > 1), v74 + 1, 1, v6);
              }

              *(v6 + 2) = v74 + 1;
              v75 = &v6[16 * v74];
              *(v75 + 4) = 0x6D696C4374657323;
              *(v75 + 5) = 0xEF636E7953657461;
              if ((a1 & 0x40000000) == 0)
              {
LABEL_137:
                if ((a1 & 0x10000000) == 0)
                {
                  goto LABEL_138;
                }

                goto LABEL_157;
              }

LABEL_152:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
              }

              v77 = *(v6 + 2);
              v76 = *(v6 + 3);
              if (v77 >= v76 >> 1)
              {
                v6 = sub_242C38008((v76 > 1), v77 + 1, 1, v6);
              }

              *(v6 + 2) = v77 + 1;
              v78 = &v6[16 * v77];
              strcpy(v78 + 32, "#setVentMode");
              v78[45] = 0;
              *(v78 + 23) = -5120;
              if ((a1 & 0x10000000) == 0)
              {
LABEL_138:
                if ((a1 & 0x100000000) == 0)
                {
                  goto LABEL_139;
                }

                goto LABEL_162;
              }

LABEL_157:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
              }

              v80 = *(v6 + 2);
              v79 = *(v6 + 3);
              if (v80 >= v79 >> 1)
              {
                v6 = sub_242C38008((v79 > 1), v80 + 1, 1, v6);
              }

              *(v6 + 2) = v80 + 1;
              v81 = &v6[16 * v80];
              *(v81 + 4) = 0xD000000000000012;
              *(v81 + 5) = 0x8000000242C4DF60;
              if ((a1 & 0x100000000) == 0)
              {
LABEL_139:
                if ((a1 & 0x200000000) == 0)
                {
                  goto LABEL_140;
                }

                goto LABEL_167;
              }

LABEL_162:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
              }

              v83 = *(v6 + 2);
              v82 = *(v6 + 3);
              if (v83 >= v82 >> 1)
              {
                v6 = sub_242C38008((v82 > 1), v83 + 1, 1, v6);
              }

              *(v6 + 2) = v83 + 1;
              v84 = &v6[16 * v83];
              *(v84 + 4) = 0xD000000000000010;
              *(v84 + 5) = 0x8000000242C4DF40;
              if ((a1 & 0x200000000) == 0)
              {
LABEL_140:
                if (!*(v6 + 2))
                {

                  return 0;
                }

LABEL_172:
                v93 = v6;

                sub_242C394D0(&v93);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9CF8, &qword_242C4BAF8);
                sub_242C3A3E8();
                v5 = sub_242C4A45C();
                v89 = v88;

                swift_beginAccess();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v92 = off_27ECE9CE0;
                off_27ECE9CE0 = 0x8000000000000000;
                sub_242C3901C(v5, v89, a1, isUniquelyReferenced_nonNull_native);
                off_27ECE9CE0 = v92;
                swift_endAccess();
                return v5;
              }

LABEL_167:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
              }

              v86 = *(v6 + 2);
              v85 = *(v6 + 3);
              if (v86 >= v85 >> 1)
              {
                v6 = sub_242C38008((v85 > 1), v86 + 1, 1, v6);
              }

              *(v6 + 2) = v86 + 1;
              v87 = &v6[16 * v86];
              *(v87 + 4) = 0xD000000000000019;
              *(v87 + 5) = 0x8000000242C4DF20;
              goto LABEL_172;
            }

LABEL_129:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
            }

            v68 = *(v6 + 2);
            v67 = *(v6 + 3);
            if (v68 >= v67 >> 1)
            {
              v6 = sub_242C38008((v67 > 1), v68 + 1, 1, v6);
            }

            *(v6 + 2) = v68 + 1;
            v69 = &v6[16 * v68];
            *(v69 + 4) = 0x536E614674657323;
            *(v69 + 5) = 0xEF73676E69747465;
            goto LABEL_134;
          }

LABEL_56:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
          }

          v32 = *(v6 + 2);
          v31 = *(v6 + 3);
          if (v32 >= v31 >> 1)
          {
            v6 = sub_242C38008((v31 > 1), v32 + 1, 1, v6);
          }

          *(v6 + 2) = v32 + 1;
          v33 = &v6[16 * v32];
          *(v33 + 4) = 1667462179;
          *(v33 + 5) = 0xE400000000000000;
          goto LABEL_61;
        }

LABEL_31:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
        }

        v20 = *(v6 + 2);
        v19 = *(v6 + 3);
        if (v20 >= v19 >> 1)
        {
          v6 = sub_242C38008((v19 > 1), v20 + 1, 1, v6);
        }

        *(v6 + 2) = v20 + 1;
        v21 = &v6[16 * v20];
        strcpy(v21 + 32, "#getPowerLevel");
        v21[47] = -18;
        goto LABEL_36;
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_242C38008(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_242C38008((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    *(v12 + 4) = 0x776F6C6623;
    *(v12 + 5) = 0xE500000000000000;
    goto LABEL_17;
  }

  v5 = *(v2[7] + 16 * v3);
  swift_endAccess();

  return v5;
}

uint64_t sub_242C37C64()
{
  v1 = *v0;
  sub_242C4A6FC();
  MEMORY[0x245D24430](v1);
  return sub_242C4A72C();
}

uint64_t sub_242C37CD8(uint64_t a1)
{
  v2 = *v1;
  sub_242C4A6FC();
  MEMORY[0x245D24430](v2);
  return sub_242C4A72C();
}

BOOL sub_242C37D60(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_242C37D90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_242C37DBC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_242C37E94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_242C37EC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_242C39FBC(a1);

  *a2 = v3;
  return result;
}

char *sub_242C37F04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D18, &qword_242C4BB10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_242C38008(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D08, &qword_242C4BB00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_242C38114(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242C381E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242C3A388(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_242C381E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242C382EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_242C4A5BC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_242C382EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_242C38338(a1, a2);
  sub_242C38468(&unk_285574FF8);
  return v3;
}

void *sub_242C38338(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242C38554(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_242C4A5BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_242C4A4BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242C38554(v10, 0);
        result = sub_242C4A57C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242C38468(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_242C385C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_242C38554(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9CF0, &qword_242C4BAF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242C385C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9CF0, &qword_242C4BAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_242C386BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D30, &unk_242C4BB20);
  v10 = *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_242C38894(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D08, &qword_242C4BB00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_242C389A0(uint64_t a1)
{
  sub_242C4A6FC();
  MEMORY[0x245D24430](a1);
  v2 = sub_242C4A72C();

  return sub_242C3917C(a1, v2);
}

unint64_t sub_242C38A0C(uint64_t a1)
{
  v2 = sub_242C4A54C();

  return sub_242C391E8(a1, v2);
}

unint64_t sub_242C38A50(uint64_t a1, uint64_t a2)
{
  sub_242C4A6FC();
  sub_242C4A48C();
  v4 = sub_242C4A72C();

  return sub_242C392B0(a1, a2, v4);
}

uint64_t sub_242C38AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D10, &qword_242C4BB08);
  v34 = v4;
  result = sub_242C4A5FC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_242C4A6FC();
      MEMORY[0x245D24430](v21);
      result = sub_242C4A72C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_242C38D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D28, &qword_242C4BB18);
  v33 = v4;
  result = sub_242C4A5FC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_242C3A5AC(v24, v34);
      }

      else
      {
        sub_242C3A388(v24, v34);
      }

      sub_242C4A6FC();
      sub_242C4A48C();
      result = sub_242C4A72C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_242C3A5AC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_242C3901C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_242C389A0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_242C38AC8(v16, a4 & 1);
      result = sub_242C389A0(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_242C4A6EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_242C39368();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_242C3917C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_242C391E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_242C3A4FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D24270](v9, a1);
      sub_242C3A558(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_242C392B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_242C4A6DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_242C39368()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D10, &qword_242C4BB08);
  v2 = *v0;
  v3 = sub_242C4A5EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_242C394D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_242C39FA8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_242C3953C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_242C3953C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_242C4A6BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_242C4A4DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_242C39704(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_242C39634(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_242C39634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_242C4A6DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C39704(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_242C39F94(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_242C39CE0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_242C4A6DC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_242C4A6DC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_242C37F04(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_242C37F04((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_242C39CE0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_242C39F94(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_242C39F08(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_242C4A6DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_242C39CE0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_242C4A6DC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_242C4A6DC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_242C39F08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_242C39F94(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_242C39FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_242C39FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (qword_27ECE9988 != -1)
  {
    swift_once();
  }

  v15 = sub_242C49F6C();
  __swift_project_value_buffer(v15, qword_27ECE9CC8);
  v16 = sub_242C4A4EC();
  v33 = a2;
  v34 = a3;
  v31 = 47;
  v32 = 0xE100000000000000;
  sub_242C3A334();
  v17 = (sub_242C4A52C() + 16);
  if (*v17)
  {
    v18 = &v17[2 * *v17];
    v20 = *v18;
    v19 = v18[1];

    MEMORY[0x245D241C0](32, 0xE100000000000000);
    MEMORY[0x245D241C0](a4, a5);
    a4 = v20;
    a5 = v19;
  }

  else
  {
  }

  v33 = a4;
  v34 = a5;
  v31 = 58;
  v32 = 0xE100000000000000;
  v21 = sub_242C4A6CC();
  MEMORY[0x245D241C0](v21);

  MEMORY[0x245D241C0](58, 0xE100000000000000);

  v22 = sub_242C36C6C(a1);
  if (v23)
  {
    v31 = 32;
    v32 = 0xE100000000000000;
    MEMORY[0x245D241C0](v22);

    MEMORY[0x245D241C0](32, 0xE100000000000000);
  }

  if (a8)
  {
    v24 = HIBYTE(a8) & 0xF;
    if ((a8 & 0x2000000000000000) == 0)
    {
      v24 = a7 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v31 = 32;
      v32 = 0xE100000000000000;
      MEMORY[0x245D241C0](a7, a8);
      MEMORY[0x245D241C0](32, 0xE100000000000000);
    }
  }

  v26 = v33;
  v25 = v34;

  v27 = sub_242C49F5C();

  if (os_log_type_enabled(v27, v16))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v28 = 136315138;
    v30 = sub_242C38114(v26, v25, &v31);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_242C29000, v27, v16, "%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x245D248B0](v29, -1, -1);
    MEMORY[0x245D248B0](v28, -1, -1);
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_242C3A334()
{
  result = qword_27ECE9CE8;
  if (!qword_27ECE9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9CE8);
  }

  return result;
}

uint64_t sub_242C3A388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_242C3A3E8()
{
  result = qword_27ECE9D00;
  if (!qword_27ECE9D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9CF8, &qword_242C4BAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D00);
  }

  return result;
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

unint64_t sub_242C3A4B0()
{
  result = qword_27ECE9D20;
  if (!qword_27ECE9D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECE9D20);
  }

  return result;
}

_OWORD *sub_242C3A5AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_242C3A5DC()
{
  result = qword_27ECE9D38;
  if (!qword_27ECE9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D38);
  }

  return result;
}

unint64_t sub_242C3A634()
{
  result = qword_27ECE9D40;
  if (!qword_27ECE9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D40);
  }

  return result;
}

unint64_t sub_242C3A68C()
{
  result = qword_27ECE9D48;
  if (!qword_27ECE9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D48);
  }

  return result;
}

unint64_t sub_242C3A6E4()
{
  result = qword_27ECE9D50;
  if (!qword_27ECE9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D50);
  }

  return result;
}

uint64_t sub_242C3A740@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_242C4A0EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E68, &qword_242C4C3A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_242C3BADC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_242C49F9C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_242C4A4FC();
    v13 = sub_242C4A11C();
    sub_242C49F4C();

    sub_242C4A0DC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_242C3A928(uint64_t (*a1)(void), uint64_t (*a2)(void *))
{
  v5 = sub_242C49F9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242C3A740(v8);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277CDF3D0])
  {
    return a1();
  }

  if (v9 == *MEMORY[0x277CDF3C0])
  {
    v11 = type metadata accessor for CarCommandsToggleButton(0);
    v12 = (v2 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v12) = *(v12 + 16);
    v19 = v13;
    v20 = v14;
    v21 = v12;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9DF8, &qword_242C4BD88);
    v16 = MEMORY[0x245D24010]((&v18 + 7), v15);
    if (HIBYTE(v18) == 1 && *(v2 + *(v11 + 28) + 34) == 1)
    {
      return a1();
    }

    return a2(v16);
  }

  else
  {
    v17 = sub_242C4A20C();
    (*(v6 + 8))(v8, v5);
    return v17;
  }
}

uint64_t CarCommandsToggleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D58, &qword_242C4BD30);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D60, &qword_242C4BD38);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = type metadata accessor for CarCommandsToggleButton(0);
  v33 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D68, &qword_242C4BD40);
  sub_242C3B134();
  sub_242C4A2DC();
  v10 = (v1 + *(v9 + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v10 + 16);
  v35 = *v10;
  v36 = v11;
  v37 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9DF8, &qword_242C4BD88);
  MEMORY[0x245D24010](&v34);
  if (v34)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.7;
  }

  (*(v30 + 32))(v8, v4, v31);
  *&v8[*(v6 + 44)] = v15;
  v16 = *(v1 + *(v9 + 28) + 33);
  v35 = v12;
  v36 = v11;
  v37 = v13;
  MEMORY[0x245D24010](&v34, v14);
  if (v34 == 1)
  {
    v17 = &byte_285575040;
    v18 = qword_285575030;
    do
    {
      v19 = v18 == 0;
      if (!v18)
      {
        break;
      }

      v20 = *v17++;
      --v18;
    }

    while (v20 != v16);
  }

  else
  {
    v21 = &byte_285575068;
    v22 = qword_285575058;
    do
    {
      v19 = v22 == 0;
      if (!v22)
      {
        break;
      }

      v23 = *v21++;
      --v22;
    }

    while (v23 != v16);
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  v26 = v32;
  sub_242C3B55C(v8, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E00, &qword_242C4BDC0);
  v28 = (v26 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_242C3B544;
  v28[2] = v25;
  return result;
}

uint64_t type metadata accessor for CarCommandsToggleButton(uint64_t a1)
{
  result = qword_27ECE9E18;
  if (!qword_27ECE9E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_242C3AE1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_242C4A24C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_242C49F9C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CarCommandsToggleButton(0);
  v12 = a1 + *(v11 + 28);
  v27 = *(v12 + 32);
  v13 = *(v12 + 16);
  v26[0] = *v12;
  v26[1] = v13;
  sub_242C3BA80(v26, &v30);
  sub_242C3A740(v10);
  v14 = (a1 + *(v11 + 20));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v14 + 16);
  *&v30 = v15;
  *(&v30 + 1) = v16;
  LOBYTE(v31) = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9DF8, &qword_242C4BD88);
  MEMORY[0x245D24010](v28, v17);
  sub_242C35988(v26, v10, v28[0]);
  v18 = sub_242C3A928(MEMORY[0x277CE0F10], MEMORY[0x277CE0F30]);
  v19 = sub_242C3A928(MEMORY[0x277CE0F30], MEMORY[0x277CE0F50]);
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v20 = sub_242C4A27C();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();

  sub_242C4A32C();
  sub_242C49FEC();
  v25[8] = 1;
  sub_242C4A32C();
  sub_242C49FEC();
  LOBYTE(v7) = sub_242C4A12C();

  v22 = v31;
  *(a2 + 40) = v30;
  *(a2 + 56) = v22;
  *(a2 + 72) = v32;
  v23 = v28[1];
  *(a2 + 88) = v28[0];
  *a2 = v20;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v18;
  *(a2 + 104) = v23;
  result = *&v29;
  *(a2 + 120) = v29;
  *(a2 + 136) = v19;
  *(a2 + 144) = v7;
  *(a2 + 145) = 256;
  return result;
}

unint64_t sub_242C3B134()
{
  result = qword_27ECE9D70;
  if (!qword_27ECE9D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9D68, &qword_242C4BD40);
    sub_242C3B1EC();
    sub_242C3B974(&qword_27ECE9DE8, &qword_27ECE9DF0, &qword_242C4BD80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D70);
  }

  return result;
}

unint64_t sub_242C3B1EC()
{
  result = qword_27ECE9D78;
  if (!qword_27ECE9D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9D80, &qword_242C4BD48);
    sub_242C3B300(&qword_27ECE9D88, &qword_27ECE9D90, &qword_242C4BD50, sub_242C3B2D0);
    sub_242C3B974(&qword_27ECE9DD8, &qword_27ECE9DE0, &qword_242C4BD78, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D78);
  }

  return result;
}

uint64_t sub_242C3B300(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C3B384()
{
  result = qword_27ECE9DA8;
  if (!qword_27ECE9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9DB0, &qword_242C4BD60);
    sub_242C3B43C();
    sub_242C3B974(&qword_27ECE9DC8, &qword_27ECE9DD0, &qword_242C4BD70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9DA8);
  }

  return result;
}

unint64_t sub_242C3B43C()
{
  result = qword_27ECE9DB8;
  if (!qword_27ECE9DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9DC0, &qword_242C4BD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9DB8);
  }

  return result;
}

uint64_t CarCommandsToggleButton.asAnyView()()
{
  type metadata accessor for CarCommandsToggleButton(0);
  sub_242C3B5CC();

  return sub_242C4A14C();
}

uint64_t sub_242C3B508(uint64_t a1)
{
  sub_242C3B5CC();

  return sub_242C4A14C();
}

uint64_t sub_242C3B55C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D60, &qword_242C4BD38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242C3B5CC()
{
  result = qword_27ECE9E08;
  if (!qword_27ECE9E08)
  {
    type metadata accessor for CarCommandsToggleButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E08);
  }

  return result;
}

void sub_242C3B668(uint64_t a1)
{
  sub_242C3B70C(319);
  if (v1 <= 0x3F)
  {
    sub_242C3B764();
    if (v2 <= 0x3F)
    {
      sub_242C3B7B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242C3B70C(uint64_t a1)
{
  if (!qword_27ECE9E28)
  {
    sub_242C49F9C();
    v1 = sub_242C49FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECE9E28);
    }
  }
}

void sub_242C3B764()
{
  if (!qword_27ECE9E30)
  {
    v0 = sub_242C4A30C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECE9E30);
    }
  }
}

unint64_t sub_242C3B7B4()
{
  result = qword_27ECE9E38;
  if (!qword_27ECE9E38)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27ECE9E38);
  }

  return result;
}

unint64_t sub_242C3B804()
{
  result = qword_27ECE9E40;
  if (!qword_27ECE9E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9E00, &qword_242C4BDC0);
    sub_242C3B8BC();
    sub_242C3B974(&qword_27ECE9E58, &qword_27ECE9E60, &qword_242C4BE68, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E40);
  }

  return result;
}

unint64_t sub_242C3B8BC()
{
  result = qword_27ECE9E48;
  if (!qword_27ECE9E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9D60, &qword_242C4BD38);
    sub_242C3B974(&qword_27ECE9E50, &qword_27ECE9D58, &qword_242C4BD30, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E48);
  }

  return result;
}

uint64_t sub_242C3B974(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242C3B9D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 34);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242C3BA24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 34) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_242C3BADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E68, &qword_242C4C3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CarCommandsToggleButton.ToggleBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarCommandsToggleButton.ToggleBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C3BCA0()
{
  result = qword_27ECE9E70;
  if (!qword_27ECE9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E70);
  }

  return result;
}

uint64_t CarCommandsConfirmationSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for CarCommandsConfirmationSnippet(0) + 20));
  sub_242C4A44C();
  sub_242C3C2C4(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v4 = sub_242C4A01C();
  v4[1] = v5;
  return sub_242C3C258(a1, a2, type metadata accessor for CarCommandsConfirmationSnippetModel);
}

uint64_t type metadata accessor for CarCommandsConfirmationSnippet(uint64_t a1)
{
  result = qword_27ECE9E88;
  if (!qword_27ECE9E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CarCommandsConfirmationSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CarCommandsConfirmationSnippet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_242C3C1F4(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_242C3C258(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CarCommandsConfirmationSnippet);
  sub_242C4A39C();
  sub_242C3C2C4(&qword_27ECE9E78, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
  sub_242C4A37C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E80, &qword_242C4BFE8);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = 1;
  return result;
}

uint64_t sub_242C3BF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for CarCommandsConfirmationSnippet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v18 = v22[0];
  v19 = v22[1];
  sub_242C3C1F4(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v13 = type metadata accessor for CarCommandsConfirmationSnippet;
  sub_242C3C258(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CarCommandsConfirmationSnippet);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9EC8, &unk_242C4C080);
  v22[3] = v8;
  v9 = sub_242C3B974(&qword_27ECE9ED0, &qword_27ECE9EC8, &unk_242C4C080, MEMORY[0x277D63A50]);
  v22[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_242C3A334();
  sub_242C4A2EC();
  type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  sub_242C49F1C();
  v16 = v18;
  v17 = v19;
  sub_242C3C1F4(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_242C3C258(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6, v13);
  v20 = v8;
  v21 = v9;
  __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_242C4A2EC();
  return sub_242C4A38C();
}

uint64_t sub_242C3C1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsConfirmationSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3C258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C3C2C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_242C3C30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + *(type metadata accessor for CarCommandsConfirmationSnippet(0) + 20));
  if (v3)
  {
    v4 = v3;
    v5 = a2();
    v6 = [v5 identifier];

    sub_242C4A47C();
    v7 = objc_allocWithZone(MEMORY[0x277D5C220]);
    v8 = sub_242C4A46C();
    v9 = [v7 initWithIdentifier_];

    v10 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    [v10 setInputOrigin_];
    [v10 setInteractionType_];
    v11 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v10 payload:v9];

    sub_242C4A43C();
  }

  else
  {
    sub_242C4A44C();
    sub_242C3C2C4(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_242C4A00C();
    __break(1u);
  }
}

uint64_t sub_242C3C4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_242C3C1F4(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_242C3C258(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CarCommandsConfirmationSnippet);
  sub_242C4A39C();
  sub_242C3C2C4(&qword_27ECE9E78, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
  sub_242C4A37C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E80, &qword_242C4BFE8);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = 1;
  return result;
}

void sub_242C3C6AC(uint64_t a1)
{
  type metadata accessor for CarCommandsConfirmationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_242C3C730(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242C3C730(uint64_t a1)
{
  if (!qword_27ECE9E98)
  {
    sub_242C4A44C();
    sub_242C3C2C4(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_242C4A02C();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECE9E98);
    }
  }
}

unint64_t sub_242C3C7C4()
{
  result = qword_27ECE9EA0;
  if (!qword_27ECE9EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9E80, &qword_242C4BFE8);
    sub_242C3B974(&qword_27ECE9EA8, &qword_27ECE9EB0, "v-", MEMORY[0x277D63B90]);
    sub_242C3B974(&qword_27ECE9EB8, &qword_27ECE9EC0, &qword_242C4C078, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9EA0);
  }

  return result;
}

uint64_t sub_242C3C8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CarCommandsConfirmationSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_242C3BF7C(v4, a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for CarCommandsConfirmationSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v6(v0 + v3 + *(v7 + 20), v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t CarCommandsDisambiguationSnippet.body.getter()
{
  v1 = sub_242C4A3EC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9ED8, &qword_242C4C0A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = *(v0 + 16);
  v17 = *v0;
  v18 = v6;
  v19 = *(v0 + 32);
  v20 = *(v0 + 48);
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D63F80];
  v11 = v17;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;

  sub_242C4A3DC();
  v7 = swift_allocObject();
  v8 = v18;
  *(v7 + 16) = v17;
  *(v7 + 32) = v8;
  *(v7 + 48) = v19;
  *(v7 + 64) = v20;
  sub_242C3CF40(&v17, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9EE0, &qword_242C4C0A8);
  sub_242C3CF78();
  sub_242C4A3AC();
  sub_242C3B974(&qword_27ECE9F18, &qword_27ECE9ED8, &qword_242C4C0A0, MEMORY[0x277D63CE0]);
  sub_242C4A1DC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_242C3CD84(uint64_t a1)
{
  v8 = *(a1 + 16);
  v7[7] = v8;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_242C3DA14(&v8, v7, &qword_27ECE9F40, &qword_242C4C1D0);
  sub_242C3CF40(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F40, &qword_242C4C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F48, &qword_242C4C1D8);
  sub_242C3B974(&qword_27ECE9F50, &qword_27ECE9F40, &qword_242C4C1D0, MEMORY[0x277D83980]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EF0, &qword_242C4C0B0);
  v5 = sub_242C3D038();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  sub_242C3DBA8(&qword_27ECE9F58, type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption, &unk_242C4C198);
  return sub_242C4A31C();
}

unint64_t sub_242C3CF78()
{
  result = qword_27ECE9EE8;
  if (!qword_27ECE9EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EE0, &qword_242C4C0A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EF0, &qword_242C4C0B0);
    sub_242C3D038();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9EE8);
  }

  return result;
}

unint64_t sub_242C3D038()
{
  result = qword_27ECE9EF8;
  if (!qword_27ECE9EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EF0, &qword_242C4C0B0);
    sub_242C3DBA8(&qword_27ECE9F00, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
    sub_242C3B974(&qword_27ECE9F08, &qword_27ECE9F10, &qword_242C4C0B8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9EF8);
  }

  return result;
}

uint64_t sub_242C3D13C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0);
  v6 = v5 - 8;
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = v7;
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v28 = sub_242C4A3CC();
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9EF0, &qword_242C4C0B0);
  MEMORY[0x28223BE20](v29);
  v15 = &v27 - v14;
  v16 = *a1;
  v17 = a1[1];
  v34[3] = MEMORY[0x277D837D0];
  v34[4] = MEMORY[0x277D63F80];
  v34[0] = v16;
  v34[1] = v17;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_242C3DA14(a1 + *(v6 + 28), v10, &qword_27ECE9F20, &unk_242C4C270);
  v18 = sub_242C4A35C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {

    sub_242C3DBF0(v10, &qword_27ECE9F20, &unk_242C4C270);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  else
  {
    *(&v36 + 1) = v18;
    v37 = MEMORY[0x277D63B10];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v19 + 32))(boxed_opaque_existential_1, v10, v18);
  }

  sub_242C4A3BC();
  (*(v11 + 32))(v15, v13, v28);
  v15[*(v29 + 36)] = 0;
  v21 = a1;
  v22 = v32;
  sub_242C3DA7C(v21, v32);
  v23 = (*(v30 + 80) + 72) & ~*(v30 + 80);
  v24 = swift_allocObject();
  v25 = *(a2 + 16);
  *(v24 + 16) = *a2;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(a2 + 32);
  *(v24 + 64) = *(a2 + 48);
  sub_242C3DAE0(v22, v24 + v23);
  sub_242C3CF40(a2, v34);
  sub_242C3D038();
  sub_242C4A1BC();

  return sub_242C3DBF0(v15, &qword_27ECE9EF0, &qword_242C4C0B0);
}

uint64_t sub_242C3D578(void *a1, uint64_t a2)
{
  sub_242C39FF4(8, 0xD0000000000000A2, 0x8000000242C4E150, 2036625250, 0xE400000000000000, 43, 0xD000000000000033, 0x8000000242C4E200);
  v4 = a1[5];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F60, &unk_242C4C1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242C4C090;
    v6 = v4;
    v7 = MEMORY[0x277D837D0];
    sub_242C4A56C();
    v8 = (a2 + *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0) + 24));
    v10 = *v8;
    v9 = v8[1];
    *(inited + 96) = v7;
    *(inited + 72) = v10;
    *(inited + 80) = v9;

    sub_242C41640(inited);
    swift_setDeallocating();
    sub_242C3DBF0(inited + 32, &qword_27ECE9F68, &unk_242C4C9C0);
    sub_242C4A42C();
  }

  else
  {
    sub_242C4A44C();
    sub_242C3DBA8(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242C3D760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_242C3D7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(uint64_t a1)
{
  result = qword_27ECE9F28;
  if (!qword_27ECE9F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242C3D878(uint64_t a1)
{
  sub_242C3D8F4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_242C3D8F4(uint64_t a1)
{
  if (!qword_27ECE9F38)
  {
    sub_242C4A35C();
    v1 = sub_242C4A51C();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECE9F38);
    }
  }
}

uint64_t sub_242C3D958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v5 = *v4;
  v6 = v4[1];
  v8 = *v2;
  v9 = v2[1];

  result = MEMORY[0x245D241C0](v5, v6);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C3DA14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_242C3DA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3DAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3DB44()
{
  v1 = *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  return sub_242C3D578((v0 + 16), v2);
}

uint64_t sub_242C3DBA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242C3DBF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AppDisambiguationSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  sub_242C49F1C();
  v2 = sub_242C3DD68(v5);

  sub_242C4A44C();
  sub_242C2C7A0();
  result = sub_242C4A01C();
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v2;
  a1[3] = 0xD000000000000042;
  a1[4] = 0x8000000242C4E240;
  a1[5] = result;
  a1[6] = v4;
  return result;
}

uint64_t sub_242C3DD68(uint64_t a1)
{
  v2 = sub_242C49EEC();
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v39 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption(0);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v42 = MEMORY[0x277D84F90];
    sub_242C36348(0, v15, 0);
    v16 = v42;
    v17 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v34 = *(v9 + 72);
    v35 = v14;
    do
    {
      v38 = v16;
      sub_242C36368(v17, v11);
      v18 = sub_242C4A35C();
      v19 = *(*(v18 - 8) + 56);
      v19(v8, 1, 1, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
      sub_242C49F1C();
      if (v41)
      {
        sub_242C49EDC();

        v20 = v32;
        sub_242C4A36C();
        sub_242C3E290(v8);
        v19(v20, 0, 1, v18);
        sub_242C3E2F8(v20, v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
      sub_242C49F1C();
      v21 = v40;
      v22 = v41;
      v23 = v37;
      v24 = v35;
      sub_242C3E220(v8, v35 + *(v37 + 20));
      sub_242C49F1C();
      sub_242C3E290(v8);
      sub_242C363CC(v11);
      v25 = v40;
      v26 = v41;
      *v24 = v21;
      v24[1] = v22;
      v27 = (v24 + *(v23 + 24));
      *v27 = v25;
      v27[1] = v26;
      v16 = v38;
      v42 = v38;
      v29 = *(v38 + 16);
      v28 = *(v38 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_242C36348((v28 > 1), v29 + 1, 1);
        v16 = v42;
      }

      *(v16 + 16) = v29 + 1;
      sub_242C36428(v24, v16 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29, type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption);
      v17 += v34;
      --v15;
    }

    while (v15);
  }

  return v16;
}

uint64_t type metadata accessor for AppDisambiguationSnippet(uint64_t a1)
{
  result = qword_27ECE9F70;
  if (!qword_27ECE9F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C3E220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3E290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C3E2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double VisibleSignalStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CarCommandsToggleSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();
  sub_242C49F1C();

  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v2 = sub_242C4A01C();
  v4 = v3;

  result = 2.87963758e214;
  *a1 = xmmword_242C4C280;
  *(a1 + 16) = xmmword_242C4C290;
  *(a1 + 32) = 768;
  *(a1 + 34) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = 0xD000000000000045;
  *(a1 + 128) = 0x8000000242C4E290;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = v6;
  *(a1 + 160) = v7;
  *(a1 + 168) = v6;
  *(a1 + 176) = 0;
  *(a1 + 184) = v6;
  *(a1 + 192) = v7;
  *(a1 + 200) = 0;
  *(a1 + 208) = v2;
  *(a1 + 216) = v4;
  return result;
}

uint64_t type metadata accessor for VisibleSignalStatusSnippet(uint64_t a1)
{
  result = qword_27ECE9F80;
  if (!qword_27ECE9F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C3E658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7349656C67676F74 && a2 == 0xEA00000000006E4FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C4A6DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C3E6E8(uint64_t a1)
{
  v2 = sub_242C3E898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C3E724(uint64_t a1)
{
  v2 = sub_242C3E898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsToggleSnippetUpdateValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F90, &qword_242C4C330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3E898();
  sub_242C4A74C();
  sub_242C4A69C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_242C3E898()
{
  result = qword_27ECE9F98;
  if (!qword_27ECE9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9F98);
  }

  return result;
}

uint64_t CarCommandsToggleSnippetUpdateValue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FA0, &qword_242C4C338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3E898();
  sub_242C4A73C();
  if (!v2)
  {
    v9 = sub_242C4A64C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C3EA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242C40CB4();
  sub_242C40D08();
  return sub_242C49ECC();
}

uint64_t sub_242C3EAB0(uint64_t a1, uint64_t a2)
{
  sub_242C40CB4();
  sub_242C40D08();
  return sub_242C49EBC();
}

uint64_t sub_242C3EB1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F90, &qword_242C4C330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3E898();
  sub_242C4A74C();
  sub_242C4A69C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CarCommandsToggleSnippetUpdateFailure.failureText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_242C3EC8C()
{
  sub_242C4A6FC();
  MEMORY[0x245D24420](0);
  return sub_242C4A72C();
}

uint64_t sub_242C3ECD0(uint64_t a1)
{
  sub_242C4A6FC();
  MEMORY[0x245D24420](0);
  return sub_242C4A72C();
}

uint64_t sub_242C3ED30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546572756C696166 && a2 == 0xEB00000000747865)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C4A6DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C3EDBC(uint64_t a1)
{
  v2 = sub_242C3EF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C3EDF8(uint64_t a1)
{
  v2 = sub_242C3EF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsToggleSnippetUpdateFailure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FA8, &qword_242C4C340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3EF70();
  sub_242C4A74C();
  sub_242C4A68C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_242C3EF70()
{
  result = qword_27ECE9FB0;
  if (!qword_27ECE9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9FB0);
  }

  return result;
}

uint64_t CarCommandsToggleSnippetUpdateFailure.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FB8, &qword_242C4C348);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3EF70();
  sub_242C4A73C();
  if (!v2)
  {
    v9 = sub_242C4A63C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C3F138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242C40E58();
  sub_242C40EAC();
  return sub_242C49ECC();
}

uint64_t sub_242C3F1A4(uint64_t a1, uint64_t a2)
{
  sub_242C40E58();
  sub_242C40EAC();
  return sub_242C49EBC();
}

uint64_t sub_242C3F210(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FA8, &qword_242C4C340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3EF70();
  sub_242C4A74C();
  sub_242C4A68C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CarCommandsToggleSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_242C4A40C();
  v64 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC0, &qword_242C4C350);
  MEMORY[0x28223BE20](v65);
  v69 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC8, &qword_242C4C358);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  MEMORY[0x28223BE20](v6);
  v70 = &v64 - v8;
  v9 = v1[11];
  v96[0] = v1[10];
  v96[1] = v9;
  v10 = v1[13];
  v97 = v1[12];
  v98 = v10;
  v11 = v1[7];
  v92 = v1[6];
  v93 = v11;
  v12 = v1[9];
  v94 = v1[8];
  v95 = v12;
  v13 = v1[3];
  v89[1] = v1[2];
  v89[2] = v13;
  v14 = v1[5];
  v90 = v1[4];
  v91 = v14;
  v15 = v1[1];
  v88 = *v1;
  v89[0] = v15;
  v72 = *(v1 + 184);
  v73 = *(v1 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  sub_242C4A2AC();
  v86 = MEMORY[0x277D837D0];
  v87 = MEMORY[0x277D63F80];
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v101 = *(&v89[1] + 8);
  v78 = MEMORY[0x277D837D0];
  v79 = MEMORY[0x277D63F80];
  v77 = *(&v89[1] + 8);
  v16 = swift_allocObject();
  v17 = v96[1];
  *(v16 + 11) = v96[0];
  *(v16 + 12) = v17;
  v18 = v98;
  *(v16 + 13) = v97;
  *(v16 + 14) = v18;
  v19 = v93;
  *(v16 + 7) = v92;
  *(v16 + 8) = v19;
  v20 = v95;
  *(v16 + 9) = v94;
  *(v16 + 10) = v20;
  v21 = v89[2];
  *(v16 + 3) = v89[1];
  *(v16 + 4) = v21;
  v22 = v91;
  *(v16 + 5) = v90;
  *(v16 + 6) = v22;
  v23 = v89[0];
  *(v16 + 1) = v88;
  *(v16 + 2) = v23;
  v99 = *(v96 + 8);
  sub_242C3FCA0(&v101, &v72);
  sub_242C3FCFC(&v88, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2CC();
  v24 = v72;
  v25 = v73;
  v99 = v88;
  v100[0] = v89[0];
  *(v100 + 15) = *(v89 + 15);
  v26 = type metadata accessor for CarCommandsToggleButton(0);
  v74 = v26;
  v75 = sub_242C40AD0(&qword_27ECE9FE0, type metadata accessor for CarCommandsToggleButton, &protocol conformance descriptor for CarCommandsToggleButton);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
  *boxed_opaque_existential_1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E68, &qword_242C4C3A0);
  swift_storeEnumTagMultiPayload();
  v28 = (boxed_opaque_existential_1 + v26[6]);
  *v28 = sub_242C3FC98;
  v28[1] = v16;
  v29 = boxed_opaque_existential_1 + v26[5];
  *v29 = v24;
  v29[16] = v25;
  v30 = boxed_opaque_existential_1 + v26[7];
  v31 = v99;
  v32 = v100[0];
  *(v30 + 31) = *(v100 + 15);
  *v30 = v31;
  *(v30 + 1) = v32;
  sub_242C40A74(&v99, &v71);
  sub_242C4A3FC();
  sub_242C40AD0(&qword_27ECE9FE8, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  v33 = v69;
  sub_242C4A1DC();
  (*(v64 + 8))(v4, v2);
  v34 = *(&v94 + 1);
  v35 = v95;
  sub_242C4A44C();
  sub_242C40AD0(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);

  v36 = sub_242C4A01C();
  v37 = v65;
  v38 = &v33[*(v65 + 36)];
  *v38 = v36;
  v38[1] = v39;
  v38[2] = v34;
  v38[3] = v35;
  v40 = swift_allocObject();
  v41 = v96[1];
  v40[11] = v96[0];
  v40[12] = v41;
  v42 = v98;
  v40[13] = v97;
  v40[14] = v42;
  v43 = v93;
  v40[7] = v92;
  v40[8] = v43;
  v44 = v95;
  v40[9] = v94;
  v40[10] = v44;
  v45 = v89[2];
  v40[3] = v89[1];
  v40[4] = v45;
  v46 = v91;
  v40[5] = v90;
  v40[6] = v46;
  v47 = v89[0];
  v40[1] = v88;
  v40[2] = v47;
  sub_242C3FCFC(&v88, &v72);
  v48 = sub_242C40B20();
  v49 = sub_242C40C60();
  v50 = sub_242C40CB4();
  v51 = sub_242C40D08();
  v52 = v69;
  sub_242C4A16C();

  sub_242C2C018(v52);
  v53 = swift_allocObject();
  v54 = v96[1];
  v53[11] = v96[0];
  v53[12] = v54;
  v55 = v98;
  v53[13] = v97;
  v53[14] = v55;
  v56 = v93;
  v53[7] = v92;
  v53[8] = v56;
  v57 = v95;
  v53[9] = v94;
  v53[10] = v57;
  v58 = v89[2];
  v53[3] = v89[1];
  v53[4] = v58;
  v59 = v91;
  v53[5] = v90;
  v53[6] = v59;
  v60 = v89[0];
  v53[1] = v88;
  v53[2] = v60;
  sub_242C3FCFC(&v88, &v72);
  *&v72 = v37;
  *(&v72 + 1) = &type metadata for CarCommandsToggleSnippetUpdateValue;
  v73 = v48;
  v74 = v49;
  v75 = v50;
  v76 = v51;
  swift_getOpaqueTypeConformance2();
  sub_242C40E04();
  sub_242C40E58();
  sub_242C40EAC();
  v61 = v66;
  v62 = v70;
  sub_242C4A16C();

  return (*(v67 + 8))(v62, v61);
}

uint64_t sub_242C3FA04(__int128 *a1)
{
  sub_242C4A58C();

  MEMORY[0x245D241C0](*(a1 + 15), *(a1 + 16));
  MEMORY[0x245D241C0](0xD00000000000001ALL, 0x8000000242C4E3B0);
  sub_242C39FF4(8, 0xD00000000000009ALL, 0x8000000242C4E2E0, 2036625250, 0xE400000000000000, 74, 0x20676E69646E6553, 0xE800000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  sub_242C4A2BC();
  v2 = *(a1 + 26);
  if (v2)
  {
    v3 = v2;
    v4 = sub_242C3FD34();
    sub_242C3FF00(v4);

    sub_242C4A42C();
  }

  else
  {
    sub_242C4A44C();
    sub_242C40AD0(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C3FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

uint64_t sub_242C3FD34()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[19];
  v3 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA068, &qword_242C4C998);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4449707061;
  *(inited + 16) = xmmword_242C4C320;
  v6 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v6;
  *(inited + 80) = 0x656D614E726163;
  *(inited + 88) = 0xE700000000000000;
  if (v3)
  {
    v7 = MEMORY[0x277D837D0];
  }

  else
  {
    v4 = 0;
    v7 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v7;
  *(inited + 128) = 0x4974657070696E73;
  *(inited + 136) = 0xEB000000006E4F73;
  v8 = inited;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2AC();
  v9 = MEMORY[0x277D839B0];
  *(v8 + 144) = (v13 & 1) == 0;
  *(v8 + 168) = v9;
  *(v8 + 176) = 0xD00000000000001BLL;
  *(v8 + 184) = 0x8000000242C4E3D0;
  *(v8 + 216) = v9;
  *(v8 + 192) = 1;
  v10 = sub_242C4177C(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA070, &qword_242C4C9A0);
  swift_arrayDestroy();
  v11 = sub_242C40594(v10);

  return v11;
}

uint64_t sub_242C3FF00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA060, &qword_242C4C990);
    v2 = sub_242C4A60C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_242C3A388(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_242C3A5AC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_242C3A5AC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_242C3A5AC(v31, v32);
    result = sub_242C4A54C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_242C3A5AC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}