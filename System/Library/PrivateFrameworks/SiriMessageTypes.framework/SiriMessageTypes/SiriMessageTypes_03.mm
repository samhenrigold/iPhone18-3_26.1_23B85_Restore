void *DictationAsrResultMessage.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057950, &qword_223205778);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310A568();
  sub_223200794();
  if (v2)
  {
    LODWORD(v10) = 0;
    v16 = 0;
    OUTLINED_FUNCTION_25_0();
    goto LABEL_4;
  }

  v46 = 0;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_30(v12, v13, v14, v15);
  if (v45 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v42 = v7;
    v19 = v44;
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D057970, 0x277CEF4B0);
    v43 = v19;
    v18 = sub_223200284();
    OUTLINED_FUNCTION_40_0();
  }

  *&v3[OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens] = v18;
  v46 = 1;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_30(v20, v21, v22, v23);
  if (v45 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v25 = v44;
    v42 = sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
    v43 = v25;
    v24 = sub_223200264();
    OUTLINED_FUNCTION_40_0();
  }

  *&v3[OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage] = v24;
  v46 = 2;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_30(v26, v27, v28, v29);
  v16 = v45;
  if (v45 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D057968, 0x277CEF278);
    v30 = sub_223200264();
    v31 = OUTLINED_FUNCTION_39();
    sub_22310A610(v31, v32);
  }

  *&v3[OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult] = v30;
  v46 = 3;
  sub_22310A5BC();
  OUTLINED_FUNCTION_3_8();
  sub_223200554();
  v3[OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType] = v44;
  sub_2230F7158(a1, &v44);
  v33 = RequestMessageBase.init(from:)(&v44);
  v1 = v33;
  if (*(v33 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens))
  {
LABEL_26:
    if (*&v1[OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage])
    {
LABEL_27:
      v34 = OUTLINED_FUNCTION_0_4();
      v35(v34);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v1;
    }

    if (v1[OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType])
    {
      if (v1[OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType] == 1)
      {

LABEL_41:
        v36 = 0x8000000223221FD0;
        sub_2230F9E38();
        swift_allocError();
        v38 = 0xD000000000000061;
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      OUTLINED_FUNCTION_8_4();
    }

    OUTLINED_FUNCTION_38();
    v16 = sub_2232006B4();

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

  if (*(v33 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType))
  {
    if (*(v33 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType) == 1)
    {
      OUTLINED_FUNCTION_9_2();
    }

    else
    {
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_17();
    v16 = sub_2232006B4();

    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31();
  }

  v36 = 0x8000000223222040;
  sub_2230F9E38();
  swift_allocError();
  v38 = 0xD000000000000062;
LABEL_42:
  *v37 = v38;
  *(v37 + 8) = v36;
  *(v37 + 16) = 0;
  swift_willThrow();
  v39 = OUTLINED_FUNCTION_0_4();
  v40(v39);
  OUTLINED_FUNCTION_22_0();
  LODWORD(v7) = 1;
  LODWORD(v11) = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v7)
  {
    if (v10)
    {

      if (!v16)
      {
        goto LABEL_9;
      }
    }

    else if (!v16)
    {
LABEL_9:
      if (!v5)
      {
LABEL_11:
        type metadata accessor for DictationAsrResultMessage(0);
        swift_deallocPartialClassInstance();
        return v1;
      }

LABEL_10:

      goto LABEL_11;
    }

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v11)
  {
  }

  return v1;
}

uint64_t sub_223109AE4(void *a1)
{
  v3 = v1;
  v38 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057978, &qword_223205780);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310A568();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens))
  {
    goto LABEL_7;
  }

  v6 = objc_opt_self();
  sub_2230FB7F4(0, &qword_27D057970, 0x277CEF4B0);
  v7 = sub_2232001C4();
  v36 = 0;
  v8 = [v6 0x1FB92B35ALL];

  v9 = v36;
  if (v8)
  {
    v10 = sub_2231FFD24();
    v12 = v11;

    v36 = v10;
    v37 = v12;
    sub_2230D7754();
    OUTLINED_FUNCTION_6_3();
    if (v2)
    {
      v13 = OUTLINED_FUNCTION_24_0();
      v14(v13);
      v15 = OUTLINED_FUNCTION_39();
      return sub_2230D94DC(v15, v16);
    }

    v18 = OUTLINED_FUNCTION_39();
    sub_2230D94DC(v18, v19);
LABEL_7:
    v20 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage);
    if (v20)
    {
      objc_opt_self();
      v36 = 0;
      v21 = OUTLINED_FUNCTION_28_0(v20);
      v22 = v36;
      if (!v21)
      {
LABEL_16:
        v31 = v22;
        sub_2231FFD04();

        swift_willThrow();
        goto LABEL_20;
      }

      v34 = v3;
      v23 = sub_2231FFD24();
      v25 = v24;

      v36 = v23;
      v37 = v25;
      sub_2230D7754();
      OUTLINED_FUNCTION_6_3();
      if (v2)
      {
LABEL_14:
        v28 = OUTLINED_FUNCTION_24_0();
        v29(v28);

        v15 = v23;
        v16 = v25;
        return sub_2230D94DC(v15, v16);
      }

      sub_2230D94DC(v23, v25);
      v3 = v34;
    }

    v20 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult);
    if (!v20)
    {
LABEL_18:
      LOBYTE(v36) = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType);
      sub_22310A624();
      OUTLINED_FUNCTION_6_3();
      if (!v2)
      {
        sub_2230D77A8(a1);
      }

      goto LABEL_20;
    }

    objc_opt_self();
    v36 = 0;
    v26 = OUTLINED_FUNCTION_28_0(v20);
    v22 = v36;
    if (v26)
    {
      v35 = v3;
      v23 = sub_2231FFD24();
      v25 = v27;

      v36 = v23;
      v37 = v25;
      sub_2230D7754();
      OUTLINED_FUNCTION_6_3();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_2230D94DC(v23, v25);
      v3 = v35;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v17 = v9;
  sub_2231FFD04();

  swift_willThrow();
LABEL_20:
  v32 = OUTLINED_FUNCTION_24_0();
  return v33(v32);
}

uint64_t DictationAsrResultMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DictationAsrResultMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DictationAsrResultMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t DictationAsrResultMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_21_0() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t DictationAsrResultMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 28));

  return v1;
}

uint64_t DictationAsrResultMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DictationAsrResultMessage.Builder.speechTokens.getter()
{
  type metadata accessor for DictationAsrResultMessage.Builder(0);
}

uint64_t DictationAsrResultMessage.Builder.speechTokens.setter()
{
  v2 = *(OUTLINED_FUNCTION_21_0() + 32);

  *(v1 + v2) = v0;
  return result;
}

void *DictationAsrResultMessage.Builder.speechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void DictationAsrResultMessage.Builder.speechPackage.setter()
{
  v2 = *(OUTLINED_FUNCTION_21_0() + 36);

  *(v1 + v2) = v0;
}

void *DictationAsrResultMessage.Builder.nluResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void DictationAsrResultMessage.Builder.nluResult.setter()
{
  v2 = *(OUTLINED_FUNCTION_21_0() + 40);

  *(v1 + v2) = v0;
}

uint64_t DictationAsrResultMessage.Builder.resultType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DictationAsrResultMessage.Builder(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t DictationAsrResultMessage.Builder.resultType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DictationAsrResultMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

void sub_22310A3E8()
{

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult);
}

id DictationAsrResultMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictationAsrResultMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22310A4EC(uint64_t a1)
{
  v2 = type metadata accessor for DictationAsrResultMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22310A568()
{
  result = qword_27D057958;
  if (!qword_27D057958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057958);
  }

  return result;
}

unint64_t sub_22310A5BC()
{
  result = qword_27D057960;
  if (!qword_27D057960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057960);
  }

  return result;
}

uint64_t sub_22310A610(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2230D94DC(result, a2);
  }

  return result;
}

unint64_t sub_22310A624()
{
  result = qword_27D057980;
  if (!qword_27D057980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057980);
  }

  return result;
}

unint64_t sub_22310A67C()
{
  result = qword_27D057988;
  if (!qword_27D057988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DictationAsrResultType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22310A858(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_22310A9DC(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_22310AA40(319, &qword_27D057708, &qword_280FCA3D0, 0x277CEF470);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_22310AA40(319, &qword_27D0579B0, &qword_27D057968, 0x277CEF278);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_2230D525C(319, &qword_27D0579B8, &type metadata for DictationAsrResultType);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_22310A9DC(uint64_t a1)
{
  if (!qword_27D0579A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0579A8, &qword_223205958);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D0579A0);
    }
  }
}

void sub_22310AA40(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2230FB7F4(255, a3, a4);
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DictationAsrResultMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22310AB78()
{
  result = qword_27D0579C0;
  if (!qword_27D0579C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579C0);
  }

  return result;
}

unint64_t sub_22310ABD0()
{
  result = qword_27D0579C8;
  if (!qword_27D0579C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579C8);
  }

  return result;
}

unint64_t sub_22310AC28()
{
  result = qword_27D0579D0;
  if (!qword_27D0579D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579D0);
  }

  return result;
}

unint64_t sub_22310AC7C()
{
  result = qword_27D0579D8;
  if (!qword_27D0579D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return type metadata accessor for DictationAsrResultMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_33@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return v2;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_22310ADBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6341746365726964 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000223222210 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22310AE90(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x6341746365726964;
  }
}

uint64_t sub_22310AEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22310ADBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22310AF04(uint64_t a1)
{
  v2 = sub_22310C3F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22310AF40(uint64_t a1)
{
  v2 = sub_22310C3F8();

  return MEMORY[0x2821FE720](a1, v2);
}

id DirectActionResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return DirectActionResultCandidateMessage.init(build:)(v1);
}

id DirectActionResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v79 = a1;
  v80 = v1;
  ObjectType = swift_getObjectType();
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v74 = v3;
  v75 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v73 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - v7;
  v9 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v76 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v77 = v13 - v12;
  v14 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v18 = (v17 - v16);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  v20 = v9;
  __swift_storeEnumTagSinglePayload(v17 - v16 + v19, 1, 1, v9);
  v21 = &v18[v15[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v18[v15[10]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v18[v15[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v18[v15[12]];
  *v24 = 0;
  v24[1] = 0;
  v25 = v15[13];
  *&v18[v25] = 0;
  v79(v18);
  v26 = *v18;
  if (v26 == 15 || !*(v18 + 2))
  {
    goto LABEL_14;
  }

  v79 = *(v18 + 2);
  v72 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v8);
  v27 = v20;
  if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
  {
    sub_2230D69D4(v8);
LABEL_14:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v41 = sub_223200014();
    __swift_project_value_buffer(v41, qword_280FCE830);
    v42 = sub_223200004();
    v43 = sub_223200254();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v81[0] = v45;
      *v44 = 136446210;
      v46 = sub_2230F7898(ObjectType);
      v48 = sub_2231A5D38(v46, v47, v81);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_2230CE000, v42, v43, "Could not build %{public}s: Builder has missing required fields", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x223DD6780](v45, -1, -1);
      MEMORY[0x223DD6780](v44, -1, -1);
    }

LABEL_19:
    sub_22310C37C(v18);
    type metadata accessor for DirectActionResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v71 = v26;
  v29 = v76;
  v28 = v77;
  (*(v76 + 32))(v77, v8, v27);
  v30 = *(v21 + 1);
  if (!v30 || (v31 = *(v22 + 1)) == 0 || (v32 = *(v23 + 1)) == 0)
  {
    (*(v29 + 8))(v28, v27);
    goto LABEL_14;
  }

  v33 = *v21;
  v34 = *v24;
  v35 = v24[1];
  if (!v35)
  {
    goto LABEL_21;
  }

  v81[0] = v34;
  v81[1] = v35;
  v69 = v33;
  v70 = v32;
  ObjectType = v31;
  v68 = v34;

  v36 = v73;
  sub_2231FFC74();
  sub_2230D1D30();
  v67 = sub_2232002E4();
  v38 = v37;
  (*(v74 + 8))(v36, v75);

  v33 = v69;
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v67 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v68;
  if (v39)
  {
    v40 = *&v18[v25];
  }

  else
  {
LABEL_21:
    v40 = *&v18[v25];
    if (!v40 || !*(v40 + 16))
    {
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_280FCA778);
      }

      v63 = sub_223200014();
      __swift_project_value_buffer(v63, qword_280FCE830);
      v64 = sub_223200004();
      v65 = sub_223200254();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_2230CE000, v64, v65, "directAction and requestExecutionParameters are empty, can't create message", v66, 2u);
        MEMORY[0x223DD6780](v66, -1, -1);
      }

      (*(v29 + 8))(v77, v27);
      goto LABEL_19;
    }
  }

  v51 = v80;
  v52 = (v80 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction);
  *v52 = v34;
  v52[1] = v35;
  *(v51 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters) = v40;
  v53 = MEMORY[0x28223BE20](v33);
  *(&v67 - 80) = v71;
  v54 = v79;
  *(&v67 - 9) = v72;
  *(&v67 - 8) = v54;
  v55 = v77;
  *(&v67 - 7) = v77;
  *(&v67 - 6) = v53;
  *(&v67 - 5) = v30;
  *(&v67 - 4) = v56;
  *(&v67 - 3) = v57;
  *(&v67 - 2) = v58;
  *(&v67 - 1) = v59;

  v60 = UserIdAwareResultCandidateMessageBase.init(build:)(sub_2230FB70C);
  v49 = v60;
  if (v60)
  {
    v61 = *(v29 + 8);
    v62 = v60;
    v61(v55, v27);
    sub_22310C37C(v18);
  }

  else
  {
    (*(v29 + 8))(v55, v27);
    sub_22310C37C(v18);
  }

  return v49;
}

