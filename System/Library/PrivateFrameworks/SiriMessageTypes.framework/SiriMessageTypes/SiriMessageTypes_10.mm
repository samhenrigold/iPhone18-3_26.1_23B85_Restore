unint64_t sub_2231A190C()
{
  result = qword_27D059F98;
  if (!qword_27D059F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F98);
  }

  return result;
}

unint64_t sub_2231A1964()
{
  result = qword_27D059FA0;
  if (!qword_27D059FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FA0);
  }

  return result;
}

unint64_t sub_2231A19BC()
{
  result = qword_27D059FA8;
  if (!qword_27D059FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FA8);
  }

  return result;
}

void OUTLINED_FUNCTION_16_11()
{

  JUMPOUT(0x223DD6780);
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return type metadata accessor for RunPommesResponseMessage.Builder(0);
}

void OUTLINED_FUNCTION_23_4()
{
  v3 = *(v1 - 136);

  sub_223195A78(v0, v3, 0);
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return type metadata accessor for RunPommesResponseMessage.Builder(0);
}

id RunSiriKitExecutorMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RunSiriKitExecutorMessage.init(build:)(v1);
}

uint64_t RunSiriKitExecutorMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void *RunSiriKitExecutorMessage.Builder.command.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *RunSiriKitExecutorMessage.Builder.commandExecutionInfo.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RunSiriKitExecutorMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunSiriKitExecutorMessage.Builder(0) + 36);

  return sub_2230D1480(v3, a1);
}

uint64_t RunSiriKitExecutorMessage.Builder.requestId.getter()
{
  type metadata accessor for RunSiriKitExecutorMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2231A1DE4(uint64_t a1, uint64_t a2)
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

    else if (a1 == 0xD000000000000014 && 0x8000000223222960 == a2)
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

uint64_t sub_2231A1F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A1DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A1F28(uint64_t a1)
{
  v2 = sub_2230DEE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A1F64(uint64_t a1)
{
  v2 = sub_2230DEE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunSiriKitExecutorMessage.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FB0, &qword_223217CE8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEE58();
  sub_223200794();
  v9 = &qword_280FCDFA0[12];
  if (v2)
  {
    LODWORD(v8) = 0;
    v11 = 0;
    v5 = 0;
  }

  else
  {
    LOBYTE(v34) = 0;
    v10 = sub_223200494();
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId);
    *v13 = v10;
    v13[1] = v14;
    v36 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_35(MEMORY[0x277CC9318]);
    v15 = v34;
    v33 = v35;
    v16 = sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA360, 0x277D47438);
    v32 = v15;
    v17 = sub_223200264();
    v31 = v16;
    if (v17)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_command) = v17;
      v36 = 2;
      OUTLINED_FUNCTION_2_35(MEMORY[0x277CC9318]);
      v21 = v34;
      v22 = v35;
      sub_2230FB7F4(0, &qword_280FCA3B8, 0x277CEF210);
      v30 = v21;
      v23 = sub_223200264();
      v31 = v22;
      v9 = qword_280FCDFA0 + 96;
      if (v23)
      {
        *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo) = v23;
        sub_2230F7158(a1, &v34);
        v11 = RequestMessageBase.init(from:)(&v34);
        v27 = OUTLINED_FUNCTION_2();
        v28(v27);
        sub_2230D94DC(v32, v33);
        sub_2230D94DC(v30, v31);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v11;
      }

      sub_2230F9E38();
      swift_allocError();
      *v24 = 0xD000000000000040;
      *(v24 + 8) = 0x8000000223225510;
      *(v24 + 16) = 0;
      swift_willThrow();
      sub_2230D94DC(v32, v33);
      sub_2230D94DC(v30, v31);
      v25 = OUTLINED_FUNCTION_2();
      v26(v25);
      OUTLINED_FUNCTION_6_21();
      v11 = 1;
    }

    else
    {
      sub_2230F9E38();
      swift_allocError();
      *v18 = 0xD000000000000033;
      *(v18 + 8) = 0x80000002232254D0;
      *(v18 + 16) = 0;
      swift_willThrow();
      sub_2230D94DC(v32, v33);
      v19 = OUTLINED_FUNCTION_2();
      v20(v19);
      v11 = 0;
      OUTLINED_FUNCTION_6_21();
      v9 = qword_280FCDFA0 + 96;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if ((v5 & 1) == 0)
  {
    if (v8)
    {
    }

    if (v11)
    {
    }

    type metadata accessor for RunSiriKitExecutorMessage(0);
    swift_deallocPartialClassInstance();
  }

  return v11;
}

void sub_2231A2510()
{

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo);
}

id RunSiriKitExecutorMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunSiriKitExecutorMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A26AC(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22310AA40(319, &qword_280FCA358, &qword_280FCA360, 0x277D47438);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_22310AA40(319, &qword_280FCA3B0, &qword_280FCA3B8, 0x277CEF210);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_2230F6D30(319);
    if (v8 > 0x3F)
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

unint64_t sub_2231A27F0()
{
  result = qword_27D059FC0;
  if (!qword_27D059FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FC0);
  }

  return result;
}

unint64_t sub_2231A2848()
{
  result = qword_280FCB8B0;
  if (!qword_280FCB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB8B0);
  }

  return result;
}

unint64_t sub_2231A28A0()
{
  result = qword_280FCB8B8;
  if (!qword_280FCB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB8B8);
  }

  return result;
}

void *RunSiriKitExecutorResponseMessage.response.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_response);
  v2 = v1;
  return v1;
}

void *RunSiriKitExecutorResponseMessage.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_error);
  v2 = v1;
  return v1;
}

id RunSiriKitExecutorResponseMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RunSiriKitExecutorResponseMessage.init(build:)(v1);
}

void *RunSiriKitExecutorResponseMessage.Builder.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *RunSiriKitExecutorResponseMessage.Builder.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RunSiriKitExecutorResponseMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunSiriKitExecutorResponseMessage.Builder(0) + 36);

  return sub_2230D1480(v3, a1);
}

uint64_t RunSiriKitExecutorResponseMessage.Builder.requestId.getter()
{
  type metadata accessor for RunSiriKitExecutorResponseMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2231A2CAC(uint64_t a1, uint64_t a2)
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

      else if (a1 == 0x727453726F727265 && a2 == 0xEB00000000676E69)
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

uint64_t sub_2231A2E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A2CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A2E3C(uint64_t a1)
{
  v2 = sub_2230E4F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A2E78(uint64_t a1)
{
  v2 = sub_2230E4F24();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RunSiriKitExecutorResponseMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FC8, &qword_223217E88);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E4F24();
  sub_223200794();
  if (v2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    LOBYTE(v30) = 0;
    v6 = OUTLINED_FUNCTION_5_22();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_invocationId);
    *v10 = v6;
    v10[1] = v11;
    v32 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    v12 = v31;
    if (v31 >> 60 == 15)
    {
      v13 = 0;
      v14 = &qword_280FCDFA0[12];
      goto LABEL_11;
    }

    v17 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_223110BA0(v30, v31);
    v28 = sub_223120750(v30, v31);
    v27 = v30;
    sub_223122550();
    sub_2232000C4();
    v21 = sub_223200294();

    if (v21)
    {
      sub_22310A610(v30, v31);

      v14 = qword_280FCDFA0 + 96;
      v13 = v21;
LABEL_11:
      *(v1 + v14[301]) = v13;
      LOBYTE(v30) = 3;
      v15 = OUTLINED_FUNCTION_5_22();
      v18 = v16;
      if (v16)
      {
        v29 = v15;
        sub_2231A3368();
        v19 = swift_allocError();
        *v20 = v29;
        v20[1] = v18;
      }

      else
      {
        v19 = 0;
      }

      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_error) = v19;
      sub_2230F7158(a1, &v30);
      v8 = RequestMessageBase.init(from:)(&v30);
      v22 = OUTLINED_FUNCTION_2();
      v23(v22);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v8;
    }

    sub_2230F9E38();
    swift_allocError();
    *v24 = 0xD000000000000033;
    *(v24 + 8) = 0x80000002232254D0;
    *(v24 + 16) = 0;
    swift_willThrow();

    sub_22310A610(v27, v12);
    v25 = OUTLINED_FUNCTION_2();
    v26(v25);
    v8 = 0;
    v7 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v7)
  {
  }

  type metadata accessor for RunSiriKitExecutorResponseMessage(0);
  swift_deallocPartialClassInstance();
  return v8;
}

unint64_t sub_2231A3368()
{
  result = qword_27D059FD0;
  if (!qword_27D059FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FD0);
  }

  return result;
}

void sub_2231A3428()
{

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_error);
}

id RunSiriKitExecutorResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunSiriKitExecutorResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A3564(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_223130154(319, &qword_280FCA408, sub_223122550);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2231A369C(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_223130154(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
    if (v8 > 0x3F)
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

void sub_2231A369C(uint64_t a1)
{
  if (!qword_280FCA348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0588E0, &qword_22320CC30);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA348);
    }
  }
}

unint64_t sub_2231A3724()
{
  result = qword_27D059FE0;
  if (!qword_27D059FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FE0);
  }

  return result;
}

unint64_t sub_2231A377C()
{
  result = qword_280FCB7E0;
  if (!qword_280FCB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB7E0);
  }

  return result;
}

unint64_t sub_2231A37D4()
{
  result = qword_280FCB7E8;
  if (!qword_280FCB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB7E8);
  }

  return result;
}

unint64_t sub_2231A386C(char a1)
{
  result = 0x65726F6373;
  switch(a1)
  {
    case 1:
      result = 0x6966697373616C63;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2231A3948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230EFE20(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2231A3978@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2231A386C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2231A39C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230EFE20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A39E8(uint64_t a1)
{
  v2 = sub_2231A3C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A3A24(uint64_t a1)
{
  v2 = sub_2231A3C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SelectedUserAttributes.init(score:classification:lowScoreThreshold:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 20) = 0;
  return result;
}

uint64_t SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 21) = a5;
  return result;
}

uint64_t SelectedUserAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FE8, &qword_223218120);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A3C9C();
  sub_223200794();
  if (!v2)
  {
    v23 = 0;
    OUTLINED_FUNCTION_0_11();
    v11 = sub_223200564();
    v22 = 2;
    OUTLINED_FUNCTION_0_11();
    v12 = sub_223200564();
    v21 = 3;
    OUTLINED_FUNCTION_0_11();
    v18 = sub_223200504();
    v20 = 4;
    OUTLINED_FUNCTION_0_11();
    v17 = sub_223200504();
    v19 = 1;
    OUTLINED_FUNCTION_0_11();
    v14 = sub_223200534();
    v17 &= 1u;
    v18 &= 1u;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v12;
    v15 = v17;
    *(a2 + 20) = v18;
    *(a2 + 21) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2231A3C9C()
{
  result = qword_27D059FF0;
  if (!qword_27D059FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FF0);
  }

  return result;
}

uint64_t SelectedUserAttributes.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FF8, &qword_223218128);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  v10 = *(v1 + 20);
  v12[2] = *(v1 + 21);
  v12[3] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A3C9C();
  sub_2232007A4();
  v19 = 0;
  OUTLINED_FUNCTION_1_27();
  sub_223200664();
  if (!v2)
  {
    v18 = 2;
    OUTLINED_FUNCTION_1_27();
    sub_223200664();
    v17 = 1;
    OUTLINED_FUNCTION_1_27();
    sub_223200634();
    v16 = 3;
    OUTLINED_FUNCTION_1_27();
    sub_223200604();
    v15 = 4;
    OUTLINED_FUNCTION_1_27();
    sub_223200604();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t SelectedUserAttributes.description.getter()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 21);
  sub_223200374();
  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0]();
  type metadata accessor for AFUserIdentityClassfication();
  v3 = sub_223200104();
  MEMORY[0x223DD5AA0](v3);

  MEMORY[0x223DD5AA0](0x637320202020202CLL, 0xEC0000003A65726FLL);
  v4 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v4);

  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0](0xD000000000000018);
  v5 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v5);

  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0]();
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v6, v7);

  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0]();
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v8, v9);

  MEMORY[0x223DD5AA0](0x5D20202020202CLL, 0xE700000000000000);
  return 0;
}

uint64_t static SelectedUserAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 21) ^ *(a2 + 21) ^ 1;
  if ((*(a2 + 20) ^ *(a1 + 20)))
  {
    v2 = 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy22_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SelectedUserAttributes(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 22))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 20);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedUserAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectedUserAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231A42EC()
{
  result = qword_27D05A000;
  if (!qword_27D05A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A000);
  }

  return result;
}

unint64_t sub_2231A4344()
{
  result = qword_27D05A008;
  if (!qword_27D05A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A008);
  }

  return result;
}

unint64_t sub_2231A439C()
{
  result = qword_27D05A010;
  if (!qword_27D05A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A010);
  }

  return result;
}

SiriMessageTypes::ServerFallbackReason_optional __swiftcall ServerFallbackReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ServerFallbackReason.rawValue.getter()
{
  result = 0x70757465536D6463;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x69636544636C6E73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x41676E697373696DLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2231A4544()
{
  result = qword_27D05A018;
  if (!qword_27D05A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A018);
  }

  return result;
}

