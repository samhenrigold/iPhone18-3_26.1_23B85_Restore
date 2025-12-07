void sub_192203450(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v34 = a8;
  v15 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[2] = *a1;
  v37 = a4;
  v38 = a5;
  v33 = a6;
  v39 = a6;
  v40 = a7;
  v41 = a2;
  v42 = a3;
  v18 = sub_192227C40();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  WitnessTable = swift_getWitnessTable();
  v21 = v35;
  v22 = sub_19204301C(sub_192203774, v36, v18, a4, v19, WitnessTable, MEMORY[0x1E69E7288], v43);
  if (v21)
  {
    v24 = type metadata accessor for Timeline(0, a5, a7, v23);
    (*(*(v24 - 8) + 8))(a1, v24);
  }

  else
  {
    v25 = v22;

    v27 = type metadata accessor for Timeline(0, a5, a7, v26);
    sub_192054E84(a1 + *(v27 + 36), v17);
    (*(*(v27 - 8) + 8))(a1, v27);
    v28 = v33;
    v29 = v34;
    *v34 = v25;
    v31 = type metadata accessor for Timeline(0, a4, v28, v30);
    sub_1922036D0(v17, v29 + *(v31 + 36));
  }
}

uint64_t Timeline.init(entries:policy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v6 = a5 + *(type metadata accessor for Timeline(0, a3, a4, a4) + 36);

  return sub_1922036D0(a2, v6);
}

uint64_t sub_1922036D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineReloadPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_192203774(uint64_t a1, void *a2)
{
  result = (*(v2 + 48))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t WidgetRelevanceEntry<A>.init(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192224CC0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WidgetRelevanceEntry<A>.init(group:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_192203894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = *(type metadata accessor for WidgetRelevanceEntry(0, a3, v7, v8) + 28);
  v12 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, v10, v11);
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v9, a2, v12);
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:group:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = (a4 + *(type metadata accessor for WidgetRelevanceEntry(0, a3, a3, a5) + 28));
  *v10 = v8;
  v10[1] = v9;
  type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, v11, v12);
  swift_storeEnumTagMultiPayload();
  v13 = *(*(a3 - 8) + 32);

  return v13(a4, a1, a3);
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:group:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = (a5 + *(type metadata accessor for WidgetRelevanceEntry(0, a3, a3, a4) + 28));
  *v10 = v8;
  v10[1] = v9;
  type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, v11, v12);
  result = swift_storeEnumTagMultiPayload();
  *a5 = a1;
  return result;
}

uint64_t WidgetRelevanceEntry.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, *(a1 + 16), a2, a3);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v4 + *(a1 + 28), v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    v12 = sub_192224CC0();
    return (*(*(v12 - 8) + 32))(a4, v10, v12);
  }

  return result;
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(type metadata accessor for WidgetRelevanceEntry(0, a3, a3, a4) + 28);
  v10 = sub_192224CC0();
  (*(*(v10 - 8) + 32))(a5 + v9, a2, v10);
  type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, v11, v12);
  swift_storeEnumTagMultiPayload();
  v13 = *(*(a3 - 8) + 32);

  return v13(a5, a1, a3);
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *(type metadata accessor for WidgetRelevanceEntry(0, a3, a3, a4) + 28);
  v10 = sub_192224CC0();
  (*(*(v10 - 8) + 32))(&a5[v9], a2, v10);
  type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, v11, v12);
  result = swift_storeEnumTagMultiPayload();
  *a5 = a1;
  return result;
}

uint64_t sub_192203DC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for WidgetRelevanceEntry.Attribute(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_192203E54(uint64_t a1)
{
  result = sub_192224CC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for _ActivitySystemActionForegroundColorModifier(uint64_t a1)
{
  result = qword_1EADECF48;
  if (!qword_1EADECF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192203F10(uint64_t a1)
{
  v2 = type metadata accessor for _ActivitySystemActionForegroundColorModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI4ViewP9WidgetKitE23activityForegroundColoryQrAA0H0VSgF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _ActivitySystemActionForegroundColorModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v6 + 20)) = a1;

  MEMORY[0x193B0A190](v8, a2, v6, a3);
  return sub_192203F10(v8);
}

unint64_t sub_192204064()
{
  result = qword_1EADECF58;
  if (!qword_1EADECF58)
  {
    type metadata accessor for _ActivitySystemActionForegroundColorModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECF58);
  }

  return result;
}

void sub_1922040E4(uint64_t a1)
{
  sub_192110C60(319);
  if (v1 <= 0x3F)
  {
    sub_1921F93CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_192204184@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1922261D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1921112F0(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_192227FA0();
  v12 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_19220434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1922261D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + *(a2 + 20));
  if (v11)
  {
    sub_192204184(v10);
    sub_192227270();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = v13 | (v15 << 32);
    v21 = v17 | (v19 << 32);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2600, &qword_192245030);
  (*(*(v22 - 8) + 16))(a3, a1, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2608, &qword_192245038);
  v24 = a3 + *(result + 36);
  *v24 = v20;
  *(v24 + 8) = v21;
  *(v24 + 16) = v11 == 0;
  return result;
}

unint64_t sub_192204508()
{
  result = qword_1EADECE70;
  if (!qword_1EADECE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2608, &qword_192245038);
    sub_192031E74(&qword_1EADECD40, &qword_1EADF2600, &qword_192245030, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADECD20, &qword_1EADF2610, &qword_192245078, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE70);
  }

  return result;
}

uint64_t sub_1922045EC(uint64_t a1)
{
  v2 = sub_1921FCE64();

  return MEMORY[0x1EEDE0700](a1, v2);
}

unint64_t sub_19220462C()
{
  result = qword_1EADED3C0;
  if (!qword_1EADED3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3C0);
  }

  return result;
}

uint64_t sub_1922046A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 112)) = v3;
  return result;
}

double WidgetConfiguration.requiresFeatureFlag(domain:featureName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  sub_1920797E8(sub_1921F659C, v12, a5, a6);

  return result;
}

double WidgetConfiguration.requiresFeatureFlag(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225430();
  v6 = sub_192228430();
  v8 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225440();
  v9 = sub_192228430();
  WidgetConfiguration.requiresFeatureFlag(domain:featureName:)(v6, v8, v9, v10, a2, a3);

  return result;
}

double sub_1922048C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_1920797E8(a5, v9, a2, a3);

  return result;
}

uint64_t sub_192204970(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 124)) = 1;
  *(a1 + *(result + 120)) = 1;
  return result;
}

uint64_t sub_192204A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3, a4);
}

id static CHSWidgetDisplayPropertiesCodable.wrapping(_:)(void *a1)
{
  [a1 scale];
  v3 = v2;
  v4 = [a1 colorGamut];
  v5 = objc_allocWithZone(type metadata accessor for CHSWidgetDisplayPropertiesCodable());

  return [v5 initWithScale:v4 colorGamut:v3];
}

void (*EnvironmentValues._widgetDisplayProperties.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  sub_192040FB0();
  sub_1922261E0();
  return sub_192204C50;
}

void sub_192204C50(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    EnvironmentValues._widgetDisplayProperties.setter(v3);
  }

  else
  {
    EnvironmentValues._widgetDisplayProperties.setter(v2);
  }
}

uint64_t sub_192204CB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1922051AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_192204CE0(uint64_t a1)
{
  v2 = sub_19204522C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192204D1C(uint64_t a1)
{
  v2 = sub_19204522C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CHSWidgetDisplayPropertiesCodable.__allocating_init(displayConfiguration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithDisplayConfiguration_];

  return v3;
}

id CHSWidgetDisplayPropertiesCodable.__allocating_init(widgetDisplayProperties:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWidgetDisplayProperties_];

  return v3;
}

id CHSWidgetDisplayPropertiesCodable.__allocating_init(size:scale:colorGamut:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithSize:a1 scale:a2 colorGamut:{a3, a4}];
}

id CHSWidgetDisplayPropertiesCodable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_192205158()
{
  result = qword_1EADF2628;
  if (!qword_1EADF2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2628);
  }

  return result;
}

uint64_t sub_1922051AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6147726F6C6F63 && a2 == 0xEA00000000007475)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1922052E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2648, &qword_192245530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_19220535C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2640, &qword_192245528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1922053CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2640, &qword_192245528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_192205434()
{
  result = qword_1ED74AEB0;
  if (!qword_1ED74AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2658, &unk_192245540);
    sub_19207DAD8();
    sub_192031E74(&qword_1ED74AEA8, &qword_1EADF2648, &qword_192245530, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEB0);
  }

  return result;
}

void *EnvironmentValues._archiveVersion.getter()
{
  sub_1920C86F0();

  return sub_1922261E0();
}

uint64_t static ArchiveVersion.current.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2660;
  return result;
}

uint64_t static ArchiveVersion.current.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2660 = v1;
  return result;
}

WidgetKit::ArchiveVersion_optional __swiftcall ArchiveVersion.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_192205690()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1 + 1);
  return sub_192228B30();
}

uint64_t sub_192205708()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1 + 1);
  return sub_192228B30();
}

uint64_t sub_192205814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192205978();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues._archiveVersion.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1920C86F0();
  sub_1922261E0();
  return sub_1922058D8;
}

unint64_t sub_192205914()
{
  result = qword_1EADF2668;
  if (!qword_1EADF2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2668);
  }

  return result;
}

unint64_t sub_192205978()
{
  result = qword_1EADF2670;
  if (!qword_1EADF2670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EADEEBC0, &qword_19222D980);
    sub_192205914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2670);
  }

  return result;
}

unint64_t sub_1922059FC()
{
  result = qword_1EADF2678;
  if (!qword_1EADF2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2678);
  }

  return result;
}

uint64_t sub_192205A50@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result - 1) >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * result);
  }

  *a2 = v2;
  return result;
}

id sub_192205A94(uint64_t a1)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {

    return v8;
  }

  else
  {
    v12[0] = *v7;

    sub_192227FA0();
    v10 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v11 = sub_19209561C(v12[0], 0);
    (*(v4 + 8))(v6, v3, v11);
    return v12[1];
  }
}

void sub_192205C0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 60);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_192227FA0();
    v11 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v12 = sub_192049898(v10, 0);
    (*(v6 + 8))(v8, v5, v12);
  }
}

uint64_t sub_192205D68(uint64_t a1)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_192227FA0();
    v9 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v10 = sub_192049898(v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

double sub_192205EBC(uint64_t a1)
{
  v2 = sub_192205A94(a1);
  v3 = [v2 nestedContentMetrics];

  if (v3 && (sub_19202A7A8(0, &qword_1EADEEEB8, 0x1E696AD98), sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0), sub_19220B010(), v4 = sub_192227840(), v3, v5 = sub_1922281B0(), v6 = sub_1920997B4(v5, v4), v5, , v6))
  {
    [v6 size];
  }

  else
  {
    v6 = sub_192205A94(a1);
    [v6 size];
  }

  v8 = v7;

  return v8;
}

void sub_192205FDC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_192205D68(a1))
  {
    sub_192227230();
  }

  else
  {
    sub_192227250();
    sub_192205C0C(a1, &v5);
  }

  v4 = sub_192227260();

  *a2 = v4;
}

uint64_t AccessoryWidgetGroup.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF78, &qword_192231FD0);
  v33 = a1[2];
  sub_192225C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF18, &qword_192231E70);
  sub_192225C70();
  sub_192225C70();
  v31 = a1[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
  v30 = a1[5];
  *&v55 = v31;
  *(&v55 + 1) = v3;
  *&v56 = v30;
  *(&v56 + 1) = sub_192206600();
  sub_192226870();
  sub_192227360();
  sub_192225C70();
  swift_getTupleTypeMetadata2();
  sub_192227660();
  swift_getWitnessTable();
  v4 = sub_192227540();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = sub_192225C70();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = sub_192225C70();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v29 - v14;
  sub_1922265C0();
  *&v15 = a1[4];
  *(&v15 + 1) = v30;
  *&v16 = v33;
  *(&v16 + 1) = v31;
  v39 = v16;
  v40 = v15;
  v41 = v35;
  sub_192227530();
  sub_192225C80();
  sub_192226D10();
  WitnessTable = swift_getWitnessTable();
  sub_1922270B0();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  LOBYTE(v55) = 0;
  v19 = swift_getKeyPath();
  LOBYTE(v46) = 0;
  v20 = swift_getKeyPath();
  LOBYTE(v54[0]) = 0;
  v21 = swift_getKeyPath();
  LOBYTE(v53[0]) = 0;
  v22 = v46;
  *&v46 = KeyPath;
  BYTE8(v46) = v55;
  *(&v46 + 9) = v54[0];
  HIDWORD(v46) = *(v54 + 3);
  v47 = v19;
  v48 = 0uLL;
  LOBYTE(v49) = v22;
  *(&v49 + 1) = v53[0];
  DWORD1(v49) = *(v53 + 3);
  *(&v49 + 1) = v20;
  LOBYTE(v50) = v54[0];
  DWORD1(v50) = *&v52[3];
  *(&v50 + 1) = *v52;
  *(&v50 + 1) = v21;
  v51 = 0;
  v44 = WitnessTable;
  v45 = MEMORY[0x1E6980A30];
  v23 = swift_getWitnessTable();
  v24 = v32;
  MEMORY[0x193B0A190](&v46, v8, &type metadata for LayoutInsetsModifier, v23);
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v55 = v46;
  v56 = v47;
  sub_192209EE0(&v55);
  (*(v36 + 8))(v10, v8);
  v25 = sub_192209F10();
  v42 = v23;
  v43 = v25;
  swift_getWitnessTable();
  v26 = v34;
  sub_1921BB14C();
  v27 = *(v37 + 8);
  v27(v24, v11);
  sub_1921BB14C();
  return (v27)(v26, v11);
}

unint64_t sub_192206600()
{
  result = qword_1EADF2690;
  if (!qword_1EADF2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
    sub_19220668C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2690);
  }

  return result;
}

unint64_t sub_19220668C()
{
  result = qword_1EADF2698;
  if (!qword_1EADF2698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26A0, &qword_192245748);
    sub_192206718();
    sub_192206940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2698);
  }

  return result;
}

unint64_t sub_192206718()
{
  result = qword_1EADF26A8;
  if (!qword_1EADF26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26B0, &qword_192245750);
    sub_1922067D0();
    sub_192031E74(&qword_1EADF26E8, &qword_1EADF26F0, &qword_192245770, &unk_192245BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26A8);
  }

  return result;
}

unint64_t sub_1922067D0()
{
  result = qword_1EADF26B8;
  if (!qword_1EADF26B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26C0, &qword_192245758);
    sub_192206888();
    sub_192031E74(&qword_1EADF26D8, &qword_1EADF26E0, &qword_192245768, &unk_192245BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26B8);
  }

  return result;
}

unint64_t sub_192206888()
{
  result = qword_1EADF26C8;
  if (!qword_1EADF26C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26D0, &qword_192245760);
    sub_192031E74(&qword_1EADF26D8, &qword_1EADF26E0, &qword_192245768, &unk_192245BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26C8);
  }

  return result;
}

unint64_t sub_192206940()
{
  result = qword_1EADF26F8;
  if (!qword_1EADF26F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2700, &qword_192245778);
    sub_192031E74(&qword_1EADF2708, &qword_1EADF2710, &qword_192245780, &unk_192245BE0);
    sub_192031E74(&qword_1EADF2718, &qword_1EADF2720, &qword_192245788, &unk_192245BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26F8);
  }

  return result;
}

uint64_t sub_192206A20@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v103 = a4;
  v104 = a1;
  v99 = a6;
  v109 = a2;
  v110 = a3;
  v100 = a2;
  v111 = a4;
  v112 = a5;
  v86 = a5;
  v89 = type metadata accessor for AccessoryWidgetGroup(0, &v109);
  v92 = *(v89 - 8);
  v95 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = v73 - v8;
  v9 = a3;
  v81 = a3;
  v84 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v83 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
  v91 = v12;
  v90 = sub_192206600();
  v109 = v9;
  v110 = v12;
  v111 = a5;
  v112 = v90;
  v93 = sub_192226870();
  v88 = sub_192227360();
  v97 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v82 = v73 - v13;
  v96 = sub_192225C70();
  v98 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v85 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v94 = v73 - v16;
  v80 = sub_192227400();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v18 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v73 - v20;
  v22 = sub_192226F10();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF78, &qword_192231FD0);
  v26 = sub_192225C70();
  v76 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v73 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF18, &qword_192231E70);
  v75 = sub_192225C70();
  v78 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v73 - v29;
  v77 = sub_192225C70();
  v105 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v101 = v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v102 = v73 - v33;
  (*(v23 + 104))(v25, *MEMORY[0x1E6980F28], v22, v32);
  v34 = *MEMORY[0x1E6980E28];
  v35 = sub_192226DA0();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v21, v34, v35);
  (*(v36 + 56))(v21, 0, 1, v35);
  sub_192226E20();
  sub_192226E50();
  sub_192033970(v21, &qword_1EADEFEC8, &qword_192242DC0);
  (*(v23 + 8))(v25, v22);
  v37 = v103;
  sub_1922271A0();

  v38 = v79;
  v39 = v18;
  v40 = v80;
  (*(v79 + 104))(v18, *MEMORY[0x1E69816C8], v80);
  v41 = MEMORY[0x1E6980A18];
  v42 = sub_192031E74(&qword_1EADEFF70, &qword_1EADEFF78, &qword_192231FD0, MEMORY[0x1E6980A18]);
  v108[9] = v37;
  v108[10] = v42;
  v43 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v45 = v74;
  sub_192227010();
  (*(v38 + 8))(v39, v40);
  (*(v76 + 8))(v28, v26);
  sub_192227600();
  v46 = sub_192031E74(&qword_1EADEFF10, &qword_1EADEFF18, &qword_192231E70, v41);
  v108[7] = WitnessTable;
  v108[8] = v46;
  v73[1] = v43;
  v71 = v75;
  v72 = swift_getWitnessTable();
  v47 = v101;
  sub_1922271C0();
  (*(v78 + 8))(v45, v71);
  v108[5] = v72;
  v108[6] = MEMORY[0x1E697EBF8];
  v48 = v77;
  v78 = swift_getWitnessTable();
  sub_1921BB14C();
  v79 = *(v105 + 8);
  v80 = v105 + 8;
  (v79)(v47, v48);
  v49 = v89;
  v50 = v104;
  v51 = v81;
  (*(v84 + 16))(v83, v104 + *(v89 + 52), v81);
  v52 = v92;
  v53 = v87;
  (*(v92 + 16))(v87, v50, v49);
  v54 = (*(v52 + 80) + 48) & ~*(v52 + 80);
  v55 = swift_allocObject();
  *(v55 + 2) = v100;
  *(v55 + 3) = v51;
  v56 = v86;
  *(v55 + 4) = v103;
  *(v55 + 5) = v56;
  (*(v52 + 32))(&v55[v54], v53, v49);
  v57 = v82;
  sub_192227340();
  sub_192205EBC(v49);
  sub_1922275F0();
  v108[4] = swift_getWitnessTable();
  v58 = v88;
  v59 = swift_getWitnessTable();
  v60 = v85;
  sub_1922271B0();
  (*(v97 + 8))(v57, v58);
  v108[2] = v59;
  v108[3] = MEMORY[0x1E697E040];
  v61 = v96;
  v62 = swift_getWitnessTable();
  v63 = v94;
  sub_1921BB14C();
  v64 = v98;
  v65 = *(v98 + 8);
  v66 = v60;
  v65(v60, v61);
  v67 = v101;
  v68 = v102;
  (*(v105 + 16))(v101, v102, v48);
  v109 = v67;
  (*(v64 + 16))(v66, v63, v61);
  v110 = v66;
  v108[0] = v48;
  v108[1] = v61;
  v106 = v78;
  v107 = v62;
  sub_19212F67C(&v109, 2uLL, v108);
  v65(v63, v61);
  v69 = v79;
  (v79)(v68, v48);
  v65(v66, v61);
  return v69(v67, v48);
}

