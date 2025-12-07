void CloudRecordLabel.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B210, &qword_217788BF0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36_34();
  v5 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21738C3B4(v5, v6, v7);
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_21764EF08(&qword_27CB25158);
    OUTLINED_FUNCTION_19_40();
    memcpy(v12, v11, sizeof(v12));
    OUTLINED_FUNCTION_19_40();
    v8 = OUTLINED_FUNCTION_41_33();
    v9(v8);
    memcpy(v13, v11, sizeof(v13));
    sub_21738C118(v12, v10);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217284540(v12);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21764DD94(uint64_t a1)
{
  sub_2177531E8();
  sub_21738C4B0(v1, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v5);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_21738C4B0(v1 + 128, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v5);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

MusicKit::CloudRecordLabel::Metadata __swiftcall CloudRecordLabel.Metadata.init(snippets:)(Swift::OpaquePointer_optional snippets)
{
  rawValue = snippets.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.snippets.value._rawValue = v4;
  result.snippets.is_nil = v5;
  return result;
}

uint64_t static CloudRecordLabel.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_217751DE8();
      sub_21726F358();
      v4 = v3;

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21764DFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B1B0;
  if (!qword_27CB2B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1B0);
  }

  return result;
}

uint64_t sub_21764E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudRecordLabel.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21764E098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B1C0;
  if (!qword_27CB2B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1C0);
  }

  return result;
}

unint64_t sub_21764E0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B1C8;
  if (!qword_27CB2B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1C8);
  }

  return result;
}

unint64_t sub_21764E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B1D0;
  if (!qword_27CB2B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1D0);
  }

  return result;
}

uint64_t sub_21764E194(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21764E1EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21764E230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25318, &qword_2177657C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21764E2A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

unint64_t sub_21764E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B1E8;
  if (!qword_27CB2B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B1E8);
  }

  return result;
}

uint64_t sub_21764E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764EF8C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21764E38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764EF8C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudRecordLabel.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B218, &qword_217788BF8);
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_111();
  v27 = OUTLINED_FUNCTION_160(v22, v22[3]);
  sub_21764EF8C(v27, v28, v29);
  sub_217751DE8();
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  sub_2175D4ED4(&qword_27CB25298);
  sub_217752F38();

  (*(v25 + 8))(v20, v23, v30);
  OUTLINED_FUNCTION_170();
}

void CloudRecordLabel.Metadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    OUTLINED_FUNCTION_119();

    sub_21727DDE0(a1, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CloudRecordLabel.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727DDE0(v8, v1, v2, v3, v4, v5, v6);
  }

  return sub_217753238();
}

void CloudRecordLabel.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B228, &qword_217788C00);
  OUTLINED_FUNCTION_0_0();
  v29 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = OUTLINED_FUNCTION_160(v24, v24[3]);
  sub_21764EF8C(v33, v34, v35);
  sub_2177532C8();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2175D4ED4(&qword_280BE2358);
    sub_217752E58();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudRecordLabel.attributes.getter()
{
  OUTLINED_FUNCTION_51_23();
  OUTLINED_FUNCTION_6_87();
  return sub_21764E2A0(v1 + v2, v0, v3);
}

uint64_t CloudRecordLabel.relationships.getter()
{
  result = OUTLINED_FUNCTION_51_23();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t CloudRecordLabel.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_51_23() + 32));
  *v0 = v2;

  return sub_21733CF78(v2);
}

void CloudRecordLabel.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudRecordLabel(0) + 32);
  sub_217221010(*(v1 + v3));
  *(v1 + v3) = v2;
}

uint64_t sub_21764E994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4C38 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BE4C48;
  v2 = byte_280BE4C50;
  *(v0 + 32) = qword_280BE4C40;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE3F58 = v0;

  return sub_217751DE8();
}

uint64_t sub_21764EA64(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21764EAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21764EB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764DFE0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21764EB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764DFE0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudRecordLabel.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = type metadata accessor for CloudRecordLabel(0);
  CloudRecordLabel.Attributes.hash(into:)();
  sub_217753208();
  sub_21738C4B0(v1 + *(v3 + 28), __src, &qword_27CB24A98, &unk_217759060);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v24, __src, sizeof(v24));
    OUTLINED_FUNCTION_24();
    sub_2172640D4(a1, v4, v5, v6, v7, v8, v9, v10);
    sub_2172640D4(a1, v11, v12, v13, v14, v15, v16, v17);
    sub_217284540(v24);
  }

  v18 = *(v1 + *(v3 + 32));
  if (v18 == 1 || (OUTLINED_FUNCTION_24(), !v18))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0(a1, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_21764ECF0(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_21764EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

unint64_t sub_21764EDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B200;
  if (!qword_27CB2B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B200);
  }

  return result;
}

unint64_t sub_21764EE48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB247F0, &qword_21775D360);
    sub_21764E1EC(&unk_27CB250D0);
    v3 = sub_21764E1EC(&unk_27CB250D8);
    result = OUTLINED_FUNCTION_44(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21764EF08(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24278, &unk_217759070);
    sub_21764EE48(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21764EF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B220;
  if (!qword_27CB2B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B220);
  }

  return result;
}

unint64_t sub_21764F02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B238;
  if (!qword_27CB2B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B238);
  }

  return result;
}

unint64_t sub_21764F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B240;
  if (!qword_27CB2B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B240);
  }

  return result;
}

unint64_t sub_21764F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B248;
  if (!qword_27CB2B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B248);
  }

  return result;
}

unint64_t sub_21764F134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B250;
  if (!qword_27CB2B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B250);
  }

  return result;
}

unint64_t sub_21764F18C()
{
  result = qword_27CB2B258;
  if (!qword_27CB2B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B260, &qword_217788E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B258);
  }

  return result;
}

unint64_t sub_21764F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B268;
  if (!qword_27CB2B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B268);
  }

  return result;
}

unint64_t sub_21764F24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B270;
  if (!qword_27CB2B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B270);
  }

  return result;
}

void sub_21764F404(uint64_t a1)
{
  type metadata accessor for CloudRecordLabel.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &unk_280BE3F40, &type metadata for CloudRecordLabel.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE3F60, &type metadata for CloudRecordLabel.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE3F38, &type metadata for CloudRecordLabel.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21764F520(uint64_t a1)
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  if (v1 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE42F8, &qword_27CB261D8, &qword_217761D38);
    if (v2 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
      if (v3 <= 0x3F)
      {
        sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
        if (v4 <= 0x3F)
        {
          sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_2172E2DB0(319);
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

_BYTE *storeEnumTagSinglePayload for CloudRecordLabel.Associations.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_21764F780(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudRecordLabel.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudRecordLabel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21764F9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B288;
  if (!qword_27CB2B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B288);
  }

  return result;
}

unint64_t sub_21764FA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B290;
  if (!qword_27CB2B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B290);
  }

  return result;
}

unint64_t sub_21764FAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B298;
  if (!qword_27CB2B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B298);
  }

  return result;
}

unint64_t sub_21764FB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2A0;
  if (!qword_27CB2B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2A0);
  }

  return result;
}

unint64_t sub_21764FB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2A8;
  if (!qword_27CB2B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2A8);
  }

  return result;
}

unint64_t sub_21764FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2B0;
  if (!qword_27CB2B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2B0);
  }

  return result;
}

unint64_t sub_21764FC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2B8;
  if (!qword_27CB2B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2B8);
  }

  return result;
}

unint64_t sub_21764FC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2C0;
  if (!qword_27CB2B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2C0);
  }

  return result;
}

unint64_t sub_21764FCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2C8;
  if (!qword_27CB2B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2C8);
  }

  return result;
}

unint64_t sub_21764FD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2D0;
  if (!qword_27CB2B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2D0);
  }

  return result;
}

unint64_t sub_21764FD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2D8;
  if (!qword_27CB2B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_45(uint64_t a1)
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_21_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v9 + 104);
  v12 = *(v9 + 112);

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v12, v13, v9 + 1584, a5, v10, a7, a8, v9 + 144, a9);
}

double OUTLINED_FUNCTION_26_41()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  return result;
}

void OUTLINED_FUNCTION_46_28()
{

  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
}

uint64_t OUTLINED_FUNCTION_50_26(uint64_t a1, uint64_t a2)
{

  return sub_21738C4B0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_51_23()
{

  return type metadata accessor for CloudRecordLabel(0);
}

uint64_t CloudStation.Kind.convertToStationKind(with:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  result = 0x6565536D75626C61;
  v6 = *v2;
  v7 = v2[1];
  v8 = *v2 == 0x6565536D75626C61 && v7 == 0xEB00000000646564;
  if (v8 || (v9 = *a1, v10 = a1[1], result = OUTLINED_FUNCTION_1_118(0x6565536D75626C61, 0xEB00000000646564), (result & 1) != 0))
  {
    v11 = 3;
    goto LABEL_7;
  }

  result = 0x6E4F747369747261;
  v12 = v6 == 0x6E4F747369747261 && v7 == 0xEA0000000000796CLL;
  if (v12 || (result = OUTLINED_FUNCTION_1_118(0x6E4F747369747261, 0xEA0000000000796CLL), (result & 1) != 0))
  {
    v11 = 4;
    goto LABEL_7;
  }

  result = 0x6553747369747261;
  v13 = v6 == 0x6553747369747261 && v7 == 0xEC00000064656465;
  if (v13 || (result = OUTLINED_FUNCTION_1_118(0x6553747369747261, 0xEC00000064656465), (result & 1) != 0))
  {
    v11 = 5;
    goto LABEL_7;
  }

  result = 0x6169726F74696465;
  v14 = v6 == 0x6169726F74696465 && v7 == 0xE90000000000006CLL;
  if (v14 || (result = OUTLINED_FUNCTION_1_118(0x6169726F74696465, 0xE90000000000006CLL), (result & 1) != 0))
  {
    v11 = 6;
    goto LABEL_7;
  }

  result = 0x74616D726F66;
  v15 = v6 == 0x74616D726F66 && v7 == 0xE600000000000000;
  if (v15 || (result = OUTLINED_FUNCTION_1_118(0x74616D726F66, 0xE600000000000000), (result & 1) != 0))
  {
    v11 = 7;
    goto LABEL_7;
  }

  result = 0x65726E6567;
  v16 = v6 == 0x65726E6567 && v7 == 0xE500000000000000;
  if (v16 || (result = OUTLINED_FUNCTION_1_118(0x65726E6567, 0xE500000000000000), (result & 1) != 0))
  {
    v11 = 8;
    goto LABEL_7;
  }

  v17 = v6 == 0xD000000000000015 && 0x80000002177AC080 == v7;
  if (v17 || (result = OUTLINED_FUNCTION_1_118(0xD000000000000015, 0x80000002177AC080), (result & 1) != 0))
  {
    v11 = 9;
    goto LABEL_7;
  }

  result = 0x7473696C79616C70;
  v18 = v6 == 0x7473696C79616C70 && v7 == 0xEE00646564656553;
  if (v18 || (result = OUTLINED_FUNCTION_1_118(0x7473696C79616C70, 0xEE00646564656553), (result & 1) != 0))
  {
    v11 = 10;
    goto LABEL_7;
  }

  result = 0x7972657571;
  v19 = v6 == 0x7972657571 && v7 == 0xE500000000000000;
  if (v19 || (result = OUTLINED_FUNCTION_1_118(0x7972657571, 0xE500000000000000), (result & 1) != 0))
  {
    v11 = 11;
    goto LABEL_7;
  }

  result = 0x64656553676E6F73;
  v20 = v6 == 0x64656553676E6F73 && v7 == 0xEA00000000006465;
  if (v20 || (result = OUTLINED_FUNCTION_1_118(0x64656553676E6F73, 0xEA00000000006465), (result & 1) != 0))
  {
    v11 = 12;
    goto LABEL_7;
  }

  result = 0x6E696D6165727473;
  v21 = v6 == 0x6E696D6165727473 && v7 == 0xE900000000000067;
  if (v21 || (result = OUTLINED_FUNCTION_1_118(0x6E696D6165727473, 0xE900000000000067), (result & 1) != 0))
  {
    if (!v10)
    {
      v11 = 2;
      goto LABEL_7;
    }

    result = OUTLINED_FUNCTION_2_110();
    v22 = v9 == result && v10 == 0xE700000000000000;
    if (v22 || (result = sub_217753058(), (result & 1) != 0))
    {
      v11 = 0;
      goto LABEL_7;
    }

    result = OUTLINED_FUNCTION_3_101();
    v11 = 1;
    if (v9 != result || v10 != 0xE900000000000074)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v11 = 13;
    if (v6 != 1919251317 || v7 != 0xE400000000000000)
    {
LABEL_84:
      result = sub_217753058();
      if ((result & 1) == 0)
      {
        ++v11;
      }
    }
  }

LABEL_7:
  *a2 = v11;
  return result;
}

MusicKit::Station::_StreamingKind_optional __swiftcall CloudStation.StreamingKind.convertToStationStreamingKind()()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_2_110();
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == v3 && v4 == 0xE700000000000000;
  if (v6 || (LOBYTE(v3) = sub_217753058(), (v3 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_3_101();
    v7 = 1;
    if (v5 != v3 || v4 != v8)
    {
      LOBYTE(v3) = sub_217753058();
      if (v3)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }
  }

  *v2 = v7;
  return v3;
}

uint64_t CloudStation.StreamingKind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudStation.StreamingKind.rawValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

void *sub_217650564@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

unint64_t sub_21765065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2E0;
  if (!qword_27CB2B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2E0);
  }

  return result;
}

unint64_t sub_2176506B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2E8;
  if (!qword_27CB2B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2E8);
  }

  return result;
}

unint64_t sub_217650728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4D80;
  if (!qword_280BE4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4D80);
  }

  return result;
}

unint64_t sub_21765077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4D50;
  if (!qword_280BE4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4D50);
  }

  return result;
}

void sub_2176507D0(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646564;
  v3 = 0x6565536D75626C61;
  switch(*v1)
  {
    case 3:
      break;
    case 4:
      v2 = 0xEA0000000000796CLL;
      v3 = 0x6E4F747369747261;
      break;
    case 5:
      v2 = 0xEC00000064656465;
      v3 = 0x6553747369747261;
      break;
    case 6:
      v2 = 0xE90000000000006CLL;
      v3 = 0x6169726F74696465;
      break;
    case 7:
      v2 = 0xE600000000000000;
      v3 = 0x74616D726F66;
      break;
    case 8:
      v2 = 0xE500000000000000;
      v3 = 0x65726E6567;
      break;
    case 9:
      v2 = 0x80000002177AC080;
      v3 = 0xD000000000000015;
      break;
    case 0xA:
      v2 = 0xEE00646564656553;
      v3 = 0x7473696C79616C70;
      break;
    case 0xB:
      v2 = 0xE500000000000000;
      v3 = 0x7972657571;
      break;
    case 0xC:
      v2 = 0xEA00000000006465;
      v3 = 0x64656553676E6F73;
      break;
    case 0xD:
      v2 = 0xE400000000000000;
      v3 = 1919251317;
      break;
    default:
      v3 = 0x6E696D6165727473;
      v2 = 0xE900000000000067;
      break;
  }

  *a1 = v3;
  a1[1] = v2;
}

