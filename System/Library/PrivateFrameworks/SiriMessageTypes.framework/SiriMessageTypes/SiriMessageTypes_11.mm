_BYTE *storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231B7460(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231B7510()
{
  result = qword_27D05A3B0;
  if (!qword_27D05A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3B0);
  }

  return result;
}

unint64_t sub_2231B7568()
{
  result = qword_27D05A3B8;
  if (!qword_27D05A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3B8);
  }

  return result;
}

unint64_t sub_2231B75C0()
{
  result = qword_27D05A3C0;
  if (!qword_27D05A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3C0);
  }

  return result;
}

unint64_t sub_2231B7618()
{
  result = qword_27D05A3C8;
  if (!qword_27D05A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3C8);
  }

  return result;
}

unint64_t sub_2231B7670()
{
  result = qword_27D05A3D0;
  if (!qword_27D05A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3D0);
  }

  return result;
}

unint64_t sub_2231B76C8()
{
  result = qword_27D05A3D8;
  if (!qword_27D05A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3D8);
  }

  return result;
}

unint64_t sub_2231B7720()
{
  result = qword_27D05A3E0;
  if (!qword_27D05A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3E0);
  }

  return result;
}

unint64_t sub_2231B7778()
{
  result = qword_27D05A3E8;
  if (!qword_27D05A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3E8);
  }

  return result;
}

unint64_t sub_2231B77D0()
{
  result = qword_27D05A3F0;
  if (!qword_27D05A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3F0);
  }

  return result;
}

unint64_t sub_2231B7828()
{
  result = qword_27D05A3F8;
  if (!qword_27D05A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3F8);
  }

  return result;
}

unint64_t sub_2231B7880()
{
  result = qword_27D05A400;
  if (!qword_27D05A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A400);
  }

  return result;
}

unint64_t sub_2231B78D8()
{
  result = qword_27D05A408;
  if (!qword_27D05A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A408);
  }

  return result;
}

unint64_t sub_2231B7930()
{
  result = qword_27D05A410;
  if (!qword_27D05A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A410);
  }

  return result;
}

unint64_t sub_2231B7988()
{
  result = qword_27D05A418;
  if (!qword_27D05A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A418);
  }

  return result;
}

unint64_t sub_2231B79E0()
{
  result = qword_27D05A420;
  if (!qword_27D05A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A420);
  }

  return result;
}

unint64_t sub_2231B7A38()
{
  result = qword_27D05A428;
  if (!qword_27D05A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A428);
  }

  return result;
}

unint64_t sub_2231B7A90()
{
  result = qword_27D05A430;
  if (!qword_27D05A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A430);
  }

  return result;
}

unint64_t sub_2231B7AE8()
{
  result = qword_27D05A438;
  if (!qword_27D05A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A438);
  }

  return result;
}

unint64_t sub_2231B7B40()
{
  result = qword_27D05A440;
  if (!qword_27D05A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A440);
  }

  return result;
}

unint64_t sub_2231B7B98()
{
  result = qword_27D05A448;
  if (!qword_27D05A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A448);
  }

  return result;
}

unint64_t sub_2231B7BF0()
{
  result = qword_27D05A450;
  if (!qword_27D05A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A450);
  }

  return result;
}

unint64_t sub_2231B7C48()
{
  result = qword_27D05A458;
  if (!qword_27D05A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A458);
  }

  return result;
}

id SiriXToolInvokedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return SiriXToolInvokedMessage.init(build:)(v1);
}

id SiriXToolInvokedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v6[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v6[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[v6[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v8[v6[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v8[v6[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  a1(v8);
  v15 = *(v12 + 1);
  if (v15 && (v16 = *(v13 + 1)) != 0)
  {
    v17 = *v13;
    v18 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId);
    *v18 = *v12;
    v18[1] = v15;
    v19 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance);
    *v19 = v17;
    v19[1] = v16;
    v20 = *(v14 + 1);
    v21 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_fallbackToEagerTrpId);
    *v21 = *v14;
    v21[1] = v20;
    MEMORY[0x28223BE20](v20);
    *(&v32 - 2) = v8;

    v22 = RequestMessageBase.init(build:)(sub_2231B8EB4);
    sub_2231B80D4(v8);
  }

  else
  {
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
      v33 = v27;
      *v26 = 136446210;
      v28 = sub_2230F7898(ObjectType);
      v30 = sub_2231A5D38(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2230CE000, v24, v25, "Could not build %{public}s. Builder has missing required fields", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DD6780](v27, -1, -1);
      MEMORY[0x223DD6780](v26, -1, -1);
    }

    sub_2231B80D4(v8);
    type metadata accessor for SiriXToolInvokedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v22;
}

uint64_t sub_2231B80D4(uint64_t a1)
{
  v2 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231B8150(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for SiriXToolInvokedMessage.Builder(0);
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

void *SiriXToolInvokedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A460, &unk_22321A9B0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B8EBC();
  sub_223200794();
  if (v2)
  {
    v12 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriXToolInvokedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_27();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId);
    *v7 = v5;
    v7[1] = v8;
    LOBYTE(v15[0]) = 1;
    v9 = OUTLINED_FUNCTION_9_27();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance);
    *v10 = v9;
    v10[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    v16 = 2;
    sub_2231B8F10(&qword_27D05A100, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_fallbackToEagerTrpId) = v15[0];
    sub_2230F7158(a1, v15);
    v12 = RequestMessageBase.init(from:)(v15);
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t sub_2231B8558(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A470, &unk_22321A9C0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B8EBC();
  sub_2232007A4();
  v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId);
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_invocationId + 8);
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_8_7(v10, v11);
  if (!v2)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance);
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_utterance + 8);
    LOBYTE(v15) = 1;
    OUTLINED_FUNCTION_8_7(v12, v13);
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23SiriXToolInvokedMessage_fallbackToEagerTrpId);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2231B8F10(&qword_280FCA4D0, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t SiriXToolInvokedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriXToolInvokedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SiriXToolInvokedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_26() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t SiriXToolInvokedMessage.Builder.requestId.getter()
{
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.invocationId.getter()
{
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.utterance.getter()
{
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriXToolInvokedMessage.Builder.fallbackToEagerTrpId.getter()
{
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXToolInvokedMessage.Builder.fallbackToEagerTrpId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for SiriXToolInvokedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231B8B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000223225E10 == a2)
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

uint64_t sub_2231B8C80(char a1)
{
  if (!a1)
  {
    return 0x697461636F766E69;
  }

  if (a1 == 1)
  {
    return 0x636E617265747475;
  }

  return 0xD000000000000014;
}

uint64_t sub_2231B8CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B8B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B8D18(uint64_t a1)
{
  v2 = sub_2231B8EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B8D54(uint64_t a1)
{
  v2 = sub_2231B8EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B8DC0()
{
}

id SiriXToolInvokedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriXToolInvokedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231B8EBC()
{
  result = qword_27D05A468;
  if (!qword_27D05A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A468);
  }

  return result;
}

uint64_t sub_2231B8F10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057640, &qword_2232037A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriXToolInvokedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B9108()
{
  result = qword_27D05A488;
  if (!qword_27D05A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A488);
  }

  return result;
}

unint64_t sub_2231B9160()
{
  result = qword_27D05A490;
  if (!qword_27D05A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A490);
  }

  return result;
}

unint64_t sub_2231B91B8()
{
  result = qword_27D05A498;
  if (!qword_27D05A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A498);
  }

  return result;
}

SiriMessageTypes::SpeechDirectednessDecision_optional __swiftcall SpeechDirectednessDecision.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SpeechDirectednessDecision.rawValue.getter()
{
  v1 = 0x6465746365726964;
  if (*v0 != 1)
  {
    v1 = 0x756F756769626D61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463657269646E75;
  }
}

unint64_t sub_2231B92EC()
{
  result = qword_27D05A4A0;
  if (!qword_27D05A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4A0);
  }

  return result;
}

uint64_t sub_2231B9364@<X0>(uint64_t *a1@<X8>)
{
  result = SpeechDirectednessDecision.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechDirectednessDecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B9518()
{
  result = qword_280FCA798;
  if (!qword_280FCA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA798);
  }

  return result;
}

uint64_t sub_2231B957C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E696F70646E65 && a2 == 0xEC000000656D6954)
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

uint64_t sub_2231B961C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B957C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231B9648(uint64_t a1)
{
  v2 = sub_2231BA434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B9684(uint64_t a1)
{
  v2 = sub_2231BA434();

  return MEMORY[0x2821FE720](a1, v2);
}

id SpeechEndpointDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v39 = v7;
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  v16[8] = 1;
  a1(v13);
  v17 = *v13;
  if (v17 == 15)
  {
    goto LABEL_8;
  }

  v18 = *(v13 + 2);
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v2);
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
      v41 = v27;
      *v26 = 136446210;
      v28 = sub_2230F7898(ObjectType);
      v30 = sub_2231A5D38(v28, v29, &v41);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2230CE000, v24, v25, "Could not build %{public}s: Builder has missing required fields", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DD6780](v27, -1, -1);
      MEMORY[0x223DD6780](v26, -1, -1);
    }

    sub_2231B9B78(v13);
    type metadata accessor for SpeechEndpointDetectedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v37 = v19;
  v20 = v38;
  v21 = v39;
  v22 = (*(v39 + 32))(v38, v2, v6);
  if (!*(v15 + 1) || (v16[8] & 1) != 0)
  {
    (*(v21 + 8))(v20, v6);
    goto LABEL_8;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29SpeechEndpointDetectedMessage_endpointTime) = *v16;
  MEMORY[0x28223BE20](v22);
  *(&v36 - 48) = v17;
  *(&v36 - 5) = v37;
  *(&v36 - 4) = v18;
  *(&v36 - 3) = v20;
  *(&v36 - 2) = v33;
  *(&v36 - 1) = v34;
  v31 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v35 = v31;
  sub_2231B9B78(v13);
  if (v31)
  {
  }

  (*(v21 + 8))(v20, v6);
  return v31;
}

uint64_t sub_2231B9B78(uint64_t a1)
{
  v2 = type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SpeechEndpointDetectedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A4A8, &qword_22321ACA8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BA434();
  sub_223200794();
  if (v2)
  {
    v7 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SpeechEndpointDetectedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223200514();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29SpeechEndpointDetectedMessage_endpointTime) = v6;
    sub_2230F7158(a1, v10);
    v7 = RequestMessageBase.init(from:)(v10);
    v8 = OUTLINED_FUNCTION_2();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_2231B9E30(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A4B8, &qword_22321ACB0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BA434();
  sub_2232007A4();
  sub_223200614();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2231B9FDC()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SpeechEndpointDetectedMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  MEMORY[0x223DD5AA0](v2, v4);

  MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223225E30);
  sub_223200224();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t SpeechEndpointDetectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SpeechEndpointDetectedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SpeechEndpointDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpeechEndpointDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SpeechEndpointDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_33() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t SpeechEndpointDetectedMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpeechEndpointDetectedMessage.Builder(0) + 28));

  return v1;
}

uint64_t SpeechEndpointDetectedMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpeechEndpointDetectedMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpeechEndpointDetectedMessage.Builder.endpointTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

id SpeechEndpointDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechEndpointDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BA434()
{
  result = qword_27D05A4B0;
  if (!qword_27D05A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4B0);
  }

  return result;
}

uint64_t sub_2231BA4E4(uint64_t a1)
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
        sub_2230D525C(319, &qword_27D05A4E0, MEMORY[0x277D839F8]);
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

_BYTE *storeEnumTagSinglePayload for SpeechEndpointDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BA694()
{
  result = qword_27D05A4E8;
  if (!qword_27D05A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4E8);
  }

  return result;
}

unint64_t sub_2231BA6EC()
{
  result = qword_27D05A4F0;
  if (!qword_27D05A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4F0);
  }

  return result;
}

unint64_t sub_2231BA744()
{
  result = qword_27D05A4F8;
  if (!qword_27D05A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A4F8);
  }

  return result;
}

void *SpeechPartialDeliveryStartedMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SpeechPartialDeliveryStartedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechPartialDeliveryStartedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SpeechPartialDeliveryStartedMessage(uint64_t a1)
{
  result = qword_280FCBE28;
  if (!qword_280FCBE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231BA920(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7544646C756F6873 && a2 == 0xED00005354546B63)
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

uint64_t sub_2231BA9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231BA920(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231BA9F4(uint64_t a1)
{
  v2 = sub_2231BB59C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BAA30(uint64_t a1)
{
  v2 = sub_2231BB59C();

  return MEMORY[0x2821FE720](a1, v2);
}

id SpeechStartDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SpeechStartDetectedMessage.Builder(0);
  v13 = started - 8;
  MEMORY[0x28223BE20](started);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 15;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v16 = *(v13 + 32);
  __swift_storeEnumTagSinglePayload(&v15[v16], 1, 1, v6);
  v17 = *(v13 + 36);
  v15[v17] = 2;
  a1(v15);
  v18 = *v15;
  if (v18 == 15)
  {
    goto LABEL_7;
  }

  v19 = *(v15 + 2);
  if (!v19)
  {
    goto LABEL_7;
  }

  v34 = *(v15 + 1);
  sub_2230D1480(&v15[v16], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_7:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v22 = sub_223200014();
    __swift_project_value_buffer(v22, qword_280FCE830);
    v23 = sub_223200004();
    v24 = sub_223200254();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136446210;
      v27 = sub_2230F7898(ObjectType);
      v29 = sub_2231A5D38(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2230CE000, v23, v24, "Could not build %{public}s: Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x223DD6780](v26, -1, -1);
      MEMORY[0x223DD6780](v25, -1, -1);
    }

    sub_2231BAF08(v15);
    type metadata accessor for SpeechStartDetectedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = (*(v8 + 32))(v11, v2, v6);
  v21 = v15[v17];
  if (v21 == 2)
  {
    (*(v8 + 8))(v11, v6);
    goto LABEL_7;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes26SpeechStartDetectedMessage_shouldDuckTTS) = v21 & 1;
  MEMORY[0x28223BE20](v20);
  *(&v33 - 32) = v18;
  *(&v33 - 3) = v34;
  *(&v33 - 2) = v19;
  *(&v33 - 1) = v11;
  v30 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v32 = v30;
  sub_2231BAF08(v15);
  if (v30)
  {
  }

  (*(v8 + 8))(v11, v6);
  return v30;
}

uint64_t sub_2231BAF08(uint64_t a1)
{
  started = type metadata accessor for SpeechStartDetectedMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231BAF84(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A500, &qword_22321AE78);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BB59C();
  sub_2232007A4();
  sub_223200604();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

void *sub_2231BB10C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A538, &unk_22321B008);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BB59C();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SpeechStartDetectedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26SpeechStartDetectedMessage_shouldDuckTTS) = sub_223200504() & 1;
    sub_2230F7158(a1, v9);
    v6 = SessionMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t SpeechStartDetectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SpeechStartDetectedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SpeechStartDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpeechStartDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SpeechStartDetectedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SpeechStartDetectedMessage.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t SpeechStartDetectedMessage.Builder.shouldDuckTTS.setter(char a1)
{
  result = type metadata accessor for SpeechStartDetectedMessage.Builder(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

id SpeechStartDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechStartDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BB59C()
{
  result = qword_27D05A508;
  if (!qword_27D05A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A508);
  }

  return result;
}

void sub_2231BB690(uint64_t a1)
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
        sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SpeechStartDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BB824()
{
  result = qword_27D05A520;
  if (!qword_27D05A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A520);
  }

  return result;
}

unint64_t sub_2231BB87C()
{
  result = qword_27D05A528;
  if (!qword_27D05A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A528);
  }

  return result;
}

unint64_t sub_2231BB8D4()
{
  result = qword_27D05A530;
  if (!qword_27D05A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A530);
  }

  return result;
}

id SpeechStopDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a1(v13);
  v17 = *v13;
  if (v17 == 15)
  {
    goto LABEL_12;
  }

  v18 = *(v13 + 2);
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_12:
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
      v43 = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898(ObjectType);
      v36 = sub_2231A5D38(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_2231BBDC0(v13);
    type metadata accessor for SpeechStopDetectedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v39 = v19;
  v21 = v40;
  v20 = v41;
  (*(v40 + 32))(v41, v2, v6);
  if (!*(v15 + 1))
  {
    (*(v21 + 8))(v20, v6);
    goto LABEL_12;
  }

  v22 = *(v16 + 1);
  if (!v22)
  {
    (*(v21 + 8))(v41, v6);
    goto LABEL_12;
  }

  v23 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId);
  *v23 = *v16;
  v23[1] = v22;
  MEMORY[0x28223BE20](v22);
  *(&v38 - 48) = v17;
  *(&v38 - 5) = v39;
  *(&v38 - 4) = v18;
  v24 = v41;
  *(&v38 - 3) = v41;
  *(&v38 - 2) = v25;
  *(&v38 - 1) = v26;

  v27 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v28 = v27;
  sub_2231BBDC0(v13);
  if (v27)
  {
  }

  (*(v40 + 8))(v24, v6);
  return v27;
}

uint64_t sub_2231BBDC0(uint64_t a1)
{
  v2 = type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SpeechStopDetectedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A540, &qword_22321B018);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BC760();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SpeechStopDetectedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId);
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

uint64_t sub_2231BC038(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A548, &qword_22321B020);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BC760();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2231BC1DC(uint64_t a1)
{
  v2 = sub_2231BC760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BC218(uint64_t a1)
{
  v2 = sub_2231BC760();

  return MEMORY[0x2821FE720](a1, v2);
}

id SpeechStopDetectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return SpeechStopDetectedMessage.init(build:)(v1);
}

uint64_t sub_2231BC340()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SpeechStopDetectedMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes25SpeechStopDetectedMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t SpeechStopDetectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SpeechStopDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpeechStopDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SpeechStopDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_29() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t SpeechStopDetectedMessage.Builder.requestId.getter()
{
  type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SpeechStopDetectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for SpeechStopDetectedMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SpeechStopDetectedMessage.Builder.lastTRPId.getter()
{
  type metadata accessor for SpeechStopDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t SpeechStopDetectedMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for SpeechStopDetectedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id SpeechStopDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechStopDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BC760()
{
  result = qword_280FCD0E0;
  if (!qword_280FCD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD0E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechStopDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BC904()
{
  result = qword_27D05A550;
  if (!qword_27D05A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A550);
  }

  return result;
}

unint64_t sub_2231BC95C()
{
  result = qword_280FCD0D0;
  if (!qword_280FCD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD0D0);
  }

  return result;
}

unint64_t sub_2231BC9B4()
{
  result = qword_280FCD0D8;
  if (!qword_280FCD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD0D8);
  }

  return result;
}

uint64_t sub_2231BCA18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223226080 == a2)
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

uint64_t sub_2231BCAE8(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6449656369766564;
  }
}

uint64_t sub_2231BCB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231BCA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231BCB54(uint64_t a1)
{
  v2 = sub_2231BD91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BCB90(uint64_t a1)
{
  v2 = sub_2231BD91C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartAttendingRequestedMessage.deviceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId);

  return v1;
}

id StartAttendingRequestedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v38 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v36 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  v12 = (started - 8);
  MEMORY[0x28223BE20](started);
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
  v14[v17] = 2;
  a1(v14);
  v18 = *v14;
  if (v18 == 15)
  {
    goto LABEL_5;
  }

  v19 = *(v14 + 2);
  if (!v19)
  {
    goto LABEL_5;
  }

  sub_2230D1480(&v14[v15], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_5:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v20 = sub_223200014();
    __swift_project_value_buffer(v20, qword_280FCE830);
    v21 = sub_223200004();
    v22 = sub_223200254();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136446210;
      v25 = sub_2230F7898(ObjectType);
      v27 = sub_2231A5D38(v25, v26, &v39);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2230CE000, v21, v22, "Could not build %{public}s: Builder has missing required fields", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223DD6780](v24, -1, -1);
      MEMORY[0x223DD6780](v23, -1, -1);
    }

    sub_2231BD0B8(v14);
    type metadata accessor for StartAttendingRequestedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v36 + 32))(v10, v5, v6);
  v30 = *(v16 + 1);
  v31 = v38;
  v32 = (v38 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId);
  v33 = v14[v17];
  *v32 = *v16;
  v32[1] = v30;
  *(v31 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_attendingStartReason) = v33 & 1;
  MEMORY[0x28223BE20](v30);
  *(&v36 - 32) = v18;
  *(&v36 - 3) = v34;
  *(&v36 - 2) = v19;
  *(&v36 - 1) = v10;

  v28 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v35 = v28;
  sub_2231BD0B8(v14);
  if (v28)
  {
  }

  (*(v36 + 8))(v10, v6);
  return v28;
}