uint64_t sub_1922076E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a6;
  v74 = a5;
  v73 = a4;
  v72 = a3;
  v76 = a2;
  v86 = a7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2720, &qword_192245788);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v63 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2888, &qword_192245C48);
  MEMORY[0x1EEE9AC00](v66);
  v10 = &v63 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2700, &qword_192245778);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2710, &qword_192245780);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v63 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26F0, &qword_192245770);
  MEMORY[0x1EEE9AC00](v69);
  v15 = &v63 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2890, &qword_192245C50);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v63 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2898, &qword_192245C58);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v63 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF28A0, &qword_192245C60);
  MEMORY[0x1EEE9AC00](v65);
  v19 = &v63 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26B0, &qword_192245750);
  MEMORY[0x1EEE9AC00](v78);
  v68 = &v63 - v20;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26A0, &qword_192245748);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v63 - v21;
  v22 = sub_192226570();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_192226950();
  v82 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, a1, v22, v27);
  sub_1921A8448(3);
  sub_19220B078();
  sub_192227E00();
  sub_192227E60();
  v30 = sub_192227E50();
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      sub_192226960();
      v56 = v67;
      sub_192226960();
      v91 = v72;
      v92 = v73;
      v93 = v74;
      v94 = v75;
      v57 = type metadata accessor for AccessoryWidgetGroup(0, &v91);
      sub_192205FDC(v57, &v95);
      v87 = v95;
      LOBYTE(v88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF28A8, &qword_192245C68);
      sub_19220B0D0();
      sub_1922266E0();
      v58 = v92;
      v59 = &v13[*(v56 + 72)];
      *v59 = v91;
      v59[8] = v58;
      v45 = &qword_192245780;
      sub_19202CFFC(v13, v10, &qword_1EADF2710, &qword_192245780);
      swift_storeEnumTagMultiPayload();
      sub_192031E74(&qword_1EADF2708, &qword_1EADF2710, &qword_192245780, &unk_192245BE0);
      sub_192031E74(&qword_1EADF2718, &qword_1EADF2720, &qword_192245788, &unk_192245BE0);
      v60 = v71;
      sub_1922266E0();
      sub_19202CFFC(v60, v79, &qword_1EADF2700, &qword_192245778);
      swift_storeEnumTagMultiPayload();
      sub_192206718();
      sub_192206940();
      v61 = v81;
      sub_1922266E0();
      sub_192033970(v60, &qword_1EADF2700, &qword_192245778);
      sub_19202CFFC(v61, v85, &qword_1EADF26A0, &qword_192245748);
      swift_storeEnumTagMultiPayload();
      sub_19220668C();
      sub_1922266E0();
      sub_192033970(v61, &qword_1EADF26A0, &qword_192245748);
      v41 = v13;
      v42 = &qword_1EADF2710;
    }

    else
    {
      if (v30 != 3)
      {
        goto LABEL_8;
      }

      v44 = v64;
      sub_192226960();
      sub_192226960();
      sub_192226960();
      v45 = &qword_192245788;
      sub_19202CFFC(v44, v10, &qword_1EADF2720, &qword_192245788);
      swift_storeEnumTagMultiPayload();
      sub_192031E74(&qword_1EADF2708, &qword_1EADF2710, &qword_192245780, &unk_192245BE0);
      sub_192031E74(&qword_1EADF2718, &qword_1EADF2720, &qword_192245788, &unk_192245BE0);
      v46 = v71;
      sub_1922266E0();
      sub_19202CFFC(v46, v79, &qword_1EADF2700, &qword_192245778);
      swift_storeEnumTagMultiPayload();
      sub_192206718();
      sub_192206940();
      v47 = v81;
      sub_1922266E0();
      sub_192033970(v46, &qword_1EADF2700, &qword_192245778);
      sub_19202CFFC(v47, v85, &qword_1EADF26A0, &qword_192245748);
      swift_storeEnumTagMultiPayload();
      sub_19220668C();
      sub_1922266E0();
      sub_192033970(v47, &qword_1EADF26A0, &qword_192245748);
      v41 = v44;
      v42 = &qword_1EADF2720;
    }

    v43 = v45;
    goto LABEL_12;
  }

  if (!v30)
  {
    v91 = v72;
    v92 = v73;
    v93 = v74;
    v94 = v75;
    v48 = type metadata accessor for AccessoryWidgetGroup(0, &v91);
    sub_192205FDC(v48, &v91);
    v49 = v91;
    sub_192205FDC(v48, &v87);
    v50 = v87;
    sub_192205FDC(v48, &v95);
    v87 = v49;
    v88 = v50;
    v89 = v95;
    v90 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26D0, &qword_192245760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26E0, &qword_192245768);
    sub_192206888();
    sub_192031E74(&qword_1EADF26D8, &qword_1EADF26E0, &qword_192245768, &unk_192245BE0);
    sub_1922266E0();
    v51 = v91;
    v52 = v92;
    v53 = v93;
    LOBYTE(v50) = v94;
    *v19 = v91;
    *(v19 + 1) = v52;
    v75 = v52;
    v76 = v51;
    *(v19 + 2) = v53;
    v19[24] = v50;
    swift_storeEnumTagMultiPayload();
    sub_19220B154(v51, v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26C0, &qword_192245758);
    sub_1922067D0();
    sub_192031E74(&qword_1EADF26E8, &qword_1EADF26F0, &qword_192245770, &unk_192245BE0);
    v54 = v68;
    sub_1922266E0();
    sub_19202CFFC(v54, v79, &qword_1EADF26B0, &qword_192245750);
    swift_storeEnumTagMultiPayload();
    sub_192206718();
    sub_192206940();
    v55 = v81;
    sub_1922266E0();
    sub_192033970(v54, &qword_1EADF26B0, &qword_192245750);
    sub_19202CFFC(v55, v85, &qword_1EADF26A0, &qword_192245748);
    swift_storeEnumTagMultiPayload();
    sub_19220668C();
    sub_1922266E0();
    sub_19220B198(v76, v75, v53);
    v41 = v55;
    v42 = &qword_1EADF26A0;
    v43 = &qword_192245748;
    goto LABEL_12;
  }

  if (v30 == 1)
  {
    sub_192226960();
    v91 = v72;
    v92 = v73;
    v93 = v74;
    v94 = v75;
    v31 = type metadata accessor for AccessoryWidgetGroup(0, &v91);
    sub_192205FDC(v31, &v95);
    v87 = v95;
    LOBYTE(v88) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF28A8, &qword_192245C68);
    sub_19220B0D0();
    sub_1922266E0();
    v32 = v91;
    v33 = v92;
    sub_192205FDC(v31, &v95);
    v87 = v95;
    LOBYTE(v88) = 0;
    sub_1922266E0();
    v34 = v91;
    v35 = v92;
    v36 = v69;
    v37 = &v15[*(v69 + 68)];
    *v37 = v32;
    v37[8] = v33;
    v38 = &v15[*(v36 + 72)];
    *v38 = v34;
    v38[8] = v35;
    sub_19202CFFC(v15, v19, &qword_1EADF26F0, &qword_192245770);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26C0, &qword_192245758);
    sub_1922067D0();
    sub_192031E74(&qword_1EADF26E8, &qword_1EADF26F0, &qword_192245770, &unk_192245BE0);
    v39 = v68;
    sub_1922266E0();
    sub_19202CFFC(v39, v79, &qword_1EADF26B0, &qword_192245750);
    swift_storeEnumTagMultiPayload();
    sub_192206718();
    sub_192206940();
    v40 = v81;
    sub_1922266E0();
    sub_192033970(v39, &qword_1EADF26B0, &qword_192245750);
    sub_19202CFFC(v40, v85, &qword_1EADF26A0, &qword_192245748);
    swift_storeEnumTagMultiPayload();
    sub_19220668C();
    sub_1922266E0();
    sub_192033970(v40, &qword_1EADF26A0, &qword_192245748);
    v41 = v15;
    v42 = &qword_1EADF26F0;
    v43 = &qword_192245770;
LABEL_12:
    sub_192033970(v41, v42, v43);
    return (*(v82 + 8))(v29, v26);
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  sub_19220668C();
  sub_1922266E0();
  return (*(v82 + 8))(v29, v26);
}

id sub_192208638()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = v5;

    sub_192227FA0();
    v7 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192033970(&v9, &qword_1EADF0B78, &qword_192236FE8);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

double sub_1922087BC()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = *(v0 + 48);
  v5 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v5;
  if (v10 == 1)
  {
    return *v9;
  }

  sub_192227FA0();
  v7 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();
  sub_192033970(v9, &qword_1EADF2878, &qword_192245C40);
  (*(v2 + 8))(v4, v1);
  return v8;
}

double sub_192208934()
{
  v0 = sub_192208638();
  v1 = [v0 widgetGroupMargins];

  if (v1)
  {
    [v1 layoutInsets];
    v3 = v2 - sub_1922087BC();
    [v1 layoutInsets];
    [v1 layoutInsets];
    [v1 layoutInsets];
    sub_1922087BC();
  }

  else
  {
    v4 = sub_192208638();
    [v4 safeAreaInsets];

    v5 = sub_192208638();
    [v5 safeAreaInsets];

    return 0.0;
  }

  return v3;
}

uint64_t sub_192208A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192208934();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_192226D10();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2868, &qword_192245C30);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2870, &qword_192245C38);
  v14 = a2 + *(result + 36);
  *v14 = v11;
  *(v14 + 8) = v4;
  *(v14 + 16) = v6;
  *(v14 + 24) = v8;
  *(v14 + 32) = v10;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_192208B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = *(a1 + 24);
  v19 = *(a1 + 16);
  v4 = v19;
  v20 = MEMORY[0x1E6981840];
  v21 = v3;
  v22 = MEMORY[0x1E6981840];
  v23 = *(a1 + 32);
  v5 = v23;
  swift_getTupleTypeMetadata();
  sub_192227660();
  swift_getWitnessTable();
  v6 = sub_192227520();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v15[4] = v4;
  v15[5] = v3;
  v15[6] = v5;
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = v15[0];
  sub_192226340();
  sub_192227510();
  swift_getWitnessTable();
  sub_1921BB14C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1921BB14C();
  return (v13)(v12, v6);
}

uint64_t sub_192208D64@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a8;
  v47 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v41 - v16;
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v49 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v41 - v28;
  v44 = v30;
  sub_1921BB14C();
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v43 = a6;
  v66 = a6;
  v67 = a7;
  v41 = a7;
  type metadata accessor for NestedContent(0, &v62);
  v42 = v22;
  sub_1921BB14C();
  v31 = v45;
  sub_1921BB14C();
  v32 = v49;
  (*(v24 + 16))(v49, v29, a2);
  v60 = 0;
  v61 = 1;
  v62 = v32;
  v63 = &v60;
  v33 = v46;
  v34 = v50;
  (*(v46 + 16))(v50, v22, a3);
  v58 = 0;
  v59 = 1;
  v64 = v34;
  v65 = &v58;
  v35 = v47;
  v36 = v51;
  (*(v47 + 16))(v51, v31, a4);
  v66 = v36;
  v57[0] = a2;
  v57[1] = MEMORY[0x1E6981840];
  v57[2] = a3;
  v57[3] = MEMORY[0x1E6981840];
  v57[4] = a4;
  v52 = v44;
  v53 = MEMORY[0x1E6981838];
  v54 = v43;
  v55 = MEMORY[0x1E6981838];
  v56 = v41;
  sub_19212F67C(&v62, 5uLL, v57);
  v37 = *(v35 + 8);
  v37(v31, a4);
  v38 = *(v33 + 8);
  v38(v42, a3);
  v39 = *(v24 + 8);
  v39(v29, a2);
  v37(v51, a4);
  v38(v50, a3);
  return (v39)(v49, a2);
}

uint64_t sub_1922091C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v10 = type metadata accessor for AccessoryWidgetGroup(0, v16);
  v11 = a7 + v10[14];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a7 + v10[15];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a7 + v10[16];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a1();
  return a2(v14);
}

double AccessoryWidgetGroup<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AccessoryWidgetGroup.init(label:content:)();

  return result;
}

uint64_t sub_1922093CC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_192226FD0();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

double AccessoryWidgetGroup<>.init(_:systemImage:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880, MEMORY[0x1E697D658]);
  AccessoryWidgetGroup.init(label:content:)();

  return result;
}

uint64_t sub_1922095AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x1EEDDC7B0](a1, a2, a3, a4, a5, a6, v12);
}

uint64_t AccessoryWidgetGroup<>.init<A>(_:systemImage:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880, MEMORY[0x1E697D658]);
  AccessoryWidgetGroup.init(label:content:)();

  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t sub_192209770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  return sub_192227450();
}

uint64_t AccessoryWidgetGroup<>.init(_:image:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880, MEMORY[0x1E697D658]);
  AccessoryWidgetGroup.init(label:content:)();

  v6 = sub_1922256F0();
  return (*(*(v6 - 8) + 8))(a5, v6);
}

uint64_t sub_192209998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = sub_1922256F0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);

  return sub_192227460();
}

uint64_t AccessoryWidgetGroup<>.init<A>(_:image:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880, MEMORY[0x1E697D658]);
  AccessoryWidgetGroup.init(label:content:)();
  v9 = sub_1922256F0();
  (*(*(v9 - 8) + 8))(a2, v9);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t sub_192209BFC(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1922256F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v15);
  (*(v11 + 16))(v13, a2, v10);
  return sub_192227470();
}

double View.accessoryWidgetGroupStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_192227040();

  return result;
}

void *sub_192209E18()
{
  sub_19220AF00();

  return sub_1922261E0();
}

double sub_192209E90@<D0>(_OWORD *a1@<X8>)
{
  sub_19207D65C();
  sub_1922261E0();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_192209F10()
{
  result = qword_1EADF2728;
  if (!qword_1EADF2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2728);
  }

  return result;
}

void sub_19220A018(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_19220A588(319);
      if (v3 <= 0x3F)
      {
        sub_19220A5F0(319, &qword_1EADF27C8, &type metadata for WidgetRenderingMode);
        if (v4 <= 0x3F)
        {
          sub_19220A5F0(319, &qword_1EADEDFB8, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_19220A10C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((v10 + (v12 & ~v9) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v11 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    if (v5 == v11)
    {
      return (*(v4 + 48))(a1);
    }

    v22 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 > 1)
    {
      return (v23 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = a1[v13];
  if (!a1[v13])
  {
    goto LABEL_30;
  }

LABEL_26:
  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v11 + (v21 | v20) + 1;
}

void sub_19220A2EC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = ((v12 + ((v10 + v11) & ~v11) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          v25 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v25 + 8) = 0;
            *v25 = a2 - 255;
          }

          else
          {
            *(v25 + 8) = -a2;
          }
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void sub_19220A588(uint64_t a1)
{
  if (!qword_1EADF27C0)
  {
    sub_19202A7A8(255, &qword_1ED74BD10, 0x1E69943F0);
    v1 = sub_192225A00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADF27C0);
    }
  }
}

void sub_19220A5F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_192225A00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19220A68C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19220A6D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_19220A748(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19220A7F0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_19220AAA8(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

unint64_t sub_19220AE30()
{
  result = qword_1EADF2860;
  if (!qword_1EADF2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2860);
  }

  return result;
}

unint64_t sub_19220AF00()
{
  result = qword_1EADF2880;
  if (!qword_1EADF2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2880);
  }

  return result;
}

uint64_t sub_19220AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for AccessoryWidgetGroup(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1922076E4(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_19220B010()
{
  result = qword_1EADF1A90;
  if (!qword_1EADF1A90)
  {
    sub_19202A7A8(255, &qword_1EADEEEB8, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A90);
  }

  return result;
}

unint64_t sub_19220B078()
{
  result = qword_1EADEFFC8;
  if (!qword_1EADEFFC8)
  {
    sub_192226950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFFC8);
  }

  return result;
}

unint64_t sub_19220B0D0()
{
  result = qword_1EADED318;
  if (!qword_1EADED318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF28A8, &qword_192245C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED318);
  }

  return result;
}

uint64_t sub_19220B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

double sub_19220B198(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return result;
}

unint64_t sub_19220B1EC()
{
  result = qword_1EADF28B0;
  if (!qword_1EADF28B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2870, &qword_192245C38);
    sub_192031E74(&qword_1EADF28B8, &qword_1EADF2868, &qword_192245C30, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF28B0);
  }

  return result;
}

id WidgetAuxiliaryViewMetadata.Graphic.platformImage.getter()
{
  v1 = v0;
  v2 = sub_192226B50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B70();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E697CB08])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v12 = sub_19220B4D4();
    (*(v3 + 8))(v5, v2);
    return v12;
  }

  else if (v11 == *MEMORY[0x1E697CB00])
  {
    (*(v7 + 96))(v10, v6);
    return *v10;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }
}

id sub_19220B4D4()
{
  v0 = sub_192226B30();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = sub_192226B00();
  sub_192226B40();
  v8 = 0;
  if ((*(v1 + 88))(v6, v0) == *MEMORY[0x1E697CAF8])
  {
    (*(v1 + 16))(v3, v6, v0);
    (*(v1 + 96))(v3, v0);
    if (*v3)
    {
      sub_192226AF0();
      v9 = sub_192227930();

      v10 = objc_opt_self();
      if ((v7 & 0x100000000) != 0)
      {
        v11 = [v10 _systemImageNamed_];
      }

      else
      {
        v11 = [v10 _systemImageNamed_variableValue_withConfiguration_];
      }

      v8 = v11;
    }

    else if ((v7 & 0x100000000) != 0)
    {
      sub_192226AF0();
      v12 = sub_192227930();

      v8 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      sub_19220B734();
      sub_192226AF0();
      v8 = sub_1922281A0();
    }
  }

  (*(v1 + 8))(v6, v0);
  return v8;
}

unint64_t sub_19220B734()
{
  result = qword_1EADF28C0;
  if (!qword_1EADF28C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADF28C0);
  }

  return result;
}

uint64_t Preview.init<A, B>(_:as:using:widget:contentStates:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = swift_allocObject();
  v16[2] = a9;
  v16[3] = a10;
  v16[4] = a11;
  v16[5] = a12;
  v16[6] = a5;
  v16[7] = a6;
  v22[3] = a9;
  v22[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v18 = *(a9 - 8);
  (*(v18 + 16))(boxed_opaque_existential_1, a4, a9);
  v19 = swift_allocObject();
  v19[2] = a9;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a7;
  v19[7] = a8;
  v22[5] = &unk_192245CE8;
  v22[6] = v19;
  sub_19220BC18();
  sub_192225740();
  return (*(v18 + 8))(a4, a9);
}

uint64_t sub_19220B8E8(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v8 = (a1 + *a1);
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_19220B9D4;

  return v8();
}

uint64_t sub_19220B9D4(uint64_t a1)
{
  v5 = *v1;

  swift_getAssociatedTypeWitness();
  v2 = sub_192228590();

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_19220BB44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1920D7114;

  return sub_19220B8E8(v6, v5, v2, v3, v4);
}

unint64_t sub_19220BC18()
{
  result = qword_1EADF28C8[0];
  if (!qword_1EADF28C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF28C8);
  }

  return result;
}

uint64_t static PreviewActivityBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_192169490(AssociatedTypeWitness, AssociatedTypeWitness);
  v5 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v6 = sub_192227B90();
  (*(v5 + 16))(v7, a1, AssociatedTypeWitness);

  return sub_192167AD8(v6, AssociatedTypeWitness);
}

uint64_t static PreviewActivityBuilder.buildPartialBlock(accumulated:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();

  return _s9WidgetKit28PreviewRelevanceEntryBuilderV17buildPartialBlock11accumulated4nextSayxGAG_AGtFZ_0();
}

uint64_t static PreviewActivityBuilder.buildArray(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_192227C40();
  sub_192227C40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_192227AE0();
}

uint64_t CodableColor.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t CodableColor.color.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  sub_192227280();
  return sub_192227320();
}

id CodableColor.uiColor.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v2 = sub_192227280();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v3;
}

uint64_t CodableColor.resolved.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t static CodableColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 1;
    }
  }

  else if (*(a2 + 16) & 1) == 0 && (sub_192227290())
  {
    return 1;
  }

  return 0;
}

void sub_19220C040(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_19220C0C8(uint64_t a1)
{
  v2 = sub_19220C2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19220C104(uint64_t a1)
{
  v2 = sub_19220C2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2950, &qword_192245D28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  HIDWORD(v10) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220C2A0();
  sub_192228B90();
  v11 = v8;
  v12 = v7;
  v13 = BYTE4(v10);
  sub_1920CF350();
  sub_192228850();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19220C2A0()
{
  result = qword_1EADEE478;
  if (!qword_1EADEE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE478);
  }

  return result;
}

uint64_t CodableColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2958, &qword_192245D30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220C2A0();
  sub_192228B70();
  if (!v2)
  {
    sub_1920CF44C();
    sub_192228750();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_19220C46C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && (sub_192227290() & 1) != 0;
  }

  return (*(a2 + 16) & 1) != 0;
}

unint64_t sub_19220C53C()
{
  result = qword_1EADF2960;
  if (!qword_1EADF2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2960);
  }

  return result;
}

unint64_t sub_19220C594()
{
  result = qword_1EADEE468;
  if (!qword_1EADEE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE468);
  }

  return result;
}

unint64_t sub_19220C5EC()
{
  result = qword_1EADEE470;
  if (!qword_1EADEE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE470);
  }

  return result;
}

uint64_t static ModifyControlStateRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF2970 = a1;
  return result;
}

uint64_t sub_19220C830(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_state);
  v8[3] = sub_1922254F0();
  v8[4] = sub_19220EC2C(&qword_1EADEE4F0, MEMORY[0x1E6994018], v6);
  v8[0] = v5;

  sub_192228190();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

id ModifyControlStateRequest.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v4 = sub_192228140();
  if (v4)
  {
    v5 = v4;
    sub_1922254F0();
    sub_19220EC2C(&qword_1EADEDED0, MEMORY[0x1E6994030], v6);
    sub_192228180();
    v7 = v25;
    if (v25)
    {
      *&v2[OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control] = v5;
      *&v2[OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_state] = v7;
      v24.receiver = v2;
      v24.super_class = type metadata accessor for ModifyControlStateRequest();
      v8 = objc_msgSendSuper2(&v24, sel_init);

      return v8;
    }

    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v17 = sub_1922258B0();
    __swift_project_value_buffer(v17, qword_1EAE00810);
    v18 = a1;
    v11 = sub_192225890();
    v19 = sub_192227F90();

    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = [v18 error];
      if (v22)
      {
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      *(v20 + 4) = v22;
      *v21 = v23;
      _os_log_impl(&dword_192028000, v11, v19, "Unable to decode state for control=(missing identity): %{public}@", v20, 0xCu);
      sub_1920FB918(v21);
      MEMORY[0x193B0C7F0](v21, -1, -1);
      MEMORY[0x193B0C7F0](v20, -1, -1);

      goto LABEL_21;
    }

LABEL_18:
LABEL_21:

    goto LABEL_22;
  }

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v10 = sub_1922258B0();
  __swift_project_value_buffer(v10, qword_1EAE00810);
  v5 = a1;
  v11 = sub_192225890();
  v12 = sub_192227F90();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = [v5 error];
    if (v15)
    {
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *(v13 + 4) = v15;
    *v14 = v16;
    _os_log_impl(&dword_192028000, v11, v12, "Unable to decode state for control=(missing identity): %{public}@", v13, 0xCu);
    sub_1920FB918(v14);
    MEMORY[0x193B0C7F0](v14, -1, -1);
    MEMORY[0x193B0C7F0](v13, -1, -1);
    goto LABEL_18;
  }

LABEL_22:
  type metadata accessor for ModifyControlStateRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t static ControlsConfigurationXPCContainer.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF2971 = a1;
  return result;
}