double sub_217650964(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = 0xD000000000000010;
      v4 = "permissionDenied";
      goto LABEL_5;
    case 2:
      v3 = 0xD000000000000010;
      v4 = "userTokenRevoked";
LABEL_5:
      v2 = (v4 - 32) | 0x8000000000000000;
      break;
    case 3:
      v2 = 0xEF6E4964656E6769;
      v3 = 0x53746F4E72657375;
      break;
    case 4:
      v2 = 0x80000002177AA2E0;
      v3 = 0xD00000000000001ELL;
      break;
    case 5:
      v2 = 0x80000002177AA360;
      v3 = 0xD00000000000001BLL;
      break;
    case 6:
      v2 = 0x80000002177AA380;
      v3 = 0xD000000000000016;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v3, v2);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v5);
}

void sub_217650AC8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(a1 + 32) == 1)
  {
    v3[0] = 0x20726572616542;
    MEMORY[0x21CEA23B0](v2, v1);
    sub_2177512E8();
  }

  else
  {
    v3[0] = *a1;
    v3[1] = v1;
    v4 = xmmword_2177899E0;
    v5 = 1;
    sub_217751DE8();
    sub_217650AC8(v3);
    sub_21758A41C(v2, v1, 7, 0, 1);

    sub_2177512E8();
  }
}

uint64_t sub_217650C48(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  if (v6)
  {
    if (a2[4])
    {
      v12 = v3 == v8 && v2 == v7;
      if (v12 || (OUTLINED_FUNCTION_4_104() & 1) != 0)
      {
        if (v5 == 7)
        {
          v13 = 1;
          v14 = OUTLINED_FUNCTION_1_119();
          sub_21758E1D4(v14, v15, v16, v17, 1);
          v18 = OUTLINED_FUNCTION_0_126();
          sub_21758E1D4(v18, v19, v20, v21, 1);
          v22 = OUTLINED_FUNCTION_0_126();
          sub_21758A41C(v22, v23, v24, v25, 1);
          v26 = OUTLINED_FUNCTION_1_119();
          sub_21758A41C(v26, v27, v28, v29, 1);
          if (v9 == 7)
          {
            return v13;
          }

          return 0;
        }

        v67 = OUTLINED_FUNCTION_1_119();
        sub_21758E1D4(v67, v68, v69, v70, 1);
        v71 = OUTLINED_FUNCTION_0_126();
        sub_21758E1D4(v71, v72, v73, v74, 1);
        if (v9 != 7)
        {
          v75 = sub_217708CE0();
          v13 = 1;
          v76 = OUTLINED_FUNCTION_0_126();
          sub_21758A41C(v76, v77, v78, v79, 1);
          v80 = OUTLINED_FUNCTION_1_119();
          sub_21758A41C(v80, v81, v82, v83, 1);
          if (v75)
          {
            return v13;
          }

          return 0;
        }
      }

      else
      {
        v102 = OUTLINED_FUNCTION_1_119();
        sub_21758E1D4(v102, v103, v104, v105, 1);
        v106 = OUTLINED_FUNCTION_0_126();
        sub_21758E1D4(v106, v107, v108, v109, 1);
      }

      v110 = OUTLINED_FUNCTION_0_126();
      sub_21758A41C(v110, v111, v112, v113, 1);
      v42 = OUTLINED_FUNCTION_1_119();
      v46 = 1;
LABEL_13:
      sub_21758A41C(v42, v43, v44, v45, v46);
      return 0;
    }

LABEL_12:
    v30 = OUTLINED_FUNCTION_1_119();
    sub_21758E1D4(v30, v31, v32, v33, v11);
    v34 = OUTLINED_FUNCTION_0_126();
    sub_21758E1D4(v34, v35, v36, v37, v6);
    v38 = OUTLINED_FUNCTION_0_126();
    sub_21758A41C(v38, v39, v40, v41, v6);
    v42 = OUTLINED_FUNCTION_1_119();
    v46 = v11;
    goto LABEL_13;
  }

  if (a2[4])
  {
    goto LABEL_12;
  }

  v48 = v3 == v8 && v2 == v7;
  if (!v48 && (OUTLINED_FUNCTION_4_104() & 1) == 0)
  {
    v114 = OUTLINED_FUNCTION_1_119();
    sub_21758E1D4(v114, v115, v116, v117, 0);
    v118 = OUTLINED_FUNCTION_0_126();
    sub_21758E1D4(v118, v119, v120, v121, 0);
    v122 = OUTLINED_FUNCTION_0_126();
    sub_21758A41C(v122, v123, v124, v125, 0);
    v42 = OUTLINED_FUNCTION_1_119();
    v46 = 0;
    goto LABEL_13;
  }

  if (v5 == v9 && v4 == v10)
  {
    v84 = OUTLINED_FUNCTION_3_102();
    sub_21758E1D4(v84, v85, v86, v87, v88);
    v89 = OUTLINED_FUNCTION_0_126();
    sub_21758E1D4(v89, v90, v91, v92, 0);
    v93 = OUTLINED_FUNCTION_0_126();
    sub_21758A41C(v93, v94, v95, v96, 0);
    v97 = OUTLINED_FUNCTION_3_102();
    sub_21758A41C(v97, v98, v99, v100, v101);
    return 1;
  }

  v50 = sub_217753058();
  v51 = OUTLINED_FUNCTION_1_119();
  sub_21758E1D4(v51, v52, v53, v54, 0);
  v55 = OUTLINED_FUNCTION_0_126();
  sub_21758E1D4(v55, v56, v57, v58, 0);
  v59 = OUTLINED_FUNCTION_0_126();
  sub_21758A41C(v59, v60, v61, v62, 0);
  v63 = OUTLINED_FUNCTION_1_119();
  sub_21758A41C(v63, v64, v65, v66, 0);
  return v50 & 1;
}

double sub_217650EA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 32))
  {
    MEMORY[0x21CEA3550](1);
    OUTLINED_FUNCTION_6_88(a1);
    if (v3 == 7)
    {
      sub_217753208();
    }

    else
    {
      sub_217753208();

      return sub_217343DB0();
    }
  }

  else
  {
    MEMORY[0x21CEA3550](0);
    OUTLINED_FUNCTION_6_88(a1);

    sub_217751FF8();
  }

  return result;
}

uint64_t sub_217650F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_2177531E8();
  if (v2)
  {
    MEMORY[0x21CEA3550](1);
    OUTLINED_FUNCTION_6_88(v4);
    sub_217753208();
    if (v1 != 7)
    {
      sub_217343DB0();
    }
  }

  else
  {
    MEMORY[0x21CEA3550](0);
    OUTLINED_FUNCTION_6_88(v4);
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_21765105C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_2177531E8();
  sub_217650EA0(v5);
  return sub_217753238();
}

unint64_t sub_2176510AC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if ((*(v0 + 32) & 1) == 0)
  {
    v13 = *(v0 + 24);
    OUTLINED_FUNCTION_2_4();
    v38 = 0xD000000000000014;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v35 = v14;
    v15 = OUTLINED_FUNCTION_2_111();
    v18 = sub_2176F98EC(v15, v16, v17, v2, v1);
    MEMORY[0x21CEA23B0](v18);

    MEMORY[0x21CEA23B0](11298, 0xE200000000000000, v19);
    MEMORY[0x21CEA23B0](0xD000000000000014, v35);

    sub_217752AA8();

    v33 = 0x547265737520200ALL;
    v36 = 0xEF22203A6E656B6FLL;
    v20 = OUTLINED_FUNCTION_2_111();
    v23 = sub_2176F98EC(v20, v21, v22, v3, v13);
    MEMORY[0x21CEA23B0](v23);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000, v24);
LABEL_6:
    MEMORY[0x21CEA23B0](v33, v36, v25);

    v11 = 10506;
    v12 = 0xE200000000000000;
    goto LABEL_7;
  }

  v38 = 0xD000000000000016;
  if (*(v0 + 16) != 7)
  {
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v37 = v26;
    v27 = OUTLINED_FUNCTION_2_111();
    v30 = sub_2176F98EC(v27, v28, v29, v2, v1);
    MEMORY[0x21CEA23B0](v30);

    MEMORY[0x21CEA23B0](11298, 0xE200000000000000, v31);
    MEMORY[0x21CEA23B0](0xD000000000000014, v37);

    v33 = 0;
    v36 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177B3200);
    v25.n128_f64[0] = sub_217650964(v3);
    goto LABEL_6;
  }

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v34 = v4;
  v5 = OUTLINED_FUNCTION_2_111();
  v8 = sub_2176F98EC(v5, v6, v7, v2, v1);
  MEMORY[0x21CEA23B0](v8);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000, v9);
  MEMORY[0x21CEA23B0](0xD000000000000011, v34);

  v11 = 41;
  v12 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x21CEA23B0](v11, v12, v10);
  return v38;
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

uint64_t sub_2176513E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217651424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_21765148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2F0;
  if (!qword_27CB2B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2F0);
  }

  return result;
}

uint64_t sub_2176514E0(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    if (a6 == 1)
    {
      return 1;
    }
  }

  else if (a6 != 1)
  {
    if (a1 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 2 || ((a4 ^ a1) & 1) != 0)
    {
      return 0;
    }

    if (a3)
    {
      if (a6)
      {
        v7 = a2 == a5 && a3 == a6;
        if (v7 || (sub_217753058() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_217651584(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69746E6568747561 && a2 == 0xEE006E6F69746163)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217651628(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B318, &qword_217789C38);
  OUTLINED_FUNCTION_0_39();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217651D38(v14, v15, v16);
  v17 = sub_2177532F8();
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  sub_217651DE0(v17, v18, v19);
  sub_217752F38();
  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_217651774(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (a2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a4)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_21765181C(char a1, uint64_t a2, uint64_t a3)
{
  sub_2177531E8();
  if (a3 == 1)
  {
    goto LABEL_6;
  }

  sub_217753208();
  if (a1 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a3)
  {
LABEL_6:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  return sub_217753238();
}

void *sub_2176518D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B300, &qword_217789C30);
  OUTLINED_FUNCTION_0_39();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217651D38(v9, v10, v11);
  v12 = sub_2177532C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_217651D8C(v12, v13, v14);
    sub_217752E58();
    (*(v5 + 8))(v8, v2);
    v9 = v16[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_217651A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217651584(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_217651A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217651D38(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217651AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217651D38(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_217651AEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2176518D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_217651B70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 24))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217651BD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_217651C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B2F8;
  if (!qword_27CB2B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B2F8);
  }

  return result;
}

uint64_t sub_217651C88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  sub_2177531E8();
  if (v3 == 1)
  {
    goto LABEL_6;
  }

  sub_217753208();
  if (v2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!v3)
  {
LABEL_6:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  return sub_217753238();
}

unint64_t sub_217651D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B308;
  if (!qword_27CB2B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B308);
  }

  return result;
}

unint64_t sub_217651D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B310;
  if (!qword_27CB2B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B310);
  }

  return result;
}

unint64_t sub_217651DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B320;
  if (!qword_27CB2B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B320);
  }

  return result;
}

_BYTE *_s8MetadataV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_217651EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B328;
  if (!qword_27CB2B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B328);
  }

  return result;
}

unint64_t sub_217651F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B330;
  if (!qword_27CB2B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B330);
  }

  return result;
}

unint64_t sub_217651F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B338;
  if (!qword_27CB2B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B338);
  }

  return result;
}

uint64_t CloudMetrics.reco_id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t static CloudMetrics.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21765207C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64695F6F636572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217652110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21765207C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21765213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176522E0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217652178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176522E0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudMetrics.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B340, &qword_217789D58);
  OUTLINED_FUNCTION_41();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176522E0(v8, v9, v10);
  sub_2177532F8();
  sub_217752EF8();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_2176522E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B348;
  if (!qword_27CB2B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B348);
  }

  return result;
}

uint64_t CloudMetrics.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudMetrics.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t CloudMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B350, &qword_217789D60);
  OUTLINED_FUNCTION_41();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176522E0(v11, v12, v13);
  sub_2177532C8();
  if (!v2)
  {
    v14 = sub_217752E18();
    v16 = v15;
    (*(v7 + 8))(v10, v3);
    *a2 = v14;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2176525C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B358;
  if (!qword_27CB2B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMetrics.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2176526D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B360;
  if (!qword_27CB2B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B360);
  }

  return result;
}

unint64_t sub_21765272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B368;
  if (!qword_27CB2B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B368);
  }

  return result;
}

unint64_t sub_217652784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B370;
  if (!qword_27CB2B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B370);
  }

  return result;
}

char *sub_2176527D8()
{
  v1 = v0;
  v68 = *v0;
  v2 = v68;
  v3 = *(v68 + 88);
  OUTLINED_FUNCTION_0();
  v65 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v66 = &v55 - v6;
  v7 = *(v68 + 80);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - v11;
  v12 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v70 = v13;
  MEMORY[0x28223BE20](v14);
  v69 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v25 = *(v2 + 96);
  v71 = v7;
  v67 = v3;
  v63 = v25;
  v26 = type metadata accessor for _MusicLibraryMapping.Item.Source(0, v7, v3, v25);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v55 - v29;
  (*(v31 + 16))(&v55 - v29, &v1[*(v2 + 120)], v26, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *(v9 + 8);

    v32(v30, v71);
    return v1;
  }

  v58 = v9;
  v60 = *v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = v70;
  v35 = &v30[*(TupleTypeMetadata2 + 48)];
  v57 = *(v70 + 32);
  v57(v24, v35, v12);
  v36 = *(v34 + 16);
  v62 = v21;
  v36(v21, v24, v12);
  v59 = v36;
  v36(v18, v24, v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v71);
  v38 = v12;
  v61 = v24;
  if (EnumTagSinglePayload == 1)
  {
    v39 = v70;
    (*(v70 + 8))(v18, v12);
    goto LABEL_11;
  }

  v56 = v12;
  v40 = v58;
  v41 = v64;
  v42 = v71;
  (*(v58 + 32))(v64, v18, v71);
  v43 = v63;
  MusicItem.identifierSet.getter(v42, v63, v73);
  v44 = v73[3];
  sub_217751DE8();
  sub_217269F50(v73);
  if (v44)
  {

    MusicItem.identifierSet.getter(v71, v43, v72);
    v45 = v72[6];
    sub_217751DE8();
    sub_217269F50(v72);
    if (v45)
    {

      v46 = v69;
      v47 = v71;
      MusicItem.removingLibraryIdentifiers()(v71, v69);
      (*(v58 + 8))(v41, v47);
      v48 = v70;
      v49 = v62;
      v38 = v56;
      (*(v70 + 8))(v62, v56);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
      v57(v49, v46, v38);
      v39 = v48;
      goto LABEL_11;
    }

    (*(v58 + 8))(v41, v71);
  }

  else
  {
    (*(v40 + 8))(v41, v71);
  }

  v39 = v70;
  v38 = v56;
LABEL_11:
  LOBYTE(v73[0]) = v60;
  v50 = v62;
  v59(v69, v62, v38);
  (*(v65 + 16))(v66, &v1[*(*v1 + 112)], v67);
  sub_217751DE8();
  v51 = _MusicLibraryMapping.Item.__allocating_init(id:kind:catalogItem:context:)();
  if (v51)
  {
    v52 = v51;
    v53 = *(v39 + 8);
    v53(v50, v38);
    v53(v61, v38);
    return v52;
  }

  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B2C40);
  v72[0] = v1;
  sub_217753018();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t _MusicLibraryMapping.Item.__allocating_init(id:kind:existingCatalogItem:context:)()
{
  OUTLINED_FUNCTION_1_120();
  v1 = OUTLINED_FUNCTION_0_50();
  _MusicLibraryMapping.Item.init(id:kind:existingCatalogItem:context:)(v1, v2, v3, v4, v5);
  return v0;
}

