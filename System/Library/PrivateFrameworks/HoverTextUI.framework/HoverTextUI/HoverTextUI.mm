void *sub_2546172FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25461734C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25461736C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_254617398(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2546173B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_254617410()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254617458()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2546174B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B760, &qword_254682CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254617524()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25461755C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_2546175D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B760, &qword_254682CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254617670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B840, &qword_254682D98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2546176E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25467FB50();
  *a1 = result;
  return result;
}

uint64_t sub_254617738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25467FBB0();
  *a1 = result;
  return result;
}

uint64_t sub_2546177D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2546178AC()
{
  MEMORY[0x259C15640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2546178E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25461798C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25467F5A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_254617A5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25467F5A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_254617B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BCC0, &qword_254683A78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B750, &qword_254682CB0);
  sub_25463F24C();
  sub_25462C9F0(&qword_27F60B910, &qword_27F60B750, &qword_254682CB0, MEMORY[0x277CDF728]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_254617C00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254617C38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254617C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F60BE20, &unk_254683D90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_254617D58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F60BE20, &unk_254683D90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_254617E08(void *a1)
{
  sub_25467FAE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BD98, &qword_254683D00);
  sub_25467FAE0();
  type metadata accessor for CGSize(255);
  swift_getWitnessTable();
  sub_25462C9F0(&qword_27F60BDA0, &qword_27F60BD98, &qword_254683D00, MEMORY[0x277CE0598]);
  swift_getWitnessTable();
  sub_254644268(&qword_27F60BDA8, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  swift_getOpaqueTypeMetadata2();
  sub_25467FAE0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_254680170();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDB0, &qword_254683D08);
  sub_25467FAE0();
  swift_getWitnessTable();
  sub_25462C9F0(&qword_27F60BDB8, &qword_27F60BDB0, &qword_254683D08, &protocol conformance descriptor for AnimationCompletionModifier<A>);
  swift_getWitnessTable();
  sub_25467FA60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDC0, &qword_254683D10);
  sub_25467FAE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDC8, &qword_254683D18);
  sub_25467FAE0();
  swift_getWitnessTable();
  sub_25462C9F0(&qword_27F60BE08, &qword_27F60BDC0, &qword_254683D10, MEMORY[0x277CDF520]);
  swift_getWitnessTable();
  sub_25462C9F0(&qword_27F60BE18, &qword_27F60BDC8, &qword_254683D18, MEMORY[0x277CE07C8]);
  return swift_getWitnessTable();
}

uint64_t sub_254618184()
{
  v1 = sub_25467F9C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25461820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HoverTextMarqueeingContentView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = sub_25467F9C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v18 = *(v10 + 64);
  v12 = v4 + v7;
  if (*(v4 + v7 + 40))
  {
  }

  if (*(v12 + 56))
  {
  }

  v13 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418, &qword_254681E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_25467FAB0();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  else
  {
  }

  v15 = v6 | v11;
  v16 = (v7 + v8 + v11) & ~v11;

  (*(v10 + 8))(v4 + v16, v9);

  return MEMORY[0x2821FE8E8](v4, v16 + v18, v15 | 7);
}

uint64_t sub_25461841C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HoverTextMarqueeingContentView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  v9 = v4 + v7;
  if (*(v4 + v7 + 40))
  {
  }

  if (*(v9 + 56))
  {
  }

  v10 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418, &qword_254681E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25467FAB0();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_25461860C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnimationCompletionModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_25467FD00();

  return swift_getWitnessTable();
}

uint64_t sub_25461868C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for AnimationCompletionModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(*(v5 - 8) + 8);
  v10(v4 + v8, v5);
  v10(v4 + v8 + v6[11], v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_2546187A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2546187E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254618820()
{
  MEMORY[0x259C15640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254618858()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2546188A0()
{
  swift_unknownObjectRelease();
  sub_2546561B4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25461890C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_254618970()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2546189C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HoverTextPresentationEvent(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254618A30(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for HoverTextPresentationEvent(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_254618C24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254618C84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_25461AEE8(v1, v2);
}

uint64_t sub_254618E20()
{
  MEMORY[0x259C15640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2546190A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2546190E0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_254619120()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254619238(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2546659AC(v1, v2);
}

uint64_t sub_2546192D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25461931C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_254619360(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254664F68(v1);
}

uint64_t sub_2546193D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2546194B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2546194EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254619568()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2546195B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60C3B8, &qword_254685500);
  sub_254676B30();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_254619660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C428, &qword_254685630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2546196D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C428, &qword_254685630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254619740()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2546197CC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25461980C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254619844()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25461988C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2546198C4()
{
  MEMORY[0x259C15640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254619928(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_254619940(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id HTUILocString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Htuitaggedcolo.isa)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_28667E320 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HTUIParameterizedLocString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Htuitaggedcolo.isa)];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 localizedStringForKey:v9 value:&stru_28667E320 table:@"Accessibility"];
    v13 = [v12 hasSuffix:@"%"];
    if (v13)
    {
      v14 = [v12 substringToIndex:{objc_msgSend(v12, "length") - 1}];

      v12 = v14;
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v12 arguments:&a9];

    if (v13)
    {
      v16 = [v15 stringByAppendingString:@"%"];

      v15 = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t HTDisplayIDForWindow(void *a1)
{
  v1 = [a1 screen];
  v2 = [v1 displayIdentity];
  v3 = [v2 displayID];

  return v3;
}

void _axEventHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (a5)
  {
    v9 = [a5 handler];
    v9[2](v9, a3, a4);
  }

  else
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _axEventHandler_cold_1(a3, v10);
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_25461AE38()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_25461AEE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 96) == a1 && v5 == a2;
      if (v6 || (sub_254680A90() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_25461B058()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 112);
}

uint64_t sub_25461B0F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_25461B1C8(uint64_t result)
{
  if (*(v1 + 112) == (result & 1))
  {
    *(v1 + 112) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_25461B2D8()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 113);
}

uint64_t sub_25461B378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a2 = *(v3 + 113);
  return result;
}

uint64_t sub_25461B448(uint64_t result)
{
  v2 = *(v1 + 113);
  if (v2 != 2)
  {
    if (result == 2 || ((v2 ^ result) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 113) = result;
    return result;
  }

  if (result == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F770();
}

double sub_25461B574()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 120);
}

void sub_25461B614(double a1, double a2)
{
  if (*(v2 + 120) == a1 && *(v2 + 128) == a2)
  {
    *(v2 + 120) = a1;
    *(v2 + 128) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_25461B734()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();
}

uint64_t sub_25461B7D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = a2;
}

uint64_t sub_25461B814()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 144);
}

uint64_t sub_25461B8B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_25461B984(uint64_t result)
{
  if (*(v1 + 144) == (result & 1))
  {
    *(v1 + 144) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_25461BA94()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 145);
}

uint64_t sub_25461BB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a2 = *(v3 + 145);
  return result;
}

uint64_t sub_25461BC04(uint64_t result)
{
  if (*(v1 + 145) == (result & 1))
  {
    *(v1 + 145) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_25461BD14()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 146);
}

uint64_t sub_25461BDB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a2 = *(v3 + 146);
  return result;
}

uint64_t sub_25461BE84(uint64_t result)
{
  if (*(v1 + 146) == (result & 1))
  {
    *(v1 + 146) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

double sub_25461BF9C()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 152);
}

__n128 sub_25461C040@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  result = *(v3 + 152);
  v5 = *(v3 + 168);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_25461C118(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 152), v11);
  if (result)
  {
    *(v4 + 152) = a1;
    *(v4 + 160) = a2;
    *(v4 + 168) = a3;
    *(v4 + 176) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

double *sub_25461C260(double *result, double a2, double a3, double a4, double a5)
{
  result[19] = a2;
  result[20] = a3;
  result[21] = a4;
  result[22] = a5;
  return result;
}

uint64_t sub_25461C26C()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 184);
}

uint64_t sub_25461C30C(uint64_t result)
{
  if (*(v1 + 184) == (result & 1))
  {
    *(v1 + 184) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_25461C424()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + 192);
}

uint64_t sub_25461C4C4(uint64_t result)
{
  if (*(v1 + 192) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_25461C5C8()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v1 = *(v0 + 200);

  return v1;
}

uint64_t sub_25461C678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v4 = *(v3 + 208);
  *a2 = *(v3 + 200);
  a2[1] = v4;
}

uint64_t sub_25461C724(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_25461C764(v1, v2);
}

uint64_t sub_25461C764(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 200) == a1 && *(v2 + 208) == a2;
  if (v5 || (sub_254680A90() & 1) != 0)
  {
    *(v2 + 200) = a1;
    *(v2 + 208) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_25461C8C4()
{
  v1 = v0;
  v2 = sub_25467F5A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25467F840();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25467F810();
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_25467F830();
  v12 = sub_2546806E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v2;
    v14 = v13;
    v30 = swift_slowAlloc();
    v33 = v30;
    *v14 = 136315394;
    swift_getKeyPath();
    v31 = v6;
    v32 = v1;
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    v29 = v12;
    v28 = v11;
    sub_25467F780();

    v15 = *(v1 + 200);
    v16 = *(v1 + 208);

    v17 = sub_25463CAC4(v15, v16, &v33);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    swift_getKeyPath();
    v32 = v1;
    sub_25467F780();

    v18 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
    swift_beginAccess();
    v19 = v27;
    (*(v3 + 16))(v5, v1 + v18, v27);
    sub_254626618(&qword_27F60B720, MEMORY[0x277CC8C40], MEMORY[0x277CC8C68]);
    v20 = sub_254680A70();
    v22 = v21;
    (*(v3 + 8))(v5, v19);
    v23 = sub_25463CAC4(v20, v22, &v33);

    *(v14 + 14) = v23;
    v24 = v28;
    _os_log_impl(&dword_254615000, v28, v29, "Store:%s -  Set display Text to %s", v14, 0x16u);
    v25 = v30;
    swift_arrayDestroy();
    MEMORY[0x259C155A0](v25, -1, -1);
    MEMORY[0x259C155A0](v14, -1, -1);

    return (*(v7 + 8))(v9, v31);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_25461CCE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25467F5A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_254626618(&qword_27F60B718, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v14[0] = a1;
  LOBYTE(a1) = sub_254680430();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_25461C8C4();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_25461CFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25467F5A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v8, v7, v4);
  swift_endAccess();
  sub_25461C8C4();
  return (*(v5 + 8))(v7, v4);
}

void sub_25461D0F4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType) == a1)
  {

    sub_25461FA20();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_25461D228()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();
}

uint64_t sub_25461D2D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorPreview;
  if (!*(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorPreview))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_2546800B0();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_25461D458@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_25467F5A0();
  return (*(*(v7 - 8) + 16))(a3, v9 + v6, v7);
}

uint64_t sub_25461D550(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25467F5A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_254626618(&qword_27F60B718, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v14[0] = a1;
  LOBYTE(a1) = sub_254680430();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_25461D7F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription;
  swift_beginAccess();
  v5 = sub_25467F5A0();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void *sub_25461D88C()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v1 = *(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber);
  v2 = v1;
  return v1;
}

id sub_25461D93C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v4 = *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber);
  *a2 = v4;

  return v4;
}

void sub_25461D9FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25461DA2C(v1);
}

void sub_25461DA2C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber;
  v5 = *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254626E64(0, &qword_27F60B710, 0x277CE6AD0);
  v6 = v5;
  v7 = a1;
  v8 = sub_2546807E0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

double sub_25461DC3C()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect);
}

__n128 sub_25461DCEC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  result = *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect);
  v5 = *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect + 16);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_25461DDCC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = (v4 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  result = CGRectEqualToRect(*(v4 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect), v12);
  if (result)
  {
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v9[3] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_25461E02C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();
}

uint64_t sub_25461E0E4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a4 = *(v6 + *a3);
}

uint64_t sub_25461E1F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;

  v7 = sub_25467FFC0();

  if (v7)
  {
    *(v4 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_25461E35C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v2 + *a2);
}

uint64_t sub_25461E3FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a2 = *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode);
  return result;
}

uint64_t sub_25461E4D4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

id sub_25461E5E0()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v1 = *(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);

  return v1;
}

id sub_25461E698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v4 = *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  *a2 = v4;

  return v4;
}

void sub_25461E784(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont;
  v5 = *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  sub_254626E64(0, &qword_27F60B708, 0x277D74300);
  v6 = v5;
  v7 = sub_2546807E0();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_25461E8F8()
{
  v1 = v0;
  v2 = sub_25467F5A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254680B90();
  swift_getKeyPath();
  v13 = v0;
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v6 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v7 = sub_25467F580();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x259C149B0](v7);
  swift_getKeyPath();
  v12[1] = v1;
  sub_25467F780();

  v8 = *(v1 + 104);
  if (v8)
  {
    v9 = *(v1 + 96);

    v10 = MEMORY[0x259C143D0](v9, v8);

    MEMORY[0x259C149B0](v10);
  }

  return sub_254680B70();
}

uint64_t sub_25461EB18(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v2 + *a2);
}

uint64_t sub_25461EBCC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_25461ECD0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_25461EDD4(int a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v64 = a1;
  v4 = sub_25467F840();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25467F5A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 512;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 143) = 0;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0;
  v10 = objc_opt_self();
  v11 = &off_27977F000;
  v12 = [v10 sharedInstance];
  v13 = [v12 hoverTextScrollingSpeed];

  *(v3 + 192) = v13;
  sub_25467F500();
  v14 = *(v7 + 32);
  v14(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText, v9, v6);
  v15 = [v10 sharedInstance];
  v16 = [v15 hoverTextContentType];

  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType) = v16;
  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorPreview) = 0;
  sub_25467F500();
  v14(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription, v9, v6);
  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber) = 0;
  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible) = 0;
  v17 = (v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect);
  *v17 = 0u;
  v17[1] = 0u;
  v18 = [v10 sharedInstance];
  v19 = [v18 hoverTextTextColorData];

  if (v19)
  {
    v20 = sub_25467F6C0();
    v22 = v21;

    v19 = sub_25467F6B0();
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = objc_opt_self();
  v24 = [v23 makeFromData_];

  if (v24)
  {
    v25 = [v24 color];
    v26 = sub_25467FFA0();
    sub_2546269A0(v20, v22);
  }

  else
  {
    v26 = sub_254680060();
    sub_2546269A0(v20, v22);
  }

  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__textColor) = v26;
  v27 = [v10 sharedInstance];
  v28 = [v27 hoverTextBorderColorData];

  if (v28)
  {
    v29 = sub_25467F6C0();
    v31 = v30;

    v32 = sub_25467F6B0();
  }

  else
  {
    v32 = 0;
    v29 = 0;
    v31 = 0xF000000000000000;
  }

  v33 = [v23 makeFromData_];

  if (v33)
  {
    v34 = [v33 color];
    v35 = sub_25467FFA0();
    sub_2546269A0(v29, v31);
  }

  else
  {
    v35 = sub_254680060();
    sub_2546269A0(v29, v31);
  }

  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__borderColor) = v35;
  v36 = [v10 sharedInstance];
  v37 = [v36 hoverTextBackgroundColorData];

  if (v37)
  {
    v38 = sub_25467F6C0();
    v40 = v39;

    v37 = sub_25467F6B0();
  }

  else
  {
    v38 = 0;
    v40 = 0xF000000000000000;
  }

  v41 = [v23 makeFromData_];

  if (v41)
  {
    v42 = [v41 color];
    v43 = sub_25467FFA0();
    sub_2546269A0(v38, v40);
  }

  else
  {
    v44 = [objc_opt_self() systemBackgroundColor];
    sub_25467FFA0();
    v45 = [v10 sharedInstance];
    [v45 hoverTextBackgroundOpacity];

    v43 = sub_254680050();

    sub_2546269A0(v38, v40);
  }

  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__backgroundColor) = v43;
  v46 = [v10 sharedInstance];
  v47 = [v46 hoverTextDisplayMode];

  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode) = v47;
  v48 = [objc_opt_self() systemFontOfSize_];
  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont) = v48;
  sub_25467F7B0();
  *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isOnMainDisplay) = v64 & 1;
  v49 = v66;
  *(v3 + 200) = v65;
  *(v3 + 208) = v49;
  v50 = sub_25463F4B8();
  swift_retain_n();
  sub_254622D4C();
  v51 = sub_25467F810();
  swift_beginAccess();
  (*(v68 + 16))(v67, v51, v69);

  v52 = sub_25467F830();
  v53 = sub_254680710();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134218240;
    swift_getKeyPath();
    aBlock = v50;
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F780();

    *(v54 + 4) = *(v50 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode);

    *(v54 + 12) = 2048;
    swift_getKeyPath();
    aBlock = v50;
    v11 = &off_27977F000;
    sub_25467F780();

    *(v54 + 14) = *(v50 + 192);

    _os_log_impl(&dword_254615000, v52, v53, "Using initial UI properties: displayMode: %ld. Scrolling speed: %ld", v54, 0x16u);
    MEMORY[0x259C155A0](v54, -1, -1);
  }

  else
  {
  }

  (*(v68 + 8))(v67, v69);
  sub_25463F9BC(*MEMORY[0x277D81C28], sub_2546271DC, 0);
  sub_25463F9BC(*MEMORY[0x277D81D40], sub_2546271DC, 0);
  sub_25463F9BC(*MEMORY[0x277D81D28], sub_25461F92C, 0);
  sub_25463F9BC(*MEMORY[0x277D81D38], sub_25461F934, 0);
  sub_25463F9BC(*MEMORY[0x277D81D48], sub_25461F93C, 0);
  sub_25463F9BC(*MEMORY[0x277D81D10], sub_25461F944, 0);
  sub_25463F9BC(*MEMORY[0x277D81D20], sub_25461F94C, 0);
  sub_25463F9BC(*MEMORY[0x277D81D18], sub_25461F954, 0);
  sub_25463F9BC(*MEMORY[0x277D81D30], sub_25461F95C, 0);
  v55 = [v10 *(v11 + 252)];
  v56 = v11;
  v57 = swift_allocObject();
  swift_weakInit();
  v74 = sub_254626FE0;
  v75 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_2546274BC;
  v73 = &block_descriptor_288;
  v58 = _Block_copy(&aBlock);
  swift_retain_n();

  [v55 registerUpdateBlock:v58 forRetrieveSelector:sub_25467F760() withListener:v50];

  _Block_release(v58);

  v59 = [v10 v56 + 744];
  v60 = swift_allocObject();
  swift_weakInit();
  v74 = sub_254627000;
  v75 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_2546274BC;
  v73 = &block_descriptor_292;
  v61 = _Block_copy(&aBlock);

  [v59 registerUpdateBlock:v61 forRetrieveSelector:sub_25467F760() withListener:v50];

  _Block_release(v61);

  sub_25461FA20();

  return v50;
}