id sub_19220CFC0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[*a3] = a1;
  *&v9[*a4] = a2;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_19220D058(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  *&v5[*a3] = a1;
  *&v5[*a4] = a2;
  v7.receiver = v5;
  v7.super_class = a5();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_19220D0A0(void *a1)
{
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v2 = sub_192227B60();
  v3 = sub_192227930();
  [a1 encodeObject:v2 forKey:v3];

  sub_192162048(&unk_1EADF2998, MEMORY[0x1E69E81B8]);
  v4 = sub_192227830();
  v5 = sub_192227930();
  [a1 encodeObject:v4 forKey:v5];
}

id ControlsConfigurationXPCContainer.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v5 = sub_192228170();
  if (v5)
  {
    v6 = v5;
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v7 = sub_192228160();
    if (v7)
    {
      v13 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29A8, &qword_192245F08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
      if (swift_dynamicCast())
      {
        v8 = v12;
        *&v4[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls] = v6;
        *&v4[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens] = v8;
        v11.receiver = v4;
        v11.super_class = v2;
        v9 = objc_msgSendSuper2(&v11, sel_init);

        return v9;
      }
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id ControlsConfigurationXPCContainer.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v4 = sub_192228170();
  if (v4)
  {
    v5 = v4;
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v6 = sub_192228160();
    if (v6)
    {
      v12 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29A8, &qword_192245F08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
      if (swift_dynamicCast())
      {
        v7 = v11;
        *&v2[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls] = v5;
        *&v2[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens] = v7;
        v10.receiver = v2;
        v10.super_class = type metadata accessor for ControlsConfigurationXPCContainer();
        v8 = objc_msgSendSuper2(&v10, sel_init);

        return v8;
      }
    }
  }

  else
  {
  }

  type metadata accessor for ControlsConfigurationXPCContainer();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19220D5BC()
{
  if (*v0)
  {
    return 0x736E656B6F74;
  }

  else
  {
    return 0x736C6F72746E6F63;
  }
}

void sub_19220D5F4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6F72746E6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19220D6CC(uint64_t a1)
{
  v2 = sub_19220EC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19220D708(uint64_t a1)
{
  v2 = sub_19220EC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19220D7A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B8, &qword_192245F18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220EC94();
  sub_192228B90();
  v11 = *(v3 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29C8, &qword_192245F20);
  sub_19220ED90(&unk_1EADF29D0, &qword_1EADEDFD8, MEMORY[0x1E6994190], MEMORY[0x1E69E6300]);
  sub_1922288C0();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
    sub_19220ECE8();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

char *ControlsConfigurationXPCContainer.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29F0, &qword_192245F28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220EC94();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ControlsConfigurationXPCContainer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29C8, &qword_192245F20);
    v13 = 0;
    sub_19220ED90(&unk_1EADF29F8, &qword_1EADED380, MEMORY[0x1E6994198], MEMORY[0x1E69E6330]);
    sub_1922287C0();
    *(v1 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
    v13 = 1;
    sub_19220EE18();
    sub_1922287C0();
    *(v1 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens) = v14;
    v10 = type metadata accessor for ControlsConfigurationXPCContainer();
    v12.receiver = v1;
    v12.super_class = v10;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

char *sub_19220DCA4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(type metadata accessor for ControlsConfigurationXPCContainer());
  result = ControlsConfigurationXPCContainer.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id ControlTemplateRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
  *a1 = v2;
  return v2;
}

uint64_t ControlTemplateRequest.hostDeviceID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID);

  return v1;
}

id ControlTemplateRequest.__allocating_init(fileHandle:control:environment:hostDeviceID:isPreview:)(void *a1, void *a2, void **a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v32 = v7;
  v12 = objc_allocWithZone(v7);
  v13 = *a3;
  *&v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control] = a2;
  *&v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle] = a1;
  v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview] = a6;
  KeyPath = swift_getKeyPath();
  v34 = a2;
  v33 = a1;
  v15 = v13;
  v16 = v15;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v17 = type metadata accessor for WidgetEnvironment.Storage();
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v18[v19] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v20 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v21 = *&v15[v20];
    swift_beginAccess();
    *&v18[v19] = v21;

    v39.receiver = v18;
    v39.super_class = v17;
    v16 = objc_msgSendSuper2(&v39, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v22 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v23 = type metadata accessor for WidgetEnvironment.Storage();
    v24 = objc_allocWithZone(v23);
    v25 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v24[v25] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v26 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v27 = *&v16[v26];
    swift_beginAccess();
    *&v24[v25] = v27;

    v38.receiver = v24;
    v38.super_class = v23;
    v28 = objc_msgSendSuper2(&v38, sel_init);

    v16 = v28;
  }

  sub_19204C8C0(0, v22);

  *&v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment] = v16;
  v29 = &v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
  *v29 = a4;
  v29[1] = a5;
  v37.receiver = v12;
  v37.super_class = v32;
  v30 = objc_msgSendSuper2(&v37, sel_init);

  return v30;
}

id ControlTemplateRequest.init(fileHandle:control:environment:hostDeviceID:isPreview:)(void *a1, void *a2, void **a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v10 = *a3;
  *&v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control] = a2;
  *&v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle] = a1;
  v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview] = a6;
  KeyPath = swift_getKeyPath();
  v30 = a2;
  v29 = a1;
  v12 = v10;
  v13 = v12;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v14 = type metadata accessor for WidgetEnvironment.Storage();
    v15 = objc_allocWithZone(v14);
    v16 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v15[v16] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v17 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v18 = *&v12[v17];
    swift_beginAccess();
    *&v15[v16] = v18;

    v35.receiver = v15;
    v35.super_class = v14;
    v13 = objc_msgSendSuper2(&v35, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v19 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v20 = type metadata accessor for WidgetEnvironment.Storage();
    v21 = objc_allocWithZone(v20);
    v22 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v21[v22] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v23 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v24 = *&v13[v23];
    swift_beginAccess();
    *&v21[v22] = v24;

    v34.receiver = v21;
    v34.super_class = v20;
    v25 = objc_msgSendSuper2(&v34, sel_init);

    v13 = v25;
  }

  sub_19204C8C0(0, v19);

  *&v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment] = v13;
  v26 = &v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
  *v26 = a4;
  v26[1] = a5;
  v33.receiver = v7;
  v33.super_class = type metadata accessor for ControlTemplateRequest();
  v27 = objc_msgSendSuper2(&v33, sel_init);

  return v27;
}

uint64_t static ControlTemplateRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF2972 = a1;
  return result;
}

void sub_19220E3E4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle);
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview);
  v8 = sub_192227930();
  [a1 encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
  v10 = sub_192227930();
  [a1 encodeObject:v9 forKey:v10];

  if (*(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID + 8))
  {
    v11 = sub_192227930();
    v12 = sub_192227930();
    [a1 encodeObject:v11 forKey:v12];
  }
}

id ControlTemplateRequest.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v4 = sub_192228140();
  if (!v4)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_1922258B0();
    __swift_project_value_buffer(v15, qword_1EAE00810);
    v16 = sub_192225890();
    v17 = sub_192227F90();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      MEMORY[0x193B0C7F0](v18, -1, -1);
    }

    goto LABEL_22;
  }

  v5 = OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control;
  *&v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control] = v4;
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v6 = sub_192228140();
  if (!v6)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v19 = sub_1922258B0();
    __swift_project_value_buffer(v19, qword_1EAE00810);
    v20 = sub_192225890();
    v21 = sub_192227F90();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      MEMORY[0x193B0C7F0](v22, -1, -1);
    }

    goto LABEL_21;
  }

  v7 = OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle;
  *&v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle] = v6;
  type metadata accessor for WidgetEnvironment.Storage();
  v8 = sub_192228140();
  if (!v8)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_1922258B0();
    __swift_project_value_buffer(v23, qword_1EAE00810);
    v24 = sub_192225890();
    v25 = sub_192227F90();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_192028000, v24, v25, "Unable to decode 'environment", v26, 2u);
      MEMORY[0x193B0C7F0](v26, -1, -1);
    }

    a1 = *&v2[v7];
LABEL_21:

    a1 = *&v2[v5];
LABEL_22:

    type metadata accessor for ControlTemplateRequest();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment] = v8;
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v9 = sub_192228140();
  if (v9)
  {
    v10 = v9;
    v11 = sub_192227960();
    v13 = v12;

    v14 = &v2[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
    *v14 = v11;
    v14[1] = v13;
  }

  else
  {
    v28 = &v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
    *v28 = 0;
    v28[1] = 0;
  }

  v29 = sub_192227930();
  v30 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview] = v30;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for ControlTemplateRequest();
  v31 = objc_msgSendSuper2(&v32, sel_init);

  return v31;
}

id ControlTemplateRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_19220EB84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19220EC2C(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_1922254F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19220EC94()
{
  result = qword_1EADF29C0;
  if (!qword_1EADF29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF29C0);
  }

  return result;
}

unint64_t sub_19220ECE8()
{
  result = qword_1EADF29E0;
  if (!qword_1EADF29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF29B0, &qword_192245F10);
    sub_192162048(&qword_1EADEDFD8, MEMORY[0x1E6994190]);
    sub_1920593E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF29E0);
  }

  return result;
}

uint64_t sub_19220ED90(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF29C8, &qword_192245F20);
    sub_192162048(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19220EE18()
{
  result = qword_1EADF2A08;
  if (!qword_1EADF2A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF29B0, &qword_192245F10);
    sub_192162048(&qword_1EADED380, MEMORY[0x1E6994198]);
    sub_192047340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A08);
  }

  return result;
}

unint64_t sub_19220F0C4()
{
  result = qword_1EADF2A48;
  if (!qword_1EADF2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A48);
  }

  return result;
}

unint64_t sub_19220F11C()
{
  result = qword_1EADF2A50;
  if (!qword_1EADF2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A50);
  }

  return result;
}

unint64_t sub_19220F174()
{
  result = qword_1EADF2A58;
  if (!qword_1EADF2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A58);
  }

  return result;
}

uint64_t sub_19220F1D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  if (a1 > 2u)
  {
    v3 = 0x8000000192248630;
    v4 = 0x8000000192248650;
    if (a1 == 4)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0x6465646E61707865;
    }

    if (a1 != 4)
    {
      v4 = 0xEF7363697274654DLL;
    }

    v5 = a1 == 3;
    if (a1 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    v3 = 0x80000001922485D0;
    v4 = 0x80000001922485F0;
    if (a1 != 1)
    {
      v4 = 0x8000000192248610;
    }

    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000014;
    }
  }

  if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x8000000192248630;
      v2 = 0xD000000000000016;
    }

    else if (a2 == 4)
    {
      v10 = 0x8000000192248650;
    }

    else
    {
      v2 = 0x6465646E61707865;
      v10 = 0xEF7363697274654DLL;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = "obstructionSizeHeight";
    }

    else
    {
      v9 = "compactLeadingMetrics";
    }

    v10 = (v9 - 32) | 0x8000000000000000;
  }

  else
  {
    v10 = 0x80000001922485D0;
    v2 = 0xD000000000000014;
  }

  if (v6 == v2 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_19220F374(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000746E65;
  v5 = 0x646E6148656C6966;
  if (a1 == 2)
  {
    v5 = 0x6D6E6F7269766E65;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v6 = 1684957547;
  }

  else
  {
    v3 = 0x8000000192248840;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEB00000000746E65;
    v9 = 0xEA0000000000656CLL;
    if (a2 == 2)
    {
      v12 = 0x6D6E6F7269766E65;
    }

    else
    {
      v12 = 0x646E6148656C6966;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 0x8000000192248840;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 1684957547;
    }

    else
    {
      v12 = 0xD000000000000011;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1922289A0();
  }

  return v14 & 1;
}

uint64_t sub_19220F4C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x5474736575716572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 7235949;
    }

    else
    {
      v5 = 7889261;
    }

    v6 = 0xE300000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465786966;
    }

    else
    {
      v5 = 0x5474736575716572;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  v7 = 7235949;
  if (a2 != 2)
  {
    v7 = 7889261;
  }

  if (a2)
  {
    v3 = 0x6465786966;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1922289A0();
  }

  return v10 & 1;
}

id PlaceholderRequest.__allocating_init(extensionIdentity:kind:environment:fileHandle:)(void *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = a1;
  v12 = *a4;
  v13 = &v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
  *v13 = a2;
  *(v13 + 1) = a3;
  KeyPath = swift_getKeyPath();
  v34 = a1;
  v15 = v12;
  v16 = &property descriptor for StorageBackedControlArchive.state;
  v17 = v15;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v18 = type metadata accessor for WidgetEnvironment.Storage();
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v19[v20] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v21 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v22 = *&v15[v21];
    swift_beginAccess();
    *&v19[v20] = v22;
    v16 = &property descriptor for StorageBackedControlArchive.state;

    v38.receiver = v19;
    v38.super_class = v18;
    v17 = objc_msgSendSuper2(&v38, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v23 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v24 = type metadata accessor for WidgetEnvironment.Storage();
    v25 = objc_allocWithZone(v24);
    v33 = v6;
    v26 = v16;
    v27 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v25[v27] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v28 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v29 = *&v17[v28];
    swift_beginAccess();
    *&v25[v27] = v29;
    v16 = v26;
    v6 = v33;

    v37.receiver = v25;
    v37.super_class = v24;
    v30 = objc_msgSendSuper2(&v37, v16 + 2936);

    v17 = v30;
  }

  sub_19204C8C0(0, v23);

  *&v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v17;
  *&v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = a5;
  v36.receiver = v11;
  v36.super_class = v6;
  v31 = objc_msgSendSuper2(&v36, *(v16 + 347));

  return v31;
}

uint64_t PlaceholderRequest.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind);

  return v1;
}

id PlaceholderRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment);
  *a1 = v2;
  return v2;
}

uint64_t sub_19220F8CC()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_19220F998(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_19220FA50()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_19220FB18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192210A70(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19220FB48(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684957547;
  v4 = 0xEB00000000746E65;
  v5 = 0x6D6E6F7269766E65;
  if (*v1 != 2)
  {
    v5 = 0x646E6148656C6966;
    v4 = 0xEA0000000000656CLL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000192248840;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_19220FBD0()
{
  v1 = 1684957547;
  v2 = 0x6D6E6F7269766E65;
  if (*v0 != 2)
  {
    v2 = 0x646E6148656C6966;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_19220FC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192210A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19220FC7C(uint64_t a1)
{
  v2 = sub_192211354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19220FCB8(uint64_t a1)
{
  v2 = sub_192211354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PlaceholderRequest.init(extensionIdentity:kind:environment:fileHandle:)(void *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = a1;
  v8 = *a4;
  v9 = &v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
  *v9 = a2;
  *(v9 + 1) = a3;
  KeyPath = swift_getKeyPath();
  v27 = a1;
  v11 = v8;
  v12 = v11;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v13 = type metadata accessor for WidgetEnvironment.Storage();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v14[v15] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v16 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v17 = *&v11[v16];
    swift_beginAccess();
    *&v14[v15] = v17;

    v31.receiver = v14;
    v31.super_class = v13;
    v12 = objc_msgSendSuper2(&v31, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v18 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v19 = type metadata accessor for WidgetEnvironment.Storage();
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v20[v21] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v22 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v23 = *&v12[v22];
    swift_beginAccess();
    *&v20[v21] = v23;

    v30.receiver = v20;
    v30.super_class = v19;
    v24 = objc_msgSendSuper2(&v30, sel_init);

    v12 = v24;
  }

  sub_19204C8C0(0, v18);

  *&v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v12;
  *&v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = a5;
  v29.receiver = v6;
  v29.super_class = type metadata accessor for PlaceholderRequest();
  v25 = objc_msgSendSuper2(&v29, sel_init);

  return v25;
}

void sub_19220FF4C(void *a1)
{
  v3 = v1;
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2A80, &unk_1922461E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192211354();
  sub_192228B90();
  v21[0] = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity);
  HIBYTE(v20) = 0;
  sub_192228100();
  sub_1922115B8(&qword_1ED74A500, MEMORY[0x1E69941C8]);
  sub_1922288C0();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    LOBYTE(v21[0]) = 1;
    sub_192228860();
    v21[0] = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment);
    v9 = v21[0];
    HIBYTE(v20) = 2;
    sub_1920E2830();
    v10 = v9;
    sub_1922288C0();

    v11 = objc_opt_self();
    v12 = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle);
    v21[0] = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v21];
    v14 = v21[0];
    if (v13)
    {
      v15 = sub_192225080();
      v17 = v16;
    }

    else
    {
      v18 = v14;
      v19 = sub_192224F90();

      swift_willThrow();
      v15 = 0;
      v17 = 0xF000000000000000;
    }

    v21[0] = v15;
    v21[1] = v17;
    HIBYTE(v20) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0400, &qword_192233B98);
    sub_192117B88();
    sub_1922288C0();
    (*(v6 + 8))(v8, v5);
    sub_192046ED4(v15, v17);
  }
}

id PlaceholderRequest.init(coder:)(void *a1)
{
  sub_192228100();
  v2 = sub_192228140();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v7 = 0;
  v8 = 0;
  v3 = sub_192228140();
  sub_192227950();

  type metadata accessor for WidgetEnvironment.Storage();
  v4 = sub_192228140();
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v5 = sub_192228140();
  if (v2)
  {
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1922106F8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_192227930();
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment);
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle);
  v10 = sub_192227930();
  [a1 encodeObject:v9 forKey:v10];
}

id PlaceholderRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceholderRequest.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaceholderRequest();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

_OWORD *sub_1922109FC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_192210ABC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_192210A70(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

_OWORD *sub_192210ABC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AA8, &qword_1922463C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - v5;
  v7 = a1[3];
  v74 = a1;
  v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = sub_192211354();
  sub_192228B70();
  if (v1)
  {
    goto LABEL_3;
  }

  v10 = v4;
  sub_192228100();
  v71 = 0;
  sub_1922115B8(&qword_1ED748700, MEMORY[0x1E69941D0]);
  sub_1922287C0();
  v11 = v72;
  v71 = 2;
  sub_192044634();
  sub_1922287C0();
  v12 = v6;
  v13 = v72;
  LOBYTE(v72) = 1;
  v14 = sub_192228760();
  v16 = v15;
  v67 = v14;
  v71 = 3;
  sub_192047340();
  sub_1922287C0();
  v63 = v12;
  v66 = v13;
  v18 = v72;
  v19 = v73;
  v62 = sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v65 = v18;
  v64 = v19;
  v20 = sub_192228010();
  v26 = v66;
  if (!v20)
  {

    v51 = sub_1922284A0();
    v52 = swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
    *v54 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_19222B480;
    *(v55 + 56) = &type metadata for PlaceholderRequest.CodingKeys;
    *(v55 + 64) = v9;
    *(v55 + 32) = 3;
    sub_192228480();
    v56 = *(*(v51 - 8) + 104);
    LODWORD(v67) = *MEMORY[0x1E69E6B08];
    v56(v54);
    v62 = v52;
    swift_willThrow();
    v21 = sub_1922284A0();
    swift_allocError();
    v23 = v22;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
    *v23 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_19222B480;
    *(v8 + 56) = &type metadata for PlaceholderRequest.CodingKeys;
    *(v8 + 64) = v9;
    *(v8 + 32) = 3;
    v24 = v62;
    v25 = v62;
    sub_192228480();
    (*(*(v21 - 8) + 104))(v23, v67, v21);
    swift_willThrow();
    sub_192039140(v65, v64);

    (*(v10 + 8))(v63, v3);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v74);
    return v8;
  }

  v27 = v20;
  v61 = type metadata accessor for PlaceholderRequest();
  v28 = objc_allocWithZone(v61);
  *&v28[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = v11;
  v62 = v28;
  v29 = &v28[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
  *v29 = v67;
  *(v29 + 1) = v16;
  KeyPath = swift_getKeyPath();
  v30 = v26;
  v67 = v27;
  v66 = v11;
  v31 = &unk_1EADEF000;
  v32 = &property descriptor for StorageBackedControlArchive.state;
  v33 = v30;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v59 = type metadata accessor for WidgetEnvironment.Storage();
    v34 = objc_allocWithZone(v59);
    v35 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v34[v35] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v36 = v3;
    v37 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v38 = *(v30 + v37);
    v3 = v36;
    swift_beginAccess();
    *&v34[v35] = v38;
    v31 = &unk_1EADEF000;
    v32 = &property descriptor for StorageBackedControlArchive.state;

    v70.receiver = v34;
    v70.super_class = v59;
    v33 = objc_msgSendSuper2(&v70, sel_init);
  }

  v59 = v30;
  sub_19204C8C0(0, KeyPath);

  v39 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v57 = type metadata accessor for WidgetEnvironment.Storage();
    v40 = objc_allocWithZone(v57);
    v58 = v39;
    v41 = v40;
    v42 = v32;
    v43 = v31[72];
    *&v40[v43] = sub_192043788(MEMORY[0x1E69E7CC0]);
    KeyPath = v3;
    v44 = v31[72];
    swift_beginAccess();
    v45 = *(v33 + v44);
    v3 = KeyPath;
    swift_beginAccess();
    *&v41[v43] = v45;
    v32 = v42;

    v69.receiver = v41;
    v69.super_class = v57;
    v46 = objc_msgSendSuper2(&v69, v42 + 2936);

    v33 = v46;
    v39 = v58;
  }

  v47 = v63;
  sub_19204C8C0(0, v39);
  v48 = v59;

  v49 = v62;
  *&v62[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v33;
  v50 = v67;
  *&v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = v67;
  v68.receiver = v49;
  v68.super_class = v61;
  v8 = objc_msgSendSuper2(&v68, v32[347]);
  sub_192039140(v65, v64);

  (*(v10 + 8))(v47, v3);
  __swift_destroy_boxed_opaque_existential_1(v74);
  return v8;
}

unint64_t sub_192211354()
{
  result = qword_1EADF2A88;
  if (!qword_1EADF2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A88);
  }

  return result;
}

unint64_t sub_1922114B4()
{
  result = qword_1EADF2A90;
  if (!qword_1EADF2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A90);
  }

  return result;
}

unint64_t sub_19221150C()
{
  result = qword_1EADF2A98;
  if (!qword_1EADF2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A98);
  }

  return result;
}

unint64_t sub_192211564()
{
  result = qword_1EADF2AA0;
  if (!qword_1EADF2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2AA0);
  }

  return result;
}

uint64_t sub_1922115B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_192228100();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_192211604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920B3B44;

  return AppIntentTimelineProvider.snapshot(for:in:)(a1, a2, a3, a4, a5);
}

uint64_t AppIntentTimelineProvider.snapshot(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1922116F4, 0, 0);
}

uint64_t sub_1922116F4()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_192211824;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v7, 0, 0, 0xD000000000000011, 0x800000019224ED50, sub_1922128DC, v2, AssociatedTypeWitness);
}

uint64_t sub_192211824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_192211934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920B3B44;

  return AppIntentTimelineProvider.timeline(for:in:)(a1, a2, a3, a4, a5);
}

uint64_t AppIntentTimelineProvider.timeline(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192211A24, 0, 0);
}

uint64_t sub_192211A24()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  *v5 = v0;
  v5[1] = sub_192213000;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v10, 0, 0, 0xD000000000000011, 0x800000019224ED70, sub_1922128F4, v2, v9);
}

uint64_t sub_192211D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t AppIntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_192211DD4, 0, 0);
}

