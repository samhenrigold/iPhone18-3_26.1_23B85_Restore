uint64_t sub_2441C1D5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

unint64_t sub_2441C1D78(uint64_t a1)
{
  *(a1 + 8) = sub_2441B86A0();
  result = sub_2441C1DA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2441C1DA8()
{
  result = qword_27EDD5FE0;
  if (!qword_27EDD5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5FE0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2441C1E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2441C1E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AmbientDebugRotation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AmbientDebugRotation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2441C2100()
{
  result = qword_27EDD8250[0];
  if (!qword_27EDD8250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD8250);
  }

  return result;
}

unint64_t sub_2441C2158()
{
  result = qword_27EDD8360;
  if (!qword_27EDD8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD8360);
  }

  return result;
}

unint64_t sub_2441C21B0()
{
  result = qword_27EDD8368[0];
  if (!qword_27EDD8368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD8368);
  }

  return result;
}

uint64_t sub_2441C2204(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000002441DF8F0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002441DF910 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564496B63617473 && a2 == 0xEF7265696669746ELL || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654E73776F6C6C61 && a2 == 0xEF74656764695777)
  {

    return 4;
  }

  else
  {
    v5 = sub_2441D91CC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t contextualEngineInternalInterface.getter()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_244194FC8(0, &qword_280F94B10, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F70, &unk_2441DD000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2441DC440;
  v1 = sub_244194FC8(0, &qword_27EDD5FE8, 0x277CBEAC0);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6440, &qword_2441DC460);
  *(v0 + 32) = v1;
  v2 = sub_244194FC8(0, &qword_27EDD6390, 0x277CCACA8);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6430, &qword_2441DC468);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ContextualSuggestionSnapshot();
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5FF0, &unk_2441DC470);
  *(v0 + 96) = v3;
  MEMORY[0x245D5A6A0](v0);
  result = sub_2441D8DBC();
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t CarPlayDebugRotation.extensionBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CarPlayDebugRotation.containerBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CarPlayDebugRotation.containerBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CarPlayDebugRotation.kind.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CarPlayDebugRotation.stackIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall CarPlayDebugRotation.init(extensionBundleIdentifier:containerBundleIdentifier:kind:stackIdentifier:allowsNewWidget:)(ContextualSuggestionClient::CarPlayDebugRotation *__return_ptr retstr, Swift::String extensionBundleIdentifier, Swift::String_optional containerBundleIdentifier, Swift::String kind, Swift::String stackIdentifier, Swift::Bool allowsNewWidget)
{
  retstr->extensionBundleIdentifier = extensionBundleIdentifier;
  retstr->containerBundleIdentifier = containerBundleIdentifier;
  retstr->kind = kind;
  retstr->stackIdentifier = stackIdentifier;
  retstr->allowsNewWidget = allowsNewWidget;
}

uint64_t sub_2441C2A18(uint64_t a1)
{
  v2 = sub_2441C2CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441C2A54(uint64_t a1)
{
  v2 = sub_2441C2CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarPlayDebugRotation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5FF8, &qword_2441DC480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  v8 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v8;
  v9 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = v9;
  v12[1] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441C2CB0();
  sub_2441D92BC();
  v24 = 0;
  v10 = v19;
  sub_2441D916C();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v23 = 1;
  sub_2441D915C();
  v22 = 2;
  sub_2441D916C();
  v21 = 3;
  sub_2441D916C();
  v20 = 4;
  sub_2441D917C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2441C2CB0()
{
  result = qword_27EDD83F0[0];
  if (!qword_27EDD83F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD83F0);
  }

  return result;
}

uint64_t CarPlayDebugRotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6000, &qword_2441DC488);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441C2CB0();
  sub_2441D92AC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_2441D910C();
  v11 = v10;
  LOBYTE(v34[0]) = 1;
  v25 = sub_2441D90FC();
  v28 = v12;
  LOBYTE(v34[0]) = 2;
  v24 = sub_2441D910C();
  v27 = v13;
  LOBYTE(v34[0]) = 3;
  v23 = sub_2441D910C();
  v26 = v14;
  v36 = 4;
  v15 = sub_2441D911C();
  (*(v6 + 8))(v8, v5);
  *&v29 = v9;
  *(&v29 + 1) = v11;
  v17 = v27;
  v16 = v28;
  *&v30 = v25;
  *(&v30 + 1) = v28;
  *&v31 = v24;
  *(&v31 + 1) = v27;
  v18 = v26;
  *&v32 = v23;
  *(&v32 + 1) = v26;
  v15 &= 1u;
  v33 = v15;
  *(a2 + 64) = v15;
  v19 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v19;
  v20 = v30;
  *a2 = v29;
  *(a2 + 16) = v20;
  sub_2441C309C(&v29, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v9;
  v34[1] = v11;
  v34[2] = v25;
  v34[3] = v16;
  v34[4] = v24;
  v34[5] = v17;
  v34[6] = v23;
  v34[7] = v18;
  v35 = v15;
  return sub_2441C30D4(v34);
}

unint64_t sub_2441C313C(uint64_t a1)
{
  *(a1 + 8) = sub_2441B8504();
  result = sub_2441C316C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2441C316C()
{
  result = qword_27EDD6008;
  if (!qword_27EDD6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6008);
  }

  return result;
}

unint64_t sub_2441C3214()
{
  result = qword_27EDD8680[0];
  if (!qword_27EDD8680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD8680);
  }

  return result;
}

unint64_t sub_2441C326C()
{
  result = qword_27EDD8790;
  if (!qword_27EDD8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD8790);
  }

  return result;
}

unint64_t sub_2441C32C4()
{
  result = qword_27EDD8798[0];
  if (!qword_27EDD8798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD8798);
  }

  return result;
}

uint64_t sub_2441C3318()
{
  v1 = *(v0 + OBJC_IVAR___ATXWidgetStackSuggestion_stackIdentifier);

  return v1;
}

void *sub_2441C3354()
{
  v1 = *(v0 + OBJC_IVAR___ATXWidgetStackSuggestion_topWidget);
  v2 = v1;
  return v1;
}

id sub_2441C3394(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_2441D8C4C();

  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  sub_244195E64();
  v7 = sub_2441D8DAC();

  v8 = [v5 initWithStackIdentifier:v6 topWidget:a3 suggestedWidgets:v7];

  return v8;
}

id sub_2441C3464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___ATXWidgetStackSuggestion_stackIdentifier);
  *v5 = a1;
  v5[1] = a2;
  *(v4 + OBJC_IVAR___ATXWidgetStackSuggestion_topWidget) = a3;
  *(v4 + OBJC_IVAR___ATXWidgetStackSuggestion_suggestedWidgets) = a4;
  v7.super_class = ATXWidgetStackSuggestion;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_2441C3644()
{
  v1 = [v0 topWidget];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 identifier];

  v4 = sub_2441D8C6C();
  return v4;
}

id ATXWidgetStackSuggestion.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2441C37E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_extensionBundleIdentifier);

  return v1;
}

id sub_2441C382C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2441D8C4C();

  return v3;
}

uint64_t sub_2441C3888()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_kind);

  return v1;
}

id sub_2441C38C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_extensionBundleIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_kind];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_2441C3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_extensionBundleIdentifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_kind];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for WidgetPersonality();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_2441C39BC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_extensionBundleIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_extensionBundleIdentifier + 8);
  v5 = [a1 extensionBundleIdentifier];
  v6 = sub_2441D8C6C();
  v8 = v7;

  if (v3 == v6 && v4 == v8)
  {
  }

  else
  {
    v10 = sub_2441D91CC();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = v1 + OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_kind;
  v13 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_kind);
  v14 = *(v12 + 8);
  v15 = [a1 kind];
  v16 = sub_2441D8C6C();
  v18 = v17;

  if (v13 == v16 && v14 == v18)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2441D91CC();
  }

  return v11 & 1;
}

id sub_2441C3B40()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2441C3BD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetPersonality();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2441C3C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2441D91CC();

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

uint64_t sub_2441C3D2C(char a1)
{
  if (a1)
  {
    return 0x746E65746E69;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2441C3D64()
{
  if (*v0)
  {
    return 0x746E65746E69;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2441C3DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2441D91CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2441D91CC();

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

uint64_t sub_2441C3E80(uint64_t a1)
{
  v2 = sub_2441C466C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441C3EBC(uint64_t a1)
{
  v2 = sub_2441C466C();

  return MEMORY[0x2821FE720](a1, v2);
}

id ContextualIntentSuggestion.__allocating_init(identifier:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualIntentSuggestion_intent] = a3;
  return ContextualSuggestion.init(identifier:)(a1, a2);
}

uint64_t sub_2441C3F6C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualIntentSuggestion_intent) launchId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2441D8C6C();

  return v3;
}

uint64_t ContextualIntentSuggestion.init(coder:)(void *a1)
{
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  sub_244194FC8(0, &qword_27EDD6390, 0x277CCACA8);
  v9 = sub_2441D8EBC();
  if (!v9)
  {
    v19 = sub_2441994FC();
    (*(v3 + 16))(v8, v19, v2);
    v20 = sub_2441D8B7C();
    v21 = sub_2441D8E0C();
    if (!os_log_type_enabled(v20, v21))
    {
      v6 = v8;
      goto LABEL_10;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_244192000, v20, v21, "coder missing identifier", v22, 2u);
    v6 = v8;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_2441D8C6C();
  v13 = v12;

  sub_244194FC8(0, &qword_27EDD60B8, 0x277CD3D30);
  v14 = sub_2441D8EBC();
  if (v14)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = (*(ObjectType + 136))(v11, v13, v15);

    swift_deallocPartialClassInstance();
    return v17;
  }

  v23 = sub_2441994FC();
  (*(v3 + 16))(v6, v23, v2);
  v20 = sub_2441D8B7C();
  v24 = sub_2441D8E0C();
  if (os_log_type_enabled(v20, v24))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_244192000, v20, v24, "coder missing intent", v22, 2u);
LABEL_8:
    MEMORY[0x245D5B3C0](v22, -1, -1);
  }

LABEL_10:

  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2441C4364(void *a1)
{
  sub_24419660C(a1);
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualIntentSuggestion_intent);
  v4 = sub_2441D8C4C();
  [a1 encodeObject:v3 forKey:v4];
}

id ContextualIntentSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualIntentSuggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2441C452C()
{
  result = qword_27EDD60C0;
  if (!qword_27EDD60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD60C0);
  }

  return result;
}

unint64_t sub_2441C4584()
{
  result = qword_27EDD60C8;
  if (!qword_27EDD60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD60C8);
  }

  return result;
}

unint64_t sub_2441C45DC()
{
  result = qword_27EDD60D0;
  if (!qword_27EDD60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD60D0);
  }

  return result;
}

unint64_t sub_2441C466C()
{
  result = qword_27EDD60D8;
  if (!qword_27EDD60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD60D8);
  }

  return result;
}

id sub_2441C471C(SEL *a1)
{
  v2 = [BiomeLibrary() SpringBoard];
  swift_unknownObjectRelease();
  v3 = [v2 Domino];
  swift_unknownObjectRelease();
  v4 = [v3 *a1];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2441C47BC()
{
  v0 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2441D8E3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_2441D8BDC();
  v7[1] = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  return sub_2441D8E6C();
}

uint64_t sub_2441C4A14()
{
  v0 = swift_allocObject();
  sub_2441C4A4C();
  return v0;
}

void *sub_2441C4A4C()
{
  v1 = v0;
  v24 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v24);
  v23[1] = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2441D8E3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [BiomeLibrary() SpringBoard];
  swift_unknownObjectRelease();
  v9 = [v8 Domino];
  swift_unknownObjectRelease();
  v10 = [v9 ViewAppearance];
  swift_unknownObjectRelease();
  v0[2] = v10;
  v11 = [BiomeLibrary() SpringBoard];
  swift_unknownObjectRelease();
  v12 = [v11 Domino];
  swift_unknownObjectRelease();
  v13 = [v12 StackRotation];
  swift_unknownObjectRelease();
  v0[3] = v13;
  v14 = [BiomeLibrary() SpringBoard];
  swift_unknownObjectRelease();
  v15 = [v14 Domino];
  swift_unknownObjectRelease();
  v16 = [v15 WidgetTap];
  swift_unknownObjectRelease();
  v0[4] = v16;
  sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  sub_2441D8BDC();
  v25 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  v0[5] = sub_2441D8E6C();
  sub_2441D8C6C();
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_2441D8C4C();

  v19 = [v17 initWithSuiteName_];

  v1[6] = v19;
  if (v19)
  {
    v20 = v19;
    v21 = sub_2441D8C4C();
    [v20 removeObjectForKey_];
  }

  return v1;
}

double sub_2441C4EC8()
{
  v1 = sub_2441D8BAC();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2441D8BEC();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  if (v7)
  {
    v8 = sub_2441D8D6C();
    v9 = sub_2441D8C4C();
    [v7 setValue:v8 forKey:v9];
  }

  aBlock[4] = sub_2441C51BC;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  sub_2441D8BDC();
  v15 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v6, v3, v10);
  _Block_release(v10);
  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);

  return result;
}

double sub_2441C51C4()
{
  v1 = sub_2441D8BAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2441D8BEC();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 40);
  aBlock[4] = sub_2441C5464;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_3;
  v8 = _Block_copy(aBlock);

  sub_2441D8BDC();
  v12 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);

  return result;
}

void sub_2441C546C(uint64_t a1)
{
  v4 = [*(v1 + 16) source];
  sub_244194FC8(0, &qword_27EDD5FC8, 0x277CCABB0);
  v2 = sub_2441D8EDC();
  v3 = [objc_allocWithZone(MEMORY[0x277CF1630]) initWithStarting_];

  [v4 sendEvent_];
}

double sub_2441C5528(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2441D8D9C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = v1;
  v8 = a1;

  sub_2441A5C20(0, 0, v5, &unk_2441DC860, v7);

  return result;
}

uint64_t sub_2441C5638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_2441D8BAC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_2441D8BEC();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441C5754, 0, 0);
}

uint64_t sub_2441C5754()
{
  v1 = sub_2441BD434();
  v2 = *v1;
  v0[17] = *v1;
  v3 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[18] = *(*v2 + 240);
  v0[19] = v3;

  return MEMORY[0x2822009F8](sub_2441C57E8, v2, 0);
}

uint64_t sub_2441C57E8()
{
  *(v0 + 160) = (*(v0 + 144))();

  return MEMORY[0x2822009F8](sub_2441C5894, 0, 0);
}