void *DirectActionResultCandidateMessage.init(from:)(void *a1)
{
  v2 = sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579E0, &qword_223205AC8);
  OUTLINED_FUNCTION_9();
  v38 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_22310C3F8();
  v15 = v40;
  sub_223200794();
  if (!v15)
  {
    v40 = v2;
    v16 = v38;
    LOBYTE(v41[0]) = 0;
    v17 = sub_223200494();
    if (v18)
    {
      v41[0] = v17;
      v41[1] = v18;
      v34 = v12;
      sub_2231FFC74();
      sub_2230D1D30();
      v35 = sub_2232002E4();
      v36 = v19;
      v12 = v34;
      (*(v37 + 8))(v7, v40);
    }

    else
    {
      v35 = v17;
      v36 = 0;
    }

    v20 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579F0, &qword_223205AD0);
    v42 = 1;
    sub_22310C4F4(&qword_27D0579F8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2232004C4();
    v23 = v41[0];
    v24 = v36;
    if (v36)
    {
      v25 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v25 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        goto LABEL_14;
      }
    }

    if (v41[0])
    {
      if (*(v41[0] + 16))
      {
LABEL_14:
        v26 = v39;
        v27 = (v39 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction);
        *v27 = v35;
        v27[1] = v24;
        *(v26 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters) = v23;
        sub_2230F7158(v13, v41);
        v21 = UserIdAwareResultCandidateMessageBase.init(from:)(v41);
        v28 = OUTLINED_FUNCTION_6_4();
        v29(v28);
        __swift_destroy_boxed_opaque_existential_1(v13);
        return v21;
      }
    }

    v30 = sub_2232003A4();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A00, &qword_223205AD8);
    v40 = v8;
    *(v32 + 24) = &type metadata for DirectActionResultCandidateMessage.CodingKeys;
    *(v32 + 32) = v20;
    *v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A08, &qword_223205AE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_223205AB0;
    *(v33 + 56) = &type metadata for DirectActionResultCandidateMessage.CodingKeys;
    *(v33 + 64) = v20;
    *(v33 + 32) = 0;
    sub_223200394();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84158], v30);
    swift_willThrow();
    (*(v16 + 8))(v12, v40);
  }

  v21 = 0;
  __swift_destroy_boxed_opaque_existential_1(v13);
  type metadata accessor for DirectActionResultCandidateMessage(0);
  swift_deallocPartialClassInstance();
  return v21;
}

uint64_t sub_22310BBEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A10, &qword_223205AE8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310C3F8();
  sub_2232007A4();
  v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction + 8);
  if (!v10 || (v13[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction), v13[1] = v10, v14 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0), sub_2230F994C(), OUTLINED_FUNCTION_3_9(), !v2))
  {
    if ((v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters)) != 0 && !*(v11 + 16) || (v13[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters), v14 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059890, &unk_223205AF0), sub_22310C44C(), OUTLINED_FUNCTION_3_9(), !v2))
    {
      sub_2231EEBE4(a1);
    }
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t DirectActionResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DirectActionResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t DirectActionResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_4() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t DirectActionResultCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t DirectActionResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t DirectActionResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DirectActionResultCandidateMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t DirectActionResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.directAction.getter()
{
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t DirectActionResultCandidateMessage.Builder.directAction.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.requestExecutionParameters.getter()
{
  type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
}

uint64_t DirectActionResultCandidateMessage.Builder.requestExecutionParameters.setter()
{
  v2 = *(OUTLINED_FUNCTION_7_4() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_22310C2B0()
{
}

id DirectActionResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DirectActionResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22310C37C(uint64_t a1)
{
  v2 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22310C3F8()
{
  result = qword_27D0579E8;
  if (!qword_27D0579E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579E8);
  }

  return result;
}

unint64_t sub_22310C44C()
{
  result = qword_280FCA510;
  if (!qword_280FCA510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059890, &unk_223205AF0);
    sub_22310C4F4(&qword_280FCA528, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA510);
  }

  return result;
}

uint64_t sub_22310C4F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0579F0, &qword_223205AD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22310C608(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_22310C728(319);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_22310C728(uint64_t a1)
{
  if (!qword_280FCA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0579F0, &qword_223205AD0);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA520);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DirectActionResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22310C86C()
{
  result = qword_27D057A28;
  if (!qword_27D057A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A28);
  }

  return result;
}

unint64_t sub_22310C8C4()
{
  result = qword_27D057A30;
  if (!qword_27D057A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A30);
  }

  return result;
}

unint64_t sub_22310C91C()
{
  result = qword_27D057A38;
  if (!qword_27D057A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A38);
  }

  return result;
}

uint64_t sub_22310C980(uint64_t a1)
{
  v2 = sub_22310D998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22310C9BC(uint64_t a1)
{
  v2 = sub_22310D998();

  return MEMORY[0x2821FE720](a1, v2);
}

SiriMessageTypes::EndCandidateRequestMessage::EndCandidateRequestReason_optional __swiftcall EndCandidateRequestMessage.EndCandidateRequestReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EndCandidateRequestMessage.EndCandidateRequestReason.rawValue.getter()
{
  result = 0x657461676974696DLL;
  switch(*v0)
  {
    case 1:
      result = 0x65526C65636E6163;
      break;
    case 2:
      result = 0x6D73694469726973;
      break;
    case 3:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22310CB1C@<X0>(uint64_t *a1@<X8>)
{
  result = EndCandidateRequestMessage.EndCandidateRequestReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id EndCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v37 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v12[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v6);
  v16 = &v14[v12[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v12[10];
  v14[v17] = 4;
  a1(v14);
  v18 = *v14;
  if (v18 == 15)
  {
    goto LABEL_8;
  }

  v19 = *(v14 + 2);
  if (!v19)
  {
    goto LABEL_8;
  }

  v36 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_8:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v23 = sub_223200014();
    __swift_project_value_buffer(v23, qword_280FCE830);
    v24 = sub_223200004();
    v25 = sub_223200254();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136446210;
      v28 = sub_2230F7898(ObjectType);
      v30 = sub_2231A5D38(v28, v29, &v39);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2230CE000, v24, v25, "Could not build %{public}s: Builder has missing required fields", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DD6780](v27, -1, -1);
      MEMORY[0x223DD6780](v26, -1, -1);
    }

    sub_22310D91C(v14);
    type metadata accessor for EndCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v37;
  v21 = (*(v37 + 32))(v10, v2, v6);
  if (!*(v16 + 1) || (v22 = v14[v17], v22 == 4))
  {
    (*(v20 + 8))(v10, v6);
    goto LABEL_8;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes26EndCandidateRequestMessage_reason) = v22;
  MEMORY[0x28223BE20](v21);
  *(&v36 - 48) = v18;
  *(&v36 - 5) = v36;
  *(&v36 - 4) = v19;
  *(&v36 - 3) = v10;
  *(&v36 - 2) = v33;
  *(&v36 - 1) = v34;
  v31 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v35 = v31;
  sub_22310D91C(v14);
  if (v31)
  {
  }

  (*(v20 + 8))(v10, v6);
  return v31;
}

void *EndCandidateRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A40, &qword_223205CC8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310D998();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for EndCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22310D9EC();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26EndCandidateRequestMessage_reason) = v9[0];
    sub_2230F7158(a1, v9);
    v6 = RequestMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_22310D308(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A58, &qword_223205CD0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310D998();
  sub_2232007A4();
  sub_22310DA40();
  sub_223200654();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_22310D4CC()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EndCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v7, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v8 = v2;
  v9 = v4;
  MEMORY[0x223DD5AA0](0xD00000000000001ELL, 0x8000000223222230);
  v5 = sub_223200104();
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](15913, 0xE200000000000000);
  return v8;
}

uint64_t EndCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EndCandidateRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t EndCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EndCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t EndCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_10() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t EndCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for EndCandidateRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t EndCandidateRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EndCandidateRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EndCandidateRequestMessage.Builder.reason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EndCandidateRequestMessage.Builder.reason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

id EndCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22310D91C(uint64_t a1)
{
  v2 = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22310D998()
{
  result = qword_27D057A48;
  if (!qword_27D057A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A48);
  }

  return result;
}

unint64_t sub_22310D9EC()
{
  result = qword_27D057A50;
  if (!qword_27D057A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A50);
  }

  return result;
}

unint64_t sub_22310DA40()
{
  result = qword_27D057A60;
  if (!qword_27D057A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A60);
  }

  return result;
}

unint64_t sub_22310DA98()
{
  result = qword_27D057A68;
  if (!qword_27D057A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EndCandidateRequestMessage.EndCandidateRequestReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22310DC68(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_27D057A80, &type metadata for EndCandidateRequestMessage.EndCandidateRequestReason);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for EndCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22310DE18()
{
  result = qword_27D057A88;
  if (!qword_27D057A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A88);
  }

  return result;
}

unint64_t sub_22310DE70()
{
  result = qword_27D057A90;
  if (!qword_27D057A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A90);
  }

  return result;
}

unint64_t sub_22310DEC8()
{
  result = qword_27D057A98;
  if (!qword_27D057A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A98);
  }

  return result;
}

unint64_t sub_22310DF1C()
{
  result = qword_27D057AA0;
  if (!qword_27D057AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057AA0);
  }

  return result;
}

