uint64_t sub_267B29028()
{
  v0 = sub_267B345C8();
  __swift_allocate_value_buffer(v0, qword_280214E68);
  __swift_project_value_buffer(v0, qword_280214E68);
  return sub_267B345B8();
}

uint64_t static Logger.siriMail.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280214E60 != -1)
  {
    swift_once();
  }

  v2 = sub_267B345C8();
  v3 = __swift_project_value_buffer(v2, qword_280214E68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for Logger(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x267B29274);
    case 4:
      *result = 0;
      break;
    default:
      return result;
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

uint64_t SiriMailAction.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_267B34628();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_267B2938C()
{
  result = qword_280214E88;
  if (!qword_280214E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214E88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriMailAction(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x267B29558);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267B29590()
{
  result = qword_280214E90;
  if (!qword_280214E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214E90);
  }

  return result;
}

uint64_t sub_267B295E4(unsigned __int8 a1, char a2)
{
  v2 = 0x7466617264;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7466617264;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E69646E6573;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953391987;
      break;
    case 3:
      v5 = 0x656C6C65636E6163;
      v3 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x64656C696166;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E69646E6573;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953391987;
      break;
    case 3:
      v2 = 0x656C6C65636E6163;
      v6 = 0xE900000000000064;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x64656C696166;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_267B346F8();
  }

  return v8 & 1;
}

uint64_t sub_267B29774(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28532;
  switch(a1)
  {
    case 1:
      v4 = 25443;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v4 = 6513506;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v4 = 0x7463656A627573;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v4 = 2036625250;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28532;
  switch(a2)
  {
    case 1:
      v6 = 25443;
      break;
    case 2:
      v5 = 0xE300000000000000;
      v6 = 6513506;
      break;
    case 3:
      v5 = 0xE700000000000000;
      v6 = 0x7463656A627573;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v6 = 2036625250;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_267B346F8();
  }

  return v8 & 1;
}

uint64_t sub_267B298D0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C65636E6163;
  }

  else
  {
    v3 = 1684956531;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6C65636E6163;
  }

  else
  {
    v5 = 1684956531;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_267B346F8();
  }

  return v8 & 1;
}

uint64_t sub_267B2996C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_50(a1);
  OUTLINED_FUNCTION_57(v1);
  return sub_267B34738();
}

uint64_t sub_267B299A0(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_50(a1);
  a2(v5, a1);
  return sub_267B34738();
}

uint64_t sub_267B29A04(uint64_t a1, char a2)
{
  sub_267B345D8();
}

uint64_t sub_267B29A64(uint64_t a1, char a2)
{
  sub_267B345D8();
}

uint64_t sub_267B29B3C(uint64_t a1, char a2)
{
  sub_267B345D8();
}

uint64_t sub_267B29BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_267B34708();
  a3(v6, a2);
  return sub_267B34738();
}

uint64_t sub_267B29C40(uint64_t a1, char a2)
{
  sub_267B34708();
  sub_267B345D8();

  return sub_267B34738();
}

uint64_t sub_267B29CB4()
{
  v0 = sub_267B34708();
  OUTLINED_FUNCTION_57(v0);
  return sub_267B34738();
}

uint64_t sub_267B29CEC()
{
  v0 = sub_267B345A8();
  __swift_allocate_value_buffer(v0, qword_280214E98);
  __swift_project_value_buffer(v0, qword_280214E98);
  return sub_267B34598();
}

uint64_t static ServiceName.mail.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280214E80 != -1)
  {
    swift_once();
  }

  v2 = sub_267B345A8();
  v3 = __swift_project_value_buffer(v2, qword_280214E98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

SiriMailUIModel::_SiriMailMessage::Account __swiftcall _SiriMailMessage.Account.init(name:address:)(Swift::String_optional name, Swift::String address)
{
  *v2 = name;
  v2[1].value = address;
  result.address = address;
  result.name = name;
  return result;
}

uint64_t _SiriMailMessage.Account.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267B34528();
  if (!v5)
  {
    v4 = sub_267B34538();
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_267B34538();
  v10 = v9;
  v11 = sub_267B34548();
  result = (*(*(v11 - 8) + 8))(a1, v11);
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

uint64_t static _SiriMailMessage.Account.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_267B346F8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  OUTLINED_FUNCTION_21();

  return sub_267B346F8();
}

uint64_t sub_267B29F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B346F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B346F8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_267B2A0A4(char a1)
{
  sub_267B34708();
  MEMORY[0x26D601170](a1 & 1);
  return sub_267B34738();
}

uint64_t sub_267B2A0F8(char a1)
{
  if (a1)
  {
    return 0x73736572646461;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_267B2A144()
{
  v1 = *v0;
  sub_267B34708();
  MEMORY[0x26D601170](v1);
  return sub_267B34738();
}

uint64_t sub_267B2A190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B29F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B2A1D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B2A064();
  *a1 = result;
  return result;
}

uint64_t sub_267B2A200(uint64_t a1)
{
  v2 = sub_267B2A454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2A23C(uint64_t a1)
{
  v2 = sub_267B2A454();

  return MEMORY[0x2821FE720](a1, v2);
}

void _SiriMailMessage.Account.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214EB0, &qword_267B34A40);
  OUTLINED_FUNCTION_6();
  v30 = v28;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_56(v26, v26[3]);
  sub_267B2A454();
  sub_267B34758();
  sub_267B346B8();
  if (!v23)
  {
    sub_267B346D8();
  }

  (*(v30 + 8))(v24, v27);
  OUTLINED_FUNCTION_40();
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_267B2A454()
{
  result = qword_280214EB8;
  if (!qword_280214EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214EB8);
  }

  return result;
}

uint64_t _SiriMailMessage.Account.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_267B34728();
    sub_267B345D8();
  }

  else
  {
    sub_267B34728();
  }

  return sub_267B345D8();
}

uint64_t _SiriMailMessage.Account.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_50(a1);
  sub_267B34728();
  if (v2)
  {
    sub_267B345D8();
  }

  sub_267B345D8();
  return sub_267B34738();
}

void _SiriMailMessage.Account.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214EC0, &qword_267B34A48);
  OUTLINED_FUNCTION_6();
  v30 = v29;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v31);
  v33 = &v41 - v32;
  OUTLINED_FUNCTION_56(v25, v25[3]);
  sub_267B2A454();
  sub_267B34748();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v34 = sub_267B34658();
    v36 = v35;
    v37 = sub_267B34678();
    v39 = v38;
    v40 = *(v30 + 8);
    v42 = v37;
    v40(v33, v28);
    *v27 = v34;
    v27[1] = v36;
    v27[2] = v42;
    v27[3] = v39;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_267B2A7CC()
{
  v1 = *(v0 + 8);
  sub_267B34708();
  sub_267B34728();
  if (v1)
  {
    sub_267B345D8();
  }

  sub_267B345D8();
  return sub_267B34738();
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

uint64_t _SiriMailMessage.MailAttachment.data.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21();
  sub_267B2A8CC(v1, v2);
  return OUTLINED_FUNCTION_21();
}