char *_MusicLibraryMapping.Item.__allocating_init(id:kind:catalogItem:context:)()
{
  OUTLINED_FUNCTION_1_120();
  v0 = OUTLINED_FUNCTION_0_50();
  return _MusicLibraryMapping.Item.init(id:kind:catalogItem:context:)(v0, v1, v2, v3, v4);
}

char *_MusicLibraryMapping.Item.init(id:kind:catalogItem:context:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v51 = a5;
  v10 = *v5;
  v11 = *(*v5 + 80);
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_7();
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v24 = *a3;
  v49 = a1;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  if (v24 != 10)
  {
    v38 = &v6[v10[15]];
    v39 = v20;
    v40 = *(swift_getTupleTypeMetadata2() + 48);
    *v38 = v24;
    (*(v13 + 32))(&v38[v40], v50, v39);
    v41 = v10[11];
    type metadata accessor for _MusicLibraryMapping.Item.Source(0, v11, v41, v10[12]);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_96();
    (*(v43 + 32))(&v6[v44], v51, v41);
    return v6;
  }

  v48 = v10;
  v25 = v50;
  v26 = v20;
  (*(v13 + 16))(v16, v50, v20, v21);
  if (__swift_getEnumTagSinglePayload(v16, 1, v11) != 1)
  {
    (*(v13 + 8))(v25, v26);
    v42 = *(v18 + 32);
    v42(v23, v16, v11);
    v42(&v6[*(*v6 + 120)], v23, v11);
    v41 = v48[11];
    type metadata accessor for _MusicLibraryMapping.Item.Source(0, v11, v41, v48[12]);
    goto LABEL_9;
  }

  v27 = *(v13 + 8);
  sub_217751DE8();
  v28 = v26;
  v47 = v27;
  v27(v16, v26);
  if (qword_280BE8358 != -1)
  {
    swift_once();
  }

  v29 = sub_217751AF8();
  __swift_project_value_buffer(v29, qword_280C02570);
  sub_217751DE8();
  v30 = sub_217751AD8();
  v31 = sub_217752808();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v33;
    *v32 = 136446210;
    v34 = v25;
    v35 = sub_21729C0E8(v49, a2, &v52);

    *(v32 + 4) = v35;
    _os_log_impl(&dword_2171EE000, v30, v31, "Failed to create a valid library mapping item for item with id %{public}s. Please make sure to provide the item kind information when library mapping.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x21CEA4360](v33, -1, -1);
    MEMORY[0x21CEA4360](v32, -1, -1);

    OUTLINED_FUNCTION_3_103();
    (*(v36 + 8))(v51);
    v37 = v34;
  }

  else
  {

    OUTLINED_FUNCTION_3_103();
    (*(v45 + 8))(v51);
    v37 = v25;
  }

  v47(v37, v28);

  swift_deallocPartialClassInstance();
  return 0;
}

char *_MusicLibraryMapping.Item.init(id:kind:existingCatalogItem:context:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = *v5;
  v10 = *a3;
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v11 = *(v8 + 80);
  v12 = &v5[*(v8 + 120)];
  if (v10 == 10)
  {
    OUTLINED_FUNCTION_41_0();
    (*(v13 + 32))(v12, a4, v11);
  }

  else
  {
    sub_2177528F8();
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    *v12 = v10;
    OUTLINED_FUNCTION_41_0();
    (*(v15 + 32))(&v12[v14], a4, v11);
    __swift_storeEnumTagSinglePayload(&v12[v14], 0, 1, v11);
  }

  v16 = *(v9 + 88);
  type metadata accessor for _MusicLibraryMapping.Item.Source(0, v11, v16, *(v9 + 96));
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_96();
  (*(v17 + 32))(&v5[v18], a5, v16);
  return v5;
}

uint64_t _MusicLibraryMapping.Item.id.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t _MusicLibraryMapping.Item.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  type metadata accessor for _MusicLibraryMapping.Item.Source(0, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  OUTLINED_FUNCTION_41_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _MusicLibraryMapping.Item.Source.catalogItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_41_0();
    (*(v11 + 32))(a2, v7, v10);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  else
  {
    v13 = sub_2177528F8();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_1_96();
    return (*(v14 + 32))(a2, &v7[v15], v13);
  }
}

uint64_t **_MusicLibraryMapping.Item.deinit()
{
  v1 = *v0;

  v2 = v1[11];
  OUTLINED_FUNCTION_1_96();
  (*(v3 + 8))(v0 + v4, v2);
  v5 = (*v0)[15];
  type metadata accessor for _MusicLibraryMapping.Item.Source(0, v1[10], v2, v1[12]);
  OUTLINED_FUNCTION_41_0();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t _MusicLibraryMapping.Item.__deallocating_deinit()
{
  _MusicLibraryMapping.Item.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217653A20(uint64_t *a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v3 = type metadata accessor for _MusicLibraryMapping.Item.Source(319, a1[10], v2, a1[12]);
    if (v5 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_217653B68(uint64_t a1)
{
  sub_2177528F8();
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_217653C08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 <= v5 + ((*(v3 + 80) + 1) & ~*(v3 + 80)))
  {
    v6 = v5 + ((*(v3 + 80) + 1) & ~*(v3 + 80));
  }

  else
  {
    v6 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 < 2)
    {
LABEL_26:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_26;
  }

LABEL_18:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 255;
}

void sub_217653D70(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = v7 + ((*(v5 + 80) + 1) & ~*(v5 + 80));
  if (v6 > v8)
  {
    v8 = *(v5 + 64);
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

id sub_217653F78(uint64_t a1, char a2)
{
  if (a1)
  {
    sub_217696E10(2u, a1);
    sub_217696E10(3u, a1);
    sub_217696E10(4u, a1);
    if (sub_217696E10(0, a1))
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_217696E10(1u, a1);
    v6 = v4 | 0x20;
    if (!v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | 0x100;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
  }

  if (a2 == 2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return [objc_opt_self() rawValueForPlaylistTraits_];
}

uint64_t static CloudResourceConvertible.catalogTypes.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 192))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t CloudResourceConvertible<>.init(usingCloudResourceFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v29 = a4;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = dynamic_cast_existential_1_conditional(a2, a2, &protocol descriptor for MusicItemTypeValueProviding);
  if (v20)
  {
    sub_21770F91C(v20, v21);
  }

  sub_2171FF30C(a1, v31);
  v22 = v31[6];
  CloudResource<>.init(from:)(v31, AssociatedTypeWitness, AssociatedConformanceWitness, v29, v30, v19);
  if (!v22)
  {
    (*(v13 + 16))(v16, v19, v28);
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    Decoder.dataRequestConfiguration.getter(v23, v24);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v25 = Decoder.sharedRelatedItemStore.getter();
    (*(a3 + 24))(v16, v31, v25, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a2, a3);
    (*(v13 + 8))(v19, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudResourceConvertible<>.encodeCloudResource(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  Encoder.dataRequestConfiguration.getter(v17, v18);
  (*(a3 + 32))(v23, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a2, a3);
  sub_21733AB9C(v23);
  CloudResource<>.encode(to:)(a1, v11, v21, v22);
  return (*(v13 + 8))(v16, v11);
}

void RecentlyPlayedMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v7 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v8 = v7;
    v9 = sub_217751D98();
  }

  else
  {
    v9 = sub_217751DC8();
  }

  v10 = sub_21729FFD4(v9);
  v11 = sub_217638214(v10);
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11;
  }

  v14 = static LegacyModel.innerModelObject(for:)(a2);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  if (v13 == 13)
  {

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_84();
    v129 = *v49;
    v50 = objc_opt_self();
    sub_217751DE8();
    v51 = [v50 identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_2_105();
    v52 = sub_217751DE8();
    OUTLINED_FUNCTION_4_100(v52, v53, v54, v55, v56, v57, v58, v59, v112, v119, v129, *(&v129 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191[0]);
    sub_217269F50(__dst);

    v60 = sub_21736C814(a3, &v141);
    v68 = OUTLINED_FUNCTION_3_97(v60, v61, v62, v63, v64, v65, v66, v67, v115, v122, v130, v137, v141, v142, v143, v144, v145, v146);
    Station.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v68, v69, v70, v71);
    swift_unknownObjectRelease();
    v72 = sub_217638634(a3);
    OUTLINED_FUNCTION_1_112(v72, v73, v74, v75, v76, v77, v78, v79, v116, v123, v131, v138, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191[0]);
    v48 = 2;
    goto LABEL_17;
  }

  if (v13 == 4)
  {

    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_84();
    v126 = *v16;
    v17 = objc_opt_self();
    sub_217751DE8();
    v18 = [v17 identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_2_105();
    v19 = sub_217751DE8();
    OUTLINED_FUNCTION_4_100(v19, v20, v21, v22, v23, v24, v25, v26, v112, v119, v126, *(&v126 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191[0]);
    sub_217269F50(__dst);

    v27 = sub_21736C814(a3, &v141);
    v35 = OUTLINED_FUNCTION_3_97(v27, v28, v29, v30, v31, v32, v33, v34, v113, v120, v127, v135, v141, v142, v143, v144, v145, v146);
    Playlist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v35, v36, v37, v38, v39);
    swift_unknownObjectRelease();
    v40 = sub_217638634(a3);
    OUTLINED_FUNCTION_1_112(v40, v41, v42, v43, v44, v45, v46, v47, v114, v121, v128, v136, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191[0]);
    v48 = 1;
LABEL_17:
    *(a4 + 56) = v48;
    return;
  }

  if (v13 != 2)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B3330);
    *&v191[0] = v13;
    type metadata accessor for MusicKit_SoftLinking_MPModelGenericObjectType(0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_24:
    sub_217752D08();
    __break(1u);
    return;
  }

  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_84();
  v132 = *v80;
  v81 = objc_opt_self();
  sub_217751DE8();
  v82 = [v81 identifierSetFromLegacyModelObject_];
  OUTLINED_FUNCTION_2_105();
  v83 = sub_217751DE8();
  OUTLINED_FUNCTION_4_100(v83, v84, v85, v86, v87, v88, v89, v90, v112, v119, v132, *(&v132 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191[0]);
  sub_217269F50(__dst);

  v91 = sub_21736C814(a3, &v141);
  v99 = OUTLINED_FUNCTION_3_97(v91, v92, v93, v94, v95, v96, v97, v98, v117, v124, v133, v139, v141, v142, v143, v144, v145, v146);
  Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v99, v100, v101, v102, v103);
  swift_unknownObjectRelease();
  v104 = sub_217638634(a3);
  OUTLINED_FUNCTION_1_112(v104, v105, v106, v107, v108, v109, v110, v111, v118, v125, v134, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191[0]);
  *(a4 + 56) = 0;
}

uint64_t RecentlyPlayedMusicItem.convertToRawDictionary(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_21733C220(v1, &v27);
  if (v32)
  {
    if (v32 == 1)
    {
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      v14 = sub_21753D3A4(v2, v11, v12, v13);
      sub_21726B8C4(&v19);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      v14 = sub_21753D618(v2);
      sub_217283DC8(&v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    v14 = sub_21753D86C(v2, v15, v16, v17);
    sub_21725CE44(&v19);
  }

  return v14;
}

uint64_t RecentlyPlayedMusicItem.underlyingLegacyModelObjectType.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_21733C220(v1, v4);
  *a1 = 0x1A0F00u >> (8 * v4[56]);
  return sub_217635D18(v4);
}

BOOL sub_217654B28(uint64_t a1)
{
  v1 = sub_217752DC8();

  return v1 != 0;
}

BOOL sub_217654B70@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_217654B28(*a1);
  *a2 = result;
  return result;
}

uint64_t RecentlyPlayedMusicItem.propertyProvider.getter()
{
  v1 = sub_21733C220(v0, &v33);
  if (v38)
  {
    if (v38 == 1)
    {
      *&v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37).n128_u64[0];
      OUTLINED_FUNCTION_6_84(v10, v11, v12, v13, v9);
      return sub_21726B8C4(&v25);
    }

    else
    {
      *&v20 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37).n128_u64[0];
      OUTLINED_FUNCTION_6_84(v21, v22, v23, v24, v20);
      return sub_217283DC8(&v25);
    }
  }

  else
  {
    *&v15 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37).n128_u64[0];
    OUTLINED_FUNCTION_6_84(v16, v17, v18, v19, v15);
    return sub_21725CE44(&v25);
  }
}

_BYTE *_s45LegacyModelRecentlyPlayedMusicItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_217654CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A508C(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_217654D0C(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217654D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B378;
  if (!qword_27CB2B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B378);
  }

  return result;
}

unint64_t sub_217654D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B380;
  if (!qword_27CB2B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B380);
  }

  return result;
}

uint64_t sub_217654DB8(uint64_t a1, const void *a2)
{
  bzero((v2 + 16), 0x2EAuLL);
  *(v2 + 1544) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1552) = 0xF000000000000000;
  _s7MonitorCMa();
  *(v2 + 1560) = 0u;
  *(v2 + 1576) = 0u;
  *(v2 + 1592) = 0u;
  swift_allocObject();
  *(v2 + 1608) = sub_217548944();
  *(v2 + 768) = a1;
  memcpy((v2 + 776), a2, 0x2EAuLL);
  return v2;
}

BOOL sub_217654E64(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_217752D38();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

BOOL sub_217654EA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  sub_217283840(&qword_27CB2B400, &qword_27CB2B3E8, &qword_21778A5D8, MEMORY[0x277D84490]);
  sub_217752678();
  sub_2177526A8();
  return v2 == v1;
}