uint64_t sub_192211DD4()
{
  v1 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  sub_19203BEB4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_192211E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t AppIntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v8 = (*(a3 + 88) + **(a3 + 88));
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_192212028;

  return v8(v3 + 2, a2, a3);
}

uint64_t sub_192212028()
{

  return MEMORY[0x1EEE6DFA0](sub_192212124, 0, 0);
}

uint64_t sub_192212124()
{
  v5 = v0;
  v1 = v0[3];
  v4 = v0[2];
  swift_getAssociatedTypeWitness();
  sub_19208805C(&v4, v1);
  v2 = v0[1];

  return v2();
}

double sub_1922121AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a2;
  swift_getAssociatedTypeWitness();
  v11 = sub_192227CA0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a6 + 72))(a3, a4, sub_192212F48, v17, a5, a6);

  return result;
}

uint64_t sub_192212360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v10 - v7, a1, AssociatedTypeWitness, v6);
  sub_192227CA0();
  return sub_192227C90();
}

double sub_192212460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Timeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v14 = sub_192227CA0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  (*(v15 + 16))(v22 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  (*(v15 + 32))(v20 + v19, v18, v14);
  (*(a6 + 80))(a3, a4, sub_192212E54, v20, a5, a6);

  return result;
}

uint64_t sub_192212648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - v10, a1, v8, v9);
  sub_192227CA0();
  return sub_192227C90();
}

uint64_t _s9WidgetKit25AppIntentTimelineProviderPAAE15recommendationsSayAA0cD14RecommendationVy0D0QzGGyF_0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = sub_192225890();
  v4 = sub_192227F80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_192028000, v3, v4, "Default implementation for recommendations.", v5, 2u);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AppIntentRecommendation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);

  return sub_192227BD0();
}

uint64_t dispatch thunk of AppIntentTimelineProvider.snapshot(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentTimelineProvider.timeline(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return v9(a1, a2, a3);
}

uint64_t sub_192212E54(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Timeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v8 = *(sub_192227CA0() - 8);
  v9 = v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_192212648(a1, v9, v3, v4);
}

uint64_t sub_192212F48(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(sub_192227CA0() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_192212360(a1, v6, v3, v4);
}

uint64_t sub_192213004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1920791AC();

  return sub_192226630();
}

double sub_192213094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = sub_192227A50();
  sub_19207A2A8(v12, v13, a2, a4, a6);

  return result;
}

double WidgetConfiguration.onBackgroundURLSessionEvents(matching:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  sub_1920797E8(sub_1922142A0, v12, a5, a6);

  return result;
}

{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  sub_19202D088(a1, a2);

  sub_1920797E8(sub_1922142AC, v12, a5, a6);

  return result;
}

uint64_t sub_192213268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(type metadata accessor for WidgetDescriptor(0) + 84);
  v12 = *(a1 + v11);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1920C39C8(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    result = sub_1920C39C8((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v15 + 1;
  v16 = (v12 + 32 * v15);
  v16[4] = sub_1922144C0;
  v16[5] = v10;
  v16[6] = a4;
  v16[7] = a5;
  *(a1 + v11) = v12;
  return result;
}

double WidgetConfiguration.pushHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1920797E8(nullsub_1, 0, a3, a4);
}

{
  KeyPath = swift_getKeyPath();
  v10[0] = a1;
  v10[1] = a2;
  sub_1920793F8(KeyPath, v10, a3, a4);

  return result;
}

uint64_t sub_1922133AC(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_192038FB8(a1, v4);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_192214464(v4);
  }

  v5 = v4[3];
  v44[2] = v4[2];
  v45 = v5;
  v46[0] = v4[4];
  *(v46 + 9) = *(v4 + 73);
  v6 = v4[1];
  v44[0] = *v4;
  v44[1] = v6;
  sub_1920B2B7C(&v45, &v31);
  if (BYTE8(v33) == 1)
  {
    sub_1920B2BD8(&v31);
  }

  else
  {
    sub_19209CBAC(&v31, v43);
    sub_192033A64(v43, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
    if (swift_dynamicCast())
    {
      v26[6] = v37;
      v26[7] = v38;
      v26[2] = v33;
      v26[3] = v34;
      v26[4] = v35;
      v26[5] = v36;
      v26[0] = v31;
      v26[1] = v32;
      v23 = v37;
      v24 = v38;
      v19 = v33;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v27 = v39;
      *&v25[0] = v39;
      v17 = v31;
      v18 = v32;
      BYTE8(v25[0]) = 1;
      *(v25 + 9) = v40;
      *(&v25[1] + 9) = *v41;
      *(&v25[2] + 1) = *&v41[15];
      v15[3] = &type metadata for ControlPickerTemplateProvider;
      v15[4] = &off_1F06AFD68;
      v8 = swift_allocObject();
      v15[0] = v8;
      v9 = v25[1];
      v8[9] = v25[0];
      v8[10] = v9;
      v8[11] = v25[2];
      v10 = v22;
      v8[5] = v21;
      v8[6] = v10;
      v11 = v24;
      v8[7] = v23;
      v8[8] = v11;
      v12 = v18;
      v8[1] = v17;
      v8[2] = v12;
      v13 = v20;
      v8[3] = v19;
      v8[4] = v13;
      v28 = 1;
      v29 = v40;
      *v30 = *v41;
      *&v30[15] = *&v41[15];
      sub_1920800B4(&v17, v14);
      sub_192080104(v26);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v16 = 0;
      sub_192147370(v15, &v45);
      sub_192214464(a1);
      sub_192081C60(v44, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v43);
    }
  }

  return sub_1920390EC(v44);
}

uint64_t sub_19221371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = sub_192214428;
  }

  else
  {
    v11 = sub_19203B3C0;
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = *(type metadata accessor for WidgetDescriptor(0) + 84);
  v14 = *(a1 + v13);
  sub_19202D088(a2, a3);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1920C39C8(0, *(v14 + 16) + 1, 1, v14);
    v14 = result;
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    result = sub_1920C39C8((v16 > 1), v17 + 1, 1, v14);
    v14 = result;
  }

  *(v14 + 16) = v17 + 1;
  v18 = (v14 + 32 * v17);
  v18[4] = sub_1922143E8;
  v18[5] = v12;
  v18[6] = a4;
  v18[7] = a5;
  *(a1 + v13) = v14;
  return result;
}

double WidgetConfiguration.promptsForUserConfiguration()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 1;
  sub_1920793F8(KeyPath, &v6, a1, a2);

  return result;
}

double WidgetConfiguration.enabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = 1;
  if ((a1 & 1) == 0)
  {
    v7 = 2;
  }

  v9 = v7;
  sub_1920793F8(KeyPath, &v9, a2, a3);

  return result;
}

double WidgetConfiguration.associatedKind(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1;
  v10[1] = a2;
  sub_1920793F8(KeyPath, v10, a3, a4);

  return result;
}

void WidgetConfiguration.internalSupportedFamilies(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = a2;
    v6 = a3;
    v14 = MEMORY[0x1E69E7CC0];
    sub_19207A250(0, v3, 0);
    v4 = v14;
    v7 = (a1 + 32);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 > 0xCuLL)
      {
        break;
      }

      v10 = qword_1922468D0[v8];
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19207A250((v11 > 1), v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      *(v14 + 8 * v12 + 32) = v10;
      if (!--v3)
      {
        a3 = v6;
        a2 = v13;
        goto LABEL_8;
      }
    }

    sub_192228990();
    __break(1u);
  }

  else
  {
LABEL_8:
    WidgetConfiguration.privateSupportedFamilies(_:)(v4, a2, a3);
  }
}

uint64_t sub_192213B94(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 72)) = 1;
  return result;
}

double WidgetConfiguration.isTransparent(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1920797E8(sub_1922142B8, v6, a2, a3);

  return result;
}

double WidgetConfiguration.internalWidget()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 1;
  sub_1920793F8(KeyPath, &v6, a1, a2);

  return result;
}

double WidgetConfiguration.visibilityConfigurableByInternalSettings(visibleByDefault:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = 2;
  if ((a1 & 1) == 0)
  {
    v7 = 3;
  }

  v9 = v7;
  sub_1920793F8(KeyPath, &v9, a2, a3);

  return result;
}

uint64_t WidgetLocation.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

double WidgetConfiguration.disfavoredLocations(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;

  sub_1920797E8(sub_192214308, v8, a3, a4);

  return result;
}

unint64_t sub_192213EF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v6 = result;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = 0;
  v9 = 0;
  v10 = *(v7 + 36);
  v11 = a2 + 32;
  while (1)
  {
    v12 = *(v11 + v9);
    sub_19203831C(v8, 0);
    v13 = qword_192246938[v12];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v6 + v10);
    v15 = v30;
    result = sub_1920B733C(v13);
    v17 = v15[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      sub_19213D898(v20, isUniquelyReferenced_nonNull_native);
      v15 = v30;
      result = sub_1920B733C(v13);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

LABEL_9:
      *(v6 + v10) = v15;
      if (v21)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v28 = result;
    sub_1921400B4();
    result = v28;
    v15 = v30;
    *(v6 + v10) = v30;
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_10:
    v15[(result >> 6) + 8] |= 1 << result;
    *(v15[6] + 8 * result) = v13;
    *(v15[7] + 8 * result) = MEMORY[0x1E69E7CD0];
    v23 = v15[2];
    v19 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v19)
    {
      goto LABEL_20;
    }

    v15[2] = v24;
LABEL_12:
    v25 = *(a3 + 16);
    if (v25)
    {
      v26 = (a3 + 32);
      do
      {
        v27 = *v26++;
        result = sub_1921C2028(&v29, v27);
        --v25;
      }

      while (v25);
    }

    ++v9;
    v8 = sub_1922140C8;
    if (v9 == v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  type metadata accessor for CHSWidgetFamily(0);
  result = sub_192228A40();
  __break(1u);
  return result;
}

double WidgetConfiguration.supportedMountingStyles(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;

  sub_1920797E8(sub_192214310, v6, a2, a3);

  return result;
}

uint64_t sub_1922141F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    type metadata accessor for WidgetDescriptor(0);
    v4 = (a2 + 32);
    do
    {
      if (*v4++)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      result = sub_1921C2044(&v8, v6);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1922142B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 60)) = v4;
  *(a1 + *(result + 68)) = v3;
  return result;
}

unint64_t sub_19221431C()
{
  result = qword_1ED74AFE8;
  if (!qword_1ED74AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AFE8);
  }

  return result;
}

unint64_t sub_192214394()
{
  result = qword_1EADF2AB0;
  if (!qword_1EADF2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2AB0);
  }

  return result;
}

uint64_t sub_1922143E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t sub_192214428@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_192214464(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1922144C0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    return 1;
  }

  else
  {
    return sub_1922289A0();
  }
}

unint64_t sub_1922144F4()
{
  result = qword_1ED749950;
  if (!qword_1ED749950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749950);
  }

  return result;
}

unint64_t sub_19221454C()
{
  result = qword_1ED749938;
  if (!qword_1ED749938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749938);
  }

  return result;
}

unint64_t sub_1922145A4()
{
  result = qword_1ED749958;
  if (!qword_1ED749958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749958);
  }

  return result;
}

uint64_t sub_1922145F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5079616C70736964;
  }

  else
  {
    v3 = 1111970419;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000033;
  }

  if (*a2)
  {
    v5 = 0x5079616C70736964;
  }

  else
  {
    v5 = 1111970419;
  }

  if (*a2)
  {
    v6 = 0xE900000000000033;
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
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19221469C()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_19221471C(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_192214788()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

void sub_192214804(char *a2@<X8>)
{
  v3 = sub_192228700();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_192214864(uint64_t *a1@<X8>)
{
  v2 = 1111970419;
  if (*v1)
  {
    v2 = 0x5079616C70736964;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000033;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_192214950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5079616C70736964;
  }

  else
  {
    v3 = 1111970419;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000033;
  }

  if (*a2)
  {
    v5 = 0x5079616C70736964;
  }

  else
  {
    v5 = 1111970419;
  }

  if (*a2)
  {
    v6 = 0xE900000000000033;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1922149F4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x5079616C70736964;
  }

  else
  {
    v3 = 1111970419;
  }

  if (*a2)
  {
    v4 = 0xE900000000000033;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v5 = 0x5079616C70736964;
  }

  else
  {
    v5 = 1111970419;
  }

  if (v2)
  {
    v6 = 0xE900000000000033;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_192214AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5079616C70736964;
  }

  else
  {
    v3 = 1111970419;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000033;
  }

  if (*a2)
  {
    v5 = 0x5079616C70736964;
  }

  else
  {
    v5 = 1111970419;
  }

  if (*a2)
  {
    v6 = 0xE900000000000033;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_192214B64(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x5079616C70736964;
  }

  else
  {
    v3 = 1111970419;
  }

  if (*a2)
  {
    v4 = 0xE900000000000033;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v5 = 0x5079616C70736964;
  }

  else
  {
    v5 = 1111970419;
  }

  if (v2)
  {
    v6 = 0xE900000000000033;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_192214C08@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_192225A40();
  v5 = MEMORY[0x1E697DE28];
  if (!v3)
  {
    v5 = MEMORY[0x1E697DE20];
  }

  return (*(*(v4 - 8) + 104))(a2, *v5, v4);
}

uint64_t sub_192214C90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_192214D68(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_192214CC0()
{
  result = qword_1ED749948;
  if (!qword_1ED749948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749948);
  }

  return result;
}

unint64_t sub_192214D14()
{
  result = qword_1ED749940;
  if (!qword_1ED749940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749940);
  }

  return result;
}

uint64_t sub_192214D68(uint64_t a1)
{
  v2 = sub_192225A40();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2, v4);
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 == *MEMORY[0x1E697DE20] || v8 == *MEMORY[0x1E697DE28])
  {
    return v8 != *MEMORY[0x1E697DE20];
  }

  v18[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (v7)(boxed_opaque_existential_1, a1, v2);
  v11 = sub_1922284C0();
  swift_allocError();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910);
  sub_19202A98C(v18, v13);
  v17[0] = sub_192228430();
  v17[1] = v14;
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v18[5] = 36;
  v15 = sub_192228910();
  MEMORY[0x193B0A990](v15);

  sub_192228480();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
  __swift_destroy_boxed_opaque_existential_1(v18);
  swift_willThrow();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static ControlArchiver.archive<A>(control:environment:hostDeviceID:asyncDataSource:fileHandle:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[4] = *a2;
  v15 = swift_task_alloc();
  v8[6] = v15;
  *v15 = v8;
  v15[1] = sub_1922150DC;

  return static ControlArchiver.archive<A>(control:environment:hostDeviceID:asyncDataSource:)(a1, v8 + 4, a3, a4, a5, a7, a8);
}

uint64_t sub_1922150DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v5 = sub_192215298;
  }

  else
  {
    v5 = sub_1922151F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1922151F4()
{
  *(v0 + 16) = *(v0 + 56);
  sub_1920B2FE8();
  sub_192227F40();
  v1.n128_f64[0] = sub_192039140(*(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1922152B0(void (*a1)(char *, void **), uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v3 = type metadata accessor for ControlTemplateType(0);
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1922261D0();
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v51 - v11;
  v12 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1E69E7CC0];
  sub_19209AE60(0, 0, 0);
  v20 = v65;
  sub_19221954C(v2, v15, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v21 = *v15;
  v22 = *(v13 + 28);
  v23 = *(v60 + 16);
  v59 = *(v17 + 28);
  v60 += 16;
  v62 = v5;
  v58 = v23;
  v23(&v19[v59], v15 + v22, v5);
  v24 = v21;
  v26 = sub_192056208(MEMORY[0x1E69E7CC0], v25);
  v64 = v24;
  v27 = v24;

  sub_192056340(&v64, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  *v19 = v29;
  *(v19 + 1) = v31;
  *(v19 + 2) = v33;
  sub_1922195B4(v15, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v52 = (v60 + 16);
  v57 = (v60 - 8);
  while (1)
  {
    v34 = *(v19 + 1);
    if (v34 >> 62)
    {
      v50 = sub_192228340();
      v36 = v50 - 1;
      if (v50 < 1)
      {
LABEL_21:
        sub_1922195B4(v19, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
        return v20;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v35 - 1;
      if (v35 < 1)
      {
        goto LABEL_21;
      }
    }

    if ((sub_19205F34C(v36, v37) & 1) == 0)
    {

      v38 = MEMORY[0x1E69E7CC0];
      *v19 = MEMORY[0x1E69E7CC0];

      *(v19 + 1) = v38;

      *(v19 + 2) = v38;
    }

    result = v58(v7, &v19[v59], v62);
    if (v34 >> 62)
    {
      result = sub_192228340();
      v40 = result;
      if (!result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v40 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_16;
      }
    }

    if (v40 < 1)
    {
      break;
    }

    for (i = 0; i != v40; ++i)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x193B0B410](i, v34);
      }

      else
      {
        v42 = *(v34 + 8 * i + 32);
      }

      (*(**(v42 + 16) + 112))(v7);
    }

LABEL_16:

    v43 = *v52;
    v44 = v54;
    v45 = v62;
    (*v52)(v54, v7, v62);
    v46 = v53;
    v43(v53, v44, v45);
    v47 = v63;
    v55(v46, &v64);
    if (v47)
    {
      (*v57)(v46, v45);
      sub_1922195B4(v19, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);

      return v20;
    }

    v63 = 0;
    (*v57)(v46, v45);
    v65 = v20;
    v49 = *(v20 + 16);
    v48 = *(v20 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_19209AE60((v48 > 1), v49 + 1, 1);
      v20 = v65;
    }

    *(v20 + 16) = v49 + 1;
    sub_192219614(v61, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, type metadata accessor for ControlTemplateType);
  }

  __break(1u);
  return result;
}

unint64_t sub_192215874(uint64_t a1, unint64_t a2, unsigned __int8 a3, __n128 a4)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v6 = a1;
      v7 = a2;
      sub_192228400();

      v9[0] = 0xD000000000000017;
      v9[1] = 0x800000019224EF00;
      a1 = v6;
      a2 = v7;
    }

    else
    {
      v9[0] = 0;
      v9[1] = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000024, 0x800000019224A0D0);
      v4 = sub_192228910();
      MEMORY[0x193B0A990](v4);

      MEMORY[0x193B0A990](0x746365707865202CLL, 0xEB00000000206465);
      v5 = sub_192228910();
      MEMORY[0x193B0A990](v5);

      a1 = 46;
      a2 = 0xE100000000000000;
    }

    goto LABEL_7;
  }

  if (a3 == 2)
  {
    strcpy(v9, "Bad archive: ");
    HIWORD(v9[1]) = -4864;
LABEL_7:
    MEMORY[0x193B0A990](a1, a2);
    return v9[0];
  }

  return 0xD000000000000019;
}

uint64_t static ControlArchiver.archive<A>(control:environment:hostDeviceID:asyncDataSource:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v7[8] = type metadata accessor for ControlArchiveStorage(0);
  v9 = swift_task_alloc();
  v10 = *a2;
  v7[9] = v9;
  v7[10] = v10;

  return MEMORY[0x1EEE6DFA0](sub_192215AEC, 0, 0);
}

uint64_t sub_192215AEC()
{
  if (WidgetEnvironment.enumeratedCount()() < 1)
  {
    sub_1920B303C();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_192215C1C;
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[2];
    v9 = v0[3];

    return sub_192215ED4(v2, v6, v8, v3, v9, v7, v4, v5);
  }
}

uint64_t sub_192215C1C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_192215E70;
  }

  else
  {
    v2 = sub_192215D30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192215D30()
{
  v1 = v0[12];
  sub_192218FB8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage, &unk_192238D48);
  v3 = sub_192227870();
  v4 = v0[9];
  if (v1)
  {
    sub_1922195B4(v4, type metadata accessor for ControlArchiveStorage);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v2;
    sub_1922195B4(v4, type metadata accessor for ControlArchiveStorage);

    v8 = v0[1];

    return v8(v3, v7);
  }
}

uint64_t sub_192215E70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192215ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  v8[18] = *(type metadata accessor for ControlTemplateType(0) - 8);
  v8[19] = swift_task_alloc();
  v11 = sub_1922261D0();
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v8[26] = swift_task_alloc();
  v8[27] = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v8[28] = swift_task_alloc();
  type metadata accessor for BundleStub(0);
  v8[29] = swift_task_alloc();
  v12 = sub_192225150();
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = type metadata accessor for ControlArchiveStorageMetadata(0);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v15 = (*(a8 + 8) + **(a8 + 8));
  v13 = swift_task_alloc();
  v8[37] = v13;
  *v13 = v8;
  v13[1] = sub_192216204;

  return v15(a7, a8);
}

uint64_t sub_192216204(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1922163E4, 0, 0);
  }
}

