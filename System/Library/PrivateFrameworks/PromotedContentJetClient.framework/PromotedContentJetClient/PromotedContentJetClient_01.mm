unint64_t sub_22FFFFCE4()
{
  result = qword_27DB061A8;
  if (!qword_27DB061A8)
  {
    result = swift_getWitnessTable(aJR, &type metadata for FieldValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB061A8);
  }

  return result;
}

unint64_t sub_22FFFFD3C()
{
  result = qword_27DB061B0;
  if (!qword_27DB061B0)
  {
    result = swift_getWitnessTable(byte_2300345C0, &type metadata for FieldValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB061B0);
  }

  return result;
}

unint64_t sub_22FFFFD94()
{
  result = qword_27DB061B8;
  if (!qword_27DB061B8)
  {
    result = swift_getWitnessTable(byte_2300344E0, &type metadata for FieldValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB061B8);
  }

  return result;
}

unint64_t sub_22FFFFDEC()
{
  result = qword_27DB061C0;
  if (!qword_27DB061C0)
  {
    result = swift_getWitnessTable(byte_230034508, &type metadata for FieldValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB061C0);
  }

  return result;
}

unint64_t sub_22FFFFE44()
{
  result = qword_27DB061C8;
  if (!qword_27DB061C8)
  {
    result = swift_getWitnessTable(byte_2300347C0, &type metadata for FieldValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB061C8);
  }

  return result;
}

unint64_t sub_22FFFFE9C()
{
  result = qword_27DB061D0;
  if (!qword_27DB061D0)
  {
    result = swift_getWitnessTable(byte_2300347E8, &type metadata for FieldValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB061D0);
  }

  return result;
}

id sub_22FFFFEF4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_230030D60();
  swift_allocObject();
  sub_230030D50();
  a1(0);
  sub_2300003A0(a2, a3, a4);
  v9 = sub_230030D40();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = sub_230030DE0();
  v18[0] = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:v18];

  v15 = v18[0];
  if (v14)
  {
    sub_2300313C0();
    sub_22FFEDBF0(v9, v11);
    swift_unknownObjectRelease();
    sub_23000037C(v19, v20);
    sub_23000037C(v20, v19);
    sub_22FFED9B8(&qword_27DB06200, &unk_230034A30);
    if (swift_dynamicCast())
    {
      return v18[0];
    }
  }

  else
  {
    v16 = v15;
    v17 = sub_230030D70();

    swift_willThrow();
    sub_22FFEDBF0(v9, v11);
    MEMORY[0x23190FE50](v17);
  }

  return 0;
}

Swift::OpaquePointer_optional __swiftcall EncodableToDictionary.asDictionary()()
{
  v14 = *MEMORY[0x277D85DE8];
  sub_230030D60();
  swift_allocObject();
  sub_230030D50();
  v1 = sub_230030D40();
  v3 = v2;

  v4 = objc_opt_self();
  v5 = sub_230030DE0();
  v11[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v11];

  v7 = v11[0];
  if (!v6)
  {
    v9 = v7;
    v10 = sub_230030D70();

    swift_willThrow();
    sub_22FFEDBF0(v1, v3);
    MEMORY[0x23190FE50](v10);
    goto LABEL_2;
  }

  sub_2300313C0();
  sub_22FFEDBF0(v1, v3);
  swift_unknownObjectRelease();
  sub_23000037C(v12, v13);
  sub_23000037C(v13, v12);
  sub_22FFED9B8(&qword_27DB06200, &unk_230034A30);
  if (!swift_dynamicCast())
  {
LABEL_2:
    v0 = 0;
    goto LABEL_8;
  }

  v0 = v11[0];
LABEL_8:
  result.value._rawValue = v0;
  result.is_nil = v8;
  return result;
}

_OWORD *sub_23000037C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2300003A0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

PromotedContentJetClient::AttributionCallType_optional __swiftcall AttributionCallType.init(rawValue:)(Swift::Int rawValue)
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

unint64_t sub_230000410()
{
  result = qword_27DB06218;
  if (!qword_27DB06218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCallType, &type metadata for AttributionCallType, v0, v1);
    atomic_store(result, &qword_27DB06218);
  }

  return result;
}

void *sub_230000464@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_230000544()
{
  result = qword_27DB06220;
  if (!qword_27DB06220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCallType, &type metadata for AttributionCallType, v0, v1);
    atomic_store(result, &qword_27DB06220);
  }

  return result;
}

uint64_t sub_2300005E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_230031040();
  sub_230000658(v5, a2);
  sub_2300006BC(v5, a2);
  return sub_230031030();
}

uint64_t *sub_230000658(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2300006BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t AttributionConfig.allProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AttributionConfig(0) + 28);

  return sub_22FFFA88C(v3, a1);
}

uint64_t type metadata accessor for AttributionConfig(uint64_t a1)
{
  result = qword_281494B90;
  if (!qword_281494B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionConfig.allProperties.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AttributionConfig(0) + 28);

  return sub_230000858(a1, v3);
}

uint64_t sub_230000858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AttributionConfig.init(maximumTokenLifetime:impressionLookback:interactionLookback:allProperties:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  v7 = type metadata accessor for AttributionConfig(0);
  return sub_230001588(a1, a2 + *(v7 + 28), type metadata accessor for APJSValue);
}

