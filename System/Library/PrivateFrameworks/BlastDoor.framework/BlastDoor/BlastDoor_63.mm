uint64_t sub_2145BEE60()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_2145BEE90(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_2145BEEE8()
{
  v1 = *(v0 + 64);

  return v1;
}

void sub_2145BEF18(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

double sub_2145BEF70@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2145BEF90@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = *(v1 + 72);
  v4 = v11;
  v8[0] = *(v1 + 8);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2142F95FC(v8, &v7);
}

uint64_t Morphology.SupportedLanguage.stringRepresentation.getter()
{
  if (*v0)
  {
    return 28261;
  }

  else
  {
    return 0;
  }
}

BlastDoor::Morphology::SupportedLanguage_optional __swiftcall Morphology.SupportedLanguage.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

BlastDoor::Morphology __swiftcall Morphology.init()()
{
  *(v0 + 8) = MEMORY[0x277D84F90];
  *v0 = 3587;
  *(v0 + 2) = 6;
  return result;
}

unint64_t sub_2145BF208()
{
  result = qword_27C915EF0;
  if (!qword_27C915EF0)
  {
    result = swift_getWitnessTable(byte_214763540, &type metadata for GrammaticalGender, v0, v1);
    atomic_store(result, &qword_27C915EF0);
  }

  return result;
}

unint64_t sub_2145BF28C()
{
  result = qword_27C915EF8;
  if (!qword_27C915EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PartOfSpeech, &type metadata for PartOfSpeech, v0, v1);
    atomic_store(result, &qword_27C915EF8);
  }

  return result;
}

unint64_t sub_2145BF310()
{
  result = qword_27C915F00;
  if (!qword_27C915F00)
  {
    result = swift_getWitnessTable(aQi, &type metadata for GrammaticalNumber, v0, v1);
    atomic_store(result, &qword_27C915F00);
  }

  return result;
}

unint64_t sub_2145BF3EC()
{
  result = qword_27C915F08;
  if (!qword_27C915F08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Morphology.SupportedLanguage, &type metadata for Morphology.SupportedLanguage, v0, v1);
    atomic_store(result, &qword_27C915F08);
  }

  return result;
}

unint64_t sub_2145BF444()
{
  result = qword_27C915F10;
  if (!qword_27C915F10)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C915F18, &qword_214763990);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27C915F10);
  }

  return result;
}

uint64_t sub_2145BF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145BF57C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2145BF5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2145BF670()
{
  result = qword_27C915F20;
  if (!qword_27C915F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Morphology.SupportedLanguage, &type metadata for Morphology.SupportedLanguage, v0, v1);
    atomic_store(result, &qword_27C915F20);
  }

  return result;
}

unint64_t sub_2145BF6C4()
{
  result = qword_27C915F28;
  if (!qword_27C915F28)
  {
    result = swift_getWitnessTable(byte_2147637E0, &type metadata for GrammaticalNumber, v0, v1);
    atomic_store(result, &qword_27C915F28);
  }

  return result;
}

unint64_t sub_2145BF718()
{
  result = qword_27C915F30;
  if (!qword_27C915F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PartOfSpeech, &type metadata for PartOfSpeech, v0, v1);
    atomic_store(result, &qword_27C915F30);
  }

  return result;
}

unint64_t sub_2145BF76C()
{
  result = qword_27C915F38;
  if (!qword_27C915F38)
  {
    result = swift_getWitnessTable(byte_2147635A8, &type metadata for GrammaticalGender, v0, v1);
    atomic_store(result, &qword_27C915F38);
  }

  return result;
}

uint64_t sub_2145BF7C8()
{
  v1 = *v0;

  return v1;
}

