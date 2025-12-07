IntelligencePlatformCore::PersonalKnowledgeResult::AnswerAttribute_optional __swiftcall PersonalKnowledgeResult.AnswerAttribute.init(rawValue:)(Swift::String rawValue)
{
  sub_1C440245C();
  v2 = sub_1C4F029A8();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

IntelligencePlatformCore::PersonalKnowledgeResult::AnswerValueType_optional __swiftcall PersonalKnowledgeResult.AnswerValueType.init(rawValue:)(Swift::String rawValue)
{
  sub_1C440245C();
  v2 = sub_1C4F025D8();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C4A9D6B4()
{
  result = qword_1EC0C27A8;
  if (!qword_1EC0C27A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C27A8);
  }

  return result;
}

uint64_t sub_1C4A9D700(uint64_t a1)
{
  sub_1C4AA12AC();

  return sub_1C4EF9058();
}

uint64_t sub_1C4A9D74C(uint64_t a1)
{
  v2 = sub_1C4AA12AC();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

uint64_t sub_1C4A9D79C(uint64_t a1)
{
  v2 = sub_1C4813E28();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1C4A9D7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C44A7DA0;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1C4A9D8B0(uint64_t a1)
{
  v2 = sub_1C4A9F510();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1C4A9D8FC()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C4EF97C8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4EF92B8();
  sub_1C44F9918(v4, qword_1EC0C26E8);
  sub_1C442B738(v4, qword_1EC0C26E8);
  sub_1C4EF97B8();
  sub_1C440BAA8(v2, 1, 1, v3);
  return sub_1C4EF92A8();
}

uint64_t static PersonalKnowledgeResult.AnswerAttribute.typeDisplayRepresentation.modify(__n128 a1)
{
  if (qword_1EC0B7050 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4EF92B8();
  v2 = sub_1C442B738(v1, qword_1EC0C26E8);
  sub_1C4404618(v2);
  return sub_1C443598C();
}

uint64_t sub_1C4A9DB00@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  sub_1C4A9EA98(a1, a2, a3, a5);
  sub_1C4418504();
  swift_beginAccess();
  sub_1C4EF92B8();
  sub_1C43FBCE0();
  return (*(v7 + 16))(a4, v5);
}

uint64_t sub_1C4A9DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  sub_1C4A9EA98(a5, a6, a7, a8);
  sub_1C4418504();
  swift_beginAccess();
  sub_1C4EF92B8();
  sub_1C43FBCE0();
  (*(v10 + 24))(v8, a1);
  return swift_endAccess();
}

void static PersonalKnowledgeResult.AnswerAttribute.caseDisplayRepresentations.getter()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&qword_1EC0C27B8, &unk_1C4F4BA40);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4418964();
  v3 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C444FF34();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v6 = sub_1C456902C(&qword_1EC0C27C8, &qword_1C4F4BA50);
  sub_1C456902C(&qword_1EC0C27D0, &qword_1C4F4BA58);
  sub_1C441E63C();
  v8 = *(v7 + 72);
  sub_1C444B23C();
  v9 = swift_allocObject();
  sub_1C442BE4C(v9, xmmword_1C4F17CE0);
  sub_1C4EF97B8();
  sub_1C4400B14();
  sub_1C4EF9238();
  sub_1C440B0C8();
  sub_1C440E674();
  sub_1C4425388();
  sub_1C4434688(0x20746361746E6F43, 1868983913);
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C441BC10();
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C443F320();
  *v6 = 3;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  v10 = (v0 + 4 * v8);
  *v10 = 4;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C443F320();
  *v10 = 5;
  sub_1C4422434(0x656D616E7473614CLL);
  sub_1C441A1F0();
  sub_1C440FA64(6);
  sub_1C4422434(0x7961646874726942);
  sub_1C441A1F0();
  sub_1C443F320();
  *v10 = 7;
  sub_1C4434688(0x756E20656E6F6850, 1919246957);
  sub_1C441A1F0();
  v11 = (v0 + 8 * v8);
  *v11 = 8;
  sub_1C4434688(0x6E6F6974616C6552, 1885956211);
  sub_1C441A1F0();
  sub_1C443F320();
  *v11 = 9;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C440FA64(10);
  sub_1C441C440(0x61636F4Cu);
  sub_1C441A1F0();
  sub_1C440FA64(11);
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C440FA64(12);
  sub_1C4422434(0x7473657265746E49);
  sub_1C441A1F0();
  sub_1C440FA64(13);
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C440FA64(14);
  sub_1C4422434(0x6574616420646E45);
  sub_1C441A1F0();
  sub_1C443F320();
  *v11 = 15;
  sub_1C441C440(0x61727544u);
  sub_1C441A1F0();
  *(v0 + 16 * v8) = 16;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  *(v0 + 17 * v8) = 17;
  sub_1C4434688(0x6574614320707041, 2037542759);
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C4EF9258();
  sub_1C4A9F158();
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

uint64_t PersonalKnowledgeResult.AnswerAttribute.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x746E657665;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6D614E7473726966;
      break;
    case 5:
      result = 0x656D614E7473616CLL;
      break;
    case 6:
      result = 0x7961646874726962;
      break;
    case 7:
      result = 0x6D754E656E6F6870;
      break;
    case 8:
      result = sub_1C44691F4(0x616C6572u);
      break;
    case 9:
      result = 0x746361746E6F63;
      break;
    case 0xA:
      result = sub_1C44691F4(0x61636F6Cu);
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x7473657265746E69;
      break;
    case 0xD:
      result = 0x7461447472617473;
      break;
    case 0xE:
      result = 0x65746144646E65;
      break;
    case 0xF:
      result = sub_1C44691F4(0x61727564u);
      break;
    case 0x10:
      result = 0x69746E6565726373;
      break;
    case 0x11:
      result = 0x6765746143707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A9E298@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeResult.AnswerAttribute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4A9E2C4(uint64_t a1)
{
  v2 = sub_1C4A9C130();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C4A9E314(uint64_t a1)
{
  v2 = sub_1C4A9F870();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1C4A9E370()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C4EF97C8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4EF92B8();
  sub_1C44F9918(v4, qword_1EC0C2700);
  sub_1C442B738(v4, qword_1EC0C2700);
  sub_1C4EF97B8();
  sub_1C440BAA8(v2, 1, 1, v3);
  return sub_1C4EF92A8();
}

uint64_t static PersonalKnowledgeResult.AnswerValueType.typeDisplayRepresentation.modify(__n128 a1)
{
  if (qword_1EC0B7058 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4EF92B8();
  v2 = sub_1C442B738(v1, qword_1EC0C2700);
  sub_1C4404618(v2);
  return sub_1C443598C();
}

void static PersonalKnowledgeResult.AnswerValueType.caseDisplayRepresentations.getter()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&qword_1EC0C27B8, &unk_1C4F4BA40);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4418964();
  v3 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C444FF34();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v6 = sub_1C456902C(&qword_1EC0C27E0, &qword_1C4F4BA60);
  sub_1C456902C(&qword_1EC0C27E8, &qword_1C4F4BA68);
  sub_1C441E63C();
  v8 = *(v7 + 72);
  sub_1C444B23C();
  v9 = swift_allocObject();
  sub_1C442BE4C(v9, xmmword_1C4F13950);
  sub_1C4EF97B8();
  sub_1C4400B14();
  sub_1C4EF9238();
  sub_1C440B0C8();
  sub_1C440E674();
  sub_1C4425388();
  sub_1C4EF97B8();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C441BC10();
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C443F320();
  *v6 = 3;
  sub_1C441C440(0x61727544u);
  sub_1C441A1F0();
  *(v0 + 4 * v8) = 4;
  sub_1C4EF97B8();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C4EF9258();
  sub_1C4A9F1AC();
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

uint64_t PersonalKnowledgeResult.AnswerValueType.rawValue.getter()
{
  result = 0x676E69727473;
  switch(*v0)
  {
    case 1:
      result = 0x72656765746E69;
      break;
    case 2:
      result = 0x656C62756F64;
      break;
    case 3:
      result = sub_1C44691F4(0x61727564u);
      break;
    case 4:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A9E888@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeResult.AnswerValueType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4A9E8B4(uint64_t a1)
{
  v2 = sub_1C4A9C0DC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C4A9E904(uint64_t a1)
{
  v2 = sub_1C4A9FC38();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1C4A9E960()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C4EF97C8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4EF92B8();
  sub_1C44F9918(v4, qword_1EC0C2718);
  sub_1C442B738(v4, qword_1EC0C2718);
  sub_1C4EF97B8();
  sub_1C440BAA8(v2, 1, 1, v3);
  return sub_1C4EF92A8();
}

uint64_t sub_1C4A9EA98(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4EF92B8();

  return sub_1C442B738(v5, a2);
}

uint64_t sub_1C4A9EB14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4EF92B8();
  sub_1C442B738(v7, a2);
  sub_1C4418504();
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, a2, v7);
}

uint64_t sub_1C4A9EBDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4EF92B8();
  sub_1C442B738(v7, a3);
  sub_1C4418504();
  swift_beginAccess();
  v8 = *(v7 - 8);
  (*(v8 + 24))(a3, a1, v7);
  swift_endAccess();
  return (*(v8 + 8))(a1, v7);
}

uint64_t static PersonalKnowledgeResult.AnswerComputation.typeDisplayRepresentation.modify(__n128 a1)
{
  if (qword_1EC0B7060 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4EF92B8();
  v2 = sub_1C442B738(v1, qword_1EC0C2718);
  sub_1C4404618(v2);
  return sub_1C443598C();
}

void static PersonalKnowledgeResult.AnswerComputation.caseDisplayRepresentations.getter()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&qword_1EC0C27B8, &unk_1C4F4BA40);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4418964();
  v3 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C444FF34();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&qword_1EC0C27F8, &qword_1C4F4BA70);
  sub_1C456902C(&qword_1EC0C2800, &qword_1C4F4BA78);
  sub_1C441E63C();
  v7 = *(v6 + 72);
  sub_1C444B23C();
  v8 = swift_allocObject();
  sub_1C442BE4C(v8, xmmword_1C4F0D480);
  sub_1C4EF97B8();
  sub_1C4400B14();
  sub_1C4EF9238();
  sub_1C440B0C8();
  sub_1C440E674();
  sub_1C4425388();
  sub_1C4EF97B8();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C441BC10();
  sub_1C4EF97B8();
  sub_1C441A1F0();
  *(v0 + 3 * v7) = 3;
  sub_1C4434688(0x6320657571696E55, 1953396079);
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C4EF9258();
  sub_1C4A9F200();
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

IntelligencePlatformCore::PersonalKnowledgeResult::AnswerComputation_optional __swiftcall PersonalKnowledgeResult.AnswerComputation.init(rawValue:)(Swift::String rawValue)
{
  sub_1C440245C();
  v2 = sub_1C4F025D8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t PersonalKnowledgeResult.AnswerComputation.rawValue.getter()
{
  result = 7173491;
  switch(*v0)
  {
    case 1:
      result = 6780513;
      break;
    case 2:
      result = 0x746E756F63;
      break;
    case 3:
      result = 0x756F635F71696E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A9F080@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeResult.AnswerComputation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4A9F0AC(uint64_t a1)
{
  v2 = sub_1C4A9C184();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C4A9F0FC(uint64_t a1)
{
  v2 = sub_1C4AA0000();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C4A9F158()
{
  result = qword_1EC0C27D8;
  if (!qword_1EC0C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C27D8);
  }

  return result;
}

unint64_t sub_1C4A9F1AC()
{
  result = qword_1EC0C27F0;
  if (!qword_1EC0C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C27F0);
  }

  return result;
}

unint64_t sub_1C4A9F200()
{
  result = qword_1EC0C2808;
  if (!qword_1EC0C2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2808);
  }

  return result;
}

unint64_t sub_1C4A9F25C()
{
  result = qword_1EC0C2810;
  if (!qword_1EC0C2810)
  {
    sub_1C4EF9D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2810);
  }

  return result;
}

unint64_t sub_1C4A9F2B8()
{
  result = qword_1EC0C2818;
  if (!qword_1EC0C2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2818);
  }

  return result;
}

unint64_t sub_1C4A9F310()
{
  result = qword_1EC0C2820;
  if (!qword_1EC0C2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2820);
  }

  return result;
}

unint64_t sub_1C4A9F368()
{
  result = qword_1EC0C2828;
  if (!qword_1EC0C2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2828);
  }

  return result;
}

unint64_t sub_1C4A9F410()
{
  result = qword_1EC0C2840;
  if (!qword_1EC0C2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2840);
  }

  return result;
}

unint64_t sub_1C4A9F464()
{
  result = qword_1EC0C2848;
  if (!qword_1EC0C2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2848);
  }

  return result;
}

unint64_t sub_1C4A9F4B8()
{
  result = qword_1EC0C2850;
  if (!qword_1EC0C2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2850);
  }

  return result;
}

unint64_t sub_1C4A9F510()
{
  result = qword_1EC0C2858;
  if (!qword_1EC0C2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2858);
  }

  return result;
}

unint64_t sub_1C4A9F5AC()
{
  result = qword_1EC0C2870;
  if (!qword_1EC0C2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2870);
  }

  return result;
}

unint64_t sub_1C4A9F604()
{
  result = qword_1EC0C2878;
  if (!qword_1EC0C2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2878);
  }

  return result;
}

unint64_t sub_1C4A9F65C()
{
  result = qword_1EC0C2880;
  if (!qword_1EC0C2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2880);
  }

  return result;
}

unint64_t sub_1C4A9F6B4()
{
  result = qword_1EC0C2888;
  if (!qword_1EC0C2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2888);
  }

  return result;
}

unint64_t sub_1C4A9F70C()
{
  result = qword_1EC0C2890;
  if (!qword_1EC0C2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2890);
  }

  return result;
}

unint64_t sub_1C4A9F770()
{
  result = qword_1EC0C2898;
  if (!qword_1EC0C2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2898);
  }

  return result;
}

unint64_t sub_1C4A9F7C4()
{
  result = qword_1EC0C28A0;
  if (!qword_1EC0C28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28A0);
  }

  return result;
}

unint64_t sub_1C4A9F818()
{
  result = qword_1EC0C28A8;
  if (!qword_1EC0C28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28A8);
  }

  return result;
}

unint64_t sub_1C4A9F870()
{
  result = qword_1EC0C28B0;
  if (!qword_1EC0C28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28B0);
  }

  return result;
}

unint64_t sub_1C4A9F8E0()
{
  result = qword_1EC0C28B8;
  if (!qword_1EC0C28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28B8);
  }

  return result;
}

unint64_t sub_1C4A9F938()
{
  result = qword_1EC0C28C0;
  if (!qword_1EC0C28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28C0);
  }

  return result;
}

unint64_t sub_1C4A9F9D8()
{
  result = qword_1EC0C28D8;
  if (!qword_1EC0C28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28D8);
  }

  return result;
}

unint64_t sub_1C4A9FA30()
{
  result = qword_1EC0C28E0;
  if (!qword_1EC0C28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28E0);
  }

  return result;
}

unint64_t sub_1C4A9FA88()
{
  result = qword_1EC0C28E8;
  if (!qword_1EC0C28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28E8);
  }

  return result;
}

unint64_t sub_1C4A9FAE0()
{
  result = qword_1EC0C28F0;
  if (!qword_1EC0C28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28F0);
  }

  return result;
}

unint64_t sub_1C4A9FB38()
{
  result = qword_1EC0C28F8;
  if (!qword_1EC0C28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28F8);
  }

  return result;
}

unint64_t sub_1C4A9FB8C()
{
  result = qword_1EC0C2900;
  if (!qword_1EC0C2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2900);
  }

  return result;
}

unint64_t sub_1C4A9FBE0()
{
  result = qword_1EC0C2908;
  if (!qword_1EC0C2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2908);
  }

  return result;
}

unint64_t sub_1C4A9FC38()
{
  result = qword_1EC0C2910;
  if (!qword_1EC0C2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2910);
  }

  return result;
}

unint64_t sub_1C4A9FCA8()
{
  result = qword_1EC0C2918;
  if (!qword_1EC0C2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2918);
  }

  return result;
}

unint64_t sub_1C4A9FD00()
{
  result = qword_1EC0C2920;
  if (!qword_1EC0C2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2920);
  }

  return result;
}

unint64_t sub_1C4A9FDA0()
{
  result = qword_1EC0C2938;
  if (!qword_1EC0C2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2938);
  }

  return result;
}

unint64_t sub_1C4A9FDF8()
{
  result = qword_1EC0C2940;
  if (!qword_1EC0C2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2940);
  }

  return result;
}

unint64_t sub_1C4A9FE50()
{
  result = qword_1EC0C2948;
  if (!qword_1EC0C2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2948);
  }

  return result;
}