void sub_267B2A8CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t _SiriMailMessage.MailAttachment.init(data:mimeType:filename:contentID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t static _SiriMailMessage.MailAttachment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v16 = a1[7];
  v17 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if ((MEMORY[0x26D600FE0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v12 = v2 == v6 && v3 == v7;
  if (!v12 && (sub_267B346F8() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (sub_267B346F8() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v10 && v16 == v11)
  {
    return 1;
  }

  return sub_267B346F8();
}

uint64_t sub_267B2AADC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B346F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_267B346F8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
      if (v7 || (sub_267B346F8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B346F8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_267B2AC84(char a1)
{
  result = 1635017060;
  switch(a1)
  {
    case 1:
      result = 0x65707954656D696DLL;
      break;
    case 2:
      result = 0x656D616E656C6966;
      break;
    case 3:
      result = 0x49746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B2AD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B2AADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B2AD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B2AC44();
  *a1 = result;
  return result;
}

uint64_t sub_267B2ADA0(uint64_t a1)
{
  v2 = sub_267B2AFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2ADDC(uint64_t a1)
{
  v2 = sub_267B2AFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void _SiriMailMessage.MailAttachment.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214EC8, &qword_267B34A50);
  OUTLINED_FUNCTION_6();
  v30 = v29;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_45();
  v32 = *v23;
  v33 = v23[1];
  v38 = v23[3];
  v39 = v23[2];
  v36 = v23[5];
  v37 = v23[4];
  v34 = v23[7];
  v35 = v23[6];
  OUTLINED_FUNCTION_56(v27, v27[3]);
  sub_267B2A8CC(v32, v33);
  sub_267B2AFD8();
  sub_267B34758();
  v40[0] = v32;
  v40[1] = v33;
  sub_267B2B02C();
  sub_267B346E8();
  sub_267B2B080(v32, v33);
  if (!v24)
  {
    LOBYTE(v40[0]) = 1;
    OUTLINED_FUNCTION_47(v39, v38, v40);
    LOBYTE(v40[0]) = 2;
    OUTLINED_FUNCTION_47(v37, v36, v40);
    LOBYTE(v40[0]) = 3;
    OUTLINED_FUNCTION_47(v35, v34, v40);
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_40();
}

unint64_t sub_267B2AFD8()
{
  result = qword_280214ED0;
  if (!qword_280214ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214ED0);
  }

  return result;
}

unint64_t sub_267B2B02C()
{
  result = qword_280214ED8;
  if (!qword_280214ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214ED8);
  }

  return result;
}

uint64_t sub_267B2B080(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void _SiriMailMessage.MailAttachment.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214EE0, &qword_267B34A58);
  OUTLINED_FUNCTION_6();
  v30 = v29;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v31);
  v33 = &v47 - v32;
  OUTLINED_FUNCTION_56(v25, v25[3]);
  sub_267B2AFD8();
  sub_267B34748();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_267B2B394();
    sub_267B34688();
    v34 = v56;
    v51 = v57;
    OUTLINED_FUNCTION_51(1);
    v35 = sub_267B34678();
    v50 = v36;
    v48 = v35;
    OUTLINED_FUNCTION_51(2);
    v47 = sub_267B34678();
    v49 = v37;
    v38 = sub_267B34678();
    v40 = v39;
    (*(v30 + 8))(v33, v28);
    v41 = v34;
    *&v52 = v34;
    v42 = v51;
    v44 = v48;
    v43 = v49;
    *(&v52 + 1) = v51;
    *&v53 = v48;
    *(&v53 + 1) = v50;
    *&v54 = v47;
    *(&v54 + 1) = v49;
    *&v55 = v38;
    *(&v55 + 1) = v40;
    v45 = v53;
    *v27 = v52;
    v27[1] = v45;
    v46 = v55;
    v27[2] = v54;
    v27[3] = v46;
    sub_267B2B3E8(&v52, &v56);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v56 = v41;
    v57 = v42;
    v58 = v44;
    v59 = v50;
    v60 = v47;
    v61 = v43;
    v62 = v38;
    v63 = v40;
    sub_267B2B420(&v56);
  }

  OUTLINED_FUNCTION_40();
}

unint64_t sub_267B2B394()
{
  result = qword_280214EE8;
  if (!qword_280214EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214EE8);
  }

  return result;
}

SiriMailUIModel::_SiriMailMessage::State_optional __swiftcall _SiriMailMessage.State.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_43();
  v2 = sub_267B34628();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t _SiriMailMessage.State.rawValue.getter()
{
  result = 0x7466617264;
  switch(*v0)
  {
    case 1:
      result = 0x676E69646E6573;
      break;
    case 2:
      result = 1953391987;
      break;
    case 3:
      result = 0x656C6C65636E6163;
      break;
    case 4:
      result = 0x64656C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B2B608@<X0>(uint64_t *a1@<X8>)
{
  result = _SiriMailMessage.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriMailUIModel::_SiriMailMessage::Field_optional __swiftcall _SiriMailMessage.Field.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_43();
  v2 = sub_267B34628();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t _SiriMailMessage.Field.rawValue.getter()
{
  result = 28532;
  switch(*v0)
  {
    case 1:
      result = 25443;
      break;
    case 2:
      result = 6513506;
      break;
    case 3:
      result = 0x7463656A627573;
      break;
    case 4:
      result = 2036625250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B2B834@<X0>(uint64_t *a1@<X8>)
{
  result = _SiriMailMessage.Field.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriMailUIModel::_SiriMailMessage::Action_optional __swiftcall _SiriMailMessage.Action.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_43();
  v2 = sub_267B34628();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t _SiriMailMessage.Action.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 1684956531;
  }
}

uint64_t sub_267B2B9CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6470556C65646F6DLL && a2 == 0xEB00000000657461;
  if (v4 || (sub_267B346F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_267B346F8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_267B346F8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL;
        if (v8 || (sub_267B346F8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 28532 && a2 == 0xE200000000000000;
          if (v9 || (sub_267B346F8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 25443 && a2 == 0xE200000000000000;
            if (v10 || (sub_267B346F8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 6513506 && a2 == 0xE300000000000000;
              if (v11 || (sub_267B346F8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4664657375636F66 && a2 == 0xEC000000646C6569;
                if (v12 || (sub_267B346F8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
                  if (v13 || (sub_267B346F8() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_267B346F8();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

uint64_t sub_267B2BCD8(char a1)
{
  result = 0x6470556C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = 0x656D686361747461;
      break;
    case 4:
      result = 28532;
      break;
    case 5:
      result = 25443;
      break;
    case 6:
      result = 6513506;
      break;
    case 7:
      result = 0x4664657375636F66;
      break;
    case 8:
      result = 0x6E6F69746361;
      break;
    case 9:
      result = 0x6574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B2BDFC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B346F8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B2BE6C(uint64_t a1)
{
  OUTLINED_FUNCTION_50(a1);
  MEMORY[0x26D601170](0);
  return sub_267B34738();
}

uint64_t sub_267B2BED8@<X0>(uint64_t *a1@<X8>)
{
  result = _SiriMailMessage.Action.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267B2BFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B2BDFC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B2C01C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B29964();
  *a1 = result & 1;
  return result;
}

uint64_t sub_267B2C048(uint64_t a1)
{
  v2 = sub_267B2D148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C084(uint64_t a1)
{
  v2 = sub_267B2D148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C0C0(uint64_t a1)
{
  v2 = sub_267B2D430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C0FC(uint64_t a1)
{
  v2 = sub_267B2D430();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C138(uint64_t a1)
{
  v2 = sub_267B2D298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C174(uint64_t a1)
{
  v2 = sub_267B2D298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C1B0(uint64_t a1)
{
  v2 = sub_267B2D54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C1EC(uint64_t a1)
{
  v2 = sub_267B2D54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C228(uint64_t a1)
{
  v2 = sub_267B2D388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C264(uint64_t a1)
{
  v2 = sub_267B2D388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B2B9CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B2C2D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B2BCD0();
  *a1 = result;
  return result;
}

uint64_t sub_267B2C2F8(uint64_t a1)
{
  v2 = sub_267B2D030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C334(uint64_t a1)
{
  v2 = sub_267B2D030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C370(uint64_t a1)
{
  v2 = sub_267B2D1F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C3AC(uint64_t a1)
{
  v2 = sub_267B2D1F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C3E8(uint64_t a1)
{
  v2 = sub_267B2D5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C424(uint64_t a1)
{
  v2 = sub_267B2D5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C460(uint64_t a1)
{
  v2 = sub_267B2D090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C49C(uint64_t a1)
{
  v2 = sub_267B2D090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C4D8(uint64_t a1)
{
  v2 = sub_267B2D5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C514(uint64_t a1)
{
  v2 = sub_267B2D5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B2C550()
{
  sub_267B34708();
  MEMORY[0x26D601170](0);
  return sub_267B34738();
}

uint64_t sub_267B2C590(uint64_t a1)
{
  v2 = sub_267B2D3DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B2C5CC(uint64_t a1)
{
  v2 = sub_267B2D3DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void _SiriMailMessage.StateChange.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v147 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214EF0, &qword_267B34A60);
  OUTLINED_FUNCTION_6();
  v145 = v6;
  v146 = v5;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25();
  v144 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214EF8, &qword_267B34A68);
  OUTLINED_FUNCTION_6();
  v142 = v10;
  v143 = v9;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25();
  v141 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F00, &qword_267B34A70);
  OUTLINED_FUNCTION_6();
  v139 = v14;
  v140 = v13;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25();
  v136 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F08, &qword_267B34A78);
  OUTLINED_FUNCTION_6();
  v137 = v18;
  v138 = v17;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25();
  v135 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F10, &qword_267B34A80);
  OUTLINED_FUNCTION_6();
  v133 = v22;
  v134 = v21;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25();
  v132 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F18, &qword_267B34A88);
  OUTLINED_FUNCTION_6();
  v130 = v26;
  v131 = v25;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25();
  v129 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F20, &qword_267B34A90);
  OUTLINED_FUNCTION_6();
  v127 = v30;
  v128 = v29;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25();
  v126 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F28, &qword_267B34A98);
  OUTLINED_FUNCTION_6();
  v124 = v34;
  v125 = v33;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25();
  v123 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F30, &qword_267B34AA0);
  OUTLINED_FUNCTION_6();
  v122 = v38;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_44();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F38, &qword_267B34AA8);
  OUTLINED_FUNCTION_6();
  v121 = v41;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v42);
  v44 = &v120 - v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F40, &qword_267B34AB0);
  OUTLINED_FUNCTION_6();
  v149 = v45;
  v150 = v46;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v47);
  v49 = &v120 - v48;
  OUTLINED_FUNCTION_56(v4, v4[3]);
  sub_267B2D030();
  v148 = v49;
  sub_267B34758();
  memcpy(v152, v147, 0x142uLL);
  LODWORD(v4) = sub_267B2D084(v152);
  v50 = sub_267B2D138(v152);
  v51 = v50;
  switch(v4)
  {
    case 1:
      LOBYTE(v151[0]) = 1;
      sub_267B2D5A0();
      v92 = v148;
      v72 = v149;
      sub_267B346A8();
      sub_267B346D8();
      (*(v122 + 8))(v2, v37);
      v75 = *(v150 + 8);
      v76 = v92;
      goto LABEL_9;
    case 2:
      LOBYTE(v151[0]) = 2;
      sub_267B2D54C();
      v71 = v148;
      v72 = v149;
      sub_267B346A8();
      sub_267B346D8();
      v73 = OUTLINED_FUNCTION_42();
      v74(v73);
      v75 = *(v150 + 8);
      v76 = v71;
LABEL_9:
      v93 = v72;
      goto LABEL_14;
    case 3:
      v77 = *v50;
      LOBYTE(v151[0]) = 3;
      v78 = sub_267B2D430();
      v44 = v126;
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.AttachmentsCodingKeys, v151, v79, v80, v78);
      v151[0] = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214FB8, &qword_267B34AC0);
      OUTLINED_FUNCTION_27();
      sub_267B2D484(v81, v82);
      v83 = OUTLINED_FUNCTION_53();
      v40 = v128;
      OUTLINED_FUNCTION_29(v83, v84, v85, v86, v87);
      v55 = v127;
      goto LABEL_13;
    case 4:
      v56 = *v50;
      LOBYTE(v151[0]) = 4;
      v57 = sub_267B2D3DC();
      v44 = v129;
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.ToCodingKeys, v151, v58, v59, v57);
      v151[0] = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
      OUTLINED_FUNCTION_10();
      sub_267B31F44(v60, v61);
      v62 = OUTLINED_FUNCTION_53();
      v40 = v131;
      OUTLINED_FUNCTION_29(v62, v63, v64, v65, v66);
      v55 = v130;
      goto LABEL_13;
    case 5:
      v94 = *v50;
      LOBYTE(v151[0]) = 5;
      v95 = sub_267B2D388();
      v44 = v132;
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.CcCodingKeys, v151, v96, v97, v95);
      v151[0] = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
      OUTLINED_FUNCTION_10();
      sub_267B31F44(v98, v99);
      v100 = OUTLINED_FUNCTION_53();
      v40 = v134;
      OUTLINED_FUNCTION_29(v100, v101, v102, v103, v104);
      v55 = v133;
      goto LABEL_13;
    case 6:
      v105 = *v50;
      LOBYTE(v151[0]) = 6;
      v106 = sub_267B2D298();
      v44 = v135;
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.BccCodingKeys, v151, v107, v108, v106);
      v151[0] = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
      OUTLINED_FUNCTION_10();
      sub_267B31F44(v109, v110);
      v111 = OUTLINED_FUNCTION_53();
      v40 = v138;
      OUTLINED_FUNCTION_29(v111, v112, v113, v114, v115);
      v55 = v137;
      goto LABEL_13;
    case 7:
      v88 = *v50;
      LOBYTE(v151[0]) = 7;
      v89 = sub_267B2D1F0();
      v44 = v136;
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.FocusedFieldCodingKeys, v151, v90, v91, v89);
      LOBYTE(v151[0]) = v88;
      sub_267B2D244();
      v40 = v140;
      OUTLINED_FUNCTION_33();
      sub_267B346C8();
      v55 = v139;
      goto LABEL_13;
    case 8:
      v116 = *v50;
      LOBYTE(v151[0]) = 8;
      v117 = sub_267B2D148();
      v44 = v141;
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.ActionCodingKeys, v151, v118, v119, v117);
      LOBYTE(v151[0]) = v116;
      sub_267B2D19C();
      v40 = v143;
      OUTLINED_FUNCTION_33();
      sub_267B346E8();
      v55 = v142;
      goto LABEL_13;
    case 9:
      v67 = *v50;
      LOBYTE(v151[0]) = 9;
      v68 = sub_267B2D090();
      v44 = v144;
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.StateCodingKeys, v151, v69, v70, v68);
      LOBYTE(v151[0]) = v67;
      sub_267B2D0E4();
      v40 = v146;
      OUTLINED_FUNCTION_33();
      sub_267B346E8();
      v55 = v145;
      goto LABEL_13;
    default:
      LOBYTE(v151[0]) = 0;
      v52 = sub_267B2D5F4();
      OUTLINED_FUNCTION_14(&type metadata for _SiriMailMessage.StateChange.ModelUpdateCodingKeys, v151, v53, v54, v52);
      memcpy(v151, v51, 0x142uLL);
      sub_267B2D648();
      OUTLINED_FUNCTION_33();
      sub_267B346E8();
      v55 = v121;
LABEL_13:
      (*(v55 + 8))(v44, v40);
      v75 = *(v150 + 8);
      v76 = v49;
      v93 = v2;
LABEL_14:
      v75(v76, v93);
      OUTLINED_FUNCTION_40();
      return;
  }
}

unint64_t sub_267B2D030()
{
  result = qword_280214F48;
  if (!qword_280214F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F48);
  }

  return result;
}

unint64_t sub_267B2D090()
{
  result = qword_280214F50;
  if (!qword_280214F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F50);
  }

  return result;
}

unint64_t sub_267B2D0E4()
{
  result = qword_280214F58;
  if (!qword_280214F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F58);
  }

  return result;
}

unint64_t sub_267B2D148()
{
  result = qword_280214F60;
  if (!qword_280214F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F60);
  }

  return result;
}

unint64_t sub_267B2D19C()
{
  result = qword_280214F68;
  if (!qword_280214F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F68);
  }

  return result;
}

unint64_t sub_267B2D1F0()
{
  result = qword_280214F70;
  if (!qword_280214F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F70);
  }

  return result;
}

unint64_t sub_267B2D244()
{
  result = qword_280214F78;
  if (!qword_280214F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F78);
  }

  return result;
}

unint64_t sub_267B2D298()
{
  result = qword_280214F80;
  if (!qword_280214F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F80);
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

unint64_t sub_267B2D334()
{
  result = qword_280214F98;
  if (!qword_280214F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214F98);
  }

  return result;
}

unint64_t sub_267B2D388()
{
  result = qword_280214FA0;
  if (!qword_280214FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FA0);
  }

  return result;
}

unint64_t sub_267B2D3DC()
{
  result = qword_280214FA8;
  if (!qword_280214FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FA8);
  }

  return result;
}

unint64_t sub_267B2D430()
{
  result = qword_280214FB0;
  if (!qword_280214FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FB0);
  }

  return result;
}

uint64_t sub_267B2D484(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280214FB8, &qword_267B34AC0);
    a2();
    OUTLINED_FUNCTION_54();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B2D4F8()
{
  result = qword_280214FC8;
  if (!qword_280214FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FC8);
  }

  return result;
}

unint64_t sub_267B2D54C()
{
  result = qword_280214FD0;
  if (!qword_280214FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FD0);
  }

  return result;
}

unint64_t sub_267B2D5A0()
{
  result = qword_280214FD8;
  if (!qword_280214FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FD8);
  }

  return result;
}

unint64_t sub_267B2D5F4()
{
  result = qword_280214FE0;
  if (!qword_280214FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FE0);
  }

  return result;
}

unint64_t sub_267B2D648()
{
  result = qword_280214FE8;
  if (!qword_280214FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280214FE8);
  }

  return result;
}

void _SiriMailMessage.StateChange.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v5 = v4;
  v178 = v6;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214FF0, &qword_267B34AC8);
  OUTLINED_FUNCTION_6();
  v166 = v7;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25();
  v177 = v9;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214FF8, &qword_267B34AD0);
  OUTLINED_FUNCTION_6();
  v164 = v10;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25();
  v181 = v12;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215000, &qword_267B34AD8);
  OUTLINED_FUNCTION_6();
  v162 = v13;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25();
  v175 = v15;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215008, &qword_267B34AE0);
  OUTLINED_FUNCTION_6();
  v161 = v16;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25();
  v176 = v18;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215010, &qword_267B34AE8);
  OUTLINED_FUNCTION_6();
  v159 = v19;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25();
  v174 = v21;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215018, &qword_267B34AF0);
  OUTLINED_FUNCTION_6();
  v157 = v22;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25();
  v173 = v24;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215020, &qword_267B34AF8);
  OUTLINED_FUNCTION_6();
  v156 = v25;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25();
  v172 = v27;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215028, &qword_267B34B00);
  OUTLINED_FUNCTION_6();
  v170 = v28;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25();
  v171 = v30;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215030, &qword_267B34B08);
  OUTLINED_FUNCTION_6();
  v169 = v31;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215038, &qword_267B34B10);
  OUTLINED_FUNCTION_6();
  v153 = v34;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_44();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215040, &qword_267B34B18);
  OUTLINED_FUNCTION_6();
  v179 = v37;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v38);
  v40 = &v147 - v39;
  v41 = v5[3];
  v182 = v5;
  OUTLINED_FUNCTION_56(v5, v41);
  sub_267B2D030();
  sub_267B34748();
  if (v1)
  {
    goto LABEL_9;
  }

  v151 = v2;
  v152 = v3;
  v150 = v33;
  v43 = v180;
  v42 = v181;
  v44 = sub_267B34698();
  v45 = sub_267B31D44(v44, 0);
  v49 = v45;
  if (v47 == v48 >> 1)
  {
    goto LABEL_8;
  }

  v149 = 0;
  if (v47 >= (v48 >> 1))
  {
    __break(1u);
    JUMPOUT(0x267B2E61CLL);
  }

  v148 = *(v46 + v47);
  sub_267B31D8C(v47 + 1, v48 >> 1, v45, v46, v47, v48);
  v51 = v50;
  v53 = v52;
  swift_unknownObjectRelease();
  if (v51 != v53 >> 1)
  {
LABEL_8:
    v57 = sub_267B34618();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215048, &qword_267B34B20);
    *v59 = &type metadata for _SiriMailMessage.StateChange;
    sub_267B34648();
    sub_267B34608();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_20();
    v61(v60, v36);