void *EndDictationRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = EndRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndDictationRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndDictationRequestMessage(uint64_t a1)
{
  result = qword_280FCCF20;
  if (!qword_280FCCF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *EndRequestMessageBase.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndRequestMessageBase(uint64_t a1)
{
  result = qword_280FCE5C0;
  if (!qword_280FCE5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *EndSpeechDictationSessionMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndSpeechDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndSpeechDictationSessionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndSpeechDictationSessionMessage(uint64_t a1)
{
  result = qword_280FCC2F8;
  if (!qword_280FCC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *EndUnderstandingDictationSessionMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = EndSpeechDictationSessionMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndUnderstandingDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndUnderstandingDictationSessionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndUnderstandingDictationSessionMessage(uint64_t a1)
{
  result = qword_280FCBD28;
  if (!qword_280FCBD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22310E5B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_22310E5F4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *ExecuteNLOnServerMessage.mostRecentVoiceIdScoreCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard);
  v2 = v1;
  return v1;
}

unint64_t sub_22310E6C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230E8D20(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22310E6F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230E8D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22310E72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230E8D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22310E754(uint64_t a1)
{
  v2 = sub_223110558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22310E790(uint64_t a1)
{
  v2 = sub_223110558();

  return MEMORY[0x2821FE720](a1, v2);
}

id ExecuteNLOnServerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ExecuteNLOnServerMessage.init(build:)(v1);
}

id ExecuteNLOnServerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v55 = a1;
  v56 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47[-v3];
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v51 = v6;
  MEMORY[0x28223BE20](v7);
  v52 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v12 = 15;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v13 = v10[8];
  v53 = v5;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v5);
  v14 = &v12[v10[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v12[v10[10]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v10[11];
  *&v12[v16] = 0;
  v17 = v10[12];
  v12[v17] = 7;
  v18 = v10[13];
  *&v12[v18] = 0;
  v50 = v10[14];
  v12[v50] = 2;
  v19 = v10[15];
  *&v12[v19] = 0;
  v55(v12);
  v20 = *v12;
  if (v20 == 15 || !*(v12 + 2))
  {
    goto LABEL_10;
  }

  v55 = *(v12 + 2);
  v49 = *(v12 + 1);
  sub_2230D1480(&v12[v13], v4);
  v21 = v53;
  if (__swift_getEnumTagSinglePayload(v4, 1, v53) == 1)
  {
    sub_2230D69D4(v4);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v27 = sub_223200004();
    v28 = sub_223200254();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57 = v30;
      *v29 = 136446210;
      v31 = sub_2230F7898(ObjectType);
      v33 = sub_2231A5D38(v31, v32, &v57);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2230CE000, v27, v28, "Could not build %{public}s: Builder has missing required fields", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DD6780](v30, -1, -1);
      MEMORY[0x223DD6780](v29, -1, -1);
    }

    sub_223110448(v12);
    type metadata accessor for ExecuteNLOnServerMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v48 = v20;
  (*(v51 + 32))(v52, v4, v21);
  v22 = *(v14 + 1);
  if (!v22 || !*(v15 + 1) || (v23 = *&v12[v16]) == 0 || v12[v17] == 7)
  {
    v24 = OUTLINED_FUNCTION_7_0();
    v25(v24);
    goto LABEL_10;
  }

  v36 = *v14;
  v37 = *&v12[v18];
  if (!v37)
  {
    sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
    sub_2231104C4();
    v37 = sub_223200064();
  }

  v38 = v56;
  *(v56 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_sharedUserIdToSpeechPackage) = v37;
  *(v38 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_isMuxStateRollback) = v12[v50] & 1;
  *(v38 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard) = *&v12[v19];
  MEMORY[0x28223BE20](v37);
  v47[-80] = v48;
  v39 = v55;
  *&v47[-72] = v49;
  *&v47[-64] = v39;
  v40 = v52;
  *&v47[-56] = v52;
  *&v47[-48] = v36;
  *&v47[-40] = v22;
  *&v47[-32] = v41;
  *&v47[-24] = v42;
  *&v47[-16] = v23;
  v47[-8] = v43;
  v45 = v44;

  v34 = ExecuteNLOnServerMessageBase.init(build:)(sub_223110518);
  v46 = v34;
  sub_223110448(v12);
  if (v34)
  {
  }

  (*(v51 + 8))(v40, v21);
  return v34;
}

uint64_t sub_22310ED84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v18 = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  v19 = v18[6];
  sub_2230D69D4(a1 + v19);
  v20 = sub_2231FFDA4();
  (*(*(v20 - 8) + 16))(a1 + v19, a5, v20);
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v20);
  v21 = (a1 + v18[7]);

  *v21 = a6;
  v21[1] = a7;
  v22 = (a1 + v18[8]);

  *v22 = a8;
  v22[1] = a9;
  v23 = v18[9];

  *(a1 + v23) = a10;
  *(a1 + v18[10]) = a11;
  return result;
}

uint64_t ExecuteNLOnServerMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AA8, &qword_223206158);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223110558();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    v24 = 0;
    sub_223110600(&qword_27D057AB8, sub_2231105AC, sub_2230FB7A0, MEMORY[0x277D83528]);
    sub_223200554();
    v9 = sub_22310F41C(v23, &qword_280FCA3D0, 0x277CEF470, &qword_27D057B00, &unk_2232063A8);

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_sharedUserIdToSpeechPackage) = v9;
    LOBYTE(v23) = 1;
    v10 = sub_223200504();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_isMuxStateRollback) = v10 & 1;
    LOBYTE(v23) = 2;
    if ((sub_2232005A4() & 1) == 0)
    {
      v14 = 0;
LABEL_11:
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard) = v14;
      sub_2230F7158(a1, &v23);
      ExecuteNLOnServerMessageBase.init(from:)(&v23);
      v7 = v15;
      v16 = OUTLINED_FUNCTION_2();
      v17(v16);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v7;
    }

    v24 = 2;
    sub_2230FB7A0();
    sub_223200554();
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    v13 = sub_223200264();
    v14 = v13;
    if (v13)
    {
      v18 = OUTLINED_FUNCTION_7_0();
      sub_2230D94DC(v18, v19);
      goto LABEL_11;
    }

    sub_2230F9E38();
    swift_allocError();
    *v20 = 0xD000000000000033;
    *(v20 + 8) = 0x80000002232223B0;
    *(v20 + 16) = 0;
    swift_willThrow();
    v21 = OUTLINED_FUNCTION_7_0();
    sub_2230D94DC(v21, v22);
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    v7 = 0;
    v6 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v6)
  {
  }

  type metadata accessor for ExecuteNLOnServerMessage(0);
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_22310F41C(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = v5;
  OUTLINED_FUNCTION_1_7();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v50 = v13;

  v14 = 0;
  v45 = MEMORY[0x277D84F98];
  while (1)
  {
    v15 = v14;
    if (!v10)
    {
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          return v45;
        }

        v10 = *(v6 + 8 * v14);
        ++v15;
        if (v10)
        {
          v51 = v7;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      result = sub_2232006E4();
      __break(1u);
      return result;
    }

    v51 = v7;
LABEL_8:
    v16 = (*(v50 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
    v17 = v16[1];
    v47 = *v16;
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, a2, a3);

    v18 = OUTLINED_FUNCTION_5_9();
    sub_223110BA0(v18, v19);
    v20 = sub_223200264();
    v7 = v51;
    if (v51)
    {
      break;
    }

    v10 &= v10 - 1;
    if (v20)
    {
      v42 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v53 = v45;
      v52 = sub_22314C358(v47, v17);
      v23 = *(v45 + 16);
      v46 = v24;
      if (__OFADD__(v23, (v24 & 1) == 0))
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      if (sub_2232003D4())
      {
        v52 = sub_22314C358(v47, v17);
        if ((v46 & 1) != (v25 & 1))
        {
          goto LABEL_25;
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_15:

        v45 = v53;
        v26 = *(v53 + 56);
        v27 = *(v26 + 8 * v52);
        *(v26 + 8 * v52) = v42;

        v28 = OUTLINED_FUNCTION_5_9();
        sub_2230D94DC(v28, v29);
      }

      else
      {
        if (v46)
        {
          goto LABEL_15;
        }

LABEL_17:
        OUTLINED_FUNCTION_6_5(v53 + 8 * (v52 >> 6));
        v32 = (v30 + 16 * v31);
        *v32 = v47;
        v32[1] = v17;
        *(*(v53 + 56) + 8 * v31) = v42;
        v33 = OUTLINED_FUNCTION_5_9();
        sub_2230D94DC(v33, v34);

        v35 = *(v53 + 16);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_24;
        }

        v45 = v53;
        *(v53 + 16) = v37;
      }
    }

    else
    {
      v21 = OUTLINED_FUNCTION_5_9();
      sub_2230D94DC(v21, v22);
    }
  }

  v38 = v45;

  v40 = OUTLINED_FUNCTION_5_9();
  sub_2230D94DC(v40, v41);

  return v38;
}

uint64_t sub_22310F6F4(void *a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AC8, &qword_223206168);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223110558();
  sub_2232007A4();
  v10 = sub_22310FA54();
  if (!v2)
  {
    v24[0] = v10;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_280FCA538, sub_2230D37F0, sub_2230D7754, MEMORY[0x277D83508]);
    sub_223200654();

    LOBYTE(v24[0]) = 1;
    sub_223200604();
    v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard);
    if (!v11)
    {
LABEL_6:
      sub_223111658(a1);
      return (*(v6 + 8))(v9, v4);
    }

    v12 = objc_opt_self();
    v24[0] = 0;
    v13 = v11;
    v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v24];
    v15 = v24[0];
    if (v14)
    {
      v22 = v13;
      v16 = sub_2231FFD24();
      v18 = v17;

      v24[0] = v16;
      v24[1] = v18;
      v23 = 2;
      sub_2230D7754();
      sub_223200654();

      sub_2230D94DC(v16, v18);
      goto LABEL_6;
    }

    v19 = v15;
    sub_2231FFD04();

    swift_willThrow();
  }

  return (*(v6 + 8))(v9, v4);
}

void *sub_22310FA54()
{
  v44[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  v3 = v2 & v1;
  v5 = (v4 + 63) >> 6;
  v41 = v6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v39 = v5;
  v40 = v0;
  if (!v3)
  {
LABEL_2:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_18;
      }

      v3 = *(v0 + 8 * v9);
      ++v7;
      if (v3)
      {
        v7 = v9;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  while (1)
  {
LABEL_6:
    v10 = __clz(__rbit64(v3)) | (v7 << 6);
    v11 = (*(v41 + 48) + 16 * v10);
    v12 = v11[1];
    v43 = *v11;
    v13 = *(*(v41 + 56) + 8 * v10);

    v14 = v13;
    if (!v12)
    {
LABEL_18:

      return v8;
    }

    v15 = v14;
    v16 = objc_opt_self();
    v44[0] = 0;
    v17 = [v16 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v44];

    v18 = v44[0];
    if (!v17)
    {
      v38 = v18;

      sub_2231FFD04();

      swift_willThrow();

      return v8;
    }

    v19 = sub_2231FFD24();
    v21 = v20;

    v42 = v21;
    sub_223110BA0(v19, v21);
    swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v8;
    v22 = sub_22314C358(v43, v12);
    if (__OFADD__(v8[2], (v23 & 1) == 0))
    {
      goto LABEL_22;
    }

    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AE8, &qword_223206398);
    if (sub_2232003D4())
    {
      break;
    }

LABEL_12:
    if (v25)
    {

      v8 = v44[0];
      v28 = (*(v44[0] + 7) + 16 * v24);
      v29 = *v28;
      v30 = v28[1];
      *v28 = v19;
      v28[1] = v42;
      sub_2230D94DC(v29, v30);
      sub_2230D94DC(v19, v42);
    }

    else
    {
      v8 = v44[0];
      OUTLINED_FUNCTION_6_5(v44[0] + 8 * (v24 >> 6));
      v32 = (v31 + 16 * v24);
      *v32 = v43;
      v32[1] = v12;
      v33 = (v8[7] + 16 * v24);
      *v33 = v19;
      v33[1] = v42;
      sub_2230D94DC(v19, v42);
      v34 = v8[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_23;
      }

      v8[2] = v36;
    }

    v3 &= v3 - 1;
    v5 = v39;
    v0 = v40;
    if (!v3)
    {
      goto LABEL_2;
    }
  }

  v26 = sub_22314C358(v43, v12);
  if ((v25 & 1) == (v27 & 1))
  {
    v24 = v26;
    goto LABEL_12;
  }

  result = sub_2232006E4();
  __break(1u);
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ExecuteNLOnServerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecuteNLOnServerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_7() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecuteNLOnServerMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 28));

  return v1;
}

uint64_t ExecuteNLOnServerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 32));

  return v1;
}

uint64_t ExecuteNLOnServerMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.delegatedUserDialogActs.getter()
{
  type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
}

uint64_t ExecuteNLOnServerMessage.Builder.delegatedUserDialogActs.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_7() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.fallbackReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.fallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.sharedUserIdToSpeechPackage.getter()
{
  type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
}

uint64_t ExecuteNLOnServerMessage.Builder.sharedUserIdToSpeechPackage.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_7() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.isMuxStateRollback.setter(char a1)
{
  result = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

void *ExecuteNLOnServerMessage.Builder.mostRecentVoiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 52));
  v2 = v1;
  return v1;
}

void ExecuteNLOnServerMessage.Builder.mostRecentVoiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_7() + 52);

  *(v1 + v2) = v0;
}

void sub_223110384()
{

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard);
}

id ExecuteNLOnServerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecuteNLOnServerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223110448(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231104C4()
{
  result = qword_280FCA750;
  if (!qword_280FCA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA750);
  }

  return result;
}

unint64_t sub_223110558()
{
  result = qword_280FCDA00;
  if (!qword_280FCDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDA00);
  }

  return result;
}

unint64_t sub_2231105AC()
{
  result = qword_27D057AC0;
  if (!qword_27D057AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057AC0);
  }

  return result;
}

uint64_t sub_223110600(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057AB0, &qword_223206160);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223110748(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223110900(319, &qword_280FCA490, &qword_27D057AD0, &qword_223206450);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCA820, &type metadata for ServerFallbackReason);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_223110900(319, &qword_280FCA530, &qword_27D057AD8, &qword_223206240);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_223110954(319);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_223110900(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_223110954(uint64_t a1)
{
  if (!qword_280FCA3C0)
  {
    sub_2230FB7F4(255, &qword_280FCA3C8, 0x277CEF520);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA3C0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ExecuteNLOnServerMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223110A9C()
{
  result = qword_27D057AE0;
  if (!qword_27D057AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057AE0);
  }

  return result;
}

unint64_t sub_223110AF4()
{
  result = qword_280FCD9F0;
  if (!qword_280FCD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD9F0);
  }

  return result;
}

unint64_t sub_223110B4C()
{
  result = qword_280FCD9F8;
  if (!qword_280FCD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD9F8);
  }

  return result;
}