uint64_t sub_2231BD0B8(uint64_t a1)
{
  started = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231BD134(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A558, &qword_22321B1C8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BD91C();
  sub_2232007A4();
  v14 = 0;
  sub_2232005C4();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_attendingStartReason);
    v12 = 1;
    sub_2231BD970();
    sub_223200654();
    sub_2230D46B0(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

void *sub_2231BD318(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5A0, &qword_22321B370);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BD91C();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartAttendingRequestedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v5 = sub_223200494();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_deviceId);
    *v7 = v5;
    v7[1] = v8;
    v13 = 1;
    sub_2231BDD50();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartAttendingRequestedMessage_attendingStartReason) = v12[0];
    sub_2230F7158(a1, v12);
    v9 = SessionMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t StartAttendingRequestedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartAttendingRequestedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartAttendingRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartAttendingRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartAttendingRequestedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_34() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartAttendingRequestedMessage.Builder.deviceId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartAttendingRequestedMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartAttendingRequestedMessage.Builder.deviceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartAttendingRequestedMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartAttendingRequestedMessage.Builder.attendingStartReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartAttendingRequestedMessage.Builder.attendingStartReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartAttendingRequestedMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

id StartAttendingRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartAttendingRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BD91C()
{
  result = qword_27D05A560;
  if (!qword_27D05A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A560);
  }

  return result;
}

unint64_t sub_2231BD970()
{
  result = qword_27D05A568;
  if (!qword_27D05A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A568);
  }

  return result;
}

uint64_t sub_2231BDA6C(uint64_t a1)
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
        sub_2230D525C(319, &qword_27D05A580, &type metadata for AttendingStartReason);
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

_BYTE *storeEnumTagSinglePayload for StartAttendingRequestedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231BDC4C()
{
  result = qword_27D05A588;
  if (!qword_27D05A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A588);
  }

  return result;
}

unint64_t sub_2231BDCA4()
{
  result = qword_27D05A590;
  if (!qword_27D05A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A590);
  }

  return result;
}

unint64_t sub_2231BDCFC()
{
  result = qword_27D05A598;
  if (!qword_27D05A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A598);
  }

  return result;
}

unint64_t sub_2231BDD50()
{
  result = qword_27D05A5A8;
  if (!qword_27D05A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5A8);
  }

  return result;
}

id StartCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  started = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  v12 = (started - 8);
  MEMORY[0x28223BE20](started);
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
  v14[v17] = 2;
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

    sub_2231BE270(v14);
    type metadata accessor for StartCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v37;
  v21 = (*(v37 + 32))(v10, v2, v6);
  if (!*(v16 + 1) || (v22 = v14[v17], v22 == 2))
  {
    (*(v20 + 8))(v10, v6);
    goto LABEL_8;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt) = v22 & 1;
  MEMORY[0x28223BE20](v21);
  *(&v36 - 48) = v18;
  *(&v36 - 5) = v36;
  *(&v36 - 4) = v19;
  *(&v36 - 3) = v10;
  *(&v36 - 2) = v33;
  *(&v36 - 1) = v34;
  v31 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v35 = v31;
  sub_2231BE270(v14);
  if (v31)
  {
  }

  (*(v20 + 8))(v10, v6);
  return v31;
}

uint64_t sub_2231BE270(uint64_t a1)
{
  started = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartCandidateRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5B0, &qword_22321B378);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BEC5C();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt) = sub_223200504() & 1;
    sub_2230F7158(a1, v9);
    v6 = RequestMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231BE52C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5C0, &qword_22321B380);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BEC5C();
  sub_2232007A4();
  sub_223200604();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

BOOL sub_2231BE69C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F1A84(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231BE6D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231BE670();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231BE6FC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F1A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231BE728(uint64_t a1)
{
  v2 = sub_2231BEC5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BE764(uint64_t a1)
{
  v2 = sub_2231BEC5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231BE808()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StartCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000011, 0x80000002232260A0);
  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartCandidateRequestMessage_isSiriPrompt))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v5, v6);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t StartCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartCandidateRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_35() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartCandidateRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartCandidateRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartCandidateRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartCandidateRequestMessage.Builder.isSiriPrompt.setter(char a1)
{
  result = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

id StartCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BEC5C()
{
  result = qword_27D05A5B8;
  if (!qword_27D05A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BEE00()
{
  result = qword_27D05A5D8;
  if (!qword_27D05A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5D8);
  }

  return result;
}

unint64_t sub_2231BEE58()
{
  result = qword_27D05A5E0;
  if (!qword_27D05A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5E0);
  }

  return result;
}

unint64_t sub_2231BEEB0()
{
  result = qword_27D05A5E8;
  if (!qword_27D05A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5E8);
  }

  return result;
}

id StartChildCandidateRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildCandidateRequestMessage.init(build:)(v1);
}

id StartChildCandidateRequestMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  v5 = (started - 8);
  MEMORY[0x28223BE20](started);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v5[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v5[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v7[v5[10]] = 2;
  v11 = &v7[v5[11]];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1(v7);
  v12 = *(v11 + 1);
  if (v12)
  {
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33StartChildCandidateRequestMessage_rootRequestId);
    *v13 = *v11;
    v13[1] = v12;
    MEMORY[0x28223BE20](v12);
    *(&v24 - 2) = v7;

    v14 = StartCandidateRequestMessage.init(build:)(sub_2231BFC78);
    sub_2231BF280(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;
      v20 = sub_2230F7898(ObjectType);
      v22 = sub_2231A5D38(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing rootRequestId field", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DD6780](v19, -1, -1);
      MEMORY[0x223DD6780](v18, -1, -1);
    }

    sub_2231BF280(v7);
    type metadata accessor for StartChildCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

uint64_t sub_2231BF280(uint64_t a1)
{
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231BF2FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  v7 = started[6];
  v8 = type metadata accessor for StartCandidateRequestMessage.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + v8[6]);
  v9 = (a2 + started[7]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v8[7]);

  *v12 = v11;
  v12[1] = v10;
  *(a1 + v8[8]) = *(a2 + started[8]);
  return result;
}

void *StartChildCandidateRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A5F0, &qword_22321B550);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BFC80();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartChildCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33StartChildCandidateRequestMessage_rootRequestId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = StartCandidateRequestMessage.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231BF60C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A600, &unk_22321B558);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231BFC80();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2231BE52C(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t StartChildCandidateRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartChildCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartChildCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartChildCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_36() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildCandidateRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildCandidateRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildCandidateRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildCandidateRequestMessage.Builder.isSiriPrompt.setter(char a1)
{
  result = type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t StartChildCandidateRequestMessage.Builder.rootRequestId.getter()
{
  type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildCandidateRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildCandidateRequestMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

BOOL sub_2231BFACC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F1C20(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231BFB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230DEE28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231BFB28@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F1C20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231BFB54(uint64_t a1)
{
  v2 = sub_2231BFC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231BFB90(uint64_t a1)
{
  v2 = sub_2231BFC80();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartChildCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231BFC80()
{
  result = qword_27D05A5F8;
  if (!qword_27D05A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A5F8);
  }

  return result;
}

uint64_t sub_2231BFD74(uint64_t a1)
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

      sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for StartChildCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231BFF20()
{
  result = qword_27D05A618;
  if (!qword_27D05A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A618);
  }

  return result;
}

unint64_t sub_2231BFF78()
{
  result = qword_27D05A620;
  if (!qword_27D05A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A620);
  }

  return result;
}

unint64_t sub_2231BFFD0()
{
  result = qword_27D05A628;
  if (!qword_27D05A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A628);
  }

  return result;
}

id StartChildLocalRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildLocalRequestMessage.init(build:)(v1);
}

void *StartChildLocalRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A630, &qword_22321B750);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEAE4();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartChildLocalRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartChildLocalRequestMessage_rootRequestId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = StartLocalRequestMessage.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t StartChildLocalRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartChildLocalRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildLocalRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

void *StartChildLocalRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

uint64_t StartChildLocalRequestMessage.Builder.rootRequestId.getter()
{
  type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

BOOL sub_2231C0578@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F1DBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_2231C05AC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F1DBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231C05D8(uint64_t a1)
{
  v2 = sub_2230DEAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C0614(uint64_t a1)
{
  v2 = sub_2230DEAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartChildLocalRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildLocalRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C0768(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_2231C08B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for StartChildLocalRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231C09B8()
{
  result = qword_27D05A658;
  if (!qword_27D05A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A658);
  }

  return result;
}

unint64_t sub_2231C0A10()
{
  result = qword_27D05A660;
  if (!qword_27D05A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A660);
  }

  return result;
}

unint64_t sub_2231C0A68()
{
  result = qword_27D05A668;
  if (!qword_27D05A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A668);
  }

  return result;
}

uint64_t StartChildSpeechRequestMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StartChildSpeechRequestMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

id StartChildSpeechRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildSpeechRequestMessage.init(build:)(v1);
}

id StartChildSpeechRequestMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v45 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  v14 = (started - 8);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v17 = v16 - v15;
  *v17 = 15;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v16 - v15 + v14[8], 1, 1, v6);
  v18 = (v17 + v14[9]);
  *v18 = 0;
  v18[1] = 0;
  *(v17 + v14[10]) = 19;
  *(v17 + v14[11]) = 0;
  *(v17 + v14[12]) = 2;
  *(v17 + v14[13]) = 0;
  v19 = (v17 + v14[14]);
  *v19 = 0;
  v19[1] = 0;
  v20 = v14[15];
  __swift_storeEnumTagSinglePayload(v17 + v20, 1, 1, v6);
  v21 = (v17 + v14[16]);
  *v21 = 0u;
  v21[1] = 0u;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0x1FFFFFFFELL;
  *(v21 + 6) = 0;
  *(v21 + 7) = 0;
  *(v21 + 64) = 0;
  v45(v17);
  v22 = v19[1];
  if (v22)
  {
    v23 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_rootRequestId);
    *v23 = *v19;
    v23[1] = v22;
    sub_2230D3100(v17 + v20, v5, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {

      sub_2231FFD94();
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
      {
        sub_2230D40E0(v5, &qword_27D0575C0, &qword_2232035E0);
      }
    }

    else
    {
      (*(v8 + 32))(v12, v5, v6);
    }

    (*(v8 + 32))(v2 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId, v12, v6);
    v34 = memcpy(__dst, v21, 0x41uLL);
    v35 = *(&__dst[2] + 1);
    if ((*(&__dst[2] + 1) & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0uLL;
      v35 = 0x4000000000000000;
      v39 = 0uLL;
      v40 = 0uLL;
    }

    else
    {
      v38 = __dst[0];
      v39 = __dst[1];
      v36 = *&__dst[2];
      v40 = __dst[3];
      v37 = __dst[4];
    }

    v41 = v2 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision;
    *v41 = v38;
    *(v41 + 16) = v39;
    *(v41 + 32) = v36;
    *(v41 + 40) = v35;
    *(v41 + 48) = v40;
    *(v41 + 64) = v37;
    MEMORY[0x28223BE20](v34);
    *(&v43 - 2) = v17;
    sub_2230D3100(__dst, v46, &qword_27D057DC8, &qword_22320E730);
    v33 = StartSpeechRequestMessage.init(build:)(sub_2231C2090);
    sub_2231C1130(v17);
  }

  else
  {
    v24 = ObjectType;
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v25 = sub_223200014();
    __swift_project_value_buffer(v25, qword_280FCE830);
    v26 = sub_223200004();
    v27 = sub_223200254();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&__dst[0] = v29;
      *v28 = 136446210;
      v30 = sub_2230F7898(v24);
      v32 = sub_2231A5D38(v30, v31, __dst);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2230CE000, v26, v27, "Could not build %{public}s: Builder has missing required fields", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DD6780](v29, -1, -1);
      MEMORY[0x223DD6780](v28, -1, -1);
    }

    sub_2231C1130(v17);
    type metadata accessor for StartChildSpeechRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v33;
}