uint64_t sub_25461F964(uint64_t a1, char a2)
{

  sub_25467F850();
}

uint64_t sub_25461F9A8(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_25467F850();
  }

  return result;
}

void sub_25461FA20()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  if (*(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType))
  {
    swift_getKeyPath();
    sub_25467F780();

    if (!*(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber))
    {
      sub_25461DA2C([objc_allocWithZone(MEMORY[0x277CE6AD0]) init]);
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25467F770();
  }
}

void sub_25461FBCC(uint64_t a1)
{
  v2 = v1;
  v130 = sub_25467F530();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v118[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = sub_25467F620();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = &v118[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = sub_25467F5A0();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v131 = &v118[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = type metadata accessor for HoverTextPresentationEvent(0);
  v7 = MEMORY[0x28223BE20](v135);
  v9 = &v118[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v118[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v118[-v13];
  v15 = sub_25467F840();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v136 = &v118[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v118[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v118[-v21];
  v23 = sub_25467F810();
  swift_beginAccess();
  v24 = *(v16 + 16);
  v134 = v23;
  v133 = v16 + 16;
  v132 = v24;
  v24(v22, v23, v15);
  v138 = a1;
  sub_254626A08(a1, v14);

  v25 = sub_25467F830();
  v26 = sub_2546806E0();

  v27 = os_log_type_enabled(v25, v26);
  v137 = v16;
  if (!v27)
  {

    sub_254626A6C(v14);
    v36 = v16;
    goto LABEL_14;
  }

  v119 = v26;
  v121 = v15;
  v28 = swift_slowAlloc();
  v120 = swift_slowAlloc();
  v141[0] = v120;
  *v28 = 136315394;
  swift_getKeyPath();
  v142 = v2;
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v29 = v2[25];
  v30 = v2[26];

  v31 = sub_25463CAC4(v29, v30, v141);

  *(v28 + 4) = v31;
  *(v28 + 12) = 2080;
  sub_254626A08(v14, v12);
  v32 = v12[64];
  v33 = v32 >> 6;
  if (v32 >> 6 <= 1)
  {
    if (v33)
    {
      v34 = 0xD000000000000016;
    }

    else
    {
      v34 = 0x6469447375636F46;
    }

    if (v33)
    {
      v35 = 0x8000000254686020;
    }

    else
    {
      v35 = 0xEE0065676E616843;
    }

    goto LABEL_12;
  }

  if (v33 == 2)
  {
    v35 = 0xEC0000006465676ELL;
    v34 = 0x61684365756C6156;
LABEL_12:
    v15 = v121;
    goto LABEL_13;
  }

  v85 = *v12;
  v86 = *(v12 + 1);
  v15 = v121;
  v34 = 0xD000000000000014;
  v87 = *(v12 + 5);
  v88 = *(v12 + 6) | *(v12 + 7);
  v89 = *(v12 + 4) | *(v12 + 3) | *(v12 + 2);
  if (v32 != 192 || v88 | v85 | v87 | v89 | v86)
  {
    v91 = v88 | v87 | v89 | v86;
    if (v32 != 192 || v85 != 1 || v91)
    {
      if (v32 == 192 && v85 == 2 && !v91)
      {
        v35 = 0x8000000254685FC0;
        v34 = 0xD000000000000011;
      }

      else if (v32 == 192 && v85 == 3 && !v91)
      {
        v35 = 0x8000000254685FA0;
        v34 = 0xD00000000000001DLL;
      }

      else
      {
        v35 = 0x8000000254685F80;
        v34 = 0xD000000000000016;
      }

      goto LABEL_13;
    }

    v90 = "ElementVisualUpdated";
  }

  else
  {
    v90 = "PrimaryAppsDidChange";
  }

  v35 = (v90 - 32) | 0x8000000000000000;
LABEL_13:
  sub_254626A6C(v14);
  sub_254626A6C(v12);
  v37 = sub_25463CAC4(v34, v35, v141);

  *(v28 + 14) = v37;
  _os_log_impl(&dword_254615000, v25, v119, "Store:%s - Handle event: %s", v28, 0x16u);
  v38 = v120;
  swift_arrayDestroy();
  MEMORY[0x259C155A0](v38, -1, -1);
  MEMORY[0x259C155A0](v28, -1, -1);

  v36 = v137;
LABEL_14:
  v39 = *(v36 + 8);
  v39(v22, v15);
  sub_254626A08(v138, v9);
  HoverTextPresentationEvent.processEvent()();
  v41 = v40;
  if (!v40)
  {
    sub_254620E74();
    sub_254621088(v47);
    v48 = v131;
    (*(v123 + 16))(v131, &v9[v135[7]], v124);
    swift_getKeyPath();
    v49 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
    v141[0] = v2;
    v50 = sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    v138 = v49;
    v137 = v50;
    sub_25467F780();

    v51 = *(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__textColor);

    v52 = v125;
    v53 = sub_25467F610();
    v141[0] = v51;
    sub_254626B14(v53, v54, v55);

    sub_25467F630();
    v56 = v129;
    v57 = v127;
    v58 = v130;
    (*(v129 + 104))(v127, *MEMORY[0x277CC8B78], v130);
    sub_25467F520();

    (*(v56 + 8))(v57, v58);
    (*(v126 + 8))(v52, v128);
    sub_25461CCE8(v48);
    sub_25462120C(v9);
    v59 = sub_2546218FC() & 1;
    if (v59 == *(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible))
    {
      *(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible) = v59;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v118[-16] = v2;
      v118[-8] = v59;
      v141[0] = v2;
      sub_25467F770();
    }

    v61 = v135;
    v62 = &v9[v135[8]];
    v63 = *v62;
    v64 = v62[1];

    sub_25461AEE8(v63, v64);
    v65 = &v9[v61[9]];
    v67 = *v65;
    v66 = v65[1];
    v69 = v65[2];
    v68 = v65[3];
    v70 = (v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect);
    v145.origin.x = *v65;
    v145.origin.y = v66;
    v145.size.width = v69;
    v145.size.height = v68;
    if (CGRectEqualToRect(*(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect), v145))
    {
      sub_254626A6C(v9);
      *v70 = v67;
      v70[1] = v66;
      v70[2] = v69;
      v70[3] = v68;
    }

    else
    {
      v71 = swift_getKeyPath();
      MEMORY[0x28223BE20](v71);
      *&v118[-48] = v2;
      *&v118[-40] = v67;
      *&v118[-32] = v66;
      *&v118[-24] = v69;
      *&v118[-16] = v68;
      v141[0] = v2;
      sub_25467F770();

      sub_254626A6C(v9);
    }

    return;
  }

  sub_254626A6C(v9);
  v144 = v40;
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6C0, &qword_254682990);
  v43 = swift_dynamicCast();
  v44 = v136;
  if (!v43)
  {
LABEL_27:

    v72 = v134;
    swift_beginAccess();
    v132(v44, v72, v15);

    v73 = v41;
    v74 = sub_25467F830();
    v75 = sub_2546806D0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v142 = v77;
      *v76 = 136315394;
      swift_getKeyPath();
      v144 = v2;
      sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
      sub_25467F780();

      v79 = v2[25];
      v78 = v2[26];

      v80 = sub_25463CAC4(v79, v78, &v142);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2080;
      swift_getErrorValue();
      v81 = sub_254680AC0();
      v83 = sub_25463CAC4(v81, v82, &v142);

      *(v76 + 14) = v83;
      _os_log_impl(&dword_254615000, v74, v75, "Store:%s - Will not update display text: %s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C155A0](v77, -1, -1);
      MEMORY[0x259C155A0](v76, -1, -1);

      v84 = v136;
    }

    else
    {

      v84 = v44;
    }

    v39(v84, v15);
    return;
  }

  if (v143 != 1)
  {
    sub_254626AC8(v142, v143);
    goto LABEL_27;
  }

  swift_getKeyPath();
  v141[0] = v2;
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  if (*(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType))
  {

    v45 = v131;
    sub_25467F500();
    sub_25461CCE8(v45);
    if (v2[13])
    {
      v46 = swift_getKeyPath();
      MEMORY[0x28223BE20](v46);
      *&v118[-24] = 0;
      *&v118[-16] = 0;
      *&v118[-32] = v2;
      v141[0] = v2;
      sub_25467F770();
    }

    else
    {
      v2[12] = 0;
      v2[13] = 0;
    }

    sub_25462120C(v138);
    v94 = sub_2546218FC() & 1;
    if (v94 == *(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible))
    {
      *(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible) = v94;
    }

    else
    {
      v95 = swift_getKeyPath();
      MEMORY[0x28223BE20](v95);
      *&v118[-16] = v2;
      v118[-8] = v94;
      v141[0] = v2;
      sub_25467F770();
    }

    v96 = (v138 + v135[14]);
    v98 = *v96;
    v97 = v96[1];
    v99 = (v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect);
    v146.size.width = 1.0;
    v146.size.height = 1.0;
    v146.origin.x = *v96;
    v146.origin.y = v97;
    if (CGRectEqualToRect(*(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect), v146))
    {
      *v99 = v98;
      v99[1] = v97;
      __asm { FMOV            V0.2D, #1.0 }

      *(v99 + 1) = _Q0;
    }

    else
    {
      v105 = swift_getKeyPath();
      MEMORY[0x28223BE20](v105);
      *&v118[-48] = v2;
      *&v118[-40] = v98;
      *&v118[-32] = v97;
      __asm { FMOV            V0.2D, #1.0 }

      *&v118[-24] = _Q0;
      v141[0] = v2;
      sub_25467F770();
    }
  }

  else
  {
    v92 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible;
    if (*(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible))
    {
      v93 = swift_getKeyPath();
      MEMORY[0x28223BE20](v93);
      *&v118[-16] = v2;
      v118[-8] = 0;
      v141[0] = v2;
      sub_25467F770();
    }

    else
    {

      *(v2 + v92) = 0;
    }

    v107 = v134;
    swift_beginAccess();
    v108 = v122;
    v132(v122, v107, v15);

    v109 = sub_25467F830();
    v110 = sub_2546806D0();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v140 = v112;
      *v111 = 136315138;
      swift_getKeyPath();
      v121 = v15;
      v139 = v2;
      sub_25467F780();

      v114 = v2[25];
      v113 = v2[26];

      v115 = sub_25463CAC4(v114, v113, &v140);

      *(v111 + 4) = v115;
      _os_log_impl(&dword_254615000, v109, v110, "Store:%s - No display text to show", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x259C155A0](v112, -1, -1);
      MEMORY[0x259C155A0](v111, -1, -1);

      v116 = v122;
      v117 = v121;
    }

    else
    {

      v116 = v108;
      v117 = v15;
    }

    v39(v116, v117);
  }
}

uint64_t sub_254620E74()
{
  v1 = v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  if ((*(v0 + 146) & 1) != 0 || ((v2 = [objc_opt_self() sharedInstance], v3 = objc_msgSend(v2, sel_hoverTextActivationLockEnabled), v2, !v3) || (swift_getKeyPath(), sub_25467F780(), result = , (*(v1 + 145) & 1) == 0)) && (swift_getKeyPath(), sub_25467F780(), result = , (*(v1 + 144) & 1) == 0))
  {
    swift_getKeyPath();
    sub_25467F780();

    swift_getKeyPath();
    sub_25467F780();
  }

  return result;
}

uint64_t sub_254621088(double a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for HoverTextTimer();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CBEBB8]);

  *(v3 + 16) = [v4 init];
  *(v3 + 24) = sub_254626B68;
  *(v3 + 32) = v2;
  *(v3 + 40) = a1;

  sub_25462D81C(a1);

  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F770();
}

void sub_25462120C(uint64_t a1)
{
  v33 = sub_25467F530();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25467F620();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25467F5A0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorPreview))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v25[-2] = v1;
    v25[-1] = 0;
    v37 = v1;
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  sub_25467F500();
  sub_25461D550(v8);
  swift_getKeyPath();
  v37 = v1;
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  if (*(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType))
  {
    type metadata accessor for HoverTextPresentationEvent(0);
    sub_2546248C0(&v37);
    if (v37)
    {
      v30 = v37;

      sub_25467F610();
      sub_25467F5B0();
      sub_25461D550(v8);
      swift_getKeyPath();
      v36 = v1;
      sub_25467F780();

      v10 = *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__textColor);
      swift_getKeyPath();
      v36 = v1;

      sub_25467F780();

      v36 = v1;
      swift_getKeyPath();
      sub_25467F7A0();

      v25[1] = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription;
      swift_beginAccess();
      v11 = sub_25467F610();
      v35 = v10;
      sub_254626B14(v11, v12, v13);

      sub_25467F630();
      v29 = *MEMORY[0x277CC8B78];
      v14 = v31;
      v15 = *(v31 + 104);
      v27 = v31 + 104;
      v28 = v15;
      v16 = v33;
      v15(v3);
      sub_25467F520();

      v31 = *(v14 + 8);
      (v31)(v3, v16);
      v17 = *(v34 + 8);
      v34 += 8;
      v26 = v17;
      v17(v5, v32);
      swift_endAccess();
      v36 = v1;
      swift_getKeyPath();
      sub_25467F790();

      swift_getKeyPath();
      v36 = v1;
      sub_25467F780();

      v18 = *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
      v19 = sub_25467FDA0();
      swift_getKeyPath();
      v36 = v1;
      sub_25467F780();

      v36 = v1;
      swift_getKeyPath();
      sub_25467F7A0();

      swift_beginAccess();
      v20 = sub_25467F610();
      v35 = v19;
      sub_254626BAC(v20, v21, v22);

      sub_25467F630();
      v23 = v33;
      v28(v3, v29, v33);
      sub_25467F520();

      (v31)(v3, v23);
      v26(v5, v32);
      swift_endAccess();
      v36 = v1;
      swift_getKeyPath();
      sub_25467F790();

      v24 = sub_254624E1C();
      sub_25461D2D4(v24);
      sub_254626CC4(&v37, &qword_27F60B6D8, &qword_2546829C0);
    }
  }
}

uint64_t sub_2546218FC()
{
  v73 = sub_25467F840();
  v65 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_25467F550();
  v2 = *(v68 - 8);
  v3 = MEMORY[0x28223BE20](v68);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = &v54 - v6;
  v67 = sub_25467F4F0();
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25467F5A0();
  v70 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  swift_getKeyPath();
  v75 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  v15 = v0;
  v66 = v0;
  v79 = v0;
  v74 = sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v16 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v60 = (v10 + 16);
  v59 = v17;
  v17(v14, v15 + v16, v9);
  sub_25467F4A0();
  v18 = sub_254626618(&qword_27F60B6B0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v19 = v71;
  v20 = v67;
  sub_254680670();
  v58 = v18;
  sub_254680690();
  v21 = sub_254626618(&qword_27F60B6B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  v22 = v68;
  v56 = v21;
  LOBYTE(v16) = sub_254680430();
  v23 = *(v2 + 8);
  v63 = v5;
  v24 = v5;
  v25 = v66;
  v23(v24, v22);
  v64 = v2 + 8;
  v57 = v23;
  v23(v19, v22);
  v26 = *(v69 + 1);
  v69 = v8;
  v26(v8, v20);
  v27 = *(v10 + 8);
  v28 = v70;
  v61 = v10 + 8;
  v55 = v27;
  (v27)(v14);
  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  v78 = v25;
  sub_25467F780();

  if (*(v25 + 104))
  {
    swift_getKeyPath();
    v78 = v25;
    sub_25467F780();

    v30 = *(v25 + 104);
    if (!v30)
    {
      __break(1u);
      return result;
    }

    if ((v30 & 0x2000000000000000) != 0 ? HIBYTE(v30) & 0xF : *(v25 + 96) & 0xFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }
  }

  swift_getKeyPath();
  v78 = v25;
  sub_25467F780();

  v32 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription;
  swift_beginAccess();
  v33 = v62;
  v59(v62, v25 + v32, v28);
  v34 = v69;
  sub_25467F4A0();
  v60 = v26;
  v35 = v71;
  sub_254680670();
  v36 = v63;
  sub_254680690();
  LOBYTE(v32) = sub_254680430();
  v37 = v57;
  v57(v36, v22);
  v37(v35, v22);
  v60(v34, v20);
  v55(v33, v70);
  if ((v32 & 1) == 0)
  {
LABEL_10:
    swift_getKeyPath();
    v78 = v25;
    sub_25467F780();

    v41 = v25;
    if (*(v25 + 146))
    {
      v38 = 1;
      v39 = v72;
      v42 = v73;
      v40 = v65;
    }

    else
    {
      IsHardwareKeyboardAttached = GSEventIsHardwareKeyboardAttached();
      v39 = v72;
      v42 = v73;
      v40 = v65;
      if (!IsHardwareKeyboardAttached || (v44 = [objc_opt_self() sharedInstance], v45 = objc_msgSend(v44, sel_hoverTextActivationLockEnabled), v44, v45) && (swift_getKeyPath(), v78 = v41, sub_25467F780(), , (*(v41 + 145) & 1) != 0))
      {
        v38 = 1;
      }

      else
      {
        swift_getKeyPath();
        v78 = v41;
        sub_25467F780();

        v38 = *(v41 + 144);
      }
    }
  }

  else
  {
    v38 = 0;
    v39 = v72;
    v40 = v65;
    v41 = v25;
    v42 = v73;
  }

  v46 = sub_25467F810();
  swift_beginAccess();
  (*(v40 + 16))(v39, v46, v42);

  v47 = sub_25467F830();
  v48 = sub_2546806E0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v77 = v50;
    *v49 = 136315394;
    swift_getKeyPath();
    v76 = v41;
    sub_25467F780();

    v51 = *(v41 + 200);
    v52 = *(v41 + 208);

    v53 = sub_25463CAC4(v51, v52, &v77);

    *(v49 + 4) = v53;
    *(v49 + 12) = 1024;
    *(v49 + 14) = v38;
    _os_log_impl(&dword_254615000, v47, v48, "Store:%s - determineVisibility=%{BOOL}d", v49, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x259C155A0](v50, -1, -1);
    MEMORY[0x259C155A0](v49, -1, -1);

    (*(v40 + 8))(v72, v73);
  }

  else
  {

    (*(v40 + 8))(v39, v42);
  }

  return v38;
}

void sub_25462227C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25467F840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = v1;
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  if (*(v1 + 146) == 1)
  {
    v8 = sub_25467F810();
    swift_beginAccess();
    (*(v5 + 16))(v7, v8, v4);

    v9 = sub_25467F830();
    v10 = sub_2546806D0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v11 = 136315138;
      swift_getKeyPath();
      v18 = a1;
      v19 = v2;
      HIDWORD(v16) = v10;
      sub_25467F780();

      v12 = *(v2 + 200);
      v13 = *(v2 + 208);

      v14 = sub_25463CAC4(v12, v13, &v20);
      a1 = v18;

      *(v11 + 4) = v14;
      _os_log_impl(&dword_254615000, v9, BYTE4(v16), "Store:%s - Handle Hand Event", v11, 0xCu);
      v15 = v17;
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x259C155A0](v15, -1, -1);
      MEMORY[0x259C155A0](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_25461FBCC(a1);
  }
}

void sub_254622538(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_25467F840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25467F810();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_25467F830();
  v10 = sub_254680710();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_254615000, v9, v10, "Will update UI properties", v11, 2u);
    MEMORY[0x259C155A0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (a1 > 4u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        v26 = [objc_opt_self() sharedInstance];
        v24 = [v26 hoverTextScrollingSpeed];

        if (*(v2 + 192) == v24)
        {
          return;
        }
      }

      else
      {
        if (a1 != 19)
        {
          return;
        }

        v23 = [objc_opt_self() sharedInstance];
        v24 = [v23 hoverTextContentType];

        if (*(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType) == v24)
        {
          sub_25461FA20();
          return;
        }
      }
    }

    else
    {
      if (a1 - 5 < 2)
      {
        v12 = objc_opt_self();
        v13 = [v12 sharedInstance];
        v14 = [v13 hoverTextBackgroundColorData];

        if (v14)
        {
          v15 = sub_25467F6C0();
          v17 = v16;

          v14 = sub_25467F6B0();
        }

        else
        {
          v15 = 0;
          v17 = 0xF000000000000000;
        }

        v32 = [objc_opt_self() makeFromData_];

        if (v32)
        {
          v33 = [v32 color];
          v34 = sub_25467FFA0();
          sub_2546269A0(v15, v17);
        }

        else
        {
          v35 = [objc_opt_self() systemBackgroundColor];
          sub_25467FFA0();
          v36 = [v12 sharedInstance];
          [v36 hoverTextBackgroundOpacity];

          v34 = sub_254680050();

          sub_2546269A0(v15, v17);
        }

        sub_25461E1C8(v34);
        return;
      }

      if (a1 != 7)
      {
        return;
      }

      v25 = [objc_opt_self() sharedInstance];
      v24 = [v25 hoverTextDisplayMode];

      if (*(v2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode) == v24)
      {
        return;
      }
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v44[-2] = v2;
    v44[-1] = v24;
    v44[2] = v2;
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();

    return;
  }

  if (a1 >= 3u)
  {
    if (a1 == 3)
    {
      v27 = [objc_opt_self() sharedInstance];
      v28 = [v27 hoverTextTextColorData];

      if (v28)
      {
        v29 = sub_25467F6C0();
        v31 = v30;

        v28 = sub_25467F6B0();
      }

      else
      {
        v29 = 0;
        v31 = 0xF000000000000000;
      }

      v41 = [objc_opt_self() makeFromData_];

      if (v41)
      {
        v42 = [v41 color];
        v43 = sub_25467FFA0();
        sub_2546269A0(v29, v31);
      }

      else
      {
        v43 = sub_2546403EC(3u);
        sub_2546269A0(v29, v31);
      }

      sub_25461DF74(v43);
    }

    else if (a1 == 4)
    {
      v18 = [objc_opt_self() sharedInstance];
      v19 = [v18 hoverTextBorderColorData];

      if (v19)
      {
        v20 = sub_25467F6C0();
        v22 = v21;

        v19 = sub_25467F6B0();
      }

      else
      {
        v20 = 0;
        v22 = 0xF000000000000000;
      }

      v38 = [objc_opt_self() makeFromData_];

      if (v38)
      {
        v39 = [v38 color];
        v40 = sub_25467FFA0();
        sub_2546269A0(v20, v22);
      }

      else
      {
        v40 = sub_2546403EC(4u);
        sub_2546269A0(v20, v22);
      }

      sub_25461DFF0(v40);
    }
  }

  else
  {
    sub_254622D4C();
  }
}

void sub_254622D4C()
{
  v1 = v0;
  v2 = sub_25467F840();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 sharedInstance];
  v8 = [v7 hoverTextContentSize];

  sub_254680470();
  if (v8)
  {
  }

  v9 = sub_254680440();

  v10 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v10];
  v13 = [v6 sharedInstance];
  v14 = [v13 hoverTextFontName];

  if (!v14 || ([v12 pointSize], v15 = objc_msgSend(v11, sel_fontWithName_size_, v14), v14, !v15))
  {
    v15 = v12;
  }

  v46 = v12;
  v16 = v15;
  v17 = sub_25467F810();
  swift_beginAccess();
  (*(v3 + 16))(v5, v17, v2);
  v18 = v16;
  v19 = v3;
  v20 = sub_25467F830();
  v21 = sub_2546806E0();

  if (os_log_type_enabled(v20, v21))
  {
    v42 = v10;
    v43 = v19;
    v44 = v2;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315906;
    v24 = [v6 sharedInstance];
    v25 = [v24 hoverTextContentSize];

    v45 = v1;
    if (v25)
    {
      v26 = sub_254680470();
      v28 = v27;
    }

    else
    {
      v28 = 0xEB00000000646569;
      v26 = 0x6669636570736E75;
    }

    v29 = sub_25463CAC4(v26, v28, &v47);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2048;
    [v18 pointSize];
    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    v31 = [v18 fontName];
    v32 = sub_254680470();
    v34 = v33;

    v35 = sub_25463CAC4(v32, v34, &v47);

    *(v22 + 24) = v35;
    *(v22 + 32) = 2080;
    v36 = [v18 familyName];
    v37 = sub_254680470();
    v39 = v38;

    v40 = sub_25463CAC4(v37, v39, &v47);

    *(v22 + 34) = v40;
    _os_log_impl(&dword_254615000, v20, v21, "Using font. ContentSize=%s PointSize=%f Name=%s Family=%s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C155A0](v23, -1, -1);
    MEMORY[0x259C155A0](v22, -1, -1);

    (*(v43 + 8))(v5, v44);
    v10 = v42;
  }

  else
  {

    (*(v19 + 8))(v5, v2);
  }

  sub_25461E784(v18);
}

