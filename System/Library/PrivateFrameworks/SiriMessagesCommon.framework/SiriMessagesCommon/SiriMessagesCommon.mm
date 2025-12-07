uint64_t CATSerializable.serializedBase64SpeakableString()(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))(a1);
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    sub_267B7DA8C();
    sub_267B3A524(v5, v6);
    sub_267B7DD8C();
  }

  return result;
}

uint64_t sub_267B39F58()
{
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B39FF4();
  v0 = sub_267B7D99C();

  return v0;
}

unint64_t sub_267B39FF4()
{
  result = qword_280218B40;
  if (!qword_280218B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B40);
  }

  return result;
}

uint64_t CarPlayHeader.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219030, &qword_267B81C50);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v9;
  v20 = *(v1 + 32);
  LODWORD(v9) = *(v1 + 40);
  v18 = *(v1 + 41);
  v19 = v9;
  v10 = *(v1 + 48);
  v17[1] = *(v1 + 56);
  v17[2] = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_267B3AA54();
  sub_267B7E27C();
  v29 = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E0FC();
  if (!v2)
  {
    v15 = v20;
    v28 = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    v23 = v15;
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219040, &qword_267B81C58);
    sub_267B3ADA0();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    v26 = 3;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v25 = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v24 = 5;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
  }

  return (*(v5 + 8))(v8, v14);
}

uint64_t static LabelsProvider.current.setter(const void *a1)
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6(&qword_280218550);
  }

  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, sizeof(__dst));
  memcpy(&qword_280218F10, a1, 0xF0uLL);
  return sub_267B3A348(__dst);
}

void *SABaseCommand.serializedData()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 dictionary];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v7[0] = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:v7];

  v4 = v7[0];
  if (v3)
  {
    v5 = sub_267B7DA9C();
  }

  else
  {
    v5 = v4;
    sub_267B7D9CC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_267B3A4A0(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DA9C();

  return v3;
}

uint64_t sub_267B3A510(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_267B3A524(result, a2);
  }

  return result;
}

uint64_t sub_267B3A524(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_267B3A57C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267B7DD4C();

  [a3 setTypeName_];
}

id SAIntentGroupProtobufMessage.init(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_267B3A4A0([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v5 = sub_267B7DA7C();
    sub_267B3A510(v6, v7);
  }

  [v2 setData_];

  v8 = [a1 typeName];
  v9 = sub_267B7DD5C();
  v11 = v10;

  sub_267B3A57C(v9, v11, v2);
  return v2;
}

unint64_t sub_267B3A6E0()
{
  result = qword_280219668;
  if (!qword_280219668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280219668);
  }

  return result;
}

id SAIntentGroupHandleIntent.init(intent:appIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267B7DACC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267B7DABC();
  v10 = sub_267B7DAAC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  sub_267B3A8D0(v10, v12, v9);
  if (a3)
  {
    v13 = sub_267B7DD4C();
  }

  else
  {
    v13 = 0;
  }

  [v9 setAppId_];

  sub_267B3A6E0();
  v14 = a1;
  v15 = SAIntentGroupProtobufMessage.init(intent:)(v14);
  [v9 setIntent_];

  return v9;
}

void sub_267B3A8D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267B7DD4C();

  [a3 setAceId_];
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{

  return sub_267B7E0FC();
}

uint64_t OUTLINED_FUNCTION_9_4()
{
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1)
{

  return sub_267B7E04C();
}

