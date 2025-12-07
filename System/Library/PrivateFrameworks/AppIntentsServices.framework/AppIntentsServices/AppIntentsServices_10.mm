uint64_t sub_221A6EF9C()
{
  v1 = (v0 + *(type metadata accessor for AppIntentsProtobuf_Action(0) + 48));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_221A6EFD0()
{
  v2 = OUTLINED_FUNCTION_40_3();
  result = type metadata accessor for AppIntentsProtobuf_Action(v2);
  v4 = v1 + *(result + 48);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_221A6F034()
{
  v1 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_29_8();
  v4 = type metadata accessor for AppIntentsProtobuf_Action(v3);
  OUTLINED_FUNCTION_145_1(*(v4 + 52));
  OUTLINED_FUNCTION_95_3();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v5 = OUTLINED_FUNCTION_16_10();
  if (v6)
  {
    OUTLINED_FUNCTION_137_2(v5, xmmword_221BD8630);
    result = OUTLINED_FUNCTION_16_10();
    if (!v6)
    {
      return sub_2219A1CC8(v0, &qword_27CFB95E0, &qword_221BE0A10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A6F108()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_Action(v1);
  sub_2219A1CC8(v0 + *(v2 + 52), &qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_103_4();
  sub_221A8554C();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v3 = OUTLINED_FUNCTION_144_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_221A6F178()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_29_8();
  v4 = type metadata accessor for AppIntentsProtobuf_Action(v3);
  OUTLINED_FUNCTION_145_1(*(v4 + 52));
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  OUTLINED_FUNCTION_49_4(v0, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v8, v9, &qword_221BE0A10);
  return v7;
}

BOOL sub_221A6F23C(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_221A6F29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_221A855FC(a1, a2, a3);

  return MEMORY[0x28217E238](a1, a2, v5);
}

uint64_t sub_221A6F310@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = 0;
  v1[4] = v3;
  v1[5] = v2;
  v4 = type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221BCC8C8();
  OUTLINED_FUNCTION_110_3(v4[9]);
  *(v5 + 8) = 256;
  OUTLINED_FUNCTION_68_2(v4[10]);
  *(v1 + v4[11]) = 2;
  OUTLINED_FUNCTION_92_4(v4[12]);
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v6 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_221A6F3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v5);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_16_10();
  if (v6)
  {
    sub_221A6F478(a1);
    result = OUTLINED_FUNCTION_16_10();
    if (!v6)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB790, &qword_221BDADD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

void sub_221A6F478(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = OUTLINED_FUNCTION_147_1();
  *(a1 + 80) = v2;
  *(a1 + 88) = OUTLINED_FUNCTION_147_1();
  v3 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221BCC8C8();
  OUTLINED_FUNCTION_68_2(v3[16]);
  *(a1 + v3[17]) = xmmword_221BD8640;
  OUTLINED_FUNCTION_68_2(v3[18]);
  OUTLINED_FUNCTION_68_2(v3[19]);
}

uint64_t sub_221A6F524()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_81_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v2);
  }

  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_70_5(v3);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6F638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v8);
  OUTLINED_FUNCTION_106_3(v2 + *a1, v11);
  OUTLINED_FUNCTION_96_4();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_16_10();
  if (v9)
  {
    sub_221A6F310(a2);
    result = OUTLINED_FUNCTION_16_10();
    if (!v9)
    {
      return sub_2219A1CC8(v3, &unk_27CFBB690, &qword_221BDADD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A6F738()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_81_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v2);
  }

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_70_5(v3);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6F840(uint64_t *a1, uint64_t *a2, void *a3, void (*a4)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_106_3(*(v4 + v12) + *a3, v19);
  sub_221A1C558();
  a4(0);
  v13 = OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_49_4(v13, v14, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_2219A1CC8(v5, a1, a2);
  return v17;
}

uint64_t sub_221A6F918()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_81_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v2);
  }

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_70_5(v3);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6FA20()
{
  v1 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v3);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v4 = OUTLINED_FUNCTION_16_10();
  if (v5)
  {
    OUTLINED_FUNCTION_137_2(v4, xmmword_221BD8630);
    result = OUTLINED_FUNCTION_16_10();
    if (!v5)
    {
      return sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A6FAF8@<X0>(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_221BD8630;
  a1(0);
  return sub_221BCC8C8();
}

uint64_t sub_221A6FB40()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_81_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v2);
  }

  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_70_5(v3);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6FC48@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v5);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  v6 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_16_10();
  if (v7)
  {
    v8 = MEMORY[0x277D84F90];
    *a1 = MEMORY[0x277D84F90];
    a1[1] = v8;
    sub_221BCC8C8();
    OUTLINED_FUNCTION_68_2(*(v6 + 28));
    OUTLINED_FUNCTION_68_2(*(v6 + 32));
    result = OUTLINED_FUNCTION_16_10();
    if (!v7)
    {
      return sub_2219A1CC8(v1, &qword_27CFB9928, &qword_221BE4A20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

void sub_221A6FD3C(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_101_3();
  sub_221BCC8C8();
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_68_2(*(v3 + 32));
}

uint64_t sub_221A6FD88()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_81_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v2);
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_70_5(v3);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6FE90@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v5);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  v6 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v7 = OUTLINED_FUNCTION_16_10();
  if (v8)
  {
    OUTLINED_FUNCTION_137_2(v7, xmmword_221BD8630);
    OUTLINED_FUNCTION_68_2(v6[6]);
    OUTLINED_FUNCTION_68_2(v6[7]);
    OUTLINED_FUNCTION_68_2(v6[8]);
    *(a1 + v6[9]) = xmmword_221BD8640;
    result = OUTLINED_FUNCTION_16_10();
    if (!v8)
    {
      return sub_2219A1CC8(v1, &qword_27CFB9920, &unk_221BDADC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_7();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

double sub_221A6FF90@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_221BD8630;
  v3 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_99_2(v3);
  OUTLINED_FUNCTION_68_2(v1[6]);
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_68_2(v1[8]);
  result = 0.0;
  *(a1 + v1[9]) = xmmword_221BD8640;
  return result;
}

uint64_t sub_221A6FFEC()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  if ((OUTLINED_FUNCTION_81_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v2);
  }

  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_70_5(v3);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A700F4()
{
  OUTLINED_FUNCTION_75_5();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions);
  OUTLINED_FUNCTION_106_3(v2, v4);
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_221A70148()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_40_3();
  v4 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    v6 = v7;
    *(v2 + v4) = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  result = swift_beginAccess();
  *v8 = v0;
  *(v8 + 8) = 0;
  return result;
}

BOOL sub_221A701D0()
{
  OUTLINED_FUNCTION_75_5();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  OUTLINED_FUNCTION_106_3(v2, v4);
  return (*(v2 + 8) & 1) == 0;
}

uint64_t sub_221A70220@<X0>(uint64_t a2@<X8>)
{
  sub_221BCC8C8();
  v3 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20);
  if (qword_27CFB6DA0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27CFB9450;
}

uint64_t sub_221A7029C@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  OUTLINED_FUNCTION_101_3();
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_108();
  result = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(a1 + *(v3 + 32)) = 2;
  return result;
}

uint64_t sub_221A7030C()
{
  v0 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 64)))
  {
    OUTLINED_FUNCTION_112_3();
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70350()
{
  v3 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(v3);
  result = OUTLINED_FUNCTION_134_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A703AC()
{
  v0 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 72)))
  {
    OUTLINED_FUNCTION_112_3();
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A703F0()
{
  v3 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(v3);
  result = OUTLINED_FUNCTION_134_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A7044C()
{
  v0 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 76)))
  {
    OUTLINED_FUNCTION_112_3();
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70490()
{
  v3 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(v3);
  result = OUTLINED_FUNCTION_134_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A70594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_221A85844(a1, a2, a3);

  return MEMORY[0x28217E238](a1, a2, v5);
}

void sub_221A705EC(uint64_t a2@<X8>)
{
  sub_221BCC8C8();
  v3 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  *(a2 + *(v3 + 20)) = xmmword_221BD8640;
  OUTLINED_FUNCTION_92_4(*(v3 + 24));
  OUTLINED_FUNCTION_110_3(*(v4 + 28));
  *(v5 + 8) = v6;
}

uint64_t sub_221A70690@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  v6 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v5);
  OUTLINED_FUNCTION_145_1(*(v6 + 32));
  OUTLINED_FUNCTION_95_3();
  sub_221A1C558();
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_16_10();
  if (v8)
  {
    sub_221BCC8C8();
    *(a1 + v7[5]) = xmmword_221BD8640;
    OUTLINED_FUNCTION_110_3(v7[6]);
    *(v9 + 8) = 1;
    OUTLINED_FUNCTION_110_3(v7[7]);
    *(v10 + 8) = 1;
    result = OUTLINED_FUNCTION_16_10();
    if (!v8)
    {
      return sub_2219A1CC8(v1, &qword_27CFB85E8, &unk_221BD86E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A7078C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v1);
  sub_2219A1CC8(v0 + *(v2 + 32), &qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_103_4();
  sub_221A8554C();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v3 = OUTLINED_FUNCTION_144_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_221A707FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_29_8();
  v4 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v3);
  OUTLINED_FUNCTION_145_1(*(v4 + 32));
  sub_221A1C558();
  v5 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_49_4(v0, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v8, v9, &unk_221BD86E0);
  return v7;
}

uint64_t sub_221A708AC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  OUTLINED_FUNCTION_101_3();
  sub_221BCC8C8();
  OUTLINED_FUNCTION_64_4();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v2 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_221A70928(void (*a1)(void))
{
  v1 = (a1)(0);
  if (OUTLINED_FUNCTION_113_4(*(v1 + 28)))
  {
    OUTLINED_FUNCTION_112_3();
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A7098C()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4(v3);
  result = OUTLINED_FUNCTION_134_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void sub_221A709EC(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  OUTLINED_FUNCTION_101_3();
  sub_221BCC8C8();
  OUTLINED_FUNCTION_64_4();
  *(a1 + *(v3 + 32)) = 2;
}

uint64_t sub_221A70A3C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  OUTLINED_FUNCTION_101_3();
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_68_2(*(v1 + 32));
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v6 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_221A70AC8(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  OUTLINED_FUNCTION_99_2(v2);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_68_2(*(v1 + 32));
}

uint64_t sub_221A70B30@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  OUTLINED_FUNCTION_101_3();
  return sub_221BCC8C8();
}

uint64_t sub_221A70B64@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  OUTLINED_FUNCTION_99_2(v2);
  OUTLINED_FUNCTION_68_2(v1[6]);
  OUTLINED_FUNCTION_92_4(v1[7]);
  OUTLINED_FUNCTION_68_2(v1[8]);
  type metadata accessor for AppIntentsProtobuf_Error(0);
  v3 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_221A70BC8(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  OUTLINED_FUNCTION_99_2(v2);
  OUTLINED_FUNCTION_68_2(*(v1 + 24));
  OUTLINED_FUNCTION_64_4();
}

void sub_221A70C00(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  OUTLINED_FUNCTION_99_2(v2);
  OUTLINED_FUNCTION_68_2(*(v1 + 24));
}

uint64_t sub_221A70C34@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v1 = type metadata accessor for AppIntentsProtobuf_Property(0);
  OUTLINED_FUNCTION_99_2(v1);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v2 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_221A70C80@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  *a2 = 0;
  a2[1] = 0;
  OUTLINED_FUNCTION_101_3();
  return sub_221BCC8C8();
}

uint64_t sub_221A70CBC@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 44) = 0u;
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_Size(0);
  v2 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_221A70D24@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v1(0);
  return sub_221BCC8C8();
}

uint64_t sub_221A70D60()
{
  v0 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 24)))
  {
    OUTLINED_FUNCTION_112_3();
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70DA4()
{
  v3 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(v3);
  result = OUTLINED_FUNCTION_134_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A70E54()
{
  v0 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 32)))
  {
    OUTLINED_FUNCTION_112_3();
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70E98()
{
  v3 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(v3);
  result = OUTLINED_FUNCTION_134_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A70EF4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDD9D8);
  __swift_project_value_buffer(v0, qword_27CFDD9D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8650;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundleIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mangledTypeName";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "openAppWhenRun";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "outputFlags";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "outputType";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "systemProtocols";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A71270()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA98();
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_5_17();
        sub_221A7135C(v15, v16, v17, v18);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221A713FC(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A71470(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_5_17();
        sub_221A714D4(v19, v20, v21, v22);
        break;
      case 7:
        v23 = OUTLINED_FUNCTION_5_17();
        sub_221A71538(v23, v24, v25, v26);
        break;
      case 8:
        v11 = OUTLINED_FUNCTION_5_17();
        sub_221A7159C(v11, v12, v13, v14);
        break;
      case 9:
        v27 = OUTLINED_FUNCTION_5_17();
        sub_221A71650(v27, v28, v29, v30);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_Property(0);
  sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678);
  return sub_221BCCAC8();
}

uint64_t sub_221A713FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221A855FC(v4, v5, v6);
  return sub_221BCC9D8();
}

uint64_t sub_221A7159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_Action(0);
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);
  return sub_221BCCAD8();
}