uint64_t sub_217654F4C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 752)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i, a2);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void sub_217654FCC(void *a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_2172CEDE8(v3, v8);
  if (!v8[1])
  {
LABEL_11:
    __break(1u);
    return;
  }

  memcpy(a1, v8, 0x2EAuLL);
  if (!*(v3 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = sub_217658118();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v4();
    sub_2172202A4(v6, v7);
  }

  sub_2175B118C(0, 1);
}

void sub_217655094(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_2176F762C(*(a1 + 16), 0);
    v4 = sub_2176F7F7C(&v5, v3 + 32, v2, a1);
    sub_217751DE8();

    if (v4 == v2)
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_21765513C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = sub_2176F7698();
    sub_217751DE8();

    v5 = sub_2176F8038(&v6, v4 + 32, v3, a1);

    if (v5 == v3)
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_217655200(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_21765925C(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v6 = *(*v2 + 16);
    if (v6 < v4)
    {
      __break(1u);
    }

    else
    {
      v7 = sub_217658118();
      if (v7)
      {
        v9 = v7;
        v10 = v8;
        v7();
        sub_2172202A4(v9, v10);
      }

      sub_2175B118C(v5, v6);
    }
  }
}

void ApplicationMusicPlayer.Queue.init<A, B>(for:startingAt:)()
{
  OUTLINED_FUNCTION_12();
  v26[2] = v1;
  v26[3] = v2;
  v26[1] = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282(v22);
  *(v0 + 1624) = sub_2176582F8();
  v23 = OUTLINED_FUNCTION_8_74(MEMORY[0x277D84F90]);
  (*(v17 + 16))(v21, v9, v5, v23);
  (*(v12 + 16))(v15, v7, v10);
  MusicPlayer.Queue.init<A, B>(for:startingAt:)();

  sub_217656D5C();

  (*(v12 + 8))(v7, v10);
  v24 = OUTLINED_FUNCTION_212_0();
  v25(v24);
  OUTLINED_FUNCTION_13();
}

void ApplicationMusicPlayer.Queue.init<A>(_:startingAt:)()
{
  OUTLINED_FUNCTION_12();
  v19 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282(v14);
  *(v0 + 1624) = sub_2176582F8();
  v15 = OUTLINED_FUNCTION_8_74(MEMORY[0x277D84F90]);
  (*(v9 + 16))(v13, v7, v3, v15);
  sub_2171F5110(v5, v20, &qword_27CB24410, &unk_2177586F0);
  MusicPlayer.Queue.init<A>(_:startingAt:)(v13, v20, v3, v19, v16, v17, v18);

  sub_217656D5C();

  sub_2171F0738(v5, &qword_27CB24410, &unk_2177586F0);
  (*(v9 + 8))(v7, v3);
  OUTLINED_FUNCTION_13();
}

void ApplicationMusicPlayer.Queue.init(arrayLiteral:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282(v3);
  *(v0 + 1624) = sub_2176582F8();
  v4 = MEMORY[0x277D84F90];
  *(v0 + 1616) = MEMORY[0x277D84F90];
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 0u;
  v5 = *(v2 + 16);
  if (v5)
  {
    v18 = v4;
    sub_217276338(0, v5, 0);
    v6 = v18;
    v7 = v2 + 32;
    do
    {
      sub_2171FF30C(v7, v16);
      sub_2171FF30C(v16, v15);
      sub_2171FF30C(v15, __dst);
      sub_2173E04B4(__dst, 0, 1, 0, 1, __src);
      __swift_destroy_boxed_opaque_existential_1(v15);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v8 = __src[0];
      v9 = __src[1];
      memcpy(__dst, __src, 0x2D9uLL);
      v17 = 0;
      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      sub_217751DE8();
      if (v11 >= v10 >> 1)
      {
        sub_217276338((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 752 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      memcpy((v12 + 48), __dst, 0x2D9uLL);
      *(v12 + 777) = v17;
      v7 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  bzero(__dst, 0x2EAuLL);
  sub_217654DB8(v6, __dst);

  sub_217656D5C();

  OUTLINED_FUNCTION_13();
}

uint64_t ApplicationMusicPlayer.Queue.__allocating_init(album:startingAt:)()
{
  OUTLINED_FUNCTION_2_112();
  OUTLINED_FUNCTION_132();
  return ApplicationMusicPlayer.Queue.init(album:startingAt:)();
}

uint64_t ApplicationMusicPlayer.Queue.init(album:startingAt:)()
{
  v2 = OUTLINED_FUNCTION_13_60();
  OUTLINED_FUNCTION_282(v2);
  v3 = sub_2176582F8();
  OUTLINED_FUNCTION_5_89(v3, MEMORY[0x277D84F90]);
  sub_21725CF0C(v0, v7);
  sub_217275710(v1, v6);
  v4 = MusicPlayer.Queue.init(album:startingAt:)();

  sub_217656D5C();

  sub_21727576C(v1);
  sub_21725CE44(v0);
  return v4;
}

uint64_t ApplicationMusicPlayer.Queue.__allocating_init(playlist:startingAt:)()
{
  OUTLINED_FUNCTION_2_112();
  OUTLINED_FUNCTION_132();
  return ApplicationMusicPlayer.Queue.init(playlist:startingAt:)();
}

uint64_t ApplicationMusicPlayer.Queue.init(playlist:startingAt:)()
{
  v2 = OUTLINED_FUNCTION_13_60();
  OUTLINED_FUNCTION_282(v2);
  v3 = sub_2176582F8();
  OUTLINED_FUNCTION_5_89(v3, MEMORY[0x277D84F90]);
  sub_2172757C0(v0, v7);
  sub_217275858(v1, &v6);
  v4 = MusicPlayer.Queue.init(playlist:startingAt:)();

  sub_217656D5C();

  sub_2172758B4(v1);
  sub_21726B8C4(v0);
  return v4;
}

double sub_217655A40@<D0>(_OWORD *a1@<X8>)
{
  sub_217655AC4(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_217655A7C(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_217751DE8();

  return sub_217655B04(v3);
}

uint64_t sub_217655AC4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 1624);
  *a1 = *(v1 + 1616);
  a1[1] = v2;
  sub_217751DE8();
}

double sub_217655B04(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_2176562CC(v3, 0);
}

uint64_t sub_217655B60(void *a1)
{
  a1[2] = v1;
  v3 = *(v1 + 1616);
  v4 = *(v1 + 1624);
  *a1 = v3;
  a1[1] = v4;
  sub_217751DE8();

  return OUTLINED_FUNCTION_132();
}

double sub_217655BC0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v4 = *a1;
    v5 = v2;
    sub_217751DE8();

    sub_217655B04(&v4);
  }

  else
  {
    v4 = *a1;
    v5 = v2;
    return sub_217655B04(&v4);
  }

  return result;
}

void *ApplicationMusicPlayer.Queue.Entries.init()@<X0>(void *a1@<X8>)
{
  v2 = _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282(v2);
  result = sub_2176582F8();
  *a1 = MEMORY[0x277D84F90];
  a1[1] = result;
  return result;
}

void sub_217655CB4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  if (*v4)
  {
    v5 = *(v0 + 1624);
    *&v23[0] = *(v0 + 1616);
    *(&v23[0] + 1) = v5;
    sub_217751DE8();
    sub_217751DE8();

    sub_217655F14(v3);
    *v22 = v23[0];
LABEL_19:
    sub_217655B04(v22);
    OUTLINED_FUNCTION_13();
    return;
  }

  swift_beginAccess();
  sub_2171F5110(v0 + 16, v22, &qword_27CB24410, &unk_2177586F0);
  if (!v22[1])
  {
    goto LABEL_8;
  }

  v6 = memcpy(v23, v22, 0x2EAuLL);
  v7 = *(v0 + 1616);
  MEMORY[0x28223BE20](v6);
  v21[2] = v23;
  sub_217751DE8();

  v8 = sub_217654F4C(sub_21755F714, v21, v7);
  v10 = v9;

  sub_217276358(v23);
  if (v10)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_8:
    sub_2171F0738(v22, &qword_27CB24410, &unk_2177586F0);
    goto LABEL_9;
  }

LABEL_10:
  v12 = *(v1 + 1616);
  *(&v23[0] + 1) = *(v1 + 1624);
  sub_217751DE8();

  v13 = sub_217658118();
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    v13();
    sub_2172202A4(v15, v16);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = *(v12 + 16);
  if (v17 < v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = *(v3 + 16);
  if (!__OFADD__(v17, v18))
  {
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23[0] = v12;
    if (!isUniquelyReferenced_nonNull_native || (v17 + v18) > *(v12 + 24) >> 1)
    {
      sub_2172AFF5C();
      v12 = v20;
      *&v23[0] = v20;
    }

    sub_217503808();
    v22[0] = v12;
    v22[1] = *(&v23[0] + 1);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
}

void sub_217655F14(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v17 = a1 + 32;
    v4 = *v1;
    while (2)
    {
      v5 = *(v4 + 16);
      sub_217275AA0(v17 + 752 * v3, v19);
      v6 = sub_217658118();
      if (v6)
      {
        v8 = v6;
        v9 = v7;
        v6();
        sub_2172202A4(v8, v9);
      }

      sub_2171F5110(v19, v18, &qword_27CB28B88, &qword_217771908);
      v10 = *(v4 + 16);
      if (v10 < v5)
      {
LABEL_18:
        __break(1u);
      }

      else
      {
        if (!swift_isUniquelyReferenced_nonNull_native() || v10 >= *(v4 + 24) >> 1)
        {
          sub_2172AFF5C();
          v4 = v11;
        }

        v12 = v4 + 752 * v5;
        v13 = v12 + 32;
        swift_arrayDestroy();
        memmove((v12 + 784), (v12 + 32), 752 * (*(v4 + 16) - v5));
        v14 = 0;
        ++*(v4 + 16);
        v15 = v12 - 720;
        do
        {
          if (v14)
          {
            __break(1u);
            goto LABEL_18;
          }

          v15 += 752;
          sub_217275AA0(v18, v15);
          v14 = 1;
        }

        while (v15 < v13);
        ++v3;
        sub_2171F0738(v18, &qword_27CB28B88, &qword_217771908);
        sub_2171F0738(v19, &qword_27CB28B88, &qword_217771908);
        if (v3 != v2)
        {
          continue;
        }

        *v16 = v4;
      }

      break;
    }
  }

  else
  {
  }
}

uint64_t sub_2176560EC(void *__src)
{
  result = memcpy(__dst, __src, 0x2F2uLL);
  v21 = 0;
  v3 = __dst[0];
  if (!__dst[0])
  {
    return sub_2171F0738(__dst, &qword_27CB2B408, &qword_21778A5E8);
  }

  if (__dst[0] >= 1)
  {
    v4 = 0;
    v5 = *v1;
    v17 = v1;
    while (2)
    {
      if (v4 == v3)
      {
LABEL_18:
        __break(1u);
      }

      else
      {
        v6 = *(v5 + 16);
        sub_217275AA0(&__dst[1], v19);
        v7 = sub_217658118();
        if (v7)
        {
          v9 = v7;
          v10 = v8;
          v7();
          sub_2172202A4(v9, v10);
        }

        result = sub_2171F5110(v19, v18, &qword_27CB28B88, &qword_217771908);
        v11 = *(v5 + 16);
        if (v11 >= v6)
        {
          if (!swift_isUniquelyReferenced_nonNull_native() || v11 >= *(v5 + 24) >> 1)
          {
            sub_2172AFF5C();
            v5 = v12;
          }

          v13 = v5 + 752 * v6;
          v14 = v13 + 32;
          swift_arrayDestroy();
          result = memmove((v13 + 784), (v13 + 32), 752 * (*(v5 + 16) - v6));
          v15 = 0;
          ++*(v5 + 16);
          v16 = v13 - 720;
          do
          {
            if (v15)
            {
              __break(1u);
              goto LABEL_18;
            }

            v16 += 752;
            result = sub_217275AA0(v18, v16);
            v15 = 1;
          }

          while (v16 < v14);
          ++v4;
          sub_2171F0738(v18, &qword_27CB28B88, &qword_217771908);
          result = sub_2171F0738(v19, &qword_27CB28B88, &qword_217771908);
          if (v4 != v3)
          {
            continue;
          }

          *v17 = v5;
          v21 = v3;
          return sub_2171F0738(__dst, &qword_27CB2B408, &qword_21778A5E8);
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176562CC(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  if (*(v2 + 1632) == 1 && (a2 & 1) != 0)
  {
    v6 = *(v2 + 1640);
    *(v3 + 1640) = v5;
    *(v3 + 1648) = v4;
    sub_217751DE8();

    return sub_217659654(v6);
  }

  else
  {
    sub_217656E60();
    sub_217751DE8();

    sub_217658218(0, 0);

    *(v2 + 1616) = v5;
    *(v2 + 1624) = v4;
    sub_217751DE8();

    return sub_217656D5C();
  }
}

void sub_2176563DC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  *(v1 + 1632) = 0;
  swift_beginAccess();
  v39 = *(v1 + 1528);
  v12 = *(v1 + 1536);
  swift_beginAccess();
  v13 = *(v1 + 1544);
  v14 = *(v1 + 1552);
  v15 = *(v1 + 1616);
  v16 = *(v1 + 1624);
  sub_217751DE8();
  v41 = v14;
  v42 = v13;
  sub_217275908(v13, v14);
  sub_217751DE8();

  v17 = sub_2172C90C8(v15, v16);

  v44 = v17;
  v50 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24438, &qword_217758740);
  v18 = sub_217283840(&qword_27CB2B3F0, &qword_27CB24438, &qword_217758740, MEMORY[0x277D83958]);
  sub_2175AC040(v18, v19, v20);
  sub_217751EC8();
  if (sub_217654EA8() || (v38 = v12, !*(v1 + 1600)))
  {

    v31 = v41;
  }

  else
  {
    v37 = *(v1 + 1600);
    v21 = v43;
    (*(v5 + 16))(v40, v11, v43);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v26 = v21;
    v27 = v42;
    (*(v5 + 32))(v25 + v22, v40, v26);
    *(v25 + v23) = v17;
    v28 = (v25 + v24);
    v29 = v38;
    *v28 = v39;
    v28[1] = v29;
    v30 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
    v31 = v41;
    *v30 = v27;
    v30[1] = v31;
    v48 = sub_217659AD4;
    v49 = v25;
    v44 = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_217656CF4;
    v47 = &block_descriptor_50_0;
    v32 = _Block_copy(&v44);
    sub_217275908(v27, v31);
    v33 = v37;

    [v33 performQueueTransaction_];
    _Block_release(v32);
  }

  v34 = *(v1 + 1640);
  if (v34)
  {
    v35 = *(v1 + 1648);
    v44 = *(v1 + 1640);
    v45 = v35;
    sub_217751DE8();

    sub_2176562CC(&v44, 1);
    sub_217275680(v42, v31);
    (*(v5 + 8))(v11, v43);
    sub_217659654(v34);
  }

  else
  {
    (*(v5 + 8))(v11, v43);
    sub_217275680(v42, v31);
  }

  OUTLINED_FUNCTION_13();
}

double sub_2176567DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  v7 = sub_217752D98();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v7 + 776 * v9 - 744;
    v11 = &qword_27CB2B3F8;
    v12 = &qword_21778A5E0;
    v48 = v7;
    while (v9 <= *(v8 + 16))
    {
      sub_2171F5110(v10, __src, v11, v12);
      if (v52)
      {
        memcpy(__dst, &__src[1], 0x2EAuLL);
        if (qword_27CB23C60 != -1)
        {
          swift_once();
        }

        v13 = sub_217751AF8();
        __swift_project_value_buffer(v13, qword_27CB8A2A0);
        sub_217275AA0(__dst, __src);
        v14 = sub_217751AD8();
        v15 = sub_217752828();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = v12;
          v17 = v11;
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v50[0] = v19;
          *v18 = 136446210;
          v20 = MusicPlayer.Queue.Entry.description.getter();
          v22 = v21;
          sub_217276358(__src);
          v23 = sub_21729C0E8(v20, v22, v50);

          *(v18 + 4) = v23;
          _os_log_impl(&dword_2171EE000, v14, v15, "Removing %{public}s.", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x21CEA4360](v19, -1, -1);
          v24 = v18;
          v11 = v17;
          v12 = v16;
          v8 = v48;
          MEMORY[0x21CEA4360](v24, -1, -1);
        }

        else
        {

          sub_217276358(__src);
        }

        v25 = sub_217751F18();
        [a1 removeItemWithIdentifier_];

        sub_217276358(__dst);
      }

      else
      {
        sub_2171F0738(__src, v11, v12);
      }

      v10 -= 776;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

LABEL_15:

  v26 = sub_217752D88();
  v27 = *(v26 + 16);
  if (!v27)
  {
  }

  v28 = 0;
  v29 = v26 + 32;
  do
  {
    sub_2171F5110(v29, __src, &qword_27CB2B3F8, &qword_21778A5E0);
    if (v52 == 1)
    {
      sub_2171F0738(__src, &qword_27CB2B3F8, &qword_21778A5E0);
      goto LABEL_30;
    }

    v30 = __src[0];
    memcpy(__dst, &__src[1], 0x2EAuLL);
    if (!v28)
    {
      _s5QueueC25ContiguousInsertionRecordCMa();
      v28 = swift_allocObject();
      v37 = MEMORY[0x277D84F90];
      v28[6] = v30;
      v28[7] = v37;
      v28[2] = a4;
      v28[3] = a5;
      v28[4] = a6;
      v28[5] = a7;
      sub_217751DE8();
      sub_217275908(a6, a7);
LABEL_24:

      goto LABEL_25;
    }

    v31 = v28[6];
    swift_beginAccess();
    v32 = *(v28[7] + 16);
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v30 == v34)
    {
      goto LABEL_24;
    }

    sub_21765713C(a1, a3);
    _s5QueueC25ContiguousInsertionRecordCMa();
    v35 = swift_allocObject();

    v36 = MEMORY[0x277D84F90];
    v35[6] = v30;
    v35[7] = v36;
    v35[2] = a4;
    v35[3] = a5;
    v35[4] = a6;
    v35[5] = a7;
    sub_217751DE8();
    sub_217275908(a6, a7);

    v28 = v35;
LABEL_25:
    sub_217275AA0(__dst, __src);
    swift_beginAccess();
    v38 = v28[7];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172AFF5C();
      v38 = v40;
    }

    v39 = *(v38 + 16);
    if (v39 >= *(v38 + 24) >> 1)
    {
      sub_2172AFF5C();
      v38 = v41;
    }

    *(v38 + 16) = v39 + 1;
    memcpy((v38 + 752 * v39 + 32), __src, 0x2EAuLL);
    v28[7] = v38;
    swift_endAccess();

    sub_217276358(__dst);

LABEL_30:
    v29 += 776;
    --v27;
  }

  while (v27);

  if (v28)
  {
    sub_21765713C(a1, a3);
  }

  return result;
}

void sub_217656CF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_217656D5C()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_217751DE8();

  swift_retain_n();
  sub_217658218(sub_217659BAC, v0);
}

uint64_t sub_217656E04(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_217656E60();
  }

  return result;
}

void sub_217656E60()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  sub_217751C58();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_217751C88();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_21726E284();
  if ((v3 & 1) == 0 && (*(v0 + 1632) & 1) == 0)
  {
    *(v0 + 1632) = 1;
    v15 = *(v0 + 1616);
    v16 = *(v1 + 1624);
    sub_217751DE8();

    v17 = sub_2172C90C8(v15, v16);

    sub_2172B38C0();
    v22 = sub_217752838();
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = v17;
    v23[4] = sub_217659AA4;
    v23[5] = v18;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_2172B5448;
    v23[3] = &block_descriptor_15;
    v19 = _Block_copy(v23);

    sub_217751C78();
    v23[0] = MEMORY[0x277D84F90];
    sub_2172B61B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
    sub_217283840(&qword_280BE84B0, &qword_27CB24DA8, &qword_217768C60, MEMORY[0x277D83970]);
    sub_217752A08();
    MEMORY[0x21CEA2BA0](0, v14, v7, v19);
    _Block_release(v19);

    v20 = OUTLINED_FUNCTION_212_0();
    v21(v20);
    (*(v10 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_21765713C(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[7];
  bzero(v61, 0x2EAuLL);
  swift_bridgeObjectRetain_n();
  sub_21763BD80(v6, v61, __src);
  v7 = v2[3];
  *&v8 = v2[2];
  v58 = v8;
  sub_217751DE8();

  v9 = v2[4];
  v10 = v3[5];
  v11 = *&__src[176];
  v12 = *&__src[184];
  sub_217275908(v3[4], v10);
  sub_217275680(v11, v12);
  *&v13 = v58;
  *(&v13 + 1) = v7;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  *&__src[160] = v13;
  *&__src[176] = v14;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v61, __src, 0x138uLL);
  sub_217283790(__dst, v60);
  v15 = sub_21763C064();
  memcpy(v64, v61, 0x138uLL);
  sub_2172837EC(v64);
  v16 = v3[6];
  if (v16 < 1)
  {
    if (qword_27CB23C60 == -1)
    {
LABEL_9:
      v31 = sub_217751AF8();
      __swift_project_value_buffer(v31, qword_27CB8A2A0);
      sub_217751DE8();
      v32 = sub_217751AD8();
      v33 = sub_217752828();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v61[0] = v35;
        *v34 = 136446210;
        v36 = MEMORY[0x21CEA2610](v6, &type metadata for MusicPlayer.Queue.Entry);
        v38 = v37;

        v39 = sub_21729C0E8(v36, v38, v61);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_2171EE000, v32, v33, "Inserting entries at the beginning of the queue: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x21CEA4360](v35, -1, -1);
        MEMORY[0x21CEA4360](v34, -1, -1);
      }

      else
      {
      }

LABEL_19:
      v56 = 0;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  if (v16 > *(a2 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_217275AA0(a2 + 752 * v16 - 720, v61);
  if (MusicPlayer.Queue.Entry.isTransient.getter())
  {
    if (qword_27CB23C60 != -1)
    {
      swift_once();
    }

    v17 = sub_217751AF8();
    __swift_project_value_buffer(v17, qword_27CB8A2A0);
    sub_217275AA0(v61, v60);
    sub_217751DE8();
    v18 = sub_217751AD8();
    v19 = sub_217752808();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v59 = v21;
      *v20 = 136446466;
      v22 = MusicPlayer.Queue.Entry.description.getter();
      v24 = v23;
      sub_217276358(v60);
      v25 = sub_21729C0E8(v22, v24, &v59);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      v27 = MEMORY[0x21CEA2610](v6, &type metadata for MusicPlayer.Queue.Entry, v26);
      v29 = v28;

      v30 = sub_21729C0E8(v27, v29, &v59);

      *(v20 + 14) = v30;
      _os_log_impl(&dword_2171EE000, v18, v19, "Inserting entries at the beginning of the queue because previous entry (%{public}s) is unexpectedly transient: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA4360](v21, -1, -1);
      MEMORY[0x21CEA4360](v20, -1, -1);
    }

    else
    {

      sub_217276358(v60);
    }

    sub_217276358(v61);
    goto LABEL_19;
  }

  v40 = qword_27CB23C60;
  sub_217751DE8();
  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_217751AF8();
  __swift_project_value_buffer(v41, qword_27CB8A2A0);
  sub_217275AA0(v61, v60);
  sub_217751DE8();
  v42 = sub_217751AD8();
  v43 = sub_217752828();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v44 = 136446466;
    v46 = MusicPlayer.Queue.Entry.description.getter();
    *&v58 = v15;
    v48 = v47;
    sub_217276358(v60);
    v49 = sub_21729C0E8(v46, v48, &v59);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2082;
    v51 = MEMORY[0x21CEA2610](v6, &type metadata for MusicPlayer.Queue.Entry, v50);
    v53 = v52;

    v54 = sub_21729C0E8(v51, v53, &v59);

    *(v44 + 14) = v54;
    _os_log_impl(&dword_2171EE000, v42, v43, "Inserting entries after %{public}s: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA4360](v45, -1, -1);
    MEMORY[0x21CEA4360](v44, -1, -1);
  }

  else
  {

    sub_217276358(v60);
  }

  sub_217276358(v61);
  v56 = sub_217751F18();

LABEL_22:
  [a1 insertQueueDescriptor:v15 afterItemWithIdentifier:{v56, v55, v58, v59}];

  memcpy(v61, __src, 0x138uLL);
  return sub_2172837EC(v61);
}

uint64_t sub_2176577E4()
{

  sub_217275680(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_217657814()
{
  v0 = sub_2176577E4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t ApplicationMusicPlayer.Queue.Entries.makeIterator()()
{
  v1 = *v0;

  return v1;
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (offsetBy < 1)
  {
    if (v3 <= 0 && v3 > offsetBy)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (v3 < 0 || v3 >= offsetBy)
  {
LABEL_11:
    v5 = __OFADD__(_, offsetBy);
    _ += offsetBy;
    if (!v5)
    {
      LOBYTE(offsetBy) = 0;
      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_5:
  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_15:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ApplicationMusicPlayer.Queue.Entries.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t ApplicationMusicPlayer.Queue.Entries.subscript.getter(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  result = *v2;
  v4 = *(*v2 + 16);
  if (v4 < v3 || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_217751DE8();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_21765799C@<X0>(unint64_t *a1@<X1>, unint64_t *a2@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void ApplicationMusicPlayer.Queue.Entries.subscript.setter()
{
  OUTLINED_FUNCTION_12();
  v0 = sub_217658118();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    v0();
    sub_2172202A4(v2, v3);
  }

  OUTLINED_FUNCTION_13();

  sub_217657B4C(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_217657AE0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_217751DE8();
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_217657B4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_16;
  }

  if (a6 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (*v6 + 752 * a5 + 32 != a2 + 752 * a3)
  {
LABEL_13:
    sub_2175B1464(a5, a6);
    return;
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_18;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
}

void (*ApplicationMusicPlayer.Queue.Entries.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  v8 = OUTLINED_FUNCTION_132();
  *v7 = sub_217657AE0(v8, v9, v10);
  v7[1] = v11;
  v7[2] = v12;
  v7[3] = v13;
  return sub_217657C58;
}

void sub_217657C58(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    v3 = sub_217658118();
    if (v3)
    {
      v5 = v3;
      v6 = v4;
      v3();
      sub_2172202A4(v5, v6);
    }

    OUTLINED_FUNCTION_7_67();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_217658118();
    if (v7)
    {
      v9 = v7;
      v10 = v8;
      v7();
      sub_2172202A4(v9, v10);
    }

    OUTLINED_FUNCTION_7_67();
  }

  free(v2);
}

unint64_t ApplicationMusicPlayer.Queue.Entries.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    return sub_217275AA0(*v2 + 752 * result + 32, a2);
  }

  __break(1u);
  return result;
}

void sub_217657D88(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  sub_217275AA0(a1, v4);
  ApplicationMusicPlayer.Queue.Entries.subscript.setter(v4, v3);
}

void ApplicationMusicPlayer.Queue.Entries.subscript.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_217658118();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v6();
    sub_2172202A4(v8, v9);
  }

  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2175035E0();
  v10 = v11;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(v10 + 16) > a2)
  {
    sub_2176595F8(a1, v10 + 752 * a2 + 32);
    *v3 = v10;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t (*ApplicationMusicPlayer.Queue.Entries.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  result = __swift_coroFrameAllocStub(0x5F0uLL);
  *a1 = result;
  *(result + 189) = v2;
  *(result + 188) = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    sub_217275AA0(*v2 + 752 * a2 + 32, result);
    return sub_217657F14;
  }

  __break(1u);
  return result;
}

void sub_217657F14(unint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[188];
    sub_217275AA0(*a1, (v2 + 94));
    ApplicationMusicPlayer.Queue.Entries.subscript.setter((v2 + 94), v3);
    sub_217276358(v2);
  }

  else
  {
    ApplicationMusicPlayer.Queue.Entries.subscript.setter(*a1, v2[188]);
  }

  free(v2);
}

Swift::Int __swiftcall ApplicationMusicPlayer.Queue.Entries.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ApplicationMusicPlayer.Queue.Entries.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

void ApplicationMusicPlayer.Queue.Entries.replaceSubrange<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_217658118();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v10();
    sub_2172202A4(v12, v13);
  }

  (*(v5 + 16))(v9, v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24438, &qword_217758740);
  sub_2177522E8();
  OUTLINED_FUNCTION_13();
}

void *ApplicationMusicPlayer.Queue.Entries.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s5QueueC7EntriesV5StateCMa();
  OUTLINED_FUNCTION_282(v4);
  result = sub_2176582F8();
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t (*sub_217658118())()
{
  v1 = v0[2];
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = v0[3];
  v4 = v0[4];
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_217659BA4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(v1 + 16);
  sub_2172B3A88(v3, v4);
  os_unfair_lock_unlock(v7);

  if (!v3)
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  return sub_217659B9C;
}

uint64_t sub_217658218(uint64_t a1, uint64_t a2)
{

  v5 = OUTLINED_FUNCTION_212_0();
  sub_2172B3A88(v5, v6);

  sub_217586768(v7, v2, a1, a2);
  v8 = OUTLINED_FUNCTION_212_0();
  sub_2172202A4(v8, v9);
}

uint64_t sub_2176582A0()
{

  sub_2172202A4(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t sub_2176582C8()
{
  v0 = sub_2176582A0();

  return MEMORY[0x2821FE8D8](v0);
}

void *sub_2176582F8()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t ApplicationMusicPlayer.Queue.Entries.hashValue.getter()
{
  sub_2177531E8();
  sub_2172824CC();
  return sub_217753238();
}

uint64_t sub_2176583A0(uint64_t a1)
{
  sub_2177531E8();
  sub_2172824CC();
  return sub_217753238();
}

uint64_t sub_2176583E4@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.makeIterator()();
  *a1 = result;
  a1[1] = 0;
  return result;
}

uint64_t sub_217658424@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_21765844C(void *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = __swift_coroFrameAllocStub(0x2EAuLL);
  *a1 = v4;
  ApplicationMusicPlayer.Queue.Entries.subscript.getter(*a2, v4);
  return sub_2176584B4;
}

void sub_2176584B4(uint64_t *a1)
{
  v1 = *a1;
  sub_217276358(*a1);

  free(v1);
}

unint64_t sub_2176584F0@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_217658524@<X0>(void *a1@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int sub_217658594@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_2176585D8@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.index(before:)(*a1);
  *a2 = result;
  return result;
}

void (*sub_217658624(void *a1, unint64_t *a2))(unint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x5F0uLL);
  *a1 = v5;
  v5[188] = v2;
  v6 = *a2;
  v5[189] = v6;
  v7 = *v2;
  v8 = OUTLINED_FUNCTION_140_0();
  sub_217504044();
  if (v8)
  {
    sub_217275AA0(v7 + 752 * v6 + 32, v5);
    return sub_2176586DC;
  }

  else
  {
    result = sub_217658FB8(v6, v7);
    __break(1u);
  }

  return result;
}

void sub_2176586DC(unint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[189];
    sub_217275AA0(*a1, (v2 + 94));
    ApplicationMusicPlayer.Queue.Entries.subscript.setter((v2 + 94), v3);
    sub_217276358(v2);
  }

  else
  {
    ApplicationMusicPlayer.Queue.Entries.subscript.setter(*a1, v2[189]);
  }

  free(v2);
}

void (*sub_217658770(void *a1, uint64_t *a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = ApplicationMusicPlayer.Queue.Entries.subscript.modify(v4, *a2, a2[1]);
  return sub_2174C6BD0;
}

void sub_2176587D4(uint64_t *a1@<X8>, uint64_t (*a2)(_BYTE *)@<X0>)
{
  sub_217658800(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

void sub_217658824(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(*v2 + 16);
      if (v4 > a1)
      {
        v6 = *v2 + 32;
        sub_217275AA0(v6 + 752 * a1, v8);
        if (v4 > a2)
        {
          sub_217275AA0(v6 + 752 * a2, v7);
          ApplicationMusicPlayer.Queue.Entries.subscript.setter(v7, a1);
          ApplicationMusicPlayer.Queue.Entries.subscript.setter(v8, a2);
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_217658918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ApplicationMusicPlayer.Queue.Entries.replaceSubrange<A>(_:with:)();
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_2176589A0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _s5QueueC7EntriesV5StateCMa();
  swift_allocObject();
  result = sub_2176582F8();
  v11 = MEMORY[0x277D84F90];
  v12 = result;
  if (!a2)
  {
    v8 = result;
    result = sub_217276358(a1);
    v7 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __src = a2;
    memcpy(v10, a1, sizeof(v10));
    result = sub_2176560EC(&__src);
    v7 = v11;
    v8 = v12;
LABEL_5:
    *a3 = v7;
    a3[1] = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_217658A74(void *__src)
{
  v2 = *(*v1 + 16);
  memcpy(__dst, __src, 0x2EAuLL);
  v3 = sub_217658118();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v3();
    sub_2172202A4(v5, v6);
  }

  sub_2171F5110(__dst, &v8, &qword_27CB28B88, &qword_217771908);
  sub_2175B10F8(v2, v2);
  return sub_2171F0738(__dst, &qword_27CB28B88, &qword_217771908);
}

uint64_t sub_217658B54(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x2EAuLL);
  v3 = sub_217658118();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v3();
    sub_2172202A4(v5, v6);
  }

  sub_2171F5110(__dst, &v8, &qword_27CB28B88, &qword_217771908);
  sub_2175B10F8(a2, a2);
  return sub_2171F0738(__dst, &qword_27CB28B88, &qword_217771908);
}

void sub_217658C30(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_217275AA0(*v2 + 752 * a1 + 32, a2);
  v5 = sub_217658118();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v5();
    sub_2172202A4(v7, v8);
  }

  sub_2175B118C(a1, a1 + 1);
}

void sub_217658CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217658118();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v4();
    sub_2172202A4(v6, v7);
  }

  sub_2175B118C(a1, a2);
}

void sub_217658D70(Swift::Int offsetBy)
{
  if (!offsetBy)
  {
    return;
  }

  if (offsetBy < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:limitedBy:)(0, offsetBy, *(*v1 + 16));
  if (v8.is_nil)
  {
LABEL_13:
    __break(1u);
    return;
  }

  value = v8.value;
  if (v8.value < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = sub_217658118();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v3();
    sub_2172202A4(v5, v6);
  }

  sub_2175B118C(0, value);
}

void sub_217658E20(char a1)
{
  v2 = v1;
  v3 = *v1;
  if (a1)
  {
    v4 = *(v3 + 16);
    v5 = sub_217658118();
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v5();
      sub_2172202A4(v7, v8);
    }

    sub_2175B118C(0, v4);
  }

  else
  {

    _s5QueueC7EntriesV5StateCMa();
    swift_allocObject();
    v9 = sub_2176582F8();
    *v2 = MEMORY[0x277D84F90];
    v2[1] = v9;
  }
}

uint64_t sub_217658EF8()
{

  v1 = *(v0 + 1640);

  return sub_217659654(v1);
}

uint64_t ApplicationMusicPlayer.Queue.deinit()
{
  v0 = MusicPlayer.Queue.deinit();

  sub_217659654(*(v0 + 1640));
  return v0;
}

uint64_t ApplicationMusicPlayer.Queue.__deallocating_deinit()
{
  v0 = ApplicationMusicPlayer.Queue.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217658FB8(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v5[94] = v2;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    sub_217276358(v5);
    return v2;
  }

LABEL_7:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000043, 0x80000002177B3590);
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  MEMORY[0x21CEA23B0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_217753348();
  MEMORY[0x21CEA23B0](v4);

  result = sub_217752D18();
  __break(1u);
  return result;
}

uint64_t sub_217659108(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    sub_21726B8A0(v5, v6);
    return v2;
  }

LABEL_7:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000043, 0x80000002177B3590);
  MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B35E0);
  MEMORY[0x21CEA23B0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_217753348();
  MEMORY[0x21CEA23B0](v4);

  result = sub_217752D18();
  __break(1u);
  return result;
}

unint64_t sub_21765925C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = a2;
  v6 = a1;
  v7 = *v2;
  v8 = v2[1];
  v9 = sub_217654F4C(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v10)
  {
    return *(v7 + 16);
  }

  v4 = v9;
  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_31:
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_6;
  }

  sub_2175035E0();
  v7 = v19;
LABEL_6:
  v20 = v2;
  *v2 = v7;
  v25 = v7 + 32;
  v12 = v7 + 752 * v4 + 784;
  v21 = v6;
  v22 = v8;
  while (1)
  {
    v13 = *(v7 + 16);
    if (v11 == v13)
    {
      break;
    }

    if (v11 >= v13)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_217275AA0(v12, v24);
    v2 = v6(v24);
    sub_217276358(v24);
    if ((v2 & 1) == 0)
    {
      if (v11 != v4)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v2 = *(v7 + 16);
        if (v4 >= v2)
        {
          goto LABEL_27;
        }

        v6 = v5;
        v5 = v25 + 752 * v4;
        sub_217275AA0(v5, v24);
        if (v11 >= v2)
        {
          goto LABEL_28;
        }

        sub_217275AA0(v12, v23);
        v2 = v8;
        v14 = sub_217658118();
        if (v14)
        {
          v8 = v14;
          v2 = v15;
          v14();
          sub_2172202A4(v8, v2);
        }

        if (v4 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        sub_2176595F8(v23, v5);
        v8 = v22;
        v2 = v22;
        v16 = sub_217658118();
        if (v16)
        {
          v5 = v16;
          v2 = v17;
          v16();
          sub_2172202A4(v5, v2);
        }

        if (v11 >= *(v7 + 16))
        {
          goto LABEL_30;
        }

        sub_2176595F8(v24, v12);
        v5 = v6;
        v6 = v21;
      }

      ++v4;
    }

    ++v11;
    v12 += 752;
  }

  *v20 = v7;
  return v4;
}

void sub_217659484(uint64_t (*a1)(_BYTE *))
{
  v4 = 0;
  v5 = *(*v1 + 16);
LABEL_2:
  v6 = 752 * v4 + 32;
  for (i = v4; i < v5; ++i)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v8 = *v14;
    if (i >= *(*v14 + 16))
    {
      goto LABEL_16;
    }

    sub_217275AA0(v8 + v6, v13);
    v9 = a1(v13);
    sub_217276358(v13);
    if (v2)
    {
      return;
    }

    if (v9)
    {
      v10 = v8 + 752 * v5 - 720;
      while (1)
      {
        v11 = v5 - 1;
        if (i >= v5 - 1)
        {
          return;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_17;
        }

        sub_217275AA0(v10, v13);
        v12 = a1(v13);
        sub_217276358(v13);
        v10 -= 752;
        --v5;
        if ((v12 & 1) == 0)
        {
          sub_217658824(i, v11);
          v4 = i + 1;
          v5 = v11;
          goto LABEL_2;
        }
      }
    }

    v6 += 752;
  }
}

uint64_t sub_217659654(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_217659698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B388;
  if (!qword_27CB2B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B388);
  }

  return result;
}

unint64_t sub_217659734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B3A0;
  if (!qword_27CB2B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B3A0);
  }

  return result;
}

unint64_t sub_2176597CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B3B8;
  if (!qword_27CB2B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B3B8);
  }

  return result;
}