unint64_t sub_267B3AA54()
{
  result = qword_280219038;
  if (!qword_280219038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219038);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(unint64_t *a1)
{

  return sub_267B40BFC(a1, v1, v2, &protocol conformance descriptor for ModelCodable<A>);
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2)
{

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{

  return sub_267B7E12C();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, uint64_t a2)
{

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2)
{

  return sub_267B7DFFC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_267B3ACA4(char a1)
{
  result = 0x4E7972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267B3ADA0()
{
  result = qword_280219048;
  if (!qword_280219048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219040, &qword_267B81C58);
    sub_267B5C19C(&qword_280219050, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219048);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarPlayHeader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267B3AF14);
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

uint64_t getEnumTagSinglePayload for SentMessageSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t CustomCanvasModel<>.init(serializedData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_267B7D98C();
  OUTLINED_FUNCTION_1_3(v7);
  sub_267B7D97C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return sub_267B47B34(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_1_7()
{
}

uint64_t OUTLINED_FUNCTION_1_8()
{
  v3 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v3;
  v4 = *(v0 + 48);
  *(v1 - 272) = *(v1 - 192);
  *(v1 - 256) = v4;

  return sub_267B3B994(v1 - 304);
}

void OUTLINED_FUNCTION_1_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_1_13(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{

  return sub_267B7E16C();
}

uint64_t OUTLINED_FUNCTION_1_24@<X0>(char a1@<W8>)
{
  *(v1 - 232) = a1;

  return sub_267B7E05C();
}

uint64_t CarPlayHeader.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219060, &qword_267B81C68);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B3AA54();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v36[0]) = 0;
  OUTLINED_FUNCTION_0_12();
  v11 = sub_267B7E05C();
  v31 = v12;
  LOBYTE(v36[0]) = 1;
  OUTLINED_FUNCTION_0_12();
  v13 = sub_267B7E01C();
  v15 = v14;
  v29 = v11;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219040, &qword_267B81C58);
  LOBYTE(v32) = 2;
  sub_267B3B890();
  sub_267B7E08C();
  v28 = v36[0];
  LOBYTE(v36[0]) = 3;
  OUTLINED_FUNCTION_0_12();
  v41 = sub_267B7E06C();
  LOBYTE(v36[0]) = 4;
  OUTLINED_FUNCTION_0_12();
  HIDWORD(v27) = sub_267B7E06C();
  v42 = 5;
  v16 = sub_267B7E05C();
  v41 &= 1u;
  v17 = BYTE4(v27) & 1;
  v18 = v16;
  v19 = v10;
  v21 = v20;
  (*(v7 + 8))(v19, v5);
  v22 = v29;
  v23 = v31;
  *&v32 = v29;
  *(&v32 + 1) = v31;
  *&v33 = v30;
  *(&v33 + 1) = v15;
  *&v34 = v28;
  BYTE8(v34) = v41;
  BYTE9(v34) = v17;
  *&v35 = v18;
  *(&v35 + 1) = v21;
  v24 = v33;
  *a2 = v32;
  a2[1] = v24;
  v25 = v35;
  a2[2] = v34;
  a2[3] = v25;
  sub_267B3B938(&v32, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36[0] = v22;
  v36[1] = v23;
  v36[2] = v30;
  v36[3] = v15;
  v36[4] = v28;
  v37 = v41;
  v38 = v17;
  v39 = v18;
  v40 = v21;
  return sub_267B3B994(v36);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28213DD50](&a9);
}

id OUTLINED_FUNCTION_0_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return sub_267B7D98C();
}

unint64_t sub_267B3B890()
{
  result = qword_280219068;
  if (!qword_280219068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219040, &qword_267B81C58);
    sub_267B5C19C(&qword_280219070, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219068);
  }

  return result;
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

void *sub_267B3BC40@<X0>(uint64_t *a1@<X8>)
{
  result = AutoSendableCompactCarPlayButton.delayedActionCancelCommand.getter();
  *a1 = result;
  return result;
}

void *sub_267B3BC70@<X0>(uint64_t *a1@<X8>)
{
  result = AutoSendableCompactCarPlayButton.handleIntent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3BCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3BD34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

id sub_267B3BE00()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.intent.getter();
  *v0 = result;
  return result;
}

void *sub_267B3BE2C()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.intentResponse.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B3BE58()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.contactName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_267B3BE84()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.shouldConfirmUnsend.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_267B3BF28(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_267B3C060(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_267B3C228@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_267B43E3C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_267B3C38C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B46700();
  *a1 = result;
  return result;
}

void *sub_267B3C4C4@<X0>(uint64_t *a1@<X8>)
{
  result = AutoSendableCarPlayButton.delayedActionCancelCommand.getter();
  *a1 = result;
  return result;
}

void *sub_267B3C4F4@<X0>(uint64_t *a1@<X8>)
{
  result = AutoSendableCarPlayButton.handleIntent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3C5B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_267B3C834(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_267B3C918(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_267B3C95C@<X0>(_BYTE *a1@<X8>)
{
  result = INSendMessageIntent.shouldHideSiriAttribution.getter();
  *a1 = result & 1;
  return result;
}

void *sub_267B3CB74@<X0>(uint64_t *a1@<X8>)
{
  result = MessageDraftSnippetModel.intent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3CBA4@<X0>(uint64_t *a1@<X8>)
{
  result = MessageDraftSnippetModel.contactName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267B3CBD4@<X0>(uint64_t *a1@<X8>)
{
  result = MessageDraftSnippetModel.payload.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267B3CC54(uint64_t a1, uint64_t a2, int *a3)
{
  sub_267B7DACC();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v15 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
      v15 = a3[14];
    }

    v9 = a1 + v15;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5]);
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

void sub_267B3CD84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_267B7DACC();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[5]) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
      v14 = a4[14];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_267B3CFF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3D080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267B3D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_10();
  v6 = sub_267B7DA6C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_267B3D240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267B7DA6C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267B3D45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonSnippetModel.Action(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_267B3D50C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonSnippetModel.Action(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

id sub_267B3D638@<X0>(uint64_t *a1@<X8>)
{
  result = UpdateMessageDraftSnippet.intent.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D7B8@<X0>(uint64_t *a1@<X8>)
{
  result = RecipientLabel.launchAppWithIntent.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D7E8@<X0>(uint64_t *a1@<X8>)
{
  result = RecipientLabel.unlockDevice.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D864@<X0>(uint64_t *a1@<X8>)
{
  result = AutoSendableBinaryButton.delayedActionCancelCommand.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D894@<X0>(uint64_t *a1@<X8>)
{
  result = AutoSendableBinaryButton.handleIntent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3D8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3D958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267B3DAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B3DA88(a1, a2);
  *a3 = result & 1;
  return result;
}

void *sub_267B3DAFC()
{
  type metadata accessor for AppInfoProvider();
  swift_allocObject();
  result = sub_267B3DB94();
  qword_280218538 = result;
  return result;
}

uint64_t static AppInfoProvider.instance.getter()
{
  if (qword_280218530 != -1)
  {
    swift_once();
  }
}

void *sub_267B3DB94()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  v2 = [objc_opt_self() sharedPreferences];
  v0[3] = sub_267B3E7D4(v2);
  v0[4] = v3;

  return v0;
}

uint64_t sub_267B3DC00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_267B7DB5C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedPreferences];
  v8 = sub_267B3E7D4(v7);
  v10 = v9;
  v11 = *(v2 + 32);
  if (v11)
  {
    if (v10)
    {
      v12 = *(v2 + 24) == v8 && v11 == v10;
      if (v12 || (sub_267B7E16C() & 1) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!v10)
  {
    goto LABEL_15;
  }

  if (qword_280218548 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280218548);
  }

  v13 = sub_267B7DCFC();
  __swift_project_value_buffer(v13, qword_2802286D0);
  v14 = sub_267B7DCDC();
  v15 = sub_267B7DE9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267B38000, v14, v15, "#AppInfoProvider Siri language is changed, clearing app name cache", v16, 2u);
    MEMORY[0x26D602240](v16, -1, -1);
  }

  [*(v3 + 16) removeAllObjects];
  *(v3 + 24) = v8;
  *(v3 + 32) = v10;

LABEL_15:
  v17 = *(v3 + 16);
  OUTLINED_FUNCTION_1_0();
  v18 = sub_267B7DD4C();
  v19 = [v17 objectForKey_];

  if (v19)
  {

    v20 = sub_267B7DD5C();
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v22 = OUTLINED_FUNCTION_1_0();
    v24 = sub_267B3E188(v22, v23, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218580, &qword_267B7E998);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_267B7E980;
    if (!v10)
    {
      sub_267B7DB1C();
      v8 = sub_267B7DAEC();
      v10 = v26;
      (*(v32 + 8))(v6, v4);
    }

    *(v25 + 32) = v8;
    *(v25 + 40) = v10;
    v27 = sub_267B7DE0C();

    v28 = [v24 localizedNameWithPreferredLocalizations_];

    v29 = v28;
    if (!v28)
    {
      sub_267B7DD5C();
      v29 = sub_267B7DD4C();
    }

    v20 = sub_267B7DD5C();
    OUTLINED_FUNCTION_1_0();
    v30 = sub_267B7DD4C();
    [v17 setObject:v29 forKey:v30];
  }

  return v20;
}

uint64_t AppInfoProvider.__deallocating_deinit()
{
  AppInfoProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_267B3E188(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_267B7DD4C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_267B7D9CC();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_267B3E264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_267B3E328(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_267B3E924(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_267B3E328(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_267B3E428(a5, a6);
    *a1 = v9;
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
    result = sub_267B7DFCC();
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

uint64_t sub_267B3E428(uint64_t a1, unint64_t a2)
{
  v3 = sub_267B3E474(a1, a2);
  sub_267B3E58C(&unk_2878BF258);
  return v3;
}

uint64_t sub_267B3E474(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_267B7DDBC())
  {
    result = sub_267B3E670(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_267B7DF7C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_267B7DFCC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267B3E58C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_267B3E6E0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_267B3E670(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218588, &qword_267B7E9F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_267B3E6E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218588, &qword_267B7E9F8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_267B3E7D4(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_267B3E924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

SiriMessagesCommon::DirectButton_optional __swiftcall DirectButton.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7E1BC();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t DirectButton.rawValue.getter()
{
  result = 0x7065526F69647541;
  switch(*v0)
  {
    case 1:
      result = 1819042115;
      break;
    case 2:
      result = 0x6D7269666E6F43;
      break;
    case 3:
      result = 0x656E696C636544;
      break;
    case 4:
      result = 0x6C65636E6143;
      break;
    case 5:
      result = 0x7373654D64616552;
      break;
    case 6:
      result = 0x796669646F4DLL;
      break;
    case 7:
      result = 0x617373654D77654ELL;
      break;
    case 8:
      result = 0x6961674164616552;
      break;
    case 9:
      result = 0x796C706552;
      break;
    case 0xA:
      result = 1885956947;
      break;
    case 0xB:
      result = 1886352467;
      break;
    case 0xC:
      result = 0x6B636162706154;
      break;
    case 0xD:
      result = 0x486B636162706154;
      break;
    case 0xE:
      result = 0x546B636162706154;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0x486B636162706154;
      break;
    case 0x11:
      OUTLINED_FUNCTION_0_0();
      result = v2 + 1;
      break;
    case 0x12:
      OUTLINED_FUNCTION_0_0();
      result = v5 | 2;
      break;
    case 0x13:
      OUTLINED_FUNCTION_0_0();
      result = v6 + 3;
      break;
    case 0x14:
      OUTLINED_FUNCTION_0_0();
      result = v3 | 6;
      break;
    case 0x15:
      OUTLINED_FUNCTION_0_0();
      result = v4 | 8;
      break;
    case 0x16:
      result = 0xD000000000000011;
      break;
    case 0x17:
      OUTLINED_FUNCTION_0_0();
      result = v7 + 9;
      break;
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0x19:
      result = 0x7972616D697270;
      break;
    case 0x1A:
      result = 0x7261646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B3EE48@<X0>(uint64_t *a1@<X8>)
{
  result = DirectButton.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriMessagesCommon::DirectInvocationURI_optional __swiftcall DirectInvocationURI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7E1BC();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t DirectInvocationURI.rawValue.getter()
{
  result = 0xD000000000000038;
  switch(*v0)
  {
    case 1:
    case 0xB:
      result = 0xD000000000000034;
      break;
    case 2:
      result = 0xD000000000000036;
      break;
    case 3:
    case 0xF:
    case 0x13:
      result = 0xD00000000000003ALL;
      break;
    case 4:
    case 5:
    case 0xA:
      result = 0xD00000000000003DLL;
      break;
    case 6:
      result = 0xD000000000000033;
      break;
    case 7:
    case 8:
    case 0xE:
      result = 0xD00000000000003CLL;
      break;
    case 9:
    case 0x12:
      result = 0xD000000000000041;
      break;
    case 0xC:
      result = 0xD00000000000003BLL;
      break;
    case 0xD:
      result = 0xD000000000000030;
      break;
    case 0x10:
      result = 0xD00000000000004ALL;
      break;
    case 0x11:
      result = 0xD000000000000044;
      break;
    case 0x14:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267B3F1E4()
{
  result = qword_280218590;
  if (!qword_280218590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218590);
  }

  return result;
}

unint64_t sub_267B3F248()
{
  result = qword_280218598;
  if (!qword_280218598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218598);
  }

  return result;
}

unint64_t sub_267B3F2C0@<X0>(unint64_t *a1@<X8>)
{
  result = DirectInvocationURI.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectButton(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DirectButton(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectInvocationURI(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationURI(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B3F5A4()
{
  result = qword_2802185A0;
  if (!qword_2802185A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802185A0);
  }

  return result;
}

uint64_t AutoSendableCompactCarPlayButton.init(shouldAutoSend:autoSendTimeout:delayedActionCancelCommand:handleIntent:speechSynthesisId:isFirstPartyApp:responseMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_280218F18;
  *(a8 + 48) = qword_280218F10;
  *(a8 + 56) = v18;
  v19 = *(type metadata accessor for AutoSendableCompactCarPlayButton(0) + 44);
  v20 = sub_267B7DC1C();
  __swift_storeEnumTagSinglePayload(a8 + v19, 1, 1, v20);
  *a8 = a1 & 1;
  *(a8 + 8) = a9;
  v21 = *(a8 + 16);

  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 64) = a6 & 1;
  return sub_267B40A18(a7, a8 + v19);
}

void *AutoSendableCompactCarPlayButton.delayedActionCancelCommand.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_267B3F804(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCompactCarPlayButton.delayedActionCancelCommand.setter(v1);
}

void (*AutoSendableCompactCarPlayButton.delayedActionCancelCommand.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

void sub_267B3F880(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 16);
  if (a2)
  {
    v5 = v3;

    *(v2 + 16) = v3;
  }

  else
  {

    *(v2 + 16) = v3;
  }
}

void *AutoSendableCompactCarPlayButton.handleIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B3F920(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCompactCarPlayButton.handleIntent.setter(v1);
}

void (*AutoSendableCompactCarPlayButton.handleIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

void sub_267B3F99C(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = v3;

    *(v2 + 24) = v3;
  }

  else
  {

    *(v2 + 24) = v3;
  }
}

uint64_t AutoSendableCompactCarPlayButton.speechSynthesisId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AutoSendableCompactCarPlayButton.speechSynthesisId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AutoSendableCompactCarPlayButton.sendLabelText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AutoSendableCompactCarPlayButton.sendLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AutoSendableCompactCarPlayButton.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCompactCarPlayButton(0) + 44);

  return sub_267B40A88(v3, a1);
}

uint64_t AutoSendableCompactCarPlayButton.responseMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCompactCarPlayButton(0) + 44);

  return sub_267B40A18(a1, v3);
}

uint64_t sub_267B3FC24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7541646C756F6873 && a2 == 0xEE00646E65536F74;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E65536F747561 && a2 == 0xEF74756F656D6954;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000267B86D40 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E49656C646E6168 && a2 == 0xEC000000746E6574;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B86D60 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C646E6573 && a2 == 0xED0000747865546CLL;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5074737269467369 && a2 == 0xEF70704179747261;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_267B7E16C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267B3FED8(unsigned __int8 a1)
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](a1);
  return sub_267B7E23C();
}

unint64_t sub_267B3FF2C(char a1)
{
  result = 0x7541646C756F6873;
  switch(a1)
  {
    case 1:
      result = 0x646E65536F747561;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x6E49656C646E6168;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6562614C646E6573;
      break;
    case 6:
      result = 0x5074737269467369;
      break;
    case 7:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B40064(uint64_t a1)
{
  v2 = *v1;
  sub_267B7E21C();
  MEMORY[0x26D601BE0](v2);
  return sub_267B7E23C();
}

uint64_t sub_267B400B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B3FC24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B400F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B3FED0();
  *a1 = result;
  return result;
}

uint64_t sub_267B40120(uint64_t a1)
{
  v2 = sub_267B40AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4015C(uint64_t a1)
{
  v2 = sub_267B40AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendableCompactCarPlayButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185B0, &qword_267B7ECC8);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B40AF8();
  sub_267B7E27C();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E11C();
    v17 = *(v3 + 16);
    HIBYTE(v16) = 2;
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    OUTLINED_FUNCTION_5_0(&qword_2802185C8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v17 = *(v3 + 24);
    HIBYTE(v16) = 3;
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    OUTLINED_FUNCTION_5_0(&qword_2802185D8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    LOBYTE(v17) = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    LOBYTE(v17) = 5;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    LOBYTE(v17) = 6;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    type metadata accessor for AutoSendableCompactCarPlayButton(0);
    LOBYTE(v17) = 7;
    sub_267B7DC1C();
    OUTLINED_FUNCTION_4_0();
    sub_267B40DEC(v13, v14, MEMORY[0x277D61CD0]);
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t AutoSendableCompactCarPlayButton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185E8, &qword_267B7ECE0);
  OUTLINED_FUNCTION_8();
  v33 = v7;
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for AutoSendableCompactCarPlayButton(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 2) = 0;
  v11 = (v10 + 16);
  *(v10 + 3) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_280218F18;
  v13 = *(v8 + 44);
  v14 = sub_267B7DC1C();
  v37 = v13;
  __swift_storeEnumTagSinglePayload(&v10[v13], 1, 1, v14);
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_267B40AF8();
  v36 = v12;

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v35);

    v19 = *(v10 + 3);

    return sub_267B40B94(&v10[v37]);
  }

  else
  {
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_7();
    *v10 = sub_267B7E06C() & 1;
    OUTLINED_FUNCTION_0_1(1);
    sub_267B7E07C();
    *(v10 + 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    v38 = 2;
    OUTLINED_FUNCTION_2_0(&qword_2802185F0);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v17 = v39;

    *v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    v38 = 3;
    OUTLINED_FUNCTION_2_0(&qword_2802185F8);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v18 = v39;

    *(v10 + 3) = v18;
    OUTLINED_FUNCTION_0_1(4);
    *(v10 + 4) = sub_267B7E01C();
    *(v10 + 5) = v20;
    OUTLINED_FUNCTION_0_1(5);
    v21 = sub_267B7E05C();
    v23 = v22;

    *(v10 + 6) = v21;
    *(v10 + 7) = v23;
    OUTLINED_FUNCTION_0_1(6);
    v10[64] = sub_267B7E06C() & 1;
    LOBYTE(v39) = 7;
    OUTLINED_FUNCTION_4_0();
    sub_267B40DEC(v24, v25, MEMORY[0x277D61CE0]);
    v26 = v32;
    OUTLINED_FUNCTION_7();
    sub_267B7E04C();
    v27 = OUTLINED_FUNCTION_1_1();
    v28(v27);
    sub_267B40A18(v26, &v10[v37]);
    sub_267B40C44(v10, v31);
    __swift_destroy_boxed_opaque_existential_0(v35);
    return sub_267B40CA8(v10);
  }
}

uint64_t type metadata accessor for AutoSendableCompactCarPlayButton(uint64_t a1)
{
  result = qword_280218620;
  if (!qword_280218620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B40A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B40A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B40AF8()
{
  result = qword_2802185B8;
  if (!qword_2802185B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802185B8);
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

uint64_t sub_267B40B94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B40BFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_267B40C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableCompactCarPlayButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B40CA8(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendableCompactCarPlayButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B40D04(uint64_t a1)
{
  result = sub_267B40DEC(&qword_280218608, type metadata accessor for AutoSendableCompactCarPlayButton, &protocol conformance descriptor for AutoSendableCompactCarPlayButton);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267B40DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267B40E84(uint64_t a1)
{
  sub_267B40F90(319, &qword_280218630, &qword_280218638, 0x277D47A48);
  if (v1 <= 0x3F)
  {
    sub_267B40F90(319, &qword_280218640, &qword_280218648, 0x277D473D0);
    if (v2 <= 0x3F)
    {
      sub_267B41030();
      if (v3 <= 0x3F)
      {
        sub_267B41080(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267B40F90(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_267B40FF0(255, a3, a4);
    v8 = type metadata accessor for ModelCodable(a1, v6, &protocol witness table for AceObject, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_267B40FF0(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_267B41030()
{
  if (!qword_280218650)
  {
    v0 = sub_267B7DEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280218650);
    }
  }
}

void sub_267B41080(uint64_t a1)
{
  if (!qword_280218658)
  {
    sub_267B7DC1C();
    v1 = sub_267B7DEFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280218658);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutoSendableCompactCarPlayButton.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoSendableCompactCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B41240()
{
  result = qword_280218660;
  if (!qword_280218660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218660);
  }

  return result;
}

unint64_t sub_267B41298()
{
  result = qword_280218668;
  if (!qword_280218668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218668);
  }

  return result;
}

unint64_t sub_267B412F0()
{
  result = qword_280218670;
  if (!qword_280218670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218670);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(unint64_t *a1)
{

  return sub_267B40BFC(a1, v1, v2, &protocol conformance descriptor for ModelCodable<A>);
}

id SentMessageSnippetModel.intent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_267B413C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SentMessageSnippetModel.intent.setter(v1);
}

void (*SentMessageSnippetModel.intent.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_267B41468;
}

void sub_267B41468(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v2;
  if (a2)
  {
    v5 = v3;

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void *SentMessageSnippetModel.intentResponse.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void sub_267B4153C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SentMessageSnippetModel.intentResponse.setter(v1);
}

void (*SentMessageSnippetModel.intentResponse.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B415E4;
}

void sub_267B415E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 8);
  if (a2)
  {
    v5 = v3;

    *(v2 + 8) = v3;
  }

  else
  {

    *(v2 + 8) = v3;
  }
}

uint64_t SentMessageSnippetModel.contactName.getter()
{
  type metadata accessor for SentMessageSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  return v1;
}

uint64_t type metadata accessor for SentMessageSnippetModel(uint64_t a1)
{
  result = qword_280218740;
  if (!qword_280218740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B416FC(uint64_t *a1)
{
  v1 = *a1;

  return SentMessageSnippetModel.contactName.setter(v1);
}

uint64_t SentMessageSnippetModel.contactName.setter(uint64_t a1)
{
  type metadata accessor for SentMessageSnippetModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  OUTLINED_FUNCTION_18(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_267B7DBCC();
}

uint64_t (*SentMessageSnippetModel.contactName.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_14_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  *(v0 + 32) = OUTLINED_FUNCTION_15(v2);
  return sub_267B41800;
}

uint64_t SentMessageSnippetModel.shouldConfirmUnsend.getter()
{
  type metadata accessor for SentMessageSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  sub_267B7DBBC();
  return v1;
}

uint64_t SentMessageSnippetModel.shouldConfirmUnsend.setter(char a1)
{
  type metadata accessor for SentMessageSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  return sub_267B7DBCC();
}

uint64_t (*SentMessageSnippetModel.shouldConfirmUnsend.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_14_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  *(v0 + 32) = OUTLINED_FUNCTION_15(v2);
  return sub_267B43594;
}

void *SentMessageSnippetModel.labels.getter()
{
  type metadata accessor for SentMessageSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  return sub_267B7DBBC();
}

uint64_t sub_267B41974(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_267B42CAC(__dst, &v10);
  return SentMessageSnippetModel.labels.setter(__src, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t SentMessageSnippetModel.labels.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_18(a1, a2, a3, a4, a5, a6, a7, a8, v19);
  memcpy(v8, v9, 0xF0uLL);
  type metadata accessor for SentMessageSnippetModel(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  OUTLINED_FUNCTION_18(v10, v11, v12, v13, v14, v15, v16, v17, v20);
  return sub_267B7DBCC();
}

uint64_t (*SentMessageSnippetModel.labels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_14_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  *(v0 + 32) = OUTLINED_FUNCTION_15(v2);
  return sub_267B43594;
}

void sub_267B41AA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t SentMessageSnippetModel.photoSharingInfo.getter()
{
  type metadata accessor for SentMessageSnippetModel(0);
}

uint64_t SentMessageSnippetModel.photoSharingInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SentMessageSnippetModel(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

void SentMessageSnippetModel.init(intent:intentResponse:contactName:shouldConfirmUnsend:photoSharingInfo:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X5>, void **a7@<X8>)
{
  v12 = type metadata accessor for SentMessageSnippetModel(0);
  *a7 = 0;
  a7[1] = 0;
  __dst[0] = 0;
  sub_267B7DB9C();
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, 0xF0uLL);
  memcpy(v21, &qword_280218F10, sizeof(v21));
  sub_267B42CAC(__dst, v20);
  sub_267B7DB9C();
  v13 = *(v12 + 36);
  *(a7 + v13) = 0;
  v14 = *a7;
  v15 = a1;

  *a7 = a1;
  v16 = a7[1];
  v17 = a2;

  a7[1] = a2;
  v21[0] = a3;
  v21[1] = a4;
  sub_267B7DB9C();
  LOBYTE(v21[0]) = a5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  sub_267B7DBCC();

  *(a7 + v13) = a6;
}

uint64_t SentMessageSnippetModel.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000026, 0x8000000267B86D80);
  v1 = type metadata accessor for SentMessageSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  MEMORY[0x26D601760]();

  MEMORY[0x26D601760](0xD000000000000018, 0x8000000267B86DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  sub_267B7DBBC();
  if (v14)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v14)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v2, v3);

  MEMORY[0x26D601760](0xD000000000000014, 0x8000000267B86DD0);
  v15 = *(v0 + *(v1 + 36));

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218690, &qword_267B7EF18);
  OUTLINED_FUNCTION_18(v4, v5, v6, v7, v8, v9, v10, v11, v15);
  v12 = sub_267B7DD7C();
  MEMORY[0x26D601760](v12);

  return 0;
}

uint64_t sub_267B41EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746E65746E69 && a2 == 0xEE0065736E6F7073;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000267B86DF0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_267B7E16C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_267B420EC(char a1)
{
  result = 0x746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x6552746E65746E69;
      break;
    case 2:
      result = 0x4E746361746E6F63;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x736C6562616CLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B421BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B41EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B421E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B420E4();
  *a1 = result;
  return result;
}

uint64_t sub_267B4220C(uint64_t a1)
{
  v2 = sub_267B42D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B42248(uint64_t a1)
{
  v2 = sub_267B42D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SentMessageSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218698, &qword_267B7EF20);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B42D08();
  sub_267B7E27C();
  v20 = *v3;
  HIBYTE(v19) = 0;
  v11 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
  OUTLINED_FUNCTION_7_0(&unk_2802186B0);
  OUTLINED_FUNCTION_8_0();
  sub_267B7E12C();
  if (v2)
  {
  }

  else
  {

    v20 = *(v3 + 8);
    HIBYTE(v19) = 1;
    v12 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186B8, &qword_267B7EF30);
    OUTLINED_FUNCTION_7_0(&unk_2802186C0);
    OUTLINED_FUNCTION_8_0();
    sub_267B7E12C();

    v14 = type metadata accessor for SentMessageSnippetModel(0);
    LOBYTE(v20) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_0_2();
    sub_267B42EB4(v15);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    LOBYTE(v20) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
    OUTLINED_FUNCTION_0_2();
    sub_267B42D5C(v16);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    LOBYTE(v20) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
    OUTLINED_FUNCTION_0_2();
    sub_267B42F20(v17);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    v20 = *(v3 + *(v14 + 36));
    HIBYTE(v19) = 5;
    type metadata accessor for PhotoSharingInfo();
    OUTLINED_FUNCTION_5_1();
    sub_267B430E4(v18);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E0EC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t SentMessageSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  OUTLINED_FUNCTION_8();
  v47 = v5;
  v48 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v41 = &v39 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  OUTLINED_FUNCTION_8();
  v51 = v9;
  v52 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  OUTLINED_FUNCTION_8();
  v45 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v43 = &v39 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186F8, &qword_267B7EF38);
  OUTLINED_FUNCTION_8();
  v44 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v17 = type metadata accessor for SentMessageSnippetModel(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = 0;
  v20[1] = 0;
  v21 = *(v18 + 28);
  LOBYTE(v54[0]) = 0;
  v50 = v21;
  sub_267B7DB9C();
  v22 = v17[8];
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  memcpy(v55, &qword_280218F10, 0xF0uLL);
  memcpy(v54, &qword_280218F10, sizeof(v54));
  sub_267B42CAC(v55, v53);
  v49 = v22;
  sub_267B7DB9C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B42D08();
  sub_267B7E25C();
  if (v2)
  {
    v27 = v47;
    v26 = v48;
    __swift_destroy_boxed_opaque_existential_0(a1);

    (*(v51 + 8))(v20 + v50, v52);
    return (*(v27 + 8))(v20 + v49, v26);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    v53[0] = 0;
    OUTLINED_FUNCTION_4_1();
    sub_267B42E70(v23);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    v24 = v54[0];

    *v20 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186B8, &qword_267B7EF30);
    v53[0] = 1;
    OUTLINED_FUNCTION_4_1();
    sub_267B42E70(v25);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    v28 = v54[0];

    v20[1] = v28;
    LOBYTE(v54[0]) = 2;
    OUTLINED_FUNCTION_1();
    sub_267B42EB4(v29);
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    v31 = v47;
    v30 = v48;
    (*(v45 + 32))(v20 + v17[6], v43, v56);
    LOBYTE(v54[0]) = 3;
    OUTLINED_FUNCTION_1();
    sub_267B42D5C(v32);
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    (*(v51 + 40))(v20 + v50, v42, v52);
    LOBYTE(v54[0]) = 4;
    OUTLINED_FUNCTION_1();
    sub_267B42F20(v33);
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    (*(v31 + 40))(v20 + v49, v41, v30);
    type metadata accessor for PhotoSharingInfo();
    v53[0] = 5;
    OUTLINED_FUNCTION_5_1();
    sub_267B430E4(v34);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    sub_267B7E04C();
    v35 = v17[9];
    v36 = OUTLINED_FUNCTION_9();
    v37(v36, v46);
    *(v20 + v35) = v54[0];
    sub_267B42F94(v20, v40);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_267B42FF8(v20);
  }
}

unint64_t sub_267B42D08()
{
  result = qword_2802186A0;
  if (!qword_2802186A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802186A0);
  }

  return result;
}

unint64_t sub_267B42D5C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218680, &qword_267B7EF08);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B42DC8()
{
  result = qword_2802186E0;
  if (!qword_2802186E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802186E0);
  }

  return result;
}

unint64_t sub_267B42E1C()
{
  result = qword_2802186E8;
  if (!qword_2802186E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802186E8);
  }

  return result;
}

unint64_t sub_267B42E70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B42EB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218678, &qword_267B7EF00);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B42F20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218688, &qword_267B7EF10);
    sub_267B42DC8();
    sub_267B42E1C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_267B42F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SentMessageSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B42FF8(uint64_t a1)
{
  v2 = type metadata accessor for SentMessageSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267B430E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_267B43150(uint64_t a1)
{
  sub_267B432A4(319, &qword_280218750, &qword_280218758, 0x277CD4078, &protocol witness table for INIntent);
  if (v1 <= 0x3F)
  {
    sub_267B432A4(319, &qword_280218760, &qword_280218768, 0x277CD4080, &protocol witness table for INIntentResponse);
    if (v2 <= 0x3F)
    {
      sub_267B4330C(319, &qword_280218770, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_267B4330C(319, &qword_280218778, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_267B4330C(319, &qword_280218780, &type metadata for SnippetLabels);
          if (v5 <= 0x3F)
          {
            sub_267B43358(319);
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

void sub_267B432A4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t a5)
{
  if (!*a2)
  {
    v8 = sub_267B40FF0(255, a3, a4);
    v10 = type metadata accessor for ModelCodable(a1, v8, a5, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_267B4330C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_267B7DBDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_267B43358(uint64_t a1)
{
  if (!qword_280218788)
  {
    type metadata accessor for PhotoSharingInfo();
    v1 = sub_267B7DEFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280218788);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SentMessageSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B43490()
{
  result = qword_280218790;
  if (!qword_280218790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218790);
  }

  return result;
}

unint64_t sub_267B434E8()
{
  result = qword_280218798;
  if (!qword_280218798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218798);
  }

  return result;
}

unint64_t sub_267B43540()
{
  result = qword_2802187A0;
  if (!qword_2802187A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187A0);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return sub_267B42E70(a1);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SentMessageSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{

  return sub_267B7DBAC();
}

uint64_t AttachmentModel.messageAttachment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  switch(v4 >> 62)
  {
    case 1uLL:
      *(a1 + 24) = &type metadata for MapAttachment;
      v6 = sub_267B43888();
      goto LABEL_6;
    case 2uLL:
      *(a1 + 24) = &type metadata for PhotoAttachment;
      v7 = sub_267B43834();
      OUTLINED_FUNCTION_12_0(v7);
      *(a1 + 16) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    case 3uLL:
      *(a1 + 24) = &type metadata for VideoAttachment;
      v6 = sub_267B43774();
      goto LABEL_6;
    default:
      *(a1 + 24) = &type metadata for LinkAttachment;
      v6 = sub_267B438DC();
LABEL_6:
      OUTLINED_FUNCTION_12_0(v6);
LABEL_7:

      return sub_267B437C8(v2, v3, v4);
  }
}

unint64_t sub_267B43774()
{
  result = qword_2802187A8;
  if (!qword_2802187A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187A8);
  }

  return result;
}

uint64_t sub_267B437C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      goto LABEL_6;
    case 3uLL:
LABEL_6:

      break;
    default:

      break;
  }

  return result;
}

unint64_t sub_267B43834()
{
  result = qword_2802187B0;
  if (!qword_2802187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187B0);
  }

  return result;
}

unint64_t sub_267B43888()
{
  result = qword_2802187B8;
  if (!qword_2802187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187B8);
  }

  return result;
}

unint64_t sub_267B438DC()
{
  result = qword_2802187C0;
  if (!qword_2802187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187C0);
  }

  return result;
}

uint64_t AttachmentModel.init(messageAttachment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  sub_267B43BA8(a1, v38);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187C8, &qword_267B7F140);
  v9 = OUTLINED_FUNCTION_5_2(v4, v5, v6, &type metadata for LinkAttachment, v7, v8);
  if (v9)
  {
    OUTLINED_FUNCTION_11_0();
    result = __swift_destroy_boxed_opaque_existential_0(v38);
    v15 = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_2(v9, v10, v11, &type metadata for MapAttachment, v12, v13);
    if (v16)
    {
      OUTLINED_FUNCTION_11_0();
      result = __swift_destroy_boxed_opaque_existential_0(v38);
      v15 = 0x4000000000000000;
    }

    else
    {
      v21 = OUTLINED_FUNCTION_5_2(v16, v17, v18, &type metadata for PhotoAttachment, v19, v20);
      if (v21)
      {
        OUTLINED_FUNCTION_11_0();
        v15 = v37[2] | 0x8000000000000000;
        result = __swift_destroy_boxed_opaque_existential_0(v38);
      }

      else if (OUTLINED_FUNCTION_5_2(v21, v22, v23, &type metadata for VideoAttachment, v24, v25))
      {
        OUTLINED_FUNCTION_11_0();
        result = __swift_destroy_boxed_opaque_existential_0(v38);
        v15 = 0xC000000000000000;
      }

      else
      {
        if (qword_280218548 != -1)
        {
          swift_once();
        }

        v26 = sub_267B7DCFC();
        __swift_project_value_buffer(v26, qword_2802286D0);
        sub_267B43BA8(v2, v37);
        v27 = sub_267B7DCDC();
        v28 = sub_267B7DEAC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v36 = v30;
          *v29 = 136315138;
          __swift_project_boxed_opaque_existential_1(v37, v37[3]);
          swift_getDynamicType();
          v31 = sub_267B7E2AC();
          v33 = v32;
          __swift_destroy_boxed_opaque_existential_0(v37);
          v34 = sub_267B3E264(v31, v33, &v36);

          *(v29 + 4) = v34;
          _os_log_impl(&dword_267B38000, v27, v28, "#AttachmentModel unknown message attachment type: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          MEMORY[0x26D602240](v30, -1, -1);
          MEMORY[0x26D602240](v29, -1, -1);

          v35 = v2;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v2);
          v35 = v37;
        }

        __swift_destroy_boxed_opaque_existential_0(v35);
        result = __swift_destroy_boxed_opaque_existential_0(v38);
        v4 = 0;
        v15 = 0;
        v2 = 0x1FFFFFFFELL;
      }
    }
  }

  *a2 = v4;
  a2[1] = v2;
  a2[2] = v15;
  return result;
}

uint64_t sub_267B43BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_267B43C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617474416B6E696CLL && a2 == 0xEE00746E656D6863;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636174744170616DLL && a2 == 0xED0000746E656D68;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7474416F746F6870 && a2 == 0xEF746E656D686361;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7474416F65646976 && a2 == 0xEF746E656D686361)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B7E16C();

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

uint64_t sub_267B43D8C(char a1)
{
  result = 0x617474416B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x636174744170616DLL;
      break;
    case 2:
      v3 = 1953458288;
      goto LABEL_5;
    case 3:
      v3 = 1701079414;
LABEL_5:
      result = v3 | 0x7474416F00000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B43E3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B43EAC()
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](0);
  return sub_267B7E23C();
}

uint64_t sub_267B43EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B43C0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B43F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B43D84();
  *a1 = result;
  return result;
}

uint64_t sub_267B43F48(uint64_t a1)
{
  v2 = sub_267B44E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B43F84(uint64_t a1)
{
  v2 = sub_267B44E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B43FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B43E28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_267B44010(uint64_t a1)
{
  v2 = sub_267B450AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4404C(uint64_t a1)
{
  v2 = sub_267B450AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B44088(uint64_t a1)
{
  v2 = sub_267B45004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B440C4(uint64_t a1)
{
  v2 = sub_267B45004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B44100(uint64_t a1)
{
  v2 = sub_267B44F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4413C(uint64_t a1)
{
  v2 = sub_267B44F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B44178(uint64_t a1)
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](0);
  return sub_267B7E23C();
}

uint64_t sub_267B441B8(uint64_t a1)
{
  v2 = sub_267B44EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B441F4(uint64_t a1)
{
  v2 = sub_267B44EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttachmentModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187D0, &qword_267B7F148);
  OUTLINED_FUNCTION_8();
  v41 = v4;
  v42 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v40 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187D8, &qword_267B7F150);
  OUTLINED_FUNCTION_8();
  v38 = v8;
  v39 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  v37 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187E0, &qword_267B7F158);
  OUTLINED_FUNCTION_8();
  v35 = v12;
  v36 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187E8, &qword_267B7F160);
  OUTLINED_FUNCTION_8();
  v34 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187F0, &qword_267B7F168);
  OUTLINED_FUNCTION_8();
  v45 = v22;
  v46 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  v25 = &v34 - v24;
  v26 = v1[1];
  v43 = *v1;
  v44 = v26;
  v27 = v1[2];
  v28 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_267B44E60();
  sub_267B7E27C();
  switch(v27 >> 62)
  {
    case 1uLL:
      v47[0] = 1;
      sub_267B45004();
      OUTLINED_FUNCTION_7_1(&type metadata for AttachmentModel.MapAttachmentCodingKeys, v47);
      OUTLINED_FUNCTION_2_1();
      sub_267B45058();
      v32 = v36;
      sub_267B7E12C();
      (*(v35 + 8))(v15, v32);
      break;
    case 2uLL:
      v47[0] = 2;
      sub_267B44F5C();
      v29 = v37;
      OUTLINED_FUNCTION_7_1(&type metadata for AttachmentModel.PhotoAttachmentCodingKeys, v47);
      OUTLINED_FUNCTION_2_1();
      v48 = v27 & 0x3FFFFFFFFFFFFFFFLL;
      sub_267B44FB0();
      v30 = v39;
      sub_267B7E12C();
      v31 = v38;
      goto LABEL_5;
    case 3uLL:
      v47[0] = 3;
      sub_267B44EB4();
      v29 = v40;
      OUTLINED_FUNCTION_7_1(&type metadata for AttachmentModel.VideoAttachmentCodingKeys, v47);
      OUTLINED_FUNCTION_2_1();
      sub_267B44F08();
      v30 = v42;
      sub_267B7E12C();
      v31 = v41;
LABEL_5:
      (*(v31 + 8))(v29, v30);
      break;
    default:
      v47[0] = 0;
      sub_267B450AC();
      OUTLINED_FUNCTION_7_1(&type metadata for AttachmentModel.LinkAttachmentCodingKeys, v47);
      OUTLINED_FUNCTION_2_1();
      sub_267B45100();
      sub_267B7E12C();
      (*(v34 + 8))(v20, v16);
      break;
  }

  return (*(v45 + 8))(v25, v28);
}

void AttachmentModel.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v76[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218840, &qword_267B7F170);
  OUTLINED_FUNCTION_8();
  v76[12] = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_0();
  v79 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218848, &qword_267B7F178);
  OUTLINED_FUNCTION_8();
  v76[10] = v7;
  v76[11] = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  v78 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218850, &qword_267B7F180);
  OUTLINED_FUNCTION_8();
  v76[7] = v11;
  v76[8] = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218858, &qword_267B7F188);
  OUTLINED_FUNCTION_8();
  v76[6] = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v19 = v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218860, &unk_267B7F190);
  OUTLINED_FUNCTION_8();
  v22 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  v24 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_267B44E60();
  v25 = v83;
  sub_267B7E25C();
  if (v25)
  {
    goto LABEL_8;
  }

  v76[3] = v15;
  v76[4] = v19;
  v76[5] = v14;
  v83 = v22;
  v26 = sub_267B7E09C();
  sub_267B45154(v26, 0);
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v43 = sub_267B7DFBC();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580);
    *v45 = &type metadata for AttachmentModel;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_3_2();
    v47(v46, v20);
LABEL_8:
    v48 = v80;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v48);
    return;
  }

  v76[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_267B45C38(v29 + 1, v30 >> 1, v27, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    v76[2] = v32;
    if (v34 == v36 >> 1)
    {
      v37 = v20;
      v38 = v77;
      switch(v31)
      {
        case 1:
          v81[0] = 1;
          sub_267B45004();
          OUTLINED_FUNCTION_6_0(&type metadata for AttachmentModel.MapAttachmentCodingKeys, v81);
          sub_267B45234();
          sub_267B7E08C();
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_14_1();
          v73(v72);
          v74 = OUTLINED_FUNCTION_3_2();
          v75(v74, v37);
          OUTLINED_FUNCTION_13_0();
          v71 = 0x4000000000000000;
          break;
        case 2:
          v81[0] = 2;
          sub_267B44F5C();
          OUTLINED_FUNCTION_6_0(&type metadata for AttachmentModel.PhotoAttachmentCodingKeys, v81);
          v49 = sub_267B451E0();
          OUTLINED_FUNCTION_10_0(&type metadata for PhotoAttachment, v50, v51, v52, v49);
          swift_unknownObjectRelease();
          v57 = OUTLINED_FUNCTION_8_1();
          v58(v57);
          v59 = OUTLINED_FUNCTION_9_0();
          v60(v59);
          OUTLINED_FUNCTION_13_0();
          v71 = v82 | 0x8000000000000000;
          break;
        case 3:
          v81[0] = 3;
          sub_267B44EB4();
          OUTLINED_FUNCTION_6_0(&type metadata for AttachmentModel.VideoAttachmentCodingKeys, v81);
          v53 = sub_267B4518C();
          OUTLINED_FUNCTION_10_0(&type metadata for VideoAttachment, v54, v55, v56, v53);
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_8_1();
          v62(v61);
          v63 = OUTLINED_FUNCTION_9_0();
          v64(v63);
          OUTLINED_FUNCTION_13_0();
          v71 = 0xC000000000000000;
          break;
        default:
          v81[0] = 0;
          sub_267B450AC();
          OUTLINED_FUNCTION_6_0(&type metadata for AttachmentModel.LinkAttachmentCodingKeys, v81);
          v39 = sub_267B45288();
          OUTLINED_FUNCTION_10_0(&type metadata for LinkAttachment, v40, v41, v42, v39);
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_8_1();
          v66(v65);
          v67 = OUTLINED_FUNCTION_9_0();
          v68(v67);
          OUTLINED_FUNCTION_13_0();
          break;
      }

      v48 = v80;
      *v38 = v69;
      v38[1] = v70;
      v38[2] = v71;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_267B44E60()
{
  result = qword_2802187F8;
  if (!qword_2802187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187F8);
  }

  return result;
}

unint64_t sub_267B44EB4()
{
  result = qword_280218800;
  if (!qword_280218800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218800);
  }

  return result;
}

unint64_t sub_267B44F08()
{
  result = qword_280218808;
  if (!qword_280218808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218808);
  }

  return result;
}

unint64_t sub_267B44F5C()
{
  result = qword_280218810;
  if (!qword_280218810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218810);
  }

  return result;
}

unint64_t sub_267B44FB0()
{
  result = qword_280218818;
  if (!qword_280218818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218818);
  }

  return result;
}

unint64_t sub_267B45004()
{
  result = qword_280218820;
  if (!qword_280218820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218820);
  }

  return result;
}

unint64_t sub_267B45058()
{
  result = qword_280218828;
  if (!qword_280218828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218828);
  }

  return result;
}

unint64_t sub_267B450AC()
{
  result = qword_280218830;
  if (!qword_280218830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218830);
  }

  return result;
}

unint64_t sub_267B45100()
{
  result = qword_280218838;
  if (!qword_280218838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218838);
  }

  return result;
}

void sub_267B45154(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_267B4518C()
{
  result = qword_280218870;
  if (!qword_280218870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218870);
  }

  return result;
}

unint64_t sub_267B451E0()
{
  result = qword_280218878;
  if (!qword_280218878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218878);
  }

  return result;
}

unint64_t sub_267B45234()
{
  result = qword_280218880;
  if (!qword_280218880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218880);
  }

  return result;
}

unint64_t sub_267B45288()
{
  result = qword_280218888;
  if (!qword_280218888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218888);
  }

  return result;
}

unint64_t sub_267B452E0()
{
  result = qword_280218890;
  if (!qword_280218890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218890);
  }

  return result;
}

unint64_t sub_267B45338()
{
  result = qword_280218898;
  if (!qword_280218898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218898);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_267B453AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
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

uint64_t sub_267B453F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267B4544C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *(result + 8) &= 1uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AttachmentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SecurityScopedURL.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_267B45664(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B45714()
{
  result = qword_2802188A0;
  if (!qword_2802188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188A0);
  }

  return result;
}

unint64_t sub_267B4576C()
{
  result = qword_2802188A8;
  if (!qword_2802188A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188A8);
  }

  return result;
}

unint64_t sub_267B457C4()
{
  result = qword_2802188B0;
  if (!qword_2802188B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188B0);
  }

  return result;
}

unint64_t sub_267B4581C()
{
  result = qword_2802188B8;
  if (!qword_2802188B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188B8);
  }

  return result;
}

unint64_t sub_267B45874()
{
  result = qword_2802188C0;
  if (!qword_2802188C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188C0);
  }

  return result;
}