uint64_t sub_1922163E4(uint64_t a1)
{
  v102 = v1;
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  v6 = *(v1 + 232);
  v7 = *(v1 + 96);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v92 = *(v5 + 16);
  v92(v2, v3, v4);
  BundleStub.init(_:)([v7 extensionIdentity], v6);
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  v8 = *(v1 + 288);
  v9 = *(v1 + 272);
  v11 = *(v1 + 248);
  v10 = *(v1 + 256);
  v13 = *(v1 + 232);
  v12 = *(v1 + 240);
  v90 = *(v1 + 304);
  v91 = *(v1 + 224);
  v88 = *(v1 + 264);
  v89 = *(v1 + 216);
  v98 = *(v1 + 208);
  v94 = *(v1 + 200);
  v87 = *(v1 + 168);
  v96 = *(v1 + 160);
  v14 = *(v1 + 96);
  v15 = *(v1 + 104);
  swift_beginAccess();
  v16 = qword_1ED74BAA0;
  *(v8 + v9[6]) = v14;
  sub_19221954C(v13, v8, type metadata accessor for BundleStub);
  v92(v8 + v9[8], v10, v12);
  *(v8 + v9[5]) = v16;
  v101 = v15;
  v14;
  v17 = v15;
  WidgetEnvironment.filterForControlArchiving()();
  sub_1922195B4(v13, type metadata accessor for BundleStub);
  v18 = *(v11 + 8);
  v18(v10, v12);
  v18(v88, v12);
  v19 = v9[7];
  *(v8 + v19) = v15;
  *(v8 + v9[9]) = v90;
  v20 = *(v89 + 20);
  v21 = *(v8 + v19);
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v91 = v21;
  *(v1 + 312) = sub_192217738();
  v22 = *v91;
  v23 = *(v94 + 20);
  *(v1 + 396) = v23;
  v24 = *(v87 + 16);
  *(v1 + 320) = v24;
  *(v1 + 328) = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(&v98[v23], v91 + v20, v96);
  v25 = v22;
  v26 = MEMORY[0x1E69E7CC0];
  v28 = sub_192056208(MEMORY[0x1E69E7CC0], v27);
  v101 = v25;
  v29 = v25;

  sub_192056340(&v101, v28);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  *v98 = v31;
  *(v98 + 1) = v33;
  *(v98 + 2) = v35;
  if (v33 >> 62)
  {
    v44 = sub_192228340();
    v37 = v44 - 1;
    if (v44 >= 1)
    {
LABEL_5:
      v38 = *(v1 + 136);
      *(v1 + 336) = *(v38 + 16);
      *(v1 + 344) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0x66C6000000000000;
      *(v1 + 352) = v26;

      if ((sub_19205F34C(v37, v39) & 1) == 0)
      {
        v40 = *(v1 + 208);

        *v40 = v26;

        v40[1] = v26;

        v40[2] = v26;
      }

      (*(v1 + 320))(*(v1 + 184), *(v1 + 208) + *(v1 + 396), *(v1 + 160));
      if (v33 >> 62)
      {
        v41 = sub_192228340();
        if (v41)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
LABEL_9:
          if (v41 >= 1)
          {
            for (i = 0; i != v41; ++i)
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x193B0B410](i, v33);
              }

              else
              {
                v43 = *(v33 + 8 * i + 32);
              }

              (*(**(v43 + 16) + 112))(*(v1 + 184));
            }

            goto LABEL_26;
          }

          __break(1u);
          goto LABEL_33;
        }
      }