LABEL_9:
    v54 = v182;
    goto LABEL_10;
  }

  v54 = v149;
  switch(v148)
  {
    case 1:
      LOBYTE(v184[0]) = 1;
      sub_267B2D5A0();
      sub_267B34638();
      if (v54)
      {
        v90 = OUTLINED_FUNCTION_20();
        v91(v90, v36);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v111 = sub_267B34678();
      v112 = v179;
      v133 = v111;
      v135 = v134;
      swift_unknownObjectRelease();
      v136 = OUTLINED_FUNCTION_42();
      v137(v136);
      (*(v112 + 8))(v40, v36);
      v184[0] = v133;
      v184[1] = v135;
      sub_267B320C8(v184);
      memcpy(v185, v184, sizeof(v185));
      v54 = v182;
      goto LABEL_25;
    case 2:
      LOBYTE(v184[0]) = 2;
      v74 = sub_267B2D54C();
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.BodyCodingKeys, v184, v75, v76, v74);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_23();
      v77 = sub_267B34678();
      v121 = v120;
      v181 = v77;
      swift_unknownObjectRelease();
      v122 = OUTLINED_FUNCTION_52();
      v123(v122);
      v124 = OUTLINED_FUNCTION_20();
      v125(v124, v49);
      v184[0] = v181;
      v184[1] = v121;
      sub_267B320B4(v184);
      goto LABEL_23;
    case 3:
      LOBYTE(v184[0]) = 3;
      v78 = sub_267B2D430();
      v79 = v172;
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.AttachmentsCodingKeys, v184, v80, v81, v78);
      OUTLINED_FUNCTION_30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214FB8, &qword_267B34AC0);
      OUTLINED_FUNCTION_26();
      sub_267B2D484(v82, v83);
      OUTLINED_FUNCTION_34();
      v84 = v158;
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_23();
      sub_267B34688();
      OUTLINED_FUNCTION_13();
      swift_unknownObjectRelease();
      (*v79)(v172, v84);
      v126 = OUTLINED_FUNCTION_15();
      v127(v126);
      v128 = OUTLINED_FUNCTION_31();
      sub_267B320A0(v128);
      goto LABEL_23;
    case 4:
      LOBYTE(v184[0]) = 4;
      v62 = sub_267B2D3DC();
      v63 = v173;
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.ToCodingKeys, v184, v64, v65, v62);
      OUTLINED_FUNCTION_30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
      OUTLINED_FUNCTION_9();
      sub_267B31F44(v66, v67);
      OUTLINED_FUNCTION_34();
      v68 = v160;
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_23();
      sub_267B34688();
      OUTLINED_FUNCTION_13();
      swift_unknownObjectRelease();
      (*v63)(v173, v68);
      v114 = OUTLINED_FUNCTION_15();
      v115(v114);
      v116 = OUTLINED_FUNCTION_31();
      sub_267B32038(v116);
      goto LABEL_23;
    case 5:
      LOBYTE(v184[0]) = 5;
      v92 = sub_267B2D388();
      v93 = v174;
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.CcCodingKeys, v184, v94, v95, v92);
      OUTLINED_FUNCTION_30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
      OUTLINED_FUNCTION_9();
      sub_267B31F44(v96, v97);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_23();
      sub_267B34688();
      OUTLINED_FUNCTION_13();
      swift_unknownObjectRelease();
      (*v93)(v174, v43);
      v138 = OUTLINED_FUNCTION_15();
      v139(v138);
      v140 = OUTLINED_FUNCTION_31();
      sub_267B32020(v140);
      goto LABEL_23;
    case 6:
      LOBYTE(v184[0]) = 6;
      v98 = sub_267B2D298();
      v99 = v176;
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.BccCodingKeys, v184, v100, v101, v98);
      OUTLINED_FUNCTION_30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
      OUTLINED_FUNCTION_9();
      sub_267B31F44(v102, v103);
      OUTLINED_FUNCTION_34();
      v104 = v163;
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_23();
      sub_267B34688();
      OUTLINED_FUNCTION_13();
      swift_unknownObjectRelease();
      (*v99)(v176, v104);
      v141 = OUTLINED_FUNCTION_15();
      v142(v141);
      v143 = OUTLINED_FUNCTION_31();
      sub_267B3200C(v143);
      goto LABEL_23;
    case 7:
      LOBYTE(v184[0]) = 7;
      v85 = sub_267B2D1F0();
      v86 = v175;
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.FocusedFieldCodingKeys, v184, v87, v88, v85);
      OUTLINED_FUNCTION_30();
      sub_267B31EDC();
      v89 = v165;
      OUTLINED_FUNCTION_22();
      sub_267B34668();
      OUTLINED_FUNCTION_13();
      swift_unknownObjectRelease();
      (*v86)(v175, v89);
      v129 = OUTLINED_FUNCTION_15();
      v130(v129);
      v131 = OUTLINED_FUNCTION_41();
      sub_267B31F30(v131);
      goto LABEL_23;
    case 8:
      LOBYTE(v184[0]) = 8;
      v105 = sub_267B2D148();
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.ActionCodingKeys, v184, v106, v107, v105);
      OUTLINED_FUNCTION_30();
      sub_267B31E74();
      v113 = v167;
      OUTLINED_FUNCTION_22();
      sub_267B34688();
      OUTLINED_FUNCTION_13();
      swift_unknownObjectRelease();
      (*v42)(v181, v113);
      v144 = OUTLINED_FUNCTION_15();
      v145(v144);
      v146 = OUTLINED_FUNCTION_41();
      sub_267B31EC8(v146);
      goto LABEL_23;
    case 9:
      LOBYTE(v184[0]) = 9;
      v69 = sub_267B2D090();
      v70 = v177;
      OUTLINED_FUNCTION_12(&type metadata for _SiriMailMessage.StateChange.StateCodingKeys, v184, v71, v72, v69);
      OUTLINED_FUNCTION_30();
      sub_267B31E08();
      v73 = v168;
      OUTLINED_FUNCTION_22();
      sub_267B34688();
      OUTLINED_FUNCTION_13();
      swift_unknownObjectRelease();
      (*v70)(v177, v73);
      v117 = OUTLINED_FUNCTION_15();
      v118(v117);
      v119 = OUTLINED_FUNCTION_41();
      sub_267B31E5C(v119);