void sub_2441C5894()
{
  v1 = v0[20];
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_30:
      v2 = sub_2441D8F5C();
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_4:
        v3 = 0;
        v4 = v0[20];
        v5 = v4 & 0xC000000000000001;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = v1 + 32;
        v8 = &unk_278E09000;
        v38 = v6;
        v39 = v5;
        v37 = v1 + 32;
        v42 = v1;
        v40 = v2;
        while (2)
        {
          if (v5)
          {
            v9 = MEMORY[0x245D5A7F0](v3, v1);
            v10 = __OFADD__(v3, 1);
            v11 = v3 + 1;
            if (!v10)
            {
LABEL_8:
              v43 = v9;
              v1 = [v9 v8[247]];
              sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
              v12 = sub_2441D8D0C();

              v41 = v11;
              if (v12 >> 62)
              {
                v46 = sub_2441D8F5C();
              }

              else
              {
                v46 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v13 = 0;
              while (v46 != v13)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v14 = MEMORY[0x245D5A7F0](v13, v12);
                }

                else
                {
                  if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_29;
                  }

                  v14 = *(v12 + 8 * v13 + 32);
                }

                v15 = v14;
                if (__OFADD__(v13, 1))
                {
                  __break(1u);
LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

                v16 = v0[9];
                v17 = [v14 identifier];
                v18 = sub_2441D8C6C();
                v20 = v19;

                v21 = [v16 identifier];
                v22 = sub_2441D8C6C();
                v24 = v23;

                if (v18 == v22 && v20 == v24)
                {

LABEL_27:

                  v25 = [v43 identifier];

                  v1 = sub_2441D8C6C();
                  v27 = v26;

                  goto LABEL_33;
                }

                v1 = sub_2441D91CC();

                ++v13;
                if (v1)
                {
                  goto LABEL_27;
                }
              }

              v3 = v41;
              v1 = v42;
              v6 = v38;
              v5 = v39;
              v7 = v37;
              v8 = &unk_278E09000;
              if (v41 != v40)
              {
                continue;
              }

              goto LABEL_31;
            }
          }

          else if (v3 >= *(v6 + 16))
          {
            __break(1u);
          }

          else
          {
            v9 = *(v7 + 8 * v3);
            v10 = __OFADD__(v3, 1);
            v11 = v3 + 1;
            if (!v10)
            {
              goto LABEL_8;
            }
          }

          break;
        }

        __break(1u);
        return;
      }
    }

LABEL_31:

    v1 = 0;
  }

  v27 = 0;
LABEL_33:
  v28 = v0[16];
  v29 = v0[13];
  v45 = v0[15];
  v47 = v0[14];
  v30 = v0[11];
  v31 = v0[9];
  v32 = v0[10];
  v44 = v0[12];
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v31;
  v33[4] = v1;
  v33[5] = v27;
  v0[6] = sub_2441C718C;
  v0[7] = v33;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2441988C4;
  v0[5] = &block_descriptor_31;
  v34 = _Block_copy(v0 + 2);

  v35 = v31;
  sub_2441D8BDC();
  v0[8] = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v28, v29, v34);
  _Block_release(v34);
  v44[1](v29, v30);
  (*(v45 + 8))(v28, v47);

  v36 = v0[1];

  v36();
}

uint64_t sub_2441C5D98()
{
  v1 = v0[16];
  v2 = v0[13];
  v12 = v0[15];
  v13 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];
  v11 = v0[12];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = 0;
  v6[5] = 0;
  v0[6] = sub_2441C718C;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2441988C4;
  v0[5] = &block_descriptor_31;
  v7 = _Block_copy(v0 + 2);

  v8 = v4;
  sub_2441D8BDC();
  v0[8] = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v1, v2, v7);
  _Block_release(v7);
  (*(v11 + 8))(v2, v3);
  (*(v12 + 8))(v1, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2441C5FC8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A54;

  return sub_2441C5638(v4, v5, v6, v2, v3);
}

id sub_2441C6060(void *a1)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 chsWidget];
  v7 = [v6 intentReference];

  if (v7)
  {
    v8 = [v7 intent];

    if (v8)
    {
      v9 = objc_opt_self();
      v43[0] = 0;
      v10 = [v9 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v43];
      v11 = v43[0];
      if (v10)
      {
        v7 = sub_2441D88DC();
        v13 = v12;

        goto LABEL_11;
      }

      v14 = v11;
      v15 = sub_2441D88BC();

      swift_willThrow();
      v16 = sub_2441BC3D8();
      (*(v3 + 16))(v5, v16, v2);
      v17 = sub_2441D8B7C();
      v18 = sub_2441D8E0C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v42 = v17;
        v21 = v20;
        v43[0] = v20;
        *v19 = 136315138;
        v22 = sub_2441D92EC();
        v24 = sub_244195848(v22, v23, v43);
        v41 = v15;
        v25 = v24;

        *(v19 + 4) = v25;
        v26 = v42;
        _os_log_impl(&dword_244192000, v42, v18, "%s: error archiving widget intent", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x245D5B3C0](v21, -1, -1);
        MEMORY[0x245D5B3C0](v19, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }

    v7 = 0;
  }

  v13 = 0xF000000000000000;
LABEL_11:
  v27 = [a1 identifier];
  if (!v27)
  {
    sub_2441D8C6C();
    v27 = sub_2441D8C4C();
  }

  v28 = [a1 chsWidget];
  v29 = [v28 extensionIdentity];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  sub_2441D89BC();
  v30 = sub_2441D8C4C();
  swift_endAccess();

  v31 = [a1 chsWidget];
  v32 = [v31 kind];

  if (!v32)
  {
    sub_2441D8C6C();
    v32 = sub_2441D8C4C();
  }

  v33 = [a1 chsWidget];
  v34 = [v33 extensionIdentity];

  v35 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D90, &qword_2441DCDB0);
  if ((*(*(v36 - 8) + 48))(&v34[v35], 1, v36))
  {
    swift_endAccess();

    v37 = 0;
  }

  else
  {
    sub_2441D89BC();
    swift_endAccess();

    v37 = sub_2441D8C4C();
  }

  if (v13 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_2441D88CC();
  }

  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUniqueId:v27 extensionBundleId:v30 kind:v32 containerBundleId:v37 intent:v38];

  sub_2441C7178(v7, v13);
  return v39;
}

double sub_2441C65DC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_2441D8B8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244194FC8(0, &qword_27EDD60E0, 0x277CF1638);
  v15 = a2;
  v44 = sub_2441C6060(v15);
  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v16 = 0;
        v17 = 2;
      }

      else
      {
        v16 = 0;
        if (a3 == 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4;
        }
      }

      goto LABEL_28;
    }

    v18 = v14;
    if (!a3)
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_28;
    }

    if (a3 == 1)
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_28;
    }
  }

  else
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        v16 = 0;
        v17 = 5;
      }

      else
      {
        v16 = 0;
        if (a3 == 6)
        {
          v17 = 6;
        }

        else
        {
          v17 = 7;
        }
      }

      goto LABEL_28;
    }

    v18 = v14;
    switch(a3)
    {
      case 8:
        v16 = 0;
        v17 = 8;
        goto LABEL_28;
      case 9:
        v16 = 0;
        v17 = 9;
        goto LABEL_28;
      case 10:
        v16 = 0;
        v17 = 10;
        goto LABEL_28;
    }
  }

  v16 = 1;
  v43 = 0;
  v19 = sub_2441BC3D8();
  (*(v12 + 16))(v18, v19, v11);
  v42 = v18;
  v20 = sub_2441D8B7C();
  v21 = sub_2441D8E0C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = v12;
    v23 = v22;
    v40 = swift_slowAlloc();
    v45 = a3;
    v46 = v40;
    *v23 = 136315138;
    type metadata accessor for ATXWidgetStackChangeReason();
    v24 = sub_2441D8C7C();
    v26 = sub_244195848(v24, v25, &v46);
    v39 = v11;
    v27 = v10;
    v28 = v4;
    v29 = a1;
    v30 = v26;

    *(v23 + 4) = v30;
    a1 = v29;
    v4 = v28;
    v10 = v27;
    v16 = 1;
    _os_log_impl(&dword_244192000, v20, v21, "AmbientLogger: logging stack did change with unknown new reason: %s", v23, 0xCu);
    v31 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245D5B3C0](v31, -1, -1);
    MEMORY[0x245D5B3C0](v23, -1, -1);

    (*(v41 + 8))(v42, v39);
  }

  else
  {

    (*(v12 + 8))(v42, v11);
  }

  v17 = v43;
LABEL_28:
  v32 = sub_2441D8D9C();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v34 = v44;
  *(v33 + 32) = v4;
  *(v33 + 40) = v34;
  *(v33 + 48) = a1;
  *(v33 + 56) = v17;
  *(v33 + 60) = v16;
  *(v33 + 64) = v15;
  v35 = v15;

  v36 = a1;
  sub_2441A5C20(0, 0, v10, &unk_2441DC870, v33);

  return result;
}

uint64_t sub_2441C6A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_2441D8BAC();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = sub_2441D8BEC();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441C6BA0, 0, 0);
}

uint64_t sub_2441C6BA0()
{
  v1 = v0[19];
  v2 = v0[16];
  v17 = v0[18];
  v18 = v0[17];
  v3 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v16 = v0[15];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 44) = BYTE4(v5) & 1;
  *(v9 + 48) = v4;
  v0[6] = sub_2441C6FDC;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2441988C4;
  v0[5] = &block_descriptor_15_0;
  v10 = _Block_copy(v0 + 2);

  v11 = v7;
  v12 = v6;
  v13 = v4;
  sub_2441D8BDC();
  v0[8] = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v1, v2, v10);
  _Block_release(v10);
  (*(v16 + 8))(v2, v3);
  (*(v17 + 8))(v1, v18);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2441C6E30()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2441C6E88()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56) | (*(v0 + 60) << 32);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_244198A50;

  return sub_2441C6A7C(v7, v8, v9, v2, v3, v4, v5, v6);
}

void sub_2441C6F90(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_2441C6FDC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 48);
  v16 = [*(*(v0 + 16) + 24) source];
  v6 = [v2 identifier];
  sub_2441D8C6C();

  [v5 isSuggestedWidget];
  v7 = sub_2441D8D6C();
  v8 = [v5 source];
  if (v8)
  {
    v9 = v8;
    sub_2441D8C6C();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_2441D8C4C();

  if (v11)
  {
    v13 = sub_2441D8C4C();
  }

  else
  {
    v13 = 0;
  }

  if (v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v3;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CF1628]) initWithWidget:v1 stackId:v12 reason:v14 newWidgetSuggestion:v7 source:v13];

  [v16 sendEvent_];
}

double sub_2441C7178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2441B85A8(a1, a2);
  }

  return result;
}

void sub_2441C718C()
{
  v1 = v0[3];
  v2 = v0[5];
  v6 = [*(v0[2] + 32) source];
  sub_244194FC8(0, &qword_27EDD60E0, 0x277CF1638);
  v3 = sub_2441C6060(v1);
  if (v2)
  {
    v4 = sub_2441D8C4C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CF1640]) initWithWidget:v3 stackId:v4];

  [v6 sendEvent_];
}

unint64_t sub_2441C728C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0x426465766F6D6572;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 1701736302;
    v3 = 0x4D6465766F6D6572;
    if (v1 != 2)
    {
      v3 = 0x5379426465646461;
    }

    if (*v0)
    {
      v2 = 0x6E614D6465646461;
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
}

ContextualSuggestionClient::CarPlayWidgetEngagementEvent::CarPlayWidgetOutcome_optional __swiftcall CarPlayWidgetEngagementEvent.CarPlayWidgetOutcome.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CarPlayWidgetEngagementEvent.dataVersion.getter()
{
  v1 = OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CarPlayWidgetEngagementEvent.dataVersion.setter(int a1)
{
  v3 = OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CarPlayWidgetEngagementEvent.carPlayIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier);

  return v1;
}

uint64_t CarPlayWidgetEngagementEvent.widgetIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier);

  return v1;
}

uint64_t CarPlayWidgetEngagementEvent.extensionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier);

  return v1;
}

uint64_t CarPlayWidgetEngagementEvent.widgetKind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind);

  return v1;
}

id CarPlayWidgetEngagementEvent.__allocating_init(carPlayIdentifier:widgetIdentifier:extensionIdentifier:widgetKind:timestamp:outcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char *a10)
{
  v19 = objc_allocWithZone(v10);
  v20 = *a10;
  *&v19[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion] = 0;
  v21 = &v19[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v19[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v19[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier];
  *v23 = a5;
  v23[1] = a6;
  v24 = &v19[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind];
  *v24 = a7;
  v24[1] = a8;
  *&v19[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp] = a9;
  v19[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome] = v20;
  v27.receiver = v19;
  v27.super_class = v10;
  return objc_msgSendSuper2(&v27, sel_init);
}

id CarPlayWidgetEngagementEvent.init(carPlayIdentifier:widgetIdentifier:extensionIdentifier:widgetKind:timestamp:outcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char *a10)
{
  ObjectType = swift_getObjectType();
  v20 = *a10;
  *&v10[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion] = 0;
  v21 = &v10[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v10[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v10[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier];
  *v23 = a5;
  v23[1] = a6;
  v24 = &v10[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind];
  *v24 = a7;
  v24[1] = a8;
  *&v10[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp] = a9;
  v10[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome] = v20;
  v27.receiver = v10;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

BOOL sub_2441C7944(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier) && *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier + 8) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier + 8);
  if (v4 || (sub_2441D91CC()) && (*(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier) ? (v5 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier + 8) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier + 8)) : (v5 = 0), (v5 || (sub_2441D91CC()) && (*(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier) ? (v6 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier + 8) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier + 8)) : (v6 = 0), (v6 || (sub_2441D91CC()) && (*(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind) ? (v7 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind + 8) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind + 8)) : (v7 = 0), (v7 || (sub_2441D91CC()) && *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp)))))
  {
    return *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome) == *(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome);
  }

  else
  {
    return 0;
  }
}

char *sub_2441C7A64(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2441D8A0C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6128, &qword_2441DC950);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  if (a2 >> 60 == 15)
  {
    sub_2441C93B8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for CarPlayWidgetEvent(0);
    sub_2441C940C(a1, a2);
    sub_2441D89FC();
    sub_2441C9460();
    sub_2441D8ACC();
    if (!v2)
    {
      (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
      v3 = sub_2441C8F80(v9);
    }

    sub_2441C7178(a1, a2);
  }

  return v3;
}

