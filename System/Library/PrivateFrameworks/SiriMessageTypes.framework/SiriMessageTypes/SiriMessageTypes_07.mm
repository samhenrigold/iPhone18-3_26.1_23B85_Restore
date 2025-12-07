void NLRoutingDecisionMessage.PlannerQueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F08, &qword_22320E930);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_223165A20();
  sub_2232007A4();
  sub_2232005F4();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.PlannerQueryRewrite.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F18, &qword_22320E938);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_3(v3);
  sub_223165A20();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (!v0)
  {
    v10 = sub_2232004F4();
    v12 = v11;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

double NLRoutingDecisionMessage.SearchQueryRewrite.init(build:)()
{
  v1 = OUTLINED_FUNCTION_74();
  v2(&v14, v1);
  v3 = v15;
  if (v15)
  {
    v4 = v16;
    *v0 = v14;
    *(v0 + 8) = v3;
    *(v0 + 16) = v4;
  }

  else
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v5 = sub_223200014();
    __swift_project_value_buffer(v5, qword_280FCE830);
    v6 = sub_223200004();
    v7 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v7))
    {
      *OUTLINED_FUNCTION_72() = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_51_0();
    }

    *&v4 = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  return *&v4;
}

uint64_t NLRoutingDecisionMessage.SearchQueryRewrite.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLRoutingDecisionMessage.SearchQueryRewrite.Builder.redactedUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_223163D68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000223224190 == a2)
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

uint64_t sub_223163E3C(char a1)
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](a1 & 1);
  return sub_223200764();
}

unint64_t sub_223163E7C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_223163EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223163D68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223163EE0(uint64_t a1)
{
  v2 = sub_223165A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223163F1C(uint64_t a1)
{
  v2 = sub_223165A74();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.SearchQueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F20, &qword_22320E940);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_223165A74();
  OUTLINED_FUNCTION_55();
  sub_2232007A4();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
  }

  v5 = OUTLINED_FUNCTION_42_2();
  v6(v5, v3);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.SearchQueryRewrite.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F30, &qword_22320E948);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v25);
  sub_223165A74();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_56();
    v29 = sub_2232004F4();
    v31 = v30;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_56();
    v32 = sub_223200494();
    v34 = v33;
    v37 = v32;
    v35 = OUTLINED_FUNCTION_9_5();
    v36(v35);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    v27[3] = v34;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F38, &qword_22320E950);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v3);
  sub_223165AC8();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for NLRoutingDecisionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22311D8D0();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    memcpy((v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), v11, 0x41uLL);
    LOBYTE(v10[0]) = 1;
    OUTLINED_FUNCTION_56();
    v5 = sub_2232004F4();
    v6 = (v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId);
    *v6 = v5;
    v6[1] = v7;
    sub_2230F7158(v3, v10);
    RequestMessageBase.init(from:)(v10);
    v8 = OUTLINED_FUNCTION_2();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_2231644EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F40, &unk_22320E958);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v33[-v31];
  OUTLINED_FUNCTION_5_3(v26);
  sub_223165AC8();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  memcpy(v35, (v23 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), 0x41uLL);
  memcpy(v34, (v23 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), sizeof(v34));
  sub_2230E6EA8(v35, v33);
  sub_2230E6F8C();
  sub_223200654();
  if (v24)
  {
    memcpy(v33, v34, 0x41uLL);
    sub_2230E6410(v33);
  }

  else
  {
    memcpy(v33, v34, 0x41uLL);
    sub_2230E6410(v33);
    OUTLINED_FUNCTION_36_2();
    sub_2232005F4();
    sub_2230D77A8(v26);
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2231646B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_223164708(char a1)
{
  if (a1)
  {
    return 0x69646E6143707274;
  }

  else
  {
    return 0x44676E6974756F72;
  }
}

uint64_t sub_22316477C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2231646B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231647AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223164708(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231647E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231646B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223164808(uint64_t a1)
{
  v2 = sub_223165AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223164844(uint64_t a1)
{
  v2 = sub_223165AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLRoutingDecisionMessage.Builder.routingDecision.getter()
{
  OUTLINED_FUNCTION_71(v4);
  v0 = OUTLINED_FUNCTION_2_1();
  memcpy(v0, v1, 0x41uLL);
  return sub_2230E3D68(v4, &v3, &qword_27D057DC8, &qword_22320E730);
}

void *NLRoutingDecisionMessage.Builder.routingDecision.setter()
{
  OUTLINED_FUNCTION_71(v3);
  sub_2230E3C4C(v3, &qword_27D057DC8, &qword_22320E730);
  v0 = OUTLINED_FUNCTION_79();
  return memcpy(v0, v1, 0x41uLL);
}

uint64_t NLRoutingDecisionMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t NLRoutingDecisionMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t NLRoutingDecisionMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NLRoutingDecisionMessage.Builder(0) + 32);

  return sub_2230D4E04(a1, v3);
}

uint64_t NLRoutingDecisionMessage.Builder.requestId.getter()
{
  type metadata accessor for NLRoutingDecisionMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLRoutingDecisionMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLRoutingDecisionMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_223164C4C()
{
  OUTLINED_FUNCTION_2_3((v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision));
}

id NLRoutingDecisionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRoutingDecisionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223164D54()
{
  result = qword_27D058CC0;
  if (!qword_27D058CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CC0);
  }

  return result;
}

unint64_t sub_223164DA8()
{
  result = qword_280FCD540;
  if (!qword_280FCD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD540);
  }

  return result;
}

unint64_t sub_223164DFC()
{
  result = qword_27D058CC8;
  if (!qword_27D058CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CC8);
  }

  return result;
}

unint64_t sub_223164E50()
{
  result = qword_27D058CD8;
  if (!qword_27D058CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CD8);
  }

  return result;
}

unint64_t sub_223164EA4()
{
  result = qword_27D058CE0;
  if (!qword_27D058CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CE0);
  }

  return result;
}

unint64_t sub_223164EF8()
{
  result = qword_27D058D30;
  if (!qword_27D058D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D30);
  }

  return result;
}

unint64_t sub_223164F4C()
{
  result = qword_280FCD608;
  if (!qword_280FCD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD608);
  }

  return result;
}

unint64_t sub_223164FA0()
{
  result = qword_280FCD548;
  if (!qword_280FCD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD548);
  }

  return result;
}

unint64_t sub_223164FF4()
{
  result = qword_27D058D40;
  if (!qword_27D058D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D40);
  }

  return result;
}

unint64_t sub_223165048()
{
  result = qword_27D058D48;
  if (!qword_27D058D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D48);
  }

  return result;
}

unint64_t sub_22316509C()
{
  result = qword_27D058D50;
  if (!qword_27D058D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D50);
  }

  return result;
}

unint64_t sub_2231650F0()
{
  result = qword_27D058D58;
  if (!qword_27D058D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D58);
  }

  return result;
}

unint64_t sub_223165144()
{
  result = qword_27D058D60;
  if (!qword_27D058D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D60);
  }

  return result;
}

uint64_t sub_223165198(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058D38, &unk_22320E810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223165210()
{
  result = qword_27D058DB0;
  if (!qword_27D058DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DB0);
  }

  return result;
}

uint64_t sub_223165264(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059880, &unk_223214380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231652D0()
{
  result = qword_27D058DC0;
  if (!qword_27D058DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DC0);
  }

  return result;
}

unint64_t sub_223165324()
{
  result = qword_27D058DD8;
  if (!qword_27D058DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DD8);
  }

  return result;
}

unint64_t sub_223165378()
{
  result = qword_27D058DE0;
  if (!qword_27D058DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DE0);
  }

  return result;
}

unint64_t sub_2231653CC()
{
  result = qword_27D058E10;
  if (!qword_27D058E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E10);
  }

  return result;
}

unint64_t sub_223165420()
{
  result = qword_27D058E18;
  if (!qword_27D058E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E18);
  }

  return result;
}

unint64_t sub_223165474()
{
  result = qword_27D058E20;
  if (!qword_27D058E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E20);
  }

  return result;
}

uint64_t sub_2231654C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 6)
  {
    case 1:
      goto LABEL_3;
    case 3:
      return result;
    default:

LABEL_3:

      break;
  }

  return result;
}

unint64_t sub_223165534()
{
  result = qword_280FCD580;
  if (!qword_280FCD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD580);
  }

  return result;
}

unint64_t sub_223165588()
{
  result = qword_27D058E68;
  if (!qword_27D058E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E68);
  }

  return result;
}

unint64_t sub_2231655DC()
{
  result = qword_27D058E70;
  if (!qword_27D058E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E70);
  }

  return result;
}

unint64_t sub_223165630()
{
  result = qword_27D058E78;
  if (!qword_27D058E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E78);
  }

  return result;
}

unint64_t sub_223165684()
{
  result = qword_27D058E80;
  if (!qword_27D058E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E80);
  }

  return result;
}

unint64_t sub_2231656D8()
{
  result = qword_280FCD588;
  if (!qword_280FCD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD588);
  }

  return result;
}

unint64_t sub_22316572C()
{
  result = qword_280FCD5B8;
  if (!qword_280FCD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5B8);
  }

  return result;
}

unint64_t sub_223165780()
{
  result = qword_27D058EA8;
  if (!qword_27D058EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058EA8);
  }

  return result;
}

unint64_t sub_2231657D4()
{
  result = qword_27D058EB0;
  if (!qword_27D058EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058EB0);
  }

  return result;
}

unint64_t sub_223165828()
{
  result = qword_27D058EB8;
  if (!qword_27D058EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058EB8);
  }

  return result;
}

unint64_t sub_22316587C()
{
  result = qword_27D058ED0;
  if (!qword_27D058ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058ED0);
  }

  return result;
}

unint64_t sub_2231658D0()
{
  result = qword_27D058ED8;
  if (!qword_27D058ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058ED8);
  }

  return result;
}

unint64_t sub_223165924()
{
  result = qword_280FCD5E0;
  if (!qword_280FCD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5E0);
  }

  return result;
}

unint64_t sub_223165978()
{
  result = qword_280FCD5C8;
  if (!qword_280FCD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5C8);
  }

  return result;
}

unint64_t sub_2231659CC()
{
  result = qword_27D058F00;
  if (!qword_27D058F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F00);
  }

  return result;
}

unint64_t sub_223165A20()
{
  result = qword_27D058F10;
  if (!qword_27D058F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F10);
  }

  return result;
}

unint64_t sub_223165A74()
{
  result = qword_27D058F28;
  if (!qword_27D058F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F28);
  }

  return result;
}

unint64_t sub_223165AC8()
{
  result = qword_280FCD5B0;
  if (!qword_280FCD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5B0);
  }

  return result;
}

unint64_t sub_223165B20()
{
  result = qword_27D058F48;
  if (!qword_27D058F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F48);
  }

  return result;
}

unint64_t sub_223165B78()
{
  result = qword_27D058F50;
  if (!qword_27D058F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F50);
  }

  return result;
}

unint64_t sub_223165BD0()
{
  result = qword_27D058F58;
  if (!qword_27D058F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F58);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_223165CC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 34))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_223165D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_223165D94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 33))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_223165DE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_223165E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223165EB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_223165F04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_223165F8C(uint64_t a1, int a2)
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

uint64_t sub_223165FCC(uint64_t result, int a2, int a3)
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

uint64_t sub_22316601C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_223166070(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2231660FC(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCD5E8, &type metadata for NLRoutingDecisionMessage.RoutingDecision);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230F6D30(319);
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

_BYTE *sub_223166258(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_68(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223166510()
{
  result = qword_27D058F60;
  if (!qword_27D058F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F60);
  }

  return result;
}

unint64_t sub_223166568()
{
  result = qword_27D058F68;
  if (!qword_27D058F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F68);
  }

  return result;
}

unint64_t sub_2231665C0()
{
  result = qword_27D058F70;
  if (!qword_27D058F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F70);
  }

  return result;
}

unint64_t sub_223166618()
{
  result = qword_27D058F78;
  if (!qword_27D058F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F78);
  }

  return result;
}

unint64_t sub_223166670()
{
  result = qword_27D058F80;
  if (!qword_27D058F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F80);
  }

  return result;
}

unint64_t sub_2231666C8()
{
  result = qword_27D058F88;
  if (!qword_27D058F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F88);
  }

  return result;
}

unint64_t sub_223166720()
{
  result = qword_27D058F90;
  if (!qword_27D058F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F90);
  }

  return result;
}

unint64_t sub_223166778()
{
  result = qword_27D058F98;
  if (!qword_27D058F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F98);
  }

  return result;
}

unint64_t sub_2231667D0()
{
  result = qword_27D058FA0;
  if (!qword_27D058FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FA0);
  }

  return result;
}

unint64_t sub_223166828()
{
  result = qword_27D058FA8;
  if (!qword_27D058FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FA8);
  }

  return result;
}

unint64_t sub_223166880()
{
  result = qword_27D058FB0;
  if (!qword_27D058FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FB0);
  }

  return result;
}

unint64_t sub_2231668D8()
{
  result = qword_27D058FB8;
  if (!qword_27D058FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FB8);
  }

  return result;
}

unint64_t sub_223166930()
{
  result = qword_27D058FC0;
  if (!qword_27D058FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FC0);
  }

  return result;
}

unint64_t sub_223166988()
{
  result = qword_27D058FC8;
  if (!qword_27D058FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FC8);
  }

  return result;
}

unint64_t sub_2231669E0()
{
  result = qword_27D058FD0;
  if (!qword_27D058FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FD0);
  }

  return result;
}

unint64_t sub_223166A38()
{
  result = qword_27D058FD8;
  if (!qword_27D058FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FD8);
  }

  return result;
}

unint64_t sub_223166A90()
{
  result = qword_27D058FE0;
  if (!qword_27D058FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FE0);
  }

  return result;
}

unint64_t sub_223166AE8()
{
  result = qword_280FCD5A0;
  if (!qword_280FCD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5A0);
  }

  return result;
}

unint64_t sub_223166B40()
{
  result = qword_280FCD5A8;
  if (!qword_280FCD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5A8);
  }

  return result;
}

unint64_t sub_223166B98()
{
  result = qword_27D058FE8;
  if (!qword_27D058FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FE8);
  }

  return result;
}

unint64_t sub_223166BF0()
{
  result = qword_27D058FF0;
  if (!qword_27D058FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FF0);
  }

  return result;
}

unint64_t sub_223166C48()
{
  result = qword_27D058FF8;
  if (!qword_27D058FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FF8);
  }

  return result;
}

unint64_t sub_223166CA0()
{
  result = qword_27D059000;
  if (!qword_27D059000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059000);
  }

  return result;
}

unint64_t sub_223166CF8()
{
  result = qword_280FCD5D0;
  if (!qword_280FCD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5D0);
  }

  return result;
}

unint64_t sub_223166D50()
{
  result = qword_280FCD5D8;
  if (!qword_280FCD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5D8);
  }

  return result;
}

unint64_t sub_223166DA8()
{
  result = qword_27D059008;
  if (!qword_27D059008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059008);
  }

  return result;
}

unint64_t sub_223166E00()
{
  result = qword_27D059010;
  if (!qword_27D059010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059010);
  }

  return result;
}