LABEL_23:
      v132 = v184;
      goto LABEL_24;
    default:
      LOBYTE(v184[0]) = 0;
      sub_267B2D5F4();
      sub_267B34638();
      OUTLINED_FUNCTION_30();
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_20();
        v56(v55, v36);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_267B320DC();
        v108 = v150;
        OUTLINED_FUNCTION_22();
        sub_267B34688();
        v109 = (v153 + 8);
        v110 = (v179 + 8);
        swift_unknownObjectRelease();
        (*v109)(v152, v108);
        (*v110)(v40, v36);
        memcpy(v183, v184, 0x142uLL);
        sub_267B32130(v183);
        v132 = v183;
LABEL_24:
        memcpy(v185, v132, sizeof(v185));
LABEL_25:
        memcpy(v178, v185, 0x142uLL);
      }

      break;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v54);
  OUTLINED_FUNCTION_40();
}

uint64_t _SiriMailMessage.to.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _SiriMailMessage.subject.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t _SiriMailMessage.body.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t _SiriMailMessage.cc.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t _SiriMailMessage.bcc.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t _SiriMailMessage.attachments.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t _SiriMailMessage.replyReference.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t _SiriMailMessage.subjectLabel.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t _SiriMailMessage.cancelLabel.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t _SiriMailMessage.cancelledLabel.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t _SiriMailMessage.sendLabel.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t _SiriMailMessage.sentLabel.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t _SiriMailMessage.messageLabel.setter()
{
  OUTLINED_FUNCTION_36();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

void __swiftcall _SiriMailMessage.init(toLabel:ccLabel:bccLabel:subjectLabel:cancelLabel:cancelledLabel:sendLabel:sentLabel:messageLabel:deleteLabel:replyLabel:nextLabel:seeAllLabel:moreInMailLabel:newMessageLabel:to:cc:bcc:subject:body:focusedField:attachments:state:replyReference:)(SiriMailUIModel::_SiriMailMessage *__return_ptr retstr, Swift::String toLabel, Swift::String ccLabel, Swift::String bccLabel, Swift::String subjectLabel, Swift::String cancelLabel, Swift::String cancelledLabel, Swift::String sendLabel, Swift::String sentLabel, Swift::String messageLabel, Swift::String deleteLabel, Swift::String replyLabel, Swift::String nextLabel, Swift::String seeAllLabel, Swift::String moreInMailLabel, Swift::String newMessageLabel, Swift::OpaquePointer to, Swift::OpaquePointer cc, Swift::OpaquePointer bcc, Swift::String_optional subject, Swift::String_optional body, SiriMailUIModel::_SiriMailMessage::Field_optional focusedField, Swift::OpaquePointer attachments, SiriMailUIModel::_SiriMailMessage::State state, Swift::String_optional replyReference)
{
  v25 = *focusedField.value;
  v26 = *state;
  retstr->subject.value._object = subject.value._object;
  retstr->body.value._countAndFlagsBits = body.value._countAndFlagsBits;
  retstr->state = v26;
  retstr->to = to;
  retstr->subject.value._countAndFlagsBits = subject.value._countAndFlagsBits;
  retstr->body.value._object = body.value._object;
  retstr->cc = cc;
  retstr->bcc = bcc;
  retstr->attachments = attachments;
  retstr->focusedField.value = v25;
  retstr->replyReference = replyReference;
  retstr->toLabel = toLabel;
  retstr->ccLabel = ccLabel;
  retstr->bccLabel = bccLabel;
  retstr->subjectLabel = subjectLabel;
  retstr->cancelLabel = cancelLabel;
  retstr->cancelledLabel = cancelledLabel;
  retstr->sendLabel = sendLabel;
  retstr->sentLabel = sentLabel;
  retstr->messageLabel = messageLabel;
  retstr->deleteLabel = deleteLabel;
  retstr->replyLabel = replyLabel;
  retstr->nextLabel = nextLabel;
  retstr->seeAllLabel = seeAllLabel;
  retstr->moreInMailLabel = moreInMailLabel;
  retstr->newMessageLabel = newMessageLabel;
}

void __swiftcall _SiriMailMessage.init(to:cc:bcc:subject:body:focusedField:attachments:state:replyReference:newMessageLabel:)(SiriMailUIModel::_SiriMailMessage *__return_ptr retstr, Swift::OpaquePointer to, Swift::OpaquePointer cc, Swift::OpaquePointer bcc, Swift::String_optional subject, Swift::String_optional body, SiriMailUIModel::_SiriMailMessage::Field_optional focusedField, Swift::OpaquePointer attachments, SiriMailUIModel::_SiriMailMessage::State state, Swift::String_optional replyReference, Swift::String newMessageLabel)
{
  v11 = *focusedField.value;
  v12 = *state;
  retstr->subject.value._object = subject.value._object;
  retstr->body.value._countAndFlagsBits = body.value._countAndFlagsBits;
  retstr->state = v12;
  retstr->to = to;
  retstr->subject.value._countAndFlagsBits = subject.value._countAndFlagsBits;
  retstr->body.value._object = body.value._object;
  retstr->cc = cc;
  retstr->bcc = bcc;
  retstr->attachments = attachments;
  retstr->focusedField.value = v11;
  retstr->replyReference = replyReference;
  retstr->toLabel._countAndFlagsBits = 0;
  retstr->toLabel._object = 0xE000000000000000;
  retstr->ccLabel._countAndFlagsBits = 0;
  retstr->ccLabel._object = 0xE000000000000000;
  retstr->bccLabel._countAndFlagsBits = 0;
  retstr->bccLabel._object = 0xE000000000000000;
  retstr->subjectLabel._countAndFlagsBits = 0;
  retstr->subjectLabel._object = 0xE000000000000000;
  retstr->cancelLabel._countAndFlagsBits = 0;
  retstr->cancelLabel._object = 0xE000000000000000;
  retstr->cancelledLabel._countAndFlagsBits = 0;
  retstr->cancelledLabel._object = 0xE000000000000000;
  retstr->sendLabel._countAndFlagsBits = 0;
  retstr->sendLabel._object = 0xE000000000000000;
  retstr->sentLabel._countAndFlagsBits = 0;
  retstr->sentLabel._object = 0xE000000000000000;
  retstr->messageLabel._countAndFlagsBits = 0;
  retstr->messageLabel._object = 0xE000000000000000;
  retstr->deleteLabel._countAndFlagsBits = 0;
  retstr->deleteLabel._object = 0xE000000000000000;
  retstr->replyLabel._countAndFlagsBits = 0;
  retstr->replyLabel._object = 0xE000000000000000;
  retstr->nextLabel._countAndFlagsBits = 0;
  retstr->nextLabel._object = 0xE000000000000000;
  retstr->seeAllLabel._countAndFlagsBits = 0;
  retstr->seeAllLabel._object = 0xE000000000000000;
  retstr->moreInMailLabel._countAndFlagsBits = 0;
  retstr->moreInMailLabel._object = 0xE000000000000000;
  retstr->newMessageLabel = newMessageLabel;
}

uint64_t static _SiriMailMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v101 = *(a1 + 48);
  v102 = *(a1 + 40);
  v100 = *(a1 + 56);
  v89 = *(a1 + 64);
  v94 = *(a1 + 72);
  v92 = *(a1 + 80);
  v95 = *(a1 + 88);
  v87 = *(a1 + 96);
  v96 = *(a1 + 104);
  v84 = *(a1 + 112);
  v97 = *(a1 + 120);
  v81 = *(a1 + 128);
  v98 = *(a1 + 136);
  v78 = *(a1 + 144);
  v75 = *(a1 + 160);
  v72 = *(a1 + 176);
  v69 = *(a1 + 192);
  v66 = *(a1 + 208);
  v63 = *(a1 + 224);
  v60 = *(a1 + 240);
  v57 = *(a1 + 256);
  v54 = *(a1 + 272);
  v50 = *(a1 + 296);
  v51 = *(a1 + 288);
  v47 = *(a1 + 304);
  v46 = *(a1 + 312);
  v43 = *(a1 + 320);
  v41 = *(a1 + 321);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v99 = *(a2 + 56);
  v88 = *(a2 + 64);
  v93 = *(a2 + 72);
  v91 = *(a2 + 80);
  v90 = *(a2 + 88);
  v85 = *(a2 + 104);
  v86 = *(a2 + 96);
  v82 = *(a2 + 120);
  v83 = *(a2 + 112);
  v79 = *(a2 + 136);
  v80 = *(a2 + 128);
  v76 = *(a2 + 152);
  v77 = *(a2 + 144);
  v73 = *(a2 + 168);
  v74 = *(a2 + 160);
  v70 = *(a2 + 184);
  v71 = *(a2 + 176);
  v67 = *(a2 + 200);
  v68 = *(a2 + 192);
  v64 = *(a2 + 216);
  v65 = *(a2 + 208);
  v61 = *(a2 + 232);
  v62 = *(a2 + 224);
  v58 = *(a2 + 248);
  v59 = *(a2 + 240);
  v55 = *(a2 + 264);
  v56 = *(a2 + 256);
  v52 = *(a2 + 280);
  v53 = *(a2 + 272);
  v48 = *(a2 + 296);
  v49 = *(a2 + 288);
  v44 = *(a2 + 312);
  v45 = *(a2 + 304);
  v42 = *(a2 + 320);
  v40 = *(a2 + 321);
  if ((sub_267B2F488(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v12 = v2 == v6 && v3 == v8;
    if (!v12 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    v13 = v5 == v7 && v4 == v9;
    if (!v13 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((sub_267B2F488(v102, v10) & 1) == 0 || (sub_267B2F488(v101, v11) & 1) == 0 || (sub_267B2F56C(v100, v99) & 1) == 0)
  {
    return 0;
  }

  if (v94)
  {
    OUTLINED_FUNCTION_37();
    if (!v93)
    {
      return 0;
    }

    if (v89 != v88 || v18 != v93)
    {
      v20 = sub_267B346F8();
      v17 = v95;
      v16 = v96;
      v15 = v97;
      v14 = v98;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_32:
    if (v92 != v91 || v17 != v90)
    {
      v22 = sub_267B346F8();
      v16 = v96;
      v15 = v97;
      v14 = v98;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    if (v87 != v86 || v16 != v85)
    {
      v24 = sub_267B346F8();
      v15 = v97;
      v14 = v98;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    if (v84 != v83 || v15 != v82)
    {
      v26 = sub_267B346F8();
      v14 = v98;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    v27 = v81 == v80 && v14 == v79;
    if (!v27 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v28 = v78 == v77 && v7 == v76;
    if (!v28 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v29 = v75 == v74 && v10 == v73;
    if (!v29 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v30 = v72 == v71 && v3 == v70;
    if (!v30 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v31 = v69 == v68 && v2 == v67;
    if (!v31 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v32 = v66 == v65 && v11 == v64;
    if (!v32 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v33 = v63 == v62 && v5 == v61;
    if (!v33 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v34 = v60 == v59 && v9 == v58;
    if (!v34 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v35 = v57 == v56 && v6 == v55;
    if (!v35 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v36 = v54 == v53 && v4 == v52;
    if (!v36 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v37 = v51 == v49 && v50 == v48;
    if (!v37 && (sub_267B346F8() & 1) == 0)
    {
      return 0;
    }

    v38 = v47 == v45 && v46 == v44;
    if (!v38 && (sub_267B346F8() & 1) == 0 || (sub_267B295E4(v43, v42) & 1) == 0)
    {
      return 0;
    }

    if (v41 == 5)
    {
      if (v40 != 5)
      {
        return 0;
      }
    }

    else if (v40 == 5 || (sub_267B29774(v41, v40) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  OUTLINED_FUNCTION_37();
  if (!v93)
  {
    goto LABEL_32;
  }

  return 0;
}

uint64_t sub_267B2F488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_267B346F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_267B346F8() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_267B2F56C(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1 == a2;
    if (a1 != a2)
    {
      v4 = (a1 + 32);
      v5 = (a2 + 32);
      do
      {
        v6 = v4[1];
        v58 = *v4;
        v59 = v6;
        v7 = v4[3];
        v60 = v4[2];
        v61 = v7;
        v8 = v5[1];
        v62 = *v5;
        v63 = v8;
        v9 = v5[3];
        v64 = v5[2];
        v65 = v9;
        v10 = *(&v58 + 1) >> 62;
        v11 = *(&v62 + 1);
        v12 = v62;
        v13 = *(&v62 + 1) >> 62;
        if (v3)
        {
          v15 = 0;
          if (!v58 && *(&v58 + 1) == 0xC000000000000000 && *(&v62 + 1) >> 62 == 3)
          {
            v15 = 0;
            if (v62 == __PAIR128__(0xC000000000000000, 0))
            {
LABEL_40:
              sub_267B2B3E8(&v58, v57);
              sub_267B2B3E8(&v62, v57);
              goto LABEL_80;
            }
          }
        }

        else
        {
          v15 = 0;
          switch(v10)
          {
            case 0:
              v15 = BYTE14(v58);
              break;
            case 1:
              if (__OFSUB__(DWORD1(v58), v58))
              {
LABEL_102:
                __break(1u);
LABEL_103:
                __break(1u);
LABEL_104:
                __break(1u);
LABEL_105:
                __break(1u);
LABEL_106:
                __break(1u);
LABEL_107:
                __break(1u);
LABEL_108:
                __break(1u);
LABEL_109:
                __break(1u);
LABEL_110:
                __break(1u);
LABEL_111:
                __break(1u);
LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                __break(1u);
              }

              v15 = DWORD1(v58) - v58;
              break;
            case 2:
              v17 = *(v58 + 16);
              v16 = *(v58 + 24);
              v18 = __OFSUB__(v16, v17);
              v15 = v16 - v17;
              if (!v18)
              {
                break;
              }

              goto LABEL_103;
            case 3:
              break;
            default:
              JUMPOUT(0);
          }
        }

        switch(v13)
        {
          case 1:
            LODWORD(v19) = DWORD1(v62) - v62;
            if (__OFSUB__(DWORD1(v62), v62))
            {
              goto LABEL_101;
            }

            v19 = v19;
LABEL_29:
            if (v15 != v19)
            {
              return 0;
            }

            if (v15 < 1)
            {
              goto LABEL_40;
            }

            break;
          case 2:
            v21 = *(v62 + 16);
            v20 = *(v62 + 24);
            v18 = __OFSUB__(v20, v21);
            v19 = v20 - v21;
            if (!v18)
            {
              goto LABEL_29;
            }

            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          case 3:
            if (v15)
            {
              return 0;
            }

            goto LABEL_40;
          default:
            v19 = BYTE14(v62);
            goto LABEL_29;
        }

        v22 = v62 >> 32;
        switch(v10)
        {
          case 1:
            if (v58 >> 32 < v58)
            {
              goto LABEL_104;
            }

            v48 = v58;
            sub_267B2A8CC(v62, *(&v62 + 1));
            sub_267B2A8CC(v12, v11);
            sub_267B2B3E8(&v58, v57);
            sub_267B2B3E8(&v62, v57);
            sub_267B2A8CC(v12, v11);
            v28 = sub_267B34558();
            if (!v28)
            {
              goto LABEL_61;
            }

            v35 = sub_267B34578();
            if (__OFSUB__(v48, v35))
            {
              goto LABEL_107;
            }

            v28 += v48 - v35;
LABEL_61:
            sub_267B34568();
            sub_267B31B10(v57, v28, v12, v11);
            sub_267B2B080(v12, v11);
            sub_267B2B080(v12, v11);
            sub_267B2B080(v12, v11);
            if ((v57[0] & 1) == 0)
            {
              goto LABEL_99;
            }

            break;
          case 2:
            v27 = *(v58 + 16);
            v47 = *(v58 + 24);
            sub_267B2A8CC(v62, *(&v62 + 1));
            sub_267B2A8CC(v12, v11);
            sub_267B2B3E8(&v58, v57);
            sub_267B2B3E8(&v62, v57);
            sub_267B2A8CC(v12, v11);
            v28 = sub_267B34558();
            if (!v28)
            {
              goto LABEL_44;
            }

            v29 = sub_267B34578();
            if (__OFSUB__(v27, v29))
            {
              goto LABEL_106;
            }

            v28 += v27 - v29;
LABEL_44:
            if (!__OFSUB__(v47, v27))
            {
              goto LABEL_61;
            }

            goto LABEL_105;
          case 3:
            memset(__s1, 0, 14);
            if (!v13)
            {
              goto LABEL_59;
            }

            if (v13 != 2)
            {
              if (v22 < v62)
              {
                goto LABEL_109;
              }

              v23 = v62;
              sub_267B2A8CC(v62, *(&v62 + 1));
              sub_267B2B3E8(&v58, v57);
              sub_267B2B3E8(&v62, v57);
              v24 = sub_267B34558();
              if (v24)
              {
                v36 = sub_267B34578();
                if (__OFSUB__(v12, v36))
                {
                  goto LABEL_114;
                }

                v24 += v12 - v36;
              }

              v26 = sub_267B34568();
              if (!v24)
              {
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
LABEL_119:
                __break(1u);
                MEMORY[0x26D601270](0);
                __break(1u);
                JUMPOUT(0x267B2FCC4);
              }

              goto LABEL_68;
            }

            v30 = *(v62 + 16);
            v31 = *(v62 + 24);
            sub_267B2A8CC(v62, *(&v62 + 1));
            sub_267B2B3E8(&v58, v57);
            sub_267B2B3E8(&v62, v57);
            v24 = sub_267B34558();
            if (v24)
            {
              v32 = sub_267B34578();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_112;
              }

              v24 += v30 - v32;
            }

            v18 = __OFSUB__(v31, v30);
            v33 = v31 - v30;
            if (v18)
            {
              goto LABEL_111;
            }

            v34 = sub_267B34568();
            if (!v24)
            {
              goto LABEL_117;
            }

            goto LABEL_76;
          default:
            LODWORD(__s1[0]) = v58;
            WORD2(__s1[0]) = WORD2(v58);
            *(__s1 + 6) = *(&v58 + 6);
            if (v13)
            {
              if (v13 == 1)
              {
                if (v22 < v62)
                {
                  goto LABEL_108;
                }

                v23 = v62;
                sub_267B2A8CC(v62, *(&v62 + 1));
                sub_267B2B3E8(&v58, v57);
                sub_267B2B3E8(&v62, v57);
                v24 = sub_267B34558();
                if (v24)
                {
                  v25 = sub_267B34578();
                  if (__OFSUB__(v12, v25))
                  {
                    goto LABEL_115;
                  }

                  v24 += v12 - v25;
                }

                v26 = sub_267B34568();
                if (!v24)
                {
                  goto LABEL_119;
                }

LABEL_68:
                if (v26 >= v22 - v23)
                {
                  v37 = v22 - v23;
                }

                else
                {
                  v37 = v26;
                }
              }

              else
              {
                v38 = *(v62 + 16);
                v39 = *(v62 + 24);
                sub_267B2A8CC(v62, *(&v62 + 1));
                sub_267B2B3E8(&v58, v57);
                sub_267B2B3E8(&v62, v57);
                v24 = sub_267B34558();
                if (v24)
                {
                  v40 = sub_267B34578();
                  if (__OFSUB__(v38, v40))
                  {
                    goto LABEL_113;
                  }

                  v24 += v38 - v40;
                }

                v18 = __OFSUB__(v39, v38);
                v33 = v39 - v38;
                if (v18)
                {
                  goto LABEL_110;
                }

                v34 = sub_267B34568();
                if (!v24)
                {
                  goto LABEL_118;
                }

LABEL_76:
                if (v34 >= v33)
                {
                  v37 = v33;
                }

                else
                {
                  v37 = v34;
                }
              }

              v41 = memcmp(__s1, v24, v37);
              sub_267B2B080(v12, v11);
              if (v41)
              {
                goto LABEL_99;
              }
            }

            else
            {
LABEL_59:
              __s2 = v62;
              v50 = BYTE4(v62);
              v51 = *(&v62 + 5);
              v52 = *(&v62 + 7);
              v53 = *(&v62 + 9);
              v54 = *(&v62 + 11);
              v55 = BYTE13(v62);
              sub_267B2B3E8(&v58, v57);
              sub_267B2B3E8(&v62, v57);
              if (memcmp(__s1, &__s2, BYTE6(v11)))
              {
                goto LABEL_99;
              }
            }

            break;
        }

LABEL_80:
        v42 = v59 == v63 && *(&v59 + 1) == *(&v63 + 1);
        if (!v42 && (sub_267B346F8() & 1) == 0 || (v60 == v64 ? (v43 = *(&v60 + 1) == *(&v64 + 1)) : (v43 = 0), !v43 && (sub_267B346F8() & 1) == 0))
        {
LABEL_99:
          sub_267B2B420(&v62);
          sub_267B2B420(&v58);
          return 0;
        }

        if (v61 == v65 && *(&v61 + 1) == *(&v65 + 1))
        {
          sub_267B2B420(&v62);
          sub_267B2B420(&v58);
        }

        else
        {
          v45 = sub_267B346F8();
          sub_267B2B420(&v62);
          sub_267B2B420(&v58);
          if ((v45 & 1) == 0)
          {
            return 0;
          }
        }

        v4 += 4;
        v5 += 4;
        v3 = --v2 == 0;
      }

      while (v2);
    }
  }

  return 1;
}

uint64_t sub_267B2FCF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28532 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B346F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_267B346F8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_267B346F8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25443 && a2 == 0xE200000000000000;
        if (v8 || (sub_267B346F8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 6513506 && a2 == 0xE300000000000000;
          if (v9 || (sub_267B346F8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL;
            if (v10 || (sub_267B346F8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x666552796C706572 && a2 == 0xEE0065636E657265;
              if (v11 || (sub_267B346F8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6562614C6F74 && a2 == 0xE700000000000000;
                if (v12 || (sub_267B346F8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C6562614C6363 && a2 == 0xE700000000000000;
                  if (v13 || (sub_267B346F8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C6562614C636362 && a2 == 0xE800000000000000;
                    if (v14 || (sub_267B346F8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4C7463656A627573 && a2 == 0xEC0000006C656261;
                      if (v15 || (sub_267B346F8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
                        if (v16 || (sub_267B346F8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656C6C65636E6163 && a2 == 0xEE006C6562614C64;
                          if (v17 || (sub_267B346F8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6562614C646E6573 && a2 == 0xE90000000000006CLL;
                            if (v18 || (sub_267B346F8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6562614C746E6573 && a2 == 0xE90000000000006CLL;
                              if (v19 || (sub_267B346F8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x4C6567617373656DLL && a2 == 0xEC0000006C656261;
                                if (v20 || (sub_267B346F8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x614C6574656C6564 && a2 == 0xEB000000006C6562;
                                  if (v21 || (sub_267B346F8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x62614C796C706572 && a2 == 0xEA00000000006C65;
                                    if (v22 || (sub_267B346F8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6562614C7478656ELL && a2 == 0xE90000000000006CLL;
                                      if (v23 || (sub_267B346F8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x614C6C6C41656573 && a2 == 0xEB000000006C6562;
                                        if (v24 || (sub_267B346F8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x614D6E4965726F6DLL && a2 == 0xEF6C6562614C6C69;
                                          if (v25 || (sub_267B346F8() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x617373654D77656ELL && a2 == 0xEF6C6562614C6567;
                                            if (v26 || (sub_267B346F8() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
                                              if (v27 || (sub_267B346F8() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0x4664657375636F66 && a2 == 0xEC000000646C6569)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_267B346F8();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
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
        }
      }
    }
  }
}

uint64_t sub_267B3041C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_50(a1);
  MEMORY[0x26D601170](v1);
  return sub_267B34738();
}

uint64_t sub_267B3045C(char a1)
{
  result = 28532;
  switch(a1)
  {
    case 1:
      return 0x7463656A627573;
    case 2:
      return 2036625250;
    case 3:
      return 25443;
    case 4:
      return 6513506;
    case 5:
      return 0x656D686361747461;
    case 6:
      return 0x666552796C706572;
    case 7:
      return 0x6C6562614C6F74;
    case 8:
      return 0x6C6562614C6363;
    case 9:
      return 0x6C6562614C636362;
    case 10:
      return 0x4C7463656A627573;
    case 11:
      v3 = 0x6C65636E6163;
      goto LABEL_26;
    case 12:
      return 0x656C6C65636E6163;
    case 13:
      v4 = 1684956531;
      goto LABEL_20;
    case 14:
      v4 = 1953391987;
      goto LABEL_20;
    case 15:
      return 0x4C6567617373656DLL;
    case 16:
      v3 = 0x6574656C6564;
      goto LABEL_26;
    case 17:
      return 0x62614C796C706572;
    case 18:
      v4 = 1954047342;
LABEL_20:
      result = v4 | 0x6562614C00000000;
      break;
    case 19:
      v3 = 0x6C6C41656573;
LABEL_26:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      break;
    case 20:
      result = 0x614D6E4965726F6DLL;
      break;
    case 21:
      result = 0x617373654D77656ELL;
      break;
    case 22:
      result = 0x6574617473;
      break;
    case 23:
      result = 0x4664657375636F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B3072C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B2FCF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B30754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B30414();
  *a1 = result;
  return result;
}

uint64_t sub_267B3077C(uint64_t a1)
{
  v2 = sub_267B32140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B307B8(uint64_t a1)
{
  v2 = sub_267B32140();

  return MEMORY[0x2821FE720](a1, v2);
}

void _SiriMailMessage.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  v87 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280215090, &qword_267B34B28);
  OUTLINED_FUNCTION_6();
  v26 = v25;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v27);
  v29 = v56 - v28;
  v30 = *(v20 + 8);
  v31 = *(v20 + 24);
  v85 = *(v20 + 16);
  v86 = v30;
  v32 = *(v20 + 40);
  v83 = *(v20 + 32);
  v84 = v31;
  v33 = *(v20 + 56);
  v81 = *(v20 + 48);
  v82 = v32;
  v34 = *(v20 + 64);
  v79 = *(v20 + 72);
  v80 = v33;
  v35 = *(v20 + 80);
  v77 = *(v20 + 88);
  v78 = v34;
  v36 = *(v20 + 96);
  v75 = *(v20 + 104);
  v76 = v35;
  v37 = *(v20 + 112);
  v73 = *(v20 + 120);
  v74 = v36;
  v38 = *(v20 + 136);
  v70 = *(v20 + 128);
  v71 = v38;
  v72 = v37;
  v39 = *(v20 + 152);
  v68 = *(v20 + 144);
  v69 = v39;
  v40 = *(v20 + 168);
  v66 = *(v20 + 160);
  v67 = v40;
  v41 = *(v20 + 184);
  v64 = *(v20 + 176);
  v65 = v41;
  v42 = *(v20 + 200);
  v62 = *(v20 + 192);
  v63 = v42;
  v43 = *(v20 + 216);
  v60 = *(v20 + 208);
  v61 = v43;
  v44 = *(v20 + 232);
  v58 = *(v20 + 224);
  v59 = v44;
  v45 = *(v20 + 248);
  v56[0] = *(v20 + 240);
  v56[1] = v45;
  v46 = *(v20 + 264);
  v56[2] = *(v20 + 256);
  v56[3] = v46;
  v47 = *(v20 + 280);
  v56[4] = *(v20 + 272);
  v56[5] = v47;
  v48 = *(v20 + 296);
  v56[6] = *(v20 + 288);
  v56[7] = v48;
  v49 = *(v20 + 312);
  v56[8] = *(v20 + 304);
  v56[9] = v49;
  v57 = *(v20 + 320);
  v50 = *(v20 + 321);
  OUTLINED_FUNCTION_56(v23, v23[3]);
  sub_267B32140();

  sub_267B34758();
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
  OUTLINED_FUNCTION_10();
  sub_267B31F44(v51, v52);
  v88 = v24;
  v53 = v87;
  sub_267B346E8();
  if (v53)
  {

    (*(v26 + 8))(v29, v88);
  }

  else
  {
    LODWORD(v87) = v50;

    OUTLINED_FUNCTION_24(1);
    OUTLINED_FUNCTION_39();
    sub_267B346B8();
    OUTLINED_FUNCTION_24(2);
    OUTLINED_FUNCTION_39();
    sub_267B346B8();
    v89 = 3;
    OUTLINED_FUNCTION_35();
    sub_267B346E8();
    v89 = 4;
    OUTLINED_FUNCTION_35();
    sub_267B346E8();
    v89 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214FB8, &qword_267B34AC0);
    OUTLINED_FUNCTION_27();
    sub_267B2D484(v54, v55);
    OUTLINED_FUNCTION_35();
    sub_267B346E8();
    OUTLINED_FUNCTION_24(6);
    OUTLINED_FUNCTION_39();
    sub_267B346B8();
    OUTLINED_FUNCTION_24(7);
    OUTLINED_FUNCTION_39();
    sub_267B346D8();
    OUTLINED_FUNCTION_24(8);
    OUTLINED_FUNCTION_39();
    sub_267B346D8();
    OUTLINED_FUNCTION_24(9);
    OUTLINED_FUNCTION_39();
    sub_267B346D8();
    OUTLINED_FUNCTION_24(10);
    sub_267B346D8();
    OUTLINED_FUNCTION_24(11);
    OUTLINED_FUNCTION_23();
    sub_267B346D8();
    OUTLINED_FUNCTION_24(12);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(13);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(14);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(15);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(16);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(17);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(18);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(19);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(20);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_24(21);
    OUTLINED_FUNCTION_17();
    v89 = 22;
    sub_267B2D0E4();
    OUTLINED_FUNCTION_23();
    sub_267B346E8();
    v89 = 23;
    sub_267B2D244();
    OUTLINED_FUNCTION_23();
    sub_267B346C8();
    (*(v26 + 8))(0);
  }

  OUTLINED_FUNCTION_40();
}

void _SiriMailMessage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802150A0, &qword_267B34B30);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_56(v26, v26[3]);
  sub_267B32140();
  sub_267B34748();
  if (v24)
  {
    OUTLINED_FUNCTION_0();
    __swift_destroy_boxed_opaque_existential_1(v26);

    if (v84)
    {

      if ((v87 & 1) == 0)
      {
LABEL_16:
        if (v89)
        {
LABEL_17:

          if ((v92 & 1) == 0)
          {
LABEL_18:
            if (v95)
            {
LABEL_19:

              if ((v97 & 1) == 0)
              {
LABEL_20:
                if (v100)
                {
LABEL_21:

                  if ((v102 & 1) == 0)
                  {
LABEL_22:
                    if (v104)
                    {
LABEL_23:

                      if ((v106 & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_13;
                    }

LABEL_12:
                    if (!v106)
                    {
                      goto LABEL_24;
                    }

LABEL_13:

                    goto LABEL_24;
                  }

LABEL_11:

                  if (v104)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_12;
                }

LABEL_10:
                if (!v102)
                {
                  goto LABEL_22;
                }

                goto LABEL_11;
              }

LABEL_9:

              if (v100)
              {
                goto LABEL_21;
              }

              goto LABEL_10;
            }

LABEL_8:
            if (!v97)
            {
              goto LABEL_20;
            }

            goto LABEL_9;
          }

LABEL_7:

          if (v95)
          {
            goto LABEL_19;
          }

          goto LABEL_8;
        }

LABEL_6:
        if (!v92)
        {
          goto LABEL_18;
        }

        goto LABEL_7;
      }
    }

    else if (!v87)
    {
      goto LABEL_16;
    }

    if (v89)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v107 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214F88, &qword_267B34AB8);
  OUTLINED_FUNCTION_9();
  sub_267B31F44(v30, v31);
  OUTLINED_FUNCTION_19();
  v83 = v109[0];
  OUTLINED_FUNCTION_5(1);
  v32 = sub_267B34658();
  v94 = v33;
  OUTLINED_FUNCTION_5(2);
  v105 = sub_267B34658();
  v91 = v34;
  OUTLINED_FUNCTION_19();
  v82 = v109[0];
  OUTLINED_FUNCTION_19();
  v81 = v109[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280214FB8, &qword_267B34AC0);
  OUTLINED_FUNCTION_26();
  sub_267B2D484(v35, v36);
  OUTLINED_FUNCTION_46();
  sub_267B34688();
  v80 = v109[0];
  OUTLINED_FUNCTION_5(6);
  v37 = sub_267B34658();
  v99 = v38;
  OUTLINED_FUNCTION_5(7);
  v39 = sub_267B34678();
  v78 = v40;
  OUTLINED_FUNCTION_5(8);
  v103 = sub_267B34678();
  v79 = v41;
  v101 = v39;
  OUTLINED_FUNCTION_5(9);
  v42 = sub_267B34678();
  v77 = v43;
  v44 = v42;
  OUTLINED_FUNCTION_5(10);
  v98 = sub_267B34678();
  v76 = v45;
  OUTLINED_FUNCTION_5(11);
  v96 = sub_267B34678();
  v75 = v46;
  OUTLINED_FUNCTION_5(12);
  v93 = sub_267B34678();
  v74 = v47;
  OUTLINED_FUNCTION_5(13);
  v90 = sub_267B34678();
  v73 = v48;
  OUTLINED_FUNCTION_5(14);
  v88 = sub_267B34678();
  v72 = v49;
  OUTLINED_FUNCTION_5(15);
  v86 = sub_267B34678();
  v71 = v50;
  OUTLINED_FUNCTION_5(16);
  v85 = sub_267B34678();
  v70 = v51;
  OUTLINED_FUNCTION_5(17);
  v65 = sub_267B34678();
  v69 = v52;
  OUTLINED_FUNCTION_5(18);
  v64 = sub_267B34678();
  v68 = v53;
  OUTLINED_FUNCTION_5(19);
  v63 = sub_267B34678();
  v67 = v54;
  OUTLINED_FUNCTION_5(20);
  v61 = sub_267B34678();
  v62 = v55;
  OUTLINED_FUNCTION_5(21);
  v60 = sub_267B34678();
  v66 = v56;
  LOBYTE(v108[0]) = 22;
  sub_267B31E08();
  OUTLINED_FUNCTION_55();
  sub_267B34688();
  v59 = v109[0];
  sub_267B31EDC();
  OUTLINED_FUNCTION_55();
  sub_267B34668();
  v57 = OUTLINED_FUNCTION_11();
  v58(v57);
  v108[0] = v83;
  v108[1] = v32;
  v108[2] = v94;
  v108[3] = v105;
  v108[4] = v91;
  v108[5] = v82;
  v108[6] = v81;
  v108[7] = v80;
  v108[8] = v37;
  v108[9] = v99;
  v108[10] = v101;
  v108[11] = v78;
  v108[12] = v103;
  v108[13] = v79;
  v108[14] = v44;
  v108[15] = v77;
  v108[16] = v98;
  v108[17] = v76;
  v108[18] = v96;
  v108[19] = v75;
  v108[20] = v93;
  v108[21] = v74;
  v108[22] = v90;
  v108[23] = v73;
  v108[24] = v88;
  v108[25] = v72;
  v108[26] = v86;
  v108[27] = v71;
  v108[28] = v85;
  v108[29] = v70;
  v108[30] = v65;
  v108[31] = v69;
  v108[32] = v64;
  v108[33] = v68;
  v108[34] = v63;
  v108[35] = v67;
  v108[36] = v61;
  v108[37] = v62;
  v108[38] = v60;
  v108[39] = v66;
  LOBYTE(v108[40]) = v59;
  BYTE1(v108[40]) = a14;
  memcpy(v107, v108, 0x142uLL);
  sub_267B32194(v108, v109);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v109[0] = v83;
  v109[1] = v32;
  v109[2] = v94;
  v109[3] = v105;
  v109[4] = v91;
  v109[5] = v82;
  v109[6] = v81;
  v109[7] = v80;
  v109[8] = v37;
  v109[9] = v99;
  v109[10] = v101;
  v109[11] = v78;
  v109[12] = v103;
  v109[13] = v79;
  v109[14] = v44;
  v109[15] = v77;
  v109[16] = v98;
  v109[17] = v76;
  v109[18] = v96;
  v109[19] = v75;
  v109[20] = v93;
  v109[21] = v74;
  v109[22] = v90;
  v109[23] = v73;
  v109[24] = v88;
  v109[25] = v72;
  v109[26] = v86;
  v109[27] = v71;
  v109[28] = v85;
  v109[29] = v70;
  v109[30] = v65;
  v109[31] = v69;
  v109[32] = v64;
  v109[33] = v68;
  v109[34] = v63;
  v109[35] = v67;
  v109[36] = v61;
  v109[37] = v62;
  v109[38] = v60;
  v109[39] = v66;
  v110 = v59;
  v111 = a14;
  sub_267B321CC(v109);
LABEL_24:
  OUTLINED_FUNCTION_40();
}

unint64_t sub_267B31B10@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      result = sub_267B31C8C(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        MEMORY[0x26D601270](v5);
        __break(1u);
        JUMPOUT(0x267B31C7CLL);
      }

      result = 1;
      break;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      break;
  }

  *a1 = result & 1;
  return result;
}

char *sub_267B31C8C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_267B34558();
  v8 = result;
  if (result)
  {
    result = sub_267B34578();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_267B34568();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_267B31D44(uint64_t result, uint64_t a2)
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

uint64_t sub_267B31D8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_267B31E08()
{
  result = qword_280215050;
  if (!qword_280215050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215050);
  }

  return result;
}

unint64_t sub_267B31E74()
{
  result = qword_280215058;
  if (!qword_280215058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215058);
  }

  return result;
}

unint64_t sub_267B31EDC()
{
  result = qword_280215060;
  if (!qword_280215060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215060);
  }

  return result;
}

uint64_t sub_267B31F44(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280214F88, &qword_267B34AB8);
    a2();
    OUTLINED_FUNCTION_54();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B31FB8()
{
  result = qword_280215070;
  if (!qword_280215070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215070);
  }

  return result;
}

unint64_t sub_267B3204C()
{
  result = qword_280215080;
  if (!qword_280215080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215080);
  }

  return result;
}

unint64_t sub_267B320DC()
{
  result = qword_280215088;
  if (!qword_280215088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215088);
  }

  return result;
}

unint64_t sub_267B32140()
{
  result = qword_280215098;
  if (!qword_280215098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215098);
  }

  return result;
}

unint64_t sub_267B32200()
{
  result = qword_2802150A8;
  if (!qword_2802150A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150A8);
  }

  return result;
}

unint64_t sub_267B32258()
{
  result = qword_2802150B0;
  if (!qword_2802150B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150B0);
  }

  return result;
}

unint64_t sub_267B322B0()
{
  result = qword_2802150B8;
  if (!qword_2802150B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150B8);
  }

  return result;
}

unint64_t sub_267B32308()
{
  result = qword_2802150C0;
  if (!qword_2802150C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150C0);
  }

  return result;
}

uint64_t sub_267B32364(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 322))
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

uint64_t sub_267B323A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 322) = 1;
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

    *(result + 322) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_267B32454(uint64_t a1, int a2)
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

uint64_t sub_267B32494(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267B32510(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_267B32550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267B325C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_267B32654(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267B3271CLL);
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
          result = OUTLINED_FUNCTION_48(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267B32784(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x17 && *(a1 + 322))
    {
      v2 = *a1 + 22;
    }

    else
    {
      v2 = ((2 * *(a1 + 320)) & 0x10 | (*(a1 + 320) >> 4)) ^ 0x1F;
      if (v2 >= 0x16)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_267B327D0(char *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x16)
  {
    *(a1 + 39) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 - 23;
    if (a3 >= 0x17)
    {
      a1[322] = 1;
    }
  }

  else
  {
    if (a3 >= 0x17)
    {
      a1[322] = 0;
    }

    if (a2)
    {
      v4 = 8 * ((((-a2 >> 4) & 1) - 2 * a2) & 0x1F);
      bzero(a1, 0x140uLL);
      *(a1 + 160) = v4;
    }
  }
}

uint64_t getEnumTagSinglePayload for _SiriMailMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _SiriMailMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x267B32A18);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SiriMailMessage.StateChange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _SiriMailMessage.StateChange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x267B32BA4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267B32C74(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_49(a1);
}

_BYTE *sub_267B32CC0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x267B32D5CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SiriMailMessage.MailAttachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for _SiriMailMessage.MailAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267B32EE8);
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

uint64_t sub_267B32F20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_267B32FA8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267B33070);
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
          result = OUTLINED_FUNCTION_48(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B330AC()
{
  result = qword_2802150C8;
  if (!qword_2802150C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150C8);
  }

  return result;
}

unint64_t sub_267B33104()
{
  result = qword_2802150D0;
  if (!qword_2802150D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150D0);
  }

  return result;
}

unint64_t sub_267B3315C()
{
  result = qword_2802150D8;
  if (!qword_2802150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150D8);
  }

  return result;
}

unint64_t sub_267B331B4()
{
  result = qword_2802150E0;
  if (!qword_2802150E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150E0);
  }

  return result;
}

unint64_t sub_267B3320C()
{
  result = qword_2802150E8;
  if (!qword_2802150E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150E8);
  }

  return result;
}

unint64_t sub_267B33264()
{
  result = qword_2802150F0;
  if (!qword_2802150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150F0);
  }

  return result;
}

unint64_t sub_267B332BC()
{
  result = qword_2802150F8;
  if (!qword_2802150F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802150F8);
  }

  return result;
}

unint64_t sub_267B33314()
{
  result = qword_280215100;
  if (!qword_280215100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215100);
  }

  return result;
}

unint64_t sub_267B3336C()
{
  result = qword_280215108;
  if (!qword_280215108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215108);
  }

  return result;
}

unint64_t sub_267B333C4()
{
  result = qword_280215110;
  if (!qword_280215110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215110);
  }

  return result;
}

unint64_t sub_267B3341C()
{
  result = qword_280215118;
  if (!qword_280215118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215118);
  }

  return result;
}

unint64_t sub_267B33474()
{
  result = qword_280215120;
  if (!qword_280215120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215120);
  }

  return result;
}

unint64_t sub_267B334CC()
{
  result = qword_280215128;
  if (!qword_280215128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215128);
  }

  return result;
}

unint64_t sub_267B33524()
{
  result = qword_280215130;
  if (!qword_280215130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215130);
  }

  return result;
}

unint64_t sub_267B3357C()
{
  result = qword_280215138;
  if (!qword_280215138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215138);
  }

  return result;
}

unint64_t sub_267B335D4()
{
  result = qword_280215140;
  if (!qword_280215140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215140);
  }

  return result;
}

unint64_t sub_267B3362C()
{
  result = qword_280215148;
  if (!qword_280215148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215148);
  }

  return result;
}

unint64_t sub_267B33684()
{
  result = qword_280215150;
  if (!qword_280215150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215150);
  }

  return result;
}

unint64_t sub_267B336DC()
{
  result = qword_280215158;
  if (!qword_280215158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215158);
  }

  return result;
}

unint64_t sub_267B33734()
{
  result = qword_280215160;
  if (!qword_280215160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215160);
  }

  return result;
}

unint64_t sub_267B3378C()
{
  result = qword_280215168;
  if (!qword_280215168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215168);
  }

  return result;
}

unint64_t sub_267B337E4()
{
  result = qword_280215170;
  if (!qword_280215170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215170);
  }

  return result;
}

unint64_t sub_267B3383C()
{
  result = qword_280215178;
  if (!qword_280215178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215178);
  }

  return result;
}

unint64_t sub_267B33894()
{
  result = qword_280215180;
  if (!qword_280215180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215180);
  }

  return result;
}

unint64_t sub_267B338EC()
{
  result = qword_280215188;
  if (!qword_280215188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215188);
  }

  return result;
}

unint64_t sub_267B33944()
{
  result = qword_280215190;
  if (!qword_280215190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215190);
  }

  return result;
}

unint64_t sub_267B3399C()
{
  result = qword_280215198;
  if (!qword_280215198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215198);
  }

  return result;
}

unint64_t sub_267B339F4()
{
  result = qword_2802151A0;
  if (!qword_2802151A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151A0);
  }

  return result;
}

unint64_t sub_267B33A4C()
{
  result = qword_2802151A8;
  if (!qword_2802151A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151A8);
  }

  return result;
}

unint64_t sub_267B33AA4()
{
  result = qword_2802151B0;
  if (!qword_2802151B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151B0);
  }

  return result;
}

unint64_t sub_267B33AFC()
{
  result = qword_2802151B8;
  if (!qword_2802151B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151B8);
  }

  return result;
}

unint64_t sub_267B33B54()
{
  result = qword_2802151C0;
  if (!qword_2802151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151C0);
  }

  return result;
}

unint64_t sub_267B33BAC()
{
  result = qword_2802151C8;
  if (!qword_2802151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151C8);
  }

  return result;
}

unint64_t sub_267B33C04()
{
  result = qword_2802151D0;
  if (!qword_2802151D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151D0);
  }

  return result;
}

unint64_t sub_267B33C5C()
{
  result = qword_2802151D8;
  if (!qword_2802151D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151D8);
  }

  return result;
}

unint64_t sub_267B33CB4()
{
  result = qword_2802151E0;
  if (!qword_2802151E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151E0);
  }

  return result;
}

unint64_t sub_267B33D0C()
{
  result = qword_2802151E8;
  if (!qword_2802151E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151E8);
  }

  return result;
}

unint64_t sub_267B33D64()
{
  result = qword_2802151F0;
  if (!qword_2802151F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151F0);
  }

  return result;
}