uint64_t CarPlayWidgetEngagementEvent.serialize()()
{
  v1 = v0;
  v2 = sub_2441D8A2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6128, &qword_2441DC950);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  sub_2441A1B64(&v25[-v10]);
  v12 = v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier;
  v13 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier);
  v14 = *(v12 + 8);

  sub_2441A0D0C(v13, v14);
  v15 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier);
  v16 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier + 8);

  sub_2441A0EC4(v15, v16);
  v17 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier);
  v18 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier + 8);

  sub_2441A1078(v17, v18);
  v19 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind);
  v20 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind + 8);

  sub_2441A122C(v19, v20);
  sub_2441A159C(*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp));
  sub_2441A16F8(*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome), 1);
  v21 = type metadata accessor for CarPlayWidgetEvent(0);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v11, 0, 1, v21);
  sub_2441C9E28(v11, v9, &qword_27EDD6128, &qword_2441DC950);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    sub_2441C94B8(v11);
    sub_2441C94B8(v9);
    return 0;
  }

  else
  {
    sub_2441D8A1C();
    sub_2441C9460();
    v24 = sub_2441D8ABC();
    (*(v3 + 8))(v5, v2);
    sub_2441C94B8(v11);
    sub_2441C9520(v9);
    return v24;
  }
}

unint64_t CarPlayWidgetEngagementEvent.jsonRawData()()
{
  v1 = 0xD000000000000011;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6140, &qword_2441DC958);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_2441DC940;
  *(inited + 40) = 0x80000002441DFF00;
  v3 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier + 8);
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier);
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000002441DFF20;
  v5 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier + 8);
  *(inited + 96) = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier);
  *(inited + 104) = v5;
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x80000002441DFF40;
  v6 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier + 8);
  *(inited + 144) = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier);
  *(inited + 152) = v6;
  *(inited + 168) = v4;
  *(inited + 176) = 0x694B746567646977;
  *(inited + 184) = 0xEA0000000000646ELL;
  v7 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind + 8);
  *(inited + 192) = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind);
  *(inited + 200) = v7;
  *(inited + 216) = v4;
  *(inited + 224) = 0x6D617473656D6974;
  *(inited + 232) = 0xE900000000000070;
  v8 = MEMORY[0x277D839F8];
  *(inited + 240) = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp);
  *(inited + 264) = v8;
  *(inited + 272) = 0x656D6F6374756FLL;
  *(inited + 280) = 0xE700000000000000;
  v9 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome);
  if (v9 > 3)
  {
    if (*(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome) > 5u)
    {
      if (v9 != 6)
      {
        v10 = 0x80000002441DFEA0;
        v1 = 0xD000000000000012;
        goto LABEL_17;
      }

      v11 = "rotatedToBySystem";
    }

    else
    {
      if (v9 == 4)
      {
        v10 = 0xEF6D657473795379;
        v1 = 0x426465766F6D6572;
        goto LABEL_17;
      }

      v11 = "rotatedToManually";
    }

    v10 = (v11 - 32) | 0x8000000000000000;
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome) > 1u)
  {
    if (v9 == 2)
    {
      v10 = 0xEF796C6C61756E61;
      v1 = 0x4D6465766F6D6572;
    }

    else
    {
      v10 = 0xED00006D65747379;
      v1 = 0x5379426465646461;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome))
  {
    v10 = 0xED0000796C6C6175;
    v1 = 0x6E614D6465646461;
  }

  else
  {
    v10 = 0xE400000000000000;
    v1 = 1701736302;
  }

LABEL_17:
  *(inited + 312) = v4;
  *(inited + 288) = v1;
  *(inited + 296) = v10;
  v12 = inited;

  v13 = sub_2441C957C(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6148, &qword_2441DC960);
  swift_arrayDestroy();
  return v13;
}

uint64_t CarPlayWidgetEngagementEvent.json()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  CarPlayWidgetEngagementEvent.jsonRawData()();
  v1 = sub_2441D8BFC();

  v8[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:1 error:v8];

  v3 = v8[0];
  if (v2)
  {
    v4 = sub_2441D88DC();
  }

  else
  {
    v5 = v3;
    v6 = sub_2441D88BC();

    swift_willThrow();
    return 0;
  }

  return v4;
}

id sub_2441C8460(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_2441D88CC();
    sub_2441C7178(v5, v7);
    v8 = v9;
  }

  return v8;
}

id CarPlayWidgetEngagementEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2441C8580()
{
  v1 = *v0;
  v2 = 0x7372655661746164;
  v3 = 0x6D617473656D6974;
  if (v1 != 5)
  {
    v3 = 0x656D6F6374756FLL;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x694B746567646977;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2441C8678@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441C9B6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441C86AC(uint64_t a1)
{
  v2 = sub_2441C96AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441C86E8(uint64_t a1)
{
  v2 = sub_2441C96AC();

  return MEMORY[0x2821FE720](a1, v2);
}

id CarPlayWidgetEngagementEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CarPlayWidgetEngagementEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6150, &qword_2441DC968);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441C96AC();
  sub_2441D92BC();
  swift_beginAccess();
  v11 = 0;
  sub_2441D91BC();
  if (!v2)
  {
    v11 = 1;
    sub_2441D916C();
    v11 = 2;
    sub_2441D916C();
    v11 = 3;
    sub_2441D916C();
    v11 = 4;
    sub_2441D916C();
    v11 = 5;
    sub_2441D918C();
    v11 = *(v3 + OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome);
    v10[6] = 6;
    sub_2441C9700();
    sub_2441D91AC();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *CarPlayWidgetEngagementEvent.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6160, &qword_2441DC970);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion;
  v7 = v1;
  *&v1[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion] = 0;
  v8 = a1[3];
  v28 = a1;
  v9 = a1;
  v11 = &v27 - v10;
  __swift_project_boxed_opaque_existential_0(v9, v8);
  sub_2441C96AC();
  sub_2441D92AC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = 0;
    v12 = sub_2441D914C();
    swift_beginAccess();
    *&v7[v6] = v12;
    v33 = 1;
    v13 = sub_2441D910C();
    v15 = &v7[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier];
    *v15 = v13;
    v15[1] = v16;
    v33 = 2;
    v17 = sub_2441D910C();
    v18 = &v7[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier];
    *v18 = v17;
    v18[1] = v19;
    v33 = 3;
    v20 = sub_2441D910C();
    v21 = &v7[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier];
    *v21 = v20;
    v21[1] = v22;
    v33 = 4;
    v23 = sub_2441D910C();
    v24 = &v7[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind];
    *v24 = v23;
    v24[1] = v25;
    v33 = 5;
    sub_2441D912C();
    *&v7[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp] = v26;
    v32 = 6;
    sub_2441C9754();
    sub_2441D913C();
    v7[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome] = v33;
    v30.receiver = v7;
    v30.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v30, sel_init);
    (*(v5 + 8))(v11, v4);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return v7;
}

_BYTE *sub_2441C8F0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = CarPlayWidgetEngagementEvent.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_2441C8F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6128, &qword_2441DC950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for CarPlayWidgetEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2441C9E28(a1, v4, &qword_27EDD6128, &qword_2441DC950);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2441C94B8(v4);
    sub_2441C93B8();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    sub_2441C94B8(a1);
  }

  else
  {
    sub_2441C9E90(v4, v8);
    v10 = sub_2441A16B8();
    if (v11)
    {
      v35 = v10;
      v12 = sub_2441A0C6C();
      v33 = v13;
      v34 = v12;
      v32 = sub_2441A0E70();
      v15 = v14;
      v16 = sub_2441A1024();
      v18 = v17;
      v19 = sub_2441A11D8();
      v21 = v20;
      v22 = sub_2441A1564();
      v23 = type metadata accessor for CarPlayWidgetEngagementEvent();
      v24 = objc_allocWithZone(v23);
      *&v24[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion] = 0;
      v25 = &v24[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_carPlayIdentifier];
      v26 = v33;
      *v25 = v34;
      v25[1] = v26;
      v27 = &v24[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetIdentifier];
      *v27 = v32;
      v27[1] = v15;
      v28 = &v24[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_extensionIdentifier];
      *v28 = v16;
      v28[1] = v18;
      v29 = &v24[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_widgetKind];
      *v29 = v19;
      v29[1] = v21;
      *&v24[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_timestamp] = v22;
      v24[OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_outcome] = v35;
      v36.receiver = v24;
      v36.super_class = v23;
      v4 = objc_msgSendSuper2(&v36, sel_init);
    }

    else
    {
      sub_2441C93B8();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
    }

    sub_2441C94B8(a1);
    sub_2441C9520(v8);
  }

  return v4;
}

char *_s26ContextualSuggestionClient28CarPlayWidgetEngagementEventC5event4with11dataVersionACXDSg10Foundation4DataV_s6UInt32VtFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2441D8A0C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6128, &qword_2441DC950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for CarPlayWidgetEvent(0);
  sub_2441C940C(a1, a2);
  sub_2441D89FC();
  sub_2441C9460();
  sub_2441D8ACC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return sub_2441C8F80(v7);
}

unint64_t sub_2441C93B8()
{
  result = qword_27EDD6130;
  if (!qword_27EDD6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6130);
  }

  return result;
}

uint64_t sub_2441C940C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2441C9460()
{
  result = qword_27EDD5A68;
  if (!qword_27EDD5A68)
  {
    type metadata accessor for CarPlayWidgetEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A68);
  }

  return result;
}

uint64_t sub_2441C94B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6128, &qword_2441DC950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2441C9520(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayWidgetEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2441C957C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD61F0, &qword_2441DCD38);
    v3 = sub_2441D90CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2441C9E28(v4, &v13, &qword_27EDD6148, &qword_2441DC960);
      v5 = v13;
      v6 = v14;
      result = sub_244198F90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_244194FB8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2441C96AC()
{
  result = qword_27EDD8AB0[0];
  if (!qword_27EDD8AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD8AB0);
  }

  return result;
}

unint64_t sub_2441C9700()
{
  result = qword_27EDD6158;
  if (!qword_27EDD6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6158);
  }

  return result;
}

unint64_t sub_2441C9754()
{
  result = qword_27EDD6168;
  if (!qword_27EDD6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6168);
  }

  return result;
}

unint64_t sub_2441C97AC()
{
  result = qword_27EDD6170;
  if (!qword_27EDD6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6170);
  }

  return result;
}

unint64_t sub_2441C9804()
{
  result = qword_27EDD6178;
  if (!qword_27EDD6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6178);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayWidgetEngagementEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarPlayWidgetEngagementEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2441C9A68()
{
  result = qword_27EDD9140[0];
  if (!qword_27EDD9140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD9140);
  }

  return result;
}

unint64_t sub_2441C9AC0()
{
  result = qword_27EDD9250;
  if (!qword_27EDD9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD9250);
  }

  return result;
}

unint64_t sub_2441C9B18()
{
  result = qword_27EDD9258[0];
  if (!qword_27EDD9258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD9258);
  }

  return result;
}

uint64_t sub_2441C9B6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372655661746164 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002441DFF00 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002441DFF20 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002441DFF40 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694B746567646977 && a2 == 0xEA0000000000646ELL || (sub_2441D91CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2441D91CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_2441D91CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_2441C9DD4()
{
  result = qword_27EDD61E8;
  if (!qword_27EDD61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD61E8);
  }

  return result;
}

uint64_t sub_2441C9E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2441C9E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayWidgetEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2441C9FD8(char *a1)
{
  v4 = *&a1[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_extensionBundleIdentifier];
  v3 = *&a1[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_extensionBundleIdentifier + 8];
  v6 = *&a1[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_kind];
  v5 = *&a1[OBJC_IVAR____TtC26ContextualSuggestionClient17WidgetPersonality_kind + 8];
  if (sub_2441D8C6C() == v4 && v7 == v3)
  {
  }

  else
  {
    v9 = sub_2441D91CC();

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = ATXSpecialWidgetKindSiriSuggestions();
  v11 = sub_2441D8C6C();
  v13 = v12;

  if (v11 == v6 && v13 == v5)
  {
  }

  else
  {
    v15 = sub_2441D91CC();

    if ((v15 & 1) == 0)
    {
LABEL_13:

      return 0;
    }
  }

  v17 = (*(v1 + 80))(0);

  return v17;
}

id sub_2441CA154(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D88, &unk_2441DCDA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = objc_allocWithZone(v2);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v10 = ATXSpecialWidgetKindShortcutsSingle();
      v9 = 2;
    }

    else
    {
      sub_2441D8C6C();
      v9 = 14;
      v10 = ATXSpecialWidgetKindSiriSuggestions();
    }
  }

  else if (a1 == 2)
  {
    v10 = ATXSpecialWidgetKindShortcutsSingle();
    v9 = 12;
  }

  else if (a1 == 3)
  {
    v9 = 28;
    v10 = ATXSpecialWidgetKindFiles();
  }

  else
  {
    sub_2441D8C6C();
    v9 = 4;
    v10 = ATXSpecialWidgetKindAppPredictions();
  }

  v11 = v10;
  sub_2441D8C6C();

  sub_2441D8E9C();
  sub_2441D89AC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D90, &qword_2441DCDB0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_2441D8E8C();
  v14 = sub_2441D8C4C();

  v17.receiver = v8;
  v17.super_class = v2;
  v15 = objc_msgSendSuper2(&v17, sel_initWithExtensionIdentity_kind_supportedFamilies_intentType_, v13, v14, v9, 0);

  return v15;
}

id sub_2441CA3FC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D88, &unk_2441DCDA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  MEMORY[0x28223BE20](v7 - 8);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = ATXSpecialWidgetKindShortcutsSingle();
      v8 = 2;
    }

    else
    {
      sub_2441D8C6C();
      v8 = 14;
      v9 = ATXSpecialWidgetKindSiriSuggestions();
    }
  }

  else if (a1 == 2)
  {
    v9 = ATXSpecialWidgetKindShortcutsSingle();
    v8 = 12;
  }

  else if (a1 == 3)
  {
    v8 = 28;
    v9 = ATXSpecialWidgetKindFiles();
  }

  else
  {
    sub_2441D8C6C();
    v8 = 4;
    v9 = ATXSpecialWidgetKindAppPredictions();
  }

  v10 = v9;
  sub_2441D8C6C();

  sub_2441D8E9C();
  sub_2441D89AC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D90, &qword_2441DCDB0);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_2441D8E8C();
  v13 = sub_2441D8C4C();

  v14 = type metadata accessor for SpecialWidgetDescriptor();
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithExtensionIdentity_kind_supportedFamilies_intentType_, v12, v13, v8, 0);

  return v15;
}