unint64_t sub_223166E58()
{
  result = qword_27D059018;
  if (!qword_27D059018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059018);
  }

  return result;
}

unint64_t sub_223166EB0()
{
  result = qword_27D059020;
  if (!qword_27D059020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059020);
  }

  return result;
}

unint64_t sub_223166F08()
{
  result = qword_280FCD590;
  if (!qword_280FCD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD590);
  }

  return result;
}

unint64_t sub_223166F60()
{
  result = qword_280FCD598;
  if (!qword_280FCD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD598);
  }

  return result;
}

unint64_t sub_223166FB8()
{
  result = qword_280FCD550;
  if (!qword_280FCD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD550);
  }

  return result;
}

unint64_t sub_223167010()
{
  result = qword_280FCD558;
  if (!qword_280FCD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD558);
  }

  return result;
}

unint64_t sub_223167068()
{
  result = qword_280FCD560;
  if (!qword_280FCD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD560);
  }

  return result;
}

unint64_t sub_2231670C0()
{
  result = qword_280FCD568;
  if (!qword_280FCD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD568);
  }

  return result;
}

unint64_t sub_223167118()
{
  result = qword_280FCD570;
  if (!qword_280FCD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD570);
  }

  return result;
}

unint64_t sub_223167170()
{
  result = qword_280FCD578;
  if (!qword_280FCD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD578);
  }

  return result;
}

unint64_t sub_2231671C8()
{
  result = qword_27D059028;
  if (!qword_27D059028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059028);
  }

  return result;
}

unint64_t sub_223167220()
{
  result = qword_27D059030;
  if (!qword_27D059030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059030);
  }

  return result;
}

unint64_t sub_223167278()
{
  result = qword_27D059038;
  if (!qword_27D059038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059038);
  }

  return result;
}

unint64_t sub_2231672D0()
{
  result = qword_27D059040;
  if (!qword_27D059040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059040);
  }

  return result;
}

unint64_t sub_223167328()
{
  result = qword_27D059048;
  if (!qword_27D059048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059048);
  }

  return result;
}

unint64_t sub_223167380()
{
  result = qword_27D059050;
  if (!qword_27D059050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059050);
  }

  return result;
}

unint64_t sub_2231673D8()
{
  result = qword_27D059058;
  if (!qword_27D059058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059058);
  }

  return result;
}

unint64_t sub_223167430()
{
  result = qword_27D059060;
  if (!qword_27D059060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059060);
  }

  return result;
}

unint64_t sub_223167488()
{
  result = qword_27D059068;
  if (!qword_27D059068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059068);
  }

  return result;
}

unint64_t sub_2231674E0()
{
  result = qword_27D059070;
  if (!qword_27D059070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059070);
  }

  return result;
}

unint64_t sub_223167538()
{
  result = qword_280FCD678;
  if (!qword_280FCD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD678);
  }

  return result;
}

unint64_t sub_223167590()
{
  result = qword_280FCD680;
  if (!qword_280FCD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD680);
  }

  return result;
}

unint64_t sub_2231675E8()
{
  result = qword_280FCD650;
  if (!qword_280FCD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD650);
  }

  return result;
}

unint64_t sub_223167640()
{
  result = qword_280FCD658;
  if (!qword_280FCD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD658);
  }

  return result;
}

unint64_t sub_223167698()
{
  result = qword_280FCD668;
  if (!qword_280FCD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD668);
  }

  return result;
}

unint64_t sub_2231676F0()
{
  result = qword_280FCD670;
  if (!qword_280FCD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD670);
  }

  return result;
}

unint64_t sub_223167748()
{
  result = qword_280FCD610;
  if (!qword_280FCD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD610);
  }

  return result;
}

unint64_t sub_2231677A0()
{
  result = qword_280FCD618;
  if (!qword_280FCD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD618);
  }

  return result;
}

unint64_t sub_2231677F8()
{
  result = qword_280FCD620;
  if (!qword_280FCD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD620);
  }

  return result;
}

unint64_t sub_223167850()
{
  result = qword_280FCD628;
  if (!qword_280FCD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD628);
  }

  return result;
}

unint64_t sub_2231678A8()
{
  result = qword_280FCD5F8;
  if (!qword_280FCD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5F8);
  }

  return result;
}

unint64_t sub_223167900()
{
  result = qword_280FCD600;
  if (!qword_280FCD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD600);
  }

  return result;
}

unint64_t sub_223167958()
{
  result = qword_280FCE820;
  if (!qword_280FCE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE820);
  }

  return result;
}

unint64_t sub_2231679B0()
{
  result = qword_280FCD630;
  if (!qword_280FCD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD630);
  }

  return result;
}

unint64_t sub_223167A08()
{
  result = qword_280FCD638;
  if (!qword_280FCD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD638);
  }

  return result;
}

unint64_t sub_223167A60()
{
  result = qword_280FCD640;
  if (!qword_280FCD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD640);
  }

  return result;
}

unint64_t sub_223167AB8()
{
  result = qword_27D059078;
  if (!qword_27D059078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059078);
  }

  return result;
}

unint64_t sub_223167B10()
{
  result = qword_27D059080;
  if (!qword_27D059080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059080);
  }

  return result;
}

unint64_t sub_223167B64()
{
  result = qword_27D059088;
  if (!qword_27D059088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D059088);
  }

  return result;
}

uint64_t sub_223167BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  switch(a5 >> 6)
  {
    case 1:
      goto LABEL_3;
    case 3:
      return result;
    default:

LABEL_3:

      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1, uint64_t a2)
{

  return sub_2232005B4();
}

void OUTLINED_FUNCTION_51_0()
{

  JUMPOUT(0x223DD6780);
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2)
{

  return sub_223200474();
}

void OUTLINED_FUNCTION_59()
{
  v2 = *(v0 - 208);
  v1 = *(v0 - 200);
  *(v0 - 160) = *(v0 - 72);
  *(v0 - 152) = v1;
  v3 = *(v0 - 232);
  *(v0 - 144) = v2;
  *(v0 - 136) = v3;
}

BOOL OUTLINED_FUNCTION_61(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_223200794();
}

void *OUTLINED_FUNCTION_71(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

void OUTLINED_FUNCTION_76()
{
  v1 = *(v0 - 144);
  *(v0 - 120) = *(v0 - 152);
  *(v0 - 112) = v1;
  v2 = *(v0 - 160);
  *(v0 - 104) = *(v0 - 168);
  *(v0 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_82(uint64_t a1, uint64_t a2)
{

  return sub_2232005B4();
}

uint64_t (*sub_223167ECC())()
{
  OUTLINED_FUNCTION_11();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*sub_223167F6C())()
{
  OUTLINED_FUNCTION_11();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

__n128 NLTRPCandidateMessage.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 16);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 20);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes);
  *a1 = result;
  a1[1].n128_u16[2] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

unint64_t sub_223168014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230ED5A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_223168044@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230ED5F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_223168078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230ED5A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231680A0(uint64_t a1)
{
  v2 = sub_22316A760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231680DC(uint64_t a1)
{
  v2 = sub_22316A760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLTRPCandidateMessage.NLTRPCandidateMessage.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

id NLTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return NLTRPCandidateMessage.init(build:)(v1);
}

id NLTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v146 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v130 - v3;
  v5 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v142 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v143 = v9 - v8;
  v10 = type metadata accessor for NLTRPCandidateMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v14 = (v13 - v12);
  v15 = MEMORY[0x277D84F98];
  v147 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse) = MEMORY[0x277D84F98];
  v148 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions;
  v149 = v1;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions) = v15;
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v16 = v11[8];
  v144 = v5;
  __swift_storeEnumTagSinglePayload(&v14[v16], 1, 1, v5);
  v17 = &v14[v11[9]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v14[v11[10]];
  *v18 = 0;
  v18[1] = 0;
  v19 = v11[11];
  *&v14[v19] = 0;
  v20 = v11[12];
  *&v14[v20] = 0;
  v21 = &v14[v11[13]];
  *v21 = 0;
  v21[1] = 0;
  v22 = v11[14];
  v23 = v14;
  v24 = &v14[v22];
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 20) = 2;
  *(v24 + 16) = 0;
  v146(v23);
  p_cache = (&OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage + 16);
  if (*v23 == 15)
  {
    goto LABEL_15;
  }

  v26 = *(v23 + 2);
  if (!v26)
  {
    goto LABEL_15;
  }

  LODWORD(v146) = *v23;
  v140 = *(v23 + 1);
  v141 = v26;
  sub_2230D1480(&v23[v16], v4);
  v27 = v144;
  if (__swift_getEnumTagSinglePayload(v4, 1, v144) == 1)
  {
    sub_2230D69D4(v4);
LABEL_15:
    if (p_cache[239] != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v34 = sub_223200014();
    __swift_project_value_buffer(v34, qword_280FCE830);
    v35 = sub_223200004();
    v36 = sub_223200254();
    v37 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v152[0] = v40;
      *v39 = 136446210;
      v41 = sub_2230F7898(ObjectType);
      v43 = sub_2231A5D38(v41, v42, v152);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2230CE000, v35, v36, "Could not build %{public}s: Builder has missing required fields", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    sub_223168DCC(v23);

    type metadata accessor for NLTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = v142;
  (*(v142 + 32))(v143, v4, v27);
  v29 = v17[1];
  if (!v29)
  {
    (*(v28 + 8))(v143, v27);
LABEL_14:
    p_cache = &OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage.cache;
    goto LABEL_15;
  }

  v30 = v18[1];
  if (!v30)
  {
    (*(v142 + 8))(v143, v27);
    goto LABEL_14;
  }

  v31 = *&v23[v19];
  p_cache = &OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage.cache;
  if (!v31 || (v139 = *&v23[v20]) == 0)
  {
    (*(v142 + 8))(v143, v27);
    goto LABEL_15;
  }

  v135 = v29;
  v132 = *v17;
  v133 = *v18;
  v32 = v21[1];
  ObjectType = v23;
  v134 = v30;
  if (!v32)
  {
    isUniquelyReferenced_nonNull_native = v149;
    if (qword_280FCA778 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_78;
  }

  v130 = *v21;
  v131 = v32;

  isUniquelyReferenced_nonNull_native = v149;
LABEL_25:
  v52 = *(v24 + 16);
  v53 = *(v24 + 20);
  v54 = isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes;
  *v54 = *v24;
  *(v54 + 20) = v53;
  *(v54 + 16) = v52;
  v24 = v31 + 64;
  OUTLINED_FUNCTION_2_5();
  v57 = v56 & v55;
  isUniquelyReferenced_nonNull_native = (v58 + 63) >> 6;

  v59 = 0;
  v136 = v31 + 64;
  v137 = v31;
  v138 = isUniquelyReferenced_nonNull_native;
  if (v57)
  {
    goto LABEL_30;
  }

  while (1)
  {
LABEL_26:
    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_22:
      v46 = sub_223200014();
      __swift_project_value_buffer(v46, qword_280FCE830);
      v47 = sub_223200004();
      v48 = sub_223200254();
      v49 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2230CE000, v47, v48, "Warning: NLTRPCandidateMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v51, 2u);
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780]();
      }

      v131 = 0x80000002232216F0;
      v130 = 0xD000000000000024;
      goto LABEL_25;
    }

    if (v60 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v57 = *(v24 + 8 * v60);
    ++v59;
    if (v57)
    {
      v59 = v60;
      while (1)
      {
LABEL_30:
        OUTLINED_FUNCTION_15_3();
        v63 = *v61;
        v62 = v61[1];
        v64 = *(v31 + 16);

        if (v64)
        {
          v65 = sub_22314C358(v63, v62);
          v66 = v63;
          v68 = v31;
          if (v67)
          {
            v69 = *(*(v31 + 56) + 8 * v65);
            v70 = v69;
          }

          else
          {
            v69 = 1;
          }
        }

        else
        {
          v68 = v31;
          v69 = 1;
          v66 = v63;
        }

        v71 = v147;
        v31 = v149;
        OUTLINED_FUNCTION_11();
        swift_beginAccess();
        if (v69 == 1)
        {
          v72 = sub_22314C358(v66, v62);
          v74 = v73;

          v31 = v68;
          if (v74)
          {
            v75 = v149;
            swift_isUniquelyReferenced_nonNull_native();
            v151 = *(v75 + v71);
            *(v75 + v71) = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589A8, &qword_22320D028);
            v24 = v136;
            v31 = v137;
            sub_2232003D4();
            v76 = v151;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B0, &qword_22320D030);
            sub_2232003F4();
            *(v75 + v71) = v76;
          }

          goto LABEL_47;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = *(v31 + v71);
        *(v31 + v71) = 0x8000000000000000;
        v77 = v66;
        sub_22314C358(v66, v62);
        OUTLINED_FUNCTION_5_16();
        if (__OFADD__(v80, v81))
        {
          goto LABEL_75;
        }

        v24 = v78;
        v82 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589A8, &qword_22320D028);
        if (sub_2232003D4())
        {
          v83 = sub_22314C358(v66, v62);
          v85 = v82;
          v86 = v82 & 1;
          v31 = v137;
          if (v86 != (v84 & 1))
          {
            goto LABEL_79;
          }

          v24 = v83;
          if ((v85 & 1) == 0)
          {
LABEL_42:
            v87 = v151;
            OUTLINED_FUNCTION_4_18(&v151[v24 >> 6]);
            v88 = (v87[6] + 16 * v24);
            *v88 = v77;
            v88[1] = v62;
            *(v87[7] + 8 * v24) = v69;
            v89 = v87[2];
            v90 = __OFADD__(v89, 1);
            v91 = v89 + 1;
            if (v90)
            {
              goto LABEL_77;
            }

            v87[2] = v91;
            goto LABEL_46;
          }
        }

        else
        {
          v92 = v82;
          v31 = v137;
          if ((v92 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v87 = v151;
        v93 = v151[7];
        v94 = *(v93 + 8 * v24);
        *(v93 + 8 * v24) = v69;

LABEL_46:
        v24 = v136;
        *(v149 + v147) = v87;
LABEL_47:
        v57 &= v57 - 1;
        swift_endAccess();
        isUniquelyReferenced_nonNull_native = v138;
        if (!v57)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v95 = v139;
  isUniquelyReferenced_nonNull_native = v139 + 64;
  OUTLINED_FUNCTION_2_5();
  v98 = v97 & v96;
  v100 = (v99 + 63) >> 6;

  v24 = 0;
  v101 = MEMORY[0x277D84F90];
  v102 = ObjectType;
  v137 = v100;
  v138 = isUniquelyReferenced_nonNull_native;
  if (v98)
  {
    goto LABEL_54;
  }

  do
  {
LABEL_50:
    v103 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_73;
    }

    if (v103 >= v100)
    {

      MEMORY[0x28223BE20](v123);
      *(&v130 - 80) = v146;
      v124 = v141;
      *(&v130 - 9) = v140;
      *(&v130 - 8) = v124;
      v125 = v143;
      v126 = v132;
      *(&v130 - 7) = v143;
      *(&v130 - 6) = v126;
      v127 = v133;
      *(&v130 - 5) = v135;
      *(&v130 - 4) = v127;
      v128 = v130;
      *(&v130 - 3) = v134;
      *(&v130 - 2) = v128;
      *(&v130 - 1) = v131;
      v44 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
      v129 = v44;

      sub_223168DCC(v102);
      if (v44)
      {
      }

      (*(v142 + 8))(v125, v144);
      return v44;
    }

    v98 = *(isUniquelyReferenced_nonNull_native + 8 * v103);
    ++v24;
  }

  while (!v98);
  v24 = v103;
  while (1)
  {
LABEL_54:
    OUTLINED_FUNCTION_15_3();
    v105 = *v104;
    v31 = v104[1];
    v151 = v101;
    if (*(v95 + 16))
    {

      v106 = sub_22314C358(v105, v31);
      v107 = v101;
      if ((v108 & 1) == 0)
      {
        goto LABEL_59;
      }

      v107 = *(*(v95 + 56) + 8 * v106);
    }

    else
    {
      v107 = v101;
    }

LABEL_59:
    sub_22314AB34(v107);
    v147 = v151;
    v109 = v148;
    v110 = v149;
    OUTLINED_FUNCTION_11();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v150 = *(v110 + v109);
    *(v110 + v109) = 0x8000000000000000;
    v111 = v105;
    isUniquelyReferenced_nonNull_native = v31;
    sub_22314C358(v105, v31);
    OUTLINED_FUNCTION_5_16();
    if (__OFADD__(v114, v115))
    {
      goto LABEL_74;
    }

    v31 = v112;
    v116 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
    if ((sub_2232003D4() & 1) == 0)
    {
      goto LABEL_63;
    }

    v117 = sub_22314C358(v111, isUniquelyReferenced_nonNull_native);
    if ((v116 & 1) != (v118 & 1))
    {
      break;
    }

    v31 = v117;
LABEL_63:
    v119 = v150;
    if (v116)
    {
      *(v150[7] + 8 * v31) = v147;
    }

    else
    {
      OUTLINED_FUNCTION_4_18(&v150[v31 >> 6]);
      v120 = (v119[6] + 16 * v31);
      *v120 = v111;
      v120[1] = isUniquelyReferenced_nonNull_native;
      *(v119[7] + 8 * v31) = v147;
      v121 = v119[2];
      v90 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v90)
      {
        goto LABEL_76;
      }

      v119[2] = v122;
    }

    v102 = ObjectType;
    isUniquelyReferenced_nonNull_native = v138;
    v95 = v139;
    v100 = v137;
    v101 = MEMORY[0x277D84F90];
    v98 &= v98 - 1;
    *(v149 + v148) = v119;
    swift_endAccess();
    if (!v98)
    {
      goto LABEL_50;
    }
  }

LABEL_79:
  result = sub_2232006E4();
  __break(1u);
  return result;
}

uint64_t sub_223168DCC(uint64_t a1)
{
  v2 = type metadata accessor for NLTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *NLTRPCandidateMessage.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059090, &qword_223210A50);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v67 - v9;
  v11 = MEMORY[0x277D84F98];
  v77 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse) = MEMORY[0x277D84F98];
  v76 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions) = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316A760();
  sub_223200794();
  if (!v2)
  {
    v75 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589D0, &qword_22320D048);
    v81[0] = 0;
    v12 = sub_22314C9D0();
    OUTLINED_FUNCTION_11_8(v12, v81);
    v13 = v78;
    v14 = v75;
    if (!v78)
    {
      if (qword_280FCA778 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    v15 = v77;
    swift_beginAccess();
    *(v3 + v15) = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589F8, &unk_22320D050);
    LOBYTE(v82) = 1;
    v16 = sub_22314CAE8();
    OUTLINED_FUNCTION_11_8(v16, &v82);
    v74 = v78;
    if (v78)
    {
      LOBYTE(v82) = 2;
      sub_22316A808();
      sub_2232004C4();
      v29 = v79;
      v30 = v80;
      v31 = v3 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes;
      *v31 = v78;
      *(v31 + 20) = v30;
      *(v31 + 16) = v29;
      v32 = v74 + 64;
      OUTLINED_FUNCTION_2_5();
      v14 = v34 & v33;
      v70 = (v35 + 63) >> 6;

      v36 = 0;
      for (v67[0] = v32; ; v32 = v67[0])
      {
        if (!v14)
        {
          while (1)
          {
            v37 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v37 >= v70)
            {

              sub_2230F7158(a1, &v78);
              v24 = TRPCandidateRequestMessageBase.init(from:)(&v78);
              v65 = OUTLINED_FUNCTION_3_20();
              v66(v65);
              __swift_destroy_boxed_opaque_existential_1(a1);
              return v24;
            }

            v14 = *(v32 + 8 * v37);
            ++v36;
            if (v14)
            {
              v36 = v37;
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_39:
          OUTLINED_FUNCTION_0_0();
          swift_once();
LABEL_6:
          v17 = sub_223200014();
          __swift_project_value_buffer(v17, qword_280FCE830);
          v18 = sub_223200004();
          v19 = sub_223200254();
          v20 = OUTLINED_FUNCTION_13_0();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "Failed to decode the tcu mapped NL response";
            goto LABEL_8;
          }

          goto LABEL_9;
        }

LABEL_20:
        v38 = v74;
        OUTLINED_FUNCTION_15_3();
        v40 = *v39;
        v41 = v39[1];
        v71 = *(v38 + 16);

        v72 = v40;
        v73 = v41;
        if (v71 && (sub_22314C358(v40, v41), (v42 & 1) != 0))
        {

          sub_22315B74C();
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = v76;
        OUTLINED_FUNCTION_11();
        swift_beginAccess();
        if (v44)
        {
          v69 = v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = *(v3 + v45);
          v46 = v82;
          *(v3 + v45) = 0x8000000000000000;
          v71 = sub_22314C358(v72, v73);
          v48 = v46[2];
          v49 = (v47 & 1) == 0;
          v67[1] = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            __break(1u);
            goto LABEL_41;
          }

          v50 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
          if (sub_2232003D4())
          {
            v51 = sub_22314C358(v72, v73);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_43;
            }

            v71 = v51;
          }

          if (v50)
          {

            v53 = v82;
            *(v82[7] + 8 * v71) = v69;
          }

          else
          {
            v53 = v82;
            v58 = v71;
            OUTLINED_FUNCTION_4_18(&v82[v71 >> 6]);
            v59 = (v53[6] + 16 * v58);
            *v59 = v61;
            v59[1] = v60;
            *(v53[7] + 8 * v58) = v69;
            v62 = v53[2];
            v63 = __OFADD__(v62, 1);
            v64 = v62 + 1;
            if (v63)
            {
              __break(1u);
LABEL_43:
              result = sub_2232006E4();
              __break(1u);
              return result;
            }

            v53[2] = v64;
          }
        }

        else
        {
          v72 = sub_22314C358(v72, v73);
          v55 = v54;

          if ((v55 & 1) == 0)
          {
            goto LABEL_36;
          }

          v56 = v76;
          swift_isUniquelyReferenced_nonNull_native();
          v82 = *(v3 + v56);
          v57 = v82;
          *(v3 + v56) = 0x8000000000000000;
          v73 = v57[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
          sub_2232003D4();
          v53 = v82;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A08, &qword_22320D060);
          sub_2232003F4();
        }

        *(v3 + v76) = v53;
LABEL_36:
        v14 &= v14 - 1;
        swift_endAccess();
      }
    }

    if (qword_280FCA778 != -1)
    {
LABEL_41:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v18 = sub_223200004();
    v19 = sub_223200254();
    v27 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v27, v28))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Failed to decode the tcu mapped NL repetitions";