unint64_t sub_2231A45BC@<X0>(unint64_t *a1@<X8>)
{
  result = ServerFallbackReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ServerFallbackReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2231A4770()
{
  result = qword_280FCA828;
  if (!qword_280FCA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA828);
  }

  return result;
}

uint64_t SessionConfiguration.assistantId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SessionConfiguration.languageCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SessionConfiguration.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

__n128 SessionConfiguration.clientAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  result = *(v1 + 56);
  v4 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t static SessionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if (a1[11])
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 7), *(a2 + 56)), vceqq_s64(*(a1 + 9), *(a2 + 72))))) & 1) == 0)
  {
    return 0;
  }

  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
  if (!v6 && (sub_2232006B4() & 1) == 0 || *(a1 + 89) != *(a2 + 89) || *(a1 + 90) != *(a2 + 90) || *(a1 + 91) != *(a2 + 91) || *(a1 + 92) != *(a2 + 92))
  {
    return 0;
  }

  type metadata accessor for SessionConfiguration(0);

  return _s16SiriMessageTypes17OrchestrationTaskV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_2231A49BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000223225710 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000223225730 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000022 && 0x8000000223225750 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000223225780 == a2;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x616E454151507369 && a2 == 0xEC00000064656C62;
                if (v12 || (sub_2232006B4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000024 && 0x80000002232257A0 == a2;
                  if (v13 || (sub_2232006B4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
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

uint64_t sub_2231A4CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A49BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A4D04(uint64_t a1)
{
  v2 = sub_2230D5AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A4D40(uint64_t a1)
{
  v2 = sub_2230D5AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v38 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A028, &qword_2232184B8);
  OUTLINED_FUNCTION_9();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for SessionConfiguration(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2230D5AEC();
  v40 = v12;
  sub_223200794();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v35 = v8;
  v17 = v37;
  v18 = v38;
  LOBYTE(v42) = 0;
  v19 = v39;
  *v15 = sub_2232004F4();
  *(v15 + 1) = v20;
  LOBYTE(v42) = 1;
  *(v15 + 2) = sub_2232004F4();
  *(v15 + 3) = v21;
  v15[32] = OUTLINED_FUNCTION_1_28(2) & 1;
  v45 = 3;
  sub_2231105AC();
  sub_223200554();
  v22 = *(&v42 + 1);
  *(v15 + 5) = v42;
  *(v15 + 6) = v22;
  type metadata accessor for audit_token_t(0, v23, v24, v25);
  v45 = 4;
  OUTLINED_FUNCTION_2_37();
  sub_2231A5280(v26, v27, MEMORY[0x277D85160]);
  sub_2232004C4();
  v28 = v44;
  v29 = v43;
  *(v15 + 56) = v42;
  *(v15 + 72) = v29;
  v15[88] = v28;
  v15[89] = OUTLINED_FUNCTION_1_28(5) & 1;
  v15[90] = OUTLINED_FUNCTION_1_28(6) & 1;
  v15[91] = OUTLINED_FUNCTION_1_28(7) & 1;
  v15[92] = OUTLINED_FUNCTION_1_28(8) & 1;
  LOBYTE(v42) = 9;
  OUTLINED_FUNCTION_3_30();
  sub_2231A5280(v30, v31, MEMORY[0x277CC9618]);
  v32 = v40;
  sub_223200554();
  (*(v17 + 8))(v32, v19);
  (*(v18 + 32))(&v15[*(v13 + 52)], v35, v4);
  sub_2230D3844(v15, v36);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_2231A52C8(v15);
}

uint64_t sub_2231A5280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2231A52C8(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2231A5324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2231A53D8(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_2231FFDA4();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2231A53D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280FCE6E0)
  {
    type metadata accessor for audit_token_t(255, a2, a3, a4);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, &qword_280FCE6E0);
    }
  }
}

unint64_t sub_2231A5444()
{
  result = qword_27D05A038;
  if (!qword_27D05A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A038);
  }

  return result;
}

unint64_t sub_2231A549C()
{
  result = qword_280FCA800;
  if (!qword_280FCA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA800);
  }

  return result;
}

unint64_t sub_2231A54F4()
{
  result = qword_280FCA808;
  if (!qword_280FCA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA808);
  }

  return result;
}

void *SessionEndedMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SessionEndedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionEndedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SessionEndedMessage(uint64_t a1)
{
  result = qword_280FCE2C8;
  if (!qword_280FCE2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SessionMessageBase.init(from:)(void *a1)
{
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v13 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v14 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A048, &qword_2232186D0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D8878();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SessionMessageBase(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
    sub_223200554();
    (*(v13 + 32))(v15[6] + OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId, v14, v3);
    sub_2230F7158(a1, v15);
    v9 = MessageBase.init(from:)(v15);
    v11 = OUTLINED_FUNCTION_3_3();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231A59A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
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

uint64_t sub_2231A5A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A59A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231A5A54(uint64_t a1)
{
  v2 = sub_2230D8878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A5A90(uint64_t a1)
{
  v2 = sub_2230D8878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SessionMessageBase.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t sub_2231A5CA0()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id SessionMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231A5D38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2231A5DFC(v11, 0, 0, 1, a1, a2);
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
    sub_2231A6568(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2231A5DFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2231A5EFC(a5, a6);
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
    result = sub_2232003B4();
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

uint64_t sub_2231A5EFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2231A5F48(a1, a2);
  sub_2231A6060(&unk_283674328);
  return v3;
}

uint64_t sub_2231A5F48(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_223200154())
  {
    result = sub_2231A6144(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_223200364();
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
          result = sub_2232003B4();
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

uint64_t sub_2231A6060(uint64_t result)
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

    result = sub_2231A61B4(result, v7, 1, v3);
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

void *sub_2231A6144(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A058, &qword_223218838);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2231A61B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A058, &qword_223218838);
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

uint64_t sub_2231A62B0(uint64_t a1)
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

void sub_2231A6394(uint64_t a1)
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
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2231A6464()
{
  result = qword_27D05A050;
  if (!qword_27D05A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A050);
  }

  return result;
}

unint64_t sub_2231A64BC()
{
  result = qword_280FCB558;
  if (!qword_280FCB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB558);
  }

  return result;
}

unint64_t sub_2231A6514()
{
  result = qword_280FCB560;
  if (!qword_280FCB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB560);
  }

  return result;
}

uint64_t sub_2231A6568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2231A65D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000223225710 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000022 && 0x8000000223225750 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000223225730 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7261577265666564 && a2 == 0xEB0000000070756DLL;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000014 && 0x8000000223225900 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_2232006B4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2231A6814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A65D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A683C(uint64_t a1)
{
  v2 = sub_2230D33C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A6878(uint64_t a1)
{
  v2 = sub_2230D33C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionStartedMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
  a1[1] = v2;
}

__n128 SessionStartedMessage.clientAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 32);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void *SessionStartedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A060, &unk_223218840);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v65 - v3;
  v5 = type metadata accessor for SessionConfiguration(0);
  OUTLINED_FUNCTION_4();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A068, &qword_223218850);
  OUTLINED_FUNCTION_9();
  v73 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  v17 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2230D33C0();
  v18 = v75;
  sub_223200794();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v76);
    v27 = v74;
    type metadata accessor for SessionStartedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v71 = v11;
    v72 = v9;
    v75 = v4;
    LOBYTE(v77[0]) = 0;
    v19 = sub_2232004F4();
    v20 = v74;
    v21 = (v74 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
    *v21 = v19;
    v21[1] = v22;
    OUTLINED_FUNCTION_5_23(1);
    v23 = sub_223200504();
    v24 = OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice;
    *(v20 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice) = v23 & 1;
    OUTLINED_FUNCTION_5_23(2);
    v25 = sub_223200504();
    v26 = OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled;
    *(v20 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled) = v25 & 1;
    v79 = 3;
    sub_2231105AC();
    sub_223200554();
    v70 = v26;
    v29 = *(&v77[0] + 1);
    v30 = (v20 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
    *v30 = *&v77[0];
    v30[1] = v29;
    type metadata accessor for audit_token_t(0, v31, v32, v33);
    v79 = 4;
    OUTLINED_FUNCTION_8_20();
    sub_2231A76A8(v34, v35, MEMORY[0x277D85160]);
    sub_2232004C4();
    v69 = v30;
    v36 = v78;
    v37 = v20 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken;
    v38 = v77[1];
    *v37 = v77[0];
    *(v37 + 16) = v38;
    *(v37 + 32) = v36;
    OUTLINED_FUNCTION_5_23(5);
    v39 = sub_2232004A4();
    v67 = v37;
    v68 = v24;
    v40 = OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup;
    *(v20 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup) = v39 & 1;
    v41 = v40;
    LOBYTE(v77[0]) = 6;
    OUTLINED_FUNCTION_7_26();
    sub_2231A76A8(v42, v43, &protocol conformance descriptor for SessionConfiguration);
    v44 = v75;
    sub_2232004C4();
    v65 = v41;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v5);
    v66 = v12;
    if (EnumTagSinglePayload == 1)
    {
      sub_2230D40E0(v44, &qword_27D05A060, &unk_223218840);
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v46 = sub_223200014();
      __swift_project_value_buffer(v46, qword_280FCE830);
      v47 = sub_223200004();
      v48 = sub_223200254();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2230CE000, v47, v48, "SessionStartedMessage Decoder: SessionConfiguration was not found, generating a default. But this can have unintended consequences.", v49, 2u);
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780]();
      }

      v50 = v72;
      sub_2231FFD94();
      v52 = v67;
      v51 = v68;
      v53 = v67[1];
      *(v50 + 56) = *v67;
      v54 = *v21;
      v55 = v21[1];
      v56 = v74;
      LOBYTE(v51) = *(v74 + v51);
      v57 = *(v74 + v70);
      v58 = *v69;
      v59 = v69[1];
      v60 = *(v52 + 32);
      LOBYTE(v52) = *(v74 + v65);
      *v50 = 0;
      *(v50 + 8) = 0xE000000000000000;
      *(v50 + 16) = v54;
      *(v50 + 24) = v55;
      *(v50 + 40) = v58;
      *(v50 + 48) = v59;
      *(v50 + 72) = v53;
      *(v50 + 88) = v60;
      *(v50 + 32) = v51;
      *(v50 + 92) = v52;
      *(v50 + 89) = v57;
      *(v50 + 90) = 0;
      sub_2230D3C1C(v50, v56 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration);
    }

    else
    {
      v61 = v44;
      v62 = v71;
      sub_2230D3C1C(v61, v71);
      sub_2230D3C1C(v62, v74 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration);
    }

    v63 = v73;
    v64 = v76;
    sub_2230F7158(v76, v77);
    v27 = SessionMessageBase.init(from:)(v77);
    (*(v63 + 8))(v16, v66);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  return v27;
}

uint64_t SessionStartedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionStartedMessage.Builder.sessionId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.languageCode.getter()
{
  type metadata accessor for SessionStartedMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SessionStartedMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionStartedMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionStartedMessage.Builder.languageCode.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.understandingOnDevice.setter(char a1)
{
  result = type metadata accessor for SessionStartedMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SessionStartedMessage.Builder.understandingOnDevice.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.isSystemAssistantExperienceEnabled.setter(char a1)
{
  result = type metadata accessor for SessionStartedMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t SessionStartedMessage.Builder.isSystemAssistantExperienceEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_23_5() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t SessionStartedMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for SessionStartedMessage.Builder(0) + 40));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t SessionStartedMessage.Builder.userId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

__n128 SessionStartedMessage.Builder.clientAuditToken.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_5() + 44);
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = v5;
  *(v0 + 32) = v3;
  return result;
}

__n128 SessionStartedMessage.Builder.clientAuditToken.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = v1 + *(type metadata accessor for SessionStartedMessage.Builder(v2) + 44);
  result = *v0;
  v5 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v0 + 32);
  return result;
}

uint64_t SessionStartedMessage.Builder.clientAuditToken.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.deferWarmup.setter(char a1)
{
  result = type metadata accessor for SessionStartedMessage.Builder(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SessionStartedMessage.Builder.deferWarmup.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.sessionConfiguration.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SessionStartedMessage.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2231A7620()
{

  OUTLINED_FUNCTION_2_38();
  return sub_2230D3E14();
}

id SessionStartedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionStartedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A76A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2231A76F8(uint64_t a1)
{
  result = type metadata accessor for SessionConfiguration(319);
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

uint64_t sub_2231A7800(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231A79B0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
      v2 = v8;
      if (v9 > 0x3F)
      {
        return v2;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_2231A79B0(319, &qword_280FCE6E0, type metadata accessor for audit_token_t);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_2231A79B0(319, &qword_280FCA7F0, type metadata accessor for SessionConfiguration);
      v2 = v12;
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_2231A79B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_2231A7A18()
{
  result = qword_27D05A080;
  if (!qword_27D05A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A080);
  }

  return result;
}

unint64_t sub_2231A7A70()
{
  result = qword_280FCDCB0;
  if (!qword_280FCDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDCB0);
  }

  return result;
}

unint64_t sub_2231A7AC8()
{
  result = qword_280FCDCB8;
  if (!qword_280FCDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDCB8);
  }

  return result;
}

void OUTLINED_FUNCTION_20_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_21_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return type metadata accessor for SessionStartedMessage.Builder(0);
}

id ShimToolInvokedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ShimToolInvokedMessage.init(build:)(v1);
}