id sub_2441CA69C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_2441CA6E0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpecialWidgetDescriptor();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2441CA7C0(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithExtensionIdentity_];

  return v3;
}

id sub_2441CA864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2441D8C4C();

  if (a6)
  {
    v12 = sub_2441D8C4C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithExtensionIdentity:a1 kind:v11 supportedFamilies:a4 intentType:v12];

  return v13;
}

id sub_2441CA984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = sub_2441D8C4C();

  v12 = sub_2441D8C4C();

  if (a7)
  {
    v13 = sub_2441D8C4C();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v8) initWithExtensionBundleIdentifier:v11 kind:v12 supportedFamilies:a5 intentType:v13];

  return v14;
}

id sub_2441CAAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v13 = sub_2441D8C4C();

  if (a4)
  {
    v14 = sub_2441D8C4C();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_2441D8C4C();

  if (a9)
  {
    v16 = sub_2441D8C4C();
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(v10) initWithExtensionBundleIdentifier:v13 containerBundleIdentifier:v14 kind:v15 supportedFamilies:a7 intentType:v16];

  return v17;
}

id sub_2441CAC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = sub_2441D8C4C();

  if (a4)
  {
    v16 = sub_2441D8C4C();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_2441D8C4C();

  v18 = sub_2441D8C4C();

  if (a10)
  {
    v19 = sub_2441D8C4C();
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_allocWithZone(v24);
  v21 = sub_2441D8C4C();

  v22 = [v20 initWithExtensionBundleIdentifier:v15 containerBundleIdentifier:v16 kind:v17 displayName:v18 intentType:v19 supportedSizeClasses:a11 widgetDescription:v21 widgetVisibility:a14];

  return v22;
}

id sub_2441CADFC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpecialWidgetDescriptor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2441CAE58()
{
  result = qword_27EDD6200;
  if (!qword_27EDD6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6200);
  }

  return result;
}

uint64_t CarPlayWidgetConfigurationManager.__allocating_init(carPlayIdentity:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CarPlayWidgetConfigurationManager.init(carPlayIdentity:)(a1);
  return v2;
}

void *CarPlayWidgetConfigurationManager.init(carPlayIdentity:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  swift_defaultActor_initialize();
  v1[17] = 0;
  sub_2441D8C6C();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2441D8C4C();

  v7 = [v5 initWithSuiteName_];

  v2[18] = v7;
  MEMORY[0x245D5A4A0](v4, v3);
  v8 = objc_opt_self();
  v9 = sub_2441D8C4C();
  v10 = [v8 appPredictionDirectoryFile_];

  v11 = v10;
  if (!v10)
  {
    sub_2441D8C6C();
    v11 = sub_2441D8C4C();
  }

  v2[15] = sub_2441D8C6C();
  v2[16] = v12;
  v13 = *sub_2441C1170();
  v14 = objc_allocWithZone(MEMORY[0x277CEBC68]);
  v15 = v13;
  v16 = sub_2441D8C4C();

  v17 = [v14 initWithCacheFilePath:v11 loggingHandle:v15 debugName:v16];

  v2[14] = v17;
  v18 = v2[18];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2441D8C4C();

    sub_2441C2864();

    v21 = sub_2441D8C4C();

    [v19 setObject:v20 forKey:v21];
  }

  else
  {
  }

  return v2;
}

void sub_2441CB1AC()
{
  sub_244194FC8(0, &qword_280F94B10, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F70, &unk_2441DD000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2441DAF20;
  v1 = sub_244194FC8(0, &qword_280F94B00, 0x277CBEA60);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F80, qword_2441DC180);
  *(v0 + 32) = v1;
  v2 = sub_244194FC8(0, qword_280F94B20, off_278E089E0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6210, &unk_2441DD010);
  *(v0 + 64) = v2;
  MEMORY[0x245D5A6A0](v0);
  sub_2441D8DBC();
  __break(1u);
}

uint64_t sub_2441CB428()
{
  if (*(v1 + 136))
  {
    v0 = *(v1 + 136);
  }

  else
  {
    sub_2441CB1AC();
    if (v2)
    {
      return v0;
    }

    v0 = v3;
    *(v1 + 136) = v3;
  }

  return v0;
}

uint64_t sub_2441CB498(unint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + 136) && (v3 = , v4 = sub_2441C05C8(v3, a1), , (v4 & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    *(v1 + 136) = a1;

    v6 = *(v1 + 112);
    sub_244194FC8(0, qword_280F94B20, off_278E089E0);
    v7 = sub_2441D8CFC();
    v12[0] = 0;
    v8 = [v6 storeSecureCodedObject:v7 error:v12];

    if (v8)
    {
      v9 = v12[0];
      v5 = 1;
    }

    else
    {
      v10 = v12[0];
      sub_2441D88BC();

      swift_willThrow();
    }
  }

  return v5 & 1;
}

unint64_t sub_2441CB5DC(uint64_t a1, uint64_t a2)
{
  sub_2441D8FEC();

  MEMORY[0x245D5A4A0](a1, a2);
  return 0xD000000000000010;
}

uint64_t CarPlayWidgetConfigurationManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CarPlayWidgetConfigurationManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2441CB6FC()
{
  result = qword_27EDD6208;
  if (!qword_27EDD6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6208);
  }

  return result;
}

void __swiftcall CarPlayStackConfigurationMetricsEvent.init(hasExperiencedCarPlayWithWidgets:numberOfStacksSupported:hasSmartRotationEnabled:hasNPlusOneEnabled:hasExperiencedSmartRotationSuggestion:hasExperiencedNPlusOneSuggestion:widgetsPerStack:)(ContextualSuggestionClient::CarPlayStackConfigurationMetricsEvent *__return_ptr retstr, Swift::Bool hasExperiencedCarPlayWithWidgets, Swift::Int numberOfStacksSupported, Swift::Bool hasSmartRotationEnabled, Swift::Bool hasNPlusOneEnabled, Swift::Bool hasExperiencedSmartRotationSuggestion, Swift::Bool hasExperiencedNPlusOneSuggestion, Swift::OpaquePointer widgetsPerStack)
{
  v16 = sub_2441D8D3C();
  *(v16 + 16) = 6;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  rawValue = widgetsPerStack._rawValue;
  sub_2441CBF20(v16);
  v17 = *(widgetsPerStack._rawValue + 2);
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v17 == 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v17 < 5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 != 5)
  {
    v22 = *(widgetsPerStack._rawValue + 5);
    v23 = *(widgetsPerStack._rawValue + 4);
    v18 = *(widgetsPerStack._rawValue + 6);
    v21 = *(widgetsPerStack._rawValue + 7);
    v19 = *(widgetsPerStack._rawValue + 8);
    v20 = rawValue[9];

    retstr->hasExperiencedCarPlayWithWidgets = hasExperiencedCarPlayWithWidgets;
    retstr->numberOfStacksSupported = numberOfStacksSupported;
    retstr->hasSmartRotationEnabled = hasSmartRotationEnabled;
    retstr->hasNPlusOneEnabled = hasNPlusOneEnabled;
    retstr->hasExperiencedSmartRotationSuggestion = hasExperiencedSmartRotationSuggestion;
    retstr->hasExperiencedNPlusOneSuggestion = hasExperiencedNPlusOneSuggestion;
    retstr->numberOfWidgetsInStackOne = v23;
    retstr->numberOfWidgetsInStackTwo = v22;
    retstr->numberOfWidgetsInStackThree = v18;
    retstr->numberOfWidgetsInStackFour = v21;
    retstr->numberOfWidgetsInStackFive = v19;
    retstr->numberOfWidgetsInStackSix = v20;
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t sub_2441CB9A0(unsigned __int8 a1)
{
  v1 = 0xD000000000000019;
  if (a1 > 5u)
  {
    if (a1 == 10)
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = 0xD000000000000019;
    }

    if (a1 == 9)
    {
      v7 = 0xD00000000000001ALL;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v8 = 0xD000000000000019;
    }

    if (a1 != 6)
    {
      v1 = v8;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000025;
    if (a1 != 4)
    {
      v3 = 0xD000000000000020;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (!a1)
    {
      v4 = 0xD000000000000020;
    }

    if (a1 <= 2u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2441CBAE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441CC514(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441CBB1C(uint64_t a1)
{
  v2 = sub_2441CC00C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CBB58(uint64_t a1)
{
  v2 = sub_2441CC00C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarPlayStackConfigurationMetricsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6230, &qword_2441DD030);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v18 = *(v1 + 8);
  v7 = *(v1 + 16);
  v16 = *(v1 + 17);
  v17 = v7;
  v8 = *(v1 + 18);
  v14 = *(v1 + 19);
  v15 = v8;
  v9 = *(v1 + 24);
  v13[3] = *(v1 + 32);
  v13[4] = v9;
  v10 = *(v1 + 40);
  v13[1] = *(v1 + 48);
  v13[2] = v10;
  v13[0] = *(v1 + 56);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441CC00C();
  sub_2441D92BC();
  v31 = 0;
  v11 = v19;
  sub_2441D917C();
  if (!v11)
  {
    v30 = 1;
    sub_2441D919C();
    v29 = 2;
    sub_2441D917C();
    v28 = 3;
    sub_2441D917C();
    v27 = 4;
    sub_2441D917C();
    v26 = 5;
    sub_2441D917C();
    v25 = 6;
    sub_2441D919C();
    v24 = 7;
    sub_2441D919C();
    v23 = 8;
    sub_2441D919C();
    v22 = 9;
    sub_2441D919C();
    v21 = 10;
    sub_2441D919C();
    v20 = 11;
    sub_2441D919C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2441CBF20(uint64_t result)
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

  result = sub_2441CC410(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

unint64_t sub_2441CC00C()
{
  result = qword_27EDD9560[0];
  if (!qword_27EDD9560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD9560);
  }

  return result;
}

unint64_t sub_2441CC060(uint64_t a1)
{
  result = sub_2441CC088();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2441CC088()
{
  result = qword_27EDD6238;
  if (!qword_27EDD6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6238);
  }

  return result;
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

uint64_t sub_2441CC100(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2441CC154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayStackConfigurationMetricsEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarPlayStackConfigurationMetricsEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2441CC30C()
{
  result = qword_27EDD9770[0];
  if (!qword_27EDD9770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD9770);
  }

  return result;
}

unint64_t sub_2441CC364()
{
  result = qword_27EDD9880;
  if (!qword_27EDD9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD9880);
  }

  return result;
}

unint64_t sub_2441CC3BC()
{
  result = qword_27EDD9888[0];
  if (!qword_27EDD9888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD9888);
  }

  return result;
}

char *sub_2441CC410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6240, &unk_2441DD200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2441CC514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000020 && 0x80000002441E03D0 == a2;
  if (v3 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441DF070 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441E0400 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002441E0420 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000025 && 0x80000002441E0440 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000002441E0470 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002441E04A0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002441E04C0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002441E04E0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002441E0500 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002441E0520 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002441E0540 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_2441D91CC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_2441CC8E4(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v1 = 0xD000000000000020;
    if (a1 == 5)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 1684957547;
    if (a1 != 3)
    {
      v2 = 0x746E65746E69;
    }

    if (a1 <= 4u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_2441CC9C8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 1684957547;
    if (v1 != 3)
    {
      v3 = 0x746E65746E69;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2441CCAAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441CCD80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441CCAD4(uint64_t a1)
{
  v2 = sub_2441CD14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CCB10(uint64_t a1)
{
  v2 = sub_2441CD14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextualWidgetSuggestion.extensionBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);

  return v1;
}

uint64_t ContextualWidgetSuggestion.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);

  return v1;
}

void *ContextualWidgetSuggestion.intent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
  v2 = v1;
  return v1;
}

void *ContextualWidgetSuggestion.scoreSpecification.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification);
  v2 = v1;
  return v1;
}

void *ContextualWidgetSuggestion.blendingClientModelSpecification.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  v2 = v1;
  return v1;
}

void sub_2441CCCC0()
{

  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
}

id ContextualWidgetSuggestion.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContextualWidgetSuggestion();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2441CCD80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002441DF8F0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002441DF910 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002441E0590 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x80000002441E0560 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_2441D91CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_2441CCFFC()
{
  result = qword_27EDD62A8;
  if (!qword_27EDD62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD62A8);
  }

  return result;
}

unint64_t sub_2441CD054()
{
  result = qword_27EDD62B0;
  if (!qword_27EDD62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD62B0);
  }

  return result;
}

unint64_t sub_2441CD0AC()
{
  result = qword_27EDD62B8;
  if (!qword_27EDD62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD62B8);
  }

  return result;
}

unint64_t sub_2441CD14C()
{
  result = qword_27EDD62C0;
  if (!qword_27EDD62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD62C0);
  }

  return result;
}

uint64_t sub_2441CD1B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73747865746E6F63 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2441D91CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2441CD244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73747865746E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2441D91CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2441CD2CC(uint64_t a1)
{
  v2 = sub_2441CD700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CD308(uint64_t a1)
{
  v2 = sub_2441CD700();

  return MEMORY[0x2821FE720](a1, v2);
}

id ContextualSuggestionSnapshot.__allocating_init(contexts:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ATXContextualSuggestionSnapshot_contexts] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ContextualSuggestionSnapshot.init(contexts:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___ATXContextualSuggestionSnapshot_contexts] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall ContextualSuggestionSnapshot.encode(with:)(NSCoder with)
{
  type metadata accessor for ContextualSuggestionContext();
  v2 = sub_2441D8CFC();
  v3 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id ContextualSuggestionSnapshot.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextualSuggestionSnapshot.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2441CD5AC()
{
  result = qword_27EDD62E8;
  if (!qword_27EDD62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD62E8);
  }

  return result;
}

unint64_t sub_2441CD604()
{
  result = qword_27EDD62F0;
  if (!qword_27EDD62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD62F0);
  }

  return result;
}

unint64_t sub_2441CD65C()
{
  result = qword_27EDD62F8;
  if (!qword_27EDD62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD62F8);
  }

  return result;
}