LABEL_8:
      _os_log_impl(&dword_2230CE000, v18, v19, v23, v22, 2u);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

LABEL_9:

    sub_22316A7B4();
    swift_allocError();
    swift_willThrow();
    (*(v14 + 8))(v10, v5);
  }

  v24 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);

  type metadata accessor for NLTRPCandidateMessage(0);
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t sub_223169654(void *a1)
{
  v2 = v1;
  v91 = sub_2231FFE74();
  OUTLINED_FUNCTION_9();
  v85 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590A8, &unk_223210A58);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316A760();
  sub_2232007A4();
  v15 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v101[0] = *(v2 + v15);
  LOBYTE(v96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589D0, &qword_22320D048);
  sub_22314CC1C();
  v16 = v95;
  sub_223200654();
  if (v16)
  {
    return (*(v11 + 8))(v14, v9);
  }

  v90 = v8;
  v78 = v14;
  v77 = v11;
  v75 = a1;
  v76 = v9;
  v18 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v82 = v18;
  v19 = *(v2 + v18) + 64;
  OUTLINED_FUNCTION_2_5();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v92 = v85 + 8;
  v93 = v85 + 16;
  v84 = v25;

  v26 = 0;
  v88 = MEMORY[0x277D84F98];
  v27 = v91;
  v80 = v19;
  v28 = v2;
  v81 = v2;
  v79 = v24;
  if (!v22)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    OUTLINED_FUNCTION_15_3();
    v31 = *v30;
    v32 = v30[1];
    v34 = *(v33 + v82);
    v35 = *(v34 + 16);

    v87 = v32;
    v89 = v31;
    if (v35 && (v36 = sub_22314C358(v31, v32), (v37 & 1) != 0))
    {
      v38 = *(*(v34 + 56) + 8 * v36);
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
    }

    v86 = v22;

    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v83 = v38;
      v41 = v38 + v40;
      v42 = *(v85 + 72);
      v94 = *(v85 + 16);
      v95 = v42;
      v43 = MEMORY[0x277D84F90];
      v44 = v90;
      do
      {
        v94(v44, v41, v27);
        sub_22314CD7C(&qword_280FCE5F0, MEMORY[0x277D5DCA0], MEMORY[0x277D5DC98]);
        v45 = sub_2231FFFE4();
        v47 = v46;
        v48 = OUTLINED_FUNCTION_14_4();
        v49(v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22314C6A8(0, *(v43 + 2) + 1, 1, v43);
        }

        v51 = *(v43 + 2);
        v50 = *(v43 + 3);
        if (v51 >= v50 >> 1)
        {
          v43 = sub_22314C6A8((v50 > 1), v51 + 1, 1, v43);
        }

        *(v43 + 2) = v51 + 1;
        v52 = &v43[16 * v51];
        *(v52 + 4) = v45;
        *(v52 + 5) = v47;
        v44 = v90;
        v27 = v91;
        v41 += v95;
        --v39;
      }

      while (v39);
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
    }

    v53 = v88;
    swift_isUniquelyReferenced_nonNull_native();
    v96 = v53;
    v54 = v87;
    sub_22314C358(v89, v87);
    OUTLINED_FUNCTION_5_16();
    if (__OFADD__(v57, v58))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = sub_2232006E4();
      __break(1u);
      return result;
    }

    v59 = v55;
    LODWORD(v95) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A18, &qword_22320D070);
    if (sub_2232003D4())
    {
      v60 = v89;
      v61 = sub_22314C358(v89, v54);
      if ((v95 & 1) != (v62 & 1))
      {
        goto LABEL_37;
      }

      v59 = v61;
      if (v95)
      {
LABEL_28:

        v88 = v96;
        *(v96[7] + 8 * v59) = v43;

        goto LABEL_29;
      }
    }

    else
    {
      v60 = v89;
      if (v95)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_4_18(&v96[v59 >> 6]);
    v64 = (v63[6] + 16 * v59);
    *v64 = v60;
    v64[1] = v54;
    *(v63[7] + 8 * v59) = v43;
    v65 = v63[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_36;
    }

    v88 = v63;
    v63[2] = v67;
LABEL_29:
    v22 = (v86 - 1) & v86;
    v28 = v81;
    v19 = v80;
    v24 = v79;
  }

  while (v22);
  while (1)
  {
LABEL_4:
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v29 >= v24)
    {
      break;
    }

    v22 = *(v19 + 8 * v29);
    ++v26;
    if (v22)
    {
      v26 = v29;
      goto LABEL_8;
    }
  }

  v68 = v28;

  v96 = v88;
  v102 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589F8, &unk_22320D050);
  sub_22314CDC4();
  v69 = v76;
  sub_223200654();

  v70 = (v68 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes);
  v71 = *(v68 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 16) | (*(v68 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 20) << 32);
  v72 = v77;
  if ((v71 & 0xFF00000000) != 0x200000000)
  {
    v73 = v70[1];
    LODWORD(v96) = *v70;
    v97 = v73;
    v98 = v71;
    v99 = BYTE4(v71) & 1;
    v100 = BYTE5(v71) & 1;
    v102 = 2;
    sub_22316A85C();
    sub_223200654();
  }

  sub_2231E5494(v75);
  return (*(v72 + 8))(v78, v69);
}

uint64_t sub_223169E3C()
{
  sub_223200374();
  v14 = 0;
  v15 = 0xE000000000000000;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for NLTRPCandidateMessage(0);
  v1 = objc_msgSendSuper2(&v13, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  MEMORY[0x223DD5AA0](v2, v4);

  MEMORY[0x223DD5AA0](0xD000000000000018, 0x8000000223223B00);
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B0, &qword_22320D030);
  OUTLINED_FUNCTION_4_8();
  v5 = sub_223200054();
  v7 = v6;

  MEMORY[0x223DD5AA0](v5, v7);

  MEMORY[0x223DD5AA0](0xD00000000000001CLL, 0x8000000223223B20);
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A08, &qword_22320D060);
  OUTLINED_FUNCTION_4_8();
  v8 = sub_223200054();
  v10 = v9;

  MEMORY[0x223DD5AA0](v8, v10);

  MEMORY[0x223DD5AA0](0xD00000000000001ELL, 0x8000000223224230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590B8, &qword_223210A68);
  v11 = sub_223200104();
  MEMORY[0x223DD5AA0](v11);

  return v14;
}

uint64_t NLTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NLTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t NLTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_14() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t NLTRPCandidateMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 28));

  return v1;
}

uint64_t NLTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 32));

  return v1;
}

uint64_t NLTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLResponse.getter()
{
  type metadata accessor for NLTRPCandidateMessage.Builder(0);
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLResponse.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_14() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLRepetitions.getter()
{
  type metadata accessor for NLTRPCandidateMessage.Builder(0);
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLRepetitions.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_14() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NLTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 44));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

__n128 NLTRPCandidateMessage.Builder.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 48));
  v4 = v3[1].n128_u32[0];
  v5 = v3[1].n128_u16[2];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u16[2] = v5;
  a1[1].n128_u32[0] = v4;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.selectedUserAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  result = type metadata accessor for NLTRPCandidateMessage.Builder(0);
  v7 = v1 + *(result + 48);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 20) = v5;
  *(v7 + 16) = v4;
  return result;
}

uint64_t sub_22316A69C()
{
}

id NLTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22316A760()
{
  result = qword_280FCDF78;
  if (!qword_280FCDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDF78);
  }

  return result;
}

unint64_t sub_22316A7B4()
{
  result = qword_27D059098;
  if (!qword_27D059098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059098);
  }

  return result;
}

unint64_t sub_22316A808()
{
  result = qword_27D0590A0;
  if (!qword_27D0590A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590A0);
  }

  return result;
}

unint64_t sub_22316A85C()
{
  result = qword_27D0590B0;
  if (!qword_27D0590B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590B0);
  }

  return result;
}