unint64_t sub_217659868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B3C8;
  if (!qword_27CB2B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B3C8);
  }

  return result;
}

double sub_217659AD4(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_2176567DC(a1, v1 + v4, v7, v8, v9, v11, v12);
}

id sub_217659BD4(uint64_t a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (sub_217696E10(2u, a1))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    if (sub_217696E10(3u, a1))
    {
      v4 |= 2uLL;
    }

    if (sub_217696E10(0, a1))
    {
      v4 |= 0x10uLL;
    }

    v5 = sub_217696E10(1u, a1);
    v6 = v4 | 0x20;
    if (!v5)
    {
      v6 = v4;
    }

    v7 = v6 | a2 & ((v6 & 1) == 0);
  }

  else
  {
    if (a2 == 2)
    {
      return 0;
    }

    v7 = a2 & 1;
  }

  return [objc_opt_self() rawValueForAudioTraits_];
}

uint64_t sub_217659CB4(char a1)
{
  if ((a1 & 4) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_2172B1F24(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = v3;
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_0_127(v4);
    v2 = v13;
  }

  *(v2 + 16) = v5 + 1;
  *(v2 + v5 + 32) = 2;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_121();
      v2 = v14;
    }

    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      OUTLINED_FUNCTION_0_127(v6);
      v2 = v15;
    }

    *(v2 + 16) = v7 + 1;
    *(v2 + v7 + 32) = 3;
  }