id ShimToolInvokedMessage.init(build:)(uint64_t (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v13 = v6[11];
  *&v8[v13] = 0;
  v14 = a1(v8);
  v15 = *(v12 + 1);
  if (v15 && (v16 = *&v8[v13]) != 0)
  {
    v17 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId);
    *v17 = *v12;
    v17[1] = v15;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation) = v16;
    MEMORY[0x28223BE20](v14);
    *(&v31 - 2) = v8;
    v19 = v18;

    v20 = RequestMessageBase.init(build:)(sub_2231A8CF8);
    v21 = v20;

    if (v20)
    {
    }

    sub_2231A7F48(v8);
  }

  else
  {
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
      v32 = v26;
      *v25 = 136446210;
      v27 = sub_2230F7898(ObjectType);
      v29 = sub_2231A5D38(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2230CE000, v23, v24, "Could not build %{public}s. Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x223DD6780](v26, -1, -1);
      MEMORY[0x223DD6780](v25, -1, -1);
    }

    sub_2231A7F48(v8);
    type metadata accessor for ShimToolInvokedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

uint64_t sub_2231A7F48(uint64_t a1)
{
  v2 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231A7FC4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
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

uint64_t ShimToolInvokedMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A088, &qword_223218A40);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A8D00();
  sub_223200794();
  if (v2)
  {
    v7 = 0;
  }

  else
  {
    LOBYTE(v21) = 0;
    v6 = sub_2232004F4();
    v9 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId);
    *v9 = v6;
    v9[1] = v10;
    v23 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    if (v22 >> 60 != 15)
    {
      objc_allocWithZone(MEMORY[0x277CCAAC8]);
      sub_223110BA0(v21, v22);
      v20 = v21;
      v14 = sub_223120750(v21, v22);
      v19 = v22;
      sub_2231A8D54();
      sub_2232000C4();
      v15 = sub_223200294();

      if (v15)
      {
        *(v3 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation) = v15;
        sub_2230F7158(a1, &v21);
        v16 = v15;
        v7 = RequestMessageBase.init(from:)(&v21);
        v17 = OUTLINED_FUNCTION_2();
        v18(v17);
        sub_22310A610(v20, v19);

        __swift_destroy_boxed_opaque_existential_1(a1);
        return v7;
      }

      sub_22310A610(v21, v22);
    }

    sub_2230F9E38();
    swift_allocError();
    *v11 = 0xD000000000000054;
    *(v11 + 8) = 0x8000000223225920;
    *(v11 + 16) = 0;
    swift_willThrow();
    v12 = OUTLINED_FUNCTION_2();
    v13(v12);
    v7 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v7)
  {
  }

  type metadata accessor for ShimToolInvokedMessage(0);
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_2231A8480(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A098, &unk_223218A48);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A8D00();
  sub_2232007A4();
  LOBYTE(v16) = 0;
  sub_2232005F4();
  if (v2)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v15[1] = v1;
    [v10 encodeObject:*(v1 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation) forKey:*MEMORY[0x277CCA308]];
    v11 = [v10 encodedData];
    v12 = sub_2231FFD24();
    v14 = v13;

    v16 = v12;
    v17 = v14;
    v18 = 1;
    sub_2230D7754();
    sub_223200654();
    sub_2230D94DC(v16, v17);
    sub_2230D77A8(a1);
    (*(v6 + 8))(v9, v4);
  }
}

uint64_t ShimToolInvokedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ShimToolInvokedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ShimToolInvokedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_1_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ShimToolInvokedMessage.Builder.requestId.getter()
{
  type metadata accessor for ShimToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ShimToolInvokedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ShimToolInvokedMessage.Builder.invocationId.getter()
{
  type metadata accessor for ShimToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ShimToolInvokedMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *ShimToolInvokedMessage.Builder.directInvocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void ShimToolInvokedMessage.Builder.directInvocation.setter()
{
  v2 = *(OUTLINED_FUNCTION_1_30() + 36);

  *(v1 + v2) = v0;
}

uint64_t sub_2231A8A3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002232259E0 == a2)
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

uint64_t sub_2231A8B10(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x697461636F766E69;
  }
}

uint64_t sub_2231A8B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A8A3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A8B84(uint64_t a1)
{
  v2 = sub_2231A8D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A8BC0(uint64_t a1)
{
  v2 = sub_2231A8D00();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2231A8C2C()
{

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation);
}

id ShimToolInvokedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShimToolInvokedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231A8D00()
{
  result = qword_27D05A090;
  if (!qword_27D05A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A090);
  }

  return result;
}

unint64_t sub_2231A8D54()
{
  result = qword_280FCA360;
  if (!qword_280FCA360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FCA360);
  }

  return result;
}

uint64_t sub_2231A8E44(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231A8F74(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2231A8F74(319, &qword_280FCA358, sub_2231A8D54);
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

void sub_2231A8F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ShimToolInvokedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231A90A8()
{
  result = qword_27D05A0B0;
  if (!qword_27D05A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0B0);
  }

  return result;
}

unint64_t sub_2231A9100()
{
  result = qword_27D05A0B8;
  if (!qword_27D05A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0B8);
  }

  return result;
}

unint64_t sub_2231A9158()
{
  result = qword_27D05A0C0;
  if (!qword_27D05A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0C0);
  }

  return result;
}

void *SiriDismissedMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SiriDismissedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriDismissedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SiriDismissedMessage(uint64_t a1)
{
  result = qword_280FCAE20;
  if (!qword_280FCAE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231A9334()
{
  sub_2231FFC64();
  swift_allocObject();
  result = sub_2231FFC54();
  qword_27D080F28 = result;
  return result;
}

uint64_t sub_2231A93E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
  OUTLINED_FUNCTION_8_21();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_2231A9474()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_0_13();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v18 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2231AB904(v12, v10);
  swift_endAccess();

  (*(v14 + 16))(v18, v8, v6);
  v19 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v6;
  *(v20 + 3) = v4;
  *(v20 + 4) = v24;
  (*(v14 + 32))(&v20[v19], v18, v6);
  v21 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + v21);
  sub_2231AB6DC(sub_2231ABA2C, v20, 1, v12, v10, isUniquelyReferenced_nonNull_native);
  *(v1 + v21) = v25;

  swift_endAccess();
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2231A9650(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  OUTLINED_FUNCTION_14_10(a1, a2, a3);

  sub_2231AC1E4(&v11, a1, v3);
  swift_endAccess();

  OUTLINED_FUNCTION_14_10(v5, v6, v7);
  sub_2231AB5E8(a1, v3, &v11);
  LOBYTE(v3) = v12;
  swift_endAccess();
  v8 = OUTLINED_FUNCTION_2_1();
  return sub_2231AC330(v8, v9, v3);
}

uint64_t sub_2231A9700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566465646461 && a2 == 0xEB00000000736575;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x566465766F6D6572 && a2 == 0xED00007365756C61;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
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

uint64_t sub_2231A9824(char a1)
{
  if (!a1)
  {
    return 0x6C61566465646461;
  }

  if (a1 == 1)
  {
    return 0x566465766F6D6572;
  }

  return 0x4974736575716572;
}

uint64_t sub_2231A989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A9700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A98C4(uint64_t a1)
{
  v2 = sub_2231AC3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A9900(uint64_t a1)
{
  v2 = sub_2231AC3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriEnvironmentUpdateMessage.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_0_13();
  v46 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v45 = v11 - v10;
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  v13 = (updated - 8);
  MEMORY[0x28223BE20](updated);
  OUTLINED_FUNCTION_2_2();
  v16 = (v15 - v14);
  v17 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  v18 = sub_223200064();
  v49 = v17;
  *(v0 + v17) = v18;
  v50 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
  *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues) = MEMORY[0x277D84FA0];
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v19 = v13[8];
  v48 = v7;
  __swift_storeEnumTagSinglePayload(&v16[v19], 1, 1, v7);
  v20 = &v16[v13[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v13[10];
  *&v16[v21] = 0;
  v22 = v13[11];
  *&v16[v22] = 0;
  v3(v16);
  v23 = *v16;
  if (v23 == 15)
  {
    goto LABEL_5;
  }

  v24 = *(v16 + 2);
  if (!v24)
  {
    goto LABEL_5;
  }

  v44 = *(v16 + 1);
  sub_2230D1480(&v16[v19], v6);
  v25 = v48;
  if (__swift_getEnumTagSinglePayload(v6, 1, v48) == 1)
  {
    sub_2230D69D4(v6);
LABEL_5:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v27 = sub_223200004();
    v28 = sub_223200254();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v30;
      *v29 = 136446210;
      v31 = sub_2230F7898(ObjectType);
      v33 = sub_2231A5D38(v31, v32, &v51);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2230CE000, v27, v28, "Could not build %{public}s: Builder has missing required fields", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DD6780](v30, -1, -1);
      MEMORY[0x223DD6780](v29, -1, -1);
    }

    sub_2231AC378(v16);

    type metadata accessor for SiriEnvironmentUpdateMessage(0);
    swift_deallocPartialClassInstance();
    goto LABEL_10;
  }

  (*(v46 + 32))(v45, v6, v25);
  if (*&v16[v21])
  {
    v34 = *&v16[v21];
  }

  else
  {
    v34 = sub_223200064();
  }

  v35 = v49;
  OUTLINED_FUNCTION_8_21();
  swift_beginAccess();
  *(v1 + v35) = v34;

  if (*&v16[v22])
  {
    v36 = *&v16[v22];
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  v37 = v50;
  OUTLINED_FUNCTION_8_21();
  swift_beginAccess();
  *(v1 + v37) = v36;

  v38 = *(v20 + 1);
  v39 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId);
  *v39 = *v20;
  v39[1] = v38;
  MEMORY[0x28223BE20](v38);
  *(&v43 - 32) = v23;
  v40 = v45;
  *(&v43 - 3) = v44;
  *(&v43 - 2) = v24;
  *(&v43 - 1) = v40;

  v41 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v42 = v41;
  sub_2231AC378(v16);
  if (v41)
  {
  }

  (*(v46 + 8))(v40, v48);
LABEL_10:
  OUTLINED_FUNCTION_40();
}

{
  SiriEnvironmentUpdateMessage.__allocating_init(build:)();
}

void SiriEnvironmentUpdateMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0C8, &qword_223218C08);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v35 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  *(v1 + v35) = sub_223200064();
  v34 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues) = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AC3F4();
  sub_223200794();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for SiriEnvironmentUpdateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0D8, &unk_223218C10);
    sub_2231AC4A4(&qword_27D05A0E0, sub_2230FB7A0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
    v37 = 1;
    sub_2231AC528(&qword_27D05A0F0);
    OUTLINED_FUNCTION_3_31();
    v30 = *&v36[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0F8, &unk_223218C20);
    v6 = sub_223200424();
    v7 = 0;
    v32 = *&v36[0];
    v8 = *&v36[0] + 64;
    OUTLINED_FUNCTION_2_5();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v31 = v14 + 64;
    if ((v10 & v9) != 0)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_11:
        v18 = v15 | (v7 << 6);
        v19 = (*(v32 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = (v6[6] + 16 * v18);
        v23 = *(*(v32 + 56) + 16 * v18);
        *(v31 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *v22 = v21;
        v22[1] = v20;
        v24 = v6[7] + 24 * v18;
        v33 = v23;
        *v24 = v23;
        *(v24 + 16) = 0;
        v25 = v6[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          break;
        }

        v6[2] = v27;

        sub_223110BA0(v33, *(&v33 + 1));
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v16 = v7;
      while (1)
      {
        v7 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v7 >= v13)
        {

          OUTLINED_FUNCTION_8_21();
          swift_beginAccess();
          *(v3 + v35) = v6;

          OUTLINED_FUNCTION_8_21();
          swift_beginAccess();
          *(v3 + v34) = v30;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
          v38 = 2;
          sub_2231AC448(&qword_27D05A100);
          sub_223200554();
          *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId) = v36[0];
          sub_2230F7158(a1, v36);
          SessionMessageBase.init(from:)(v36);
          v28 = OUTLINED_FUNCTION_2_39();
          v29(v28);
          __swift_destroy_boxed_opaque_existential_1(a1);
          return;
        }

        v17 = *(v8 + 8 * v7);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v11 = (v17 - 1) & v17;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_2231AA3F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A108, &qword_223218C30);
  OUTLINED_FUNCTION_0_13();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AC3F4();
  sub_2232007A4();
  v11 = sub_2231AAC54();
  if (!v2)
  {
    v15 = v11;
    LOBYTE(v14) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0D8, &unk_223218C10);
    sub_2231AC4A4(&qword_27D05A110, sub_2230D7754, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_4_33(&v15, &v14);

    v13 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
    swift_beginAccess();
    *&v14 = *(v3 + v13);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
    sub_2231AC528(&qword_27D05A118);
    OUTLINED_FUNCTION_4_33(&v14, &v16);
    v14 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2231AC448(&qword_280FCA4D0);
    OUTLINED_FUNCTION_4_33(&v14, &v16);
    sub_2230D46B0(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t SiriEnvironmentUpdateMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SiriEnvironmentUpdateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SiriEnvironmentUpdateMessage.Builder.sessionId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = v1 + *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(v2) + 24);

  return sub_2230D4E04(v0, v3);
}

void (*SiriEnvironmentUpdateMessage.Builder.sessionId.modify())()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriEnvironmentUpdateMessage.Builder(v0);
  return nullsub_1;
}

uint64_t SiriEnvironmentUpdateMessage.Builder.requestId.getter()
{
  type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriEnvironmentUpdateMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SiriEnvironmentUpdateMessage.Builder.requestId.modify())()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriEnvironmentUpdateMessage.Builder(v0);
  return nullsub_1;
}