unint64_t sub_267B458CC()
{
  result = qword_2802188C8;
  if (!qword_2802188C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188C8);
  }

  return result;
}

unint64_t sub_267B45924()
{
  result = qword_2802188D0;
  if (!qword_2802188D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188D0);
  }

  return result;
}

unint64_t sub_267B4597C()
{
  result = qword_2802188D8;
  if (!qword_2802188D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188D8);
  }

  return result;
}

unint64_t sub_267B459D4()
{
  result = qword_2802188E0;
  if (!qword_2802188E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188E0);
  }

  return result;
}

unint64_t sub_267B45A2C()
{
  result = qword_2802188E8;
  if (!qword_2802188E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188E8);
  }

  return result;
}

unint64_t sub_267B45A84()
{
  result = qword_2802188F0;
  if (!qword_2802188F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188F0);
  }

  return result;
}

unint64_t sub_267B45ADC()
{
  result = qword_2802188F8;
  if (!qword_2802188F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188F8);
  }

  return result;
}

unint64_t sub_267B45B34()
{
  result = qword_280218900;
  if (!qword_280218900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218900);
  }

  return result;
}

unint64_t sub_267B45B8C()
{
  result = qword_280218908;
  if (!qword_280218908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218908);
  }

  return result;
}

unint64_t sub_267B45BE4()
{
  result = qword_280218910;
  if (!qword_280218910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218910);
  }

  return result;
}