void sub_254623230()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 hoverTextDisplayMode];

  if (*(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_254623370()
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  swift_getKeyPath();
  sub_25467F7A0();

  *(v0 + 145) = (*(v0 + 145) & 1) == 0;
  swift_getKeyPath();
  sub_25467F790();

  result = sub_2546218FC();
  if ((result & 1) == *(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible))
  {
    *(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_254623530(uint64_t result)
{
  if (*(v1 + 146) == (result & 1))
  {
    *(v1 + 146) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_254623640(char a1)
{
  if (*(v1 + 144) == (a1 & 1))
  {
    *(v1 + 144) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  result = sub_2546218FC();
  if ((result & 1) == *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible))
  {
    *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible) = result & 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

uint64_t sub_254623838(uint64_t result)
{
  if (*(v1 + 112) == (result & 1))
  {
    *(v1 + 112) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  return result;
}

void sub_254623948(double a1, double a2)
{
  if (*(v2 + 120) == a1 && *(v2 + 128) == a2)
  {
    *(v2 + 120) = a1;
    *(v2 + 128) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_254623A68(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    v2 = *(v1 + 64) - 2;
    v3 = 0.0;
    if (v2 < 3)
    {
      v3 = flt_254682B58[v2];
    }

    v4 = COERCE_UNSIGNED_INT(v3 + *&result) >> 31;
    v5 = (v1 + 113);
    v6 = *(v1 + 113);
    if (v6 == 2 || (v6 & 1) != v4)
    {
      goto LABEL_11;
    }

LABEL_9:
    *v5 = v4;
    return result;
  }

  v5 = (v1 + 113);
  LOBYTE(v4) = 2;
  if (*(v1 + 113) == 2)
  {
    goto LABEL_9;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F770();
}

uint64_t sub_254623BC8()
{

  v1 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  v2 = sub_25467F5A0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription, v2);

  v4 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  v5 = sub_25467F7C0();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

char *sub_254623D18()
{
  sub_25463FE54();

  v1 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  v2 = sub_25467F5A0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription, v2);

  v4 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  v5 = sub_25467F7C0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_254623E7C()
{
  sub_254623D18();

  return swift_deallocClassInstance();
}

uint64_t sub_254623EF8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible);
}

id sub_254623FA0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v2 = *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);

  return v2;
}

uint64_t sub_254624094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();
}

uint64_t sub_25462413C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode);
}

double sub_2546241E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect);
}

uint64_t sub_254624294()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v1 + 146);
}

double sub_254624358()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  return *(v1 + 152);
}

uint64_t sub_254624554(uint64_t a1)
{
  v1 = sub_25467F840();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_25467F810();
    swift_beginAccess();
    (*(v2 + 16))(v4, v7, v1);

    v8 = sub_25467F830();
    v9 = sub_2546806D0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      swift_getKeyPath();
      v16[1] = v6;
      sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
      sub_25467F780();

      v12 = *(v6 + 200);
      v13 = *(v6 + 208);

      v14 = sub_25463CAC4(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_254615000, v8, v9, "Store:%s - Idle timer fired. Hiding HoverText HUD", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x259C155A0](v11, -1, -1);
      MEMORY[0x259C155A0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    if (*(v6 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v16[-2] = v6;
      LOBYTE(v16[-1]) = 0;
      v17 = v6;
      sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
      sub_25467F770();
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__isVisible) = 0;
    }
  }

  return result;
}

void sub_2546248C0(uint64_t a1@<X8>)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v5 = sub_25467F840();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25461FA20();
  swift_getKeyPath();
  v48[0] = v3;
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v9 = *&v3[OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber];
  if (!v9)
  {
LABEL_13:
    v29 = 0;
    goto LABEL_14;
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 currentDevice];
  v13 = [v12 orientation];

  if ((v13 - 2) > 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = qword_254682B68[(v13 - 2)];
  }

  sub_2546261E0();
  v16 = v15;
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CE6958]);
  v20 = sub_254680440();
  v21 = [v19 initWithName:v20 measurementsEnabled:0];

  sub_254645694(MEMORY[0x277D84F90]);
  v22 = sub_2546803F0();

  v23 = sub_254680440();
  v24 = [v21 startMeasure_];

  v48[0] = 0;
  v25 = [v11 grabScreenWithRect:v14 orientation:v22 options:v24 metrics:v48 error:{v16, v18, 1.0, 1.0}];

  if (!v25)
  {
    v37 = v48[0];
    v38 = sub_25467F670();

    swift_willThrow();
    v39 = sub_25467F810();
    swift_beginAccess();
    (*(v6 + 16))(v8, v39, v5);
    v40 = v38;
    v41 = sub_25467F830();
    v42 = sub_2546806D0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v38;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_254615000, v41, v42, "Error grabbing screen: %@", v43, 0xCu);
      sub_254626CC4(v44, &qword_27F60B6E0, &qword_254682A18);
      MEMORY[0x259C155A0](v44, -1, -1);
      MEMORY[0x259C155A0](v43, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_13;
  }

  v26 = v48[0];

  v27 = v25;
  sub_254625130();
  v29 = v28;
  if (!v28)
  {

LABEL_14:
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_15;
  }

  v30 = [v28 CGColor];
  v31 = AXNameFromColor(v30);

  v32 = sub_254680470();
  v34 = v33;

  v35 = [v27 CGImage];
  LOBYTE(v48[0]) = 1;
  v36 = 1;
LABEL_15:
  *a1 = v29;
  *(a1 + 8) = v32;
  *(a1 + 16) = v34;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = v36;
  *(a1 + 64) = v35;
}

uint64_t sub_254624E1C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_254626618(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v2 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont;
  v3 = *(v0 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  CTFontGetAscent(v3);
  CTFontGetDescent(v3);
  CTFontGetLeading(v3);

  swift_getKeyPath();
  sub_25467F780();

  v4 = *(v1 + v2);
  CTFontGetAscent(v4);
  CTFontGetDescent(v4);
  CTFontGetLeading(v4);

  CGSizeMake();
  sub_254624F94(v5, v6);
  return sub_254680090();
}

id sub_254624F94(double a1, double a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_254626C1C;
  *(v7 + 24) = v6;
  v12[4] = sub_254626C84;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2546254A4;
  v12[3] = &block_descriptor;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_254625130()
{
  [v0 extent];
  if (!CGRectIsEmpty(v26))
  {
    [v0 extent];
    v5 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGRect_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6E8, &unk_254682A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_254681DC0;
    *(inited + 32) = sub_254680470();
    *(inited + 40) = v7;
    *(inited + 72) = sub_254626E64(0, &qword_27F60B6F0, 0x277CBF758);
    *(inited + 48) = v0;
    *(inited + 80) = sub_254680470();
    *(inited + 88) = v8;
    *(inited + 120) = sub_254626E64(0, &qword_27F60B6F8, 0x277CBF788);
    *(inited + 96) = v5;
    v9 = v0;
    v10 = v5;
    sub_2546457D0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B700, &qword_254683390);
    swift_arrayDestroy();
    v11 = sub_254680440();
    v12 = sub_2546803F0();

    v13 = [objc_opt_self() filterWithName:v11 withInputParameters:v12];

    if (v13)
    {
      v14 = [v13 outputImage];
      if (v14)
      {
        v15 = v14;
        v16 = sub_2546805E0();
        *(v16 + 16) = 4;
        *(v16 + 32) = 0;
        v17 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
        v18 = *MEMORY[0x277CBF9C8];
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        [v17 render:v15 toBitmap:v16 + 32 rowBytes:8 bounds:v18 format:DeviceRGB colorSpace:{0.0, 0.0, 1.0, 1.0}];

        v21 = *(v16 + 16);
        if (v21)
        {
          if (v21 != 1)
          {
            if (v21 >= 3)
            {
              LOBYTE(v20) = *(v16 + 32);
              *&v22 = v20;
              v23 = *&v22 / 255.0;
              LOBYTE(v22) = *(v16 + 33);
              *&v24 = v22;
              v25 = *&v24 / 255.0;
              LOBYTE(v24) = *(v16 + 34);
              [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v23 green:v25 blue:v24 / 255.0 alpha:1.0];

              return;
            }

            goto LABEL_13;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }
    }
  }
}

void sub_2546254A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id variable initialization expression of HoverTextTimer.timer()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBB8]);

  return [v0 init];
}

uint64_t variable initialization expression of HoverTextMarqueeingContentView._direction@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418, &qword_254681E00);

  return swift_storeEnumTagMultiPayload();
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

id variable initialization expression of HoverTextCoordinator.axRuntimeClient()
{
  v0 = sub_25467F840();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25467F810();
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = [objc_opt_self() mainRunLoop];
  v6 = objc_allocWithZone(type metadata accessor for AXRuntimeClient(0));
  return AXRuntimeClient.init(logger:subscribeToNotifications:runloop:)(v3, &unk_28667B690, v5);
}

id variable initialization expression of HoverTextCoordinator.eventHandler()
{
  v0 = objc_allocWithZone(type metadata accessor for HoverTextEventHandler());

  return [v0 init];
}

uint64_t sub_254625960(uint64_t a1, uint64_t a2)
{
  sub_254680B20();
  swift_getWitnessTable();
  sub_25467F7E0();
  return sub_254680B80();
}

uint64_t sub_2546259D0(uint64_t a1, id *a2)
{
  result = sub_254680450();
  *a2 = 0;
  return result;
}

uint64_t sub_254625A48(uint64_t a1, id *a2)
{
  v3 = sub_254680460();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_254625AC8@<X0>(uint64_t *a2@<X8>)
{
  sub_254680470();
  v3 = sub_254680440();

  *a2 = v3;
  return result;
}

uint64_t sub_254625B0C()
{
  v0 = sub_254680470();
  v1 = MEMORY[0x259C143D0](v0);

  return v1;
}

uint64_t sub_254625B48(uint64_t a1)
{
  sub_254680470();
  sub_2546804C0();
}

uint64_t sub_254625B9C()
{
  sub_254680470();
  sub_254680B20();
  sub_2546804C0();
  v0 = sub_254680B80();

  return v0;
}

BOOL sub_254625C54(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_254625C84@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_254625CB0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_254625D94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_25467F7D0();
}

uint64_t sub_254625E00(void *a1, uint64_t *a2)
{
  v2 = sub_254680470();
  v4 = v3;
  if (v2 == sub_254680470() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_254680A90();
  }

  return v7 & 1;
}

uint64_t sub_254625E88@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_254626858(a1);

  *a2 = v3;
  return result;
}

_DWORD *sub_254625EC8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_254625ED8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_254680440();

  *a2 = v3;
  return result;
}

uint64_t sub_254625F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254680470();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254625F4C(uint64_t a1)
{
  v2 = sub_254626618(&qword_27F60B6A0, type metadata accessor for Key, &unk_25468262C);
  v3 = sub_254626618(&qword_27F60B6A8, type metadata accessor for Key, &unk_2546821AC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_254626008(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B728, &unk_254682A80);
  v10 = *(sub_25467F5A0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25467F5A0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for HoverTextStore(uint64_t a1)
{
  result = qword_27F60B498;
  if (!qword_27F60B498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2546262DC(uint64_t a1)
{
  result = sub_25467F5A0();
  if (v2 <= 0x3F)
  {
    result = sub_25467F7C0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254626618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254626858(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_2546268A0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 120) = result;
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

uint64_t sub_2546269A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2546269B4(a1, a2);
  }

  return a1;
}

uint64_t sub_2546269B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_254626A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HoverTextPresentationEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254626A6C(uint64_t a1)
{
  v2 = type metadata accessor for HoverTextPresentationEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254626AC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

__n128 sub_254626ADC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__anchorRect;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

unint64_t sub_254626B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60B6C8;
  if (!qword_27F60B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B6C8);
  }

  return result;
}

uint64_t sub_254626B70()
{
  *(*(v0 + 16) + 136) = *(v0 + 24);
}

unint64_t sub_254626BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60B6D0;
  if (!qword_27F60B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B6D0);
  }

  return result;
}

id sub_254626C1C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  [*(v1 + 16) setFill];

  return [a1 fillRect_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254626CC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_254626D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber);
  *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__screenGrabber) = v2;
  v4 = v2;
}