unint64_t sub_1C4A9FEA8()
{
  result = qword_1EC0C2950;
  if (!qword_1EC0C2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2950);
  }

  return result;
}

unint64_t sub_1C4A9FF00()
{
  result = qword_1EC0C2958;
  if (!qword_1EC0C2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2958);
  }

  return result;
}

unint64_t sub_1C4A9FF54()
{
  result = qword_1EC0C2960;
  if (!qword_1EC0C2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2960);
  }

  return result;
}

unint64_t sub_1C4A9FFA8()
{
  result = qword_1EC0C2968;
  if (!qword_1EC0C2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2968);
  }

  return result;
}

unint64_t sub_1C4AA0000()
{
  result = qword_1EC0C2970;
  if (!qword_1EC0C2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2970);
  }

  return result;
}

unint64_t sub_1C4AA00C4()
{
  result = qword_1EC0C2978;
  if (!qword_1EC0C2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2978);
  }

  return result;
}

unint64_t sub_1C4AA011C()
{
  result = qword_1EC0C2980;
  if (!qword_1EC0C2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2980);
  }

  return result;
}

uint64_t sub_1C4AA01C0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1C4AA0200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeResult.AnswerAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeResult.AnswerValueType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeResult.AnswerComputation(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C4AA0500(uint64_t a1, uint64_t a2, unint64_t a3)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F01438();
  if ((v4 & 0x1000000000000000) != 0)
  {
    v34 = sub_1C4404C28();
    v5 = sub_1C4AA0E70(v34, v35);
    v37 = v36;

    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      sub_1C4404C28();
      sub_1C4F022F8();
    }

    sub_1C444151C();
    if (v23)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          sub_1C4432864();
          if (v16)
          {
            while (1)
            {
              sub_1C4415BC4();
              if (v13 && v20 < v18)
              {
                v21 = -48;
              }

              else if (v20 < 0x41 || v20 >= v17)
              {
                sub_1C441EE78();
                if (!v13 || v20 >= v22)
                {
                  goto LABEL_129;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }

              if (is_mul_ok(v19, a3) && !__CFADD__(v19 * a3, (v20 + v21)))
              {
                sub_1C4410514();
                if (!v23)
                {
                  continue;
                }
              }

              goto LABEL_129;
            }
          }
        }

        goto LABEL_129;
      }

      goto LABEL_132;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        sub_1C44365E8();
        if (v24 ^ v25 | v23)
        {
          v27 = v30;
        }

        if (v24 ^ v25 | v23)
        {
          v28 = 65;
        }

        if (!(v24 ^ v25 | v23))
        {
          v29 = 58;
        }

        if (v26)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v26;
            if (v32 < 0x30 || v32 >= v29)
            {
              if (v32 < 0x41 || v32 >= v28)
              {
                if (v32 < 0x61 || v32 >= v27)
                {
                  goto LABEL_129;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            if (is_mul_ok(v31, a3) && !__CFADD__(v31 * a3, (v32 + v33)))
            {
              v26 = sub_1C441AFD4(v26);
              if (!v23)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_129;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        sub_1C4432864();
        if (v8)
        {
          while (1)
          {
            sub_1C4415BC4();
            if (v13 && v12 < v10)
            {
              v14 = -48;
            }

            else if (v12 < 0x41 || v12 >= v9)
            {
              sub_1C441EE78();
              if (!v13 || v12 >= v15)
              {
                break;
              }

              v14 = -87;
            }

            else
            {
              v14 = -55;
            }

            if (is_mul_ok(v11, a3) && v11 * a3 >= (v12 + v14))
            {
              sub_1C4410514();
              if (!v23)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_129:

      return;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  sub_1C4441178();
  if (!v23)
  {
    if (v39 != 45)
    {
      if (v38)
      {
        sub_1C44200A0();
        while (1)
        {
          sub_1C4415BC4();
          if (v13 && v55 < v54)
          {
            v56 = -48;
          }

          else if (v55 < 0x41 || v55 >= v53)
          {
            sub_1C441EE78();
            if (!v13 || v55 >= v57)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }

          if (is_mul_ok(v52, a3) && !__CFADD__(v52 * a3, (v55 + v56)))
          {
            sub_1C4410514();
            if (!v23)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    if (v38)
    {
      if (v38 != 1)
      {
        sub_1C44200A0();
        sub_1C4416358();
        while (1)
        {
          sub_1C4415BC4();
          if (v13 && v43 < v42)
          {
            v44 = -48;
          }

          else if (v43 < 0x41 || v43 >= v41)
          {
            sub_1C441EE78();
            if (!v13 || v43 >= v45)
            {
              goto LABEL_129;
            }

            v44 = -87;
          }

          else
          {
            v44 = -55;
          }

          if (is_mul_ok(v40, a3) && v40 * a3 >= (v43 + v44))
          {
            sub_1C4410514();
            if (!v23)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    goto LABEL_131;
  }

  if (v38)
  {
    if (v38 != 1)
    {
      sub_1C44200A0();
      sub_1C4416358();
      while (1)
      {
        sub_1C4415BC4();
        if (v13 && v49 < v48)
        {
          v50 = -48;
        }

        else if (v49 < 0x41 || v49 >= v47)
        {
          sub_1C441EE78();
          if (!v13 || v49 >= v51)
          {
            goto LABEL_129;
          }

          v50 = -87;
        }

        else
        {
          v50 = -55;
        }

        if (is_mul_ok(v46, a3) && !__CFADD__(v46 * a3, (v49 + v50)))
        {
          sub_1C4410514();
          if (!v23)
          {
            continue;
          }
        }

        goto LABEL_129;
      }
    }

    goto LABEL_129;
  }

LABEL_133:
  __break(1u);
}

void sub_1C4AA09B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F01438();
  if ((v4 & 0x1000000000000000) != 0)
  {
    v46 = sub_1C4404C28();
    v5 = sub_1C4AA0E70(v46, v47);
    v49 = v48;

    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      sub_1C4404C28();
      sub_1C4F022F8();
    }

    sub_1C444151C();
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          sub_1C4432864();
          if (v23 ^ v24 | v22)
          {
            v27 = 65;
          }

          if (!(v23 ^ v24 | v22))
          {
            v28 = 58;
          }

          if (v25)
          {
            v29 = 0;
            v30 = (v25 + 1);
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v28)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  sub_1C441EE78();
                  if (!v20 || v31 >= v33)
                  {
                    goto LABEL_137;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v34 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v34 + (v31 + v32);
                if (!__OFADD__(v34, (v31 + v32)))
                {
                  ++v30;
                  if (--v26)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_137;
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_140;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        sub_1C44365E8();
        if (v36 ^ v37 | v35)
        {
          v39 = v42;
        }

        if (v36 ^ v37 | v35)
        {
          v40 = 65;
        }

        if (!(v36 ^ v37 | v35))
        {
          v41 = 58;
        }

        if (v38)
        {
          v43 = 0;
          while (1)
          {
            v44 = *v38;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                if (v44 < 0x61 || v44 >= v39)
                {
                  goto LABEL_137;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if ((v43 * a3) >> 64 == (v43 * a3) >> 63 && !__OFADD__(v43 * a3, (v44 + v45)))
            {
              v38 = sub_1C441AFD4(v38);
              if (!v8)
              {
                continue;
              }
            }

            goto LABEL_137;
          }
        }
      }

      goto LABEL_137;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        sub_1C4432864();
        if (v9 ^ v10 | v8)
        {
          v13 = 65;
        }

        if (!(v9 ^ v10 | v8))
        {
          v14 = 58;
        }

        if (v11)
        {
          v15 = 0;
          v16 = (v11 + 1);
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v14)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                sub_1C441EE78();
                if (!v20 || v17 >= v19)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v21 = v15 * a3;
            if ((v15 * a3) >> 64 == (v15 * a3) >> 63)
            {
              v15 = v21 - (v17 + v18);
              if (!__OFSUB__(v21, (v17 + v18)))
              {
                ++v16;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_137:

      return;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  sub_1C4441178();
  if (!v8)
  {
    if (v51 != 45)
    {
      if (v50)
      {
        sub_1C44200A0();
        while (1)
        {
          sub_1C4415BC4();
          if (v20 && v67 < v66)
          {
            v68 = -48;
          }

          else if (v67 < 0x41 || v67 >= v65)
          {
            sub_1C441EE78();
            if (!v20 || v67 >= v69)
            {
              goto LABEL_137;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }

          if ((v64 * a3) >> 64 == (v64 * a3) >> 63 && !__OFADD__(v64 * a3, (v67 + v68)))
          {
            sub_1C4410514();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (v50)
    {
      if (v50 != 1)
      {
        sub_1C44200A0();
        sub_1C4416358();
        while (1)
        {
          sub_1C4415BC4();
          if (v20 && v55 < v54)
          {
            v56 = -48;
          }

          else if (v55 < 0x41 || v55 >= v53)
          {
            sub_1C441EE78();
            if (!v20 || v55 >= v57)
            {
              goto LABEL_137;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }

          if ((v52 * a3) >> 64 == (v52 * a3) >> 63 && !__OFSUB__(v52 * a3, (v55 + v56)))
          {
            sub_1C4410514();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_139;
  }

  if (v50)
  {
    if (v50 != 1)
    {
      sub_1C44200A0();
      sub_1C4416358();
      while (1)
      {
        sub_1C4415BC4();
        if (v20 && v61 < v60)
        {
          v62 = -48;
        }

        else if (v61 < 0x41 || v61 >= v59)
        {
          sub_1C441EE78();
          if (!v20 || v61 >= v63)
          {
            goto LABEL_137;
          }

          v62 = -87;
        }

        else
        {
          v62 = -55;
        }

        if ((v58 * a3) >> 64 == (v58 * a3) >> 63 && !__OFADD__(v58 * a3, (v61 + v62)))
        {
          sub_1C4410514();
          if (!v8)
          {
            continue;
          }
        }

        goto LABEL_137;
      }
    }

    goto LABEL_137;
  }

LABEL_141:
  __break(1u);
}

uint64_t sub_1C4AA0E70(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C4AA0ED8(sub_1C49B181C, 0, a1, a2);
  v6 = sub_1C4AA0F0C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C4AA0F0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C4F01F78();
    if (!v9 || (v10 = v9, v11 = sub_1C4434A7C(v9, 0), v12 = sub_1C4AA106C(v14, (v11 + 4), v10, a1, a2, a3, a4), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), , v12 == v10))
    {
      v13 = sub_1C4F01268();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C4F01268();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C4F022F8();
LABEL_4:

  return sub_1C4F01268();
}

unint64_t sub_1C4AA106C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1C4B9AAA8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C4F01398();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C4F022F8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1C4B9AAA8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1C4F01368();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1C4AA12AC()
{
  result = qword_1EC0C2998;
  if (!qword_1EC0C2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2998);
  }

  return result;
}

uint64_t sub_1C4AA1334()
{
  v0 = sub_1C4EF97C8();
  sub_1C44F9918(v0, qword_1EC0C29A0);
  sub_1C442B738(v0, qword_1EC0C29A0);
  return sub_1C4EF97B8();
}

uint64_t sub_1C4AA1398()
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248(&qword_1EC0B7068);
  }

  v0 = sub_1C4EF97C8();

  return sub_1C442B738(v0, qword_1EC0C29A0);
}

uint64_t static PersonalKnowledgeTool.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248(&qword_1EC0B7068);
  }

  v2 = sub_1C4EF97C8();
  v3 = sub_1C442B738(v2, qword_1EC0C29A0);
  swift_beginAccess();
  sub_1C440A6B8();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static PersonalKnowledgeTool.title.setter(uint64_t a1)
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248(&qword_1EC0B7068);
  }

  v2 = sub_1C4EF97C8();
  v3 = sub_1C442B738(v2, qword_1EC0C29A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PersonalKnowledgeTool.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248(&qword_1EC0B7068);
  }

  v1 = sub_1C4EF97C8();
  sub_1C442B738(v1, qword_1EC0C29A0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1C4AA1600@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4AA1398();
  swift_beginAccess();
  v3 = sub_1C4EF97C8();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C4AA167C(uint64_t a1)
{
  v2 = sub_1C4AA1398();
  swift_beginAccess();
  v3 = sub_1C4EF97C8();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

void sub_1C4AA1830(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EC0C29B8 = v1;
}

uint64_t static PersonalKnowledgeTool.description.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v1 = sub_1C43FBD18(v0);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C4EF97C8();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C4EF97B8();
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v5, v6, v7, v3);
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v8, v9, v10, v3);
  sub_1C4EF91F8();
  sub_1C4EF91E8();
  sub_1C43FBD94();
  return sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t PersonalKnowledgeTool.init()@<X0>(uint64_t *a1@<X8>)
{
  v38 = sub_1C4EF9268();
  v1 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v4 = v3 - v2;
  v5 = sub_1C456902C(&qword_1EC0C29C0, &qword_1C4F4C668);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C456902C(&qword_1EC0C29C8, &qword_1C4F4C670);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  v36 = sub_1C4EF97C8();
  sub_1C440A6B8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C456902C(&qword_1EC0C29D0, &qword_1C4F4C678);
  sub_1C4EF97B8();
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v12, v13, v14, v36);
  v35 = sub_1C4F010C8();
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v18);
  v19 = sub_1C4EF9108();
  sub_1C43FCF64();
  sub_1C440BAA8(v20, v21, v22, v19);
  v23 = *MEMORY[0x1E695A500];
  v24 = *(v1 + 104);
  v24(v4, v23, v38);
  sub_1C440FA74();
  *a1 = sub_1C4EF91D8();
  sub_1C456902C(&qword_1EC0C29D8, &qword_1C4F4C680);
  sub_1C4EF97B8();
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v25, v26, v27, v36);
  sub_1C43FCF64();
  sub_1C440BAA8(v28, v29, v30, v35);
  sub_1C43FCF64();
  sub_1C440BAA8(v31, v32, v33, v19);
  v24(v4, v23, v38);
  sub_1C440FA74();
  result = sub_1C4EF91D8();
  a1[1] = result;
  return result;
}

uint64_t PersonalKnowledgeTool.perform()()
{
  sub_1C43FBCD4();
  *(v1 + 160) = v2;
  v3 = sub_1C456902C(&qword_1EC0C29E0, &qword_1C4F4C690);
  sub_1C43FBD18(v3);
  *(v1 + 168) = sub_1C43FBE7C();
  v4 = sub_1C456902C(&qword_1EC0C29E8, &qword_1C4F4C698);
  sub_1C43FBD18(v4);
  *(v1 + 176) = sub_1C43FBE7C();
  v5 = sub_1C456902C(&qword_1EC0C29F0, &unk_1C4F4C6A0);
  sub_1C43FBD18(v5);
  *(v1 + 184) = sub_1C43FBE7C();
  v6 = sub_1C4EF9108();
  *(v1 + 192) = v6;
  sub_1C43FCF7C(v6);
  *(v1 + 200) = v7;
  *(v1 + 208) = sub_1C43FBE7C();
  *(v1 + 216) = *v0;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4AA1EBC()
{
  if (qword_1EDDDBE08 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE2C930;
  *(v0 + 232) = qword_1EDE2C930;
  if (v1)
  {
    v2 = qword_1EDDE5510;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1C445FFF0(&xmmword_1EDE2CCE8, v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    if (*(v0 + 80))
    {
      sub_1C441D670((v0 + 56), v0 + 16);
      sub_1C4EF91C8();
      *(v0 + 240) = *(v0 + 128);
      sub_1C4EF91C8();
      *(v0 + 248) = *(v0 + 144);
      v4 = swift_task_alloc();
      *(v0 + 256) = v4;
      *v4 = v0;
      v4[1] = sub_1C4AA230C;

      return static PersonalKnowledgeTool.perform(knosisServer:ecrServer:kgq:nlQuery:)();
    }

    sub_1C4420C3C(v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    if (qword_1EC0B6DE0 != -1)
    {
      sub_1C442D15C(&qword_1EC0B6DE0);
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EC152620);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "ECR server not initialized", v16, 2u);
      sub_1C43FEA20();
    }

    sub_1C4EFFB68();
    sub_1C440783C();
    v19 = sub_1C4AA38CC(v17, v18, MEMORY[0x1E69A9B30]);
    sub_1C440E690(v19);
    sub_1C440A6B8();
    (*(v20 + 104))();
    swift_willThrow();
  }

  else
  {
    if (qword_1EC0B6DE0 != -1)
    {
      sub_1C442D15C(&qword_1EC0B6DE0);
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EC152620);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C43F8000, v7, v8, "Knosis server not initialized", v9, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4EFFB68();
    sub_1C440783C();
    sub_1C4AA38CC(v10, v11, MEMORY[0x1E69A9B30]);
    swift_allocError();
    sub_1C440A6B8();
    (*(v12 + 104))();
    swift_willThrow();
  }

  sub_1C43FBDA0();

  return v21();
}

uint64_t sub_1C4AA230C()
{
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v7 + 264) = v6;
  *(v7 + 272) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4AA2480()
{
  v1 = v0[33];
  if (*(v1 + 16))
  {
    v2 = v0[22];
    v3 = v0[21];
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    sub_1C4EF9298();
    sub_1C43FCF64();
    sub_1C440BAA8(v5, v6, v7, v8);
    sub_1C4EF92C8();
    sub_1C43FCF64();
    sub_1C440BAA8(v9, v10, v11, v12);
    v13 = sub_1C456902C(&qword_1EC0C2A00, &qword_1C4F4C6B8);
    v14 = sub_1C4AA37F4();
    v15 = sub_1C4AA3848();
    MEMORY[0x1C6937DC0](sub_1C4AA37EC, v4, v2, v3, &type metadata for PersonalKnowledgeTool, v13, v14, v15);

    sub_1C4EF90F8();
  }

  else
  {
    sub_1C4EF90E8();
  }

  v16 = v0[29];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[24];
  v0[19] = v0[33];
  sub_1C456902C(&qword_1EC0C2A00, &qword_1C4F4C6B8);
  sub_1C4AA3848();
  sub_1C4EF9118();

  (*(v18 + 8))(v17, v19);
  sub_1C440962C(v0 + 2);

  sub_1C43FBDA0();

  return v20();
}

uint64_t sub_1C4AA26A4()
{
  sub_1C440962C((v0 + 16));

  sub_1C43FBDA0();

  return v1();
}

uint64_t static PersonalKnowledgeTool.perform(knosisServer:ecrServer:kgq:nlQuery:)()
{
  sub_1C43FBCD4();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  v7 = sub_1C456902C(&qword_1EC0C2A18, &qword_1C4F4C6C0);
  sub_1C43FBD18(v7);
  v0[13] = sub_1C43FBE7C();
  v8 = sub_1C4EFDBD8();
  v0[14] = v8;
  sub_1C43FCF7C(v8);
  v0[15] = v9;
  v0[16] = sub_1C43FBE7C();
  v10 = sub_1C456902C(&qword_1EC0C2A20, qword_1C4F4C6C8);
  v0[17] = v10;
  sub_1C43FBD18(v10);
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v11 = sub_1C4EFFE38();
  v0[23] = v11;
  sub_1C43FCF7C(v11);
  v0[24] = v12;
  v0[25] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4AA28CC()
{
  v24 = v0;
  if (qword_1EC0B6DE0 != -1)
  {
    sub_1C442D15C(&qword_1EC0B6DE0);
  }

  v1 = v0[12];
  v2 = sub_1C4F00978();
  v0[26] = sub_1C442B738(v2, qword_1EC152620);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CC8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1C441D828(v8, v7, &v23);
    *(v9 + 12) = 2080;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 4271950;
    }

    if (v5)
    {
      v11 = v1;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C441D828(v10, v11, &v23);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_1C43F8000, v3, v4, "kgq: %s, nlQuery: %s", v9, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  v13 = v0[22];
  v14 = v0[17];
  v15 = v0[7];
  sub_1C442E860(v0[8], (v0 + 2));
  v16 = v15;
  sub_1C4EFFE18();
  v17 = *(v14 + 48);
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = sub_1C4AA2B20;
  v19 = v0[22];
  v20 = v0[9];
  v21 = v0[10];

  return MEMORY[0x1EEE13C60](v19, v13 + v17, v20, v21);
}

uint64_t sub_1C4AA2B20()
{
  sub_1C43FBCD4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AA2C24()
{
  v77 = v0;
  sub_1C445FFF0(v0[22], v0[21], &qword_1EC0C2A20, qword_1C4F4C6C8);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CC8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[21];
  if (v3)
  {
    v5 = v0[20];
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v76[0] = v8;
    *v7 = 136315138;
    v9 = sub_1C445FFF0(v4, v5, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v10 = *(v6 + 48);
    v11 = MEMORY[0x1C693C8E0](v9);
    sub_1C4EFDC08();
    sub_1C43FBCE0();
    (*(v12 + 8))(v5);
    sub_1C4420C3C(v5 + v10, &qword_1EC0C27A0, &unk_1C4F4BA30);
    v13 = sub_1C4EFDB98();
    v14 = MEMORY[0x1C6940380](v11, v13);
    v16 = v15;

    sub_1C4420C3C(v4, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v17 = sub_1C441D828(v14, v16, v76);

    *(v7 + 4) = v17;
    _os_log_impl(&dword_1C43F8000, v1, v2, "knosis result: %s", v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    sub_1C4420C3C(v4, &qword_1EC0C2A20, qword_1C4F4C6C8);
  }

  v18 = v0[22];
  v19 = v0[19];
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[14];
  v23 = v0[15];
  v24 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v24 setUnitsStyle_];
  [v24 setMaximumUnitCount_];
  sub_1C445FFF0(v18, v19, &qword_1EC0C2A20, qword_1C4F4C6C8);
  v73 = *(v20 + 48);
  sub_1C4EFDBE8();
  v25 = sub_1C4EFDC08();
  sub_1C43FBCE0();
  v27 = *(v26 + 8);
  v27(v19, v25);
  v28 = (*(v23 + 88))(v21, v22);
  if (v28 == *MEMORY[0x1E69A94E0])
  {
    v29 = v0[22];
    v30 = v0[20];
    v31 = v0[17];
    v32 = sub_1C445FFF0(v29, v30, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v70 = *(v31 + 48);
    MEMORY[0x1C693C8E0](v32);
    v27(v30, v25);
    v33 = swift_task_alloc();
    *(v33 + 16) = v29;
    *(v33 + 24) = v24;
    v72 = v24;
    sub_1C49C0B9C();
    v75 = v34;

    sub_1C4420C3C(v30 + v70, &qword_1EC0C27A0, &unk_1C4F4BA30);
LABEL_9:
    v35 = v0[22];
    v36 = v0[17];
    v37 = v0[18];
    v38 = v0[13];
    sub_1C4420C3C(v19 + v73, &qword_1EC0C27A0, &unk_1C4F4BA30);
    sub_1C445FFF0(v35, v37, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v39 = *(v36 + 48);
    sub_1C4EFDBC8();
    v27(v37, v25);
    v40 = sub_1C4F00128();
    v41 = sub_1C44157D4(v38, 1, v40);
    v42 = v0[13];
    if (v41 == 1)
    {
      sub_1C4420C3C(v37 + v39, &qword_1EC0C27A0, &unk_1C4F4BA30);
      sub_1C4420C3C(v42, &qword_1EC0C2A18, &qword_1C4F4C6C0);
      v43 = 0;
      v74 = 0xE000000000000000;
    }

    else
    {
      sub_1C4AA38CC(&qword_1EC0C2A28, MEMORY[0x1E69A9C88], MEMORY[0x1E69A9C90]);
      v43 = sub_1C4F00FB8();
      v74 = v44;
      sub_1C440A6B8();
      (*(v45 + 8))(v42, v40);
      sub_1C4420C3C(v37 + v39, &qword_1EC0C27A0, &unk_1C4F4BA30);
    }

    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CC8();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[24];
    v50 = v0[25];
    v51 = v0[23];
    if (v48)
    {
      v71 = v43;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v76[0] = v53;
      *v52 = 136315138;
      v54 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v55 = MEMORY[0x1C6940380](v54, &type metadata for PersonalKnowledgeResult);
      v57 = v56;

      v58 = sub_1C441D828(v55, v57, v76);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_1C43F8000, v46, v47, "final result: %s", v52, 0xCu);
      sub_1C440962C(v53);
      sub_1C43FEA20();
      v43 = v71;
      sub_1C43FBE2C();
    }

    (*(v49 + 8))(v50, v51);
    sub_1C4400B34();
    sub_1C4420C3C(v49 + 8, &qword_1EC0C2A20, qword_1C4F4C6C8);

    v59 = v0[1];

    return v59(v75, v43, v74);
  }

  if (v28 == *MEMORY[0x1E69A94D0])
  {
    v72 = v24;
LABEL_8:
    v75 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  if (v28 != *MEMORY[0x1E69A94D8])
  {
    v72 = v24;
    if (v28 != *MEMORY[0x1E69A94E8])
    {
      (*(v0[15] + 8))(v0[16], v0[14]);
    }

    goto LABEL_8;
  }

  v61 = v0[24];
  v62 = v0[25];
  v63 = v0[22];
  v64 = v0[23];
  sub_1C4EFFB68();
  sub_1C440783C();
  v67 = sub_1C4AA38CC(v65, v66, MEMORY[0x1E69A9B30]);
  sub_1C440E690(v67);
  sub_1C440A6B8();
  (*(v68 + 104))();
  swift_willThrow();

  (*(v61 + 8))(v62, v64);
  sub_1C4420C3C(v19 + v73, &qword_1EC0C27A0, &unk_1C4F4BA30);
  sub_1C4420C3C(v63, &qword_1EC0C2A20, qword_1C4F4C6C8);
  sub_1C4400B34();

  sub_1C43FBDA0();

  return v69();
}

uint64_t sub_1C4AA346C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_1C4400B34();

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4AA3538(uint64_t a1)
{
  sub_1C4812F0C(a1);
  sub_1C456902C(&qword_1EC0C2A00, &qword_1C4F4C6B8);
  sub_1C4AA3848();
  sub_1C4EF9218();

  sub_1C4EF9208();
}

void *sub_1C4AA35D4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C27A0, &unk_1C4F4BA30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __src - v7;
  v9 = *(sub_1C456902C(&qword_1EC0C2A20, qword_1C4F4C6C8) + 48);
  v10 = sub_1C4EFDB88();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1C445FFF0(a1 + v9, v8, &qword_1EC0C27A0, &unk_1C4F4BA30);
    PersonalKnowledgeResult.init(_:resultAttribute:dateComponentsFormatter:)(v12, v13, v8, a2, __src);
    nullsub_1();
  }

  else
  {
    sub_1C4A9C758(__src);
  }

  return memcpy(a3, __src, 0xB0uLL);
}

uint64_t sub_1C4AA3714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C46F1200;

  return PersonalKnowledgeTool.perform()();
}

uint64_t sub_1C4AA37B0(uint64_t a1)
{
  v2 = sub_1C4AA37F4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1C4AA37F4()
{
  result = qword_1EC0C2A08;
  if (!qword_1EC0C2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A08);
  }

  return result;
}

unint64_t sub_1C4AA3848()
{
  result = qword_1EC0C2A10;
  if (!qword_1EC0C2A10)
  {
    sub_1C4572308(&qword_1EC0C2A00, &qword_1C4F4C6B8);
    sub_1C4A9F4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A10);
  }

  return result;
}

uint64_t sub_1C4AA38CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4AA3934()
{
  result = qword_1EC0C2A30;
  if (!qword_1EC0C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A30);
  }

  return result;
}

unint64_t sub_1C4AA398C()
{
  result = qword_1EC0C2A38;
  if (!qword_1EC0C2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A38);
  }

  return result;
}

uint64_t sub_1C4AA3A74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C2A48, &qword_1C4F4C808);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AA3AC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDE7308, &qword_1EDE2CE60, sub_1C4ABF81C, sub_1C45EDFAC);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3B24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF248, &qword_1EDE2DFF8, sub_1C4ABF944, sub_1C478A19C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3B84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, qword_1EDDFF168, &qword_1EDE2DFC8, sub_1C44FD0B8, sub_1C44FCFC0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, qword_1EDDFEE20, &qword_1EDE2DFB0, sub_1C4ABF8B0, sub_1C4827160);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3C44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF500, &qword_1EDE2E048, sub_1C4ABF788, sub_1C4851C68);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4AA3CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[2];
  v9 = *(*v4 + 80);
  v10 = *(v5 + 88);
  v11 = a1;
  v7 = type metadata accessor for PerURLSingletonLockBox.GuardedData(0, v9, v10, a4);
  sub_1C4AA4060(sub_1C4AA4040, &v8, v6, v7, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C4AA3D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  sub_1C4AA3CA4(a1, v4, v5, v6);
}

uint64_t sub_1C4AA3DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF220, &qword_1EDE2DFD8, sub_1C44F7F70, sub_1C4A54C30);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3E20()
{
  sub_1C4AA3E00();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA3E54(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C4F01F48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  swift_beginAccess();
  sub_1C4EF98F8();
  sub_1C44F8A78();
  sub_1C4F00FA8();
  sub_1C4F00EF8();
  swift_endAccess();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C4AA3FAC()
{
  sub_1C4AA3F8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA3FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EC0B7088, &qword_1EC152B90, sub_1C4ABFC28, sub_1C4AD9BE8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4AA40EC(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

id sub_1C4AA4174(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotoRelationshipSet();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1C4AA4208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoRelationshipSet();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C4AA4264(char *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  sub_1C4482F3C(a2, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore20PGRelationshipEntity_tokenizer);
  return v2;
}

void sub_1C4AA42A8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C4F00978();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4400B4C();
  sub_1C4F00158();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();
  if (os_log_type_enabled(v15, v16))
  {
    sub_1C43FD1A8();
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1C43F8000, v15, v16, "PGRelationship.completionHandler", v17, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18 = *(v7 + 8);
  v18(v0, v5);
  sub_1C4F00158();
  v19 = v4;
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CB8();

  if (os_log_type_enabled(v20, v21))
  {
    sub_1C43FECF0();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v18;
    v24 = v10;
    v25 = v2;
    v26 = v5;
    v27 = v23;
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v28 = v19;
    _os_log_impl(&dword_1C43F8000, v20, v21, "PGRelationship.completionHandler.completion %@", v22, 0xCu);
    sub_1C4420C3C(v27, &qword_1EC0BDA00, &qword_1C4F10D30);
    v5 = v26;
    v2 = v25;
    v10 = v24;
    v18 = v37;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18(v13, v5);
  sub_1C4F00158();
  swift_unknownObjectRetain();
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v29, v30))
  {
    sub_1C43FECF0();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v2;
    v39 = v32;
    *v31 = 136315138;
    swift_unknownObjectRetain();
    sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
    v33 = sub_1C4F01198();
    v35 = sub_1C441D828(v33, v34, &v39);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1C43F8000, v29, v30, "PGRelationship.completionHandler.bookmark %s", v31, 0xCu);
    sub_1C440962C(v32);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18(v10, v5);
  sub_1C43FE9F0();
}

void sub_1C4AA4610()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = *v0;
  v107 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C2A60, &qword_1C4F4C970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v97 - v6;
  v8 = type metadata accessor for PGRelationshipStructs.IdentifierRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&qword_1EC0C2A68, &qword_1C4F4C978);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v105 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v106 = v17;
  v18 = sub_1C43FBE44();
  v109 = type metadata accessor for PGRelationshipStructs.Person(v18);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v110 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v115 = v22;
  sub_1C43FBE44();
  v117 = sub_1C4F00978();
  sub_1C43FCDF8();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v111 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD230();
  v118 = v28;
  v29 = [v2 sharedItem];
  v30 = [v29 content];

  if (v30)
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();

    if (v31)
    {
      if (![v2 sharedItemChangeType])
      {
        v99 = v13;
        v104 = v12;
        v100 = v8;
        v101 = v7;
        v102 = v4;
        v103 = v2;
        v32 = [v2 allLocalInstances];
        sub_1C456902C(&unk_1EC0C2A70, &qword_1C4F4C980);
        v33 = sub_1C4F01678();

        v34 = v33;
        v35 = sub_1C4428DA0(v33);
        v36 = 0;
        v113 = v33 & 0xC000000000000001;
        v114 = v35;
        v112 = v33 & 0xFFFFFFFFFFFFFF8;
        v116 = (v24 + 8);
        v37 = MEMORY[0x1E69E7CC0];
        *&v38 = 136315138;
        v108 = v38;
        while (1)
        {
          if (v114 == v36)
          {

            if (qword_1EDDF7958 != -1)
            {
              goto LABEL_40;
            }

            goto LABEL_21;
          }

          if (v113)
          {
            v39 = MEMORY[0x1C6940F90](v36, v34);
          }

          else
          {
            if (v36 >= *(v112 + 16))
            {
              goto LABEL_38;
            }

            v39 = *(v34 + 8 * v36 + 32);
          }

          v40 = v39;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          v41 = [v39 metaContent];
          if (!v41)
          {
            __break(1u);
LABEL_42:
            __break(1u);
            return;
          }

          v42 = v41;
          v43 = [v41 sourceItemIdentifier];

          v44 = sub_1C4F01138();
          v46 = v45;

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C443D664();
            v37 = v56;
          }

          v47 = v37[2];
          if (v47 >= v37[3] >> 1)
          {
            sub_1C443D664();
            v37 = v57;
          }

          v37[2] = v47 + 1;
          v48 = &v37[2 * v47];
          v48[4] = v44;
          v48[5] = v46;
          sub_1C4F00158();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v49 = sub_1C4F00968();
          v50 = sub_1C4F01CB8();

          if (os_log_type_enabled(v49, v50))
          {
            sub_1C43FECF0();
            v51 = v37;
            v52 = v34;
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v119 = v54;
            *v53 = v108;
            v55 = sub_1C441D828(v44, v46, &v119);

            *(v53 + 4) = v55;
            _os_log_impl(&dword_1C43F8000, v49, v50, "PGRelationship.itemField.sourceIdentifier %s", v53, 0xCu);
            sub_1C440962C(v54);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v34 = v52;
            v37 = v51;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }

          (*v116)(v118, v117);
          ++v36;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_40:
          swift_once();
LABEL_21:
          v112 = type metadata accessor for SourceIdPrefix(0);
          sub_1C442B738(v112, qword_1EDE2D6E0);
          String.base64EncodedSHA(withPrefix:)();
          v118 = v58;
          v113 = v37[2];
          v114 = v59;
          if (!v113)
          {
            break;
          }

          v60 = 0;
          v98 = OBJC_IVAR____TtC24IntelligencePlatformCore20PGRelationshipEntity_tokenizer;
          v61 = v37 + 5;
          v108 = xmmword_1C4F17530;
          v97 = xmmword_1C4F4C8D0;
          while (v60 < v37[2])
          {
            v62 = *(v61 - 1);
            v63 = *v61;
            v119 = v62;
            v120 = v63;
            v121 = 47;
            v122 = 0xE100000000000000;
            sub_1C4415EA8();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if ((sub_1C4F02048() & 1) == 0)
            {
              sub_1C4AA6784();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v65 = sub_1C4AA67C8(v62, v63, ObjCClassFromMetadata);
              if (!v66)
              {
                goto LABEL_42;
              }

              v62 = v65;
              v67 = v66;

              v63 = v67;
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v68 = v115;
            sub_1C4E33870();
            v69 = (v68 + *(v109 + 36));

            *v69 = v108;
            if (qword_1EDDF78B8 != -1)
            {
              swift_once();
            }

            v70 = sub_1C442B738(v112, &qword_1EDE2D5F0);
            v72 = *v70;
            v71 = v70[1];
            v119 = v72;
            v120 = v71;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](58, 0xE100000000000000);
            MEMORY[0x1C6940010](v62, v63);
            v73 = v110;
            sub_1C4E33870();
            v74 = v99;
            v75 = v106;
            *v75 = sub_1C4AA51A8(v106 + *(v99 + 48), v103, v107 + v98, v73);
            v76 = v105;
            sub_1C445FFF0(v75, v105, &qword_1EC0C2A68, &qword_1C4F4C978);

            sub_1C4E34208(v76 + *(v74 + 48));
            v77 = v75;
            v78 = v110;
            sub_1C445FFF0(v77, v76, &qword_1EC0C2A68, &qword_1C4F4C978);
            v79 = *v76;
            sub_1C4420C3C(v76 + *(v74 + 48), &qword_1EC0C2A88, &qword_1C4F4C988);
            v80 = *(v109 + 48);

            *(v78 + v80) = v79;
            sub_1C4E37FA4();
            sub_1C4EFEEF8();
            v81 = v104;
            sub_1C43FCF64();
            sub_1C440BAA8(v82, v83, v84, v85);
            v86 = v100;
            sub_1C4EFD258();
            v87 = v86[6];
            if (qword_1EDDFD2C8 != -1)
            {
              sub_1C44072C0();
              swift_once();
            }

            v88 = type metadata accessor for Source(0);
            sub_1C442B738(v88, qword_1EDDFD2D0);
            sub_1C441A268();
            sub_1C448CF6C(v89, v81 + v87, v90);
            sub_1C4EFE558();
            v91 = (v81 + v86[8]);
            sub_1C4EFE658();
            v92 = v86[10];
            *v91 = v62;
            v91[1] = v63;
            *(v81 + v92) = v97;
            v93 = v101;
            sub_1C448CF6C(v81, v101, type metadata accessor for PGRelationshipStructs.IdentifierRelationshipType);
            sub_1C440BAA8(v93, 0, 1, v86);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4E34314(v93);
            v94 = v107;
            LOBYTE(v119) = *(v107 + 24);
            v95 = sub_1C4E34420(v114, v118, &v119);
            swift_beginAccess();
            sub_1C49D3614(v95);
            swift_endAccess();
            LOBYTE(v119) = *(v94 + 24);
            v96 = sub_1C4E34420(v62, v63, &v119);

            swift_beginAccess();
            sub_1C49D3614(v96);
            swift_endAccess();
            sub_1C4420C3C(v106, &qword_1EC0C2A68, &qword_1C4F4C978);
            sub_1C4AA6848(v110, type metadata accessor for PGRelationshipStructs.Person);
            sub_1C4AA6848(v104, type metadata accessor for PGRelationshipStructs.IdentifierRelationshipType);
            sub_1C4AA6848(v115, type metadata accessor for PGRelationshipStructs.Person);
            ++v60;
            v61 += 2;
            if (v113 == v60)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_35:
      }
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4AA5CE8()
{
  v1 = v0;
  v57 = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F00978();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v49 = v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v47 - v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4400B4C();
  sub_1C4F00158();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C43FD1A8();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "PGRelationship.ingestEvents", v13, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v14 = *(v4 + 8);
  v14(v0, v2);
  v15 = sub_1C4F01108();
  type metadata accessor for PhotoRelationshipSet();
  v16 = [swift_getObjCClassFromMetadata() setEnumeratorWithUseCase_];
  aBlock = 0;
  v17 = [v16 allSets_];
  v18 = aBlock;
  if (v17)
  {
    v19 = v17;
    v47[1] = v16;
    sub_1C456902C(&qword_1EC0C2A58, &qword_1C4F4C968);
    v20 = sub_1C4F01678();
    v21 = v18;

    sub_1C4F00158();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CB8();
    if (os_log_type_enabled(v22, v23))
    {
      sub_1C43FECF0();
      v24 = swift_slowAlloc();
      v50 = v14;
      v25 = v2;
      v26 = v24;
      *v24 = 134217984;
      *(v24 + 4) = sub_1C4428DA0(v20);

      _os_log_impl(&dword_1C43F8000, v22, v23, "PGRelationship.allsets.count %ld", v26, 0xCu);
      v2 = v25;
      v14 = v50;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v14(v9, v2);
    v37 = sub_1C4428DA0(v20);
    if (v37)
    {
      v38 = v37;
      if (v37 < 1)
      {
        __break(1u);
      }

      v49 = v20;
      v50 = v15;
      v39 = 0;
      v48 = v20 & 0xC000000000000001;
      do
      {
        if (v48)
        {
          v40 = MEMORY[0x1C6940F90](v39, v49);
        }

        else
        {
          v40 = *(v49 + 8 * v39 + 32);
        }

        v41 = v40;
        ++v39;
        v42 = [v40 changePublisherWithUseCase_];
        v55 = sub_1C4AA6768;
        v56 = v1;
        aBlock = MEMORY[0x1E69E9820];
        v52 = 1107296256;
        v53 = sub_1C4442530;
        v54 = &unk_1F43F7F58;
        v43 = _Block_copy(&aBlock);

        v55 = sub_1C4AA6780;
        v56 = v1;
        aBlock = MEMORY[0x1E69E9820];
        v52 = 1107296256;
        v53 = sub_1C4440590;
        v54 = &unk_1F43F7F80;
        v44 = _Block_copy(&aBlock);

        v45 = [v42 sinkWithBookmark:0 completion:v43 receiveInput:v44];
        _Block_release(v44);
        _Block_release(v43);
      }

      while (v38 != v39);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v50 = v14;
    v27 = aBlock;
    v28 = sub_1C4EF97A8();

    swift_willThrow();
    swift_unknownObjectRelease();

    v29 = v49;
    sub_1C4F00158();
    v30 = v28;
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CD8();

    if (os_log_type_enabled(v31, v32))
    {
      sub_1C43FECF0();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1C43F8000, v31, v32, "PGRelationship.ingestEvents %@", v33, 0xCu);
      sub_1C4420C3C(v34, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v50(v29, v2);
  }

  swift_beginAccess();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4AA6328()
{
  type metadata accessor for CCPhotosPetType(0);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4AA6904();
  result = sub_1C4F00F28();
  qword_1EDE2CC20 = result;
  return result;
}

uint64_t sub_1C4AA638C()
{
  type metadata accessor for CCPhotosPetType(0);
  sub_1C4AA6904();
  result = sub_1C4F00F28();
  qword_1EDE2CC18 = result;
  return result;
}

void sub_1C4AA63DC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v7 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = type metadata accessor for PGRelationshipStructs.EntityAliasRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v22);
  sub_1C4EFD278();
  v23 = v14[6];
  if (qword_1EDDFD2C8 != -1)
  {
    sub_1C44072C0();
    swift_once();
  }

  v24 = type metadata accessor for Source(0);
  sub_1C442B738(v24, qword_1EDDFD2D0);
  sub_1C441A268();
  sub_1C448CF6C(v25, v18 + v23, v26);
  sub_1C4EFE3A8();
  sub_1C4EFE4A8();
  sub_1C4EFE658();
  v27 = v14[12];
  sub_1C4EFEA88();
  if (v1 == 2)
  {
    sub_1C4EFD458();
  }

  else if (v1 == 1)
  {
    sub_1C4EFD468();
  }

  else
  {
    sub_1C4EFD478();
  }

  v28 = (v18 + v27);
  v29 = sub_1C4EFD2F8();
  v31 = v30;
  (*(v9 + 8))(v13, v7);
  *v28 = v29;
  v28[1] = v31;
  v32 = (v18 + v14[8]);
  v33 = v14[14];
  *(v18 + v14[10]) = xmmword_1C4F4C8F0;
  *v32 = v5;
  v32[1] = v3;
  *(v18 + v33) = xmmword_1C4F0D2B0;
  sub_1C4AA68A0(v18, v34);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FE9F0();
}

uint64_t sub_1C4AA65F0()
{

  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore20PGRelationshipEntity_tokenizer, &qword_1EC0C2A90, &unk_1C4F16D30);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PGRelationshipEntity(uint64_t a1)
{
  result = qword_1EDDE4438;
  if (!qword_1EDDE4438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4AA66C0(uint64_t a1)
{
  sub_1C4682388(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C4AA6784()
{
  result = qword_1EC0C2A80;
  if (!qword_1EC0C2A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C2A80);
  }

  return result;
}

uint64_t sub_1C4AA67C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  v5 = [a3 localIdentifierWithUUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1C4F01138();

  return v6;
}

uint64_t sub_1C4AA6848(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4AA68A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PGRelationshipStructs.EntityAliasRelationshipType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4AA6904()
{
  result = qword_1EDDDB990;
  if (!qword_1EDDDB990)
  {
    type metadata accessor for CCPhotosPetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDB990);
  }

  return result;
}

void sub_1C4AA69C4(uint64_t a1)
{
  type metadata accessor for Source(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhaseStores(319);
    if (v2 <= 0x3F)
    {
      sub_1C4682388(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4AA6A68()
{
  v1[4] = v0;
  v2 = sub_1C4F00978();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AA6B28, 0, 0);
}

uint64_t sub_1C4AA6B28(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1C4F00158();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "PGRelationshipFullSourceIngestor", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);

  (*(v6 + 8))(v5, v7);
  *(v1 + 64) = 0;
  type metadata accessor for PGRelationshipFullSourceIngestor(0);
  type metadata accessor for PhaseStores(0);
  v9 = swift_task_alloc();
  v9[2] = v1 + 16;
  v9[3] = v8;
  v9[4] = v1 + 24;
  v9[5] = v1 + 64;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4AA7608, v9);
  v10 = *(v1 + 32);

  sub_1C4EF9AE8();
  sub_1C46483B0();
  sub_1C4AA6D14(v10, (v1 + 24), (v1 + 16));

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_1C4AA6D14(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PGRelationshipFullSourceIngestor(0);
  sub_1C4430B24(a1 + *(v10 + 20), v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v9);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4AA6F88(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, _BYTE *a7@<X8>)
{
  v43[0] = a5;
  v43[1] = a2;
  v44 = a1;
  v45 = sub_1C4F00978();
  v12 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v43 - v16;
  v18 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v43 - v19;
  v21 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    __break(1u);
  }

  else
  {
    v46 = a7;
    v47 = a6;
    *a3 = v21;
    v22 = type metadata accessor for PGRelationshipFullSourceIngestor(0);
    v23 = v22[7];
    v52 = *(a4 + v22[6]);
    v48 = a4;
    sub_1C44D9DFC(a4 + v23, v20);
    type metadata accessor for PGRelationshipEntity(0);
    swift_allocObject();
    sub_1C4AA4264(&v52, v20);
    sub_1C4AA5CE8();
    if (v7)
    {

      v49 = v7;
      v26 = v7;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v27 = swift_dynamicCast();
      v28 = v48;
      if (!v27)
      {

        sub_1C4F00158();
        v37 = sub_1C4F00968();
        v38 = sub_1C4F01CD8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1C43F8000, v37, v38, "PGRelationshipFullSourceIngestor.error", v39, 2u);
          v40 = v39;
          v28 = v48;
          MEMORY[0x1C6942830](v40, -1, -1);
        }

        (*(v12 + 8))(v14, v45);
        v41 = v22[5];
        v51[0] = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v7, 0xD000000000000020, 0x80000001C4F4C990, v28 + v41, v51);

        v42 = v47;
        *v47 = 1;
        goto LABEL_15;
      }

      v29 = v51[1];
      sub_1C4F00158();
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CD8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C43F8000, v30, v31, "PGRelationshipFullSourceIngestor.error", v32, 2u);
        v33 = v32;
        v28 = v48;
        MEMORY[0x1C6942830](v33, -1, -1);
      }

      (*(v12 + 8))(v17, v45);
      sub_1C465B58C();
      v34 = swift_allocError();
      *v35 = v29;
      v36 = v22[5];
      v50 = 1;
      static Transformers.reportError(error:context:config:pipelineType:)(v34, 0xD000000000000020, 0x80000001C4F4C990, v28 + v36, &v50);

LABEL_14:
      v42 = v47;
LABEL_15:
      *v46 = *v42;
      return;
    }

    sub_1C4812140();
    v25 = v24;

    v44(v25);

    if (!__OFADD__(*v43[0], 1))
    {
      ++*v43[0];
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1C4AA73FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4AA6A68();
}

uint64_t sub_1C4AA74F8(uint64_t a1)
{
  result = sub_1C4AA75C4(qword_1EDDDDDE0, &unk_1C4F4C9D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AA753C(uint64_t a1)
{
  result = sub_1C4AA75C4(&qword_1EDDDDDC8, &unk_1C4F4C9FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AA7580(uint64_t a1)
{
  result = sub_1C4AA75C4(&qword_1EDDDDDD0, &unk_1C4F4CA18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AA75C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PGRelationshipFullSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of PhaseBase.run()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C46A1150;

  return v7(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for PipelineSignal(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhaseSignal(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C4AA78F0(uint64_t a1)
{
  swift_getMetatypeMetadata();
  v1 = sub_1C4F01198();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 60;
}

unint64_t sub_1C4AA795C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000036;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002CLL;
  }

  return 0xD000000000000022;
}

unint64_t sub_1C4AA79C0()
{
  result = qword_1EC0C2A98;
  if (!qword_1EC0C2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A98);
  }

  return result;
}

unint64_t sub_1C4AA7A54()
{
  result = qword_1EC0C2AA0;
  if (!qword_1EC0C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2AA0);
  }

  return result;
}

uint64_t static PhaseBuilder.buildExpression(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_1C4409678(a1, v1);

  return sub_1C4AA7B20(v3, v1, v2);
}

uint64_t static PhaseBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4AA7B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = sub_1C4422F90(&v8);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v8, v6 + 32);
  return v6;
}

_BYTE *storeEnumTagSinglePayload for PhaseBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4AA7C7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA7D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4AA7D8C;

  return sub_1C4C8C598();
}

uint64_t sub_1C4AA7D8C()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4AA7EC0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C4AA7EC0()
{
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DE10);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Pipeline: Error while executing Delta pipeline via Fastpass.", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C4AA7FE0()
{
  sub_1C4C8C530();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA8074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4AA8100;

  return sub_1C4AA7D00();
}

uint64_t sub_1C4AA8100()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PhaseStores.globalKnowledgeStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.graphStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.stateStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.visionKeyValueStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.resolverKeyValueStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.relationshipKeyValueStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.portraitTopicKeyValueStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.walletOrderKeyValueStore.getter()
{
  type metadata accessor for PhaseStores(0);
}

uint64_t PhaseStores.init(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v67 = a2;
  sub_1C44098F0(a1, a2);
  v26 = type metadata accessor for GlobalKnowledgeStore(0);
  sub_1C44098F0(a1, v25);
  v27 = v65;
  v28 = sub_1C48300AC(v25);
  if (!v27)
  {
    v30 = v28;
    v31 = v19;
    v62 = v10;
    v65 = type metadata accessor for PhaseStores(0);
    v32 = v67;
    *(v67 + v65[5]) = v30;
    sub_1C44098F0(a1, v22);
    type metadata accessor for GraphStore(0);
    swift_allocObject();
    v33 = GraphStore.init(config:)(v22);
    v61 = 0;
    v34 = v65;
    v35 = sub_1C442D17C(v33, v65[6]);
    sub_1C44098F0(v35, v31);
    type metadata accessor for StateStore(0);
    swift_allocObject();
    v36 = StateStore.init(config:)(v31);
    v37 = sub_1C442D17C(v36, v34[7]);
    sub_1C44098F0(v37, v16);
    type metadata accessor for VisionKeyValueStore();
    swift_allocObject();
    VisionKeyValueStore.init(config:)(v16, v38, v39, v40, v41, v42, v43, v44, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    v46 = sub_1C442D17C(v45, v34[8]);
    sub_1C44098F0(v46, v13);
    type metadata accessor for ResolverKeyValueStore();
    swift_allocObject();
    v47 = sub_1C44200BC();
    v48 = ResolverKeyValueStore.init(config:)(v47);
    v49 = sub_1C442D17C(v48, v34[9]);
    v50 = v62;
    sub_1C44098F0(v49, v62);
    type metadata accessor for RelationshipKeyValueStore();
    swift_allocObject();
    v51 = RelationshipKeyValueStore.init(config:)(v50);
    v52 = sub_1C442D17C(v51, v34[10]);
    sub_1C44098F0(v52, v64);
    type metadata accessor for PortraitTopicKeyValueStore();
    swift_allocObject();
    v53 = sub_1C44200BC();
    v54 = PortraitTopicKeyValueStore.init(config:)(v53);
    v55 = sub_1C442D17C(v54, v65[11]);
    sub_1C44098F0(v55, v63);
    type metadata accessor for WalletOrderKeyValueStore();
    swift_allocObject();
    v56 = sub_1C44200BC();
    v59 = WalletOrderKeyValueStore.init(config:)(v56);
    result = sub_1C4467948(a1);
    *(v32 + v65[12]) = v59;
    return result;
  }

  sub_1C441A280();
  v65 = v27;
  v29 = v67;
  sub_1C4467948(v57);
  result = sub_1C4467948(v29);
  if (v22)
  {
    type metadata accessor for PhaseStores(0);

    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1)
  {
LABEL_8:
    type metadata accessor for PhaseStores(0);
  }

LABEL_9:
  if (v10)
  {
    type metadata accessor for PhaseStores(0);
  }

  if (v26)
  {
    type metadata accessor for PhaseStores(0);
  }

  return result;
}

uint64_t sub_1C4AA8908(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GlobalKnowledgeStore(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for GraphStore(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for StateStore(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for VisionKeyValueStore();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ResolverKeyValueStore();
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for RelationshipKeyValueStore();
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for PortraitTopicKeyValueStore();
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for WalletOrderKeyValueStore();
                  if (v10 <= 0x3F)
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
  }

  return result;
}

void sub_1C4AA8A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1C459D738(0, v1, 0);
    v5 = sub_1C486C288();
    v6 = v23;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + 24 * v5 + 16);
        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          v21 = v4;
          sub_1C459D738(v11 > 1, v12 + 1, 1);
          v4 = v21;
          v3 = v22;
          v8 = a1 + 56;
          v6 = v23;
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + v12 + 32) = 0x4060503020100uLL >> (8 * v10);
        if (v4)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v8 + 8 * v9);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v9 << 6;
          v17 = v9 + 1;
          v18 = (a1 + 64 + 8 * v9);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1C440951C(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v23;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v23;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C4AA8CEC(char *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = 0;
  sub_1C4AA8A50(a2);
  v6 = sub_1C4597BBC(v5);
  if (qword_1EDDF35B0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v7 = *(sub_1C4A7C718(qword_1EDDF35B8, v6) + 16);

    if (v7)
    {

LABEL_36:
      v29 = 0;
      return v29 & 1;
    }

    v35 = a1;
    v9 = *(a2 + 32);
    v10 = ((1 << v9) + 63) >> 6;
    if ((v9 & 0x3Fu) > 0xD)
    {
      break;
    }

LABEL_5:
    v39 = &v35;
    MEMORY[0x1EEE9AC00](v8);
    a1 = &v35 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    v40 = v10;
    sub_1C4501018(0, v10, a1);
    v41 = 0;
    v11 = 0;
    v12 = 1 << *(a2 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a2 + 56);
    v6 = (v12 + 63) >> 6;
    v37 = 0x80000001C4F85600;
    v38 = 0x80000001C4F86760;
    v36 = 0x80000001C4F86740;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v18 = v15 | (v11 << 6);
      v4 = 0xE800000000000000;
      switch(*(*(a2 + 48) + 24 * v18 + 16))
      {
        case 1:
          v4 = v36;
          goto LABEL_22;
        case 2:
          v4 = 0xEC000000746E6576;
          goto LABEL_22;
        case 3:
          v4 = v37;
          goto LABEL_22;
        case 4:

          goto LABEL_23;
        case 5:
          v4 = 0xEB00000000656741;
          goto LABEL_22;
        case 6:
          v4 = v38;
          goto LABEL_22;
        default:
LABEL_22:
          v19 = sub_1C4F02938();

          if (v19)
          {
LABEL_23:
            *&a1[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
            if (__OFADD__(v41++, 1))
            {
              __break(1u);
            }
          }

          return result;
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v6)
      {
        sub_1C4A8DF38(a1, v40, v41, a2);
        v22 = v21;
        goto LABEL_28;
      }

      v17 = *(a2 + 56 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_5;
  }

  v33 = swift_slowAlloc();

  v34 = sub_1C4D2C7B8(v33, v10, a2, sub_1C4AA9290);
  if (v4)
  {

    swift_bridgeObjectRelease_n();
    result = MEMORY[0x1C6942830](v33, -1, -1);
    __break(1u);
    return result;
  }

  v22 = v34;
  swift_bridgeObjectRelease_n();
  MEMORY[0x1C6942830](v33, -1, -1);
LABEL_28:
  if (!v22[2])
  {
LABEL_37:

    goto LABEL_38;
  }

  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](4);
  sub_1C4F01298();
  v23 = sub_1C4F02B68();
  v24 = -1 << *(v22 + 32);
  v25 = v23 & ~v24;
  if (((*(v22 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v26 = ~v24;
  while (2)
  {
    v27 = v22[6] + 24 * v25;
    if (*(v27 + 16) != 4)
    {
LABEL_34:
      v25 = (v25 + 1) & v26;
      if (((*(v22 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  if ((*v27 & 1) == 0)
  {
    v28 = sub_1C4F02938();

    if (v28)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_38:
  sub_1C4D51718();
  sub_1C4839234(v35, v30);
  v29 = v31;

  return v29 & 1;
}

uint64_t sub_1C4AA9290(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 4:
      break;
    default:
      v1 = sub_1C4F02938();
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4AA93C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v56 = a2;
  v54 = a5;
  v55 = a1;
  v51 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = v9;
  v53 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = sub_1C4F02268();
  sub_1C43FCE64();
  v48 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v42 - v17;
  sub_1C4572308(&unk_1EC0BA420, &qword_1C4F13E78);
  sub_1C4F02408();
  sub_1C441A294();
  swift_getWitnessTable();
  sub_1C4F02508();
  v18 = type metadata accessor for InteractionEvent(255);
  swift_getWitnessTable();
  v47 = v18;
  sub_1C4F02408();
  sub_1C43FCE64();
  v45 = v20;
  v46 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  sub_1C43FCE64();
  v44 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  if (sub_1C4AA8CEC(a3, a4))
  {
    v42 = a6;
    v29 = v58;
    v30 = v57;
    result = (*(v12 + 24))(v55, v56, 0, 0, v11, v12);
    if (!v30)
    {
      MEMORY[0x1C6940210](AssociatedTypeWitness, AssociatedConformanceWitness);
      v32 = v51;
      (*(v51 + 16))(v53, v29, v54);
      v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v11;
      *(v34 + 24) = v12;
      (*(v32 + 32))(v34 + v33, v53, v54);
      v35 = v50;
      swift_getWitnessTable();
      v36 = v52;
      sub_1C4F025A8();

      (*(v48 + 8))(v36, v35);
      v38 = v45;
      v37 = v46;
      (*(v45 + 16))(v43, v24, v46);
      sub_1C441A294();
      swift_getWitnessTable();
      v39 = sub_1C4F021B8();
      (*(v38 + 8))(v24, v37);
      result = (*(v44 + 8))(v28, AssociatedTypeWitness);
      v40 = v42;
      *v42 = sub_1C4AAA394;
      v40[1] = v39;
    }
  }

  else
  {
    sub_1C463DFA8();
    swift_allocError();
    *v41 = a3;
    *(v41 + 8) = a4;
    *(v41 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4AA98F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a2;
  v49 = a5;
  v8 = sub_1C4EF9CD8();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotosPersonObservation(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  v17 = sub_1C4EFF0C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PhotoInteractionEventSourceAdapter(0, a3, a4, v21);
  sub_1C4409678((v48 + *(v22 + 36)), *(v48 + *(v22 + 36) + 24));
  sub_1C4EFFB18();
  v24 = v46;
  v23 = v47;
  if (sub_1C44157D4(v16, 1, v17) == 1)
  {
    sub_1C4423A0C(v16, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDE2DDE0);
    v26 = v13;
    sub_1C4AAA39C(a1, v13);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50 = v30;
      *v29 = 136315138;
      v31 = &v13[*(v11 + 20)];
      v32 = *v31;
      v33 = v31[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AAA400(v26);
      v34 = sub_1C441D828(v32, v33, &v50);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Unable to find mdid for PHPerson ID: %s", v29, 0xCu);
      sub_1C440962C(v30);
      MEMORY[0x1C6942830](v30, -1, -1);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    else
    {

      sub_1C4AAA400(v13);
    }

    result = 0;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v24 + 16))(v10, a1, v23);
    v35 = a1;
    v36 = sub_1C4EFF048();
    v38 = v37;
    sub_1C456902C(&qword_1EC0B8ED8, &qword_1C4F4CE40);
    v39 = swift_allocObject();
    v40 = v39;
    *(v39 + 16) = xmmword_1C4F0D130;
    v41 = (v35 + *(v11 + 28));
    v42 = *v41;
    v43 = *(v41 + 2) == 0;
    v44 = 0x10000;
    if (v43)
    {
      v44 = 0;
    }

    *(v39 + 32) = v44 | v42;
    *(v39 + 40) = 0;
    *(v39 + 48) = 5;
    (*(v18 + 8))(v20, v17);
    type metadata accessor for InteractionEvent(0);
    swift_allocObject();
    result = sub_1C4950CDC(v10, 3, v36, v38, v40);
  }

  *v49 = result;
  return result;
}

uint64_t sub_1C4AA9EDC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C4AAA294();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4AA9F64(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C44157D4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4AAA0A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            sub_1C440BAA8(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C4AAA294()
{
  result = qword_1EC0C2AC0;
  if (!qword_1EC0C2AC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC0C2AC0);
  }

  return result;
}

uint64_t sub_1C4AAA2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PhotoInteractionEventSourceAdapter(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C4AA98F0(a1, v9, v6, v7, a3);
}

uint64_t sub_1C4AAA39C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonObservation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AAA400(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonObservation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AAA45C(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1C4F01898();
  v8 = sub_1C4F018C8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C44098F0(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1C4409954(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1C4AC1908(0, 0, v7, &unk_1C4F4CE50, v10);

  return sub_1C446F170(v7, &qword_1EC0BC660, &qword_1C4F29150);
}

uint64_t sub_1C4AAA5FC()
{
  result = sub_1C4F01108();
  qword_1EDE2C8E0 = result;
  return result;
}

uint64_t sub_1C4AAA634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_1C456902C(&qword_1EC0C2AC8, &qword_1C4F4CE58);
  v4[4] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0C2AD0, &qword_1C4F4CE60);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_1C4F01E38();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0C2AD8, &qword_1C4F4CE68);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AAA7FC, 0, 0);
}

uint64_t sub_1C4AAA7FC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EDDDB8F8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  sub_1C4F01E48();

  v5 = sub_1C4AAB528(&qword_1EDDDB8D0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  MEMORY[0x1C693FA20](v3, v5);
  (*(v4 + 8))(v2, v3);
  sub_1C4F00BD8();
  sub_1C4AAB4C4();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v7 = sub_1C441A2AC(v6);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1C4AAA980()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1C4AAAC78;
  }

  else
  {
    v2 = sub_1C4AAAA94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1C4AAAAB0()
{
  v1 = v0[4];
  v2 = sub_1C4EF9508();
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    v6();
  }

  else
  {
    v7 = v0[15];
    v8 = v0[3];
    v9 = objc_autoreleasePoolPush();
    sub_1C4AAADF4(v8);
    if (v7)
    {

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v10 = v0[4];
      objc_autoreleasePoolPop(v9);
      sub_1C446F170(v10, &qword_1EC0C2AC8, &qword_1C4F4CE58);
      sub_1C4AAB4C4();
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v12 = sub_1C441A2AC(v11);

      MEMORY[0x1EEE6D8C8](v12);
    }
  }
}

uint64_t sub_1C4AAAC78()
{
  *(v0 + 16) = *(v0 + 120);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1C4AAAD04(uint64_t a1)
{
  v4 = *(type metadata accessor for Configuration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4AAA634(a1, v6, v7, v1 + v5);
}

void sub_1C4AAADF4(uint64_t a1)
{
  v45 = a1;
  v2 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeedbackLogEntry(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF6B8();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 104))(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69A9960], v8);
  v11 = sub_1C4EFF728();
  swift_allocObject();
  v12 = sub_1C4EFF708();
  sub_1C4EF96F8();
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4EF96C8();
  v48 = v12;
  sub_1C4AAB528(&qword_1EC0C2AE0, MEMORY[0x1E69A9988], MEMORY[0x1E69A9990]);
  v13 = sub_1C4EF96D8();
  if (v1)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDDFECB8);
    v16 = v1;
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v19 = 136315394;
      if (qword_1EDDDB8F8 != -1)
      {
        swift_once();
      }

      v22 = sub_1C4F01138();
      v24 = sub_1C441D828(v22, v23, &v48);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = v1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Failed to respond to %s: %@", v19, 0x16u);
      sub_1C446F170(v20, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v20, -1, -1);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = v13;
    v28 = v14;
    sub_1C4EF9CC8();
    v29 = sub_1C4EFF6F8();
    v47 = v6;
    v31 = v30;
    v32 = sub_1C4AAB528(&qword_1EDDEFF60, MEMORY[0x1E69A9988], MEMORY[0x1E69A9980]);
    v33 = MEMORY[0x1C693DE10](v11, v32);
    v34 = &v47[v4[5]];
    *v34 = v27;
    v34[1] = v28;
    v35 = &v47[v4[6]];
    *v35 = v29;
    v35[1] = v31;
    v37 = v46;
    v36 = v47;
    v38 = &v47[v4[7]];
    *v38 = v33;
    v38[1] = v39;
    v40 = (v36 + v4[8]);
    *v40 = 0;
    v40[1] = 0;
    *(v36 + v4[9]) = 0;
    v41 = v45;
    sub_1C44098F0(v45, v37);
    type metadata accessor for FeedbackProcessingTask();
    sub_1C4806460(v41);
    type metadata accessor for FeedbackWalker();
    swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    MEMORY[0x1EEE9AC00](v42);
    *(&v44 - 2) = v36;
    *(&v44 - 1) = v43;
    sub_1C48010FC(sub_1C48065E8, (&v44 - 4));

    sub_1C4AAB570(v36);
  }
}

unint64_t sub_1C4AAB4C4()
{
  result = qword_1EDDDBDB8;
  if (!qword_1EDDDBDB8)
  {
    sub_1C4572308(&qword_1EC0C2AD0, &qword_1C4F4CE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDB8);
  }

  return result;
}

uint64_t sub_1C4AAB528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4AAB570(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLogEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AAB5CC(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  sub_1C44098F0(a1, v4 - v3);
  type metadata accessor for PhotosAutonamingViewFeedbackProcessor(0);
  v6 = swift_allocObject();
  sub_1C4AAB684(v5);
  sub_1C445421C(a1, _s11InitContextVMa);
  return v6;
}

void sub_1C4AAB874(_BYTE *a1@<X8>)
{
  v44 = a1;
  v2 = sub_1C4EFF6E8();
  sub_1C43FCDF8();
  v45 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v41 = (v6 - v5);
  v7 = sub_1C4EFF6B8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = (v12 - v11);
  v14 = sub_1C456902C(&qword_1EC0C2AE8, &qword_1C4F4CF38);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v47 = v1;
  v20 = *(v1 + 48);
  if (v20)
  {
    v42 = 1;
    sub_1C440BAA8(&v39 - v18, 1, 1, v2);
    v21 = v20;
    sub_1C4EFF718();
    v22 = (*(v9 + 88))(v13, v7);
    v23 = v45;
    if (v22 != *MEMORY[0x1E69A9978])
    {
      v24 = v22;
      if (v22 != *MEMORY[0x1E69A9970])
      {
        if (v22 != *MEMORY[0x1E69A9968])
        {
          v38 = *MEMORY[0x1E69A9960];
          sub_1C446F170(v19, &qword_1EC0C2AE8, &qword_1C4F4CF38);

          v27 = v47;
          if (v24 != v38)
          {
            (*(v9 + 8))(v13, v7);
          }

          goto LABEL_14;
        }

        v29 = [v21 pruner];
        aBlock[4] = sub_1C45646BC;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C45B7938;
        aBlock[3] = &unk_1F43F82A0;
        v28 = _Block_copy(aBlock);

        [v29 deleteEventsPassingTest_];

        _Block_release(v28);
        sub_1C446F170(v19, &qword_1EC0C2AE8, &qword_1C4F4CF38);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        v27 = v47;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
LABEL_14:
          *(v27 + OBJC_IVAR____TtC24IntelligencePlatformCore37PhotosAutonamingViewFeedbackProcessor_changesMade) = 1;
          *v44 = 0;
          return;
        }

        __break(1u);
        goto LABEL_12;
      }

      v42 = 2;
    }

    v43 = v21;
    sub_1C446F170(v19, &qword_1EC0C2AE8, &qword_1C4F4CF38);
    (*(v9 + 96))(v13, v7);
    v9 = *v13;
    v7 = v13[1];
    v25 = sub_1C456902C(&qword_1EC0C2AF0, &qword_1C4F4CF40);
    v26 = *(v23 + 32);
    v26(v19, v13 + *(v25 + 48), v2);
    sub_1C440BAA8(v19, 0, 1, v2);
    sub_1C4AACA44(v19, v16);
    if (sub_1C44157D4(v16, 1, v2) == 1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446F170(v19, &qword_1EC0C2AE8, &qword_1C4F4CF38);
      swift_bridgeObjectRelease_n();

      sub_1C446F170(v16, &qword_1EC0C2AE8, &qword_1C4F4CF38);
      v27 = v47;
      goto LABEL_14;
    }

    v13 = v41;
    v26(v41, v16, v2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = v47;
    sub_1C4AABE8C(aBlock);
    v28 = SLOBYTE(aBlock[0]);
    if (SLOBYTE(aBlock[0]) == 7)
    {
      swift_bridgeObjectRelease_n();

      (*(v23 + 8))(v13, v2);
LABEL_13:
      sub_1C446F170(v19, &qword_1EC0C2AE8, &qword_1C4F4CF38);
      goto LABEL_14;
    }

LABEL_12:
    v40 = [v43 source];
    HIDWORD(v39) = dword_1C4F4CF4C[v28];
    LOBYTE(aBlock[0]) = v28;
    v31 = v13;
    v32 = sub_1C4AAC060(v9, v7, v13, aBlock);
    v34 = v33;

    v35 = objc_allocWithZone(MEMORY[0x1E698EDB8]);
    v36 = sub_1C4AAC984(v42, HIDWORD(v39), v32, v34, v9, v7);
    v37 = v40;
    [v40 sendEvent_];

    (*(v23 + 8))(v31, v2);
    goto LABEL_13;
  }

  sub_1C44200CC();
  v39 = 50;
  sub_1C4400B6C();
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4AABE8C(char *a1@<X8>)
{
  sub_1C4EFF6D8();
  if (v4)
  {
    sub_1C440B0E8();
    v5 = VisionKeyValueStore.fetchEntityIdentifiers(for:)();
    v6 = sub_1C4AACAFC(v5, v1, v2);
  }

  else
  {
    sub_1C4EFF6C8();
    if (!v7)
    {
      v9 = MEMORY[0x1E69E7CD0];
      goto LABEL_6;
    }

    sub_1C440B0E8();
    v8 = VisionKeyValueStore.fetchNameEntities(for:)();
    v6 = sub_1C4AACDAC(v8, v1, v2);
  }

  v9 = v6;
LABEL_6:
  v10 = sub_1C486C288();
  v12 = v11;
  v14 = v13;
  v15 = sub_1C486C29C(v9);
  if ((v14 & 1) == 0 && (v17 & 1) == 0)
  {
    if (v12 == v16)
    {
      if (v10 != v15)
      {
        sub_1C486BE74(v10, v12, v9, v23);

        sub_1C4851A34(v23);
        v22 = v23[48];
LABEL_15:
        *a1 = v22;
        return;
      }

      if (qword_1EDDFD028 == -1)
      {
LABEL_11:
        v18 = sub_1C4F00978();
        sub_1C442B738(v18, qword_1EDE2DE10);
        v19 = sub_1C4F00968();
        v20 = sub_1C4F01CD8();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1C43F8000, v19, v20, "There should be an entry in the vision kvs for an autonaming suggestion.", v21, 2u);
          MEMORY[0x1C6942830](v21, -1, -1);
        }

        v22 = 7;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1C4AAC060(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v56 = v8;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v58 = v13;
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v53 - v16;
  v17 = sub_1C4F01188();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v24 = *a4;
  v25 = sub_1C4EFF6D8();
  if (v26 || (v25 = sub_1C4EFF6C8(), v26))
  {
    v27 = v25;
    v28 = v26;
    v60 = a1;
    v61 = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v27, v28);

    v29 = "association:identifierNoMatch";
    v30 = 0xD00000000000001BLL;
    switch(v24)
    {
      case 1:
        goto LABEL_12;
      case 2:
        v29 = "num_rejected_suggestions";
        v30 = 0xD000000000000014;
        goto LABEL_12;
      case 3:
        v32 = "association:contactsInferred";
        goto LABEL_11;
      case 4:
        v31 = "association:contactsConfirmed";
        goto LABEL_9;
      case 5:
        v31 = "association:userTaggedHomeKit";
        goto LABEL_9;
      case 6:
        v32 = "association:userTaggedPhotos";
LABEL_11:
        v29 = v32 - 32;
        v30 = 0xD00000000000001CLL;
        goto LABEL_12;
      default:
        v31 = "association:identifierNoMatch";
LABEL_9:
        v29 = v31 - 32;
        v30 = 0xD00000000000001DLL;
LABEL_12:
        MEMORY[0x1C6940010](v30, v29 | 0x8000000000000000);

        sub_1C4F01178();
        sub_1C4F01148();
        v34 = v33;

        (*(v19 + 8))(v23, v17);
        if (v34 >> 60 == 15)
        {
          v35 = 0;
        }

        else
        {
          sub_1C4AACAB4(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
          v36 = v57;
          sub_1C4F00DB8();
          v37 = sub_1C4404DC8();
          sub_1C44344B8(v37, v38);
          v39 = sub_1C4404DC8();
          sub_1C4498FD8(v39, v40, v11);
          v41 = sub_1C4404DC8();
          sub_1C441DFEC(v41, v42);
          v43 = v55;
          sub_1C4F00DA8();
          (*(v56 + 8))(v11, v36);
          v45 = v58;
          v44 = v59;
          v46 = v54;
          (*(v58 + 16))(v54, v43, v59);
          v47 = sub_1C44D5F88(v46);
          v49 = v48;
          v35 = sub_1C4EF9A48();
          sub_1C4434000(v47, v49);
          v50 = sub_1C4404DC8();
          sub_1C441DFEC(v50, v51);
          (*(v45 + 8))(v43, v44);
        }

        result = v35;
        break;
    }
  }

  else
  {
    sub_1C44200CC();
    v53 = 173;
    sub_1C4400B6C();
    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

void sub_1C4AAC4C4()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore37PhotosAutonamingViewFeedbackProcessor_changesMade;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore37PhotosAutonamingViewFeedbackProcessor_changesMade) == 1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
    v3 = sub_1C4F01108();
    v4 = sub_1C4F01108();
    v17[0] = 0;
    v5 = [v2 sourceUpdatedWithSourceType:v3 sourceIdentifier:v4 error:v17];

    if (v5)
    {
      v6 = v17[0];

      *(v0 + v1) = 0;
    }

    else
    {
      v7 = v17[0];
      v8 = sub_1C4EF97A8();

      swift_willThrow();
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v9 = sub_1C4F00978();
      sub_1C442B738(v9, qword_1EDDFECB8);
      v10 = v8;
      v11 = sub_1C4F00968();
      v12 = sub_1C4F01CD8();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v8;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_1C43F8000, v11, v12, "PhotosAutonamingViewFeedbackProcessor: Could not register sourceUpdated event: %@", v13, 0xCu);
        sub_1C446F170(v14, &qword_1EC0BDA00, &qword_1C4F10D30);
        MEMORY[0x1C6942830](v14, -1, -1);
        MEMORY[0x1C6942830](v13, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1C4AAC71C()
{

  sub_1C442D188();
  sub_1C445421C(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C4AAC768()
{
  sub_1C4AAC71C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhotosAutonamingViewFeedbackProcessor(uint64_t a1)
{
  result = qword_1EDDDC8B0;
  if (!qword_1EDDDC8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AAC814(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

id sub_1C4AAC984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1C4F01108();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1C4F01108();

LABEL_6:
  v12 = [v6 initWithFeedbackType:a1 associationType:a2 feedbackId:v10 visualId:v11];

  return v12;
}

uint64_t sub_1C4AACA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2AE8, &qword_1C4F4CF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AACAB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C4AACAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);
  v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C4AAD32C(v26, v10, a1, a2, a3, sub_1C4AAD1C4);

      MEMORY[0x1C6942830](v26, -1, -1);
      swift_bridgeObjectRelease_n();
      return v24;
    }
  }

  v29 = v4;
  v27[1] = v27;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  v28 = v10;
  sub_1C4501018(0, v10, v11);
  v13 = 0;
  v4 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v10 = v15 & *(a1 + 56);
  v16 = (v14 + 63) >> 6;
  while (2)
  {
    v30 = v13;
    do
    {
      if (!v10)
      {
        v18 = v4;
        while (1)
        {
          v4 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v4 >= v16)
          {
            goto LABEL_21;
          }

          v19 = *(a1 + 56 + 8 * v4);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v10 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v20 = v17 | (v4 << 6);
      v21 = (*(a1 + 48) + 56 * v20);
      v22 = *v21 == a2 && v21[1] == a3;
    }

    while (!v22 && (sub_1C4F02938() & 1) == 0);
    *&v11[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v13 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  sub_1C4A8E4C4(v11, v28, v30, a1);
  v24 = v23;
  swift_bridgeObjectRelease_n();
  return v24;
}

void *sub_1C4AACDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);
  v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C4AAD32C(v26, v10, a1, a2, a3, sub_1C4AAD05C);

      MEMORY[0x1C6942830](v26, -1, -1);
      swift_bridgeObjectRelease_n();
      return v24;
    }
  }

  v29 = v4;
  v27[1] = v27;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  v28 = v10;
  sub_1C4501018(0, v10, v11);
  v13 = 0;
  v4 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v10 = v15 & *(a1 + 56);
  v16 = (v14 + 63) >> 6;
  while (2)
  {
    v30 = v13;
    do
    {
      if (!v10)
      {
        v18 = v4;
        while (1)
        {
          v4 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v4 >= v16)
          {
            goto LABEL_21;
          }

          v19 = *(a1 + 56 + 8 * v4);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v10 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v20 = v17 | (v4 << 6);
      v21 = *(a1 + 48) + 56 * v20;
      v22 = *(v21 + 16) == a2 && *(v21 + 24) == a3;
    }

    while (!v22 && (sub_1C4F02938() & 1) == 0);
    *&v11[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v13 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  sub_1C4A8E4C4(v11, v28, v30, a1);
  v24 = v23;
  swift_bridgeObjectRelease_n();
  return v24;
}

uint64_t sub_1C4AAD05C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(a3 + 48) + 56 * v18;
    result = *(v19 + 16);
    if (result != a4 || *(v19 + 24) != a5)
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      sub_1C4A8E4C4(v25, a2, v8, a3);
      v23 = v22;

      return v23;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4AAD1C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 56 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      sub_1C4A8E4C4(v25, a2, v8, a3);
      v23 = v22;

      return v23;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C4AAD32C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t sub_1C4AAD408(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C4AAD454(char a1)
{
  result = 0x64497465737361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x73644965636166;
      break;
    case 3:
      result = 0x736E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4AAD4F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4AAD408(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4AAD528@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C4AAD454(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C4AAD55C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4AAD408(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4AAD584(uint64_t a1)
{
  v2 = sub_1C4AAD884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AAD5C0(uint64_t a1)
{
  v2 = sub_1C4AAD884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPersonMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2AF8, &unk_1C4F4CF70);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAD884();
  sub_1C4F02BF8();
  LOBYTE(v15) = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v11 = type metadata accessor for AssetPersonMetadata(0);
    LOBYTE(v15) = 1;
    sub_1C4EF9CD8();
    sub_1C442D1A0();
    sub_1C4AADDB8(v12);
    sub_1C44200DC();
    sub_1C4F027E8();
    v15 = *(v3 + *(v11 + 24));
    HIBYTE(v14) = 2;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C44200DC();
    sub_1C4F027E8();
    v15 = *(v3 + *(v11 + 28));
    HIBYTE(v14) = 3;
    sub_1C456902C(&qword_1EC0C2B08, &qword_1C4F4CF80);
    sub_1C4AADDFC(&unk_1EC0C2B10);
    sub_1C44200DC();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C4AAD884()
{
  result = qword_1EC0C2B00;
  if (!qword_1EC0C2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B00);
  }

  return result;
}

unint64_t sub_1C4AAD8F8()
{
  result = qword_1EC0C2B18;
  if (!qword_1EC0C2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B18);
  }

  return result;
}

uint64_t AssetPersonMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v28 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v30 = sub_1C456902C(&qword_1EC0C2B20, &qword_1C4F4CF88);
  sub_1C43FCDF8();
  v27 = v9;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for AssetPersonMetadata(0);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = (v15 - v14);
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAD884();
  v29 = v12;
  v17 = v31;
  sub_1C4F02BC8();
  if (v17)
  {
    return sub_1C440962C(a1);
  }

  v18 = v16;
  v19 = v27;
  v20 = v28;
  LOBYTE(v33) = 0;
  *v18 = sub_1C4F02678();
  v18[1] = v21;
  v25[2] = v21;
  v31 = v18;
  LOBYTE(v33) = 1;
  sub_1C442D1A0();
  sub_1C4AADDB8(v22);
  sub_1C4F026C8();
  (*(v20 + 32))(v31 + v13[5], v8, v3);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v32 = 2;
  sub_1C443D0B4(&qword_1EDDFEA58);
  v25[1] = 0;
  sub_1C4F026C8();
  v23 = v31;
  *(v31 + v13[6]) = v33;
  sub_1C456902C(&qword_1EC0C2B08, &qword_1C4F4CF80);
  v32 = 3;
  sub_1C4AADDFC(&unk_1EC0C2B28);
  sub_1C4F026C8();
  (*(v19 + 8))(v29, v30);
  *(v23 + v13[7]) = v33;
  sub_1C4AADEC4(v23, v26);
  sub_1C440962C(a1);
  return sub_1C4AADF28(v23);
}

unint64_t sub_1C4AADDB8(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4AADDFC(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0C2B08, &qword_1C4F4CF80);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4AADE70()
{
  result = qword_1EC0C2B30;
  if (!qword_1EC0C2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B30);
  }

  return result;
}

uint64_t sub_1C4AADEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPersonMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AADF28(uint64_t a1)
{
  v2 = type metadata accessor for AssetPersonMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AADF84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E6E6F73726570 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x67416E6F73726570 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C4AAE0A4(char a1)
{
  if (!a1)
  {
    return 0x64496E6F73726570;
  }

  if (a1 == 1)
  {
    return 0x614E6E6F73726570;
  }

  return 0x67416E6F73726570;
}

uint64_t sub_1C4AAE13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AADF84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AAE164(uint64_t a1)
{
  v2 = sub_1C4AAE3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AAE1A0(uint64_t a1)
{
  v2 = sub_1C4AAE3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPerson.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2B38, &qword_1C4F4CF90);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v9;
  LODWORD(v9) = *(v1 + 32);
  v15 = *(v1 + 34);
  v16 = v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAE3B8();
  sub_1C4F02BF8();
  v24 = 0;
  v10 = v19;
  sub_1C4F02798();
  if (!v10)
  {
    v12 = v15;
    v11 = v16;
    v23 = 1;
    sub_1C4F02738();
    v20 = v11;
    v21 = v12;
    v22 = 2;
    type metadata accessor for PHPersonAgeType(0);
    sub_1C4407864();
    sub_1C4AADDB8(v13);
    sub_1C44200DC();
    sub_1C4F02778();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C4AAE3B8()
{
  result = qword_1EC0C2B40;
  if (!qword_1EC0C2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B40);
  }

  return result;
}

uint64_t AssetPerson.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C2B48, &qword_1C4F4CF98);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAE3B8();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v15 = v7;
  v13 = sub_1C4F02618();
  v14 = v8;
  type metadata accessor for PHPersonAgeType(0);
  sub_1C4407864();
  sub_1C4AADDB8(v9);
  sub_1C4F02658();
  v10 = sub_1C4402F74();
  v11(v10);
  *a2 = v6;
  *(a2 + 8) = v15;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 34) = v17;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t sub_1C4AAE6B4(uint64_t a1)
{
  sub_1C4EFFA98();
  if (v4)
  {
    sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4423A0C(v3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4AAE744@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4AAE6B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4AAE76C(void *a1)
{
  v1 = a1;

  return sub_1C4EFFAB8();
}

void sub_1C4AAE7A4()
{
  v1 = *v0;
  sub_1C4AAE76C(*v0);
}

uint64_t sub_1C4AAE7F0(__int16 a1)
{
  switch(a1)
  {
    case 1:
      result = 2036490562;
      break;
    case 2:
      result = 0x646C696843;
      break;
    case 3:
      result = 0x756441676E756F59;
      break;
    case 4:
      result = 0x726F696E6553;
      break;
    case 5:
      result = 0x746C756441;
      break;
    default:
      result = 0x746553746F4ELL;
      break;
  }

  return result;
}

void sub_1C4AAE9D4(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4AAEAA0(319, &qword_1EDDDBC20, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1C4AAEAA0(319, &qword_1EC0C2B50, &type metadata for AssetPerson);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4AAEAA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C4F017A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1C4AAEAEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C4AAEB00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1C4AAEB40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4AAEB98(uint64_t result)
{
  if (result - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

id sub_1C4AAEBAC(uint64_t a1)
{
  v2 = [objc_opt_self() fetchPersonWithFace:v1 options:a1];
  v3 = [v2 firstObject];

  return v3;
}

uint64_t sub_1C4AAEC18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v46 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v40 - v14;
  sub_1C43FBDBC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = MEMORY[0x1E69E7CC0];
  v44 = v15 + 16;
  sub_1C43FBDBC();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v43 = v17 + 16;
  v18 = [objc_opt_self() fetchFacesInAsset:v3 options:a1];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v15;
  v19[4] = v17;
  aBlock[4] = sub_1C4AB152C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4AAF5EC;
  aBlock[3] = &unk_1F43F8548;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  [v18 enumerateObjectsUsingBlock_];
  _Block_release(v20);
  result = sub_1C45B4BF8(v3, &selRef_uuid);
  if (v23)
  {
    v24 = result;
    v25 = v23;
    v26 = [v3 creationDate];
    if (v26)
    {
      v27 = v26;
      sub_1C4EF9C78();

      v28 = v46;
      v41 = v17;
      v29 = v15;
      v30 = v25;
      v31 = v24;
      v32 = *(v46 + 32);
      v32(v7, v12, v8);
      sub_1C440BAA8(v7, 0, 1, v8);
      v33 = v45;
      v32(v45, v7, v8);
      v24 = v31;
      v25 = v30;
      v15 = v29;
      v17 = v41;
    }

    else
    {
      sub_1C440BAA8(v7, 1, 1, v8);
      v34 = v45;
      sub_1C4EF9B28();

      v33 = v34;
      v35 = sub_1C44157D4(v7, 1, v8);
      v28 = v46;
      if (v35 != 1)
      {
        sub_1C4423A0C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    swift_beginAccess();
    v36 = *(v15 + 16);
    swift_beginAccess();
    v37 = *(v17 + 16);
    v38 = v42;
    *v42 = v24;
    v38[1] = v25;
    v39 = type metadata accessor for AssetPersonMetadata(0);
    (*(v28 + 32))(v38 + v39[5], v33, v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *(v38 + v39[6]) = v36;
    *(v38 + v39[7]) = v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C4AAF02C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  sub_1C4AAF0A4(a1, a4, (a5 + 16), (a6 + 16));

  objc_autoreleasePoolPop(v10);
}

void sub_1C4AAF0A4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1C4AAEBAC(a2);
  if (!v7)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDDFECB8);
    v18 = a1;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v60[0] = v22;
      *v21 = 136315138;
      v23 = sub_1C45B4BF8(v18, &selRef_uuid);
      v25 = v24;

      if (!v25)
      {
LABEL_19:
        __break(1u);
        return;
      }

      v26 = sub_1C441D828(v23, v25, v60);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1C43F8000, v19, v20, "PhotosMetadataFetcher: Could not fetch person for face: %s", v21, 0xCu);
      sub_1C440962C(v22);
      MEMORY[0x1C6942830](v22, -1, -1);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    else
    {
    }

    return;
  }

  v8 = v7;
  v9 = sub_1C45B4BF8(a1, &selRef_uuid);
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v9;
  v12 = v10;
  swift_beginAccess();
  sub_1C4588BAC();
  v13 = *(*a3 + 16);
  sub_1C45897E8();
  v14 = *a3;
  *(v14 + 16) = v13 + 1;
  v15 = v14 + 16 * v13;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  swift_endAccess();
  if ([v8 ageType])
  {
    v16 = [v8 ageType];
  }

  else
  {
    v16 = sub_1C4AAEB98([a1 ageType]);
  }

  v59 = v16;
  v27 = [v8 localIdentifier];
  v28 = sub_1C4F01138();
  v30 = v29;

  v31 = sub_1C45B4BF8(v8, &selRef_name);
  v33 = v32;
  swift_beginAccess();
  sub_1C458959C();
  v34 = *(*a4 + 16);
  sub_1C458A124();
  v35 = *a4;
  *(v35 + 16) = v34 + 1;
  v36 = v35 + 40 * v34;
  *(v36 + 32) = v28;
  *(v36 + 40) = v30;
  *(v36 + 48) = v31;
  *(v36 + 56) = v33;
  *(v36 + 64) = v59;
  *(v36 + 66) = 0;
  swift_endAccess();
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v37 = sub_1C4F00978();
  sub_1C442B738(v37, qword_1EDDFECB8);
  v38 = v8;
  v39 = a1;
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CC8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61 = v43;
    *v42 = 136315906;
    v44 = [v38 localIdentifier];
    v45 = sub_1C4F01138();
    v47 = v46;

    v48 = sub_1C441D828(v45, v47, &v61);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    v60[0] = sub_1C45B4BF8(v38, &selRef_name);
    v60[1] = v49;
    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    v50 = sub_1C4F01198();
    v52 = sub_1C441D828(v50, v51, &v61);

    *(v42 + 14) = v52;
    *(v42 + 22) = 2080;
    [v38 ageType];
    type metadata accessor for PHPersonAgeType(0);
    v53 = sub_1C4F01198();
    v55 = sub_1C441D828(v53, v54, &v61);

    *(v42 + 24) = v55;
    *(v42 + 32) = 2080;
    LOWORD(v60[0]) = [v39 ageType];
    type metadata accessor for PHFaceAgeType(0);
    v56 = sub_1C4F01198();
    v58 = sub_1C441D828(v56, v57, &v61);

    *(v42 + 34) = v58;
    _os_log_impl(&dword_1C43F8000, v40, v41, "PhotosMetadataFetcher: PersonID: %s, Person name: %s, PersonAgeType: %s, FaceAgeType: %s", v42, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v43, -1, -1);
    MEMORY[0x1C6942830](v42, -1, -1);
  }

  else
  {
  }
}

void sub_1C4AAF5EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1C4AAF670(uint64_t a1@<X8>)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4AAF6CC(v1, a1);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1C4AAF6CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51[-v12];
  v14 = sub_1C4AB1538(a1);
  if (v14)
  {
    v15 = v14;
    v16 = [a1 localIdentifier];
    v17 = sub_1C4F01138();
    v19 = v18;

    v20 = [a1 creationDate];
    if (v20)
    {
      v21 = v20;
      sub_1C4EF9C78();

      v22 = sub_1C4EF9CD8();
      v23 = 0;
    }

    else
    {
      v22 = sub_1C4EF9CD8();
      v23 = 1;
    }

    sub_1C440BAA8(v13, v23, 1, v22);
    v43 = sub_1C4618B1C(v15);

    v44 = v56;
    v45 = v17;
    v46 = v19;
    v47 = v13;
    v48 = v43;
  }

  else
  {
    sub_1C4F00198();
    v24 = a1;
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();

    v27 = os_log_type_enabled(v25, v26);
    v55 = v2;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v28 = 136315138;
      v29 = [v24 localIdentifier];
      v30 = sub_1C4F01138();
      v52 = v26;
      v31 = v30;
      v54 = v24;
      v33 = v32;

      v34 = sub_1C441D828(v31, v33, &v57);
      v24 = v54;

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1C43F8000, v25, v52, "Couldn't fetch sceneClassifications from asset with ID: %s", v28, 0xCu);
      v35 = v53;
      sub_1C440962C(v53);
      MEMORY[0x1C6942830](v35, -1, -1);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v36 = [v24 localIdentifier];
    v37 = sub_1C4F01138();
    v39 = v38;

    v40 = [v24 creationDate];
    if (v40)
    {
      v41 = v40;
      sub_1C4EF9C78();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v49 = sub_1C4EF9CD8();
    sub_1C440BAA8(v10, v42, 1, v49);
    v48 = MEMORY[0x1E69E7CC0];
    v44 = v56;
    v45 = v37;
    v46 = v39;
    v47 = v10;
  }

  return sub_1C4AB34A0(v45, v46, v47, v48, v44);
}

id sub_1C4AAFA98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, char a7)
{
  v27 = objc_autoreleasePoolPush();
  v10 = [a5 librarySpecificFetchOptions];
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0FCC0;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v11 + 32) = sub_1C4D29970(0x6E6F697461657263, 0xEC00000065746144, (a4 & 1) == 0);
  sub_1C4AB15E8(v11, v10);
  sub_1C4461BB8(0, &qword_1EDDF05A0, 0x1E696AE18);
  sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0CE60;
  v14 = sub_1C4EF9BF8();
  v15 = sub_1C4461BB8(0, &unk_1EDDDB878, 0x1E695DF00);
  *(v13 + 56) = v15;
  v16 = sub_1C4AB166C(&unk_1EDDDB870);
  *(v13 + 64) = v16;
  *(v13 + 32) = v14;
  v17 = sub_1C4EF9BF8();
  *(v13 + 96) = v15;
  *(v13 + 104) = v16;
  *(v13 + 72) = v17;
  v18 = sub_1C4F01C58();
  [v10 setPredicate_];

  [v10 setFetchLimit_];
  [v10 setExcludeScreenshotAssets_];
  v19 = objc_opt_self();
  v20 = v10;
  v21 = [v19 fetchAssetsWithOptions_];
  if (a7)
  {
    v22 = v20;
  }

  else
  {
    v23 = [v19 fetchAssetsWithMediaType:a6 options:v20];

    v22 = v21;
    v21 = v23;
  }

  objc_autoreleasePoolPop(v27);
  return v21;
}

uint64_t sub_1C4AAFD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1C4EF98F8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v14 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v15 = sub_1C44B90E0(v13);
  v16 = [v15 librarySpecificFetchOptions];
  [v16 setMinimumVerifiedFaceCount_];
  [v16 setMinimumUnverifiedFaceCount_];
  [v16 setIncludeTorsoAndFaceDetectionData_];
  v17 = sub_1C4AAFA98(a1, a2, a3, a4, v15, 0, 1);

  sub_1C43FBDBC();
  result = swift_allocObject();
  *(result + 16) = v16;
  *a5 = v17;
  a5[1] = sub_1C4AB1524;
  a5[2] = result;
  return result;
}

void sub_1C4AAFEFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4;
  v11 = objc_autoreleasePoolPush();
  sub_1C4AAFFB4(a1, a2, a3, v6, &v13, &v14);
  objc_autoreleasePoolPop(v11);
  if (!v5)
  {
    v12 = v15;
    *a5 = v14;
    *(a5 + 16) = v12;
  }
}

uint64_t sub_1C4AAFFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v112 = a5;
  v110 = a4;
  v111 = a3;
  v125 = a2;
  v128 = a1;
  v109 = a6;
  v6 = sub_1C4EF9F68();
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1C4EF9EB8();
  v121 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EF9ED8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EF9E88();
  v14 = *(v13 - 8);
  v119 = v13;
  v120 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v129 = (&v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v106 - v20;
  v122 = sub_1C4EF9CD8();
  v133 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v108 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v106 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v113 = &v106 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v106 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v126 = &v106 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v127 = &v106 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v131 = (&v106 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v130 = &v106 - v36;
  v37 = sub_1C4EF9F88();
  v114 = *(v37 - 8);
  v115 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9C88();
  (*(v14 + 104))(v16, *MEMORY[0x1E69698D0], v13);
  v40 = v12;
  v41 = v9;
  (*(v10 + 104))(v12, *MEMORY[0x1E69699C8], v9);
  v42 = v121;
  v44 = v123;
  v43 = v124;
  (*(v121 + 104))(v123, *MEMORY[0x1E6969998], v124);
  v132 = v39;
  sub_1C4EF9EF8();
  v45 = v43;
  v46 = v122;
  (*(v42 + 8))(v44, v45);
  (*(v10 + 8))(v40, v41);
  v47 = v16;
  v48 = v133;
  (*(v120 + 8))(v47, v119);
  v49 = *(v48 + 8);
  v124 = v48 + 8;
  v49(v131, v46);
  result = sub_1C44157D4(v21, 1, v46);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v131 = v49;
  v51 = *(v48 + 32);
  v52 = v130;
  v51(v130, v21, v46);
  v53 = v116;
  v54 = v117;
  v55 = v118;
  (*(v117 + 104))(v116, *MEMORY[0x1E6969A48], v118);
  v56 = v129;
  sub_1C4EF9F28();
  (*(v54 + 8))(v53, v55);
  result = sub_1C44157D4(v56, 1, v46);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v57 = v52;
  v58 = v127;
  v51(v127, v129, v46);
  v59 = *(v133 + 16);
  v60 = v126;
  v133 += 16;
  (v59)(v126, v128, v46);
  v61 = sub_1C4EF9C18();
  v62 = v125;
  if (v61)
  {
    v129 = v59;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v63 = sub_1C4F00978();
    sub_1C442B738(v63, qword_1EDDFECB8);
    v64 = v106;
    v65 = v129;
    (v129)(v106, v128, v46);
    (v65)(v113, v58, v46);
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CD8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v134 = v123;
      *v68 = 136315394;
      sub_1C4AADDB8(&qword_1EDDFCD50);
      LODWORD(v121) = v67;
      v69 = sub_1C4F02858();
      v71 = v70;
      v131(v64, v46);
      v72 = sub_1C441D828(v69, v71, &v134);
      v57 = v130;
      v62 = v125;

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      v73 = v113;
      v74 = sub_1C4F02858();
      v76 = v75;
      v77 = v73;
      v78 = v131;
      v131(v77, v46);
      v79 = sub_1C441D828(v74, v76, &v134);
      v58 = v127;

      *(v68 + 14) = v79;
      _os_log_impl(&dword_1C43F8000, v66, v121, "SupportedDate Range is 28 days. Resetting startDate: %s to %s", v68, 0x16u);
      v80 = v123;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v80, -1, -1);
      v81 = v68;
      v60 = v126;
      MEMORY[0x1C6942830](v81, -1, -1);

      v78(v60, v46);
    }

    else
    {

      v82 = v131;
      v131(v113, v46);
      v82(v64, v46);
      v82(v60, v46);
      v57 = v130;
    }

    v59 = v129;
    (v129)(v60, v58, v46);
  }

  v83 = sub_1C4EF9C18();
  v84 = v132;
  if (v83)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v85 = sub_1C4F00978();
    sub_1C442B738(v85, qword_1EDDFECB8);
    v86 = v107;
    (v59)(v107, v62, v46);
    v87 = v108;
    (v59)(v108, v128, v46);
    v88 = sub_1C4F00968();
    v89 = sub_1C4F01CD8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = v133;
      *v90 = 136315394;
      sub_1C4AADDB8(&qword_1EDDFCD50);
      v129 = v88;
      v91 = sub_1C4F02858();
      v93 = v92;
      LODWORD(v128) = v89;
      v94 = v131;
      v131(v86, v46);
      v95 = sub_1C441D828(v91, v93, &v134);
      v96 = v130;

      *(v90 + 4) = v95;
      *(v90 + 12) = 2080;
      v97 = sub_1C4F02858();
      v99 = v98;
      v94(v87, v46);
      v100 = sub_1C441D828(v97, v99, &v134);
      v58 = v127;

      *(v90 + 14) = v100;
      v101 = v129;
      _os_log_impl(&dword_1C43F8000, v129, v128, "endDate: %s cannot be before startDate %s", v90, 0x16u);
      v102 = v133;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v102, -1, -1);
      v103 = v90;
      v60 = v126;
      MEMORY[0x1C6942830](v103, -1, -1);
    }

    else
    {

      v94 = v131;
      v131(v87, v46);
      v94(v86, v46);
      v96 = v130;
    }

    sub_1C4AB14D0();
    v105 = swift_allocError();
    swift_willThrow();
    v94(v60, v46);
    v94(v58, v46);
    v94(v96, v46);
    result = (*(v114 + 8))(v132, v115);
    *v112 = v105;
  }

  else
  {
    sub_1C4AAFD4C(v60, v62, v111, v110 & 1, v109);
    v104 = v131;
    v131(v60, v46);
    v104(v58, v46);
    v104(v57, v46);
    return (*(v114 + 8))(v84, v115);
  }

  return result;
}

double sub_1C4AB0D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C4AAFEFC(a1, a2, a3, a4, &v9);
  if (!v5)
  {
    v8 = v10;
    result = *&v9;
    *a5 = v9;
    *(a5 + 16) = v8;
    *(a5 + 24) = sub_1C4AB0D84;
    *(a5 + 32) = 0;
  }

  return result;
}

void sub_1C4AB0D84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for AssetPersonMetadata(0) + 28));
  v11[2] = a1;
  sub_1C45DB3C8(sub_1C4AB16AC, v11, v4, v5, v6, v7, v8, v9, v11[0], v11[1]);
  *a2 = v10;
}

uint64_t sub_1C4AB0DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(a1 + 16);
  v10 = *(a1 + 34);
  v11 = *(type metadata accessor for AssetPersonMetadata(0) + 20);
  v12 = sub_1C4EF9CD8();
  (*(*(v12 - 8) + 16))(a3, a2 + v11, v12);
  v13 = type metadata accessor for PhotosPersonObservation(0);
  v14 = (a3 + v13[5]);
  *v14 = v6;
  v14[1] = v5;
  v15 = (a3 + v13[6]);
  *v15 = v8;
  v15[1] = v7;
  v16 = a3 + v13[7];
  *v16 = v9;
  *(v16 + 2) = v10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4AB0ED4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF98F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v8 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v9 = sub_1C44B90E0(v7);
  v10 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v11 = sub_1C4AAFA98(a1, a1 + *(v10 + 36), 0, 0, v9, 1, 0);
  a2[3] = sub_1C456902C(&qword_1EC0C2B98, &unk_1C4F4D480);
  a2[4] = sub_1C4AB180C(&unk_1EC0C2BA0);

  *a2 = v11;
  a2[1] = sub_1C4AB1048;
  a2[2] = 0;
}

_BYTE *storeEnumTagSinglePayload for AssetPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetPersonMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4AB12C4()
{
  result = qword_1EC0C2B58;
  if (!qword_1EC0C2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B58);
  }

  return result;
}

unint64_t sub_1C4AB131C()
{
  result = qword_1EC0C2B60;
  if (!qword_1EC0C2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B60);
  }

  return result;
}

unint64_t sub_1C4AB1374()
{
  result = qword_1EC0C2B68;
  if (!qword_1EC0C2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B68);
  }

  return result;
}

unint64_t sub_1C4AB13CC()
{
  result = qword_1EC0C2B70;
  if (!qword_1EC0C2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B70);
  }

  return result;
}

unint64_t sub_1C4AB1424()
{
  result = qword_1EC0C2B78;
  if (!qword_1EC0C2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B78);
  }

  return result;
}

unint64_t sub_1C4AB147C()
{
  result = qword_1EC0C2B80;
  if (!qword_1EC0C2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B80);
  }

  return result;
}

unint64_t sub_1C4AB14D0()
{
  result = qword_1EC0C2B88;
  if (!qword_1EC0C2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B88);
  }

  return result;
}

uint64_t sub_1C4AB1538(void *a1)
{
  v1 = [a1 sceneClassifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &qword_1EC0B9E18, 0x1E6978A38);
  sub_1C4AB166C(&unk_1EC0B9E20);
  v3 = sub_1C4F01AB8();

  return v3;
}

void sub_1C4AB15E8(uint64_t a1, void *a2)
{
  sub_1C4461BB8(0, &unk_1EDDF0458, 0x1E696AEB0);
  v3 = sub_1C4F01658();

  [a2 setSortDescriptors_];
}

unint64_t sub_1C4AB166C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4461BB8(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosMetadataFetcher.PhotosMetadataFetcherError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4AB17A0(uint64_t a1)
{
  result = sub_1C4EFFAA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4AB180C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4AB1854()
{
  result = qword_1EC0C2BB0;
  if (!qword_1EC0C2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2BB0);
  }

  return result;
}

uint64_t sub_1C4AB18E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosMetadataFetcher();
  swift_initStackObject();
  sub_1C4AB0D2C(a1, a2, a3, a4, &v11);
  v10 = v11;
  v12 = sub_1C4AB2CD0;
  v13 = 0;
  sub_1C456902C(&qword_1EC0C2C50, &unk_1C4F4D770);
  sub_1C4AB3340();
  v8 = sub_1C4F014B8();

  return v8;
}

uint64_t PhotosPersonObservation.description.getter()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](60, 0xE100000000000000);
  v1 = type metadata accessor for PhotosPersonObservation(0);
  sub_1C456902C(&unk_1EC0C2BC0, &unk_1C4F4D590);
  v2 = sub_1C4F01198();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](0x617473656D697420, 0xEC000000203A706DLL);
  sub_1C4EF9CD8();
  sub_1C441A2DC();
  sub_1C4AB2E54(v3, v4, MEMORY[0x1E6969570]);
  v5 = sub_1C4F02858();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x1C6940010](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1C6940010](0x203A656D616E202CLL, 0xE800000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  v6 = sub_1C4F01198();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](0x76726573626F202CLL, 0xEF203A6567416465);
  v7 = v0 + *(v1 + 28);
  if ((*(v7 + 2) & 1) == 0)
  {
    sub_1C4AAE7F0(*v7);
  }

  v8 = sub_1C4F01198();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4AB1D54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 6645601 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

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

uint64_t sub_1C4AB1EBC(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 6645601;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4AB1F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AB1D54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AB1F68(uint64_t a1)
{
  v2 = sub_1C4AB2E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AB1FA4(uint64_t a1)
{
  v2 = sub_1C4AB2E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosPersonObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2BD8, &qword_1C4F4D5A0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB2E00();
  sub_1C4F02BF8();
  v24 = 0;
  sub_1C4EF9CD8();
  sub_1C441A2DC();
  sub_1C4AB2E54(v11, v12, MEMORY[0x1E6969538]);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v2)
  {
    v13 = type metadata accessor for PhotosPersonObservation(0);
    v23 = 1;
    sub_1C4402150();
    sub_1C4F02798();
    v22 = 2;
    sub_1C4402150();
    sub_1C4F02738();
    v14 = (v3 + *(v13 + 28));
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 2);
    v20 = v15;
    v21 = v14;
    v19[9] = 3;
    type metadata accessor for PHPersonAgeType(0);
    sub_1C442D1B8();
    sub_1C4AB2E54(v16, v17, &protocol conformance descriptor for PHPersonAgeType);
    sub_1C4402150();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t PhotosPersonObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v32 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C2BF8, &unk_1C4F4D5A8);
  sub_1C43FCDF8();
  v34 = v10;
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1C4413644();
  v12 = type metadata accessor for PhotosPersonObservation(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB2E00();
  v36 = v3;
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v15 = v32;
  v42 = 0;
  sub_1C441A2DC();
  sub_1C4AB2E54(v16, v17, MEMORY[0x1E6969558]);
  v18 = v33;
  sub_1C4F026C8();
  (*(v15 + 32))(v14, v18, v5);
  v41 = 1;
  v19 = sub_1C4F02678();
  v20 = &v14[v12[5]];
  *v20 = v19;
  v20[1] = v21;
  v40 = 2;
  v33 = 0;
  v22 = sub_1C4F02618();
  v23 = v34;
  v24 = &v14[v12[6]];
  *v24 = v22;
  v24[1] = v25;
  type metadata accessor for PHPersonAgeType(0);
  v37 = 3;
  sub_1C442D1B8();
  sub_1C4AB2E54(v26, v27, &protocol conformance descriptor for PHPersonAgeType);
  sub_1C4F02658();
  (*(v23 + 8))(v36, v35);
  v28 = v39;
  v29 = &v14[v12[7]];
  *v29 = v38;
  v29[2] = v28;
  sub_1C4AAA39C(v14, v31);
  sub_1C440962C(a1);
  return sub_1C4AAA400(v14);
}

id static PhotosPersonEvent.event(with:dataVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v7 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1C4413644();
  v9 = type metadata accessor for PhotosPersonObservation(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  if (a3 == 1)
  {
    sub_1C4EF96B8();
    swift_allocObject();
    sub_1C4EF96A8();
    v15 = objc_autoreleasePoolPush();
    sub_1C44200EC();
    sub_1C4AB2E54(v16, v17, &protocol conformance descriptor for PhotosPersonObservation);
    sub_1C4EF9698();
    sub_1C440BAA8(v4, 0, 1, v9);
    objc_autoreleasePoolPop(v15);
    v22 = sub_1C44157D4(v4, 1, v9);
    if (v22 != 1)
    {
      sub_1C4AB2F04(v4, v14);
      sub_1C4AAA39C(v14, v11);
      v28 = objc_allocWithZone(v3);
      sub_1C4AAA39C(v11, v28 + OBJC_IVAR____TtC24IntelligencePlatformCore17PhotosPersonEvent_photosPerson);
      v31.receiver = v28;
      v31.super_class = v5;
      v27 = objc_msgSendSuper2(&v31, sel_init);
      sub_1C4AAA400(v11);

      sub_1C4AAA400(v14);
      return v27;
    }

    sub_1C4AB2E9C(v4);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDDFECB8);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v25, "PhotosPersonEvent: Decoding failed", v26, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = a3;
      _os_log_impl(&dword_1C43F8000, v19, v20, "PhotosPersonEvent: dataVersion = %u not supported", v21, 8u);
      sub_1C43FBE2C();
    }
  }

  return 0;
}

uint64_t PhotosPersonEvent.serialize()()
{
  sub_1C4EF96F8();
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4EF96C8();
  v0 = objc_autoreleasePoolPush();
  type metadata accessor for PhotosPersonObservation(0);
  sub_1C44200EC();
  sub_1C4AB2E54(v1, v2, &protocol conformance descriptor for PhotosPersonObservation);
  v3 = sub_1C4EF96D8();
  objc_autoreleasePoolPop(v0);

  return v3;
}

id PhotosPersonEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosPersonEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C4AB2CD0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PhotosPersonObservation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4AAA39C(a1, v6);
  v7 = type metadata accessor for PhotosPersonEvent(0);
  v8 = objc_allocWithZone(v7);
  sub_1C4AAA39C(v6, v8 + OBJC_IVAR____TtC24IntelligencePlatformCore17PhotosPersonEvent_photosPerson);
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  sub_1C4AAA400(v6);
  sub_1C4EF9AD8();
  v11 = [objc_allocWithZone(MEMORY[0x1E698F138]) initWithEventBody:v9 timestamp:v10];

  *a2 = v11;
}

unint64_t sub_1C4AB2E00()
{
  result = qword_1EC0C2BE0;
  if (!qword_1EC0C2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2BE0);
  }

  return result;
}

uint64_t sub_1C4AB2E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4AB2E9C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AB2F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonObservation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4AB2F90(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v2 <= 0x3F)
    {
      sub_1C4AB3034(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4AB3034(uint64_t a1)
{
  if (!qword_1EC0C2C18)
  {
    type metadata accessor for PHPersonAgeType(255);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C2C18);
    }
  }
}

uint64_t sub_1C4AB30B4(uint64_t a1)
{
  result = type metadata accessor for PhotosPersonObservation(319);
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

_BYTE *storeEnumTagSinglePayload for PhotosPersonObservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4AB323C()
{
  result = qword_1EC0C2C38;
  if (!qword_1EC0C2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C38);
  }

  return result;
}

unint64_t sub_1C4AB3294()
{
  result = qword_1EC0C2C40;
  if (!qword_1EC0C2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C40);
  }

  return result;
}

unint64_t sub_1C4AB32EC()
{
  result = qword_1EC0C2C48;
  if (!qword_1EC0C2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C48);
  }

  return result;
}

unint64_t sub_1C4AB3340()
{
  result = qword_1EC0C2C58;
  if (!qword_1EC0C2C58)
  {
    sub_1C4572308(&qword_1EC0C2C50, &unk_1C4F4D770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosPrivacyChecker(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4AB34A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = sub_1C4F00978();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = [objc_allocWithZone(MEMORY[0x1E69C0850]) initWithLatestTaxonomy];
  result = sub_1C4428DA0(a4);
  v43 = a2;
  v44 = a5;
  v42 = a1;
  if (!result)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *v44 = v42;
    v44[1] = v43;
    v40 = type metadata accessor for PhotosSceneTagsContent(0);
    *(v44 + *(v40 + 24)) = v20;
    return sub_1C45B69E4(a3, v44 + *(v40 + 20));
  }

  v18 = result;
  if (result >= 1)
  {
    v41 = a3;
    v19 = 0;
    v49 = a4 & 0xC000000000000001;
    v45 = (v11 + 8);
    v20 = MEMORY[0x1E69E7CC0];
    v47 = result;
    v48 = a4;
    do
    {
      if (v49)
      {
        v21 = MEMORY[0x1C6940F90](v19, a4);
      }

      else
      {
        v21 = *(a4 + 8 * v19 + 32);
      }

      v22 = v21;
      if ([v16 nodeRefForSceneClassId_])
      {
        v23 = PFSceneTaxonomyNodeLocalizedLabel();
        if (v23)
        {
          v24 = v23;
          v25 = sub_1C4F01138();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v32 = [v22 sceneIdentifier];
        [v22 confidence];
        v34 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EED0(0, *(v20 + 16) + 1, 1, v20);
          v20 = v38;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1C458EED0(v35 > 1, v36 + 1, 1, v20);
          v20 = v39;
        }

        *(v20 + 16) = v36 + 1;
        v37 = (v20 + 32 * v36);
        v37[4] = v25;
        v37[5] = v27;
        v37[6] = v32;
        v37[7] = v34;
        v18 = v47;
        a4 = v48;
      }

      else
      {
        sub_1C4F00198();
        v28 = v22;
        v29 = sub_1C4F00968();
        v30 = sub_1C4F01CF8();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109120;
          *(v31 + 4) = [v28 sceneIdentifier];

          _os_log_impl(&dword_1C43F8000, v29, v30, "Couldn't get sceneNode for %u", v31, 8u);
          MEMORY[0x1C6942830](v31, -1, -1);
        }

        else
        {

          v29 = v28;
        }

        (*v45)(v15, v46);
      }

      ++v19;
    }

    while (v18 != v19);

    a3 = v41;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

BOOL static SceneTag.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[3];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (!v3)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v4 == v7;
    }

    if (v12)
    {
      return v5 == v8;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v6)
  {
    if (v4 == v7)
    {
      return v5 == v8;
    }

    return 0;
  }

  v10 = sub_1C4F02938();
  result = 0;
  if ((v10 & 1) != 0 && v4 == v7)
  {
    return v5 == v8;
  }

  return result;
}