uint64_t sub_267B45C38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

void OUTLINED_FUNCTION_2_1()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 136);
  *(v0 - 96) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2)
{

  return sub_267B7E0BC();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t result)
{
  *(v2 + 32) = result;
  *v2 = v1;
  *(v2 + 8) = v3 & 1;
  return result;
}

uint64_t (*OpenConversationIntentRepresentation.textPayload.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_267B7DC4C();
  return sub_267B43594;
}

uint64_t sub_267B45F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  result = a4(a1, a2, a3);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_267B45F68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  a5(v6, v7);
}

uint64_t (*OpenConversationIntentRepresentation.identifier.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_267B7DC4C();
  return sub_267B41800;
}

uint64_t sub_267B46100@<X0>(uint64_t *a1@<X8>)
{
  result = OpenConversationIntentRepresentation.intentPersons.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B46144(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;

  OpenConversationIntentRepresentation.intentPersons.setter(v2);
}

uint64_t (*OpenConversationIntentRepresentation.intentPersons.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_267B7DC4C();
  return sub_267B43594;
}

uint64_t OpenConversationIntentRepresentation.init(identifier:)@<X0>(uint64_t *a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218918, &qword_267B7F8B0);
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *a3 = OUTLINED_FUNCTION_0_3(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  v13 = swift_allocObject();
  a3[1] = OUTLINED_FUNCTION_0_3(v13, v14, v15, v16, v17, v18, v19, v20, 0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218920, &qword_267B7F8B8);
  v22 = OUTLINED_FUNCTION_1_3(v21);
  a3[2] = OUTLINED_FUNCTION_0_3(v22, v23, v24, v25, v26, v27, v28, v29, 0);
  return sub_267B7DC6C();
}

uint64_t OpenConversationIntentRepresentation.init(intentPersons:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218918, &qword_267B7F8B0);
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *a2 = OUTLINED_FUNCTION_0_3(v4, v5, v6, v7, v8, v9, v10, v11, 0);
  v12 = swift_allocObject();
  a2[1] = OUTLINED_FUNCTION_0_3(v12, v13, v14, v15, v16, v17, v18, v19, 0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218920, &qword_267B7F8B8);
  v21 = OUTLINED_FUNCTION_1_3(v20);
  a2[2] = OUTLINED_FUNCTION_0_3(v21, v22, v23, v24, v25, v26, v27, v28, 0);
  return sub_267B7DC6C();
}