uint64_t sub_223110BA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id ExecuteNLOnServerMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v51 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v49 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v48 = v10 - v9;
  v11 = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v15 = (v14 - v13);
  *v15 = 15;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v16 = v12[8];
  __swift_storeEnumTagSinglePayload(v14 - v13 + v16, 1, 1, v6);
  v17 = &v15[v12[9]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v15[v12[10]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v12[11];
  *&v15[v19] = 0;
  v20 = v12[12];
  v15[v20] = 7;
  a1(v15);
  v21 = *v15;
  if (v21 == 15)
  {
    goto LABEL_10;
  }

  v22 = *(v15 + 2);
  if (!v22)
  {
    goto LABEL_10;
  }

  v47 = *(v15 + 1);
  sub_2230D1480(&v15[v16], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v27 = sub_223200014();
    __swift_project_value_buffer(v27, qword_280FCE830);
    v28 = sub_223200004();
    v29 = sub_223200254();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898(ObjectType);
      v34 = sub_2231A5D38(v32, v33, &v52);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_223112268(v15);
    type metadata accessor for ExecuteNLOnServerMessageBase(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v46 = v22;
  v24 = v48;
  v23 = v49;
  (*(v49 + 32))(v48, v5, v6);
  if (!*(v17 + 1) || !*(v18 + 1) || (v25 = *&v15[v19]) == 0 || (v26 = v15[v20], v26 == 7))
  {
    (*(v23 + 8))(v24, v6);
    goto LABEL_10;
  }

  v37 = v24;
  v38 = v51;
  *(v51 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_delegatedUserDialogActs) = v25;
  *(v38 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_fallbackReason) = v26;
  MEMORY[0x28223BE20](v25);
  *(&v45 - 64) = v21;
  v39 = v46;
  *(&v45 - 7) = v47;
  *(&v45 - 6) = v39;
  *(&v45 - 5) = v37;
  *(&v45 - 4) = v40;
  *(&v45 - 3) = v41;
  *(&v45 - 2) = v42;
  *(&v45 - 1) = v43;

  v35 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v44 = v35;
  sub_223112268(v15);
  if (v35)
  {
  }

  (*(v49 + 8))(v37, v6);
  return v35;
}

void ExecuteNLOnServerMessageBase.init(from:)(void *a1)
{
  v3 = sub_2231FFFA4();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_2();
  v6 = v5 - v4;
  v7 = sub_2231FFE94();
  OUTLINED_FUNCTION_9();
  v47 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B08, &qword_2232063B8);
  OUTLINED_FUNCTION_9();
  v40 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v46 = a1;
  v18 = OUTLINED_FUNCTION_4_8();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_22311231C();
  sub_223200794();
  if (v1)
  {
    v21 = v46;
    goto LABEL_4;
  }

  v43 = v7;
  v44 = v6;
  v45 = v12;
  v20 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  LOBYTE(v51) = 0;
  sub_22311245C(&qword_27D057B18, sub_2230FB7A0);
  sub_223200554();
  v48 = 0;
  v39 = v13;
  v22 = *&v49[0];
  v23 = *(*&v49[0] + 16);
  v21 = v46;
  if (!v23)
  {

    v25 = MEMORY[0x277D84F90];
LABEL_15:
    LOBYTE(v51) = 1;
    sub_2231123E8();
    v33 = v39;
    v34 = v48;
    sub_223200554();
    v35 = v40;
    if (!v34)
    {
      v36 = v42;
      *(v42 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_fallbackReason) = v49[0];
      *(v36 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_delegatedUserDialogActs) = v25;
      sub_2230F7158(v21, v49);
      ResultCandidateRequestMessageBase.init(from:)(v49);
      (*(v35 + 8))(v17, v39);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return;
    }

    (*(v40 + 8))(v17, v33);

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v21);
    type metadata accessor for ExecuteNLOnServerMessageBase(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v38 = v17;
  v51 = MEMORY[0x277D84F90];
  sub_223112370(0, v23, 0);
  v24 = 0;
  v25 = v51;
  v41 = v20 + 32;
  v26 = v22 + 40;
  while (v24 < *(v22 + 16))
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v27 = OUTLINED_FUNCTION_4_8();
    sub_223110BA0(v27, v28);
    sub_2231FFF94();
    sub_223112390();
    v29 = v43;
    OUTLINED_FUNCTION_4_8();
    v30 = v48;
    sub_2231FFFD4();
    v48 = v30;
    if (v30)
    {
      (*(v40 + 8))(v38, v39);

      v21 = v46;
      goto LABEL_4;
    }

    v51 = v25;
    v32 = *(v25 + 16);
    v31 = *(v25 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_223112370(v31 > 1, v32 + 1, 1);
      v25 = v51;
    }

    ++v24;
    *(v25 + 16) = v32 + 1;
    (*(v47 + 32))(v25 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v32, v45, v29);
    v26 += 16;
    if (v23 == v24)
    {

      v21 = v46;
      v17 = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_223111658(void *a1)
{
  v3 = v2;
  v4 = v1;
  v46 = sub_2231FFE94();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B28, &qword_2232063C8);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v41 = &v35 - v16;
  v17 = *(v4 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_delegatedUserDialogActs);
  v18 = *(v17 + 16);
  if (v18)
  {
    v36 = v14;
    v37 = v12;
    v38 = a1;
    v39 = v4;
    v49 = MEMORY[0x277D84F90];
    v40 = v11;
    v42 = v18;
    sub_22311243C(0, v18, 0);
    v19 = v40;
    v20 = 0;
    v21 = v49;
    v44 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v43 = v7 + 16;
    v45 = v7 + 8;
    while (v20 < *(v17 + 16))
    {
      (*(v7 + 16))(v19, v44 + *(v7 + 72) * v20, v46);
      sub_223112390();
      v22 = sub_2231FFFE4();
      if (v3)
      {
        v31 = OUTLINED_FUNCTION_5_5();
        v32(v31);

        return;
      }

      v24 = v22;
      v25 = v23;
      v47 = 0;
      v26 = OUTLINED_FUNCTION_5_5();
      v27(v26);
      v49 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22311243C(v28 > 1, v29 + 1, 1);
        v19 = v40;
        v21 = v49;
      }

      ++v20;
      *(v21 + 16) = v29 + 1;
      v30 = v21 + 16 * v29;
      *(v30 + 32) = v24;
      *(v30 + 40) = v25;
      v3 = v47;
      if (v42 == v20)
      {
        v33 = v21;
        a1 = v38;
        v4 = v39;
        v14 = v36;
        v12 = v37;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
LABEL_11:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22311231C();
    v34 = v41;
    sub_2232007A4();
    v49 = v33;
    v48 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    sub_22311245C(&qword_280FCA4C8, sub_2230D7754);
    sub_223200654();
    if (v3)
    {
      (*(v14 + 8))(v34, v12);
    }

    else
    {

      LOBYTE(v49) = *(v4 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_fallbackReason);
      v48 = 1;
      sub_2231124D0();
      sub_223200654();
      sub_223190B78(a1);
      (*(v14 + 8))(v34, v12);
    }
  }
}

id ExecuteNLOnServerMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ExecuteNLOnServerMessageBase.init(build:)(v1);
}

uint64_t sub_223111AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v16 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  v17 = v16[6];
  sub_2230D69D4(a1 + v17);
  v18 = sub_2231FFDA4();
  (*(*(v18 - 8) + 16))(a1 + v17, a5, v18);
  __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v18);
  v19 = (a1 + v16[7]);

  *v19 = a6;
  v19[1] = a7;
  v20 = (a1 + v16[8]);

  *v20 = a8;
  v20[1] = a9;
  return result;
}

uint64_t sub_223111C54(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223111CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223111C54(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_223111CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230E8F64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223111D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223111C54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223111D58(uint64_t a1)
{
  v2 = sub_22311231C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223111D94(uint64_t a1)
{
  v2 = sub_22311231C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecuteNLOnServerMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecuteNLOnServerMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_11() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecuteNLOnServerMessageBase.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 28));

  return v1;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 32));

  return v1;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.delegatedUserDialogActs.getter()
{
  type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
}

uint64_t ExecuteNLOnServerMessageBase.Builder.delegatedUserDialogActs.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_11() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.fallbackReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.fallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

id ExecuteNLOnServerMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecuteNLOnServerMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223112268(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311231C()
{
  result = qword_280FCD928;
  if (!qword_280FCD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD928);
  }

  return result;
}

unint64_t sub_223112390()
{
  result = qword_280FCE5D8;
  if (!qword_280FCE5D8)
  {
    sub_2231FFE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE5D8);
  }

  return result;
}

unint64_t sub_2231123E8()
{
  result = qword_27D057B20;
  if (!qword_27D057B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B20);
  }

  return result;
}

uint64_t sub_22311245C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057B10, &qword_2232063C0);
    a2();
    OUTLINED_FUNCTION_4_8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231124D0()
{
  result = qword_280FCA830;
  if (!qword_280FCA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA830);
  }

  return result;
}

uint64_t sub_2231125D0(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2231126F4(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCA820, &type metadata for ServerFallbackReason);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_2231126F4(uint64_t a1)
{
  if (!qword_280FCA490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057AD0, &qword_223206450);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA490);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ExecuteNLOnServerMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223112838()
{
  result = qword_27D057B30;
  if (!qword_27D057B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B30);
  }

  return result;
}

unint64_t sub_223112890()
{
  result = qword_280FCD918;
  if (!qword_280FCD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD918);
  }

  return result;
}

unint64_t sub_2231128E8()
{
  result = qword_280FCD920;
  if (!qword_280FCD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD920);
  }

  return result;
}

uint64_t sub_2231129C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67756C50776F6C66 && a2 == 0xEC00000064496E69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223112A8C(char a1)
{
  if (a1)
  {
    return 0x67756C50776F6C66;
  }

  else
  {
    return 0x6449756374;
  }
}

uint64_t sub_223112AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231129C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223112AF8(uint64_t a1)
{
  v2 = sub_223113F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223112B34(uint64_t a1)
{
  v2 = sub_223113F14();

  return MEMORY[0x2821FE720](a1, v2);
}

id ExecutionFinalizedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ExecutionFinalizedMessage.init(build:)(v1);
}

id ExecutionFinalizedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v71 = a1;
  v72 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v67 = v6;
  MEMORY[0x28223BE20](v7);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 15;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v13 = v10[8];
  v69 = v5;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v5);
  v14 = &v12[v10[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v12[v10[10]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[v10[11]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v12[v10[12]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v12[v10[13]];
  *v18 = 0;
  v18[1] = 0;
  v71(v12);
  v19 = *v12;
  if (v19 == 15)
  {
    goto LABEL_13;
  }

  v20 = *(v12 + 2);
  if (!v20)
  {
    goto LABEL_13;
  }

  v71 = *(v12 + 1);
  sub_2230D1480(&v12[v13], v4);
  v21 = v69;
  if (__swift_getEnumTagSinglePayload(v4, 1, v69) == 1)
  {
    sub_2230D69D4(v4);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v35 = sub_223200014();
    __swift_project_value_buffer(v35, qword_280FCE830);
    v36 = sub_223200004();
    v37 = sub_223200254();
    v38 = os_log_type_enabled(v36, v37);
    v39 = ObjectType;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v73 = v41;
      *v40 = 136446210;
      v42 = sub_2230F7898(v39);
      v44 = sub_2231A5D38(v42, v43, &v73);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2230CE000, v36, v37, "Could not build %{public}s: Builder has missing required fields", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x223DD6780](v41, -1, -1);
      MEMORY[0x223DD6780](v40, -1, -1);
    }

    sub_223113E78(v12);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v20;
  v66 = v19;
  v22 = v67;
  v23 = v68;
  (*(v67 + 32))(v68, v4, v21);
  v24 = *(v14 + 1);
  if (!v24)
  {
    (*(v22 + 8))(v23, v21);
    goto LABEL_13;
  }

  if (!*(v15 + 1) || (v25 = *(v16 + 1)) == 0 || (v26 = *(v17 + 1)) == 0)
  {
    (*(v22 + 8))(v68, v21);
    goto LABEL_13;
  }

  ObjectType = *(v15 + 1);
  v27 = *v14;
  v28 = *v15;
  v62 = *v16;
  v63 = *v17;
  v64 = v28;
  v29 = v18[1];
  if (v29)
  {
    v30 = *v18;
    v31 = v25;

    v33 = v26;
    v34 = v65;
  }

  else
  {
    v47 = qword_280FCA778;
    v61 = v25;

    v48 = v26;

    v34 = v65;
    if (v47 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v49 = sub_223200014();
    __swift_project_value_buffer(v49, qword_280FCE830);
    v50 = sub_223200004();
    v51 = sub_223200254();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2230CE000, v50, v51, "Warning: ExecutionFinalizedMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v52, 2u);
      MEMORY[0x223DD6780](v52, -1, -1);
    }

    v29 = 0x80000002232216F0;
    v30 = 0xD000000000000024;
    v31 = v61;
    v33 = v48;
  }

  v53 = v72;
  v54 = (v72 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId);
  v55 = v63;
  *v54 = v62;
  v54[1] = v31;
  v56 = (v53 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId);
  *v56 = v55;
  v56[1] = v33;
  MEMORY[0x28223BE20](v32);
  *(&v60 - 80) = v66;
  *(&v60 - 9) = v71;
  *(&v60 - 8) = v34;
  v57 = v68;
  *(&v60 - 7) = v68;
  *(&v60 - 6) = v27;
  v58 = v64;
  *(&v60 - 5) = v24;
  *(&v60 - 4) = v58;
  *(&v60 - 3) = ObjectType;
  *(&v60 - 2) = v30;
  *(&v60 - 1) = v29;
  v45 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);

  v59 = v45;
  sub_223113E78(v12);
  if (v45)
  {
  }

  (*(v67 + 8))(v57, v21);
  return v45;
}

uint64_t sub_2231131BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v18 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  v19 = v18[6];
  sub_2230D69D4(a1 + v19);
  v20 = sub_2231FFDA4();
  (*(*(v20 - 8) + 16))(a1 + v19, a5, v20);
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v20);
  v21 = (a1 + v18[7]);

  *v21 = a6;
  v21[1] = a7;
  v22 = (a1 + v18[9]);

  *v22 = a8;
  v22[1] = a9;
  v23 = (a1 + v18[8]);

  *v23 = a10;
  v23[1] = a11;
  return result;
}