unint64_t sub_2441CD700()
{
  result = qword_27EDD6308;
  if (!qword_27EDD6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6308);
  }

  return result;
}

uint64_t sub_2441CD754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2441D91CC();

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

uint64_t sub_2441CD824(char a1)
{
  if (a1)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2441CD85C()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2441CD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2441D91CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2441D91CC();

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

uint64_t sub_2441CD978(uint64_t a1)
{
  v2 = sub_2441CE164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CD9B4(uint64_t a1)
{
  v2 = sub_2441CE164();

  return MEMORY[0x2821FE720](a1, v2);
}

id ContextualActionSuggestion.__allocating_init(identifier:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualActionSuggestion_action] = a3;
  return ContextualSuggestion.init(identifier:)(a1, a2);
}

uint64_t sub_2441CDA64()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualActionSuggestion_action) associatedAppBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2441D8C6C();

  return v3;
}

uint64_t ContextualActionSuggestion.init(coder:)(void *a1)
{
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  sub_244194FC8(0, &qword_27EDD6390, 0x277CCACA8);
  v9 = sub_2441D8EBC();
  if (!v9)
  {
    v19 = sub_2441994FC();
    (*(v3 + 16))(v8, v19, v2);
    v20 = sub_2441D8B7C();
    v21 = sub_2441D8E0C();
    if (!os_log_type_enabled(v20, v21))
    {
      v6 = v8;
      goto LABEL_10;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_244192000, v20, v21, "coder missing identifier", v22, 2u);
    v6 = v8;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_2441D8C6C();
  v13 = v12;

  sub_244194FC8(0, &qword_27EDD6318, 0x277D79E90);
  v14 = sub_2441D8EBC();
  if (v14)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = (*(ObjectType + 136))(v11, v13, v15);

    swift_deallocPartialClassInstance();
    return v17;
  }

  v23 = sub_2441994FC();
  (*(v3 + 16))(v6, v23, v2);
  v20 = sub_2441D8B7C();
  v24 = sub_2441D8E0C();
  if (os_log_type_enabled(v20, v24))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_244192000, v20, v24, "coder missing action", v22, 2u);
LABEL_8:
    MEMORY[0x245D5B3C0](v22, -1, -1);
  }

LABEL_10:

  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2441CDE5C(void *a1)
{
  sub_24419660C(a1);
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualActionSuggestion_action);
  v4 = sub_2441D8C4C();
  [a1 encodeObject:v3 forKey:v4];
}

id ContextualActionSuggestion.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContextualActionSuggestion();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2441CE024()
{
  result = qword_27EDD6320;
  if (!qword_27EDD6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6320);
  }

  return result;
}

unint64_t sub_2441CE07C()
{
  result = qword_27EDD6328;
  if (!qword_27EDD6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6328);
  }

  return result;
}

unint64_t sub_2441CE0D4()
{
  result = qword_27EDD6330;
  if (!qword_27EDD6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6330);
  }

  return result;
}

unint64_t sub_2441CE164()
{
  result = qword_27EDD6338;
  if (!qword_27EDD6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6338);
  }

  return result;
}

void __swiftcall WidgetRotationEvent.init(extensionBundleId:kind:reason:rotations:widgetSuggestions:)(ContextualSuggestionClient::WidgetRotationEvent *__return_ptr retstr, Swift::String extensionBundleId, Swift::String kind, Swift::String reason, Swift::Int rotations, Swift::Int widgetSuggestions)
{
  retstr->extensionBundleId = extensionBundleId;
  retstr->kind = kind;
  retstr->reason = reason;
  retstr->rotations = rotations;
  retstr->widgetSuggestions = widgetSuggestions;
}

unint64_t sub_2441CE204()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x6E6F73616572;
  v4 = 0x6E6F697461746F72;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2441CE2A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441CE828(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441CE2C8(uint64_t a1)
{
  v2 = sub_2441CE550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CE304(uint64_t a1)
{
  v2 = sub_2441CE550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRotationEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6340, &qword_2441DD690);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441CE550();
  sub_2441D92BC();
  v17 = 0;
  v10 = v12[7];
  sub_2441D916C();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = 1;
  sub_2441D916C();
  v15 = 2;
  sub_2441D916C();
  v14 = 3;
  sub_2441D919C();
  v13 = 4;
  sub_2441D919C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2441CE550()
{
  result = qword_27EDDA090[0];
  if (!qword_27EDDA090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA090);
  }

  return result;
}

unint64_t sub_2441CE5C0(uint64_t a1)
{
  result = sub_2441CE5E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2441CE5E8()
{
  result = qword_27EDD6348;
  if (!qword_27EDD6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6348);
  }

  return result;
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

uint64_t sub_2441CE668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2441CE6B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2441CE724()
{
  result = qword_27EDDA2A0[0];
  if (!qword_27EDDA2A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA2A0);
  }

  return result;
}

unint64_t sub_2441CE77C()
{
  result = qword_27EDDA3B0;
  if (!qword_27EDDA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDA3B0);
  }

  return result;
}

unint64_t sub_2441CE7D4()
{
  result = qword_27EDDA3B8[0];
  if (!qword_27EDDA3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA3B8);
  }

  return result;
}

uint64_t sub_2441CE828(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002441DF010 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE900000000000073 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002441E0840 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_2441D91CC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void __swiftcall WidgetConfigurationEvent.init(extensionBundleId:kind:configurationIntentType:)(ContextualSuggestionClient::WidgetConfigurationEvent *__return_ptr retstr, Swift::String extensionBundleId, Swift::String kind, Swift::String_optional configurationIntentType)
{
  retstr->extensionBundleId = extensionBundleId;
  retstr->kind = kind;
  retstr->configurationIntentType = configurationIntentType;
}

unint64_t sub_2441CEA28()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2441CEA80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441CEFC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441CEAB4(uint64_t a1)
{
  v2 = sub_2441CECF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CEAF0(uint64_t a1)
{
  v2 = sub_2441CECF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetConfigurationEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6350, &qword_2441DD860);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441CECF0();
  sub_2441D92BC();
  v14 = 0;
  v9 = v11[5];
  sub_2441D916C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_2441D916C();
  v12 = 2;
  sub_2441D915C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2441CECF0()
{
  result = qword_27EDDA440[0];
  if (!qword_27EDDA440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA440);
  }

  return result;
}

unint64_t sub_2441CED60(uint64_t a1)
{
  result = sub_2441CED88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2441CED88()
{
  result = qword_280F94C58;
  if (!qword_280F94C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F94C58);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2441CEE08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2441CEE50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2441CEEC0()
{
  result = qword_27EDDA550[0];
  if (!qword_27EDDA550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA550);
  }

  return result;
}

unint64_t sub_2441CEF18()
{
  result = qword_27EDDA660;
  if (!qword_27EDDA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDA660);
  }

  return result;
}

unint64_t sub_2441CEF70()
{
  result = qword_27EDDA668[0];
  if (!qword_27EDDA668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA668);
  }

  return result;
}

uint64_t sub_2441CEFC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002441DF010 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441DF030 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_2441D91CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void __swiftcall CarPlayWidgetRotationMetricsEvent.init(extensionBundleId:kind:reason:numberOfRotations:numberOfWidgetSuggestions:numberOfTaps:carPlaySessionDurationInMinutes:)(ContextualSuggestionClient::CarPlayWidgetRotationMetricsEvent *__return_ptr retstr, Swift::String extensionBundleId, Swift::String kind, Swift::Int reason, Swift::Int numberOfRotations, Swift::Int numberOfWidgetSuggestions, Swift::Int numberOfTaps, Swift::Int carPlaySessionDurationInMinutes)
{
  retstr->extensionBundleId = extensionBundleId;
  retstr->kind = kind;
  retstr->reason = reason;
  retstr->numberOfRotations = numberOfRotations;
  retstr->numberOfWidgetSuggestions = numberOfWidgetSuggestions;
  retstr->numberOfTaps = numberOfTaps;
  retstr->carPlaySessionDurationInMinutes = carPlaySessionDurationInMinutes;
}