unint64_t sub_267B33DBC()
{
  result = qword_2802151F8;
  if (!qword_2802151F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802151F8);
  }

  return result;
}

unint64_t sub_267B33E14()
{
  result = qword_280215200;
  if (!qword_280215200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215200);
  }

  return result;
}

unint64_t sub_267B33E6C()
{
  result = qword_280215208;
  if (!qword_280215208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215208);
  }

  return result;
}

unint64_t sub_267B33EC4()
{
  result = qword_280215210;
  if (!qword_280215210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215210);
  }

  return result;
}

unint64_t sub_267B33F18()
{
  result = qword_280215218;
  if (!qword_280215218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215218);
  }

  return result;
}

unint64_t sub_267B33F6C()
{
  result = qword_280215220;
  if (!qword_280215220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215220);
  }

  return result;
}

unint64_t sub_267B33FC0()
{
  result = qword_280215228;
  if (!qword_280215228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280215228);
  }

  return result;
}

void OUTLINED_FUNCTION_0()
{
  v0[58] = 0;
  v0[62] = 0;
  v0[64] = 0;
  v0[68] = 0;
  v0[72] = 0;
  v0[74] = 0;
  v0[78] = 0;
  v0[80] = 0;
  v0[82] = 0;
  v0[84] = 0;
}