LABEL_12:
  if ((a1 & 0x10) == 0)
  {
    if ((a1 & 0x20) == 0)
    {
      return v2;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_121();
    v2 = v16;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  if (v9 >= v8 >> 1)
  {
    OUTLINED_FUNCTION_0_127(v8);
    v2 = v17;
  }

  *(v2 + 16) = v9 + 1;
  *(v2 + v9 + 32) = 0;
  if ((a1 & 0x20) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_121();
      v2 = v18;
    }

    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_2172B1F24(v10 > 1, v11 + 1, 1, v2);
      v2 = v19;
    }

    *(v2 + 16) = v11 + 1;
    *(v2 + v11 + 32) = 1;
  }

  return v2;
}

uint64_t Album.TracksPopularityProvider.__allocating_init(underlyingBlock:underlyingModelObject:)(_OWORD *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_2172124CC(a1, (v4 + 16));
  *(v4 + 48) = a2;
  return v4;
}

uint64_t Album.TracksPopularityProvider.init(underlyingBlock:underlyingModelObject:)(_OWORD *a1, uint64_t a2)
{
  sub_2172124CC(a1, (v2 + 16));
  *(v2 + 48) = a2;
  return v2;
}

uint64_t sub_217659EB0(uint64_t a1)
{
  v2 = v1;
  *(&__src[1] + 1) = &type metadata for Track;
  *&__src[2] = &protocol witness table for Track;
  *&__src[0] = swift_allocObject();
  sub_217275710(a1, *&__src[0] + 16);
  __swift_project_boxed_opaque_existential_1(__src, &type metadata for Track);
  Track.propertyProvider.getter();
  v4 = *&__dst[24];
  v5 = *&__dst[32];
  __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
  (*(v5 + 24))(v21, v4, v5);
  sub_21729C644(__dst);
  __swift_destroy_boxed_opaque_existential_1(__src);
  v20[3] = &type metadata for Track;
  v20[4] = &protocol witness table for Track;
  v20[0] = swift_allocObject();
  sub_217275710(a1, v20[0] + 16);
  __swift_project_boxed_opaque_existential_1(v20, &type metadata for Track);
  Track.propertyProvider.getter();
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v7 + 24))(__src, v6, v7);
  sub_21729C644(v17);
  memcpy(__dst, __src, sizeof(__dst));
  __swift_destroy_boxed_opaque_existential_1(v20);
  v8 = *&__dst[304];
  v9 = *&__dst[312];
  sub_217751DE8();
  v16 = *&__dst[288];
  sub_217269F50(__dst);
  __src[0] = v16;
  *&__src[1] = v8;
  *(&__src[1] + 1) = v9;
  MusicItemTypeValue.underlyingLegacyModelObjectType.getter();

  v10 = sub_21721478C();
  LOBYTE(v20[0]) = 5;
  v11 = sub_2172B7F78(v10);
  memcpy(__src, v21, 0x161uLL);
  sub_217269F50(__src);
  v12 = objc_opt_self();
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v14 = [v12 trackPopularityForIdentifiers:v11 underlyingModelAlbum:v13 tracksPopularityBlock:sub_217753048()];
  swift_unknownObjectRelease();
  if (v14)
  {
    v21[0] = 0;
    LOBYTE(v21[1]) = 1;
    MEMORY[0x21CEA2900](v14, v21);

    swift_unknownObjectRelease();
    return v21[0];
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_21765A154()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v0 = sub_2177528C8();
    MEMORY[0x21CEA3550](v0);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000028, 0x80000002177B3630);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177B3660);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t Album.TracksPopularityProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Album.TracksPopularityProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21765A304()
{
  sub_2177531E8();
  sub_21765A154();
  return sub_217753238();
}

uint64_t sub_21765A3B0(uint64_t a1)
{
  sub_2177531E8();
  sub_21765A154();
  return sub_217753238();
}

unint64_t sub_21765A3F4()
{
  result = qword_27CB2B410;
  if (!qword_27CB2B410)
  {
    type metadata accessor for Album.TracksPopularityProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B410);
  }

  return result;
}

void sub_21765A524(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  for (i = (a1 + 40); v6; --v6)
  {
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172AFF2C(0, *(v10 + 16) + 1, 1, v10);
      v10 = v19;
      *a2 = v19;
    }

    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2172AFF2C(v12 > 1, v13 + 1, 1, v10);
      v10 = v20;
      *a2 = v20;
    }

    *(v10 + 16) = v13 + 1;
    v14 = v10 + 16 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v8;
    v15 = *a2;
    if (*(*a2 + 16) == a3)
    {
      v16 = *a4;
      sub_217751DE8();
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v16;
      if ((v17 & 1) == 0)
      {
        sub_2172B353C();
        v16 = v21;
        *a4 = v21;
      }

      v18 = *(v16 + 16);
      if (v18 >= *(v16 + 24) >> 1)
      {
        sub_2172B353C();
        v16 = v22;
        *a4 = v22;
      }

      *(v16 + 16) = v18 + 1;
      *(v16 + 8 * v18 + 32) = v15;
      *a2 = MEMORY[0x277D84F90];
    }

    i += 2;
  }
}

uint64_t sub_21765A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_7_68(v11, v19);
  v12 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v5, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);
    OUTLINED_FUNCTION_28_6();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_217752498();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217751FB8();
  OUTLINED_FUNCTION_28_6();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  v17 = swift_task_create();

  sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);

  return v17;
}

uint64_t sub_21765A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_7_68(v11, v19);
  v12 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v5, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);
    OUTLINED_FUNCTION_28_6();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B428, &qword_21778A740);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_217752498();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217751FB8();
  OUTLINED_FUNCTION_28_6();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B428, &qword_21778A740);
  v16 = swift_task_create();

  sub_2171F06D8(a3, &qword_27CB24D78, &qword_217759EA0);

  return v16;
}