void sub_254626D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  *(v1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont) = v2;
  v4 = v2;
}

uint64_t sub_254626E20(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_254626E64(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_254626EC8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorPreview) = *(v0 + 24);
}

uint64_t sub_254626F28()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 200) = v0[3];
  *(v1 + 208) = v2;
}

__n128 sub_254626F78()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 152) = result;
  *(v1 + 168) = v3;
  return result;
}

uint64_t sub_254626FA0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25462706C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2546270B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_254627128(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_254627314(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25462735C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2546273EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  *a2 = *(v3 + 184);
  return result;
}

uint64_t sub_2546274BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_254627500@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v128 = a1;
  v127 = sub_25467FC40();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_25467FCE0();
  MEMORY[0x28223BE20](v106);
  v105 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_25467F930();
  v110 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B748, &qword_254682CA8);
  v115 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v107 = &v102 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B750, &qword_254682CB0);
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v109 = &v102 - v7;
  v8 = sub_25467F8F0();
  v102 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B758, &qword_254682CB8);
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B760, &qword_254682CC0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v102 - v16;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B768, &qword_254682CC8);
  v18 = MEMORY[0x28223BE20](v120);
  v117 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v118 = &v102 - v21;
  MEMORY[0x28223BE20](v20);
  v119 = &v102 - v22;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B770, &qword_254682CD0) - 8;
  MEMORY[0x28223BE20](v122);
  v121 = &v102 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B778, &qword_254682CD8) - 8;
  MEMORY[0x28223BE20](v124);
  v123 = &v102 - v24;
  v103 = v17;
  sub_25462836C(v17);
  v25 = *v2;
  swift_getKeyPath();
  v112 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  v131 = v25;
  v111 = sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v26 = v25[19];
  v27 = v25[20];
  v28 = v25[21];
  v29 = v25[22];
  v139.origin.x = v26;
  v139.origin.y = v27;
  v139.size.width = v28;
  v139.size.height = v29;
  MidX = CGRectGetMidX(v139);
  v140.origin.x = v26;
  v140.origin.y = v27;
  v140.size.width = v28;
  v140.size.height = v29;
  MidY = CGRectGetMidY(v140);
  v32 = &v17[*(v15 + 44)];
  *v32 = MidX;
  v32[1] = MidY;
  sub_25467F8E0();
  v33 = swift_allocObject();
  v34 = *(v2 + 112);
  v33[7] = *(v2 + 96);
  v33[8] = v34;
  v33[9] = *(v2 + 128);
  v35 = *(v2 + 48);
  v33[3] = *(v2 + 32);
  v33[4] = v35;
  v36 = *(v2 + 80);
  v33[5] = *(v2 + 64);
  v33[6] = v36;
  v37 = *(v2 + 16);
  v33[1] = *v2;
  v33[2] = v37;
  sub_25462BE9C(v2, &v131);
  sub_254680200();

  v38 = *(v102 + 8);
  v38(v10, v8);
  sub_25467F8E0();
  v39 = swift_allocObject();
  v40 = *(v2 + 112);
  v39[7] = *(v2 + 96);
  v39[8] = v40;
  v39[9] = *(v2 + 128);
  v41 = *(v2 + 48);
  v39[3] = *(v2 + 32);
  v39[4] = v41;
  v42 = *(v2 + 80);
  v39[5] = *(v2 + 64);
  v39[6] = v42;
  v43 = *(v2 + 16);
  v39[1] = *v2;
  v39[2] = v43;
  sub_25462BE9C(v2, &v131);
  sub_254680200();

  v38(v10, v8);
  v138[0] = v13;
  v44 = v13;
  sub_25467FD10();
  v45 = v104;
  sub_25467F900();
  v46 = swift_allocObject();
  v47 = *(v2 + 112);
  v46[7] = *(v2 + 96);
  v46[8] = v47;
  v46[9] = *(v2 + 128);
  v48 = *(v2 + 48);
  v46[3] = *(v2 + 32);
  v46[4] = v48;
  v49 = *(v2 + 80);
  v46[5] = *(v2 + 64);
  v46[6] = v49;
  v50 = *(v2 + 16);
  v46[1] = *v2;
  v46[2] = v50;
  sub_25462BE9C(v2, &v131);
  sub_25462D650(&qword_27F60B780, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_25462D650(&qword_27F60B788, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v51 = v107;
  v52 = v108;
  sub_254680210();

  (*(v110 + 8))(v45, v52);
  v53 = swift_allocObject();
  v54 = *(v2 + 112);
  v53[7] = *(v2 + 96);
  v53[8] = v54;
  v53[9] = *(v2 + 128);
  v55 = *(v2 + 48);
  v53[3] = *(v2 + 32);
  v53[4] = v55;
  v56 = *(v2 + 80);
  v53[5] = *(v2 + 64);
  v53[6] = v56;
  v57 = *(v2 + 16);
  v53[1] = *v2;
  v53[2] = v57;
  sub_25462BE9C(v2, &v131);
  sub_25462C9F0(&qword_27F60B790, &qword_27F60B748, &qword_254682CA8, MEMORY[0x277CDFB18]);
  v58 = v109;
  v59 = v114;
  sub_254680200();

  (*(v115 + 8))(v51, v59);
  v138[1] = v58;
  v60 = v103;
  v61 = sub_2546288A0(v138);
  sub_2546174B4(v60);
  (*(v113 + 8))(v58, v116);
  sub_254626CC4(v44, &qword_27F60B758, &qword_254682CB8);
  v62 = swift_allocObject();
  v63 = *(v2 + 112);
  v62[7] = *(v2 + 96);
  v62[8] = v63;
  v62[9] = *(v2 + 128);
  v64 = *(v2 + 48);
  v62[3] = *(v2 + 32);
  v62[4] = v64;
  v65 = *(v2 + 80);
  v62[5] = *(v2 + 64);
  v62[6] = v65;
  v66 = *(v2 + 16);
  v62[1] = *v2;
  v62[2] = v66;
  sub_25462BE9C(v2, &v131);
  v67 = sub_25467FAF0();
  v68 = sub_25467FD70();
  v131 = v61;
  v132 = sub_254628D18;
  v133 = 0;
  v134 = sub_25462BF34;
  v135 = v62;
  v136 = v67;
  v137 = v68;
  v69 = sub_254680440();
  v70 = HTUILocString(v69);

  v71 = sub_254680470();
  v73 = v72;

  v129 = v71;
  v130 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B798, &qword_254682D08);
  v74 = sub_25462BF3C();
  sub_25462C080(v74, v75, v76);
  v77 = v117;
  sub_25467FEF0();

  swift_getKeyPath();
  v131 = v25;
  sub_25467F780();

  v78 = sub_254680440();
  v79 = HTUILocString(v78);

  v80 = sub_254680470();
  v82 = v81;

  v131 = v80;
  v132 = v82;
  v83 = v118;
  sub_25467FAC0();

  sub_254626CC4(v77, &qword_27F60B768, &qword_254682CC8);
  v84 = v125;
  sub_25467FC30();
  v85 = v119;
  sub_25467FAD0();
  (*(v126 + 8))(v84, v127);
  sub_254626CC4(v83, &qword_27F60B768, &qword_254682CC8);
  v86 = swift_allocObject();
  v87 = *(v2 + 112);
  *(v86 + 7) = *(v2 + 96);
  *(v86 + 8) = v87;
  *(v86 + 9) = *(v2 + 128);
  v88 = *(v2 + 48);
  *(v86 + 3) = *(v2 + 32);
  *(v86 + 4) = v88;
  v89 = *(v2 + 80);
  *(v86 + 5) = *(v2 + 64);
  *(v86 + 6) = v89;
  v90 = *(v2 + 16);
  *(v86 + 1) = *v2;
  *(v86 + 2) = v90;
  v91 = v121;
  sub_25462CC24(v85, v121, &qword_27F60B768, &qword_254682CC8);
  v92 = (v91 + *(v122 + 44));
  *v92 = sub_25462C0D4;
  v92[1] = v86;
  v92[2] = 0;
  v92[3] = 0;
  v93 = swift_allocObject();
  v94 = *(v2 + 112);
  v93[7] = *(v2 + 96);
  v93[8] = v94;
  v93[9] = *(v2 + 128);
  v95 = *(v2 + 48);
  v93[3] = *(v2 + 32);
  v93[4] = v95;
  v96 = *(v2 + 80);
  v93[5] = *(v2 + 64);
  v93[6] = v96;
  v97 = *(v2 + 16);
  v93[1] = *v2;
  v93[2] = v97;
  v98 = v91;
  v99 = v123;
  sub_25462CC24(v98, v123, &qword_27F60B770, &qword_254682CD0);
  v100 = (v99 + *(v124 + 44));
  *v100 = 0;
  v100[1] = 0;
  v100[2] = sub_25462C13C;
  v100[3] = v93;
  sub_25462CC24(v99, v128, &qword_27F60B778, &qword_254682CD8);
  sub_25462BE9C(v2, &v131);
  return sub_25462BE9C(v2, &v131);
}

uint64_t sub_25462836C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_25467FFB0();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B858, &qword_254682DA8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B840, &qword_254682D98);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = sub_25467FB10();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[2];
  v17 = *(v13 + 28);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_25467FC20();
  (*(*(v19 - 8) + 104))(&v15[v17], v18, v19);
  *v15 = v16;
  *(v15 + 1) = v16;
  sub_254680250();
  sub_25467F990();
  sub_25462CA94(v15, v7);
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B880, &qword_254682DC0) + 36)];
  v21 = v43;
  *v20 = v42;
  *(v20 + 1) = v21;
  *(v20 + 2) = v44;
  v22 = &v7[*(v5 + 36)];
  sub_25462CA94(v15, v22);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B898, &qword_254682DC8) + 36)) = 0;
  sub_254680240();
  v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B860, &qword_254682DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B868, &qword_254682DB8);
  sub_25462C5C8();
  sub_25462C73C();
  sub_25462C938();
  sub_25467FF80();
  sub_254626CC4(v7, &qword_27F60B858, &qword_254682DA8);
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B850, &qword_254682DA0) + 36)];
  sub_254629E80(v23);
  v24 = sub_254680250();
  v26 = v25;
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B900, &qword_254682DF0) + 36));
  *v27 = v24;
  v27[1] = v26;
  v28 = v2[5];
  (*(v36 + 104))(v35, *MEMORY[0x277CE0ED0], v37);
  v29 = sub_254680070();
  v30 = &v11[*(v9 + 44)];
  *v30 = v29;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  v31 = *v2;
  swift_getKeyPath();
  *&v41 = v31;
  sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  if ((*(v31 + 184) & 1) != 0 || (v41 = *(v2 + 9), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B918, &qword_254682DF8), sub_254680130(), v32 = 0.5, (v40 & 1) == 0) && (swift_getKeyPath(), *&v41 = v31, sub_25467F780(), , (*(v31 + 146) & 1) == 0))
  {
    v32 = 0.95;
  }

  v33 = v38;
  sub_254617670(v11, v38);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B830, &qword_254682D90) + 36)) = v32;
  return sub_25462CB00(v15);
}

uint64_t sub_2546288A0(uint64_t a1)
{
  v29[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B760, &qword_254682CC0);
  MEMORY[0x28223BE20](v2);
  sub_2546175D4(v1, v29 - v3);
  sub_25462C2C4();
  v4 = sub_2546801D0();
  v29[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B758, &qword_254682CB8);
  v6 = sub_25462C9F0(&qword_27F60B908, &qword_27F60B758, &qword_254682CB8, MEMORY[0x277CDFB50]);
  v30 = MEMORY[0x277CE11C8];
  v31 = v5;
  v7 = MEMORY[0x277CE11C8];
  v32 = MEMORY[0x277CE11C0];
  v33 = v6;
  v8 = MEMORY[0x277CE0D90];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v29[5] = v4;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  (*(v11 + 16))(v29 - v12);
  sub_25467F940();
  v14 = v7;
  v15 = MEMORY[0x277CE11C0];
  sub_25467FF10();
  (*(v11 + 8))(v13, v5);
  v30 = v14;
  v31 = v5;
  v32 = v15;
  v33 = v6;
  v16 = v15;
  v29[2] = v8;
  swift_getOpaqueTypeConformance2();
  v17 = sub_2546801D0();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B750, &qword_254682CB0);
  v19 = sub_25462C9F0(&qword_27F60B910, &qword_27F60B750, &qword_254682CB0, MEMORY[0x277CDF728]);
  v30 = v14;
  v31 = v18;
  v32 = v16;
  v33 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = MEMORY[0x28223BE20](v20);
  v29[4] = v17;
  v22 = *(v18 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v29 - v23;
  (*(v22 + 16))(v29 - v23);

  sub_25467F940();
  v25 = v14;
  v26 = MEMORY[0x277CE11C0];
  sub_25467FF10();
  (*(v22 + 8))(v24, v18);

  v30 = v25;
  v31 = v18;
  v32 = v26;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  v27 = sub_2546801D0();

  return v27;
}

uint64_t sub_254628D18@<X0>(void *a1@<X8>)
{
  v2 = sub_25467FCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25467FD20();
  sub_25467F9B0();
  v7 = v6;
  v9 = v8;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

void sub_254628E6C(__int128 *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [objc_opt_self() defaultCenter];
    v5 = *MEMORY[0x277D76878];
    v6 = [objc_opt_self() mainQueue];
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v9 = a1[4];
    *(v8 + 104) = a1[5];
    v10 = a1[7];
    *(v8 + 120) = a1[6];
    *(v8 + 136) = v10;
    *(v8 + 152) = a1[8];
    v11 = *a1;
    *(v8 + 40) = a1[1];
    v12 = a1[3];
    *(v8 + 56) = a1[2];
    *(v8 + 72) = v12;
    *(v8 + 88) = v9;
    *(v8 + 16) = v7;
    *(v8 + 24) = v11;
    aBlock[4] = sub_25462C144;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_254629AE0;
    aBlock[3] = &block_descriptor_0;
    v13 = _Block_copy(aBlock);
    sub_25462BE9C(a1, v15);

    v14 = [v4 addObserverForName:v5 object:0 queue:v6 usingBlock:v13];
    _Block_release(v13);

    v15[0] = a1[8];
    aBlock[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B7E0, &qword_254682D58);
    sub_254680140();
  }
}

uint64_t sub_25462909C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v37 = sub_254680380();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2546803B0();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2546803D0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_25462C168();
    v34 = sub_254680780();
    sub_2546803C0();
    v33 = v15;
    sub_2546803E0();
    v18 = *(v10 + 8);
    v35 = v10 + 8;
    v36 = v18;
    v18(v13, v9);
    v19 = swift_allocObject();
    v20 = a3[7];
    *(v19 + 112) = a3[6];
    *(v19 + 128) = v20;
    *(v19 + 144) = a3[8];
    v21 = a3[3];
    *(v19 + 48) = a3[2];
    *(v19 + 64) = v21;
    v22 = a3[5];
    *(v19 + 80) = a3[4];
    *(v19 + 96) = v22;
    v23 = a3[1];
    *(v19 + 16) = *a3;
    *(v19 + 32) = v23;
    v32 = v17;
    *(v19 + 160) = v17;
    aBlock[4] = sub_25462C1B4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2546274BC;
    aBlock[3] = &block_descriptor_34;
    v24 = _Block_copy(aBlock);
    sub_25462BE9C(a3, v40);

    sub_254680390();
    v40[0] = MEMORY[0x277D84F90];
    sub_25462D650(&qword_27F60B7E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0, &qword_254682D60);
    v25 = v37;
    v26 = v39;
    v27 = v38;
    v30 = v6;
    sub_25462C9F0(&qword_27F60B7F0, &unk_27F60BFF0, &qword_254682D60, MEMORY[0x277D83970]);
    sub_254680890();
    v28 = v33;
    v29 = v34;
    MEMORY[0x259C145B0](v33, v8, v5, v24);
    _Block_release(v24);

    (*(v26 + 8))(v5, v25);
    (*(v27 + 8))(v8, v30);
    return v36(v28, v31);
  }

  return result;
}