void sub_2145BF7F8(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2145BF850@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BootstrappingInfo(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BootstrappingInfo(uint64_t a1)
{
  result = qword_27C915F50;
  if (!qword_27C915F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2145BF918(uint64_t a1)
{
  v3 = *(type metadata accessor for BootstrappingInfo(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2145BF9DC(uint64_t a1)
{
  *(a1 + 8) = sub_2145BFA44(&qword_27C915F40, byte_2146FC7F0);
  result = sub_2145BFA44(&qword_27C915F48, byte_2146FC818);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145BFA44(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for BootstrappingInfo(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2145BFAB0(uint64_t a1)
{
  result = sub_2146D8B08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145BFB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodedAppData.EncodedContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2145BFBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodedAppData.EncodedContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2145BFC48()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2145BFC7C(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2145BFCF4()
{
  v1 = *(v0 + *(type metadata accessor for EncodedAppData(0) + 20));

  return v1;
}

void sub_2145BFD54(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EncodedAppData(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2145BFDE4(uint64_t a1)
{
  *(a1 + 8) = sub_2145BFE88(&qword_27C915F60, type metadata accessor for EncodedAppData.Content, byte_2146FDE20);
  result = sub_2145BFE88(&qword_27C915F68, type metadata accessor for EncodedAppData.Content, byte_2146FDE48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145BFE88(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2145BFED0(uint64_t a1)
{
  *(a1 + 8) = sub_2145BFE88(&qword_27C906AB8, type metadata accessor for EncodedAppData.EncodedContent, aIq_0);
  result = sub_2145BFE88(&qword_27C906AC8, type metadata accessor for EncodedAppData.EncodedContent, byte_2147030C8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145BFF54(uint64_t a1)
{
  *(a1 + 8) = sub_21432293C();
  result = sub_214322894();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145BFF84(uint64_t a1)
{
  *(a1 + 8) = sub_2145BFE88(&qword_27C907E40, type metadata accessor for EncodedAppData, aY_35);
  result = sub_2145BFE88(&qword_27C907E88, type metadata accessor for EncodedAppData, byte_2146F94D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145C0030(uint64_t a1)
{
  result = type metadata accessor for EncodedAppData.EncodedContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145C00CC(uint64_t a1)
{
  result = type metadata accessor for EncodedAppData.EncodedContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145C0138(uint64_t a1)
{
  result = type metadata accessor for BusinessMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2145C01BC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x6D754E656E6F6870;
  v4 = inited + 32;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = inited;

    v6 = sub_2140457C0(v5);
    swift_setDeallocating();
    sub_21404C938(v4);
    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145C02C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145C0310(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C0370()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2145C03EC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = v3;
  v4 = &inited - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146ED4B0;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v7 = __swift_project_value_buffer(v6, qword_27CA19E80);
  v8 = *(*(v6 - 8) + 16);
  v8(v4, v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_2145DF420(v4, v11 + v10, type metadata accessor for SwiftRegexValidator);
  *(v9 + 16) = sub_2144A066C;
  *(v9 + 24) = v11;
  *(v5 + 32) = v9;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_27CA19F60);
  v8(v4, v12, v6);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  sub_2145DF420(v4, v14 + v10, type metadata accessor for SwiftRegexValidator);
  *(v13 + 16) = sub_2144A066C;
  *(v13 + 24) = v14;
  *(v5 + 40) = v13;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_27CA19DD8);
  v8(v4, v15, v6);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  sub_2145DF420(v4, v17 + v10, type metadata accessor for SwiftRegexValidator);
  *(v16 + 16) = sub_2144A066C;
  *(v16 + 24) = v17;
  *(v5 + 48) = v16;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v18 + 16) = sub_21439DF94;
  *(v18 + 24) = v19;
  v20 = inited;
  v21 = v24;
  *(inited + 32) = v18;
  return sub_214042B80(v20, v21);
}

uint64_t sub_2145C07D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145C0820(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C087C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2145C08F8@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282654678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404352C(inited, a1);
  v10 = *(type metadata accessor for Chatbot.Media(0) + 20);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 32;
  *(v14 + 24) = 0;
  *(v13 + 16) = sub_2143E18F8;
  *(v13 + 24) = v14;
  *(v12 + 32) = v13;
  v15 = sub_2142E0070(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = sub_214032610;
  *(v16 + 24) = v17;
  *(v11 + 32) = v16;
  return sub_214042A28(v11, &a1[v10]);
}

uint64_t sub_2145C0BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.Media(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145C0C48(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Chatbot.Media(0) + 20));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C0CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v1 + *(v6 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    return sub_214032588(v5, a1);
  }

  sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145C0E2C()
{
  v1 = v0 + *(type metadata accessor for Chatbot.Media(0) + 20);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

unint64_t sub_2145C0EC8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 500;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145C1014@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C106C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[10].n128_i64[0];
  v7 = v1[10].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v3;
  v1[10].n128_u64[1] = v4;
  v1[11].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C10D4()
{
  if (*(v0 + 168) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 160);

    return v1;
  }

  return result;
}

uint64_t sub_2145C1154@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145C11A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C11FC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2145C1278@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 100;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2145C13F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2145C1548@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826546B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2145C169C@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826546F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2145C17F0@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282654738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

uint64_t sub_2145C1944@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C199C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[15].n128_i64[0];
  v7 = v1[15].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[14] = *a1;
  v1[15].n128_u64[0] = v3;
  v1[15].n128_u64[1] = v4;
  v1[16].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C1A04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  *a1 = *(v1 + 264);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C1A5C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 264) = *a1;
  *(v1 + 280) = v3;
  *(v1 + 288) = v4;
  *(v1 + 296) = v5;
  return result;
}

uint64_t sub_2145C1AC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v5 = *(v1 + 336);
  *a1 = *(v1 + 304);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C1B20(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[20].n128_i64[0];
  v7 = v1[20].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[19] = *a1;
  v1[20].n128_u64[0] = v3;
  v1[20].n128_u64[1] = v4;
  v1[21].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C1D58()
{
  if (*(v0 + 248) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 240);

    return v1;
  }

  return result;
}

uint64_t sub_2145C1DD8()
{
  if (*(v0 + 288) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 280);

    return v1;
  }

  return result;
}

uint64_t sub_2145C1E58()
{
  if (*(v0 + 328) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 320);

    return v1;
  }

  return result;
}

uint64_t sub_2145C1ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = v1 + *(type metadata accessor for Chatbot.BotInfo(0) + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
  {
    return sub_214032588(v5, a1);
  }

  sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145C2054@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = v1 + *(type metadata accessor for Chatbot.BotInfo(0) + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
  {
    return sub_214032588(v5, a1);
  }

  sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145C21D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = v1 + *(type metadata accessor for Chatbot.BotInfo(0) + 44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
  {
    return sub_214032588(v5, a1);
  }

  sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145C234C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145C2498@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C24F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2145C2558()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

unint64_t sub_2145C25D8@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282654638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2145C27C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 2048;
  *(v3 + 16) = sub_214409FBC;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_213FB7994;
  v7[3] = 0;
  v7[4] = 2048;
  *(v6 + 16) = sub_214059804;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_214042B80(v5, a1 + 40);
}

unint64_t sub_2145C2910@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SwiftRegexValidator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146EAEB0;
  v8 = sub_214069764(&unk_282654838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214059810;
  *(v9 + 24) = v10;
  *(v7 + 32) = v9;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = __swift_project_value_buffer(v11, qword_27CA19E80);
  (*(*(v11 - 8) + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  v13 = swift_allocObject();
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_2145DF420(v5, v15 + v14, type metadata accessor for SwiftRegexValidator);
  *(v13 + 16) = sub_214302808;
  *(v13 + 24) = v15;
  *(v7 + 40) = v13;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v16 + 16) = sub_21439DF54;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  return sub_214042B80(inited, a1);
}

unint64_t sub_2145C2BC8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v4 + 16) = sub_214084D54;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145C2D08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C2D60(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2145C2DC8()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_2145C2E48@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DFC4;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = *(type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0) + 20);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2146E9BF0;
  v7 = sub_214069764(&unk_2826544B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21438F524;
  *(v8 + 24) = v9;
  *(v6 + 32) = v8;
  v10 = sub_2142E0124(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_2145DF4A4;
  *(v11 + 24) = v12;
  *(v5 + 32) = v11;
  return sub_21404352C(v5, (a1 + v4));
}

unint64_t sub_2145C306C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DFC4;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 60;
  *(v7 + 24) = 0;
  *(v6 + 16) = sub_21438F518;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  v8 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214032610;
  *(v9 + 24) = v10;
  *(v4 + 32) = v9;
  sub_214042A28(v4, a1 + 40);
  v11 = *(type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0) + 24);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146E9BF0;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = sub_214069764(&unk_2826544F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v15 + 16) = sub_21438F524;
  *(v15 + 24) = v16;
  *(v13 + 32) = v15;
  v17 = sub_2142E0124(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_2145DF4A4;
  *(v18 + 24) = v19;
  *(v12 + 32) = v18;
  return sub_21404352C(v12, (a1 + v11));
}

uint64_t sub_2145C3324@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C337C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2145C3500()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_2145C3598@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = v2 + *(a1(0) + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v8 + *(v9 + 28), v7, &qword_27C903F40, &unk_2146F1C50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
  {
    return sub_214032588(v7, a2);
  }

  sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145C371C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DFC4;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = *(type metadata accessor for Chatbot.DialerAction.DialVideoCall(0) + 20);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2146E9BF0;
  v7 = sub_214069764(&unk_282654478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21438F524;
  *(v8 + 24) = v9;
  *(v6 + 32) = v8;
  v10 = sub_2142E0124(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_2145DF4A4;
  *(v11 + 24) = v12;
  *(v5 + 32) = v11;
  return sub_21404352C(v5, (a1 + v4));
}

uint64_t sub_2145C39E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = v2 + *(a1(0) + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v8 + *(v9 + 28), v7, &qword_27C903F40, &unk_2146F1C50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
  {
    return sub_214032588(v7, a2);
  }

  sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145C3B6C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 100;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145C3CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145C3D10(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_i64[0];
  v7 = v1[5].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  v1[6].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C3D78()
{
  if (*(v0 + 88) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 80);

    return v1;
  }

  return result;
}

unint64_t sub_2145C3DF8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_214741330;
  *(v3 + 16) = sub_214442A04;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_2140442CC(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214741340;
  *(v6 + 16) = sub_214442A14;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_2140442CC(v5, a1 + 32);
}

uint64_t sub_2145C3F40@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2145C3F64(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_2145C3FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2145C3FE0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  return result;
}

uint64_t sub_2145C4038()
{
  if (*(v0 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145C409C()
{
  if (*(v0 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2145C4100@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826547F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2145C42BC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 500;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2145C4408@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282654538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

uint64_t sub_2145C455C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_2145C45DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C4648@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145C46B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C47BC()
{
  v1 = v0 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145C4848()
{
  v1 = v0 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_2145C48D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = v1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 32);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
  {
    return sub_214032588(v5, a1);
  }

  sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145C4A54@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 100;
  *(v6 + 24) = 0;
  *(v5 + 16) = sub_21438F518;
  *(v5 + 24) = v6;
  *(v4 + 32) = v5;
  return sub_214042B80(v4, a1 + 40);
}

uint64_t sub_2145C4B84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145C4BD4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2145C4C38()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145C4CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145C4D00(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C4D5C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2145C4DD8@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826547B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2145C4F60@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146ED240;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21449BD7C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_2145C50A4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145C524C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_2145C52CC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 20));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C5338@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_2145C5398(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 24));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_2145C5450@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145C54BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 32));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C5534@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2145C559C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 36));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2145C560C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145C5678(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for Chatbot.CardMedia(0) + 44));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145C56F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v6 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145C5878()
{
  v1 = v0 + *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145C5904()
{
  v1 = v0 + *(type metadata accessor for Chatbot.CardMedia(0) + 24);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145C5990()
{
  v1 = v0 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_2145C5A20()
{
  v1 = v0 + *(type metadata accessor for Chatbot.CardMedia(0) + 36);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145C5A9C()
{
  v1 = v0 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

unint64_t sub_2145C5B2C@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826545B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2145C5D08@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282654578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF4A4;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

uint64_t sub_2145C5F90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = v2 + *(a1(0) + 28);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v8 + *(v9 + 28), v7, &qword_27C903F40, &unk_2146F1C50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
  {
    return sub_214032588(v7, a2);
  }

  sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145C6114@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826545F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21409A858;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2145DF114;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_21404352C(inited, a1);
}

uint64_t sub_2145C62F0(uint64_t result, unint64_t a2, char a3, uint64_t a4)
{
  v6 = result;
  if (a3 != 2)
  {
    v7 = *(a4 + 24);
    v11 = a3 & 1;
    result = v7(&v11);
    if (result)
    {
      return 1;
    }
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      result = 0;
      return (*a4)(result, *(a4 + 16)) & 1;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      return (*a4)(result, *(a4 + 16)) & 1;
    }

    __break(1u);
  }

  else if (!v8)
  {
    result = BYTE6(a2);
    return (*a4)(result, *(a4 + 16)) & 1;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    __break(1u);
    return result;
  }

  result = HIDWORD(v6) - v6;
  return (*a4)(result, *(a4 + 16)) & 1;
}

void (*sub_2145C63B8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145C6454(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*sub_2145C64F0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145C658C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2145C6624@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145C6670(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

void sub_2145C66EC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145C6834(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145C68D0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

uint64_t sub_2145C6974()
{
  if (*v0)
  {
    return 0x726568744FLL;
  }

  else
  {
    return 0x4952552D504953;
  }
}

uint64_t sub_2145C69AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726568744FLL;
  }

  else
  {
    v3 = 0x4952552D504953;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726568744FLL;
  }

  else
  {
    v5 = 0x4952552D504953;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2145C6A50()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145C6AD0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145C6B3C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145C6BC4(uint64_t *a1@<X8>)
{
  v2 = 0x4952552D504953;
  if (*v1)
  {
    v2 = 0x726568744FLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2145C6CBC()
{
  if (*v0)
  {
    return 5459283;
  }

  else
  {
    return 0x4965636976726553;
  }
}

uint64_t sub_2145C6CF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 5459283;
  }

  else
  {
    v3 = 0x4965636976726553;
  }

  if (v2)
  {
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 5459283;
  }

  else
  {
    v5 = 0x4965636976726553;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2145C6D98()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145C6E18(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145C6E84(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145C6F0C(uint64_t *a1@<X8>)
{
  v2 = 5459283;
  if (!*v1)
  {
    v2 = 0x4965636976726553;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2145C6FF8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145C7140(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145C71DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2145C72E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_214318110(v11, v10);
}

__n128 sub_2145C7354(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_214318014(v10);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t sub_2145C7448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(a1 + *(v7 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    return sub_214032588(v6, a2);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145C75B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_213FB2E54(a1, &v9 - v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v7, v5, &unk_27C9131A0, &unk_2146E9D10);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145C76A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_213FB2E54(a1, &v6 - v3, &unk_27C9131A0, &unk_2146E9D10);
  sub_21402F5FC(v4);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145C775C(void *a1))(void *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v3);
  }

  v6 = v5;
  a1[1] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  if (v4)
  {
    a1[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(*(*(v7 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  a1[3] = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v1 + *(v12 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v6, v11);
    return sub_214097FAC;
  }

  return result;
}

void (*sub_2145C7958(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145C7A08;
}

void sub_2145C7A1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.Media(0) + 20);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

void sub_2145C7AB8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.Media(0) + 20);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145C7C08(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Chatbot.Media(0) + 20);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2145C7CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.Media(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2145C7D64(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.Media(0) + 20);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2145C7DFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Chatbot.Media(0) + 20);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

void sub_2145C7EA8(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_2145C801C()
{
  if (*v0)
  {
    return 0x726568744FLL;
  }

  else
  {
    return 1869049676;
  }
}

uint64_t sub_2145C804C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726568744FLL;
  }

  else
  {
    v3 = 1869049676;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726568744FLL;
  }

  else
  {
    v5 = 1869049676;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2145C80E8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145C8160(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145C81C4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145C8244(uint64_t *a1@<X8>)
{
  v2 = 1869049676;
  if (*v1)
  {
    v2 = 0x726568744FLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2145C83D4@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Chatbot.MediaEntry(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_2145C8428(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Chatbot.MediaEntry(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void (*sub_2145C84C4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145C8560(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2145C864C(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

void sub_2145C8730(uint64_t a1@<X8>)
{
  strcpy(a1, "OfficialName");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void (*sub_2145C8804(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145C88A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2145C8960@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C90BC98, &unk_214763E30);
}

__n128 sub_2145C89D0(uint64_t a1)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v4 = v1[7];
  v12[6] = v1[6];
  v12[7] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  sub_213FB2DF4(v12, &qword_27C90BC98, &unk_214763E30);
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  v8 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v8;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v11;
  return result;
}

uint64_t sub_2145C8A70@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = v2;
  return sub_213FBE134(v2);
}

uint64_t sub_2145C8A7C(uint64_t *a1)
{
  v2 = *a1;
  result = sub_213FB7170(*(v1 + 128));
  *(v1 + 128) = v2;
  return result;
}

void sub_2145C8B1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 168);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 160);
    a2[1] = v4;
  }
}

double sub_2145C8B90(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145C8C40(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 144);
  v8 = *(v2 + 176);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 160), *(v2 + 168));

    *(v2 + 160) = a1;
    *(v2 + 168) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145C8D84(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 160);
  *(v3 + 24) = v5;
  v6 = *(v1 + 168);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145C8E5C;
  }

  return result;
}

void sub_2145C8E5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 144);
    v13 = *(v3 + 176);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 160) = v5;
      *(v9 + 168) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 144);
  v13 = *(v3 + 176);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 160) = v5;
  *(v7 + 168) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2145C902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  *a2 = *(a1 + 144);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145C9080(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 160);
  v9 = *(a2 + 168);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 144) = v4;
  *(a2 + 152) = v3;
  *(a2 + 160) = v5;
  *(a2 + 168) = v6;
  *(a2 + 176) = v7;
  return result;
}

void (*sub_2145C9108(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  *v4 = *(v1 + 144);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145C91A8;
}

void sub_2145C91A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 160);
  v10 = *(v3 + 168);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v7;
    *(v3 + 168) = v6;
    *(v3 + 176) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v7;
    *(v3 + 168) = v6;
    *(v3 + 176) = v8;
  }

  free(v2);
}

uint64_t sub_2145C9288@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = v2;
  return sub_213FBE134(v2);
}

uint64_t sub_2145C9294(uint64_t *a1)
{
  v2 = *a1;
  result = sub_213FB7170(*(v1 + 184));
  *(v1 + 184) = v2;
  return result;
}

uint64_t sub_2145C92E0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v28 = v1[8];
  v29 = v2;
  v4 = v1[9];
  v5 = v1[11];
  v30 = v1[10];
  v6 = v30;
  v31 = v5;
  v7 = v1[5];
  v9 = v1[3];
  v24 = v1[4];
  v8 = v24;
  v25 = v7;
  v10 = v1[5];
  v11 = v1[7];
  v26 = v1[6];
  v12 = v26;
  v27 = v11;
  v13 = v1[1];
  v21[0] = *v1;
  v21[1] = v13;
  v14 = v1[3];
  v16 = *v1;
  v15 = v1[1];
  v22 = v1[2];
  v17 = v22;
  v23 = v14;
  a1[8] = v28;
  a1[9] = v4;
  v18 = v1[11];
  a1[10] = v6;
  a1[11] = v18;
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v3;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v9;
  return sub_213FB2E54(v21, &v20, &qword_27C90BD68, &qword_2146F6980);
}

__n128 sub_2145C9384(uint64_t a1)
{
  v3 = v1[9];
  v16[8] = v1[8];
  v16[9] = v3;
  v4 = v1[11];
  v16[10] = v1[10];
  v16[11] = v4;
  v5 = v1[5];
  v16[4] = v1[4];
  v16[5] = v5;
  v6 = v1[7];
  v16[6] = v1[6];
  v16[7] = v6;
  v7 = v1[1];
  v16[0] = *v1;
  v16[1] = v7;
  v8 = v1[3];
  v16[2] = v1[2];
  v16[3] = v8;
  sub_213FB2DF4(v16, &qword_27C90BD68, &qword_2146F6980);
  v9 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v9;
  v10 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v10;
  v11 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v11;
  v12 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v12;
  v13 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v13;
  result = *(a1 + 32);
  v15 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v15;
  return result;
}

uint64_t sub_2145C9444()
{
  v1 = *(v0 + 192);

  return v1;
}

void sub_2145C9474(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
}

void sub_2145C94CC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145C9614(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145C96B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t sub_2145C9748()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_2145C9778(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_2145C97F0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[11];
  v30 = v1[10];
  v31 = v3;
  v4 = v1[11];
  v32 = v1[12];
  v5 = v1[5];
  v6 = v1[7];
  v26 = v1[6];
  v7 = v26;
  v27 = v6;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[1];
  v12 = v1[3];
  v22 = v1[2];
  v13 = v22;
  v23 = v12;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_214319F2C(v21, &v20);
}

__n128 sub_2145C9890(uint64_t a1)
{
  v3 = v1[11];
  v15[10] = v1[10];
  v15[11] = v3;
  v15[12] = v1[12];
  v4 = v1[7];
  v15[6] = v1[6];
  v15[7] = v4;
  v5 = v1[9];
  v15[8] = v1[8];
  v15[9] = v5;
  v6 = v1[3];
  v15[2] = v1[2];
  v15[3] = v6;
  v7 = v1[5];
  v15[4] = v1[4];
  v15[5] = v7;
  v8 = v1[1];
  v15[0] = *v1;
  v15[1] = v8;
  sub_214319E00(v15);
  v9 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v9;
  v1[12] = *(a1 + 192);
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t sub_2145C9950()
{
  v1 = *(v0 + 208);

  return v1;
}

void sub_2145C9980(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
}

void sub_2145C99D8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 224);
  v8 = *(v2 + 256);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 240), *(v2 + 248));

    *(v2 + 240) = a1;
    *(v2 + 248) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145C9B1C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 240);
  *(v3 + 24) = v5;
  v6 = *(v1 + 248);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145B50D0;
  }

  return result;
}

void (*sub_2145C9BF4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 232);
  v6 = *(v1 + 240);
  v7 = *(v1 + 248);
  v8 = *(v1 + 256);
  *v4 = *(v1 + 224);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145B541C;
}

void sub_2145C9C94(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 264);
  v8 = *(v2 + 296);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 280), *(v2 + 288));

    *(v2 + 280) = a1;
    *(v2 + 288) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145C9DD8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 280);
  *(v3 + 24) = v5;
  v6 = *(v1 + 288);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145B583C;
  }

  return result;
}

void (*sub_2145C9EB0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 272);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  v8 = *(v1 + 296);
  *v4 = *(v1 + 264);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145B5B88;
}

void sub_2145C9F50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 328);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 320);
    a2[1] = v4;
  }
}

double sub_2145C9FC4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145CA074(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 304);
  v8 = *(v2 + 336);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 320), *(v2 + 328));

    *(v2 + 320) = a1;
    *(v2 + 328) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145CA1B8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 320);
  *(v3 + 24) = v5;
  v6 = *(v1 + 328);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145CA290;
  }

  return result;
}

void sub_2145CA290(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 304);
    v13 = *(v3 + 336);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 320) = v5;
      *(v9 + 328) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 304);
  v13 = *(v3 + 336);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 320) = v5;
  *(v7 + 328) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2145CA460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 312);
  v3 = *(a1 + 320);
  v4 = *(a1 + 328);
  v5 = *(a1 + 336);
  *a2 = *(a1 + 304);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145CA4B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 320);
  v9 = *(a2 + 328);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 304) = v4;
  *(a2 + 312) = v3;
  *(a2 + 320) = v5;
  *(a2 + 328) = v6;
  *(a2 + 336) = v7;
  return result;
}

void (*sub_2145CA53C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 312);
  v6 = *(v1 + 320);
  v7 = *(v1 + 328);
  v8 = *(v1 + 336);
  *v4 = *(v1 + 304);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145CA5DC;
}

void sub_2145CA5DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 320);
  v10 = *(v3 + 328);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 304) = v5;
    *(v3 + 312) = v4;
    *(v3 + 320) = v7;
    *(v3 + 328) = v6;
    *(v3 + 336) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 304) = v5;
    *(v3 + 312) = v4;
    *(v3 + 320) = v7;
    *(v3 + 328) = v6;
    *(v3 + 336) = v8;
  }

  free(v2);
}