void *ExecutionFinalizedMessage.init(from:)(void *a1)
{
  v16[6] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B38, &qword_2232065A8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223113F14();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_3();
    v7 = v6;
    LOBYTE(v16[0]) = 0;
    v8 = OUTLINED_FUNCTION_9_3();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId);
    *v10 = v5;
    v10[1] = v7;
    v11 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId);
    *v11 = v8;
    v11[1] = v12;
    sub_2230F7158(a1, v16);
    v13 = TRPCandidateRequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_6_6();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t ExecutionFinalizedMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B40, &qword_2232065B0);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223113F14();
  sub_2232007A4();
  v12 = 1;
  sub_2232005F4();
  if (!v1)
  {
    v11 = 0;
    sub_2232005F4();
    sub_2231E5494(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t ExecutionFinalizedMessage.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_description);
  v4 = sub_2232000C4();
  v6 = v5;

  v9 = v4;
  v10 = v6;
  MEMORY[0x223DD5AA0](0x64497563743C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000012, 0x80000002232224D0);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t ExecutionFinalizedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecutionFinalizedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecutionFinalizedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_5() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecutionFinalizedMessage.Builder.requestId.getter()
{
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.tcuId.getter()
{
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.flowPluginId.getter()
{
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.flowPluginId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExecutionFinalizedMessage.Builder(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ExecutionFinalizedMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_223113DA4()
{
}

id ExecutionFinalizedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223113E78(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223113F14()
{
  result = qword_280FCD298;
  if (!qword_280FCD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD298);
  }

  return result;
}

uint64_t sub_223114028(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for ExecutionFinalizedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223114214()
{
  result = qword_27D057B48;
  if (!qword_27D057B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B48);
  }

  return result;
}

unint64_t sub_22311426C()
{
  result = qword_280FCD288;
  if (!qword_280FCD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD288);
  }

  return result;
}

unint64_t sub_2231142C4()
{
  result = qword_280FCD290;
  if (!qword_280FCD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD290);
  }

  return result;
}

uint64_t ExecutionSystemSwitchedMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
  a1[1] = v2;
}

id ExecutionSystemSwitchedMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v5[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = v5[9];
  v7[v10] = 2;
  v11 = &v7[v5[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1(v7);
  v12 = v7[v10];
  if (v12 == 2)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v13 = sub_223200014();
    __swift_project_value_buffer(v13, qword_280FCE830);
    v14 = sub_223200004();
    v15 = sub_223200254();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136446210;
    v18 = sub_2230F7898(ObjectType);
    v20 = sub_2231A5D38(v18, v19, &v31);

    *(v16 + 4) = v20;
    v21 = "Could not build %{public}s: switchType parameter is missing from Builder";
LABEL_12:
    _os_log_impl(&dword_2230CE000, v14, v15, v21, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223DD6780](v17, -1, -1);
    MEMORY[0x223DD6780](v16, -1, -1);
LABEL_13:

    sub_223115B3C(v7);
    type metadata accessor for ExecutionSystemSwitchedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v22 = *(v11 + 1);
  if (!v22)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v25 = sub_223200014();
    __swift_project_value_buffer(v25, qword_280FCE830);
    v14 = sub_223200004();
    v15 = sub_223200254();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136446210;
    v26 = sub_2230F7898(ObjectType);
    v28 = sub_2231A5D38(v26, v27, &v31);

    *(v16 + 4) = v28;
    v21 = "Could not build %{public}s: userId parameter is missing from Builder";
    goto LABEL_12;
  }

  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_switchType) = v12 & 1;
  v23 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
  *v23 = *v11;
  v23[1] = v22;
  MEMORY[0x28223BE20](v22);
  *(&v30 - 2) = v7;

  v24 = SessionMessageBase.init(build:)(sub_223115BB8);
  sub_223115B3C(v7);
  return v24;
}

uint64_t sub_22311476C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 24);
  v7 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v6, a1 + v7);
}

void ExecutionSystemSwitchedMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B50, &qword_223206780);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223115BC0();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for ExecutionSystemSwitchedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223115C14();
    OUTLINED_FUNCTION_5_6(&type metadata for ExecutionSystemSwitchedMessage.SwitchType);
    *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_switchType) = v9[0];
    OUTLINED_FUNCTION_7_6();
    sub_2231105AC();
    OUTLINED_FUNCTION_5_6(&type metadata for UserID);
    v5 = v9[1];
    v6 = (v0 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
    *v6 = v9[0];
    v6[1] = v5;
    sub_2230F7158(v3, v9);
    SessionMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223114A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B68, &unk_223206788);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  v33 = v35 - v32;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_223115BC0();
  sub_2232007A4();
  LOBYTE(v35[0]) = *(v23 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_switchType);
  sub_223115C68();
  sub_223200654();
  if (!v24)
  {
    v34 = *(v23 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId + 8);
    v35[0] = *(v25 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
    v35[1] = v34;
    OUTLINED_FUNCTION_7_6();
    sub_2230D37F0();

    sub_223200654();

    sub_2230D46B0(v27);
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_9_0();
}

uint64_t ExecutionSystemSwitchedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecutionSystemSwitchedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_10_3() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecutionSystemSwitchedMessage.Builder.switchType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.switchType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 32));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_223114F24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002232225F0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000223222610 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223115030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223114F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223115058(uint64_t a1)
{
  v2 = sub_223115CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223115094(uint64_t a1)
{
  v2 = sub_223115CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231150D0(uint64_t a1)
{
  v2 = sub_223115D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311510C(uint64_t a1)
{
  v2 = sub_223115D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223115148(uint64_t a1)
{
  v2 = sub_223115D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223115184(uint64_t a1)
{
  v2 = sub_223115D64();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExecutionSystemSwitchedMessage.SwitchType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B78, &qword_223206798);
  OUTLINED_FUNCTION_9();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  v46 = &v44 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B80, &qword_2232067A0);
  OUTLINED_FUNCTION_9();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B88, &qword_2232067A8);
  OUTLINED_FUNCTION_9();
  v37 = v36;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_223115CBC();
  sub_2232007A4();
  v42 = (v37 + 8);
  if (v41)
  {
    OUTLINED_FUNCTION_7_6();
    sub_223115D10();
    v43 = v46;
    sub_2232005B4();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_223115D64();
    sub_2232005B4();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  OUTLINED_FUNCTION_9_0();
}

uint64_t ExecutionSystemSwitchedMessage.SwitchType.hashValue.getter()
{
  v1 = *v0;
  sub_223200744();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void ExecutionSystemSwitchedMessage.SwitchType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  a22 = v24;
  a23 = v25;
  v71 = v23;
  v27 = v26;
  v68 = v28;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057BA8, &qword_2232067B0);
  OUTLINED_FUNCTION_9();
  v67 = v29;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  v32 = v63 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057BB0, &qword_2232067B8);
  OUTLINED_FUNCTION_9();
  v66 = v34;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  v37 = v63 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057BB8, &unk_2232067C0);
  OUTLINED_FUNCTION_9();
  v69 = v39;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v40);
  v42 = v63 - v41;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_223115CBC();
  v43 = v71;
  sub_223200794();
  if (v43)
  {
    goto LABEL_10;
  }

  v64 = v33;
  v65 = v37;
  v71 = v27;
  v44 = v70;
  v45 = sub_223200594();
  sub_2230E0B80(v45, 0);
  if (v48 == v49 >> 1)
  {
    v70 = v46;
LABEL_9:
    v59 = sub_2232003A4();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v61 = &type metadata for ExecutionSystemSwitchedMessage.SwitchType;
    sub_223200484();
    sub_223200394();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v42, v38);
    v27 = v71;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_11:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v63[1] = 0;
  if (v48 < (v49 >> 1))
  {
    v50 = *(v47 + v48);
    v51 = sub_2230E0B40(v48 + 1);
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    if (v53 == v55 >> 1)
    {
      if (v50)
      {
        OUTLINED_FUNCTION_7_6();
        sub_223115D10();
        v56 = v32;
        OUTLINED_FUNCTION_3(&type metadata for ExecutionSystemSwitchedMessage.SwitchType.IntelligenceFlowToSiriXCodingKeys, &a13);
        v57 = v68;
        v58 = v69;
        swift_unknownObjectRelease();
        (*(v67 + 8))(v56, v44);
      }

      else
      {
        a12 = 0;
        sub_223115D64();
        v62 = v65;
        OUTLINED_FUNCTION_3(&type metadata for ExecutionSystemSwitchedMessage.SwitchType.SiriXToIntelligenceFlowCodingKeys, &a12);
        v57 = v68;
        v58 = v69;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v62, v64);
      }

      (*(v58 + 8))(v42, v53);
      *v57 = v50;
      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_11;
    }

    v70 = v51;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2231158FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2231159B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2231158FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231159E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230E9254(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223115A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231158FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223115A3C(uint64_t a1)
{
  v2 = sub_223115BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223115A78(uint64_t a1)
{
  v2 = sub_223115BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

id ExecutionSystemSwitchedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionSystemSwitchedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223115B3C(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223115BC0()
{
  result = qword_27D057B58;
  if (!qword_27D057B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B58);
  }

  return result;
}

unint64_t sub_223115C14()
{
  result = qword_27D057B60;
  if (!qword_27D057B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B60);
  }

  return result;
}

unint64_t sub_223115C68()
{
  result = qword_27D057B70;
  if (!qword_27D057B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B70);
  }

  return result;
}

unint64_t sub_223115CBC()
{
  result = qword_27D057B90;
  if (!qword_27D057B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B90);
  }

  return result;
}

unint64_t sub_223115D10()
{
  result = qword_27D057B98;
  if (!qword_27D057B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B98);
  }

  return result;
}

unint64_t sub_223115D64()
{
  result = qword_27D057BA0;
  if (!qword_27D057BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BA0);
  }

  return result;
}

unint64_t sub_223115DBC()
{
  result = qword_27D057BC0;
  if (!qword_27D057BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BC0);
  }

  return result;
}

void sub_223115EB8(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  if (v1 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v3 <= 0x3F)
      {
        sub_2230D525C(319, &qword_27D057BD8, &type metadata for ExecutionSystemSwitchedMessage.SwitchType);
        if (v4 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *sub_223116004(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231160E4()
{
  result = qword_27D057BE0;
  if (!qword_27D057BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BE0);
  }

  return result;
}

unint64_t sub_22311613C()
{
  result = qword_27D057BE8;
  if (!qword_27D057BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BE8);
  }

  return result;
}

unint64_t sub_223116194()
{
  result = qword_27D057BF0;
  if (!qword_27D057BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BF0);
  }

  return result;
}

unint64_t sub_2231161EC()
{
  result = qword_27D057BF8;
  if (!qword_27D057BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BF8);
  }

  return result;
}

unint64_t sub_223116244()
{
  result = qword_27D057C00;
  if (!qword_27D057C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C00);
  }

  return result;
}

unint64_t sub_22311629C()
{
  result = qword_27D057C08;
  if (!qword_27D057C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C08);
  }

  return result;
}

unint64_t sub_2231162F4()
{
  result = qword_27D057C10;
  if (!qword_27D057C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C10);
  }

  return result;
}

unint64_t sub_22311634C()
{
  result = qword_27D057C18;
  if (!qword_27D057C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C18);
  }

  return result;
}

unint64_t sub_2231163A4()
{
  result = qword_27D057C20;
  if (!qword_27D057C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C20);
  }

  return result;
}

unint64_t sub_2231163FC()
{
  result = qword_27D057C28;
  if (!qword_27D057C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C28);
  }

  return result;
}

uint64_t sub_223116490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002232226A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223116568(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6F54686372616573;
  }
}

uint64_t sub_2231165B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223116490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231165D8(uint64_t a1)
{
  v2 = sub_2231169B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223116614(uint64_t a1)
{
  v2 = sub_2231169B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223116650(uint64_t a1)
{
  v2 = sub_223116A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311668C(uint64_t a1)
{
  v2 = sub_223116A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231166C8(uint64_t a1)
{
  v2 = sub_223116A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223116704(uint64_t a1)
{
  v2 = sub_223116A58();

  return MEMORY[0x2821FE720](a1, v2);
}

void FallbackToIFRequestedMessage.PrescribedTool.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C30, &qword_223206D20);
  OUTLINED_FUNCTION_9();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  v46 = &v44 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C38, &qword_223206D28);
  OUTLINED_FUNCTION_9();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C40, &qword_223206D30);
  OUTLINED_FUNCTION_9();
  v37 = v36;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2231169B0();
  sub_2232007A4();
  v42 = (v37 + 8);
  if (v41)
  {
    sub_223116A04();
    v43 = v46;
    sub_2232005B4();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_223116A58();
    sub_2232005B4();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231169B0()
{
  result = qword_27D057C48;
  if (!qword_27D057C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C48);
  }

  return result;
}

unint64_t sub_223116A04()
{
  result = qword_27D057C50;
  if (!qword_27D057C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C50);
  }

  return result;
}

unint64_t sub_223116A58()
{
  result = qword_27D057C58;
  if (!qword_27D057C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C58);
  }

  return result;
}