uint64_t OpenConversationIntentRepresentation.init(identifier:textPayload:)@<X0>(uint64_t *a5@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218918, &qword_267B7F8B0);
  v7 = OUTLINED_FUNCTION_1_3(v6);
  *a5 = OUTLINED_FUNCTION_0_3(v7, v8, v9, v10, v11, v12, v13, v14, 0);
  v15 = swift_allocObject();
  a5[1] = OUTLINED_FUNCTION_0_3(v15, v16, v17, v18, v19, v20, v21, v22, 0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218920, &qword_267B7F8B8);
  v24 = OUTLINED_FUNCTION_1_3(v23);
  a5[2] = OUTLINED_FUNCTION_0_3(v24, v25, v26, v27, v28, v29, v30, v31, 0);
  sub_267B7DC6C();
  return sub_267B7DC6C();
}

uint64_t sub_267B46520(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_267B46560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267B465DC()
{
  v2 = sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_2_2();
  result = swift_beginAccess();
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    OUTLINED_FUNCTION_5_3();
    v13 = v10 + v12;
    v14 = *(v4 + 56);

    do
    {
      v1(v8, v13, v2);
      sub_267B7DA2C();
      (*(v4 - 8))(v8, v2);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_267B46738(uint64_t a1)
{
  sub_267B465DC();
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void (*sub_267B46784(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = *(v1 + 16);

  return sub_267B46804;
}

void sub_267B46804(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_267B465DC();
    *(v4 + 16) = v3;
  }

  else
  {
    sub_267B465DC();
    *(v4 + 16) = v3;
  }

  free(v2);
}

uint64_t SecurityScopedURL.__allocating_init(wrappedValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_267B468B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B46950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B468B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B4697C(uint64_t a1)
{
  v2 = sub_267B46DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B469B8(uint64_t a1)
{
  v2 = sub_267B46DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecurityScopedURL.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_4();
  v2 = swift_allocObject();
  SecurityScopedURL.init(from:)(a1);
  return v2;
}

uint64_t SecurityScopedURL.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - v3;
  v5 = sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218930, "ډ");
  OUTLINED_FUNCTION_8();
  v13 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_267B46DA8();
  v18 = v34;
  sub_267B7E25C();
  if (v18)
  {
    type metadata accessor for SecurityScopedURL();
    v23 = v38;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v13;
    sub_267B46E20();
    sub_267B7E08C();
    v19 = v11;
    v32 = v16;
    v20 = v36;
    v21 = v37;
    LOBYTE(v36) = 0;
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v22 = v10;
    sub_267B7DA0C();
    v30 = v21;
    v31 = v19;
    sub_267B46E74(v4);
    v25 = sub_267B47304(0, 1, 1, MEMORY[0x277D84F90]);
    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_267B47304((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = v32;
    v29 = v33;
    sub_267B3A524(v20, v30);
    (*(v34 + 8))(v28, v31);
    v25[2] = v27 + 1;
    (*(v29 + 32))(v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, v22, v5);
    v23 = v38;
    *(v38 + 16) = v25;
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v23;
}

unint64_t sub_267B46DA8()
{
  result = qword_280218938;
  if (!qword_280218938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218938);
  }

  return result;
}

unint64_t sub_267B46E20()
{
  result = qword_280218940;
  if (!qword_280218940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218940);
  }

  return result;
}

uint64_t sub_267B46E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B46EDC(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218948, &qword_267B7F980);
  OUTLINED_FUNCTION_8();
  v24 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B46DA8();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  v13 = *(*(v3 + 16) + 16);

  for (i = 0; v13 != i; ++i)
  {
    v15 = sub_267B7DA6C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
    v16 = sub_267B7D9DC();
    if (v2)
    {
      sub_267B46E74(v7);
      break;
    }

    v18 = v16;
    v19 = v17;
    sub_267B46E74(v7);
    v22 = v18;
    v23 = v19;
    sub_267B473F0();
    sub_267B7E12C();
    sub_267B3A524(v22, v23);
  }

  return (*(v24 + 8))(v12, v8);
}

uint64_t SecurityScopedURL.deinit()
{
  v2 = v0;
  v3 = sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    OUTLINED_FUNCTION_5_3();
    v13 = v10 + v12;
    v14 = *(v5 + 56);

    do
    {
      v1(v9, v13, v3);
      sub_267B7DA2C();
      (*(v5 - 8))(v9, v3);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t SecurityScopedURL.__deallocating_deinit()
{
  SecurityScopedURL.deinit();
  v0 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_267B472B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SecurityScopedURL.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_267B47304(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_267B476F0(v8, v7);
  v10 = *(sub_267B7DA6C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_267B477EC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

unint64_t sub_267B473F0()
{
  result = qword_280218950;
  if (!qword_280218950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SecurityScopedURL.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B475EC()
{
  result = qword_280218958;
  if (!qword_280218958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218958);
  }

  return result;
}

unint64_t sub_267B47644()
{
  result = qword_280218960;
  if (!qword_280218960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218960);
  }

  return result;
}

unint64_t sub_267B4769C()
{
  result = qword_280218968;
  if (!qword_280218968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218968);
  }

  return result;
}

void *sub_267B476F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
  v4 = *(sub_267B7DA6C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267B477EC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_267B7DA6C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_267B7DA6C();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

id SAAppInfo.isFirstParty.getter()
{
  result = [v0 appIdentifyingInfo];
  if (result)
  {
    result = sub_267B47EB4(result);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3();
      v3 = sub_267B7DDCC();

      return (v3 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *SAAppInfo.getNameForDisplay(locale:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_267B7DAEC();
  v5 = v4;
  v17[0] = v3;
  v17[1] = v4;
  sub_267B47F24();
  v6 = v17;
  v7 = sub_267B7DF0C();
  v9 = v8;

  sub_267B47F78(v2, &selRef_displayAppName);
  if (v10)
  {
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    v11 = sub_267B47FD8(v2, &selRef_displayAppNameMap);
    if (v11)
    {
      OUTLINED_FUNCTION_1_5(v11);
      OUTLINED_FUNCTION_0_4();

      if (v5)
      {
        goto LABEL_8;
      }
    }

    sub_267B47F78(v2, &selRef_appName);
    if (v12)
    {
      OUTLINED_FUNCTION_0_4();
    }

    else
    {
      v14 = sub_267B47FD8(v2, &selRef_appNameMap);
      if (!v14 || (OUTLINED_FUNCTION_1_5(v14), OUTLINED_FUNCTION_0_4(), , !v5))
      {
        sub_267B47F78(v2, &selRef_spotlightName);
        if (v15)
        {
          OUTLINED_FUNCTION_0_4();
          swift_bridgeObjectRelease_n();
          goto LABEL_8;
        }

        v16 = sub_267B47FD8(v2, &selRef_spotlightNameMap);
        if (!v16)
        {
          swift_bridgeObjectRelease_n();

          return 0;
        }

        sub_267B47B34(v7, v9, v16);
        OUTLINED_FUNCTION_0_4();
        swift_bridgeObjectRelease_n();
      }
    }
  }

LABEL_8:

  return v6;
}

uint64_t sub_267B47B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_267B47C80(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_267B47B8C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_267B47CF8(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_267B3E924(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id SAAppInfo.init(appIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D47968]) init];
    sub_267B48038(a1, a2, v5);
    [v4 setAppIdentifyingInfo_];
  }

  return v4;
}

unint64_t sub_267B47C80(uint64_t a1, uint64_t a2)
{
  sub_267B7E21C();
  sub_267B7DD9C();
  v4 = sub_267B7E23C();

  return sub_267B47D3C(a1, a2, v4);
}

unint64_t sub_267B47CF8(uint64_t a1)
{
  v2 = sub_267B7DF2C();

  return sub_267B47DF0(a1, v2);
}

unint64_t sub_267B47D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_267B7E16C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_267B47DF0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_267B4809C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D6018F0](v8, a1);
    sub_267B480F8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_267B47EB4(void *a1)
{
  v2 = [a1 bundleId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
}

unint64_t sub_267B47F24()
{
  result = qword_280218978;
  if (!qword_280218978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218978);
  }

  return result;
}

uint64_t sub_267B47F78(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267B7DD5C();

  return v4;
}

uint64_t sub_267B47FD8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267B7DD1C();

  return v4;
}

void sub_267B48038(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267B7DD4C();

  [a3 setBundleId_];
}

uint64_t PhotoAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t PhotoAsset.url.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  swift_beginAccess();
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t PhotoAsset.thumbNail.getter()
{
  v1 = v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v2 = *v1;
  sub_267B48314(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_267B48314(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_267B48328(a1, a2);
  }

  return a1;
}

uint64_t sub_267B48328(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t PhotoAsset.thumbNail.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail);
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_267B3A510(v6, v7);
}

uint64_t PhotoAsset.duration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  return *v1;
}

uint64_t PhotoAsset.duration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration;
  OUTLINED_FUNCTION_1_6();
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t PhotoAsset.isLivePhoto.getter()
{
  v1 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PhotoAsset.isLivePhoto.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto;
  OUTLINED_FUNCTION_1_6();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PhotoAsset.__allocating_init(url:thumbNail:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_11_1();
  v6 = swift_allocObject();
  PhotoAsset.init(url:thumbNail:)(v3, a2, a3);
  return v6;
}

uint64_t PhotoAsset.init(url:thumbNail:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail);
  *(v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail) = xmmword_267B7FB30;
  v8 = v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto) = 0;
  v9 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  (*(v10 + 32))(v3 + v9, a1);
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v11 = *v7;
  v12 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  sub_267B48314(a2, a3);
  sub_267B3A510(v11, v12);
  sub_267B3A510(a2, a3);
  return v3;
}

uint64_t static PhotoAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v12, a1 + v13, v4);
  v15 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v14(v10, a2 + v15, v4);
  LOBYTE(a2) = sub_267B7DA1C();
  v16 = *(v6 + 8);
  v16(v10, v4);
  v16(v12, v4);
  return a2 & 1;
}

uint64_t sub_267B488C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69614E626D756874 && a2 == 0xE90000000000006CLL;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x68506576694C7369 && a2 == 0xEB000000006F746FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B7E16C();

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

uint64_t sub_267B48A24(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x69614E626D756874;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x68506576694C7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B48AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B488C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B48ADC(uint64_t a1)
{
  v2 = sub_267B48F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B48B18(uint64_t a1)
{
  v2 = sub_267B48F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoAsset.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  (*(v2 + 8))(v0 + v1);
  sub_267B3A510(*(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail), *(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail + 8));
  return v0;
}

uint64_t PhotoAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  (*(v2 + 8))(v0 + v1);
  sub_267B3A510(*(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail), *(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail + 8));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void PhotoAsset.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_1();
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v5 = sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218980, &qword_267B7FB40);
  OUTLINED_FUNCTION_8();
  v13 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_267B48F84();
  v17 = v24;
  sub_267B7E27C();
  v18 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  (*(v7 + 16))(v10, v17 + v18, v5);
  v29 = 0;
  OUTLINED_FUNCTION_5_4();
  sub_267B4A67C(v19, v20, MEMORY[0x277CC9268]);
  v21 = v25;
  sub_267B7E12C();
  if (v21)
  {
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    (*(v7 + 8))(v10, v5);
    v22 = (v17 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail);
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v23 = v22[1];
    v27 = *v22;
    v28 = v23;
    v26 = 1;
    sub_267B48314(v27, v23);
    sub_267B473F0();
    sub_267B7E0EC();
    sub_267B3A510(v27, v28);
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v26 = 2;
    sub_267B7E0DC();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    sub_267B7E10C();
  }

  (*(v13 + 8))(v16, v11);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B48F84()
{
  result = qword_280218988;
  if (!qword_280218988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218988);
  }

  return result;
}

uint64_t PhotoAsset.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_11_1();
  v1 = swift_allocObject();
  PhotoAsset.init(from:)(v0);
  return v1;
}

void PhotoAsset.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_1();
  v3 = v1;
  v5 = v4;
  v36 = *v3;
  v37 = v2;
  sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v32 = v7;
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218998, &qword_267B7FB48);
  OUTLINED_FUNCTION_8();
  v31 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v11 = v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail;
  *(v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail) = xmmword_267B7FB30;
  v12 = v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration;
  *v12 = 0;
  v12[8] = 1;
  v13 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto;
  *(v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto) = 0;
  v42 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_267B48F84();
  v14 = v37;
  sub_267B7E25C();
  if (v14)
  {
    sub_267B3A510(*v11, *(v11 + 1));
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v12;
    v30 = v13;
    v15 = v32;
    v41 = 0;
    OUTLINED_FUNCTION_5_4();
    sub_267B4A67C(v16, v17, MEMORY[0x277CC9280]);
    v18 = v33;
    sub_267B7E08C();
    (*(v15 + 32))(v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url, v35, v18);
    v41 = 1;
    sub_267B46E20();
    sub_267B7E04C();
    v19 = v39;
    v20 = v40;
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    v21 = *v11;
    v22 = *(v11 + 1);
    *v11 = v19;
    *(v11 + 1) = v20;
    sub_267B3A510(v21, v22);
    LOBYTE(v39) = 2;
    v23 = sub_267B7E03C();
    LOBYTE(v20) = v24;
    v25 = v37;
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *v25 = v23;
    v25[8] = v20 & 1;
    v38 = 3;
    LOBYTE(v20) = sub_267B7E06C();
    v26 = OUTLINED_FUNCTION_9_1();
    v27(v26);
    v28 = v30;
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *(v3 + v28) = v20 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v42);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B493DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000267B86F60 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000267B86F80 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000267B86FA0 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000267B86FC0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000267B86FE0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_267B7E16C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_267B4958C(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B49634@<X0>(uint64_t *a1@<X8>)
{
  result = PhotoAsset.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_267B4968C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B493DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B496B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B49584();
  *a1 = result;
  return result;
}

uint64_t sub_267B496DC(uint64_t a1)
{
  v2 = sub_267B4A120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B49718(uint64_t a1)
{
  v2 = sub_267B4A120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosSelection.selectedAssetIds.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
}

uint64_t PhotosSelection.selectedAssetIds.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t PhotosSelection.selectedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
}

uint64_t PhotosSelection.selectedPhotoAssets.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t PhotosSelection.searchedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
}

uint64_t PhotosSelection.searchedPhotoAssets.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t PhotosSelection.photoSearchQuery.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PhotosSelection.photoSearchQuery.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t PhotosSelection.deselectedAssetIds.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
}

uint64_t PhotosSelection.deselectedAssetIds.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t PhotosSelection.__allocating_init(selectedAssetIds:selectedPhotoAssets:searchedPhotoAssets:photoSearchQuery:deselectedAssetIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_7_2();
  v12 = swift_allocObject();
  PhotosSelection.init(selectedAssetIds:selectedPhotoAssets:searchedPhotoAssets:photoSearchQuery:deselectedAssetIds:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *PhotosSelection.init(selectedAssetIds:selectedPhotoAssets:searchedPhotoAssets:photoSearchQuery:deselectedAssetIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x277D84F90];
  v6[2] = MEMORY[0x277D84F90];
  type metadata accessor for PhotoAsset(0);
  v6[3] = sub_267B7DD2C();
  v6[4] = v11;
  v6[7] = v11;
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v6[2] = a1;

  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v6[3] = a2;

  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v6[4] = a3;

  v6[5] = a4;
  v6[6] = a5;
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v6[7] = a6;

  return v6;
}

uint64_t type metadata accessor for PhotoAsset(uint64_t a1)
{
  result = qword_280218A00;
  if (!qword_280218A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSelection.__allocating_init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v2 = swift_allocObject();
  PhotosSelection.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void PhotosSelection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_13_1();
  v12 = v10;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189A8, &qword_267B7FB50);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v16 = MEMORY[0x277D84F90];
  v12[2] = MEMORY[0x277D84F90];
  v17 = v12 + 2;
  type metadata accessor for PhotoAsset(0);
  v12[3] = sub_267B7DD2C();
  v18 = v12 + 3;
  v12[4] = v16;
  v19 = v12 + 4;
  v24 = v12;
  v12[7] = v16;
  v20 = v12 + 7;
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_267B4A120();
  sub_267B7E25C();
  if (v11)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189C0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_267B7E08C();
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *v17 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A174();
    sub_267B7E08C();
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *v18 = v26;

    sub_267B7E08C();
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *v19 = v25;

    v24[5] = sub_267B7E05C();
    v24[6] = v21;
    sub_267B7E08C();
    v22 = OUTLINED_FUNCTION_8_2();
    v23(v22);
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *v20 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4A120()
{
  result = qword_2802189B0;
  if (!qword_2802189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802189B0);
  }

  return result;
}

unint64_t sub_267B4A174()
{
  result = qword_2802189D0;
  if (!qword_2802189D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A67C(&qword_2802189D8, type metadata accessor for PhotoAsset, &protocol conformance descriptor for PhotoAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802189D0);
  }

  return result;
}

void *PhotosSelection.deinit()
{

  return v0;
}

uint64_t PhotosSelection.__deallocating_deinit()
{
  PhotosSelection.deinit();
  v0 = OUTLINED_FUNCTION_7_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void PhotosSelection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_1();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189E0, &qword_267B7FB68);
  OUTLINED_FUNCTION_8();
  v29 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  v32 = &v33[-v31];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_267B4A120();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v37 = v24[2];
  LOBYTE(v36) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
  sub_267B4A554(&qword_2802189E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_6_1(&v37);
  if (!v21)
  {
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v36 = v24[3];
    LOBYTE(v35) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A5C0();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v35 = v24[4];
    v34 = 2;
    OUTLINED_FUNCTION_6_1(&v35);
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v34 = 3;

    sub_267B7E0FC();

    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    a10 = v24[7];
    v33[7] = 4;
    OUTLINED_FUNCTION_6_1(&a10);
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B4A554(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189B8, &qword_267B7FB58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B4A5C0()
{
  result = qword_2802189F0;
  if (!qword_2802189F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A67C(&qword_2802189F8, type metadata accessor for PhotoAsset, &protocol conformance descriptor for PhotoAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802189F0);
  }

  return result;
}

uint64_t sub_267B4A67C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B4A6C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PhotosSelection.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267B4A71C(uint64_t a1)
{
  result = sub_267B7DA6C();
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

uint64_t getEnumTagSinglePayload for PhotosSelection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotosSelection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhotoAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B4AAD8()
{
  result = qword_280218A10;
  if (!qword_280218A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A10);
  }

  return result;
}

unint64_t sub_267B4AB30()
{
  result = qword_280218A18;
  if (!qword_280218A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A18);
  }

  return result;
}

unint64_t sub_267B4AB88()
{
  result = qword_280218A20;
  if (!qword_280218A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A20);
  }

  return result;
}

unint64_t sub_267B4ABE0()
{
  result = qword_280218A28;
  if (!qword_280218A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A28);
  }

  return result;
}

unint64_t sub_267B4AC38()
{
  result = qword_280218A30;
  if (!qword_280218A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A30);
  }

  return result;
}

unint64_t sub_267B4AC90()
{
  result = qword_280218A38;
  if (!qword_280218A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{

  return swift_beginAccess();
}

id static AnnounceMessageUtils.bloopSoundCommand()()
{
  v0 = sub_267B7DACC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnnounceMessageUtils.Dummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
  sub_267B7DABC();
  v7 = sub_267B7DAAC();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  sub_267B3A8D0(v7, v9, v6);

  sub_267B4AFBC(0x3367734D746E6553, 0xE900000000000070, 7758199, 0xE300000000000000, v5);
  if (v10)
  {
    v11 = sub_267B7DD4C();
  }

  else
  {
    v11 = 0;
  }

  [v6 setItemURL_];

  sub_267B4B078();
  v12 = sub_267B7DECC();
  [v6 setVolume_];

  return v6;
}

uint64_t sub_267B4AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_267B7DD4C();

  v7 = sub_267B7DD4C();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_267B7DD5C();

  return v9;
}

unint64_t sub_267B4B078()
{
  result = qword_280218A40;
  if (!qword_280218A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280218A40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceMessageUtils(_BYTE *result, int a2, int a3)
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

id PatternExecutionResult.asDialogExecutionResult()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v2 = [v0 meta];
  sub_267B7DD1C();

  v3 = sub_267B7DD0C();

  [v1 setMeta_];

  v4 = [v0 patternId];
  if (!v4)
  {
    sub_267B7DD5C();
    v4 = sub_267B7DD4C();
  }

  [v1 setCatId_];

  v31 = MEMORY[0x277D84F90];
  v5 = [v0 dialog];
  sub_267B40FF0(0, &qword_280218A48, 0x277D052C8);
  v6 = sub_267B7DE1C();

  v7 = sub_267B4B638(v6);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  result = sub_267B40FF0(0, &qword_280218A40, 0x277CCABB0);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D601950](i, v6);
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
      v14 = [v12 dialogId];
      v15 = v14;
      if (!v14)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v14 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v14, sel_setId_);

      v16 = [v12 fullPrint];
      v17 = v16;
      if (!v16)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v16 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v16, sel_setFullPrint_);

      [v13 setIsApprovedForGrading_];
      v18 = [v12 printOnly];
      v19 = sub_267B7DEDC();
      v20 = sub_267B7DEEC();

      [v13 setPrintOnly_];
      v21 = [v12 fullSpeak];
      v22 = v21;
      if (!v21)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v21 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v21, sel_setFullSpeak_);

      v23 = [v12 spokenOnly];
      v24 = sub_267B7DEDC();
      v25 = sub_267B7DEEC();

      [v13 setSpokenOnly_];
      v26 = [v12 supportingPrint];
      v27 = v26;
      if (!v26)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v26 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v26, sel_setSupportingPrint_);

      v28 = [v12 supportingSpeak];
      v29 = v28;
      if (!v28)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v28 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v28, sel_setSupportingSpeak_);

      MEMORY[0x26D6017B0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267B7DE3C();
      }

      sub_267B7DE4C();
    }