void OUTLINED_FUNCTION_1()
{
  v0[64] = 0;
  v0[68] = 0;
  v0[72] = 0;
  v0[74] = 0;
  v0[78] = 0;
  v0[80] = 0;
  v0[82] = 0;
  v0[84] = 0;
}

void OUTLINED_FUNCTION_2()
{
  v0[58] = 1;
  v0[62] = 1;
  v0[64] = 1;
}

void OUTLINED_FUNCTION_4()
{
  v0[72] = 0;
  v0[74] = 0;
  v0[78] = 0;
  v0[80] = 0;
  v0[82] = 0;
  v0[84] = 0;
}

void OUTLINED_FUNCTION_8()
{
  v0[78] = 0;
  v0[80] = 0;
  v0[82] = 0;
  v0[84] = 0;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267B34638();
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267B346A8();
}

void OUTLINED_FUNCTION_16(int a1@<W8>)
{
  v1[68] = a1;
  v1[72] = a1;
  v1[74] = a1;
  v1[78] = a1;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_267B346D8();
}

void *OUTLINED_FUNCTION_19()
{

  return sub_267B34688();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267B346E8();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_267B346D8();
}

void *OUTLINED_FUNCTION_50(uint64_t a1, ...)
{

  return sub_267B34708();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, ...)
{

  return sub_267B345D8();
}