PromotedContentJetClient::AttributionConfig::CodingKeys_optional __swiftcall AttributionConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2300009D4()
{
  v1 = 0x65706F72506C6C61;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_230000A74()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230000B50(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_230000C18(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230000CFC(unint64_t *a1@<X8>)
{
  v2 = 0xED00007365697472;
  v3 = 0x65706F72506C6C61;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000023003A080;
  }

  v4 = 0xD000000000000012;
  v5 = 0x800000023003A040;
  if (*v1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x800000023003A060;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

PromotedContentJetClient::AttributionConfig::CodingKeys_optional sub_230000D94@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionConfig.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_230000DCC(uint64_t a1)
{
  v2 = sub_2300011C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230000E08(uint64_t a1)
{
  v2 = sub_2300011C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionConfig.debugDescription.getter()
{
  sub_2300313E0();
  MEMORY[0x23190F560](0xD000000000000016, 0x800000023003A490);
  sub_2300312E0();
  MEMORY[0x23190F560](0xD000000000000016, 0x800000023003A4B0);
  sub_2300312E0();
  MEMORY[0x23190F560](0xD000000000000017, 0x800000023003A4D0);
  sub_2300312E0();
  MEMORY[0x23190F560](0x6F72506C6C61202CLL, 0xEF73656974726570);
  type metadata accessor for AttributionConfig(0);
  type metadata accessor for APJSValue(0);
  sub_230031420();
  return 0;
}

uint64_t AttributionConfig.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06228, &qword_230034B80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300011C8();
  sub_230031780();
  v8[15] = 0;
  sub_230031620();
  if (!v1)
  {
    v8[14] = 1;
    sub_230031620();
    v8[13] = 2;
    sub_230031620();
    type metadata accessor for AttributionConfig(0);
    v8[12] = 3;
    type metadata accessor for APJSValue(0);
    sub_230001544(&qword_27DB05C90, protocol conformance descriptor for APJSValue);
    sub_230031640();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2300011C8()
{
  result = qword_27DB06230;
  if (!qword_27DB06230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionConfig.CodingKeys, &type metadata for AttributionConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06230);
  }

  return result;
}

uint64_t AttributionConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for APJSValue(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB06238, &qword_230034B88);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AttributionConfig(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v23 = a1;
  sub_22FFEDA4C(a1, v13);
  sub_2300011C8();
  sub_230031770();
  if (!v2)
  {
    v27 = 0;
    v14 = v21;
    sub_230031500();
    v12[1] = v15;
    v26 = 1;
    sub_230031500();
    v12[2] = v16;
    v25 = 2;
    sub_230031500();
    *v12 = v18;
    v24 = 3;
    sub_230001544(&qword_27DB05CA8, protocol conformance descriptor for APJSValue);
    v19 = v22;
    sub_230031520();
    (*(v14 + 8))(v9, v19);
    sub_230001588(v6, v12 + *(v10 + 28), type metadata accessor for APJSValue);
    sub_230001588(v12, v20, type metadata accessor for AttributionConfig);
  }

  return sub_22FFEE60C(v23);
}

uint64_t sub_230001544(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for APJSValue(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230001588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2300015F4()
{
  result = qword_27DB06240;
  if (!qword_27DB06240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionConfig.CodingKeys, &type metadata for AttributionConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06240);
  }

  return result;
}

unint64_t sub_23000164C()
{
  result = qword_27DB06248;
  if (!qword_27DB06248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionConfig.CodingKeys, &type metadata for AttributionConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06248);
  }

  return result;
}

unint64_t sub_2300016A4()
{
  result = qword_27DB06250;
  if (!qword_27DB06250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionConfig.CodingKeys, &type metadata for AttributionConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06250);
  }

  return result;
}

uint64_t sub_230001754(uint64_t a1)
{
  result = type metadata accessor for APJSValue(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for XPCSession.SendError(uint64_t a1)
{
  result = qword_281493F48;
  if (!qword_281493F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23000184C(uint64_t a1)
{
  result = sub_2300310D0();
  if (v2 <= 0x3F)
  {
    result = sub_2300018DC();
    if (v3 <= 0x3F)
    {
      result = sub_2300312C0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2300018DC()
{
  result = qword_281493E88;
  if (!qword_281493E88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281493E88);
  }

  return result;
}

uint64_t sub_230001940(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2300312C0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for XPCSession.SendError(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230001A88, 0, 0);
}

uint64_t sub_230001A88()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_230001B74;
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000019, 0x800000023003A4F0, sub_230002310, v1, v4);
}

uint64_t sub_230001B74()
{

  return MEMORY[0x2822009F8](sub_230001C8C, 0, 0);
}

uint64_t sub_230001C8C()
{
  sub_22FFF0DD0(v0[13], v0[12], &qword_27DB06258, &qword_230034E10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[9];
    v2 = v0[10];
    sub_230002380(v0[12], v2, type metadata accessor for XPCSession.SendError);
    sub_2300030A8(v2, v1, type metadata accessor for XPCSession.SendError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v4 = v0[13];
    v6 = v0[9];
    v5 = v0[10];
    if (EnumCaseMultiPayload == 4)
    {
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[5];
      (*(v8 + 32))(v7, v0[9], v9);
      sub_230003060(&qword_27DB06268, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      swift_allocError();
      (*(v8 + 16))(v10, v7, v9);
      swift_willThrow();
      (*(v8 + 8))(v7, v9);
      sub_230003110(v5, type metadata accessor for XPCSession.SendError);
      sub_230002318(v4);
    }

    else
    {
      sub_230003060(&qword_27DB06260, type metadata accessor for XPCSession.SendError, protocol conformance descriptor for XPCSession.SendError);
      swift_allocError();
      sub_2300030A8(v5, v14, type metadata accessor for XPCSession.SendError);
      swift_willThrow();
      sub_230003110(v5, type metadata accessor for XPCSession.SendError);
      sub_230002318(v4);
      sub_230003110(v6, type metadata accessor for XPCSession.SendError);
    }

    v13 = v0[1];
  }

  else
  {
    v11 = v0[12];
    v12 = v0[2];
    sub_230002318(v0[13]);
    sub_230002380(v11, v12, type metadata accessor for JetServiceResponse.Container);

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_230001FC4(uint64_t a1, void *a2)
{
  v12[0] = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  MEMORY[0x28223BE20](v12[0]);
  v4 = sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  sub_22FFEDA4C(a2, a2[3]);
  v8 = *(v5 + 16);
  v12[1] = a1;
  v8(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  sub_230031080();
}

uint64_t sub_230002318(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230002380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2300023E8(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v77 = a2;
  v74 = a1;
  v2 = sub_2300312C0();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v63 - v5;
  v6 = sub_2300310D0();
  v71 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - v11;
  v13 = type metadata accessor for JetServiceResponse.Container(0);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22FFED9B8(&qword_27DB06258, &qword_230034E10);
  MEMORY[0x28223BE20](v75);
  v76 = &v63 - v15;
  v16 = type metadata accessor for JetServiceResponse(0);
  v17 = MEMORY[0x28223BE20](v16);
  v65 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v63 - v19;
  v20 = sub_2300310F0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22FFED9B8(&qword_27DB06278, &qword_230034E20);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  sub_22FFF0DD0(v74, &v63 - v25, &qword_27DB06278, &qword_230034E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v71;
    (*(v71 + 32))(v12, v26, v6);
    v28 = v6;
    v29 = v12;
    v30 = v27;
    if (qword_281493F58 != -1)
    {
      swift_once();
    }

    v31 = sub_230031040();
    sub_2300006BC(v31, qword_281498840);
    v32 = *(v27 + 16);
    v33 = v72;
    v32(v72, v29, v28);
    v34 = v73;
    v32(v73, v29, v28);
    v35 = sub_230031020();
    v36 = sub_230031310();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v69 = v35;
      v38 = v33;
      v39 = v37;
      v70 = swift_slowAlloc();
      v78[0] = v70;
      *v39 = 136315394;
      v40 = sub_2300310C0();
      v74 = v32;
      v41 = v29;
      if (v40)
      {
        v42 = 89;
      }

      else
      {
        v42 = 78;
      }

      v43 = *(v30 + 8);
      LODWORD(v71) = v36;
      v43(v38, v28);
      v44 = v42;
      v29 = v41;
      v32 = v74;
      v45 = sub_23000DE08(v44, 0xE100000000000000, v78);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      v46 = sub_2300310B0();
      v47 = v34;
      v49 = v48;
      v43(v47, v28);
      v50 = sub_23000DE08(v46, v49, v78);

      *(v39 + 14) = v50;
      v51 = v69;
      _os_log_impl(&dword_22FFE9000, v69, v71, "XPC Service closed the connection. (canRetry: %s; reason: %s)", v39, 0x16u);
      v52 = v70;
      swift_arrayDestroy();
      MEMORY[0x23190FFD0](v52, -1, -1);
      MEMORY[0x23190FFD0](v39, -1, -1);
    }

    else
    {

      v43 = *(v30 + 8);
      v43(v34, v28);
      v43(v33, v28);
    }

    v32(v76, v29, v28);
    type metadata accessor for XPCSession.SendError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
    sub_2300312B0();
    return (v43)(v29, v28);
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    sub_2300312D0();
    sub_230003060(&qword_281494238, type metadata accessor for JetServiceResponse, "iE R@m");
    v53 = v66;
    sub_2300310E0();
    v55 = v65;
    sub_2300030A8(v53, v65, type metadata accessor for JetServiceResponse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v57 = *(v55 + 32);
      v58 = *(v55 + 40);
      v59 = *v55;
      v60 = *(v55 + 16);
      v61 = v76;
      *v76 = v59;
      *(v61 + 1) = v60;
      *(v61 + 4) = v57;
      v61[40] = v58;
      type metadata accessor for XPCSession.SendError(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
      sub_2300312B0();
    }

    else
    {
      v62 = v64;
      sub_230002380(v55, v64, type metadata accessor for JetServiceResponse.Container);
      sub_2300030A8(v62, v76, type metadata accessor for JetServiceResponse.Container);
      swift_storeEnumTagMultiPayload();
      sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
      sub_2300312B0();
      sub_230003110(v62, type metadata accessor for JetServiceResponse.Container);
    }

    sub_230003110(v53, type metadata accessor for JetServiceResponse);
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_230002FE4(void (*a1)(char *, char *, uint64_t))
{
  v3 = *(sub_22FFED9B8(&qword_27DB06270, &qword_230034E18) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2300023E8(a1, v4);
}

uint64_t sub_230003060(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2300030A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230003110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t ConversionSignal.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_2300031DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "time";
  }

  else
  {
    v4 = "appStoreInstallationSignal";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "appStoreInstallationSignal";
  }

  else
  {
    v7 = "time";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2300316D0();
  }

  return v9 & 1;
}

uint64_t sub_230003288()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230003308(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_230003374(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300033F0@<X0>(char *a2@<X8>)
{
  v3 = sub_230031460();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_230003450(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "appStoreInstallationSignal";
  }

  else
  {
    v3 = "time";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_230003490()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_2300034CC@<X0>(char *a3@<X8>)
{
  v4 = sub_230031460();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_230003530(uint64_t a1)
{
  v2 = sub_230005154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000356C(uint64_t a1)
{
  v2 = sub_230005154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionSignal.adamId.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v10, v4, type metadata accessor for StandaloneAppOpenSignal);
    v11 = *(v4 + 2);

    v12 = v4;
    v13 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v10, v7, type metadata accessor for AppStoreInstallationSignal);
    v11 = *&v7[*(v5 + 36)];

    v12 = v7;
    v13 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v12, v13);
  return v11;
}

uint64_t sub_230003760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversionSignal.accountToken.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v10, v4, type metadata accessor for StandaloneAppOpenSignal);
    v11 = *&v4[*(v2 + 40)];

    v12 = v4;
    v13 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v10, v7, type metadata accessor for AppStoreInstallationSignal);
    v11 = *&v7[*(v5 + 56)];

    v12 = v7;
    v13 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v12, v13);
  return v11;
}

uint64_t ConversionSignal.bundleId.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v10, v4, type metadata accessor for StandaloneAppOpenSignal);
    v11 = *v4;

    v12 = v4;
    v13 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v10, v7, type metadata accessor for AppStoreInstallationSignal);
    v11 = *&v7[*(v5 + 32)];

    v12 = v7;
    v13 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v12, v13);
  return v11;
}

unint64_t ConversionSignal.shortDescription.getter()
{
  v1 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v9, v3, type metadata accessor for StandaloneAppOpenSignal);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_2300313E0();

    v16 = 0xD000000000000019;
    v17 = 0x800000023003A510;
    v10 = StandaloneAppOpenSignal.shortDescription.getter();
    MEMORY[0x23190F560](v10);

    MEMORY[0x23190F560](125, 0xE100000000000000);
    v11 = v16;
    v12 = v3;
    v13 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v9, v6, type metadata accessor for AppStoreInstallationSignal);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_2300313E0();

    v16 = 0xD00000000000001CLL;
    v17 = 0x800000023003A530;
    v14 = AppStoreInstallationSignal.shortDescription.getter();
    MEMORY[0x23190F560](v14);

    MEMORY[0x23190F560](125, 0xE100000000000000);
    v11 = v16;
    v12 = v6;
    v13 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v12, v13);
  return v11;
}

uint64_t ConversionSignal.machTimestamp.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v10, v4, type metadata accessor for StandaloneAppOpenSignal);
    v11 = *&v4[*(v2 + 28)];
    v12 = v4;
    v13 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v10, v7, type metadata accessor for AppStoreInstallationSignal);
    v11 = *&v7[*(v5 + 20)];
    v12 = v7;
    v13 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v12, v13);
  return v11;
}

uint64_t sub_230003F6C(uint64_t a1)
{
  v2 = sub_2300051FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230003FA8(uint64_t a1)
{
  v2 = sub_2300051FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230003FE4(uint64_t a1)
{
  v2 = sub_2300051A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230004020(uint64_t a1)
{
  v2 = sub_2300051A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionSignal.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06288, &qword_230034E30);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFED9B8(&qword_27DB06290, &qword_230034E38);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22FFED9B8(&qword_27DB06298, &qword_230034E40);
  v13 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v15 = &v24 - v14;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230005154();
  sub_230031780();
  sub_230003760(v33, v12);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    sub_230005250(v12, v29, type metadata accessor for StandaloneAppOpenSignal);
    v36 = 1;
    sub_2300051A8();
    v18 = v30;
    v19 = v34;
    sub_2300315A0();
    sub_2300052B8(&qword_27DB062A8, type metadata accessor for StandaloneAppOpenSignal, protocol conformance descriptor for StandaloneAppOpenSignal);
    v20 = v32;
    sub_230031640();
    (*(v31 + 8))(v18, v20);
    sub_230005724(v17, type metadata accessor for StandaloneAppOpenSignal);
    return (*v16)(v15, v19);
  }

  else
  {
    sub_230005250(v12, v9, type metadata accessor for AppStoreInstallationSignal);
    v35 = 0;
    sub_2300051FC();
    v22 = v34;
    sub_2300315A0();
    sub_2300052B8(&qword_281493F90, type metadata accessor for AppStoreInstallationSignal, "1# R<T");
    v23 = v27;
    sub_230031640();
    (*(v26 + 8))(v7, v23);
    sub_230005724(v9, type metadata accessor for AppStoreInstallationSignal);
    return (*v16)(v15, v22);
  }
}

uint64_t ConversionSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v49 = sub_22FFED9B8(&qword_27DB062B0, &qword_230034E48);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - v3;
  v4 = sub_22FFED9B8(&qword_27DB062B8, &qword_230034E50);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = sub_22FFED9B8(&qword_27DB062C0, &unk_230034E58);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ConversionSignal(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = a1[3];
  v51 = a1;
  sub_22FFEDA4C(a1, v19);
  sub_230005154();
  v20 = v50;
  sub_230031770();
  if (v20)
  {
    return sub_22FFEE60C(v51);
  }

  v39 = v13;
  v40 = v16;
  v21 = v48;
  v22 = v49;
  v50 = 0;
  v38 = v18;
  v41 = v10;
  v24 = v46;
  v23 = v47;
  v25 = sub_230031580();
  v26 = (2 * *(v25 + 16)) | 1;
  v52 = v25;
  v53 = v25 + 32;
  v54 = 0;
  v55 = v26;
  sub_22FFEE7BC(&v56);
  v27 = v9;
  if (v56 == 2 || v54 != v55 >> 1)
  {
    v31 = sub_230031400();
    swift_allocError();
    v33 = v32;
    sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0);
    *v33 = v41;
    sub_230031480();
    sub_2300313F0();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v56 & 1) == 0)
  {
    v56 = 0;
    sub_2300051FC();
    v35 = v50;
    sub_230031470();
    if (!v35)
    {
      type metadata accessor for AppStoreInstallationSignal(0);
      sub_2300052B8(&qword_27DB062D0, type metadata accessor for AppStoreInstallationSignal, protocol conformance descriptor for AppStoreInstallationSignal);
      v30 = v40;
      v36 = v44;
      sub_230031520();
      (*(v43 + 8))(v6, v36);
      (*(v24 + 8))(v9, v23);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v56 = 1;
  sub_2300051A8();
  v28 = v21;
  v29 = v50;
  sub_230031470();
  if (v29)
  {
LABEL_8:
    (*(v24 + 8))(v27, v23);
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v51);
  }

  type metadata accessor for StandaloneAppOpenSignal(0);
  sub_2300052B8(&qword_27DB062C8, type metadata accessor for StandaloneAppOpenSignal, protocol conformance descriptor for StandaloneAppOpenSignal);
  v30 = v39;
  sub_230031520();
  (*(v45 + 8))(v28, v22);
  (*(v24 + 8))(v27, v23);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v37 = v38;
  sub_230005250(v30, v38, type metadata accessor for ConversionSignal);
  sub_230005250(v37, v42, type metadata accessor for ConversionSignal);
  return sub_22FFEE60C(v51);
}

uint64_t ConversionSignal.debugDescription.getter()
{
  v1 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230003760(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230005250(v9, v3, type metadata accessor for StandaloneAppOpenSignal);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2300313E0();
    MEMORY[0x23190F560](0xD000000000000019, 0x800000023003A510);
    sub_230031420();
    MEMORY[0x23190F560](125, 0xE100000000000000);
    v10 = v14;
    v11 = v3;
    v12 = type metadata accessor for StandaloneAppOpenSignal;
  }

  else
  {
    sub_230005250(v9, v6, type metadata accessor for AppStoreInstallationSignal);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2300313E0();
    MEMORY[0x23190F560](0xD00000000000001CLL, 0x800000023003A530);
    sub_230031420();
    MEMORY[0x23190F560](125, 0xE100000000000000);
    v10 = v14;
    v11 = v6;
    v12 = type metadata accessor for AppStoreInstallationSignal;
  }

  sub_230005724(v11, v12);
  return v10;
}

uint64_t _s24PromotedContentJetClient16ConversionSignalO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConversionSignal(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = sub_22FFED9B8(&qword_27DB062F0, &qword_2300352E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_230003760(a1, &v27 - v18);
  sub_230003760(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_230003760(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_230005250(&v19[v20], v6, type metadata accessor for StandaloneAppOpenSignal);
      v21 = _s24PromotedContentJetClient23StandaloneAppOpenSignalV2eeoiySbAC_ACtFZ_0(v13, v6);
      sub_230005724(v6, type metadata accessor for StandaloneAppOpenSignal);
      v22 = v13;
      v23 = type metadata accessor for StandaloneAppOpenSignal;
LABEL_9:
      sub_230005724(v22, v23);
      sub_230005724(v19, type metadata accessor for ConversionSignal);
      return v21 & 1;
    }

    v24 = type metadata accessor for StandaloneAppOpenSignal;
    v25 = v13;
  }

  else
  {
    sub_230003760(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_230005250(&v19[v20], v9, type metadata accessor for AppStoreInstallationSignal);
      v21 = _s24PromotedContentJetClient26AppStoreInstallationSignalV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_230005724(v9, type metadata accessor for AppStoreInstallationSignal);
      v22 = v15;
      v23 = type metadata accessor for AppStoreInstallationSignal;
      goto LABEL_9;
    }

    v24 = type metadata accessor for AppStoreInstallationSignal;
    v25 = v15;
  }

  sub_230005724(v25, v24);
  sub_2300056BC(v19);
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_230005154()
{
  result = qword_2814940F8;
  if (!qword_2814940F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionSignal.CodingKeys, &type metadata for ConversionSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814940F8);
  }

  return result;
}

unint64_t sub_2300051A8()
{
  result = qword_27DB062A0;
  if (!qword_27DB062A0)
  {
    result = swift_getWitnessTable(byte_230035294, &type metadata for ConversionSignal.StandaloneAppOpenSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB062A0);
  }

  return result;
}

unint64_t sub_2300051FC()
{
  result = qword_281494110;
  if (!qword_281494110)
  {
    result = swift_getWitnessTable(byte_230035244, &type metadata for ConversionSignal.AppStoreInstallationSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_281494110);
  }

  return result;
}

uint64_t sub_230005250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2300052B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_230005304()
{
  result = qword_27DB062D8;
  if (!qword_27DB062D8)
  {
    result = swift_getWitnessTable("aR Rdy", &type metadata for ConversionSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB062D8);
  }

  return result;
}

unint64_t sub_23000535C()
{
  result = qword_2814940E8;
  if (!qword_2814940E8)
  {
    atomic_store(result, &qword_2814940E8);
  }

  return result;
}

unint64_t sub_2300053B4()
{
  result = qword_2814940F0;
  if (!qword_2814940F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionSignal.CodingKeys, &type metadata for ConversionSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814940F0);
  }

  return result;
}

uint64_t sub_230005408(uint64_t a1)
{
  result = type metadata accessor for AppStoreInstallationSignal(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StandaloneAppOpenSignal(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2300054B0()
{
  result = qword_27DB062E0;
  if (!qword_27DB062E0)
  {
    result = swift_getWitnessTable(aEoR, &type metadata for ConversionSignal.StandaloneAppOpenSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB062E0);
  }

  return result;
}

unint64_t sub_230005508()
{
  result = qword_27DB062E8;
  if (!qword_27DB062E8)
  {
    result = swift_getWitnessTable(byte_23003521C, &type metadata for ConversionSignal.AppStoreInstallationSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB062E8);
  }

  return result;
}

unint64_t sub_230005560()
{
  result = qword_281494100;
  if (!qword_281494100)
  {
    result = swift_getWitnessTable(byte_23003518C, &type metadata for ConversionSignal.AppStoreInstallationSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_281494100);
  }

  return result;
}

unint64_t sub_2300055B8()
{
  result = qword_281494108;
  if (!qword_281494108)
  {
    result = swift_getWitnessTable("%Z R<v", &type metadata for ConversionSignal.AppStoreInstallationSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_281494108);
  }

  return result;
}

unint64_t sub_230005610()
{
  result = qword_281494118;
  if (!qword_281494118)
  {
    result = swift_getWitnessTable(byte_2300350D4, &type metadata for ConversionSignal.StandaloneAppOpenSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_281494118);
  }

  return result;
}

unint64_t sub_230005668()
{
  result = qword_281494120;
  if (!qword_281494120)
  {
    result = swift_getWitnessTable(byte_2300350FC, &type metadata for ConversionSignal.StandaloneAppOpenSignalCodingKeys, v0, v1);
    atomic_store(result, &qword_281494120);
  }

  return result;
}

uint64_t sub_2300056BC(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB062F0, &qword_2300352E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230005724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230005788(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x6973736572706D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7079546D69616C63;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0x800000023003A290;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D617473656D6974;
    }

    else
    {
      v5 = 0x6973736572706D69;
    }

    if (v4)
    {
      v6 = 0xE900000000000070;
    }

    else
    {
      v6 = 0xEC00000064496E6FLL;
    }
  }

  v7 = 0x7079546D69616C63;
  v8 = 0x800000023003A290;
  if (a2 == 2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (a2)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_2300058E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x800000023003A310;
  if (a1 != 5)
  {
    v4 = 0x6F72687473736170;
    v5 = 0xEF4E4F534A686775;
  }

  v6 = 0x646E6957656D6974;
  v7 = 0xED0000646E45776FLL;
  if (a1 != 3)
  {
    v6 = 0x7475626972747461;
    v7 = 0xEB000000006E6F69;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6449656C646E7562;
  if (a1 != 1)
  {
    v9 = 0x646E6957656D6974;
    v8 = 0xEF7472617453776FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64496D616461;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6449656C646E7562)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF7472617453776FLL;
        if (v10 != 0x646E6957656D6974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64496D616461)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x800000023003A310;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xEF4E4F534A686775;
      if (v10 != 0x6F72687473736170)
      {
LABEL_39:
        v13 = sub_2300316D0();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xED0000646E45776FLL;
    if (v10 != 0x646E6957656D6974)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB000000006E6F69;
    if (v10 != 0x7475626972747461)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_230005B60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D69;
  v3 = 0x54746E6572727563;
  v4 = a1;
  v5 = 0x416465686374616DLL;
  v6 = 0xEA00000000007364;
  if (a1 != 5)
  {
    v5 = 0x6F43746E65746E69;
    v6 = 0xED0000747865746ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6449656C646E7562;
  if (a1 != 3)
  {
    v8 = 0x6E6576456C6C6163;
    v7 = 0xED00006570795474;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6769666E6F63;
  if (a1 != 1)
  {
    v10 = 0x64496D616461;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x54746E6572727563;
    v9 = 0xEB00000000656D69;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x6769666E6F63)
        {
          goto LABEL_36;
        }
      }

      else if (v11 != 0x64496D616461)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000007364;
        if (v11 != 0x416465686374616DLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED0000747865746ELL;
        if (v11 != 0x6F43746E65746E69)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6449656C646E7562)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6E6576456C6C6163;
    v2 = 0xED00006570795474;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_2300316D0();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_230005DA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D69;
  v3 = 0x54746E6572727563;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x4449656C646E7562;
  v7 = 0x6E6576456C6C6163;
  v8 = 0xED00006570795474;
  if (a1 != 4)
  {
    v7 = 0x54746E756F636361;
    v8 = 0xEC0000006E656B6FLL;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6769666E6F63;
  if (a1 != 1)
  {
    v10 = 0x44496D616461;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x54746E6572727563;
    v9 = 0xEB00000000656D69;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x4449656C646E7562)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00006570795474;
      if (v11 != 0x6E6576456C6C6163)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEC0000006E656B6FLL;
      if (v11 != 0x54746E756F636361)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      v2 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x6769666E6F63)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x44496D616461;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_2300316D0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_230005F98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEC0000006E656B6FLL;
  v5 = 0x656D69546863616DLL;
  if (a1 == 5)
  {
    v5 = 0x54746E756F636361;
  }

  else
  {
    v4 = 0xED0000706D617473;
  }

  v6 = 0xD000000000000012;
  v7 = 0x800000023003A1B0;
  if (a1 != 3)
  {
    v6 = 0x6973736572706D69;
    v7 = 0xEC00000064496E6FLL;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x64496D616461;
  if (a1 != 1)
  {
    v9 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6449656C646E7562;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x64496D616461)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE900000000000070;
        if (v10 != 0x6D617473656D6974)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6449656C646E7562)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000023003A1B0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x6973736572706D69;
    v14 = 1682533999;
LABEL_35:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v13)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (a2 == 5)
  {
    v13 = 0x54746E756F636361;
    v14 = 1852140399;
    goto LABEL_35;
  }

  v12 = 0xED0000706D617473;
  if (v10 != 0x656D69546863616DLL)
  {
LABEL_40:
    v15 = sub_2300316D0();
    goto LABEL_41;
  }

LABEL_38:
  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_2300061F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C646E6168;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xEC00000065707954;
    if (a1 == 2)
    {
      v6 = 0x7079546D69616C63;
    }

    else
    {
      v6 = 0x64616F6C6E776F64;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE900000000000070;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6D617473656D6974;
    }

    else
    {
      v6 = 0x656C646E6168;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x7079546D69616C63;
  if (a2 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
    v10 = 0xEC00000065707954;
  }

  if (a2)
  {
    v2 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2300316D0();
  }

  return v13 & 1;
}

uint64_t sub_23000634C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6972657551766461;
    }

    else
    {
      v5 = 0x74614D646E756F66;
    }

    if (v2)
    {
      v6 = 0xEA00000000007365;
    }

    else
    {
      v6 = 0xEA00000000006863;
    }
  }

  else
  {
    v3 = 0x6F43746E65746E69;
    v4 = 0xED0000747865746ELL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x800000023003A180;
    }

    if (a1 == 2)
    {
      v5 = 0x74616469646E6163;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEA00000000007365;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6972657551766461;
    }

    else
    {
      v11 = 0x74614D646E756F66;
    }

    if (a2)
    {
      v10 = 0xEA00000000007365;
    }

    else
    {
      v10 = 0xEA00000000006863;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6F43746E65746E69;
    v8 = 0x800000023003A180;
    if (a2 == 3)
    {
      v8 = 0xED0000747865746ELL;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x74616469646E6163;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000007365;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_2300316D0();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_2300064E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D69;
  v3 = 0x54746E6572727563;
  v4 = a1;
  v5 = 0x54746E756F636361;
  v6 = 0xEC0000006E656B6FLL;
  if (a1 != 6)
  {
    v5 = 0x6F43746E65746E69;
    v6 = 0xED0000747865746ELL;
  }

  v7 = 0x6E6576456C6C6163;
  v8 = 0xED00006570795474;
  if (a1 != 4)
  {
    v7 = 0x73746E657665;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496D616461;
  if (a1 != 2)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  v11 = 0xE600000000000000;
  v12 = 0x6769666E6F63;
  if (!a1)
  {
    v12 = 0x54746E6572727563;
    v11 = 0xEB00000000656D69;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEC0000006E656B6FLL;
        if (v13 != 0x54746E756F636361)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v15 = 0x6F43746E65746E69;
      v16 = 0x747865746ELL;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x73746E657665)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v15 = 0x6E6576456C6C6163;
      v16 = 0x6570795474;
    }

    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v13 != v15)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x44496D616461)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v2 = 0xE800000000000000;
      v3 = 0x4449656C646E7562;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6769666E6F63)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v13 != v3)
    {
LABEL_41:
      v17 = sub_2300316D0();
      goto LABEL_42;
    }
  }

LABEL_37:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_23000676C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x6973736572706D69;
  v4 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x63697274656DLL;
    if (a1 != 1)
    {
      v10 = 0x65736F70727570;
      v9 = 0xE700000000000000;
    }

    if (a1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0x6973736572706D69;
    }

    if (v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEC00000064496E6FLL;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v6 = 0x8000000230039F60;
      v7 = 0x8000000230039F80;
      v5 = a1 == 5;
      if (a1 == 5)
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0xD000000000000010;
      }
    }

    else
    {
      v5 = a1 == 3;
      v6 = 0xE900000000000070;
      v7 = 0xEA00000000007365;
      if (a1 == 3)
      {
        v8 = 0x6D617473656D6974;
      }

      else
      {
        v8 = 0x69747265706F7270;
      }
    }

    if (v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v8 != 0x63697274656DLL)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v2 = 0xE700000000000000;
      v3 = 0x65736F70727570;
    }

    if (v8 != v3)
    {
LABEL_42:
      v13 = sub_2300316D0();
      goto LABEL_43;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (a2 == 5)
    {
      v2 = 0x8000000230039F60;
    }

    else
    {
      v2 = 0x8000000230039F80;
    }

    if (v8 != v12)
    {
      goto LABEL_42;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xE900000000000070;
    if (v8 != 0x6D617473656D6974)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v2 = 0xEA00000000007365;
    if (v8 != 0x69747265706F7270)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v11 != v2)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_2300069A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007365697472;
  v3 = 0xD000000000000012;
  v4 = 0x65706F72506C6C61;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x65706F72506C6C61;
    }

    if (v5 == 2)
    {
      v7 = 0x800000023003A080;
    }

    else
    {
      v7 = 0xED00007365697472;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x800000023003A060;
    }

    else
    {
      v7 = 0x800000023003A040;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000014;
    v2 = 0x800000023003A080;
  }

  v8 = 0x800000023003A060;
  if (a2)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v8 = 0x800000023003A040;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_230006AD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x7461766972507475;
  v5 = 0xEE007475706E4965;
  v6 = 0x63696C6275507475;
  v7 = 0xEB0000000079654BLL;
  if (a1 != 4)
  {
    v6 = 0xD000000000000010;
    v7 = 0x800000023003A020;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7473656D69547475;
  v9 = 0xEB00000000706D61;
  if (a1 != 1)
  {
    v8 = 0x6F64657273497475;
    v9 = 0xEE0064616F6C6E77;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x64496D6164417475;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE800000000000000;
      if (v10 != 0x64496D6164417475)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0x7473656D69547475;
      v13 = 7368033;
      goto LABEL_23;
    }

    v15 = 0x6F64657273497475;
    v16 = 0x64616F6C6E77;
LABEL_29:
    v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v10 != v15)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v15 = 0x7461766972507475;
    v16 = 0x7475706E4965;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0x63696C6275507475;
    v13 = 7955787;
LABEL_23:
    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v12)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v14 = 0x800000023003A020;
  if (v10 != 0xD000000000000010)
  {
LABEL_34:
    v17 = sub_2300316D0();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v14)
  {
    goto LABEL_34;
  }

  v17 = 1;
LABEL_35:

  return v17 & 1;
}

uint64_t AttributionMatchIntent.currentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030E00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttributionMatchIntent.adamID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionMatchIntent(0) + 24));

  return v1;
}