void SiriEnvironmentUpdateMessage.Builder.addEnvironmentValue<A>(key:value:)()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v24 = v2;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v26 = v10;
  OUTLINED_FUNCTION_0_13();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  v17 = *(updated + 32);
  if (!*(v1 + v17))
  {
    *(v1 + v17) = sub_223200064();
  }

  (*(v12 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v5);
  v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v21 = v24;
  v20 = v25;
  *(v19 + 2) = v5;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  (*(v12 + 32))(&v19[v18], &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v1 + v17);
  v23 = v26;
  sub_2231AB6DC(sub_2231ACDCC, v19, 1, v26, v9, isUniquelyReferenced_nonNull_native);

  *(v1 + v17) = v27;
  if (*(v1 + *(updated + 36)))
  {
    sub_2231AB904(v23, v9);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_2231AAAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27D057588 != -1)
  {
    swift_once();
  }

  return sub_2231FFC44();
}

Swift::Void __swiftcall SiriEnvironmentUpdateMessage.Builder.removeEnviromentValue(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  v6 = *(updated + 36);
  if (!*(v2 + v6))
  {
    *(v2 + v6) = MEMORY[0x277D84FA0];
  }

  sub_2231AC1E4(v10, countAndFlagsBits, object);

  if (*(v2 + *(updated + 32)))
  {
    sub_2231AB5E8(countAndFlagsBits, object, v10);
    v7 = v10[0];
    v8 = v10[1];
    v9 = v11;

    sub_2231AC330(v7, v8, v9);
  }
}

void *sub_2231AAC54()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  swift_beginAccess();
  v2 = *(v0 + v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A120, &qword_223218C38);
  v3 = sub_223200424();
  v4 = v2 + 64;
  OUTLINED_FUNCTION_2_5();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v44 = v10 + 64;

  v12 = 0;
  v41 = v2;
  v42 = v3;
  if (v7)
  {
    do
    {
      v13 = __clz(__rbit64(v7));
      v46 = (v7 - 1) & v7;
LABEL_8:
      v16 = v13 | (v12 << 6);
      v17 = (*(v2 + 48) + 16 * v16);
      v18 = v17[1];
      v47 = *v17;
      v19 = *(v2 + 56) + 24 * v16;
      v21 = *v19;
      v20 = *(v19 + 8);
      if (*(v19 + 16) == 1)
      {
        v43 = v18;

        v22 = OUTLINED_FUNCTION_7_27();
        v25 = sub_2231AC68C(v22, v23, v24);
        v26 = v21(v25);
        if (v45)
        {

          v3 = v42;

          v38 = OUTLINED_FUNCTION_7_27();
          sub_2231AC348(v38, v39, v40);
          return v3;
        }

        v28 = v26;
        v29 = v27;
        v30 = OUTLINED_FUNCTION_7_27();
        result = sub_2231AC348(v30, v31, v32);
        v21 = v28;
        v20 = v29;
        v2 = v41;
        v3 = v42;
        v18 = v43;
      }

      else
      {

        result = sub_2231AC68C(v21, v20, 0);
      }

      *(v44 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v33 = (v3[6] + 16 * v16);
      *v33 = v47;
      v33[1] = v18;
      v34 = (v3[7] + 16 * v16);
      *v34 = v21;
      v34[1] = v20;
      v35 = v3[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v3[2] = v37;
      v7 = v46;
    }

    while (v46);
  }

  v14 = v12;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v3;
    }

    v15 = *(v4 + 8 * v12);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v46 = (v15 - 1) & v15;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_2231AAEAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_2232002D4();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v8 - v6, a1);

  sub_2231AB0B0();
}

uint64_t sub_2231AAFB8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_280FCA778);
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Cannot use subscript getter for added values", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, a1);
}

void sub_2231AB0B0()
{
  OUTLINED_FUNCTION_42();
  v23[0] = v1;
  v23[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_8_0();
  v9 = sub_2232002D4();
  OUTLINED_FUNCTION_0_13();
  v11 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  OUTLINED_FUNCTION_0_13();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v20 = v19 - v18;
  (*(v11 + 16))(v14, v0, v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
  {
    v21 = *(v11 + 8);
    v21(v14, v9);
    sub_2231A9650(v8, v6, v22);

    v21(v0, v9);
  }

  else
  {
    (*(v16 + 32))(v20, v14, v4);
    sub_2231A9474();

    (*(v11 + 8))(v0, v9);
    (*(v16 + 8))(v20, v4);
  }

  OUTLINED_FUNCTION_40();
}

void (*sub_2231AB2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, char a2)
{
  v13 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v13;
  v13[4] = a6;
  v13[5] = v6;
  v13[2] = a4;
  v13[3] = a5;
  *v13 = a2;
  v13[1] = a3;
  v14 = sub_2232002D4();
  v13[6] = v14;
  v15 = *(v14 - 8);
  v13[7] = v15;
  v16 = *(v15 + 64);
  v13[8] = __swift_coroFrameAllocStub(v16);
  v17 = __swift_coroFrameAllocStub(v16);
  v13[9] = v17;
  sub_2231AAFB8(a4, v17);
  return sub_2231AB3B0;
}

void sub_2231AB3B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v5 = v2[6];
    v6 = v2[7];
    (*(v6 + 16))(v3, v4, v5);

    sub_2231AB0B0();
    (*(v6 + 8))(v4, v5);
  }

  else
  {

    sub_2231AB0B0();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2231AB4FC()
{
}

id SiriEnvironmentUpdateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriEnvironmentUpdateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231AB5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22314C358(a1, a2);
  if (v6)
  {
    v7 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A178, &qword_223218EB8);
    sub_2232003D4();

    v8 = *(v10 + 56) + 24 * v7;
    v9 = *(v8 + 16);
    *a3 = *v8;
    *(a3 + 16) = v9;
    result = sub_2232003F4();
    *v3 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_2231AB6DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_22314C358(a4, a5);
  if (__OFADD__(v13[2], (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A178, &qword_223218EB8);
  if ((sub_2232003D4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_22314C358(a4, a5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_2232006E4();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    v21 = v20[7] + 24 * v16;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = a3 & 1;

    return sub_2231AC348(v22, v23, v24);
  }

  else
  {
    sub_2231AB848(v16, a4, a5, a1, a2, a3 & 1, v20);
  }
}

unint64_t sub_2231AB848(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_2231AB8A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_223211C20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2231AB904(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_223200744();
  sub_223200124();
  v6 = sub_223200764();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_2232006B4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2231ABA44();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_2231AC02C(v8);
  *v2 = v15;
  return v13;
}

void *sub_2231ABA44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  v2 = *v0;
  v3 = sub_223200334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2231ABB9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  result = sub_223200344();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_223200744();

        sub_223200124();
        result = sub_223200764();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2231ABDD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  result = sub_223200344();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2231AB8A0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_223200744();
    sub_223200124();
    result = sub_223200764();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2231AC02C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_223200324();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_223200744();

        sub_223200124();
        v10 = sub_223200764();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_2231AC1E4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_223200744();
  sub_223200124();
  v8 = sub_223200764();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2232006B4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2231ACC54(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2231AC330(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2231AC348(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2231AC348(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_2230D94DC(a1, a2);
  }
}

uint64_t sub_2231AC378(uint64_t a1)
{
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_2231AC3F4()
{
  result = qword_27D05A0D0;
  if (!qword_27D05A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0D0);
  }

  return result;
}

uint64_t sub_2231AC448(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057640, &qword_2232037A0);
    result = OUTLINED_FUNCTION_13_13(v3);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231AC4A4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A0D8, &unk_223218C10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231AC528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A0E8, &qword_22321FD70);
    result = OUTLINED_FUNCTION_13_13(v3);
    atomic_store(result, a1);
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

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2231AC68C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_223110BA0(a1, a2);
  }
}

uint64_t sub_2231AC8FC(uint64_t a1)
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
        sub_223110900(319, &qword_27D05A148, &qword_27D05A150, &qword_223218CB0);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_223110900(319, &qword_27D05A158, &qword_27D05A0E8, &qword_22321FD70);
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

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentUpdateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231ACB50()
{
  result = qword_27D05A160;
  if (!qword_27D05A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A160);
  }

  return result;
}

unint64_t sub_2231ACBA8()
{
  result = qword_27D05A168;
  if (!qword_27D05A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A168);
  }

  return result;
}

unint64_t sub_2231ACC00()
{
  result = qword_27D05A170;
  if (!qword_27D05A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A170);
  }

  return result;
}

unint64_t sub_2231ACC54(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2231ABDD0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2231ABB9C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_223200744();
      sub_223200124();
      result = sub_223200764();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2232006B4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2231ABA44();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2232006D4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *SiriPromptedMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SiriPromptedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriPromptedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SiriPromptedMessage(uint64_t a1)
{
  result = qword_280FCAE30;
  if (!qword_280FCAE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriUserInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A188, &qword_223218F00);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AD348();
  sub_223200794();
  if (!v2)
  {
    sub_2230FB7A0();
    sub_2232004C4();
    v9 = v23 >> 60;
    if (v23 >> 60 == 15)
    {
      v10 = sub_223200494();
      v12 = v11;
      if (v11)
      {
        v13 = v10;
        v14 = OUTLINED_FUNCTION_28();
        v15(v14);
LABEL_10:
        *a2 = v13;
        *(a2 + 8) = v12;
        *(a2 + 16) = v9 > 0xE;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A190, &qword_223218F08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_223205AB0;
      strcpy((inited + 32), "SiriUserInput");
      *(inited + 46) = -4864;
      OUTLINED_FUNCTION_3_32(inited, MEMORY[0x277D837D0], 0x8000000223225B20);
      sub_223200064();
      v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      OUTLINED_FUNCTION_1_31();
      swift_willThrow();
    }

    else
    {
      sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
      sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
      v13 = sub_223200264();
      if (v13)
      {
        v16 = OUTLINED_FUNCTION_28();
        v17(v16);
        sub_22310A610(v22, v23);
        v12 = 0;
        v9 = v23 >> 60;
        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A190, &qword_223218F08);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_223205AB0;
      strcpy((v20 + 32), "SpeechPackage");
      *(v20 + 46) = -4864;
      OUTLINED_FUNCTION_3_32(v20, MEMORY[0x277D837D0], 0x8000000223225B20);
      sub_223200064();
      v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      OUTLINED_FUNCTION_1_31();
      swift_willThrow();
      sub_22310A610(v22, v23);
    }

    v6 = OUTLINED_FUNCTION_28();
    v7(v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2231AD348()
{
  result = qword_280FCB268[0];
  if (!qword_280FCB268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FCB268);
  }

  return result;
}

uint64_t SiriUserInput.encode(to:)(void *a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A198, &qword_223218F10);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v19 = *v1;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AD348();
  sub_2232007A4();
  if (v9)
  {
    LOBYTE(v21[0]) = 1;
    sub_2232005F4();
    return (*(v5 + 8))(v8, v3);
  }

  else
  {
    v11 = v5;
    v12 = objc_opt_self();
    v21[0] = 0;
    v13 = [v12 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v21];
    v14 = v21[0];
    if (v13)
    {
      v15 = sub_2231FFD24();
      v17 = v16;

      v21[0] = v15;
      v21[1] = v17;
      v20 = 0;
      sub_2230D7754();
      sub_223200654();
      (*(v11 + 8))(v8, v3);
      return sub_2230D94DC(v15, v17);
    }

    else
    {
      v18 = v14;
      sub_2231FFD04();

      swift_willThrow();
      return (*(v11 + 8))(v8, v3);
    }
  }
}

uint64_t sub_2231AD5FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_2231AD6C0(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x686365657073;
  }
}

uint64_t sub_2231AD6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231AD5FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231AD71C(uint64_t a1)
{
  v2 = sub_2231AD348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231AD758(uint64_t a1)
{
  v2 = sub_2231AD348();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2231AD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2232000A4();

  if (a4)
  {
    v8 = sub_223200034();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

_BYTE *storeEnumTagSinglePayload for SiriUserInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231AD970()
{
  result = qword_27D05A1A0;
  if (!qword_27D05A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A1A0);
  }

  return result;
}

unint64_t sub_2231AD9C8()
{
  result = qword_280FCB258;
  if (!qword_280FCB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB258);
  }

  return result;
}

unint64_t sub_2231ADA20()
{
  result = qword_280FCB260;
  if (!qword_280FCB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB260);
  }

  return result;
}

BOOL sub_2231ADAD4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F0518(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231ADB08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231ADAAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231ADB34@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F0518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231ADB60(uint64_t a1)
{
  v2 = sub_2230E3A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231ADB9C(uint64_t a1)
{
  v2 = sub_2230E3A68();

  return MEMORY[0x2821FE720](a1, v2);
}

id SiriWillAskForConfirmationMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
  v11 = type metadata accessor for PromptInfo(0);
  __swift_storeEnumTagSinglePayload(&v6[v10], 1, 1, v11);
  a1(v6);
  sub_2230D30B8(&v6[v10], v1 + OBJC_IVAR____TtC16SiriMessageTypes33SiriWillAskForConfirmationMessage_promptInfo, &qword_27D057FA8, &qword_2232083C0);
  v15 = v6;
  v12 = RequestMessageBase.init(build:)(sub_2231ADE30);
  sub_2231ADE38(v6);
  return v12;
}

uint64_t sub_2231ADD80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
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

uint64_t sub_2231ADE38(uint64_t a1)
{
  v2 = type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SiriWillAskForConfirmationMessage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-1] - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1A8, &qword_223219118);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E3A68();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriWillAskForConfirmationMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(&qword_27D057FC8, &protocol conformance descriptor for PromptInfo);
    sub_2232004C4();
    sub_2231261EC(v5, v12[6] + OBJC_IVAR____TtC16SiriMessageTypes33SiriWillAskForConfirmationMessage_promptInfo);
    sub_2230F7158(a1, v12);
    v7 = RequestMessageBase.init(from:)(v12);
    v9 = OUTLINED_FUNCTION_1_10();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t SiriWillAskForConfirmationMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SiriWillAskForConfirmationMessage.Builder.requestId.getter()
{
  type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriWillAskForConfirmationMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id SiriWillAskForConfirmationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriWillAskForConfirmationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2231AE518(uint64_t a1)
{
  sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SiriWillAskForConfirmationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231AE6C8()
{
  result = qword_27D05A1B8;
  if (!qword_27D05A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A1B8);
  }

  return result;
}

unint64_t sub_2231AE720()
{
  result = qword_280FCAFB8;
  if (!qword_280FCAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAFB8);
  }

  return result;
}

unint64_t sub_2231AE778()
{
  result = qword_280FCAFC0;
  if (!qword_280FCAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAFC0);
  }

  return result;
}

BOOL sub_2231AE7DC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F0758(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_2231AE810@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F0758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231AE83C(uint64_t a1)
{
  v2 = sub_2230E46DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231AE878(uint64_t a1)
{
  v2 = sub_2230E46DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SiriWillPromptMessage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-1] - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1C0, &qword_2232192E8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E46DC();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriWillPromptMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(&qword_27D057FC8, &protocol conformance descriptor for PromptInfo);
    sub_2232004C4();
    sub_2231261EC(v5, v12[6] + OBJC_IVAR____TtC16SiriMessageTypes21SiriWillPromptMessage_promptInfo);
    sub_2230F7158(a1, v12);
    v7 = RequestMessageBase.init(from:)(v12);
    v9 = OUTLINED_FUNCTION_1_10();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t SiriWillPromptMessage.Builder.requestId.getter()
{
  type metadata accessor for SiriWillPromptMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

id SiriWillPromptMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriWillPromptMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for SiriWillPromptMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231AEF84()
{
  result = qword_27D05A1D0;
  if (!qword_27D05A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A1D0);
  }

  return result;
}

uint64_t SiriXActionCandidate.parse.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  type metadata accessor for SiriXActionCandidate(v2);
  OUTLINED_FUNCTION_15_8();
  return sub_2231B28D4(v1 + v3, v0);
}

uint64_t SiriXActionCandidate.loggingId.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = *(type metadata accessor for SiriXActionCandidate(v2) + 28);
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

void SiriXActionCandidate.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v61 = v3;
  v62 = v2;
  v64 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_9_13(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v60 = &v57 - v7;
  OUTLINED_FUNCTION_31_1();
  v8 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v59 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v58 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1D8, &qword_2232194A8);
  OUTLINED_FUNCTION_9_13(v13);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_43_2();
  v16 = type metadata accessor for SiriXParse(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v20 = v19 - v18;
  v21 = type metadata accessor for SiriXActionCandidate.Builder(0);
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_33_5();
  v63 = type metadata accessor for SiriXActionCandidate(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v26 = (v25 - v24);
  *v1 = 0;
  v1[1] = 0;
  v27 = v22[7];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v16);
  v31 = v1 + v22[8];
  *v31 = 0;
  v31[8] = 1;
  v32 = v22[9];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v8);
  v62(v1);
  v36 = v1[1];
  if (!v36)
  {
    goto LABEL_7;
  }

  v62 = *v1;
  sub_2230D3008(v1 + v27, v0, &qword_27D05A1D8, &qword_2232194A8);
  if (__swift_getEnumTagSinglePayload(v0, 1, v16) == 1)
  {
    v37 = &qword_27D05A1D8;
    v38 = &qword_2232194A8;
    v39 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    sub_2231B27E0(v0, v20);
    if (v31[8] == 1)
    {
      OUTLINED_FUNCTION_7_28();
      sub_2231B278C();
      goto LABEL_7;
    }

    v52 = *v31;
    v53 = v60;
    sub_2230D3008(v1 + v32, v60, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v53, 1, v8) != 1)
    {

      OUTLINED_FUNCTION_16_12();
      v54 = v58;
      v55 = *(v59 + 32);
      v55(v58, v53, v8);
      v44 = v63;
      *v26 = v62;
      v26[1] = v36;
      OUTLINED_FUNCTION_2_40();
      sub_2231B27E0(v20, v26 + v56);
      *(v26 + *(v44 + 24)) = v52;
      v55(v26 + *(v44 + 28), v54, v8);
      v51 = v64;
      sub_2231B27E0(v26, v64);
      v50 = 0;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_7_28();
    sub_2231B278C();
    v37 = &qword_27D0575C0;
    v38 = &qword_2232035E0;
    v39 = v53;
  }

  sub_2230D40E0(v39, v37, v38);
LABEL_7:
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_280FCA778);
  }

  v40 = sub_223200014();
  __swift_project_value_buffer(v40, qword_280FCE830);
  v41 = sub_223200004();
  v42 = sub_223200254();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v63;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v65 = v44;
    v66 = v46;
    *v45 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1E0, &qword_2232194B0);
    v47 = sub_223200104();
    v49 = sub_2231A5D38(v47, v48, &v66);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_2230CE000, v41, v42, "Could not build %{public}s: Builder has missing required fields", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_16_12();
  v50 = 1;
  v51 = v64;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v51, v50, 1, v44);
  OUTLINED_FUNCTION_40();
}