uint64_t FallbackToIFRequestedMessage.PrescribedTool.hashValue.getter()
{
  v1 = *v0;
  sub_223200744();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void FallbackToIFRequestedMessage.PrescribedTool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  a22 = v25;
  a23 = v26;
  v70 = v23;
  v28 = v27;
  v67 = v29;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C60, &qword_223206D38);
  OUTLINED_FUNCTION_9();
  v66 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  v33 = v62 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C68, &qword_223206D40);
  OUTLINED_FUNCTION_9();
  v65 = v35;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C70, &unk_223206D48);
  OUTLINED_FUNCTION_9();
  v68 = v38;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v39);
  v41 = v62 - v40;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2231169B0();
  v42 = v70;
  sub_223200794();
  if (v42)
  {
    goto LABEL_10;
  }

  v63 = v34;
  v64 = v24;
  v70 = v28;
  v43 = v69;
  v44 = sub_223200594();
  sub_2230E0B80(v44, 0);
  if (v47 == v48 >> 1)
  {
    v69 = v45;
LABEL_9:
    v58 = sub_2232003A4();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v60 = &type metadata for FallbackToIFRequestedMessage.PrescribedTool;
    sub_223200484();
    sub_223200394();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v41, v37);
    v28 = v70;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v62[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    v50 = sub_2230E0B40(v47 + 1);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v49)
      {
        a13 = 1;
        sub_223116A04();
        v55 = v33;
        OUTLINED_FUNCTION_3(&type metadata for FallbackToIFRequestedMessage.PrescribedTool.GenerateKnowledgeIntentToolCodingKeys, &a13);
        v56 = v67;
        v57 = v68;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v55, v43);
      }

      else
      {
        a12 = 0;
        sub_223116A58();
        v61 = v64;
        OUTLINED_FUNCTION_3(&type metadata for FallbackToIFRequestedMessage.PrescribedTool.SearchToolCodingKeys, &a12);
        v56 = v67;
        v57 = v68;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v61, v63);
      }

      (*(v57 + 8))(v41, v52);
      *v56 = v49;
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_11;
    }

    v69 = v50;
    goto LABEL_9;
  }

  __break(1u);
}

BOOL sub_223116FE8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230E93E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22311701C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223116F78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_223117048@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230E93E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223117074(uint64_t a1)
{
  v2 = sub_223117A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231170B0(uint64_t a1)
{
  v2 = sub_223117A74();

  return MEMORY[0x2821FE720](a1, v2);
}

id FallbackToIFRequestedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = 15;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v7 = v4[8];
  v8 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v6[v7], 1, 1, v8);
  v9 = &v6[v4[9]];
  *v9 = 0;
  v9[1] = 0;
  v10 = v4[10];
  v6[v10] = 2;
  a1(v6);
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28FallbackToIFRequestedMessage_prescribedTool) = v6[v10];
  v14 = v6;
  v11 = RequestMessageBase.init(build:)(sub_223117A10);
  sub_223117A18(v6);
  return v11;
}

uint64_t sub_22311724C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void FallbackToIFRequestedMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C78, &qword_223206D58);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223117A74();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for FallbackToIFRequestedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223117AE8();
    sub_2232004C4();
    *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28FallbackToIFRequestedMessage_prescribedTool) = v7[0];
    sub_2230F7158(v3, v7);
    RequestMessageBase.init(from:)(v7);
    v5 = OUTLINED_FUNCTION_2();
    v6(v5);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223117540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C90, &qword_223206D60);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_223117A74();
  sub_2232007A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C98, &unk_223206D68);
  sub_223117B3C();
  sub_223200654();
  if (!v23)
  {
    sub_2230D77A8(v26);
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_9_0();
}

uint64_t FallbackToIFRequestedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FallbackToIFRequestedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FallbackToIFRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackToIFRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FallbackToIFRequestedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_7() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FallbackToIFRequestedMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for FallbackToIFRequestedMessage.Builder(0) + 28));

  return v1;
}

uint64_t FallbackToIFRequestedMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FallbackToIFRequestedMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FallbackToIFRequestedMessage.Builder.prescribedTool.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FallbackToIFRequestedMessage.Builder.prescribedTool.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

id FallbackToIFRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FallbackToIFRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223117A18(uint64_t a1)
{
  v2 = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223117A74()
{
  result = qword_27D057C80;
  if (!qword_27D057C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C80);
  }

  return result;
}

unint64_t sub_223117AE8()
{
  result = qword_27D057C88;
  if (!qword_27D057C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C88);
  }

  return result;
}

unint64_t sub_223117B3C()
{
  result = qword_27D057CA0;
  if (!qword_27D057CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057C98, &unk_223206D68);
    sub_223117BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CA0);
  }

  return result;
}

unint64_t sub_223117BC0()
{
  result = qword_27D057CA8;
  if (!qword_27D057CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CA8);
  }

  return result;
}

unint64_t sub_223117C18()
{
  result = qword_27D057CB0;
  if (!qword_27D057CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CB0);
  }

  return result;
}

uint64_t sub_223117D1C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_27D057CC8, &type metadata for FallbackToIFRequestedMessage.PrescribedTool);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for FallbackToIFRequestedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_223117EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223117FC8()
{
  result = qword_27D057CD0;
  if (!qword_27D057CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CD0);
  }

  return result;
}

unint64_t sub_223118020()
{
  result = qword_27D057CD8;
  if (!qword_27D057CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CD8);
  }

  return result;
}

unint64_t sub_223118078()
{
  result = qword_27D057CE0;
  if (!qword_27D057CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CE0);
  }

  return result;
}

unint64_t sub_2231180D0()
{
  result = qword_27D057CE8;
  if (!qword_27D057CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CE8);
  }

  return result;
}

unint64_t sub_223118128()
{
  result = qword_27D057CF0;
  if (!qword_27D057CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CF0);
  }

  return result;
}

unint64_t sub_223118180()
{
  result = qword_27D057CF8;
  if (!qword_27D057CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CF8);
  }

  return result;
}

unint64_t sub_2231181D8()
{
  result = qword_27D057D00;
  if (!qword_27D057D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D00);
  }

  return result;
}

unint64_t sub_223118230()
{
  result = qword_27D057D08;
  if (!qword_27D057D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D08);
  }

  return result;
}

unint64_t sub_223118288()
{
  result = qword_27D057D10;
  if (!qword_27D057D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D10);
  }

  return result;
}

unint64_t sub_2231182E0()
{
  result = qword_27D057D18;
  if (!qword_27D057D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D18);
  }

  return result;
}

uint64_t FallbackToPommesMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
  a1[1] = v2;
}

uint64_t FallbackToPommesMessage.pommesCandidateId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId;
  sub_2231FFF14();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_2231183F4()
{
  v1 = sub_2231FFF14();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId, v1);
  v7 = OUTLINED_FUNCTION_13();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D56618])
  {
    v10 = OUTLINED_FUNCTION_13();
    v11(v10);
  }

  else if (v9 == *MEMORY[0x277D56620])
  {
    v12 = OUTLINED_FUNCTION_13();
    v13(v12);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v14 = sub_223200014();
    __swift_project_value_buffer(v14, qword_280FCE830);
    v15 = sub_223200004();
    v16 = sub_223200254();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2230CE000, v15, v16, "No resultCandidateId for unknown pommesCandidateId", v17, 2u);
      OUTLINED_FUNCTION_14();
    }

    v18 = OUTLINED_FUNCTION_13();
    v19(v18);
  }

  return OUTLINED_FUNCTION_2_1();
}

id FallbackToPommesMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_13();
  return FallbackToPommesMessage.init(build:)(v2, v3);
}

id FallbackToPommesMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v97 = a2;
  v98 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_2231FFF14();
  OUTLINED_FUNCTION_9();
  v90 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v87 = v5;
  MEMORY[0x28223BE20](v6);
  v86 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D20, &unk_2232072B0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_15();
  v89 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v88 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v92 = (&v80 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v80 - v15;
  v17 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v93 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  v94 = v21 - v20;
  v22 = type metadata accessor for FallbackToPommesMessage.Builder(0);
  v23 = (v22 - 8);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v26 = (v25 - v24);
  *v26 = 15;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  v27 = v23[8];
  v95 = v17;
  __swift_storeEnumTagSinglePayload(v25 - v24 + v27, 1, 1, v17);
  v28 = &v26[v23[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v26[v23[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v26[v23[11]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = v23[12];
  *&v26[v31] = 0;
  v32 = v23[13];
  v26[v32] = 7;
  v33 = v23[14];
  v91 = v2;
  __swift_storeEnumTagSinglePayload(&v26[v33], 1, 1, v2);
  v98(v26);
  v34 = *v26;
  if (v34 == 15 || !*(v26 + 2))
  {
    goto LABEL_10;
  }

  v97 = *(v26 + 2);
  LODWORD(v98) = v34;
  v85 = *(v26 + 1);
  sub_2230D3008(&v26[v27], v16, &qword_27D0575C0, &qword_2232035E0);
  v35 = v95;
  if (__swift_getEnumTagSinglePayload(v16, 1, v95) == 1)
  {
    sub_2230D40E0(v16, &qword_27D0575C0, &qword_2232035E0);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v40 = sub_223200014();
    __swift_project_value_buffer(v40, qword_280FCE830);
    v41 = sub_223200004();
    v42 = sub_223200254();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v100[0] = v44;
      *v43 = 136446210;
      v45 = sub_2230F7898(ObjectType);
      v47 = sub_2231A5D38(v45, v46, v100);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2230CE000, v41, v42, "Could not build %{public}s: Builder has missing required fields", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_22311A50C(v26);
LABEL_15:
    type metadata accessor for FallbackToPommesMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v36 = v93;
  (*(v93 + 32))(v94, v16, v35);
  v37 = *(v28 + 1);
  if (!v37 || (v38 = *(v30 + 1)) == 0 || (v39 = *&v26[v31]) == 0 || v26[v32] == 7)
  {
    (*(v36 + 8))(v94, v35);
    goto LABEL_10;
  }

  v81 = v26[v32];
  v84 = v38;
  v82 = *v28;
  v80 = *v30;
  v50 = v88;
  sub_2230D3008(&v26[v33], v88, &qword_27D057D20, &unk_2232072B0);
  v51 = v91;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v91);
  v83 = v39;
  if (EnumTagSinglePayload != 1)
  {
    v55 = v90;
    v56 = *(v90 + 32);
    v57 = v86;
    v56(v86, v50, v51);
    v54 = v92;
    v56(v92, v57, v51);
    OUTLINED_FUNCTION_19();

    goto LABEL_21;
  }

  sub_2230D40E0(v50, &qword_27D057D20, &unk_2232072B0);
  v53 = *(v29 + 1);
  v54 = v92;
  v55 = v90;
  if (v53)
  {
    *v92 = *v29;
    v54[1] = v53;
    (*(v55 + 104))(v54, *MEMORY[0x277D56618], v51);
    OUTLINED_FUNCTION_19();
LABEL_21:

    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v92, 1, 1, v51);
LABEL_22:
  v58 = v94;
  v59 = v89;
  sub_2230D3008(v54, v89, &qword_27D057D20, &unk_2232072B0);
  if (__swift_getEnumTagSinglePayload(v59, 1, v51) == 1)
  {

    sub_2230D40E0(v59, &qword_27D057D20, &unk_2232072B0);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v60 = sub_223200014();
    __swift_project_value_buffer(v60, qword_280FCE830);
    v61 = sub_223200004();
    v62 = sub_223200254();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = v54;
      v65 = swift_slowAlloc();
      v100[0] = v65;
      *v63 = 136446210;
      v66 = sub_2230F7898(ObjectType);
      v68 = sub_2231A5D38(v66, v67, v100);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_2230CE000, v61, v62, "Could not build %{public}s: Builder missing pommesCandidateId or resultCandidateId", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();

      v69 = v64;
    }

    else
    {

      v69 = v54;
    }

    sub_2230D40E0(v69, &qword_27D057D20, &unk_2232072B0);
    sub_22311A50C(v26);
    (*(v93 + 8))(v58, v95);
    goto LABEL_15;
  }

  v70 = v87;
  (*(v55 + 32))(v87, v59, v51);
  v71 = v99;
  v72 = (v99 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
  v73 = v83;
  v74 = v84;
  *v72 = v80;
  v72[1] = v74;
  *(v71 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs) = v73;
  *(v71 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_fallbackReason) = v81;
  v75 = (*(v55 + 16))(v71 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId, v70, v51);
  MEMORY[0x28223BE20](v75);
  *(&v80 - 48) = v98;
  v76 = v97;
  *(&v80 - 5) = v85;
  *(&v80 - 4) = v76;
  v77 = v82;
  *(&v80 - 3) = v78;
  *(&v80 - 2) = v77;
  *(&v80 - 1) = v37;
  v48 = RequestMessageBase.init(build:)(sub_22311A588);
  (*(v55 + 8))(v70, v51);
  sub_2230D40E0(v54, &qword_27D057D20, &unk_2232072B0);
  v79 = v48;
  sub_22311A50C(v26);
  if (v48)
  {
  }

  (*(v36 + 8))(v94, v95);
  return v48;
}

uint64_t sub_223118F90(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v13 = type metadata accessor for RequestMessageBase.Builder(0);
  v14 = *(v13 + 24);
  sub_2230D40E0(a1 + v14, &qword_27D0575C0, &qword_2232035E0);
  v15 = sub_2231FFDA4();
  (*(*(v15 - 8) + 16))(a1 + v14, a5, v15);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v15);
  v16 = (a1 + *(v13 + 28));

  *v16 = a6;
  v16[1] = a7;
  return result;
}

void FallbackToPommesMessage.init(from:)(void *a1)
{
  sub_2231FFF14();
  OUTLINED_FUNCTION_9();
  v50 = v2;
  v51 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v49 = v5 - v4;
  v6 = sub_2231FFFA4();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v10 = sub_2231FFE94();
  OUTLINED_FUNCTION_9();
  v58 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D28, &unk_2232072C0);
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v48 - v20;
  v22 = a1[3];
  v57 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_22311A59C();
  v24 = v59;
  sub_223200794();
  if (v24)
  {
    OUTLINED_FUNCTION_11_2();
    __swift_destroy_boxed_opaque_existential_1(v57);
    if ((v15 & 1) == 0)
    {
      if (v23)
      {
      }

      if (v18)
      {
      }

      type metadata accessor for FallbackToPommesMessage(0);
      swift_deallocPartialClassInstance();
    }
  }

  else
  {
    v55 = v9;
    v56 = v15;
    v48[2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    LOBYTE(v62) = 1;
    sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0, MEMORY[0x277D83978]);
    sub_223200554();
    v25 = *&v60[0];
    v26 = *(*&v60[0] + 16);
    if (v26)
    {
      v48[0] = v21;
      v48[1] = v16;
      v62 = MEMORY[0x277D84F90];
      sub_223112370(0, v26, 0);
      v27 = 0;
      v59 = v62;
      v52 = v58 + 32;
      v53 = v25;
      v28 = (v25 + 40);
      while (v27 < *(v25 + 16))
      {
        v30 = *(v28 - 1);
        v29 = *v28;
        v61 = 0;
        memset(v60, 0, sizeof(v60));
        sub_223110BA0(v30, v29);
        sub_2231FFF94();
        OUTLINED_FUNCTION_6_7();
        sub_22311A668(&qword_280FCE5D8, v31, MEMORY[0x277D5DD78]);
        sub_2231FFFD4();
        v32 = v59;
        v62 = v59;
        v34 = *(v59 + 16);
        v33 = *(v59 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_223112370(v33 > 1, v34 + 1, 1);
          v32 = v62;
        }

        ++v27;
        *(v32 + 16) = v34 + 1;
        v35 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v59 = v32;
        (*(v58 + 32))(v32 + v35 + *(v58 + 72) * v34, v56, v10);
        v28 += 2;
        v25 = v53;
        if (v26 == v27)
        {

          v36 = v57;
          v37 = v59;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
      v36 = v57;
LABEL_18:
      LOBYTE(v62) = 0;
      sub_2231105AC();
      OUTLINED_FUNCTION_12_3(&type metadata for UserID);
      v38 = v51;
      v39 = *(&v60[0] + 1);
      v40 = v54;
      v41 = (v54 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
      *v41 = *&v60[0];
      v41[1] = v39;
      LOBYTE(v62) = 2;
      sub_2231123E8();
      OUTLINED_FUNCTION_12_3(&type metadata for ServerFallbackReason);
      *(v40 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_fallbackReason) = v60[0];
      *(v40 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs) = v37;
      LOBYTE(v60[0]) = 3;
      OUTLINED_FUNCTION_5_10();
      sub_22311A668(v42, v43, MEMORY[0x277D56648]);
      v45 = v49;
      v44 = v50;
      sub_223200554();
      (*(v38 + 32))(v40 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId, v45, v44);
      sub_2230F7158(v36, v60);
      RequestMessageBase.init(from:)(v60);
      v46 = OUTLINED_FUNCTION_3_12();
      v47(v46);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }
  }
}

void sub_2231197E0(void *a1)
{
  v3 = v1;
  v63 = sub_2231FFE94();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D40, &qword_2232072D0);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v58 = &v52 - v15;
  v16 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs);
  v17 = *(v16 + 16);
  if (v17)
  {
    v53 = a1;
    v54 = v3;
    v55 = v13;
    v56 = v11;
    v64[0] = MEMORY[0x277D84F90];
    v57 = v10;
    v59 = v17;
    sub_22311243C(0, v17, 0);
    v18 = v57;
    v19 = 0;
    v20 = v64[0];
    v61 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v60 = v6 + 16;
    v62 = v6 + 8;
    while (v19 < *(v16 + 16))
    {
      v21 = v20;
      v22 = v6;
      (*(v6 + 16))(v18, v61 + *(v6 + 72) * v19, v63);
      OUTLINED_FUNCTION_6_7();
      sub_22311A668(&qword_280FCE5D8, v23, MEMORY[0x277D5DD78]);
      v24 = sub_2231FFFE4();
      if (v2)
      {
        v33 = OUTLINED_FUNCTION_5_5();
        v34(v33);

        return;
      }

      v26 = v24;
      v27 = v25;
      v28 = OUTLINED_FUNCTION_5_5();
      v29(v28);
      v20 = v21;
      v64[0] = v21;
      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22311243C(v30 > 1, v31 + 1, 1);
        v18 = v57;
        v20 = v64[0];
      }

      ++v19;
      *(v20 + 16) = v31 + 1;
      v32 = v20 + 16 * v31;
      *(v32 + 32) = v26;
      *(v32 + 40) = v27;
      v6 = v22;
      if (v59 == v19)
      {
        v35 = v20;
        v13 = v55;
        v11 = v56;
        a1 = v53;
        v3 = v54;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
LABEL_11:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22311A59C();
    v36 = v58;
    sub_2232007A4();
    v37 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId + 8);
    v64[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
    v64[1] = v37;
    v65 = 0;
    v38 = sub_2230D37F0();

    v39 = OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_20_2(v39, v40, v41);
    if (v38)
    {
    }

    else
    {
      v42 = a1;

      v64[0] = v35;
      v65 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
      sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754, MEMORY[0x277D83948]);
      v43 = OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_20_2(v43, v44, v45);

      LOBYTE(v64[0]) = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_fallbackReason);
      v65 = 2;
      sub_2231124D0();
      v46 = OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_20_2(v46, v47, v48);
      v49 = OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId;
      LOBYTE(v64[0]) = 3;
      sub_2231FFF14();
      OUTLINED_FUNCTION_5_10();
      sub_22311A668(v50, v51, MEMORY[0x277D56630]);
      OUTLINED_FUNCTION_20_2(v3 + v49, v64, v11);
      sub_2230D77A8(v42);
    }

    (*(v13 + 8))(v36, v11);
  }
}

unint64_t sub_223119CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230E95AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_223119CFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230E95F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_223119D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230E95AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223119D58(uint64_t a1)
{
  v2 = sub_22311A59C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223119D94(uint64_t a1)
{
  v2 = sub_22311A59C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FallbackToPommesMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.requestId.getter()
{
  type metadata accessor for FallbackToPommesMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToPommesMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for FallbackToPommesMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToPommesMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_21_1() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t FallbackToPommesMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.delegatedUserDialogActs.getter()
{
  type metadata accessor for FallbackToPommesMessage.Builder(0);
}

uint64_t FallbackToPommesMessage.Builder.delegatedUserDialogActs.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_4() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.fallbackReason.getter()
{
  result = OUTLINED_FUNCTION_21_1();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t FallbackToPommesMessage.Builder.fallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FallbackToPommesMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_22311A3A8()
{

  v1 = OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId;
  sub_2231FFF14();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id FallbackToPommesMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FallbackToPommesMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311A50C(uint64_t a1)
{
  v2 = type metadata accessor for FallbackToPommesMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311A59C()
{
  result = qword_27D057D30;
  if (!qword_27D057D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D30);
  }

  return result;
}

uint64_t sub_22311A5F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057B10, &qword_2232063C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22311A668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22311A6B8(uint64_t a1)
{
  result = sub_2231FFF14();
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

uint64_t sub_22311A7F4(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22311A998(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231126F4(319);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA820, &type metadata for ServerFallbackReason);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_22311A998(319, &qword_27D057D60, MEMORY[0x277D56628]);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_22311A998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FallbackToPommesMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22311AACC()
{
  result = qword_27D057D68;
  if (!qword_27D057D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D68);
  }

  return result;
}

unint64_t sub_22311AB24()
{
  result = qword_27D057D70;
  if (!qword_27D057D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D70);
  }

  return result;
}

unint64_t sub_22311AB7C()
{
  result = qword_27D057D78;
  if (!qword_27D057D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t a1)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return type metadata accessor for FallbackToPommesMessage.Builder(0);
}

uint64_t FallbackToSiriXRequestedMessage.siriXRedirectContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_22311ACA4(v3, v4, v5);
}

uint64_t sub_22311ACA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22311ACB8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22311ACB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

id FallbackToSiriXRequestedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FallbackToSiriXRequestedMessage.init(build:)(v1);
}

id FallbackToSiriXRequestedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v5[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v5[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v7[v5[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v7[v5[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -1;
  a1(v7);
  v13 = *(v11 + 1);
  if (v13)
  {
    v14 = *v11;
    v15 = *v12;
    v16 = *(v12 + 1);
    v17 = v2 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext;
    *v17 = *v12;
    *(v17 + 8) = v16;
    v18 = v12[16];
    *(v17 + 16) = v18;
    v19 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_rewrittenUtterance);
    *v19 = v14;
    v19[1] = v13;
    MEMORY[0x28223BE20](v13);
    *(&v26 - 2) = v7;

    sub_22311ACA4(v15, v16, v18);
    v20 = RequestMessageBase.init(build:)(sub_22311BC24);
    sub_22311BBA8(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v21 = sub_223200014();
    __swift_project_value_buffer(v21, qword_280FCE830);
    v22 = sub_223200004();
    v23 = sub_223200254();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      MEMORY[0x223DD6780](v24, -1, -1);
    }

    sub_22311BBA8(v7);
    type metadata accessor for FallbackToSiriXRequestedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

uint64_t sub_22311AFDC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void *FallbackToSiriXRequestedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D80, &unk_2232074E0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311BC2C();
  sub_223200794();
  if (v2)
  {
    v11 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FallbackToSiriXRequestedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14) = 0;
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_rewrittenUtterance);
    *v7 = v5;
    v7[1] = v8;
    v16 = 1;
    sub_22311BCAC();
    sub_2232004C4();
    v9 = v15;
    v10 = v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext;
    *v10 = v14;
    *(v10 + 16) = v9;
    sub_2230F7158(a1, &v14);
    v11 = RequestMessageBase.init(from:)(&v14);
    v12 = OUTLINED_FUNCTION_2();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FallbackToSiriXRequestedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_11() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FallbackToSiriXRequestedMessage.Builder.requestId.getter()
{
  type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToSiriXRequestedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.rewrittenUtterance.getter()
{
  type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToSiriXRequestedMessage.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.siriXRedirectContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_22311ACA4(v4, v5, v6);
}

uint64_t FallbackToSiriXRequestedMessage.Builder.siriXRedirectContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 36);
  result = sub_22311BC80(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_22311B71C(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22311B770(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_22311B7CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22311B71C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22311B7FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22311B770(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22311B830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311B71C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22311B864(uint64_t a1)
{
  v2 = sub_22311BC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311B8A0(uint64_t a1)
{
  v2 = sub_22311BC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22311B8DC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D98, &qword_2232074F0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311BC2C();
  sub_2232007A4();
  LOBYTE(v14) = 0;
  sub_2232005F4();
  if (!v2)
  {
    v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 8);
    v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 16);
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext);
    v15 = v10;
    v16 = v11;
    v17 = 1;
    sub_22311ACA4(v14, v10, v11);
    sub_22311BD00();
    sub_2232005E4();
    sub_22311BC80(v14, v15, v16);
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_22311BACC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 8);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 16);

  return sub_22311BC80(v1, v2, v3);
}

id FallbackToSiriXRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FallbackToSiriXRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311BBA8(uint64_t a1)
{
  v2 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311BC2C()
{
  result = qword_27D057D88;
  if (!qword_27D057D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D88);
  }

  return result;
}

uint64_t sub_22311BC80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22311BC94(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22311BC94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_22311BCAC()
{
  result = qword_27D057D90;
  if (!qword_27D057D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D90);
  }

  return result;
}

unint64_t sub_22311BD00()
{
  result = qword_280FCB358[0];
  if (!qword_280FCB358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FCB358);
  }

  return result;
}

uint64_t sub_22311BDFC(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCB350, &type metadata for SiriXRedirectContext);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for FallbackToSiriXRequestedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22311BFE4()
{
  result = qword_27D057DB0;
  if (!qword_27D057DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DB0);
  }

  return result;
}

unint64_t sub_22311C03C()
{
  result = qword_27D057DB8;
  if (!qword_27D057DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DB8);
  }

  return result;
}

unint64_t sub_22311C094()
{
  result = qword_27D057DC0;
  if (!qword_27D057DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DC0);
  }

  return result;
}

uint64_t sub_22311C0F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707274 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44676E6974756F72 && a2 == 0xEF6E6F6973696365;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000223222870 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22311C214(char a1)
{
  if (!a1)
  {
    return 0x6449707274;
  }

  if (a1 == 1)
  {
    return 0x44676E6974756F72;
  }

  return 0xD000000000000012;
}

uint64_t sub_22311C280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311C0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22311C2A8(uint64_t a1)
{
  v2 = sub_22311D87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311C2E4(uint64_t a1)
{
  v2 = sub_22311D87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FinalTRPStateMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

id FinalTRPStateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FinalTRPStateMessage.init(build:)(v1);
}

id FinalTRPStateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v51 = a1;
  v52 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v48 = v6;
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FinalTRPStateMessage.Builder(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 15;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v13 = v10[8];
  v14 = v5;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v5);
  v15 = &v12[v10[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[v10[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v12[v10[11]];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0x1FFFFFFFELL;
  *(v17 + 6) = 0;
  *(v17 + 7) = 0;
  v17[64] = 0;
  v18 = v10[12];
  v12[v18] = 4;
  v51(v12);
  v19 = *v12;
  if (v19 == 15 || !*(v12 + 2))
  {
    goto LABEL_11;
  }

  v51 = *(v12 + 2);
  v47 = *(v12 + 1);
  sub_2230D3054(&v12[v13], v4, &qword_27D0575C0, &qword_2232035E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v14) == 1)
  {
    sub_2230D4138(v4, &qword_27D0575C0, &qword_2232035E0);
LABEL_11:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      __dst[0] = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898(ObjectType);
      v36 = sub_2231A5D38(v34, v35, __dst);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_22311D7EC(v12);
    type metadata accessor for FinalTRPStateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v14;
  v21 = v48;
  (*(v48 + 32))(v49, v4, v20);
  v22 = *(v15 + 1);
  if (!v22)
  {
    (*(v21 + 8))(v49, v20);
    goto LABEL_11;
  }

  v46 = v20;
  v23 = *(v16 + 1);
  if (!v23 || (v24 = *v15, v25 = *v16, v26 = memcpy(__dst, v17, 0x41uLL), v27 = __dst[5], (__dst[5] & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL) || (v28 = v12[v18], v28 == 4))
  {
    (*(v21 + 8))(v49, v46);
    goto LABEL_11;
  }

  v39 = v52;
  v40 = (v52 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId);
  *v40 = v25;
  v40[1] = v23;
  v41 = v39 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision;
  v42 = *(v17 + 1);
  *v41 = *v17;
  *(v41 + 16) = v42;
  *(v41 + 32) = *(v17 + 4);
  *(v41 + 40) = v27;
  *(v41 + 48) = *(v17 + 3);
  *(v41 + 64) = v17[64];
  *(v39 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision) = v28;
  MEMORY[0x28223BE20](v26);
  *(&v46 - 48) = v19;
  v43 = v51;
  *(&v46 - 5) = v47;
  *(&v46 - 4) = v43;
  v44 = v49;
  *(&v46 - 3) = v49;
  *(&v46 - 2) = v24;
  *(&v46 - 1) = v22;

  sub_2230D3054(__dst, v53, &qword_27D057DC8, &qword_22320E730);
  v37 = RequestMessageBase.init(build:)(sub_22311D868);
  v45 = v37;
  sub_22311D7EC(v12);
  if (v37)
  {
  }

  (*(v48 + 8))(v44, v46);
  return v37;
}

uint64_t sub_22311C9C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v13 = type metadata accessor for RequestMessageBase.Builder(0);
  v14 = *(v13 + 24);
  sub_2230D4138(a1 + v14, &qword_27D0575C0, &qword_2232035E0);
  v15 = sub_2231FFDA4();
  (*(*(v15 - 8) + 16))(a1 + v14, a5, v15);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v15);
  v16 = (a1 + *(v13 + 28));

  *v16 = a6;
  v16[1] = a7;
  return result;
}

void *FinalTRPStateMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057DD0, &qword_2232076E0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311D87C();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FinalTRPStateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __dst[0] = 0;
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId);
    *v7 = v5;
    v7[1] = v8;
    v15 = 1;
    sub_22311D8D0();
    OUTLINED_FUNCTION_8_5(&type metadata for NLRoutingDecisionMessage.RoutingDecision, &v15);
    memcpy((v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), __dst, 0x41uLL);
    v14 = 2;
    sub_22311D924();
    OUTLINED_FUNCTION_8_5(&type metadata for TTResponseMessage.MitigationDecision, &v14);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision) = v12[0];
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_22311CE1C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057DF0, &qword_2232076E8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311D87C();
  sub_2232007A4();
  __dst[95] = 0;
  sub_2232005F4();
  if (!v2)
  {
    memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), 0x41uLL);
    memcpy(__src, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), sizeof(__src));
    __dst[94] = 1;
    sub_2230E6EA8(__dst, v11);
    sub_2230E6F8C();
    sub_223200654();
    memcpy(v11, __src, 0x41uLL);
    sub_2230E6410(v11);
    __dst[93] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision);
    __dst[92] = 2;
    sub_22311D978();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_22311D0BC()
{
  v1 = v0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_223200374();
  v12 = 0;
  v13 = 0xE000000000000000;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FinalTRPStateMessage(0);
  v2 = objc_msgSendSuper2(&v11, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0xD000000000000013, 0x80000002232227B0);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232227D0);
  memcpy(__dst, &v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision], 0x41uLL);
  memcpy(v10, &v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision], sizeof(v10));
  sub_2230E6EA8(__dst, v9);
  v6 = sub_223200104();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  v10[0] = v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision];
  v7 = sub_223200104();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v12;
}

uint64_t FinalTRPStateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FinalTRPStateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_11() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FinalTRPStateMessage.Builder.requestId.getter()
{
  type metadata accessor for FinalTRPStateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FinalTRPStateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FinalTRPStateMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FinalTRPStateMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for FinalTRPStateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FinalTRPStateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FinalTRPStateMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FinalTRPStateMessage.Builder.routingDecision.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FinalTRPStateMessage.Builder(0) + 36);
  memcpy(__dst, (v1 + v3), 0x41uLL);
  memcpy(a1, (v1 + v3), 0x41uLL);
  return sub_2230D3054(__dst, &v5, &qword_27D057DC8, &qword_22320E730);
}

void *FinalTRPStateMessage.Builder.routingDecision.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_11() + 36);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2230D4138(__dst, &qword_27D057DC8, &qword_22320E730);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