uint64_t sub_2231C1130(uint64_t a1)
{
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231C118C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  v7 = started[6];
  v8 = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + v8[6]);
  v9 = (a2 + started[7]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v8[7]);

  *v12 = v11;
  v12[1] = v10;
  *(a1 + v8[8]) = *(a2 + started[8]);
  v13 = *(a2 + started[9]);
  v14 = v8[9];

  *(a1 + v14) = v13;
  *(a1 + v8[10]) = *(a2 + started[10]);
  v15 = *(a2 + started[11]);
  v16 = v8[11];
  v17 = *(a1 + v16);
  v18 = v15;

  *(a1 + v16) = v15;
}

void *StartChildSpeechRequestMessage.init(from:)(void *a1)
{
  sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v16 = v4;
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A670, &qword_22321B950);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E6CDC();
  sub_223200794();
  if (v1)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartChildSpeechRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = sub_2232004F4();
    v11 = (v18 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_rootRequestId);
    *v11 = v9;
    v11[1] = v12;
    __src[0] = 1;
    sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
    sub_223200554();
    (*(v16 + 32))(v18 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId, v7, v17);
    __src[87] = 2;
    sub_22311D8D0();
    sub_223200554();
    memcpy((v18 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision), __src, 0x41uLL);
    sub_2230F7158(a1, v19);
    v13 = StartSpeechRequestMessage.init(from:)(v19);
    v14 = OUTLINED_FUNCTION_1_9();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t StartChildSpeechRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_36() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildSpeechRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildSpeechRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildSpeechRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.inputOrigin.getter()
{
  result = OUTLINED_FUNCTION_10_17();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.location.getter()
{
  type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
}

uint64_t StartChildSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_36() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.asrOnServer.setter(char a1)
{
  result = type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *StartChildSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartChildSpeechRequestMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void StartChildSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_36() + 44);

  *(v1 + v2) = v0;
}

uint64_t StartChildSpeechRequestMessage.Builder.rootRequestId.getter()
{
  type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildSpeechRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildSpeechRequestMessage.Builder(0) + 48));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildSpeechRequestMessage.Builder.orchestrationTaskId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_36() + 52);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildSpeechRequestMessage.Builder.routingDecision.getter()
{
  v2 = *(OUTLINED_FUNCTION_10_17() + 56);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  memcpy(v0, (v1 + v2), 0x41uLL);
  return sub_2230D3100(__dst, &v4, &qword_27D057DC8, &qword_22320E730);
}

void *StartChildSpeechRequestMessage.Builder.routingDecision.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_36() + 56);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2230D40E0(__dst, &qword_27D057DC8, &qword_22320E730);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

unint64_t sub_2231C1E04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F1F58(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231C1E34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230E6D40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2231C1E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F1F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231C1E88(uint64_t a1)
{
  v2 = sub_2230E6CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C1EC4(uint64_t a1)
{
  v2 = sub_2230E6CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2231C1F30()
{

  v1 = OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_2_3((v0 + OBJC_IVAR____TtC16SiriMessageTypes30StartChildSpeechRequestMessage_routingDecision));
}

id StartChildSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C20A0(uint64_t a1)
{
  result = sub_2231FFDA4();
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

uint64_t sub_2231C2198(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C238C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_2231C238C(319, qword_280FCA608, type metadata accessor for Location);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
        if (v11 > 0x3F)
        {
          return v8;
        }

        sub_2231C238C(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        if (v12 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2230D525C(319, &qword_280FCD5E8, &type metadata for NLRoutingDecisionMessage.RoutingDecision);
          v2 = v13;
          if (v14 <= 0x3F)
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

void sub_2231C238C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_2231C23F4()
{
  result = qword_27D05A680;
  if (!qword_27D05A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A680);
  }

  return result;
}

unint64_t sub_2231C244C()
{
  result = qword_280FCC4D0;
  if (!qword_280FCC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC4D0);
  }

  return result;
}

unint64_t sub_2231C24A4()
{
  result = qword_280FCC4D8;
  if (!qword_280FCC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC4D8);
  }

  return result;
}

uint64_t StartChildTextRequestMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StartChildTextRequestMessage.textRequestType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_2230D7C34(v2, v3);
}

uint64_t StartChildTextRequestMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

id StartChildTextRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartChildTextRequestMessage.init(build:)(v1);
}

id StartChildTextRequestMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v52 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &ObjectType - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v51 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  v13 = (started - 8);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v16 = v15 - v14;
  *v16 = 15;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v15 - v14 + v13[8], 1, 1, v6);
  v17 = (v16 + v13[9]);
  *v17 = 0;
  v17[1] = 0;
  *(v16 + v13[10]) = 19;
  *(v16 + v13[11]) = 0;
  v18 = (v16 + v13[12]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v13[13];
  __swift_storeEnumTagSinglePayload(v16 + v19, 1, 1, v6);
  v20 = (v16 + v13[14]);
  *v20 = xmmword_223203230;
  v21 = (v16 + v13[15]);
  *v21 = 0u;
  v21[1] = 0u;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0x1FFFFFFFELL;
  *(v21 + 6) = 0;
  *(v21 + 7) = 0;
  *(v21 + 64) = 0;
  v52(v16);
  v22 = v18[1];
  if (v22)
  {
    v23 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_rootRequestId);
    *v23 = *v18;
    v23[1] = v22;
    sub_2230D3100(v16 + v19, v5, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {

      sub_2231FFD94();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
      v25 = v51;
      if (EnumTagSinglePayload != 1)
      {
        sub_2230D40E0(v5, &qword_27D0575C0, &qword_2232035E0);
      }
    }

    else
    {
      v25 = v51;
      (*(v51 + 32))(v11, v5, v6);
    }

    (*(v25 + 32))(v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId, v11, v6);
    v36 = *v20;
    v37 = v20[1];
    if (v37 == 2)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    if (v37 == 2)
    {
      v39 = 1;
    }

    else
    {
      v39 = v37;
    }

    v40 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType);
    *v40 = v38;
    v40[1] = v39;
    v41 = memcpy(__dst, v21, 0x41uLL);
    v42 = *(&__dst[2] + 1);
    if ((*(&__dst[2] + 1) & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0uLL;
      v42 = 0x4000000000000000;
      v46 = 0uLL;
      v47 = 0uLL;
    }

    else
    {
      v45 = __dst[0];
      v46 = __dst[1];
      v43 = *&__dst[2];
      v47 = __dst[3];
      v44 = __dst[4];
    }

    v48 = v2 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision;
    *v48 = v45;
    *(v48 + 16) = v46;
    *(v48 + 32) = v43;
    *(v48 + 40) = v42;
    *(v48 + 48) = v47;
    *(v48 + 64) = v44;
    MEMORY[0x28223BE20](v41);
    *(&ObjectType - 2) = v16;
    sub_2231C3E44(v36, v37);
    sub_2230D3100(__dst, v53, &qword_27D057DC8, &qword_22320E730);
    v35 = StartRequestMessageBase.init(build:)(sub_2231C3E3C);
    sub_2231C2BE0(v16);
  }

  else
  {
    v26 = ObjectType;
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
      *&__dst[0] = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898(v26);
      v34 = sub_2231A5D38(v32, v33, __dst);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_2231C2BE0(v16);
    type metadata accessor for StartChildTextRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v35;
}

uint64_t sub_2231C2BE0(uint64_t a1)
{
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231C2C5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  v7 = started[6];
  v8 = type metadata accessor for StartRequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + v8[6]);
  v9 = (a2 + started[7]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v8[7]);

  *v12 = v11;
  v12[1] = v10;
  *(a1 + v8[8]) = *(a2 + started[8]);
  v13 = *(a2 + started[9]);
  v14 = v8[9];
  v15 = *(a1 + v14);
  v16 = v13;

  *(a1 + v14) = v13;
}

void *StartChildTextRequestMessage.init(from:)(void *a1)
{
  v19 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v17 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A688, &qword_22321BB90);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C3E54();
  sub_223200794();
  if (v1)
  {
    OUTLINED_FUNCTION_6_25();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if ((v7 & 1) == 0)
    {
      if (v8)
      {
        (*(v17 + 8))(v18 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId, v19);
      }

      if (v10)
      {
        sub_2230D7BB4(*(v18 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType), *(v18 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8));
      }

      type metadata accessor for StartChildTextRequestMessage(0);
      swift_deallocPartialClassInstance();
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_2();
    v11 = sub_2232004F4();
    v12 = (v18 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_rootRequestId);
    *v12 = v11;
    v12[1] = v13;
    LOBYTE(__src[0]) = 1;
    sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    (*(v17 + 32))(v18 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId, v7, v19);
    LOBYTE(v20[0]) = 2;
    sub_2231C3EA8();
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    *(v18 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType) = __src[0];
    v22 = 3;
    sub_22311D8D0();
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    memcpy((v18 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), __src, 0x41uLL);
    sub_2230F7158(a1, v20);
    v10 = StartTextRequestMessage.init(from:)(v20);
    v15 = OUTLINED_FUNCTION_6_6();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_2231C31F0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A698, &qword_22321BB98);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C3E54();
  sub_2232007A4();
  __dst[0] = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    __dst[0] = 1;
    sub_2231FFDA4();
    sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8);
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType);
    v16 = v10;
    v18 = 2;
    sub_2230D7C34(v15, v10);
    sub_2231C3EFC();
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    sub_2230D7BB4(v15, v16);
    memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), 0x41uLL);
    memcpy(__src, (v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision), sizeof(__src));
    v17 = 3;
    sub_2230E6EA8(__dst, v12);
    sub_2230E6F8C();
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    memcpy(v12, __src, 0x41uLL);
    sub_2230E6410(v12);
    sub_2230DEEE4(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t StartChildTextRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_37() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildTextRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for StartChildTextRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildTextRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.inputOrigin.getter()
{
  result = OUTLINED_FUNCTION_10_18();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartChildTextRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartChildTextRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartChildTextRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_37() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartChildTextRequestMessage.Builder.rootRequestId.getter()
{
  type metadata accessor for StartChildTextRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartChildTextRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.orchestrationTaskId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_37() + 44);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildTextRequestMessage.Builder.textRequestType.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_10_18() + 48));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_2231C3E44(v3, v4);
}