void sub_254629550(double *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v51.origin.x = v6;
  v51.origin.y = v8;
  v51.size.width = v10;
  v51.size.height = v12;
  Width = CGRectGetWidth(v51);
  v52.origin.x = v6;
  v52.origin.y = v8;
  v52.size.width = v10;
  v52.size.height = v12;
  Height = CGRectGetHeight(v52);
  swift_getKeyPath();
  *&v48 = a1;
  sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v14 = a1[19];
  v15 = a1[20];
  v16 = a1[21];
  v17 = a1[22];
  v53.origin.x = v14;
  v53.origin.y = v15;
  v53.size.width = v16;
  v53.size.height = v17;
  CGRectGetMidX(v53);
  v54.origin.x = v14;
  v54.origin.y = v15;
  v54.size.width = v16;
  v54.size.height = v17;
  CGRectGetMidY(v54);
  v49 = *(v2 + 104);
  v48 = *(v2 + 88);
  v46 = *(v2 + 88);
  v47 = *(v2 + 104);
  v50 = v49;
  sub_25462CC8C(&v50, &v44, &qword_27F60B7F8, &qword_254682D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
  sub_254680130();
  swift_getKeyPath();
  *&v46 = a1;
  sub_25467F780();

  v18 = a1[19];
  v19 = a1[20];
  v20 = a1[21];
  v21 = a1[22];
  v55.origin.x = v18;
  v55.origin.y = v19;
  v55.size.width = v20;
  v55.size.height = v21;
  CGRectGetMidX(v55);
  v56.origin.x = v18;
  v56.origin.y = v19;
  v56.size.width = v20;
  v56.size.height = v21;
  CGRectGetMidY(v56);
  v46 = v48;
  v47 = v49;
  sub_254680130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B808, &qword_254682D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254682B90;
  swift_getKeyPath();
  *&v46 = a1;
  sub_25467F780();

  v23 = a1[19];
  v24 = a1[20];
  v25 = a1[21];
  v26 = a1[22];
  v57.origin.x = v23;
  v57.origin.y = v24;
  v57.size.width = v25;
  v57.size.height = v26;
  MidX = CGRectGetMidX(v57);
  v58.origin.x = v23;
  v58.origin.y = v24;
  v58.size.width = v25;
  v58.size.height = v26;
  CGRectGetMidY(v58);
  *(inited + 32) = MidX;
  *(inited + 40) = 2;
  v46 = v48;
  v47 = v49;
  sub_254680130();
  v28 = v44;
  swift_getKeyPath();
  *&v46 = a1;
  sub_25467F780();

  v29 = a1[19];
  v30 = a1[20];
  v31 = a1[21];
  v32 = a1[22];
  v59.origin.x = v29;
  v59.origin.y = v30;
  v59.size.width = v31;
  v59.size.height = v32;
  v33 = CGRectGetMidX(v59);
  v60.origin.x = v29;
  v60.origin.y = v30;
  v60.size.width = v31;
  v60.size.height = v32;
  CGRectGetMidY(v60);
  *(inited + 48) = v28 - v33;
  *(inited + 56) = 3;
  swift_getKeyPath();
  *&v46 = a1;
  sub_25467F780();

  v34 = a1[19];
  v35 = a1[20];
  v36 = a1[21];
  v37 = a1[22];
  v61.origin.x = v34;
  v61.origin.y = v35;
  v61.size.width = v36;
  v61.size.height = v37;
  CGRectGetMidX(v61);
  v62.origin.x = v34;
  v62.origin.y = v35;
  v62.size.width = v36;
  v62.size.height = v37;
  *(inited + 64) = CGRectGetMidY(v62);
  *(inited + 72) = 0;
  v46 = v48;
  v47 = v49;
  sub_254680130();
  v38 = v45;
  swift_getKeyPath();
  *&v46 = a1;
  sub_25467F780();

  v39 = a1[19];
  v40 = a1[20];
  v41 = a1[21];
  v42 = a1[22];
  v63.origin.x = v39;
  v63.origin.y = v40;
  v63.size.width = v41;
  v63.size.height = v42;
  CGRectGetMidX(v63);
  v64.origin.x = v39;
  v64.origin.y = v40;
  v64.size.width = v41;
  v64.size.height = v42;
  *(inited + 80) = v38 - CGRectGetMidY(v64);
  *(inited + 88) = 1;

  v46 = v48;
  v47 = v49;
  v44 = Width;
  v45 = Height;
  sub_254680140();
  sub_254626CC4(&v48, &qword_27F60B800, &qword_254682D70);
  sub_2546802D0();
  sub_25467FA40();
}

uint64_t sub_254629AE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_25467F460();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_25467F450();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_254629BD4(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = *(a1 + 136);
  v9 = v2;
  v10 = v1;
  v7 = v1;
  v8 = v2;
  sub_25462CC8C(&v10, &v6, &qword_27F60B7D0, &qword_254682D48);
  sub_25462CC8C(&v9, &v6, &qword_27F60B7D8, &qword_254682D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B7E0, &qword_254682D58);
  sub_254680130();
  v3 = v6;
  if (v6)
  {
    v4 = [objc_opt_self() defaultCenter];
    [v4 removeObserver_];

    v7 = v1;
    v8 = v2;
    v6 = 0;
    sub_254680140();
    swift_unknownObjectRelease();
  }

  sub_254626CC4(&v10, &qword_27F60B7D0, &qword_254682D48);
  return sub_254626CC4(&v9, &qword_27F60B7D8, &qword_254682D50);
}

uint64_t sub_254629D00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B858, &qword_254682DA8);
  sub_25467FB10();
  sub_25462C5C8();
  sub_25462D650(&qword_27F60B8B8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  sub_25467FE70();
  v4 = sub_254680030();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B8B0, &qword_254682DD0) + 36)) = v4;
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B860, &qword_254682DB0) + 36);
  sub_25462CA94(a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B8D8, &qword_254682DE0);
  *(v5 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_254629E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B868, &qword_254682DB8);
  sub_254680230();
  return sub_25462CC8C(a1, a2, &qword_27F60B858, &qword_254682DA8);
}

double sub_254629E80@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_254680370();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_254680350();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B920, &qword_254682E28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B928, &qword_254682E30);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v40 - v12);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B930, &qword_254682E38) - 8;
  MEMORY[0x28223BE20](v47);
  v45 = &v40 - v14;
  sub_25467FFF0();
  v52 = sub_254680050();

  sub_25467F950();
  v15 = v56;
  v16 = v58;
  v46 = v59;
  v17 = v60;
  v50 = sub_254680250();
  v49 = v18;
  sub_254680250();
  sub_25467F990();
  v19 = *v1;
  swift_getKeyPath();
  v43 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  v55 = v19;
  v42 = sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v41 = sub_2546800A0();
  v20 = [objc_opt_self() lightGrayColor];
  v40 = sub_25467FFA0();
  KeyPath = swift_getKeyPath();
  v22 = sub_25467FD80();
  v23 = v57;
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  v24 = sub_25467FD90();
  sub_254626CC4(v9, &qword_27F60B920, &qword_254682E28);
  v25 = swift_getKeyPath();
  sub_254680340();
  v26 = v44;
  sub_254680360();
  v27 = (v13 + *(v11 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B938, &qword_254682EA0);
  sub_25462D650(&qword_27F60B940, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  v28 = v48;
  sub_25467FB20();
  (*(v53 + 8))(v26, v54);
  (*(v51 + 8))(v6, v28);
  *v27 = swift_getKeyPath();
  *v13 = v41;
  v13[1] = KeyPath;
  v13[2] = v40;
  v13[3] = v25;
  v13[4] = v24;
  v29 = MEMORY[0x259C14130](0.5, 0.85, 0.0);
  swift_getKeyPath();
  v55 = v19;
  sub_25467F780();

  LOBYTE(v28) = *(v19 + 184);
  v30 = v45;
  sub_25462CC24(v13, v45, &qword_27F60B928, &qword_254682E30);
  v31 = v30 + *(v47 + 44);
  *v31 = v29;
  *(v31 + 8) = v28;
  v32 = sub_254680250();
  v34 = v33;
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B948, &qword_254682ED8) + 36);
  sub_25462CC24(v30, v35, &qword_27F60B930, &qword_254682E38);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B950, &qword_254682EE0) + 36));
  *v36 = v32;
  v36[1] = v34;
  *a1 = v15;
  *(a1 + 8) = v23;
  *(a1 + 16) = v16;
  *(a1 + 24) = v46;
  *(a1 + 32) = v17;
  *(a1 + 40) = v52;
  *(a1 + 48) = 256;
  *(a1 + 54) = WORD2(v55);
  *(a1 + 50) = v55;
  v37 = v49;
  *(a1 + 56) = v50;
  *(a1 + 64) = v37;
  v38 = v61;
  *(a1 + 88) = v62;
  result = *&v63;
  *(a1 + 104) = v63;
  *(a1 + 72) = v38;
  return result;
}

void sub_25462A54C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 184) == 1)
  {
    *(v2 + 184) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  if (*(v2 + 146) == 1)
  {
    *(v2 + 146) = 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v5 impactOccurred];
}

double sub_25462A764(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  swift_getKeyPath();
  sub_25467F7A0();

  *(v2 + 146) = (*(v2 + 146) & 1) == 0;
  swift_getKeyPath();
  sub_25467F790();

  swift_getKeyPath();
  sub_25467F780();

  if (*(v2 + 184) == 1)
  {
    swift_getKeyPath();
    sub_25467F780();

    swift_getKeyPath();
    sub_25467F7A0();

    *(v2 + 184) = (*(v2 + 184) & 1) == 0;
    swift_getKeyPath();
    sub_25467F790();
  }

  return result;
}

uint64_t sub_25462A968()
{
  v1 = *v0;
  sub_254680B20();
  MEMORY[0x259C149B0](v1);
  return sub_254680B80();
}

uint64_t sub_25462A9DC()
{
  v1 = *v0;
  sub_254680B20();
  MEMORY[0x259C149B0](v1);
  return sub_254680B80();
}

void sub_25462AA20(uint64_t a1, double *a2)
{
  LOBYTE(v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B918, &qword_254682DF8);
  sub_254680140();
  sub_25467F920();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 userInterfaceLayoutDirection];

  if (v8 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
    sub_254680130();
    v4 = v16 - v4;
  }

  v9 = a2[1];
  v10 = v9 * 0.5;
  if (v9 * 0.5 > v4)
  {
    v4 = v9 * 0.5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
  sub_254680130();
  if (v16 - v10 < v4)
  {
    v4 = v16 - v10;
  }

  if (v10 > v6)
  {
    v6 = v9 * 0.5;
  }

  sub_254680130();
  if (v17 - v10 < v6)
  {
    v6 = v17 - v10;
  }

  sub_25462ACD0(v4, v6);
  v11 = *a2;
  v12 = sub_25462AE44(v4, v6) - v10;
  v14 = v13 - v10;
  v18.origin.x = v12;
  v18.origin.y = v13 - v10;
  v18.size.width = v9;
  v18.size.height = v9;
  if (CGRectEqualToRect(*(*&v11 + 152), v18))
  {
    *(*&v11 + 152) = v12;
    *(*&v11 + 160) = v14;
    *(*&v11 + 168) = v9;
    *(*&v11 + 176) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }
}

uint64_t sub_25462ACD0(double a1, double a2)
{
  if (AXDeviceHasJindo() && *(v2 + 64) + *(v2 + 56) + *(v2 + 8) * 0.5 >= a2)
  {
    v9 = *(v2 + 88);
    v10 = *(v2 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
    sub_254680130();
    v6 = *&v8;
    v9 = *(v2 + 112);
    v11 = *(&v9 + 1);
    v8 = *(v2 + 112);
    sub_25462CC8C(&v11, &v7, &qword_27F60B818, &qword_254682D88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B810, &qword_254682D80);
    sub_254680130();
    if (v7 == 2)
    {
      v8 = v9;
      LOBYTE(v7) = v6 * 0.5 > a1;
      sub_254680140();
    }

    return sub_254626CC4(&v9, &qword_27F60B810, &qword_254682D80);
  }

  else
  {
    v9 = *(v2 + 112);
    LOBYTE(v8) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B810, &qword_254682D80);
    return sub_254680140();
  }
}

double sub_25462AE44(double a1, double a2)
{
  if (AXDeviceHasJindo())
  {
    if (AXDeviceHasJindo())
    {
      v5 = v2[1] * 0.5;
      if (v2[8] + v2[7] + v5 >= a2)
      {
        v6 = v2[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
        sub_254680130();
        v7 = v11 * 0.5 - v6 * 0.5;
        v8 = v6 * 0.5 + v11 * 0.5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B810, &qword_254682D80);
        sub_254680130();
        if (LOBYTE(v11) == 2)
        {
          if (v7 < a1 && v8 > a1)
          {
            if (v11 * 0.5 <= a1)
            {
              return v5 + v8;
            }

            else
            {
              return v7 - v5;
            }
          }
        }

        else if (LOBYTE(v11))
        {
          if (v7 - v5 < a1)
          {
            return v7 - v5;
          }
        }

        else if (v5 + v8 >= a1)
        {
          return v5 + v8;
        }
      }
    }
  }

  return a1;
}

double sub_25462AF88(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B918, &qword_254682DF8);
  v2 = sub_254680140();
  MEMORY[0x259C14130](v2, 0.5, 1.0, 0.0);
  sub_25467FA40();

  return result;
}

void sub_25462B034(double *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  v5 = *(v2 + 168);
  v6 = *(v2 + 176);
  v15.origin.x = v3;
  v15.origin.y = v4;
  v15.size.width = v5;
  v15.size.height = v6;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  MidY = CGRectGetMidY(v16);
  sub_25462B21C(4u, MidX, MidY);
  v9 = a1[1];
  v11 = v10 - v9 * 0.5;
  v13 = v12 - v9 * 0.5;
  v17.origin.x = v11;
  v17.origin.y = v13;
  v17.size.width = v9;
  v17.size.height = v9;
  if (CGRectEqualToRect(*(v2 + 152), v17))
  {
    *(v2 + 152) = v11;
    *(v2 + 160) = v13;
    *(v2 + 168) = v9;
    *(v2 + 176) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25467F770();
  }
}

void sub_25462B21C(unsigned __int8 a1, double a2, double a3)
{
  v4 = v3;
  v5 = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B808, &qword_254682D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254682B90;
  *(inited + 32) = a2;
  *(inited + 40) = 2;
  v23 = *(v3 + 88);
  v24 = *(v3 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
  sub_254680130();
  v10 = *&v22 - a2;
  *(inited + 48) = *&v22 - a2;
  *(inited + 56) = 3;
  *(inited + 64) = a3;
  *(inited + 72) = 0;
  v23 = *(v3 + 88);
  v24 = *(v3 + 104);
  sub_254680130();
  v11 = *(&v22 + 1) - a3;
  *(inited + 80) = *(&v22 + 1) - a3;
  *(inited + 88) = 1;
  if (v8 == 4)
  {
    v12 = *(inited + 32);
    v13 = *(inited + 40);

    if (v10 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    if (v10 >= v12)
    {
      v15 = v13;
    }

    else
    {
      v15 = 3;
    }

    if (v14 <= a3)
    {
      v5 = v15;
    }

    else
    {
      v14 = a3;
      v5 = 0;
    }

    if (v11 < v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      a2 = *(v4 + 8) * 0.5;
    }

    else
    {
      v23 = *(v4 + 88);
      v24 = *(v4 + 104);
      sub_254680130();
      a2 = *&v22 + *(v4 + 8) * -0.5;
    }
  }

  else
  {
    if (v5)
    {
LABEL_21:
      v23 = *(v4 + 88);
      v24 = *(v4 + 104);
      sub_254680130();
      a3 = *(&v22 + 1) + *(v4 + 8) * -0.5;
      goto LABEL_30;
    }

    if (AXDeviceHasJindo())
    {
      v23 = *(v4 + 88);
      v24 = *(v4 + 104);
      sub_254680130();
      v16 = *&v22 * 0.5;
      v23 = *(v4 + 112);
      v25 = *(&v23 + 1);
      v22 = *(v4 + 112);
      sub_25462CC8C(&v25, &v21, &qword_27F60B818, &qword_254682D88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B810, &qword_254682D80);
      sub_254680130();
      v17 = v21;
      if (v21 == 2)
      {
        v22 = v23;
        LOBYTE(v21) = v16 > a2;
        sub_254680140();
        sub_254626CC4(&v23, &qword_27F60B810, &qword_254682D80);
        v22 = v23;
        sub_254680130();
        if (v21 == 2 || (v21 & 1) == 0)
        {
          a2 = v16 + *(v4 + 48);
        }

        else
        {
          a2 = v16 - *(v4 + 48);
        }
      }

      else
      {
        sub_254626CC4(&v23, &qword_27F60B810, &qword_254682D80);
        v18 = *(v4 + 48);
        v19 = v16 + v18;
        v20 = v16 - v18;
        if (v17)
        {
          a2 = v20;
        }

        else
        {
          a2 = v19;
        }
      }
    }

    a3 = *(v4 + 8) * 0.5;
  }

LABEL_30:
  sub_25462AE44(a2, a3);
}

uint64_t sub_25462B578(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v45 = a3;
  v51 = sub_254680380();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2546803B0();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2546803D0();
  v15 = *(v54 - 8);
  v16 = MEMORY[0x28223BE20](v54);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v21 = *(a1 + 8);
  v22 = v21 * 0.5;
  if (v21 * 0.5 > a4)
  {
    v23 = v21 * 0.5;
  }

  else
  {
    v23 = a4;
  }

  if (a6 - v22 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = a6 - v22;
  }

  if (v22 > a5)
  {
    v25 = v21 * 0.5;
  }

  else
  {
    v25 = a5;
  }

  if (a7 - v22 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = a7 - v22;
  }

  v52[0] = *(a1 + 112);
  LOBYTE(aBlock[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B810, &qword_254682D80);
  sub_254680140();
  v27 = sub_25462AE44(v24, v26) - v22;
  v29 = v28 - v22;
  v55.origin.x = v27;
  v55.origin.y = v28 - v22;
  v55.size.width = v21;
  v55.size.height = v21;
  if (CGRectEqualToRect(*(a2 + 152), v55))
  {
    *(a2 + 152) = v27;
    *(a2 + 160) = v29;
    *(a2 + 168) = v21;
    *(a2 + 176) = v21;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v44 = &v43;
    MEMORY[0x28223BE20](KeyPath);
    *(&v43 - 6) = a2;
    *(&v43 - 5) = v27;
    *(&v43 - 4) = v29;
    *(&v43 - 3) = v21;
    *(&v43 - 2) = v21;
    *&v52[0] = a2;
    sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
    sub_25467F770();
  }

  sub_25462C168();
  v43 = sub_254680780();
  sub_2546803C0();
  v31 = v20;
  sub_2546803E0();
  v44 = *(v15 + 8);
  (v44)(v18, v54);
  v32 = swift_allocObject();
  v33 = *(a1 + 112);
  *(v32 + 112) = *(a1 + 96);
  *(v32 + 128) = v33;
  *(v32 + 144) = *(a1 + 128);
  v34 = *(a1 + 48);
  *(v32 + 48) = *(a1 + 32);
  *(v32 + 64) = v34;
  v35 = *(a1 + 80);
  *(v32 + 80) = *(a1 + 64);
  *(v32 + 96) = v35;
  v36 = *(a1 + 16);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v36;
  *(v32 + 160) = a2;
  *(v32 + 168) = v45;
  aBlock[4] = sub_25462C294;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2546274BC;
  aBlock[3] = &block_descriptor_40;
  v37 = _Block_copy(aBlock);
  sub_25462BE9C(a1, v52);

  v38 = v46;
  sub_254680390();
  *&v52[0] = MEMORY[0x277D84F90];
  sub_25462D650(&qword_27F60B7E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0, &qword_254682D60);
  sub_25462C9F0(&qword_27F60B7F0, &unk_27F60BFF0, &qword_254682D60, MEMORY[0x277D83970]);
  v39 = v47;
  v40 = v51;
  sub_254680890();
  v41 = v43;
  MEMORY[0x259C145B0](v31, v38, v39, v37);
  _Block_release(v37);

  (*(v50 + 8))(v39, v40);
  (*(v48 + 8))(v38, v49);
  return (v44)(v31, v54);
}

double sub_25462BBD0(uint64_t a1, uint64_t a2, char a3)
{
  MEMORY[0x259C14130](0.5, 1.0, 0.0);
  sub_25467FA40();

  return result;
}

void sub_25462BC58(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_getKeyPath();
  sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);
  sub_25467F780();

  v6 = *(a2 + 152);
  v7 = *(a2 + 160);
  v8 = *(a2 + 168);
  v9 = *(a2 + 176);
  v18.origin.x = v6;
  v18.origin.y = v7;
  v18.size.width = v8;
  v18.size.height = v9;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = v8;
  v19.size.height = v9;
  MidY = CGRectGetMidY(v19);
  sub_25462B21C(a3, MidX, MidY);
  v12 = *(a1 + 8);
  v14 = v13 - v12 * 0.5;
  v16 = v15 - v12 * 0.5;
  v20.origin.x = v14;
  v20.origin.y = v16;
  v20.size.width = v12;
  v20.size.height = v12;
  if (CGRectEqualToRect(*(a2 + 152), v20))
  {
    *(a2 + 152) = v14;
    *(a2 + 160) = v16;
    *(a2 + 168) = v12;
    *(a2 + 176) = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25467F770();
  }
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

unint64_t sub_25462BF3C()
{
  result = qword_27F60B7A0;
  if (!qword_27F60B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B798, &qword_254682D08);
    sub_25462BFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B7A0);
  }

  return result;
}

unint64_t sub_25462BFC8()
{
  result = qword_27F60B7A8;
  if (!qword_27F60B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B7B0, &qword_254682D10);
    sub_25462C9F0(&qword_27F60B7B8, &qword_27F60B7C0, &qword_254682D18, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B7A8);
  }

  return result;
}