uint64_t FinalTRPStateMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FinalTRPStateMessage.Builder(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t FinalTRPStateMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FinalTRPStateMessage.Builder(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

id FinalTRPStateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinalTRPStateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311D7EC(uint64_t a1)
{
  v2 = type metadata accessor for FinalTRPStateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311D87C()
{
  result = qword_27D057DD8;
  if (!qword_27D057DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DD8);
  }

  return result;
}

unint64_t sub_22311D8D0()
{
  result = qword_27D057DE0;
  if (!qword_27D057DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DE0);
  }

  return result;
}

unint64_t sub_22311D924()
{
  result = qword_27D057DE8;
  if (!qword_27D057DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DE8);
  }

  return result;
}

unint64_t sub_22311D978()
{
  result = qword_280FCE470;
  if (!qword_280FCE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE470);
  }

  return result;
}

uint64_t sub_22311DA80(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCD5E8, &type metadata for NLRoutingDecisionMessage.RoutingDecision);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCE460, &type metadata for TTResponseMessage.MitigationDecision);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for FinalTRPStateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22311DC94()
{
  result = qword_27D057E18;
  if (!qword_27D057E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E18);
  }

  return result;
}

unint64_t sub_22311DCEC()
{
  result = qword_27D057E20;
  if (!qword_27D057E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E20);
  }

  return result;
}

unint64_t sub_22311DD44()
{
  result = qword_27D057E28;
  if (!qword_27D057E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E28);
  }

  return result;
}

void sub_22311DD98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  switch((a6 >> 60) & 7)
  {
    case 0uLL:

      goto LABEL_3;
    case 1uLL:
    case 2uLL:
LABEL_3:

      break;
    case 3uLL:

      sub_22311DE7C(a4, a5, a6 & 0x8FFFFFFFFFFFFFFFLL, a7, a8);
      break;
    default:
      return;
  }
}

uint64_t sub_22311DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

id FlowCompletedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FlowCompletedMessage.init(build:)(v1);
}

id FlowCompletedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for FlowCompletedMessage.Builder(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 15;
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  v7 = *(v4 + 36);
  v8 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v6[v7], 1, 1, v8);
  v9 = &v6[*(v4 + 40)];
  *v9 = 0;
  v9[1] = 0;
  a1(v6);
  v10 = *(v6 + 1);
  v11 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId);
  *v11 = *v6;
  v11[1] = v10;
  v15 = v6;

  v12 = RequestMessageBase.init(build:)(sub_22311E12C);
  sub_22311E134(v6);
  return v12;
}

uint64_t sub_22311E07C(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for FlowCompletedMessage.Builder(0);
  v7 = *(v6 + 28);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 32));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_22311E134(uint64_t a1)
{
  v2 = type metadata accessor for FlowCompletedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22311E190(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22311E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311E190(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22311E25C(uint64_t a1)
{
  v2 = sub_22311E51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311E298(uint64_t a1)
{
  v2 = sub_22311E51C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FlowCompletedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E30, &qword_2232078B0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311E51C();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FlowCompletedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_223200494();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_22311E51C()
{
  result = qword_280FCE060;
  if (!qword_280FCE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE060);
  }

  return result;
}

uint64_t sub_22311E590(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E38, &unk_2232078B8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311E51C();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId + 8) || (sub_2232005F4(), !v2))
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t FlowCompletedMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FlowCompletedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t FlowCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowCompletedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowCompletedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowCompletedMessage.Builder(0) + 28);

  return sub_2230D4E04(a1, v3);
}

uint64_t FlowCompletedMessage.Builder.requestId.getter()
{
  type metadata accessor for FlowCompletedMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowCompletedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowCompletedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id FlowCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311EAE0(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2230F6D30(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for FlowCompletedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22311EC60()
{
  result = qword_27D057E40;
  if (!qword_27D057E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E40);
  }

  return result;
}

unint64_t sub_22311ECB8()
{
  result = qword_280FCE050;
  if (!qword_280FCE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE050);
  }

  return result;
}

unint64_t sub_22311ED10()
{
  result = qword_280FCE058;
  if (!qword_280FCE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE058);
  }

  return result;
}

void *FlowOutputMessage.command.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_command);
  v2 = v1;
  return v1;
}

void *FlowOutputMessage.commandExecutionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_commandExecutionInfo);
  v2 = v1;
  return v1;
}

uint64_t FlowOutputMessage.inAppResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse);
  a1[1] = v2;
}

id FlowOutputMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FlowOutputMessage.init(build:)(v1);
}

uint64_t FlowOutputMessage.InAppResponse.init(_:)@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  sub_2231FFEE4();

  v3 = v11;
  if (v11)
  {
    v4 = v10;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v6 = sub_223200014();
    __swift_project_value_buffer(v6, qword_280FCE830);
    v7 = sub_223200004();
    v8 = sub_223200254();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2230CE000, v7, v8, "InAppResponse: BundleId is nil, setting it to empty string", v9, 2u);
      MEMORY[0x223DD6780](v9, -1, -1);
    }

    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t static FlowOutputMessage.InAppResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2232006B4();
  }
}

uint64_t sub_22311F074(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22311F108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311F074(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22311F134(uint64_t a1)
{
  v2 = sub_2230E0EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311F170(uint64_t a1)
{
  v2 = sub_2230E0EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FlowOutputMessage.InAppResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E50, &qword_223207A78);
  OUTLINED_FUNCTION_9();
  v27 = v26;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2230E0EB4();
  OUTLINED_FUNCTION_23_1();
  sub_2232007A4();
  sub_2232005F4();
  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_9_0();
}

void *FlowOutputMessage.Builder.command.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *FlowOutputMessage.Builder.commandExecutionInfo.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t FlowOutputMessage.Builder.systemDialogActs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t FlowOutputMessage.Builder.activeTasks.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t FlowOutputMessage.Builder.completedTasks.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t FlowOutputMessage.Builder.legacyContext.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for FlowOutputMessage.Builder(v2);
  return sub_2230D2E68(v0, v1 + *(v3 + 40), &qword_27D057E48, &qword_223207A50);
}

uint64_t FlowOutputMessage.Builder.legacyContext.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.listenAfterSpeaking.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.executionSource.getter()
{
  result = OUTLINED_FUNCTION_17_0();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t FlowOutputMessage.Builder.executionSource.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.source.getter()
{
  result = OUTLINED_FUNCTION_17_0();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t FlowOutputMessage.Builder.source.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.assistantId.getter()
{
  type metadata accessor for FlowOutputMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowOutputMessage.Builder.assistantId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.sessionId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.requestId.getter()
{
  type metadata accessor for FlowOutputMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowOutputMessage.Builder.requestId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.inAppResponse.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_17_0() + 68));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t FlowOutputMessage.Builder.inAppResponse.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for FlowOutputMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_22311F8F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000223222960 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000223220D50 == a2;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6154657669746361 && a2 == 0xEB00000000736B73;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574656C706D6F63 && a2 == 0xEE00736B73615464;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F4379636167656CLL && a2 == 0xED0000747865746ELL;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000002232229A0 == a2;
                if (v12 || (sub_2232006B4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F69747563657865 && a2 == 0xEF656372756F536ELL;
                  if (v13 || (sub_2232006B4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x7365527070416E69 && a2 == 0xED000065736E6F70)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2232006B4();

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