uint64_t StartChildTextRequestMessage.Builder.textRequestType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartChildTextRequestMessage.Builder(0) + 48));
  result = sub_2231C3F50(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t StartChildTextRequestMessage.Builder.routingDecision.getter()
{
  v2 = *(OUTLINED_FUNCTION_10_18() + 52);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  memcpy(v0, (v1 + v2), 0x41uLL);
  return sub_2230D3100(__dst, &v4, &qword_27D057DC8, &qword_22320E730);
}

void *StartChildTextRequestMessage.Builder.routingDecision.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_37() + 52);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2230D40E0(__dst, &qword_27D057DC8, &qword_22320E730);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

unint64_t sub_2231C3B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F20D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2231C3B8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230F211C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2231C3BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F20D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231C3BE8(uint64_t a1)
{
  v2 = sub_2231C3E54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C3C24(uint64_t a1)
{
  v2 = sub_2231C3E54();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2231C3C90()
{

  v1 = OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  sub_2230D7BB4(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_textRequestType + 8));
  OUTLINED_FUNCTION_2_3((v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartChildTextRequestMessage_routingDecision));
}

id StartChildTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartChildTextRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C3E44(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_2230D7C34(a1, a2);
  }

  return a1;
}

unint64_t sub_2231C3E54()
{
  result = qword_280FCCAE8;
  if (!qword_280FCCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCAE8);
  }

  return result;
}

unint64_t sub_2231C3EA8()
{
  result = qword_27D05A690;
  if (!qword_27D05A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A690);
  }

  return result;
}

unint64_t sub_2231C3EFC()
{
  result = qword_280FCAB60;
  if (!qword_280FCAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB60);
  }

  return result;
}

uint64_t sub_2231C3F50(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_2230D7BB4(a1, a2);
  }

  return a1;
}

uint64_t sub_2231C3F68(uint64_t a1)
{
  result = sub_2231FFDA4();
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

uint64_t sub_2231C406C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2230D525C(319, &qword_280FCAB58, &type metadata for TextRequestType);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCD5E8, &type metadata for NLRoutingDecisionMessage.RoutingDecision);
            v2 = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for StartChildTextRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231C4310()
{
  result = qword_27D05A6A0;
  if (!qword_27D05A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6A0);
  }

  return result;
}

unint64_t sub_2231C4368()
{
  result = qword_280FCCAD8;
  if (!qword_280FCCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCAD8);
  }

  return result;
}

unint64_t sub_2231C43C0()
{
  result = qword_280FCCAE0;
  if (!qword_280FCCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCAE0);
  }

  return result;
}

uint64_t sub_2231C4424(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000223226380 == a2)
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

uint64_t sub_2231C44C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231C4424(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231C44F0(uint64_t a1)
{
  v2 = sub_2231C5514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C452C(uint64_t a1)
{
  v2 = sub_2231C5514();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StartCorrectedSpeechRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartCorrectedSpeechRequestMessage.init(build:)(v1);
}

void *StartCorrectedSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v46 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1();
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v6;
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  v10 = (started - 8);
  MEMORY[0x28223BE20](started);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 15;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  v13 = v10[8];
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v5);
  v14 = &v12[v10[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = v10[10];
  v12[v15] = 19;
  v16 = &v12[v10[11]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v12[v10[12]] = 0;
  a1(v12);
  v17 = *v12;
  if (v17 != 15)
  {
    v18 = *(v12 + 2);
    if (v18)
    {
      v19 = *(v12 + 1);
      sub_2230D1480(&v12[v13], v2);
      if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
      {
        sub_2230D69D4(v2);
      }

      else
      {
        v42 = v19;
        v21 = v43;
        v20 = v44;
        (*(v44 + 32))(v43, v2, v5);
        v22 = *(v14 + 1);
        if (v22 && v12[v15] != 19)
        {
          v34 = *v16;
          v33 = *(v16 + 1);
          v35 = v21;
          v36 = (v46 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance);
          *v36 = v34;
          v36[1] = v33;
          MEMORY[0x28223BE20](v33);
          *(&v42 - 64) = v17;
          *(&v42 - 7) = v42;
          *(&v42 - 6) = v18;
          *(&v42 - 5) = v21;
          *(&v42 - 4) = v37;
          *(&v42 - 3) = v22;
          *(&v42 - 16) = v38;
          *(&v42 - 1) = v12;

          v31 = StartTextRequestMessage.init(build:)(sub_2231C54D8);
          v39 = v31;

          if (v31)
          {

            v40 = *(v44 + 8);
            v41 = v39;
            v40(v35, v5);
            sub_2231C4AC8(v12);
          }

          else
          {
            (*(v44 + 8))(v35, v5);
            sub_2231C4AC8(v12);
          }

          return v31;
        }

        (*(v20 + 8))(v21, v5);
      }
    }
  }

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
    v47 = v27;
    *v26 = 136446210;
    v28 = sub_2230F7898(ObjectType);
    v30 = sub_2231A5D38(v28, v29, &v47);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_2230CE000, v24, v25, "Could not build %{public}s: Builder has missing required fields", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x223DD6780](v27, -1, -1);
    MEMORY[0x223DD6780](v26, -1, -1);
  }

  sub_2231C4AC8(v12);
  type metadata accessor for StartCorrectedSpeechRequestMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231C4AC8(uint64_t a1)
{
  started = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231C4B44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  v17 = started[6];
  sub_2230D69D4(a1 + v17);
  v18 = sub_2231FFDA4();
  (*(*(v18 - 8) + 16))(a1 + v17, a5, v18);
  __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v18);
  v19 = (a1 + started[7]);

  *v19 = a6;
  v19[1] = a7;
  *(a1 + started[8]) = a8;
  v20 = *(a9 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 40));
  v21 = started[9];
  v22 = *(a1 + v21);
  v23 = v20;

  *(a1 + v21) = v20;
}

void *StartCorrectedSpeechRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A6A8, &qword_22321BDE8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C5514();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartCorrectedSpeechRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_223200494();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = StartTextRequestMessage.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231C4EB4(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A6B8, &unk_22321BDF0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C5514();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance + 8) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0), sub_2230F994C(), sub_223200654(), !v2))
  {
    sub_2230DEEE4(a1);
  }

  return (*(v7 + 8))(v3, v5);
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_27() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.previousUtterance.getter()
{
  type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.previousUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *StartCorrectedSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void StartCorrectedSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_27() + 40);

  *(v1 + v2) = v0;
}

id StartCorrectedSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartCorrectedSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231C5514()
{
  result = qword_27D05A6B0;
  if (!qword_27D05A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6B0);
  }

  return result;
}

uint64_t sub_2231C5608(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
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

_BYTE *storeEnumTagSinglePayload for StartCorrectedSpeechRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231C5808()
{
  result = qword_27D05A6D0;
  if (!qword_27D05A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6D0);
  }

  return result;
}

unint64_t sub_2231C5860()
{
  result = qword_27D05A6D8;
  if (!qword_27D05A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6D8);
  }

  return result;
}

unint64_t sub_2231C58B8()
{
  result = qword_27D05A6E0;
  if (!qword_27D05A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6E0);
  }

  return result;
}

void *StartDirectActionRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartTextRequestMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartDirectActionRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartDirectActionRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartDirectActionRequestMessage(uint64_t a1)
{
  result = qword_280FCC3E8;
  if (!qword_280FCC3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartIFRequestMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id StartIFRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartIFRequestMessage.init(build:)(v1);
}

id StartIFRequestMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v43 = v11 - v10;
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  v13 = (started - 8);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v16 = v15 - v14;
  *v16 = 15;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v15 - v14 + v13[8], 1, 1, v7);
  v17 = (v16 + v13[9]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v13[10];
  *(v16 + v18) = 19;
  v19 = v13[11];
  *(v16 + v19) = 0;
  v20 = (v16 + v13[12]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v13[13];
  __swift_storeEnumTagSinglePayload(v16 + v21, 1, 1, v7);
  a1(v16);
  v22 = v20[1];
  if (v22 && (v23 = *(v16 + v18), v23 != 19) && (v24 = *(v16 + v19)) != 0)
  {
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_inputOrigin) = v23;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_requestContextData) = v24;
    v25 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId);
    *v25 = *v20;
    v25[1] = v22;
    sub_2230D1480(v16 + v21, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      v26 = v24;

      v27 = v43;
      sub_2231FFD94();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
      v29 = v44;
      if (EnumTagSinglePayload != 1)
      {
        sub_2230D69D4(v6);
      }
    }

    else
    {
      v27 = v43;
      v29 = v44;
      (*(v44 + 32))(v43, v6, v7);
      v40 = v24;
    }

    v41 = (*(v29 + 32))(v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId, v27, v7);
    MEMORY[0x28223BE20](v41);
    *(&v43 - 2) = v16;
    v38 = RequestMessageBase.init(build:)(sub_2231C7180);
    v42 = v38;

    if (v38)
    {
    }

    sub_2231C6058(v16);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136446210;
      v35 = sub_2230F7898(ObjectType);
      v37 = sub_2231A5D38(v35, v36, &v46);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DD6780](v34, -1, -1);
      MEMORY[0x223DD6780](v33, -1, -1);
    }

    sub_2231C6058(v16);
    type metadata accessor for StartIFRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v38;
}