unint64_t sub_22316A8B4()
{
  result = qword_27D0590C0;
  if (!qword_27D0590C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLTRPCandidateMessage.NLTRPCandidateMessage(_BYTE *result, int a2, int a3)
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

uint64_t sub_22316ABCC(uint64_t a1)
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
        sub_223110900(319, &qword_280FCA500, &qword_27D0589D0, &qword_22320D048);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_223110900(319, &qword_280FCA4F0, &qword_27D058A38, &qword_22320D1C0);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_2230D525C(319, &unk_280FCA7A8, &type metadata for SelectedUserAttributes);
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

_BYTE *storeEnumTagSinglePayload for NLTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22316AE48()
{
  result = qword_27D0590C8;
  if (!qword_27D0590C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590C8);
  }

  return result;
}

unint64_t sub_22316AEA0()
{
  result = qword_280FCDF68;
  if (!qword_280FCDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDF68);
  }

  return result;
}

unint64_t sub_22316AEF8()
{
  result = qword_280FCDF70;
  if (!qword_280FCDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDF70);
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_14_5(a1);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_19_1();
  sub_2231FFE64();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590D0, &qword_223210D10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_8();
  v5 = sub_22316B15C();
  OUTLINED_FUNCTION_8_13(&_s10CodingKeysON_2, v6, v5);
  if (!v1)
  {
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_23(MEMORY[0x277CC9318], v7);
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_6_15();
    v10 = sub_22316BA40(v8, v9, MEMORY[0x277D5DC50]);
    OUTLINED_FUNCTION_1_19(v10);
    v11 = OUTLINED_FUNCTION_3_21();
    v12(v11);
    v13 = OUTLINED_FUNCTION_11_9();
    v14(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_22316B15C()
{
  result = qword_280FCE618;
  if (!qword_280FCE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE618);
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.encode(to:)()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590D8, &qword_223210D18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_20_7();
  v2 = sub_22316B15C();
  OUTLINED_FUNCTION_13_5(&_s10CodingKeysON_2, v3, v2);
  sub_2231FFE64();
  OUTLINED_FUNCTION_6_15();
  v6 = sub_22316BA40(v4, v5, MEMORY[0x277D5DC50]);
  v7 = OUTLINED_FUNCTION_9_17(v6);
  if (!v0)
  {
    v14 = v7;
    v15 = v8;
    v9 = sub_2230D7754();
    OUTLINED_FUNCTION_15_6(v9, v10);
    sub_2230D94DC(v14, v15);
  }

  v11 = OUTLINED_FUNCTION_18_8();
  return v12(v11);
}

uint64_t sub_22316B30C(uint64_t a1)
{
  v2 = sub_22316B15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316B348(uint64_t a1)
{
  v2 = sub_22316B15C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Siri_Nlu_External_Task.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_14_5(a1);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_19_1();
  sub_2231FFDC4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590E0, &qword_223210D20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_8();
  v5 = sub_22316B5B4();
  OUTLINED_FUNCTION_8_13(&_s10CodingKeysON_1, v6, v5);
  if (!v1)
  {
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_23(MEMORY[0x277CC9318], v7);
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_5_17();
    v10 = sub_22316BA40(v8, v9, MEMORY[0x277D5DA50]);
    OUTLINED_FUNCTION_1_19(v10);
    v11 = OUTLINED_FUNCTION_3_21();
    v12(v11);
    v13 = OUTLINED_FUNCTION_11_9();
    v14(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_22316B5B4()
{
  result = qword_27D0590E8;
  if (!qword_27D0590E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590E8);
  }

  return result;
}

uint64_t Siri_Nlu_External_Task.encode(to:)()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590F8, &qword_223210D28);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_20_7();
  v2 = sub_22316B5B4();
  OUTLINED_FUNCTION_13_5(&_s10CodingKeysON_1, v3, v2);
  sub_2231FFDC4();
  OUTLINED_FUNCTION_5_17();
  v6 = sub_22316BA40(v4, v5, MEMORY[0x277D5DA50]);
  v7 = OUTLINED_FUNCTION_9_17(v6);
  if (!v0)
  {
    v14 = v7;
    v15 = v8;
    v9 = sub_2230D7754();
    OUTLINED_FUNCTION_15_6(v9, v10);
    sub_2230D94DC(v14, v15);
  }

  v11 = OUTLINED_FUNCTION_18_8();
  return v12(v11);
}

uint64_t sub_22316B744(uint64_t a1)
{
  v2 = sub_22316B5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316B780(uint64_t a1)
{
  v2 = sub_22316B5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Siri_Nlu_External_LegacyNLContext.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_14_5(a1);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_19_1();
  sub_2231FFE54();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059100, &qword_223210D30);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_8();
  v5 = sub_22316B9EC();
  OUTLINED_FUNCTION_8_13(&_s10CodingKeysON_0, v6, v5);
  if (!v1)
  {
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_23(MEMORY[0x277CC9318], v7);
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_7_17();
    v10 = sub_22316BA40(v8, v9, MEMORY[0x277D5DC38]);
    OUTLINED_FUNCTION_1_19(v10);
    v11 = OUTLINED_FUNCTION_3_21();
    v12(v11);
    v13 = OUTLINED_FUNCTION_11_9();
    v14(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_22316B9EC()
{
  result = qword_280FCE648;
  if (!qword_280FCE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE648);
  }

  return result;
}

uint64_t sub_22316BA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_External_LegacyNLContext.encode(to:)()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059108, &qword_223210D38);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_20_7();
  v2 = sub_22316B9EC();
  OUTLINED_FUNCTION_13_5(&_s10CodingKeysON_0, v3, v2);
  sub_2231FFE54();
  OUTLINED_FUNCTION_7_17();
  v6 = sub_22316BA40(v4, v5, MEMORY[0x277D5DC38]);
  v7 = OUTLINED_FUNCTION_9_17(v6);
  if (!v0)
  {
    v14 = v7;
    v15 = v8;
    v9 = sub_2230D7754();
    OUTLINED_FUNCTION_15_6(v9, v10);
    sub_2230D94DC(v14, v15);
  }

  v11 = OUTLINED_FUNCTION_18_8();
  return v12(v11);
}

uint64_t sub_22316BBC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461446F746F7270 && a2 == 0xE900000000000061)
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

uint64_t sub_22316BC44(uint64_t a1)
{
  v2 = sub_22316B9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316BC80(uint64_t a1)
{
  v2 = sub_22316B9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *sub_22316BD0C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22316BDBC()
{
  result = qword_27D059110;
  if (!qword_27D059110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059110);
  }

  return result;
}

unint64_t sub_22316BE14()
{
  result = qword_27D059118;
  if (!qword_27D059118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059118);
  }

  return result;
}

unint64_t sub_22316BE6C()
{
  result = qword_27D059120;
  if (!qword_27D059120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059120);
  }

  return result;
}

unint64_t sub_22316BEC4()
{
  result = qword_280FCE638;
  if (!qword_280FCE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE638);
  }

  return result;
}

unint64_t sub_22316BF1C()
{
  result = qword_280FCE640;
  if (!qword_280FCE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE640);
  }

  return result;
}

unint64_t sub_22316BF74()
{
  result = qword_27D059128;
  if (!qword_27D059128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059128);
  }

  return result;
}

unint64_t sub_22316BFCC()
{
  result = qword_27D059130;
  if (!qword_27D059130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059130);
  }

  return result;
}

unint64_t sub_22316C024()
{
  result = qword_280FCE608;
  if (!qword_280FCE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE608);
  }

  return result;
}

unint64_t sub_22316C07C()
{
  result = qword_280FCE610;
  if (!qword_280FCE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE610);
  }

  return result;
}

void *OUTLINED_FUNCTION_12_8()
{
  v2 = v0[3];
  *(v1 - 72) = v0;
  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OrchestrationTaskCompletedMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id OrchestrationTaskCompletedMessage.init(build:)(void (*a1)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v13 = v12 - v11;
  v14 = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v18 = v17 - v16;
  __swift_storeEnumTagSinglePayload(v17 - v16, 1, 1, v7);
  *(v18 + v15[7]) = 15;
  v19 = (v18 + v15[8]);
  *v19 = 0;
  v19[1] = 0;
  __swift_storeEnumTagSinglePayload(v18 + v15[9], 1, 1, v7);
  a1(v18);
  sub_2230D1480(v18, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
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
      v32 = v24;
      *v23 = 136446210;
      v25 = sub_2230F7898(ObjectType);
      v27 = sub_2231A5D38(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2230CE000, v21, v22, "Could not build %{public}s: Builder has missing required fields", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223DD6780](v24, -1, -1);
      MEMORY[0x223DD6780](v23, -1, -1);
    }

    sub_22316C5F4(v18);
    type metadata accessor for OrchestrationTaskCompletedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
    v29 = (*(v9 + 16))(v1 + OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId, v13, v7);
    MEMORY[0x28223BE20](v29);
    *(&v31 - 2) = v18;
    v28 = SessionMessageBase.init(build:)(sub_22316D058);
    (*(v9 + 8))(v13, v7);
    sub_22316C5F4(v18);
  }

  return v28;
}

uint64_t sub_22316C5F4(uint64_t a1)
{
  v2 = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22316C670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  *a1 = *(a2 + v4[5]);
  v5 = (a2 + v4[6]);
  v7 = *v5;
  v6 = v5[1];

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v8 = v4[7];
  v9 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v8, a1 + v9);
}

uint64_t OrchestrationTaskCompletedMessage.Builder.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + *(type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0) + 24));

  return v1;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t OrchestrationTaskCompletedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_24() + 28);

  return sub_2230D4E04(v0, v2);
}

uint64_t sub_22316C968(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002232216A0 == a2)
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

uint64_t sub_22316CA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22316C968(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22316CA34(uint64_t a1)
{
  v2 = sub_22316D060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316CA70(uint64_t a1)
{
  v2 = sub_22316D060();

  return MEMORY[0x2821FE720](a1, v2);
}

void *OrchestrationTaskCompletedMessage.init(from:)(void *a1)
{
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v13 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v14 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059138, &qword_223211178);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316D060();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for OrchestrationTaskCompletedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
    sub_223200554();
    (*(v13 + 32))(v15[6] + OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId, v14, v3);
    sub_2230F7158(a1, v15);
    v9 = SessionMessageBase.init(from:)(v15);
    v11 = OUTLINED_FUNCTION_3_3();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_22316CDAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059140, &qword_223211180);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316D060();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
  sub_223200654();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_22316CF5C()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id OrchestrationTaskCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrchestrationTaskCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22316D060()
{
  result = qword_280FCC220;
  if (!qword_280FCC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC220);
  }

  return result;
}

uint64_t sub_22316D110(uint64_t a1)
{
  sub_2230F6D30(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
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

_BYTE *storeEnumTagSinglePayload for OrchestrationTaskCompletedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22316D290()
{
  result = qword_27D059148;
  if (!qword_27D059148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059148);
  }

  return result;
}

unint64_t sub_22316D2E8()
{
  result = qword_280FCC210;
  if (!qword_280FCC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC210);
  }

  return result;
}

unint64_t sub_22316D340()
{
  result = qword_280FCC218;
  if (!qword_280FCC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC218);
  }

  return result;
}

id OrchestrationTasksCreatedMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0);
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30[-v9];
  *v10 = 0;
  v10[8] = 15;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v11 = *(v8 + 28);
  v12 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v10[v11], 1, 1, v12);
  a1(v10);
  v13 = *v10;
  if (*v10)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32OrchestrationTasksCreatedMessage_orchestrationTasks) = v13;
    MEMORY[0x28223BE20](v13);
    *&v30[-16] = v10;

    v14 = SessionMessageBase.init(build:)(sub_22316E898);
    OUTLINED_FUNCTION_3_22();
    sub_22316EA18(v10, v15);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v16 = sub_223200014();
    __swift_project_value_buffer(v16, qword_280FCE830);
    v17 = sub_223200004();
    v18 = sub_223200254();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v19 = 136446466;
      v20 = sub_2230F7898(ObjectType);
      sub_2231A5D38(v20, v21, &v31);

      OUTLINED_FUNCTION_11_10();
      swift_beginAccess();
      sub_22316EA70(v10, v7, type metadata accessor for OrchestrationTasksCreatedMessage.Builder);
      v22 = sub_223200104();
      v24 = sub_2231A5D38(v22, v23, &v31);

      *(v19 + 14) = v24;
      OUTLINED_FUNCTION_13_6(&dword_2230CE000, v25, v26, "Could not build %{public}s: Builder %s has missing required fields");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();

      v27 = v10;
      v28 = type metadata accessor for OrchestrationTasksCreatedMessage.Builder;
    }

    else
    {

      OUTLINED_FUNCTION_3_22();
      v27 = v10;
    }

    sub_22316EA18(v27, v28);
    type metadata accessor for OrchestrationTasksCreatedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

uint64_t sub_22316D728(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0) + 28);
  v7 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v6, a1 + v7);
}

uint64_t sub_22316D7B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002232243B0 == a2)
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

uint64_t sub_22316D850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22316D7B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22316D87C(uint64_t a1)
{
  v2 = sub_22316E8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316D8B8(uint64_t a1)
{
  v2 = sub_22316E8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *OrchestrationTasksCreatedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059150, &qword_223211310);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316E8A0();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for OrchestrationTasksCreatedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059158, &qword_223211318);
    sub_22316E914(&qword_27D059160, &qword_27D059168, &protocol conformance descriptor for OrchestrationTask, MEMORY[0x277D83978]);
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32OrchestrationTasksCreatedMessage_orchestrationTasks) = v9[0];
    sub_2230F7158(a1, v9);
    v6 = SessionMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_22316DB94(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059170, &unk_223211320);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316E8A0();
  sub_2232007A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059158, &qword_223211318);
  sub_22316E914(&qword_280FCA470, qword_280FCAA98, &protocol conformance descriptor for OrchestrationTask, MEMORY[0x277D83948]);
  sub_223200654();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t OrchestrationTasksCreatedMessage.Builder.orchestrationTasks.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t OrchestrationTasksCreatedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OrchestrationTasksCreatedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OrchestrationTasksCreatedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t OrchestrationTasksCreatedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0) + 28);

  return sub_2230D4E04(a1, v3);
}

id OrchestrationTasksCreatedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrchestrationTasksCreatedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OrchestrationTask.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t OrchestrationTask.init(build:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v40 = type metadata accessor for OrchestrationTask.Builder(0);
  OUTLINED_FUNCTION_4();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v41 = type metadata accessor for OrchestrationTask(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  v22 = v21 - v20;
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v6);
  a1(v18);
  sub_2230D1480(v18, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v23 = sub_223200014();
    __swift_project_value_buffer(v23, qword_280FCE830);
    v24 = sub_223200004();
    v25 = sub_223200254();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v26 = 136446466;
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059178, &qword_223211330);
      v27 = sub_223200104();
      sub_2231A5D38(v27, v28, &v43);

      OUTLINED_FUNCTION_11_10();
      swift_beginAccess();
      sub_22316EA70(v18, v16, type metadata accessor for OrchestrationTask.Builder);
      v29 = sub_223200104();
      v31 = sub_2231A5D38(v29, v30, &v43);

      *(v26 + 14) = v31;
      OUTLINED_FUNCTION_13_6(&dword_2230CE000, v32, v33, "Could not build %{public}s: Builder %s has missing required fields");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();

      v34 = v18;
      v35 = type metadata accessor for OrchestrationTask.Builder;
    }

    else
    {

      OUTLINED_FUNCTION_4_25();
      v34 = v18;
    }

    sub_22316EA18(v34, v35);
    v38 = 1;
  }

  else
  {
    v36 = *(v8 + 32);
    v36(v12, v2, v6);
    v36(v22, v12, v6);
    OUTLINED_FUNCTION_4_25();
    sub_22316EA18(v18, v37);
    sub_22316EAD0(v22, a2);
    v38 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v38, 1, v41);
}