LABEL_26:
      v68 = *(v1 + 312);
      v70 = *(v1 + 184);
      v69 = *(v1 + 192);
      v72 = *(v1 + 168);
      v71 = *(v1 + 176);
      v73 = *(v1 + 160);

      v74 = *(v72 + 32);
      v74(v69, v70, v73);
      v74(v71, v69, v73);
      if (v68)
      {

        sub_192227270();
        v93 = v76;
        v95 = v75;
        v97 = v78;
        v99 = v77;

        v79.i64[0] = v95;
        v79.i64[1] = v93;
        v80 = vorrq_s8(vshll_n_s32(__PAIR64__(v97, v99), 0x20uLL), v79);
      }

      else
      {
        v80 = 0uLL;
      }

      v81 = *(v1 + 336);
      v82 = *(v1 + 312) == 0;
      *(v1 + 376) = v80;
      *(v1 + 392) = v82;
      sub_1920B3090();
      sub_1922261F0();
      v100 = (v81 + *v81);
      v83 = swift_task_alloc();
      *(v1 + 360) = v83;
      *v83 = v1;
      v83[1] = sub_192216CD8;
      v84 = *(v1 + 176);
      v85 = *(v1 + 128);
      v86 = *(v1 + 136);

      return v100(v1 + 16, v84, v85, v86);
    }
  }

  else
  {
    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v36 - 1;
    if (v36 >= 1)
    {
      goto LABEL_5;
    }
  }

  sub_1922195B4(*(v1 + 208), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v45 = *(v1 + 96);
  v46 = sub_1922258B0();
  __swift_project_value_buffer(v46, qword_1EAE00810);

  v47 = v45;
  v48 = sub_192225890();
  v49 = sub_192227FB0();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v1 + 96);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v101 = v53;
    *v51 = 138478083;
    *(v51 + 4) = v50;
    *v52 = v50;
    *(v51 + 12) = 2082;
    v54 = v50;
    v55 = sub_192225530();
    v57 = sub_19202B8CC(v55, v56, &v101);

    *(v51 + 14) = v57;
    _os_log_impl(&dword_192028000, v48, v49, "(async) generating control archive for %{private}@ for host %{public}s", v51, 0x16u);
    sub_192033970(v52, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v52, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x193B0C7F0](v53, -1, -1);
    MEMORY[0x193B0C7F0](v51, -1, -1);
  }

  v58 = *(v1 + 120);
  sub_19221954C(*(v1 + 288), *(v1 + 280), type metadata accessor for ControlArchiveStorageMetadata);
  if (v58)
  {
    v59 = sub_1922189A8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v59 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v60 = v59;
  v62 = *(v1 + 280);
  v61 = *(v1 + 288);
  v63 = *(v1 + 224);
  v64 = *(v1 + 80);

  sub_1922195B4(v61, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1922195B4(v63, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192219614(v62, v64, type metadata accessor for ControlArchiveStorageMetadata);
  v65 = type metadata accessor for ControlArchiveStorage(0);
  *(v64 + v65[5]) = MEMORY[0x1E69E7CC0];
  *(v64 + v65[7]) = 2;
  *(v64 + v65[6]) = v60;

  v66 = *(v1 + 8);

  return v66();
}

uint64_t sub_192216CD8()
{
  *(*v1 + 368) = v0;

  if (v0)
  {

    v2 = sub_1922175BC;
  }

  else
  {
    v2 = sub_192216DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192216DF4()
{
  v69 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  ControlTemplateType.init<A>(_:)(v5, v2, v1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 352);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1920C2FF4(0, *(v7 + 16) + 1, 1, *(v0 + 352));
  }

  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1920C2FF4((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 152);
  v12 = *(v0 + 144);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  *(v7 + 16) = v9 + 1;
  sub_192219614(v11, v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, type metadata accessor for ControlTemplateType);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v13 = *(v10 + 8);
  if (v13 >> 62)
  {
    v14 = sub_192228340();
    if (v14 > 0)
    {
LABEL_7:
      *(v0 + 352) = v7;
      v15 = v14 - 1;

      if ((sub_19205F34C(v15, v16) & 1) == 0)
      {
        v17 = *(v0 + 208);

        v18 = MEMORY[0x1E69E7CC0];
        *v17 = MEMORY[0x1E69E7CC0];

        v17[1] = v18;

        v17[2] = v18;
      }

      (*(v0 + 320))(*(v0 + 184), *(v0 + 208) + *(v0 + 396), *(v0 + 160));
      if (v13 >> 62)
      {
        v7 = sub_192228340();
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
LABEL_11:
          if (v7 >= 1)
          {
            for (i = 0; i != v7; ++i)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v20 = MEMORY[0x193B0B410](i, v13);
              }

              else
              {
                v20 = *(v13 + 8 * i + 32);
              }

              (*(**(v20 + 16) + 112))(*(v0 + 184));
            }

            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_35;
        }
      }

LABEL_28:
      v44 = *(v0 + 312);
      v46 = *(v0 + 184);
      v45 = *(v0 + 192);
      v48 = *(v0 + 168);
      v47 = *(v0 + 176);
      v49 = *(v0 + 160);

      v50 = *(v48 + 32);
      v50(v45, v46, v49);
      v50(v47, v45, v49);
      if (v44)
      {

        sub_192227270();
        v63 = v52;
        v64 = v51;
        v65 = v54;
        v66 = v53;

        v55.i64[0] = v64;
        v55.i64[1] = v63;
        v56 = vorrq_s8(vshll_n_s32(__PAIR64__(v65, v66), 0x20uLL), v55);
      }

      else
      {
        v56 = 0uLL;
      }

      v57 = *(v0 + 336);
      v58 = *(v0 + 312) == 0;
      *(v0 + 376) = v56;
      *(v0 + 392) = v58;
      sub_1920B3090();
      sub_1922261F0();
      v67 = (v57 + *v57);
      v59 = swift_task_alloc();
      *(v0 + 360) = v59;
      *v59 = v0;
      v59[1] = sub_192216CD8;
      v60 = *(v0 + 176);
      v61 = *(v0 + 128);
      v62 = *(v0 + 136);

      return v67(v0 + 16, v60, v61, v62);
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 > 0)
    {
      goto LABEL_7;
    }
  }

  sub_1922195B4(*(v0 + 208), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v21 = *(v0 + 96);
  v22 = sub_1922258B0();
  __swift_project_value_buffer(v22, qword_1EAE00810);

  v23 = v21;
  v24 = sub_192225890();
  v25 = sub_192227FB0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 96);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v27 = 138478083;
    *(v27 + 4) = v26;
    *v28 = v26;
    *(v27 + 12) = 2082;
    v30 = v26;
    v31 = sub_192225530();
    v33 = sub_19202B8CC(v31, v32, &v68);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_192028000, v24, v25, "(async) generating control archive for %{private}@ for host %{public}s", v27, 0x16u);
    sub_192033970(v28, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x193B0C7F0](v29, -1, -1);
    MEMORY[0x193B0C7F0](v27, -1, -1);
  }

  v34 = *(v0 + 120);
  sub_19221954C(*(v0 + 288), *(v0 + 280), type metadata accessor for ControlArchiveStorageMetadata);
  if (v34)
  {
    v35 = sub_1922189A8(v7);
  }

  else
  {
    v35 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v36 = v35;
  v38 = *(v0 + 280);
  v37 = *(v0 + 288);
  v39 = *(v0 + 224);
  v40 = *(v0 + 80);

  sub_1922195B4(v37, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1922195B4(v39, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192219614(v38, v40, type metadata accessor for ControlArchiveStorageMetadata);
  v41 = type metadata accessor for ControlArchiveStorage(0);
  *(v40 + v41[5]) = v7;
  *(v40 + v41[7]) = 2;
  *(v40 + v41[6]) = v36;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1922175BC()
{
  v1 = v0[36];
  v2 = v0[28];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];

  (*(v5 + 8))(v4, v6);
  sub_1922195B4(v1, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1922195B4(v3, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  sub_1922195B4(v2, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);

  v7 = v0[1];

  return v7();
}

uint64_t sub_192217738()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = sub_192225020();
  v51 = *(v9 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &property descriptor for StorageBackedControlArchive.state;
  v13 = [v0 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v14 = sub_192225510();
  v16 = v15;
  swift_endAccess();

  v17 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v18 = sub_192034E34(v14, v16);
  if (v18)
  {
    v49 = v9;
    v30 = v18;
    v31 = [v30 infoDictionary];
    v32 = sub_192227930();
    sub_1922194DC();
    v33 = [v31 objectForKey:v32 ofClass:swift_getObjCClassFromMetadata()];

    if (v33)
    {
      sub_1922282B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    v54 = v52;
    v55 = v53;
    v9 = v49;
    v12 = &property descriptor for StorageBackedControlArchive.state;
    if (*(&v53 + 1))
    {
      if (swift_dynamicCast())
      {
        v38 = [v30 URL];

        v39 = v50;
        sub_192224FF0();

        v40 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        v41 = sub_192224FE0();
        [v40 initWithURL_];

        (*(v51 + 8))(v39, v9);
        v42 = sub_192227300();

        return v42;
      }
    }

    else
    {

      sub_192033970(&v54, &unk_1EADEF330, &unk_19222CD40);
    }
  }

  v19 = [v1 v12[330]];
  v20 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_19221946C(v19 + v20, v4);

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v24 = sub_192225510();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    v28 = sub_192219390(v24, v26, 0);
    if (v28)
    {
      v34 = v28;
      v35 = [v34 infoDictionary];
      v36 = sub_192227930();
      sub_1922194DC();
      v37 = [v35 objectForKey:v36 ofClass:swift_getObjCClassFromMetadata()];

      if (v37)
      {
        sub_1922282B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v54 = v52;
      v55 = v53;
      if (!*(&v53 + 1))
      {

        (*(v6 + 8))(v8, v5);
        v21 = &unk_1EADEF330;
        v22 = &unk_19222CD40;
        v23 = &v54;
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        v43 = [v34 URL];

        v44 = v50;
        sub_192224FF0();

        v45 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        v46 = sub_192224FE0();
        [v45 initWithURL_];

        (*(v51 + 8))(v44, v9);
        v47 = sub_192227300();

        (*(v6 + 8))(v8, v5);
        return v47;
      }
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  v21 = &qword_1EADF1988;
  v22 = &unk_1922404E0;
  v23 = v4;
LABEL_4:
  sub_192033970(v23, v21, v22);
  return 0;
}

double static ControlArchiver.archive<A>(control:environment:hostDeviceID:dataSource:fileHandle:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t (**a8)(char *, char *, __n128))
{
  v24 = a6;
  v25 = a8;
  v14 = type metadata accessor for ControlArchiveStorage(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v26 = *a2;
  if (WidgetEnvironment.enumeratedCount()() < 1)
  {
    sub_1920B303C();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v18 = v28;
    sub_192218010(a5, a1, v17, a3, a4, a7, v25, v16);
    if (!v18)
    {
      sub_192218FB8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage, &unk_192238D48);
      v26 = sub_192227870();
      v27 = v21;
      v22 = v26;
      v23 = v21;
      sub_1920B2FE8();
      sub_192227F40();
      sub_1922195B4(v16, type metadata accessor for ControlArchiveStorage);
      return sub_192039140(v22, v23);
    }
  }

  return result;
}

int *sub_192218010@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t (**a7)(char *, char *, __n128)@<X6>, uint64_t a8@<X8>)
{
  v81 = a8;
  v82 = a5;
  v80 = a4;
  v84 = a2;
  v85 = a3;
  v11 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_192225150();
  v83 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v71 - v19;
  v20 = type metadata accessor for ControlArchiveStorageMetadata(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v71 - v25;
  v27 = v89;
  result = a7[1](a6, a7, v24);
  if (!v27)
  {
    v73 = result;
    v74 = v11;
    v75 = a6;
    v76 = a1;
    v77 = a7;
    v78 = v13;
    v71 = v22;
    v89 = v26;
    v79 = 0;
    v29 = v86;
    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    v30 = v83;
    v72 = *(v83 + 16);
    v72(v87, v29, v16);
    v31 = v84;
    v32 = [v84 extensionIdentity];
    BundleStub.init(_:)(v32, v88);
    v33 = v16;
    if (qword_1ED74BA98 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v34 = v88;
    v35 = v89;
    *&v89[v20[6]] = v31;
    v36 = qword_1ED74BAA0;
    sub_19221954C(v34, v35, type metadata accessor for BundleStub);
    v37 = v87;
    v72((v35 + v20[8]), v87, v33);
    *(v35 + v20[5]) = v36;
    v38 = v85;
    v90 = v85;
    v39 = v31;
    v40 = v38;
    WidgetEnvironment.filterForControlArchiving()();
    sub_1922195B4(v34, type metadata accessor for BundleStub);
    v41 = *(v30 + 8);
    v41(v37, v33);
    v41(v86, v33);
    v42 = v20[7];
    *(v35 + v42) = v90;
    *(v35 + v20[9]) = v73;
    v43 = sub_192217738();
    v44 = *(v35 + v42);
    v45 = v78;
    v46 = _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    *v45 = v44;
    MEMORY[0x1EEE9AC00](v46);
    v47 = v76;
    v48 = v77;
    *(&v71 - 4) = v75;
    *(&v71 - 3) = v48;
    *(&v71 - 2) = v43;
    *(&v71 - 1) = v47;
    v49 = v79;
    v50 = sub_1922152B0(sub_192219528, (&v71 - 6));
    if (v49)
    {

      sub_1922195B4(v45, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
      return sub_1922195B4(v35, type metadata accessor for ControlArchiveStorageMetadata);
    }

    else
    {
      v51 = v50;
      sub_1922195B4(v45, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v52 = sub_1922258B0();
      __swift_project_value_buffer(v52, qword_1EAE00810);
      v53 = v82;

      v54 = v39;
      v55 = sub_192225890();
      v56 = sub_192227FB0();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v88 = v51;
        v59 = v58;
        v60 = swift_slowAlloc();
        v90 = v60;
        *v57 = 138478083;
        *(v57 + 4) = v54;
        *v59 = v54;
        *(v57 + 12) = 2082;
        v61 = v54;
        v62 = sub_192225530();
        v64 = sub_19202B8CC(v62, v63, &v90);

        *(v57 + 14) = v64;
        v53 = v82;
        _os_log_impl(&dword_192028000, v55, v56, "(sync) generating control archive for %{private}@ for host %{public}s", v57, 0x16u);
        sub_192033970(v59, &qword_1EADEEDF0, &qword_1922319C0);
        v65 = v59;
        v51 = v88;
        MEMORY[0x193B0C7F0](v65, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v66 = v60;
        v35 = v89;
        MEMORY[0x193B0C7F0](v66, -1, -1);
        MEMORY[0x193B0C7F0](v57, -1, -1);
      }

      v67 = v81;
      v68 = v71;
      sub_19221954C(v35, v71, type metadata accessor for ControlArchiveStorageMetadata);
      if (v53)
      {
        v69 = sub_1922189A8(v51);
      }

      else
      {
        v69 = sub_192140634(MEMORY[0x1E69E7CC0]);
      }

      v70 = v69;

      sub_1922195B4(v35, type metadata accessor for ControlArchiveStorageMetadata);
      sub_192219614(v68, v67, type metadata accessor for ControlArchiveStorageMetadata);
      result = type metadata accessor for ControlArchiveStorage(0);
      *(v67 + result[5]) = v51;
      *(v67 + result[7]) = 2;
      *(v67 + result[6]) = v70;
    }
  }

  return result;
}

uint64_t sub_19221871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v34 = a5;
  v30 = a6;
  v11 = sub_1922261D0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  if (a2)
  {
    sub_192227270();
    v18.i64[0] = v16;
    v18.i64[1] = v17;
    v20.i32[1] = v19;
    v21 = vorrq_s8(vshll_n_s32(v20, 0x20uLL), v18);
  }

  else
  {
    v21 = 0uLL;
  }

  v31 = v21;
  v32 = a2 == 0;
  sub_1920B3090();
  sub_1922261F0();
  (*(a4 + 16))(&v31, v15, a3, a4);
  if (v6)
  {
    result = (*(v12 + 8))(v15, v11);
    *v34 = v6;
  }

  else
  {
    v23 = v33;
    v24 = __swift_project_boxed_opaque_existential_1(&v31, v33);
    v25 = MEMORY[0x1EEE9AC00](v24);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, v25);
    ControlTemplateType.init<A>(_:)(v27, v23, v30);
    (*(v12 + 8))(v15, v11);
    return __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  return result;
}

uint64_t sub_1922189A8(uint64_t a1)
{
  v2 = sub_192140634(MEMORY[0x1E69E7CC0]);
  v36 = *(a1 + 16);
  if (!v36)
  {
    return v2;
  }

  type metadata accessor for ControlTemplateType(0);
  v4 = 0;
LABEL_4:
  v37 = v4 + 1;
  v5 = ControlTemplateType.vectorGlyphAssetLibraryDatas.getter(v3);
  v6 = 0;
  v7 = v5 + 64;
  v38 = v5 + 64;
  v39 = v5;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v16 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v16 >= v11)
        {
          break;
        }

        v10 = *(v7 + 8 * v16);
        ++v6;
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v4 = v37;
      if (v37 == v36)
      {
        return v2;
      }

      goto LABEL_4;
    }

    v16 = v6;
LABEL_15:
    v17 = __clz(__rbit64(v10)) | (v16 << 6);
    v18 = *(*(v39 + 48) + 8 * v17);
    v19 = (*(v39 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    sub_1920367C8(*v19, v20);
    sub_1920367C8(v21, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v23 = sub_1920B70BC(v18);
    v25 = *(v2 + 16);
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (*(v2 + 24) >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v23;
        sub_19213EC2C();
        v23 = v34;
      }
    }

    else
    {
      sub_19213BA74(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1920B70BC(v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }
    }

    v10 &= v10 - 1;
    if (v29)
    {
      v12 = v23;

      v2 = v40;
      v13 = (v40[7] + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      *v13 = v21;
      v13[1] = v20;
      sub_192039140(v14, v15);
      sub_192039140(v21, v20);
    }

    else
    {
      v2 = v40;
      v40[(v23 >> 6) + 8] |= 1 << v23;
      *(v40[6] + 8 * v23) = v18;
      v31 = (v40[7] + 16 * v23);
      *v31 = v21;
      v31[1] = v20;
      sub_192039140(v21, v20);
      v32 = v40[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_27;
      }

      v40[2] = v33;
    }

    v6 = v16;
    v7 = v38;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
  result = sub_192228A40();
  __break(1u);
  return result;
}

double static ControlUnarchiver.unarchive(url:)@<D0>(uint64_t *x8_0@<X8>)
{
  v4 = sub_192225030();
  if (!v2)
  {
    v7 = x8_0;
    v8 = v4;
    v9 = v5;
    static ControlUnarchiver.unarchive(data:)(v7);
    return sub_192039140(v8, v9);
  }

  return result;
}

uint64_t static ControlUnarchiver.unarchive(data:)@<X0>(uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for ControlArchiveStorage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  sub_192218FB8(&qword_1EADED888, type metadata accessor for ControlArchiveStorage, &unk_192238D70);
  result = sub_192227D30();
  if (!v3)
  {
    sub_19221954C(v10, v7, type metadata accessor for ControlArchiveStorage);
    v12 = type metadata accessor for StorageBackedControlArchive(0);
    v13 = swift_allocObject();
    sub_19221954C(v7, v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
    v14 = type metadata accessor for ControlArchiveStorageMetadata(0);
    *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v7[v14[5]];
    v15 = v14[8];
    v16 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
    v17 = sub_192225150();
    (*(*(v17 - 8) + 16))(v13 + v16, &v7[v15], v17);
    v18 = *&v7[v14[7]];
    *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v18;
    v19 = *&v7[v14[6]];
    *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v19;
    *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v7[v14[9]];
    sub_192219614(v7, v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
    a3[3] = v12;
    a3[4] = sub_192218FB8(&qword_1EADED5D0, type metadata accessor for StorageBackedControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
    *a3 = v13;
    v20 = v18;
    v21 = v19;

    return sub_1922195B4(v10, type metadata accessor for ControlArchiveStorage);
  }

  return result;
}

uint64_t sub_192218FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of AsyncControlArchiveDataSource.getState()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920EF2F4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AsyncControlArchiveDataSource.makeTemplate(environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit21ControlArchivingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1922192D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_192219320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_192219364(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

id sub_192219390(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_192227930();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_192224F90();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_19221946C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1922194DC()
{
  result = qword_1ED74BC20;
  if (!qword_1ED74BC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74BC20);
  }

  return result;
}

uint64_t sub_19221954C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1922195B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192219614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PlaceholderArchivingDataSource.__allocating_init(source:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_19203832C(a1, v2 + 16);
  return v2;
}

uint64_t sub_192219718@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  result = ControlArchive.template(in:)(a1, v9, v10);
  if (!v3)
  {
    ControlTemplateType.asPlaceholderTemplate()(a2);
    return sub_1922197EC(v8);
  }

  return result;
}

uint64_t sub_1922197EC(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplateType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaceholderArchivingDataSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1922198A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(*v2 + 40);
  v11 = *(v9 + 48);
  __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
  result = ControlArchive.template(in:)(a1, v10, v11);
  if (!v3)
  {
    ControlTemplateType.asPlaceholderTemplate()(a2);
    return sub_1922197EC(v8);
  }

  return result;
}

void sub_192219A34(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*v3)
  {
    v20 = *v3;
    MEMORY[0x1EEE9AC00](a1);
    v18 = *(v5 + 16);
    v19 = a2;
    v7 = v6;
    type metadata accessor for WidgetRelevanceEntry(255, v18, v8, v9);
    v10 = sub_192227C40();
    v13 = type metadata accessor for WidgetRelevanceEntry(0, a2, v11, v12);
    WitnessTable = swift_getWitnessTable();
    v16 = sub_19204301C(sub_19221A318, &v17, v10, v13, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);
    WidgetRelevances.init(_:)(v16, &v20);
    sub_19208805C(&v20, v7);
  }

  else
  {

    sub_1920CA398(a3);
  }
}

uint64_t sub_192219B84(uint64_t a1)
{
  if (!*v1)
  {
    return sub_192227BD0();
  }

  MEMORY[0x1EEE9AC00](a1);
  v3 = *(v2 + 16);
  KeyPath = swift_getKeyPath();
  type metadata accessor for WidgetRelevanceEntry(255, v3, v5, v6);
  v7 = sub_192227C40();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_19204301C(sub_1920CA26C, KeyPath, v7, v3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  return v10;
}

uint64_t sub_192219C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*v2)
  {
    v14 = *v2;
    MEMORY[0x1EEE9AC00](a1);
    v13 = *(v4 + 16);
    type metadata accessor for WidgetRelevanceEntry(255, v13, v5, v6);
    v7 = sub_192227C40();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC0, &qword_192246DB0);
    WitnessTable = swift_getWitnessTable();
    result = sub_19204301C(sub_19221A338, &v12, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_192219DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC8, &qword_192246DB8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v20 = type metadata accessor for WidgetRelevanceEntry(0, a2, v18, v19);
  (*(v9 + 16))(v11, a1 + *(v20 + 28), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v14 = *v11;
  }

  else
  {
    v21 = sub_192224CC0();
    (*(*(v21 - 8) + 32))(v14, v11, v21);
  }

  swift_storeEnumTagMultiPayload();
  sub_19221A358(v14, v17);
  a5[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC0, &qword_192246DB0);
  return sub_19221A358(v17, a5 + *(v23 + 28));
}

uint64_t sub_192219FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v37 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, v11, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v34 - v16);
  v38 = a3;
  v20 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, v18, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  v29 = type metadata accessor for WidgetRelevanceEntry(0, a2, v27, v28);
  (*(v15 + 16))(v17, v39 + *(v29 + 28), v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v23 = *v17;
  }

  else
  {
    v30 = sub_192224CC0();
    (*(*(v30 - 8) + 32))(v23, v17, v30);
  }

  swift_storeEnumTagMultiPayload();
  (*(v21 + 32))(v26, v23, v20);
  (*(v35 + 16))(v10, v39, a2);
  v31 = v36;
  v32 = v38;
  swift_dynamicCast();
  return sub_192203894(v31, v26, v32, v37);
}

uint64_t sub_19221A358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC8, &qword_192246DB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_19221A3EC(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  v8 = swift_beginAccess();
  if (*(*(v6 + v7) + 16) && (v8 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a1, MEMORY[0x1E69E7CC0]), (v9 & 1) != 0))
  {
    v10 = type metadata accessor for ViewableTimelineEntry(0);
    (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
    MEMORY[0x1EEE9AC00](v8);

    sub_192098448(sub_19221B66C, v11, a2);
  }
}

void sub_19221A59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19214D544(a3);
  v8 = v7;
  v9 = v6;
  if (v10)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    if (v6)
    {
LABEL_3:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  else
  {
    v11 = v5;

    v13 = sub_192096880(v12);

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v11 >= *(v13 + 16))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_192033A64(v13 + 40 * v11 + 32, a1);

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = sub_192096880(v14);

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= *(v15 + 16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_192033A64(v15 + 40 * v8 + 32, a2);
}

double sub_19221A6E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v28[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 8))(v18, v17, v14);
  (*(v13 + 16))(v16, a2, a4);
  v19 = sub_192227570();
  (*(a5 + 16))(v28, a3, a5);
  (*(v13 + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  v20 = v28[0];
  v21 = v28[1];
  LOBYTE(a2) = v29;
  v22 = type metadata accessor for ViewableTimelineEntry(0);
  v23 = v22[7];
  v24 = type metadata accessor for WidgetViewMetadata(0);
  (*(*(v24 - 8) + 56))(a7 + v23, 1, 1, v24);
  *(a7 + v22[5]) = v19;
  v25 = a7 + v22[6];
  *v25 = v20;
  *(v25 + 8) = v21;
  *(v25 + 16) = a2;
  result = 0.0;
  *(a7 + v22[8]) = xmmword_19222A790;
  return result;
}

uint64_t ViewableTimelineEntry.init(date:view:relevance:viewMetadata:entryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 16);
  v16 = sub_192225150();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for ViewableTimelineEntry(0);
  *(a7 + v17[5]) = a2;
  v18 = a7 + v17[6];
  *v18 = v13;
  *(v18 + 8) = v14;
  *(v18 + 16) = v15;
  result = sub_19204E300(a4, a7 + v17[7], &qword_1EADEEE60, &unk_192246DC0);
  v20 = (a7 + v17[8]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

double sub_19221A9F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922250C0();
  (*(v7 + 16))(v9, a1, a2);
  v10 = sub_192227570();
  v11 = type metadata accessor for ViewableTimelineEntry(0);
  v12 = v11[7];
  v13 = type metadata accessor for WidgetViewMetadata(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  *(a4 + v11[5]) = v10;
  v14 = a4 + v11[6];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  result = 0.0;
  *(a4 + v11[8]) = xmmword_19222A790;
  return result;
}

__n128 ViewableTimelineEntry.relevance.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ViewableTimelineEntry(0) + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t ViewableTimelineEntry.entryData.getter()
{
  v1 = v0 + *(type metadata accessor for ViewableTimelineEntry(0) + 32);
  v2 = *v1;
  sub_19206A874(*v1, *(v1 + 8));
  return v2;
}

__n128 sub_19221ABD4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t static ArchiveURLAttributes.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (v2)
  {
    v4 = 0xEE0064616F6C6552;
  }

  else
  {
    v4 = 0x8000000192248870;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (*a2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t ArchiveURLAttributes.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7365726975716572;
  }
}

WidgetKit::ArchiveURLAttributes_optional __swiftcall ArchiveURLAttributes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_192228700();

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

  *v2 = v5;
  return result;
}

uint64_t sub_19221AD58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (v2)
  {
    v4 = 0xEE0064616F6C6552;
  }

  else
  {
    v4 = 0x8000000192248870;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (*a2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19221AE10()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_19221AEA4(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_19221AF24()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

void sub_19221AFB4(char *a2@<X8>)
{
  v3 = sub_192228700();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_19221B014(unint64_t *a1@<X8>)
{
  v2 = 0x8000000192248870;
  v3 = 0x7365726975716572;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEE0064616F6C6552;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_19221B064(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (v2)
  {
    v4 = 0xEE0064616F6C6552;
  }

  else
  {
    v4 = 0x8000000192248870;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (*a2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19221B11C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (*a2)
  {
    v4 = 0x8000000192248870;
  }

  else
  {
    v4 = 0xEE0064616F6C6552;
  }

  if (v2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (v2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_19221B1E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (v2)
  {
    v4 = 0xEE0064616F6C6552;
  }

  else
  {
    v4 = 0x8000000192248870;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (*a2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_19221B2B4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (*a2)
  {
    v4 = 0x8000000192248870;
  }

  else
  {
    v4 = 0xEE0064616F6C6552;
  }

  if (v2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (v2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t TimelineViewCollection.isStale.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_192225150();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  TimelineViewCollection.staleDate.getter(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1920418D4(v6);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    v14 = sub_192225100();
    v15 = *(v8 + 8);
    v15(v10, v7);
    v15(v13, v7);
  }

  return v14 & 1;
}

unint64_t sub_19221B540()
{
  result = qword_1EADED898;
  if (!qword_1EADED898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED898);
  }

  return result;
}

uint64_t static ActivityArchivedViewCollection.ViewIndex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 0;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_19221B73C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 0;
    }

    if (v2 == 1)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void ActivityArchivedViewCollection.ViewEntry.viewIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

__n128 ActivityArchivedViewCollection.ViewEntry.metadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 79) = *(v1 + 103);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

double ActivityArchivedViewCollection.ViewEntry.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 144);
  v3 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t ActivityArchivedViewCollection.payloadID.getter()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0) + 60));

  return v1;
}

id ActivityArchivedViewCollection.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
  *a1 = v3;

  return v3;
}

uint64_t ActivityArchivedViewCollection.jindoKeyColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  sub_19202CFFC(v0 + *(v4 + 52), v3, &qword_1EADF2AD8, &unk_192246FC8);
  v5 = type metadata accessor for JindoViewStates.Metadata(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_192033970(v3, &qword_1EADF2AD8, &unk_192246FC8);
    return 0;
  }

  else
  {
    v7 = v3[32];
    v8 = v3[33];
    sub_19221E81C(v3, type metadata accessor for JindoViewStates.Metadata);
    if (v8 & 1) != 0 || (v7)
    {
      return 0;
    }

    else
    {
      sub_192227280();
      return sub_192227320();
    }
  }
}

uint64_t ActivityArchivedViewCollection.jindoWidgetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  sub_19202CFFC(v1 + *(v6 + 52), v5, &qword_1EADF2AD8, &unk_192246FC8);
  v7 = type metadata accessor for JindoViewStates.Metadata(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_192033970(v5, &qword_1EADF2AD8, &unk_192246FC8);
    v8 = sub_192225020();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    sub_19202CFFC(&v5[*(v7 + 28)], a1, &qword_1EADEEE10, &unk_19222B630);
    return sub_19221E81C(v5, type metadata accessor for JindoViewStates.Metadata);
  }
}

void ActivityArchivedViewCollection.init(contentsOf:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922266C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  v12 = a1;
  sub_192226650();
  if (v2)
  {
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_19221BD64(v8, a2);

    (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_19221BD64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v35 - v6;
  v7 = type metadata accessor for JindoViewStates.Metadata(0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for ActivityArchivedViewCollection(0);
  v13 = a2 + *(v12 + 24);
  v14 = type metadata accessor for JindoArchivedViewCollection(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v40 = v14;
  v41 = v13;
  v38 = v15 + 56;
  v39 = v16;
  (v16)(v13, 1, 1);
  v17 = *(v12 + 20);
  v18 = sub_1922266C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v47 = a2;
  v36 = v20;
  v37 = v17;
  v43 = v18;
  (v20)(a2 + v17, a1);
  sub_192224D80();
  swift_allocObject();
  sub_192224D70();
  v21 = a1;
  v22 = sub_192226660();
  if (v23 >> 60 == 15)
  {
    __break(1u);
    sub_192046ED4(v2, a1);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v24 = v22;
    v25 = v23;
    sub_192031E74(&qword_1EADED128, &qword_1EADF2AD0, &qword_192246FC0, &unk_19222BA5C);
    sub_192224D60();
    v26 = v21;
    v27 = v43;
    (*(v19 + 8))(v26, v43);
    sub_192046ED4(v24, v25);

    v28 = v47;
    sub_19221EBCC(v11, v47);
    v29 = v46;
    sub_19202CFFC(v28 + *(v9 + 52), v46, &qword_1EADF2AD8, &unk_192246FC8);
    if ((*(v44 + 48))(v29, 1, v45) == 1)
    {
      return sub_192033970(v29, &qword_1EADF2AD8, &unk_192246FC8);
    }

    else
    {
      v31 = v42;
      sub_19221EC3C(v29, v42);
      v32 = v41;
      sub_192033970(v41, &qword_1EADF2AE0, &qword_192246FD8);
      v33 = *(v28 + *(v9 + 56));
      v34 = v40;
      sub_19221EC3C(v31, &v32[*(v40 + 20)]);
      v36(&v32[*(v34 + 24)], v28 + v37, v27);
      *v32 = v33;
      return v39(v32, 0, 1, v34);
    }
  }

  return result;
}

uint64_t ActivityArchivedViewCollection.init(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1922266C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  sub_192226640();
  if (v2)
  {
    return (*(v5 + 8))(a1, v4);
  }

  (*(v9 + 16))(v11, v15, v8);
  sub_19221BD64(v11, v18);
  (*(v5 + 8))(a1, v4);
  return (*(v9 + 8))(v15, v8);
}

void ActivityArchivedViewCollection.init(contentsOf:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1922266C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1920367C8(a1, a2);
  sub_1922266A0();
  if (v3)
  {
    sub_192039140(a1, a2);
  }

  else
  {
    (*(v8 + 16))(v10, v13, v7);
    sub_19221BD64(v10, a3);
    v14 = sub_192039140(a1, a2);
    (*(v8 + 8))(v13, v7, v14);
  }
}

uint64_t ActivityArchivedViewCollection.metrics(viewIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v24 - v6);
  v8 = *a1;
  if (*(a1 + 8) != 1)
  {
    v15 = type metadata accessor for ActivityArchivedViewCollection(0);
    sub_19202CFFC(v2 + *(v15 + 24), v7, &qword_1EADF2AE0, &qword_192246FD8);
    v16 = type metadata accessor for JindoArchivedViewCollection(0);
    result = (*(*(v16 - 8) + 48))(v7, 1, v16);
    if (result != 1)
    {
      result = v8 - *v7;
      if (!__OFSUB__(v8, *v7))
      {
        v17 = *(v7 + *(v16 + 20) + 8);
        if (*(v17 + 16))
        {
          v18 = sub_1920B71E4(result);
          if (v19)
          {
            v20 = *(v17 + 56) + 88 * v18;
            v21 = *(v20 + 32);
            v22 = *v20;
            v24 = *(v20 + 16);
            v25 = v22;
            result = sub_19221E81C(v7, type metadata accessor for JindoArchivedViewCollection);
            v23 = v24;
            *a2 = v25;
            *(a2 + 16) = v23;
            *(a2 + 32) = v21;
            *(a2 + 40) = 0;
            return result;
          }
        }

        result = sub_19221E81C(v7, type metadata accessor for JindoArchivedViewCollection);
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0;
        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = type metadata accessor for ActivityViewStates.Metadata(0);
  v10 = *(v2 + *(result + 28));
  if (*(v10 + 16))
  {
    result = sub_1920B71E4(v8);
    if (v11)
    {
      v12 = *(v10 + 56) + 88 * result;
      v13 = *(v12 + 32);
      v14 = *(v12 + 16);
      *a2 = *v12;
      *(a2 + 16) = v14;
      *(a2 + 32) = v13;
      *(a2 + 40) = 0;
      return result;
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
LABEL_12:
  *(a2 + 40) = 1;
  return result;
}

void ActivityArchivedViewCollection.index(for:environmentAtIndex:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  v8 = type metadata accessor for ActivityViewStates.Metadata(0);
  v9 = *(v4 + *(v8 + 24));
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = v9 + 32;
  while (1)
  {
    v13 = *(v12 + v11);
    if (v13 == 4)
    {
      break;
    }

    if (v13 == v7)
    {
      goto LABEL_7;
    }

LABEL_4:
    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  if (v7 != 4)
  {
    goto LABEL_4;
  }

LABEL_7:
  v19 = *(v4 + *(v8 + 20));
  v14 = v19;
  v15 = WidgetEnvironment.enumeratedCount()();

  v16 = v11 * v15;
  if ((v11 * v15) >> 64 != (v11 * v15) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16 + a2;
  if (__OFADD__(v16, a2))
  {
LABEL_14:
    __break(1u);
    return;
  }

  type metadata accessor for ActivityArchivedViewCollection(0);
  sub_1922266C0();
  sub_19205E1C4(&qword_1EADEDD88, MEMORY[0x1E697C620], MEMORY[0x1E697C628]);
  sub_192227E00();
  sub_192227E60();
  if (v17 < sub_192227E50())
  {
    *a3 = v17;
    v18 = 1;
    goto LABEL_12;
  }

LABEL_11:
  *a3 = 0;
  v18 = -1;
LABEL_12:
  *(a3 + 8) = v18;
}

void ActivityArchivedViewCollection.index(for:in:ignoring:)(unsigned __int8 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v30 - v14);
  v16 = *a1;
  if (v16 == 4)
  {
    v30 = *(v5 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
    v17 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
    if ((v18 & 1) == 0)
    {
      LOBYTE(v30) = 4;
      ActivityArchivedViewCollection.index(for:environmentAtIndex:)(&v30, v17, a4);
      return;
    }

    goto LABEL_8;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  sub_19202CFFC(v5 + *(v19 + 52), v15, &qword_1EADF2AD8, &unk_192246FC8);
  v20 = type metadata accessor for JindoViewStates.Metadata(0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_1EADF2AD8;
    v22 = &unk_192246FC8;
    v23 = v15;
LABEL_6:
    sub_192033970(v23, v21, v22);
    goto LABEL_8;
  }

  v24 = *v15;
  sub_19221E81C(v15, type metadata accessor for JindoViewStates.Metadata);
  v30 = v24;
  v25 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
  v27 = v26;

  if (v27)
  {
    goto LABEL_8;
  }

  v28 = type metadata accessor for ActivityArchivedViewCollection(0);
  sub_19202CFFC(v5 + *(v28 + 24), v12, &qword_1EADF2AE0, &qword_192246FD8);
  v29 = type metadata accessor for JindoArchivedViewCollection(0);
  if ((*(*(v29 - 8) + 48))(v12, 1, v29) == 1)
  {
    v21 = &qword_1EADF2AE0;
    v22 = &qword_192246FD8;
    v23 = v12;
    goto LABEL_6;
  }

  JindoArchivedViewCollection.index(for:environmentAtIndex:)(v16, v25);
  sub_19221E81C(v12, type metadata accessor for JindoArchivedViewCollection);
  if ((v31 & 1) == 0)
  {
    *a4 = v30;
    *(a4 + 8) = 0;
    return;
  }

LABEL_8:
  *a4 = 0;
  *(a4 + 8) = -1;
}

void ActivityArchivedViewCollection.viewEntry(for:in:ignoring:)(unsigned __int8 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v136 = a4;
  v5 = v4;
  v140 = sub_1922261D0();
  v167 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v132 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v132 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v132 - v20);
  v141 = *a1;
  v138 = a2;
  if (v141 != 4)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
    sub_19202CFFC(v5 + *(v25 + 52), v21, &qword_1EADF2AD8, &unk_192246FC8);
    v26 = type metadata accessor for JindoViewStates.Metadata(0);
    if ((*(*(v26 - 8) + 48))(v21, 1, v26) == 1)
    {
      v27 = &qword_1EADF2AD8;
      v28 = &unk_192246FC8;
      v29 = v21;
    }

    else
    {
      v38 = *v21;
      sub_19221E81C(v21, type metadata accessor for JindoViewStates.Metadata);
      *&v142 = v38;
      v39 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(v138, a3);
      v41 = v40;

      if (v41)
      {
        goto LABEL_11;
      }

      v130 = type metadata accessor for ActivityArchivedViewCollection(0);
      sub_19202CFFC(v5 + *(v130 + 24), v15, &qword_1EADF2AE0, &qword_192246FD8);
      v131 = type metadata accessor for JindoArchivedViewCollection(0);
      if ((*(*(v131 - 8) + 48))(v15, 1, v131) != 1)
      {
        v31 = v141;
        JindoArchivedViewCollection.index(for:environmentAtIndex:)(v141, v39);
        sub_19221E81C(v15, type metadata accessor for JindoArchivedViewCollection);
        if (BYTE8(v142))
        {
          *&v152 = 0;
          BYTE8(v152) = -1;
          v23 = v138;
          goto LABEL_13;
        }

        v30 = 0;
        *&v152 = v142;
        goto LABEL_8;
      }

      v27 = &qword_1EADF2AE0;
      v28 = &qword_192246FD8;
      v29 = v15;
    }

    sub_192033970(v29, v27, v28);
LABEL_11:
    *&v152 = 0;
    v23 = v138;
    goto LABEL_12;
  }

  *&v142 = *(v5 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
  v22 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
  v23 = a2;
  if (v24)
  {
    *&v152 = 0;
LABEL_12:
    v31 = v141;
    goto LABEL_13;
  }

  LOBYTE(v142) = 4;
  ActivityArchivedViewCollection.index(for:environmentAtIndex:)(&v142, v22, &v152);
  v30 = BYTE8(v152);
  v31 = v141;
  if (BYTE8(v152) == 255)
  {
LABEL_13:
    v42 = *(v5 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
    v166 = v42;
    v137 = a3;
    if (v31 == 4)
    {
      v43 = v42;
    }

    else
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
      sub_19202CFFC(v5 + *(v44 + 52), v18, &qword_1EADF2AD8, &unk_192246FC8);
      v45 = type metadata accessor for JindoViewStates.Metadata(0);
      if ((*(*(v45 - 8) + 48))(v18, 1, v45) == 1)
      {
        v46 = v42;
        sub_192033970(v18, &qword_1EADF2AD8, &unk_192246FC8);
        v47 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];

        v166 = v47;
      }

      else
      {
        v48 = *v18;
        v49 = v42;
        v50 = v48;
        sub_19221E81C(v18, type metadata accessor for JindoViewStates.Metadata);

        v166 = v50;
      }
    }

    v51 = v167;
    v52 = *(v167 + 16);
    v53 = v140;
    v52(v12, v23, v140);
    *&v152 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
    WidgetEnvironment.apply(environmentValues:)();
    v54 = *(v51 + 8);
    v167 = v51 + 8;
    v135 = v54;
    v54(v12, v53);
    v55 = v152;
    if (qword_1EADEE9B8 != -1)
    {
      swift_once();
    }

    v56 = sub_1922258B0();
    __swift_project_value_buffer(v56, qword_1EAE008C0);
    v57 = v139;
    v52(v139, v23, v53);
    v58 = v137;

    v59 = v55;
    v60 = v58;
    v61 = v59;
    v62 = sub_192225890();
    v63 = sub_192227FB0();

    v136 = v61;

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v142 = v133;
      *v64 = 136447234;
      v134 = v63;
      if (v141 == 4)
      {
        v65 = 0xE800000000000000;
        v66 = 0x6D6574497473696CLL;
      }

      else
      {
        v67 = 0x6465646E61707865;
        *&v152 = 0x2D6F646E696ALL;
        *(&v152 + 1) = 0xE600000000000000;
        v68 = 0xE800000000000000;
        v69 = 0x54746361706D6F63;
        v70 = 0xEF676E696C696172;
        if (v141 != 2)
        {
          v69 = 0x4D746361706D6F63;
          v70 = 0xEE006C616D696E69;
        }

        if (v141)
        {
          v67 = 0x4C746361706D6F63;
          v68 = 0xEE00676E69646165;
        }

        if (v141 <= 1)
        {
          v71 = v67;
        }

        else
        {
          v71 = v69;
        }

        if (v141 <= 1)
        {
          v72 = v68;
        }

        else
        {
          v72 = v70;
        }

        MEMORY[0x193B0A990](v71, v72);

        v65 = *(&v152 + 1);
        v66 = v152;
      }

      v73 = sub_19202B8CC(v66, v65, &v142);

      *(v64 + 4) = v73;
      *(v64 + 12) = 2082;
      *&v152 = 0xD000000000000012;
      *(&v152 + 1) = 0x80000001922488B0;
      v74 = v136;
      v75 = [v74 debugDescription];
      v76 = sub_192227960();
      v78 = v77;

      MEMORY[0x193B0A990](v76, v78);

      v79 = sub_19202B8CC(v152, *(&v152 + 1), &v142);

      *(v64 + 14) = v79;
      *(v64 + 22) = 2082;
      v80 = sub_1922282D0();
      v81 = v137;
      v82 = MEMORY[0x193B0AB30](v137, v80);
      v84 = sub_19202B8CC(v82, v83, &v142);

      *(v64 + 24) = v84;
      *(v64 + 32) = 2082;
      v60 = v81;
      swift_beginAccess();
      *&v152 = 0xD000000000000012;
      *(&v152 + 1) = 0x80000001922488B0;
      v85 = v166;
      v86 = [v85 debugDescription];
      v87 = sub_192227960();
      v89 = v88;

      MEMORY[0x193B0A990](v87, v89);

      v90 = sub_19202B8CC(v152, *(&v152 + 1), &v142);

      *(v64 + 34) = v90;
      *(v64 + 42) = 2080;
      *&v152 = v166;
      LOBYTE(v164) = 1;
      v91 = v166;
      v92 = v139;
      v93 = WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(v139, v60, &v164);

      *&v152 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
      v94 = sub_1922278A0();
      v96 = v95;

      v135(v92, v140);
      v97 = sub_19202B8CC(v94, v96, &v142);

      *(v64 + 44) = v97;
      _os_log_impl(&dword_192028000, v62, v134, "Failed to get index for tag: %{public}s in environment: %{public}s ignoring %{public}s.  Available environments: %{public}s, diff: %s", v64, 0x34u);
      v98 = v133;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v98, -1, -1);
      MEMORY[0x193B0C7F0](v64, -1, -1);

      v23 = v138;
    }

    else
    {

      v135(v57, v53);
    }

    v99 = v141;
    *&v152 = 0;
    *(&v152 + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000047, 0x800000019224EF80);
    if (v99 == 4)
    {
      v100 = v23;
      v101 = 0xE800000000000000;
      v102 = 0x6D6574497473696CLL;
    }

    else
    {
      v103 = 0x6465646E61707865;
      *&v142 = 0x2D6F646E696ALL;
      *(&v142 + 1) = 0xE600000000000000;
      v104 = 0xE800000000000000;
      v105 = 0x54746361706D6F63;
      v106 = 0xEF676E696C696172;
      if (v99 != 2)
      {
        v105 = 0x4D746361706D6F63;
        v106 = 0xEE006C616D696E69;
      }

      if (v99)
      {
        v103 = 0x4C746361706D6F63;
        v104 = 0xEE00676E69646165;
      }

      if (v99 <= 1)
      {
        v107 = v103;
      }

      else
      {
        v107 = v105;
      }

      if (v99 <= 1)
      {
        v108 = v104;
      }

      else
      {
        v108 = v106;
      }

      v100 = v23;
      MEMORY[0x193B0A990](v107, v108);

      v101 = *(&v142 + 1);
      v102 = v142;
    }

    MEMORY[0x193B0A990](v102, v101);

    MEMORY[0x193B0A990](0xD000000000000013, 0x800000019224EFD0);
    *&v142 = 0xD000000000000012;
    *(&v142 + 1) = 0x80000001922488B0;
    v109 = v136;
    v110 = [v136 debugDescription];
    v111 = sub_192227960();
    v113 = v112;

    MEMORY[0x193B0A990](v111, v113);

    MEMORY[0x193B0A990](v142, *(&v142 + 1));

    MEMORY[0x193B0A990](0x726F6E6769202C5DLL, 0xEE005B203A676E69);
    v114 = sub_1922282D0();
    v115 = MEMORY[0x193B0AB30](v60, v114);
    MEMORY[0x193B0A990](v115);

    MEMORY[0x193B0A990](0x3A66666964202C5DLL, 0xE900000000000020);
    swift_beginAccess();
    *&v142 = v166;
    LOBYTE(v163) = 1;
    v116 = v166;
    v117 = WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(v100, v60, &v163);

    *&v142 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
    v118 = sub_1922278A0();
    v120 = v119;

    MEMORY[0x193B0A990](v118, v120);

    v121 = v152;
    v122 = *MEMORY[0x1E69941E8];
    v123 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v124 = sub_192227960();
    v126 = v125;
    *(&v153 + 1) = MEMORY[0x1E69E6158];
    v152 = v121;
    sub_19203BEDC(&v152, &v142);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v123;
    sub_19213DB28(&v142, v124, v126, isUniquelyReferenced_nonNull_native);

    v128 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v129 = sub_192227830();

    [v128 initWithDomain:v122 code:1301 userInfo:v129];

    swift_willThrow();
    return;
  }

LABEL_8:
  v164 = v152;
  v165 = v30 & 1;
  v162 = v31;
  v32 = v137;
  sub_19221DAB8(&v164, &v152);
  if (!v32)
  {
    v148 = v158;
    v149 = v159;
    v150 = v160;
    v151 = v161;
    v144 = v154;
    v145 = v155;
    v146 = v156;
    v147 = v157;
    v142 = v152;
    v143 = v153;
    nullsub_1();
    v33 = v149;
    v34 = v136;
    *(v136 + 6) = v148;
    v34[7] = v33;
    v34[8] = v150;
    *(v34 + 18) = v151;
    v35 = v145;
    v34[2] = v144;
    v34[3] = v35;
    v36 = v147;
    v34[4] = v146;
    v34[5] = v36;
    v37 = v143;
    *v34 = v142;
    v34[1] = v37;
  }
}

uint64_t sub_19221DAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AF0, qword_192247150);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v73 - v11;
  v13 = sub_192225B70();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v73 - v23;
  v24 = *a1;
  LODWORD(a1) = *(a1 + 8);
  v25 = type metadata accessor for ActivityArchivedViewCollection(0);
  v78 = a1;
  if (a1)
  {
    v26 = v13;
    v27 = v82;
    sub_1922266B0();
    if (v27)
    {
      if (qword_1EADEDEB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1922258B0();
      __swift_project_value_buffer(v28, qword_1EAE007D8);
      v29 = v27;
      v30 = sub_192225890();
      v31 = sub_192227F90();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = v24;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 134349314;
        *(v33 + 4) = v32;
        *(v33 + 12) = 2114;
        v35 = v27;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v36;
        *v34 = v36;
        _os_log_impl(&dword_192028000, v30, v31, "Failed to fetch view from archive at index %{public}ld: %{public}@", v33, 0x16u);
        sub_192033970(v34, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v34, -1, -1);
        MEMORY[0x193B0C7F0](v33, -1, -1);
      }

      return swift_willThrow();
    }

    (*(v14 + 32))(v19, v16, v13);
    v49 = *(v3 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 28));
    if (!*(v49 + 16) || (v50 = sub_1920B71E4(v24), (v51 & 1) == 0))
    {
      sub_1920EECBC();
      swift_allocError();
      *v65 = 1;
      swift_willThrow();
      return (*(v14 + 8))(v19, v13);
    }

    v74 = v24;
    v76 = v14;
    v52 = *(v49 + 56) + 88 * v50;
    v53 = *v52;
    v82 = *(v52 + 16);
    v73 = v53;
    v54 = *(v52 + 32);
    v55 = *(v52 + 57);
    v85 = *(v52 + 41);
    v86[0] = v55;
    *(v86 + 10) = *(v52 + 67);
    v56 = &v85;
    v46 = v19;
LABEL_16:
    v57 = sub_192225B50() & 1;
    v58 = v46;
    v59 = v76;
    (*(v76 + 16))(v77, v58, v26);
    sub_19205E1C4(&qword_1EADEDE68, MEMORY[0x1E697C008], MEMORY[0x1E697C000]);
    v60 = sub_192227570();
    result = (*(v59 + 8))(v58, v26);
    v61 = v56[1];
    v62 = v79;
    *(v79 + 65) = *v56;
    *v62 = v74;
    *(v62 + 8) = v78;
    *(v62 + 16) = v60;
    v63 = v82;
    *(v62 + 40) = v82;
    v64 = v73;
    *(v62 + 24) = v73;
    *(v62 + 56) = v54;
    *(v62 + 64) = v57;
    *(v62 + 81) = v61;
    *(v62 + 91) = *(v56 + 26);
    *(v62 + 112) = v64;
    *(v62 + 128) = v63;
    *(v62 + 144) = v54;
    return result;
  }

  v38 = v82;
  v74 = v24;
  v76 = v14;
  v75 = v13;
  v39 = *(v25 + 24);
  *&v73 = v3;
  sub_19202CFFC(v3 + v39, v9, &qword_1EADF2AE0, &qword_192246FD8);
  v40 = type metadata accessor for JindoArchivedViewCollection(0);
  v41 = *(*(v40 - 8) + 48);
  if (v41(v9, 1, v40) == 1)
  {
    sub_192033970(v9, &qword_1EADF2AE0, &qword_192246FD8);
    (*(v76 + 56))(v12, 1, 1, v75);
    sub_192033970(v12, &qword_1EADF2AF0, qword_192247150);
    sub_1920EECBC();
    swift_allocError();
    *v42 = 1;
    return swift_willThrow();
  }

  sub_1922266B0();
  result = sub_19221E81C(v9, type metadata accessor for JindoArchivedViewCollection);
  if (!v38)
  {
    v43 = v76;
    v44 = v75;
    (*(v76 + 56))(v12, 0, 1, v75);
    v45 = *(v43 + 32);
    v46 = v81;
    v45(v81, v12, v44);
    v47 = v80;
    sub_19202CFFC(v73 + v39, v80, &qword_1EADF2AE0, &qword_192246FD8);
    if (v41(v47, 1, v40) == 1)
    {
      sub_192033970(v47, &qword_1EADF2AE0, &qword_192246FD8);
      v26 = v75;
      v48 = v76;
    }

    else
    {
      result = v74 - *v47;
      if (__OFSUB__(v74, *v47))
      {
        __break(1u);
        return result;
      }

      v66 = *&v47[*(v40 + 20) + 8];
      v26 = v75;
      v48 = v76;
      if (*(v66 + 16))
      {
        v67 = sub_1920B71E4(result);
        if (v68)
        {
          v69 = *(v66 + 56) + 88 * v67;
          v70 = *v69;
          v82 = *(v69 + 16);
          v73 = v70;
          v54 = *(v69 + 32);
          v71 = *(v69 + 57);
          v83 = *(v69 + 41);
          v84[0] = v71;
          *(v84 + 10) = *(v69 + 67);
          sub_19221E81C(v47, type metadata accessor for JindoArchivedViewCollection);
          v56 = &v83;
          goto LABEL_16;
        }
      }

      sub_19221E81C(v47, type metadata accessor for JindoArchivedViewCollection);
    }

    sub_1920EECBC();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();
    return (*(v48 + 8))(v46, v26);
  }

  return result;
}

uint64_t ActivityArchivedViewCollection.viewState(for:environmentAtIndex:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1922261D0();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  LOBYTE(v28) = v14;
  ActivityArchivedViewCollection.index(for:environmentAtIndex:)(&v28, a2, v41);
  if (BYTE8(v41[0]) != 255)
  {
    v39 = *&v41[0];
    v40 = BYTE8(v41[0]) & 1;
    v38 = v14;
    result = sub_19221DAB8(&v39, v41);
    if (v4)
    {
      return result;
    }

    v34 = v41[6];
    v35 = v41[7];
    v36 = v41[8];
    v37 = v42;
    v30 = v41[2];
    v31 = v41[3];
    v32 = v41[4];
    v33 = v41[5];
    v28 = v41[0];
    v29 = v41[1];
    v27 = *(v3 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
    v16 = v27;
    WidgetEnvironment.environmentValues(at:)(a2, v10);

    v17 = v43;
    if ((*(v43 + 48))(v10, 1, v11) != 1)
    {
      v19 = *(v17 + 32);
      v19(v13, v10, v11);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE8, &qword_192246FE0);
      v21 = *(v20 + 48);
      v22 = v35;
      *(a3 + 96) = v34;
      *(a3 + 112) = v22;
      *(a3 + 128) = v36;
      *(a3 + 144) = v37;
      v23 = v31;
      *(a3 + 32) = v30;
      *(a3 + 48) = v23;
      v24 = v33;
      *(a3 + 64) = v32;
      *(a3 + 80) = v24;
      v25 = v29;
      *a3 = v28;
      *(a3 + 16) = v25;
      v19((a3 + v21), v13, v11);
      return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
    }

    sub_19221E87C(&v28);
    sub_192033970(v10, &qword_1EADEF250, &qword_19222C6C0);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE8, &qword_192246FE0);
  return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
}

uint64_t ActivityArchivedViewCollection.archivedFamily.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityViewStates.Metadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t _s9WidgetKit30ActivityArchivedViewCollectionV0E5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a2 + 64);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v12 = *(a2 + 136);
  v13 = *(a2 + 144);
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    if (v14 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v15 = *(a2 + 8);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (*(a1 + 64) != 2)
  {
    v16 = *(a1 + 40);
    v30[0] = *(a1 + 24);
    v30[1] = v16;
    v17 = *(a1 + 56);
    v18 = *(a1 + 88);
    v33 = *(a1 + 72);
    v34[0] = v18;
    *(v34 + 15) = *(a1 + 103);
    v31 = v17;
    v32 = v2;
    if (v8 != 2)
    {
      v23 = v13;
      v24 = v7;
      v19 = *(a2 + 40);
      v25[0] = *(a2 + 24);
      v25[1] = v19;
      v20 = *(a2 + 56);
      v21 = *(a2 + 88);
      v28 = *(a2 + 72);
      v29[0] = v21;
      *(v29 + 15) = *(a2 + 103);
      v26 = v20;
      v27 = v8;
      if (_s9WidgetKit25ActivityViewEntryMetadataV2eeoiySbAC_ACtFZ_0(v30, v25))
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  v23 = *(a2 + 144);
  v24 = *(a1 + 144);
  if (*(a2 + 64) != 2)
  {
    return 0;
  }

LABEL_16:
  v35.origin.x = v3;
  v35.origin.y = v4;
  v35.size.width = v5;
  v35.size.height = v6;
  v36.origin.x = v9;
  v36.origin.y = v10;
  v36.size.width = v11;
  v36.size.height = v12;
  LODWORD(result) = CGRectEqualToRect(v35, v36);
  if (v24 == v23)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for ActivityArchivedViewCollection(uint64_t a1)
{
  result = qword_1EADECF70;
  if (!qword_1EADECF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19221E81C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_19221E8D4(uint64_t a1)
{
  sub_19221E970(319);
  if (v1 <= 0x3F)
  {
    sub_1922266C0();
    if (v2 <= 0x3F)
    {
      sub_19221EA5C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19221E970(uint64_t a1)
{
  if (!qword_1EADED120)
  {
    v4[0] = type metadata accessor for ActivityViewStates(255);
    v4[1] = type metadata accessor for JindoViewStates(255);
    v4[2] = sub_19205E1C4(&qword_1EADED138, type metadata accessor for ActivityViewStates, &unk_192244838);
    v4[3] = sub_19205E1C4(&qword_1EADED150, type metadata accessor for JindoViewStates, &unk_19223C540);
    v2 = type metadata accessor for CompositeViewStates.Metadata(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EADED120);
    }
  }
}

void sub_19221EA5C(uint64_t a1)
{
  if (!qword_1EADED000)
  {
    type metadata accessor for JindoArchivedViewCollection(255);
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADED000);
    }
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_19221EAF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19221EB40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19221EBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19221EC3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JindoViewStates.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19221ED04(uint64_t a1)
{
  v6 = *(a1 + 16);
  v4 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1);
  sub_1920C92D8();
  sub_1922267D0();
  return sub_19210F5E0(v5);
}

uint64_t sub_19221EDE8()
{
  v0 = type metadata accessor for TimelineReloadPolicy(0);
  __swift_allocate_value_buffer(v0, qword_1ED748AB0);
  v1 = __swift_project_value_buffer(v0, qword_1ED748AB0);
  v2 = sub_192225150();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_19221EEA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TimelineReloadPolicy(0);
  __swift_allocate_value_buffer(v3, qword_1ED74B570);
  v4 = __swift_project_value_buffer(v3, qword_1ED74B570);
  sub_1922250D0();
  v5 = sub_192225150();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  return sub_19221F810(v2, v4);
}

uint64_t sub_19221EFB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for TimelineReloadPolicy(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_192054E84(v7, a4);
}

uint64_t static TimelineReloadPolicy.after(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192225150();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_19221F0F0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_19221F178(uint64_t a1)
{
  v2 = sub_192055230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19221F1B4(uint64_t a1)
{
  v2 = sub_192055230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimelineReloadPolicy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2B00, &qword_192247268);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192055230();
  sub_192228B90();
  sub_192225150();
  sub_1920551EC(&qword_1ED74BB00, MEMORY[0x1E6969538]);
  sub_192228850();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19221F354(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2B00, &qword_192247268);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192055230();
  sub_192228B90();
  sub_192225150();
  sub_1920551EC(&qword_1ED74BB00, MEMORY[0x1E6969538]);
  sub_192228850();
  return (*(v3 + 8))(v5, v2);
}

BOOL _s9WidgetKit20TimelineReloadPolicyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBF0, &unk_192230908);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_192041788(a1, &v20 - v12);
  sub_192041788(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_192041788(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1920551EC(&qword_1EADEDEE8, MEMORY[0x1E6969550]);
      v18 = sub_192227910();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_192033970(v13, &qword_1EADEED10, &unk_19222B0F0);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_192033970(v13, &qword_1EADEFBF0, &unk_192230908);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_192033970(v13, &qword_1EADEED10, &unk_19222B0F0);
  return 1;
}

unint64_t sub_19221F7BC()
{
  result = qword_1EADF2B10;
  if (!qword_1EADF2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2B10);
  }

  return result;
}

uint64_t sub_19221F810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

float64_t ActivityMetrics.effectiveSizePixelAligned(with:)(double a1)
{
  v3 = v1[1].f64[1];
  v4 = vmulq_n_f64(*v1, v3);
  if (v3 != 1.0)
  {
    *&v4.f64[0] = *&vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(1.0 / a1 * 0.5), 0), v4), vdupq_lane_s64(COERCE__INT64(1.0 / a1), 0))), 1.0 / a1);
  }

  return v4.f64[0];
}

uint64_t queriesForExtensionPoint(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = objc_allocWithZone(MEMORY[0x1E6966CE0]);
  v3 = sub_192227930();
  v4 = [v2 initWithExtensionPointIdentifier_];

  [v4 setIncludeUpdatingApps_];
  v5 = v4;
  MEMORY[0x193B0AB00]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_192227BB0();
  }

  sub_192227C00();

  return v7;
}

uint64_t sub_19221FA40()
{
  result = sub_19221FA60();
  qword_1EADECCF8 = result;
  return result;
}

uint64_t sub_19221FA60()
{
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v0 = objc_allocWithZone(MEMORY[0x1E6966CE0]);

  v1 = sub_192227930();

  v2 = [v0 initWithExtensionPointIdentifier_];

  [v2 setIncludeUpdatingApps_];
  v3 = v2;
  MEMORY[0x193B0AB00]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_192227BB0();
  }

  sub_192227C00();

  sub_192167DE4(v6, v4);
  return v7;
}

double QueriesForWidgetExtensionPoints.getter()
{
  if (qword_1EADECCF0 != -1)
  {
    swift_once();
  }

  return result;
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
      [v5 addObject_];
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v8 = v5;
  sub_192227D50();

  sub_192228620();
  __break(1u);
}

void sub_19221FD6C()
{
  v0 = objc_opt_self();
  v1 = &unk_1F06C38D8;
  v2 = [v0 interfaceWithProtocol_];

  qword_1ED74A760 = v2;
}

uint64_t sub_19221FDD4()
{
  result = sub_19221FDF4();
  qword_1ED74C538 = result;
  return result;
}

uint64_t sub_19221FDF4()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_19202AE2C();
  inited = swift_initStackObject();
  *(inited + 32) = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(inited + 40) = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v1 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  v2 = v1;
  sub_192227D50();

  result = sub_192228620();
  __break(1u);
  return result;
}

id sub_192220F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  if (a1)
  {
    v9 = sub_192227B60();
  }

  else
  {
    v9 = 0;
  }

  sub_19218B864(a2, v8);
  v10 = sub_1922251B0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_192225170();
    (*(v11 + 8))(v8, v10);
  }

  v13 = type metadata accessor for _WidgetExtensionBaseContext();
  v17.receiver = v3;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithInputItems_contextUUID_, v9, v12);

  v15 = v14;
  sub_19218B8D4(a2);
  if (v15)
  {
  }

  return v15;
}

id sub_1922211F0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  if (a1)
  {
    v11 = sub_192227B60();
  }

  else
  {
    v11 = 0;
  }

  sub_19218B864(a3, v10);
  v12 = sub_1922251B0();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_192225170();
    (*(v13 + 8))(v10, v12);
  }

  v15 = type metadata accessor for _WidgetExtensionBaseContext();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithInputItems_listenerEndpoint_contextUUID_, v11, a2, v14);

  v17 = v16;
  sub_19218B8D4(a3);
  if (v17)
  {
  }

  return v17;
}

id sub_1922214D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _WidgetExtensionBaseContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192221594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2, a3);
}

uint64_t sub_1922216C0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_1922217E4;

  return v7(v2 + 6, a1, a2);
}

uint64_t sub_1922217E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1922218E0, 0, 0);
}

uint64_t sub_1922218E0()
{
  if (v0[3].receiver)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = type metadata accessor for WidgetRelevances(0, AssociatedTypeWitness, v2, v3);
    v5 = sub_192222BC8(v4);

    v6 = type metadata accessor for WidgetRelevanceFetchResult();
    v7 = objc_allocWithZone(v6);
    v7[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
    v9 = sub_19218BD8C(v5, v8);

    *&v7[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v9;
    v0[2].receiver = v7;
    v10 = v0 + 2;
  }

  else
  {
    v6 = type metadata accessor for WidgetRelevanceFetchResult();
    v11 = objc_allocWithZone(v6);
    v11[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 1;
    *&v11[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = sub_19218BD8C(MEMORY[0x1E69E7CC0], v12);
    v0[1].receiver = v11;
    v10 = v0 + 1;
  }

  v10->super_class = v6;
  v13 = [(objc_super *)v10 init];
  super_class = v0->super_class;

  return super_class(v13);
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit23DynamicIslandBackgroundV7StorageO(void *a1)
{
  v1 = a1[1] >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_192221A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v5(v4);
  return sub_192227570();
}

uint64_t sub_192221B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_192225AB0();
}

uint64_t sub_192221BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v15 = sub_192225AB0();
  (*(v8 + 16))(v10, a2, a4);
  sub_1922275B0();
  return v15;
}

uint64_t sub_192221D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v53 = a1;
  v57 = a4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BA8, &qword_192247720);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v46 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BB0, &qword_192247728);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v46 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BB8, &qword_192247730);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BC0, &qword_192247738);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BC8, &qword_192247740);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BD0, &qword_192247748);
  MEMORY[0x1EEE9AC00](v54);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BD8, &qword_192247750);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE0, &qword_192247758);
  MEMORY[0x1EEE9AC00](v55);
  v21 = &v46 - v20;
  v51 = a3;
  v22 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v32 = v51;
      v33 = v51 & 0x3FFFFFFFFFFFFFFFLL;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
      v35 = v47;
      (*(*(v34 - 8) + 16))(v47, v53, v34);
      v36 = v35 + *(v49 + 36);
      v37 = v52;
      *v36 = v52;
      *(v36 + 8) = v33;
      *(v36 + 16) = 256;
      sub_19202CFFC(v35, v7, &qword_1EADF2BA8, &qword_192247720);
      swift_storeEnumTagMultiPayload();
      sub_192101850(v37, v32);
      sub_192222610();
      sub_1922226F4();

      v38 = v50;
      sub_1922266E0();
      sub_19202CFFC(v38, v16, &qword_1EADF2BB8, &qword_192247730);
      swift_storeEnumTagMultiPayload();
      sub_1922227D8();
      sub_192222974();
      sub_1922266E0();

      sub_192033970(v38, &qword_1EADF2BB8, &qword_192247730);
      v29 = v35;
      v30 = &qword_1EADF2BA8;
      v31 = &qword_192247720;
    }

    else
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
      (*(*(v44 - 8) + 16))(v19, v53, v44);
      swift_storeEnumTagMultiPayload();
      sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760, MEMORY[0x1E697FDF8]);
      sub_192222890();
      sub_1922266E0();
      sub_19202CFFC(v21, v16, &qword_1EADF2BE0, &qword_192247758);
      swift_storeEnumTagMultiPayload();
      sub_1922227D8();
      sub_192222974();
      sub_1922266E0();
      v29 = v21;
      v30 = &qword_1EADF2BE0;
      v31 = &qword_192247758;
    }
  }

  else if (v22)
  {
    v39 = v52;

    v40 = sub_192226D10();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
    (*(*(v41 - 8) + 16))(v11, v53, v41);
    v42 = &v11[*(v9 + 36)];
    *v42 = v39;
    v42[8] = v40;
    sub_19202CFFC(v11, v7, &qword_1EADF2BC0, &qword_192247738);
    swift_storeEnumTagMultiPayload();
    sub_192222610();
    sub_1922226F4();

    v43 = v50;
    sub_1922266E0();
    sub_19202CFFC(v43, v16, &qword_1EADF2BB8, &qword_192247730);
    swift_storeEnumTagMultiPayload();
    sub_1922227D8();
    sub_192222974();
    sub_1922266E0();
    sub_1921018A0(v39, v51);
    sub_192033970(v43, &qword_1EADF2BB8, &qword_192247730);
    v29 = v11;
    v30 = &qword_1EADF2BC0;
    v31 = &qword_192247738;
  }

  else
  {
    v23 = v52;

    v50 = sub_1922275F0();
    v25 = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
    (*(*(v26 - 8) + 16))(v14, v53, v26);
    v27 = &v14[*(v12 + 36)];
    v28 = v50;
    *v27 = v23;
    v27[1] = v28;
    v27[2] = v25;
    sub_19202CFFC(v14, v19, &qword_1EADF2BC8, &qword_192247740);
    swift_storeEnumTagMultiPayload();
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760, MEMORY[0x1E697FDF8]);
    sub_192222890();

    sub_1922266E0();
    sub_19202CFFC(v21, v16, &qword_1EADF2BE0, &qword_192247758);
    swift_storeEnumTagMultiPayload();
    sub_1922227D8();
    sub_192222974();
    sub_1922266E0();
    sub_1921018A0(v23, v51);
    sub_192033970(v21, &qword_1EADF2BE0, &qword_192247758);
    v29 = v14;
    v30 = &qword_1EADF2BC8;
    v31 = &qword_192247740;
  }

  return sub_192033970(v29, v30, v31);
}