uint64_t sub_221A71650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
  sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol, &unk_221BD9240);
  return sub_221BCCAC8();
}

void sub_221A716F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_2_29();
  if (!v5 || (OUTLINED_FUNCTION_12_7(), sub_221BCCBF8(), !v3))
  {
    if (!*(*(v4 + 16) + 16) || (type metadata accessor for AppIntentsProtobuf_Property(0), sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v3))
    {
      OUTLINED_FUNCTION_25_8();
      if (!v6 || (OUTLINED_FUNCTION_17_11(), sub_221BCCBF8(), !v3))
      {
        v7 = OUTLINED_FUNCTION_3_21();
        sub_221A7188C(v7, v8, v9, v10);
        if (!v3)
        {
          v11 = OUTLINED_FUNCTION_3_21();
          sub_221A71930(v11);
          v12 = OUTLINED_FUNCTION_3_21();
          sub_221A719A8(v12, v13, v14, v15);
          v16 = OUTLINED_FUNCTION_3_21();
          sub_221A71A20(v16, v17, v18, v19);
          v20 = OUTLINED_FUNCTION_3_21();
          sub_221A71A98(v20, v21, v22, v23);
          if (*(*(v4 + 40) + 16))
          {
            type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
            sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol, &unk_221BD9240);
            OUTLINED_FUNCTION_91_4();
            OUTLINED_FUNCTION_49_6();
            sub_221BCCC18();
          }

          type metadata accessor for AppIntentsProtobuf_Action(0);
          OUTLINED_FUNCTION_30_7();
        }
      }
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  if ((*(a1 + *(result + 36) + 9) & 1) == 0)
  {
    sub_221A855FC(result, v6, v7);
    return sub_221BCCB98();
  }

  return result;
}

uint64_t sub_221A71930(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A719A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A71A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221A71A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB95E0, &qword_221BE0A10);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A71C78()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_ValueType(v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_157();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9940, &unk_221BDADE0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_102_2();
  v15 = v15 && v13 == v14;
  if (!v15 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_221A15F10();
  if ((v16 & 1) == 0)
  {
    goto LABEL_55;
  }

  v17 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v17 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_55;
  }

  v18 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v19 = *(v18 + 36);
  v20 = (v1 + v19);
  v21 = *(v1 + v19 + 9);
  v22 = (v0 + v19);
  if (v21)
  {
    if ((*(v22 + 9) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (*(v22 + 9))
    {
      goto LABEL_55;
    }

    v29 = *v20;
    v30 = *(v20 + 8);
    v31 = *v22;
    v32 = *(v22 + 8);
    v33 = v29 != 0;
    if ((v30 & 1) == 0)
    {
      v33 = v29;
    }

    if (v32)
    {
      if (v31)
      {
        if (v33 != 1)
        {
          goto LABEL_55;
        }
      }

      else if (v33)
      {
        goto LABEL_55;
      }
    }

    else if (v33 != v31)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_34_7();
  if (v25)
  {
    if (!v23)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_61_3(v24);
    v28 = v15 && v26 == v27;
    if (!v28 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v23)
  {
    goto LABEL_55;
  }

  v34 = *(v18 + 44);
  v35 = *(v1 + v34);
  v36 = *(v0 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_55;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_90_4();
  if ((v38 & 1) == 0)
  {
    OUTLINED_FUNCTION_77_3();
    if ((v39 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_55:
    v45 = 0;
    goto LABEL_56;
  }

  if (!v37)
  {
    goto LABEL_55;
  }

LABEL_43:
  v40 = *(v11 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v2);
  if (v15)
  {
    OUTLINED_FUNCTION_20_8(v2 + v40);
    if (v15)
    {
      sub_2219A1CC8(v2, &qword_27CFB95E0, &qword_221BE0A10);
      goto LABEL_48;
    }

    goto LABEL_53;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v2 + v40);
  if (v46)
  {
    sub_221A857F0();
LABEL_53:
    v47 = &qword_27CFB9940;
    v48 = &unk_221BDADE0;
LABEL_54:
    sub_2219A1CC8(v2, v47, v48);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_47_4();
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v3, v3[1], *v8, v8[1]) & 1) == 0)
  {
    sub_221A857F0();
    sub_221A857F0();
    v47 = &qword_27CFB95E0;
    v48 = &qword_221BE0A10;
    goto LABEL_54;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v51 = sub_221A8395C(v49, v50, MEMORY[0x277D216D0]);
  v52 = OUTLINED_FUNCTION_148_2(v51);
  sub_221A857F0();
  OUTLINED_FUNCTION_153_2();
  sub_2219A1CC8(v2, &qword_27CFB95E0, &qword_221BE0A10);
  if ((v52 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_48:
  sub_221A19668();
  if ((v41 & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v44 = sub_221A8395C(v42, v43, MEMORY[0x277D216D0]);
  v45 = OUTLINED_FUNCTION_118_3(v44);
LABEL_56:
  OUTLINED_FUNCTION_100_3(v45);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A720BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_221BCC8D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_221A72130(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_221BCC8D8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_221A721F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9930, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDACE8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A72298(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A72360(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);

  return sub_221BCCB48();
}

uint64_t sub_221A723E0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDD9F0);
  __swift_project_value_buffer(v0, qword_27CFDD9F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GENERIC_SPECIFICATION";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OPEN_URL_SPECIFICATION";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A725CC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA08);
  __swift_project_value_buffer(v0, qword_27CFDDA08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_221BD8660;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 10;
  *v5 = "dialog";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 11;
  *v9 = "nextAction";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "showOutputAction";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 13;
  *v13 = "value";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 14;
  *v15 = "confirmationActionName";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 15;
  *v17 = "shouldShowPrompt";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 16;
  *v19 = "viewSnippet";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 17;
  *v21 = "showOutputActionOptions";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A7290C()
{
  OUTLINED_FUNCTION_72_4();
  result = sub_221A7293C();
  qword_27CFB9450 = result;
  return result;
}

uint64_t sub_221A7293C()
{
  v1 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog;
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction;
  v4 = type metadata accessor for AppIntentsProtobuf_Action(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value;
  v6 = type metadata accessor for AppIntentsProtobuf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName;
  v8 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt) = 2;
  v9 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet;
  v10 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  *v11 = 0;
  *(v11 + 8) = 1;
  return v0;
}

void sub_221A72A60()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_104_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_104_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v11);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v13 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog;
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction;
  v19 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v23 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction;
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
  v43 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value;
  type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v44 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName;
  type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v45 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  *(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt) = 2;
  v46 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet;
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  *v39 = 0;
  *(v39 + 8) = 1;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog, &v54);
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1(v0 + v13, v53);
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction, v53);
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1(v0 + v18, v52);
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction, v52);
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1(v0 + v23, v51);
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value, v51);
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1(v0 + v43, v50);
  OUTLINED_FUNCTION_95_3();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName, v50);
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1(v0 + v44, v49);
  OUTLINED_FUNCTION_95_3();
  sub_221A855A4();
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt, v49);
  LOBYTE(v40) = *(v2 + v40);
  swift_beginAccess();
  *(v0 + v45) = v40;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet, &v48);
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1(v0 + v46, v47);
  OUTLINED_FUNCTION_95_3();
  sub_221A855A4();
  swift_endAccess();
  v41 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions);
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions, v47);
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);

  swift_beginAccess();
  *v39 = v42;
  *(v39 + 8) = v41;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A72FD0()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction, &unk_27CFBB690, &qword_221BDADD0);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction, &unk_27CFBB690, &qword_221BDADD0);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value, &unk_27CFBB660, &qword_221BE4610);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName, &qword_27CFB9928, &qword_221BE4A20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet, &qword_27CFB9920, &unk_221BDADC0);
  return v0;
}