uint64_t SiriXActionCandidate.description.getter()
{
  sub_223200374();
  MEMORY[0x223DD5AA0](0xD00000000000001FLL, 0x8000000223225C20);
  MEMORY[0x223DD5AA0](*v0, v0[1]);
  MEMORY[0x223DD5AA0](0x3A6573726170202CLL, 0xE900000000000020);
  type metadata accessor for SiriXActionCandidate(0);
  type metadata accessor for SiriXParse(0);
  sub_2232003C4();
  MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223225C40);
  v1 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v1);

  MEMORY[0x223DD5AA0](0x6E6967676F6C202CLL, 0xED0000203A644967);
  sub_2231FFDA4();
  OUTLINED_FUNCTION_6_23();
  sub_2231B288C(v2, v3, MEMORY[0x277CC9628]);
  v4 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v4);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return 0;
}

uint64_t SiriXActionCandidate.Builder.flowHandlerId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriXActionCandidate.Builder.parse.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriXActionCandidate.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SiriXActionCandidate.Builder.affinityScore.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriXActionCandidate.Builder(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriXActionCandidate.Builder.affinityScore.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriXActionCandidate.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SiriXActionCandidate.Builder.loggingId.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = type metadata accessor for SiriXActionCandidate.Builder(v2);
  return sub_2230D3008(v1 + *(v3 + 28), v0, &qword_27D0575C0, &qword_2232035E0);
}

uint64_t SiriXActionCandidate.Builder.loggingId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for SiriXActionCandidate.Builder(v2);
  return sub_2230D2E1C(v0, v1 + *(v3 + 28), &qword_27D0575C0, &qword_2232035E0);
}

uint64_t SiriXActionCandidate.Builder.loggingId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriXActionCandidate.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2231AFAB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E6148776F6C66 && a2 == 0xED0000644972656CLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573726170 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974696E69666661 && a2 == 0xED000065726F6353;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x49676E6967676F6CLL && a2 == 0xE900000000000064)
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

uint64_t sub_2231AFC1C(char a1)
{
  result = 0x646E6148776F6C66;
  switch(a1)
  {
    case 1:
      result = 0x6573726170;
      break;
    case 2:
      result = 0x7974696E69666661;
      break;
    case 3:
      result = 0x49676E6967676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231AFCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231AFAB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231AFCE8(uint64_t a1)
{
  v2 = sub_2231B2838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231AFD24(uint64_t a1)
{
  v2 = sub_2231B2838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriXActionCandidate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1E8, &qword_2232194B8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_33_5();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B2838();
  sub_2232007A4();
  OUTLINED_FUNCTION_6_10();
  sub_2232005F4();
  if (!v1)
  {
    type metadata accessor for SiriXActionCandidate(0);
    type metadata accessor for SiriXParse(0);
    OUTLINED_FUNCTION_14_11();
    sub_2231B288C(v8, v9, &protocol conformance descriptor for SiriXParse);
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    OUTLINED_FUNCTION_6_10();
    sub_223200634();
    sub_2231FFDA4();
    OUTLINED_FUNCTION_6_23();
    sub_2231B288C(v10, v11, MEMORY[0x277CC95F8]);
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
  }

  return (*(v6 + 8))(v2, v4);
}

void SiriXActionCandidate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_8_1();
  v62 = v24;
  v28 = v27;
  v56 = v29;
  v57 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v55 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  v58 = v33 - v32;
  v34 = OUTLINED_FUNCTION_31_1();
  type metadata accessor for SiriXParse(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1F0, &qword_2232194C0);
  OUTLINED_FUNCTION_9();
  v59 = v37;
  v60 = v36;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v38);
  v40 = v54 - v39;
  v41 = type metadata accessor for SiriXActionCandidate(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_31_4();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2231B2838();
  v61 = v40;
  v43 = v62;
  sub_223200794();
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v44 = v59;
    v62 = v28;
    v45 = v25;
    *v25 = sub_2232004F4();
    v25[1] = v46;
    v54[1] = v46;
    OUTLINED_FUNCTION_14_11();
    sub_2231B288C(v47, v48, &protocol conformance descriptor for SiriXParse);
    sub_223200554();
    OUTLINED_FUNCTION_2_40();
    sub_2231B27E0(v26, v25 + v49);
    *(v25 + *(v41 + 24)) = sub_223200534();
    OUTLINED_FUNCTION_6_23();
    sub_2231B288C(v50, v51, MEMORY[0x277CC9618]);
    v53 = v57;
    v52 = v58;
    sub_223200554();
    (*(v44 + 8))(v61, v60);
    (*(v55 + 32))(v45 + *(v41 + 28), v52, v53);
    sub_2231B28D4(v45, v56);
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_2231B278C();
  }

  OUTLINED_FUNCTION_9_0();
}

void SiriXUSOParse.debugDescription.getter()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  sub_223200374();

  v19 = 0xD000000000000017;
  v20 = 0x8000000223225C60;
  v3 = type metadata accessor for SiriXUSOParse(0);
  v4 = (v0 + v3[6]);
  v5 = v4[1];
  *&v23 = *v4;
  *(&v23 + 1) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v6 = sub_223200104();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](0xD000000000000014, 0x8000000223225C80);
  sub_2230D3008(v0 + v3[5], v1, &qword_27D05A200, &unk_2232194C8);
  v7 = sub_223200104();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](11305, 0xE200000000000000);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_223200374();

  strcpy(&v23, "groupIndex: ");
  BYTE13(v23) = 0;
  HIWORD(v23) = -5120;
  v8 = (v0 + v3[7]);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 4);
  LODWORD(v19) = v9;
  BYTE4(v19) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A208, &qword_2232194D8);
  v10 = sub_223200104();
  MEMORY[0x223DD5AA0](v10);

  MEMORY[0x223DD5AA0](0x615072657375202CLL, 0xED0000203A657372);
  sub_2231FFEB4();
  OUTLINED_FUNCTION_18_10();
  v11 = sub_2231FFE14();
  v21 = v11;
  OUTLINED_FUNCTION_5_24();
  v22 = sub_2231B288C(v12, v13, MEMORY[0x277D5DB00]);
  v14 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(v11 - 8) + 16))(v14, v0, v11);
  v15 = sub_2231FFEA4();
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(&v19);
  MEMORY[0x223DD5AA0](v15, v17);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  v18 = v23;
  v19 = 0xD000000000000017;
  v20 = 0x8000000223225C60;

  MEMORY[0x223DD5AA0](v18, *(&v18 + 1));

  OUTLINED_FUNCTION_40();
}