uint64_t sub_22316E408(uint64_t a1)
{
  v2 = sub_22316EB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316E444(uint64_t a1)
{
  v2 = sub_22316EB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrchestrationTask.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059180, &qword_223211338);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316EB34();
  sub_2232007A4();
  sub_2231FFDA4();
  OUTLINED_FUNCTION_2_26();
  sub_22316E9B0(v8, v9, MEMORY[0x277CC95F8]);
  sub_223200654();
  return (*(v4 + 8))(v7, v2);
}

uint64_t OrchestrationTask.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v24 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v27 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059188, &qword_223211340);
  OUTLINED_FUNCTION_9();
  v25 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for OrchestrationTask(0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_2_2();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316EB34();
  sub_223200794();
  if (!v2)
  {
    v18 = v24;
    v19 = v26;
    OUTLINED_FUNCTION_2_26();
    sub_22316E9B0(v20, v21, MEMORY[0x277CC9618]);
    sub_223200554();
    (*(v25 + 8))(v13, v9);
    (*(v18 + 32))(v17, v27, v4);
    sub_22316EAD0(v17, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_22316E8A0()
{
  result = qword_280FCC2F0;
  if (!qword_280FCC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC2F0);
  }

  return result;
}

uint64_t sub_22316E914(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059158, &qword_223211318);
    sub_22316E9B0(a2, type metadata accessor for OrchestrationTask, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22316E9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22316EA18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22316EA70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22316EAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrchestrationTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22316EB34()
{
  result = qword_280FCAB40;
  if (!qword_280FCAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB40);
  }

  return result;
}

void sub_22316EC2C(uint64_t a1)
{
  sub_22316ED00(319);
  if (v1 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    if (v2 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2230F6D30(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22316ED00(uint64_t a1)
{
  if (!qword_280FCA468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059158, &qword_223211318);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA468);
    }
  }
}

uint64_t sub_22316EDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_22316EE64(_BYTE *result, int a2, int a3)
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

unint64_t sub_22316EF14()
{
  result = qword_27D059190;
  if (!qword_27D059190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059190);
  }

  return result;
}

unint64_t sub_22316EF6C()
{
  result = qword_27D059198;
  if (!qword_27D059198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059198);
  }

  return result;
}

unint64_t sub_22316EFC4()
{
  result = qword_280FCAB30;
  if (!qword_280FCAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB30);
  }

  return result;
}

unint64_t sub_22316F01C()
{
  result = qword_280FCAB38;
  if (!qword_280FCAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB38);
  }

  return result;
}

unint64_t sub_22316F074()
{
  result = qword_280FCC2E0;
  if (!qword_280FCC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC2E0);
  }

  return result;
}

unint64_t sub_22316F0CC()
{
  result = qword_280FCC2E8;
  if (!qword_280FCC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC2E8);
  }

  return result;
}

void *PauseDictationRequestMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id PauseDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PauseDictationRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PauseDictationRequestMessage(uint64_t a1)
{
  result = qword_280FCCBD8;
  if (!qword_280FCCBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SiriMessageTypes::PommesError_optional __swiftcall PommesError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PommesError.rawValue.getter()
{
  result = 0x6167656C65446F6ELL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x74754F64656D6974;
      break;
    case 3:
      result = 0x746C757365526F6ELL;
      break;
    case 4:
      result = 0x4573757361676570;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x79726575516F6ELL;
      break;
    case 7:
      result = 0x6F54656C62616E75;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_22316F460()
{
  result = qword_27D0591A0;
  if (!qword_27D0591A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591A0);
  }

  return result;
}

unint64_t sub_22316F4D8@<X0>(unint64_t *a1@<X8>)
{
  result = PommesError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PommesError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22316F68C()
{
  result = qword_280FCACB0;
  if (!qword_280FCACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACB0);
  }

  return result;
}

void *PommesResultCandidateMessage.pommesResponse.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse);
  v2 = v1;
  return v1;
}

uint64_t sub_22316F764@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

unint64_t sub_22316F7F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230EDCE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22316F828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EDD30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22316F85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230EDCE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22316F884(uint64_t a1)
{
  v2 = sub_2231716CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316F8C0(uint64_t a1)
{
  v2 = sub_2231716CC();

  return MEMORY[0x2821FE720](a1, v2);
}

id PommesResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return PommesResultCandidateMessage.init(build:)(v2, v0);
}

id PommesResultCandidateMessage.init(build:)(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v111 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v101 = &v94[-v3];
  v4 = sub_2231FFF44();
  OUTLINED_FUNCTION_9();
  v103 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v102 = v7;
  MEMORY[0x28223BE20](v8);
  v105 = &v94[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v94[-v11];
  v13 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v106 = v17;
  MEMORY[0x28223BE20](v18);
  v107 = &v94[-v19];
  v20 = type metadata accessor for PommesResultCandidateMessage.Builder(0);
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v24 = (v23 - v22);
  *v24 = 15;
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  v25 = v21[8];
  __swift_storeEnumTagSinglePayload(v23 - v22 + v25, 1, 1, v13);
  v26 = &v24[v21[9]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v24[v21[10]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v24[v21[11]];
  v108 = v13;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v13);
  v29 = v21[12];
  *&v24[v29] = 0;
  v30 = v21[13];
  v24[v30] = 10;
  v31 = v21[14];
  v104 = v4;
  __swift_storeEnumTagSinglePayload(&v24[v31], 1, 1, v4);
  (v111)(v24);
  v32 = *v24;
  if (v32 == 15 || !*(v24 + 2))
  {
    goto LABEL_16;
  }

  v110 = *(v24 + 2);
  v111 = v15;
  v100 = *(v24 + 1);
  sub_2230D3008(&v24[v25], v12, &qword_27D0575C0, &qword_2232035E0);
  v33 = v108;
  if (__swift_getEnumTagSinglePayload(v12, 1, v108) == 1)
  {
    sub_2230D4198(v12, &qword_27D0575C0, &qword_2232035E0);
LABEL_16:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v53 = sub_223200014();
    __swift_project_value_buffer(v53, qword_280FCE830);
    v54 = sub_223200004();
    v55 = sub_223200254();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v113[0] = v57;
      *v56 = 136446210;
      v58 = sub_2230F7898(ObjectType);
      v60 = sub_2231A5D38(v58, v59, v113);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_2230CE000, v54, v55, "Could not build %{public}s: Builder has missing required fields", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_223170310(v24);
LABEL_21:
    type metadata accessor for PommesResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v99 = v32;
  v34 = v111;
  v35 = v12;
  v36 = *(v111 + 32);
  v36(v107, v35, v33);
  if (!*(v26 + 1))
  {
    (*(v34 + 8))(v107, v33);
    goto LABEL_16;
  }

  v37 = *(v27 + 1);
  if (!v37)
  {
    (*(v111 + 8))(v107, v33);
    goto LABEL_16;
  }

  ObjectType = *(v26 + 1);
  v38 = *v26;
  v97 = *v27;
  v98 = v38;
  v39 = v106;
  sub_2231FFD94();
  v40 = v33;
  v41 = OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId;
  v42 = v112;
  v36((v112 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId), v39, v40);
  v43 = v24[v30];
  v44 = *&v24[v29];
  if (v43 == 10 && !v44)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v45 = sub_223200014();
    __swift_project_value_buffer(v45, qword_280FCE830);
    v46 = sub_223200004();
    v47 = sub_223200254();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v107;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2230CE000, v46, v47, "PommesResultCandidateMessage invalid init with nil error and nil pommesResponse", v50, 2u);
      v42 = v112;
      OUTLINED_FUNCTION_14();
    }

    v51 = *(v111 + 8);
    v52 = v108;
    v51(v49, v108);
    sub_223170310(v24);
    v51((v42 + v41), v52);
    goto LABEL_21;
  }

  v106 = v37;
  *(v42 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse) = v44;
  *(v42 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error) = v43;
  v63 = &v24[v31];
  v64 = v101;
  sub_2230D3008(v63, v101, &qword_27D0591A8, &unk_223211810);
  v65 = v104;
  if (__swift_getEnumTagSinglePayload(v64, 1, v104) == 1)
  {
    v66 = v103;
    v67 = v105;
    (*(v103 + 104))(v105, *MEMORY[0x277D56670], v65);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v65);
    v69 = v44;
    if (EnumTagSinglePayload != 1)
    {
      sub_2230D4198(v64, &qword_27D0591A8, &unk_223211810);
    }
  }

  else
  {
    v66 = v103;
    v67 = v105;
    (*(v103 + 32))(v105, v64, v65);
    v70 = v44;
  }

  v71 = v102;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_280FCA778);
  }

  v72 = sub_223200014();
  __swift_project_value_buffer(v72, qword_280FCE830);
  v103 = *(v66 + 16);
  (v103)(v71, v67, v65);
  v73 = sub_223200004();
  v74 = sub_223200244();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v113[0] = v101;
    *v75 = 136315138;
    v96 = v73;
    v76 = sub_2231FFF34();
    v78 = v77;
    v95 = v74;
    v79 = *(v66 + 8);
    v80 = OUTLINED_FUNCTION_16_6();
    v79(v80);
    v81 = sub_2231A5D38(v76, v78, v113);
    v82 = v79;

    v83 = v75;
    v67 = v105;
    *(v83 + 1) = v81;
    v84 = v96;
    _os_log_impl(&dword_2230CE000, v96, v95, "Creating PommesResultCandidateMessage with search reason: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v101);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  else
  {

    v82 = *(v66 + 8);
    v85 = OUTLINED_FUNCTION_16_6();
    v82(v85);
  }

  v86 = v99;
  v87 = v107;
  v88 = (v103)(v42 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason, v67, v65);
  MEMORY[0x28223BE20](v88);
  v94[-64] = v86;
  v89 = v110;
  *&v94[-56] = v100;
  *&v94[-48] = v89;
  v90 = v98;
  *&v94[-40] = v87;
  *&v94[-32] = v90;
  v91 = v97;
  *&v94[-24] = ObjectType;
  *&v94[-16] = v91;
  *&v94[-8] = v106;
  v61 = ResultCandidateRequestMessageBase.init(build:)(sub_223171694);
  (v82)(v67, v65);
  if (v61)
  {
    v92 = *(v111 + 8);
    v93 = v61;
    v92(v87, v108);
    sub_223170310(v24);
  }

  else
  {
    (*(v111 + 8))(v87, v108);
    sub_223170310(v24);
  }

  return v61;
}

uint64_t sub_223170310(uint64_t a1)
{
  v2 = type metadata accessor for PommesResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22317038C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v16 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  v17 = v16[6];
  sub_2230D4198(a1 + v17, &qword_27D0575C0, &qword_2232035E0);
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

char *PommesResultCandidateMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v52 = &v48 - v3;
  v4 = sub_2231FFF44();
  OUTLINED_FUNCTION_9();
  v54 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v57 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v53 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591B0, &qword_223211820);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2231716CC();
  v21 = v55;
  sub_223200794();
  v22 = qword_280FCDFA0 + 96;
  if (v21)
  {
    v23 = 0;
    v24 = 0;
    OUTLINED_FUNCTION_17_5();
    v25 = v56;
    v26 = v57;
    v27 = v58;
    goto LABEL_7;
  }

  v50 = v4;
  v51 = v14;
  v49 = v9;
  v28 = v54;
  v55 = v16;
  v29 = v56;
  v61 = 1;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_10_11(MEMORY[0x277CC9318]);
  v30 = v60;
  if (v60 >> 60 == 15)
  {
    v31 = 0;
    v32 = v28;
  }

  else
  {
    v33 = v59;
    sub_2231717C8();
    sub_2231FFFF4();
    v31 = sub_223200264();
    v32 = v28;
    sub_22310A610(v33, v30);
  }

  *&v29[OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse] = v31;
  LOBYTE(v59) = 0;
  sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
  v34 = v51;
  v26 = v57;
  sub_223200554();
  (*(v53 + 32))(&v29[OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId], v34, v26);
  v61 = 2;
  sub_223171720();
  OUTLINED_FUNCTION_10_11(&type metadata for PommesError);
  v35 = &qword_280FCDFA0[12];
  v29[OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error] = v59;
  LOBYTE(v59) = 3;
  sub_223200494();
  v27 = v58;
  if (!v36)
  {
    goto LABEL_19;
  }

  v38 = v52;
  sub_2231FFF24();
  v39 = v50;
  if (__swift_getEnumTagSinglePayload(v38, 1, v50) == 1)
  {
    sub_2230D4198(v38, &qword_27D0591A8, &unk_223211810);
    v35 = qword_280FCDFA0 + 96;
LABEL_19:
    (*(v32 + 104))(&v29[OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason], *MEMORY[0x277D56670], v50);
    goto LABEL_21;
  }

  v40 = *(v32 + 32);
  v41 = v49;
  v40(v49, v38, v39);
  v40(&v29[OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason], v41, v39);
  v27 = v58;
  v35 = &qword_280FCDFA0[12];
LABEL_21:
  sub_2230F7158(v27, &v59);
  v42 = ResultCandidateRequestMessageBase.init(from:)(&v59);
  v25 = v42;
  v22 = &qword_280FCDFA0[12];
  if (v42[v35[374]] != 10 || *&v42[OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse])
  {
    v43 = OUTLINED_FUNCTION_9_19();
    v44(v43);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return v25;
  }

  sub_223171774();
  swift_allocError();
  *v45 = 5;
  swift_willThrow();
  v46 = OUTLINED_FUNCTION_9_19();
  v47(v46);
  v23 = 1;
  v24 = 1;
  LODWORD(v19) = 1;
  LODWORD(v16) = 1;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (v19)
  {
    if (v16)
    {
    }
  }

  else
  {
    if (v23)
    {
      (*(v53 + 8))(&v25[OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId], v26);
    }

    if (v24)
    {
    }

    type metadata accessor for PommesResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
  }

  return v25;
}