unint64_t sub_25462C080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60B7C8;
  if (!qword_27F60B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B7C8);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25462C168()
{
  result = qword_27F60BFE0;
  if (!qword_27F60BFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60BFE0);
  }

  return result;
}

uint64_t objectdestroy_30Tm(uint64_t a1)
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_25462C2C4()
{
  result = qword_27F60B820;
  if (!qword_27F60B820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B760, &qword_254682CC0);
    sub_25462C350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B820);
  }

  return result;
}

unint64_t sub_25462C350()
{
  result = qword_27F60B828;
  if (!qword_27F60B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B830, &qword_254682D90);
    sub_25462C3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B828);
  }

  return result;
}

unint64_t sub_25462C3DC()
{
  result = qword_27F60B838;
  if (!qword_27F60B838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B840, &qword_254682D98);
    sub_25462C468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B838);
  }

  return result;
}

unint64_t sub_25462C468()
{
  result = qword_27F60B848;
  if (!qword_27F60B848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B850, &qword_254682DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B858, &qword_254682DA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B860, &qword_254682DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B868, &qword_254682DB8);
    sub_25462C5C8();
    sub_25462C73C();
    sub_25462C938();
    swift_getOpaqueTypeConformance2();
    sub_25462C9F0(&qword_27F60B8F8, &qword_27F60B900, &qword_254682DF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B848);
  }

  return result;
}

unint64_t sub_25462C5C8()
{
  result = qword_27F60B870;
  if (!qword_27F60B870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B858, &qword_254682DA8);
    sub_25462C680();
    sub_25462C9F0(&qword_27F60B890, &qword_27F60B898, &qword_254682DC8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B870);
  }

  return result;
}

unint64_t sub_25462C680()
{
  result = qword_27F60B878;
  if (!qword_27F60B878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B880, &qword_254682DC0);
    sub_25462D650(&qword_27F60B888, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B878);
  }

  return result;
}

unint64_t sub_25462C73C()
{
  result = qword_27F60B8A0;
  if (!qword_27F60B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B860, &qword_254682DB0);
    sub_25462C7F4();
    sub_25462C9F0(&qword_27F60B8D0, &qword_27F60B8D8, &qword_254682DE0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B8A0);
  }

  return result;
}

unint64_t sub_25462C7F4()
{
  result = qword_27F60B8A8;
  if (!qword_27F60B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B8B0, &qword_254682DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B858, &qword_254682DA8);
    sub_25467FB10();
    sub_25462C5C8();
    sub_25462D650(&qword_27F60B8B8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    swift_getOpaqueTypeConformance2();
    sub_25462C9F0(&qword_27F60B8C0, &qword_27F60B8C8, &qword_254682DD8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B8A8);
  }

  return result;
}

unint64_t sub_25462C938()
{
  result = qword_27F60B8E0;
  if (!qword_27F60B8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B868, &qword_254682DB8);
    sub_25462C5C8();
    sub_25462C9F0(&qword_27F60B8E8, &qword_27F60B8F0, &qword_254682DE8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B8E0);
  }

  return result;
}

uint64_t sub_25462C9F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25462CA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_25467FB10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25462CB00(uint64_t a1)
{
  v2 = sub_25467FB10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25462CB5C(uint64_t a1)
{
  v2 = sub_25467FB30();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25467FBA0();
}

uint64_t sub_25462CC24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25462CC8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 sub_25462CCF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_254680120();
  v4 = *(&v84 + 1);
  type metadata accessor for CGSize(0);
  *&v67 = 0;
  sub_254680120();
  v6 = *(&v84 + 1);
  v5 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B958, &qword_254682EE8);
  sub_254680120();
  v50 = v84;
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B7D0, &qword_254682D48);
  sub_254680120();
  v7 = v84;
  if (a1)
  {
    v48 = *(&v84 + 1);
    v51 = v85.n128_u64[0];
    v49 = v84;
    swift_getKeyPath();
    *&v84 = a1;
    sub_25462D650(&qword_27F60C050, type metadata accessor for HoverTextStore, &unk_254682600);

    sub_25467F780();

    v96.origin.x = 0.0;
    v96.origin.y = 0.0;
    v96.size.width = 0.0;
    v96.size.height = 0.0;
    v47 = v7;
    if (CGRectEqualToRect(*(a1 + 152), v96))
    {
      v46 = v5;
      v8 = objc_opt_self();
      v9 = [v8 mainScreen];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v93.origin.x = v11;
      v93.origin.y = v13;
      v93.size.width = v15;
      v93.size.height = v17;
      v18 = CGRectGetWidth(v93) + -35.0;
      v19 = [v8 mainScreen];
      [v19 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v94.origin.x = v21;
      v94.origin.y = v23;
      v94.size.width = v25;
      v94.size.height = v27;
      Height = CGRectGetHeight(v94);
      v29 = [v8 mainScreen];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v95.origin.x = v31;
      v95.origin.y = v33;
      v95.size.width = v35;
      v95.size.height = v37;
      v38 = Height + CGRectGetHeight(v95) * -0.25 + -35.0;
      v97.size.width = 70.0;
      v97.origin.x = v18 + -35.0;
      v97.origin.y = v38;
      v97.size.height = 70.0;
      v39 = *(&v84 + 1);
      if (CGRectEqualToRect(*(a1 + 152), v97))
      {
        *(a1 + 152) = v18 + -35.0;
        *(a1 + 160) = v38;
        *(a1 + 168) = vdupq_n_s64(0x4051800000000000uLL);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *&v84 = a1;
        sub_25467F770();
      }

      v40 = v51;
      v5 = v46;
    }

    else
    {
      v39 = *(&v84 + 1);

      v40 = v85.n128_u64[0];
    }

    *&v52[0] = a1;
    *(v52 + 8) = xmmword_254682BA0;
    *(&v52[1] + 8) = xmmword_254682BB0;
    *(&v52[2] + 8) = xmmword_254682BC0;
    *(&v52[3] + 8) = xmmword_254682BD0;
    BYTE8(v52[4]) = v49;
    HIDWORD(v52[4]) = *&v83[3];
    *(&v52[4] + 9) = *v83;
    *&v53 = v4;
    *(&v53 + 1) = v5;
    *&v54 = v6;
    *(&v54 + 1) = v40;
    LOBYTE(v55) = v50;
    DWORD1(v55) = *&v82[3];
    *(&v55 + 1) = *v82;
    *(&v55 + 1) = v48;
    *&v56 = v47;
    *(&v56 + 1) = v39;
    v59 = v52[2];
    v60 = v52[3];
    v57 = v52[0];
    v58 = v52[1];
    v64 = v55;
    v65 = v56;
    v62 = v53;
    v63 = v54;
    v61 = v52[4];
    CGSizeMake();
    v66 = a1;
    v67 = xmmword_254682BA0;
    v68 = xmmword_254682BB0;
    v69 = xmmword_254682BC0;
    v70 = xmmword_254682BD0;
    v71 = v49;
    *v72 = *v83;
    *&v72[3] = *&v83[3];
    v73 = v4;
    v74 = v5;
    v75 = v6;
    v76 = v51;
    v77 = v50;
    *v78 = *v82;
    *&v78[3] = *&v82[3];
    v79 = v48;
    v80 = v47;
    v81 = v39;
    sub_25462BE9C(v52, &v84);
    sub_25462D2BC(&v66);
    v90 = v63;
    v91 = v64;
    v92 = v65;
    v86 = v59;
    v87 = v60;
    v88 = v61;
    v89 = v62;
    v84 = v57;
    v85 = v58;
  }

  else
  {

    swift_unknownObjectRelease();

    sub_25462D2A0(&v84);
  }

  v42 = v91;
  *(a2 + 96) = v90;
  *(a2 + 112) = v42;
  *(a2 + 128) = v92;
  v43 = v87;
  *(a2 + 32) = v86;
  *(a2 + 48) = v43;
  v44 = v89;
  *(a2 + 64) = v88;
  *(a2 + 80) = v44;
  result = v85;
  *a2 = v84;
  *(a2 + 16) = result;
  return result;
}

double sub_25462D2A0(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for HoverTouchEnablementButton.Direction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverTouchEnablementButton.Direction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25462D47C()
{
  result = qword_27F60B960;
  if (!qword_27F60B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B778, &qword_254682CD8);
    sub_25462D508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B960);
  }

  return result;
}

unint64_t sub_25462D508()
{
  result = qword_27F60B968;
  if (!qword_27F60B968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B770, &qword_254682CD0);
    sub_25462D594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B968);
  }

  return result;
}

unint64_t sub_25462D594()
{
  result = qword_27F60B970;
  if (!qword_27F60B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B768, &qword_254682CC8);
    sub_25462BF3C();
    sub_25462D650(&qword_27F60B978, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B970);
  }

  return result;
}

uint64_t sub_25462D650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25462D69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60B980;
  if (!qword_27F60B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B980);
  }

  return result;
}

uint64_t HoverTextTimer.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    if ([v2 isValid])
    {
      [v2 invalidate];
    }
  }

  return v0;
}

uint64_t HoverTextTimer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    if ([v2 isValid])
    {
      [v2 invalidate];
    }
  }

  return swift_deallocClassInstance();
}

void sub_25462D81C(double a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_25462DAF0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_254632CD0;
  v8[3] = &block_descriptor_1;
  v5 = _Block_copy(v8);

  v6 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:a1];
  _Block_release(v5);
  v7 = *(v1 + 16);
  *(v1 + 16) = v6;
}

double sub_25462D930(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);

    v4(v5);
  }

  return result;
}