void SiriXUSOParse.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v48 = v2;
  v49 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CA0, &qword_2232194E0);
  OUTLINED_FUNCTION_9_13(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_4();
  v6 = sub_2231FFE14();
  OUTLINED_FUNCTION_9();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_31_1();
  v13 = type metadata accessor for SiriXUSOParse.Builder(v12);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_33_5();
  v15 = type metadata accessor for SiriXUSOParse(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v6);
  v23 = v14[7];
  sub_2231FFDF4();
  v46 = v23;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = (v0 + v14[8]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v0 + v14[9];
  *v29 = 0;
  *(v29 + 4) = 1;
  v48(v0);
  sub_2230D3008(v0, v1, &qword_27D058CA0, &qword_2232194E0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    sub_2230D40E0(v1, &qword_27D058CA0, &qword_2232194E0);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 136446210;
      v35 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A210, &qword_2232194E8);
      v36 = sub_223200104();
      v38 = sub_2231A5D38(v36, v37, &v50);

      *(v33 + 4) = v38;
      v15 = v35;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    OUTLINED_FUNCTION_17_9();
    v39 = 1;
    v40 = v49;
  }

  else
  {
    v41 = *(v47 + 32);
    v41(v11, v1, v6);
    v41(v19, v11, v6);
    sub_2230D3008(v0 + v46, v19 + v15[5], &qword_27D05A200, &unk_2232194C8);
    v42 = v28[1];
    v43 = (v19 + v15[6]);
    *v43 = *v28;
    v43[1] = v42;
    v44 = *v29;
    LOBYTE(v41) = *(v29 + 4);

    OUTLINED_FUNCTION_17_9();
    v45 = v19 + v15[7];
    *v45 = v44;
    *(v45 + 4) = v41;
    OUTLINED_FUNCTION_1_34();
    sub_2231B27E0(v19, v49);
    v39 = 0;
    v40 = v49;
  }

  __swift_storeEnumTagSinglePayload(v40, v39, 1, v15);
  OUTLINED_FUNCTION_40();
}

uint64_t SiriXUSOParse.userParse.getter()
{
  OUTLINED_FUNCTION_20_0();
  sub_2231FFE14();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_2_1();

  return v1(v0);
}