uint64_t sub_223170B9C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591C8, &qword_223211828);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231716CC();
  sub_2232007A4();
  v7 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse);
  if (!v7)
  {
LABEL_7:
    if (*(v4 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error) == 10 || (LOBYTE(v22[0]) = *(v4 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error), sub_22317180C(), OUTLINED_FUNCTION_6_3(), (v3 = v2) == 0))
    {
      LOBYTE(v22[0]) = 0;
      sub_2231FFDA4();
      sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
      sub_223200654();
      if (!v3)
      {
        sub_2231FFF34();
        LOBYTE(v22[0]) = 3;
        sub_2232005F4();

        sub_223190B78(a1);
      }
    }

    goto LABEL_11;
  }

  v8 = objc_opt_self();
  v22[0] = 0;
  v9 = v7;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v22];
  v11 = v22[0];
  if (v10)
  {
    v21 = v4;
    v12 = sub_2231FFD24();
    v14 = v13;

    v22[0] = v12;
    v22[1] = v14;
    sub_2230D7754();
    OUTLINED_FUNCTION_6_3();
    v3 = v2;
    if (v2)
    {
      v15 = OUTLINED_FUNCTION_24_0();
      v16(v15);

      return sub_2230D94DC(v12, v14);
    }

    sub_2230D94DC(v12, v14);
    v4 = v21;
    goto LABEL_7;
  }

  v18 = v11;
  sub_2231FFD04();

  swift_willThrow();
LABEL_11:
  v19 = OUTLINED_FUNCTION_24_0();
  return v20(v19);
}

uint64_t PommesResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t PommesResultCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for PommesResultCandidateMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t PommesResultCandidateMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for PommesResultCandidateMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *PommesResultCandidateMessage.Builder.pommesResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void PommesResultCandidateMessage.Builder.pommesResponse.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_16() + 40);

  *(v1 + v2) = v0;
}

uint64_t PommesResultCandidateMessage.Builder.error.getter()
{
  result = OUTLINED_FUNCTION_20_8();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t PommesResultCandidateMessage.Builder.error.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PommesResultCandidateMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_223171518()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4_14();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason;
  sub_2231FFF44();
  OUTLINED_FUNCTION_4_14();
  v5 = *(v4 + 8);

  return v5(v0 + v3);
}

id PommesResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PommesResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231716CC()
{
  result = qword_280FCCBD0;
  if (!qword_280FCCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCBD0);
  }

  return result;
}

unint64_t sub_223171720()
{
  result = qword_27D0591B8;
  if (!qword_27D0591B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591B8);
  }

  return result;
}

unint64_t sub_223171774()
{
  result = qword_27D0591C0;
  if (!qword_27D0591C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591C0);
  }

  return result;
}

unint64_t sub_2231717C8()
{
  result = qword_27D0576E8;
  if (!qword_27D0576E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0576E8);
  }

  return result;
}

unint64_t sub_22317180C()
{
  result = qword_280FCACB8;
  if (!qword_280FCACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACB8);
  }

  return result;
}

uint64_t sub_223171868(uint64_t a1)
{
  result = sub_2231FFDA4();
  if (v2 <= 0x3F)
  {
    result = sub_2231FFF44();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22317199C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_223171B2C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223171B2C(319, &qword_280FCA548, MEMORY[0x277D566B0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCACA8, &type metadata for PommesError);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_223171B2C(319, qword_280FCA550, MEMORY[0x277D56678]);
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

void sub_223171B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PommesResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223171C60()
{
  result = qword_27D0591D0;
  if (!qword_27D0591D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591D0);
  }

  return result;
}

unint64_t sub_223171CB8()
{
  result = qword_280FCCBC0;
  if (!qword_280FCCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCBC0);
  }

  return result;
}

unint64_t sub_223171D10()
{
  result = qword_280FCCBC8;
  if (!qword_280FCCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCBC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return type metadata accessor for PommesResultCandidateMessage.Builder(0);
}

id PommesTRPCandidateMessage.pommesResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_223171E0C(v2, v3);
}

id sub_223171E0C(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

id PommesTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return PommesTRPCandidateMessage.init(build:)(v2, v0);
}

id PommesTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v99 = a2;
  v100 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v91 = &v82 - v3;
  v4 = sub_2231FFF44();
  OUTLINED_FUNCTION_9();
  v93 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v92 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v82 - v10;
  v12 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v95 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v82 - v17;
  v18 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v22 = (v21 - v20);
  *v22 = 15;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  v23 = v19[8];
  __swift_storeEnumTagSinglePayload(v21 - v20 + v23, 1, 1, v12);
  v24 = &v22[v19[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v22[v19[10]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v22[v19[11]];
  v97 = v12;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v12);
  v27 = &v22[v19[12]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v22[v19[13]];
  *v28 = 0;
  v28[8] = -1;
  v29 = v19[14];
  v94 = v4;
  __swift_storeEnumTagSinglePayload(&v22[v29], 1, 1, v4);
  v30 = &v22[v19[15]];
  *v30 = 0;
  v30[1] = 0;
  v100(v22);
  v31 = *v22;
  if (v31 == 15 || !*(v22 + 2))
  {
    goto LABEL_14;
  }

  v99 = *(v22 + 2);
  LODWORD(v100) = v31;
  v89 = *(v22 + 1);
  sub_2230D3008(&v22[v23], v11, &qword_27D0575C0, &qword_2232035E0);
  v32 = v97;
  if (__swift_getEnumTagSinglePayload(v11, 1, v97) == 1)
  {
    sub_2230D40E0(v11, &qword_27D0575C0, &qword_2232035E0);
LABEL_14:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v57 = sub_223200014();
    __swift_project_value_buffer(v57, qword_280FCE830);
    v58 = sub_223200004();
    v59 = sub_223200254();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v102 = v61;
      *v60 = 136446210;
      v62 = sub_2230F7898(ObjectType);
      v64 = sub_2231A5D38(v62, v63, &v102);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_2230CE000, v58, v59, "Could not build %{public}s: Builder has missing required fields", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    sub_223172720(v22);
    type metadata accessor for PommesTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v33 = v95;
  v34 = *(v95 + 32);
  v35 = v11;
  v88 = v95 + 32;
  v36 = v34;
  v34(v96, v35, v32);
  v37 = *(v24 + 1);
  v38 = v32;
  if (!v37)
  {
    (*(v33 + 8))(v96, v32);
    goto LABEL_14;
  }

  if (!*(v25 + 1) || (v39 = *(v27 + 1)) == 0 || (v40 = v28[8], v40 == 255))
  {
    (*(v95 + 8))(v96, v38);
    goto LABEL_14;
  }

  v87 = *(v25 + 1);
  ObjectType = v37;
  v41 = *v25;
  v84 = *v24;
  v85 = v41;
  v83 = *v27;
  v42 = *v28;
  v43 = v39;
  sub_223171E0C(*v28, v40 & 1);
  v44 = v90;
  sub_2231FFD94();
  v45 = v101;
  v36(v101 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId, v44, v97);
  v46 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId);
  *v46 = v83;
  v46[1] = v43;
  v90 = v43;
  v47 = v45 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult;
  v48 = v42;
  *v47 = v42;
  *(v47 + 8) = v40 & 1;
  v49 = v91;
  sub_2230D3008(&v22[v29], v91, &qword_27D0591A8, &unk_223211810);
  v50 = v94;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v94);
  v52 = v40;
  v86 = v42;
  if (EnumTagSinglePayload == 1)
  {
    v54 = v92;
    v53 = v93;
    (*(v93 + 104))(v92, *MEMORY[0x277D56670], v50);
    v55 = __swift_getEnumTagSinglePayload(v49, 1, v50);
    v56 = v52;
    sub_2231741F8(v48, v52);

    if (v55 != 1)
    {
      sub_2230D40E0(v49, &qword_27D0591A8, &unk_223211810);
    }
  }

  else
  {
    v54 = v92;
    v53 = v93;
    (*(v93 + 32))(v92, v49, v50);
    v56 = v52;
    sub_2231741F8(v48, v52);
  }

  (*(v53 + 32))(v101 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_searchReason, v54, v50);
  v67 = v30[1];
  v68 = v96;
  if (v67)
  {
    v69 = *v30;

    v71 = v95;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v72 = sub_223200014();
    __swift_project_value_buffer(v72, qword_280FCE830);
    v73 = sub_223200004();
    v74 = sub_223200254();
    v75 = os_log_type_enabled(v73, v74);
    v71 = v95;
    if (v75)
    {
      OUTLINED_FUNCTION_18_9();
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2230CE000, v73, v74, "Warning: PommesTRPCandidateMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v76, 2u);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    v67 = 0x80000002232216F0;
    v69 = 0xD000000000000024;
  }

  v77 = v86;
  MEMORY[0x28223BE20](v70);
  *(&v82 - 80) = v100;
  v78 = v99;
  *(&v82 - 9) = v89;
  *(&v82 - 8) = v78;
  v79 = v84;
  *(&v82 - 7) = v68;
  *(&v82 - 6) = v79;
  v80 = v85;
  *(&v82 - 5) = ObjectType;
  *(&v82 - 4) = v80;
  *(&v82 - 3) = v87;
  *(&v82 - 2) = v69;
  *(&v82 - 1) = v67;
  v65 = TRPCandidateRequestMessageBase.init(build:)(sub_223174210);
  v81 = v65;
  sub_223174250(v77, v56);

  sub_223172720(v22);
  if (v65)
  {
  }

  (*(v71 + 8))(v68, v97);
  return v65;
}

uint64_t sub_223172720(uint64_t a1)
{
  v2 = type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22317279C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v18 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  v19 = v18[6];
  sub_2230D40E0(a1 + v19, &qword_27D0575C0, &qword_2232035E0);
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

uint64_t PommesTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t PommesTRPCandidateMessage.Builder.sessionId.getter()
{
  v0 = OUTLINED_FUNCTION_16_7();
  v1 = OUTLINED_FUNCTION_17_6(*(v0 + 24));
  return sub_2230D3008(v1, v2, v3, v4);
}

uint64_t PommesTRPCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PommesTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PommesTRPCandidateMessage.Builder.pegasusId.getter()
{
  v0 = OUTLINED_FUNCTION_16_7();
  v1 = OUTLINED_FUNCTION_17_6(*(v0 + 36));
  return sub_2230D3008(v1, v2, v3, v4);
}

uint64_t PommesTRPCandidateMessage.Builder.tcuId.getter()
{
  type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesTRPCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

id PommesTRPCandidateMessage.Builder.pommesResult.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_7() + 44);
  v3 = *v2;
  *v0 = *v2;
  v4 = *(v2 + 8);
  *(v0 + 8) = v4;

  return sub_2231741F8(v3, v4);
}

void PommesTRPCandidateMessage.Builder.pommesResult.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for PommesTRPCandidateMessage.Builder(0) + 44);
  sub_223174250(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t PommesTRPCandidateMessage.Builder.searchReason.getter()
{
  v0 = OUTLINED_FUNCTION_16_7();
  v1 = OUTLINED_FUNCTION_17_6(*(v0 + 48));
  return sub_2230D3008(v1, v2, v3, v4);
}

uint64_t PommesTRPCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_16_7() + 52));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t PommesTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for PommesTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_223172F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4973757361676570 && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x655273656D6D6F70 && a2 == 0xEE0065736E6F7073;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x724573656D6D6F70 && a2 == 0xEB00000000726F72;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000223224520 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_2232006B4();

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

unint64_t sub_223173120(char a1)
{
  result = 0x4973757361676570;
  switch(a1)
  {
    case 1:
      result = 0x6449756374;
      break;
    case 2:
      result = 0x655273656D6D6F70;
      break;
    case 3:
      result = 0x724573656D6D6F70;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231731DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223172F68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223173204(uint64_t a1)
{
  v2 = sub_223174274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223173240(uint64_t a1)
{
  v2 = sub_223174274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesTRPCandidateMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v80 = &v76 - v4;
  sub_2231FFF44();
  OUTLINED_FUNCTION_9();
  v81 = v5;
  v82 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v10 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v84 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v83 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591D8, &qword_223211A30);
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_223174274();
  sub_223200794();
  if (v1)
  {
    v22 = v10;
    LODWORD(v24) = 0;
    v25 = 0;
    v26 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v28 = v86;
    goto LABEL_4;
  }

  v79 = v9;
  LOBYTE(v87) = 0;
  sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
  v23 = v83;
  sub_223200554();
  v31 = v85;
  (*(v84 + 32))(v85 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId, v23, v10);
  LOBYTE(v87) = 1;
  v32 = sub_2232004F4();
  v22 = v10;
  v33 = (v31 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_tcuId);
  *v33 = v32;
  v33[1] = v34;
  v89 = 2;
  sub_2230FB7A0();
  sub_2232004C4();
  v28 = v86;
  v83 = v20;
  v78 = v15;
  v35 = v88;
  v24 = v88 >> 60;
  v25 = v17;
  if (v88 >> 60 == 15)
  {
    v89 = 3;
    sub_223171720();
    sub_2232004C4();
    v36 = v82;
    v40 = v87;
    if (v87 == 10)
    {
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v41 = sub_223200014();
      __swift_project_value_buffer(v41, qword_280FCE830);
      v42 = sub_223200004();
      v27 = sub_223200254();
      if (os_log_type_enabled(v42, v27))
      {
        OUTLINED_FUNCTION_18_9();
        v43 = swift_slowAlloc();
        LODWORD(v24) = v43;
        *v43 = 0;
        OUTLINED_FUNCTION_21_6(&dword_2230CE000, v44, v45, "Unable to deserialize TCU-mapped POMMES result: encoded data contained neither PommesResponse nor PommesError");
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780]();
      }

      sub_223171774();
      v46 = swift_allocError();
      OUTLINED_FUNCTION_6_17(v46, v47);
LABEL_38:
      v65 = OUTLINED_FUNCTION_19_2();
      v66(v65, v78);
      v26 = 0;
      OUTLINED_FUNCTION_11_11();
      goto LABEL_4;
    }
  }

  else
  {
    v77 = v17;
    v37 = v87;
    sub_2231717C8();
    sub_2231FFFF4();
    v38 = sub_223200264();
    v39 = v35;
    v36 = v82;
    v40 = v38;
    v76 = v37;
    if (!v38)
    {
      v25 = v77;
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v59 = sub_223200014();
      __swift_project_value_buffer(v59, qword_280FCE830);
      v60 = sub_223200004();
      v27 = sub_223200254();
      if (os_log_type_enabled(v60, v27))
      {
        OUTLINED_FUNCTION_18_9();
        v61 = swift_slowAlloc();
        LODWORD(v24) = v61;
        *v61 = 0;
        _os_log_impl(&dword_2230CE000, v60, v27, "Unable to deserialize TCU-mapped POMMES result: encoded PommesResponse data was not unarchivable", v61, 2u);
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780](v62);
      }

      sub_223171774();
      v63 = swift_allocError();
      OUTLINED_FUNCTION_6_17(v63, v64);
      sub_22310A610(v76, v39);
      goto LABEL_38;
    }

    sub_22310A610(v76, v39);
    v25 = v77;
  }

  v48 = v85 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult;
  *v48 = v40;
  *(v48 + 8) = v24 > 0xE;
  LOBYTE(v87) = 4;
  v24 = v78;
  sub_223200494();
  if (v49)
  {
    v50 = v80;
    sub_2231FFF24();
    if (__swift_getEnumTagSinglePayload(v50, 1, v81) != 1)
    {
      v67 = OUTLINED_FUNCTION_2_1();
      v68(v67);
      v69 = OUTLINED_FUNCTION_17_6(OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_searchReason);
      v70 = v81;
      v71(v69);
      sub_2230F7158(v28, &v87);
      v72 = TRPCandidateRequestMessageBase.init(from:)(&v87);
      v73 = v70;
      v26 = v72;
      (*(v36 + 8))(v79, v73);
      v74 = OUTLINED_FUNCTION_19_2();
      v75(v74, v24);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return v26;
    }

    sub_2230D40E0(v50, &qword_27D0591A8, &unk_223211810);
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v51 = sub_223200014();
  __swift_project_value_buffer(v51, qword_280FCE830);
  v52 = sub_223200004();
  v27 = sub_223200254();
  if (os_log_type_enabled(v52, v27))
  {
    OUTLINED_FUNCTION_18_9();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_21_6(&dword_2230CE000, v53, v54, "Unable to deserialize TCU-mapped POMMES result: encoded data had missing or invalid PommesSearchReason raw value");
    v24 = v78;
    OUTLINED_FUNCTION_12_0();
    MEMORY[0x223DD6780]();
  }

  sub_223171774();
  v55 = swift_allocError();
  OUTLINED_FUNCTION_6_17(v55, v56);
  v57 = OUTLINED_FUNCTION_19_2();
  v58(v57, v24);
  OUTLINED_FUNCTION_11_11();
  v26 = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v28);
  if ((v27 & 1) == 0)
  {
    v29 = v85;
    if (v24)
    {
      (*(v84 + 8))(v85 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId, v22);
      if (!v25)
      {
        goto LABEL_7;
      }
    }

    else if (!v25)
    {
LABEL_7:
      if (!v26)
      {
LABEL_9:
        type metadata accessor for PommesTRPCandidateMessage(0);
        swift_deallocPartialClassInstance();
        return v26;
      }

LABEL_8:
      sub_223174268(*(v29 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult), *(v29 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8));
      goto LABEL_9;
    }

    if (!v26)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return v26;
}

uint64_t sub_223173C10(void *a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591E0, &qword_223211A38);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223174274();
  sub_2232007A4();
  LOBYTE(v16[0]) = 0;
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_8_2();
  sub_223200654();
  if (!v2)
  {
    LOBYTE(v16[0]) = 1;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    v8 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult);
    if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8))
    {
      LOBYTE(v16[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult);
      sub_22317180C();
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
LABEL_9:
      sub_2231FFF34();
      LOBYTE(v16[0]) = 4;
      OUTLINED_FUNCTION_8_2();
      sub_2232005F4();

      sub_2231E5494(a1);
      goto LABEL_3;
    }

    v16[0] = 0;
    v9 = [objc_opt_self() archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v16];
    v10 = v16[0];
    if (v9)
    {
      v15 = v8;
      v11 = sub_2231FFD24();
      v13 = v12;

      v16[0] = v11;
      v16[1] = v13;
      sub_2230D7754();
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
      sub_223174268(v15, 0);
      sub_2230D94DC(v11, v13);
      goto LABEL_9;
    }

    v14 = v10;
    sub_2231FFD04();

    swift_willThrow();
    sub_223174268(v8, 0);
  }