uint64_t sub_2441CF130()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 1684957547;
    if (v1 != 1)
    {
      v5 = 0x6E6F73616572;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0x664F7265626D756ELL;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001FLL;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0xD000000000000019;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2441CF218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441CF7D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441CF240(uint64_t a1)
{
  v2 = sub_2441CF514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CF27C(uint64_t a1)
{
  v2 = sub_2441CF514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarPlayWidgetRotationMetricsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6358, &qword_2441DDA30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  v12[0] = v1[8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441CF514();
  sub_2441D92BC();
  v19 = 0;
  v10 = v12[7];
  sub_2441D916C();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = 1;
  sub_2441D916C();
  v17 = 2;
  sub_2441D919C();
  v16 = 3;
  sub_2441D919C();
  v15 = 4;
  sub_2441D919C();
  v14 = 5;
  sub_2441D919C();
  v13 = 6;
  sub_2441D919C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2441CF514()
{
  result = qword_27EDDA6F0[0];
  if (!qword_27EDDA6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA6F0);
  }

  return result;
}

unint64_t sub_2441CF584(uint64_t a1)
{
  result = sub_2441CF5AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2441CF5AC()
{
  result = qword_27EDD6360;
  if (!qword_27EDD6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6360);
  }

  return result;
}

uint64_t sub_2441CF618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2441CF660(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2441CF6D4()
{
  result = qword_27EDDA900[0];
  if (!qword_27EDDA900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDA900);
  }

  return result;
}

unint64_t sub_2441CF72C()
{
  result = qword_27EDDAA10;
  if (!qword_27EDDAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDAA10);
  }

  return result;
}

unint64_t sub_2441CF784()
{
  result = qword_27EDDAA18[0];
  if (!qword_27EDDAA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDAA18);
  }

  return result;
}

uint64_t sub_2441CF7D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002441DF010 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002441E08C0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002441E08E0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEC00000073706154 || (sub_2441D91CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002441E0900 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_2441D91CC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void __swiftcall SystemConfigurationEvent.init(hasExperiencedUI:leadingStackSmartRotateEnabled:leadingStackWidgetCount:leadingStackWidgetSuggestionsEnabled:trailingStackSmartRotateEnabled:trailingStackWidgetCount:trailingStackWidgetSuggestionsEnabled:)(ContextualSuggestionClient::SystemConfigurationEvent *__return_ptr retstr, Swift::Bool hasExperiencedUI, Swift::Bool leadingStackSmartRotateEnabled, Swift::Int leadingStackWidgetCount, Swift::Bool leadingStackWidgetSuggestionsEnabled, Swift::Bool trailingStackSmartRotateEnabled, Swift::Int trailingStackWidgetCount, Swift::Bool trailingStackWidgetSuggestionsEnabled)
{
  retstr->hasExperiencedUI = hasExperiencedUI;
  retstr->leadingStackSmartRotateEnabled = leadingStackSmartRotateEnabled;
  retstr->leadingStackWidgetCount = leadingStackWidgetCount;
  retstr->leadingStackWidgetSuggestionsEnabled = leadingStackWidgetSuggestionsEnabled;
  retstr->trailingStackSmartRotateEnabled = trailingStackSmartRotateEnabled;
  retstr->trailingStackWidgetCount = trailingStackWidgetCount;
  retstr->trailingStackWidgetSuggestionsEnabled = trailingStackWidgetSuggestionsEnabled;
}

unint64_t sub_2441CFA84()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000018;
  if (v2 != 5)
  {
    v3 = 0xD000000000000025;
  }

  v4 = 0xD000000000000024;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ELL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2441CFB4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441D0124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441CFB74(uint64_t a1)
{
  v2 = sub_2441CFE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441CFBB0(uint64_t a1)
{
  v2 = sub_2441CFE48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemConfigurationEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6368, &qword_2441DDC10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v14 = *(v1 + 1);
  v13 = *(v1 + 8);
  v7 = *(v1 + 16);
  v11 = *(v1 + 17);
  v12 = v7;
  v10[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441CFE48();
  sub_2441D92BC();
  v22 = 0;
  v8 = v15;
  sub_2441D917C();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v21 = 1;
  sub_2441D917C();
  v20 = 2;
  sub_2441D919C();
  v19 = 3;
  sub_2441D917C();
  v18 = 4;
  sub_2441D917C();
  v17 = 5;
  sub_2441D919C();
  v16 = 6;
  sub_2441D917C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2441CFE48()
{
  result = qword_27EDDAAA0[0];
  if (!qword_27EDDAAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDAAA0);
  }

  return result;
}

unint64_t sub_2441CFEB8(uint64_t a1)
{
  result = sub_2441CFEE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2441CFEE0()
{
  result = qword_280F94C60;
  if (!qword_280F94C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F94C60);
  }

  return result;
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

uint64_t sub_2441CFF60(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2441CFFB4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2441D0020()
{
  result = qword_27EDDABB0[0];
  if (!qword_27EDDABB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDABB0);
  }

  return result;
}

unint64_t sub_2441D0078()
{
  result = qword_27EDDACC0;
  if (!qword_27EDDACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDACC0);
  }

  return result;
}

unint64_t sub_2441D00D0()
{
  result = qword_27EDDACC8[0];
  if (!qword_27EDDACC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDACC8);
  }

  return result;
}

uint64_t sub_2441D0124(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002441E0950 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002441E0970 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441E0990 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000002441E09B0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002441E09E0 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002441E0A00 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000025 && 0x80000002441E0A20 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_2441D91CC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2441D0368()
{
  sub_2441B892C();
  swift_beginAccess();
}

uint64_t sub_2441D03AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6370, &qword_2441DDDD0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2441D03E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2441D0434(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 120);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void sub_2441D0498()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 56);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v0, v3, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2441D0550(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  sub_2441D0498();
  return swift_unknownObjectRelease();
}

void (*sub_2441D05B4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2441D0648;
}

void sub_2441D0648(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_2441D0498();
  }

  free(v3);
}

uint64_t ContextualSuggestionProvider.__allocating_init(endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContextualSuggestionProvider.init(endpoint:)(a1, a2);
  return v4;
}

uint64_t *ContextualSuggestionProvider.init(endpoint:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23[1] = *v3;
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2441B892C();
  swift_beginAccess();
  v3[4] = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6370, &qword_2441DDDD0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  v3[5] = v11;
  v3[7] = 0;
  swift_unknownObjectWeakInit();
  v3[2] = a1;
  v3[3] = a2;
  v12 = *(*v3[4] + 224);

  v12(v13, a1, a2);

  v14 = sub_2441994FC();
  (*(v7 + 16))(v9, v14, v6);
  v15 = sub_2441D8B7C();
  v16 = sub_2441D8E1C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v19 = sub_2441D92EC();
    v21 = sub_244195848(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_244192000, v15, v16, "%s init", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x245D5B3C0](v18, -1, -1);
    MEMORY[0x245D5B3C0](v17, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return v3;
}

void *ContextualSuggestionProvider.deinit()
{
  v1 = v0;
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441994FC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2441D8B7C();
  v8 = sub_2441D8E1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_2441D92EC();
    v13 = sub_244195848(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_244192000, v7, v8, "%s deinit", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245D5B3C0](v10, -1, -1);
    MEMORY[0x245D5B3C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v16 = *(**(v1 + 32) + 232);

  v16(v1, v15, v14);

  sub_2441A90E0(v1 + 48);
  return v1;
}

uint64_t ContextualSuggestionProvider.__deallocating_deinit()
{
  ContextualSuggestionProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *sub_2441D0C88()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_2441D0DC4()
{
  sub_2441C1350();
  result = sub_2441D8F0C();
  qword_280F95158 = result;
  return result;
}

uint64_t *sub_2441D0E20()
{
  if (qword_280F95150 != -1)
  {
    swift_once();
  }

  return &qword_280F95158;
}

id static ContextualEngineLog.oslog.getter()
{
  if (qword_280F95150 != -1)
  {
    swift_once();
  }

  v1 = qword_280F95158;

  return v1;
}

id ContextualEngineLog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualEngineLog();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2441D0FD0()
{
  v0 = sub_2441D8B8C();
  __swift_allocate_value_buffer(v0, qword_280F94EA8);
  __swift_project_value_buffer(v0, qword_280F94EA8);
  if (qword_280F95150 != -1)
  {
    swift_once();
  }

  v1 = qword_280F95158;
  return sub_2441D8B9C();
}

uint64_t static Logger.contextualEngine.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F94EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_2441D8B8C();
  v3 = __swift_project_value_buffer(v2, qword_280F94EA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2441D1104(uint64_t a1, uint64_t a2)
{
  v2 = sub_2441D90EC();

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

uint64_t sub_2441D1158(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2441D1198(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0x80000002441E0B60;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0x80000002441E0B60;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2441D91CC();
  }

  return v8 & 1;
}

uint64_t sub_2441D1248()
{
  sub_2441D924C();
  sub_2441D8C9C();

  return sub_2441D926C();
}

uint64_t sub_2441D12D4(uint64_t a1)
{
  sub_2441D8C9C();
}

uint64_t sub_2441D134C(uint64_t a1)
{
  sub_2441D924C();
  sub_2441D8C9C();

  return sub_2441D926C();
}

uint64_t sub_2441D13D4@<X0>(char *a2@<X8>)
{
  v3 = sub_2441D90EC();

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

void sub_2441D1434(unint64_t *a1@<X8>)
{
  v2 = 0x80000002441E0B60;
  v3 = 0x696669746E656469;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2441D147C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2441D14C0@<X0>(char *a3@<X8>)
{
  v4 = sub_2441D90EC();

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

uint64_t sub_2441D1524(uint64_t a1)
{
  v2 = sub_2441D1988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441D1560(uint64_t a1)
{
  v2 = sub_2441D1988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRepresentation.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier);

  return v1;
}

uint64_t ContextRepresentation.localizedDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_localizedDisplayName);

  return v1;
}

id ContextRepresentation.__allocating_init(identifier:localizedDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_localizedDisplayName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ContextRepresentation.init(identifier:localizedDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_localizedDisplayName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ContextRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2441D1834()
{
  result = qword_27EDD6398;
  if (!qword_27EDD6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD6398);
  }

  return result;
}

unint64_t sub_2441D188C()
{
  result = qword_27EDD63A0;
  if (!qword_27EDD63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD63A0);
  }

  return result;
}

unint64_t sub_2441D18E4()
{
  result = qword_27EDD63A8;
  if (!qword_27EDD63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD63A8);
  }

  return result;
}

unint64_t sub_2441D1988()
{
  result = qword_27EDD63B8;
  if (!qword_27EDD63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD63B8);
  }

  return result;
}

void sub_2441D19E0()
{
  sub_2441D8C6C();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2441D8C4C();

  v2 = [v0 initWithSuiteName_];

  qword_27EDDB128 = v2;
}

uint64_t *sub_2441D1A68()
{
  if (qword_27EDDB050 != -1)
  {
    swift_once();
  }

  return &qword_27EDDB128;
}

uint64_t sub_2441D1AB8()
{
  if (qword_27EDDB050 != -1)
  {
    swift_once();
  }

  v0 = qword_27EDDB128;
  v1 = qword_27EDDB128;
  return v0;
}

id sub_2441D1B64()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v1 = sub_2441D8C4C();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_2441D1BD0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v2 = sub_2441D8C4C();
  v3 = [v1 initWithIdentifier_];

  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_2441D1C64()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v2 = sub_2441D8C4C();
  v3 = [v1 initWithIdentifier_];

  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_2441D1CE4()
{
  sub_2441BD434();
}

uint64_t sub_2441D1D10()
{
  type metadata accessor for ContextualSuggestionProvider();
  v0 = sub_2441CAEE4();
  v1 = *v0;
  v2 = v0[1];

  return ContextualSuggestionProvider.__allocating_init(endpoint:)(v1, v2);
}

uint64_t sub_2441D1D5C()
{
  v1 = OBJC_IVAR___ATXAmbientSuggestionProvider____lazy_storage___logger;
  if (*(v0 + OBJC_IVAR___ATXAmbientSuggestionProvider____lazy_storage___logger))
  {
    v2 = *(v0 + OBJC_IVAR___ATXAmbientSuggestionProvider____lazy_storage___logger);
  }

  else
  {
    type metadata accessor for AmbientLogger();
    v2 = sub_2441C4A14();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t ATXAmbientSuggestionProvider.stackSuggestions.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAmbientSuggestionProvider_lock);
  os_unfair_lock_lock((v1 + 24));
  v2 = (*(**(v1 + 16) + 112))();
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t ATXAmbientSuggestionProvider.shouldDisableSuppressionTimerForTooling.getter()
{
  v1 = OBJC_IVAR___ATXAmbientSuggestionProvider_shouldDisableSuppressionTimerForTooling;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATXAmbientSuggestionProvider.shouldDisableSuppressionTimerForTooling.setter(char a1)
{
  v3 = OBJC_IVAR___ATXAmbientSuggestionProvider_shouldDisableSuppressionTimerForTooling;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ATXAmbientSuggestionProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *ATXAmbientSuggestionProvider.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8BBC();
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v83);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2441D8E3C();
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2441D8B8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - v14;
  v16 = OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager;
  *&v0[v16] = *sub_2441BD434();
  v17 = OBJC_IVAR___ATXAmbientSuggestionProvider_suggestionProvider;
  type metadata accessor for ContextualSuggestionProvider();

  v18 = sub_2441CAEE4();
  v19 = *v18;
  v20 = v18[1];

  *&v1[v17] = ContextualSuggestionProvider.__allocating_init(endpoint:)(v19, v20);
  v21 = OBJC_IVAR___ATXAmbientSuggestionProvider_descriptorProvider;
  *&v1[v21] = [objc_allocWithZone(MEMORY[0x277CFA380]) init];
  *&v1[OBJC_IVAR___ATXAmbientSuggestionProvider____lazy_storage___logger] = 0;
  v76 = OBJC_IVAR___ATXAmbientSuggestionProvider__suggestionsWidgetSuggestions;
  *&v1[OBJC_IVAR___ATXAmbientSuggestionProvider__suggestionsWidgetSuggestions] = 0;
  v1[OBJC_IVAR___ATXAmbientSuggestionProvider_shouldDisableSuppressionTimerForTooling] = 0;
  v78 = OBJC_IVAR___ATXAmbientSuggestionProvider_refreshTimer;
  *&v1[OBJC_IVAR___ATXAmbientSuggestionProvider_refreshTimer] = 0;
  v77 = OBJC_IVAR___ATXAmbientSuggestionProvider_delegate;
  swift_unknownObjectWeakInit();
  v22 = sub_2441BC3D8();
  v23 = *(v11 + 16);
  v85 = v22;
  v86 = v11 + 16;
  v84 = v23;
  (v23)(v15);
  v24 = sub_2441D8B7C();
  v25 = sub_2441D8E1C();
  v26 = os_log_type_enabled(v24, v25);
  v94 = ObjectType;
  v91 = v11;
  v92 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = v11;
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v27 = 136315138;
    v30 = sub_2441D92EC();
    v93 = v8;
    v32 = sub_244195848(v30, v31, &aBlock);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_244192000, v24, v25, "%s init", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x245D5B3C0](v29, -1, -1);
    MEMORY[0x245D5B3C0](v27, -1, -1);

    v8 = v93;
    (*(v28 + 8))(v15, v10);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  _s11GuardedDataCMa();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v34 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v35 = sub_2441D8C4C();
  v36 = [v34 initWithIdentifier_];

  *(v33 + 32) = v36;
  *(v33 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6408, &qword_2441DE0D0);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 16) = v33;
  *&v1[OBJC_IVAR___ATXAmbientSuggestionProvider_lock] = v37;
  v93 = sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
  aBlock = 0;
  v96 = 0xE000000000000000;
  sub_2441D8FEC();

  aBlock = 0x6C7070612E6D6F63;
  v96 = 0xEA00000000002E65;
  v38 = sub_2441D92EC();
  MEMORY[0x245D5A4A0](v38);

  MEMORY[0x245D5A4A0](0x74756F6C6C61632ELL, 0xE800000000000000);
  (*(v79 + 104))(v80, *MEMORY[0x277D85268], v8);
  sub_2441D8BDC();
  aBlock = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198640(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660, MEMORY[0x277D83970]);
  sub_2441D8F3C();
  *&v1[OBJC_IVAR___ATXAmbientSuggestionProvider_calloutQueue] = sub_2441D8E6C();
  *&v1[OBJC_IVAR___ATXAmbientSuggestionProvider_debugRotationNotificationToken] = 0;
  v39 = sub_2441B7DE8(MEMORY[0x277D84F90]);
  *&v1[v76] = v39;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v40 = *&v1[v78];
  *&v1[v78] = 0;

  v101.receiver = v1;
  v101.super_class = ATXAmbientSuggestionProvider;
  v41 = objc_msgSendSuper2(&v101, sel_init);
  v42 = *MEMORY[0x277D851C8];
  v44 = v87;
  v43 = v88;
  v45 = v89;
  v83 = *(v88 + 104);
  v83(v87, v42, v89);
  v46 = v41;
  v47 = sub_2441D8E7C();
  v88 = *(v43 + 8);
  (v88)(v44, v45);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v49 = swift_allocObject();
  v50 = v94;
  *(v49 + 16) = v48;
  *(v49 + 24) = v50;
  v51 = objc_allocWithZone(MEMORY[0x277D42628]);
  v99 = sub_2441D7618;
  v100 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v96 = 1107296256;
  v97 = sub_2441988C4;
  v98 = &block_descriptor_5;
  v52 = _Block_copy(&aBlock);

  v53 = [v51 initWithQueue:v47 operation:v52];

  _Block_release(v52);

  v54 = *&v46[OBJC_IVAR___ATXAmbientSuggestionProvider_refreshTimer];
  *&v46[OBJC_IVAR___ATXAmbientSuggestionProvider_refreshTimer] = v53;

  if ([objc_opt_self() isInternalBuild])
  {
    sub_2441C13EC();
    v83(v44, *MEMORY[0x277D851B8], v45);

    v55 = sub_2441D8E7C();
    (v88)(v44, v45);
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = swift_allocObject();
    v58 = v94;
    *(v57 + 16) = v56;
    *(v57 + 24) = v58;
    v99 = sub_2441D7650;
    v100 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v96 = 1107296256;
    v97 = sub_2441A5EE0;
    v98 = &block_descriptor_10;
    v59 = _Block_copy(&aBlock);

    v60 = sub_2441D8C8C();

    v61 = OBJC_IVAR___ATXAmbientSuggestionProvider_debugRotationNotificationToken;
    swift_beginAccess();
    notify_register_dispatch((v60 + 32), &v46[v61], v55, v59);
    swift_endAccess();

    _Block_release(v59);
  }

  v62 = *(**&v46[OBJC_IVAR___ATXAmbientSuggestionProvider_suggestionProvider] + 120);
  v63 = v46;

  v62(v46, &protocol witness table for ATXAmbientSuggestionProvider);

  v64 = *(**&v63[OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager] + 232);

  v64(v63);

  v65 = v90;
  v66 = v92;
  v84(v90, v85, v92);
  v67 = sub_2441D8B7C();
  v68 = sub_2441D8E1C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock = v70;
    *v69 = 136315394;
    v71 = sub_2441D92EC();
    v73 = sub_244195848(v71, v72, &aBlock);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_244195848(0x292874696E69, 0xE600000000000000, &aBlock);
    _os_log_impl(&dword_244192000, v67, v68, "%s.%s: resetting delegate notification suspension timer", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v70, -1, -1);
    MEMORY[0x245D5B3C0](v69, -1, -1);
  }

  (*(v91 + 8))(v65, v66);
  sub_2441D3B5C();
  return v63;
}

uint64_t sub_2441D2CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2441D8B8C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441D2DB8, 0, 0);
}

uint64_t sub_2441D2DB8()
{
  v21 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_2441BC3D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_2441D92EC();
    v15 = sub_244195848(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_244192000, v5, v6, "%s: running coalesced refresh", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245D5B3C0](v12, -1, -1);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_2441D7EA8;

    return sub_2441D2FEC();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2441D2FEC()
{
  v1[2] = v0;
  v2 = sub_2441D8B8C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for WidgetStackSuggestionGenerator(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441D30E4, 0, 0);
}

uint64_t sub_2441D30E4()
{
  v1 = *(v0[2] + OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager);
  v0[8] = v1;
  v2 = (*v1 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[9] = *(*v1 + 240);
  v0[10] = v2;
  return MEMORY[0x2822009F8](sub_2441D312C, v1, 0);
}

uint64_t sub_2441D312C()
{
  *(v0 + 88) = (*(v0 + 72))();
  *(v0 + 96) = 0;

  return MEMORY[0x2822009F8](sub_2441D31C4, 0, 0);
}

void sub_2441D31C4()
{
  v1 = v0[11];
  if (!v1)
  {
    goto LABEL_11;
  }

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!sub_2441D8F5C())
  {
LABEL_10:

LABEL_11:
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];
    v22 = sub_2441BC3D8();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_2441D8B7C();
    v24 = sub_2441D8E1C();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[4];
    v26 = v0[5];
    v28 = v0[3];
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_244192000, v23, v24, "Not producing ambient stack suggestions, no stacks in configuration", v29, 2u);
      MEMORY[0x245D5B3C0](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
    goto LABEL_14;
  }

LABEL_4:
  v2 = (*(**(v0[2] + OBJC_IVAR___ATXAmbientSuggestionProvider_suggestionProvider) + 144))();
  v3 = v0[12];
  v31 = v2;
  if (v2)
  {

    v5 = sub_2441A660C(v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];
  v11 = *(v10 + OBJC_IVAR___ATXAmbientSuggestionProvider_descriptorProvider);
  v12 = sub_2441BC3D8();
  (*(v9 + 16))(v7, v12, v8);
  sub_2441B4620(0, v1, v5, v11, v7, v6);
  v13 = sub_2441B4894();
  v15 = v14;
  v16 = *(v10 + OBJC_IVAR___ATXAmbientSuggestionProvider_lock);
  v17 = swift_task_alloc();
  *(v17 + 16) = v13;
  *(v17 + 24) = v15;
  os_unfair_lock_lock((v16 + 24));
  sub_2441D7C90((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  if (!v3)
  {
    v18 = v0[7];

    sub_2441D3EDC();

    sub_2441A9BF8(v18);
LABEL_14:

    v30 = v0[1];

    v30();
  }
}

uint64_t sub_2441D34B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2441BC3D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_244192000, v5, v6, "Not producing ambient stack suggestions, no stacks in configuration", v11, 2u);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

double sub_2441D35EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_2441D8D9C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = a2;
  sub_2441A5C20(0, 0, v8, a4, v12);

  return result;
}

uint64_t sub_2441D3738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2441D8B8C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441D37F8, 0, 0);
}

uint64_t sub_2441D37F8()
{
  v21 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_2441BC3D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_2441D92EC();
    v15 = sub_244195848(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_244192000, v5, v6, "%s: received ambient debug rotation notification", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245D5B3C0](v12, -1, -1);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_2441D3A2C;

    return sub_2441D2FEC();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2441D3A2C()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_2441D3B5C()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___ATXAmbientSuggestionProvider_lock);
  os_unfair_lock_lock((v2 + 24));
  sub_2441D4C5C((v2 + 16), v0, ObjectType);

  os_unfair_lock_unlock((v2 + 24));
}