void sub_25462D9A8()
{
  v1 = sub_25467F700();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = v5;
    if ([v6 isValid])
    {
      v7 = [v6 fireDate];
      sub_25467F6E0();

      sub_25467F6D0();
      (*(v2 + 8))(v4, v1);
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25462DB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v114 = a2;
  v135 = sub_25467F650();
  v112 = *(v135 - 8);
  v3 = MEMORY[0x28223BE20](v135);
  v111 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v123 = &v109 - v6;
  MEMORY[0x28223BE20](v5);
  v128 = &v109 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9A8, &qword_2546838A0);
  v8 = MEMORY[0x28223BE20](v139);
  v136 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v137 = &v109 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9B0, &unk_254682FB0);
  v11 = MEMORY[0x28223BE20](v138);
  v110 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v109 - v14;
  MEMORY[0x28223BE20](v13);
  v126 = &v109 - v15;
  v16 = sub_25467F550();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v130 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v125 = &v109 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v140 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v109 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v109 - v29;
  v31 = sub_25467F4F0();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v121 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v124 = &v109 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v109 - v37;
  v141 = v2;
  sub_25467F4A0();
  v39 = sub_25462F1DC(&qword_27F60B6B0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  sub_254680670();
  sub_254680690();
  v132 = sub_25462F1DC(&qword_27F60B6B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  v40 = sub_254680430();
  v113 = v17;
  v41 = *(v17 + 8);
  v41(v28, v16);
  v143 = v17 + 8;
  v41(v30, v16);
  v42 = *(v32 + 8);
  v133 = v32 + 8;
  v134 = v31;
  v131 = v42;
  v42(v38, v31);
  if (v40)
  {
    v43 = sub_25467F5A0();
    return (*(*(v43 - 8) + 16))(v114, v141, v43);
  }

  v45 = v140;
  sub_25467F4B0();
  sub_25467F570();
  v46 = sub_25467F540();
  v41(v30, v16);
  v142 = v41;
  v129 = v39;
  v47 = v41;
  v48 = v30;
  if (v46)
  {
    v120 = sub_25462F1DC(&qword_27F60B9B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    v119 = (v113 + 16);
    v49 = (v113 + 32);
    v117 = (v112 + 8);
    v118 = (v113 + 32);
    while (1)
    {
      result = sub_254680420();
      if ((result & 1) == 0)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      v51 = *v119;
      v52 = v45;
      v53 = v137;
      (*v119)(v137, v52, v16);
      v54 = v139;
      v51((v53 + *(v139 + 48)), v52, v16);
      v55 = v136;
      sub_25462F224(v53, v136);
      v56 = *(v54 + 48);
      v57 = *v49;
      v58 = v126;
      (*v49)(v126, v55, v16);
      v142(v55 + v56, v16);
      sub_25462CC24(v53, v55, &qword_27F60B9A8, &qword_2546838A0);
      v57((v58 + *(v138 + 36)), v55 + *(v54 + 48), v16);
      v59 = v55;
      v47 = v142;
      v142(v59, v16);
      sub_25462F294();
      v60 = v128;
      sub_25467F5E0();
      sub_25462F2F8(v58);
      v61 = v124;
      sub_25467F640();
      (*v117)(v60, v135);
      v62 = v125;
      v63 = v134;
      sub_254680670();
      sub_254680690();
      LOBYTE(v56) = sub_254680430();
      v47(v48, v16);
      if (v56)
      {
        break;
      }

      v64 = v63;
      v65 = v61;
      v66 = sub_2546806B0();
      v69 = *v67;
      v68 = v67[1];

      v66(v144, 0);
      v47(v62, v16);
      v131(v65, v64);
      if ((sub_25462F360(v69, v68) & 0x100000000) != 0)
      {

        goto LABEL_6;
      }

      v70 = sub_25462F4B0(v69, v68);

      v71 = v70 == 1;
      v45 = v140;
      v49 = v118;
      if (v71 && (sub_25467F430() & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_7:
      sub_25467F5A0();
      sub_25462F1DC(&qword_27F60B9A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
      sub_25467F680();
      v47(v45, v16);
      v57(v45, v48, v16);
      sub_25467F570();
      v50 = sub_25467F540();
      v47(v48, v16);
      if ((v50 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v47(v62, v16);
    v131(v61, v63);
LABEL_6:
    v45 = v140;
    v49 = v118;
    goto LABEL_7;
  }

LABEL_16:
  sub_25467F570();
  v72 = sub_25467F5A0();
  v73 = sub_25462F1DC(&qword_27F60B9A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  v74 = v127;
  v126 = v72;
  v125 = v73;
  sub_25467F690();
  v47(v48, v16);
  v75 = sub_25462F1DC(&qword_27F60B9B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
  if (sub_254680410())
  {
    v119 = (v113 + 16);
    v76 = (v113 + 32);
    v118 = (v112 + 8);
    v116 = v48;
    v124 = v75;
    v120 = v113 + 32;
    while (1)
    {
      result = sub_254680420();
      if ((result & 1) == 0)
      {
        goto LABEL_36;
      }

      v77 = *v119;
      v78 = v74;
      v79 = v137;
      (*v119)(v137, v78, v16);
      v80 = v139;
      v77((v79 + *(v139 + 48)), v78, v16);
      v81 = v136;
      sub_25462F224(v79, v136);
      v82 = *(v80 + 48);
      v83 = *v76;
      v84 = v122;
      (*v76)(v122, v81, v16);
      v142(v81 + v82, v16);
      sub_25462CC24(v79, v81, &qword_27F60B9A8, &qword_2546838A0);
      v85 = v84 + *(v138 + 36);
      v86 = v81 + *(v80 + 48);
      v128 = v83;
      (v83)(v85, v86, v16);
      v142(v81, v16);
      sub_25462F294();
      v87 = v123;
      sub_25467F5E0();
      v88 = v142;
      sub_25462F2F8(v84);
      v89 = v121;
      sub_25467F640();
      (*v118)(v87, v135);
      v90 = v134;
      sub_254680670();
      sub_254680690();
      LOBYTE(v82) = sub_254680430();
      v88(v48, v16);
      if (v82)
      {
        break;
      }

      v91 = v130;
      v92 = v89;
      v93 = sub_2546806B0();
      v96 = *v94;
      v95 = v94[1];

      v93(v144, 0);
      v88(v91, v16);
      v131(v92, v90);
      if ((sub_25462F360(v96, v95) & 0x100000000) != 0)
      {

        v74 = v127;
        v47 = v88;
        goto LABEL_19;
      }

      v97 = sub_25462F4B0(v96, v95);

      v71 = v97 == 1;
      v74 = v127;
      v47 = v88;
      v48 = v116;
      v76 = v120;
      if (v71 && (sub_25467F430() & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_20:
      sub_25467F690();
      v47(v74, v16);
      (v128)(v74, v48, v16);
      if ((sub_254680410() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v88(v130, v16);
    v131(v89, v90);
    v74 = v127;
    v47 = v88;
LABEL_19:
    v48 = v116;
    v76 = v120;
    goto LABEL_20;
  }

LABEL_29:
  v98 = v140;
  if (sub_254680410())
  {
    sub_25467F590();
    v47(v74, v16);
    v99 = v98;
  }

  else
  {
    result = sub_254680420();
    if ((result & 1) == 0)
    {
      goto LABEL_37;
    }

    v100 = v113;
    v101 = *(v113 + 16);
    v102 = v74;
    v103 = v137;
    v101(v137, v98, v16);
    v104 = v139;
    v101((v103 + *(v139 + 48)), v102, v16);
    v105 = v136;
    sub_25462F224(v103, v136);
    v106 = *(v104 + 48);
    v107 = *(v100 + 32);
    v108 = v110;
    v107(v110, v105, v16);
    v47((v105 + v106), v16);
    sub_25462CC24(v103, v105, &qword_27F60B9A8, &qword_2546838A0);
    v107((v108 + *(v138 + 36)), v105 + *(v104 + 48), v16);
    v47(v105, v16);
    sub_25462F294();
    sub_25467F5E0();
    sub_25462F2F8(v108);
    sub_25467F600();
    v47(v127, v16);
    v99 = v140;
  }

  return (v47)(v99, v16);
}

uint64_t sub_25462EBC4(char *a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B990, &qword_254682FA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = (&v30 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B998, &qword_254682FA8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_25467F5A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;

  v33 = v18;
  sub_25467F500();
  result = sub_25467F590();
  v20 = 0;
  v21 = *(v34 + 16);
  v30 = v13 + 16;
  v31 = v13;
  v38 = (v4 + 56);
  v39 = v9;
  v35 = v21 - 1;
  v36 = (v13 + 32);
  v22 = (v13 + 8);
  for (i = v21; ; v21 = i)
  {
    if (v20 == v21)
    {
      v23 = 1;
      v20 = v21;
      goto LABEL_8;
    }

    if (v20 >= v21)
    {
      break;
    }

    if (__OFADD__(v20, 1))
    {
      goto LABEL_13;
    }

    v24 = v31;
    v25 = v32;
    v26 = v34 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
    v27 = *(v3 + 48);
    *v32 = v20;
    (*(v24 + 16))(&v25[v27], v26, v12);
    v28 = v25;
    v9 = v39;
    sub_25462CC24(v28, v39, &qword_27F60B990, &qword_254682FA0);
    v23 = 0;
    ++v20;
LABEL_8:
    (*v38)(v9, v23, 1, v3);
    sub_25462CC24(v9, v11, &qword_27F60B998, &qword_254682FA8);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {
      return (*v22)(v33, v12);
    }

    v29 = *v11;
    (*v36)(v16, &v11[*(v3 + 48)], v12);
    sub_25462F1DC(&qword_27F60B9A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
    sub_25467F560();
    if (v29 != v35)
    {
      sub_25467F560();
    }

    result = (*v22)(v16, v12);
    v9 = v39;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_25462EFBC(void *a1)
{
  v3 = sub_25467F5A0();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v6 = sub_25467FE50();
  v8 = v7;
  v10 = v9;
  v11 = a1;
  sub_25467FDA0();
  v12 = sub_25467FDF0();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_25462F1CC(v6, v8, v10 & 1);

  v24[1] = v12;
  v24[2] = v14;
  v25 = v16 & 1;
  v26 = v18;
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B988, &qword_254682F98));
  v20 = sub_25467FC90();
  v21 = [v20 view];
  if (v21)
  {
    v22 = v21;
    [v21 setNeedsLayout];

    v23 = [v20 view];
    if (v23)
    {
      [v23 layoutIfNeeded];

      sub_25467FC80();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25462F1CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25462F1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25462F224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9A8, &qword_2546838A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25462F294()
{
  result = qword_27F60B9C0;
  if (!qword_27F60B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B9B0, &unk_254682FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B9C0);
  }

  return result;
}

uint64_t sub_25462F2F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9B0, &unk_254682FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25462F360(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25462F700(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_254680900();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_254680940() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_25462F4B0(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_25462F798(0xFuLL, a1, a2);
  v8 = sub_25462F798(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = sub_2546804B0();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = sub_254680940();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2546804A0();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = sub_254680940();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_25462F700(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25462FA44(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25462F8A4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25462F798(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25462F830(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25462F8A4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25462F830(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25462F9C8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25462F8A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_254680940();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_25462F9C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_254680530();
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
    v5 = MEMORY[0x259C14390](15, a1 >> 16);
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

unint64_t sub_25462FA44(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25462F9C8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25462FAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9C8, &qword_254683058);
  MEMORY[0x28223BE20](v31[0]);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9D0, &qword_254683060);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9D8, &qword_254683068);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  swift_getKeyPath();
  *&v32 = a1;
  sub_254631FE4();
  sub_25467F780();

  if (*(a1 + 144) == 1)
  {
    *v10 = sub_25467FBF0();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA78, &qword_254683100);
    sub_2546316C4(a1, &v10[*(v11 + 44)]);
    v12 = [objc_opt_self() mainScreen];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v35.origin.x = UIEdgeInsetsInsetRect(v14, v16, v18, v20, *(a1 + 32), *(a1 + 40));
    CGRectGetWidth(v35);
    swift_getKeyPath();
    *&v32 = a1;
    sub_25467F780();

    v21 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
    CTFontGetAscent(v21);
    CTFontGetDescent(v21);
    CTFontGetLeading(v21);

    sub_254680250();
    sub_25467F990();
    v22 = &v10[*(v8 + 36)];
    v23 = v33;
    *v22 = v32;
    *(v22 + 1) = v23;
    *(v22 + 2) = v34;
    v24 = &qword_27F60B9D8;
    v25 = &qword_254683068;
    sub_25462CC8C(v10, v7, &qword_27F60B9D8, &qword_254683068);
    swift_storeEnumTagMultiPayload();
    sub_254632278();
    sub_254632330(&qword_27F60BA00, &qword_27F60B9C8, &qword_254683058, sub_2546323B4);
    sub_25467FCC0();
    v26 = v10;
  }

  else
  {
    sub_25462FFB8(a1, v4);
    swift_getKeyPath();
    *&v32 = a1;
    sub_25467F780();

    v27 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
    CTFontGetAscent(v27);
    CTFontGetDescent(v27);
    CTFontGetLeading(v27);

    sub_254680250();
    sub_25467F990();
    v28 = &v4[*(v31[0] + 36)];
    v29 = v33;
    *v28 = v32;
    *(v28 + 1) = v29;
    *(v28 + 2) = v34;
    v24 = &qword_27F60B9C8;
    v25 = &qword_254683058;
    sub_25462CC8C(v4, v7, &qword_27F60B9C8, &qword_254683058);
    swift_storeEnumTagMultiPayload();
    sub_254632278();
    sub_254632330(&qword_27F60BA00, &qword_27F60B9C8, &qword_254683058, sub_2546323B4);
    sub_25467FCC0();
    v26 = v4;
  }

  return sub_254626CC4(v26, v24, v25);
}

uint64_t sub_25462FFB8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAD8, &qword_2546831A0);
  MEMORY[0x28223BE20](v65);
  v66 = &v59 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA20, &qword_2546830D0);
  MEMORY[0x28223BE20](v69);
  v59 = &v59 - v4;
  v5 = sub_25467F5A0();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA30, &qword_2546830D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  *v9 = sub_25467FBF0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAE0, &qword_2546831A8);
  sub_254630630(a1, &v9[*(v10 + 44)]);
  v60 = objc_opt_self();
  v11 = [v60 mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v82.origin.x = UIEdgeInsetsInsetRect(v13, v15, v17, v19, a1[4], a1[5]);
  CGRectGetWidth(v82);
  sub_254630EE8(a1);
  sub_25467F990();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA40, &qword_2546830E0) + 36)];
  v21 = v80;
  *v20 = v79;
  *(v20 + 1) = v21;
  *(v20 + 2) = v81;
  v22 = sub_254680250();
  v24 = v23;
  swift_getKeyPath();
  *&v74 = a1;
  sub_254631FE4();

  sub_25467F780();

  v25 = a1[17] == 0.0;
  v26 = 0.0;
  v64 = v7;
  v27 = *(v7 + 36);
  if (v25)
  {
    v26 = 1.0;
  }

  v68 = v9;
  v28 = &v9[v27];
  *v28 = a1;
  *(v28 + 1) = v26;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  swift_getKeyPath();
  *&v74 = a1;
  sub_25467F780();

  v29 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
  swift_beginAccess();
  v31 = v61;
  v30 = v62;
  v32 = v63;
  (*(v62 + 16))(v61, a1 + v29, v63);
  swift_getKeyPath();
  *&v74 = a1;
  sub_25467F780();

  v33 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
  sub_25462EFBC(v33);
  v35 = v34;

  (*(v30 + 8))(v31, v32);
  v36 = v35 + 2.0;
  v37 = [v60 mainScreen];
  [v37 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v83.origin.x = UIEdgeInsetsInsetRect(v39, v41, v43, v45, a1[4], a1[5]);
  if (CGRectGetWidth(v83) * 0.85 <= v36)
  {
    v48 = sub_254680250();
    v50 = v49;
    sub_2546311A8(a1, &v74);
    v51 = v74;
    v52 = v75;
    v53 = v76;
    v54 = BYTE8(v76);
    v70[64] = BYTE8(v76);
    *&v71 = v48;
    *(&v71 + 1) = v50;
    v72 = v74;
    v73[0] = v75;
    *&v73[1] = v76;
    BYTE8(v73[1]) = BYTE8(v76);
    v55 = v59;
    sub_25462CC8C(v68, v59, &qword_27F60BA30, &qword_2546830D8);
    v56 = (v55 + *(v69 + 36));
    v57 = v72;
    *v56 = v71;
    v56[1] = v57;
    v56[2] = v73[0];
    *(v56 + 41) = *(v73 + 9);
    *&v74 = v48;
    *(&v74 + 1) = v50;
    v75 = v51;
    v76 = v52;
    v77 = v53;
    v78 = v54;
    sub_25463273C(&v71, v70);
    sub_254626CC4(&v74, &qword_27F60BA70, &qword_2546830F8);
    sub_25462CC8C(v55, v66, &qword_27F60BA20, &qword_2546830D0);
    swift_storeEnumTagMultiPayload();
    sub_254632440();
    sub_2546324F8();
    sub_25467FCC0();
    sub_254626CC4(v55, &qword_27F60BA20, &qword_2546830D0);
    v47 = v68;
  }

  else
  {
    v46 = v68;
    sub_25462CC8C(v68, v66, &qword_27F60BA30, &qword_2546830D8);
    swift_storeEnumTagMultiPayload();
    sub_254632440();
    sub_2546324F8();
    sub_25467FCC0();
    v47 = v46;
  }

  return sub_254626CC4(v47, &qword_27F60BA30, &qword_2546830D8);
}

uint64_t sub_254630630@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v3 = sub_25467FCE0();
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAF8, &qword_254683208);
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v72 - v8;
  v9 = sub_25467F5A0();
  v89 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore___observationRegistrar;
  *&v98[0] = a1;
  sub_254631FE4();
  v88 = v12;
  sub_25467F780();

  v79 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__isKeyboardLanguageRTL;
  v13 = &unk_27F60C000;
  if (*(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__isKeyboardLanguageRTL) == 1 && (swift_getKeyPath(), *&v98[0] = a1, sub_25467F780(), , v14 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText, swift_beginAccess(), v15 = v89, (*(v89 + 16))(v11, a1 + v14, v9), swift_getKeyPath(), *&v98[0] = a1, sub_25467F780(), , v16 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont), sub_25462EFBC(v16), v18 = v17, v16, v19 = v15, v13 = &unk_27F60C000, (*(v19 + 8))(v11, v9), v20 = v18 + 2.0, v21 = [objc_opt_self() mainScreen], objc_msgSend(v21, sel_bounds), v23 = v22, v25 = v24, v27 = v26, v29 = v28, v21, v100.origin.x = UIEdgeInsetsInsetRect(v23, v25, v27, v29, a1[4], a1[5]), v20 < CGRectGetWidth(v100) * 0.85))
  {
    v80 = 1;
  }

  else
  {
    v80 = 0x100000000;
  }

  swift_getKeyPath();
  *&v98[0] = a1;
  sub_25467F780();

  v30 = v13[60];
  swift_beginAccess();
  v31 = *(v89 + 16);
  v74 = v89 + 16;
  v75 = v30;
  v73 = v31;
  v31(v11, a1 + v30, v9);
  v32 = sub_25467FE50();
  v76 = v11;
  v77 = v9;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v78 = v38;
  swift_getKeyPath();
  *&v98[0] = a1;
  sub_25467F780();

  if (a1[17] == 0.0)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  swift_getKeyPath();
  *&v98[0] = a1;
  sub_25467F780();

  v72 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont;
  v40 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
  CTFontGetAscent(v40);
  CTFontGetDescent(v40);
  CTFontGetLeading(v40);

  sub_254680250();
  sub_25467F990();
  v41 = v37 & 1;
  v99 = v41;
  sub_25465FABC();
  *v93 = v39;
  *(v93 + 8) = v95;
  *&v91 = v33;
  *(&v91 + 1) = v35;
  LOBYTE(v92) = v41;
  *(&v92 + 1) = v78;
  *(&v93[1] + 8) = v96;
  *(&v93[2] + 8) = v97;
  WORD4(v93[3]) = 1;
  v94 = v42;
  v43 = v81;
  sub_25467FD10();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BB00, &qword_254683210);
  sub_254632904();
  v44 = v83;
  sub_25467FEA0();

  (*(v82 + 8))(v43, v44);
  v98[4] = v93[2];
  v98[5] = v93[3];
  v98[6] = v94;
  v98[0] = v91;
  v98[1] = v92;
  v98[2] = v93[0];
  v98[3] = v93[1];
  sub_254626CC4(v98, &qword_27F60BB00, &qword_254683210);
  swift_getKeyPath();
  *&v91 = a1;
  sub_25467F780();

  if ((*(a1 + v79) & 1) != 0 || (swift_getKeyPath(), *&v91 = a1, sub_25467F780(), , v45 = v76, v46 = v77, v73(v76, a1 + v75, v77), swift_getKeyPath(), *&v91 = a1, sub_25467F780(), , v47 = *(a1 + v72), sub_25462EFBC(v47), v49 = v48, v47, (*(v89 + 8))(v45, v46), v50 = v49 + 2.0, v51 = [objc_opt_self() mainScreen], objc_msgSend(v51, sel_bounds), v53 = v52, v55 = v54, v57 = v56, v59 = v58, v51, v101.origin.x = UIEdgeInsetsInsetRect(v53, v55, v57, v59, a1[4], a1[5]), v50 >= CGRectGetWidth(v101) * 0.85))
  {
    v60 = 0;
    LODWORD(v89) = 1;
  }

  else
  {
    LODWORD(v89) = 0;
    v60 = 1;
  }

  v62 = v84;
  v61 = v85;
  v63 = *(v85 + 16);
  v64 = v90;
  v65 = v86;
  v63(v84, v90, v86);
  v66 = v87;
  *v87 = 0;
  v67 = BYTE4(v80);
  *(v66 + 8) = v80;
  *(v66 + 9) = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BB40, &qword_254683230);
  v63(v66 + *(v68 + 48), v62, v65);
  v69 = v66 + *(v68 + 64);
  *v69 = 0;
  v69[8] = v60;
  v69[9] = v89;
  v70 = *(v61 + 8);
  v70(v64, v65);
  return (v70)(v62, v65);
}

uint64_t sub_254630EE8(double *a1)
{
  v2 = sub_25467F5A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22[1] = a1;
  sub_254631FE4();
  sub_25467F780();

  v6 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  swift_getKeyPath();
  v22[0] = a1;
  sub_25467F780();

  v7 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
  sub_25462EFBC(v7);
  v9 = v8;

  (*(v3 + 8))(v5, v2);
  v10 = v9 + 2.0;
  v11 = [objc_opt_self() mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v23.origin.x = UIEdgeInsetsInsetRect(v13, v15, v17, v19, a1[4], a1[5]);
  v20 = CGRectGetWidth(v23) * 0.85;
  swift_getKeyPath();
  if (v20 <= v10)
  {
    v22[0] = a1;
    sub_25467F780();

    if (*(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__isKeyboardLanguageRTL) == 1)
    {
      return sub_254680260();
    }
  }

  else
  {
    v22[0] = a1;
    sub_25467F780();

    if (*(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__isKeyboardLanguageRTL) != 1)
    {
      return sub_254680260();
    }
  }

  return sub_254680270();
}

double sub_2546311A8@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  *&v10 = a1;
  sub_254631FE4();
  sub_25467F780();

  v4 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__isKeyboardLanguageRTL);
  v5 = sub_25463133C(a1);
  if (v4)
  {
    sub_254680330();
    sub_254680320();
  }

  else
  {
    sub_254680320();
    sub_254680330();
  }

  MEMORY[0x259C140A0](v5);
  v6 = sub_25467FA80();
  sub_2546327AC(v6, v7, v8);
  sub_25467FCC0();
  result = *&a1;
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_25463133C(double *a1)
{
  v2 = sub_25467F5A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAF0, &qword_254683200);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254682FC0;
  *(v6 + 32) = sub_254680030();
  *(v6 + 40) = sub_254680020();
  *(v6 + 48) = sub_254680020();
  *(v6 + 56) = sub_254680020();
  *(v6 + 64) = sub_254680020();
  *(v6 + 72) = sub_254680020();
  *(v6 + 80) = sub_254680020();
  *(v6 + 88) = sub_254680020();
  *(v6 + 96) = sub_254680020();
  *(v6 + 104) = sub_254680020();
  v26 = v6;
  sub_25465FABC();
  if (v7 != 0.0)
  {
    sub_254680030();
    MEMORY[0x259C14410]();
    if (*(v26 + 16) >= *(v26 + 24) >> 1)
    {
      sub_2546805D0();
    }

    sub_2546805F0();
    v6 = v26;
  }

  swift_getKeyPath();
  v25[2] = a1;
  sub_254631FE4();
  sub_25467F780();

  v8 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v8, v2);
  swift_getKeyPath();
  v25[1] = a1;
  sub_25467F780();

  v9 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
  sub_25462EFBC(v9);
  v11 = v10;

  (*(v3 + 8))(v5, v2);
  sub_25465FABC();
  v13 = v11 + 2.0 - v12;
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = UIEdgeInsetsInsetRect(v16, v18, v20, v22, a1[4], a1[5]);
  if (v13 <= CGRectGetWidth(v27) * 0.85)
  {
    v23 = *(v6 + 16);
    if (v23)
    {
      v26 = v6;
      if ((v23 - 1) <= *(v6 + 24) >> 1)
      {
LABEL_8:
        sub_254632800(0, 1, 0);
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    v6 = sub_254680930();
    v26 = v6;
    goto LABEL_8;
  }

  return v6;
}

uint64_t sub_2546316C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA80, &qword_254683108);
  MEMORY[0x28223BE20](v54);
  v4 = &v45 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA88, &qword_254683110);
  MEMORY[0x28223BE20](v51);
  v52 = &v45 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA90, &qword_254683118);
  MEMORY[0x28223BE20](v53);
  v48 = &v45 - v6;
  v7 = sub_25467FA90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA98, &qword_254683120);
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v45 - v15;
  swift_getKeyPath();
  v57 = a1;
  sub_254631FE4();
  sub_25467F780();

  if (*(a1 + 136) < 0.0)
  {
    v16 = sub_2546800A0();
    swift_getKeyPath();
    v57 = a1;
    sub_25467F780();

    v17 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__borderColor);
    v57 = v16;
    v58 = v17;
    (*(v8 + 104))(v10, *MEMORY[0x277CDF9E8], v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAA8, &unk_254683180);
    sub_254632684();
    v18 = v7;
    v19 = v55;
    sub_25467FED0();
    (*(v8 + 8))(v10, v18);

    v21 = v49;
    v20 = v50;
    v22 = *(v49 + 16);
    v22(v14, v19, v50);
    v23 = v48;
    *v48 = 0;
    *(v23 + 8) = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAD0, &qword_254683198);
    v22((v23 + *(v24 + 48)), v14, v20);
    v25 = *(v21 + 8);
    v25(v14, v20);
    sub_25462CC8C(v23, v52, &qword_27F60BA90, &qword_254683118);
    swift_storeEnumTagMultiPayload();
    v26 = MEMORY[0x277CE14C0];
    sub_25462C9F0(&qword_27F60BAC0, &qword_27F60BA90, &qword_254683118, MEMORY[0x277CE14C0]);
    sub_25462C9F0(&qword_27F60BAC8, &qword_27F60BA80, &qword_254683108, v26);
    sub_25467FCC0();
    sub_254626CC4(v23, &qword_27F60BA90, &qword_254683118);
    v25(v19, v20);
LABEL_5:
    v31 = 0;
    goto LABEL_6;
  }

  v27 = v7;
  v28 = v10;
  v46 = v8;
  v47 = v14;
  v29 = v27;
  v48 = v4;
  v30 = v55;
  swift_getKeyPath();
  v57 = a1;
  sub_25467F780();

  v31 = 1;
  if (*(a1 + 136) > 0.0)
  {
    v32 = sub_2546800A0();
    swift_getKeyPath();
    v57 = a1;
    sub_25467F780();

    v33 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__borderColor);
    v57 = v32;
    v58 = v33;
    v34 = v46;
    (*(v46 + 104))(v28, *MEMORY[0x277CDF9E8], v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAA8, &unk_254683180);
    sub_254632684();
    sub_25467FED0();
    (*(v34 + 8))(v28, v29);

    v36 = v49;
    v35 = v50;
    v37 = *(v49 + 16);
    v38 = v47;
    v37(v47, v30, v50);
    v39 = v48;
    v37(v48, v38, v35);
    v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAB8, &qword_254683190) + 48);
    *v40 = 0;
    *(v40 + 8) = 1;
    v41 = *(v36 + 8);
    v41(v38, v35);
    sub_25462CC8C(v39, v52, &qword_27F60BA80, &qword_254683108);
    swift_storeEnumTagMultiPayload();
    v42 = MEMORY[0x277CE14C0];
    sub_25462C9F0(&qword_27F60BAC0, &qword_27F60BA90, &qword_254683118, MEMORY[0x277CE14C0]);
    sub_25462C9F0(&qword_27F60BAC8, &qword_27F60BA80, &qword_254683108, v42);
    sub_25467FCC0();
    sub_254626CC4(v39, &qword_27F60BA80, &qword_254683108);
    v41(v30, v35);
    goto LABEL_5;
  }

LABEL_6:
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAA0, &qword_254683150);
  return (*(*(v43 - 8) + 56))(v56, v31, 1, v43);
}

double sub_254631EA4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254631FE4();
  sub_25467F780();

  result = *(v3 + 136);
  *a2 = result;
  return result;
}

void sub_254631F44(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254631FE4();
  sub_25467F780();

  *a2 = *(v3 + 144);
}

unint64_t sub_254631FE4()
{
  result = qword_27F60B9E0;
  if (!qword_27F60B9E0)
  {
    type metadata accessor for HoverTypingStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B9E0);
  }

  return result;
}

void sub_25463203C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254631FE4();
  sub_25467F780();

  *a2 = *(v3 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__isKeyboardLanguageRTL);
}