uint64_t AttributionMatchIntent.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionMatchIntent(0) + 28));

  return v1;
}

uint64_t AttributionMatchIntent.callEventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionMatchIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AttributionMatchIntent.events.getter()
{
  type metadata accessor for AttributionMatchIntent(0);
}

uint64_t AttributionMatchIntent.accountToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionMatchIntent(0) + 40));

  return v1;
}

uint64_t AttributionMatchIntent.intentContext.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AttributionMatchIntent(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

PromotedContentJetClient::AttributionMatchIntent::CodingKeys_optional __swiftcall AttributionMatchIntent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionMatchIntent::CodingKeys_optional __swiftcall AttributionMatchIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionMatchIntent.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_230006FFC()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x54746E756F636361;
  if (v1 != 6)
  {
    v3 = 0x6F43746E65746E69;
  }

  v4 = 0x6E6576456C6C6163;
  if (v1 != 4)
  {
    v4 = 0x73746E657665;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x44496D616461;
  if (v1 != 2)
  {
    v5 = 0x4449656C646E7562;
  }

  if (*v0)
  {
    v2 = 0x6769666E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_230007148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D69;
  v4 = 0x54746E6572727563;
  v5 = 0xEC0000006E656B6FLL;
  v6 = 0x54746E756F636361;
  if (v2 != 6)
  {
    v6 = 0x6F43746E65746E69;
    v5 = 0xED0000747865746ELL;
  }

  v7 = 0xED00006570795474;
  v8 = 0x6E6576456C6C6163;
  if (v2 != 4)
  {
    v8 = 0x73746E657665;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496D616461;
  if (v2 != 2)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6769666E6F63;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

PromotedContentJetClient::AttributionMatchIntent::CodingKeys_optional sub_230007264@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionMatchIntent.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2300072A8(uint64_t a1)
{
  v2 = sub_230007830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300072E4(uint64_t a1)
{
  v2 = sub_230007830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionMatchIntent.init(currentTime:config:adamID:bundleID:callEventType:events:accountToken:intentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v19 = *a7;
  v20 = *a12;
  v28 = a12[1];
  v21 = sub_230030E00();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  matched = type metadata accessor for AttributionMatchIntent(0);
  result = sub_230007440(a2, a9 + matched[5]);
  v24 = (a9 + matched[6]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + matched[7]);
  *v25 = a5;
  v25[1] = a6;
  *(a9 + matched[8]) = v19;
  *(a9 + matched[9]) = a8;
  v26 = (a9 + matched[10]);
  *v26 = a10;
  v26[1] = a11;
  v27 = (a9 + matched[11]);
  *v27 = v20;
  v27[1] = v28;
  return result;
}

uint64_t sub_230007440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AttributionMatchIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB062F8, "2b");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230007830();
  sub_230031780();
  LOBYTE(v14) = 0;
  sub_230030E00();
  sub_230007884(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_230031640();
  if (!v2)
  {
    matched = type metadata accessor for AttributionMatchIntent(0);
    LOBYTE(v14) = 1;
    type metadata accessor for AttributionConfig(0);
    sub_230007884(&qword_27DB06308, type metadata accessor for AttributionConfig, protocol conformance descriptor for AttributionConfig);
    sub_230031640();
    LOBYTE(v14) = 2;
    sub_230031600();
    LOBYTE(v14) = 3;
    sub_230031600();
    LOBYTE(v14) = *(v3 + matched[8]);
    v16 = 4;
    sub_2300078CC();
    sub_230031640();
    v14 = *(v3 + matched[9]);
    v16 = 5;
    sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
    sub_22FFEFFA4();
    sub_230031640();
    LOBYTE(v14) = 6;
    sub_230031600();
    v10 = (v3 + matched[11]);
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 7;
    sub_230007920();

    sub_2300315D0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_230007830()
{
  result = qword_27DB06300;
  if (!qword_27DB06300)
  {
    result = swift_getWitnessTable("!b RPt", &type metadata for AttributionMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06300);
  }

  return result;
}

uint64_t sub_230007884(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_2300078CC()
{
  result = qword_27DB06310;
  if (!qword_27DB06310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCallType, &type metadata for AttributionCallType, v0, v1);
    atomic_store(result, &qword_27DB06310);
  }

  return result;
}

unint64_t sub_230007920()
{
  result = qword_27DB06318;
  if (!qword_27DB06318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomIntentContext, &type metadata for CustomIntentContext, v0, v1);
    atomic_store(result, &qword_27DB06318);
  }

  return result;
}

uint64_t AttributionMatchIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for AttributionConfig(0);
  MEMORY[0x28223BE20](v29);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_230030E00();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB06320, &qword_230035320);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  matched = type metadata accessor for AttributionMatchIntent(0);
  MEMORY[0x28223BE20](matched);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_230007830();
  v34 = v9;
  v13 = v35;
  sub_230031770();
  if (v13)
  {
    return sub_22FFEE60C(a1);
  }

  v14 = v31;
  v15 = v12;
  LOBYTE(v36) = 0;
  sub_230007884(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v16 = v32;
  sub_230031520();
  (*(v30 + 32))(v15, v33, v5);
  LOBYTE(v36) = 1;
  sub_230007884(&qword_27DB06328, type metadata accessor for AttributionConfig, "9U R\\z");
  sub_230031520();
  v27[1] = v5;
  sub_230007440(v4, v15 + matched[5]);
  LOBYTE(v36) = 2;
  v33 = 0;
  v17 = sub_2300314E0();
  v35 = a1;
  v18 = (v15 + matched[6]);
  *v18 = v17;
  v18[1] = v19;
  LOBYTE(v36) = 3;
  v20 = sub_2300314E0();
  v21 = (v15 + matched[7]);
  *v21 = v20;
  v21[1] = v22;
  v37 = 4;
  sub_23000805C();
  sub_230031520();
  *(v15 + matched[8]) = v36;
  sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
  v37 = 5;
  sub_22FFF0454();
  sub_230031520();
  *(v15 + matched[9]) = v36;
  LOBYTE(v36) = 6;
  v23 = sub_2300314E0();
  v24 = (v15 + matched[10]);
  *v24 = v23;
  v24[1] = v25;
  v37 = 7;
  sub_2300080B0();
  sub_2300314B0();
  (*(v14 + 8))(v34, v16);
  *(v15 + matched[11]) = v36;
  sub_230008104(v15, v28, type metadata accessor for AttributionMatchIntent);
  sub_22FFEE60C(v35);
  return sub_23000816C(v15, type metadata accessor for AttributionMatchIntent);
}

unint64_t sub_23000805C()
{
  result = qword_27DB06330;
  if (!qword_27DB06330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCallType, &type metadata for AttributionCallType, v0, v1);
    atomic_store(result, &qword_27DB06330);
  }

  return result;
}

unint64_t sub_2300080B0()
{
  result = qword_27DB06338;
  if (!qword_27DB06338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomIntentContext, &type metadata for CustomIntentContext, v0, v1);
    atomic_store(result, &qword_27DB06338);
  }

  return result;
}

uint64_t sub_230008104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23000816C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230008224()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300082F0(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_2300083A8(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

unint64_t sub_230008470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23000AACC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2300084A0(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C646E6168;
  v4 = 0x7079546D69616C63;
  v5 = 0xEC00000065707954;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (*v1)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_230008528()
{
  v1 = 0x656C646E6168;
  v2 = 0x7079546D69616C63;
  if (*v0 != 2)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2300085AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23000AACC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2300085D4(uint64_t a1)
{
  v2 = sub_230008878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230008610(uint64_t a1)
{
  v2 = sub_230008878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatchedEventProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06340, &qword_230035328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230008878();
  sub_230031780();
  v11[15] = 0;
  sub_230031600();
  if (!v2)
  {
    v9 = type metadata accessor for MatchedEventProperties(0);
    v11[14] = 1;
    sub_230030E00();
    sub_230007884(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_230031640();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_2300088EC();
    sub_230031640();
    v11[11] = 3;
    sub_230031630();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_230008878()
{
  result = qword_27DB06348;
  if (!qword_27DB06348)
  {
    result = swift_getWitnessTable(aR_0, &type metadata for MatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06348);
  }

  return result;
}

unint64_t sub_2300088EC()
{
  result = qword_27DB06350;
  if (!qword_27DB06350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionClaimType, &type metadata for AttributionClaimType, v0, v1);
    atomic_store(result, &qword_27DB06350);
  }

  return result;
}

uint64_t MatchedEventProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_230030E00();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22FFED9B8(&qword_27DB06358, &qword_230035330);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for MatchedEventProperties(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFEDA4C(a1, a1[3]);
  sub_230008878();
  v19 = v7;
  v11 = v21;
  sub_230031770();
  if (v11)
  {
    return sub_22FFEE60C(a1);
  }

  v12 = v17;
  v26 = 0;
  *v10 = sub_2300314E0();
  v10[1] = v13;
  v21 = v13;
  v25 = 1;
  sub_230007884(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_230031520();
  (*(v12 + 32))(v10 + v8[5], v5, v3);
  v23 = 2;
  sub_230008D2C();
  sub_230031520();
  *(v10 + v8[6]) = v24;
  v22 = 3;
  v14 = sub_230031510();
  (*(v18 + 8))(v19, v20);
  *(v10 + v8[7]) = v14;
  sub_230008104(v10, v16, type metadata accessor for MatchedEventProperties);
  sub_22FFEE60C(a1);
  return sub_23000816C(v10, type metadata accessor for MatchedEventProperties);
}

unint64_t sub_230008D2C()
{
  result = qword_27DB06360;
  if (!qword_27DB06360)
  {
    result = swift_getWitnessTable("9\b R49", &type metadata for AttributionClaimType, v0, v1);
    atomic_store(result, &qword_27DB06360);
  }

  return result;
}

uint64_t AttributionMatchIntent.ReturnType.intentContext.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t AttributionMatchIntent.ReturnType.intentContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t AttributionMatchIntent.ReturnType.unMatchedCandidate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AttributionMatchIntent.ReturnType(0) + 32);

  return sub_230008EC4(v3, a1);
}

uint64_t sub_230008E8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230008EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AttributionMatchIntent.ReturnType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06370, &unk_230035340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230009244();
  sub_230031780();
  LOBYTE(v12) = 0;
  sub_230031610();
  if (!v2)
  {
    v12 = v3[1];
    v14 = 1;
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    sub_230009828(&qword_281493EA0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_230031640();
    v12 = v3[2];
    v14 = 2;
    sub_22FFED9B8(&qword_27DB06388, &qword_230035350);
    sub_230009298(&qword_27DB06390, &qword_27DB06208, protocol conformance descriptor for AttributionMatchedEventProperties, MEMORY[0x277D83948]);
    sub_230031640();
    v9 = v3[4];
    v12 = v3[3];
    v13 = v9;
    v14 = 3;
    sub_230007920();

    sub_2300315D0();

    type metadata accessor for AttributionMatchIntent.ReturnType(0);
    LOBYTE(v12) = 4;
    type metadata accessor for AttributionCandidateProperties(0);
    sub_230007884(&qword_27DB06398, type metadata accessor for AttributionCandidateProperties, protocol conformance descriptor for AttributionCandidateProperties);
    sub_2300315D0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_230009244()
{
  result = qword_27DB06378;
  if (!qword_27DB06378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06378);
  }

  return result;
}

uint64_t sub_230009298(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_22FFF0054(&qword_27DB06388, &qword_230035350);
    v10 = sub_230007884(a2, type metadata accessor for AttributionMatchedEventProperties, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AttributionMatchIntent.ReturnType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v22 = sub_22FFED9B8(&qword_27DB063A0, &qword_230035358);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = v20 - v8;
  matched = type metadata accessor for AttributionMatchIntent.ReturnType(0);
  MEMORY[0x28223BE20](matched);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 3) = 0;
  *(v12 + 4) = 0;
  v13 = a1[3];
  v24 = a1;
  sub_22FFEDA4C(a1, v13);
  sub_230009244();
  v23 = v9;
  sub_230031770();
  if (v2)
  {
    sub_22FFEE60C(v24);
  }

  else
  {
    v14 = v7;
    LOBYTE(v25) = 0;
    v15 = v22;
    *v12 = sub_2300314F0() & 1;
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    v27 = 1;
    sub_230009828(&qword_281493E98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_230031520();
    v16 = v14;
    *(v12 + 1) = v25;
    sub_22FFED9B8(&qword_27DB06388, &qword_230035350);
    v27 = 2;
    sub_230009298(&qword_27DB063A8, &qword_27DB063B0, protocol conformance descriptor for AttributionMatchedEventProperties, MEMORY[0x277D83978]);
    sub_230031520();
    v20[1] = v25;
    *(v12 + 2) = v25;
    v27 = 3;
    sub_2300080B0();
    sub_2300314B0();
    v17 = v25;
    v18 = v26;

    *(v12 + 3) = v17;
    *(v12 + 4) = v18;
    type metadata accessor for AttributionCandidateProperties(0);
    LOBYTE(v25) = 4;
    sub_230007884(&qword_27DB063B8, type metadata accessor for AttributionCandidateProperties, protocol conformance descriptor for AttributionCandidateProperties);
    sub_2300314B0();
    (*(v16 + 8))(v23, v15);
    sub_230009894(v6, &v12[*(matched + 32)]);
    sub_230008104(v12, v21, type metadata accessor for AttributionMatchIntent.ReturnType);
    sub_22FFEE60C(v24);
    return sub_23000816C(v12, type metadata accessor for AttributionMatchIntent.ReturnType);
  }
}

uint64_t sub_230009828(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_22FFF0054(&qword_27DB06380, &qword_2300366B0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230009894(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AttributionMatchIntent.ReturnType.debugDescription.getter()
{
  sub_2300313E0();
  MEMORY[0x23190F560](0xD00000000000002ELL, 0x800000023003A550);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x23190F560](v1, v2);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A580);
  v3 = MEMORY[0x23190F640](*(v0 + 8), MEMORY[0x277D837D0]);
  MEMORY[0x23190F560](v3);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A5A0);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for AttributionMatchedEventProperties(0);
  v6 = MEMORY[0x23190F640](v4, v5);
  MEMORY[0x23190F560](v6);

  MEMORY[0x23190F560](0xD000000000000014, 0x800000023003A5C0);

  sub_22FFED9B8(&qword_27DB063C0, &qword_230035360);
  v7 = sub_230031170();
  MEMORY[0x23190F560](v7);

  return 0;
}

PromotedContentJetClient::AttributionMatchIntent::ReturnType::CodingKeys_optional __swiftcall AttributionMatchIntent.ReturnType.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionMatchIntent::ReturnType::CodingKeys_optional __swiftcall AttributionMatchIntent.ReturnType.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionMatchIntent.ReturnType.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t AttributionMatchIntent.ReturnType.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x74614D646E756F66;
  v3 = 0x74616469646E6163;
  v4 = 0x6F43746E65746E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6972657551766461;
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

unint64_t sub_230009C30()
{
  result = qword_27DB063C8;
  if (!qword_27DB063C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchIntent.CodingKeys, &type metadata for AttributionMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB063C8);
  }

  return result;
}

unint64_t sub_230009C88()
{
  result = qword_27DB063D0;
  if (!qword_27DB063D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchIntent.CodingKeys, &type metadata for AttributionMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB063D0);
  }

  return result;
}

unint64_t sub_230009CE0()
{
  result = qword_27DB063D8;
  if (!qword_27DB063D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchIntent.CodingKeys, &type metadata for AttributionMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB063D8);
  }

  return result;
}

uint64_t sub_230009D34(uint64_t a1)
{
  *(a1 + 8) = sub_230007884(&qword_27DB063E0, type metadata accessor for AttributionMatchIntent, "EM Rls");
  result = sub_230007884(&qword_27DB063E8, type metadata accessor for AttributionMatchIntent, protocol conformance descriptor for AttributionMatchIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230009DB8(uint64_t a1)
{
  *(a1 + 8) = sub_230007884(&qword_27DB063F0, type metadata accessor for MatchedEventProperties, protocol conformance descriptor for MatchedEventProperties);
  result = sub_230007884(&qword_27DB06210, type metadata accessor for MatchedEventProperties, protocol conformance descriptor for MatchedEventProperties);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_230009E4C()
{
  result = qword_27DB063F8;
  if (!qword_27DB063F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB063F8);
  }

  return result;
}

uint64_t sub_230009EA0()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230009F94(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_23000A074(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_23000A170(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006863;
  v4 = 0x74614D646E756F66;
  v5 = 0x74616469646E6163;
  v6 = 0xED0000747865746ELL;
  v7 = 0x6F43746E65746E69;
  if (v2 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = 0x800000023003A180;
  }

  if (v2 == 2)
  {
    v6 = 0xEA00000000007365;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6972657551766461;
    v3 = 0xEA00000000007365;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v6;
  }

  *a1 = v8;
  a1[1] = v9;
}

unint64_t sub_23000A224()
{
  result = qword_27DB06400;
  if (!qword_27DB06400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06400);
  }

  return result;
}

unint64_t sub_23000A27C()
{
  result = qword_27DB06408;
  if (!qword_27DB06408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06408);
  }

  return result;
}

uint64_t sub_23000A2D0()
{
  v1 = *v0;
  v2 = 0x74614D646E756F66;
  v3 = 0x74616469646E6163;
  v4 = 0x6F43746E65746E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6972657551766461;
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

PromotedContentJetClient::AttributionMatchIntent::ReturnType::CodingKeys_optional sub_23000A37C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionMatchIntent.ReturnType.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_23000A3C0(uint64_t a1)
{
  v2 = sub_230009244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000A3FC(uint64_t a1)
{
  v2 = sub_230009244();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23000A464(uint64_t a1)
{
  sub_230030E00();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributionConfig(319);
    if (v2 <= 0x3F)
    {
      sub_22FFF0898(319);
      if (v3 <= 0x3F)
      {
        sub_23000A7B0(319, qword_281494A58, &type metadata for CustomIntentContext, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23000A588(uint64_t a1)
{
  result = sub_230030E00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23000A644(uint64_t a1)
{
  sub_23000A7B0(319, &qword_27DB06430, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23000A800(319, &qword_27DB06438, type metadata accessor for AttributionMatchedEventProperties, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23000A7B0(319, qword_281494A58, &type metadata for CustomIntentContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23000A800(319, &qword_27DB06440, type metadata accessor for AttributionCandidateProperties, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23000A7B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23000A800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AttributionDownloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributionDownloadType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23000A9C8()
{
  result = qword_27DB06448;
  if (!qword_27DB06448)
  {
    result = swift_getWitnessTable(byte_2300358E0, &type metadata for MatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06448);
  }

  return result;
}

unint64_t sub_23000AA20()
{
  result = qword_27DB06450;
  if (!qword_27DB06450)
  {
    result = swift_getWitnessTable(byte_230035818, &type metadata for MatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06450);
  }

  return result;
}

unint64_t sub_23000AA78()
{
  result = qword_27DB06458;
  if (!qword_27DB06458)
  {
    result = swift_getWitnessTable(byte_230035840, &type metadata for MatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06458);
  }

  return result;
}

unint64_t sub_23000AACC(uint64_t a1, uint64_t a2)
{
  v2 = sub_230031460();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t String.apJSValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_23000AC28@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t NSString.apJSValue.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_230031160();
  a1[1] = v2;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000AD4C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_230031160();
  a1[1] = v2;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000AE50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 16))(a3, v3, v5);
  v6 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, 0, 1, v6);
}

uint64_t sub_23000AF28@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a1 - 8) + 16))(a3, v4, a1);
  v6 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, 0, 1, v6);
}

uint64_t sub_23000B004@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a3@<X8>)
{
  v5 = v3;
  a1(v5);
  v7 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 0, 1, v7);
}

uint64_t sub_23000B0BC@<X0>(void (*a1)(void)@<X2>, uint64_t a3@<X8>)
{
  a1(*v3);
  v5 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t Bool.apJSValue.getter@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_23000B1D8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t NSNumber.apJSValue.getter@<X0>(_BYTE *a1@<X8>)
{
  [v1 objCType];
  v3 = sub_2300311C0();
  v5 = v4;
  v6 = v3 == 99 && v4 == 0xE100000000000000;
  if (v6 || (v7 = v3, (sub_2300316D0() & 1) != 0))
  {

    *a1 = [v1 charValue];
    v8 = type metadata accessor for APJSValue(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    v9 = *(*(v8 - 8) + 56);
    v10 = a1;
    v11 = 0;
    v12 = v8;
    goto LABEL_8;
  }

  v14 = v7 == 105 && v5 == 0xE100000000000000;
  if (v14 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 intValue];
    v8 = type metadata accessor for APJSValue(0);
    goto LABEL_7;
  }

  if (v7 == 73 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 unsignedIntValue];
    v8 = type metadata accessor for APJSValue(0);
    goto LABEL_7;
  }

  if (v7 == 113 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 longLongValue];
    v8 = type metadata accessor for APJSValue(0);
    goto LABEL_7;
  }

  if (v7 == 81 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    *a1 = [v1 unsignedLongLongValue];
    v8 = type metadata accessor for APJSValue(0);
    goto LABEL_7;
  }

  if (v7 == 100 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0 || v7 == 102 && v5 == 0xE100000000000000 || (sub_2300316D0() & 1) != 0)
  {

    [v1 doubleValue];
    *a1 = v15;
    v8 = type metadata accessor for APJSValue(0);
    goto LABEL_7;
  }

  if (v7 == 66 && v5 == 0xE100000000000000)
  {

LABEL_40:
    *a1 = [v1 BOOLValue];
    v8 = type metadata accessor for APJSValue(0);
    goto LABEL_7;
  }

  v16 = sub_2300316D0();

  if (v16)
  {
    goto LABEL_40;
  }

  v17 = type metadata accessor for APJSValue(0);
  v9 = *(*(v17 - 8) + 56);
  v12 = v17;
  v10 = a1;
  v11 = 1;
LABEL_8:

  return v9(v10, v11, 1, v12);
}

uint64_t UInt16.apJSValue.getter@<X0>(unsigned __int16 a1@<W0>, _DWORD *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_23000B708@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000B798@<X0>(int a1@<W0>, _DWORD *a3@<X8>)
{
  *a3 = a1;
  v4 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_23000B830@<X0>(_DWORD *a2@<X8>)
{
  *a2 = *v2;
  v4 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_23000B8C4@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_23000B954@<X0>(void *a2@<X8>)
{
  *a2 = *v2;
  v4 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Double.apJSValue.getter@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000BA6C@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t Float.apJSValue.getter@<X0>(double *a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_23000BB7C@<X0>(double *a1@<X8>)
{
  *a1 = *v1;
  v3 = type metadata accessor for APJSValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t Array.apJSValue.getter@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_2300312A0();
  v5 = type metadata accessor for APJSValue(0);
  swift_getWitnessTable(MEMORY[0x277D83970], v4);
  *a3 = sub_230031240();
  swift_storeEnumTagMultiPayload();
  return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
}

uint64_t Dictionary<>.apJSValue.getter@<X0>(uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for APJSValue(0);
  *a3 = sub_230031120();
  swift_storeEnumTagMultiPayload();
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_23000BDD8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFED9B8(&qword_27DB06460, &qword_230035B28);
  if (swift_dynamicCast())
  {
    sub_23000C014(v10, v12);
    v6 = v13;
    v7 = v14;
    sub_22FFEDA4C(v12, v13);
    (*(v7 + 8))(v6, v7);
    return sub_22FFEE60C(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_23000BFAC(v10);
    v9 = type metadata accessor for APJSValue(0);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_23000BFAC(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06468, &qword_230035B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23000C014(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t JetServiceRequesting.dispatch<A>(message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_23000C080, 0, 0);
}

uint64_t sub_23000C080()
{
  v13 = v0[6];
  type metadata accessor for XPCIntentMessage.Builder(0);
  v1 = swift_allocObject();
  v0[9] = v1;
  v2 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v3 = type metadata accessor for IntentMessage(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  sub_230030F70();
  v12 = (*(v13 + 8) + **(v13 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_23000C234;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v8, v1, v6, v5, v9, v7);
}

uint64_t sub_23000C234()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23000C370, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23000C370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t JetServiceRequester.__allocating_init(enabledFeatureFlags:signpostProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t JetServiceRequester.init(enabledFeatureFlags:signpostProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_23000C420(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for JetServiceResponse.Container(0);
  v3[13] = swift_task_alloc();
  v4 = sub_230030F50();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_230030F30();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for XPCIntentMessage(0);
  v3[22] = swift_task_alloc();
  sub_230031070();
  v3[23] = swift_task_alloc();
  v6 = type metadata accessor for IntentMessage(0);
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = sub_230030FB0();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = sub_230030F80();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23000C738, 0, 0);
}

uint64_t sub_23000C738()
{
  v71 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[27];
  v6 = v0[10];
  sub_230030EE0();
  sub_230030EF0();
  v68 = *(v4 + 16);
  v68(v2, v1, v3);
  sub_23000E33C();
  sub_23000D428();
  sub_23000E390(v7, v8);
  sub_23000E540(v6, v5, type metadata accessor for IntentMessage);
  sub_23000E3A0();
  sub_23000D428();
  sub_23000E390(v9, v10);
  v11 = sub_230030FA0();
  v12 = sub_230031350();
  v13 = sub_230031360();
  v14 = v0[34];
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[27];
  v69 = v0;
  if (v13)
  {
    v18 = v0[26];
    v66 = v12;
    v19 = swift_slowAlloc();
    *v19 = 134349312;
    *(v19 + 4) = sub_230030F60();
    v20 = *(v15 + 8);
    v20(v14, v16);
    *(v19 + 12) = 2050;
    sub_23000E540(v17, v18, type metadata accessor for IntentMessage);
    v21 = qword_230035C00[swift_getEnumCaseMultiPayload()];
    v22 = v0[27];
    sub_23000E5FC(v0[26], type metadata accessor for IntentMessage);
    *(v19 + 14) = v21;
    sub_23000E5FC(v22, type metadata accessor for IntentMessage);
    v23 = sub_230030F60();
    _os_signpost_emit_with_name_impl(&dword_22FFE9000, v11, v66, v23, "Dispatch", "id=%{name=id,public}llu type=%{name=type,public}ld", v19, 0x16u);
    MEMORY[0x23190FFD0](v19, -1, -1);
  }

  else
  {

    sub_23000E5FC(v17, type metadata accessor for IntentMessage);
    v20 = *(v15 + 8);
    v20(v14, v16);
  }

  v0[36] = v20;
  v24 = v0[30];
  v26 = v0[28];
  v25 = v0[29];
  v68(v0[33], v0[35], v0[31]);
  sub_230031000();
  swift_allocObject();
  v0[37] = sub_230030FF0();
  (*(v25 + 8))(v24, v26);
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v27 = sub_230031040();
  sub_2300006BC(v27, qword_281498840);
  v28 = sub_230031020();
  v29 = sub_230031300();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v70 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_23000DE08(0xD000000000000026, 0x800000023003A5E0, &v70);
    _os_log_impl(&dword_22FFE9000, v28, v29, "Dispatching request to %s...", v30, 0xCu);
    sub_22FFEE60C(v31);
    MEMORY[0x23190FFD0](v31, -1, -1);
    MEMORY[0x23190FFD0](v30, -1, -1);
  }

  sub_2300312D0();
  sub_2300310A0();
  sub_230031060();
  v0[38] = sub_230031050();
  v32 = *(v0[12] + 24);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v35 = v0[18];
    v36 = v0[15];
    v70 = MEMORY[0x277D84F90];
    sub_23000E3F4(0, v33, 0);
    v34 = v70;
    v37 = *(v35 + 16);
    v35 += 16;
    v38 = v32 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v65 = *(v35 + 56);
    v67 = v37;
    v63 = (v35 - 8);
    v64 = (v36 + 8);
    do
    {
      v39 = v0[19];
      v40 = v0[16];
      v41 = v0[17];
      v42 = v0[14];
      v67(v39, v38, v41);
      sub_230030F20();
      v43 = sub_230030F40();
      v45 = v44;
      (*v64)(v40, v42);
      (*v63)(v39, v41);
      v70 = v34;
      v47 = *(v34 + 16);
      v46 = *(v34 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_23000E3F4((v46 > 1), v47 + 1, 1);
        v34 = v70;
      }

      *(v34 + 16) = v47 + 1;
      v48 = v34 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v38 += v65;
      --v33;
      v0 = v69;
    }

    while (v33);
  }

  v50 = v0[24];
  v49 = v0[25];
  v51 = v0[22];
  v52 = v0[20];
  v53 = v0[11];
  sub_23000E540(v0[10], v52, type metadata accessor for IntentMessage);
  (*(v49 + 56))(v52, 0, 1, v50);
  v54 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  swift_beginAccess();
  sub_23000E414(v52, v53 + v54);
  swift_endAccess();
  *(v53 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = v34;

  sub_2300196EC(v51);
  v55 = sub_230031020();
  v56 = sub_230031300();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_22FFE9000, v55, v56, "Created XPCService. Sending message...", v57, 2u);
    MEMORY[0x23190FFD0](v57, -1, -1);
  }

  sub_2300312D0();
  v58 = v0[22];
  v0[5] = v0[21];
  v0[6] = sub_23000E484();
  v59 = sub_23000E4DC(v0 + 2);
  sub_23000E540(v58, v59, type metadata accessor for XPCIntentMessage);
  v60 = swift_task_alloc();
  v0[39] = v60;
  *v60 = v0;
  v60[1] = sub_23000CFF0;
  v61 = v0[13];

  return sub_230001940(v61, (v0 + 2));
}

uint64_t sub_23000CFF0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_23000D2B4;
  }

  else
  {
    sub_22FFEE60C((v2 + 16));
    v3 = sub_23000D10C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23000D10C()
{
  v1 = v0[37];
  v2 = v0[35];
  v10 = v0[36];
  v9 = v0[31];
  v4 = v0[12];
  v3 = v0[13];
  sub_23000E5FC(v0[22], type metadata accessor for XPCIntentMessage);
  v5 = *v3;
  v6 = v3[1];
  sub_23000E5A8(*v3, v6);
  sub_23000E5FC(v3, type metadata accessor for JetServiceResponse.Container);
  sub_23000D790();

  sub_23000D498(v4, v1);

  v10(v2, v9);

  v7 = v0[1];

  return v7(v5, v6);
}

uint64_t sub_23000D2B4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 96);
  sub_23000E5FC(*(v0 + 176), type metadata accessor for XPCIntentMessage);
  sub_22FFEE60C((v0 + 16));
  sub_23000D790();

  sub_23000D498(v2, v1);

  (*(v0 + 288))(*(v0 + 280), *(v0 + 248));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23000D498(uint64_t a1, uint64_t a2)
{
  v2 = sub_230030FC0();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_230030F80();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_230030FB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230030EF0();
  v12 = sub_230030FA0();
  sub_230030FE0();
  v19 = sub_230031340();
  if (sub_230031360())
  {

    sub_230031010();

    v13 = v20;
    if ((*(v20 + 88))(v4, v2) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13 + 8))(v4, v2);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_230030F60();
    _os_signpost_emit_with_name_impl(&dword_22FFE9000, v12, v19, v16, "Dispatch", v14, v15, 2u);
    MEMORY[0x23190FFD0](v15, -1, -1);
  }

  (*(v5 + 8))(v7, v21);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23000D790()
{
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v0 = sub_230031040();
  sub_2300006BC(v0, qword_281498840);
  v1 = sub_230031020();
  v2 = sub_230031310();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_23000DE08(0xD000000000000026, 0x800000023003A5E0, &v6);
    _os_log_impl(&dword_22FFE9000, v1, v2, "Cleaning up %s", v3, 0xCu);
    sub_22FFEE60C(v4);
    MEMORY[0x23190FFD0](v4, -1, -1);
    MEMORY[0x23190FFD0](v3, -1, -1);
  }

  return sub_230031090();
}

uint64_t sub_23000D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_23000D9A0;

  return sub_23000C420(a2, a3);
}

uint64_t sub_23000D9A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](sub_23000DB00, 0, 0);
  }
}

uint64_t sub_23000DB00()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_230030D30();
  swift_allocObject();
  sub_230030D20();
  sub_230030D10();

  sub_22FFEDBF0(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t JetServiceRequester.deinit()
{

  return v0;
}

uint64_t JetServiceRequester.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23000DC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23000DD14;

  return sub_23000D8F4(a1, a2, a3, a4, a5);
}

uint64_t sub_23000DD14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23000DE08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23000DED4(v11, 0, 0, 1, a1, a2);
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
    sub_23000EB90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_22FFEE60C(v11);
  return v7;
}

unint64_t sub_23000DED4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23000DFE0(a5, a6);
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
    result = sub_230031410();
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

void *sub_23000DFE0(uint64_t a1, unint64_t a2)
{
  v3 = sub_23000E02C(a1, a2);
  sub_23000E15C(&unk_2844E0738);
  return v3;
}

void *sub_23000E02C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2300136E4(v5, 0);
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

  result = sub_230031410();
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
        v10 = sub_2300311D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2300136E4(v10, 0);
        result = sub_2300313D0();
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

uint64_t sub_23000E15C(uint64_t result)
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

  result = sub_23000E248(result, v11, 1, v3);
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

char *sub_23000E248(char *result, int64_t a2, char a3, char *a4)
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
    sub_22FFED9B8(&qword_27DB06478, &qword_230035BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_23000E33C()
{
  result = qword_281493E80;
  if (!qword_281493E80)
  {
    result = swift_getWitnessTable(MEMORY[0x277D84D78], MEMORY[0x277D84D38], v0, v1);
    atomic_store(result, &qword_281493E80);
  }

  return result;
}

uint64_t sub_23000E390(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23000E3A0()
{
  result = qword_281493EA8[0];
  if (!qword_281493EA8[0])
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BE8], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, qword_281493EA8);
  }

  return result;
}

char *sub_23000E3F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23000EBF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23000E414(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23000E484()
{
  result = qword_281493FC0;
  if (!qword_281493FC0)
  {
    v3 = type metadata accessor for XPCIntentMessage(255);
    result = swift_getWitnessTable(protocol conformance descriptor for XPCIntentMessage, v3, v0, v1);
    atomic_store(result, &qword_281493FC0);
  }

  return result;
}

uint64_t *sub_23000E4DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23000E540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23000E5A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23000E5FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_23000ECFC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of JetServiceRequester.dispatchRaw(message:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23000E930;

  return v8(a1, a2);
}

uint64_t sub_23000E930(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of JetServiceRequester.dispatch<A>(message:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_23000DD14;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_23000EB90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_23000EBF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22FFED9B8(&qword_27DB06480, &unk_230035BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_23000ED00()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_23000ED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_23000EE10(uint64_t a1)
{
  v2 = sub_23000F474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000EE4C(uint64_t a1)
{
  v2 = sub_23000F474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23000EE88(uint64_t a1)
{
  v2 = sub_23000F4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000EEC4(uint64_t a1)
{
  v2 = sub_23000F4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23000EF00(uint64_t a1)
{
  v2 = sub_23000F5BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23000EF3C(uint64_t a1)
{
  v2 = sub_23000F5BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void JetServiceResponse.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06488, &qword_230035C40);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v25[-v3];
  v4 = sub_22FFED9B8(&qword_27DB06490, &qword_230035C48);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25[-v5];
  v27 = type metadata accessor for JetServiceResponse.Container(0);
  MEMORY[0x28223BE20](v27);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for JetServiceResponse(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_22FFED9B8(&qword_27DB06498, &qword_230035C50);
  v12 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v25[-v13];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23000F474();
  sub_230031780();
  sub_23000FED4(v33, v11, type metadata accessor for JetServiceResponse);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v11 + 1);
    v33 = *v11;
    v15 = v33;
    v17 = *(v11 + 3);
    v27 = *(v11 + 2);
    v28 = v16;
    v29 = *(v11 + 4);
    v18 = v29;
    v26 = v11[40];
    LOBYTE(v35) = 1;
    sub_23000F4C8();
    v19 = v30;
    v20 = v34;
    sub_2300315A0();
    v35 = v15;
    v36 = v16;
    v21 = v27;
    v37 = v27;
    v38 = v17;
    v39 = v18;
    LOBYTE(v18) = v26;
    v40 = v26;
    sub_23000F51C();
    v22 = v32;
    sub_230031640();
    (*(v31 + 8))(v19, v22);
    (*(v12 + 8))(v14, v20);
    sub_23000F570(v33, v28, v21, v17, v29, v18);
  }

  else
  {
    sub_23000FD74(v11, v8, type metadata accessor for JetServiceResponse.Container);
    LOBYTE(v35) = 0;
    sub_23000F5BC();
    v23 = v34;
    sub_2300315A0();
    sub_23000FDDC(&qword_281494248, type metadata accessor for JetServiceResponse.Container, protocol conformance descriptor for JetServiceResponse.Container);
    v24 = v29;
    sub_230031640();
    (*(v28 + 8))(v6, v24);
    sub_2300100E0(v8, type metadata accessor for JetServiceResponse.Container);
    (*(v12 + 8))(v14, v23);
  }
}

unint64_t sub_23000F474()
{
  result = qword_2814953C0;
  if (!qword_2814953C0)
  {
    result = swift_getWitnessTable(aSR, &type metadata for JetServiceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814953C0);
  }

  return result;
}

unint64_t sub_23000F4C8()
{
  result = qword_27DB064A0;
  if (!qword_27DB064A0)
  {
    result = swift_getWitnessTable("]S R$h", &type metadata for JetServiceResponse.ErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB064A0);
  }

  return result;
}

unint64_t sub_23000F51C()
{
  result = qword_27DB064A8;
  if (!qword_27DB064A8)
  {
    result = swift_getWitnessTable("Y+ Rx[", &type metadata for JetServiceError, v0, v1);
    atomic_store(result, &qword_27DB064A8);
  }

  return result;
}

void sub_23000F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }
}

unint64_t sub_23000F5BC()
{
  result = qword_281495398;
  if (!qword_281495398)
  {
    result = swift_getWitnessTable(byte_23003627C, &type metadata for JetServiceResponse.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_281495398);
  }

  return result;
}

uint64_t JetServiceResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v47 = sub_22FFED9B8(&qword_27DB064B0, &qword_230035C58);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v52 = &v44 - v3;
  v50 = sub_22FFED9B8(&qword_27DB064B8, &qword_230035C60);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v51 = &v44 - v4;
  v5 = sub_22FFED9B8(&qword_27DB064C0, &unk_230035C68);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for JetServiceResponse(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = a1[3];
  v64 = a1;
  sub_22FFEDA4C(a1, v17);
  sub_23000F474();
  v18 = v55;
  sub_230031770();
  if (v18)
  {
    return sub_22FFEE60C(v64);
  }

  v46 = v14;
  v44 = v11;
  v20 = v51;
  v19 = v52;
  v55 = 0;
  v45 = v16;
  v21 = v53;
  v22 = sub_230031580();
  v23 = (2 * *(v22 + 16)) | 1;
  v60 = v22;
  v61 = v22 + 32;
  v62 = 0;
  v63 = v23;
  v24 = sub_22FFEE7F8();
  v25 = v7;
  if (v24 == 2 || v62 != v63 >> 1)
  {
    v28 = sub_230031400();
    swift_allocError();
    v30 = v29;
    sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0);
    *v30 = v8;
    sub_230031480();
    sub_2300313F0();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v54 + 8))(v7, v5);
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v64);
  }

  if (v24)
  {
    LOBYTE(v56) = 1;
    sub_23000F4C8();
    v26 = v19;
    v27 = v55;
    sub_230031470();
    if (v27)
    {
LABEL_6:
      (*(v54 + 8))(v25, v5);
      swift_unknownObjectRelease();
      return sub_22FFEE60C(v64);
    }

    v33 = v21;
    sub_23000FD20();
    v34 = v47;
    sub_230031520();
    (*(v49 + 8))(v26, v34);
    (*(v54 + 8))(v25, v5);
    swift_unknownObjectRelease();
    v35 = v58;
    v36 = v59;
    v37 = v57;
    v38 = v44;
    *v44 = v56;
    v38[1] = v37;
    *(v38 + 4) = v35;
    *(v38 + 40) = v36;
    swift_storeEnumTagMultiPayload();
    v39 = v38;
  }

  else
  {
    LOBYTE(v56) = 0;
    sub_23000F5BC();
    v32 = v55;
    sub_230031470();
    if (v32)
    {
      goto LABEL_6;
    }

    v33 = v21;
    v55 = v5;
    type metadata accessor for JetServiceResponse.Container(0);
    sub_23000FDDC(&qword_281494240, type metadata accessor for JetServiceResponse.Container, protocol conformance descriptor for JetServiceResponse.Container);
    v40 = v46;
    v41 = v50;
    sub_230031520();
    v42 = v54;
    (*(v48 + 8))(v20, v41);
    (*(v42 + 8))(v7, v55);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v39 = v40;
  }

  v43 = v45;
  sub_23000FD74(v39, v45, type metadata accessor for JetServiceResponse);
  sub_23000FD74(v43, v33, type metadata accessor for JetServiceResponse);
  return sub_22FFEE60C(v64);
}

unint64_t sub_23000FD20()
{
  result = qword_27DB064C8;
  if (!qword_27DB064C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JetServiceError, &type metadata for JetServiceError, v0, v1);
    atomic_store(result, &qword_27DB064C8);
  }

  return result;
}

uint64_t sub_23000FD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23000FDDC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t JetServiceResponse.Container.intentReturn.getter()
{
  v1 = *v0;
  sub_23000E5A8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_23000FED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t JetServiceResponse.Container.init(_:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v14 = a3;
  v5 = type metadata accessor for JetServiceResponse.Container(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030D60();
  swift_allocObject();
  sub_230030D50();
  v8 = sub_230030D40();
  if (v3)
  {
    sub_2300100E0(v15, type metadata accessor for JetServiceResponse.Metadata);
  }

  else
  {
    v10 = v8;
    v11 = v9;

    *v7 = v10;
    v7[1] = v11;
    sub_23000FD74(v15, v7 + *(v5 + 20), type metadata accessor for JetServiceResponse.Metadata);
    sub_23000FD74(v7, v14, type metadata accessor for JetServiceResponse.Container);
  }

  return sub_22FFEE60C(a1);
}

uint64_t sub_2300100E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230010140()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6552746E65746E69;
  }
}

uint64_t sub_230010184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6552746E65746E69 && a2 == 0xEC0000006E727574;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_230010264(uint64_t a1)
{
  v2 = sub_2300104B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300102A0(uint64_t a1)
{
  v2 = sub_2300104B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceResponse.Container.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB064D0, &qword_230035C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300104B8();
  sub_230031780();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_23000E5A8(v12, v9);
  sub_22FFEDC44();
  sub_230031640();
  sub_22FFEDBF0(v12, v13);
  if (!v2)
  {
    type metadata accessor for JetServiceResponse.Container(0);
    LOBYTE(v12) = 1;
    type metadata accessor for JetServiceResponse.Metadata(0);
    sub_23000FDDC(&qword_281494258, type metadata accessor for JetServiceResponse.Metadata, protocol conformance descriptor for JetServiceResponse.Metadata);
    sub_230031640();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2300104B8()
{
  result = qword_2814952D8[0];
  if (!qword_2814952D8[0])
  {
    result = swift_getWitnessTable(byte_23003622C, &type metadata for JetServiceResponse.Container.CodingKeys, v0, v1);
    atomic_store(result, qword_2814952D8);
  }

  return result;
}

void JetServiceResponse.Container.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for JetServiceResponse.Metadata(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22FFED9B8(&qword_27DB064D8, &qword_230035C80);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for JetServiceResponse.Container(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300104B8();
  sub_230031770();
  if (v2)
  {
    sub_22FFEE60C(a1);
  }

  else
  {
    v15 = v8;
    v11 = v17;
    v12 = v10;
    v21 = 0;
    sub_22FFEE700();
    v13 = v19;
    sub_230031520();
    *v12 = v20;
    LOBYTE(v20) = 1;
    sub_23000FDDC(&qword_281494250, type metadata accessor for JetServiceResponse.Metadata, protocol conformance descriptor for JetServiceResponse.Metadata);
    sub_230031520();
    (*(v11 + 8))(v7, v13);
    sub_23000FD74(v5, v12 + *(v15 + 20), type metadata accessor for JetServiceResponse.Metadata);
    sub_23000FED4(v12, v16, type metadata accessor for JetServiceResponse.Container);
    sub_22FFEE60C(a1);
    sub_2300100E0(v12, type metadata accessor for JetServiceResponse.Container);
  }
}

uint64_t JetServiceResponse.Metadata.runningVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JetServiceResponse.Metadata(0) + 20);

  return sub_2300108AC(v3, a1);
}

uint64_t sub_2300108AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JetServiceResponse.Metadata.init(scheduleCacheTask:runningVersion:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = &a3[*(type metadata accessor for JetServiceResponse.Metadata(0) + 20)];

  return sub_230010968(a2, v4);
}

uint64_t sub_230010968(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2300109D8()
{
  if (*v0)
  {
    return 0x56676E696E6E7572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_230010A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000023003A6F0 == a2 || (sub_2300316D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x56676E696E6E7572 && a2 == 0xEE006E6F69737265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2300316D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_230010B14(uint64_t a1)
{
  v2 = sub_230010D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230010B50(uint64_t a1)
{
  v2 = sub_230010D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceResponse.Metadata.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB064E8, &qword_230035C90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230010D44();
  sub_230031780();
  v8[15] = 0;
  sub_230031610();
  if (!v1)
  {
    type metadata accessor for JetServiceResponse.Metadata(0);
    v8[14] = 1;
    type metadata accessor for JetPackVersion(0);
    sub_23000FDDC(&qword_281494268, type metadata accessor for JetPackVersion, protocol conformance descriptor for JetPackVersion);
    sub_2300315D0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_230010D44()
{
  result = qword_281495380;
  if (!qword_281495380)
  {
    result = swift_getWitnessTable(aMtR, &type metadata for JetServiceResponse.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495380);
  }

  return result;
}

uint64_t JetServiceResponse.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_22FFED9B8(&qword_27DB064F0, &qword_230035C98);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for JetServiceResponse.Metadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_230010D44();
  sub_230031770();
  if (!v2)
  {
    v16 = v10;
    v13 = v18;
    v14 = v19;
    v21 = 0;
    *v12 = sub_2300314F0() & 1;
    type metadata accessor for JetPackVersion(0);
    v20 = 1;
    sub_23000FDDC(&qword_281494260, type metadata accessor for JetPackVersion, protocol conformance descriptor for JetPackVersion);
    sub_2300314B0();
    (*(v13 + 8))(v9, v14);
    sub_230010968(v6, &v12[*(v16 + 20)]);
    sub_23000FD74(v12, v17, type metadata accessor for JetServiceResponse.Metadata);
  }

  return sub_22FFEE60C(a1);
}

unint64_t JetServiceResponse.Metadata.debugDescription.getter()
{
  sub_2300313E0();

  if (*v0)
  {
    v1 = 89;
  }

  else
  {
    v1 = 78;
  }

  MEMORY[0x23190F560](v1, 0xE100000000000000);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A6D0);
  type metadata accessor for JetServiceResponse.Metadata(0);
  sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
  v2 = sub_230031370();
  MEMORY[0x23190F560](v2);

  MEMORY[0x23190F560](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_23001118C(uint64_t a1)
{
  result = type metadata accessor for JetServiceResponse.Container(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230011284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2300112FC(uint64_t a1)
{
  if (!qword_281495420)
  {
    type metadata accessor for JetPackVersion(255);
    v1 = sub_230031380();
    if (!v2)
    {
      atomic_store(v1, &qword_281495420);
    }
  }
}

unint64_t sub_2300113A8()
{
  result = qword_27DB064F8;
  if (!qword_27DB064F8)
  {
    result = swift_getWitnessTable(byte_230035ED4, &type metadata for JetServiceResponse.ErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB064F8);
  }

  return result;
}

unint64_t sub_230011400()
{
  result = qword_27DB06500;
  if (!qword_27DB06500)
  {
    result = swift_getWitnessTable("=A R@k", &type metadata for JetServiceResponse.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06500);
  }

  return result;
}

unint64_t sub_230011458()
{
  result = qword_27DB06508;
  if (!qword_27DB06508)
  {
    result = swift_getWitnessTable(byte_230036044, &type metadata for JetServiceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06508);
  }

  return result;
}

unint64_t sub_2300114B0()
{
  result = qword_27DB06510;
  if (!qword_27DB06510)
  {
    result = swift_getWitnessTable(byte_2300360FC, &type metadata for JetServiceResponse.Container.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06510);
  }

  return result;
}

unint64_t sub_230011508()
{
  result = qword_27DB06518;
  if (!qword_27DB06518)
  {
    result = swift_getWitnessTable(byte_2300361B4, &type metadata for JetServiceResponse.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06518);
  }

  return result;
}

unint64_t sub_230011560()
{
  result = qword_281495370;
  if (!qword_281495370)
  {
    result = swift_getWitnessTable("}N R<i", &type metadata for JetServiceResponse.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495370);
  }

  return result;
}

unint64_t sub_2300115B8()
{
  result = qword_281495378;
  if (!qword_281495378)
  {
    result = swift_getWitnessTable(byte_23003614C, &type metadata for JetServiceResponse.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495378);
  }

  return result;
}

unint64_t sub_230011610()
{
  result = qword_2814952C8;
  if (!qword_2814952C8)
  {
    result = swift_getWitnessTable(a5oR, &type metadata for JetServiceResponse.Container.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814952C8);
  }

  return result;
}

unint64_t sub_230011668()
{
  result = qword_2814952D0;
  if (!qword_2814952D0)
  {
    result = swift_getWitnessTable(aEkR, &type metadata for JetServiceResponse.Container.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814952D0);
  }

  return result;
}

unint64_t sub_2300116C0()
{
  result = qword_281495388;
  if (!qword_281495388)
  {
    result = swift_getWitnessTable(byte_230035EFC, &type metadata for JetServiceResponse.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_281495388);
  }

  return result;
}

unint64_t sub_230011718()
{
  result = qword_281495390;
  if (!qword_281495390)
  {
    result = swift_getWitnessTable(byte_230035F24, &type metadata for JetServiceResponse.SuccessCodingKeys, v0, v1);
    atomic_store(result, &qword_281495390);
  }

  return result;
}

unint64_t sub_230011770()
{
  result = qword_2814953A0;
  if (!qword_2814953A0)
  {
    result = swift_getWitnessTable(aQR, &type metadata for JetServiceResponse.ErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_2814953A0);
  }

  return result;
}

unint64_t sub_2300117C8()
{
  result = qword_2814953A8;
  if (!qword_2814953A8)
  {
    result = swift_getWitnessTable(aMmR, &type metadata for JetServiceResponse.ErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_2814953A8);
  }

  return result;
}

unint64_t sub_230011820()
{
  result = qword_2814953B0;
  if (!qword_2814953B0)
  {
    result = swift_getWitnessTable(byte_230035FB4, &type metadata for JetServiceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814953B0);
  }

  return result;
}

unint64_t sub_230011878()
{
  result = qword_2814953B8;
  if (!qword_2814953B8)
  {
    result = swift_getWitnessTable(byte_230035FDC, &type metadata for JetServiceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814953B8);
  }

  return result;
}

uint64_t XPCOpenIntentModel.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, a2);
  v13 = sub_230014870(MEMORY[0x277D84F90]);
  (*(v10 + 8))(a1, a2);
  (*(v10 + 32))(a5, v12, a2);
  result = type metadata accessor for XPCOpenIntentModel(0, a2, a3, a4);
  *(a5 + *(result + 44)) = v13;
  return result;
}

uint64_t XPCOpenIntentModel.init(base:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  result = type metadata accessor for XPCOpenIntentModel(0, a3, a4, a5);
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t XPCOpenIntentModel.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2, v3);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_230011C20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  type metadata accessor for XPCOpenIntentModel(0, *(a3 + a4 - 32), *(a3 + a4 - 16), *(a3 + a4 - 8));

  sub_2300149AC(a1, v5);
}

uint64_t XPCOpenIntentModel.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  sub_2300149AC(a1, a2);

  v5 = *(*(*(v4 + *MEMORY[0x277D84308] + 8) - 8) + 8);

  return v5(a1);
}

void (*XPCOpenIntentModel.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  XPCOpenIntentModel.subscript.getter(a2, a3);
  return sub_230011E98;
}

void sub_230011E98(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);

    sub_2300149AC(v3, v7);

    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    sub_2300149AC(v4, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t XPCOpenIntentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  v9 = sub_22FFED9B8(&qword_27DB06520, &qword_230036370);
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v49 = &v43 - v11;
  v55 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v43 - v14;
  v15 = type metadata accessor for XPCOpenIntentModel.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable(aPR, v15);
  v16 = sub_230031590();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v56 = a3;
  v19 = type metadata accessor for XPCOpenIntentModel(0, a2, a3, a4);
  v46 = *(v19 - 8);
  v47 = v19;
  MEMORY[0x28223BE20](v19);
  v57 = &v43 - v20;
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v52 = v16;
  v21 = sub_230031040();
  sub_2300006BC(v21, qword_281498840);
  v22 = sub_230031020();
  v23 = sub_230031310();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22FFE9000, v22, v23, "Trying to decode natively encoded OpenIntentModel", v24, 2u);
    MEMORY[0x23190FFD0](v24, -1, -1);
  }

  sub_22FFEDA4C(a1, a1[3]);
  v25 = v54;
  sub_230031770();
  if (v25)
  {
    v26 = v55;
    v31 = sub_230031020();
    v32 = sub_230031310();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22FFE9000, v31, v32, "Trying to decode JS encoded OpenIntentModel", v33, 2u);
      MEMORY[0x23190FFD0](v33, -1, -1);
    }

    sub_230014AB8(a1, v58);
    v34 = v53;
    sub_2300312F0();
    (*(v26 + 32))(v57, v34, a2);
    sub_22FFEDA4C(a1, a1[3]);
    sub_230014B1C();
    v35 = v49;
    sub_230031770();
    v36 = v45;
    v37 = sub_230031580();
    MEMORY[0x28223BE20](v37);
    *(&v43 - 2) = v35;
    v38 = sub_230012BD8(MEMORY[0x277D84F98], sub_230014B70, (&v43 - 4), v37);
    MEMORY[0x23190FE50](v25);

    v40 = v47;
    v39 = v57;
    *&v57[*(v47 + 44)] = v38;
    (*(v44 + 8))(v35, v36);
    v30 = v39;
  }

  else
  {
    LOBYTE(v58[0]) = 0;
    v27 = v50;
    v28 = v52;
    sub_230031520();
    v29 = v27;
    v30 = v57;
    (*(v55 + 32))(v57, v29, a2);
    sub_22FFED9B8(&qword_27DB06530, &qword_230036378);
    v59 = 1;
    sub_230014BE0(&qword_27DB06538, sub_230014B8C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_230031520();
    (*(v51 + 8))(v18, v28);
    v40 = v47;
    *&v30[*(v47 + 44)] = v58[0];
  }

  v41 = v46;
  (*(v46 + 16))(v48, v30, v40);
  sub_22FFEE60C(a1);
  return (*(v41 + 8))(v30, v40);
}

uint64_t sub_230012734(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (qword_281493F58 != -1)
  {
    swift_once();
  }

  v7 = sub_230031040();
  sub_2300006BC(v7, qword_281498840);
  sub_230014CB8(v5, v4, v6);
  v8 = sub_230031020();
  v9 = sub_230031310();
  sub_230014CC8(v5, v4, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v10 = 136315138;
    sub_230014D88();
    v11 = sub_2300316B0();
    v13 = sub_23000DE08(v11, v12, &v25);

    *(v10 + 4) = v13;
    v3 = v2;
    _os_log_impl(&dword_22FFE9000, v8, v9, "Trying to decode field: %s", v10, 0xCu);
    sub_22FFEE60C(v22);
    MEMORY[0x23190FFD0](v22, -1, -1);
    MEMORY[0x23190FFD0](v10, -1, -1);
  }

  sub_22FFED9B8(&qword_27DB06520, &qword_230036370);
  v14 = sub_2300314E0();
  if (v3)
  {
    MEMORY[0x23190FE50](v3);
    v14 = sub_230031510();
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v16 = v15;
    v17 = 0;
  }

  v18 = v14;
  if (v6)
  {
  }

  else
  {
    v5 = sub_2300316B0();
    v4 = v19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *a1;
  sub_230013A38(v18, v16, v17, v5, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v24;
  return result;
}

uint64_t OpenCodingKey.stringValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2300316B0();
  }

  return a1;
}

uint64_t sub_230012BD8(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 48); ; i += 24)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v11[0] = v8;
      v11[1] = v9;
      v12 = v10;
      sub_230014CB8(v8, v9, v10);
      a2(&v13, v11);
      if (v4)
      {
        break;
      }

      sub_230014CC8(v8, v9, v10);
      if (!--v5)
      {
        return v13;
      }
    }

    sub_230014CC8(v8, v9, v10);
  }

  return result;
}

uint64_t sub_230012CA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_230012DA0(char a1)
{
  sub_230031740();
  MEMORY[0x23190FB00](a1 & 1);
  return sub_230031760();
}

uint64_t sub_230012DE8(char a1)
{
  if (a1)
  {
    return 0x73646C656966;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_230012E54(uint64_t a1)
{
  sub_230031740();
  sub_230012D78(v3, *v1);
  return sub_230031760();
}

uint64_t sub_230012EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230012CA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230012EE8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2300152CC();
  *a2 = result;
  return result;
}

uint64_t sub_230012F1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aPR, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_230012F70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aPR, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t XPCOpenIntentModel.encode(to:)(void *a1, uint64_t a2)
{
  v16 = *(a2 + 16);
  v4 = *(a2 + 24);
  v14 = *(a2 + 32);
  v5 = type metadata accessor for XPCOpenIntentModel.CodingKeys(255, v16, v4, v14);
  swift_getWitnessTable(aPR, v5);
  v6 = sub_2300316A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  sub_22FFEDA4C(a1, a1[3]);
  v10 = v15;
  sub_230031780();
  v20 = 0;
  v11 = v17;
  sub_230031640();
  if (!v11)
  {
    v18 = *(v10 + *(a2 + 44));
    v19 = 1;
    sub_22FFED9B8(&qword_27DB06530, &qword_230036378);
    sub_230014BE0(&qword_27DB06548, sub_230014C64, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_230031640();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t OpenCodingKey.intValue.getter(unint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = HIBYTE(a2) & 0xF;
    v5 = result & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      return 0;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      sub_230014CB8(result, a2, 1);
      v9 = sub_2300141EC(v28, a2, 10);
      v27 = v29;
      sub_230014CC8(v28, a2, 1);
LABEL_65:
      if (v27)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v30[0] = result;
      v30[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v4)
        {
          v8 = v4 - 1;
          if (v4 != 1)
          {
            v9 = 0;
            v19 = v30 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v9 = 0;
          v24 = v30;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v4)
      {
        v8 = v4 - 1;
        if (v4 != 1)
        {
          v9 = 0;
          v13 = v30 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_230031410();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v8 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (result)
            {
              v16 = (result + 1);
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_63;
                }

                v18 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_63;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v9 = 0;
          if (result)
          {
            while (1)
            {
              v22 = *result - 48;
              if (v22 > 9)
              {
                goto LABEL_63;
              }

              v23 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v9 = 0;
        LOBYTE(v8) = 1;
        goto LABEL_64;
      }

      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (result)
          {
            v10 = (result + 1);
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                goto LABEL_63;
              }

              v12 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v8) = 0;
LABEL_64:
          v31 = v8;
          v27 = v8;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  return result;
}

uint64_t OpenCodingKey.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    sub_230014CD8();
    return sub_2300313B0();
  }
}

uint64_t sub_230013598()
{
  if (*(v0 + 16) != 1)
  {
    return sub_2300316B0();
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_230013600@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_230013634@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_230013640()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_230014CD8();
    return sub_2300313B0();
  }
}

uint64_t sub_2300136A8(uint64_t a1)
{
  v2 = sub_230014B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2300136E4(uint64_t a1, uint64_t a2)
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

  sub_22FFED9B8(&qword_27DB06478, &qword_230035BE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_230013758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22FFED9B8(&qword_27DB06678, &qword_230036660);
  v38 = v4;
  result = sub_230031440();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_2300152E8(v25, v26, v27);
      }

      sub_230031740();
      sub_2300311A0();
      result = sub_230031760();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230013A38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_23002F3D0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_230013758(v20, a6 & 1);
      v15 = sub_23002F3D0(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_2300316E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_230013BE0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = a3;

    return sub_2300152D4(v27, v28, v29);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v25[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = v25[7] + 24 * v15;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a3;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;
}

void *sub_230013BE0()
{
  v1 = v0;
  sub_22FFED9B8(&qword_27DB06678, &qword_230036660);
  v2 = *v0;
  v3 = sub_230031430();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_2300152E8(v23, v24, v26);
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

uint64_t sub_230013D78(uint64_t a1, unint64_t a2)
{
  v2 = sub_230031230();
  v6 = sub_230013DF8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_230013DF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_230031390();
    if (!v9 || (v10 = v9, v11 = sub_2300136E4(v9, 0), v12 = sub_230013F50(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_230031190();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_230031190();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_230031410();
LABEL_4:

  return sub_230031190();
}

unint64_t sub_230013F50(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_230014170(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_230031200();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_230031410();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_230014170(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2300311E0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_230014170(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_230031210();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23190F5A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_2300141EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_230031220();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_230013D78(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230031410();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unint64_t sub_23001476C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22FFED9B8(&qword_27DB06680, &qword_230036668);
    v3 = sub_230031450();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23002F3D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_230014870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22FFED9B8(&qword_27DB06678, &qword_230036660);
    v3 = sub_230031450();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_2300152E8(v7, v8, v9);
      result = sub_23002F3D0(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2300149AC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - v2);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_230014AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_230014B1C()
{
  result = qword_27DB06528;
  if (!qword_27DB06528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenCodingKey, &type metadata for OpenCodingKey, v0, v1);
    atomic_store(result, &qword_27DB06528);
  }

  return result;
}

unint64_t sub_230014B8C()
{
  result = qword_27DB06540;
  if (!qword_27DB06540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FieldValue, &type metadata for FieldValue, v0, v1);
    atomic_store(result, &qword_27DB06540);
  }

  return result;
}

uint64_t sub_230014BE0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_22FFF0054(&qword_27DB06530, &qword_230036378);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230014C64()
{
  result = qword_27DB06550;
  if (!qword_27DB06550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FieldValue, &type metadata for FieldValue, v0, v1);
    atomic_store(result, &qword_27DB06550);
  }

  return result;
}

uint64_t sub_230014CB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_230014CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_230014CD8()
{
  result = qword_27DB06558;
  if (!qword_27DB06558)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BD0], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &qword_27DB06558);
  }

  return result;
}

unint64_t sub_230014D30()
{
  result = qword_27DB06560;
  if (!qword_27DB06560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenCodingKey, &type metadata for OpenCodingKey, v0, v1);
    atomic_store(result, &qword_27DB06560);
  }

  return result;
}

unint64_t sub_230014D88()
{
  result = qword_27DB06568[0];
  if (!qword_27DB06568[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenCodingKey, &type metadata for OpenCodingKey, v0, v1);
    atomic_store(result, qword_27DB06568);
  }

  return result;
}

void sub_230014DE4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23001515C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_230014E6C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_230014FA8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_23001515C()
{
  if (!qword_27DB065F0[0])
  {
    v0 = sub_230031130();
    if (!v1)
    {
      atomic_store(v0, qword_27DB065F0);
    }
  }
}

uint64_t sub_2300151C8(uint64_t a1, unsigned int a2)
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

uint64_t sub_230015210(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2300152D4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2300152E8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_23001532C(unsigned __int8 a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230015460(unsigned __int8 a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t AttributionPreMatchIntent.currentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030E00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for AttributionPreMatchIntent(uint64_t a1)
{
  result = qword_281494848;
  if (!qword_281494848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}