unint64_t sub_192222610()
{
  result = qword_1EADEDE38;
  if (!qword_1EADEDE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BC0, &qword_192247738);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADEDD00, &qword_1EADF2BF0, &qword_192247768, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE38);
  }

  return result;
}

unint64_t sub_1922226F4()
{
  result = qword_1EADEDE40;
  if (!qword_1EADEDE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BA8, &qword_192247720);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADEDD08, &qword_1EADF2BF8, &qword_192247770, MEMORY[0x1E6980458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE40);
  }

  return result;
}

unint64_t sub_1922227D8()
{
  result = qword_1EADEDD78;
  if (!qword_1EADEDD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BE0, &qword_192247758);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760, MEMORY[0x1E697FDF8]);
    sub_192222890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD78);
  }

  return result;
}

unint64_t sub_192222890()
{
  result = qword_1EADEDE30;
  if (!qword_1EADEDE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BC8, &qword_192247740);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADEDD80, &qword_1EADF2C00, &qword_192247778, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE30);
  }

  return result;
}

unint64_t sub_192222974()
{
  result = qword_1EADEDD70;
  if (!qword_1EADEDD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BB8, &qword_192247730);
    sub_192222610();
    sub_1922226F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD70);
  }

  return result;
}

uint64_t sub_192222A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 16))
  {
    return (*a1 + 16381);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_192222A78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_192222AF4(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

unint64_t sub_192222B34()
{
  result = qword_1EADEDD50;
  if (!qword_1EADEDD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2C08, &qword_192247818);
    sub_1922227D8();
    sub_192222974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD50);
  }

  return result;
}