LABEL_3:
  v5 = OUTLINED_FUNCTION_10_12();
  return v6(v5);
}

uint64_t sub_223174034()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pegasusId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);

  sub_223174268(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_pommesResult + 8));
  v3 = OBJC_IVAR____TtC16SiriMessageTypes25PommesTRPCandidateMessage_searchReason;
  sub_2231FFF44();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 8);

  return v5(v0 + v3);
}

id PommesTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PommesTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2231741F8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_223171E0C(result, a2 & 1);
  }

  return result;
}

void sub_223174250(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_223174268(result, a2 & 1);
  }
}

void sub_223174268(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_223174274()
{
  result = qword_280FCD1B8;
  if (!qword_280FCD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD1B8);
  }

  return result;
}

uint64_t sub_2231742D0(uint64_t a1)
{
  result = sub_2231FFDA4();
  if (v2 <= 0x3F)
  {
    result = sub_2231FFF44();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_223174404(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231745E4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223174580(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231745E4(319, qword_280FCA550, MEMORY[0x277D56678]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
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

void sub_223174580(uint64_t a1)
{
  if (!qword_280FCA338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0591E8, &qword_223217BC0);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA338);
    }
  }
}

void sub_2231745E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PommesTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223174718()
{
  result = qword_27D0591F0;
  if (!qword_27D0591F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591F0);
  }

  return result;
}

unint64_t sub_223174770()
{
  result = qword_280FCD1A8;
  if (!qword_280FCD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD1A8);
  }

  return result;
}

unint64_t sub_2231747C8()
{
  result = qword_280FCD1B0;
  if (!qword_280FCD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD1B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return type metadata accessor for PommesTRPCandidateMessage.Builder(0);
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t static AjaxMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (v2 = *(a1 + 3), v3 = *(a1 + 6), v23 = *(a1 + 5), v24 = *(a1 + 4), v4 = *(a1 + 7), v5 = a1[64], v6 = *(a2 + 3), v7 = *(a2 + 4), v8 = *(a2 + 5), v21 = *(a2 + 7), v22 = *(a2 + 6), v20 = a2[64], v9 = *(a2 + 1), v10 = *(a2 + 2), v11 = *(a1 + 2), v31 = *(a1 + 1), v32 = v11, v25 = v9, v26 = v10, , , v12 = static QueryType.== infix(_:_:)(&v31, &v25), , , (v12 & 1) != 0))
  {
    v31 = v2;
    v32 = v24;
    v33 = v23;
    v34 = v3;
    v35 = v4;
    v36 = v5;
    v25 = v6;
    v26 = v7;
    v27 = v8;
    v28 = v22;
    v29 = v21;
    v30 = v20;
    sub_22317716C();
    OUTLINED_FUNCTION_26_2();
    sub_22317716C();
    v13 = static AjaxMetadata.AjaxQuery.== infix(_:_:)(&v31, &v25);
    v14 = OUTLINED_FUNCTION_26_2();
    sub_22311DE7C(v14, v15, v16, v17, v18);
    sub_22311DE7C(v2, v24, v23, v3, v4);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t AjaxMetadata.queryType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t AjaxMetadata.init(_:)@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_2231FFEE4();

  v3 = v37;
  if (v37 == 4)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v6))
    {
      v7 = OUTLINED_FUNCTION_72();
      *v7 = 0;
      OUTLINED_FUNCTION_62_0();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_14();
    }

    v3 = 3;
  }

  v36 = v3;
  swift_getKeyPath();
  sub_2231FFEE4();

  v12 = v39;
  if (v39 >> 1 == 0xFFFFFFFF)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v13 = sub_223200014();
    __swift_project_value_buffer(v13, qword_280FCE830);
    v14 = sub_223200004();
    v15 = sub_223200254();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_72();
      *v16 = 0;
      _os_log_impl(&dword_2230CE000, v14, v15, "AjaxMetadata: missing query. Converting from queryType", v16, 2u);
      OUTLINED_FUNCTION_14();
    }

    swift_getKeyPath();
    sub_2231FFEE4();

    v18 = v37;
    v19 = v38;
    if (v38)
    {
      if (v38 != 1)
      {
        MEMORY[0x28223BE20](v17);
        sub_2230D7C34(v37, v38);
        sub_2230D827C();

        OUTLINED_FUNCTION_67(sub_2230D82E4);

        sub_2230D7BB4(v37, v38);
        result = sub_2230D7BB4(v37, v38);
        v34 = v37;
        v29 = v38;
        v31 = v40;
        v30 = v41;
        v32 = v42;
        v12 = v39 | 0x8000000000000000;
        goto LABEL_25;
      }

      v20 = sub_223200004();
      v21 = sub_223200254();
      if (OUTLINED_FUNCTION_61(v21))
      {
        v22 = OUTLINED_FUNCTION_72();
        *v22 = 0;
        OUTLINED_FUNCTION_62_0();
        _os_log_impl(v23, v24, v25, v26, v22, 2u);
        OUTLINED_FUNCTION_14();
      }

      sub_2230D7C48();
      v27 = OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_49_1(v27);

      v19 = 0;
      v18 = 0;
    }

    else
    {
      sub_2230D7C48();
      v35 = OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_49_1(v35);
    }

    v32 = 0;
    v34 = v37;
    v29 = v38;
    v12 = v39;
    v31 = v40;
    v30 = v41;
LABEL_25:
    v33 = v36;
    goto LABEL_26;
  }

  v29 = v38;
  v31 = v40;
  v30 = v41;
  v32 = v42;
  swift_getKeyPath();
  sub_2231FFEE4();

  v19 = v38;
  if (v38 == 1)
  {
    v33 = v36;
    if ((v39 & 0x8000000000000000) != 0)
    {

      v18 = v37;
      v19 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    v18 = v37;
    v33 = v36;
  }

  v34 = v37;
LABEL_26:
  *a2 = v33;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v34;
  *(a2 + 32) = v29;
  *(a2 + 40) = v12;
  *(a2 + 48) = v31;
  *(a2 + 56) = v30;
  *(a2 + 64) = v32;
  return result;
}

uint64_t AjaxMetadata.Builder.queryType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2230D7C34(v2, v3);
}

uint64_t sub_223174E8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *a2 = *(v2 + 24);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(v2 + 64);
  return a1();
}

__n128 AjaxMetadata.Builder.query.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_223179448(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t sub_223174F38(uint64_t a1)
{
  v2 = sub_22317945C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223174F74(uint64_t a1)
{
  v2 = sub_22317945C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223174FB0(uint64_t a1)
{
  v2 = sub_2231794B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223174FEC(uint64_t a1)
{
  v2 = sub_2231794B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.CorrectionOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591F8, &qword_223211C90);
  OUTLINED_FUNCTION_9();
  v28 = v27;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059200, &qword_223211C98);
  OUTLINED_FUNCTION_9();
  v34 = v33;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v25);
  sub_22317945C();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_2231794B0();
  OUTLINED_FUNCTION_9_16();
  sub_2232005B4();
  (*(v28 + 8))(v31, v26);
  (*(v34 + 8))(v21, v32);
  OUTLINED_FUNCTION_9_0();
}

uint64_t AjaxMetadata.AjaxQuery.CorrectionOutcome.hashValue.getter()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void AjaxMetadata.AjaxQuery.CorrectionOutcome.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059218, &qword_223211CA0);
  OUTLINED_FUNCTION_9();
  v39 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059220, &unk_223211CA8);
  OUTLINED_FUNCTION_9();
  v40 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_5_3(v3);
  sub_22317945C();
  sub_223200794();
  if (v0)
  {
    goto LABEL_10;
  }

  v37 = v8;
  v38 = v3;
  v12 = sub_223200594();
  sub_2230E0B80(v12, 0);
  v15 = v1;
  if (v16 == v14 >> 1)
  {
    v39 = v13;
LABEL_9:
    v29 = v9;
    v30 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v30, MEMORY[0x277D841A0]);
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v32 = &type metadata for AjaxMetadata.AjaxQuery.CorrectionOutcome;
    v33 = sub_223200484();
    OUTLINED_FUNCTION_48(v33);
    OUTLINED_FUNCTION_5_0();
    (*(v34 + 104))(v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v29);
    v3 = v38;
LABEL_10:
    v35 = v3;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_61_0();
  if (v18 == v19)
  {
    __break(1u);
    return;
  }

  v20 = sub_2230E0B40(v17 + 1);
  v22 = v21;
  v24 = v23;
  swift_unknownObjectRelease();
  v25 = v22 == v24 >> 1;
  v26 = v38;
  v27 = v39;
  if (!v25)
  {
    v39 = v20;
    goto LABEL_9;
  }

  sub_2231794B0();
  v28 = v37;
  sub_223200474();
  swift_unknownObjectRelease();
  (*(v27 + 8))(v28, v4);
  (*(v40 + 8))(v15, v9);
  v35 = v26;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_9_0();
}