uint64_t sub_2231C6058(uint64_t a1)
{
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231C60D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  v7 = *(started + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(started + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void *StartIFRequestMessage.init(from:)(void *a1)
{
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v37 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A6E8, &qword_22321BFD8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = a1[3];
  v39 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2231C7188();
  sub_223200794();
  v15 = &qword_280FCDFA0[12];
  if (v1)
  {
    OUTLINED_FUNCTION_2_42();
    v16 = v39;
  }

  else
  {
    v36 = v8;
    v41 = 0;
    sub_2231C71DC();
    OUTLINED_FUNCTION_5_6(&type metadata for InputOrigin);
    *(v38 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_inputOrigin) = v40[0];
    v41 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_5_6(MEMORY[0x277CC9318]);
    v16 = v39;
    v18 = v40[0];
    v19 = v40[1];
    sub_2231717C8();
    type metadata accessor for RequestContextData(0);
    v20 = sub_223200264();
    v34 = v18;
    v35 = v19;
    if (v20)
    {
      v21 = v38;
      *(v38 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_requestContextData) = v20;
      LOBYTE(v40[0]) = 2;
      v22 = v20;
      v23 = sub_2232004F4();
      v33 = v22;
      v27 = (v21 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId);
      *v27 = v23;
      v27[1] = v28;
      LOBYTE(v40[0]) = 3;
      sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
      sub_223200554();
      (*(v37 + 32))(v21 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId, v36, v3);
      sub_2230F7158(v16, v40);
      v29 = RequestMessageBase.init(from:)(v40);
      v30 = v34;
      v14 = v29;
      v31 = OUTLINED_FUNCTION_1_10();
      v32(v31);
      sub_2230D94DC(v30, v35);

      __swift_destroy_boxed_opaque_existential_1(v16);
      return v14;
    }

    v14 = 0x80000002232263E0;
    sub_2230F9E38();
    swift_allocError();
    *v24 = 0xD000000000000028;
    *(v24 + 8) = 0x80000002232263E0;
    *(v24 + 16) = 0;
    swift_willThrow();
    sub_2230D94DC(v34, v35);
    v25 = OUTLINED_FUNCTION_1_10();
    v26(v25);
    OUTLINED_FUNCTION_2_42();
    v15 = qword_280FCDFA0 + 96;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  if ((v12 & 1) == 0)
  {
    if (v9)
    {
    }

    if (v14)
    {
    }

    type metadata accessor for StartIFRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  return v14;
}

uint64_t sub_2231C66F0(void *a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A700, &qword_22321BFE0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C7188();
  sub_2232007A4();
  LOBYTE(v18[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_inputOrigin);
  sub_2230DB484();
  OUTLINED_FUNCTION_10_19();
  if (v2)
  {
    goto LABEL_2;
  }

  v8 = objc_opt_self();
  v9 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_requestContextData);
  v18[0] = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v18];
  v11 = v18[0];
  if (!v10)
  {
    v15 = v11;
    sub_2231FFD04();

    swift_willThrow();
LABEL_2:
    v5 = OUTLINED_FUNCTION_6_26();
    return v6(v5);
  }

  v12 = sub_2231FFD24();
  v14 = v13;

  v18[0] = v12;
  v18[1] = v14;
  sub_2230D7754();
  OUTLINED_FUNCTION_10_19();
  LOBYTE(v18[0]) = 2;
  sub_2232005F4();
  LOBYTE(v18[0]) = 3;
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
  sub_223200654();
  sub_2230D77A8(a1);
  v16 = OUTLINED_FUNCTION_6_26();
  v17(v16);
  return sub_2230D94DC(v12, v14);
}

uint64_t StartIFRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartIFRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartIFRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_28() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartIFRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for StartIFRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartIFRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartIFRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartIFRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartIFRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartIFRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartIFRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartIFRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_28() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartIFRequestMessage.Builder.rootRequestId.getter()
{
  type metadata accessor for StartIFRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartIFRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartIFRequestMessage.Builder.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 44);

  return sub_2230D1480(v3, a1);
}

uint64_t StartIFRequestMessage.Builder.orchestrationTaskId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_28() + 44);

  return sub_2230D4E04(v0, v2);
}

unint64_t sub_2231C6EE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F2480(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2231C6F14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230F24CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2231C6F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F2480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231C6F70(uint64_t a1)
{
  v2 = sub_2231C7188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C6FAC(uint64_t a1)
{
  v2 = sub_2231C7188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231C7018()
{

  v1 = OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id StartIFRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartIFRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231C7188()
{
  result = qword_27D05A6F0;
  if (!qword_27D05A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6F0);
  }

  return result;
}

unint64_t sub_2231C71DC()
{
  result = qword_27D05A6F8;
  if (!qword_27D05A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6F8);
  }

  return result;
}

uint64_t sub_2231C7238(uint64_t a1)
{
  result = sub_2231FFDA4();
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

uint64_t sub_2231C7340(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for StartIFRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231C758C()
{
  result = qword_27D05A718;
  if (!qword_27D05A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A718);
  }

  return result;
}

unint64_t sub_2231C75E4()
{
  result = qword_27D05A720;
  if (!qword_27D05A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A720);
  }

  return result;
}

unint64_t sub_2231C763C()
{
  result = qword_27D05A728;
  if (!qword_27D05A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A728);
  }

  return result;
}

void *StartLocalRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartLocalRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartLocalRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartLocalRequestMessage(uint64_t a1)
{
  result = qword_280FCD468;
  if (!qword_280FCD468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *StartRequestMessageBase.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A738, &qword_22321C220);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DF198();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRequestMessageBase(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_2_6();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_inputOrigin) = v11;
    v13 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_6();
    sub_2232004C4();
    if (v12 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v8 = sub_223200264();
      sub_22310A610(v11, v12);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData) = v8;
    sub_2230F7158(a1, &v11);
    v6 = RequestMessageBase.init(from:)(&v11);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231C7B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000223226530 == a2)
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

uint64_t sub_2231C7BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231C7B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231C7C04(uint64_t a1)
{
  v2 = sub_2230DF198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C7C40(uint64_t a1)
{
  v2 = sub_2230DF198();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StartRequestMessageBase.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData);
  v2 = v1;
  return v1;
}

uint64_t StartRequestMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartRequestMessageBase.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRequestMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_38() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRequestMessageBase.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 28));

  return v1;
}

uint64_t StartRequestMessageBase.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRequestMessageBase.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRequestMessageBase.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartRequestMessageBase.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRequestMessageBase.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartRequestMessageBase.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartRequestMessageBase.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_38() + 36);

  *(v1 + v2) = v0;
}

id StartRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C81C0(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
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

unint64_t sub_2231C8328()
{
  result = qword_27D05A740;
  if (!qword_27D05A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A740);
  }

  return result;
}

unint64_t sub_2231C8380()
{
  result = qword_280FCE2B0;
  if (!qword_280FCE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE2B0);
  }

  return result;
}

unint64_t sub_2231C83D8()
{
  result = qword_280FCE2B8;
  if (!qword_280FCE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE2B8);
  }

  return result;
}

uint64_t sub_2231C861C()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C8660()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C86C0()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C8770()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_34_5();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C8828(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_70();
  v4 = a2(a1);
  OUTLINED_FUNCTION_10_20(v4, v5, v6);

  return sub_223200764();
}

uint64_t sub_2231C891C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_70();
  a2(v5, a1);
  return sub_223200764();
}

uint64_t sub_2231C8978(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_70();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C89C0(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_19_9();
  }

  sub_223200124();
}

uint64_t sub_2231C8A40(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_16_14();
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
  }

  sub_223200124();
}

uint64_t sub_2231C8AC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_5_29();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8BA0(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231C8C1C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_12_15();
  }

  sub_223200124();
}