uint64_t sub_221A730B8()
{
  v0 = sub_221A72FD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_221A73134(uint64_t a1)
{
  sub_221A733D0(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB94B0, type metadata accessor for AppIntentsProtobuf_Action, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221A733D0(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221A733D0(319, &qword_27CFB94C0, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_221A733D0(319, &qword_27CFB94C8, type metadata accessor for AppIntentsProtobuf_ViewSnippet, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_221A733D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_221A734FC(uint64_t a1)
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221A733D0(319, &qword_27CFB94E8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_221A73678(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221A7448C(319, &qword_27CFB9500, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221A7448C(319, &qword_27CFB9508, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_221A737EC(uint64_t a1)
{
  result = sub_221BCC8D8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_221A73900(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221A73A54(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB9578, type metadata accessor for AppIntentsProtobuf_Size, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm()
{
  OUTLINED_FUNCTION_69_1();
  v3 = *(v2 + 24);
  v4 = sub_221BCC8D8();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_81Tm()
{
  OUTLINED_FUNCTION_69_1();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_221A73C64(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221A7448C(319, &qword_27CFB9500, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221A73D88(uint64_t a1)
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v2 = *(a1 + 8) >> 60;
    if (((4 * v2) & 0xC) != 0)
    {
      return 16 - ((4 * v2) & 0xC | (v2 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_129_3();
    v5 = OUTLINED_FUNCTION_10_9(v4);

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *__swift_store_extra_inhabitant_index_45Tm(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    OUTLINED_FUNCTION_141_2();
    OUTLINED_FUNCTION_130_2();

    return __swift_storeEnumTagSinglePayload(v4 + v6, a2, a2, v5);
  }

  return result;
}

uint64_t sub_221A73FB8(uint64_t a1)
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_221A7448C(319, &qword_27CFB95D0, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_221A74174();
    if (v6 > 0x3F)
    {
      return v4;
    }

    v2 = sub_221BCC8D8();
    if (v7 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v2 = v8;
      if (v9 <= 0x3F)
      {
        sub_221A7448C(319, &qword_27CFB9500, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }

        return v4;
      }
    }
  }

  return v2;
}

void sub_221A74174()
{
  if (!qword_27CFB95D8)
  {
    v0 = sub_221BCD2D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFB95D8);
    }
  }
}

void sub_221A74208(uint64_t a1)
{
  sub_221A733D0(319, &qword_27CFB95F8, type metadata accessor for AppIntentsProtobuf_Property, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB9600, type metadata accessor for AppIntentsProtobuf_SystemProtocol, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v3 <= 0x3F)
      {
        sub_221A7448C(319, &qword_27CFB9608, &type metadata for AppIntentsProtobuf_Action.Kind, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_221A7448C(319, &qword_27CFB9610, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_221A7448C(319, &qword_27CFB9508, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_221A733D0(319, &qword_27CFB9618, type metadata accessor for AppIntentsProtobuf_ValueType, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_221A7448C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_221A74584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v19 = MEMORY[0x277D837D0];
  result = sub_221BCC8D8();
  if (v9 <= 0x3F)
  {
    v20 = result;
    OUTLINED_FUNCTION_58_6();
    result = a7();
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_4(result, v10, v11, v12, v13, v14, v15, v16, *v17, v17[4], 0, 0, v18, v19, v20, v21);
      return 0;
    }
  }

  return result;
}

unint64_t sub_221A74628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9640;
  if (!qword_27CFB9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9640);
  }

  return result;
}

unint64_t sub_221A746B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9658;
  if (!qword_27CFB9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9658);
  }

  return result;
}

unint64_t sub_221A74708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9660;
  if (!qword_27CFB9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9660);
  }

  return result;
}

unint64_t sub_221A74760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9668;
  if (!qword_27CFB9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9668);
  }

  return result;
}

uint64_t sub_221A747E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_221A7483C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9680;
  if (!qword_27CFB9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9680);
  }

  return result;
}

unint64_t sub_221A74894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9688;
  if (!qword_27CFB9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9688);
  }

  return result;
}

void sub_221A748E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_151_2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    v13 = v14;
    *(v4 + v11) = v14;
  }

  sub_221A74980(v13, v10, v8, v6);
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A74980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_221BCC998();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 10:
        sub_221A74AD0(a2, a1, a3, a4);
        break;
      case 11:
        sub_221A74BAC(a2, a1, a3, a4);
        break;
      case 12:
        sub_221A74C88(a2, a1, a3, a4);
        break;
      case 13:
        sub_221A74D64(a2, a1, a3, a4);
        break;
      case 14:
        sub_221A74E40(a2, a1, a3, a4);
        break;
      case 15:
        sub_221A74F1C(a2, a1, a3, a4);
        break;
      case 16:
        sub_221A74FA8(a2, a1, a3, a4);
        break;
      case 17:
        sub_221A75084(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A74AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, &unk_221BDA8E8);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A74FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8CA0);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A75084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A75110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  OUTLINED_FUNCTION_58_6();
  result = sub_221A75174(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_56_3();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A75174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221A75254(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221A75448(a1, a2, a3, a4);
    sub_221A7563C(a1, a2, a3, a4);
    sub_221A75830(a1, a2, a3, a4);
    sub_221A75A24(a1, a2, a3, a4);
    sub_221A75C18(a1, a2, a3, a4);
    sub_221A75CA8(a1, a2, a3, a4);
    return sub_221A75E9C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_221A75254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB690, &qword_221BDADD0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A7563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB690, &qword_221BDADD0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9928, &qword_221BE4A20);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, &unk_221BDA8E8);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A75CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9920, &unk_221BDADC0);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8CA0);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A75F28()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_75_5();
  if (*(v1 + v2) != *(v0 + v2))
  {

    sub_221A75FF0();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v5, v6, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_91_4();
  return sub_221BCD338() & 1;
}

void sub_221A75FF0()
{
  OUTLINED_FUNCTION_21();
  v170 = v0;
  v2 = v1;
  v144 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v141[1] = v5 - v4;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9960, &qword_221BDAE00);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_104_2();
  v145 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v9 = OUTLINED_FUNCTION_8_1(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_51_4();
  v142 = v10;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_132_2();
  v152 = v12;
  v13 = OUTLINED_FUNCTION_133_3();
  v150 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(v13);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v146 = v16 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9968, &qword_221BDAE08);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_104_2();
  v151 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  v20 = OUTLINED_FUNCTION_8_1(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_51_4();
  v147 = v21;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_132_2();
  v157 = v23;
  v24 = OUTLINED_FUNCTION_133_3();
  v155 = type metadata accessor for AppIntentsProtobuf_Value(v24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_0();
  v148 = (v27 - v26);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_104_2();
  v156 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v31 = OUTLINED_FUNCTION_8_1(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_51_4();
  v153 = v32;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_132_2();
  v159 = v34;
  v35 = OUTLINED_FUNCTION_133_3();
  v169 = type metadata accessor for AppIntentsProtobuf_Action(v35);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_0();
  v160 = v38 - v37;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9970, &qword_221BDAE10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_51_4();
  v161 = v40;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_132_2();
  v166 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  v44 = OUTLINED_FUNCTION_8_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_51_4();
  v158 = v45;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v46);
  v163 = v141 - v47;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v48);
  v162 = v141 - v49;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_132_2();
  v165 = v51;
  v52 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_Dialog(v52);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4_0();
  v164 = v55 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18) - 8;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v57);
  v59 = v141 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v61 = OUTLINED_FUNCTION_8_1(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_51_4();
  v167 = v62;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v63);
  v65 = v141 - v64;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog, &v186);
  sub_221A1C558();
  v66 = v170;
  OUTLINED_FUNCTION_106_3(v170 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog, &v185);
  v67 = *(v56 + 56);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v59);
  if (v69)
  {

    sub_2219A1CC8(v65, &unk_27CFBB790, &qword_221BDADD8);
    OUTLINED_FUNCTION_53_7(&v59[v67]);
    v68 = v2;
    if (v69)
    {
      sub_2219A1CC8(v59, &unk_27CFBB790, &qword_221BDADD8);
      goto LABEL_12;
    }

LABEL_9:
    v70 = &qword_27CFB9978;
    v71 = &qword_221BDAE18;
LABEL_10:
    v72 = v59;
LABEL_21:
    sub_2219A1CC8(v72, v70, v71);
    goto LABEL_22;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(&v59[v67]);
  if (v69)
  {

    sub_2219A1CC8(v65, &unk_27CFBB790, &qword_221BDADD8);
    sub_221A857F0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_45_7();
  sub_221A8554C();
  v68 = v2;

  v73 = sub_221A7941C();
  sub_221A857F0();
  sub_2219A1CC8(v65, &unk_27CFBB790, &qword_221BDADD8);
  sub_221A857F0();
  sub_2219A1CC8(v59, &unk_27CFBB790, &qword_221BDADD8);
  if ((v73 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  OUTLINED_FUNCTION_106_3(v68 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction, &v184);
  v74 = v165;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3(v66 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction, &v183);
  v75 = *(v168 + 48);
  v76 = v166;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_49_4(v76, 1, v169);
  if (v69)
  {
    sub_2219A1CC8(v74, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_20_8(v76 + v75);
    if (v69)
    {
      sub_2219A1CC8(v76, &unk_27CFBB690, &qword_221BDADD0);
      goto LABEL_25;
    }

LABEL_20:
    v70 = &qword_27CFB9970;
    v71 = &qword_221BDAE10;
    v72 = v76;
    goto LABEL_21;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v76 + v75);
  if (v77)
  {
    sub_2219A1CC8(v74, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_89_4();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_23_10();
  sub_221A8554C();
  sub_221A71C78();
  LODWORD(v167) = v78;
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v79, v80, v81);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v82, v83, v84);
  if ((v167 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  OUTLINED_FUNCTION_106_3(v68 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction, &v182);
  v85 = v163;
  sub_221A1C558();
  OUTLINED_FUNCTION_106_3(v66 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction, &v181);
  v86 = *(v168 + 48);
  v59 = v161;
  sub_221A1C558();
  v87 = v169;
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v59, 1, v87);
  if (v69)
  {
    sub_2219A1CC8(v85, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_49_4(&v59[v86], 1, v87);
    if (v69)
    {
      sub_2219A1CC8(v59, &unk_27CFBB690, &qword_221BDADD0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(&v59[v86], 1, v87);
  if (v88)
  {
    sub_2219A1CC8(v163, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_89_4();
LABEL_33:
    v70 = &qword_27CFB9970;
    v71 = &qword_221BDAE10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23_10();
  sub_221A8554C();
  sub_221A71C78();
  v90 = v89;
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v91, v92, v93);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v94, v95, v96);
  if ((v90 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_35:
  OUTLINED_FUNCTION_106_3(v68 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value, &v180);
  v97 = v159;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3(v66 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value, &v179);
  v98 = *(v154 + 48);
  v99 = v156;
  OUTLINED_FUNCTION_119_3();
  v100 = v99;
  OUTLINED_FUNCTION_119_3();
  v101 = OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_49_4(v101, v102, v155);
  if (v69)
  {
    sub_2219A1CC8(v97, &unk_27CFBB660, &qword_221BE4610);
    OUTLINED_FUNCTION_20_8(v99 + v98);
    v103 = v157;
    if (v69)
    {
      sub_2219A1CC8(v99, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  v109 = v153;
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v100 + v98);
  v103 = v157;
  if (v110)
  {
    sub_2219A1CC8(v159, &unk_27CFBB660, &qword_221BE4610);
    OUTLINED_FUNCTION_46_5();
    sub_221A857F0();
LABEL_48:
    v70 = &qword_27CFB85E0;
    v71 = &unk_221BD3E40;
    v72 = v100;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_8_13();
  v111 = v148;
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v109, v109[1], *v111, v111[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    sub_221A857F0();
    sub_2219A1CC8(v159, &unk_27CFBB660, &qword_221BE4610);
    sub_221A857F0();
    v72 = v100;
    v70 = &unk_27CFBB660;
    v71 = &qword_221BE4610;
    goto LABEL_21;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v112, v113, MEMORY[0x277D216D0]);
  v114 = sub_221BCD338();
  sub_221A857F0();
  sub_2219A1CC8(v159, &unk_27CFBB660, &qword_221BE4610);
  sub_221A857F0();
  v115 = OUTLINED_FUNCTION_56_3();
  sub_2219A1CC8(v115, v116, &qword_221BE4610);
  if ((v114 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_40:
  OUTLINED_FUNCTION_106_3(v68 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName, &v178);
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3(v66 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName, &v177);
  v104 = *(v149 + 48);
  v105 = v151;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_119_3();
  v106 = OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_49_4(v106, v107, v150);
  if (v69)
  {
    sub_2219A1CC8(v103, &qword_27CFB9928, &qword_221BE4A20);
    OUTLINED_FUNCTION_22_9(v105 + v104);
    v108 = v152;
    if (v69)
    {
      sub_2219A1CC8(v105, &qword_27CFB9928, &qword_221BE4A20);
      goto LABEL_59;
    }

LABEL_55:
    v70 = &qword_27CFB9968;
    v71 = &qword_221BDAE08;
LABEL_56:
    v72 = v105;
    goto LABEL_21;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_22_9(v105 + v104);
  v108 = v152;
  if (v117)
  {
    sub_2219A1CC8(v103, &qword_27CFB9928, &qword_221BE4A20);
    sub_221A857F0();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_43_7();
  sub_221A8554C();
  OUTLINED_FUNCTION_56_3();
  v118 = sub_221A78340();
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v119, v120, v121);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v122, v123, v124);
  if ((v118 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_59:
  v125 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  OUTLINED_FUNCTION_106_3(v68 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt, &v176);
  v126 = *(v68 + v125);
  v127 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  OUTLINED_FUNCTION_106_3(v66 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt, &v175);
  v128 = *(v66 + v127);
  if (v126 == 2)
  {
    if (v128 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v128 == 2 || ((v126 ^ v128) & 1) != 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_106_3(v68 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet, &v174);
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3(v66 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet, &v173);
  v129 = *(v143 + 48);
  v105 = v145;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_119_3();
  v130 = OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_49_4(v130, v131, v144);
  if (v69)
  {
    sub_2219A1CC8(v108, &qword_27CFB9920, &unk_221BDADC0);
    OUTLINED_FUNCTION_22_9(v105 + v129);
    if (v69)
    {
      sub_2219A1CC8(v105, &qword_27CFB9920, &unk_221BDADC0);
LABEL_74:
      OUTLINED_FUNCTION_106_3(v68 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions, &v172);

      OUTLINED_FUNCTION_106_3(v66 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions, &v171);

      goto LABEL_23;
    }

    goto LABEL_72;
  }

  v132 = v142;
  sub_221A1C558();
  OUTLINED_FUNCTION_22_9(v105 + v129);
  if (v133)
  {
    sub_2219A1CC8(v108, &qword_27CFB9920, &unk_221BDADC0);
    sub_221A857F0();
LABEL_72:
    v70 = &qword_27CFB9960;
    v71 = &qword_221BDAE00;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_42_7();
  sub_221A8554C();
  v134 = sub_221A832C8(v132);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v135, v136, v137);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v138, v139, v140);
  if (v134)
  {
    goto LABEL_74;
  }

LABEL_22:

LABEL_23:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A77154(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9958, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDAB80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A771F4(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A772BC(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);

  return sub_221BCCB48();
}

uint64_t sub_221A7733C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA20);
  __swift_project_value_buffer(v0, qword_27CFDDA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iteratorIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "complete";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "values";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A77580()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A77680(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7B3A0();
        break;
      case 10:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221A7B304(v7, v8, v9, v10, v11, &unk_27CFBB6C0, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A77680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

void sub_221A77734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  sub_221A7783C(v5, v6, v7, v8);
  if (!v3)
  {
    if (*v4)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7B500();
    if (*(v4[1] + 16))
    {
      type metadata accessor for AppIntentsProtobuf_Value(0);
      sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_49_6();
      sub_221BCCC18();
    }

    type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A77A1C()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_29_8();
  v29 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(v12);
  v13 = *(v2 + 56);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_20_8(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_20_8(v0 + v13);
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0 + v13);
  if (v17)
  {
    OUTLINED_FUNCTION_11_12();
    sub_221A857F0();
LABEL_13:
    v18 = &qword_27CFB9990;
    v19 = &qword_221BDAE28;
LABEL_20:
    sub_2219A1CC8(v0, v18, v19);
    goto LABEL_21;
  }

  sub_221A8554C();
  if (*v1 != *v8 || v1[1] != v8[1])
  {
    OUTLINED_FUNCTION_11_12();
    sub_221A857F0();
    goto LABEL_19;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v22 = sub_221A8395C(v20, v21, MEMORY[0x277D216D0]);
  v23 = OUTLINED_FUNCTION_150_1(v22);
  OUTLINED_FUNCTION_11_12();
  sub_221A857F0();
  if ((v23 & 1) == 0)
  {
LABEL_19:
    OUTLINED_FUNCTION_11_12();
    sub_221A857F0();
    v18 = &qword_27CFB9988;
    v19 = &qword_221BDAE20;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_11_12();
  sub_221A857F0();
LABEL_5:
  sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_142_1();
  if (!v17)
  {
    goto LABEL_21;
  }

  v14 = *(v29 + 32);
  v15 = *(v0 + v14);
  v16 = *(v4 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    goto LABEL_21;
  }

  sub_221A174D8();
  if (v25)
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_40();
    v28 = sub_221A8395C(v26, v27, MEMORY[0x277D216D0]);
    v24 = OUTLINED_FUNCTION_149_1(v28);
    goto LABEL_22;
  }

LABEL_21:
  v24 = 0;
LABEL_22:
  OUTLINED_FUNCTION_100_3(v24);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A77D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9980, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage, &unk_221BDAA18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A77E1C(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage, &unk_221BDAA50);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A77EE4(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage, &unk_221BDAA50);

  return sub_221BCCB48();
}

uint64_t sub_221A77F64()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA38);
  __swift_project_value_buffer(v0, qword_27CFDDA38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "acceptLabel";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "acceptAlternatives";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "denyLabel";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "denyAlternatives";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A781A8()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA48();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A78264(uint64_t a1)
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221A7A888();
  if (!v1)
  {
    if (*(*v2 + 16))
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBC8();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7C03C();
    if (*(v2[1] + 16))
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBC8();
    }

    type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221A78340()
{
  OUTLINED_FUNCTION_69_1();
  type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_18_10();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  if (sub_221A15E30(*v1, *v0))
  {
    OUTLINED_FUNCTION_18_10();
    if (v10)
    {
      if (!v8)
      {
        return 0;
      }

      OUTLINED_FUNCTION_61_3(v9);
      v13 = v7 && v11 == v12;
      if (!v13 && (sub_221BCE1B8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    if (sub_221A15E30(v1[1], v0[1]))
    {
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_40();
      v16 = sub_221A8395C(v14, v15, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_36_8(v16) & 1;
    }
  }

  return 0;
}

uint64_t sub_221A78488(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9998, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, &unk_221BDA8B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A78528(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, &unk_221BDA8E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A785F0(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, &unk_221BDA8E8);

  return sub_221BCCB48();
}

uint64_t sub_221A78670()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA50);
  __swift_project_value_buffer(v0, qword_27CFDDA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_221BD8670;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_221BCCC48();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 10;
  *v8 = "print";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 11;
  *v10 = "captionPrint";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 12;
  *v12 = "printOnly";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 20;
  *v14 = "speak";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 21;
  *v16 = "captionSpeak";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 22;
  *v18 = "spokenOnly";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 23;
  *v20 = "spokenOnlyDefined";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 30;
  *v22 = "visualId";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 31;
  *v24 = "visualParameters";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 32;
  *v26 = "visualResponse";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 100;
  *v28 = "catId";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 101;
  *v30 = "dialogId";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 102;
  *v32 = "localeIdentifier";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 103;
  *v34 = "meta";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v7();
  return sub_221BCCC58();
}

uint64_t sub_221A78B68()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 10:
      case 11:
      case 20:
      case 21:
LABEL_15:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA48();
        break;
      case 12:
      case 22:
      case 23:
        OUTLINED_FUNCTION_58_6();
        sub_221BCC9F8();
        break;
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
        continue;
      case 30:
        v15 = OUTLINED_FUNCTION_5_17();
        sub_221A78D2C(v15, v16, v17, v18);
        break;
      case 31:
        v19 = OUTLINED_FUNCTION_5_17();
        sub_221A78D90(v19, v20, v21, v22);
        break;
      case 32:
        v11 = OUTLINED_FUNCTION_5_17();
        sub_221A78E08(v11, v12, v13, v14);
        break;
      default:
        switch(result)
        {
          case 'd':
            v3 = OUTLINED_FUNCTION_5_17();
            sub_221A78E6C(v3, v4, v5, v6);
            break;
          case 'e':
            goto LABEL_15;
          case 'f':
            v23 = OUTLINED_FUNCTION_5_17();
            sub_221A78ED0(v23, v24, v25, v26);
            break;
          case 'g':
            v27 = OUTLINED_FUNCTION_5_17();
            sub_221A78F34(v27, v28, v29, v30);
            break;
          default:
            if (result == 1)
            {
              v7 = OUTLINED_FUNCTION_5_17();
              sub_221A78CC4(v7, v8, v9, v10);
            }

            break;
        }

        break;
    }
  }
}

uint64_t sub_221A78FAC()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (sub_221A85844(v3, v4, v5), OUTLINED_FUNCTION_49_6(), result = sub_221BCCB98(), !v1))
  {
    if (!*(v2[2] + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
    {
      if (!*(v2[3] + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
      {
        if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB78(), !v1))
        {
          if (!*(v2[5] + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
          {
            if (!*(v2[6] + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
            {
              if (!*(v2[7] + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB78(), !v1))
              {
                if (!*(v2[8] + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB78(), !v1))
                {
                  v7 = OUTLINED_FUNCTION_3_21();
                  result = sub_221A79214(v7);
                  if (!v1)
                  {
                    if (*(v2[9] + 16))
                    {
                      sub_221BCC8A8();
                      OUTLINED_FUNCTION_61_5();
                      sub_221BCCB68();
                    }

                    v8 = OUTLINED_FUNCTION_3_21();
                    sub_221A7928C(v8, v9, v10, v11);
                    v12 = OUTLINED_FUNCTION_3_21();
                    sub_221A7932C(v12);
                    if (*(v2[10] + 16))
                    {
                      OUTLINED_FUNCTION_14_12();
                      sub_221BCCBC8();
                    }

                    v13 = OUTLINED_FUNCTION_3_21();
                    sub_221A793A4(v13);
                    if (*(v2[11] + 16))
                    {
                      sub_221BCC8A8();
                      OUTLINED_FUNCTION_61_5();
                      sub_221BCCB68();
                    }

                    type metadata accessor for AppIntentsProtobuf_Dialog(0);
                    return OUTLINED_FUNCTION_30_7();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_221A79214(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (*(a1 + *(result + 64) + 8))
  {
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v6 = a1 + *(result + 68);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_2219EBFC8(*v6, *(v6 + 8));
    sub_221BCCBA8();
    return sub_2219EC02C(v8, v7);
  }

  return result;
}

uint64_t sub_221A7932C(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (*(a1 + *(result + 72) + 8))
  {
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A793A4(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (*(a1 + *(result + 76) + 8))
  {
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7941C()
{
  OUTLINED_FUNCTION_69_1();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((sub_221A15E30(v1[2], v0[2]) & 1) == 0 || (sub_221A15E30(v1[3], v0[3]) & 1) == 0 || (sub_221A19610(v1[4], v0[4]) & 1) == 0 || (sub_221A15E30(v1[5], v0[5]) & 1) == 0 || (sub_221A15E30(v1[6], v0[6]) & 1) == 0 || (sub_221A19610(v1[7], v0[7]) & 1) == 0 || (sub_221A19610(v1[8], v0[8]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_18_10();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_221A85650(v1[9], v0[9]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_5();
  if (!v11 & v14)
  {
    OUTLINED_FUNCTION_122_3();
    if (!v11 & v14)
    {
      v12 = OUTLINED_FUNCTION_6_16();
      sub_2219EC02C(v12, v13);
      goto LABEL_37;
    }

LABEL_34:
    v16 = OUTLINED_FUNCTION_6_16();
    sub_2219EC02C(v16, v17);
    v18 = OUTLINED_FUNCTION_14();
    sub_2219EC02C(v18, v19);
    return 0;
  }

  OUTLINED_FUNCTION_122_3();
  if (!v15 & v14)
  {
    goto LABEL_34;
  }

  v21 = OUTLINED_FUNCTION_6_16();
  v22 = MEMORY[0x223DA21A0](v21);
  v23 = OUTLINED_FUNCTION_14();
  sub_2219EC02C(v23, v24);
  v25 = OUTLINED_FUNCTION_56_3();
  sub_2219EC02C(v25, v26);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  OUTLINED_FUNCTION_18_10();
  if (v29)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v28);
    v32 = v11 && v30 == v31;
    if (!v32 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if ((sub_221A15E30(v1[10], v0[10]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_10();
  if (!v35)
  {
    if (!v33)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (!v33)
  {
    return 0;
  }

  OUTLINED_FUNCTION_61_3(v34);
  v38 = v11 && v36 == v37;
  if (!v38 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

LABEL_56:
  if ((sub_221A85650(v1[11], v0[11]) & 1) == 0)
  {
    return 0;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v41 = sub_221A8395C(v39, v40, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v41) & 1;
}

uint64_t sub_221A796F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&dword_27CFB99A0, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA748);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A79790(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A79858(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);

  return sub_221BCCB48();
}

uint64_t sub_221A798D8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA68);
  __swift_project_value_buffer(v0, qword_27CFDDA68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DIALOG_UNKNOWN";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIALOG_LOCALIZED_STRINGS";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A79AC4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA80);
  __swift_project_value_buffer(v0, qword_27CFDDA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "imageData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "renderingMode";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayStyle";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A79CCC()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7E4D0();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221A79DBC(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A79D58(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_221A79E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58_6();
  result = sub_221A79EAC(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_58_6();
    sub_221A79F4C(v9, v10, v11, a3);
    OUTLINED_FUNCTION_58_6();
    sub_221A7E69C();
    OUTLINED_FUNCTION_56_3();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A79EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v6 = a1 + *(result + 20);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_2219EBFC8(*v6, *(v6 + 8));
    sub_221BCCBA8();
    return sub_2219EC02C(v8, v7);
  }

  return result;
}

uint64_t sub_221A79F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221A79FC4()
{
  OUTLINED_FUNCTION_69_1();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_65_5();
  if (!v3 & v2)
  {
    OUTLINED_FUNCTION_122_3();
    if (!v3 & v2)
    {
      v0 = OUTLINED_FUNCTION_6_16();
      sub_2219EC02C(v0, v1);
      goto LABEL_11;
    }

LABEL_8:
    v4 = OUTLINED_FUNCTION_6_16();
    sub_2219EC02C(v4, v5);
    v6 = OUTLINED_FUNCTION_14();
    sub_2219EC02C(v6, v7);
    return 0;
  }

  OUTLINED_FUNCTION_122_3();
  if (!v3 & v2)
  {
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_6_16();
  v10 = MEMORY[0x223DA21A0](v9);
  v11 = OUTLINED_FUNCTION_14();
  sub_2219EC02C(v11, v12);
  v13 = OUTLINED_FUNCTION_56_3();
  sub_2219EC02C(v13, v14);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  OUTLINED_FUNCTION_90_4();
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    if (v17)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_90_4();
  if (v19)
  {
    if (v18)
    {
      goto LABEL_19;
    }

    return 0;
  }

  OUTLINED_FUNCTION_77_3();
  if (v20)
  {
    return 0;
  }

LABEL_19:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v21, v22, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_91_4();
  return sub_221BCD338() & 1;
}

uint64_t sub_221A7A118()
{
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_0_0();

  return v1(v0);
}

uint64_t sub_221A7A174()
{
  OUTLINED_FUNCTION_40_3();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_221A7A200(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99B0, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7A2A0(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7A368(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);

  return sub_221BCCB48();
}

uint64_t sub_221A7A3E8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA98);
  __swift_project_value_buffer(v0, qword_27CFDDA98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "synonyms";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7A628()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 3:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA48();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A7A720(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7A6DC()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 28));
  return sub_221BCCA88();
}

uint64_t sub_221A7A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);
  return sub_221BCCAD8();
}

uint64_t sub_221A7A7D4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_29();
  if (!v3 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v1))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7A888();
    if (!v1)
    {
      if (*(*(v2 + 16) + 16))
      {
        OUTLINED_FUNCTION_14_12();
        sub_221BCCBC8();
      }

      v5 = OUTLINED_FUNCTION_3_21();
      sub_221A7A8EC(v5, v6, v7, v8);
      type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7A888()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  if (*(v0 + *(result + 28) + 8))
  {
    OUTLINED_FUNCTION_35_7();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7A8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB85E8, &unk_221BD86E0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A7AACC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_69_1();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85F0, &unk_221BD3E50);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_102_2();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_25;
  }

  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  OUTLINED_FUNCTION_18_10();
  if (v13)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_61_3(v12);
    v16 = v10 && v14 == v15;
    if (!v16 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v11)
  {
    goto LABEL_25;
  }

  if ((sub_221A15E30(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(v6 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v2);
  if (v10)
  {
    OUTLINED_FUNCTION_53_7(v2 + v17);
    if (v10)
    {
      sub_2219A1CC8(v2, &qword_27CFB85E8, &unk_221BD86E0);
LABEL_28:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_40();
      v23 = sub_221A8395C(v21, v22, MEMORY[0x277D216D0]);
      v19 = OUTLINED_FUNCTION_36_8(v23);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v2 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_44_4();
    sub_221A857F0();
LABEL_24:
    sub_2219A1CC8(v2, &qword_27CFB85F0, &unk_221BD3E50);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_13();
  sub_221A8554C();
  v20 = sub_221A79FC4();
  OUTLINED_FUNCTION_82_4();
  sub_221A857F0();
  sub_221A857F0();
  sub_2219A1CC8(v2, &qword_27CFB85E8, &unk_221BD86E0);
  if (v20)
  {
    goto LABEL_28;
  }

LABEL_25:
  v19 = 0;
LABEL_26:
  OUTLINED_FUNCTION_100_3(v19);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A7ADC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99B8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA450);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7AE68(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7AF30(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);

  return sub_221BCCB48();
}

uint64_t sub_221A7AFB0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAB0);
  __swift_project_value_buffer(v0, qword_27CFDDAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dependentParameterIdentifiers";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptLabel";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sections";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "usesIndexedCollection";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7B1F4()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA48();
        break;
      case 2:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A7B304(v3, v4, v5, v6, v7, &unk_27CFBB700, v8, v9);
        break;
      case 4:
        OUTLINED_FUNCTION_4_18();
        sub_221A7B3A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7B304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_221A8395C(a6, a7, a8);
  return sub_221BCCAC8();
}

uint64_t sub_221A7B3A0()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 32));
  return sub_221BCC9B8();
}

void sub_221A7B3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (!*(*v3 + 16) || (OUTLINED_FUNCTION_14_12(), sub_221BCCBC8(), !v4))
  {
    OUTLINED_FUNCTION_1_34();
    sub_221A7A888();
    if (!v4)
    {
      if (*(*(v5 + 8) + 16))
      {
        type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
        sub_221A8395C(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection, &unk_221BDA050);
        OUTLINED_FUNCTION_91_4();
        OUTLINED_FUNCTION_49_6();
        sub_221BCCC18();
      }

      OUTLINED_FUNCTION_1_34();
      sub_221A7B500();
      type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7B500()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  if (*(v0 + *(result + 32)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A7B56C()
{
  OUTLINED_FUNCTION_69_1();
  if ((sub_221A15E30(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  OUTLINED_FUNCTION_18_10();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_221A17B70();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v4 + 32);
  v13 = *(v1 + v12);
  v14 = *(v0 + v12);
  if (v13 != 2)
  {
    if (v14 != 2 && ((v13 ^ v14) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v14 != 2)
  {
    return 0;
  }

LABEL_18:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v18 = sub_221A8395C(v16, v17, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v18) & 1;
}

uint64_t sub_221A7B6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99C0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult, &unk_221BDA2E8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7B754(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult, &unk_221BDA320);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7B81C(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult, &unk_221BDA320);

  return sub_221BCCB48();
}

uint64_t sub_221A7B89C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAC8);
  __swift_project_value_buffer(v0, qword_27CFDDAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indentationLevel";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subtitle";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "value";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7BB1C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A7BBE0(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      case 4:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA98();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221A7BCD8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);
  return sub_221BCCAD8();
}

uint64_t sub_221A7BC94()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 32));
  return sub_221BCCA88();
}

uint64_t sub_221A7BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAD8();
}

uint64_t sub_221A7BD8C(uint64_t a1)
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221A7BE5C(v3, v4, v5, v6);
  if (!v1)
  {
    if (*v2)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7C03C();
    OUTLINED_FUNCTION_25_8();
    if (v8)
    {
      OUTLINED_FUNCTION_17_11();
      sub_221BCCBF8();
    }

    v9 = OUTLINED_FUNCTION_3_21();
    sub_221A7C0A0(v9, v10, v11, v12);
    type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221A7BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB85E8, &unk_221BD86E0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A7C03C()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  if (*(v0 + *(result + 32) + 8))
  {
    OUTLINED_FUNCTION_35_7();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A7C280()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v51 = type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v48 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104_2();
  v49 = v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104_2();
  v52 = v11;
  v12 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_97_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85F0, &unk_221BD3E50) - 8;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v53 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  v54 = v3;
  v20 = *(v16 + 56);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_53_7(&v19[v20]);
    if (v21)
    {
      sub_2219A1CC8(v19, &qword_27CFB85E8, &unk_221BD86E0);
      goto LABEL_12;
    }

LABEL_9:
    v22 = &qword_27CFB85F0;
    v23 = &unk_221BD3E50;
    v24 = v19;
LABEL_10:
    sub_2219A1CC8(v24, v22, v23);
LABEL_40:
    v40 = 0;
    goto LABEL_41;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(&v19[v20]);
  if (v21)
  {
    OUTLINED_FUNCTION_44_4();
    sub_221A857F0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_13();
  sub_221A8554C();
  v25 = sub_221A79FC4();
  sub_221A857F0();
  sub_221A857F0();
  sub_2219A1CC8(v19, &qword_27CFB85E8, &unk_221BD86E0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_12:
  v26 = v54;
  if (*v54 != *v1)
  {
    goto LABEL_40;
  }

  v27 = *(v53 + 32);
  v28 = *(v1 + v27 + 8);
  if (*(v54 + v27 + 8))
  {
    if (!v28)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_61_3(v54 + v27);
    v31 = v21 && v29 == v30;
    if (!v31 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v28)
  {
    goto LABEL_40;
  }

  v32 = v26[1] == v1[1] && v26[2] == v1[2];
  if (!v32 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_40;
  }

  v33 = *(v50 + 48);
  v34 = v52;
  sub_221A1C558();
  sub_221A1C558();
  v35 = OUTLINED_FUNCTION_127_4();
  v36 = v51;
  OUTLINED_FUNCTION_49_4(v35, v37, v51);
  if (v21)
  {
    OUTLINED_FUNCTION_49_4(v34 + v33, 1, v36);
    if (v21)
    {
      sub_2219A1CC8(v34, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  v41 = v49;
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v34 + v33, 1, v36);
  if (v42)
  {
    OUTLINED_FUNCTION_46_5();
    sub_221A857F0();
LABEL_36:
    v22 = &qword_27CFB85E0;
    v23 = &unk_221BD3E40;
LABEL_37:
    v24 = v34;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_13();
  v43 = v48;
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v41, v41[1], *v43, v43[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_83_5();
    sub_221A857F0();
    sub_221A857F0();
    v22 = &unk_27CFBB660;
    v23 = &qword_221BE4610;
    goto LABEL_37;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v44, v45, MEMORY[0x277D216D0]);
  v46 = sub_221BCD338();
  OUTLINED_FUNCTION_84_3();
  sub_221A857F0();
  sub_221A857F0();
  sub_2219A1CC8(v34, &unk_27CFBB660, &qword_221BE4610);
  if ((v46 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_32:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v38, v39, MEMORY[0x277D216D0]);
  v40 = sub_221BCD338();
LABEL_41:
  OUTLINED_FUNCTION_100_3(v40);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A7C848(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99C8, type metadata accessor for AppIntentsProtobuf_DynamicOption, &unk_221BDA180);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7C8E8(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption, &unk_221BDA1B8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7C9B0(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption, &unk_221BDA1B8);

  return sub_221BCCB48();
}

uint64_t sub_221A7CA30()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAE0);
  __swift_project_value_buffer(v0, qword_27CFDDAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subtitle";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7CC74()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A7CD34(v3, v4, v5, v6);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221A7CDE8(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 4:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);
  return sub_221BCCAD8();
}

uint64_t sub_221A7CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption, &unk_221BDA1B8);
  return sub_221BCCAC8();
}

void sub_221A7CE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  sub_221A7CF98(v5, v6, v7, v8);
  if (!v3)
  {
    if (*(*v4 + 16))
    {
      type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
      sub_221A8395C(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption, &unk_221BDA1B8);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_49_6();
      sub_221BCCC18();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7A888();
    OUTLINED_FUNCTION_1_34();
    sub_221A7C03C();
    type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB85E8, &unk_221BD86E0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, &unk_221BDA5F0);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A7D4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99D0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection, &unk_221BDA018);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7D564(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection, &unk_221BDA050);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7D62C(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection, &unk_221BDA050);

  return sub_221BCCB48();
}

uint64_t sub_221A7D6AC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDAF8);
  __swift_project_value_buffer(v0, qword_27CFDDAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "instance";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7D874()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_58_6();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221A7D8D4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v1))
  {
    OUTLINED_FUNCTION_25_8();
    if (!v4 || (OUTLINED_FUNCTION_17_11(), result = sub_221BCCBF8(), !v1))
    {
      type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7D950(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_32_7(a1);
  v7 = v3 == v6 && v4 == v5;
  if (!v7 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v8 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v11 = sub_221A8395C(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v11) & 1;
}

uint64_t sub_221A7DA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99D8, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EB0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7DAEC(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EE8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7DBB4(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EE8);

  return sub_221BCCB48();
}

uint64_t sub_221A7DCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99E0, type metadata accessor for AppIntentsProtobuf_Environment, &unk_221BD9D48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7DD60(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment, &unk_221BD9D80);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7DE28(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment, &unk_221BD9D80);

  return sub_221BCCB48();
}

uint64_t sub_221A7DF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99E8, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9BE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7E000(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7E0C8(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);

  return sub_221BCCB48();
}

uint64_t sub_221A7E174()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB40);
  __swift_project_value_buffer(v0, qword_27CFDDB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "size";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uttype";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "error";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7E3F0()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        OUTLINED_FUNCTION_4_18();
        sub_221A7F150();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7E4D0();
        break;
      case 4:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A7E514(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7E4D0()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 28));
  return sub_221BCCA28();
}

uint64_t sub_221A7E514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  type metadata accessor for AppIntentsProtobuf_Error(0);
  sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  return sub_221BCCAD8();
}

uint64_t sub_221A7E5C8(uint64_t a1)
{
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v1))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7F238();
    if (!v1)
    {
      OUTLINED_FUNCTION_1_34();
      sub_221A7E69C();
      OUTLINED_FUNCTION_1_34();
      sub_221A7C03C();
      v4 = OUTLINED_FUNCTION_3_21();
      sub_221A7E704(v4, v5, v6, v7);
      type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7E69C()
{
  v1 = OUTLINED_FUNCTION_21_8();
  result = v2(v1);
  if ((*(v0 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221A7E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A7E8E4()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_Error(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_157();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB99F8, &qword_221BDAE30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_102_2();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_39;
  }

  type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  OUTLINED_FUNCTION_34_7();
  if (v16)
  {
    if (!v14)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_61_3(v15);
    v19 = v13 && v17 == v18;
    if (!v19 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v14)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_90_4();
  if (v21)
  {
    if (!v20)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    if (v22)
    {
      goto LABEL_39;
    }
  }

  OUTLINED_FUNCTION_34_7();
  if (!v25)
  {
    if (!v23)
    {
      goto LABEL_28;
    }

LABEL_39:
    v33 = 0;
    goto LABEL_40;
  }

  if (!v23)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_61_3(v24);
  v28 = v13 && v26 == v27;
  if (!v28 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  v29 = *(v9 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0);
  if (v13)
  {
    OUTLINED_FUNCTION_20_8(v0 + v29);
    if (v13)
    {
      sub_2219A1CC8(v0, &qword_27CFBBA10, &qword_221BE0A90);
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0 + v29);
  if (v34)
  {
    sub_221A857F0();
LABEL_37:
    v35 = &qword_27CFB99F8;
    v36 = &qword_221BDAE30;
LABEL_38:
    sub_2219A1CC8(v0, v35, v36);
    goto LABEL_39;
  }

  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v1, v1[1], *v6, v6[1]) & 1) == 0)
  {
    sub_221A857F0();
    sub_221A857F0();
    v35 = &qword_27CFBBA10;
    v36 = &qword_221BE0A90;
    goto LABEL_38;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v39 = sub_221A8395C(v37, v38, MEMORY[0x277D216D0]);
  v40 = OUTLINED_FUNCTION_148_2(v39);
  sub_221A857F0();
  OUTLINED_FUNCTION_153_2();
  sub_2219A1CC8(v0, &qword_27CFBBA10, &qword_221BE0A90);
  if ((v40 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v32 = sub_221A8395C(v30, v31, MEMORY[0x277D216D0]);
  v33 = OUTLINED_FUNCTION_118_3(v32);
LABEL_40:
  OUTLINED_FUNCTION_100_3(v33);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A7ECC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB99F0, type metadata accessor for AppIntentsProtobuf_FileDescriptor, &unk_221BD9A78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7ED64(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB97A0, type metadata accessor for AppIntentsProtobuf_FileDescriptor, &unk_221BD9AB0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7EE2C(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB97A0, type metadata accessor for AppIntentsProtobuf_FileDescriptor, &unk_221BD9AB0);

  return sub_221BCCB48();
}

uint64_t sub_221A7EEAC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB58);
  __swift_project_value_buffer(v0, qword_27CFDDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameterDescription";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7F0B4()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 2:
        OUTLINED_FUNCTION_4_18();
        sub_221A7F150();
        break;
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
    }
  }

  return result;
}

uint64_t sub_221A7F150()
{
  v0 = OUTLINED_FUNCTION_21_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_40_6(*(v2 + 24));
  return sub_221BCCA88();
}

uint64_t sub_221A7F194(uint64_t a1)
{
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v1))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7F238();
    if (!v1)
    {
      OUTLINED_FUNCTION_1_34();
      sub_221A7A888();
      type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7F238()
{
  v1 = OUTLINED_FUNCTION_37_4();
  result = v2(v1);
  if (*(v0 + *(result + 24) + 8))
  {
    OUTLINED_FUNCTION_35_7();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7F29C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_32_7(a1);
  v5 = v1 == v4 && v2 == v3;
  if (!v5 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  OUTLINED_FUNCTION_18_10();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v7);
    v11 = v5 && v9 == v10;
    if (!v11 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_10();
  if (v14)
  {
    if (v12)
    {
      OUTLINED_FUNCTION_61_3(v13);
      v17 = v5 && v15 == v16;
      if (v17 || (sub_221BCE1B8() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v12)
  {
LABEL_22:
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_40();
    v20 = sub_221A8395C(v18, v19, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_36_8(v20) & 1;
  }

  return 0;
}

uint64_t sub_221A7F3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A00, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9910);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7F478(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7F540(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);

  return sub_221BCCB48();
}

uint64_t sub_221A7F5C0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB70);
  __swift_project_value_buffer(v0, qword_27CFDDB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7F788()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_4_18();
      sub_221A7F150();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221A7F7FC(uint64_t a1)
{
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v1))
  {
    OUTLINED_FUNCTION_1_34();
    result = sub_221A7F238();
    if (!v1)
    {
      type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7F87C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_32_7(a1);
  v5 = v1 == v4 && v2 == v3;
  if (v5 || (sub_221BCE1B8() & 1) != 0)
  {
    type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
    OUTLINED_FUNCTION_18_10();
    if (v8)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_61_3(v7);
        v11 = v5 && v9 == v10;
        if (v11 || (sub_221BCE1B8() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v6)
    {
LABEL_13:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_40();
      v14 = sub_221A8395C(v12, v13, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_36_8(v14) & 1;
    }
  }

  return 0;
}

uint64_t sub_221A7F988(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A08, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A7FA28(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A7FAF0(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);

  return sub_221BCCB48();
}

uint64_t sub_221A7FB70()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDB88);
  __swift_project_value_buffer(v0, qword_27CFDDB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A7FD38()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221A7FD9C(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221A7FD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_Property(0);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAD8();
}

uint64_t sub_221A7FE50(uint64_t a1)
{
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), result = sub_221BCCBF8(), !v1))
  {
    v4 = OUTLINED_FUNCTION_3_21();
    result = sub_221A7FEBC(v4, v5, v6, v7);
    if (!v1)
    {
      type metadata accessor for AppIntentsProtobuf_Property(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A7FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_Property(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A8009C()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_Value(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_157();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_102_2();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_17;
  }

  type metadata accessor for AppIntentsProtobuf_Property(0);
  v14 = *(v9 + 48);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_20_8(v0);
  if (v13)
  {
    OUTLINED_FUNCTION_20_8(v0 + v14);
    if (v13)
    {
      sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0 + v14);
  if (v19)
  {
    OUTLINED_FUNCTION_46_5();
    sub_221A857F0();
LABEL_15:
    v20 = &qword_27CFB85E0;
    v21 = &unk_221BD3E40;
LABEL_16:
    sub_2219A1CC8(v0, v20, v21);
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_13();
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v1, v1[1], *v6, v6[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_83_5();
    sub_221A857F0();
    sub_221A857F0();
    v20 = &unk_27CFBB660;
    v21 = &qword_221BE4610;
    goto LABEL_16;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v22, v23, MEMORY[0x277D216D0]);
  v24 = sub_221BCD338();
  sub_221A857F0();
  OUTLINED_FUNCTION_153_2();
  sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v17 = sub_221A8395C(v15, v16, MEMORY[0x277D216D0]);
  v18 = OUTLINED_FUNCTION_118_3(v17);
LABEL_18:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A803CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A10, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9640);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A8046C(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A80534(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678);

  return sub_221BCCB48();
}

uint64_t sub_221A805B4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDBA0);
  __swift_project_value_buffer(v0, qword_27CFDDBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A8077C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_13();
  if (!*v1 || (OUTLINED_FUNCTION_61_5(), OUTLINED_FUNCTION_58_6(), result = sub_221BCCBD8(), !v2))
  {
    if (!*(v3 + 8) || (OUTLINED_FUNCTION_61_5(), OUTLINED_FUNCTION_58_6(), result = sub_221BCCBD8(), !v2))
    {
      type metadata accessor for AppIntentsProtobuf_Size(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A8080C(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_Size(0);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v6 = sub_221A8395C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v6) & 1;
}

uint64_t sub_221A8092C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A18, type metadata accessor for AppIntentsProtobuf_Size, &unk_221BD94D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A809CC(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size, &unk_221BD9510);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A80A94(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size, &unk_221BD9510);

  return sub_221BCCB48();
}

uint64_t sub_221A80B14()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDBB8);
  __swift_project_value_buffer(v0, qword_27CFDDBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_221BD8690;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "size";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "dynamicTypeSize";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "legibilityWeight";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "layoutDirection";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "colorScheme";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "colorSchemeContrast";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "displayScale";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "displayGamut";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "accessibilityDifferentiateWithoutColor";
  *(v23 + 1) = 38;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "accessibilityInvertColors";
  *(v25 + 1) = 25;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "accessibilityReduceMotion";
  *(v27 + 1) = 25;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "accessibilityReduceTransparency";
  *(v29 + 1) = 31;
  v29[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A80F38()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A81024(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA38();
        break;
      case 7:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA68();
        break;
      case 9:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_58_6();
        sub_221BCC9C8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A81024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  type metadata accessor for AppIntentsProtobuf_Size(0);
  sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size, &unk_221BD9510);
  return sub_221BCCAD8();
}

uint64_t sub_221A810D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221A812C4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 8))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 24))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 32))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 40))
    {
      sub_221BCCBD8();
    }

    if (*(v3 + 48))
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCBB8();
    }

    if (*(v3 + 56) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    if (*(v3 + 57) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    if (*(v3 + 58) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    if (*(v3 + 59) == 1)
    {
      OUTLINED_FUNCTION_28_5();
      sub_221BCCB88();
    }

    type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A812C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9560, &qword_221BE49F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Size(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9560, &qword_221BE49F0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size, &unk_221BD9510);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A814A4()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = v5;
  type metadata accessor for AppIntentsProtobuf_Size(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9560, &qword_221BE49F0);
  OUTLINED_FUNCTION_8_1(v11);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9A28, &qword_221BDAE38);
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_97_3();
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v14 = *(v2 + 56);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_20_8(v0);
  if (!v19)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v0 + v14);
    if (!v19)
    {
      sub_221A8554C();
      if (*v1 == *v10 && v1[1] == v10[1])
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_40();
        v24 = sub_221A8395C(v22, v23, MEMORY[0x277D216D0]);
        v25 = OUTLINED_FUNCTION_150_1(v24);
        OUTLINED_FUNCTION_9_14();
        sub_221A857F0();
        if (v25)
        {
          OUTLINED_FUNCTION_9_14();
          sub_221A857F0();
          goto LABEL_5;
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_14();
        sub_221A857F0();
      }

      OUTLINED_FUNCTION_9_14();
      sub_221A857F0();
      v20 = &qword_27CFB9560;
      v21 = &qword_221BE49F0;
LABEL_28:
      sub_2219A1CC8(v0, v20, v21);
LABEL_29:
      v18 = 0;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_14();
    sub_221A857F0();
LABEL_21:
    v20 = &qword_27CFB9A28;
    v21 = &qword_221BDAE38;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_20_8(v0 + v14);
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_5:
  sub_2219A1CC8(v0, &qword_27CFB9560, &qword_221BE49F0);
  OUTLINED_FUNCTION_142_1();
  if (!v19 || *(v6 + 8) != *(v4 + 8) || *(v6 + 16) != *(v4 + 16) || *(v6 + 24) != *(v4 + 24) || *(v6 + 32) != *(v4 + 32) || *(v6 + 40) != *(v4 + 40) || *(v6 + 48) != *(v4 + 48) || *(v6 + 56) != *(v4 + 56) || *(v6 + 57) != *(v4 + 57) || *(v6 + 58) != *(v4 + 58) || *(v6 + 59) != *(v4 + 59))
  {
    goto LABEL_29;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v17 = sub_221A8395C(v15, v16, MEMORY[0x277D216D0]);
  v18 = OUTLINED_FUNCTION_149_1(v17);
LABEL_30:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A81818()
{
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_123_1();

  return v1(v0);
}

uint64_t sub_221A81880(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_221A8191C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A20, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, &unk_221BD9370);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A819BC(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, &unk_221BD93A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A81A84(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, &unk_221BD93A8);

  return sub_221BCCB48();
}

void sub_221A81B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_151_2();
  v6 = v5;
  OUTLINED_FUNCTION_2_29();
  if (!v7 || (OUTLINED_FUNCTION_12_7(), sub_221BCCBF8(), !v4))
  {
    v6(0);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A81B80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_32_7(a1);
  v8 = v4 == v7 && v5 == v6;
  if (!v8 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v11 = sub_221A8395C(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v11) & 1;
}

uint64_t sub_221A81C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A30, type metadata accessor for AppIntentsProtobuf_SystemProtocol, &unk_221BD9208);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A81D28(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol, &unk_221BD9240);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A81DF0(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol, &unk_221BD9240);

  return sub_221BCCB48();
}

uint64_t sub_221A81E9C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDBE8);
  __swift_project_value_buffer(v0, qword_27CFDDBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "p1";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "p2";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A8205C()
{
  OUTLINED_FUNCTION_128_1();
  while (1)
  {
    result = sub_221BCC998();
    if (v1 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v7 = v2 + 8;
LABEL_8:
      v0(v7, v4, v3);
    }

    else if (result == 1)
    {
      v7 = v2;
      goto LABEL_8;
    }
  }
}

uint64_t sub_221A820D0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_13();
  if (!*v1 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC28(), !v2))
  {
    if (!*(v3 + 8) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC28(), !v2))
    {
      type metadata accessor for AppIntentsProtobuf_UUID(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221A82150(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v6 = sub_221A8395C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v6) & 1;
}

uint64_t sub_221A8222C()
{
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_123_1();

  return v1(v0);
}

uint64_t sub_221A82294(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_221A82344(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A38, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A823E4(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A824AC(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);

  return sub_221BCCB48();
}

void sub_221A82544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_151_2();
  v6 = *v4;
  v7 = v4[1];
  v9 = v8;
  switch(v7 >> 62)
  {
    case 1uLL:
      v10 = v6;
      v11 = v6 >> 32;
      goto LABEL_6;
    case 2uLL:
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);
LABEL_6:
      if (v10 != v11)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_12_7();
      sub_221BCCBA8();
      if (!v5)
      {
LABEL_8:
        v9(0);
        OUTLINED_FUNCTION_30_7();
      }

      OUTLINED_FUNCTION_152_2();
      return;
  }
}

uint64_t sub_221A82674(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A40, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F38);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A82714(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A827DC(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);

  return sub_221BCCB48();
}

uint64_t sub_221A828A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_221BCCC78();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_55_3();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_221BD19E0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  sub_221BCCC48();
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 104))(v13, v14);
  return sub_221BCCC58();
}

uint64_t sub_221A82A00()
{
  OUTLINED_FUNCTION_128_1();
  while (1)
  {
    result = sub_221BCC998();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_131_3();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_221A82A60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_32_7(a1);
  if ((MEMORY[0x223DA21A0](v4) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v7 = sub_221A8395C(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v7) & 1;
}

uint64_t sub_221A82B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A48, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8DD0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A82BF8(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A82CC0(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);

  return sub_221BCCB48();
}

uint64_t sub_221A82D6C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDC30);
  __swift_project_value_buffer(v0, qword_27CFDDC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "viewData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "containerBundleIdentifier";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "targetBundleIdentifier";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 20;
  *v14 = "snippetModelBundleIdentifier";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 21;
  *v16 = "snippetModelData";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A82FF4()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 21:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A830D0(v3, v4, v5, v6);
        break;
      case 10:
        OUTLINED_FUNCTION_4_18();
        sub_221A7F150();
        break;
      case 11:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 20:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA18();
        break;
    }
  }

  return result;
}

void sub_221A83134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (sub_221AE9494(*v3, *(v5 + 8)) || (OUTLINED_FUNCTION_12_7(), sub_221BCCBA8(), !v4))
  {
    OUTLINED_FUNCTION_1_34();
    sub_221A7F238();
    if (!v4)
    {
      OUTLINED_FUNCTION_1_34();
      sub_221A7A888();
      OUTLINED_FUNCTION_1_34();
      sub_221A7C03C();
      v6 = OUTLINED_FUNCTION_3_21();
      sub_221A83228(v6, v7, v8, v9);
      type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A83228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v6 = a1 + *(result + 36);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_2219EBFC8(*v6, *(v6 + 8));
    sub_221BCCBA8();
    return sub_2219EC02C(v8, v7);
  }

  return result;
}

uint64_t sub_221A832C8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_32_7(a1);
  if ((MEMORY[0x223DA21A0](v1) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_18_10();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_10();
  if (v10)
  {
    if (!v8)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v9);
    v13 = v7 && v11 == v12;
    if (!v13 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_10();
  if (v16)
  {
    if (!v14)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v15);
    v19 = v7 && v17 == v18;
    if (!v19 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_5();
  if (!(!v7 & v22))
  {
    OUTLINED_FUNCTION_122_3();
    if (!(!v23 & v22))
    {
      v29 = OUTLINED_FUNCTION_6_16();
      v30 = MEMORY[0x223DA21A0](v29);
      v31 = OUTLINED_FUNCTION_14();
      sub_2219EC02C(v31, v32);
      v33 = OUTLINED_FUNCTION_56_3();
      sub_2219EC02C(v33, v34);
      if (v30)
      {
        goto LABEL_39;
      }

      return 0;
    }

LABEL_36:
    v24 = OUTLINED_FUNCTION_6_16();
    sub_2219EC02C(v24, v25);
    v26 = OUTLINED_FUNCTION_14();
    sub_2219EC02C(v26, v27);
    return 0;
  }

  OUTLINED_FUNCTION_122_3();
  if (!(!v7 & v22))
  {
    goto LABEL_36;
  }

  v20 = OUTLINED_FUNCTION_6_16();
  sub_2219EC02C(v20, v21);
LABEL_39:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  v37 = sub_221A8395C(v35, v36, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v37) & 1;
}

uint64_t sub_221A83448(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_221BCE308();
  a1(0);
  sub_221A8395C(a2, a3, a4);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221A834F0()
{
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_123_1();

  return v1(v0);
}

uint64_t sub_221A83558(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_221A835F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9A50, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8C68);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A83694@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_221BCCC78();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_221A83730(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8CA0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A837F8(uint64_t a1, uint64_t a2)
{
  sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8CA0);

  return sub_221BCCB48();
}

uint64_t sub_221A83874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_221BCE308();
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221A8395C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221A851FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A8554C()
{
  OUTLINED_FUNCTION_69_1();
  v1(0);
  OUTLINED_FUNCTION_2_1();
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  return v0;
}

uint64_t sub_221A855A4()
{
  OUTLINED_FUNCTION_69_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2_1();
  v3 = OUTLINED_FUNCTION_0_0();
  v4(v3);
  return v0;
}

unint64_t sub_221A855FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9938;
  if (!qword_27CFB9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9938);
  }

  return result;
}

uint64_t sub_221A85650(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_221B9E9B8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_221BCE1B8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221A857F0()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2(v1);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_221A85844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB99A8;
  if (!qword_27CFB99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB99A8);
  }

  return result;
}

void sub_221A858C0(uint64_t a1)
{
  sub_221A733D0(319, &qword_27CFB9A68, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      sub_221A733D0(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221A7448C(319, &qword_27CFB9610, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_116Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_19_9(*v0);
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_108_3();
  v4 = OUTLINED_FUNCTION_10_9(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_117Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_141_2();
    OUTLINED_FUNCTION_109_1();
    v4 = OUTLINED_FUNCTION_41_3(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_221A85AF0(uint64_t a1)
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB9A88, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v3 <= 0x3F)
      {
        sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_221A7448C(319, &qword_27CFB9610, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_221A85C80(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB94E8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221A733D0(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_221A85DF8(uint64_t a1)
{
  sub_221A733D0(319, &qword_27CFB9AB0, type metadata accessor for AppIntentsProtobuf_DynamicOption, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      sub_221A733D0(319, &qword_27CFB94E8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_221A85F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  result = sub_221BCC8D8();
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_116_4(result, v5, v6, v7, v8, v9, v10, v11, *v12, v12[4], 0, 0, v13, v14, a4, v16);
    return 0;
  }

  return result;
}

uint64_t sub_221A85FE0(uint64_t a1)
{
  v1 = sub_221BCC8D8();
  if (v2 <= 0x3F)
  {
    sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_221A7448C(319, &qword_27CFB9508, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_221A733D0(319, &qword_27CFB9AD8, type metadata accessor for AppIntentsProtobuf_Error, MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t __swift_get_extra_inhabitant_index_71Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_19_9(*(v0 + 8));
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_129_3();
  v4 = OUTLINED_FUNCTION_10_9(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_72Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v0)
  {
    OUTLINED_FUNCTION_107_4();
  }

  else
  {
    OUTLINED_FUNCTION_141_2();
    OUTLINED_FUNCTION_130_2();
    v2 = OUTLINED_FUNCTION_41_3(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_221A86280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221BCC8D8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_16()
{
  sub_2219EBFB4(v1, v0);
  sub_2219EBFB4(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_19_9@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_221BCC8B8();
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1)
{

  return sub_221BCD338();
}

void OUTLINED_FUNCTION_64_4()
{
  v2 = (v0 + *(v1 + 28));
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_68_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_70_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_71_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_72_4()
{
  type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_73_5()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_81_4()
{
  type metadata accessor for AppIntentsProtobuf_ActionOutput(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_86_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_89_4()
{

  return sub_221A857F0();
}

void OUTLINED_FUNCTION_92_4(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return sub_221A82A00();
}

uint64_t OUTLINED_FUNCTION_94_3()
{

  return sub_221A82A00();
}

uint64_t OUTLINED_FUNCTION_99_2(uint64_t a1)
{

  return sub_221BCC8C8();
}

uint64_t OUTLINED_FUNCTION_106_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_116_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_118_3(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_119_3()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_126_2()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_134_2()
{
}

uint64_t OUTLINED_FUNCTION_137_2(uint64_t a1, __n128 a2)
{
  *v2 = a2;

  return sub_221BCC8C8();
}

uint64_t OUTLINED_FUNCTION_138_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_139_1()
{

  return sub_221A8554C();
}

uint64_t OUTLINED_FUNCTION_141_2()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_143_2(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return sub_221BCD2C8();
}

uint64_t OUTLINED_FUNCTION_148_2(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_149_1(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_150_1(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_153_2()
{

  return sub_221A857F0();
}

uint64_t sub_221A86F0C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_314(a1);
  sub_221A1AB78(v3, v1);
  return sub_221BCE358();
}

uint64_t sub_221A86F4C(uint64_t a1)
{
  OUTLINED_FUNCTION_314(a1);
  sub_221BCE348();
  return sub_221BCE358();
}

uint64_t sub_221A86FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_314(a1);
  v5 = a3(v4);
  OUTLINED_FUNCTION_394(v5, v6);
  return sub_221BCE358();
}

uint64_t sub_221A8702C(uint64_t a1)
{
  OUTLINED_FUNCTION_270_0(a1);
  MEMORY[0x223DA4060](v1 + 100);
  return sub_221BCE358();
}

uint64_t sub_221A8706C(uint64_t a1)
{
  OUTLINED_FUNCTION_270_0(a1);
  OUTLINED_FUNCTION_364();
  return sub_221BCE358();
}

uint64_t sub_221A870AC(uint64_t a1)
{
  OUTLINED_FUNCTION_270_0(a1);
  MEMORY[0x223DA4060](v1 + 801);
  return sub_221BCE358();
}

uint64_t sub_221A870EC(uint64_t a1)
{
  OUTLINED_FUNCTION_270_0(a1);
  OUTLINED_FUNCTION_364();
  return sub_221BCE358();
}

uint64_t sub_221A87134(uint64_t a1)
{
  OUTLINED_FUNCTION_270_0(a1);
  MEMORY[0x223DA4060](v1 + 301);
  return sub_221BCE358();
}

uint64_t sub_221A87174(uint64_t a1)
{
  OUTLINED_FUNCTION_270_0(a1);
  OUTLINED_FUNCTION_364();
  return sub_221BCE358();
}

uint64_t sub_221A871BC(uint64_t a1)
{
  OUTLINED_FUNCTION_314(a1);
  MEMORY[0x223DA4060](a1);
  return sub_221BCE358();
}

uint64_t sub_221A871FC(uint64_t a1)
{
  OUTLINED_FUNCTION_270_0(a1);
  MEMORY[0x223DA4060](v1 + 800);
  return sub_221BCE358();
}

uint64_t sub_221A8723C(uint64_t a1)
{
  OUTLINED_FUNCTION_314(a1);
  sub_221BCE338();
  return sub_221BCE358();
}

uint64_t sub_221A8727C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  sub_221BCE338();
  return sub_221BCE358();
}

uint64_t sub_221A872B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  Entitlement.Constants.rawValue.getter();
  sub_221BCD448();

  return sub_221BCE358();
}

uint64_t sub_221A87314(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  MEMORY[0x223DA4060](v2 + 100);
  return sub_221BCE358();
}

uint64_t sub_221A8735C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  MEMORY[0x223DA4060](v2 + 301);
  return sub_221BCE358();
}

uint64_t sub_221A8739C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  OUTLINED_FUNCTION_364();
  return sub_221BCE358();
}

uint64_t sub_221A873E4(uint64_t a1, uint64_t a2)
{
  sub_221BCE308();
  MEMORY[0x223DA4060](a2);
  return sub_221BCE358();
}

uint64_t sub_221A87428(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  sub_221BCE348();
  return sub_221BCE358();
}

uint64_t sub_221A87468(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  sub_221A1AB78(v4, v2);
  return sub_221BCE358();
}

uint64_t sub_221A874A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  MEMORY[0x223DA4060](v2 + 801);
  return sub_221BCE358();
}

uint64_t sub_221A874E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  OUTLINED_FUNCTION_364();
  return sub_221BCE358();
}

uint64_t sub_221A87524(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  MEMORY[0x223DA4060](v2 + 800);
  return sub_221BCE358();
}

uint64_t sub_221A87564(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  OUTLINED_FUNCTION_364();
  return sub_221BCE358();
}

uint64_t sub_221A875E4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_221BCE308();
  v6 = a4(v5);
  OUTLINED_FUNCTION_394(v6, v7);
  return sub_221BCE358();
}

uint64_t sub_221A87638(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  sub_221BCD448();

  return sub_221BCE358();
}

uint64_t sub_221A876E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_337(a1, a2);
  sub_221BCD448();

  return sub_221BCE358();
}

void sub_221A87734(uint64_t a1)
{
  sub_221BCC8C8();
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  OUTLINED_FUNCTION_68_2(*(v1 + 20));
}

void sub_221A87768(uint64_t a2@<X8>)
{
  sub_221BCC8C8();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_68_2(*(v3 + 20));
  OUTLINED_FUNCTION_101_3();
  *v4 = 0;
  *(v4 + 4) = 1;
  *(a2 + *(v5 + 28)) = 2;
}

uint64_t sub_221A877B8()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 57, v1);
  return *(v0 + 57) & 1;
}

uint64_t sub_221A877F0()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1(v5 + 57, v4);
  *(v5 + 57) = v0 & 1;
  return result;
}

BOOL sub_221A87854()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 57, v1);
  return OUTLINED_FUNCTION_301(*(v0 + 57));
}

uint64_t sub_221A8788C()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 58, v1);
  return *(v0 + 58) & 1;
}

uint64_t sub_221A878C4()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1(v5 + 58, v4);
  *(v5 + 58) = v0 & 1;
  return result;
}

BOOL sub_221A87928()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 58, v1);
  return OUTLINED_FUNCTION_301(*(v0 + 58));
}

uint64_t sub_221A87960()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 59, v1);
  return *(v0 + 59) & 1;
}

uint64_t sub_221A87998()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1(v5 + 59, v4);
  *(v5 + 59) = v0 & 1;
  return result;
}

BOOL sub_221A879FC()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 59, v1);
  return OUTLINED_FUNCTION_301(*(v0 + 59));
}

double sub_221A87A34()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 64, v1);
  result = *(v0 + 64);
  if (*(v0 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_221A87A78(double a1)
{
  v3 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    sub_221A91E70();
    v6 = v7;
    *(v1 + v3) = v7;
  }

  result = OUTLINED_FUNCTION_228_1(v6 + 64, v5);
  *(v6 + 64) = a1;
  *(v6 + 72) = 0;
  return result;
}

BOOL sub_221A87B04()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 64, v1);
  return (*(v0 + 72) & 1) == 0;
}

uint64_t sub_221A87B40()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 80, v1);
  if (!*(v0 + 88))
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A87B90()
{
  v4 = OUTLINED_FUNCTION_52_6();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v4);
  v6 = OUTLINED_FUNCTION_307(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_124_3(v9);
  }

  OUTLINED_FUNCTION_228_1(v8 + 80, v7);
  *(v8 + 80) = v2;
  *(v8 + 88) = v0;
}

BOOL sub_221A87C0C()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 80, v1);
  return *(v0 + 88) != 0;
}

uint64_t sub_221A87C48()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 96, v1);
  if (!*(v0 + 104))
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A87C98()
{
  v4 = OUTLINED_FUNCTION_52_6();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v4);
  v6 = OUTLINED_FUNCTION_307(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_124_3(v9);
  }

  OUTLINED_FUNCTION_228_1(v8 + 96, v7);
  *(v8 + 96) = v2;
  *(v8 + 104) = v0;
}

BOOL sub_221A87D14()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 96, v1);
  return *(v0 + 104) != 0;
}

uint64_t sub_221A87D50()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 112, v1);
  return *(v0 + 112) & 1;
}

uint64_t sub_221A87D88()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1(v5 + 112, v4);
  *(v5 + 112) = v0 & 1;
  return result;
}

BOOL sub_221A87DEC()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 112, v1);
  return OUTLINED_FUNCTION_301(*(v0 + 112));
}

uint64_t sub_221A87E24()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 121, v1);
  return *(v0 + 121) & 1;
}

uint64_t sub_221A87E5C()
{
  v3 = OUTLINED_FUNCTION_172_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_348(v6);
  }

  result = OUTLINED_FUNCTION_228_1(v5 + 121, v4);
  *(v5 + 121) = v0 & 1;
  return result;
}

BOOL sub_221A87EC0()
{
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_191_2(v0 + 121, v1);
  return OUTLINED_FUNCTION_301(*(v0 + 121));
}

uint64_t sub_221A87EF8@<X0>(_OWORD *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_29_8();
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v6);
  OUTLINED_FUNCTION_106_3(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment, v10);
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  OUTLINED_FUNCTION_22_9(v2);
  if (v8)
  {
    sub_221A70CBC(a1);
    result = OUTLINED_FUNCTION_22_9(v2);
    if (!v8)
    {
      return sub_2219A1CC8(v2, &unk_27CFBB740, &qword_221BE09F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A87FF8()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A91E70();
    OUTLINED_FUNCTION_124_3(v4);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v5 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A880EC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = MEMORY[0x277D84F90];
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  sub_221BCC8C8();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  OUTLINED_FUNCTION_139_2(v3);
  v4 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  OUTLINED_FUNCTION_139_2(v4);
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  OUTLINED_FUNCTION_139_2(v5);
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_139_2(v6);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v7 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void sub_221A8819C()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_345();
  v4 = type metadata accessor for AppIntentsProtobuf_Value(v3);
  v5 = OUTLINED_FUNCTION_67_4(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  v22 = v6;
  v7 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_Error(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = (v10 - v9);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  OUTLINED_FUNCTION_57_6();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_152_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA438, &qword_221BE0AA0);
  OUTLINED_FUNCTION_8_1(v15);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_282_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_115_2();
    sub_221ADFEBC();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_6_17();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v2, v2[1], *v11, v11[1]))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v20, v21, MEMORY[0x277D216D0]);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_35();
LABEL_12:
    sub_221ADFE28();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_115_2();
    sub_221ADFEBC();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      OUTLINED_FUNCTION_10_14();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v1, v1[1], *v22, v22[1]))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v18, v19, MEMORY[0x277D216D0]);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_4_19();
      sub_221ADFE28();
      OUTLINED_FUNCTION_4_19();
LABEL_18:
      sub_221ADFE28();
      OUTLINED_FUNCTION_78_0();
      sub_221ADFE28();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_4_19();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_115_2();
  sub_221ADFEBC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_13:
    sub_2219A1CC8(v0, &qword_27CFBA438, &qword_221BE0AA0);
    goto LABEL_19;
  }

  sub_221ADFE28();
LABEL_19:
  OUTLINED_FUNCTION_22();
}

void sub_221A88564()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_250_1();
  type metadata accessor for AppIntentsProtobuf_Error(v3);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v5 = OUTLINED_FUNCTION_98_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_275();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_330();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA458, &qword_221BE0AB8);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_177_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_358() == 1)
    {
      sub_221ADFE28();
      goto LABEL_10;
    }

LABEL_6:
    sub_2219A1CC8(v0, &qword_27CFBA458, &qword_221BE0AB8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_358() == 1)
  {
    OUTLINED_FUNCTION_1_35();
    sub_221ADFE28();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_17();
  sub_221ADFDB4();
  if (MEMORY[0x223DA21A0](*v1, v1[1], *v2, v2[1]))
  {
    OUTLINED_FUNCTION_396();
    OUTLINED_FUNCTION_0_41();
    v12 = sub_221ADB35C(v10, v11, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_311(v12);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_77_5();
  sub_221ADFE28();
LABEL_10:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A887E8()
{
  OUTLINED_FUNCTION_281_0();
  v1(0);
  OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_322();
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_221A88860()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_345();
  v3 = type metadata accessor for AppIntentsProtobuf_Value(v2);
  v4 = OUTLINED_FUNCTION_58_7(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_13();
  v18 = type metadata accessor for AppIntentsProtobuf_Error(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_246_1();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v7);
  v9 = (&v18 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA478, &qword_221BE0AD0);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_18_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() == 1)
    {
      OUTLINED_FUNCTION_10_14();
      sub_221ADFDB4();
      v12 = OUTLINED_FUNCTION_205_1();
      if (MEMORY[0x223DA21A0](v12))
      {
        OUTLINED_FUNCTION_267_0();
        OUTLINED_FUNCTION_0_41();
        v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v15);
      }

      OUTLINED_FUNCTION_4_19();
      sub_221ADFE28();
      OUTLINED_FUNCTION_4_19();
LABEL_14:
      sub_221ADFE28();
      OUTLINED_FUNCTION_76_2();
      sub_221ADFE28();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_19();
  }

  else
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() != 1)
    {
      OUTLINED_FUNCTION_6_17();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v9, v9[1], *v1, v1[1]))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v16, v17, MEMORY[0x277D216D0]);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_1_35();
  }

  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA478, &qword_221BE0AD0);
LABEL_15:
  OUTLINED_FUNCTION_22();
}

void sub_221A88BA8()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_250_1();
  type metadata accessor for AppIntentsProtobuf_Error(v3);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v5 = OUTLINED_FUNCTION_98_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_275();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_330();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA498, &qword_221BE0AE8);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_177_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_358() == 1)
    {
      OUTLINED_FUNCTION_45_8();
      sub_221ADFE28();
      goto LABEL_10;
    }

LABEL_6:
    sub_2219A1CC8(v0, &qword_27CFBA498, &qword_221BE0AE8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_358() == 1)
  {
    OUTLINED_FUNCTION_1_35();
    sub_221ADFE28();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_17();
  sub_221ADFDB4();
  if (MEMORY[0x223DA21A0](*v1, v1[1], *v2, v2[1]))
  {
    OUTLINED_FUNCTION_396();
    OUTLINED_FUNCTION_0_41();
    v12 = sub_221ADB35C(v10, v11, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_311(v12);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_45_8();
  sub_221ADFE28();
LABEL_10:
  OUTLINED_FUNCTION_22();
}

void sub_221A88E1C()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_250_1();
  type metadata accessor for AppIntentsProtobuf_Error(v3);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v5 = OUTLINED_FUNCTION_98_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_275();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_330();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4B0, &qword_221BE0B00);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_177_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_358() == 1)
    {
      OUTLINED_FUNCTION_54_6();
      sub_221ADFE28();
      goto LABEL_10;
    }

LABEL_6:
    sub_2219A1CC8(v0, &qword_27CFBA4B0, &qword_221BE0B00);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_358() == 1)
  {
    OUTLINED_FUNCTION_1_35();
    sub_221ADFE28();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_17();
  sub_221ADFDB4();
  if (MEMORY[0x223DA21A0](*v1, v1[1], *v2, v2[1]))
  {
    OUTLINED_FUNCTION_396();
    OUTLINED_FUNCTION_0_41();
    v12 = sub_221ADB35C(v10, v11, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_311(v12);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_54_6();
  sub_221ADFE28();
LABEL_10:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A89090@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  OUTLINED_FUNCTION_139_2(v2);
  return sub_221BCC8C8();
}

uint64_t sub_221A890EC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v3 = OUTLINED_FUNCTION_259_0();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(v3);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (a1 + *(v2 + 24));
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return sub_221BCC8C8();
}

uint64_t sub_221A89158@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v3 = OUTLINED_FUNCTION_333();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(v3);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(v1 + *(v2 + 24)) = MEMORY[0x277D84F90];
  sub_221BCC8C8();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  result = OUTLINED_FUNCTION_139_2(v8);
  v10 = v1 + *(v2 + 36);
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_221A891E0()
{
  OUTLINED_FUNCTION_281_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2(0);
  v3 = OUTLINED_FUNCTION_259_0();
  v0(v3);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  return sub_221BCC8C8();
}

uint64_t sub_221A89248@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v1 = OUTLINED_FUNCTION_333();
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(v1);
  OUTLINED_FUNCTION_139_2(v2);
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v3 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_221A892B0(uint64_t a2@<X8>)
{
  sub_221BCC8C8();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  OUTLINED_FUNCTION_68_2(*(v3 + 20));
  *(a2 + *(v4 + 24)) = 2;
}

void sub_221A892F0()
{
  OUTLINED_FUNCTION_21();
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v2 = OUTLINED_FUNCTION_8_1(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_30_8();
  v3 = OUTLINED_FUNCTION_133_3();
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(v3);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  v6 = OUTLINED_FUNCTION_133_3();
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(v6);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_8();
  v9 = OUTLINED_FUNCTION_133_3();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(v9);
  v11 = OUTLINED_FUNCTION_8_1(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_12(v12, v31);
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v14 = OUTLINED_FUNCTION_8_1(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_8();
  v15 = OUTLINED_FUNCTION_133_3();
  v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(v15);
  v17 = OUTLINED_FUNCTION_8_1(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_30_8();
  v18 = OUTLINED_FUNCTION_133_3();
  v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(v18);
  v20 = OUTLINED_FUNCTION_8_1(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_8();
  v21 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(v21);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_275();
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_163();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA518, &unk_221BE0B60);
  OUTLINED_FUNCTION_8_1(v29);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_18_7();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 1)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_24();
      sub_221AAB544();
      goto LABEL_16;
    case 2u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 2)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      sub_221AA6734();
      sub_221ADFE28();
      goto LABEL_22;
    case 3u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() == 3)
      {
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_325();
        OUTLINED_FUNCTION_324();
        sub_221AA1AE8();
        sub_221ADFE28();
LABEL_22:
        sub_221ADFE28();
        OUTLINED_FUNCTION_128_2();
        sub_221ADFE28();
      }

      else
      {
        OUTLINED_FUNCTION_195_2();
LABEL_20:
        sub_221ADFE28();
        sub_2219A1CC8(v0, &qword_27CFBA518, &unk_221BE0B60);
      }

      OUTLINED_FUNCTION_22();
      return;
    case 4u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 4)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_118();
      sub_221AACB88();
      sub_221ADFE28();
      goto LABEL_22;
    case 5u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 5)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      sub_221AAE2B0();
      sub_221ADFE28();
      goto LABEL_22;
    case 6u:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354() != 6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_24();
      sub_221AA4878();
LABEL_16:
      sub_221ADFE28();
      goto LABEL_22;
    default:
      OUTLINED_FUNCTION_16_11();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_354())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_306();
      sub_221ADFDB4();
      sub_221AA2F04();
      sub_221ADFE28();
      goto LABEL_22;
  }
}

uint64_t sub_221A899E4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  OUTLINED_FUNCTION_101_3();
  return sub_221BCC8C8();
}

void sub_221A89A18()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_163();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA580, &qword_221BE0BE8);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_123_2();
    sub_221ADFEBC();
    v22 = *(v3 + 8);
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v15 && v22 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2(v23, v24, v25);
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_27_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_123_2();
    sub_221ADFEBC();
    v22 = *(v2 + 8);
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_123_2();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v15 = v15 && v13 == v14;
    if (v15 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v18 = v15 && v16 == v17;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v21);
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA580, &qword_221BE0BE8);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A89CD0()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_163();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA528, &qword_221BE0B78);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_122_4();
    sub_221ADFEBC();
    v22 = *(v3 + 8);
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v15 && v22 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2(v23, v24, v25);
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_26_8();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_122_4();
    sub_221ADFEBC();
    v22 = *(v2 + 8);
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_122_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v15 = v15 && v13 == v14;
    if (v15 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v18 = v15 && v16 == v17;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v21);
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA528, &qword_221BE0B78);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A89F88()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_163();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5C0, &unk_221BE0C30);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_121_4();
    sub_221ADFEBC();
    v22 = *(v3 + 8);
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v15 && v22 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2(v23, v24, v25);
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_25_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_121_4();
    sub_221ADFEBC();
    v22 = *(v2 + 8);
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_121_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v15 = v15 && v13 == v14;
    if (v15 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v18 = v15 && v16 == v17;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v21);
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA5C0, &unk_221BE0C30);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8A240()
{
  v1 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(v3);
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  OUTLINED_FUNCTION_22_9(v0);
  if (v4)
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    OUTLINED_FUNCTION_386();
    sub_221BCC8C8();
    result = OUTLINED_FUNCTION_22_9(v0);
    if (!v4)
    {
      return sub_2219A1CC8(v0, &qword_27CFBA3D0, &qword_221BE0A18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_260_0();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

void sub_221A8A32C()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_163();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA558, &unk_221BE0BB0);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_120_2();
    sub_221ADFEBC();
    v22 = *(v3 + 8);
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v15 && v22 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2(v23, v24, v25);
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_24_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_120_2();
    sub_221ADFEBC();
    v22 = *(v2 + 8);
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_120_2();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v15 = v15 && v13 == v14;
    if (v15 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v18 = v15 && v16 == v17;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v21);
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA558, &unk_221BE0BB0);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8A5E4@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  OUTLINED_FUNCTION_101_3();
  return sub_221BCC8C8();
}