id sub_2441D3BE8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441BC3D8();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2441D8B7C();
  v8 = sub_2441D8E1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    v11 = sub_2441D92EC();
    v13 = sub_244195848(v11, v12, v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_244192000, v7, v8, "%s deinit", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245D5B3C0](v10, -1, -1);
    MEMORY[0x245D5B3C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v14 = OBJC_IVAR___ATXAmbientSuggestionProvider_debugRotationNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v1[v14]);
  v17.receiver = v1;
  v17.super_class = ATXAmbientSuggestionProvider;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

double sub_2441D3EDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8BAC();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2441D8BEC();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2441BC3D8();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2441D8B7C();
  v12 = sub_2441D8E1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = v6;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    v17 = sub_2441D92EC();
    v19 = sub_244195848(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_244192000, v11, v12, "%s: requesting delegate notification", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245D5B3C0](v16, -1, -1);
    v20 = v14;
    v3 = v32;
    MEMORY[0x245D5B3C0](v20, -1, -1);

    v21 = (*(v7 + 8))(v9, v31);
  }

  else
  {

    v21 = (*(v7 + 8))(v9, v6);
  }

  v22 = *&v1[OBJC_IVAR___ATXAmbientSuggestionProvider_lock];
  MEMORY[0x28223BE20](v21);
  *(&v30 - 2) = v1;
  *(&v30 - 1) = ObjectType;
  os_unfair_lock_lock((v22 + 24));
  sub_2441D7D24((v22 + 16), aBlock);
  os_unfair_lock_unlock((v22 + 24));
  v24 = aBlock[0];
  if (aBlock[0])
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    *(v25 + 24) = v24;
    aBlock[4] = sub_2441D7D50;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2441988C4;
    aBlock[3] = &block_descriptor_94;
    v26 = _Block_copy(aBlock);
    v27 = v1;
    v28 = v33;
    sub_2441D8BDC();
    v38 = MEMORY[0x277D84F90];
    sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
    sub_244198640(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00, MEMORY[0x277D83970]);
    v29 = v35;
    sub_2441D8F3C();
    MEMORY[0x245D5A650](0, v28, v29, v26);
    _Block_release(v26);
    (*(v37 + 8))(v29, v3);
    (*(v34 + 8))(v28, v36);
  }

  return result;
}

uint64_t ATXAmbientSuggestionProvider.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_2441D453C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_2441D458C@<X0>(id **a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v62 = a4;
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  v19 = OBJC_IVAR___ATXAmbientSuggestionProvider_shouldDisableSuppressionTimerForTooling;
  swift_beginAccess();
  if (*(a2 + v19) == 1)
  {
    v20 = sub_2441BC3D8();
    (*(v7 + 16))(v18, v20, v6);
    v21 = sub_2441D8B7C();
    v22 = sub_2441D8E1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v63 = v24;
      *v23 = 136315138;
      v25 = sub_2441D92EC();
      v27 = sub_244195848(v25, v26, &v63);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_244192000, v21, v22, "%s: rotation suppression is disabled for tooling via property, notifying immediately", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245D5B3C0](v24, -1, -1);
      MEMORY[0x245D5B3C0](v23, -1, -1);
    }

    v28 = (*(v7 + 8))(v18, v6);
LABEL_12:
    result = (*(**a1 + 14))(v28);
    goto LABEL_20;
  }

  if (qword_27EDDB050 != -1)
  {
    swift_once();
  }

  v29 = qword_27EDDB128;
  if (qword_27EDDB128)
  {
    sub_2441C139C();

    v30 = sub_2441D8C4C();

    v31 = [v29 BOOLForKey_];

    if (v31)
    {
      v32 = sub_2441BC3D8();
      (*(v7 + 16))(v16, v32, v6);
      v33 = sub_2441D8B7C();
      v34 = sub_2441D8E1C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v63 = v36;
        *v35 = 136315138;
        v37 = sub_2441D92EC();
        v39 = sub_244195848(v37, v38, &v63);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_244192000, v33, v34, "%s: rotation suppression is disabled via defaults override, notifying immediately", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x245D5B3C0](v36, -1, -1);
        MEMORY[0x245D5B3C0](v35, -1, -1);
      }

      v28 = (*(v7 + 8))(v16, v6);
      goto LABEL_12;
    }
  }

  v41 = *a1;
  if ([v41[4] isScheduled])
  {
    [v41[4] timeRemaining];
    v43 = v42;
    v44 = sub_2441BC3D8();
    (*(v7 + 16))(v13, v44, v6);
    v45 = sub_2441D8B7C();
    v46 = sub_2441D8E1C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v48;
      *v47 = 136315394;
      v49 = sub_2441D92EC();
      v51 = sub_244195848(v49, v50, &v63);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2048;
      *(v47 + 14) = v43;
      _os_log_impl(&dword_244192000, v45, v46, "%s: delegate notification suspension timer already scheduled %f seconds left, setting notification to pending", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x245D5B3C0](v48, -1, -1);
      MEMORY[0x245D5B3C0](v47, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    (*(*v41 + 21))(1);
    result = 0;
  }

  else
  {
    v52 = sub_2441BC3D8();
    (*(v7 + 16))(v10, v52, v6);
    v53 = sub_2441D8B7C();
    v54 = sub_2441D8E1C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v55 = 136315138;
      v57 = sub_2441D92EC();
      v59 = sub_244195848(v57, v58, &v63);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_244192000, v53, v54, "%s: no delegate notification suspension timer scheduled, notifying immediately", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x245D5B3C0](v56, -1, -1);
      MEMORY[0x245D5B3C0](v55, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v60 = (*(*v41 + 21))(0);
    result = (*(*v41 + 14))(v60);
  }

LABEL_20:
  *v62 = result;
  return result;
}

void sub_2441D4C5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if ([*(*a1 + 32) isScheduled])
  {
    [*(v5 + 32) timeRemaining];
    if (v6 > 300.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 300.0;
    }
  }

  else
  {
    v7 = 300.0;
  }

  [*(v5 + 32) cancel];
  v8 = *(v5 + 32);
  v9 = *(a2 + OBJC_IVAR___ATXAmbientSuggestionProvider_calloutQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a3;
  v14[4] = sub_2441D7AF8;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_24419531C;
  v14[3] = &block_descriptor_72;
  v12 = _Block_copy(v14);
  v13 = v8;

  [v13 scheduleWithFireInterval:v9 leewayInterval:v12 queue:v7 handler:1.0];
  _Block_release(v12);
}

uint64_t sub_2441D4DEC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  v13 = *a1;
  LOBYTE(a1) = (*(**a1 + 160))(v10);
  v14 = sub_2441BC3D8();
  v15 = *(v6 + 16);
  if (a1)
  {
    v15(v12, v14, v5);
    v16 = sub_2441D8B7C();
    v17 = sub_2441D8E1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      v20 = sub_2441D92EC();
      v22 = sub_244195848(v20, v21, &v35);
      v34 = v5;
      v23 = a3;
      v24 = v22;

      *(v18 + 4) = v24;
      a3 = v23;
      _os_log_impl(&dword_244192000, v16, v17, "%s: notification suspension timer fired. Notification was pending, so notifying delegate", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x245D5B3C0](v19, -1, -1);
      MEMORY[0x245D5B3C0](v18, -1, -1);

      (*(v6 + 8))(v12, v34);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    v33 = (*(*v13 + 168))(0);
    result = (*(*v13 + 112))(v33);
  }

  else
  {
    v15(v9, v14, v5);
    v25 = sub_2441D8B7C();
    v26 = sub_2441D8E1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      v29 = sub_2441D92EC();
      v31 = sub_244195848(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_244192000, v25, v26, "%s: notification suspension timer fired. No notification pending, not notifying delegate", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x245D5B3C0](v28, -1, -1);
      MEMORY[0x245D5B3C0](v27, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    result = 0;
  }

  *a3 = result;
  return result;
}

Swift::Void __swiftcall ATXAmbientSuggestionProvider.logViewDidAppear()()
{
  v0 = sub_2441D1D5C();
  (*(*v0 + 128))(v0);
}

Swift::Void __swiftcall ATXAmbientSuggestionProvider.logViewDidDisappear()()
{
  v0 = sub_2441D1D5C();
  (*(*v0 + 136))(v0);
}

Swift::Void __swiftcall ATXAmbientSuggestionProvider.logUserDidTap(_:)(ATXWidget *a1)
{
  v2 = sub_2441D1D5C();
  (*(*v2 + 144))(a1);
}

double ATXAmbientSuggestionProvider.logStackDidChange(to:reason:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_2441D8D9C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = ObjectType;
  v11 = v2;
  v12 = a1;
  sub_2441A5C20(0, 0, v8, &unk_2441DE0E0, v10);

  return result;
}

uint64_t sub_2441D559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2441D8B8C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441D5678, 0, 0);
}