LABEL_22:

    sub_267B40FF0(0, &qword_280218A50, 0x277D052B0);
    v30 = sub_267B7DE0C();

    [v1 setDialog_];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_267B4B638(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t AutoSendableCarPlayButton.init(shouldAutoSend:autoSendTimeout:delayedActionCancelCommand:handleIntent:speechSynthesisId:isFirstPartyApp:responseMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_280218F48;
  *(a8 + 48) = qword_280218F40;
  *(a8 + 56) = v18;
  v19 = *(type metadata accessor for AutoSendableCarPlayButton(0) + 44);
  v20 = sub_267B7DC1C();
  __swift_storeEnumTagSinglePayload(a8 + v19, 1, 1, v20);
  *a8 = a1 & 1;
  *(a8 + 8) = a9;
  v21 = *(a8 + 16);

  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 64) = a6 & 1;
  return sub_267B40A18(a7, a8 + v19);
}

void *AutoSendableCarPlayButton.delayedActionCancelCommand.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_267B4B868(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCarPlayButton.delayedActionCancelCommand.setter(v1);
}

void (*AutoSendableCarPlayButton.delayedActionCancelCommand.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

void *AutoSendableCarPlayButton.handleIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B4B90C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCarPlayButton.handleIntent.setter(v1);
}