uint64_t static AjaxMetadata.AjaxQuery.ImplicitQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_38_1(a1);
    v11 = v11 && v9 == v10;
    if (v11)
    {
      if (v2 != v6)
      {
        return 0;
      }

      goto LABEL_13;
    }

    v12 = sub_2232006B4();
    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v5)
    {
      return result;
    }
  }

  if (((v2 ^ v6) & 1) == 0)
  {
LABEL_13:
    if (v4)
    {
      if (v7)
      {
        if (v3 == v8 && v4 == v7)
        {
          return 1;
        }

        OUTLINED_FUNCTION_2_1();
        if (sub_2232006B4())
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2231756E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000223224190 == a2)
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

unint64_t sub_223175800(char a1)
{
  result = 0xD000000000000011;
  if (!a1)
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_223175858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231756E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223175880(uint64_t a1)
{
  v2 = sub_223179504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231758BC(uint64_t a1)
{
  v2 = sub_223179504();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.ImplicitQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059228, &qword_223211D18);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  v7 = v3[3];
  OUTLINED_FUNCTION_29(v3, v7);
  v8 = sub_223179504();
  OUTLINED_FUNCTION_50_1(&type metadata for AjaxMetadata.AjaxQuery.ImplicitQuery.CodingKeys, v9, v8);
  OUTLINED_FUNCTION_30_2();
  if (!v0)
  {
    OUTLINED_FUNCTION_29_4();
    sub_223179558();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
  }

  (*(v5 + 8))(v1, v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.AjaxQuery.ImplicitQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_8_1();
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059240, &qword_223211D20);
  OUTLINED_FUNCTION_9();
  v33 = v32;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v28);
  sub_223179504();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v35 = sub_223200494();
    v37 = v36;
    OUTLINED_FUNCTION_29_4();
    sub_2231795AC();
    OUTLINED_FUNCTION_19_3();
    sub_2232004C4();
    OUTLINED_FUNCTION_77();
    v38 = sub_223200494();
    v40 = v39;
    v41 = v38;
    (*(v33 + 8))(v26, v31);
    *v30 = v35;
    *(v30 + 8) = v37;
    *(v30 + 16) = a14;
    *(v30 + 24) = v41;
    *(v30 + 32) = v40;

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t static AjaxMetadata.AjaxQuery.ExplicitQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_38_1(a1);
    v13 = v13 && v11 == v12;
    if (v13)
    {
      if (v2 != v7)
      {
        return 0;
      }

      goto LABEL_13;
    }

    v14 = sub_2232006B4();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v6)
    {
      return result;
    }
  }

  if (((v2 ^ v7) & 1) == 0)
  {
LABEL_13:
    if (v4)
    {
      if (!v8)
      {
        return 0;
      }

      v16 = v3 == v9 && v4 == v8;
      if (!v16 && (sub_2232006B4() & 1) == 0)
      {
        return 0;
      }

LABEL_22:
      if (v5 == 6)
      {
        if (v10 != 6)
        {
          return 0;
        }
      }

      else if (v10 == 6 || (sub_223106D04(v5, v10) & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    if (!v8)
    {
      goto LABEL_22;
    }

    return 0;
  }

  return result;
}

uint64_t sub_223175E00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000223224190 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72656E74726170 && a2 == 0xE700000000000000)
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

unint64_t sub_223175F64(char a1)
{
  result = 0x72656E74726170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_223175FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223175E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223176020(uint64_t a1)
{
  v2 = sub_223179600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317605C(uint64_t a1)
{
  v2 = sub_223179600();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.ExplicitQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059250, &qword_223211DA8);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  v7 = v3[3];
  OUTLINED_FUNCTION_29(v3, v7);
  v8 = sub_223179600();
  OUTLINED_FUNCTION_50_1(&type metadata for AjaxMetadata.AjaxQuery.ExplicitQuery.CodingKeys, v9, v8);
  OUTLINED_FUNCTION_30_2();
  if (!v0)
  {
    OUTLINED_FUNCTION_29_4();
    sub_223179558();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    sub_223179654();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
  }

  (*(v5 + 8))(v1, v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.AjaxQuery.ExplicitQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, __int16 a13, char a14)
{
  OUTLINED_FUNCTION_8_1();
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059268, &qword_223211DB0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_29(v16, v16[3]);
  sub_223179600();
  sub_223200794();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    OUTLINED_FUNCTION_63_0();
    v20 = sub_223200494();
    v22 = v21;
    OUTLINED_FUNCTION_29_4();
    sub_2231795AC();
    OUTLINED_FUNCTION_63_0();
    sub_2232004C4();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_63_0();
    v26 = sub_223200494();
    v27 = v23;
    sub_2231796A8();
    OUTLINED_FUNCTION_63_0();
    sub_2232004C4();
    v24 = OUTLINED_FUNCTION_37_2();
    v25(v24);
    *v18 = v20;
    *(v18 + 8) = v22;
    *(v18 + 16) = a14;
    *(v18 + 24) = v26;
    *(v18 + 32) = v27;
    *(v18 + 40) = a12;

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t static AjaxMetadata.AjaxQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v48 = *(a1 + 40);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 40);
  if (v3 < 0)
  {
    if (v8 < 0)
    {
      v52 = *a1;
      v53 = v2;
      v54 = v3 & 1;
      v55 = v4;
      v56 = v5;
      v57 = v48;
      v49 = v6;
      v50 = v7;
      OUTLINED_FUNCTION_39_2();
      v51 = v9;
      v46 = v30;
      v44 = v31;
      sub_22317716C();
      sub_22317716C();
      OUTLINED_FUNCTION_34_2();
      sub_22317716C();
      sub_22317716C();
      v43 = static AjaxMetadata.AjaxQuery.ExplicitQuery.== infix(_:_:)(&v52, &v49);
      sub_22311DE7C(v44, v2, v46, v4, v5);
      OUTLINED_FUNCTION_34_2();
      sub_22311DE7C(v32, v33, v34, v35, v36);
      v13 = v43;
      OUTLINED_FUNCTION_34_2();
      sub_22311DE7C(v37, v38, v39, v40, v41);
      v19 = v44;
      v20 = v2;
      v21 = v46;
      v22 = v4;
      v23 = v5;
      goto LABEL_7;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    v52 = *a1;
    v53 = v2;
    v54 = v3 & 1;
    v55 = v4;
    v56 = v5;
    v49 = v6;
    v50 = v7;
    v10 = v7;
    OUTLINED_FUNCTION_39_2();
    v12 = v11;
    v13 = static AjaxMetadata.AjaxQuery.ImplicitQuery.== infix(_:_:)(&v52, &v49);
    sub_22317716C();
    OUTLINED_FUNCTION_57_0();
    sub_22317716C();
    OUTLINED_FUNCTION_57_0();
    sub_22311DE7C(v14, v15, v16, v17, v18);
    v19 = v12;
    v20 = v10;
    v21 = v8;
    v22 = v2;
    v23 = v4;
LABEL_7:
    sub_22311DE7C(v19, v20, v21, v22, v23);
    return v13 & 1;
  }

  v47 = *a2;
  v24 = a2[1];
  v45 = a2[3];
  v25 = a2[4];
  sub_22317716C();
  OUTLINED_FUNCTION_64();
  sub_22317716C();
  v26 = OUTLINED_FUNCTION_64();
  sub_22311DE7C(v26, v27, v28, v29, v5);
  sub_22311DE7C(v47, v24, v8, v45, v25);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_2231767C8(uint64_t a1)
{
  v2 = sub_2231796FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223176804(uint64_t a1)
{
  v2 = sub_2231796FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223176840(uint64_t a1)
{
  v2 = sub_223179750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317687C(uint64_t a1)
{
  v2 = sub_223179750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231768B8(uint64_t a1)
{
  v2 = sub_2231797F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231768F4(uint64_t a1)
{
  v2 = sub_2231797F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.AjaxQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059278, &qword_223211DB8);
  OUTLINED_FUNCTION_9();
  v16 = v4;
  v17 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059280, &qword_223211DC0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059288, &qword_223211DC8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_2231796FC();
  OUTLINED_FUNCTION_58();
  sub_2232007A4();
  if (v9 < 0)
  {
    sub_223179750();
    OUTLINED_FUNCTION_22();
    sub_2232005B4();
    OUTLINED_FUNCTION_27_2();
    sub_2231797A4();
    sub_223200654();
    v12 = *(v16 + 8);
    v10 = v15;
    v11 = v17;
  }

  else
  {
    sub_2231797F8();
    OUTLINED_FUNCTION_22();
    sub_2232005B4();
    OUTLINED_FUNCTION_27_2();
    sub_22317984C();
    sub_223200654();
    v10 = OUTLINED_FUNCTION_3_2();
  }

  v12(v10, v11);
  v13 = OUTLINED_FUNCTION_40_1();
  v14(v13);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.AjaxQuery.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v42 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592B8, &qword_223211DD0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592C0, &qword_223211DD8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592C8, &qword_223211DE0);
  OUTLINED_FUNCTION_9();
  v41 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_2231796FC();
  OUTLINED_FUNCTION_58();
  sub_223200794();
  if (!v0)
  {
    v10 = sub_223200594();
    sub_2230E0B80(v10, 0);
    if (v12 != v11 >> 1)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61_0();
      if (v15 == v16)
      {
        __break(1u);
        return;
      }

      v40 = *(v14 + v13);
      sub_2230E0B40(v13 + 1);
      v18 = v17;
      v20 = v19;
      swift_unknownObjectRelease();
      if (v18 == v20 >> 1)
      {
        if (v40)
        {
          LOBYTE(v43) = 1;
          sub_223179750();
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          sub_2231798A0();
          OUTLINED_FUNCTION_65_0(&type metadata for AjaxMetadata.AjaxQuery.ExplicitQuery, v21);
          swift_unknownObjectRelease();
          v28 = OUTLINED_FUNCTION_3_2();
          v29(v28);
          v30 = OUTLINED_FUNCTION_14_6();
          v31(v30);
          v32 = v43;
          v33 = v45;
          v34 = v46;
          v35 = v44 | 0x8000000000000000;
        }

        else
        {
          LOBYTE(v43) = 0;
          sub_2231797F8();
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          sub_2231798F4();
          OUTLINED_FUNCTION_65_0(&type metadata for AjaxMetadata.AjaxQuery.ImplicitQuery, v27);
          swift_unknownObjectRelease();
          v36 = OUTLINED_FUNCTION_3_2();
          v37(v36);
          v38 = OUTLINED_FUNCTION_14_6();
          v39(v38);
          v34 = 0;
          v32 = v43;
          v35 = v44;
          v33 = v45;
        }

        *v42 = v32;
        *(v42 + 16) = v35;
        *(v42 + 24) = v33;
        *(v42 + 40) = v34;
        __swift_destroy_boxed_opaque_existential_1(v3);
        goto LABEL_10;
      }
    }

    v22 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v22, MEMORY[0x277D841A0]);
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v24 = &type metadata for AjaxMetadata.AjaxQuery;
    v25 = sub_223200484();
    OUTLINED_FUNCTION_48(v25);
    OUTLINED_FUNCTION_5_0();
    (*(v26 + 104))(v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v41 + 8))(v1, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

uint64_t static QueryType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      OUTLINED_FUNCTION_38_1(a1);
      v5 = v5 && v3 == v4;
      if (v5 || (sub_2232006B4() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_22317716C()
{
}

uint64_t sub_2231771A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000223224540 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7079547972657571 && a2 == 0xE900000000000065;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
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

uint64_t sub_2231772C4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x7079547972657571;
  }

  return 0x7972657571;
}

uint64_t sub_223177328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231771A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223177350(uint64_t a1)
{
  v2 = sub_223179948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317738C(uint64_t a1)
{
  v2 = sub_223179948();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0592E0, &qword_223211DE8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_34();
  v14 = v0[3];
  v12 = v0[5];
  v13 = v0[4];
  v10 = v0[7];
  v11 = v0[6];
  OUTLINED_FUNCTION_5_3(v4);
  sub_223179948();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_22317999C();
  OUTLINED_FUNCTION_35_3();
  sub_223200654();
  if (!v1)
  {
    v9 = sub_2231799F0();

    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_8_2();
    sub_223200654();

    if (!v9)
    {
      sub_22317716C();
      sub_223179A44();
      OUTLINED_FUNCTION_35_3();
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
      sub_22311DE7C(v14, v13, v12, v11, v10);
    }
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void AjaxMetadata.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059308, &qword_223211DF0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v2);
  sub_223179948();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_223179A98();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    v6 = v17;
    sub_223179AEC();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    v7 = v18;
    v15 = v17;
    sub_223179B40();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    v8 = OUTLINED_FUNCTION_2();
    v9(v8);
    v10 = v27;
    v14 = v26;
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v32 = v31;
    LOBYTE(v16[0]) = v17;
    v16[1] = v17;
    v16[2] = v18;
    v16[3] = v26;
    v16[4] = v27;
    v16[5] = v28;
    v16[6] = v29;
    v16[7] = v30;
    LOBYTE(v16[8]) = v31;
    memcpy(v4, v16, 0x41uLL);
    sub_223179B94(v16, &v17);
    __swift_destroy_boxed_opaque_existential_1(v2);
    LOBYTE(v17) = v6;
    v18 = v15;
    v19 = v7;
    v20 = v14;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v25 = v32;
    sub_223179BCC(&v17);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223177844(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000223224560 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000026 && 0x8000000223224580 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000002232245B0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000023 && 0x80000002232245D0 == a2)
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

unint64_t sub_2231779A4(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_223177A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223177844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223177A84(uint64_t a1)
{
  v2 = sub_223179BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177AC0(uint64_t a1)
{
  v2 = sub_223179BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177AFC(uint64_t a1)
{
  v2 = sub_223179CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177B38(uint64_t a1)
{
  v2 = sub_223179CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177B74(uint64_t a1)
{
  v2 = sub_223179C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177BB0(uint64_t a1)
{
  v2 = sub_223179C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177BEC(uint64_t a1)
{
  v2 = sub_223179CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177C28(uint64_t a1)
{
  v2 = sub_223179CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223177C64(uint64_t a1)
{
  v2 = sub_223179D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223177CA0(uint64_t a1)
{
  v2 = sub_223179D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PrescribedAjaxTool.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059328, &qword_223211DF8);
  OUTLINED_FUNCTION_9();
  v38 = v5;
  v39 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059330, &qword_223211E00);
  OUTLINED_FUNCTION_9();
  v35 = v9;
  v36 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v34 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059338, &qword_223211E08);
  OUTLINED_FUNCTION_9();
  v32 = v13;
  v33 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v31 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059340, &qword_223211E10);
  OUTLINED_FUNCTION_9();
  v29 = v17;
  v30 = v16;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_11();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059348, &qword_223211E18);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v29 - v23;
  v25 = *v0;
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_223179BFC();
  sub_2232007A4();
  switch(v25)
  {
    case 1:
      OUTLINED_FUNCTION_29_4();
      sub_223179CF8();
      v26 = v31;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v28 = v32;
      v27 = v33;
      goto LABEL_6;
    case 2:
      sub_223179CA4();
      v26 = v34;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v28 = v35;
      v27 = v36;
      goto LABEL_6;
    case 3:
      sub_223179C50();
      v26 = v37;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v28 = v38;
      v27 = v39;
LABEL_6:
      (*(v28 + 8))(v26, v27);
      break;
    default:
      sub_223179D4C();
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      (*(v29 + 8))(v1, v30);
      break;
  }

  (*(v21 + 8))(v24, v19);
  OUTLINED_FUNCTION_9_0();
}

uint64_t PrescribedAjaxTool.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void PrescribedAjaxTool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v28 = v27;
  v75 = v29;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059378, &qword_223211E20);
  OUTLINED_FUNCTION_9();
  v74 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_3();
  v77 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059380, &qword_223211E28);
  OUTLINED_FUNCTION_9();
  v71 = v34;
  v72 = v33;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_3();
  v73 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059388, &qword_223211E30);
  OUTLINED_FUNCTION_9();
  v69 = v38;
  v70 = v37;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059390, &qword_223211E38);
  OUTLINED_FUNCTION_9();
  v68 = v41;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_11();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059398, &qword_223211E40);
  OUTLINED_FUNCTION_9();
  v76 = v44;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(v28, v28[3]);
  sub_223179BFC();
  sub_223200794();
  if (!v23)
  {
    v79 = v28;
    v46 = v24;
    v47 = sub_223200594();
    sub_2230E0B80(v47, 0);
    if (v49 != v48 >> 1)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61_0();
      if (v52 == v53)
      {
        __break(1u);
        return;
      }

      v54 = *(v51 + v50);
      sub_2230E0B40(v50 + 1);
      v56 = v55;
      v58 = v57;
      swift_unknownObjectRelease();
      if (v56 == v58 >> 1)
      {
        v67 = v54;
        switch(v54)
        {
          case 1:
            OUTLINED_FUNCTION_29_4();
            sub_223179CF8();
            v64 = v26;
            OUTLINED_FUNCTION_13_7();
            sub_223200474();
            swift_unknownObjectRelease();
            v66 = v69;
            v65 = v70;
            goto LABEL_14;
          case 2:
            sub_223179CA4();
            v64 = v73;
            OUTLINED_FUNCTION_13_7();
            sub_223200474();
            swift_unknownObjectRelease();
            v66 = v71;
            v65 = v72;
LABEL_14:
            (*(v66 + 8))(v64, v65);
            break;
          case 3:
            sub_223179C50();
            sub_223200474();
            swift_unknownObjectRelease();
            (*(v74 + 8))(v77, v78);
            break;
          default:
            sub_223179D4C();
            OUTLINED_FUNCTION_13_7();
            sub_223200474();
            swift_unknownObjectRelease();
            (*(v68 + 8))(v25, v40);
            break;
        }

        (*(v76 + 8))(v46, v43);
        *v75 = v67;
        __swift_destroy_boxed_opaque_existential_1(v79);
        goto LABEL_10;
      }
    }

    v59 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v59, MEMORY[0x277D841A0]);
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v61 = &type metadata for PrescribedAjaxTool;
    v62 = sub_223200484();
    OUTLINED_FUNCTION_48(v62);
    OUTLINED_FUNCTION_5_0();
    (*(v63 + 104))(v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v76 + 8))(v46, v43);
    v28 = v79;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

uint64_t static AjaxRewrite.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t sub_22317872C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746963696C706D69 && a2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_66(0x746963696C706D69) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_66(0x746963696C707865);

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

uint64_t sub_2231787D4(uint64_t a1)
{
  v2 = sub_223179DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223178810(uint64_t a1)
{
  v2 = sub_223179DA0();

  return MEMORY[0x2821FE720](a1, v2);
}