unint64_t sub_2231B0B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230F09A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2231B0B84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230F09F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2231B0BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230F09A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B0BE0(uint64_t a1)
{
  v2 = sub_2231B29CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B0C1C(uint64_t a1)
{
  v2 = sub_2231B29CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXUSOParse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v52 = v0;
  v5 = v4;
  v47 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_9_13(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v50 = &v44 - v9;
  OUTLINED_FUNCTION_31_1();
  v10 = sub_2231FFF64();
  v11 = OUTLINED_FUNCTION_9_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v49 = v13 - v12;
  OUTLINED_FUNCTION_31_1();
  v14 = sub_2231FFE14();
  OUTLINED_FUNCTION_9();
  v48 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A218, &unk_2232194F0);
  OUTLINED_FUNCTION_9();
  v51 = v18;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v20 = type metadata accessor for SiriXUSOParse(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_31_4();
  v22 = v5[3];
  v53 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v22);
  sub_2231B29CC();
  v23 = v52;
  sub_223200794();
  if (!v23)
  {
    v45 = v1;
    v46 = v20;
    v52 = v14;
    v24 = v50;
    LOBYTE(v54) = 0;
    sub_2232004F4();
    v44 = v2;
    sub_2231FFF54();
    OUTLINED_FUNCTION_5_24();
    sub_2231B288C(v25, v26, MEMORY[0x277D5DB00]);
    sub_2231FFFC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A220, &qword_22321FD80);
    sub_2231B2A20();
    OUTLINED_FUNCTION_9_26();
    sub_223200554();
    v49 = v3;
    if (v55)
    {
      sub_2231FFDF4();
      v27 = v24;
      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    }

    else
    {
      v27 = v24;
      sub_2231FFDD4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2231B2A9C();
    OUTLINED_FUNCTION_9_26();
    v32 = v44;
    sub_223200554();
    v33 = v48;
    v34 = v51;
    v35 = v54;
    v36 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A208, &qword_2232194D8);
    sub_2231B2B18();
    OUTLINED_FUNCTION_9_26();
    sub_223200554();
    (*(v34 + 8))(v32, v17);
    v37 = v54;
    v38 = v27;
    v39 = BYTE4(v54);
    v40 = v45;
    (*(v33 + 32))(v45, v49, v52);
    v41 = v46;
    sub_2231B2B94(v38, v40 + *(v46 + 20));
    v42 = (v40 + *(v41 + 24));
    *v42 = v35;
    v42[1] = v36;
    v43 = v40 + *(v41 + 28);
    *v43 = v37;
    *(v43 + 4) = v39;
    OUTLINED_FUNCTION_1_34();
    sub_2231B27E0(v40, v47);
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  OUTLINED_FUNCTION_9_0();
}

void SiriXUSOParse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v34 = v1;
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_9_13(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - v9;
  OUTLINED_FUNCTION_31_1();
  v10 = sub_2231FFF84();
  OUTLINED_FUNCTION_9();
  v33 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A238, &qword_223219500);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_31_4();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2231B29CC();
  sub_2232007A4();
  sub_2231FFF74();
  sub_2231FFE14();
  OUTLINED_FUNCTION_5_24();
  sub_2231B288C(v17, v18, MEMORY[0x277D5DB00]);
  v19 = v34;
  sub_2231FFFB4();
  v20 = (v33 + 8);
  if (v19)
  {
    (*v20)(v3, v10);
    (*(v15 + 8))(v2, v13);
  }

  else
  {
    (*v20)(v3, v10);
    LOBYTE(v35) = 0;
    sub_2232005F4();
    v21 = v2;

    v34 = type metadata accessor for SiriXUSOParse(0);
    v22 = v4;
    v23 = v4 + *(v34 + 20);
    v24 = v32;
    sub_2230D3008(v23, v32, &qword_27D05A200, &unk_2232194C8);
    v25 = sub_2231FFDF4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
    if (EnumTagSinglePayload == 1)
    {
      sub_2230D40E0(v24, &qword_27D05A200, &unk_2232194C8);
      v27 = 0;
    }

    else
    {
      v27 = sub_2231FFDE4();
      (*(*(v25 - 8) + 8))(v24, v25);
    }

    *&v35 = v27;
    BYTE8(v35) = EnumTagSinglePayload == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A220, &qword_22321FD80);
    sub_2231B2C04();
    OUTLINED_FUNCTION_19_8();
    sub_223200654();
    v28 = v34;
    v35 = *(v22 + *(v34 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2230F994C();
    OUTLINED_FUNCTION_19_8();
    sub_223200654();
    v29 = (v22 + *(v28 + 28));
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 4);
    LODWORD(v35) = v30;
    BYTE4(v35) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A208, &qword_2232194D8);
    sub_2231B2C80();
    OUTLINED_FUNCTION_19_8();
    sub_223200654();
    (*(v15 + 8))(v21, v13);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t SiriXUSOParse.Builder.parserIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriXUSOParse.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2231B1718(void (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXUSOParse.Builder.appBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriXUSOParse.Builder(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriXUSOParse.Builder.appBundleId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriXUSOParse.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

uint64_t SiriXUSOParse.Builder.groupIndex.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  result = type metadata accessor for SiriXUSOParse.Builder(v2);
  v4 = v1 + *(result + 28);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t SiriXUSOParse.Builder.groupIndex.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for SiriXUSOParse.Builder(v0);
  return OUTLINED_FUNCTION_8();
}

void static SiriXUSOParse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v5 = v4;
  v6 = sub_2231FFDF4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_31_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_9_13(v10);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A240, &qword_223219508);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  if ((sub_2231FFE04() & 1) == 0)
  {
    goto LABEL_11;
  }

  v31 = v8;
  v30 = type metadata accessor for SiriXUSOParse(0);
  v16 = *(v30 + 20);
  v17 = *(v12 + 48);
  sub_2230D3008(v5 + v16, v15, &qword_27D05A200, &unk_2232194C8);
  v18 = v3 + v16;
  v19 = v3;
  sub_2230D3008(v18, &v15[v17], &qword_27D05A200, &unk_2232194C8);
  OUTLINED_FUNCTION_46(v15);
  if (!v20)
  {
    sub_2230D3008(v15, v1, &qword_27D05A200, &unk_2232194C8);
    OUTLINED_FUNCTION_46(&v15[v17]);
    if (!v20)
    {
      v21 = v31;
      (*(v31 + 32))(v0, &v15[v17], v6);
      sub_2231B288C(&qword_27D05A248, MEMORY[0x277D5DA88], MEMORY[0x277D5DA98]);
      v22 = sub_223200094();
      v23 = *(v21 + 8);
      v23(v0, v6);
      v23(v1, v6);
      v19 = v3;
      sub_2230D40E0(v15, &qword_27D05A200, &unk_2232194C8);
      if ((v22 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    (*(v31 + 8))(v1, v6);
LABEL_10:
    sub_2230D40E0(v15, &qword_27D05A240, &qword_223219508);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_46(&v15[v17]);
  if (!v20)
  {
    goto LABEL_10;
  }

  sub_2230D40E0(v15, &qword_27D05A200, &unk_2232194C8);
LABEL_13:
  v24 = *(v30 + 24);
  v25 = (v5 + v24);
  v26 = *(v5 + v24 + 8);
  v27 = (v19 + v24);
  v28 = v27[1];
  if (v26 && v28 && (*v25 != *v27 || v26 != v28))
  {
    sub_2232006B4();
  }

LABEL_11:
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2231B1C14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_34_4(1701869940, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65737261506F7375 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_34_4(0x65737261506F7375, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000223225CC0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_34_4(0xD000000000000012, 0x8000000223225CC0);

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

uint64_t sub_2231B1D08(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0x65737261506F7375;
  }

  return 0xD000000000000012;
}

uint64_t sub_2231B1D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B1C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B1DD0(uint64_t a1)
{
  v2 = sub_2231B2CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B1E0C(uint64_t a1)
{
  v2 = sub_2231B2CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXParse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v31 = v5;
  type metadata accessor for SiriXUSOParse(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_33_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A250, &qword_223219510);
  OUTLINED_FUNCTION_9();
  v32 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_43_2();
  type metadata accessor for SiriXParse(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v14 = (v13 - v12);
  v33 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v15 = sub_2231B2CFC();
  sub_223200794();
  if (!v1)
  {
    sub_2231B2D50();
    OUTLINED_FUNCTION_30_4(&type metadata for SiriXParse.ParseType);
    if (v34)
    {
      if (v34 == 1)
      {
        sub_2230FB7A0();
        OUTLINED_FUNCTION_30_4(MEMORY[0x277CC9318]);
        sub_2231717C8();
        OUTLINED_FUNCTION_18_10();
        v16 = sub_2231FFFF4();
        v17 = sub_223200264();
        v24 = v17;
        if (!v17)
        {
          v27 = sub_2232003A4();
          swift_allocError();
          v29 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
          *v29 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A08, &qword_223205AE0);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_223205AB0;
          *(v30 + 56) = &type metadata for SiriXParse.CodingKeys;
          *(v30 + 64) = v15;
          *(v30 + 32) = 2;
          sub_223200394();
          (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
          swift_willThrow();
          sub_2230D94DC(v34, v35);
          (*(v32 + 8))(v0, v7);
          goto LABEL_8;
        }

        v25 = OUTLINED_FUNCTION_10_16();
        v26(v25);
        sub_2230D94DC(v34, v35);
        *v14 = v24;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_10_16();
        v23(v22);
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_14();
      sub_2231B288C(v18, v19, &protocol conformance descriptor for SiriXUSOParse);
      sub_223200554();
      v20 = OUTLINED_FUNCTION_10_16();
      v21(v20);
      OUTLINED_FUNCTION_1_34();
      sub_2231B27E0(v2, v14);
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_40();
    sub_2231B27E0(v14, v31);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_9_0();
}

void SiriXParse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v0;
  v5 = v4;
  v28[2] = *MEMORY[0x277D85DE8];
  type metadata accessor for SiriXUSOParse(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  type metadata accessor for SiriXParse(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_38_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A268, &qword_223219518);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33_5();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2231B2CFC();
  sub_2232007A4();
  OUTLINED_FUNCTION_15_8();
  sub_2231B28D4(v3, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_34();
    sub_2231B27E0(v2, v9);
    LOBYTE(v28[0]) = 0;
    sub_2231B2DA4();
    OUTLINED_FUNCTION_21_11();
    if (!v1)
    {
      LOBYTE(v28[0]) = 1;
      OUTLINED_FUNCTION_13_14();
      sub_2231B288C(v16, v17, &protocol conformance descriptor for SiriXUSOParse);
      sub_223200654();
    }

    sub_2231B278C();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    LOBYTE(v28[0]) = 2;
    sub_2231B2DA4();
    OUTLINED_FUNCTION_21_11();
LABEL_9:
    v18 = OUTLINED_FUNCTION_18_13();
    v19(v18);
    goto LABEL_10;
  }

  v13 = *v2;
  LOBYTE(v28[0]) = 1;
  sub_2231B2DA4();
  OUTLINED_FUNCTION_21_11();
  if (!v1)
  {
    v28[0] = 0;
    v20 = [objc_opt_self() archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v28];
    v21 = v28[0];
    if (v20)
    {
      v22 = sub_2231FFD24();
      v24 = v23;

      v28[0] = v22;
      v28[1] = v24;
      sub_2230D7754();
      sub_223200654();
      v25 = OUTLINED_FUNCTION_18_13();
      v26(v25);

      sub_2230D94DC(v22, v24);
      goto LABEL_10;
    }

    v27 = v21;
    sub_2231FFD04();

    swift_willThrow();
    goto LABEL_9;
  }

  v14 = OUTLINED_FUNCTION_18_13();
  v15(v14);

LABEL_10:
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B2618(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_2231B2654@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2231B2618(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2231B2680@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231B2628(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2231B278C()
{
  v1 = OUTLINED_FUNCTION_8_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2231B27E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return a2;
}

unint64_t sub_2231B2838()
{
  result = qword_280FCB4A8;
  if (!qword_280FCB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB4A8);
  }

  return result;
}

uint64_t sub_2231B288C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2231B28D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_10();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_2231B29CC()
{
  result = qword_280FCB240;
  if (!qword_280FCB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB240);
  }

  return result;
}

unint64_t sub_2231B2A20()
{
  result = qword_27D05A228;
  if (!qword_27D05A228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A220, &qword_22321FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A228);
  }

  return result;
}

unint64_t sub_2231B2A9C()
{
  result = qword_27D05A100;
  if (!qword_27D05A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057640, &qword_2232037A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A100);
  }

  return result;
}

unint64_t sub_2231B2B18()
{
  result = qword_27D05A230;
  if (!qword_27D05A230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A208, &qword_2232194D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A230);
  }

  return result;
}

uint64_t sub_2231B2B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A200, &unk_2232194C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2231B2C04()
{
  result = qword_280FCA428;
  if (!qword_280FCA428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A220, &qword_22321FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA428);
  }

  return result;
}

unint64_t sub_2231B2C80()
{
  result = qword_280FCA328;
  if (!qword_280FCA328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A208, &qword_2232194D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA328);
  }

  return result;
}

unint64_t sub_2231B2CFC()
{
  result = qword_280FCB348;
  if (!qword_280FCB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB348);
  }

  return result;
}

unint64_t sub_2231B2D50()
{
  result = qword_27D05A258;
  if (!qword_27D05A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A258);
  }

  return result;
}

unint64_t sub_2231B2DA4()
{
  result = qword_280FCB330;
  if (!qword_280FCB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB330);
  }

  return result;
}

uint64_t sub_2231B2E20(uint64_t a1)
{
  result = type metadata accessor for SiriXParse(319);
  if (v2 <= 0x3F)
  {
    result = sub_2231FFDA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2231B2EE4(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2231B2FF0(319, qword_280FCB2E0, type metadata accessor for SiriXParse);
    if (v2 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA430, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_2231B2FF0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2231B2FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_2231B306C(uint64_t a1)
{
  sub_2231FFE14();
  if (v1 <= 0x3F)
  {
    sub_2231B2FF0(319, &qword_280FCE668, MEMORY[0x277D5DA88]);
    if (v2 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA330, MEMORY[0x277D84CC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2231B3184(uint64_t a1)
{
  sub_2231B2FF0(319, &qword_280FCE658, MEMORY[0x277D5DB08]);
  if (v1 <= 0x3F)
  {
    sub_2231B2FF0(319, &qword_280FCE668, MEMORY[0x277D5DA88]);
    if (v2 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA330, MEMORY[0x277D84CC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2231B3290(uint64_t a1)
{
  result = type metadata accessor for SiriXUSOParse(319);
  if (v2 <= 0x3F)
  {
    result = sub_2231FFFF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_2231B3314(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231B3400(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B34E0()
{
  result = qword_27D05A270;
  if (!qword_27D05A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A270);
  }

  return result;
}

unint64_t sub_2231B3538()
{
  result = qword_27D05A278;
  if (!qword_27D05A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A278);
  }

  return result;
}

unint64_t sub_2231B3590()
{
  result = qword_27D05A280;
  if (!qword_27D05A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A280);
  }

  return result;
}

unint64_t sub_2231B35E8()
{
  result = qword_27D05A288;
  if (!qword_27D05A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A288);
  }

  return result;
}

unint64_t sub_2231B3640()
{
  result = qword_280FCB338;
  if (!qword_280FCB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB338);
  }

  return result;
}

unint64_t sub_2231B3698()
{
  result = qword_280FCB340;
  if (!qword_280FCB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB340);
  }

  return result;
}

unint64_t sub_2231B36F0()
{
  result = qword_280FCB230;
  if (!qword_280FCB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB230);
  }

  return result;
}

unint64_t sub_2231B3748()
{
  result = qword_280FCB238;
  if (!qword_280FCB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB238);
  }

  return result;
}

unint64_t sub_2231B37A0()
{
  result = qword_280FCB498;
  if (!qword_280FCB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB498);
  }

  return result;
}

unint64_t sub_2231B37F8()
{
  result = qword_280FCB4A0;
  if (!qword_280FCB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB4A0);
  }

  return result;
}

unint64_t sub_2231B384C()
{
  result = qword_280FCB328;
  if (!qword_280FCB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB328);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_2231B278C();
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return sub_223200654();
}

id SiriXActionCandidatesGeneratedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return SiriXActionCandidatesGeneratedMessage.init(build:)(v1);
}

id SiriXActionCandidatesGeneratedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = v6[9];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v6[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v8[v6[11]] = 15;
  a1(v8);
  v12 = *v8;
  if (*v8 && (v13 = *(v8 + 2)) != 0)
  {
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_actionCandidates) = v12;
    v14 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId);
    *v14 = *(v8 + 1);
    v14[1] = v13;
    MEMORY[0x28223BE20](v12);
    *(&v25 - 2) = v8;

    v15 = RequestMessageBase.init(build:)(sub_2231B4938);
    sub_2231B3CD0(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v16 = sub_223200014();
    __swift_project_value_buffer(v16, qword_280FCE830);
    v17 = sub_223200004();
    v18 = sub_223200254();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      v21 = sub_2230F7898(ObjectType);
      v23 = sub_2231A5D38(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2230CE000, v17, v18, "Could not build %{public}s. Builder has missing required fields", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DD6780](v20, -1, -1);
      MEMORY[0x223DD6780](v19, -1, -1);
    }

    sub_2231B3CD0(v8);
    type metadata accessor for SiriXActionCandidatesGeneratedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t sub_2231B3CD0(uint64_t a1)
{
  v2 = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231B3D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  v5 = (a2 + v4[8]);
  v7 = *v5;
  v6 = v5[1];

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = type metadata accessor for RequestMessageBase.Builder(0);
  v11 = (a1 + *(v10 + 28));

  *v11 = v9;
  v11[1] = v8;
  result = sub_2230DAEC8(a2 + v4[7], a1 + *(v10 + 24));
  *a1 = *(a2 + v4[9]);
  return result;
}

void *SiriXActionCandidatesGeneratedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A290, &qword_223219BB0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B4940();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriXActionCandidatesGeneratedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A298, &qword_223219BB8);
    v13 = 0;
    sub_2231B4994(&qword_27D05A2A0, &qword_27D05A2A8, &protocol conformance descriptor for SiriXActionCandidate, MEMORY[0x277D83978]);
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_actionCandidates) = v12[0];
    LOBYTE(v12[0]) = 1;
    v6 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_rcId);
    *v7 = v6;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231B4124(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2B0, &unk_223219BC0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231B4940();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37SiriXActionCandidatesGeneratedMessage_actionCandidates);
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A298, &qword_223219BB8);
  sub_2231B4994(&qword_280FCA480, qword_280FCB3F8, &protocol conformance descriptor for SiriXActionCandidate, MEMORY[0x277D83948]);
  sub_223200654();
  if (!v2)
  {
    v11[14] = 1;
    sub_2232005F4();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.actionCandidates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.rcId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_34() + 28);

  return sub_2230D4E04(v0, v2);
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.assistantId.getter()
{
  type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SiriXActionCandidatesGeneratedMessage.Builder.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_2231B468C(uint64_t a1, uint64_t a2)
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

uint64_t sub_2231B46E0(char a1)
{
  if (a1)
  {
    return 1682531186;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2231B4738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2231B468C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231B4768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231B46E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231B479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B468C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B47C4(uint64_t a1)
{
  v2 = sub_2231B4940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B4800(uint64_t a1)
{
  v2 = sub_2231B4940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B486C()
{
}

id SiriXActionCandidatesGeneratedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriXActionCandidatesGeneratedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231B4940()
{
  result = qword_280FCAF00;
  if (!qword_280FCAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAF00);
  }

  return result;
}

uint64_t sub_2231B4994(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A298, &qword_223219BB8);
    sub_2231B4A1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231B4A1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriXActionCandidate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231B4B0C(uint64_t a1)
{
  sub_2231B4BFC(319);
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
        sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
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

void sub_2231B4BFC(uint64_t a1)
{
  if (!qword_280FCA478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A298, &qword_223219BB8);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA478);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SiriXActionCandidatesGeneratedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231B4D40()
{
  result = qword_27D05A2B8;
  if (!qword_27D05A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A2B8);
  }

  return result;
}

unint64_t sub_2231B4D98()
{
  result = qword_280FCAEF0;
  if (!qword_280FCAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAEF0);
  }

  return result;
}

unint64_t sub_2231B4DF0()
{
  result = qword_280FCAEF8;
  if (!qword_280FCAEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAEF8);
  }

  return result;
}

uint64_t SiriXRedirectContext.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_22311ACB8(v2, v3, v4);
}

__n128 SiriXRedirectContext.init(reason:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

BOOL static SiriXRedirectContext.RedirectReason.NoMatchingTool.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_2231B4EC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7553686372616573 && a2 == 0xEF64656465656363)
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

uint64_t sub_2231B4F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B4EC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231B4F9C(uint64_t a1)
{
  v2 = sub_2231B511C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B4FD8(uint64_t a1)
{
  v2 = sub_2231B511C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2C0, &qword_223219DB0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2231B511C();
  sub_2232007A4();
  sub_2232005D4();
  v3 = OUTLINED_FUNCTION_0_4();
  v4(v3);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B511C()
{
  result = qword_27D05A2C8;
  if (!qword_27D05A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A2C8);
  }

  return result;
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2D0, &qword_223219DB8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_12();
  v6 = sub_2231B511C();
  OUTLINED_FUNCTION_15_9(&type metadata for SiriXRedirectContext.RedirectReason.NoMatchingTool.CodingKeys, v7, v6);
  if (!v0)
  {
    v8 = sub_2232004A4();
    v9 = OUTLINED_FUNCTION_17_10();
    v10(v9);
    *v4 = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

uint64_t SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static SiriXRedirectContext.RedirectReason.UnableToHandleRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_2232006B4() & 1) != 0)
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

uint64_t sub_2231B5334(uint64_t a1)
{
  v2 = sub_2231B54C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5370(uint64_t a1)
{
  v2 = sub_2231B54C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2D8, &qword_223219DC0);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2231B54C0();
  sub_2232007A4();
  sub_2232005C4();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B54C0()
{
  result = qword_27D05A2E0;
  if (!qword_27D05A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A2E0);
  }

  return result;
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2E8, &qword_223219DC8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_14_12();
  sub_2231B54C0();
  sub_223200794();
  if (!v0)
  {
    v6 = sub_223200494();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_0_4();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

BOOL static SiriXRedirectContext.RedirectReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        if (v3)
        {
          if (v6)
          {
            if (v2 != v5 || v3 != v6)
            {
              OUTLINED_FUNCTION_4_35();
              v9 = sub_2232006B4();
              v10 = 1;
              v11 = OUTLINED_FUNCTION_6_24();
              sub_22311ACB8(v11, v12, v13);
              v14 = OUTLINED_FUNCTION_1_35();
              sub_22311ACB8(v14, v15, v16);
              v17 = OUTLINED_FUNCTION_1_35();
              sub_22311BC94(v17, v18, v19);
              v20 = OUTLINED_FUNCTION_6_24();
              sub_22311BC94(v20, v21, v22);
              if (v9)
              {
                return v10;
              }

              return 0;
            }

            v10 = 1;
            v50 = OUTLINED_FUNCTION_1_35();
            sub_22311ACB8(v50, v51, v52);
            v53 = OUTLINED_FUNCTION_1_35();
            sub_22311ACB8(v53, v54, v55);
            v56 = OUTLINED_FUNCTION_1_35();
            sub_22311BC94(v56, v57, v58);
            v29 = OUTLINED_FUNCTION_4_35();
            goto LABEL_44;
          }
        }

        else if (!v6)
        {
          v10 = 1;
          sub_22311ACB8(*a2, 0, 1);
          sub_22311ACB8(v2, 0, 1);
          sub_22311BC94(v2, 0, 1);
          v29 = v5;
          v30 = 0;
LABEL_44:
          v31 = 1;
          goto LABEL_45;
        }

        v39 = OUTLINED_FUNCTION_6_24();
        sub_22311ACB8(v39, v40, v41);
        v42 = OUTLINED_FUNCTION_1_35();
        sub_22311ACB8(v42, v43, v44);
        v45 = OUTLINED_FUNCTION_1_35();
        sub_22311BC94(v45, v46, v47);
        v35 = OUTLINED_FUNCTION_6_24();
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && v6 == 0)
      {
        v27 = OUTLINED_FUNCTION_4_35();
        sub_22311BC94(v27, v28, 2);
        v10 = 1;
        v29 = 1;
        v30 = 0;
        v31 = 2;
LABEL_45:
        sub_22311BC94(v29, v30, v31);
        return v10;
      }

      goto LABEL_31;
    }

    if (v7 != 2 || (v6 | v5) != 0)
    {
LABEL_31:
      sub_22311ACB8(v5, v6, v7);
      v33 = OUTLINED_FUNCTION_4_35();
      sub_22311BC94(v33, v34, v4);
      v35 = v5;
      v36 = v6;
      v37 = v7;
LABEL_32:
      sub_22311BC94(v35, v36, v37);
      return 0;
    }

    v48 = OUTLINED_FUNCTION_4_35();
    sub_22311BC94(v48, v49, 2);
    sub_22311BC94(0, 0, 2);
    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_31;
  }

  v23 = OUTLINED_FUNCTION_4_35();
  sub_22311BC94(v23, v24, 0);
  sub_22311BC94(v5, v6, 0);
  if (v2 != 2)
  {
    return v5 != 2 && ((v5 ^ v2) & 1) == 0;
  }

  return v5 == 2;
}

uint64_t sub_2231B58AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F54656C62616E75 && a2 == 0xEE00656C646E6148;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7245776F6C466669 && a2 == 0xEB00000000726F72;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x8000000223225D70 == a2)
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

unint64_t sub_2231B5A20(char a1)
{
  result = 0x69686374614D6F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F54656C62616E75;
      break;
    case 2:
      result = 0x7245776F6C466669;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231B5AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231B58AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231B5AF8(uint64_t a1)
{
  v2 = sub_2231B61BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5B34(uint64_t a1)
{
  v2 = sub_2231B61BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5B70(uint64_t a1)
{
  v2 = sub_2231B6264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5BAC(uint64_t a1)
{
  v2 = sub_2231B6264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5BE8(uint64_t a1)
{
  v2 = sub_2231B6360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5C24(uint64_t a1)
{
  v2 = sub_2231B6360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5C60(uint64_t a1)
{
  v2 = sub_2231B62B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5C9C(uint64_t a1)
{
  v2 = sub_2231B62B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231B5CD8(uint64_t a1)
{
  v2 = sub_2231B6210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B5D14(uint64_t a1)
{
  v2 = sub_2231B6210();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.RedirectReason.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2F0, &qword_223219DD0);
  OUTLINED_FUNCTION_9();
  v38 = v5;
  v39 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A2F8, &qword_223219DD8);
  OUTLINED_FUNCTION_9();
  v35 = v9;
  v36 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v34 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A300, &qword_223219DE0);
  OUTLINED_FUNCTION_9();
  v41 = v13;
  v42 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A308, &qword_223219DE8);
  OUTLINED_FUNCTION_9();
  v40 = v18;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A310, &qword_223219DF0);
  OUTLINED_FUNCTION_9();
  v44 = v21;
  v45 = v20;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v25 = *v0;
  *&v43 = v0[1];
  *(&v43 + 1) = v25;
  v26 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231B61BC();
  sub_2232007A4();
  if (v26)
  {
    if (v26 == 1)
    {
      LOBYTE(v46[0]) = 1;
      sub_2231B62B8();
      OUTLINED_FUNCTION_8_23(&type metadata for SiriXRedirectContext.RedirectReason.UnableToHandleCodingKeys, v46);
      v46[0] = *(&v43 + 1);
      v46[1] = v43;
      sub_2231B630C();
      v27 = v42;
      sub_223200654();
      (*(v41 + 8))(v16, v27);
      (*(v44 + 8))(v24, v26);
    }

    else
    {
      v29 = (v44 + 8);
      if (v43 == 0)
      {
        LOBYTE(v46[0]) = 2;
        sub_2231B6264();
        v30 = v34;
        OUTLINED_FUNCTION_8_23(&type metadata for SiriXRedirectContext.RedirectReason.IfFlowErrorCodingKeys, v46);
        v32 = v35;
        v31 = v36;
      }

      else
      {
        LOBYTE(v46[0]) = 3;
        sub_2231B6210();
        v30 = v37;
        OUTLINED_FUNCTION_8_23(&type metadata for SiriXRedirectContext.RedirectReason.ValueSelectionRequiredCodingKeys, v46);
        v32 = v38;
        v31 = v39;
      }

      (*(v32 + 8))(v30, v31);
      (*v29)(v24, v26);
    }
  }

  else
  {
    LOBYTE(v46[0]) = 0;
    sub_2231B6360();
    v28 = v45;
    sub_2232005B4();
    LOBYTE(v46[0]) = BYTE8(v43);
    sub_2231B63B4();
    sub_223200654();
    (*(v40 + 8))(v1, v17);
    (*(v44 + 8))(v24, v28);
  }

  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B61BC()
{
  result = qword_27D05A318;
  if (!qword_27D05A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A318);
  }

  return result;
}

unint64_t sub_2231B6210()
{
  result = qword_27D05A320;
  if (!qword_27D05A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A320);
  }

  return result;
}

unint64_t sub_2231B6264()
{
  result = qword_27D05A328;
  if (!qword_27D05A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A328);
  }

  return result;
}

unint64_t sub_2231B62B8()
{
  result = qword_27D05A330;
  if (!qword_27D05A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A330);
  }

  return result;
}

unint64_t sub_2231B630C()
{
  result = qword_27D05A338;
  if (!qword_27D05A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A338);
  }

  return result;
}

unint64_t sub_2231B6360()
{
  result = qword_27D05A340;
  if (!qword_27D05A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A340);
  }

  return result;
}

unint64_t sub_2231B63B4()
{
  result = qword_27D05A348;
  if (!qword_27D05A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A348);
  }

  return result;
}

void SiriXRedirectContext.RedirectReason.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v73 = v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A350, &qword_223219DF8);
  OUTLINED_FUNCTION_9();
  v70 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  v72 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A358, &qword_223219E00);
  OUTLINED_FUNCTION_9();
  v67 = v9;
  v68 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v71 = v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A360, &qword_223219E08);
  OUTLINED_FUNCTION_9();
  v74 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A368, &qword_223219E10);
  OUTLINED_FUNCTION_9();
  v65 = v15;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  v18 = v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A370, &unk_223219E18);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v24 = v61 - v23;
  v25 = v3[3];
  v75 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v25);
  sub_2231B61BC();
  sub_223200794();
  if (v0)
  {
    goto LABEL_9;
  }

  v63 = v18;
  v64 = v1;
  v61[1] = v14;
  v26 = v24;
  v27 = sub_223200594();
  sub_2230E0B80(v27, 0);
  if (v29 == v30 >> 1)
  {
LABEL_8:
    v38 = sub_2232003A4();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v40 = &type metadata for SiriXRedirectContext.RedirectReason;
    sub_223200484();
    sub_223200394();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v21 + 8))(v26, v19);