uint64_t sub_2145CA6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = a1 + *(type metadata accessor for Chatbot.BotInfo(0) + 36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
  {
    return sub_214032588(v6, a2);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145CA83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_213FB2E54(a1, &v9 - v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v7, v5, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.BotInfo(0);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145CA93C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_213FB2E54(a1, &v6 - v3, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.BotInfo(0);
  sub_21402F5FC(v4);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145CAA00(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.BotInfo(0) + 36);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145CAC30(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.BotInfo(0) + 36);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145CACF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = a1 + *(type metadata accessor for Chatbot.BotInfo(0) + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
  {
    return sub_214032588(v6, a2);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145CAE70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_213FB2E54(a1, &v9 - v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v7, v5, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.BotInfo(0);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145CAF70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_213FB2E54(a1, &v6 - v3, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.BotInfo(0);
  sub_21402F5FC(v4);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145CB034(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.BotInfo(0) + 40);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145CB264(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.BotInfo(0) + 40);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

void sub_2145CB324(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_21402EDB8(v1, *a1 + *(a1 + 16), &qword_27C903F38, &unk_2146E9D40);

  free(v1);
}

uint64_t sub_2145CB378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = a1 + *(type metadata accessor for Chatbot.BotInfo(0) + 44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
  {
    return sub_214032588(v6, a2);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145CB4F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_213FB2E54(a1, &v9 - v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v7, v5, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.BotInfo(0);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145CB5F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_213FB2E54(a1, &v6 - v3, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.BotInfo(0);
  sub_21402F5FC(v4);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145CB6BC(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.BotInfo(0) + 44);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145CB8EC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.BotInfo(0) + 44);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145CB9AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Chatbot.BotInfo(0) + 48));
  *a1 = v3;

  return sub_213FBE134(v3);
}

uint64_t sub_2145CB9F0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for Chatbot.BotInfo(0) + 48);
  result = sub_213FB7170(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

void sub_2145CBAA8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145CBBEC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*sub_2145CBCC4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_2145CBE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2145CBF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_2145CC014@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for Chatbot.Info(0) + 20));

  return result;
}

void sub_2145CC058(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for Chatbot.Info(0) + 20);

  *(v1 + v3) = v2;
}

void (*sub_2145CC0F8(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.Info(0) + 24);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145CC328(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.Info(0) + 24);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

void (*sub_2145CC480(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CC51C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*sub_2145CC5D8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CC674(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*sub_2145CC7B4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CC850(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t (*sub_2145CC8E8(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144158A0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CC984(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144158A4;
}

void (*sub_2145CCA1C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CCAB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2145CCB50@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 97);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_213FB2E54(v8, &v7, &qword_27C90BFF8, &qword_214763E40);
}

__n128 sub_2145CCBB4(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v9[0] = v4;
  *(v9 + 9) = *(v1 + 97);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C90BFF8, &qword_214763E40);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  v6 = a1[3];
  *(v1 + 72) = a1[2];
  *(v1 + 88) = v6;
  result = *(a1 + 57);
  *(v1 + 97) = result;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2145CCC54@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_21431AC80(v11, v10);
}

__n128 sub_2145CCCC4(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_2143271A8(v10);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t sub_2145CCD70()
{
  if (*v0)
  {
    return 0x77656976626577;
  }

  else
  {
    return 0x726573776F7262;
  }
}

uint64_t sub_2145CCDA4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x77656976626577;
  }

  else
  {
    v2 = 0x726573776F7262;
  }

  if (*a2)
  {
    v3 = 0x77656976626577;
  }

  else
  {
    v3 = 0x726573776F7262;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2145CCE2C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145CCEA4(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145CCF00(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145CCF80(uint64_t *a1@<X8>)
{
  v2 = 0x726573776F7262;
  if (*v1)
  {
    v2 = 0x77656976626577;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

void sub_2145CD068(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2145CD0DC(char *a1, char *a2)
{
  if (*&aFull_3[8 * *a1] == *&aFull_3[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2145CD144()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145CD1A0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145CD1E0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void (*sub_2145CD310(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CD3AC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2145CD4B4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145CD5F8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145DF56C;
  }

  return result;
}

void (*sub_2145CD6D0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145DF570;
}

void (*sub_2145CD770(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CD80C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*sub_2145CD8BC(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0) + 20);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145CDAEC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0) + 20);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

void (*sub_2145CDBAC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CDC48(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2145CDCE0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145CDE24(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F652C;
  }

  return result;
}

void (*sub_2145CDEFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F65D0;
}

uint64_t sub_2145CDF9C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = a1 + *(a2(0) + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v9 + *(v10 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) != 1)
  {
    return sub_214032588(v8, a3);
  }

  sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145CE124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  sub_213FB2E54(a1, &v14 - v11, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v12, v10, &unk_27C9131A0, &unk_2146E9D10);
  a5(0);
  sub_21402F5FC(v10);
  return sub_213FB2DF4(v12, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145CE24C(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_213FB2E54(a1, &v8 - v5, &unk_27C9131A0, &unk_2146E9D10);
  a2(0);
  sub_21402F5FC(v6);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145CE318(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0) + 24);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145CE548(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0) + 24);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

void (*sub_2145CE60C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CE6A8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2145CE740@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = a1 + *(a2(0) + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v9 + *(v10 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) != 1)
  {
    return sub_214032588(v8, a3);
  }

  sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145CE8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  sub_213FB2E54(a1, &v14 - v11, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v12, v10, &unk_27C9131A0, &unk_2146E9D10);
  a5(0);
  sub_21402F5FC(v10);
  return sub_213FB2DF4(v12, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145CE9F0(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_213FB2E54(a1, &v8 - v5, &unk_27C9131A0, &unk_2146E9D10);
  a2(0);
  sub_21402F5FC(v6);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145CEABC(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.DialerAction.DialVideoCall(0) + 20);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145CECEC;
  }

  return result;
}

void (*sub_2145CECF0(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.DialerAction.DialVideoCall(0) + 20);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145CEDB0;
}

uint64_t (*sub_2145CEDB8(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_214441BB4;
  }

  return result;
}

void (*sub_2145CEE40(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

uint64_t (*sub_2145CEEFC(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 48);
    return sub_214441DEC;
  }

  return result;
}

void (*sub_2145CEF84(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214441F1C;
}

void (*sub_2145CF01C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145CF0B8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2145CF150@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_21431B458(v7, &v6);
}

__n128 sub_2145CF19C(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_21431B404(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

void sub_2145CF21C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 88);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 80);
    a2[1] = v4;
  }
}

double sub_2145CF290(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145CF340(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 64);
  v8 = *(v2 + 96);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 80), *(v2 + 88));

    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145CF484(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 80);
  *(v3 + 24) = v5;
  v6 = *(v1 + 88);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145CF55C;
  }

  return result;
}

void sub_2145CF55C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 64);
    v13 = *(v3 + 96);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 80) = v5;
      *(v9 + 88) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 64);
  v13 = *(v3 + 96);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 80) = v5;
  *(v7 + 88) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2145CF72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  *a2 = *(a1 + 64);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145CF780(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  return result;
}

void (*sub_2145CF808(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145CF8A8;
}

void sub_2145CF8A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = v8;
  }

  free(v2);
}

uint64_t sub_2145CF988@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_21431B4B4(v10, v9);
}

__n128 sub_2145CF9E4(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_21431B308(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

void (*sub_2145CFA8C(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.MapAction.ShowLocation(0) + 20);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145CFCBC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.MapAction.ShowLocation(0) + 20);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145CFD7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2145CFDE4(uint64_t a1)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2145CFE6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2145CFEE8(uint64_t a1)
{
  v3 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void sub_2145CFFAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2145D0044(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145D010C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145D0260(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145D0344;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145D0348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_2145D03AC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_2145D0434(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145D04E0;
}

void sub_2145D04E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_2145D0580(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145D0648(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145D0798(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2145D0884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2145D08F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2145D098C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t sub_2145D0A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = a1 + *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
  {
    return sub_214032588(v6, a2);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145D0BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_213FB2E54(a1, &v9 - v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v7, v5, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145D0CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_213FB2E54(a1, &v6 - v3, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  sub_21402F5FC(v4);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145D0D7C(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 32);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145D0FAC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.CalendarAction.CreateEvent(0) + 32);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

void (*sub_2145D1070(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145D110C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

double sub_2145D11A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  a5(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145D1260(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2145D13A8(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145D1444(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21441238C;
}

uint64_t sub_2145D14E8()
{
  if (*v0)
  {
    return 0x4F45444956;
  }

  else
  {
    return 0x4F49445541;
  }
}

uint64_t sub_2145D1514(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4F45444956;
  }

  else
  {
    v2 = 0x4F49445541;
  }

  if (*a2)
  {
    v3 = 0x4F45444956;
  }

  else
  {
    v3 = 0x4F49445541;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2145D1594()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145D1604(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145D1658(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D16D0(uint64_t *a1@<X8>)
{
  v2 = 0x4F49445541;
  if (*v1)
  {
    v2 = 0x4F45444956;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

void sub_2145D17B0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145D18F8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145D1994(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2145D1A88(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002147A51D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_2145D1B1C(uint64_t a1)
{
  v2 = sub_2145D1DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D1B58(uint64_t a1)
{
  v2 = sub_2145D1DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D1B94(uint64_t a1)
{
  v2 = sub_2145D1E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D1BD0(uint64_t a1)
{
  v2 = sub_2145D1E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D1C0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915F80, &qword_214763E48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915F88, &qword_214763E50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D1DE4();
  sub_2146DAA28();
  sub_2145D1E38();
  sub_2146DA288();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2145D1DE4()
{
  result = qword_27C915F90;
  if (!qword_27C915F90)
  {
    result = swift_getWitnessTable(byte_214766B94, &type metadata for Chatbot.DeviceAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C915F90);
  }

  return result;
}

unint64_t sub_2145D1E38()
{
  result = qword_27C915F98;
  if (!qword_27C915F98)
  {
    result = swift_getWitnessTable(byte_214766B44, &type metadata for Chatbot.DeviceAction.RequestDeviceSpecificsCodingKeys, v0, v1);
    atomic_store(result, &qword_27C915F98);
  }

  return result;
}

uint64_t sub_2145D1EB4()
{
  sub_2146DA958();
  MEMORY[0x216055860](0);
  return sub_2146DA9B8();
}

uint64_t sub_2145D1EF8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FA0, &qword_214763E58);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FA8, &unk_214763E60);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D1DE4();
  sub_2146DAA08();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_2146DA238();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_21439DF74() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_2146D9F58();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v16 = &type metadata for Chatbot.DeviceAction;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_2145D1E38();
  sub_2146DA0B8();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_2145D225C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915F80, &qword_214763E48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915F88, &qword_214763E50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D1DE4();
  sub_2146DAA28();
  sub_2145D1E38();
  sub_2146DA288();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2145D244C()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_2145D2488(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002147A51F0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002147A5210 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_2145D256C(uint64_t a1)
{
  v2 = sub_2145D2984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D25A8(uint64_t a1)
{
  v2 = sub_2145D2984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D25E4(uint64_t a1)
{
  v2 = sub_2145D2A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D2620(uint64_t a1)
{
  v2 = sub_2145D2A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D265C(uint64_t a1)
{
  v2 = sub_2145D29D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D2698(uint64_t a1)
{
  v2 = sub_2145D29D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D26D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FB0, &qword_214763E70);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FB8, &qword_214763E78);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FC0, &qword_214763E80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D2984();
  sub_2146DAA28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2145D29D8();
    v14 = v18;
    sub_2146DA288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2145D2A2C();
    sub_2146DA288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2145D2984()
{
  result = qword_27C915FC8;
  if (!qword_27C915FC8)
  {
    result = swift_getWitnessTable(a5k_0, &type metadata for Chatbot.SettingsAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C915FC8);
  }

  return result;
}

unint64_t sub_2145D29D8()
{
  result = qword_27C915FD0;
  if (!qword_27C915FD0)
  {
    result = swift_getWitnessTable(byte_214766AA4, &type metadata for Chatbot.SettingsAction.EnableDisplayedNotificationsCodingKeys, v0, v1);
    atomic_store(result, &qword_27C915FD0);
  }

  return result;
}

unint64_t sub_2145D2A2C()
{
  result = qword_27C915FD8;
  if (!qword_27C915FD8)
  {
    result = swift_getWitnessTable(byte_214766A54, &type metadata for Chatbot.SettingsAction.DisableAnonymizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C915FD8);
  }

  return result;
}

uint64_t sub_2145D2AAC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2145D2AF4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FE0, &qword_214763E88);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FE8, &qword_214763E90);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FF0, &unk_214763E98);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D2984();
  v12 = v31;
  sub_2146DAA08();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_2146DA238();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_21439DF70();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2146D9F58();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v22 = &type metadata for Chatbot.SettingsAction;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2145D29D8();
        sub_2146DA0B8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2145D2A2C();
        sub_2146DA0B8();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2145D2FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_21431AC80(v11, v10);
}

__n128 sub_2145D3050(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_21431AB00(v10);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t sub_2145D3278()
{
  if (*v0)
  {
    return 0x544E4F5A49524F48;
  }

  else
  {
    return 0x4C41434954524556;
  }
}

uint64_t sub_2145D32B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x544E4F5A49524F48;
  }

  else
  {
    v3 = 0x4C41434954524556;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000004C41;
  }

  if (*a2)
  {
    v5 = 0x544E4F5A49524F48;
  }

  else
  {
    v5 = 0x4C41434954524556;
  }

  if (*a2)
  {
    v6 = 0xEA00000000004C41;
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
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2145D3364()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145D33EC(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145D3460(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D34F0(uint64_t *a1@<X8>)
{
  v2 = 0x4C41434954524556;
  if (*v1)
  {
    v2 = 0x544E4F5A49524F48;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000004C41;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2145D35E4(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2145D3640()
{
  v1 = 1684828002;
  if (*v0 != 1)
  {
    v1 = 0x6E696C7265646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7363696C617469;
  }
}

uint64_t sub_2145D3698(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684828002;
  if (v2 != 1)
  {
    v4 = 0x6E696C7265646E75;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7363696C617469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684828002;
  if (*a2 != 1)
  {
    v8 = 0x6E696C7265646E75;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7363696C617469;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2145D3794()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145D3834(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145D38C0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D3968(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684828002;
  if (v2 != 1)
  {
    v5 = 0x6E696C7265646E75;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7363696C617469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_2145D3A74(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2145D3AD0()
{
  v1 = 0x485F4D554944454DLL;
  if (*v0 != 1)
  {
    v1 = 0x4945485F4C4C4154;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x45485F54524F4853;
  }
}

uint64_t sub_2145D3B48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x485F4D554944454DLL;
  v4 = 0xED00005448474945;
  if (v2 != 1)
  {
    v3 = 0x4945485F4C4C4154;
    v4 = 0xEB00000000544847;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x45485F54524F4853;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000054484749;
  }

  v7 = 0x485F4D554944454DLL;
  v8 = 0xED00005448474945;
  if (*a2 != 1)
  {
    v7 = 0x4945485F4C4C4154;
    v8 = 0xEB00000000544847;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x45485F54524F4853;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000054484749;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2145D3C78()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145D3D38(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145D3DE4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D3EAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000054484749;
  v4 = 0xED00005448474945;
  v5 = 0x485F4D554944454DLL;
  if (v2 != 1)
  {
    v5 = 0x4945485F4C4C4154;
    v4 = 0xEB00000000544847;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x45485F54524F4853;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2145D3FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(a1 + *(v7 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145D4164(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_21402F904(v6);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_2145D4294(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  sub_21402F904(v5);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2145D4380(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v15 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_21440FDC8;
  }

  return result;
}

void (*sub_2145D45AC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &unk_27C9131D0, &qword_2146EAA70);
  return sub_2145D465C;
}

void sub_2145D4670(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a1[1];
  sub_21402EDB8(v4, *a1, a3, a4);

  free(v4);
}

void sub_2145D46AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2145D4744(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  (a5)(0, a2, a3, a4);
  a6(v7, v8, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145D4818(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145D496C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145D4A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_2145D4AB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 20);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_2145D4B3C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_2145D4BE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Chatbot.CardMedia(0);
  v5 = a1 + *(result + 24);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_2145D4CA8(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Chatbot.CardMedia(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_2145D4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_2145D4DB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

void (*sub_2145D4E30(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451ABE0;
}

void (*sub_2145D4EF4(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.CardMedia(0) + 28);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145D5124(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.CardMedia(0) + 28);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

void sub_2145D51E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_2145D5280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Chatbot.CardMedia(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145D5348(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145D5498(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 32);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2145D5584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2145D55F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2145D568C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_2145D5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for Chatbot.CardMedia(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2145D5814(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Chatbot.CardMedia(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_21406646C;
  }

  return result;
}

uint64_t sub_2145D58C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2145D5934(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 36);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2145D59B8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 36);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_214066720;
}

uint64_t sub_2145D5A6C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Chatbot.CardMedia(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_2145D5AA0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Chatbot.CardMedia(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

void sub_2145D5B18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_2145D5BB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Chatbot.CardMedia(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145D5C7C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145D5DCC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 44);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}