uint64_t sub_192222BC8(uint64_t a1)
{
  v2 = *v1;
  v10[0] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C10, &qword_192247890);
  if (swift_dynamicCast())
  {
    v3 = sub_1922234D8(*&v7[0]);
  }

  else
  {
    v9 = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C18, &qword_192247898);
    if (swift_dynamicCast())
    {
      sub_19203832C(v7, v10);
      v4 = v11;
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v3 = (*(v5 + 8))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_192033970(v7, &qword_1EADF2C20, &qword_1922478A0);
      v10[0] = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C28, &qword_1922478A8);
      if (swift_dynamicCast())
      {
        v10[0] = *&v7[0];
        v3 = sub_192222D68();
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return v3;
}

uint64_t sub_192222D68()
{
  v1 = sub_192224CC0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v26 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C40, qword_1922478C8) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *v0;
  result = MEMORY[0x1E69E7CC0];
  if (*v0)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v14 = *(v12 + 16);
    if (v14)
    {
      v15 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v28 = (v2 + 32);
      v29 = MEMORY[0x1E69E7CC0];
      v30 = *(v9 + 72);
      v26 = v4;
      v27 = (v2 + 8);
      while (1)
      {
        sub_19202CFFC(v15, v11, &qword_1EADF2C40, qword_1922478C8);
        sub_19202CFFC(v11, v7, &qword_1EADF01C0, qword_1922329B0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        v16 = v7[1];
        if (!v16)
        {
          v22 = [objc_opt_self() ungrouped];
LABEL_12:
          v24 = [objc_allocWithZone(MEMORY[0x1E69943F8]) initWithAttribute:v22 intentReference:0];

          v25 = sub_192033970(v11, &qword_1EADF2C40, qword_1922478C8);
          if (v24)
          {
            MEMORY[0x193B0AB00](v25);
            if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_192227BB0();
            }

            sub_192227C00();
            v29 = v31;
          }

          goto LABEL_5;
        }

        if (v16 != 1)
        {
          v17 = *v7;
          v18 = objc_allocWithZone(MEMORY[0x1E6994400]);
          v19 = v5;
          v20 = v1;
          v21 = sub_192227930();
          sub_192163968(v17, v16);
          v22 = [v18 initWithNamedGroupIdentifier_];

          v1 = v20;
          v5 = v19;
          v4 = v26;
          goto LABEL_12;
        }

        sub_192033970(v11, &qword_1EADF2C40, qword_1922478C8);
LABEL_5:
        v15 += v30;
        if (!--v14)
        {
          return v29;
        }
      }

      (*v28)(v4, v7, v1);
      v23 = sub_192224CB0();
      v22 = [objc_allocWithZone(MEMORY[0x1E6994418]) initWithRelevantContext_];

      (*v27)(v4, v1);
      goto LABEL_12;
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_192223188(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for WidgetRelevanceEntry(255, *(v2 + 16), v3, v4);
  sub_192227C40();
  sub_19222348C();
  swift_getWitnessTable();
  return sub_192227A90();
}

void sub_192223278(uint64_t a1@<X1>, void *a3@<X8>)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_192224C70();
    sub_192224BE0();
    v7 = objc_allocWithZone(MEMORY[0x1E696E730]);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v8 = sub_192228980();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v9 = [v7 initWithAppBundleIdentifier:v6 linkAction:v8 linkActionMetadata:sub_192228980()];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v10 = [objc_allocWithZone(MEMORY[0x1E69942D0]) initWithIntent_];
    v13 = type metadata accessor for WidgetRelevanceEntry(0, a1, v11, v12);
    v14 = sub_19216370C(v13);
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x1E69943F8]) initWithAttribute:v14 intentReference:v10];
    }

    else
    {

      v16 = 0;
    }

    *a3 = v16;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_19222348C()
{
  result = qword_1ED74A910;
  if (!qword_1ED74A910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74A910);
  }

  return result;
}

id sub_1922234D8(uint64_t a1)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v41 = sub_192224CC0();
  v2 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C30, &qword_1922478B0);
  MEMORY[0x1EEE9AC00](v45);
  v6 = (&v34 - v5);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C38, &unk_1922478B8);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = (&v34 - v7);
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = (a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80)));
    v12 = objc_opt_self();
    v43 = v11;
    v13 = *v11;
    v47[0] = 0;
    v14 = [v12 _schemaDataFromIntent_error_];
    v15 = v14;
    if (v47[0])
    {
      v16 = v47[0];

      swift_willThrow();
    }

    else if (v14)
    {
      v38 = sub_192225080();
      v17 = v18;

      v35 = 0;
      goto LABEL_9;
    }

    v38 = 0;
    v35 = 0;
    v17 = 0xF000000000000000;
LABEL_9:
    v19 = 0;
    v47[0] = v10;
    v39 = (v2 + 8);
    v40 = (v2 + 32);
    v37 = v17;
    v42 = v17 >> 60;
    while (1)
    {
      v36 = v10;
      v20 = v19;
      while (1)
      {
        if (v20 >= v9)
        {
          __break(1u);
LABEL_33:
          __break(1u);
        }

        sub_19202CFFC(v43 + *(v46 + 72) * v20, v8, &qword_1EADF2C38, &unk_1922478B8);
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_33;
        }

        sub_19202CFFC(v8 + *(v44 + 28), v6, &qword_1EADF2C30, &qword_1922478B0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v26 = v41;
          (*v40)(v4, v6, v41);
          v27 = sub_192224CB0();
          v28 = [objc_allocWithZone(MEMORY[0x1E6994418]) initWithRelevantContext_];

          (*v39)(v4, v26);
          goto LABEL_23;
        }

        v25 = v6[1];
        if (!v25)
        {
          v28 = [objc_opt_self() ungrouped];
          goto LABEL_23;
        }

        if (v25 != 1)
        {
          break;
        }

        sub_192033970(v8, &qword_1EADF2C38, &unk_1922478B8);
LABEL_13:
        ++v20;
        if (v19 == v9)
        {
          v10 = v36;
          goto LABEL_30;
        }
      }

      v29 = *v6;
      v30 = objc_allocWithZone(MEMORY[0x1E6994400]);
      v31 = sub_192227930();
      sub_192163968(v29, v25);
      v28 = [v30 initWithNamedGroupIdentifier_];

LABEL_23:
      v32 = *v8;
      if (v42 <= 0xE)
      {
        v21 = sub_192225050();
      }

      else
      {
        v21 = 0;
      }

      v22 = [objc_allocWithZone(MEMORY[0x1E69942D0]) initWithIntent:v32 schemaData:v21];

      v23 = [objc_allocWithZone(MEMORY[0x1E69943F8]) initWithAttribute:v28 intentReference:v22];
      v24 = sub_192033970(v8, &qword_1EADF2C38, &unk_1922478B8);
      if (!v23)
      {
        goto LABEL_13;
      }

      MEMORY[0x193B0AB00](v24);
      if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v10 = v47[0];
      if (v19 == v9)
      {
LABEL_30:
        sub_192046ED4(v38, v37);
        return v10;
      }
    }
  }

  return v10;
}

void *EnvironmentValues._widgetRenderScheme.getter()
{
  sub_192041274();

  return sub_1922261E0();
}

void (*EnvironmentValues._widgetRenderScheme.modify(uint64_t *a1))(char **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_192041274();
  sub_1922261E0();
  return sub_192223B60;
}

void sub_192223B60(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = v3 != 1;
  v1[16] = v2;
  *(v1 + 3) = v3;
  sub_1922261F0();
  v1[16] = v4;
  sub_1920412C8();
  sub_1922261F0();
  v1[16] = v2;
  sub_19202F774();
  sub_1922261F0();

  free(v1);
}

uint64_t TimelineProviderContext.init(environmentVariants:family:isPreview:personaIdentifier:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  LOBYTE(a2) = *a2;
  *a6 = *a1;
  *(a6 + 8) = v17;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  v41 = a2;

  v20 = v16;

  sub_19206E384(&v41, &v42);
  *(a6 + 32) = v42;
  *(a6 + 33) = a2;
  *(a6 + 56) = a3;
  KeyPath = swift_getKeyPath();
  v22 = sub_192085490(KeyPath, v20, v17, v18, v19);

  if (v22)
  {
    if (*(v22 + 2))
    {
      v23 = *(v22 + 4);
    }

    else
    {
      v23 = 2.0;
    }
  }

  else
  {
    v23 = 2.0;
  }

  v24 = swift_getKeyPath();
  v25 = sub_192085D6C(v24, v20, v17, v18, v19);

  v26 = 0;
  if (!v25)
  {
    goto LABEL_16;
  }

  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  result = sub_192228340();
  if (!result)
  {
LABEL_15:

LABEL_16:
    v32 = 0;
LABEL_17:
    *(a6 + 64) = v26;
    *(a6 + 72) = v32;
    v33 = swift_getKeyPath();
    v34 = sub_192099884(v33);

    if (v34)
    {
      if (v34[2])
      {
        sub_19204154C(v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v12);

        sub_192224958(v12, v15);
LABEL_22:
        v36 = type metadata accessor for TimelineProviderContext(0);
        result = sub_192224958(v15, a6 + *(v36 + 40));
        v37 = v40;
        *(a6 + 40) = v39;
        *(a6 + 48) = v37;
        return result;
      }
    }

    v35 = sub_192224EA0();
    (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
    goto LABEL_22;
  }

LABEL_10:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x193B0B410](0, v25);
    goto LABEL_13;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v25 + 32);
LABEL_13:
    v29 = v28;

    [v29 _rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale_];
    v26 = v30;
    v32 = v31;

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_192224080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t _s9WidgetKit23TimelineProviderContextV19EnvironmentVariantsV13dynamicMemberSayxGSgs15WritableKeyPathCy7SwiftUI0F6ValuesVxG_tcluig_0(uint64_t *a1)
{
  v55 = *a1;
  v3 = sub_192225A40();
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  sub_1922282D0();
  KeyPath = swift_getKeyPath();
  v10 = MEMORY[0x193B0B270](a1, KeyPath);

  if (v10)
  {
    result = 0;
    if (!v6)
    {
      return result;
    }

    sub_1922252A0();
LABEL_10:

    return sub_1922286F0();
  }

  v12 = swift_getKeyPath();
  v13 = MEMORY[0x193B0B270](a1, v12);

  if (v13)
  {
    result = 0;
    if (!v8)
    {
      return result;
    }

    sub_1922252C0();
    goto LABEL_10;
  }

  v14 = swift_getKeyPath();
  v15 = MEMORY[0x193B0B270](a1, v14);

  if (v15)
  {
    result = 0;
    if (!v7)
    {
      return result;
    }

    sub_192225C60();
    goto LABEL_10;
  }

  v16 = swift_getKeyPath();
  v17 = MEMORY[0x193B0B270](a1, v16);

  if ((v17 & 1) == 0)
  {
    v29 = swift_getKeyPath();
    v30 = MEMORY[0x193B0B270](a1, v29);

    if ((v30 & 1) == 0)
    {
      return sub_1920BD420(a1);
    }

    v31 = swift_getKeyPath();
    v20 = sub_19206FF50(v31);

    if (v20)
    {
      v19 = v20 & 0xFFFFFFFFFFFFFF8;
      if (v20 >> 62)
      {
        goto LABEL_50;
      }

      v32 = v20;
      v33 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_30;
      }

      goto LABEL_51;
    }

    return 0;
  }

  v18 = swift_getKeyPath();
  v3 = sub_19206FF50(v18);

  if (!v3)
  {
    return 0;
  }

  if (v3 >> 62)
  {
    goto LABEL_47;
  }

  v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_51:

    v46 = sub_1922286F0();

    return v46;
  }

  while (1)
  {
    v57[0] = MEMORY[0x1E69E7CC0];
    v20 = v57;
    sub_192085D4C(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v22 = v57[0];
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193B0B410](v21, v3);
        }

        else
        {
          v23 = *(v3 + 8 * v21 + 32);
        }

        v24 = v23;
        [v23 scale];
        v26 = v25;

        v57[0] = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_192085D4C((v27 > 1), v28 + 1, 1);
          v22 = v57[0];
        }

        ++v21;
        *(v22 + 16) = v28 + 1;
        *(v22 + 8 * v28 + 32) = v26;
      }

      while (v19 != v21);
      goto LABEL_51;
    }

    __break(1u);
LABEL_50:
    v32 = v20;
    v33 = sub_192228340();
    if (!v33)
    {
      goto LABEL_51;
    }

LABEL_30:
    v49 = v19;
    v58 = MEMORY[0x1E69E7CC0];
    v34 = sub_19209AC60(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      break;
    }

    v35 = 0;
    v36 = v58;
    v37 = v32;
    v53 = v32 & 0xC000000000000001;
    v50 = *MEMORY[0x1E697DE20];
    v38 = (v54 + 104);
    v52 = *MEMORY[0x1E697DE28];
    v51 = v54 + 32;
    v39 = v37;
    while (1)
    {
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v53)
      {
        v41 = MEMORY[0x193B0B410](v35);
      }

      else
      {
        if (v35 >= *(v49 + 16))
        {
          goto LABEL_46;
        }

        v41 = *(v37 + 8 * v35 + 32);
      }

      v42 = v41;
      v34 = [v41 colorGamut];
      v43 = v52;
      if (v34)
      {
        v43 = v50;
        if (v34 != 1)
        {
          goto LABEL_54;
        }
      }

      (*v38)(v5, v43, v3);
      v58 = v36;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_19209AC60((v44 > 1), v45 + 1, 1);
        v36 = v58;
      }

      *(v36 + 16) = v45 + 1;
      (*(v54 + 32))(v36 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45, v5, v3);
      ++v35;
      v37 = v39;
      if (v40 == v33)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v19 = sub_192228340();
    if (!v19)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_54:
  v57[0] = 0;
  v57[1] = 0xE000000000000000;
  v47 = v34;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000025, 0x800000019224F0C0);
  v56 = v47;
  type metadata accessor for CHSDisplayGamut(0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

double TimelineProviderContext.environmentVariants.getter@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v3;

  return result;
}

uint64_t TimelineProviderContext.chsWidgetFamily.getter()
{
  v1 = *(v0 + 33);
  if (v1 <= 0xC)
  {
    return qword_192247C38[v1];
  }

  result = sub_192228990();
  __break(1u);
  return result;
}

uint64_t TimelineProviderContext.personaIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TimelineProviderContext.idealizedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimelineProviderContext(0) + 40);

  return sub_19204154C(v3, a1);
}

uint64_t sub_192224958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1922249F0(uint64_t a1)
{
  sub_192224ABC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_19214347C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_192224ABC()
{
  if (!qword_1ED74B590)
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74B590);
    }
  }
}