void (*AutoSendableCarPlayButton.handleIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

uint64_t AutoSendableCarPlayButton.speechSynthesisId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AutoSendableCarPlayButton.speechSynthesisId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AutoSendableCarPlayButton.changeLabelText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AutoSendableCarPlayButton.changeLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AutoSendableCarPlayButton.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCarPlayButton(0) + 44);

  return sub_267B40A88(v3, a1);
}

uint64_t AutoSendableCarPlayButton.responseMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCarPlayButton(0) + 44);

  return sub_267B40A18(a1, v3);
}

uint64_t sub_267B4BB98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7541646C756F6873 && a2 == 0xEE00646E65536F74;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E65536F747561 && a2 == 0xEF74756F656D6954;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000267B86D40 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E49656C646E6168 && a2 == 0xEC000000746E6574;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B86D60 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614C65676E616863 && a2 == 0xEF747865546C6562;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5074737269467369 && a2 == 0xEF70704179747261;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_267B7E16C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_267B4BE44(char a1)
{
  result = 0x7541646C756F6873;
  switch(a1)
  {
    case 1:
      result = 0x646E65536F747561;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x6E49656C646E6168;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x614C65676E616863;
      break;
    case 6:
      result = 0x5074737269467369;
      break;
    case 7:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B4BF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4BB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4BFA4(uint64_t a1)
{
  v2 = sub_267B4C874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4BFE0(uint64_t a1)
{
  v2 = sub_267B4C874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendableCarPlayButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218A58, &qword_267B7FF48);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4C874();
  sub_267B7E27C();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E11C();
    v17 = *(v3 + 16);
    HIBYTE(v16) = 2;
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    OUTLINED_FUNCTION_5_0(&qword_2802185C8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v17 = *(v3 + 24);
    HIBYTE(v16) = 3;
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    OUTLINED_FUNCTION_5_0(&qword_2802185D8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    LOBYTE(v17) = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    LOBYTE(v17) = 5;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    LOBYTE(v17) = 6;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    type metadata accessor for AutoSendableCarPlayButton(0);
    LOBYTE(v17) = 7;
    sub_267B7DC1C();
    OUTLINED_FUNCTION_4_3();
    sub_267B4CA70(v13, v14, MEMORY[0x277D61CD0]);
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t AutoSendableCarPlayButton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218A68, &qword_267B7FF50);
  OUTLINED_FUNCTION_8();
  v33 = v7;
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for AutoSendableCarPlayButton(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 2) = 0;
  v11 = (v10 + 16);
  *(v10 + 3) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_280218F48;
  v13 = *(v8 + 44);
  v14 = sub_267B7DC1C();
  v37 = v13;
  __swift_storeEnumTagSinglePayload(&v10[v13], 1, 1, v14);
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_267B4C874();
  v36 = v12;

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v35);

    v19 = *(v10 + 3);

    return sub_267B40B94(&v10[v37]);
  }

  else
  {
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_7();
    *v10 = sub_267B7E06C() & 1;
    OUTLINED_FUNCTION_0_1(1);
    sub_267B7E07C();
    *(v10 + 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    v38 = 2;
    OUTLINED_FUNCTION_2_0(&qword_2802185F0);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v17 = v39;

    *v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    v38 = 3;
    OUTLINED_FUNCTION_2_0(&qword_2802185F8);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v18 = v39;

    *(v10 + 3) = v18;
    OUTLINED_FUNCTION_0_1(4);
    *(v10 + 4) = sub_267B7E01C();
    *(v10 + 5) = v20;
    OUTLINED_FUNCTION_0_1(5);
    v21 = sub_267B7E05C();
    v23 = v22;

    *(v10 + 6) = v21;
    *(v10 + 7) = v23;
    OUTLINED_FUNCTION_0_1(6);
    v10[64] = sub_267B7E06C() & 1;
    LOBYTE(v39) = 7;
    OUTLINED_FUNCTION_4_3();
    sub_267B4CA70(v24, v25, MEMORY[0x277D61CE0]);
    v26 = v32;
    OUTLINED_FUNCTION_7();
    sub_267B7E04C();
    v27 = OUTLINED_FUNCTION_1_1();
    v28(v27);
    sub_267B40A18(v26, &v10[v37]);
    sub_267B4C8C8(v10, v31);
    __swift_destroy_boxed_opaque_existential_0(v35);
    return sub_267B4C92C(v10);
  }
}

uint64_t type metadata accessor for AutoSendableCarPlayButton(uint64_t a1)
{
  result = qword_280218A88;
  if (!qword_280218A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267B4C874()
{
  result = qword_280218A60;
  if (!qword_280218A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A60);
  }

  return result;
}

uint64_t sub_267B4C8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableCarPlayButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B4C92C(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendableCarPlayButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B4C988(uint64_t a1)
{
  result = sub_267B4CA70(&qword_280218A70, type metadata accessor for AutoSendableCarPlayButton, &protocol conformance descriptor for AutoSendableCarPlayButton);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267B4CA70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for AutoSendableCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B4CBC0()
{
  result = qword_280218A98;
  if (!qword_280218A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A98);
  }

  return result;
}

unint64_t sub_267B4CC18()
{
  result = qword_280218AA0;
  if (!qword_280218AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AA0);
  }

  return result;
}

unint64_t sub_267B4CC70()
{
  result = qword_280218AA8;
  if (!qword_280218AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AA8);
  }

  return result;
}

uint64_t MapAttachment.init(urls:isDraft:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t MapAttachment.urls.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_267B4CD6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74666172447369 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B4CE3C(char a1)
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](a1 & 1);
  return sub_267B7E23C();
}

uint64_t sub_267B4CE84(char a1)
{
  if (a1)
  {
    return 0x74666172447369;
  }

  else
  {
    return 1936487029;
  }
}

uint64_t sub_267B4CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4CD6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4CEEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B4CE34();
  *a1 = result;
  return result;
}