uint64_t sub_2546320E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254631FE4();
  sub_25467F780();

  v4 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
  swift_beginAccess();
  v5 = sub_25467F5A0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2546321AC(uint64_t a1)
{
  v2 = sub_25467F5A0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_25466625C(v4);
}

unint64_t sub_254632278()
{
  result = qword_27F60B9E8;
  if (!qword_27F60B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60B9D8, &qword_254683068);
    sub_25462C9F0(&qword_27F60B9F0, &qword_27F60B9F8, &qword_2546830C0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B9E8);
  }

  return result;
}

uint64_t sub_254632330(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2546323B4()
{
  result = qword_27F60BA08;
  if (!qword_27F60BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BA10, &qword_2546830C8);
    sub_254632440();
    sub_2546324F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BA08);
  }

  return result;
}

unint64_t sub_254632440()
{
  result = qword_27F60BA18;
  if (!qword_27F60BA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BA20, &qword_2546830D0);
    sub_2546324F8();
    sub_25462C9F0(&qword_27F60BA68, &qword_27F60BA70, &qword_2546830F8, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BA18);
  }

  return result;
}

unint64_t sub_2546324F8()
{
  result = qword_27F60BA28;
  if (!qword_27F60BA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BA30, &qword_2546830D8);
    sub_2546325B0();
    sub_25462C9F0(&qword_27F60BA58, &qword_27F60BA60, &qword_2546830F0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BA28);
  }

  return result;
}

unint64_t sub_2546325B0()
{
  result = qword_27F60BA38;
  if (!qword_27F60BA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BA40, &qword_2546830E0);
    sub_25462C9F0(&qword_27F60BA48, &qword_27F60BA50, &qword_2546830E8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BA38);
  }

  return result;
}

unint64_t sub_254632684()
{
  result = qword_27F60BAB0;
  if (!qword_27F60BAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BAA8, &unk_254683180);
    sub_25462C9F0(&qword_27F60B8C0, &qword_27F60B8C8, &qword_254682DD8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BAB0);
  }

  return result;
}

uint64_t sub_25463273C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BA70, &qword_2546830F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2546327AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BAE8;
  if (!qword_27F60BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BAE8);
  }

  return result;
}

unint64_t sub_254632800(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_2546328C0(double a1)
{
  sub_25465FC10();

  sub_2546602A0(1, 0);
}

unint64_t sub_254632904()
{
  result = qword_27F60BB08;
  if (!qword_27F60BB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BB00, &qword_254683210);
    sub_254632990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BB08);
  }

  return result;
}

unint64_t sub_254632990()
{
  result = qword_27F60BB10;
  if (!qword_27F60BB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BB18, &qword_254683218);
    sub_254632330(&qword_27F60BB20, &qword_27F60BB28, &qword_254683220, sub_254632A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BB10);
  }

  return result;
}

unint64_t sub_254632A48()
{
  result = qword_27F60BB30;
  if (!qword_27F60BB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BB38, &qword_254683228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BB30);
  }

  return result;
}

uint64_t sub_254632ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_254632BCC();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2546809C0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2546809C0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_254632BCC()
{
  result = qword_27F60BB48;
  if (!qword_27F60BB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60BB48);
  }

  return result;
}

unint64_t sub_254632C18()
{
  result = qword_27F60BB50;
  if (!qword_27F60BB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BB58, &qword_254683238);
    sub_254632278();
    sub_254632330(&qword_27F60BA00, &qword_27F60B9C8, &qword_254683058, sub_2546323B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BB50);
  }

  return result;
}

void sub_254632CD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_254632D38(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  *(v5 + qword_27F60BB70) = 0;
  v8 = (v5 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + qword_27F60BB78);
  *v9 = a2;
  v9[1] = a3;
  if (a4)
  {
    type metadata accessor for HoverTextStore(0);
    swift_allocObject();

    v11 = sub_25461EDD4(a1 & 1, a2, a3);
    v12 = &off_28667BAD8;
  }

  else
  {
    type metadata accessor for HoverTypingStore(0);
    swift_allocObject();

    v11 = sub_25466716C(a2, a3);
    v12 = &off_28667D290;
  }

  v13 = (v5 + qword_27F60BB60);
  *v13 = v11;
  v13[1] = v12;
  return sub_25467FC90();
}

void sub_254632E44(uint64_t a1)
{
  *(a1 + qword_27F60BB70) = 0;
  v1 = (a1 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  *v1 = 0;
  v1[1] = 0;
  sub_2546809F0();
  __break(1u);
}

Swift::Void __swiftcall HoverTextRootViewController.startHoverText()()
{
  v1 = type metadata accessor for HoverTextPresentationEvent(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_27F60BB60 + 8);
  v6 = **(v0 + qword_27F60BB60);
  v12[1] = *(v0 + qword_27F60BB60);
  v4[66] = 12;

  sub_25467F500();
  v7 = &v4[v2[10]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v4[v2[11]];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v4[v2[12]];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[v2[13]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[v2[14]] = 0;
  *&v4[v2[15]] = 0;
  v11 = &v4[v2[16]];
  *v11 = 0;
  *(v11 + 1) = 0;
  *v4 = 2;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 7) = 0;
  *(v4 + 32) = 448;
  (*(v5 + 304))(v4, v6, v5);
  sub_254626A6C(v4);
}

Swift::Void __swiftcall HoverTextRootViewController.showAlert(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for HoverTextPresentationEvent(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_27F60BB60 + 8);
  v9 = **(v1 + qword_27F60BB60);
  v15[1] = *(v1 + qword_27F60BB60);
  v7[66] = 12;

  sub_25467F500();
  v10 = &v7[v5[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v7[v5[11]];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v7[v5[12]];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v7[v5[13]];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v7[v5[14]] = 0;
  *&v7[v5[15]] = 0;
  v14 = &v7[v5[16]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *v7 = countAndFlagsBits;
  *(v7 + 1) = object;
  *(v7 + 32) = 320;
  (*(v8 + 304))(v7, v9, v8);
  sub_254626A6C(v7);
}

uint64_t HoverTextRootViewController.showStatusAlertForActivationLockDidChange.getter()
{
  v1 = (v0 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_254619928(*v1, v1[1]);
  return v2;
}

uint64_t HoverTextRootViewController.showStatusAlertForActivationLockDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_254619940(v6, v7);
}

Swift::Void __swiftcall HoverTextRootViewController.handleElementVisualsUpdated()()
{
  v1 = qword_27F60BB70;
  [*(v0 + qword_27F60BB70) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_254633F3C;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_254632CD0;
  v7[3] = &block_descriptor_2;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:0.2];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
}

double sub_254633418(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for HoverTextPresentationEvent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + qword_27F60BB60);
    v8 = *(Strong + qword_27F60BB60 + 8);
    v9 = Strong;

    v10 = *v7;
    v16 = v7;
    v4[66] = 12;
    sub_25467F500();
    v11 = &v4[v2[8]];
    *v11 = 0;
    *(v11 + 1) = 0;
    v12 = &v4[v2[9]];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v13 = &v4[v2[10]];
    *v13 = 0;
    v13[8] = 1;
    v14 = &v4[v2[11]];
    *v14 = 0;
    *(v14 + 1) = 0;
    *&v4[v2[12]] = 0;
    *&v4[v2[13]] = 0;
    v15 = &v4[v2[14]];
    *v15 = 0;
    *(v15 + 1) = 0;
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 7) = 0;
    *(v4 + 32) = 448;
    (*(v8 + 304))(v4, v10, v8);
    sub_254626A6C(v4);
  }

  return result;
}

unint64_t HoverTextRootViewController.windowDisplayID.getter()
{
  v1 = [v0 viewIfLoaded];
  if (v1 && (v2 = v1, v3 = [v1 window], v2, v3))
  {
    v4 = HTDisplayIDForWindow(v3);

    v5 = 0;
    v6 = v4;
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  return v6 | (v5 << 32);
}

id HoverTextRootViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  aBlock[4] = sub_254633F5C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2546337E8;
  aBlock[3] = &block_descriptor_6;
  v8 = _Block_copy(aBlock);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
  v11.receiver = v9;
  v11.super_class = type metadata accessor for HoverTextRootViewController(0);
  return objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
}

void sub_254633778(uint64_t a1, void *a2)
{
  sub_254633B64();
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2546337E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_254633848(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_254634048;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2546337E8;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);
  v11 = a1;
  swift_unknownObjectRetain();

  [a5 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for HoverTextRootViewController(0);
  objc_msgSendSuper2(&v12, sel_viewWillTransitionToSize_withTransitionCoordinator_, a5, a2, a3);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall HoverTextRootViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HoverTextRootViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    sub_25467FCA0();
  }

  else
  {
    __break(1u);
  }
}

void sub_254633A48(void *a1)
{
  v1 = a1;
  HoverTextRootViewController.viewDidLoad()();
}

Swift::Void __swiftcall HoverTextRootViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HoverTextRootViewController(0);
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_254633B64();
}

void sub_254633ADC(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HoverTextRootViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
  sub_254633B64();
}

id sub_254633B64()
{
  v1 = v0;
  result = [v0 isViewLoaded];
  if (result)
  {
    v3 = *&v0[qword_27F60BB60];
    result = [v1 view];
    if (result)
    {
      v4 = result;
      v5 = [result window];

      if (v5)
      {
        v6 = [v5 interfaceOrientation];
      }

      else
      {
        v6 = 0;
      }

      result = [v1 view];
      if (result)
      {
        v7 = result;
        v8 = [result window];

        if (v8)
        {
          v9 = [v8 screen];

          [v9 bounds];
          v11 = v10;
          v13 = v12;
        }

        else
        {
          v11 = 0.0;
          v13 = 0.0;
        }

        result = [v1 view];
        if (result)
        {
          v14 = result;
          [result safeAreaInsets];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;

          v23[0] = v16;
          v23[1] = v18;
          v23[2] = v20;
          v23[3] = v22;
          v24 = 0;
          return (*(*v3 + 280))(v6, v23, v11, v13);
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_254633DB8()
{

  v1 = *(v0 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  v2 = *(v0 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange + 8);

  return sub_254619940(v1, v2);
}

id HoverTextRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HoverTextRootViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_254633E58(uint64_t a1)
{

  v2 = *(a1 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  v3 = *(a1 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange + 8);

  return sub_254619940(v2, v3);
}

void sub_254633ECC(void *a1)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_254633F04(uint64_t a1, void *a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for HoverTextRootViewController(uint64_t a1)
{
  result = qword_27F60BB80;
  if (!qword_27F60BB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25463404C()
{
  swift_getKeyPath();
  sub_254634CEC();
  sub_25467F780();
}

uint64_t sub_2546340C0(uint64_t a1)
{
  if (sub_254634F84(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254634CEC();
    sub_25467F770();
  }
}

uint64_t sub_2546341D4()
{
  swift_getKeyPath();
  sub_254634CEC();
  sub_25467F780();

  return *(v0 + 24);
}

void sub_254634244(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254634CEC();
  sub_25467F780();

  *a2 = *(v3 + 24);
}

void sub_2546342E4(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254634CEC();
    sub_25467F770();
  }
}

void sub_2546343C4()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedConnection];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [v1 effectiveBoolValueForSetting_];

  v4 = [v0 sharedConnection];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 effectiveBoolValueForSetting_];

  v7 = [objc_opt_self() primaryApp];
  if (v7)
  {
    v8 = v7;
    v16 = [v7 uiElement];

    v9 = v16;
    if (v16)
    {
      if (v6 != 2 && v3 != 2)
      {
        v10 = [v16 arrayWithAXAttribute_];
        if (v10 && (v11 = v10, v12 = sub_2546805B0(), v11, v13 = sub_2546345C0(v12), , v13))
        {
          v14 = v13;
        }

        else
        {

          v14 = MEMORY[0x277D84F90];
        }

        v15 = sub_2546340C0(v14);
        MEMORY[0x259C14130](v15, 0.25, 1.0, 0.0);
        sub_25467FA40();

        v9 = v16;
      }
    }
  }
}

uint64_t sub_2546345C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_254635B28(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25463504C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_254635B28((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_2546346D4(uint64_t a1)
{
  swift_getKeyPath();
  sub_254634CEC();
  sub_25467F780();

  v2 = *(*(a1 + 16) + 16);
  if ((*(a1 + 24) ^ (v2 != 0)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25467F770();
  }

  else
  {
    *(a1 + 24) = v2 != 0;
  }
}

void sub_254634810(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() primaryApp];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 firstResponder];

    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6E8, &unk_254682A20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254681DC0;
      v9 = v2[5];
      *(inited + 32) = v2[4];
      *(inited + 40) = v9;

      v19.location = [v7 selectedTextRange];
      v10 = NSStringFromRange(v19);
      v11 = sub_254680470();
      v13 = v12;

      v14 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v11;
      *(inited + 56) = v13;
      v15 = v2[7];
      *(inited + 80) = v2[6];
      *(inited + 88) = v15;
      *(inited + 120) = v14;
      *(inited + 96) = a1;
      *(inited + 104) = a2;

      sub_2546457D0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B700, &qword_254683390);
      swift_arrayDestroy();
      v16 = [v7 uiElement];
      if (v16)
      {
        v17 = v16;
        v18 = sub_2546803F0();

        [v17 performAXAction:2505 withValue:v18];

        MEMORY[0x259C14130](0.25, 1.0, 0.0);
        sub_25467FA40();
      }

      else
      {
        __break(1u);
      }
    }
  }
}