void *sub_21765AC5C()
{
  v0 = [objc_opt_self() applicationMusicPlayer];
  type metadata accessor for ApplicationMusicPlayer();
  swift_allocObject();
  result = sub_21765AD1C(v0);
  qword_27CB2B418 = result;
  return result;
}

uint64_t static ApplicationMusicPlayer.shared.getter()
{
  if (qword_27CB23D98 != -1)
  {
    swift_once();
  }
}

void *sub_21765AD1C(void *a1)
{
  type metadata accessor for ApplicationMusicPlayer.Queue();
  swift_allocObject();
  ApplicationMusicPlayer.Queue.init(arrayLiteral:)();
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 256;
  v4 = a1;
  v5 = sub_21763A5AC(v4);
  v6 = v4;

  sub_21726D458(v4);

  type metadata accessor for NotificationObserver();
  v7 = [objc_opt_self() playbackQueueDidChangeNotificationName];
  OUTLINED_FUNCTION_37_3();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = v6;

  v10 = static NotificationObserver.mainActorObserver(name:object:handler:)(v7, v4, &unk_21778A728, v8);

  v5[7] = v10;

  return v5;
}

uint64_t sub_21765AE88(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  sub_217752518();
  v2[15] = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21765AF20, v4, v3);
}

uint64_t sub_21765AF20()
{
  OUTLINED_FUNCTION_30_0();

  if (!sub_2177513D8())
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_7;
  }

  v1 = [objc_opt_self() notificationUserInfoKeyContentItemIDs];
  v2 = sub_217751F48();
  v4 = v3;

  *(v0 + 88) = v2;
  *(v0 + 96) = v4;
  sub_217752A48();
  sub_2173AC9A0();

  sub_2174E6BDC(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_7:
    sub_2171F06D8(v0 + 56, &qword_27CB2AD40, &qword_2177583F0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 16);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_21765B280(v5, 1);
    }

    else
    {
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_20_0();

  return v6();
}

void sub_21765B0C4(uint64_t a1@<X8>)
{
  sub_21765B158(&v4);
  v2 = v5;
  v3 = v6;
  *a1 = v4;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

void sub_21765B110(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v3 = *a1;
  v4 = v1;
  v5 = v2;
  sub_21765B174(&v3);
}

void sub_21765B158(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

void sub_21765B174(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  *(v1 + 72) = *a1;
  *(v1 + 80) = v2;
  *(v1 + 81) = v3;
  OUTLINED_FUNCTION_11_68();
  sub_21765BC94(v4);
}

void (*sub_21765B1B0(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  return sub_21765B1EC;
}

void sub_21765B1EC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v3 = *a1;
  v4 = v1;
  v5 = v2;
  sub_21765B174(&v3);
}

void sub_21765B234(uint64_t a1, char a2)
{
  sub_21726E7A0(a1, a2 & 1);
  OUTLINED_FUNCTION_11_68();
  sub_21765BC94(v2);
}

void sub_21765B280(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(v2 + 64);
  if (v4 || (a2 & 1) == 0)
  {
    [v5 invalidate];
    v11 = *(v2 + 64);
    *(v2 + 64) = 0;

    sub_21765B604(a1);
  }

  else if (!v5)
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_28_6();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a1;
    v12[4] = sub_21765C178;
    v12[5] = v7;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_217656CF4;
    v12[3] = &block_descriptor_16;
    v8 = _Block_copy(v12);
    swift_retain_n();
    sub_217751DE8();

    v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.25];

    _Block_release(v8);
    v10 = *(v2 + 64);
    *(v2 + 64) = v9;
  }
}

uint64_t sub_21765B3FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_217752518();

  sub_217751DE8();
  v8 = sub_217752508();
  OUTLINED_FUNCTION_99_1();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = a1;
  sub_21765A6D8(0, 0, v6, &unk_21778A708, v9);
}

uint64_t sub_21765B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_217752518();
  v5[4] = sub_217752508();
  v7 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21765B59C, v7, v6);
}

uint64_t sub_21765B59C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 24);

  sub_21765B280(v1, 0);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

double sub_21765B604(uint64_t a1)
{
  v41 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  sub_21765A524(a1, &v41, 10, &v42);
  v1 = v41;
  v2 = v42;
  v3 = &v40;
  if (*(v41 + 16))
  {
    sub_217751DE8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_35:
      sub_2172B353C();
      v2 = v31;
    }

    v4 = *(v2 + 16);
    v37 = v4 + 1;
    if (v4 >= *(v2 + 24) >> 1)
    {
      sub_2172B353C();
      v2 = v32;
    }

    *(v2 + 16) = v37;
    *(v2 + 8 * v4 + 32) = v1;
    v3[3] = v2;
  }

  else
  {
    v37 = *(v42 + 16);
  }

  v5 = 0;
  v6 = *(v33 + 24);
  v36 = v2 + 32;
  v7 = MEMORY[0x277D84F90];
  v34 = v6;
  v35 = v2;
  while (v5 != v37)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v8 = *(v36 + 8 * v5);
    OUTLINED_FUNCTION_37_3();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v6;
    v10[4] = v8;
    v11 = *(v8 + 16);
    if (v11)
    {
      v38 = v5;
      v40 = MEMORY[0x277D84F90];
      swift_bridgeObjectRetain_n();
      v12 = v6;

      sub_217276338(0, v11, 0);
      v13 = v40;
      v14 = (v8 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        OUTLINED_FUNCTION_99_1();
        v17 = swift_allocObject();
        v17[2] = sub_21765BFD4;
        v17[3] = v10;
        v17[4] = v15;
        v17[5] = v16;
        _s25LazyEntryPropertyProviderCMa();
        swift_allocObject();
        swift_bridgeObjectRetain_n();

        v18 = sub_2174FB4B4(v15, v16, sub_21765BFE0, v17);
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v40 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        sub_217751DE8();
        if (v22 >= v21 >> 1)
        {
          sub_217276338((v21 > 1), v22 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v22 + 1;
        v23 = v13 + 752 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        *(v23 + 48) = v18;
        memcpy((v23 + 56), __src, 0x2D1uLL);
        *(v23 + 777) = 1;
        v14 += 2;
        --v11;
      }

      while (v11);

      v6 = v34;
      v2 = v35;
      v5 = v38;
    }

    else
    {
      sub_217751DE8();
      v24 = v6;

      v13 = MEMORY[0x277D84F90];
    }

    v1 = *(v13 + 16);
    v3 = *(v7 + 16);
    if (__OFADD__(v3, v1))
    {
      goto LABEL_32;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v3 + v1 > *(v7 + 24) >> 1)
    {
      sub_2172AFF5C();
      v7 = v25;
    }

    ++v5;
    if (*(v13 + 16))
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v1)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v1)
      {
        v26 = *(v7 + 16);
        v27 = __OFADD__(v26, v1);
        v28 = v26 + v1;
        if (v27)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v28;
      }
    }

    else
    {

      if (v1)
      {
        __break(1u);
        break;
      }
    }
  }

  _s5QueueC7EntriesV5StateCMa();
  swift_allocObject();
  v29 = sub_2176582F8();
  __src[0] = v7;
  __src[1] = v29;
  sub_2176562CC(__src, 1);
}

void *sub_21765BA5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    v9 = *(a3 + 16);
  }

  else
  {
    v10 = sub_217752288();
    v11 = [a4 itemsForContentItemIDs_];

    sub_21765BFEC();
    v9 = sub_217751D98();

    swift_beginAccess();
    *(a3 + 16) = v9;
    sub_217751DE8();
  }

  v12 = *(v9 + 16);
  sub_217751DE8();
  if (v12 && (v13 = sub_21763246C(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v9 + 56) + 8 * v13);
    v16 = v15;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_21765BBA4(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a1(a2, a3);
  if (v7)
  {

    sub_2173E0D6C(v7, a4);
  }

  else
  {
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xE000000000000000;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    sub_2172A497C(__src);
    memcpy((a4 + 48), __src, 0x221uLL);
    *(a4 + 600) = 0u;
    *(a4 + 616) = 0u;
    *(a4 + 632) = 0u;
    *(a4 + 648) = 0;
    *(a4 + 656) = -1;
    *(a4 + 664) = 0u;
    *(a4 + 680) = 0u;
    *(a4 + 696) = 0u;
    *(a4 + 712) = 1;
    *(a4 + 720) = 0;
    *(a4 + 728) = 1;
    sub_217751DE8();
  }
}

void sub_21765BC94(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(a1 + 9))
  {
    v3 = *(v1 + 24);

    [v3 setApplicationMusicPlayerTransitionType:0 withDuration:0.0];
  }

  else
  {
    if (*(a1 + 8))
    {
      v4 = objc_opt_self();
      v5 = [v4 standardUserDefaults];
      v6 = [v5 isCrossFadeEnabled];

      v7 = 4.0;
      if (v6)
      {
        v8 = [v4 standardUserDefaults];
        [v8 crossFadeDuration];
        v7 = v9;
      }
    }

    else
    {
      v7 = *a1;
    }

    v10 = 1.0;
    if (v7 > 1.0)
    {
      v10 = v7;
    }

    if (v10 <= 12.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 12.0;
    }

    if ((*(v1 + 97) & 1) != 0 || (*(v1 + 96) & 1) != 0 || v11 != *(v1 + 88))
    {
      [v2 setApplicationMusicPlayerTransitionType:1 withDuration:v11];
      *(v1 + 88) = v11;
      *(v1 + 96) = 0;
    }
  }
}

void sub_21765BDE8()
{

  v1 = *(v0 + 64);
}

uint64_t ApplicationMusicPlayer.deinit()
{
  v0 = MusicPlayer.deinit();

  return v0;
}

uint64_t ApplicationMusicPlayer.__deallocating_deinit()
{
  v0 = ApplicationMusicPlayer.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_21765BFEC()
{
  result = qword_27CB2B420;
  if (!qword_27CB2B420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB2B420);
  }

  return result;
}

uint64_t sub_21765C030(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_19(v7);
  *v8 = v9;
  v8[1] = sub_21765C554;

  return sub_21765B504(a1, v3, v4, v6, v5);
}

uint64_t sub_21765C0E8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_9_73();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t sub_21765C1A8()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21725B86C;

  return sub_21765AE88(v3, v0);
}

uint64_t sub_21765C23C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21765C330;

  return v5(v2 + 32);
}

uint64_t sub_21765C330()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v5;

  *v1 = *(v5 + 32);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21765C434()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_9_73();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t sub_21765C4C4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_9_73();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t sub_21765C56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_11_69();
  OUTLINED_FUNCTION_2_113();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_0_128(v11);
  OUTLINED_FUNCTION_1279();

  return MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)();
}

uint64_t MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_9_4();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_122(v2);

  return v6(v4);
}

uint64_t sub_21765C728()
{
  OUTLINED_FUNCTION_25_1();
  sub_21725ECA0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v3, v4, v5, v6, v7);
}

uint64_t MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v16, a1, a3, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v18 + 32))(v22, v13, a2);
    v24 = sub_217751F08();
    (*(v18 + 8))(v22, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t MusicItemCollectionIncrementalLoader.eraseToAnyIncrementalLoader()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_21765CA4C()
{
  OUTLINED_FUNCTION_25_1();
  sub_21737F7B0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v3, v4, v5, v6, v7);
}

uint64_t sub_21765CA90()
{
  OUTLINED_FUNCTION_25_1();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_21765CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MusicItemCollectionIncrementalLoader<>.combine(into:)(a1, a2, v5, WitnessTable);
}

uint64_t sub_21765CB48()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174BF908(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v3, v4, v5, v6, v7);
}

uint64_t AnyMusicItemCollectionIncrementalLoader.nextBatchLocation.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AnyMusicItemCollectionIncrementalLoader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B430, &qword_21778A758);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21765CE4C(v6, v7, v8);
  v9 = sub_2177532C8();
  if (!v2)
  {
    sub_21765CEA0(v9, v10, v11);
    sub_217752EA8();
    if (v28)
    {
      if (v28 != 1)
      {
        sub_2171FF30C(a1, v27);
        v21 = sub_2175A8BE0(v27);
        v30 = &type metadata for MusicItemCollectionCombinationIncrementalLoader;
        v31 = &off_282971898;
        *&v28 = v21;
        *(&v28 + 1) = v22;
        v29 = v23;
        v24 = OUTLINED_FUNCTION_1_37();
        v25(v24);
        goto LABEL_10;
      }

      sub_2171FF30C(a1, v27);
      v30 = &type metadata for MusicCatalogSearchIncrementalLoader;
      v31 = &protocol witness table for MusicCatalogSearchIncrementalLoader;
      v13 = swift_allocObject();
      v14 = OUTLINED_FUNCTION_16_63(v13);
      MusicCatalogSearchIncrementalLoader.init(from:)(v14, v15);
    }

    else
    {
      sub_2171FF30C(a1, v27);
      v30 = &type metadata for MusicCatalogResourceIncrementalLoader;
      v31 = &off_2829650B8;
      v16 = swift_allocObject();
      v17 = OUTLINED_FUNCTION_16_63(v16);
      sub_2173802F0(v17, v18);
    }

    v19 = OUTLINED_FUNCTION_1_37();
    v20(v19);
LABEL_10:
    sub_2171F3F0C(&v28, v32);
    v26 = v32[1];
    *a2 = v32[0];
    *(a2 + 16) = v26;
    *(a2 + 32) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21765CE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B438;
  if (!qword_27CB2B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B438);
  }

  return result;
}

unint64_t sub_21765CEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B440;
  if (!qword_27CB2B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B440);
  }

  return result;
}

uint64_t AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 64) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21765CF14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  OUTLINED_FUNCTION_9_4();
  v12 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_21765D04C;
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return (v12)(v9, v10, v2 & 1, v7, v8, v3, v4);
}

uint64_t sub_21765D04C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21765D12C()
{
  OUTLINED_FUNCTION_25_1();
  sub_2175A9EDC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v3, v4, v5, v6, v7);
}

uint64_t static AnyMusicItemCollectionIncrementalLoader.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  return v5(a2, v6, v3, v4) & 1;
}

void sub_21765D1E8(uint64_t a1@<X8>)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_2171FF30C(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  if (swift_dynamicCast())
  {
    sub_2175A7D38(v6, v7, v8);
    v4 = v3;

    if (*(v4 + 16) == 1)
    {
      sub_2172830F8(v4 + 32, v9);

      sub_21725EA28(&v11);
      v11 = v9[0];
      v12 = v9[1];
      v13 = v10;
    }

    else
    {
    }
  }

  if (*(&v12 + 1))
  {
    v5 = v12;
    *a1 = v11;
    *(a1 + 16) = v5;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_2172830F8(v1, a1);
  }
}

uint64_t sub_21765D304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2172849C8;

  return MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)();
}

uint64_t sub_21765D3E8(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 72) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21765D464()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  OUTLINED_FUNCTION_9_4();
  v13 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_21765D5A0;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return (v13)(v11, v9, v2 & 1, v10, v7, v8, v3, v4);
}

uint64_t sub_21765D5A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t AnyMusicItemCollectionIncrementalLoader.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 40))(v4, v1, v2);
  return sub_217753238();
}