uint64_t sub_2231C8C98(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 5:
      OUTLINED_FUNCTION_34_5();
      goto LABEL_3;
    case 3:
LABEL_3:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8DA8()
{
  OUTLINED_FUNCTION_6_27();
  switch(v0)
  {
    case 1:
    case 3:
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_9_28();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_29_7();
LABEL_4:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8E80()
{
  OUTLINED_FUNCTION_31_5();
  switch(v0)
  {
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_5_29();
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8F44()
{
  OUTLINED_FUNCTION_2_43();
  sub_223200124();
}

uint64_t sub_2231C8FF8(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_2_43();
  }

  sub_223200124();
}

uint64_t sub_2231C9068(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231C9158(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
      break;
    case 8:
      OUTLINED_FUNCTION_5_29();
      break;
    case 9:
      OUTLINED_FUNCTION_2_43();
      break;
    default:
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_21_12();
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C92CC(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_13();
  }

  sub_223200124();
}

uint64_t sub_2231C9350()
{
  OUTLINED_FUNCTION_3_23();
  sub_223200124();
}

uint64_t sub_2231C93CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_223200124();
}

uint64_t sub_2231C9430()
{
  OUTLINED_FUNCTION_6_27();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_34_5();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9528(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_16_14();
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_5_29();
  }

  sub_223200124();
}

uint64_t sub_2231C95A0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_30();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
  }

  sub_223200124();
}

uint64_t sub_2231C95F8(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231C9664()
{
  OUTLINED_FUNCTION_0_14();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9724(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231C97EC()
{
  OUTLINED_FUNCTION_30_5();
  sub_223200124();
}

uint64_t sub_2231C9864(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_31_5();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9928(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_3_39();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C99E0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_3_39();
  }

  sub_223200124();
}

uint64_t sub_2231C9A44(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231C9AC8()
{
  OUTLINED_FUNCTION_6_27();
  switch(v0)
  {
    case 1:
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_9_28();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_29_7();
LABEL_4:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9B84()
{
  OUTLINED_FUNCTION_3_23();
  sub_223200124();
}

uint64_t sub_2231C9BF8(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231C9C60()
{
  OUTLINED_FUNCTION_3_23();
  sub_223200124();
}

uint64_t sub_2231C9CD8()
{
  OUTLINED_FUNCTION_21_12();
  sub_223200124();
}

uint64_t sub_2231C9D74(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231C9E50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      break;
    case 2:
      OUTLINED_FUNCTION_9_28();
      break;
    case 3:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9F04(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      break;
    case 2:
      OUTLINED_FUNCTION_0_14();
      break;
    case 3:
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_21_12();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9FB4(uint64_t a1, char a2)
{
  sub_223200124();
}

uint64_t sub_2231CA034()
{
  OUTLINED_FUNCTION_30_5();
  sub_223200124();
}

uint64_t sub_2231CA0AC()
{
  OUTLINED_FUNCTION_21_12();
  sub_223200124();
}

uint64_t sub_2231CA110()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_21_12();
  if (v0)
  {
    v4 = v3 + 2;
  }

  else
  {
    v4 = v3;
  }

  OUTLINED_FUNCTION_27_4(v1, v4, v2);

  return sub_223200764();
}

uint64_t sub_2231CA178(uint64_t a1)
{
  v1 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CA1C0()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_30_5();
  if (v0)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  OUTLINED_FUNCTION_27_4(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA224(uint64_t a1, char a2)
{
  sub_223200744();
  sub_223200124();

  return sub_223200764();
}

uint64_t sub_2231CA300(uint64_t a1)
{
  v1 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CA348(uint64_t a1, char a2)
{
  v3 = sub_223200744();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  OUTLINED_FUNCTION_27_4(v3, v5, v4);

  return sub_223200764();
}

uint64_t sub_2231CA3DC()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_23();
  if (v0)
  {
    v3 = 0x6B6361626C6C6166;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA458()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  OUTLINED_FUNCTION_27_4(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA4C4()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_23();
  if (v0)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x5364496563696F76;
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA554()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    v3 = 0x69646E6143707274;
  }

  else
  {
    v3 = 0x44676E6974756F72;
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA5DC()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_3_39();
  }

  OUTLINED_FUNCTION_18_14(v1, v2, v3);

  return sub_223200764();
}

uint64_t sub_2231CA68C()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_30_5();
  if (v0)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  OUTLINED_FUNCTION_27_4(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA740()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    v3 = 0x644972657375;
  }

  else
  {
    v3 = 0x7954686374697773;
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA7B0()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_30();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
  }

  OUTLINED_FUNCTION_18_14(v1, v2, v3);

  return sub_223200764();
}

uint64_t sub_2231CA80C()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_16_14();
    if (v5 == 1)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_5_29();
  }

  OUTLINED_FUNCTION_18_14(v1, v6, v2);

  return sub_223200764();
}

uint64_t sub_2231CA888(uint64_t a1)
{
  v1 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CA8E8()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    v3 = 0x6E4974706D6F7270;
  }

  else
  {
    v3 = 0x65727574736567;
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CA974(uint64_t a1, unsigned __int8 a2)
{
  sub_223200744();
  MEMORY[0x223DD60B0](a2);
  return sub_223200764();
}

uint64_t sub_2231CA9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_223200744();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CAA34()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_23();
  if (v0)
  {
    v3 = 1682531186;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CAA9C()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6769626D61736964;
    }

    else
    {
      v3 = 0x65756C6176;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_13();
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CAB84()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 6582126;
    }

    else
    {
      v3 = 0x656B616873;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_43();
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CABF8(uint64_t a1)
{
  v1 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_34_5();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CACA0(uint64_t a1)
{
  OUTLINED_FUNCTION_25_5(a1);
  v1(v4, v2);
  return sub_223200764();
}

uint64_t sub_2231CACE0()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_12_15();
  }

  OUTLINED_FUNCTION_18_14(v1, v2, v3);

  return sub_223200764();
}

uint64_t sub_2231CAD48()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    v3 = 0x4374736575716572;
  }

  else
  {
    v3 = 0x4974736575716572;
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

uint64_t sub_2231CADE0(uint64_t a1)
{
  OUTLINED_FUNCTION_25_5(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_10_20(v3, v4, v5);

  return sub_223200764();
}

uint64_t sub_2231CAE28(uint64_t a1, char a2)
{
  v3 = sub_223200744();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x6F69746174636964;
    }

    else
    {
      v5 = 0xD000000000000016;
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
  }

  OUTLINED_FUNCTION_18_14(v3, v5, v4);

  return sub_223200764();
}

uint64_t sub_2231CAEBC()
{
  v1 = OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6465746365726964;
    }

    else
    {
      v3 = 0x756F756769626D61;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
  }

  OUTLINED_FUNCTION_18_14(v1, v3, v2);

  return sub_223200764();
}

id StartRootCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  started = type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
  v12 = (started - 8);
  MEMORY[0x28223BE20](started);
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
  v14[v17] = 2;
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

    sub_2231CB3FC(v14);
    type metadata accessor for StartRootCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v37;
  v21 = (*(v37 + 32))(v10, v2, v6);
  if (!*(v16 + 1) || (v22 = v14[v17], v22 == 2))
  {
    (*(v20 + 8))(v10, v6);
    goto LABEL_8;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt) = v22 & 1;
  MEMORY[0x28223BE20](v21);
  *(&v36 - 48) = v18;
  *(&v36 - 5) = v36;
  *(&v36 - 4) = v19;
  *(&v36 - 3) = v10;
  *(&v36 - 2) = v33;
  *(&v36 - 1) = v34;
  v31 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v35 = v31;
  sub_2231CB3FC(v14);
  if (v31)
  {
  }

  (*(v20 + 8))(v10, v6);
  return v31;
}

uint64_t sub_2231CB3FC(uint64_t a1)
{
  started = type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartRootCandidateRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A748, &qword_22321C3C8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CBDFC();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootCandidateRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt) = sub_223200504() & 1;
    sub_2230F7158(a1, v9);
    v6 = RequestMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231CB6B8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A758, &qword_22321C3D0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CBDFC();
  sub_2232007A4();
  sub_223200604();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

BOOL sub_2231CB868@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F2AA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_2231CB89C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F2AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231CB8C8(uint64_t a1)
{
  v2 = sub_2231CBDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CB904(uint64_t a1)
{
  v2 = sub_2231CBDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231CB9A8()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StartRootCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000011, 0x80000002232260A0);
  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v5, v6);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t StartRootCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartRootCandidateRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_33_6() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootCandidateRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartRootCandidateRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootCandidateRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRootCandidateRequestMessage.Builder.isSiriPrompt.setter(char a1)
{
  result = type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

id StartRootCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CBDFC()
{
  result = qword_27D05A750;
  if (!qword_27D05A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartRootCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231CBFA0()
{
  result = qword_27D05A770;
  if (!qword_27D05A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A770);
  }

  return result;
}

unint64_t sub_2231CBFF8()
{
  result = qword_27D05A778;
  if (!qword_27D05A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A778);
  }

  return result;
}

unint64_t sub_2231CC050()
{
  result = qword_27D05A780;
  if (!qword_27D05A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A780);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1)
{

  return sub_223200744();
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_2230E1000(0);
}

void *StartRootLocalRequestMessage.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData);
  v2 = v1;
  return v1;
}

void *StartRootLocalRequestMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A788, &qword_22321C5B0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DB430();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootLocalRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_2_6();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_inputOrigin) = v11;
    v13 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_6();
    sub_2232004C4();
    if (v12 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v8 = sub_223200264();
      sub_22310A610(v11, v12);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData) = v8;
    sub_2230F7158(a1, &v11);
    v6 = RequestMessageBase.init(from:)(&v11);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t StartRootLocalRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartRootLocalRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootLocalRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootLocalRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartRootLocalRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

void *StartRootLocalRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

uint64_t sub_2231CC7D0(uint64_t a1)
{
  v2 = sub_2230DB430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CC80C(uint64_t a1)
{
  v2 = sub_2230DB430();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartRootLocalRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootLocalRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CC97C()
{
  result = qword_27D05A7B0;
  if (!qword_27D05A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7B0);
  }

  return result;
}

unint64_t sub_2231CC9D4()
{
  result = qword_27D05A7B8;
  if (!qword_27D05A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7B8);
  }

  return result;
}

unint64_t sub_2231CCA2C()
{
  result = qword_27D05A7C0;
  if (!qword_27D05A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7C0);
  }

  return result;
}

void *StartRootSpeechRequestMessage.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData);
  v2 = v1;
  return v1;
}

id StartRootSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v50 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v46 = v7;
  MEMORY[0x28223BE20](v8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  v11 = (started - 8);
  MEMORY[0x28223BE20](started);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  v48 = v6;
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v11[10];
  v13[v16] = 19;
  v17 = v11[11];
  *&v13[v17] = 0;
  v18 = v11[12];
  v13[v18] = 2;
  v19 = v11[13];
  *&v13[v19] = 0;
  a1(v13);
  v20 = *v13;
  if (v20 == 15 || !*(v13 + 2))
  {
    goto LABEL_9;
  }

  v45 = *(v13 + 2);
  v44 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  v21 = v48;
  if (__swift_getEnumTagSinglePayload(v5, 1, v48) == 1)
  {
    sub_2230D69D4(v5);
LABEL_9:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v25 = sub_223200014();
    __swift_project_value_buffer(v25, qword_280FCE830);
    v26 = sub_223200004();
    v27 = sub_223200254();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136446210;
      v30 = sub_2230F7898(ObjectType);
      v32 = sub_2231A5D38(v30, v31, &v51);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2230CE000, v26, v27, "Could not build %{public}s: Builder has missing required fields", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DD6780](v29, -1, -1);
      MEMORY[0x223DD6780](v28, -1, -1);
    }

    sub_2231CCFEC(v13);
    type metadata accessor for StartRootSpeechRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v22 = v46;
  (*(v46 + 32))(v47, v5, v21);
  if (!*(v15 + 1) || (v23 = v13[v16], v23 == 19) || (v24 = v13[v18], v24 == 2))
  {
    (*(v22 + 8))(v47, v21);
    goto LABEL_9;
  }

  v35 = v50;
  *(v50 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_inputOrigin) = v23;
  v36 = *&v13[v19];
  *(v35 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData) = v36;
  v37 = *&v13[v17];
  *(v35 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location) = v37;
  *(v35 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_asrOnServer) = v24 & 1;
  MEMORY[0x28223BE20](v37);
  *(&v44 - 48) = v20;
  v38 = v45;
  *(&v44 - 5) = v44;
  *(&v44 - 4) = v38;
  v39 = v47;
  *(&v44 - 3) = v47;
  *(&v44 - 2) = v40;
  *(&v44 - 1) = v41;

  v42 = v36;
  v33 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v43 = v33;
  sub_2231CCFEC(v13);
  if (v33)
  {
  }

  (*(v46 + 8))(v39, v48);
  return v33;
}

uint64_t sub_2231CCFEC(uint64_t a1)
{
  started = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartRootSpeechRequestMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7C8, &qword_22321C778);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CE058();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootSpeechRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_2_6();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_inputOrigin) = v11;
    v13 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_6();
    sub_2232004C4();
    if (v12 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v8 = sub_223200264();
      sub_22310A610(v11, v12);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData) = v8;
    type metadata accessor for Location(0);
    v13 = 2;
    sub_2230E7514(&qword_27D05A7D0, &protocol conformance descriptor for Location);
    sub_2232004C4();
    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location) = v11;
    LOBYTE(v11) = 3;
    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_asrOnServer) = sub_223200504() & 1;
    sub_2230F7158(a1, &v11);
    v6 = RequestMessageBase.init(from:)(&v11);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231CD49C(void *a1)
{
  v3 = v1;
  v19[2] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7D8, &qword_22321C780);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CE058();
  sub_2232007A4();
  LOBYTE(v19[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_inputOrigin);
  sub_2230DB484();
  OUTLINED_FUNCTION_1_27();
  sub_223200654();
  if (!v2)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData);
    if (v9)
    {
      v10 = objc_opt_self();
      v19[0] = 0;
      v11 = v9;
      v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v19];
      v13 = v19[0];
      if (!v12)
      {
        v17 = v13;
        sub_2231FFD04();

        swift_willThrow();
        goto LABEL_2;
      }

      v18 = v11;
      v14 = sub_2231FFD24();
      v16 = v15;

      v19[0] = v14;
      v19[1] = v16;
      sub_2230D7754();
      OUTLINED_FUNCTION_1_27();
      sub_223200654();

      sub_2230D94DC(v14, v16);
    }

    if (*(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location))
    {
      v19[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location);
      type metadata accessor for Location(0);
      sub_2230E7514(&qword_280FCA720, &protocol conformance descriptor for Location);

      sub_223200654();
    }

    LOBYTE(v19[0]) = 3;
    OUTLINED_FUNCTION_1_27();
    sub_223200604();
    sub_2230D77A8(a1);
  }