uint64_t sub_267B4CF14(uint64_t a1)
{
  v2 = sub_267B4D168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4CF50(uint64_t a1)
{
  v2 = sub_267B4D168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapAttachment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AB0, &unk_267B80160);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *v1;
  v12[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4D168();

  sub_267B7E27C();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
  sub_267B4D3D8(&qword_280218AC8, &qword_280218990, MEMORY[0x277CC9268], MEMORY[0x277D83948]);
  sub_267B7E12C();

  if (!v2)
  {
    v13 = 1;
    sub_267B7E10C();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_267B4D168()
{
  result = qword_280218AB8;
  if (!qword_280218AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AB8);
  }

  return result;
}

uint64_t MapAttachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AD0, &qword_267B80170);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4D168();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
  v14[15] = 0;
  sub_267B4D3D8(&qword_280218AD8, &qword_2802189A0, MEMORY[0x277CC9280], MEMORY[0x277D83978]);
  sub_267B7E08C();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_267B7E06C();
  (*(v7 + 8))(v10, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B4D3D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B4D460(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B4D460(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_267B7DA6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B4D4AC(uint64_t a1)
{
  *(a1 + 16) = sub_267B45234();
  result = sub_267B45058();
  *(a1 + 24) = result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_267B4D520(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_267B4D560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapAttachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MapAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B4D718()
{
  result = qword_280218AE0;
  if (!qword_280218AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AE0);
  }

  return result;
}

unint64_t sub_267B4D770()
{
  result = qword_280218AE8;
  if (!qword_280218AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AE8);
  }

  return result;
}

unint64_t sub_267B4D7C8()
{
  result = qword_280218AF0;
  if (!qword_280218AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AF0);
  }

  return result;
}

SiriMessagesCommon::UnreadMessagesCarPlayButton __swiftcall UnreadMessagesCarPlayButton.init(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v4 = v1;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_280218F88;
  v4[2] = qword_280218F80;
  v4[3] = v5;
  *v4 = countAndFlagsBits;
  v4[1] = object;

  result.unreadMessagesLabelText._object = v9;
  result.unreadMessagesLabelText._countAndFlagsBits = v8;
  result.text._object = v7;
  result.text._countAndFlagsBits = v6;
  return result;
}

uint64_t UnreadMessagesCarPlayButton.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UnreadMessagesCarPlayButton.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnreadMessagesCarPlayButton.unreadMessagesLabelText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UnreadMessagesCarPlayButton.unreadMessagesLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_267B4D9B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000267B87060 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B4DA84(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_267B4DAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4D9B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4DAE8(uint64_t a1)
{
  v2 = sub_267B4DF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4DB24(uint64_t a1)
{
  v2 = sub_267B4DF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnreadMessagesCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AF8, &qword_267B80360);
  OUTLINED_FUNCTION_8();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4DF3C();
  sub_267B7E27C();
  v14 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v13 = 1;
    sub_267B7E0FC();
  }

  return (*(v12 + 8))(v8, v4);
}

uint64_t UnreadMessagesCarPlayButton.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B08, &qword_267B80368);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4DF3C();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v23 = 0;
    v11 = OUTLINED_FUNCTION_2_5();
    v13 = v12;
    v23 = 1;
    v14 = OUTLINED_FUNCTION_2_5();
    v16 = v15;
    v17 = *(v6 + 8);
    v21 = v14;
    v17(v9, v4);

    v19 = v21;
    v18 = v22;
    *v22 = v11;
    v18[1] = v13;
    v18[2] = v19;
    v18[3] = v16;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

unint64_t sub_267B4DF3C()
{
  result = qword_280218B00;
  if (!qword_280218B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B00);
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

uint64_t sub_267B4DF9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_267B4DFDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for UnreadMessagesCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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