unint64_t sub_21765D6F4(uint64_t a1)
{
  v1 = sub_217752DC8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_21765D740(char a1)
{
  if (!a1)
  {
    return 0xD000000000000024;
  }

  if (a1 == 1)
  {
    return 0xD000000000000022;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_21765D798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2172849C8;

  return AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_21765D860(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_217282D8C;

  return AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_21765D938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21765E058(a1, a2, a3);

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_21765D9B0(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 40))(v5, v2, v3);
  return sub_217753238();
}

uint64_t sub_21765DA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21765CE4C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21765DA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21765CE4C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_21765DABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21765D6F4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_21765DAEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21765D740(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void AnyMusicItemCollectionIncrementalLoader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B448, &qword_21778A778);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26638, &unk_21778A780);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  sub_21765D1E8(v36);
  sub_2171F3F0C(v36, v35);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  v17 = OUTLINED_FUNCTION_10_60(v14, v15, v16, &type metadata for MusicCatalogResourceIncrementalLoader);
  if (v17)
  {
    v30 = v3;
    v31 = v5;
    v33[0] = v34[0];
    v33[1] = v34[1];
    v33[2] = v34[2];
    *&v33[3] = *&v34[3];
    v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2173806D0(v20, v21, v22);
    sub_2177532F8();
    v32 = v33[0];
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
    sub_21725E964();
    sub_217752F88();
    (*(v10 + 8))(v13, v8);
    sub_21765E000(v33);

    if (!v1)
    {
      v3 = v30;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v35);
      v26 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21765CE4C(v26, v27, v28);
      v29 = v37;
      sub_2177532F8();
      sub_217752F48();
      (*(v31 + 8))(v29, v3);

      return;
    }

    goto LABEL_10;
  }

  v23 = OUTLINED_FUNCTION_10_60(v17, v18, v19, &type metadata for MusicCatalogSearchIncrementalLoader);
  if (v23)
  {
    memcpy(v33, v34, sizeof(v33));
    MusicCatalogSearchIncrementalLoader.encode(to:)(a1);
    if (!v1)
    {
      v31 = v5;
      sub_2175F6FDC(v33);
      goto LABEL_13;
    }

    sub_2175F6FDC(v33);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v35);
    return;
  }

  if (OUTLINED_FUNCTION_10_60(v23, v24, v25, &type metadata for MusicItemCollectionCombinationIncrementalLoader))
  {
    sub_2175A8A5C(a1, *&v34[0], *(&v34[0] + 1), *&v34[1]);
    if (!v1)
    {
      v31 = v5;

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  sub_217752D08();
  __break(1u);
}

unint64_t sub_21765E058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B450;
  if (!qword_27CB2B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B450);
  }

  return result;
}

uint64_t dispatch thunk of MusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_9_4();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_122(v2);

  return v6(v4);
}

uint64_t dispatch thunk of MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_11_69();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v19 = (*(v14 + 24) + **(v14 + 24));
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_19(v15);
  *v16 = v17;
  v16[1] = sub_217282D8C;

  return v19(v13, v11, v9 & 1, v7, v5, v3, v1, v0);
}

_BYTE *storeEnumTagSinglePayload for AnyMusicItemCollectionIncrementalLoader.IncrementalLoaderType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnyMusicItemCollectionIncrementalLoader.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21765E538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B458;
  if (!qword_27CB2B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B458);
  }

  return result;
}

unint64_t sub_21765E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B460;
  if (!qword_27CB2B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B460);
  }

  return result;
}

unint64_t sub_21765E5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B468;
  if (!qword_27CB2B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B468);
  }

  return result;
}

unint64_t sub_21765E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B470;
  if (!qword_27CB2B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B470);
  }

  return result;
}

unint64_t sub_21765E694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B478;
  if (!qword_27CB2B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B478);
  }

  return result;
}

uint64_t sub_21765E6E8()
{
  OUTLINED_FUNCTION_25_1();
  sub_21765E7C4(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v3, v4, v5, v6, v7);
}

uint64_t sub_21765E72C()
{
  OUTLINED_FUNCTION_25_1();
  sub_21765E770(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v3, v4, v5, v6, v7);
}

unint64_t sub_21765E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B480;
  if (!qword_27CB2B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B480);
  }

  return result;
}

unint64_t sub_21765E7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B488;
  if (!qword_27CB2B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B488);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit39CloudPersonalRecommendationsRawResponseV8MetadataVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21765E864(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_21765E8A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21765E918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B490;
  if (!qword_27CB2B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B490);
  }

  return result;
}

void sub_21765E96C(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B4C8, &qword_21778AD08);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217660224(v6, v7, v8);
  v9 = sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = sub_2174D331C(v9, v10, v11);
    OUTLINED_FUNCTION_3_104(&type metadata for CloudResourceCollectionAttributes, v13, v14, v15, v12);
    v42 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B4A8, &qword_21778AD00);
    sub_2176602CC(&unk_27CB2B4D0);
    sub_217752EA8();
    OUTLINED_FUNCTION_15_8();
    v43 = v16;
    v44 = OUTLINED_FUNCTION_4_105(2);
    v45 = v17;
    v46 = OUTLINED_FUNCTION_4_105(3);
    v47 = v18;
    v48 = OUTLINED_FUNCTION_4_105(4);
    v49 = v19;
    v21 = sub_2175AA274(v48, v19, v20);
    OUTLINED_FUNCTION_3_104(&type metadata for AnyMusicItemCollectionIncrementalLoader, v22, v23, v24, v21);
    v50 = v39;
    v51 = v40;
    v52 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_2176603C4(&qword_280BE2388);
    OUTLINED_FUNCTION_6_89();
    *(v26 - 256) = v25;
    sub_217752E58();
    OUTLINED_FUNCTION_15_8();
    v53 = v27;
    OUTLINED_FUNCTION_6_89();
    sub_217752E58();
    OUTLINED_FUNCTION_15_8();
    v54 = v28;
    v56 = 8;
    v32 = sub_217660444(v29, v30, v31);
    OUTLINED_FUNCTION_3_104(&type metadata for CloudPersonalRecommendationsRawResponse.Metadata, v33, v34, v35, v32);
    v36 = OUTLINED_FUNCTION_0_129();
    v37(v36);
    OUTLINED_FUNCTION_15_8();
    v55 = v38;
    sub_2174B961C(&v42, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2174B9AF4(&v42);
  }
}

uint64_t sub_21765EE98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B498, &qword_21778ACF8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217660224(v11, v12, v13);
  OUTLINED_FUNCTION_106();
  v14 = sub_2177532F8();
  v26 = *v3;
  v25 = 0;
  sub_2174D65EC(v14, v15, v16);
  OUTLINED_FUNCTION_2_114();
  OUTLINED_FUNCTION_44_2();
  sub_217752F38();
  if (!v2)
  {
    *&v26 = *(v3 + 2);
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B4A8, &qword_21778AD00);
    sub_2176602CC(&unk_27CB2B4B0);
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    LOBYTE(v26) = 2;
    OUTLINED_FUNCTION_44_2();
    sub_217752EF8();
    LOBYTE(v26) = 3;
    OUTLINED_FUNCTION_44_2();
    sub_217752EF8();
    LOBYTE(v26) = 4;
    OUTLINED_FUNCTION_44_2();
    v17 = sub_217752EF8();
    LOBYTE(v26) = 5;
    sub_2175AA1A8(v17, v18, v19);
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    *&v26 = *(v3 + 14);
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_2176603C4(&qword_280BE2390);
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    *&v26 = *(v3 + 15);
    v25 = 7;
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44_2();
    v20 = sub_217752F38();
    *&v26 = *(v3 + 16);
    v25 = 8;
    sub_217660278(v20, v21, v22);
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_21765F1C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a1;
      sub_217751DE8();
      sub_2172628A8(v3, a2);
      LOBYTE(v3) = v4;

      if (v3)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21765F228(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000002177B3810 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21765F2C4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B500, &unk_21778AF10);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176606E4(v10, v11, v12);
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
  sub_217660738(&qword_27CB28600);
  sub_217752F38();
  return (*(v6 + 8))(v9, v4);
}

void sub_21765F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {
    sub_217753208();

    sub_2172658E8(a1, a2, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {
    sub_217753208();
  }
}

void *sub_21765F4F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B510, &qword_21778AF20);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176606E4(v9, v10, v11);
  OUTLINED_FUNCTION_106();
  sub_2177532C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
    sub_217660738(&qword_27CB285F0);
    sub_217752E58();
    (*(v5 + 8))(v8, v3);
    v9 = v13[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

BOOL sub_21765F684(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4 == 1)
  {
    if (v5 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 1)
    {
      return 0;
    }

    if (v4)
    {
      if (!v5)
      {
        return 0;
      }

      v11 = *a1 == *a2 && v4 == v5;
      if (!v11 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  sub_21726FB4C(a1[2], a2[2]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a2[4];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[3] == a2[3] && v7 == v8;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = a1[6];
  v13 = a2[6];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = a1[5] == a2[5] && v12 == v13;
    if (!v14 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = a1[8];
  v16 = a2[8];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = a1[7] == a2[7] && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  sub_2172CAE8C((a1 + 9), v40);
  sub_2172CAE8C((a2 + 9), &v42);
  if (!v41)
  {
    if (!*(&v43 + 1))
    {
      sub_2171F06D8(v40, &qword_27CB24188, &dword_217758930);
      goto LABEL_49;
    }

LABEL_54:
    sub_2171F06D8(v40, &qword_27CB24928, &unk_21775E020);
    return 0;
  }

  sub_2172CAE8C(v40, v37);
  if (!*(&v43 + 1))
  {
    sub_217283154(v37);
    goto LABEL_54;
  }

  v35[0] = v42;
  v35[1] = v43;
  v36 = v44;
  v18 = v38;
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v20 = *(v19 + 32);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  v22 = v20(v35, v21, v18, v19);
  sub_217283154(v35);
  sub_217283154(v37);
  sub_2171F06D8(v40, &qword_27CB24188, &dword_217758930);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v23 = a1[14];
  v24 = a2[14];
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    sub_217751DE8();
    sub_217261FB0(v23, v24);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v27 = a1[15];
  v28 = a2[15];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    sub_217751DE8();
    sub_217261FB0(v27, v28);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v31 = a1[16];
  v32 = a2[16];
  if (v31 != 1)
  {
    if (v32 != 1)
    {
      if (v31)
      {
        if (v32)
        {
          sub_217751DE8();
          sub_2172628A8(v31, v32);
          v34 = v33;
          sub_217221010(v32);
          if (v34)
          {
            return 1;
          }
        }
      }

      else if (!v32)
      {
        return 1;
      }
    }

    return 0;
  }

  return v32 == 1;
}

uint64_t sub_21765F9C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1717924456 && a2 == 0xE400000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1954047342 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000002177B37F0 == a2;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6972747441776172 && a2 == 0xED00007365747562;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65756C6156776172 && a2 == 0xE900000000000073;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1635018093 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_217753058();

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

unint64_t sub_21765FC9C(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      result = 1635017060;
      break;
    case 2:
      result = 1717924456;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 1954047342;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6972747441776172;
      break;
    case 7:
      result = 0x65756C6156776172;
      break;
    case 8:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21765FF30()
{
  sub_2177531E8();
  sub_21765FD90(v1);
  return sub_217753238();
}

uint64_t sub_21765FF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21765F228(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21765FFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176606E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21765FFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176606E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_217660018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_21765F4F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2176600E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21765F9C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21766010C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21765FC94();
  *a1 = result;
  return result;
}

uint64_t sub_217660134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217660224(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217660170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217660224(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176601E8(uint64_t a1)
{
  sub_2177531E8();
  sub_21765FD90(v2);
  return sub_217753238();
}

unint64_t sub_217660224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B4A0;
  if (!qword_27CB2B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4A0);
  }

  return result;
}

unint64_t sub_217660278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B4C0;
  if (!qword_27CB2B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4C0);
  }

  return result;
}

unint64_t sub_2176602CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B4A8, &qword_21778AD00);
    sub_217660350(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217660350(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244A8, &unk_217758980);
    v8 = sub_2174BFC54(v3, v4, v5);
    sub_2174BFCA8(v8, v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176603C4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25590, &qword_21776DFB0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217660444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B4D8;
  if (!qword_27CB2B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendationsRawResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217660588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B4E0;
  if (!qword_27CB2B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4E0);
  }

  return result;
}

unint64_t sub_2176605E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B4E8;
  if (!qword_27CB2B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4E8);
  }

  return result;
}

unint64_t sub_217660638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B4F0;
  if (!qword_27CB2B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4F0);
  }

  return result;
}

unint64_t sub_217660690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B4F8;
  if (!qword_27CB2B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4F8);
  }

  return result;
}

unint64_t sub_2176606E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B508;
  if (!qword_27CB2B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B508);
  }

  return result;
}

unint64_t sub_217660738(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB285E8, &qword_2177733C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendationsRawResponse.Metadata.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_217660850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B518;
  if (!qword_27CB2B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B518);
  }

  return result;
}

unint64_t sub_2176608A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B520;
  if (!qword_27CB2B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B520);
  }

  return result;
}

unint64_t sub_217660900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B528;
  if (!qword_27CB2B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B528);
  }

  return result;
}

MusicKit::MusicItemID __swiftcall MusicItemID.init(_:)(Swift::Int64 a1)
{
  v1 = sub_217752FC8();
  result.rawValue._object = v2;
  result.rawValue._countAndFlagsBits = v1;
  return result;
}

MusicKit::MusicItemID __swiftcall MusicItemID.init(_:)(Swift::UInt64 a1)
{
  v1 = sub_217752FC8();
  result.rawValue._object = v2;
  result.rawValue._countAndFlagsBits = v1;
  return result;
}

uint64_t MusicItemID.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_94();
  sub_2177532A8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    OUTLINED_FUNCTION_0_94();
    v1 = sub_217753078();
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t MusicItemID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_217660B20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicItemID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t Optional<A>.musicKit_prettyDescription.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 7104878;
  }

  sub_217751DE8();
  return v2;
}

{
  if (!a2)
  {
    return 7104878;
  }

  MEMORY[0x21CEA23B0](a1);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_217660BF0@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  *&result = MusicItemID.init(legacyModelRawValue:)(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_217660C20@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemID.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall String.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v1 = sub_217752FC8();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::Int __swiftcall String.convertToLegacyModelRawValue()()
{
  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    sub_217751DE8();
    v7 = sub_2175B1ECC();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      return v7;
    }

    return 0;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_217752B88();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_130();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_5();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_77;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_68;
            }

            v20 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_68;
            }

            v7 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v7 = 0;
      v12 = 1;
LABEL_69:
      if ((v12 & 1) == 0)
      {
        return v7;
      }

      return 0;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v9 & v8)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_130();
            if (!v9)
            {
              goto LABEL_68;
            }

            v7 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_5();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v12 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_130();
          if (!v9)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_3_105();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_130();
          if (!v9)
          {
            break;
          }

          v7 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_76;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_3_105();
      while (1)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v9 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_0_130();
        if (!v9)
        {
          break;
        }

        v7 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        OUTLINED_FUNCTION_2_5();
        if (v9)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_78:
  __break(1u);
  return result;
}