LABEL_2:
  v6 = OUTLINED_FUNCTION_10_12();
  return v7(v6);
}

uint64_t StartRootSpeechRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartRootSpeechRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_28() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootSpeechRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartRootSpeechRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.location.getter()
{
  type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
}

uint64_t StartRootSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_28() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.asrOnServer.setter(char a1)
{
  result = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *StartRootSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void StartRootSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_28() + 44);

  *(v1 + v2) = v0;
}

uint64_t sub_2231CDCBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000223226530 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7265536E4F727361 && a2 == 0xEB00000000726576)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

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

unint64_t sub_2231CDE24(char a1)
{
  result = 0x69724F7475706E69;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7265536E4F727361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231CDEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231CDCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231CDEEC(uint64_t a1)
{
  v2 = sub_2231CE058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CDF28(uint64_t a1)
{
  v2 = sub_2231CE058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231CDF94()
{
}

id StartRootSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CE058()
{
  result = qword_280FCC768;
  if (!qword_280FCC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC768);
  }

  return result;
}

uint64_t sub_2231CE160(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C238C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231C238C(319, qword_280FCA608, type metadata accessor for Location);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_2231C238C(319, &qword_280FCA900, type metadata accessor for RequestContextData);
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

_BYTE *storeEnumTagSinglePayload for StartRootSpeechRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231CE3F8()
{
  result = qword_27D05A7E0;
  if (!qword_27D05A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7E0);
  }

  return result;
}

unint64_t sub_2231CE450()
{
  result = qword_280FCC758;
  if (!qword_280FCC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC758);
  }

  return result;
}

unint64_t sub_2231CE4A8()
{
  result = qword_280FCC760;
  if (!qword_280FCC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC760);
  }

  return result;
}

void *StartRootTextRequestMessage.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData);
  v2 = v1;
  return v1;
}

uint64_t StartRootTextRequestMessage.textRequestType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_2230D7C34(v2, v3);
}

id StartRootTextRequestMessage.init(build:)(uint64_t (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  started = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  v6 = (started - 8);
  MEMORY[0x28223BE20](started);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v6[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v6[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = v6[10];
  v8[v12] = 19;
  v13 = v6[11];
  *&v8[v13] = 0;
  v14 = &v8[v6[12]];
  *v14 = xmmword_223203230;
  v15 = a1(v8);
  v16 = v8[v12];
  if (v16 == 19)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v17 = sub_223200014();
    __swift_project_value_buffer(v17, qword_280FCE830);
    v18 = sub_223200004();
    v19 = sub_223200254();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136446210;
      v22 = sub_2230F7898(ObjectType);
      v24 = sub_2231A5D38(v22, v23, &v35);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2230CE000, v18, v19, "Could not build %{public}s: Builder has missing required fields", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DD6780](v21, -1, -1);
      MEMORY[0x223DD6780](v20, -1, -1);
    }

    sub_2231CE8F4(v8);
    type metadata accessor for StartRootTextRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_inputOrigin) = v16;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData) = *&v8[v13];
    v26 = *v14;
    v27 = v14[1];
    if (v27 == 2)
    {
      v28 = 0;
    }

    else
    {
      v28 = *v14;
    }

    if (v27 == 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = v14[1];
    }

    v30 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
    *v30 = v28;
    v30[1] = v29;
    MEMORY[0x28223BE20](v15);
    *(&v34 - 2) = v8;
    v32 = v31;
    sub_2231C3E44(v26, v27);
    v25 = RequestMessageBase.init(build:)(sub_2231CF7F4);
    sub_2231CE8F4(v8);
  }

  return v25;
}

uint64_t sub_2231CE8F4(uint64_t a1)
{
  started = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231CE970(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  v7 = *(started + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(started + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void *StartRootTextRequestMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7E8, &qword_22321C960);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CF7FC();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootTextRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_4_29();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_inputOrigin) = v11[0];
    v12 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_29();
    sub_2232004C4();
    if (v11[1] >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v8 = sub_223200264();
      sub_22310A610(v11[0], v11[1]);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData) = v8;
    v12 = 2;
    sub_2231C3EA8();
    OUTLINED_FUNCTION_4_29();
    sub_223200554();
    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType) = *v11;
    sub_2230F7158(a1, v11);
    v6 = RequestMessageBase.init(from:)(v11);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231CED98(void *a1)
{
  v3 = v1;
  v27 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7F0, &unk_22321C968);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CF7FC();
  sub_2232007A4();
  LOBYTE(v25) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_inputOrigin);
  v24 = 0;
  sub_2230DB484();
  OUTLINED_FUNCTION_2_45();
  if (!v2)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData);
    if (v12)
    {
      v13 = objc_opt_self();
      v25 = 0;
      v14 = v12;
      v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v25];
      v16 = v25;
      if (!v15)
      {
        v20 = v16;
        sub_2231FFD04();

        swift_willThrow();
        return (*(v7 + 8))(v10, v5);
      }

      v23 = v14;
      v17 = sub_2231FFD24();
      v19 = v18;

      v25 = v17;
      v26 = v19;
      v24 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_2_45();

      sub_2230D94DC(v17, v19);
    }

    v21 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType + 8);
    v25 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
    v26 = v21;
    v24 = 2;
    sub_2230D7C34(v25, v21);
    sub_2231C3EFC();
    OUTLINED_FUNCTION_2_45();
    sub_2230D7BB4(v25, v26);
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t StartRootTextRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StartRootTextRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootTextRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootTextRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_40() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootTextRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartRootTextRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRootTextRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartRootTextRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartRootTextRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartRootTextRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_40() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartRootTextRequestMessage.Builder.textRequestType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_2231C3E44(v4, v5);
}

uint64_t StartRootTextRequestMessage.Builder.textRequestType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 40));
  result = sub_2231C3F50(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2231CF4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000223226530 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7571655274786574 && a2 == 0xEF65707954747365)
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

uint64_t sub_2231CF5E0(char a1)
{
  if (!a1)
  {
    return 0x69724F7475706E69;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x7571655274786574;
}

uint64_t sub_2231CF658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231CF4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231CF680(uint64_t a1)
{
  v2 = sub_2231CF7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CF6BC(uint64_t a1)
{
  v2 = sub_2231CF7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231CF728()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType + 8);

  return sub_2230D7BB4(v1, v2);
}

id StartRootTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootTextRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CF7FC()
{
  result = qword_280FCCCD0;
  if (!qword_280FCCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCCD0);
  }

  return result;
}

uint64_t sub_2231CF904(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0, &type metadata for InputOrigin);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCAB58, &type metadata for TextRequestType);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for StartRootTextRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231CFB64()
{
  result = qword_27D05A7F8;
  if (!qword_27D05A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7F8);
  }

  return result;
}

unint64_t sub_2231CFBBC()
{
  result = qword_280FCCCC0;
  if (!qword_280FCCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCCC0);
  }

  return result;
}

unint64_t sub_2231CFC14()
{
  result = qword_280FCCCC8;
  if (!qword_280FCCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCCC8);
  }

  return result;
}

uint64_t sub_2231CFC78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000223226800 == a2)
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

uint64_t sub_2231CFD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231CFC78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231CFD44(uint64_t a1)
{
  v2 = sub_2231D0F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CFD80(uint64_t a1)
{
  v2 = sub_2231D0F04();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartSpeechDictationRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v46 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v7;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  v11 = (started - 8);
  MEMORY[0x28223BE20](started);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v11[10];
  v13[v16] = 19;
  v17 = v11[11];
  *&v13[v17] = 0;
  a1(v13);
  v18 = *v13;
  if (v18 == 15)
  {
    goto LABEL_12;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v33 = sub_223200014();
    __swift_project_value_buffer(v33, qword_280FCE830);
    v34 = sub_223200004();
    v35 = sub_223200254();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136446210;
      v38 = sub_2230F7898(ObjectType);
      v40 = sub_2231A5D38(v38, v39, &v47);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DD6780](v37, -1, -1);
      MEMORY[0x223DD6780](v36, -1, -1);
    }

    sub_2231D02B4(v13);
    type metadata accessor for StartSpeechDictationRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v20;
  v22 = v43;
  v21 = v44;
  v23 = (*(v44 + 32))(v43, v5, v6);
  if (!*(v15 + 1) || v13[v16] == 19 || (v24 = *&v13[v17]) == 0)
  {
    (*(v21 + 8))(v22, v6);
    goto LABEL_12;
  }

  v25 = v22;
  *(v46 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationRequestMessage_dictationOptions) = v24;
  MEMORY[0x28223BE20](v23);
  *(&v42 - 64) = v18;
  *(&v42 - 7) = v42;
  *(&v42 - 6) = v19;
  *(&v42 - 5) = v22;
  *(&v42 - 4) = v26;
  *(&v42 - 3) = v27;
  *(&v42 - 16) = v28;
  v30 = v29;
  v31 = StartRequestMessageBase.init(build:)(sub_2231D0EEC);
  v32 = v31;

  sub_2231D02B4(v13);
  if (v31)
  {
  }

  (*(v44 + 8))(v25, v6);
  return v31;
}