uint64_t sub_2441D5678()
{
  v1 = *(v0[2] + OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager);
  v0[11] = v1;
  v2 = (*v1 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[12] = *(*v1 + 240);
  v0[13] = v2;
  return MEMORY[0x2822009F8](sub_2441D56C0, v1, 0);
}

uint64_t sub_2441D56C0()
{
  *(v0 + 112) = (*(v0 + 96))();

  return MEMORY[0x2822009F8](sub_2441D5758, 0, 0);
}

unint64_t sub_2441D5758()
{
  v105 = v0;
  result = v0[14];
  if (result)
  {
    if (result >> 62)
    {
LABEL_37:
      v75 = result;
      v2 = sub_2441D8F5C();
      result = v75;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_4:
        v3 = 0;
        v4 = v0[14];
        v5 = v4 & 0xC000000000000001;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = result + 32;
        v8 = &unk_278E09000;
        v97 = result;
        v93 = v6;
        v94 = v5;
        v92 = result + 32;
        v95 = v2;
LABEL_5:
        if (v5)
        {
          result = MEMORY[0x245D5A7F0](v3, result);
        }

        else
        {
          if (v3 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_46;
          }

          result = *(v7 + 8 * v3);
        }

        v9 = result;
        v10 = __OFADD__(v3, 1);
        v11 = v3 + 1;
        if (!v10)
        {
          v12 = [result v8[247]];
          sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
          v13 = sub_2441D8D0C();

          v98 = v9;
          v96 = v11;
          if (v13 >> 62)
          {
            result = sub_2441D8F5C();
            v102 = result;
          }

          else
          {
            v102 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          while (1)
          {
            if (v102 == v14)
            {

              v3 = v96;
              result = v97;
              v6 = v93;
              v5 = v94;
              v7 = v92;
              v8 = &unk_278E09000;
              if (v96 != v95)
              {
                goto LABEL_5;
              }

              v51 = v0[9];
              v52 = v0[6];
              v53 = v0[7];
              v54 = v0[3];
              v55 = sub_2441BC3D8();
              (*(v53 + 16))(v51, v55, v52);
              v56 = v54;

              v57 = sub_2441D8B7C();
              v58 = sub_2441D8E1C();

              v59 = os_log_type_enabled(v57, v58);
              v60 = v0[9];
              v61 = v0[6];
              v62 = v0[7];
              if (v59)
              {
                v101 = v0[6];
                v103 = v0[9];
                v63 = v0[3];
                v64 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                v104 = v99;
                *v64 = 136315906;
                v66 = sub_2441D92EC();
                v68 = sub_244195848(v66, v67, &v104);

                *(v64 + 4) = v68;
                *(v64 + 12) = 2080;
                *(v64 + 14) = sub_244195848(0xD00000000000001DLL, 0x80000002441DE9C0, &v104);
                *(v64 + 22) = 2112;
                *(v64 + 24) = v63;
                *v65 = v63;
                *(v64 + 32) = 2080;
                v69 = sub_244194FC8(0, qword_280F94B20, off_278E089E0);
                v70 = v63;
                v71 = MEMORY[0x245D5A510](v97, v69);
                v73 = v72;

                v74 = sub_244195848(v71, v73, &v104);

                *(v64 + 34) = v74;
                _os_log_impl(&dword_244192000, v57, v58, "%s.%s: not logging, could not find stack that contains %@ in configuration: %s", v64, 0x2Au);
                sub_2441979F8(v65, &unk_27EDD5F60, &qword_2441DBCB0);
                MEMORY[0x245D5B3C0](v65, -1, -1);
                swift_arrayDestroy();
                MEMORY[0x245D5B3C0](v99, -1, -1);
                MEMORY[0x245D5B3C0](v64, -1, -1);

                (*(v62 + 8))(v103, v101);
              }

              else
              {

                (*(v62 + 8))(v60, v61);
              }

              goto LABEL_42;
            }

            if ((v13 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x245D5A7F0](v14, v13);
            }

            else
            {
              if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              result = *(v13 + 8 * v14 + 32);
            }

            v16 = result;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v17 = v0[3];
            v18 = [result identifier];
            v19 = sub_2441D8C6C();
            v21 = v20;

            v22 = [v17 identifier];
            v23 = sub_2441D8C6C();
            v25 = v24;

            if (v19 == v23 && v21 == v25)
            {
              break;
            }

            v15 = sub_2441D91CC();

            ++v14;
            v0 = v100;
            if (v15)
            {
              goto LABEL_26;
            }
          }

          v0 = v100;
LABEL_26:

          v26 = v0[4];

          v27 = v0[3];
          v28 = v98;
          if (v26 == 2)
          {
            v29 = sub_2441D61FC(v27);
          }

          else
          {
            v29 = v27;
          }

          v30 = v29;
          v31 = v0[10];
          v33 = v0[6];
          v32 = v0[7];
          v34 = v0[4];
          v35 = sub_2441D1D5C();
          (*(*v35 + 152))(v98, v30, v34);

          v36 = sub_2441BC3D8();
          (*(v32 + 16))(v31, v36, v33);
          v37 = sub_2441D8B7C();
          v38 = sub_2441D8E1C();
          v39 = os_log_type_enabled(v37, v38);
          v40 = v0[10];
          v42 = v0[6];
          v41 = v0[7];
          if (v39)
          {
            v43 = v30;
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v104 = v45;
            *v44 = 136315394;
            v46 = sub_2441D92EC();
            v48 = sub_244195848(v46, v47, &v104);

            *(v44 + 4) = v48;
            *(v44 + 12) = 2080;
            *(v44 + 14) = sub_244195848(0xD00000000000001DLL, 0x80000002441DE9C0, &v104);
            _os_log_impl(&dword_244192000, v37, v38, "%s.%s: resetting delegate notification suspension timer", v44, 0x16u);
            swift_arrayDestroy();
            v49 = v45;
            v28 = v98;
            MEMORY[0x245D5B3C0](v49, -1, -1);
            v50 = v44;
            v30 = v43;
            v0 = v100;
            MEMORY[0x245D5B3C0](v50, -1, -1);
          }

          (*(v41 + 8))(v40, v42);
          sub_2441D3B5C();

          goto LABEL_42;
        }

LABEL_46:
        __break(1u);
        return result;
      }
    }
  }

  v77 = v0[7];
  v76 = v0[8];
  v78 = v0[6];
  v79 = sub_2441BC3D8();
  (*(v77 + 16))(v76, v79, v78);
  v80 = sub_2441D8B7C();
  v81 = sub_2441D8E1C();
  v82 = os_log_type_enabled(v80, v81);
  v84 = v0[7];
  v83 = v0[8];
  v85 = v0[6];
  if (v82)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v104 = v87;
    *v86 = 136315394;
    v88 = sub_2441D92EC();
    v90 = sub_244195848(v88, v89, &v104);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    *(v86 + 14) = sub_244195848(0xD00000000000001DLL, 0x80000002441DE9C0, &v104);
    _os_log_impl(&dword_244192000, v80, v81, "%s.%s: not logging, no stacks in configuration", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v87, -1, -1);
    MEMORY[0x245D5B3C0](v86, -1, -1);
  }

  (*(v84 + 8))(v83, v85);
LABEL_42:

  v91 = v0[1];

  return v91();
}

uint64_t sub_2441D6018()
{
  v19 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_2441BC3D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    v13 = sub_2441D92EC();
    v15 = sub_244195848(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_244195848(0xD00000000000001DLL, 0x80000002441DE9C0, &v18);
    _os_log_impl(&dword_244192000, v5, v6, "%s.%s: not logging, no stacks in configuration", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v12, -1, -1);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);

  v16 = v0[1];

  return v16();
}

id sub_2441D61FC(void *a1)
{
  v52 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR___ATXAmbientSuggestionProvider_lock);
  os_unfair_lock_lock((v5 + 24));
  v6 = (*(**(v5 + 16) + 112))();
  os_unfair_lock_unlock((v5 + 24));
  if (v6)
  {
    v46 = v3;
    v47 = v2;
    v53 = MEMORY[0x277D84F90];
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_36:
      v8 = sub_2441D8F5C();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x245D5A7F0](v9, v6);
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_33;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v14 = [v11 topWidget];

      ++v9;
      if (v14)
      {
        MEMORY[0x245D5A4E0]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2441D8D2C();
        }

        sub_2441D8D4C();
        v10 = v53;
        v9 = v13;
      }
    }

    if (v10 >> 62)
    {
      v6 = sub_2441D8F5C();
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_17:
        v15 = 0;
        v50 = v10 & 0xFFFFFFFFFFFFFF8;
        v51 = v10 & 0xC000000000000001;
        do
        {
          if (v51)
          {
            v16 = MEMORY[0x245D5A7F0](v15, v10);
          }

          else
          {
            if (v15 >= *(v50 + 16))
            {
              goto LABEL_35;
            }

            v16 = *(v10 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_34;
          }

          v19 = [v16 identifier];
          v20 = sub_2441D8C6C();
          v22 = v21;

          v23 = [v52 identifier];
          v24 = sub_2441D8C6C();
          v26 = v25;

          if (v20 == v24 && v22 == v26)
          {

LABEL_31:

            v28 = v17;
            v29 = [v28 source];
            v30 = [v52 copyWithSource_];

            return v30;
          }

          v7 = sub_2441D91CC();

          if (v7)
          {
            goto LABEL_31;
          }

          ++v15;
        }

        while (v18 != v6);
      }
    }

    v3 = v46;
    v2 = v47;
  }

  v32 = sub_2441BC3D8();
  v33 = v49;
  (*(v3 + 16))(v49, v32, v2);
  v52 = v52;
  v34 = sub_2441D8B7C();
  v35 = sub_2441D8E0C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v3;
    v39 = swift_slowAlloc();
    v53 = v39;
    *v36 = 136315650;
    v40 = sub_2441D92EC();
    v42 = sub_244195848(v40, v41, &v53);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_244195848(0xD00000000000002CLL, 0x80000002441E0DD0, &v53);
    *(v36 + 22) = 2112;
    v43 = v52;
    *(v36 + 24) = v52;
    *v37 = v43;
    v44 = v43;
    _os_log_impl(&dword_244192000, v34, v35, "%s.%s: could not find widget suggestion for systemSuggest rotation to %@", v36, 0x20u);
    sub_2441979F8(v37, &unk_27EDD5F60, &qword_2441DBCB0);
    MEMORY[0x245D5B3C0](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v39, -1, -1);
    MEMORY[0x245D5B3C0](v36, -1, -1);

    (*(v38 + 8))(v33, v2);
  }

  else
  {

    (*(v3 + 8))(v33, v2);
  }

  v45 = v52;

  return v45;
}

void ATXAmbientSuggestionProvider.logWidgetStack(_:didChangeTo:reason:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_2441D8B8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 2)
  {
    v13 = sub_2441D61FC(a2);
  }

  else
  {
    v13 = a2;
  }

  v14 = v13;
  v15 = sub_2441D1D5C();
  (*(*v15 + 152))(a1, v14, a3);

  v16 = sub_2441BC3D8();
  (*(v10 + 16))(v12, v16, v9);
  v17 = sub_2441D8B7C();
  v18 = sub_2441D8E1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v14;
    v32 = v20;
    v21 = v20;
    *v19 = 136315394;
    v22 = sub_2441D92EC();
    v24 = sub_244195848(v22, v23, &v32);
    v30 = v9;
    v25 = ObjectType;
    v26 = v24;

    *(v19 + 4) = v26;
    ObjectType = v25;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_244195848(0xD000000000000025, 0x80000002441DE9E0, &v32);
    _os_log_impl(&dword_244192000, v17, v18, "%s.%s: resetting delegate notification suspension timer", v19, 0x16u);
    swift_arrayDestroy();
    v27 = v21;
    v14 = v31;
    MEMORY[0x245D5B3C0](v27, -1, -1);
    MEMORY[0x245D5B3C0](v19, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v28 = *(v4 + OBJC_IVAR___ATXAmbientSuggestionProvider_lock);
  os_unfair_lock_lock((v28 + 24));
  sub_2441D4C5C((v28 + 16), v4, ObjectType);
  os_unfair_lock_unlock((v28 + 24));
}

uint64_t sub_2441D6CE4()
{
  v1 = *(v0[2] + OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager);
  v0[3] = v1;
  v2 = (*v1 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[4] = *(*v1 + 240);
  v0[5] = v2;
  return MEMORY[0x2822009F8](sub_2441A79BC, v1, 0);
}

uint64_t sub_2441D6EA0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2441D6F18, 0, 0);
}

uint64_t sub_2441D6F18()
{
  v1 = *(v0[2] + OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager);
  v0[4] = v1;
  v2 = (*v1 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[5] = *(*v1 + 240);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2441D6F60, v1, 0);
}

uint64_t sub_2441D6F60()
{
  v1 = (*(v0 + 40))();
  *(v0 + 56) = 0;
  v2 = v1;

  if (v2)
  {
    sub_244194FC8(0, qword_280F94B20, off_278E089E0);
    v3 = sub_2441D8CFC();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 24);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2441D7084()
{
  v1 = *(v0 + 56);

  v2 = sub_2441D88AC();
  v3 = *(v0 + 24);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t ATXAmbientSuggestionProvider.write(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2441D7144, 0, 0);
}

uint64_t sub_2441D7144()
{
  v1 = *(v0[3] + OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager);
  v0[4] = v1;
  v2 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0x7EED000000000000;
  v0[5] = *(*v1 + 248);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2441D718C, v1, 0);
}

uint64_t sub_2441D718C()
{
  (*(v0 + 40))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2441D7398(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_244194FC8(0, qword_280F94B20, off_278E089E0);
  v3[4] = sub_2441D8D0C();
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2441D7440, 0, 0);
}

uint64_t sub_2441D7440()
{
  v1 = *(v0[2] + OBJC_IVAR___ATXAmbientSuggestionProvider_configurationManager);
  v0[5] = v1;
  v2 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0x7EED000000000000;
  v0[6] = *(*v1 + 248);
  v0[7] = v2;
  return MEMORY[0x2822009F8](sub_2441D7488, v1, 0);
}

uint64_t sub_2441D7488()
{
  (*(v0 + 48))(*(v0 + 32));
  *(v0 + 64) = 0;
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2441D756C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = sub_2441D88AC();

  (*(v2 + 16))(v2, v3);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

id sub_2441D7688(const char *a1, ...)
{
  v3 = v1;
  swift_getObjectType();
  v4 = sub_2441D8B8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2441BC3D8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2441D8B7C();
  v10 = sub_2441D8E1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_2441D92EC();
    v16 = sub_244195848(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_244192000, v9, v10, v18, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D5B3C0](v13, -1, -1);
    MEMORY[0x245D5B3C0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = *(v3 + OBJC_IVAR___ATXAmbientSuggestionProvider_refreshTimer);
  if (result)
  {
    return [result runAfterDelaySeconds:0 coalescingBehavior:1.0];
  }

  __break(1u);
  return result;
}

uint64_t sub_2441D7884()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_244198A50;

  return sub_2441D559C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_2441D7950()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_244198A50;

  return sub_2441D7398(v2, v3, v4);
}

uint64_t sub_2441D7A04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441D6EA0(v2, v3);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_2441D7AF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___ATXAmbientSuggestionProvider_lock);
    os_unfair_lock_lock(v2 + 6);
    sub_2441D4DEC(&v2[4], &v6);
    os_unfair_lock_unlock(v2 + 6);
    if (v6)
    {
      v3 = [v1 delegate];
      if (v3)
      {
        v4 = v3;
        type metadata accessor for ATXWidgetStackSuggestion(0);
        v5 = sub_2441D8CFC();

        [v4 suggestionProvider:v1 didUpdateStackSuggestions:v5];
        swift_unknownObjectRelease();

        v1 = v5;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_2441D7BF8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441D3738(v4, v5, v6, v2, v3);
}

uint64_t sub_2441D7C90(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 120);

  v2(v3);
  v4 = *(*v1 + 144);

  return v4(v5);
}

void sub_2441D7D50()
{
  v1 = *(v0 + 16);
  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ATXWidgetStackSuggestion(0);
    v4 = sub_2441D8CFC();
    [v3 suggestionProvider:v1 didUpdateStackSuggestions:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2441D7E00()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441D2CF8(v4, v5, v6, v2, v3);
}

uint64_t contextualSuggestionServerInterface.getter()
{
  [objc_opt_self() interfaceWithProtocol_];
  v0 = sub_244194FC8(0, &qword_280F94B10, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F70, &unk_2441DD000);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2441DAF20;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6420, &unk_2441DE2A0);
  *(v1 + 32) = v0;
  v2 = sub_244194FC8(0, &qword_27EDD6390, 0x277CCACA8);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6430, &qword_2441DC468);
  *(v1 + 64) = v2;
  MEMORY[0x245D5A6A0](v1);
  result = sub_2441D8DBC();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t contextualSuggestionServiceInterface.getter()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_244194FC8(0, &qword_280F94B10, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F70, &unk_2441DD000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2441DC440;
  v1 = sub_244194FC8(0, &qword_27EDD5FE8, 0x277CBEAC0);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6440, &qword_2441DC460);
  *(v0 + 32) = v1;
  v2 = sub_244194FC8(0, &qword_27EDD6390, 0x277CCACA8);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6430, &qword_2441DC468);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ContextualSuggestionSnapshot();
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5FF0, &unk_2441DC470);
  *(v0 + 96) = v3;
  MEMORY[0x245D5A6A0](v0);
  result = sub_2441D8DBC();
  __break(1u);
  return result;
}