LABEL_9:
    v41 = v75;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v62 = v19;
  v61[0] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_2230E0B40(v29 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    v36 = v74;
    if (v33 == v35 >> 1)
    {
      v37 = v73;
      switch(v31)
      {
        case 1:
          LOBYTE(v76[0]) = 1;
          sub_2231B62B8();
          v50 = v64;
          OUTLINED_FUNCTION_5_25(&type metadata for SiriXRedirectContext.RedirectReason.UnableToHandleCodingKeys, v76);
          sub_2231B6F28();
          v51 = v69;
          sub_223200554();
          swift_unknownObjectRelease();
          (*(v36 + 8))(v50, v51);
          v59 = OUTLINED_FUNCTION_2_41();
          v60(v59, v62);
          v58 = v76[0];
          v56 = v76[1];
          v57 = 1;
          v41 = v75;
          v37 = v73;
          goto LABEL_15;
        case 2:
          LOBYTE(v76[0]) = 2;
          sub_2231B6264();
          v42 = v71;
          v43 = v62;
          OUTLINED_FUNCTION_5_25(&type metadata for SiriXRedirectContext.RedirectReason.IfFlowErrorCodingKeys, v76);
          swift_unknownObjectRelease();
          (*(v67 + 8))(v42, v68);
          v44 = OUTLINED_FUNCTION_2_41();
          v45(v44, v43);
          v58 = 0;
          v56 = 0;
          v57 = 2;
          goto LABEL_14;
        case 3:
          LOBYTE(v76[0]) = 3;
          sub_2231B6210();
          v46 = v72;
          v47 = v62;
          OUTLINED_FUNCTION_5_25(&type metadata for SiriXRedirectContext.RedirectReason.ValueSelectionRequiredCodingKeys, v76);
          swift_unknownObjectRelease();
          (*(v70 + 8))(v46, v66);
          v48 = OUTLINED_FUNCTION_2_41();
          v49(v48, v47);
          v56 = 0;
          v57 = 2;
          v58 = 1;
          goto LABEL_14;
        default:
          LOBYTE(v76[0]) = 0;
          sub_2231B6360();
          OUTLINED_FUNCTION_5_25(&type metadata for SiriXRedirectContext.RedirectReason.NoMatchingToolCodingKeys, v76);
          sub_2231B6F7C();
          sub_223200554();
          swift_unknownObjectRelease();
          v52 = OUTLINED_FUNCTION_16_13();
          v53(v52);
          v54 = OUTLINED_FUNCTION_2_41();
          v55(v54, v62);
          v56 = 0;
          v57 = 0;
          v58 = LOBYTE(v76[0]);
LABEL_14:
          v41 = v75;
LABEL_15:
          *v37 = v58;
          *(v37 + 8) = v56;
          *(v37 + 16) = v57;
          break;
      }

      goto LABEL_10;
    }

    v19 = v62;
    goto LABEL_8;
  }

  __break(1u);
}

BOOL static SiriXRedirectContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v12[0] = v2;
  v12[1] = v3;
  v13 = v6;
  v10[0] = v4;
  v10[1] = v5;
  v11 = v7;
  sub_22311ACB8(v2, v3, v6);
  sub_22311ACB8(v4, v5, v7);
  v8 = static SiriXRedirectContext.RedirectReason.== infix(_:_:)(v12, v10);
  sub_22311BC94(v4, v5, v7);
  sub_22311BC94(v2, v3, v6);
  return v8;
}

uint64_t sub_2231B6C04(uint64_t a1)
{
  v2 = sub_2231B6FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231B6C40(uint64_t a1)
{
  v2 = sub_2231B6FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriXRedirectContext.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A388, &qword_223219E28);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_22311ACB8(v8, v9, v10);
  sub_2231B6FD0();
  sub_2232007A4();
  v13 = v8;
  v14 = v9;
  v15 = v10;
  sub_2231B7024();
  v11 = v12;
  sub_223200654();
  sub_22311BC94(v13, v14, v15);
  (*(v4 + 8))(v7, v11);
  OUTLINED_FUNCTION_9_0();
}

void SiriXRedirectContext.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A3A0, &qword_223219E30);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_12();
  v6 = sub_2231B6FD0();
  OUTLINED_FUNCTION_15_9(&type metadata for SiriXRedirectContext.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_2231B7078();
    sub_223200554();
    v8 = OUTLINED_FUNCTION_17_10();
    v9(v8);
    *v4 = v10;
    *(v4 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231B6F28()
{
  result = qword_27D05A378;
  if (!qword_27D05A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A378);
  }

  return result;
}

unint64_t sub_2231B6F7C()
{
  result = qword_27D05A380;
  if (!qword_27D05A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A380);
  }

  return result;
}

unint64_t sub_2231B6FD0()
{
  result = qword_27D05A390;
  if (!qword_27D05A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A390);
  }

  return result;
}

unint64_t sub_2231B7024()
{
  result = qword_27D05A398;
  if (!qword_27D05A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A398);
  }

  return result;
}

unint64_t sub_2231B7078()
{
  result = qword_27D05A3A8;
  if (!qword_27D05A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A3A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes0A16XRedirectContextV14RedirectReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2231B70F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_2231B7134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2231B7178(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(_BYTE *result, unsigned int a2, unsigned int a3)
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