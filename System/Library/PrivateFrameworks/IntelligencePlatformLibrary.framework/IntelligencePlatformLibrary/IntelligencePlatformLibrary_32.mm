uint64_t sub_1936BBB54()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_113();
        v26 = sub_19393C200();
        OUTLINED_FUNCTION_50_2(v26, v27, v28, v29, v30, v31, v32, v33, 0, 0);
        OUTLINED_FUNCTION_11_36();
        if (v14)
        {
          v35 = 0xE000000000000000;
        }

        else
        {
          v35 = v34;
        }

        v1[4] = v2;
        v1[5] = v35;
        break;
      case 2:
        OUTLINED_FUNCTION_113();
        v16 = sub_19393C200();
        OUTLINED_FUNCTION_50_2(v16, v17, v18, v19, v20, v21, v22, v23, 0, 0);
        OUTLINED_FUNCTION_11_36();
        if (v14)
        {
          v25 = 0xE000000000000000;
        }

        else
        {
          v25 = v24;
        }

        v1[2] = v2;
        v1[3] = v25;
        break;
      case 1:
        OUTLINED_FUNCTION_113();
        v5 = sub_19393C200();
        OUTLINED_FUNCTION_50_2(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0);
        OUTLINED_FUNCTION_11_36();
        if (v14)
        {
          v15 = 0xE000000000000000;
        }

        else
        {
          v15 = v13;
        }

        *v1 = v2;
        v1[1] = v15;
        break;
    }
  }

  return result;
}

uint64_t sub_1936BBC58()
{
  v2 = v1;
  v4 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v15 = v0[4];
  v14 = v0[5];
  if (*v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 == 0xE000000000000000;
  }

  if (!v7)
  {
    result = OUTLINED_FUNCTION_272(v4, v3);
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_36_24(v4, v3, 1);
      v2 = v1;
    }
  }

  if (!v2)
  {
    v9 = !v5 && v6 == 0xE000000000000000;
    if (v9 || (v10 = OUTLINED_FUNCTION_286(), result = OUTLINED_FUNCTION_272(v10, v11), (result & 1) != 0) || (v12 = OUTLINED_FUNCTION_286(), result = OUTLINED_FUNCTION_36_24(v12, v13, 2), !v1))
    {
      if (v15 || v14 != 0xE000000000000000)
      {
        result = OUTLINED_FUNCTION_272(v15, v14);
        if ((result & 1) == 0)
        {
          return OUTLINED_FUNCTION_36_24(v15, v14, 3);
        }
      }
    }
  }

  return result;
}

void sub_1936BBDFC()
{
  OUTLINED_FUNCTION_115();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, v6);
  __swift_project_value_buffer(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_40_25();
  v9 = *(v8 + 72);
  OUTLINED_FUNCTION_30_3();
  v12 = v11 & ~v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19394FBE0;
  v14 = (v13 + v12);
  v15 = v13 + v12 + *(v7 + 56);
  *v14 = 1;
  *v15 = v4;
  *(v15 + 8) = v2;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v9 + *(v7 + 56);
  *(v14 + v9) = 2;
  *v20 = v21;
  *(v20 + 1) = 6;
  v20[16] = 2;
  v19();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936BBF8C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      v16 = sub_19393C200();
      OUTLINED_FUNCTION_50_2(v16, v17, v18, v19, v20, v21, v22, v23, 0, 0);
      OUTLINED_FUNCTION_11_36();
      if (v14)
      {
        v25 = 0xE000000000000000;
      }

      else
      {
        v25 = v24;
      }

      v1[2] = v2;
      v1[3] = v25;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_113();
      v5 = sub_19393C200();
      OUTLINED_FUNCTION_50_2(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0);
      OUTLINED_FUNCTION_11_36();
      if (v14)
      {
        v15 = 0xE000000000000000;
      }

      else
      {
        v15 = v13;
      }

      *v1 = v2;
      v1[1] = v15;
    }
  }

  return result;
}

void sub_1936BC058()
{
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_286();
    if ((OUTLINED_FUNCTION_272(v6, v7) & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_24_30(v8, v9, 1);
      v2 = v1;
    }
  }

  if (!v2)
  {
    if (v3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 == 0xE000000000000000;
    }

    if (!v10 && (OUTLINED_FUNCTION_272(v3, v4) & 1) == 0)
    {
      OUTLINED_FUNCTION_24_30(v3, v4, 2);
    }
  }
}

void sub_1936BC198()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      sub_193498018();
      OUTLINED_FUNCTION_133();
      v4 = swift_allocObject();
      DeviceExpertTroubleshooting.Action.init()((v4 + 16));
      sub_1934354B4(0xF000000000000007);

      *(v1 + 16) = v4;
    }

    else if (v2 == 1)
    {
      sub_1934982A8();
      *v1 = 0;
      *(v1 + 8) = 0;
    }
  }
}

uint64_t sub_1936BC2FC()
{
  v1 = v0;
  sub_1936BC530();
  result = sub_19393C550();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_32_20();
    result = sub_193447324(v3, v4, v5, v6, v7, v8);
    v1 = v0;
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_133();
    v9 = swift_allocObject();
    swift_retain_n();
    DeviceExpertTroubleshooting.Action.init()((v9 + 16));
    sub_1936BC4DC();
    LOBYTE(v9) = sub_19393C550();

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      sub_193447600();
    }
  }

  return result;
}

unint64_t sub_1936BC4DC()
{
  result = qword_1EAE40780;
  if (!qword_1EAE40780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40780);
  }

  return result;
}

unint64_t sub_1936BC530()
{
  result = qword_1EAE40788;
  if (!qword_1EAE40788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393C3C0();
}

uint64_t DeviceExpertTroubleshooting.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for DeviceExpertTroubleshooting(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for DeviceExpertTroubleshooting(uint64_t a1)
{
  result = qword_1EAE44C20;
  if (!qword_1EAE44C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceExpertTroubleshooting.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for DeviceExpertTroubleshooting(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t DeviceExpertTroubleshooting.type.getter()
{
  type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.type.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for DeviceExpertTroubleshooting(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.step.getter()
{
  type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.step.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for DeviceExpertTroubleshooting(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.status.getter()
{
  type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.status.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for DeviceExpertTroubleshooting(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.version.setter(int a1)
{
  result = type metadata accessor for DeviceExpertTroubleshooting(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t DeviceExpertTroubleshooting.session.getter()
{
  type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.session.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for DeviceExpertTroubleshooting(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.flow.getter()
{
  type metadata accessor for DeviceExpertTroubleshooting(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.flow.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for DeviceExpertTroubleshooting(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.interaction.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for DeviceExpertTroubleshooting(v2) + 52));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v3[2];
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
}

uint64_t DeviceExpertTroubleshooting.interaction.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = v1 + *(type metadata accessor for DeviceExpertTroubleshooting(0) + 52);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_1936BCC74@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936BCC9C@<X0>(char **a1@<X8>)
{
  result = static DeviceExpertTroubleshooting.ActionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936BCCD0()
{
  sub_19393CAB0();
  v0 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936BCD88(uint64_t a1)
{
  sub_19393CAB0();
  v1 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t DeviceExpertTroubleshooting.Entity.hashValue.getter()
{
  v7[9] = *v0;
  sub_19393CAB0();
  DeviceExpertTroubleshooting.Entity.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_19393CB00();
}

uint64_t sub_1936BCEA8(uint64_t a1)
{
  v8[9] = *v1;
  sub_19393CAB0();
  DeviceExpertTroubleshooting.Entity.hash(into:)(v8, v2, v3, v4, v5, v6);
  return sub_19393CB00();
}

uint64_t DeviceExpertTroubleshooting.Action.actionId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.Action.url.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.Action.title.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall DeviceExpertTroubleshooting.Action.init()(IntelligencePlatformLibrary::DeviceExpertTroubleshooting::Action *__return_ptr retstr)
{
  retstr->actionId._countAndFlagsBits = 0;
  retstr->actionId._object = 0xE000000000000000;
  retstr->url._countAndFlagsBits = 0;
  retstr->url._object = 0xE000000000000000;
  retstr->title._countAndFlagsBits = 0;
  retstr->title._object = 0xE000000000000000;
}

uint64_t static DeviceExpertTroubleshooting.Action.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_13_0();

  return sub_19393CA30();
}

uint64_t DeviceExpertTroubleshooting.Action.hash(into:)(uint64_t a1)
{
  sub_19393C640();
  sub_19393C640();

  return sub_19393C640();
}

uint64_t DeviceExpertTroubleshooting.Action.hashValue.getter()
{
  OUTLINED_FUNCTION_15_47();
  v0 = sub_19393CAB0();
  v1 = OUTLINED_FUNCTION_116_3(v0);
  OUTLINED_FUNCTION_108_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_19393C640();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_1936BD2B4()
{
  OUTLINED_FUNCTION_15_47();
  v0 = sub_19393CAB0();
  v1 = OUTLINED_FUNCTION_116_3(v0);
  OUTLINED_FUNCTION_108_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_19393C640();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t DeviceExpertTroubleshooting.UserSelection.question.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.UserSelection.answer.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformLibrary::DeviceExpertTroubleshooting::UserSelection __swiftcall DeviceExpertTroubleshooting.UserSelection.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_1936BD428(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_19393CA30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_13_0();

      return sub_19393CA30();
    }
  }

  return result;
}

uint64_t sub_1936BD4CC(uint64_t a1)
{
  sub_19393C640();

  return sub_19393C640();
}

uint64_t sub_1936BD520()
{
  v0 = sub_19393CAB0();
  v1 = OUTLINED_FUNCTION_116_3(v0);
  OUTLINED_FUNCTION_108_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_1936BD584(uint64_t a1)
{
  v1 = sub_19393CAB0();
  v2 = OUTLINED_FUNCTION_116_3(v1);
  OUTLINED_FUNCTION_108_3(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_19393C640();
  return sub_19393CB00();
}

void DeviceExpertTroubleshooting.Interaction.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t DeviceExpertTroubleshooting.Interaction.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t DeviceExpertTroubleshooting.Interaction.entity.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

void DeviceExpertTroubleshooting.Interaction.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_1936BB100(&v2);
  *(a1 + 16) = v2;
}

uint64_t static DeviceExpertTroubleshooting.Interaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v12 = *a1;
  v13 = v2;
  v10 = v4;
  v11 = v5;
  v7 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  if (v7 == DeviceExpertTroubleshooting.ActionType.rawValue.getter())
  {
    v12 = v3;
    v10 = v6;

    v8 = static DeviceExpertTroubleshooting.Entity.== infix(_:_:)(&v12, &v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t DeviceExpertTroubleshooting.Interaction.hash(into:)(uint64_t a1)
{
  v2 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v2);
  return DeviceExpertTroubleshooting.Entity.hash(into:)(a1, v3, v4, v5, v6, v7);
}

uint64_t DeviceExpertTroubleshooting.Interaction.hashValue.getter()
{
  sub_19393CAB0();
  v0 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  DeviceExpertTroubleshooting.Entity.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_19393CB00();
}

uint64_t sub_1936BD858(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v6 = v2;
  v7 = v3;
  sub_19393CAB0();
  DeviceExpertTroubleshooting.Interaction.hash(into:)(v5);
  return sub_19393CB00();
}

uint64_t DeviceExpertTroubleshooting.hashValue.getter()
{
  sub_19393CAB0();
  DeviceExpertTroubleshooting.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936BD8FC(uint64_t a1)
{
  sub_19393CAB0();
  DeviceExpertTroubleshooting.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1936BD93C()
{
  result = qword_1EAE40790;
  if (!qword_1EAE40790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE40798, &qword_19397D6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40790);
  }

  return result;
}

unint64_t sub_1936BD9AC()
{
  result = qword_1EAE407A0;
  if (!qword_1EAE407A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407A0);
  }

  return result;
}

unint64_t sub_1936BDA04()
{
  result = qword_1EAE407A8;
  if (!qword_1EAE407A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407A8);
  }

  return result;
}

unint64_t sub_1936BDA5C()
{
  result = qword_1EAE407B0;
  if (!qword_1EAE407B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407B0);
  }

  return result;
}

unint64_t sub_1936BDAB4()
{
  result = qword_1EAE407B8;
  if (!qword_1EAE407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407B8);
  }

  return result;
}

unint64_t sub_1936BDB10()
{
  result = qword_1EAE407C0;
  if (!qword_1EAE407C0)
  {
    type metadata accessor for DeviceExpertTroubleshooting(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407C0);
  }

  return result;
}

void sub_1936BDB94(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_193658134();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1936BDC88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    OUTLINED_FUNCTION_18_39();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

void *sub_1936BDCCC(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1936BDD48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1936BDD88(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_1936BDDF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    OUTLINED_FUNCTION_18_39();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1936BDE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1936BDEF8@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = result == 1701667182 && a2 == 0xE400000000000000;
  if (v7 || (v9 = result, v10 = v3[2], v20 = v3[3], v11 = v3[4], v19 = v3[5], v12 = v3[6], result = OUTLINED_FUNCTION_9_1(1701667182, 0xE400000000000000), (result & 1) != 0))
  {
    if (v6)
    {
      return sub_1934948FC();
    }

    goto LABEL_28;
  }

  v13 = v9 == 0x73656C646E6168 && a2 == 0xE700000000000000;
  if (v13 || (result = OUTLINED_FUNCTION_9_1(0x73656C646E6168, 0xE700000000000000), (result & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    return sub_1934948FC();
  }

  v14 = v9 == 0xD000000000000011 && 0x8000000193A2D6D0 == a2;
  if (v14 || (result = OUTLINED_FUNCTION_9_1(0xD000000000000011, 0x8000000193A2D6D0), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

    goto LABEL_28;
  }

  result = 0xD000000000000013;
  v15 = v9 == 0xD000000000000013 && 0x8000000193A2D6F0 == a2;
  if (v15 || (result = OUTLINED_FUNCTION_9_1(0xD000000000000013, 0x8000000193A2D6F0), (result & 1) != 0))
  {
    if (v12)
    {
      return sub_1934948FC();
    }

LABEL_28:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v17 = v16;
  *v16 = v9;
  v16[1] = a2;
  v16[5] = &type metadata for TextUnderstandingPersonHandles;
  v18 = swift_allocObject();
  v17[2] = v18;
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = v10;
  v18[5] = v20;
  v18[6] = v11;
  v18[7] = v19;
  v18[8] = v12;
  *(v17 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1936BE144()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC1A0);
  __swift_project_value_buffer(v0, qword_1EAEAC1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  v11 = OUTLINED_FUNCTION_0_0(v10, "handles");
  (v9)(v11);
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  v14 = OUTLINED_FUNCTION_0_0(v13, "handlePropertyKey");
  (v9)(v14);
  v15 = (v5 + 3 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "cnContactIdentifier";
  *(v16 + 1) = 19;
  v16[16] = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_1936BE370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        sub_19393C200();
        break;
      case 2:
        sub_19393C1B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936BE420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v6 = v3[4];
  v7 = v3[6];
  if (v3[1])
  {
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    if (*(v5 + 16))
    {
      result = sub_19393C380();
    }

    if (v6)
    {
      result = sub_19393C3C0();
    }

    if (v7)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

uint64_t sub_1936BE4EC(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE407C8;

  return v1;
}

uint64_t sub_1936BE530@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7DF30 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EAE7DF30);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAC1A0);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingPersonHandles.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TextUnderstandingPersonHandles.handles.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TextUnderstandingPersonHandles.handlePropertyKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TextUnderstandingPersonHandles.cnContactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void __swiftcall TextUnderstandingPersonHandles.init()(IntelligencePlatformLibrary::TextUnderstandingPersonHandles *__return_ptr retstr)
{
  retstr->name.value._countAndFlagsBits = 0;
  retstr->name.value._object = 0;
  retstr->handles._rawValue = MEMORY[0x1E69E7CC0];
  retstr->handlePropertyKey = 0u;
  retstr->cnContactIdentifier = 0u;
}

uint64_t static TextUnderstandingPersonHandles.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = *a1 == *a2 && v3 == v9;
    if (!v15 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_19344FC94(v4, v10))
  {
    if (v6)
    {
      if (!v11)
      {
        return 0;
      }

      v16 = v5 == v12 && v6 == v11;
      if (!v16 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v8)
    {
      if (v13)
      {
        if (v7 == v14 && v8 == v13)
        {
          return 1;
        }

        OUTLINED_FUNCTION_13_0();
        if (sub_19393CA30())
        {
          return 1;
        }
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t TextUnderstandingPersonHandles.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[6];
  if (v1[1])
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_1934D11C8(a1, v3);
  if (!v4)
  {
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_6;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393C640();
  if (!v5)
  {
    return sub_19393CAD0();
  }

LABEL_6:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingPersonHandles.hashValue.getter()
{
  OUTLINED_FUNCTION_0_91();
  sub_19393CAB0();
  TextUnderstandingPersonHandles.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936BEA58()
{
  OUTLINED_FUNCTION_0_91();
  sub_19393CAB0();
  TextUnderstandingPersonHandles.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936BEAA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1936BEAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s7ToolKitOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936BEC04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511A18);
  v4 = __swift_project_value_buffer(v3, qword_1ED511A18);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.ToolKit.Transcript.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_56 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511A18);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE407D8, &qword_19397DE78);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.ToolKit.Transcript.attribute(_:)(void (*a1)(void))
{
  result = sub_1936BF014(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936BF05C(void (*a1)(void))
{
  result = sub_1936BF014(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936BF08C(uint64_t a1)
{
  result = sub_1936BF0B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936BF0B4()
{
  result = qword_1ED503D08;
  if (!qword_1ED503D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D08);
  }

  return result;
}

_BYTE *_s10TranscriptOwst_2(_BYTE *result, int a2, int a3)
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

void sub_1936BF1E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_183_2();
  OUTLINED_FUNCTION_57_0();
  v4 = OUTLINED_FUNCTION_120_6() & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v6 = *v2;
  v7 = v3 == v4 && v5 == 0xE700000000000000;
  if (v7 || (v8 = v5, v9 = *(v2 + 2), (OUTLINED_FUNCTION_274_1(v4, 0xE700000000000000, v3) & 1) != 0) || (v3 == 0x736F6E616ELL ? (v10 = v8 == 0xE500000000000000) : (v10 = 0), v10 || (OUTLINED_FUNCTION_274_1(0x736F6E616ELL, 0xE500000000000000, v3) & 1) != 0))
  {
    sub_1934948FC();
  }

  else
  {
    v11 = sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
    *v13 = v3;
    *(v13 + 8) = v8;
    *(v13 + 40) = &type metadata for ToolKitToolTimestamp;
    *(v13 + 16) = v6;
    *(v13 + 24) = v9;
    OUTLINED_FUNCTION_23_2(v12, v13);
  }

  OUTLINED_FUNCTION_180_5();
}

id sub_1936BF444()
{
  OUTLINED_FUNCTION_11_5();
  v4 = OUTLINED_FUNCTION_46_21();
  v7 = v7 && v5 == v6;
  if (v7 || (OUTLINED_FUNCTION_33_24(v4, 101) & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      *&__dst[0] = *(v0 + 16);
      v8 = &type metadata for ToolKitToolTypeIdentifier.Primitive;
      v9 = &off_1F07E0F98;
      return sub_193494798(v8, v9, v3);
    }
  }

  else
  {
    v11 = v2 == 0x6D6F74737563 && v1 == 0xE600000000000000;
    if (v11 || (OUTLINED_FUNCTION_24_37(0x6D6F74737563) & 1) != 0)
    {
      OUTLINED_FUNCTION_213();
      if (v7)
      {
        v12 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        __dst[1] = v12;
        v8 = &type metadata for ToolKitToolTypeIdentifier.Custom;
        v9 = &off_1F07E0FA8;
        return sub_193494798(v8, v9, v3);
      }
    }

    else
    {
      v13 = v2 == 0x6E69746C697562 && v1 == 0xE700000000000000;
      if (v13 || (OUTLINED_FUNCTION_34_31(0x6E69746C697562) & 1) != 0)
      {
        OUTLINED_FUNCTION_215_2();
        if (v7)
        {
          *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v8 = &type metadata for ToolKitToolTypeIdentifier.Builtin;
          v9 = &off_1F07E0FB8;
          return sub_193494798(v8, v9, v3);
        }
      }

      else
      {
        v14 = v2 == 0x7475626972747461 && v1 == 0xEA00000000006465;
        if (!v14 && (OUTLINED_FUNCTION_23_37(0x7475626972747461, 25701) & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_110_7();
          if (v7 && v1 == 0xE700000000000000)
          {
            OUTLINED_FUNCTION_216_1();
            if (!v7)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if ((OUTLINED_FUNCTION_34_31(v15) & 1) == 0)
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_211_0();
            if (!v7)
            {
              goto LABEL_42;
            }
          }

          __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v8 = &type metadata for ToolKitToolTypeIdentifier.Codable;
          v9 = &off_1F07E0FD8;
          return sub_193494798(v8, v9, v3);
        }

        OUTLINED_FUNCTION_217_1();
        if (v7)
        {
          memcpy(__dst, ((v0 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
          memcpy(v21, __dst, sizeof(v21));
          v8 = &type metadata for ToolKitToolTypeIdentifier.Attributed;
          v9 = &off_1F07E0FC8;
          return sub_193494798(v8, v9, v3);
        }
      }
    }
  }

LABEL_42:
  v17 = sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
  OUTLINED_FUNCTION_64(v18, v19);
  OUTLINED_FUNCTION_19_1(v20, &type metadata for ToolKitToolTypeIdentifier);
}

id sub_1936BFCD0()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_191_2();
  v4 = v4 && v3 == 0xE300000000000000;
  if (v4 || (OUTLINED_FUNCTION_37_26(7368801) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v12)
    {
LABEL_7:
      v13 = sub_19349AB64();
      v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
      OUTLINED_FUNCTION_64(v14, v15);
      OUTLINED_FUNCTION_19_1(v16, &type metadata for ToolKitToolTypeIdentifier.Builtin);
    }

    v18 = *(v0 + 16);
    goto LABEL_16;
  }

  v19 = v2 == 0x6D754E646E756F62 && v1 == 0xEB00000000726562;
  if (v19 || (OUTLINED_FUNCTION_5_5(0x6D754E646E756F62, 0xEB00000000726562) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v20 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v22 = v2 == 0x7261646E656C6163 && v1 == 0xE800000000000000;
  if (v22 || (OUTLINED_FUNCTION_0_66(0x7261646E656C6163) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v23 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v24 = OUTLINED_FUNCTION_285_0(1869377379);
  v25 = v4 && v1 == 0xE500000000000000;
  if (v25 || (OUTLINED_FUNCTION_1_31(v24) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v26 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v27 = OUTLINED_FUNCTION_112_12();
  v28 = v4 && v1 == 0xE800000000000000;
  if (v28 || (OUTLINED_FUNCTION_0_66(v27) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v29 != 4)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_144_6();
  v30 = v4 && v1 == 0xE400000000000000;
  if (v30 || (OUTLINED_FUNCTION_27_28(1701603686) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v31 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v32 = v2 == 0x61657241656D6F68 && v1 == 0xE800000000000000;
  if (v32 || (OUTLINED_FUNCTION_0_66(0x61657241656D6F68) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v33 != 6)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v34 = OUTLINED_FUNCTION_284_0(0x52616964656DLL);
  v36 = v4 && v1 == v35;
  if (v36 || (OUTLINED_FUNCTION_23_37(v34, 25972) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v37 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v38 = OUTLINED_FUNCTION_38_29();
  v40 = v4 && v1 == v39;
  if (v40 || (OUTLINED_FUNCTION_5_5(v38, v39) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v41 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v42 = v2 == 0x74736163646F70 && v1 == 0xE700000000000000;
  if (v42 || (OUTLINED_FUNCTION_34_31(0x74736163646F70) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v43 != 9)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v44 = OUTLINED_FUNCTION_145_6();
  v45 = v4 && v1 == 0xE600000000000000;
  if (v45 || (OUTLINED_FUNCTION_24_37(v44) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v46 != 10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v47 = OUTLINED_FUNCTION_58_17();
  v49 = v4 && v1 == v48;
  if (v49 || (OUTLINED_FUNCTION_33_24(v47, 107) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v50 != 11)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v51 = v2 == 0x7261687365646972 && v1 == 0xEF6E6F6974704F65;
  if (v51 || (OUTLINED_FUNCTION_5_5(0x7261687365646972, 0xEF6E6F6974704F65) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v52 != 12)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v53 = v2 == 7237750 && v1 == 0xE300000000000000;
  if (v53 || (OUTLINED_FUNCTION_37_26(7237750) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v54 != 13)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v55 = v2 == 0x656E6F5A656D6974 && v1 == 0xE800000000000000;
  if (v55 || (OUTLINED_FUNCTION_0_66(0x656E6F5A656D6974) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v56 != 14)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v57 = OUTLINED_FUNCTION_139_9();
  v58 = v2 == v57 && v1 == 0xE500000000000000;
  if (!v58 && (OUTLINED_FUNCTION_1_31(v57) & 1) == 0)
  {
    v70 = OUTLINED_FUNCTION_146_8();
    v72 = v2 == v70 && v1 == v71;
    if (!v72 && (OUTLINED_FUNCTION_5_5(v70, v71) & 1) == 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_6_54();
    if (v73 != 16)
    {
      goto LABEL_7;
    }

LABEL_15:
    OUTLINED_FUNCTION_94_12();
    v18 = *(v21 + 16);
LABEL_16:
    OUTLINED_FUNCTION_77_2(v5, &type metadata for ToolKitToolNullValue, v6, v7, v8, v9, v10, v11, v74, v18);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_6_54();
  if (v59 != 15)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_77_2(v61, &type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v62, v63, v64, v65, v66, v74, *(v60 + 16));
  return sub_193494798(v67, v68, v69);
}

void sub_1936C0100()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x6F43656372756F73 && v0 == 0xEF72656E6961746ELL;
  if (v3 || (OUTLINED_FUNCTION_5_5(0x6F43656372756F73, 0xEF72656E6961746ELL) & 1) != 0)
  {
    v4 = __dst[13];
    if (__dst[13])
    {
      v5 = v2;
LABEL_8:
      v6 = memcpy(v31, v5, 0x68uLL);
      v31[13] = v4;
      OUTLINED_FUNCTION_52_2(v6, &type metadata for ToolKitToolContainerDefinition, &off_1F07E1888, v7, v8, v9, v10, v11, v31[0]);
      sub_193494798(v12, v13, v14);
      return;
    }

LABEL_23:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_34_21();
  v16 = v3 && v15 == v0;
  if (v16 || (OUTLINED_FUNCTION_18_3(20, v15) & 1) != 0)
  {
    v4 = __dst[27];
    if (__dst[27])
    {
      v5 = v2 + 112;
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v17 = OUTLINED_FUNCTION_194_2() | 0x656D614E00000000;
  v24 = v1 == v17 && v0 == 0xE800000000000000;
  if (v24 || (v17 = OUTLINED_FUNCTION_0_66(v17), (v17 & 1) != 0))
  {
    if (__dst[29])
    {
      v31[1] = __dst[29];
      OUTLINED_FUNCTION_52_2(v17, MEMORY[0x1E69E6158], v18, v19, v20, v21, v22, v23, __dst[28]);
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v25 = sub_19349AB64();
  v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
  OUTLINED_FUNCTION_9_3(v26, v27);
  *(v28 + 40) = &type metadata for ToolKitToolTypeIdentifier.Attributed;
  v29 = swift_allocObject();
  v30 = OUTLINED_FUNCTION_28_3(v29);
  memcpy(v30, __dst, 0xF0uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C02B4(__dst, v31);
}

id sub_1936C0348()
{
  OUTLINED_FUNCTION_11_5();
  v5 = *v0;
  v7 = v6 == 7040629 && v4 == 0xE300000000000000;
  if (v7 || (OUTLINED_FUNCTION_37_26(7040629) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v8)
    {
LABEL_7:
      v9 = sub_19349AB64();
      v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
      OUTLINED_FUNCTION_64(v10, v11);
      *(v12 + 40) = &type metadata for ToolKitToolSystemTypeProtocol;
      *(v12 + 16) = v5;
      OUTLINED_FUNCTION_23_2(v13, v12);
    }

    v15 = *(v5 + 16);
    goto LABEL_16;
  }

  v16 = OUTLINED_FUNCTION_318() | 0x6F63634100000000;
  v18 = v2 == v16 && v1 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5(v16, v17) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v19 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_84_1();
  v20 = OUTLINED_FUNCTION_318() | 0x7264644100000000;
  v22 = v2 == v20 && v1 == v21;
  if (v22 || (OUTLINED_FUNCTION_5_5(v20, v21) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v23 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_204_1();
  v24 = OUTLINED_FUNCTION_318() | 0x7373654D00000000;
  v26 = v2 == v24 && v1 == v25;
  if (v26 || (OUTLINED_FUNCTION_5_5(v24, v25) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v27 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v28 = OUTLINED_FUNCTION_318() | 0x786F6200000000;
  v29 = v2 == v28 && v1 == 0xE700000000000000;
  if (v29 || (OUTLINED_FUNCTION_34_31(v28) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v30 != 4)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_84_1();
  v31 = OUTLINED_FUNCTION_150_7() & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
  v33 = v2 == v31 && v1 == v32;
  if (v33 || (OUTLINED_FUNCTION_5_5(v31, v32) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v34 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v35 = v2 == 0x476567617373656DLL && v1 == 0xEC00000070756F72;
  if (v35 || (OUTLINED_FUNCTION_5_5(0x476567617373656DLL, 0xEC00000070756F72) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v36 != 6)
    {
      goto LABEL_7;
    }

LABEL_15:
    v15 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
LABEL_16:
    *__dst = v15;
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_168();
  v39 = v2 == (v38 | 3) && v37 == v1;
  if (v39 || (OUTLINED_FUNCTION_5_5(v38 + 3, v37) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v40 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  v41 = v2 == 0x6E45657571696E75 && v1 == 0xEC00000079746974;
  if (v41 || (OUTLINED_FUNCTION_5_5(0x6E45657571696E75, 0xEC00000079746974) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v42 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_38();
  v44 = v2 == 0xD000000000000015 && v43 == v1;
  if (v44 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v43) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v45 != 9)
    {
      goto LABEL_7;
    }

    *__dst = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v46 = &type metadata for ToolKitToolSystemTypeProtocol.IntentUpdatableEntity;
    v47 = &off_1F07E0FF8;
    return sub_193494798(v46, v47, v3);
  }

  OUTLINED_FUNCTION_39_25();
  v49 = v7 && v48 == v1;
  if (v49 || (OUTLINED_FUNCTION_18_3(16, v48) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v50 != 10)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_236_1();
  v52 = v2 == 0x65536C6175736976 && v1 == v51;
  if (v52 || (OUTLINED_FUNCTION_5_5(0x65536C6175736976, v51) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v53 != 11)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  v54 = v2 == 0x65536C6175736976 && v1 == 0xEF72634F68637261;
  if (v54 || (OUTLINED_FUNCTION_5_5(0x65536C6175736976, 0xEF72634F68637261) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v55 != 12)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  v56 = OUTLINED_FUNCTION_160_6();
  v58 = v7 && v1 == v57;
  if (v58 || (OUTLINED_FUNCTION_5_5(v56, v57) & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v59 != 13)
    {
      goto LABEL_7;
    }

    memcpy(__dst, ((v5 & 0xFFFFFFFFFFFFFFBLL) + 16), sizeof(__dst));
    OUTLINED_FUNCTION_282_0(v77, v60, v61, v62, v63, v64, v65, v66, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9]);
    v46 = &type metadata for ToolKitToolSystemTypeProtocol.AssistantSchema;
    v47 = &off_1F07E1008;
  }

  else
  {
    v67 = v2 == 0x6C62617461647075 && v1 == 0xEF797469746E4565;
    if (v67 || (OUTLINED_FUNCTION_5_5(0x6C62617461647075, 0xEF797469746E4565) & 1) != 0)
    {
      OUTLINED_FUNCTION_18_40();
      if (v68 != 14)
      {
        goto LABEL_7;
      }

LABEL_59:
      OUTLINED_FUNCTION_314();
      return sub_1934948FC();
    }

    OUTLINED_FUNCTION_38();
    v70 = v2 == 0xD00000000000001ALL && v69 == v1;
    if (!v70 && (OUTLINED_FUNCTION_5_5(0xD00000000000001ALL, v69) & 1) == 0)
    {
      v72 = v2 == 0x6E6569736E617274 && v1 == 0xEF797469746E4574;
      if (!v72 && (OUTLINED_FUNCTION_5_5(0x6E6569736E617274, 0xEF797469746E4574) & 1) == 0)
      {
        OUTLINED_FUNCTION_158_2();
        v75 = v2 == 0x4564657865646E69 && v1 == v74;
        if (!v75 && (OUTLINED_FUNCTION_5_5(0x4564657865646E69, v74) & 1) == 0)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_18_40();
        if (v76 != 17)
        {
          goto LABEL_7;
        }

        *__dst = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        return sub_1934948FC();
      }

      OUTLINED_FUNCTION_18_40();
      if (v73 != 16)
      {
        goto LABEL_7;
      }

      goto LABEL_59;
    }

    OUTLINED_FUNCTION_18_40();
    if (v71 != 15)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_314();
    v46 = &type metadata for ToolKitToolSystemTypeProtocol.PersistentFileIdentifiable;
    v47 = &off_1F07E1018;
  }

  return sub_193494798(v46, v47, v3);
}

id sub_1936C0B00()
{
  OUTLINED_FUNCTION_11_5();
  v4 = OUTLINED_FUNCTION_46_21();
  v7 = v7 && v5 == v6;
  if (v7 || (OUTLINED_FUNCTION_33_24(v4, 101) & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      *&__src[0] = *(v0 + 16);
      v8 = &type metadata for ToolKitToolTypeIdentifier.Primitive;
      v9 = &off_1F07E0F98;
      return sub_193494798(v8, v9, v3);
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_85_17();
    v11 = v2 == v10 && v1 == 0xE600000000000000;
    if (v11 || (OUTLINED_FUNCTION_24_37(v10) & 1) != 0)
    {
      OUTLINED_FUNCTION_213();
      if (v7)
      {
        v20 = OUTLINED_FUNCTION_235_1(v12, v13, v14, v15, v16, v17, v18, v19, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], __src[0]);
        memcpy(v20, v21, 0x60uLL);
        memcpy(v57, __src, sizeof(v57));
        v8 = &type metadata for ToolKitToolTypeDefinition.Version1.Entity;
        v9 = &off_1F07E1048;
        return sub_193494798(v8, v9, v3);
      }
    }

    else
    {
      v23 = OUTLINED_FUNCTION_44_21();
      v25 = v7 && v1 == v24;
      if (v25 || (OUTLINED_FUNCTION_5_5(v23, v24) & 1) != 0)
      {
        OUTLINED_FUNCTION_215_2();
        if (v7)
        {
          v34 = OUTLINED_FUNCTION_235_1(v26, v27, v28, v29, v30, v31, v32, v33, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], __src[0]);
          memcpy(v34, v35, 0x58uLL);
          memcpy(v57, __src, 0x58uLL);
          v8 = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration;
          v9 = &off_1F07E1068;
          return sub_193494798(v8, v9, v3);
        }
      }

      else
      {
        v36 = OUTLINED_FUNCTION_139_9();
        v37 = v2 == v36 && v1 == 0xE500000000000000;
        if (!v37 && (OUTLINED_FUNCTION_1_31(v36) & 1) == 0)
        {
          v48 = OUTLINED_FUNCTION_110_7();
          if (v7 && v1 == 0xE700000000000000)
          {
            OUTLINED_FUNCTION_216_1();
            if (!v7)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if ((OUTLINED_FUNCTION_34_31(v48) & 1) == 0)
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_211_0();
            if (!v7)
            {
              goto LABEL_42;
            }
          }

          v50 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v51 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v52 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          __src[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          __src[1] = v51;
          __src[2] = v52;
          *&__src[3] = v50;
          v8 = &type metadata for ToolKitToolTypeDefinition.Version1.Codable;
          v9 = &off_1F07E10B8;
          return sub_193494798(v8, v9, v3);
        }

        OUTLINED_FUNCTION_217_1();
        if (v7)
        {
          v46 = OUTLINED_FUNCTION_235_1(v38, v39, v40, v41, v42, v43, v44, v45, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], __src[0]);
          memcpy(v46, v47, 0x50uLL);
          memcpy(v57, __src, 0x50uLL);
          v8 = &type metadata for ToolKitToolTypeDefinition.Version1.Query;
          v9 = &off_1F07E1088;
          return sub_193494798(v8, v9, v3);
        }
      }
    }
  }

LABEL_42:
  v53 = sub_19349AB64();
  v54 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v53);
  OUTLINED_FUNCTION_64(v54, v55);
  OUTLINED_FUNCTION_19_1(v56, &type metadata for ToolKitToolTypeDefinition.Version1);
}

void sub_1936C0D24()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_83_18();
  memcpy(__dst, v4, sizeof(__dst));
  v5 = v1 == v2 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_23_37(v2, 29285) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v5)
    {
      OUTLINED_FUNCTION_52_2(v6, &type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v7, v8, v9, v10, v11, v12);
LABEL_9:
      sub_193494798(v13, v14, v15);
      return;
    }

    goto LABEL_8;
  }

  v16 = OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
  v17 = v3 + 256;
  v18 = v1 == v16 && v0 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5(v16, v17) & 1) != 0)
  {
    v64 = __dst[1];
    v19 = &qword_1EAE40808;
    v20 = &qword_19397DF10;
LABEL_16:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_52_2(v21, v21, v22, v23, v24, v25, v26, v27, v64);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v29 = v1 == 0xD000000000000013 && v28 == v0;
  if (v29 || (OUTLINED_FUNCTION_5_5(0xD000000000000013, v28) & 1) != 0)
  {
    v64 = __dst[2];
    v19 = &unk_1EAE40800;
    v20 = &unk_19397DF08;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v36 = 0xD000000000000015;
  v37 = v1 == 0xD000000000000015 && v30 == v0;
  if (v37 || (v36 = OUTLINED_FUNCTION_5_5(0xD000000000000015, v30), (v36 & 1) != 0))
  {
    if (__dst[7])
    {
      OUTLINED_FUNCTION_52_2(v36, &type metadata for ToolKitToolTypeDisplayRepresentation, &off_1F07E18A8, v31, v32, v33, v34, v35, __dst[3]);
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_39_25();
  v40 = v5 && v39 == v0;
  if (v40 || (OUTLINED_FUNCTION_14_48(v38, v39) & 1) != 0)
  {
    v64 = __dst[8];
    v19 = &unk_1EAE407F8;
    v20 = &unk_19397DF00;
    goto LABEL_16;
  }

  v41 = OUTLINED_FUNCTION_41_22();
  v43 = v5 && v0 == v42;
  if (v43 || (OUTLINED_FUNCTION_5_5(v41, v42) & 1) != 0)
  {
    v64 = __dst[9];
    v19 = &unk_1EAE407F0;
    v20 = &unk_19397DEF8;
    goto LABEL_16;
  }

  v44 = v1 == 0x46656D69746E7572 && v0 == 0xEC0000007367616CLL;
  if (v44 || (OUTLINED_FUNCTION_5_5(0x46656D69746E7572, 0xEC0000007367616CLL) & 1) != 0)
  {
    v64 = __dst[10];
    v19 = &unk_1EAE407E8;
    v20 = &unk_193980EC0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_301();
  v46 = v1 == 0x6E6F696372656F63 && v0 == v45;
  if (v46 || (OUTLINED_FUNCTION_33_24(0x6E6F696372656F63, 115) & 1) != 0)
  {
    v64 = __dst[11];
    v19 = &unk_1EAE407E0;
    v20 = &unk_19397DEF0;
    goto LABEL_16;
  }

  v47 = sub_19349AB64();
  v48 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v47);
  OUTLINED_FUNCTION_9_3(v48, v49);
  *(v50 + 40) = &type metadata for ToolKitToolTypeDefinition.Version1.Entity;
  OUTLINED_FUNCTION_209_0();
  v51 = swift_allocObject();
  v52 = OUTLINED_FUNCTION_28_3(v51);
  memcpy(v52, __dst, 0x60uLL);
  OUTLINED_FUNCTION_26_0();

  v61 = OUTLINED_FUNCTION_109(v53, v54, v55, v56, v57, v58, v59, v60, v63, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, __dst[0]);
  sub_1936C1000(v61, v62);
}

void sub_1936C11F4()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_83_18();
  memcpy(__dst, v4, sizeof(__dst));
  v5 = v1 == v2 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_23_37(v2, 29285) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v5)
    {
      *&v44[0] = v12;
      v13 = &type metadata for ToolKitToolTypeIdentifier;
      v14 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v6, v13, v14, v7, v8, v9, v10, v11, *&v44[0]);
      sub_193494798(v15, v16, v17);
      return;
    }

    goto LABEL_8;
  }

  v18 = OUTLINED_FUNCTION_196_2(1702060387);
  v19 = v5 && v0 == 0xE500000000000000;
  if (v19 || (OUTLINED_FUNCTION_1_31(v18) & 1) != 0)
  {
    *&v44[0] = __dst[1];
    v20 = &qword_1EAE40810;
    v21 = &qword_19397DF18;
LABEL_16:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    v29 = v22;
LABEL_17:
    OUTLINED_FUNCTION_52_2(v22, v29, v23, v24, v25, v26, v27, v28, *&v44[0]);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_39_25();
  v31 = v5 && v30 == v0;
  if (v31 || (OUTLINED_FUNCTION_18_3(19, v30) & 1) != 0)
  {
    *&v44[0] = __dst[2];
    v20 = &unk_1EAE40800;
    v21 = &unk_19397DF08;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v6 = 0xD000000000000015;
  v33 = v1 == 0xD000000000000015 && v32 == v0;
  if (v33 || (v6 = OUTLINED_FUNCTION_5_5(0xD000000000000015, v32), (v6 & 1) != 0))
  {
    if (__dst[7])
    {
      v44[0] = *&__dst[3];
      v44[1] = *&__dst[5];
      v45 = __dst[7];
      v13 = &type metadata for ToolKitToolTypeDisplayRepresentation;
      v14 = &off_1F07E18A8;
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v34 = v1 == 1684957547 && v0 == 0xE400000000000000;
  if (v34 || (OUTLINED_FUNCTION_27_28(1684957547) & 1) != 0)
  {
    if ((__dst[9] & 0x100) != 0)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_4();
    v29 = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration.Kind;
    goto LABEL_17;
  }

  v35 = OUTLINED_FUNCTION_41_22();
  v37 = v5 && v0 == v36;
  if (v37 || (OUTLINED_FUNCTION_5_5(v35, v36) & 1) != 0)
  {
    *&v44[0] = __dst[10];
    v20 = &unk_1EAE407F0;
    v21 = &unk_19397DEF8;
    goto LABEL_16;
  }

  v38 = sub_19349AB64();
  v39 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v38);
  OUTLINED_FUNCTION_9_3(v39, v40);
  *(v41 + 40) = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration;
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_28_3(v42);
  memcpy(v43, __dst, 0x58uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C1448(__dst, v44);
}

void sub_1936C14BC()
{
  OUTLINED_FUNCTION_118_10();
  v11 = OUTLINED_FUNCTION_276_1(v3, v4, v5, v6, v7, v8, v9, v10, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86);
  v18 = v2 == 25705 && v0 == 0xE200000000000000;
  if (v18 || (v19 = OUTLINED_FUNCTION_252_0(), v11 = OUTLINED_FUNCTION_85_5(v19, v20), (v11 & 1) != 0))
  {
    if (v90)
    {
      OUTLINED_FUNCTION_102_14(v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v16, v17, v89);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_168();
  v23 = v2 == v22 && v21 == v0;
  if (v23 || (OUTLINED_FUNCTION_85_5(0xD000000000000015, v21) & 1) != 0)
  {
    if (v91)
    {
      OUTLINED_FUNCTION_82_12();
      OUTLINED_FUNCTION_102_14(v24, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v25, v26, v27, v28, v29, v54);
      sub_193494798(v30, v31, v32);
      return;
    }

    goto LABEL_15;
  }

  v33 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v33);
  OUTLINED_FUNCTION_106_0();
  *v34 = v2;
  v34[1] = v0;
  v34[5] = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration.Case;
  OUTLINED_FUNCTION_209_0();
  v35 = swift_allocObject();
  *(v1 + 16) = v35;
  OUTLINED_FUNCTION_182_5(v35, v36, v37, v38, v39, v40, v41, v42, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v51 = OUTLINED_FUNCTION_109(v43, v44, v45, v46, v47, v48, v49, v50, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v89);
  sub_1936C15F8(v51, v52);
}

void sub_1936C166C(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  OUTLINED_FUNCTION_157_7();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v7, sizeof(__dst));
  v9 = v4 == v5 && a2 == v6;
  if (v9 || (OUTLINED_FUNCTION_68_18(), (sub_19393CA30() & 1) != 0))
  {
    OUTLINED_FUNCTION_66_21();
    if (!v9)
    {
      OUTLINED_FUNCTION_102_14(v10, &type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v11, v12, v13, v14, v15, v16);
LABEL_16:
      sub_193494798(v17, v18, v19);
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_301();
  v20 = OUTLINED_FUNCTION_169_6(0x616C706D6574);
  v27 = v9 && a2 == v26;
  if (v27 || (v20 = sub_19393CA30(), (v20 & 1) != 0))
  {
    if (__dst[1])
    {
      OUTLINED_FUNCTION_102_14(v20, &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates, &off_1F07E1098, v21, v22, v23, v24, v25, __dst[1]);
      goto LABEL_16;
    }

LABEL_8:
    OUTLINED_FUNCTION_104();
    return;
  }

  v28 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v28);
  OUTLINED_FUNCTION_106_0();
  *v29 = v4;
  v29[1] = a2;
  v29[5] = &type metadata for ToolKitToolTypeDefinition.Version1.Query;
  OUTLINED_FUNCTION_137_7();
  v30 = swift_allocObject();
  *(v3 + 16) = v30;
  OUTLINED_FUNCTION_282_0((v30 + 16), v31, v32, v33, v34, v35, v36, v37, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v46 = OUTLINED_FUNCTION_270_0(v38, v39, v40, v41, v42, v43, v44, v45, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, __dst[0]);
  sub_1936C17FC(v46, v47);
}

void sub_1936C1870()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v3, sizeof(__dst));
  v4 = v2 == 0x73697261706D6F63 && v1 == 0xEA00000000006E6FLL;
  if (v4 || (OUTLINED_FUNCTION_23_37(0x73697261706D6F63, 28271) & 1) != 0)
  {
    v43 = __dst[0];
    v5 = &unk_1EAE40818;
    v6 = &unk_19397DF20;
LABEL_7:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_52_2(v7, v7, v8, v9, v10, v11, v12, v13, v43);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_236_1();
  v14 = OUTLINED_FUNCTION_149_7() & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
  v16 = v2 == v14 && v1 == v15;
  if (v16 || (OUTLINED_FUNCTION_5_5(v14, v15) & 1) != 0)
  {
    if (__dst[1])
    {
LABEL_14:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v17 = &type metadata for ToolKitToolStringSearchPredicate.Template;
    v18 = &off_1F07E14B8;
    goto LABEL_16;
  }

  v19 = OUTLINED_FUNCTION_248_0();
  v20 = v4 && v1 == 0xE800000000000000;
  if (v20 || (OUTLINED_FUNCTION_0_66(v19) & 1) != 0)
  {
    if ((__dst[1] & 0x100) != 0)
    {
      goto LABEL_14;
    }

    v17 = &type metadata for ToolKitToolIdSearchPredicate.Template;
    v18 = &off_1F07E14D8;
    goto LABEL_16;
  }

  v21 = v2 == 7105633 && v1 == 0xE300000000000000;
  if (v21 || (OUTLINED_FUNCTION_37_26(7105633) & 1) != 0)
  {
    if ((__dst[1] & 0x10000) != 0)
    {
      goto LABEL_14;
    }

    v17 = &type metadata for ToolKitToolAllPredicate;
    v18 = &off_1F07E1528;
    goto LABEL_16;
  }

  v22 = OUTLINED_FUNCTION_169_6(0x736567677573);
  v24 = v4 && v1 == v23;
  if (v24 || (OUTLINED_FUNCTION_33_24(v22, 100) & 1) != 0)
  {
    if ((__dst[1] & 0x1000000) != 0)
    {
      goto LABEL_14;
    }

    v17 = &type metadata for ToolKitToolSuggestedPredicate;
    v18 = &off_1F07E1548;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_39_25();
  v27 = v4 && v26 == v1;
  if (v27 || (OUTLINED_FUNCTION_14_48(v25, v26) & 1) != 0)
  {
    v43 = __dst[2];
    v5 = &unk_1EAE407F8;
    v6 = &unk_19397DF00;
    goto LABEL_7;
  }

  v28 = OUTLINED_FUNCTION_4_61();
  v30 = v2 == v28 && v1 == v29;
  if (v30 || (OUTLINED_FUNCTION_5_5(v28, v29) & 1) != 0)
  {
    if (__dst[3])
    {
      goto LABEL_14;
    }

    v17 = &type metadata for ToolKitToolSearchableItemPredicate.Template;
    v18 = &off_1F07E1518;
    goto LABEL_16;
  }

  v31 = OUTLINED_FUNCTION_312();
  v32 = v4 && v1 == 0xE500000000000000;
  if (v32 || (OUTLINED_FUNCTION_1_31(v31) & 1) != 0)
  {
    if ((__dst[3] & 0x100) != 0)
    {
      goto LABEL_14;
    }

    v17 = &type metadata for ToolKitToolValidPredicate;
    v18 = &off_1F07E1538;
    goto LABEL_16;
  }

  v33 = OUTLINED_FUNCTION_98_13() | 0x6165536500000000;
  v35 = v2 == v33 && v1 == v34;
  if (v35 || (OUTLINED_FUNCTION_5_5(v33, v34) & 1) != 0)
  {
    if ((__dst[4] & 0xF000000000000007) == 0xD000000000000007)
    {
      goto LABEL_14;
    }

    v43 = __dst[4];
    v17 = &type metadata for ToolKitToolValueSearchPredicate.Template;
    v18 = &off_1F07E14F8;
    goto LABEL_16;
  }

  v36 = v2 == 0x617461646174656DLL && v1 == 0xE800000000000000;
  if (v36 || (OUTLINED_FUNCTION_0_66(0x617461646174656DLL) & 1) != 0)
  {
    if (__dst[6] == 1)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_203_1();
    v44 = *&__dst[7];
    v17 = &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata;
    v18 = &off_1F07E10A8;
LABEL_16:
    sub_193494798(v17, v18, v0);
    return;
  }

  v37 = sub_19349AB64();
  v38 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v37);
  OUTLINED_FUNCTION_9_3(v38, v39);
  *(v40 + 40) = &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates;
  OUTLINED_FUNCTION_127_3();
  v41 = swift_allocObject();
  v42 = OUTLINED_FUNCTION_28_3(v41);
  memcpy(v42, __dst, 0x48uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C1BDC(__dst, &v43);
}

void sub_1936C1D64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_3_67();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == v5 && v6 == v7;
  if (v10 || (v11 = v6, v12 = v2[2], v25 = v2[3], v26 = v2[4], v27 = v2[5], v13 = v2[6], OUTLINED_FUNCTION_68_18(), (OUTLINED_FUNCTION_124_3(v14, v15, v16) & 1) != 0))
  {
    if (v8)
    {
      sub_1934948FC();
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_34_21();
    if (!v10 || v17 != v11)
    {
      v19 = OUTLINED_FUNCTION_20_5(21);
      if ((OUTLINED_FUNCTION_124_3(v19, v20, v21) & 1) == 0)
      {
        v22 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
        OUTLINED_FUNCTION_32_3();
        *v23 = a1;
        v23[1] = v11;
        v23[5] = &type metadata for ToolKitToolTypeDefinition.Version1.Codable;
        v24 = swift_allocObject();
        v2[2] = v24;
        v24[2] = v9;
        v24[3] = v8;
        v24[4] = v12;
        v24[5] = v25;
        v24[6] = v26;
        v24[7] = v27;
        v24[8] = v13;
        OUTLINED_FUNCTION_26_0();

        sub_1936161E4(v12, v25, v26, v27, v13);
        return;
      }
    }

    if (v13)
    {
      sub_193494798(&type metadata for ToolKitToolTypeDisplayRepresentation, &off_1F07E18A8, a2);
      return;
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

id sub_1936C1F1C()
{
  OUTLINED_FUNCTION_11_5();
  v4 = OUTLINED_FUNCTION_46_21();
  v7 = v7 && v5 == v6;
  if (v7 || (OUTLINED_FUNCTION_33_24(v4, 101) & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      v8 = &type metadata for ToolKitToolTypedValue.PrimitiveValue;
      v9 = &off_1F07E10E8;
      return sub_193494798(v8, v9, v3);
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44_21();
    v12 = v7 && v1 == v11;
    if (v12 || (OUTLINED_FUNCTION_5_5(v10, v11) & 1) != 0)
    {
      OUTLINED_FUNCTION_213();
      if (v7)
      {
        v21 = OUTLINED_FUNCTION_154_6(v13, v14, v15, v16, v17, v18, v19, v20, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
        v23 = memcpy(v21, v22, 0x68uLL);
        v31 = OUTLINED_FUNCTION_313(v23, v24, v25, v26, v27, v28, v29, v30, v112);
        memcpy(v31, v32, 0x68uLL);
        v8 = &type metadata for ToolKitToolTypedValue.EnumerationValue;
        v9 = &off_1F07E1248;
        return sub_193494798(v8, v9, v3);
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_85_17();
      v35 = v2 == v34 && v1 == 0xE600000000000000;
      if (v35 || (OUTLINED_FUNCTION_24_37(v34) & 1) != 0)
      {
        OUTLINED_FUNCTION_215_2();
        if (v7)
        {
          v44 = OUTLINED_FUNCTION_154_6(v36, v37, v38, v39, v40, v41, v42, v43, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
          v46 = memcpy(v44, v45, 0x90uLL);
          v54 = OUTLINED_FUNCTION_313(v46, v47, v48, v49, v50, v51, v52, v53, v113);
          memcpy(v54, v55, 0x90uLL);
          v8 = &type metadata for ToolKitToolTypedValue.EntityValue;
          v9 = &off_1F07E1258;
          return sub_193494798(v8, v9, v3);
        }
      }

      else
      {
        v56 = OUTLINED_FUNCTION_304();
        v58 = v2 == v56 && v1 == v57;
        if (v58 || (OUTLINED_FUNCTION_23_37(v56, 28271) & 1) != 0)
        {
          OUTLINED_FUNCTION_217_1();
          if (v7)
          {
            v8 = &type metadata for ToolKitToolTypedValue.CollectionValue;
            v9 = &off_1F07E1288;
            return sub_193494798(v8, v9, v3);
          }
        }

        else
        {
          v59 = OUTLINED_FUNCTION_139_9();
          v60 = v2 == v59 && v1 == 0xE500000000000000;
          if (v60 || (OUTLINED_FUNCTION_1_31(v59) & 1) != 0)
          {
            OUTLINED_FUNCTION_216_1();
            if (v7)
            {
              v8 = &type metadata for ToolKitToolTypedValue.QueryValue;
              v9 = &off_1F07E1298;
              return sub_193494798(v8, v9, v3);
            }
          }

          else
          {
            OUTLINED_FUNCTION_39_6();
            OUTLINED_FUNCTION_34_21();
            v62 = v7 && v61 == v1;
            if (v62 || (OUTLINED_FUNCTION_18_3(16, v61) & 1) != 0)
            {
              OUTLINED_FUNCTION_308();
              if (v7)
              {
                v71 = OUTLINED_FUNCTION_154_6(v63, v64, v65, v66, v67, v68, v69, v70, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
                v73 = memcpy(v71, v72, 0x68uLL);
                v81 = OUTLINED_FUNCTION_313(v73, v74, v75, v76, v77, v78, v79, v80, v114);
                memcpy(v81, v82, 0x68uLL);
                v8 = &type metadata for ToolKitToolTypedValue.EntityIdentifierValue;
                v9 = &off_1F07E12A8;
                return sub_193494798(v8, v9, v3);
              }
            }

            else
            {
              v83 = OUTLINED_FUNCTION_253_0();
              v84 = v7 && v1 == 0xE800000000000000;
              if (!v84 && (OUTLINED_FUNCTION_0_66(v83) & 1) == 0)
              {
                v85 = OUTLINED_FUNCTION_110_7();
                if (v7 && v1 == 0xE700000000000000)
                {
                  if (v0 >> 61 != 7)
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  if ((OUTLINED_FUNCTION_34_31(v85) & 1) == 0)
                  {
                    goto LABEL_66;
                  }

                  OUTLINED_FUNCTION_214_0();
                  if (!(!v7 & v94))
                  {
                    goto LABEL_66;
                  }
                }

                v95 = OUTLINED_FUNCTION_154_6(v85, v86, v87, v88, v89, v90, v91, v92, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
                v97 = memcpy(v95, v96, 0x70uLL);
                v105 = OUTLINED_FUNCTION_313(v97, v98, v99, v100, v101, v102, v103, v104, v115);
                memcpy(v105, v106, 0x70uLL);
                v8 = &type metadata for ToolKitToolTypedValue.CodableValue;
                v9 = &off_1F07E1278;
                return sub_193494798(v8, v9, v3);
              }

              OUTLINED_FUNCTION_214_0();
              if (v7)
              {
                v8 = &type metadata for ToolKitToolTypedValue.DeferredValue;
                v9 = &off_1F07E12B8;
                return sub_193494798(v8, v9, v3);
              }
            }
          }
        }
      }
    }
  }

LABEL_66:
  v107 = sub_19349AB64();
  v108 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v107);
  OUTLINED_FUNCTION_64(v108, v109);
  OUTLINED_FUNCTION_19_1(v110, &type metadata for ToolKitToolTypedValue);
}

id sub_1936C23CC()
{
  OUTLINED_FUNCTION_16_32();
  v3 = v2;
  OUTLINED_FUNCTION_113_10();
  v6 = v6 && v5 == 0xEB00000000746E61;
  if (v6 || (OUTLINED_FUNCTION_5_5(v4, 0xEB00000000746E61) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v7)
    {
LABEL_7:
      v8 = sub_19349AB64();
      v9 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v8);
      OUTLINED_FUNCTION_64(v9, v10);
      OUTLINED_FUNCTION_19_1(v11, &type metadata for ToolKitToolTypedValue.PrimitiveValue);
    }

    return sub_1934948FC();
  }

  v13 = OUTLINED_FUNCTION_152_8(0x6C6F6F62u);
  v14 = v6 && v0 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_66(v13) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v15 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v16 = OUTLINED_FUNCTION_255_0();
  v17 = v6 && v0 == 0xE700000000000000;
  if (v17 || (OUTLINED_FUNCTION_34_31(v16) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v18 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v19 = OUTLINED_FUNCTION_300();
  v20 = v6 && v0 == 0xE600000000000000;
  if (v20 || (OUTLINED_FUNCTION_24_37(v19) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v21 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v22 = OUTLINED_FUNCTION_254_0();
  v23 = v6 && v0 == 0xE700000000000000;
  if (v23 || (OUTLINED_FUNCTION_34_31(v22) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v32 != 4)
    {
      goto LABEL_7;
    }

    v33 = OUTLINED_FUNCTION_8_48(v24, v25, v26, v27, v28, v29, v30, v31, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
    v35 = memcpy(v33, v34, 0x5AuLL);
    v43 = OUTLINED_FUNCTION_135_6(v35, v36, v37, v38, v39, v40, v41, v42, v310);
    memcpy(v43, v44, 0x5AuLL);
    v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal;
    v46 = &off_1F07E10F8;
    return sub_193494798(v45, v46, v3);
  }

  v47 = OUTLINED_FUNCTION_149_7();
  v48 = v1 == v47 && v0 == 0xE600000000000000;
  if (v48 || (OUTLINED_FUNCTION_24_37(v47) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v49 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_231_2();
  v50 = v6 && v0 == 0xE400000000000000;
  if (v50 || (OUTLINED_FUNCTION_27_28(1702125924) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v51 != 6)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_94_12();
    v45 = &type metadata for ToolKitToolTimestamp;
    v46 = &off_1F07E0F68;
    return sub_193494798(v45, v46, v3);
  }

  OUTLINED_FUNCTION_147_6();
  v52 = OUTLINED_FUNCTION_295_0();
  v53 = OUTLINED_FUNCTION_230_2(v52);
  v55 = v6 && v0 == v54;
  if (v55 || (OUTLINED_FUNCTION_5_5(v53, v54) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v56 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_229();
  v57 = v6 && v0 == 0xE300000000000000;
  if (v57 || (OUTLINED_FUNCTION_37_26(7107189) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v58 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v60 = v1 == 0xD000000000000010 && v59 == v0;
  if (v60 || (OUTLINED_FUNCTION_18_3(16, v59) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v61 != 9)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v62 = OUTLINED_FUNCTION_146_8();
  v63 = v1 == v62 && v0 == 0xEB00000000746E65;
  if (v63 || (OUTLINED_FUNCTION_5_5(v62, 0xEB00000000746E65) & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v64 != 10)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_94_12();
    v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Measurement;
    v46 = &off_1F07E1118;
  }

  else
  {
    v65 = OUTLINED_FUNCTION_112_12();
    v67 = v6 && v0 == v66;
    if (v67 || (OUTLINED_FUNCTION_5_5(v65, v66) & 1) != 0)
    {
      OUTLINED_FUNCTION_6_54();
      if (v76 != 11)
      {
        goto LABEL_7;
      }

      v77 = OUTLINED_FUNCTION_8_48(v68, v69, v70, v71, v72, v73, v74, v75, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
      v79 = memcpy(v77, v78, 0xC0uLL);
      v87 = OUTLINED_FUNCTION_135_6(v79, v80, v81, v82, v83, v84, v85, v86, v311);
      memcpy(v87, v88, 0xC0uLL);
      v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount;
      v46 = &off_1F07E1128;
    }

    else
    {
      v89 = OUTLINED_FUNCTION_38_29();
      v91 = v6 && v0 == v90;
      if (v91 || (OUTLINED_FUNCTION_5_5(v89, v90) & 1) != 0)
      {
        OUTLINED_FUNCTION_6_54();
        if (v100 != 12)
        {
          goto LABEL_7;
        }

        v101 = OUTLINED_FUNCTION_8_48(v92, v93, v94, v95, v96, v97, v98, v99, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
        v103 = memcpy(v101, v102, 0x70uLL);
        v111 = OUTLINED_FUNCTION_135_6(v103, v104, v105, v106, v107, v108, v109, v110, v312);
        memcpy(v111, v112, 0x70uLL);
        v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod;
        v46 = &off_1F07E1138;
      }

      else
      {
        v113 = OUTLINED_FUNCTION_58_17();
        v115 = v6 && v0 == v114;
        if (v115 || (OUTLINED_FUNCTION_33_24(v113, 107) & 1) != 0)
        {
          OUTLINED_FUNCTION_6_54();
          if (v124 != 13)
          {
            goto LABEL_7;
          }

          v125 = OUTLINED_FUNCTION_8_48(v116, v117, v118, v119, v120, v121, v122, v123, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
          v127 = memcpy(v125, v126, 0x6AuLL);
          v135 = OUTLINED_FUNCTION_135_6(v127, v128, v129, v130, v131, v132, v133, v134, v313);
          memcpy(v135, v136, 0x6AuLL);
          v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark;
          v46 = &off_1F07E1148;
        }

        else
        {
          v137 = OUTLINED_FUNCTION_145_6();
          v138 = v6 && v0 == 0xE600000000000000;
          if (v138 || (OUTLINED_FUNCTION_24_37(v137) & 1) != 0)
          {
            OUTLINED_FUNCTION_6_54();
            if (v147 != 14)
            {
              goto LABEL_7;
            }

            v148 = OUTLINED_FUNCTION_8_48(v139, v140, v141, v142, v143, v144, v145, v146, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
            v150 = memcpy(v148, v149, 0x1A2uLL);
            v158 = OUTLINED_FUNCTION_135_6(v150, v151, v152, v153, v154, v155, v156, v157, v314);
            memcpy(v158, v159, 0x1A2uLL);
            v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person;
            v46 = &off_1F07E1158;
          }

          else
          {
            OUTLINED_FUNCTION_144_6();
            v160 = v6 && v0 == 0xE400000000000000;
            if (v160 || (OUTLINED_FUNCTION_27_28(1701603686) & 1) != 0)
            {
              OUTLINED_FUNCTION_6_54();
              if (v169 != 15)
              {
                goto LABEL_7;
              }

              v170 = OUTLINED_FUNCTION_8_48(v161, v162, v163, v164, v165, v166, v167, v168, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
              v172 = memcpy(v170, v171, 0x70uLL);
              v180 = OUTLINED_FUNCTION_135_6(v172, v173, v174, v175, v176, v177, v178, v179, v315);
              memcpy(v180, v181, 0x70uLL);
              v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.File;
              v46 = &off_1F07E1198;
            }

            else
            {
              v182 = v1 == 7368801 && v0 == 0xE300000000000000;
              if (v182 || (OUTLINED_FUNCTION_37_26(7368801) & 1) != 0)
              {
                OUTLINED_FUNCTION_6_54();
                if (v191 != 16)
                {
                  goto LABEL_7;
                }

                v192 = OUTLINED_FUNCTION_8_48(v183, v184, v185, v186, v187, v188, v189, v190, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
                v194 = memcpy(v192, v193, 0x60uLL);
                v202 = OUTLINED_FUNCTION_135_6(v194, v195, v196, v197, v198, v199, v200, v201, v316);
                memcpy(v202, v203, 0x60uLL);
                v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.App;
                v46 = &off_1F07E11A8;
              }

              else
              {
                v204 = OUTLINED_FUNCTION_4_61();
                v206 = v1 == v204 && v0 == v205;
                if (v206 || (OUTLINED_FUNCTION_5_5(v204, v205) & 1) != 0)
                {
                  OUTLINED_FUNCTION_6_54();
                  if (v207 != 17)
                  {
                    goto LABEL_7;
                  }

LABEL_15:
                  OUTLINED_FUNCTION_94_12();
                  return sub_1934948FC();
                }

                OUTLINED_FUNCTION_38();
                v209 = v1 == 0xD000000000000015 && v208 == v0;
                if (v209 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v208) & 1) != 0)
                {
                  OUTLINED_FUNCTION_6_54();
                  if (v218 != 18)
                  {
                    goto LABEL_7;
                  }

                  v219 = OUTLINED_FUNCTION_8_48(v210, v211, v212, v213, v214, v215, v216, v217, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
                  v221 = memcpy(v219, v220, 0x139uLL);
                  v229 = OUTLINED_FUNCTION_135_6(v221, v222, v223, v224, v225, v226, v227, v228, v317);
                  memcpy(v229, v230, 0x139uLL);
                  v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents;
                  v46 = &off_1F07E11C8;
                }

                else
                {
                  v231 = OUTLINED_FUNCTION_106_13();
                  v232 = v6 && v0 == 0xE800000000000000;
                  if (v232 || (OUTLINED_FUNCTION_0_66(v231) & 1) != 0)
                  {
                    OUTLINED_FUNCTION_6_54();
                    if (v241 != 19)
                    {
                      goto LABEL_7;
                    }

                    v242 = OUTLINED_FUNCTION_8_48(v233, v234, v235, v236, v237, v238, v239, v240, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
                    v244 = memcpy(v242, v243, 0x60uLL);
                    v252 = OUTLINED_FUNCTION_135_6(v244, v245, v246, v247, v248, v249, v250, v251, v318);
                    memcpy(v252, v253, 0x60uLL);
                    v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Shortcut;
                    v46 = &off_1F07E11B8;
                  }

                  else
                  {
                    v254 = OUTLINED_FUNCTION_143_4();
                    v256 = v6 && v0 == v255;
                    if (v256 || (OUTLINED_FUNCTION_5_5(v254, v255) & 1) != 0)
                    {
                      OUTLINED_FUNCTION_6_54();
                      if (v265 != 20)
                      {
                        goto LABEL_7;
                      }

                      v266 = OUTLINED_FUNCTION_8_48(v257, v258, v259, v260, v261, v262, v263, v264, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
                      v268 = memcpy(v266, v267, 0xF8uLL);
                      v276 = OUTLINED_FUNCTION_135_6(v268, v269, v270, v271, v272, v273, v274, v275, v319);
                      memcpy(v276, v277, 0xF8uLL);
                      v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule;
                      v46 = &off_1F07E11E8;
                    }

                    else
                    {
                      v278 = OUTLINED_FUNCTION_295_0();
                      v279 = OUTLINED_FUNCTION_169_6(v278 & 0xFFFF0000FFFFFFFFLL | 0x6E4900000000);
                      v281 = v6 && v0 == v280;
                      if (v281 || (OUTLINED_FUNCTION_5_5(v279, v280) & 1) != 0)
                      {
                        OUTLINED_FUNCTION_6_54();
                        if (v282 != 21)
                        {
                          goto LABEL_7;
                        }

                        v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateInterval;
                        v46 = &off_1F07E1228;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v284 = v1 == 0xD000000000000014 && v283 == v0;
                        if (v284 || (OUTLINED_FUNCTION_5_5(0xD000000000000014, v283) & 1) != 0)
                        {
                          OUTLINED_FUNCTION_6_54();
                          if (v293 != 22)
                          {
                            goto LABEL_7;
                          }

                          v294 = OUTLINED_FUNCTION_8_48(v285, v286, v287, v288, v289, v290, v291, v292, v309, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
                          v296 = memcpy(v294, v295, 0xC0uLL);
                          v304 = OUTLINED_FUNCTION_135_6(v296, v297, v298, v299, v300, v301, v302, v303, v320);
                          memcpy(v304, v305, 0xC0uLL);
                          v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents;
                          v46 = &off_1F07E1178;
                        }

                        else
                        {
                          v306 = OUTLINED_FUNCTION_142_7();
                          v307 = v1 == v306 && v0 == 0xE800000000000000;
                          if (!v307 && (OUTLINED_FUNCTION_0_66(v306) & 1) == 0)
                          {
                            goto LABEL_7;
                          }

                          OUTLINED_FUNCTION_6_54();
                          if (v308 != 23)
                          {
                            goto LABEL_7;
                          }

                          OUTLINED_FUNCTION_94_12();
                          OUTLINED_FUNCTION_294_1();
                          v45 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Duration;
                          v46 = &off_1F07E1238;
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
  }

  return sub_193494798(v45, v46, v3);
}

void sub_1936C2BD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 9);
  v21 = *(v3 + 5);
  v8 = *(v3 + 16);
  v28 = *(v3 + 17);
  v29 = *(v3 + 3);
  v20 = *(v3 + 9);
  v22 = *(v3 + 5);
  v23 = *(v3 + 24);
  v24 = *(v3 + 25);
  v25 = *(v3 + 41);
  v9 = a1 == 1852270963 && a2 == 0xE400000000000000;
  v26 = *(v3 + 57);
  v27 = *(v3 + 73);
  if (v9 || (v19 = *(v3 + 89), (OUTLINED_FUNCTION_91_2(1852270963, 0xE400000000000000) & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v12 = a1 == 0x746E656E6F707865 && a2 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_91_2(0x746E656E6F707865, 0xE800000000000000) & 1) != 0)
  {
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = a1 == 0x6361706D6F437369 && a2 == 0xE900000000000074;
  if (v13 || (OUTLINED_FUNCTION_91_2(0x6361706D6F437369, 0xE900000000000074) & 1) != 0)
  {
    if (v28 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v14 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_91_2(0x6874676E656CLL, 0xE600000000000000) & 1) != 0)
  {
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v15 = a1 == 0x61737369746E616DLL && a2 == 0xE800000000000000;
  if (v15 || (OUTLINED_FUNCTION_91_2(0x61737369746E616DLL, 0xE800000000000000) & 1) != 0)
  {
    if (v19)
    {
      goto LABEL_7;
    }

    sub_193494798(&type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa, &off_1F07E1108, a3);
  }

  else
  {
    v16 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
    OUTLINED_FUNCTION_32_3();
    *v17 = a1;
    v17[1] = a2;
    v17[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal;
    OUTLINED_FUNCTION_209_0();
    v18 = swift_allocObject();
    v3[2] = v18;
    *(v18 + 41) = v24;
    *(v18 + 89) = v27;
    *(v18 + 73) = v26;
    *(v18 + 16) = v5;
    *(v18 + 24) = v6;
    *(v18 + 25) = v7;
    *(v18 + 26) = v21;
    *(v18 + 28) = v29;
    *(v18 + 32) = v8;
    *(v18 + 33) = v28;
    *(v18 + 34) = v20;
    *(v18 + 36) = v22;
    *(v18 + 40) = v23;
    *(v18 + 57) = v25;
    *(v18 + 105) = v19;
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1936C2EE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 4);
  v9 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v9 || (OUTLINED_FUNCTION_134_9(), v10 = *(v3 + 12), v35 = *(v3 + 20), v36 = v3[2], v33 = *(v3 + 28), v34 = v3[4], v31 = *(v3 + 36), v32 = v3[6], v29 = *(v3 + 44), v30 = v3[8], v27 = *(v3 + 52), v28 = v3[10], v24 = v3[14], v25 = *(v3 + 60), v26 = v3[12], (OUTLINED_FUNCTION_12_17(12383, 0xE200000000000000) & 1) != 0))
  {
    if (v8)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  v11 = v5 == 12639 && v4 == 0xE200000000000000;
  if (v11 || (OUTLINED_FUNCTION_12_17(12639, 0xE200000000000000) & 1) != 0)
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v12 = v5 == 12895 && v4 == 0xE200000000000000;
  if (v12 || (OUTLINED_FUNCTION_12_17(12895, 0xE200000000000000) & 1) != 0)
  {
    if (v35)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v13 = v5 == 13151 && v4 == 0xE200000000000000;
  if (v13 || (OUTLINED_FUNCTION_12_17(13151, 0xE200000000000000) & 1) != 0)
  {
    if (v33)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v14 = v5 == 13407 && v4 == 0xE200000000000000;
  if (v14 || (OUTLINED_FUNCTION_12_17(13407, 0xE200000000000000) & 1) != 0)
  {
    if (v31)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v15 = v5 == 13663 && v4 == 0xE200000000000000;
  if (v15 || (OUTLINED_FUNCTION_12_17(13663, 0xE200000000000000) & 1) != 0)
  {
    if (v29)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v16 = v5 == 13919 && v4 == 0xE200000000000000;
  if (v16 || (OUTLINED_FUNCTION_12_17(13919, 0xE200000000000000) & 1) != 0)
  {
    if (v27)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v17 = v5 == 14175 && v4 == 0xE200000000000000;
  if (v17 || (OUTLINED_FUNCTION_12_17(14175, 0xE200000000000000) & 1) != 0)
  {
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_73_1(v19, v20);
  *(v21 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa;
  OUTLINED_FUNCTION_323();
  v22 = swift_allocObject();
  *(a3 + 16) = v22;
  *(v22 + 16) = v7;
  *(v22 + 20) = v8;
  *(v22 + 23) = *(v3 + 7);
  *(v22 + 21) = *(v3 + 5);
  *(v22 + 24) = v36;
  v23 = OUTLINED_FUNCTION_250_0(v22);
  *(v23 + 32) = v34;
  *(v23 + 36) = v35;
  *(v23 + 39) = *(v3 + 23);
  *(v23 + 37) = *(v3 + 21);
  *(v23 + 40) = v32;
  *(v23 + 44) = v33;
  *(v23 + 45) = *(v3 + 29);
  *(v23 + 47) = *(v3 + 31);
  *(v23 + 48) = v30;
  *(v23 + 52) = v31;
  *(v23 + 53) = *(v3 + 37);
  *(v23 + 55) = *(v3 + 39);
  *(v23 + 56) = v28;
  *(v23 + 60) = v29;
  *(v23 + 61) = *(v3 + 45);
  *(v23 + 63) = *(v3 + 47);
  *(v23 + 64) = v26;
  *(v23 + 68) = v27;
  *(v23 + 71) = *(v3 + 55);
  *(v23 + 69) = *(v3 + 53);
  *(v23 + 72) = v24;
  *(v23 + 76) = v25;
  OUTLINED_FUNCTION_163_6();
}

void sub_1936C3248(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241_1();
  v7 = v6;
  v9 = *v2;
  v8 = v2[1];
  if (v10 != 1953066613 || v5 != 0xE400000000000000)
  {
    OUTLINED_FUNCTION_134_9();
    v12 = v2[2];
    v13 = *(v2 + 24);
    v23 = v2[4];
    v24 = *(v2 + 40);
    v14 = *(v2 + 41);
    if ((OUTLINED_FUNCTION_12_17(1953066613, 0xE400000000000000) & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_26_28();
      v16 = v4 == v15 && v3 == 0xE500000000000000;
      if (v16 || (OUTLINED_FUNCTION_12_17(v15, 0xE500000000000000) & 1) != 0)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = v4 == 0x6570795474696E75 && v3 == 0xE800000000000000;
        if (!v17 && (OUTLINED_FUNCTION_12_17(0x6570795474696E75, 0xE800000000000000) & 1) == 0)
        {
          v18 = sub_19349AB64();
          v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
          OUTLINED_FUNCTION_73_1(v19, v20);
          *(v21 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Measurement;
          v22 = swift_allocObject();
          *(v7 + 16) = v22;
          *(v22 + 16) = v9;
          *(v22 + 24) = v8;
          *(v22 + 32) = v12;
          *(v22 + 40) = v13;
          *(v22 + 48) = v23;
          *(v22 + 56) = v24;
          *(v22 + 57) = v14;
          OUTLINED_FUNCTION_163_6();

          goto LABEL_15;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_29();
      goto LABEL_15;
    }
  }

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_71_17();
}

void sub_1936C3404()
{
  OUTLINED_FUNCTION_15_48();
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v2 == 0x746E756F6D61 && v0 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_12_17(0x746E756F6D61, 0xE600000000000000) & 1) != 0)
  {
    if ((__dst[2] & 0xFF00) == 0x300)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v32 = *v1;
    *&v33[0] = __dst[2];
    v4 = memcpy(v33 + 8, v1 + 24, 0x42uLL);
    v10 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal;
    v11 = &off_1F07E10F8;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v23 = v2 == 0xD000000000000012 && v16 == v0;
  if (v23 || (v15 = OUTLINED_FUNCTION_49_18(), (v15 & 1) != 0))
  {
    if (!__dst[13])
    {
      goto LABEL_7;
    }

    *(&v32 + 1) = __dst[13];
    OUTLINED_FUNCTION_52_2(v15, MEMORY[0x1E69E6158], v17, v18, v19, v20, v21, v22, __dst[12]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v4 = 0xD000000000000015;
    v25 = v2 == 0xD000000000000015 && v24 == v0;
    if (v25 || (v4 = OUTLINED_FUNCTION_12_17(0xD000000000000015, v24), (v4 & 1) != 0))
    {
      if (!__dst[19])
      {
        goto LABEL_7;
      }

      v26 = v1[8];
      v32 = v1[7];
      v33[0] = v26;
      *&v33[1] = *(v1 + 18);
      *(&v33[1] + 1) = __dst[19];
      v27 = v1[11];
      v33[2] = v1[10];
      v33[3] = v27;
      v10 = &type metadata for ToolKitToolDisplayRepresentation;
      v11 = &off_1F07E18C8;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v4, v10, v11, v5, v6, v7, v8, v9, v32);
      sub_193494798(v12, v13, v14);
      return;
    }

    v28 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v28);
    OUTLINED_FUNCTION_32_3();
    *v29 = v2;
    v29[1] = v0;
    v29[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount;
    OUTLINED_FUNCTION_287_0();
    v30 = swift_allocObject();
    v31 = OUTLINED_FUNCTION_28_3(v30);
    memcpy(v31, __dst, 0xC0uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C35DC(__dst, &v32);
  }
}

void sub_1936C3650()
{
  OUTLINED_FUNCTION_15_48();
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v2 == 1701869940 && v0 == 0xE400000000000000;
  if (v3 || (v4 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_12_17(v4, v5) & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v13 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v15 = v2 == 0xD000000000000012 && v14 == v0;
  if (v15 || (v6 = OUTLINED_FUNCTION_49_18(), (v6 & 1) != 0))
  {
    if (!__dst[3])
    {
      goto LABEL_7;
    }

    v42 = __dst[2];
    v13 = MEMORY[0x1E69E6158];
LABEL_16:
    OUTLINED_FUNCTION_52_2(v6, v13, v7, v8, v9, v10, v11, v12, v42);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v17 = v2 == 0xD000000000000015 && v16 == v0;
  if (v17 || (OUTLINED_FUNCTION_12_17(0xD000000000000015, v16) & 1) != 0)
  {
    if (!__dst[9])
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_202_1();
    OUTLINED_FUNCTION_52_2(v18, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v19, v20, v21, v22, v23, v42);
    sub_193494798(v24, v25, v26);
  }

  else
  {
    v27 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
    OUTLINED_FUNCTION_32_3();
    *v28 = v2;
    v28[1] = v0;
    v28[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod;
    OUTLINED_FUNCTION_136_6();
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_61_19(v29);
    memcpy(v30, v31, 0x70uLL);
    OUTLINED_FUNCTION_26_0();

    v40 = OUTLINED_FUNCTION_188_3(v32, v33, v34, v35, v36, v37, v38, v39, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, __dst[0]);
    sub_1936C37E0(v40, v41);
  }
}

void sub_1936C3854()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, 0x6AuLL);
  v3 = v1 == 0x72616D6563616C70 && v0 == 0xE90000000000006BLL;
  if (v3 || (OUTLINED_FUNCTION_33_24(0x72616D6563616C70, 107) & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v3 & v4))
    {
      OUTLINED_FUNCTION_203_1();
      v12 = MEMORY[0x1E6969080];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v5, v12, v6, v7, v8, v9, v10, v11, v43);
      sub_1934948FC();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_34_21();
  v14 = v3 && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_18_3(21, v13) & 1) != 0)
  {
    if (!__dst[7])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_52_2(v15, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v16, v17, v18, v19, v20, v43);
    sub_193494798(v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_171_3();
    v25 = v1 == v24 && v0 == 0xE400000000000000;
    if (v25 || (OUTLINED_FUNCTION_27_28(1701869940) & 1) != 0)
    {
      if ((__dst[13] & 0x100) == 0)
      {
        OUTLINED_FUNCTION_33_4();
        v12 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark.Type;
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v26 = sub_19349AB64();
    v27 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
    OUTLINED_FUNCTION_9_3(v27, v28);
    *(v29 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark;
    v30 = swift_allocObject();
    v31 = OUTLINED_FUNCTION_61_19(v30);
    memcpy(v31, v32, 0x6AuLL);
    OUTLINED_FUNCTION_26_0();

    v41 = OUTLINED_FUNCTION_188_3(v33, v34, v35, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, __dst[0]);
    sub_1936C39F0(v41, v42);
  }
}

void sub_1936C3A64()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v3, sizeof(__dst));
  v4 = v2 == 0x6E6F73726570 && v1 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_24_37(0x6E6F73726570) & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v4 & v6))
    {
      v7 = *__dst;
LABEL_9:
      *&__src[0] = v7;
      *(&__src[0] + 1) = v5;
LABEL_10:
      sub_1934948FC();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v9 = v2 == 0xD000000000000015 && v8 == v1;
  if (v9 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v8) & 1) != 0)
  {
    if (!*&__dst[56])
    {
      goto LABEL_8;
    }

    v10 = *(v3 + 32);
    __src[0] = *(v3 + 16);
    __src[1] = v10;
    *&__src[2] = *(v3 + 48);
    *(&__src[2] + 1) = *&__dst[56];
    v11 = *(v3 + 80);
    __src[3] = *(v3 + 64);
    __src[4] = v11;
    v12 = &type metadata for ToolKitToolDisplayRepresentation;
    v13 = &off_1F07E18C8;
    goto LABEL_18;
  }

  v14 = v2 == 0x656C646E6168 && v1 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_24_37(0x656C646E6168) & 1) != 0)
  {
    if (*&__dst[104] == 1)
    {
      goto LABEL_8;
    }

    __src[0] = *&__dst[96];
    *&__src[1] = *&__dst[112];
    WORD4(__src[1]) = *&__dst[120] & 0x1FF;
    __src[2] = *&__dst[128];
    v12 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.Handle;
    v13 = &off_1F07E1168;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_147_6();
  v15 = OUTLINED_FUNCTION_230_2(0x656D616Eu);
  v17 = v4 && v1 == v16;
  if (v17 || (OUTLINED_FUNCTION_5_5(v15, v16) & 1) != 0)
  {
    memcpy(__src, (v3 + 144), 0xC0uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
    {
      goto LABEL_8;
    }

    memcpy(v44, __src, sizeof(v44));
    v12 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents;
    v13 = &off_1F07E1178;
LABEL_18:
    sub_193494798(v12, v13, v0);
    return;
  }

  v18 = OUTLINED_FUNCTION_190_1();
  v20 = v2 == v18 && v1 == v19;
  if (v20 || (OUTLINED_FUNCTION_5_5(v18, v19) & 1) != 0)
  {
    v21 = *&__dst[344];
    if (!*&__dst[344])
    {
      goto LABEL_8;
    }

    v22 = *&__dst[336];
LABEL_40:
    *&__src[0] = v22;
    *(&__src[0] + 1) = v21;
    goto LABEL_10;
  }

  v23 = OUTLINED_FUNCTION_311(1734438249);
  v24 = v4 && v1 == 0xE500000000000000;
  if (v24 || (OUTLINED_FUNCTION_1_31(v23) & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v4 & v6))
    {
      v7 = *&__dst[352];
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_8_17();
  v27 = v4 && v26 == v1;
  if (v27 || (OUTLINED_FUNCTION_14_48(v25, v26) & 1) != 0)
  {
    v21 = *&__dst[376];
    if (!*&__dst[376])
    {
      goto LABEL_8;
    }

    v22 = *&__dst[368];
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_38();
  v29 = v2 == 0xD000000000000010 && v28 == v1;
  if (v29 || (OUTLINED_FUNCTION_5_5(0xD000000000000010, v28) & 1) != 0)
  {
    v21 = *&__dst[392];
    if (!*&__dst[392])
    {
      goto LABEL_8;
    }

    v22 = *&__dst[384];
    goto LABEL_40;
  }

  v30 = OUTLINED_FUNCTION_89_14();
  v32 = v2 == v30 && v1 == v31;
  if (v32 || (OUTLINED_FUNCTION_5_5(v30, v31) & 1) != 0)
  {
    v21 = *&__dst[408];
    if (!*&__dst[408])
    {
      goto LABEL_8;
    }

    v22 = *&__dst[400];
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_8_17();
  v35 = v4 && v34 == v1;
  if (v35 || (OUTLINED_FUNCTION_14_48(v33, v34) & 1) != 0)
  {
    v36 = __dst[416];
    goto LABEL_75;
  }

  v37 = v2 == 1699574633 && v1 == 0xE400000000000000;
  if (v37 || (OUTLINED_FUNCTION_27_28(1699574633) & 1) != 0)
  {
    v36 = __dst[417];
LABEL_75:
    if (v36 != 2)
    {
      LOBYTE(__src[0]) = v36 & 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v38 = sub_19349AB64();
  v39 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v38);
  OUTLINED_FUNCTION_9_3(v39, v40);
  *(v41 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person;
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_28_3(v42);
  memcpy(v43, __dst, 0x1A2uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C3E24(__dst, __src);
}

void sub_1936C3E98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_161_5();
  v5 = OUTLINED_FUNCTION_26_28();
  v8 = *v2;
  v7 = v2[1];
  if (v4 != v5 || v6 != 0xE500000000000000)
  {
    v10 = v6;
    v11 = v2[2];
    v24 = *(v2 + 24);
    v12 = *(v2 + 25);
    v13 = v2[4];
    v14 = v2[5];
    v23 = v13;
    if ((OUTLINED_FUNCTION_15_16(v5, 0xE500000000000000) & 1) == 0)
    {
      OUTLINED_FUNCTION_171_3();
      v16 = v4 == v15 && v10 == 0xE400000000000000;
      if (v16 || (v17 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_15_16(v17, v18) & 1) != 0))
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v19 = v4 == 0x6C6562616CLL && v10 == 0xE500000000000000;
        if (!v19 && (OUTLINED_FUNCTION_15_16(0x6C6562616CLL, 0xE500000000000000) & 1) == 0)
        {
          v20 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
          OUTLINED_FUNCTION_265_0();
          *v21 = v4;
          v21[1] = v10;
          v21[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.Handle;
          OUTLINED_FUNCTION_133();
          v22 = swift_allocObject();
          *(v3 + 16) = v22;
          *(v22 + 16) = v8;
          *(v22 + 24) = v7;
          *(v22 + 32) = v11;
          *(v22 + 40) = v24;
          *(v22 + 41) = v12;
          *(v22 + 48) = v23;
          *(v22 + 56) = v14;
          OUTLINED_FUNCTION_179_4();

          goto LABEL_15;
        }

        if (v14)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_71_17();
}

void sub_1936C4038()
{
  OUTLINED_FUNCTION_24_20();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x66657250656D616ELL && v0 == 0xEA00000000007869;
  if (v10 || (v3 = OUTLINED_FUNCTION_23_37(0x66657250656D616ELL, 30825), (v3 & 1) != 0))
  {
    v11 = __dst[1];
    if (__dst[1])
    {
      v12 = __dst[0];
LABEL_8:
      v37 = v11;
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v12);
      sub_1934948FC();
      return;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_117_3();
  v3 = OUTLINED_FUNCTION_268_0();
  v14 = v10 && v0 == v13;
  if (v14 || (v3 = OUTLINED_FUNCTION_33_24(v3, 101), (v3 & 1) != 0))
  {
    v11 = __dst[3];
    if (__dst[3])
    {
      v12 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_267_0();
  v15 = v10 && v0 == 0xEA0000000000656DLL;
  if (v15 || (v3 = OUTLINED_FUNCTION_23_37(v3, 25965), (v3 & 1) != 0))
  {
    v11 = __dst[5];
    if (__dst[5])
    {
      v12 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_266_0();
  v16 = v10 && v0 == 0xEA0000000000656DLL;
  if (v16 || (v3 = OUTLINED_FUNCTION_23_37(v3, 25965), (v3 & 1) != 0))
  {
    v11 = __dst[7];
    if (__dst[7])
    {
      v12 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_271_0();
  v17 = v10 && v0 == 0xEA00000000007869;
  if (v17 || (v3 = OUTLINED_FUNCTION_23_37(v3, 30825), (v3 & 1) != 0))
  {
    v11 = __dst[9];
    if (__dst[9])
    {
      v12 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_263_0();
  v18 = v10 && v0 == 0xE800000000000000;
  if (v18 || (v3 = OUTLINED_FUNCTION_0_66(v3), (v3 & 1) != 0))
  {
    v11 = __dst[11];
    if (__dst[11])
    {
      v12 = __dst[10];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_34_21();
  v20 = v10 && v19 == v0;
  if (v20 || (OUTLINED_FUNCTION_18_3(22, v19) & 1) != 0)
  {
    if (__dst[13] == 1)
    {
LABEL_50:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v37 = __dst[13];
    v21 = memcpy(v38, (v2 + 112), sizeof(v38));
    OUTLINED_FUNCTION_52_2(v21, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation, &off_1F07E1188, v22, v23, v24, v25, v26, __dst[12]);
    sub_193494798(v27, v28, v29);
  }

  else
  {
    v30 = sub_19349AB64();
    v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
    OUTLINED_FUNCTION_9_3(v31, v32);
    *(v33 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents;
    OUTLINED_FUNCTION_287_0();
    v34 = swift_allocObject();
    v35 = OUTLINED_FUNCTION_28_3(v34);
    memcpy(v35, __dst, 0xC0uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C4288(__dst, &v36);
  }
}

void sub_1936C42FC()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x66657250656D616ELL && v0 == 0xEA00000000007869;
  if (v10 || (v3 = OUTLINED_FUNCTION_23_37(0x66657250656D616ELL, 30825), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v11 = __dst[0];
LABEL_8:
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v11);
      sub_1934948FC();
      return;
    }

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_117_3();
  v3 = OUTLINED_FUNCTION_268_0();
  v13 = v10 && v0 == v12;
  if (v13 || (v3 = OUTLINED_FUNCTION_33_24(v3, 101), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      v11 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_267_0();
  v14 = v10 && v0 == 0xEA0000000000656DLL;
  if (v14 || (v3 = OUTLINED_FUNCTION_23_37(v3, 25965), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      v11 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_266_0();
  v15 = v10 && v0 == 0xEA0000000000656DLL;
  if (v15 || (v3 = OUTLINED_FUNCTION_23_37(v3, 25965), (v3 & 1) != 0))
  {
    if (__dst[7])
    {
      v11 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_271_0();
  v16 = v10 && v0 == 0xEA00000000007869;
  if (v16 || (v3 = OUTLINED_FUNCTION_23_37(v3, 30825), (v3 & 1) != 0))
  {
    if (__dst[9])
    {
      v11 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_263_0();
  v17 = v10 && v0 == 0xE800000000000000;
  if (v17 || (v3 = OUTLINED_FUNCTION_0_66(v3), (v3 & 1) != 0))
  {
    if (__dst[11])
    {
      v11 = __dst[10];
      goto LABEL_8;
    }

LABEL_44:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_9_3(v19, v20);
  *(v21 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation;
  OUTLINED_FUNCTION_209_0();
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_28_3(v22);
  memcpy(v23, __dst, 0x60uLL);
  OUTLINED_FUNCTION_26_0();

  v32 = OUTLINED_FUNCTION_109(v24, v25, v26, v27, v28, v29, v30, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, __dst[0]);
  sub_1936C44D4(v32, v33);
}

void sub_1936C4548()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 1701603686 && v0 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_27_28(1701603686) & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v3 & v4))
    {
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_52_2(v5, MEMORY[0x1E6969080], v6, v7, v8, v9, v10, v11, v48);
LABEL_9:
      sub_1934948FC();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_34_21();
  v13 = v3 && v12 == v0;
  if (v13 || (OUTLINED_FUNCTION_18_3(21, v12) & 1) != 0)
  {
    if (!__dst[7])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_52_2(v14, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v15, v16, v17, v18, v19, v48);
    sub_193494798(v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_229();
    v30 = v3 && v0 == 0xE300000000000000;
    if (v30 || (v23 = OUTLINED_FUNCTION_37_26(7107189), (v23 & 1) != 0))
    {
      if (__dst[13])
      {
        OUTLINED_FUNCTION_52_2(v23, MEMORY[0x1E69E6158], v24, v25, v26, v27, v28, v29, __dst[12]);
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v31 = sub_19349AB64();
    v32 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v31);
    OUTLINED_FUNCTION_9_3(v32, v33);
    *(v34 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.File;
    OUTLINED_FUNCTION_136_6();
    v35 = swift_allocObject();
    v36 = OUTLINED_FUNCTION_61_19(v35);
    memcpy(v36, v37, 0x70uLL);
    OUTLINED_FUNCTION_26_0();

    v46 = OUTLINED_FUNCTION_188_3(v38, v39, v40, v41, v42, v43, v44, v45, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, __dst[0]);
    sub_1936C46CC(v46, v47);
  }
}

void sub_1936C4740()
{
  OUTLINED_FUNCTION_118_10();
  OUTLINED_FUNCTION_276_1(v3, v4, v5, v6, v7, v8, v9, v10, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86);
  OUTLINED_FUNCTION_38();
  v19 = v2 == 0xD000000000000010 && v12 == v0;
  if (v19 || (v20 = OUTLINED_FUNCTION_27_0(), v11 = OUTLINED_FUNCTION_85_5(v20, v21), (v11 & 1) != 0))
  {
    if (v90)
    {
      OUTLINED_FUNCTION_102_14(v11, MEMORY[0x1E69E6158], v13, v14, v15, v16, v17, v18, v89);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_38();
  v23 = v2 == 0xD000000000000015 && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_85_5(0xD000000000000015, v22) & 1) != 0)
  {
    if (v91)
    {
      OUTLINED_FUNCTION_82_12();
      OUTLINED_FUNCTION_102_14(v24, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v25, v26, v27, v28, v29, v54);
      sub_193494798(v30, v31, v32);
      return;
    }

    goto LABEL_15;
  }

  v33 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v33);
  OUTLINED_FUNCTION_106_0();
  *v34 = v2;
  v34[1] = v0;
  v34[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.App;
  OUTLINED_FUNCTION_209_0();
  v35 = swift_allocObject();
  *(v1 + 16) = v35;
  OUTLINED_FUNCTION_182_5(v35, v36, v37, v38, v39, v40, v41, v42, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v51 = OUTLINED_FUNCTION_109(v43, v44, v45, v46, v47, v48, v49, v50, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v89);
  sub_1936C4880(v51, v52);
}

void sub_1936C48F4()
{
  OUTLINED_FUNCTION_118_10();
  OUTLINED_FUNCTION_7_42();
  v13 = OUTLINED_FUNCTION_276_1(v5, v6, v7, v8, v9, v10, v11, v12, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88);
  v20 = v2 == v3 && v0 == v4;
  if (v20 || (OUTLINED_FUNCTION_154(), v13 = OUTLINED_FUNCTION_85_5(v21, v22), (v13 & 1) != 0))
  {
    if (v92)
    {
      OUTLINED_FUNCTION_102_14(v13, MEMORY[0x1E69E6158], v14, v15, v16, v17, v18, v19, v91);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_168();
  v25 = v2 == v24 && v23 == v0;
  if (v25 || (OUTLINED_FUNCTION_85_5(0xD000000000000015, v23) & 1) != 0)
  {
    if (v93)
    {
      OUTLINED_FUNCTION_82_12();
      OUTLINED_FUNCTION_102_14(v26, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v27, v28, v29, v30, v31, v56);
      sub_193494798(v32, v33, v34);
      return;
    }

    goto LABEL_15;
  }

  v35 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v35);
  OUTLINED_FUNCTION_106_0();
  *v36 = v2;
  v36[1] = v0;
  v36[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Shortcut;
  OUTLINED_FUNCTION_209_0();
  v37 = swift_allocObject();
  *(v1 + 16) = v37;
  OUTLINED_FUNCTION_182_5(v37, v38, v39, v40, v41, v42, v43, v44, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v53 = OUTLINED_FUNCTION_109(v45, v46, v47, v48, v49, v50, v51, v52, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v91);
  sub_1936C4AE4(v53, v54);
}

uint64_t objectdestroy_20Tm()
{

  if (*(v0 + 72))
  {

    OUTLINED_FUNCTION_130_9();
    if (!v1)
    {
    }

    OUTLINED_FUNCTION_289_0();
    if (!v1)
    {
    }

    OUTLINED_FUNCTION_57_12();
    if (!v1)
    {
    }

    OUTLINED_FUNCTION_298_0();
    if (!v1)
    {
      OUTLINED_FUNCTION_29_7();
      if (!(!v1 & v3))
      {
        sub_193446A6C(*(v0 + 80), v2);
      }
    }
  }

  OUTLINED_FUNCTION_209_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1936C4B58()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_306();
  memcpy(__dst, v2, 0x139uLL);
  v4 = v1 == v3 && v0 == 0xE800000000000000;
  if (!v4 && (OUTLINED_FUNCTION_0_66(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v21 = 0xD000000000000012;
    v22 = v1 == 0xD000000000000012 && v14 == v0;
    if (v22 || (v21 = OUTLINED_FUNCTION_5_5(0xD000000000000012, v14), (v21 & 1) != 0))
    {
      if (!__dst[11])
      {
        goto LABEL_7;
      }

      v49[0] = __dst[10];
      v49[1] = __dst[11];
      v23 = MEMORY[0x1E69E6158];
    }

    else
    {
      v24 = v1 == 6386277 && v0 == 0xE300000000000000;
      if (v24 || (v21 = OUTLINED_FUNCTION_37_26(6386277), (v21 & 1) != 0))
      {
        if (__dst[13])
        {
          goto LABEL_7;
        }

        v25 = __dst[12];
      }

      else
      {
        v26 = v1 == 1918985593 && v0 == 0xE400000000000000;
        if (v26 || (v21 = OUTLINED_FUNCTION_27_28(1918985593), (v21 & 1) != 0))
        {
          if (__dst[15])
          {
            goto LABEL_7;
          }

          v25 = __dst[14];
        }

        else
        {
          v21 = 0x68746E6F6DLL;
          v27 = v1 == 0x68746E6F6DLL && v0 == 0xE500000000000000;
          if (v27 || (v21 = OUTLINED_FUNCTION_1_31(0x68746E6F6DLL), (v21 & 1) != 0))
          {
            if (__dst[17])
            {
              goto LABEL_7;
            }

            v25 = __dst[16];
          }

          else
          {
            v28 = v1 == 7954788 && v0 == 0xE300000000000000;
            if (v28 || (v21 = OUTLINED_FUNCTION_37_26(7954788), (v21 & 1) != 0))
            {
              if (__dst[19])
              {
                goto LABEL_7;
              }

              v25 = __dst[18];
            }

            else
            {
              v29 = v1 == 1920298856 && v0 == 0xE400000000000000;
              if (v29 || (v21 = OUTLINED_FUNCTION_27_28(1920298856), (v21 & 1) != 0))
              {
                if (__dst[21])
                {
                  goto LABEL_7;
                }

                v25 = __dst[20];
              }

              else
              {
                v21 = 0x6574756E696DLL;
                v30 = v1 == 0x6574756E696DLL && v0 == 0xE600000000000000;
                if (v30 || (v21 = OUTLINED_FUNCTION_24_37(0x6574756E696DLL), (v21 & 1) != 0))
                {
                  if (__dst[23])
                  {
                    goto LABEL_7;
                  }

                  v25 = __dst[22];
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_120_6();
                  v31 = v1 == v21 && v0 == 0xE600000000000000;
                  if (v31 || (v21 = OUTLINED_FUNCTION_24_37(v21), (v21 & 1) != 0))
                  {
                    if (__dst[25])
                    {
                      goto LABEL_7;
                    }

                    v25 = __dst[24];
                  }

                  else
                  {
                    v21 = 0x6F6365736F6E616ELL;
                    v32 = v1 == 0x6F6365736F6E616ELL && v0 == 0xEA0000000000646ELL;
                    if (v32 || (v21 = OUTLINED_FUNCTION_23_37(0x6F6365736F6E616ELL, 25710), (v21 & 1) != 0))
                    {
                      if (__dst[27])
                      {
                        goto LABEL_7;
                      }

                      v25 = __dst[26];
                    }

                    else
                    {
                      v33 = OUTLINED_FUNCTION_210_0();
                      v21 = OUTLINED_FUNCTION_227_1(v33);
                      v34 = v4 && v0 == 0xE700000000000000;
                      if (v34 || (v21 = OUTLINED_FUNCTION_34_31(v21), (v21 & 1) != 0))
                      {
                        if (__dst[29])
                        {
                          goto LABEL_7;
                        }

                        v25 = __dst[28];
                      }

                      else
                      {
                        v21 = OUTLINED_FUNCTION_210_0() | 0x4F79616400000000;
                        v36 = v1 == v21 && v0 == v35;
                        if (v36 || (v21 = OUTLINED_FUNCTION_5_5(v21, v35), (v21 & 1) != 0))
                        {
                          if (__dst[31])
                          {
                            goto LABEL_7;
                          }

                          v25 = __dst[30];
                        }

                        else
                        {
                          v21 = 0x72657472617571;
                          v37 = v1 == 0x72657472617571 && v0 == 0xE700000000000000;
                          if (v37 || (v21 = OUTLINED_FUNCTION_34_31(0x72657472617571), (v21 & 1) != 0))
                          {
                            if (__dst[33])
                            {
                              goto LABEL_7;
                            }

                            v25 = __dst[32];
                          }

                          else
                          {
                            v21 = OUTLINED_FUNCTION_210_0() | 0x6F4D664F00000000;
                            v39 = v1 == v21 && v0 == v38;
                            if (v39 || (v21 = OUTLINED_FUNCTION_5_5(v21, v38), (v21 & 1) != 0))
                            {
                              if (__dst[35])
                              {
                                goto LABEL_7;
                              }

                              v25 = __dst[34];
                            }

                            else
                            {
                              v21 = OUTLINED_FUNCTION_210_0() | 0x6559664F00000000;
                              v40 = v1 == v21 && v0 == 0xEA00000000007261;
                              if (v40 || (v21 = OUTLINED_FUNCTION_5_5(v21, 0xEA00000000007261), (v21 & 1) != 0))
                              {
                                if (__dst[37])
                                {
                                  goto LABEL_7;
                                }

                                v25 = __dst[36];
                              }

                              else
                              {
                                OUTLINED_FUNCTION_39_25();
                                if (!v4 || v41 != v0)
                                {
                                  v21 = OUTLINED_FUNCTION_14_48(v21, v41);
                                  if ((v21 & 1) == 0)
                                  {
                                    v43 = sub_19349AB64();
                                    v44 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v43);
                                    OUTLINED_FUNCTION_9_3(v44, v45);
                                    *(v46 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents;
                                    v47 = swift_allocObject();
                                    v48 = OUTLINED_FUNCTION_28_3(v47);
                                    memcpy(v48, __dst, 0x139uLL);
                                    OUTLINED_FUNCTION_26_0();

                                    sub_1936C4FB4(__dst, v49);
                                    return;
                                  }
                                }

                                if (__dst[39])
                                {
                                  goto LABEL_7;
                                }

                                v25 = __dst[38];
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
        }
      }

      v49[0] = v25;
      v23 = MEMORY[0x1E69E7360];
    }

    OUTLINED_FUNCTION_52_2(v21, v23, v15, v16, v17, v18, v19, v20, v49[0]);
    sub_1934948FC();
    return;
  }

  if (__dst[3] == 1)
  {
LABEL_7:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_172_5();
  OUTLINED_FUNCTION_52_2(v5, &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar, &off_1F07E11D8, v6, v7, v8, v9, v10, v49[0]);
  sub_193494798(v11, v12, v13);
}

void sub_1936C5028()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_83_18();
  memcpy(__dst, v4, 0x49uLL);
  v5 = v1 == v2 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_23_37(v2, 29285) & 1) != 0)
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v13 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v15 = v1 == 0xD000000000000012 && v14 == v0;
  if (v15 || (v6 = OUTLINED_FUNCTION_5_5(0xD000000000000012, v14), (v6 & 1) != 0))
  {
    if (!__dst[3])
    {
      goto LABEL_7;
    }

    v16 = __dst[2];
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_39_25();
  v18 = v5 && v17 == v0;
  if (v18 || (v6 = OUTLINED_FUNCTION_18_3(16, v17), (v6 & 1) != 0))
  {
    if (!__dst[5])
    {
      goto LABEL_7;
    }

    v16 = __dst[4];
LABEL_16:
    v40 = v16;
    v13 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v6, v13, v7, v8, v9, v10, v11, v12, v40);
LABEL_18:
    sub_1934948FC();
    return;
  }

  v19 = 0x6565577473726966;
  v20 = v1 == 0x6565577473726966 && v0 == 0xEC0000007961646BLL;
  if (v20 || (v19 = OUTLINED_FUNCTION_5_5(0x6565577473726966, 0xEC0000007961646BLL), (v19 & 1) != 0))
  {
    if (__dst[7])
    {
      goto LABEL_7;
    }

    v21 = __dst[6];
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_38();
  v19 = 0xD000000000000016;
  v23 = v1 == 0xD000000000000016 && v22 == v0;
  if (v23 || (v19 = OUTLINED_FUNCTION_5_5(0xD000000000000016, v22), (v19 & 1) != 0))
  {
    if (__dst[9])
    {
      goto LABEL_7;
    }

    v21 = __dst[8];
LABEL_33:
    OUTLINED_FUNCTION_52_2(v19, MEMORY[0x1E69E7360], v7, v8, v9, v10, v11, v12, v21);
    goto LABEL_18;
  }

  v24 = sub_19349AB64();
  v25 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
  OUTLINED_FUNCTION_9_3(v25, v26);
  *(v27 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar;
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_28_3(v28);
  memcpy(v29, __dst, 0x49uLL);
  OUTLINED_FUNCTION_26_0();

  v38 = OUTLINED_FUNCTION_270_0(v30, v31, v32, v33, v34, v35, v36, v37, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, __dst[0]);
  sub_1936C521C(v38, v39);
}

void sub_1936C5290()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_306();
  memcpy(__dst, v2, sizeof(__dst));
  v4 = v1 == v3 && v0 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_66(v3) & 1) != 0)
  {
    if (__dst[3] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_172_5();
    v11 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar;
    v12 = &off_1F07E11D8;
    goto LABEL_9;
  }

  v16 = v1 == 0x636E657571657266 && v0 == 0xE900000000000079;
  if (v16 || (OUTLINED_FUNCTION_33_24(0x636E657571657266, 121) & 1) != 0)
  {
    if ((__dst[11] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v18 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency;
    goto LABEL_17;
  }

  v5 = OUTLINED_FUNCTION_206_0(0x767265746E69);
  v19 = v4 && v0 == 0xE800000000000000;
  if (v19 || (v5 = OUTLINED_FUNCTION_0_66(v5), (v5 & 1) != 0))
  {
    if (__dst[13])
    {
      goto LABEL_7;
    }

    v48 = __dst[12];
    v18 = MEMORY[0x1E69E7360];
    goto LABEL_17;
  }

  v20 = v1 == 6581861 && v0 == 0xE300000000000000;
  if (v20 || (v5 = OUTLINED_FUNCTION_37_26(6581861), (v5 & 1) != 0))
  {
    v21 = LODWORD(__dst[17]) | (WORD2(__dst[17]) << 32);
    if ((v21 & 0xFF0000000000) == 0x30000000000)
    {
      goto LABEL_7;
    }

    v48 = __dst[14];
    v49 = __dst[15] & 1;
    v50 = __dst[16];
    v51 = __dst[17];
    v52 = BYTE4(v21) & 1;
    v53 = BYTE5(v21);
    v11 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd;
    v12 = &off_1F07E11F8;
LABEL_9:
    OUTLINED_FUNCTION_52_2(v5, v11, v12, v6, v7, v8, v9, v10, v48);
    sub_193494798(v13, v14, v15);
    return;
  }

  v22 = v1 == 0x676E69686374616DLL && v0 == 0xEE007963696C6F50;
  if (v22 || (OUTLINED_FUNCTION_5_5(0x676E69686374616DLL, 0xEE007963696C6F50) & 1) != 0)
  {
    if ((__dst[19] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v18 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_34_21();
  v24 = v4 && v23 == v0;
  if (v24 || (OUTLINED_FUNCTION_18_3(18, v23) & 1) != 0)
  {
    if ((__dst[21] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v18 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy;
    goto LABEL_17;
  }

  v25 = v1 == 0x7368746E6F6DLL && v0 == 0xE600000000000000;
  if (v25 || (OUTLINED_FUNCTION_24_37(0x7368746E6F6DLL) & 1) != 0)
  {
    v48 = __dst[22];
    v26 = &unk_1EAE40830;
    v27 = &unk_19397DF38;
LABEL_59:
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    v18 = v5;
LABEL_17:
    OUTLINED_FUNCTION_52_2(v5, v18, v17, v6, v7, v8, v9, v10, v48);
    sub_1934948FC();
    return;
  }

  v28 = v1 == 0x6854664F73796164 && v0 == 0xED00007261655965;
  if (v28 || (OUTLINED_FUNCTION_5_5(0x6854664F73796164, 0xED00007261655965) & 1) != 0)
  {
    v29 = __dst[23];
LABEL_58:
    v48 = v29;
    v26 = &unk_1EAE40820;
    v27 = &unk_19397DF28;
    goto LABEL_59;
  }

  v30 = v1 == 0x6854664F73796164 && v0 == 0xEE0068746E6F4D65;
  if (v30 || (OUTLINED_FUNCTION_5_5(0x6854664F73796164, 0xEE0068746E6F4D65) & 1) != 0)
  {
    v29 = __dst[24];
    goto LABEL_58;
  }

  v31 = OUTLINED_FUNCTION_210_0();
  v32 = OUTLINED_FUNCTION_196_2(v31);
  v33 = v4 && v0 == 0xE500000000000000;
  if (v33 || (OUTLINED_FUNCTION_1_31(v32) & 1) != 0)
  {
    v29 = __dst[25];
    goto LABEL_58;
  }

  v34 = OUTLINED_FUNCTION_210_0() | 0x7379616400000000;
  v35 = v1 == v34 && v0 == 0xE800000000000000;
  if (v35 || (OUTLINED_FUNCTION_0_66(v34) & 1) != 0)
  {
    v48 = __dst[26];
    v26 = &unk_1EAE40828;
    v27 = &unk_19397DF30;
    goto LABEL_59;
  }

  v36 = OUTLINED_FUNCTION_196_2(1920298856);
  v37 = v4 && v0 == 0xE500000000000000;
  if (v37 || (OUTLINED_FUNCTION_1_31(v36) & 1) != 0)
  {
    v29 = __dst[27];
    goto LABEL_58;
  }

  v38 = v1 == 0x736574756E696DLL && v0 == 0xE700000000000000;
  if (v38 || (OUTLINED_FUNCTION_34_31(0x736574756E696DLL) & 1) != 0)
  {
    v29 = __dst[28];
    goto LABEL_58;
  }

  v39 = OUTLINED_FUNCTION_120_6() & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v40 = v1 == v39 && v0 == 0xE700000000000000;
  if (v40 || (OUTLINED_FUNCTION_34_31(v39) & 1) != 0)
  {
    v29 = __dst[29];
    goto LABEL_58;
  }

  v41 = v1 == 0x7469736F50746573 && v0 == 0xEC000000736E6F69;
  if (v41 || (OUTLINED_FUNCTION_5_5(0x7469736F50746573, 0xEC000000736E6F69) & 1) != 0)
  {
    v29 = __dst[30];
    goto LABEL_58;
  }

  v42 = sub_19349AB64();
  v43 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v42);
  OUTLINED_FUNCTION_9_3(v43, v44);
  *(v45 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule;
  v46 = swift_allocObject();
  v47 = OUTLINED_FUNCTION_28_3(v46);
  memcpy(v47, __dst, 0xF8uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C5738(__dst, &v48);
}

void sub_1936C5960(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241_1();
  v4 = v3;
  v6 = v5;
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 9);
  OUTLINED_FUNCTION_38();
  if (v10 != 0xD00000000000001CLL || v11 != v4)
  {
    v13 = v10;
    v26 = *(v2 + 10);
    v25 = v2[2];
    v14 = *(v2 + 24);
    if ((OUTLINED_FUNCTION_91_2(0xD00000000000001CLL, v11) & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v16 = v13 == 0xD00000000000001ALL && v15 == v4;
      if (v16 || (OUTLINED_FUNCTION_91_2(0xD00000000000001ALL, v15) & 1) != 0)
      {
        if (v26 == 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v13 != 0xD000000000000018 || v17 != v4)
        {
          v19 = OUTLINED_FUNCTION_20_5(24);
          if ((OUTLINED_FUNCTION_124_3(v19, v20, v21) & 1) == 0)
          {
            v22 = sub_19349AB64();
            OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
            OUTLINED_FUNCTION_106_0();
            *v23 = v13;
            v23[1] = v4;
            v23[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday;
            OUTLINED_FUNCTION_95();
            v24 = swift_allocObject();
            *(v6 + 16) = v24;
            *(v24 + 16) = v7;
            *(v24 + 24) = v8;
            *(v24 + 25) = v9;
            *(v24 + 26) = v26;
            *(v24 + 32) = v25;
            *(v24 + 40) = v14;
            OUTLINED_FUNCTION_48_4();
            swift_willThrow();

            goto LABEL_9;
          }
        }

        if (v14)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_71_17();
}

void sub_1936C5B2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_183_2();
  OUTLINED_FUNCTION_157_7();
  OUTLINED_FUNCTION_119_9();
  v8 = v8 && v7 == 0xE500000000000000;
  if (!v8)
  {
    v9 = v7;
    v10 = *(v2 + 9);
    if ((OUTLINED_FUNCTION_91_2(v6, 0xE500000000000000) & 1) == 0)
    {
      v11 = v3 == 0x7061654C7369 && v9 == 0xE600000000000000;
      if (!v11 && (OUTLINED_FUNCTION_91_2(0x7061654C7369, 0xE600000000000000) & 1) == 0)
      {
        v12 = sub_19349AB64();
        v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
        OUTLINED_FUNCTION_219_0(v13, v14);
        *(v15 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth;
        *(v15 + 16) = v4;
        *(v15 + 24) = v5;
        *(v15 + 25) = v10;
        OUTLINED_FUNCTION_23_2(v16, v15);

        goto LABEL_9;
      }

      if (v10 == 2)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_180_5();
}

void sub_1936C5C58()
{
  OUTLINED_FUNCTION_57_0();
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 12);
  v7 = v2 == 0x7472617473 && v3 == 0xE500000000000000;
  if (v7 || (v8 = v3, v22 = v0[2], v23 = *(v0 + 6), v9 = *(v0 + 28), OUTLINED_FUNCTION_319(), (OUTLINED_FUNCTION_12_17(v10, 0xE500000000000000) & 1) != 0))
  {
    if (v6)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  v11 = v2 == 6581861 && v8 == 0xE300000000000000;
  if (v11 || (OUTLINED_FUNCTION_12_17(6581861, 0xE300000000000000) & 1) != 0)
  {
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_193494798(&type metadata for ToolKitToolTimestamp, &off_1F07E0F68, v1);
    return;
  }

  v12 = OUTLINED_FUNCTION_142_7();
  v13 = v2 == v12 && v8 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_12_17(v12, 0xE800000000000000) & 1) != 0)
  {
    if (v21)
    {
      goto LABEL_7;
    }

    sub_1934948FC();
  }

  else
  {
    v14 = sub_19349AB64();
    v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    OUTLINED_FUNCTION_73_1(v15, v16);
    *(v17 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateInterval;
    OUTLINED_FUNCTION_133();
    v18 = swift_allocObject();
    v1[2] = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = v5;
    v19 = OUTLINED_FUNCTION_250_0(v18);
    *(v19 + 32) = v22;
    *(v19 + 40) = v23;
    *(v19 + 44) = v9;
    *(v19 + 47) = *(v0 + 31);
    *(v19 + 45) = *(v0 + 29);
    *(v19 + 48) = v20;
    *(v19 + 56) = v21;
    OUTLINED_FUNCTION_163_6();
  }
}

void sub_1936C5F90()
{
  OUTLINED_FUNCTION_15_48();
  OUTLINED_FUNCTION_275_1(v3, v4, v5, v6, v7, v8, v9, v10, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12]);
  v11 = v1 == v2 && v0 == 0xE400000000000000;
  if (v11 || (v12 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_12_17(v12, v13) & 1) != 0))
  {
    OUTLINED_FUNCTION_66_21();
    if (!v11)
    {
      v42[0] = v20;
      v21 = &type metadata for ToolKitToolTypeIdentifier;
      v22 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v14, v21, v22, v15, v16, v17, v18, v19, v42[0]);
      sub_193494798(v23, v24, v25);
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_117_3();
  v27 = v1 == 0x756C615665736163 && v0 == v26;
  if (v27 || (OUTLINED_FUNCTION_12_17(0x756C615665736163, 0xE900000000000065) & 1) != 0)
  {
    if (!__src[2])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_52_2(v28, MEMORY[0x1E69E6158], v29, v30, v31, v32, v33, v34, v42[0]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_168();
    v37 = v1 == v36 && v35 == v0;
    if (v37 || (OUTLINED_FUNCTION_53_21(21, v35) & 1) != 0)
    {
      if (__src[8])
      {
        OUTLINED_FUNCTION_168_4();
        v21 = &type metadata for ToolKitToolDisplayRepresentation;
        v22 = &off_1F07E18C8;
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v38 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v38);
    OUTLINED_FUNCTION_32_3();
    *v39 = v1;
    v39[1] = v0;
    v39[5] = &type metadata for ToolKitToolTypedValue.EnumerationValue;
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_28_3(v40);
    memcpy(v41, __src, 0x68uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C6124(__src, v42);
  }
}

void sub_1936C6198()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 1701869940 && v0 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_27_28(1701869940) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v3)
    {
      *&v45[0] = v16;
      v17 = &type metadata for ToolKitToolTypeIdentifier;
      v18 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v10, v17, v18, v11, v12, v13, v14, v15, *&v45[0]);
      sub_193494798(v19, v20, v21);
      return;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v22 = 0x696669746E656469;
  v23 = v1 == 0x696669746E656469 && v0 == 0xEA00000000007265;
  if (v23 || (v22 = OUTLINED_FUNCTION_23_37(0x696669746E656469, 29285), (v22 & 1) != 0))
  {
    if (!__dst[2])
    {
      goto LABEL_8;
    }

    v45[0] = *&__dst[1];
    v24 = MEMORY[0x1E69E6158];
    goto LABEL_17;
  }

  v25 = OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
  v26 = v1 == v25 && v0 == 0xEA00000000007365;
  if (v26 || (OUTLINED_FUNCTION_5_5(v25, 0xEA00000000007365) & 1) != 0)
  {
    *&v45[0] = __dst[3];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40838, &qword_19397DF40);
    v17 = v10;
    v18 = &off_1F07BD310;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v28 = v1 == 0xD000000000000015 && v27 == v0;
  if (v28 || (v10 = OUTLINED_FUNCTION_5_5(0xD000000000000015, v27), (v10 & 1) != 0))
  {
    if (__dst[9])
    {
      v29 = *(v2 + 48);
      v45[0] = *(v2 + 32);
      v45[1] = v29;
      v46 = *(v2 + 64);
      v47 = __dst[9];
      v30 = *(v2 + 96);
      v48 = *(v2 + 80);
      v49 = v30;
      v17 = &type metadata for ToolKitToolDisplayRepresentation;
      v18 = &off_1F07E18C8;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_8_17();
  v33 = v3 && v32 == v0;
  if (v33 || (OUTLINED_FUNCTION_14_48(v31, v32) & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!v3 & v35)
    {
      goto LABEL_8;
    }

    v36 = __dst[14];
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_158_2();
  v38 = v1 == 0x4574694B69726973 && v0 == v37;
  if (v38 || (OUTLINED_FUNCTION_5_5(0x4574694B69726973, v37) & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!v3 & v35)
    {
      goto LABEL_8;
    }

    v36 = __dst[16];
LABEL_38:
    *&v45[0] = v36;
    *(&v45[0] + 1) = v34;
    v24 = MEMORY[0x1E6969080];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v22, v24, v4, v5, v6, v7, v8, v9, *&v45[0]);
    sub_1934948FC();
    return;
  }

  v39 = sub_19349AB64();
  v40 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v39);
  OUTLINED_FUNCTION_9_3(v40, v41);
  *(v42 + 40) = &type metadata for ToolKitToolTypedValue.EntityValue;
  v43 = swift_allocObject();
  v44 = OUTLINED_FUNCTION_28_3(v43);
  memcpy(v44, __dst, 0x90uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C6424(__dst, v45);
}

void sub_1936C65B8()
{
  OUTLINED_FUNCTION_15_48();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v1, sizeof(__dst));
  v5 = v2 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_154(), (OUTLINED_FUNCTION_12_17(v6, v7) & 1) != 0))
  {
    if (__dst[1])
    {
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_52_2(v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v13, v14, v54);
LABEL_8:
      sub_1934948FC();
      return;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_296_0();
  v16 = v2 == v15 && v0 == 0xE400000000000000;
  if (v16 || (v17 = OUTLINED_FUNCTION_148_6(), (OUTLINED_FUNCTION_12_17(v17, v18) & 1) != 0))
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v5 & v26))
    {
      OUTLINED_FUNCTION_52_2(v19, MEMORY[0x1E6969080], v20, v21, v22, v23, v24, v25, __dst[2]);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_168();
  v29 = v2 == v28 && v27 == v0;
  if (v29 || (OUTLINED_FUNCTION_53_21(21, v27) & 1) != 0)
  {
    if (!__dst[9])
    {
LABEL_16:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_202_1();
    OUTLINED_FUNCTION_52_2(v30, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v31, v32, v33, v34, v35, v54);
    sub_193494798(v36, v37, v38);
  }

  else
  {
    v39 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v39);
    OUTLINED_FUNCTION_32_3();
    *v40 = v2;
    v40[1] = v0;
    v40[5] = &type metadata for ToolKitToolTypedValue.CodableValue;
    OUTLINED_FUNCTION_136_6();
    v41 = swift_allocObject();
    v42 = OUTLINED_FUNCTION_61_19(v41);
    memcpy(v42, v43, 0x70uLL);
    OUTLINED_FUNCTION_26_0();

    v52 = OUTLINED_FUNCTION_188_3(v44, v45, v46, v47, v48, v49, v50, v51, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, __dst[0]);
    sub_1936C673C(v52, v53);
  }
}

void sub_1936C67B0(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_171_3();
  v5 = *v1;
  v7 = v3 == v6 && v4 == 0xE400000000000000;
  if (v7 || (v8 = v4, v9 = v3, v11 = v1[1], v10 = v1[2], v12 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_124_3(v12, v13, v9) & 1) != 0))
  {
    OUTLINED_FUNCTION_251_0();
    if (!v7)
    {
      v14 = &type metadata for ToolKitToolTypeIdentifier;
      v15 = &off_1F07E0F88;
LABEL_9:
      sub_193494798(v14, v15, a1);
      return;
    }

    goto LABEL_8;
  }

  v16 = OUTLINED_FUNCTION_98_13() & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
  v17 = v9 == v16 && v8 == 0xE600000000000000;
  if (v17 || (OUTLINED_FUNCTION_124_3(v16, 0xE600000000000000, v9) & 1) != 0)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40840, &qword_19397DF48);
    OUTLINED_FUNCTION_59_11(v18, v19, v20, v21, v22, v23, v24, v25, v32, v11);
    sub_1934948FC();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_62_18();
    v28 = v9 == v26 && v8 == v27;
    if (v28 || (OUTLINED_FUNCTION_124_3(v26, v27, v9) & 1) != 0)
    {
      if ((~v10 & 0xF000000000000007) != 0)
      {
        v14 = &type metadata for ToolKitToolTypeInstance;
        v15 = &off_1F07E12F8;
        goto LABEL_9;
      }

LABEL_8:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    v29 = sub_19349AB64();
    v30 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
    *v31 = v9;
    v31[1] = v8;
    v31[2] = v5;
    v31[3] = v11;
    v31[4] = v10;
    v31[5] = &type metadata for ToolKitToolTypedValue.CollectionValue;
    OUTLINED_FUNCTION_23_2(v30, v31);

    sub_193437C90(v5);

    sub_193437C90(v10);
  }
}

void sub_1936C6954(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_171_3();
  v5 = *v1;
  v7 = v3 == v6 && v4 == 0xE400000000000000;
  if (v7 || (v8 = v4, v9 = v3, v11 = *(v1 + 8), v10 = *(v1 + 16), v12 = *(v1 + 24), v24 = *(v1 + 32), v13 = *(v1 + 40), v14 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_324(v14) & 1) != 0))
  {
    if ((~v5 & 0xF000000000000007) == 0)
    {
LABEL_7:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    v15 = &type metadata for ToolKitToolTypeIdentifier;
    v16 = &off_1F07E0F88;
    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_139_9();
  v18 = v9 == v17 && v8 == 0xE500000000000000;
  if (v18 || (OUTLINED_FUNCTION_324(v17) & 1) != 0)
  {
    if ((v11 & 0xF000000000000007) == 0xE000000000000007)
    {
      goto LABEL_7;
    }

    v15 = &type metadata for ToolKitToolQuery;
    v16 = &off_1F07E1558;
LABEL_9:
    sub_193494798(v15, v16, a1);
    return;
  }

  v19 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v19);
  v23 = v13;
  v21 = v20;
  *v20 = v9;
  v20[1] = v8;
  v20[5] = &type metadata for ToolKitToolTypedValue.QueryValue;
  v22 = swift_allocObject();
  v21[2] = v22;
  *(v22 + 16) = v5;
  *(v22 + 24) = v11;
  *(v22 + 32) = v10;
  *(v22 + 40) = v12;
  *(v22 + 48) = v24;
  *(v22 + 56) = v23;
  OUTLINED_FUNCTION_26_0();

  sub_193437C90(v5);
  sub_1936C6B18(v11);
}

uint64_t sub_1936C6B18(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xE000000000000007)
  {
    return sub_19344BF2C(result);
  }

  return result;
}

void sub_1936C6B48()
{
  OUTLINED_FUNCTION_15_48();
  OUTLINED_FUNCTION_275_1(v3, v4, v5, v6, v7, v8, v9, v10, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], v44[12]);
  v11 = v1 == v2 && v0 == 0xE400000000000000;
  if (v11 || (v12 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_12_17(v12, v13) & 1) != 0))
  {
    OUTLINED_FUNCTION_66_21();
    if (!v11)
    {
      v44[0] = v20;
      v21 = &type metadata for ToolKitToolTypeIdentifier;
      v22 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v14, v21, v22, v15, v16, v17, v18, v19, v44[0]);
      sub_193494798(v23, v24, v25);
      return;
    }

    goto LABEL_8;
  }

  v27 = v1 == OUTLINED_FUNCTION_3_67() && v0 == v26;
  if (v27 || (OUTLINED_FUNCTION_154(), (OUTLINED_FUNCTION_12_17(v28, v29) & 1) != 0))
  {
    if (!__src[2])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_52_2(v30, MEMORY[0x1E69E6158], v31, v32, v33, v34, v35, v36, v44[0]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_168();
    v39 = v1 == v38 && v37 == v0;
    if (v39 || (OUTLINED_FUNCTION_53_21(21, v37) & 1) != 0)
    {
      if (__src[8])
      {
        OUTLINED_FUNCTION_168_4();
        v21 = &type metadata for ToolKitToolDisplayRepresentation;
        v22 = &off_1F07E18C8;
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v40 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v40);
    OUTLINED_FUNCTION_32_3();
    *v41 = v1;
    v41[1] = v0;
    v41[5] = &type metadata for ToolKitToolTypedValue.EntityIdentifierValue;
    v42 = swift_allocObject();
    v43 = OUTLINED_FUNCTION_28_3(v42);
    memcpy(v43, __src, 0x68uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C6D94(__src, v44);
  }
}

uint64_t objectdestroy_94Tm()
{
  OUTLINED_FUNCTION_60_18();
  if (!v2)
  {
  }

  if (v1[10])
  {

    OUTLINED_FUNCTION_130_9();
    if (!v2)
    {
    }

    if ((v0 & ~v1[8]) != 0)
    {
    }

    OUTLINED_FUNCTION_66_21();
    if (!v2)
    {
    }

    if (v1[14] != 1)
    {
      OUTLINED_FUNCTION_29_7();
      if (!(!v2 & v4))
      {
        sub_193446A6C(v1[11], v3);
      }
    }
  }

  return MEMORY[0x1EEE6BDD0](v1, 120, 7);
}

void sub_1936C6E08(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_171_3();
  v5 = *v1;
  v7 = v3 == v6 && v4 == 0xE400000000000000;
  if (v7 || (v8 = v4, v9 = v3, v11 = v1[1], v10 = v1[2], v12 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_42_9(v12, v13, v9) & 1) != 0))
  {
    OUTLINED_FUNCTION_251_0();
    if (!v7)
    {
      v14 = &type metadata for ToolKitToolTypeIdentifier;
      v15 = &off_1F07E0F88;
LABEL_9:
      sub_193494798(v14, v15, a1);
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_168();
  v18 = v9 == v17 && v16 == v8;
  if (v18 || (OUTLINED_FUNCTION_42_9(0xD000000000000014, v16, v9) & 1) != 0)
  {
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v14 = &type metadata for ToolKitToolTypeInstance;
      v15 = &off_1F07E12F8;
      goto LABEL_9;
    }

LABEL_8:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v19 = v9 == 0x656761726F7473 && v8 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_42_9(0x656761726F7473, 0xE700000000000000, v9) & 1) != 0)
  {
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v14 = &type metadata for ToolKitToolTypedValue.DeferredValue.Storage;
      v15 = &off_1F07E12C8;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = sub_19349AB64();
  v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
  *v22 = v9;
  v22[1] = v8;
  v22[2] = v5;
  v22[3] = v11;
  v22[4] = v10;
  v22[5] = &type metadata for ToolKitToolTypedValue.DeferredValue;
  OUTLINED_FUNCTION_23_2(v21, v22);

  sub_193437C90(v5);
  sub_193437C90(v11);
  sub_193438D88(v10);
}

id sub_1936C6FC8()
{
  OUTLINED_FUNCTION_47_22();
  v3 = *v0;
  OUTLINED_FUNCTION_22_4();
  v11 = v11 && v5 == v2;
  if (v11 || (v12 = OUTLINED_FUNCTION_20_5(19), v4 = OUTLINED_FUNCTION_124_3(v12, v13, v14), (v4 & 1) != 0))
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_102_14(v4, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &off_1F07E12D8, v6, v7, v8, v9, v10, *(v3 + 16));
      return sub_193494798(v15, v16, v17);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_192_0();
    v26 = v1 == v19 && v2 == v20;
    if (v26 || (v19 = OUTLINED_FUNCTION_91_2(v19, v20), (v19 & 1) != 0))
    {
      if (v3 < 0)
      {
        OUTLINED_FUNCTION_102_14(v19, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, &off_1F07E12E8, v21, v22, v23, v24, v25, *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
        return sub_193494798(v15, v16, v17);
      }
    }
  }

  v27 = sub_19349AB64();
  v28 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
  OUTLINED_FUNCTION_219_0(v28, v29);
  OUTLINED_FUNCTION_19_1(v30, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage);
}

void sub_1936C75F8(uint64_t a1)
{
  OUTLINED_FUNCTION_161_5();
  OUTLINED_FUNCTION_26_28();
  OUTLINED_FUNCTION_264();
  v6 = v6 && v5 == 0xE500000000000000;
  if (v6 || (v7 = v5, v8 = *(v1 + 8), (OUTLINED_FUNCTION_117_2(v4, 0xE500000000000000, v2) & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_77_2(v9, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v10, v11, v12, v13, v14, v30, v3);
LABEL_9:
      sub_193494798(v15, v16, v17);
      return;
    }

    goto LABEL_8;
  }

  v18 = OUTLINED_FUNCTION_192_0();
  v20 = v2 == v18 && v7 == v19;
  if (v20 || (OUTLINED_FUNCTION_117_2(v18, v19, v2) & 1) != 0)
  {
    OUTLINED_FUNCTION_251_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_77_2(v21, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v22, v23, v24, v25, v26, v30, v8);
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_35();
    return;
  }

  v27 = sub_19349AB64();
  v28 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
  *v29 = v2;
  v29[1] = v7;
  v29[5] = &type metadata for ToolKitToolTypeInstance.Optional;
  v29[2] = v3;
  v29[3] = v8;
  OUTLINED_FUNCTION_23_2(v28, v29);

  sub_193437C90(v3);
  sub_193437C90(v8);
}

void sub_1936C7808()
{
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_264();
  v6 = v6 && v4 == v5;
  if (v6 || (v7 = v4, v8 = *(v0 + 8), OUTLINED_FUNCTION_154(), (OUTLINED_FUNCTION_15_16(v9, v10) & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (v6)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_193494798(&type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v1);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_258_0();
    v12 = v6 && v7 == 0xE700000000000000;
    if (v12 || (OUTLINED_FUNCTION_15_16(v11, 0xE700000000000000) & 1) != 0)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40850, &qword_19397DF58);
      OUTLINED_FUNCTION_59_11(v13, v14, v15, v16, v17, v18, v19, v20, v24, v8);
      sub_1934948FC();
    }

    else
    {
      v21 = sub_19349AB64();
      v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
      *v23 = v2;
      v23[1] = v7;
      v23[5] = &type metadata for ToolKitToolTypeInstance.Restricted;
      v23[2] = v3;
      v23[3] = v8;
      OUTLINED_FUNCTION_23_2(v22, v23);

      sub_193437C90(v3);
    }
  }
}

void sub_1936C7940()
{
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_113_10();
  v9 = v9 && v2 == v8;
  if (v9 || (v1 = OUTLINED_FUNCTION_23_37(v1, 29285), (v1 & 1) != 0))
  {
    if ((~v0 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_77_2(v1, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v3, v4, v5, v6, v7, v17, v0);
      sub_193494798(v10, v11, v12);
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    v13 = sub_19349AB64();
    v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
    OUTLINED_FUNCTION_64(v14, v15);
    OUTLINED_FUNCTION_19_1(v16, &type metadata for ToolKitToolTypeInstance.Deferred);

    sub_193437C90(v0);
  }
}

void sub_1936C7A18()
{
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_264();
  v6 = v6 && v5 == 0xE800000000000000;
  if (v6 || (v7 = v5, v8 = *(v0 + 8), (OUTLINED_FUNCTION_15_16(v4, 0xE800000000000000) & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (v6)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_193494798(&type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v1);
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_258_0();
    v10 = v6 && v7 == 0xE700000000000000;
    if (v10 || (OUTLINED_FUNCTION_15_16(v9, 0xE700000000000000) & 1) != 0)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40850, &qword_19397DF58);
      OUTLINED_FUNCTION_59_11(v11, v12, v13, v14, v15, v16, v17, v18, v22, v8);
      sub_1934948FC();
    }

    else
    {
      v19 = sub_19349AB64();
      v20 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v19);
      *v21 = v2;
      v21[1] = v7;
      v21[5] = &type metadata for ToolKitToolTypeInstance.Constrained;
      v21[2] = v3;
      v21[3] = v8;
      OUTLINED_FUNCTION_23_2(v20, v21);

      sub_193437C90(v3);
    }
  }
}

id sub_1936C7B60()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_113_10();
  v6 = v6 && v5 == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_1_31(v4) & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      memcpy(v34, __dst, sizeof(v34));
      v7 = &type metadata for ToolKitToolRestrictionContext.InSet;
      v8 = &off_1F07E1368;
      return sub_193494798(v7, v8, v3);
    }

    goto LABEL_57;
  }

  v9 = v2 == 0x6E65736572706572 && v1 == 0xEF7341656C626174;
  if (v9 || (OUTLINED_FUNCTION_5_5(0x6E65736572706572, 0xEF7341656C626174) & 1) != 0)
  {
    OUTLINED_FUNCTION_213();
    if (v6)
    {
      *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = &type metadata for ToolKitToolRestrictionContext.RepresentableAs;
      v8 = &off_1F07E13D8;
      return sub_193494798(v7, v8, v3);
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_8_17();
  v13 = v6 && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_14_48(v11, v12) & 1) != 0)
  {
    OUTLINED_FUNCTION_215_2();
    if (!v6)
    {
      goto LABEL_57;
    }

LABEL_24:
    OUTLINED_FUNCTION_261();
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_8_17();
  v16 = v6 && v15 == v1;
  if (v16 || (OUTLINED_FUNCTION_14_48(v14, v15) & 1) != 0)
  {
    OUTLINED_FUNCTION_217_1();
    if (!v6)
    {
      goto LABEL_57;
    }

    goto LABEL_24;
  }

  v17 = OUTLINED_FUNCTION_152_8(0x74786574u);
  v19 = v6 && v1 == v18;
  if (v19 || (OUTLINED_FUNCTION_5_5(v17, v18) & 1) != 0)
  {
    OUTLINED_FUNCTION_216_1();
    if (v6)
    {
      v20 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __dst[1] = v20;
      __dst[2] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      LOWORD(__dst[3]) = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v34[0] = __dst[0];
      v34[1] = v20;
      v34[2] = __dst[2];
      LOWORD(v34[3]) = __dst[3];
      v7 = &type metadata for ToolKitToolRestrictionContext.TextTypedWith;
      v8 = &off_1F07E13F8;
      return sub_193494798(v7, v8, v3);
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_38();
  v22 = v2 == 0xD000000000000018 && v21 == v1;
  if (v22 || (OUTLINED_FUNCTION_5_5(0xD000000000000018, v21) & 1) != 0)
  {
    OUTLINED_FUNCTION_308();
    if (v6)
    {
      v23 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOWORD(__dst[1]) = v23;
      v7 = &type metadata for ToolKitToolRestrictionContext.MeasurementExpressibleAs;
      v8 = &off_1F07E13E8;
      return sub_193494798(v7, v8, v3);
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_38();
  if (v2 != 0xD000000000000010 || v24 != v1)
  {
    if ((OUTLINED_FUNCTION_5_5(0xD000000000000010, v24) & 1) == 0 || (v0 & 0xE000000000000000) != 0xC000000000000000)
    {
      goto LABEL_57;
    }

LABEL_55:
    OUTLINED_FUNCTION_294_1();
    *&__dst[0] = v26;
    BYTE8(__dst[0]) = v27;
    *&__dst[1] = v28;
    BYTE8(__dst[1]) = v29;
    v7 = &type metadata for ToolKitToolRestrictionContext.InInclusiveRange;
    v8 = &off_1F07E13C8;
    return sub_193494798(v7, v8, v3);
  }

  OUTLINED_FUNCTION_214_0();
  if (v6)
  {
    goto LABEL_55;
  }

LABEL_57:
  v30 = sub_19349AB64();
  v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
  OUTLINED_FUNCTION_64(v31, v32);
  OUTLINED_FUNCTION_19_1(v33, &type metadata for ToolKitToolRestrictionContext);
}

void sub_1936C7E64()
{
  OUTLINED_FUNCTION_15_48();
  memcpy(__dst, v2, sizeof(__dst));
  v4 = v3 == 0x6974696E69666564 && v1 == 0xEA00000000006E6FLL;
  if (v4 || (OUTLINED_FUNCTION_12_17(0x6974696E69666564, 0xEA00000000006E6FLL) & 1) != 0)
  {
    memcpy(__src, v2, 0xD8uLL);
    if (sub_1936C8078(__src) == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v15, __src, sizeof(v15));
    v5 = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet;
    v6 = &off_1F07E1378;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_301();
  v8 = v3 == 0x6574616C706D6574 && v1 == v7;
  if (v8 || (OUTLINED_FUNCTION_12_17(0x6574616C706D6574, 0xE900000000000073) & 1) != 0)
  {
    if (!__dst[27])
    {
      goto LABEL_7;
    }

    __src[0] = __dst[27];
    v9 = v2[15];
    *&__src[1] = v2[14];
    *&__src[3] = v9;
    v10 = v2[17];
    *&__src[5] = v2[16];
    *&__src[7] = v10;
    v5 = &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates;
    v6 = &off_1F07E1098;
LABEL_16:
    sub_193494798(v5, v6, v0);
    return;
  }

  v11 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
  OUTLINED_FUNCTION_32_3();
  *v12 = v3;
  v12[1] = v1;
  v12[5] = &type metadata for ToolKitToolRestrictionContext.InSet;
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_28_3(v13);
  memcpy(v14, __dst, 0x120uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C801C(__dst, __src);
}

uint64_t sub_1936C8078(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1936C80A8()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  OUTLINED_FUNCTION_8_17();
  v11 = v11 && v4 == v0;
  if (!v11)
  {
    v3 = OUTLINED_FUNCTION_18_3(16, v4);
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v13 = v1 == 0xD000000000000012 && v12 == v0;
      if (v13 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v12) & 1) != 0)
      {
        *v61 = *&__dst[16];
        *&v61[8] = *&__dst[24];
        *&v62 = *&__dst[40];

        v20 = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.DynamicEnumeration;
        v21 = &off_1F07E1388;
LABEL_16:
        OUTLINED_FUNCTION_52_2(v14, v20, v21, v15, v16, v17, v18, v19, *v61);
        sub_193494798(v22, v23, v24);

LABEL_17:

        return;
      }

      OUTLINED_FUNCTION_38();
      v26 = v1 == 0xD00000000000001DLL && v25 == v0;
      if (v26 || (OUTLINED_FUNCTION_5_5(0xD00000000000001DLL, v25) & 1) != 0)
      {
        *v61 = *&__dst[48];
        *&v61[16] = *&__dst[64];
        sub_193438388(*&__dst[48]);

        OUTLINED_FUNCTION_52_2(v27, &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &off_1F07E13A8, v28, v29, v30, v31, v32, *v61);
        sub_193494798(v33, v34, v35);
        sub_1934354B4(*v61);
        goto LABEL_17;
      }

      v36 = v1 == 0x726575516B6E696CLL && v0 == 0xE900000000000079;
      if (v36 || (OUTLINED_FUNCTION_33_24(0x726575516B6E696CLL, 121) & 1) != 0)
      {
        v37 = *&__dst[112];
        *v61 = *&__dst[72];
        v38 = *&__dst[80];
        v39 = *&__dst[96];
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v3 = 0xD000000000000013;
        v50 = v1 == 0xD000000000000013 && v49 == v0;
        if (v50 || (v3 = OUTLINED_FUNCTION_5_5(0xD000000000000013, v49), (v3 & 1) != 0))
        {
          *v61 = *&__dst[120];
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_38();
        v52 = v1 == 0xD000000000000014 && v51 == v0;
        if (!v52 && (OUTLINED_FUNCTION_5_5(0xD000000000000014, v51) & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          v54 = v1 == 0xD00000000000001BLL && v53 == v0;
          if (!v54 && (OUTLINED_FUNCTION_5_5(0xD00000000000001BLL, v53) & 1) == 0)
          {
            v55 = sub_19349AB64();
            v56 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v55);
            OUTLINED_FUNCTION_9_3(v56, v57);
            *(v58 + 40) = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet;
            v59 = swift_allocObject();
            v60 = OUTLINED_FUNCTION_28_3(v59);
            memcpy(v60, __dst, 0xD8uLL);
            OUTLINED_FUNCTION_26_0();

            sub_1936C8404(__dst, v61);
            return;
          }

          *v61 = *&__dst[184];
          *&v61[8] = *&__dst[192];
          *&v62 = *&__dst[208];

          v20 = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration;
          v21 = &off_1F07E1398;
          goto LABEL_16;
        }

        v37 = *&__dst[176];
        *v61 = *&__dst[136];
        v38 = *&__dst[144];
        v39 = *&__dst[160];
      }

      *&v61[8] = v38;
      v62 = v39;
      v63 = v37;

      OUTLINED_FUNCTION_52_2(v40, &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery, &off_1F07E13B8, v41, v42, v43, v44, v45, *v61);
      sub_193494798(v46, v47, v48);

      goto LABEL_17;
    }
  }

  if (*&__dst[8])
  {
    *v61 = *__dst;
LABEL_8:
    OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v5, v6, v7, v8, v9, v10, *v61);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_36_4();
}

void sub_1936C86B4()
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_39_6();
  v2 = *v0;
  OUTLINED_FUNCTION_22_4();
  v5 = v5 && v4 == v1;
  if (v5 || (v6 = v3, v8 = v0[1], v7 = v0[2], v9 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_15_16(v9, v10) & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_127_7(v11, &type metadata for ToolKitToolContentItemClassDescriptor, &off_1F07E1408, v12, v13, v14, v15, v16, v2);
      sub_193494798(v17, v18, v19);
      return;
    }

    goto LABEL_8;
  }

  v20 = OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
  v28 = v6 == v20 && v1 == v21;
  if (v28 || (v20 = OUTLINED_FUNCTION_15_16(v20, v21), (v20 & 1) != 0))
  {
    if (!v7)
    {
LABEL_8:
      OUTLINED_FUNCTION_29();
      return;
    }

    OUTLINED_FUNCTION_127_7(v20, MEMORY[0x1E69E6158], v22, v23, v24, v25, v26, v27, v8);
    sub_1934948FC();
  }

  else
  {
    v29 = sub_19349AB64();
    v30 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
    OUTLINED_FUNCTION_218_2(v30, v31);
    v32[2] = v2;
    v32[3] = v8;
    v32[4] = v7;
    v32[5] = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
    OUTLINED_FUNCTION_23_2(v33, v32);

    sub_193438388(v2);
  }
}

void sub_1936C8980()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_119_9();
  v4 = v4 && v3 == 0xEA0000000000646ELL;
  if (!v4)
  {
    v5 = v3;
    v18 = *(v0 + 16);
    v6 = *(v0 + 24);
    OUTLINED_FUNCTION_68_18();
    if ((OUTLINED_FUNCTION_274_1(v7, v8, v9) & 1) == 0)
    {
      OUTLINED_FUNCTION_284_0(0x427265707075);
      if (!v4 || v5 != 0xEA0000000000646ELL)
      {
        OUTLINED_FUNCTION_68_18();
        if ((OUTLINED_FUNCTION_274_1(v11, v12, v13) & 1) == 0)
        {
          v14 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
          OUTLINED_FUNCTION_126_6();
          *v15 = v1;
          v15[1] = v5;
          v15[5] = &type metadata for ToolKitToolRestrictionContext.InInclusiveRange;
          OUTLINED_FUNCTION_95();
          v16 = swift_allocObject();
          v17 = OUTLINED_FUNCTION_141_6(v16);
          *(v17 + 32) = v18;
          *(v17 + 40) = v6;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }
      }

      if (v6)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936C8D2C()
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_57_0();
  v4 = *v0;
  OUTLINED_FUNCTION_38();
  v6 = v3 == 0xD000000000000010 && v5 == v1;
  if (v6 || (v7 = v0[1], v8 = v0[2], v30 = *(v0 + 1), v31 = v0[16], v32 = v0[17], v27 = *(v0 + 3), v28 = v0[32], v29 = v0[33], v24 = *(v0 + 5), v25 = v0[48], v26 = v0[49], (OUTLINED_FUNCTION_12_17(0xD000000000000010, v5) & 1) != 0))
  {
    if (v4 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v10 = v3 == 0xD000000000000012 && v9 == v1;
  if (v10 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v7 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v12 = v3 == 0xD000000000000012 && v11 == v1;
  if (v12 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v8 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = v3 == 0x6472616F6279656BLL && v1 == 0xEC00000065707954;
  if (v13 || (OUTLINED_FUNCTION_12_17(0x6472616F6279656BLL, 0xEC00000065707954) & 1) != 0)
  {
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v15 = v3 == 0xD000000000000012 && v14 == v1;
  if (v15 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v29)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v17 = v3 == 0xD000000000000012 && v16 == v1;
  if (v17 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_73_1(v19, v20);
  *(v21 + 40) = &type metadata for ToolKitToolRestrictionContext.TextTypedWith;
  v22 = swift_allocObject();
  *(v2 + 16) = v22;
  *(v22 + 16) = v4;
  *(v22 + 17) = v7;
  *(v22 + 18) = v8;
  *(v22 + 23) = v0[7];
  *(v22 + 19) = *(v0 + 3);
  *(v22 + 24) = v30;
  *(v22 + 32) = v31;
  *(v22 + 33) = v32;
  *(v22 + 38) = *(v0 + 11);
  *(v22 + 34) = *(v0 + 18);
  *(v22 + 40) = v27;
  *(v22 + 48) = v28;
  *(v22 + 49) = v29;
  v23 = *(v0 + 34);
  *(v22 + 54) = *(v0 + 19);
  *(v22 + 50) = v23;
  *(v22 + 56) = v24;
  *(v22 + 64) = v25;
  *(v22 + 65) = v26;
  OUTLINED_FUNCTION_163_6();
}

id sub_1936C9038()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *v0;
  OUTLINED_FUNCTION_38();
  v12 = v4 == 0xD000000000000017 && v5 == v1;
  if (v12 || (v4 = OUTLINED_FUNCTION_18_3(23, v5), (v4 & 1) != 0))
  {
    if (!(v3 >> 62))
    {
      OUTLINED_FUNCTION_53_2(v4, MEMORY[0x1E69E6158], v6, v7, v8, v9, v10, v11, *(v3 + 16));
      return sub_1934948FC();
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_38();
  v15 = v2 == 0xD00000000000001ALL && v14 == v1;
  if (v15 || (OUTLINED_FUNCTION_5_5(0xD00000000000001ALL, v14) & 1) != 0)
  {
    OUTLINED_FUNCTION_43_3();
    if (!v12)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_226_1();
    v22 = &type metadata for ToolKitToolContentItemClassDescriptor.LinkEntityContentItemClass;
    v23 = &off_1F07E1418;
LABEL_16:
    OUTLINED_FUNCTION_53_2(v16, v22, v23, v17, v18, v19, v20, v21, v36);
    return sub_193494798(v24, v25, v26);
  }

  OUTLINED_FUNCTION_38();
  v28 = v2 == 0xD000000000000018 && v27 == v1;
  if (v28 || (OUTLINED_FUNCTION_5_5(0xD000000000000018, v27) & 1) != 0)
  {
    OUTLINED_FUNCTION_42_10();
    if (!v12)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_226_1();
    v22 = &type metadata for ToolKitToolContentItemClassDescriptor.LinkEnumContentItemClass;
    v23 = &off_1F07E1428;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  if (v2 != 0xD00000000000001BLL || v29 != v1)
  {
    if ((OUTLINED_FUNCTION_5_5(0xD00000000000001BLL, v29) & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_42_10();
    if (!(!v12 & v31))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v3 >> 62 == 3)
  {
LABEL_32:
    OUTLINED_FUNCTION_303((v3 & 0x3FFFFFFFFFFFFFFFLL));
    v22 = &type metadata for ToolKitToolContentItemClassDescriptor.LinkCodableContentItemClass;
    v23 = &off_1F07E1438;
    goto LABEL_16;
  }

LABEL_34:
  v32 = sub_19349AB64();
  v33 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
  OUTLINED_FUNCTION_64(v33, v34);
  OUTLINED_FUNCTION_19_1(v35, &type metadata for ToolKitToolContentItemClassDescriptor);
}

void sub_1936C938C()
{
  OUTLINED_FUNCTION_321();
  v2 = OUTLINED_FUNCTION_3_67();
  v12 = *v0;
  v11 = v0[1];
  v13 = v1 == v2 && v3 == v10;
  if (v13 || (v14 = v4, v15 = v3, OUTLINED_FUNCTION_154(), v2 = sub_19393CA30(), (v2 & 1) != 0))
  {
    if (v11)
    {
      OUTLINED_FUNCTION_26_27(v2, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v12);
    }

    else
    {
      OUTLINED_FUNCTION_131_8();
    }
  }

  else
  {
    v16 = sub_19349AB64();
    v17 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
    *v18 = v1;
    v18[1] = v15;
    v18[5] = v14;
    v18[2] = v12;
    v18[3] = v11;
    OUTLINED_FUNCTION_23_2(v17, v18);
  }
}

void sub_1936C9484()
{
  OUTLINED_FUNCTION_2_3();
  v11 = OUTLINED_FUNCTION_201_2(v3, v4, v5, v6, v7, v8, v9, v10, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v19 = v1 == v2 && v0 == 0xE800000000000000;
  if (v19 || (v11 = OUTLINED_FUNCTION_0_66(v2), (v11 & 1) != 0))
  {
    if (*&__src[8] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_200_2(v11, v12, v13, v14, v15, v16, v17, v18, v51, v52, v53, v54, v55, v56, v57, v58, v59, *__src, *&__src[8], *&__src[16]);
    v26 = &type metadata for ToolKitToolTypeDefinition.Version1.Entity.Property;
    v27 = &off_1F07E1058;
    goto LABEL_9;
  }

  v31 = OUTLINED_FUNCTION_305() | 0x7369726100000000;
  v32 = v1 == v31 && v0 == 0xEA00000000006E6FLL;
  if (v32 || (OUTLINED_FUNCTION_5_5(v31, 0xEA00000000006E6FLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (v19)
    {
      goto LABEL_7;
    }

    v51 = v33;
    v26 = &type metadata for ToolKitToolComparisonPredicate.Comparison;
    v27 = &off_1F07E1458;
    goto LABEL_9;
  }

  v34 = OUTLINED_FUNCTION_242_1();
  v41 = v19 && v0 == 0xEA00000000006449;
  if (v41 || (v34 = OUTLINED_FUNCTION_23_37(v34, 25673), (v34 & 1) != 0))
  {
    if (!*&__src[56])
    {
      goto LABEL_7;
    }

    v52 = *&__src[56];
    OUTLINED_FUNCTION_52_2(v34, MEMORY[0x1E69E6158], v35, v36, v37, v38, v39, v40, *&__src[48]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_34_21();
    v43 = v19 && v42 == v0;
    if (v43 || (OUTLINED_FUNCTION_18_3(16, v42) & 1) != 0)
    {
      OUTLINED_FUNCTION_66_21();
      if (v19)
      {
        goto LABEL_7;
      }

      v51 = v44;
      v26 = &type metadata for ToolKitToolContentItemClassDescriptor;
      v27 = &off_1F07E1408;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v20, v26, v27, v21, v22, v23, v24, v25, v51);
      sub_193494798(v28, v29, v30);
      return;
    }

    v45 = sub_19349AB64();
    v46 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v45);
    OUTLINED_FUNCTION_9_3(v46, v47);
    *(v48 + 40) = &type metadata for ToolKitToolComparisonPredicate;
    OUTLINED_FUNCTION_127_3();
    v49 = swift_allocObject();
    v50 = OUTLINED_FUNCTION_28_3(v49);
    memcpy(v50, __src, 0x48uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C964C(__src, &v51);
  }
}

void sub_1936C9A48(uint64_t a1)
{
  OUTLINED_FUNCTION_161_5();
  OUTLINED_FUNCTION_264();
  v6 = v6 && v5 == 0xE500000000000000;
  if (v6 || (v7 = v5, v8 = *(v1 + 8), (OUTLINED_FUNCTION_117_2(v4, 0xE500000000000000, v2) & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_77_2(v9, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v10, v11, v12, v13, v14, v29, v3);
LABEL_9:
      sub_193494798(v15, v16, v17);
      return;
    }

    goto LABEL_8;
  }

  v18 = OUTLINED_FUNCTION_120_6();
  v19 = v2 == v18 && v7 == 0xE600000000000000;
  if (v19 || (OUTLINED_FUNCTION_117_2(v18, 0xE600000000000000, v2) & 1) != 0)
  {
    OUTLINED_FUNCTION_251_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_77_2(v20, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v21, v22, v23, v24, v25, v29, v8);
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_35();
    return;
  }

  v26 = sub_19349AB64();
  v27 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
  *v28 = v2;
  v28[1] = v7;
  v28[5] = &type metadata for ToolKitToolComparisonPredicate.Comparison.Pair;
  v28[2] = v3;
  v28[3] = v8;
  OUTLINED_FUNCTION_23_2(v27, v28);

  sub_193437C90(v3);
  sub_193437C90(v8);
}

id sub_1936C9B7C()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_113_10();
  v10 = v10 && v4 == 0xE700000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_34_31(v3), (v3 & 1) != 0))
  {
    if (!(v0 >> 60))
    {
      v11 = *(v0 + 16);
LABEL_15:
      OUTLINED_FUNCTION_77_2(v3, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v5, v6, v7, v8, v9, v64, v11);
      return sub_193494798(v14, v15, v16);
    }

    goto LABEL_29;
  }

  v12 = OUTLINED_FUNCTION_153_7();
  v13 = v2 == v12 && v1 == 0xEA00000000006F54;
  if (!v13 && (OUTLINED_FUNCTION_5_5(v12, 0xEA00000000006F54) & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_273_0();
    v19 = v10 && v1 == 0xE800000000000000;
    if (v19 || (OUTLINED_FUNCTION_0_66(v18) & 1) != 0)
    {
      if (v0 >> 60 != 2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_206_0(0x566F4E736168);
      v29 = v10 && v1 == 0xEA00000000006575;
      if (v29 || (OUTLINED_FUNCTION_23_37(v28, 25973) & 1) != 0)
      {
        if (v0 >> 60 != 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v34 = OUTLINED_FUNCTION_51_18();
        v36 = v10 && v1 == v35;
        if (v36 || (OUTLINED_FUNCTION_5_5(v34, v35) & 1) != 0)
        {
          if (v0 >> 60 == 4)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_38();
        v38 = v2 == 0xD000000000000014 && v37 == v1;
        if (v38 || (OUTLINED_FUNCTION_5_5(0xD000000000000014, v37) & 1) != 0)
        {
          if (v0 >> 60 == 5)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v39 = OUTLINED_FUNCTION_111_10();
        v40 = v10 && v1 == 0xE800000000000000;
        if (v40 || (OUTLINED_FUNCTION_0_66(v39) & 1) != 0)
        {
          if (v0 >> 60 == 6)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_38();
        v43 = v2 == 0xD000000000000011 && v42 == v1;
        if (v43 || (OUTLINED_FUNCTION_14_48(v41, v42) & 1) != 0)
        {
          if (v0 >> 60 == 7)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v44 = OUTLINED_FUNCTION_109_10();
        v45 = v10 && v1 == 0xE800000000000000;
        if (v45 || (OUTLINED_FUNCTION_0_66(v44) & 1) != 0)
        {
          if (v0 >> 60 == 8)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v46 = OUTLINED_FUNCTION_175_5();
        v48 = v10 && v1 == v47;
        if (v48 || (OUTLINED_FUNCTION_5_5(v46, v47) & 1) != 0)
        {
          if (v0 >> 60 == 9)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v49 = OUTLINED_FUNCTION_222_1();
        v51 = v10 && v1 == v50;
        if (v51 || (OUTLINED_FUNCTION_5_5(v49, v50) & 1) != 0)
        {
          if (v0 >> 60 == 10)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v52 = OUTLINED_FUNCTION_259_0();
        v53 = v10 && v1 == 0xE800000000000000;
        if (v53 || (OUTLINED_FUNCTION_0_66(v52) & 1) != 0)
        {
          if (v0 >> 60 == 11)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v54 = OUTLINED_FUNCTION_197_2();
        v55 = v10 && v1 == 0xEA00000000006575;
        if (v55 || (OUTLINED_FUNCTION_33_24(v54, 116) & 1) != 0)
        {
          if (v0 >> 60 == 12)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v56 = OUTLINED_FUNCTION_256_0();
        v57 = v10 && v1 == 0xEA00000000006575;
        if (v57 || (OUTLINED_FUNCTION_33_24(v56, 116) & 1) != 0)
        {
          if (v0 >> 60 == 13)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        v58 = OUTLINED_FUNCTION_227_1(0x6F547369u);
        v59 = v10 && v1 == 0xE700000000000000;
        if (!v59 && (OUTLINED_FUNCTION_34_31(v58) & 1) == 0)
        {
          v60 = OUTLINED_FUNCTION_212_1();
          if (v10 && v1 == v61)
          {
            if (v0 >> 60 == 15)
            {
              goto LABEL_14;
            }
          }

          else if (OUTLINED_FUNCTION_5_5(v60, v61))
          {
            OUTLINED_FUNCTION_186_2();
            if (!v10 & v63)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_186_2();
        if (!v10)
        {
          goto LABEL_29;
        }
      }
    }

    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_77_2(v20, &type metadata for ToolKitToolNullValue, v21, v22, v23, v24, v25, v26, v64, v27);
    return sub_1934948FC();
  }

  if (v0 >> 60 == 1)
  {
LABEL_14:
    OUTLINED_FUNCTION_257();
    goto LABEL_15;
  }

LABEL_29:
  v30 = sub_19349AB64();
  v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
  OUTLINED_FUNCTION_64(v31, v32);
  OUTLINED_FUNCTION_19_1(v33, &type metadata for ToolKitToolComparisonPredicate.Comparison.Template);
}

void sub_1936C9EF0()
{
  OUTLINED_FUNCTION_2_3();
  v11 = OUTLINED_FUNCTION_201_2(v3, v4, v5, v6, v7, v8, v9, v10, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  v19 = v1 == v2 && v0 == 0xE800000000000000;
  if (v19 || (v11 = OUTLINED_FUNCTION_0_66(v2), (v11 & 1) != 0))
  {
    if (*&__src[8] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_200_2(v11, v12, v13, v14, v15, v16, v17, v18, v52, v53, v54, v55, v56, v57, v58, v59, v60, *__src, *&__src[8], *&__src[16]);
    v26 = &type metadata for ToolKitToolTypeDefinition.Version1.Entity.Property;
    v27 = &off_1F07E1058;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v32 = v1 == 0xD000000000000012 && v31 == v0;
  if (v32 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v31) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (v19)
    {
      goto LABEL_7;
    }

    v52 = v33;
    v26 = &type metadata for ToolKitToolComparisonPredicate.Comparison.Template;
    v27 = &off_1F07E1478;
    goto LABEL_9;
  }

  v34 = OUTLINED_FUNCTION_242_1();
  v42 = v19 && v0 == v41;
  if (v42 || (v34 = OUTLINED_FUNCTION_23_37(v34, 25673), (v34 & 1) != 0))
  {
    if (!*&__src[56])
    {
      goto LABEL_7;
    }

    v53 = *&__src[56];
    OUTLINED_FUNCTION_52_2(v34, MEMORY[0x1E69E6158], v35, v36, v37, v38, v39, v40, *&__src[48]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_39_25();
    v44 = v19 && v43 == v0;
    if (v44 || (OUTLINED_FUNCTION_18_3(16, v43) & 1) != 0)
    {
      OUTLINED_FUNCTION_66_21();
      if (v19)
      {
        goto LABEL_7;
      }

      v52 = v45;
      v26 = &type metadata for ToolKitToolContentItemClassDescriptor;
      v27 = &off_1F07E1408;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v20, v26, v27, v21, v22, v23, v24, v25, v52);
      sub_193494798(v28, v29, v30);
      return;
    }

    v46 = sub_19349AB64();
    v47 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v46);
    OUTLINED_FUNCTION_9_3(v47, v48);
    *(v49 + 40) = &type metadata for ToolKitToolComparisonPredicate.Template;
    OUTLINED_FUNCTION_127_3();
    v50 = swift_allocObject();
    v51 = OUTLINED_FUNCTION_28_3(v50);
    memcpy(v51, __src, 0x48uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936CA144(__src, &v52);
  }
}

uint64_t objectdestroy_140Tm()
{
  OUTLINED_FUNCTION_309();
  if (!v2)
  {

    OUTLINED_FUNCTION_66_21();
    if (!v2)
    {
    }
  }

  OUTLINED_FUNCTION_130_9();
  if (!v2)
  {
  }

  if ((v0 & ~*(v1 + 80)) != 0)
  {
  }

  OUTLINED_FUNCTION_127_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1936CA578()
{
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_113_10();
  v8 = v8 && v2 == 0xE500000000000000;
  if (v8 || (v1 = OUTLINED_FUNCTION_1_31(v1), (v1 & 1) != 0))
  {
    if ((~v0 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_77_2(v1, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v3, v4, v5, v6, v7, v16, v0);
      sub_193494798(v9, v10, v11);
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    v12 = sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    OUTLINED_FUNCTION_64(v13, v14);
    OUTLINED_FUNCTION_19_1(v15, &type metadata for ToolKitToolValueSearchPredicate.Template);

    sub_193437C90(v0);
  }
}

id sub_1936CA974()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_305();
  OUTLINED_FUNCTION_113_10();
  v7 = v7 && v5 == v6;
  if (v7 || (OUTLINED_FUNCTION_23_37(v4, 28271) & 1) != 0)
  {
    if (!(v0 >> 60))
    {
      memcpy(__dst, (v0 + 16), 0x48uLL);
      memcpy(v39, __dst, sizeof(v39));
      v8 = &type metadata for ToolKitToolComparisonPredicate;
      v9 = &off_1F07E1448;
      return sub_193494798(v8, v9, v3);
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_305() | 0x646E756F00000000;
    v11 = v2 == v10 && v1 == 0xE800000000000000;
    if (v11 || (OUTLINED_FUNCTION_0_66(v10) & 1) != 0)
    {
      if (v0 >> 60 == 1)
      {
        v12 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v13 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x19);
        v14 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&__dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        BYTE8(__dst[0]) = v12;
        BYTE9(__dst[0]) = v13;
        *&__dst[1] = v14;
        v8 = &type metadata for ToolKitToolCompoundPredicate;
        v9 = &off_1F07E1498;
        return sub_193494798(v8, v9, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_236_1();
      v16 = OUTLINED_FUNCTION_149_7() & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
      v18 = v2 == v16 && v1 == v17;
      if (v18 || (OUTLINED_FUNCTION_5_5(v16, v17) & 1) != 0)
      {
        if (v0 >> 60 == 2)
        {
          __dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v8 = &type metadata for ToolKitToolStringSearchPredicate;
          v9 = &off_1F07E14A8;
          return sub_193494798(v8, v9, v3);
        }
      }

      else
      {
        v19 = OUTLINED_FUNCTION_248_0();
        v20 = v7 && v1 == 0xE800000000000000;
        if (v20 || (OUTLINED_FUNCTION_0_66(v19) & 1) != 0)
        {
          if (v0 >> 60 == 3)
          {
            v21 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            __dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            *&__dst[1] = v21;
            v8 = &type metadata for ToolKitToolIdSearchPredicate;
            v9 = &off_1F07E14C8;
            return sub_193494798(v8, v9, v3);
          }
        }

        else
        {
          v22 = v2 == 7105633 && v1 == 0xE300000000000000;
          if (v22 || (OUTLINED_FUNCTION_37_26(7105633) & 1) != 0)
          {
            if (v0 >> 60 == 4)
            {
              v8 = &type metadata for ToolKitToolAllPredicate;
              v9 = &off_1F07E1528;
              return sub_193494798(v8, v9, v3);
            }
          }

          else
          {
            v23 = OUTLINED_FUNCTION_169_6(0x736567677573);
            v25 = v7 && v1 == v24;
            if (v25 || (OUTLINED_FUNCTION_33_24(v23, 100) & 1) != 0)
            {
              if (v0 >> 60 == 5)
              {
                v8 = &type metadata for ToolKitToolSuggestedPredicate;
                v9 = &off_1F07E1548;
                return sub_193494798(v8, v9, v3);
              }
            }

            else
            {
              v26 = OUTLINED_FUNCTION_4_61();
              v28 = v2 == v26 && v1 == v27;
              if (v28 || (OUTLINED_FUNCTION_5_5(v26, v27) & 1) != 0)
              {
                if (v0 >> 60 == 6)
                {
                  __dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v8 = &type metadata for ToolKitToolSearchableItemPredicate;
                  v9 = &off_1F07E1508;
                  return sub_193494798(v8, v9, v3);
                }
              }

              else
              {
                v29 = OUTLINED_FUNCTION_312();
                v30 = v7 && v1 == 0xE500000000000000;
                if (!v30 && (OUTLINED_FUNCTION_1_31(v29) & 1) == 0)
                {
                  v31 = OUTLINED_FUNCTION_98_13() | 0x6165536500000000;
                  if (v2 == v31 && v1 == v32)
                  {
                    if (v0 >> 60 != 8)
                    {
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    if ((OUTLINED_FUNCTION_5_5(v31, v32) & 1) == 0)
                    {
                      goto LABEL_67;
                    }

                    OUTLINED_FUNCTION_211_0();
                    if (!v7)
                    {
                      goto LABEL_67;
                    }
                  }

                  OUTLINED_FUNCTION_257();
                  *&__dst[0] = v34;
                  v8 = &type metadata for ToolKitToolValueSearchPredicate;
                  v9 = &off_1F07E14E8;
                  return sub_193494798(v8, v9, v3);
                }

                if (v0 >> 60 == 7)
                {
                  v8 = &type metadata for ToolKitToolValidPredicate;
                  v9 = &off_1F07E1538;
                  return sub_193494798(v8, v9, v3);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_67:
  v35 = sub_19349AB64();
  v36 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v35);
  OUTLINED_FUNCTION_64(v36, v37);
  OUTLINED_FUNCTION_19_1(v38, &type metadata for ToolKitToolQuery.AnyPredicate);
}

void sub_1936CACE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_25_16();
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = v3 == 0x726F6A616DLL && v4 == 0xE500000000000000;
  if (!v7)
  {
    v8 = v4;
    v9 = v2[2];
    v10 = *(v2 + 12);
    v22 = v2[4];
    v23 = *(v2 + 20);
    v21 = *(v2 + 21);
    if ((OUTLINED_FUNCTION_1_31(0x726F6A616DLL) & 1) == 0)
    {
      v11 = OUTLINED_FUNCTION_285_0(1869506925);
      v12 = v7 && v8 == 0xE500000000000000;
      if (v12 || (OUTLINED_FUNCTION_1_31(v11) & 1) != 0)
      {
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = OUTLINED_FUNCTION_293_1();
        v14 = v7 && v8 == 0xE500000000000000;
        if (v14 || (OUTLINED_FUNCTION_1_31(v13) & 1) != 0)
        {
          if (v23)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v15 = v3 == 0x6163646C69577369 && v8 == 0xEA00000000006472;
          if (!v15 && (OUTLINED_FUNCTION_23_37(0x6163646C69577369, 25714) & 1) == 0)
          {
            v16 = sub_19349AB64();
            v17 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
            OUTLINED_FUNCTION_64(v17, v18);
            *(v19 + 40) = &type metadata for ToolKitToolRuntimePlatformVersion;
            *(v19 + 16) = v5;
            *(v19 + 20) = v6;
            *(v19 + 24) = v9;
            *(v19 + 28) = v10;
            *(v19 + 32) = v22;
            *(v19 + 36) = v23;
            *(v19 + 37) = v21;
            OUTLINED_FUNCTION_23_2(v20, v19);

            goto LABEL_9;
          }

          if (v21 == 2)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_71_17();
}

id sub_1936CAEBC()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_113_10();
  v6 = v6 && v5 == 0xE800000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_66(v4) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      memcpy(__dst, (v0 + 16), 0x52uLL);
      memcpy(v24, __dst, sizeof(v24));
      v7 = &type metadata for ToolKitToolRuntimeRequirement.AvailabilityAnnotation;
      v8 = &off_1F07E1598;
      return sub_193494798(v7, v8, v3);
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_34_21();
  v10 = v6 && v9 == v1;
  if (v10 || (OUTLINED_FUNCTION_18_3(16, v9) & 1) != 0)
  {
    OUTLINED_FUNCTION_43_3();
    if (v6)
    {
      *&__dst[0] = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability;
      v8 = &off_1F07E15A8;
      return sub_193494798(v7, v8, v3);
    }

    goto LABEL_34;
  }

  v12 = v2 == 0x4665727574616566 && v1 == 0xEB0000000067616CLL;
  if (v12 || (OUTLINED_FUNCTION_5_5(0x4665727574616566, 0xEB0000000067616CLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_42_10();
    if (v6)
    {
      v13 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v14 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      __dst[0] = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      __dst[1] = v14;
      LOBYTE(__dst[2]) = v13;
      v7 = &type metadata for ToolKitToolRuntimeRequirement.FeatureFlag;
      v8 = &off_1F07E15C8;
      return sub_193494798(v7, v8, v3);
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_204_1();
  v15 = OUTLINED_FUNCTION_232() & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
  if (v2 != v15 || v1 != v16)
  {
    if ((OUTLINED_FUNCTION_5_5(v15, v16) & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_42_10();
    if (!(!v6 & v18))
    {
      goto LABEL_34;
    }

LABEL_32:
    v19 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    *&__dst[0] = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    BYTE8(__dst[0]) = v19;
    return sub_1934948FC();
  }

  if (v0 >> 62 == 3)
  {
    goto LABEL_32;
  }

LABEL_34:
  v20 = sub_19349AB64();
  v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
  OUTLINED_FUNCTION_64(v21, v22);
  OUTLINED_FUNCTION_19_1(v23, &type metadata for ToolKitToolRuntimeRequirement);
}

void sub_1936CB0BC()
{
  OUTLINED_FUNCTION_25_16();
  v3 = OUTLINED_FUNCTION_9_23();
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  if (v1 != v3 || v4 != 0xE800000000000000)
  {
    v9 = v4;
    v38 = *(v0 + 12);
    v39 = *(v0 + 20);
    v10 = *(v0 + 16);
    v11 = *(v0 + 7);
    v28 = *(v0 + 5);
    v29 = *(v0 + 17);
    v34 = *(v0 + 36);
    v35 = *(v0 + 44);
    v37 = *(v0 + 28);
    v36 = *(v0 + 13);
    v30 = *(v0 + 29);
    v31 = *(v0 + 60);
    v32 = *(v0 + 68);
    v33 = *(v0 + 40);
    v12 = *(v0 + 19);
    if ((OUTLINED_FUNCTION_0_66(v3) & 1) == 0)
    {
      v13 = v11 | (v10 << 32);
      OUTLINED_FUNCTION_38();
      v16 = v1 == v15 && v14 == v9;
      if (v16 || (OUTLINED_FUNCTION_18_3(18, v14) & 1) != 0)
      {
        if ((v13 & 0xFF0000000000) == 0x30000000000)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = v36 | (v37 << 32);
        OUTLINED_FUNCTION_38();
        v20 = v1 == v19 && v18 == v9;
        if (v20 || (OUTLINED_FUNCTION_18_3(18, v18) & 1) != 0)
        {
          if ((v17 & 0xFF0000000000) == 0x30000000000)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v21 = v12 | (v33 << 32);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_115_9();
          v24 = v1 == v23 - 1 && v22 == v9;
          if (!v24 && (OUTLINED_FUNCTION_5_5(v23 - 1, v22) & 1) == 0)
          {
            v25 = sub_19349AB64();
            OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
            OUTLINED_FUNCTION_265_0();
            *v26 = v1;
            v26[1] = v9;
            v26[5] = &type metadata for ToolKitToolRuntimeRequirement.AvailabilityAnnotation;
            v27 = swift_allocObject();
            v2[2] = v27;
            *(v27 + 16) = v5;
            *(v27 + 24) = v6;
            *(v27 + 25) = v7;
            *(v27 + 26) = v28;
            *(v27 + 28) = v38;
            *(v27 + 36) = v39;
            *(v27 + 48) = WORD2(v13);
            *(v27 + 44) = v13;
            *(v27 + 50) = v29;
            *(v27 + 52) = v34;
            *(v27 + 60) = v35;
            *(v27 + 72) = WORD2(v17);
            *(v27 + 68) = v36;
            *(v27 + 74) = v30;
            *(v27 + 76) = v31;
            *(v27 + 84) = v32;
            *(v27 + 96) = WORD2(v21);
            *(v27 + 92) = v21;
            OUTLINED_FUNCTION_179_4();

            return;
          }

          if ((v21 & 0xFF0000000000) == 0x30000000000)
          {
            goto LABEL_7;
          }
        }
      }

      OUTLINED_FUNCTION_234_1();
      OUTLINED_FUNCTION_233_1();
      sub_193494798(&type metadata for ToolKitToolRuntimePlatformVersion, &off_1F07E1578, v2);
      return;
    }
  }

  if (v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_1934948FC();
}

id sub_1936CB3E0()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_113_10();
  v5 = v5 && v2 == v4;
  if (v5 || (OUTLINED_FUNCTION_91_2(v3, v4) & 1) != 0)
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_297();
      OUTLINED_FUNCTION_102_14(v6, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt, &off_1F07E15B8, v7, v8, v9, v10, v11, v31);
      return sub_193494798(v12, v13, v14);
    }

    goto LABEL_14;
  }

  v16 = v1 == 0x696C696261706163 && v2 == 0xEA00000000007974;
  if (!v16 && (OUTLINED_FUNCTION_68_18(), (OUTLINED_FUNCTION_124_3(v17, v18, v19) & 1) == 0) || (v0 & 0x8000000000000000) == 0)
  {
LABEL_14:
    v20 = sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    OUTLINED_FUNCTION_219_0(v21, v22);
    OUTLINED_FUNCTION_19_1(v23, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability);
  }

  OUTLINED_FUNCTION_90_16();
  OUTLINED_FUNCTION_102_14(v24, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType, v25, v26, v27, v28, v29, v30, v31);
  return sub_1934948FC();
}

uint64_t sub_1936CB890()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_191_2();
  v11 = v11 && v4 == 0xE400000000000000;
  if (v11 || (v3 = OUTLINED_FUNCTION_91_2(1954047348, 0xE400000000000000), (v3 & 1) != 0))
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      v20 = *(v0 + 16);
LABEL_8:
      OUTLINED_FUNCTION_102_14(v3, MEMORY[0x1E69E6158], v5, v6, v7, v8, v9, v10, v20);
      return sub_1934948FC();
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_11_41();
    v15 = v1 == v13 && v2 == v14;
    if (v15 || (OUTLINED_FUNCTION_91_2(v13, 0xE900000000000072)) && v0 < 0)
    {
      OUTLINED_FUNCTION_269_0();
      goto LABEL_8;
    }
  }

  v16 = sub_19349AB64();
  v17 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
  OUTLINED_FUNCTION_219_0(v17, v18);
  OUTLINED_FUNCTION_19_1(v19, &type metadata for ToolKitToolToolSummaryString.Component);
}

uint64_t sub_1936CBBF8()
{
  OUTLINED_FUNCTION_162_7();
  v10 = *v0;
  v9 = v0[1];
  v12 = v1 == v11 && v2 == 0xE300000000000000;
  if (v12 || (v13 = v2, v14 = v1, v15 = v0[2], v16 = OUTLINED_FUNCTION_88_14(), v1 = OUTLINED_FUNCTION_15_16(v16, v17), (v1 & 1) != 0))
  {
    OUTLINED_FUNCTION_53_2(v1, MEMORY[0x1E69E6158], v3, v4, v5, v6, v7, v8, v10);
    return sub_1934948FC();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_26_28();
    v20 = v14 == v19 && v13 == 0xE500000000000000;
    if (v20 || (OUTLINED_FUNCTION_15_16(v19, 0xE500000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_53_2(v21, &type metadata for ToolKitToolToolInvocationSignature.ListOfRelations, &off_1F07E1608, v22, v23, v24, v25, v26, v15);
      sub_193494798(v27, v28, v29);
    }

    else
    {
      v30 = sub_19349AB64();
      v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
      OUTLINED_FUNCTION_218_2(v31, v32);
      v33[2] = v10;
      v33[3] = v9;
      v33[4] = v15;
      v33[5] = &type metadata for ToolKitToolToolInvocationSignature.ValueConstraintsEntry;
      OUTLINED_FUNCTION_23_2(v34, v33);
    }
  }
}

void sub_1936CBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_157_7();
  OUTLINED_FUNCTION_119_9();
  v15 = v15 && v14 == 0xE500000000000000;
  if (!v15)
  {
    v16 = v14;
    v17 = *(v11 + 16);
    v18 = *(v11 + 24);
    OUTLINED_FUNCTION_319();
    if ((OUTLINED_FUNCTION_91_2(v19, 0xE500000000000000) & 1) == 0)
    {
      v20 = OUTLINED_FUNCTION_285_0(1869506925);
      v21 = v15 && v16 == 0xE500000000000000;
      if (v21 || (OUTLINED_FUNCTION_91_2(v20, 0xE500000000000000) & 1) != 0)
      {
        if (v18)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v22 = OUTLINED_FUNCTION_293_1();
        v23 = v15 && v16 == 0xE500000000000000;
        if (!v23 && (OUTLINED_FUNCTION_91_2(v22, 0xE500000000000000) & 1) == 0)
        {
          v24 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
          OUTLINED_FUNCTION_106_0();
          *v25 = v12;
          v25[1] = v16;
          v25[5] = &type metadata for ToolKitToolAssistantSchemaVersion;
          OUTLINED_FUNCTION_133();
          v26 = swift_allocObject();
          v27 = OUTLINED_FUNCTION_141_6(v26);
          *(v27 + 32) = v17;
          *(v27 + 40) = v18;
          *(v27 + 48) = a9;
          *(v27 + 56) = a11;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }

        if (a11)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936CC044()
{
  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_277_1(v2, v3, v4, v5, v6, v7, v8, v9, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75);
  v17 = v1 == 1684957547 && v0 == 0xE400000000000000;
  if (v17 || (v10 = OUTLINED_FUNCTION_27_28(1684957547), (v10 & 1) != 0))
  {
    if (v79)
    {
      v18 = v78;
LABEL_8:
      OUTLINED_FUNCTION_52_2(v10, MEMORY[0x1E69E6158], v11, v12, v13, v14, v15, v16, v18);
      sub_1934948FC();
      return;
    }

    goto LABEL_15;
  }

  v19 = 0x6E6F6973726576;
  v20 = v1 == 0x6E6F6973726576 && v0 == 0xE700000000000000;
  if (v20 || (v19 = OUTLINED_FUNCTION_34_31(0x6E6F6973726576), (v19 & 1) != 0))
  {
    if (v81)
    {
LABEL_15:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_52_2(v19, &type metadata for ToolKitToolAssistantSchemaVersion, &off_1F07E1638, v12, v13, v14, v15, v16, v80);
    sub_193494798(v21, v22, v23);
  }

  else
  {
    v10 = 0x6E69616D6F64;
    v24 = v1 == 0x6E69616D6F64 && v0 == 0xE600000000000000;
    if (v24 || (v10 = OUTLINED_FUNCTION_24_37(0x6E69616D6F64), (v10 & 1) != 0))
    {
      if (v83)
      {
        v18 = v82;
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    v25 = sub_19349AB64();
    v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
    OUTLINED_FUNCTION_9_3(v26, v27);
    *(v28 + 40) = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    OUTLINED_FUNCTION_137_7();
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_28_3(v29);
    OUTLINED_FUNCTION_282_0(v30, v31, v32, v33, v34, v35, v36, v37, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76);
    OUTLINED_FUNCTION_26_0();

    v46 = OUTLINED_FUNCTION_270_0(v38, v39, v40, v41, v42, v43, v44, v45, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v78);
    sub_1936CC1E4(v46, v47);
  }
}

void sub_1936CC258()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x696669746E656469 && v0 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_5_5(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {
    if (__dst[1] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_121_7();
    v10 = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    v11 = &off_1F07E1648;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_108_12();
  v22 = v3 && v0 == 0xE400000000000000;
  if (v22 || (v23 = OUTLINED_FUNCTION_17_35(), v15 = OUTLINED_FUNCTION_31_3(v23, v24, v25), (v15 & 1) != 0))
  {
    v26 = __dst[11];
    if (!__dst[11])
    {
      goto LABEL_7;
    }

    v27 = __dst[10];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_84_12();
  v15 = OUTLINED_FUNCTION_43_17();
  v30 = v3 && v0 == v29;
  if (v30 || (v15 = OUTLINED_FUNCTION_5_5(v15, v29), (v15 & 1) != 0))
  {
    v26 = __dst[13];
    if (!__dst[13])
    {
      goto LABEL_7;
    }

    v27 = __dst[12];
LABEL_17:
    v47[0] = v27;
    v47[1] = v26;
    v28 = MEMORY[0x1E69E6158];
LABEL_18:
    OUTLINED_FUNCTION_52_2(v15, v28, v16, v17, v18, v19, v20, v21, v47[0]);
    sub_1934948FC();
    return;
  }

  v31 = OUTLINED_FUNCTION_11_41();
  v32 = v1 == v31 && v0 == 0xEA00000000007372;
  if (v32 || (OUTLINED_FUNCTION_5_5(v31, 0xEA00000000007372) & 1) != 0)
  {
    v47[0] = __dst[14];
    v33 = &unk_1EAE40878;
    v34 = &unk_19397DF80;
LABEL_32:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    v28 = v15;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_34_21();
  v37 = v3 && v36 == v0;
  if (v37 || (OUTLINED_FUNCTION_14_48(v35, v36) & 1) != 0)
  {
    v47[0] = __dst[15];
    v33 = &unk_1EAE407F8;
    v34 = &unk_19397DF00;
    goto LABEL_32;
  }

  v38 = OUTLINED_FUNCTION_107_11();
  v39 = v3 && v0 == 0xEA00000000006570;
  if (v39 || (OUTLINED_FUNCTION_23_37(v38, 25968) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (v3)
    {
      goto LABEL_7;
    }

    v47[0] = v40;
    v10 = &type metadata for ToolKitToolTypeInstance;
    v11 = &off_1F07E12F8;
LABEL_9:
    OUTLINED_FUNCTION_52_2(v4, v10, v11, v5, v6, v7, v8, v9, v47[0]);
    sub_193494798(v12, v13, v14);
    return;
  }

  v41 = sub_19349AB64();
  v42 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v41);
  OUTLINED_FUNCTION_9_3(v42, v43);
  *(v44 + 40) = &type metadata for ToolKitToolAssistantToolSchemaDefinition;
  OUTLINED_FUNCTION_288_0();
  v45 = swift_allocObject();
  v46 = OUTLINED_FUNCTION_28_3(v45);
  memcpy(v46, __dst, 0x88uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936CC494(__dst, v47);
}

id sub_1936CC508()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_85_17();
  OUTLINED_FUNCTION_113_10();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_24_37(v2) & 1) != 0)
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      v12 = OUTLINED_FUNCTION_322(&v38, v5, v6, v7, v8, v9, v10, v11, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      v18 = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Entity;
      v19 = &off_1F07E1678;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v12, v18, v19, v13, v14, v15, v16, v17, v38);
      return sub_193494798(v20, v21, v22);
    }
  }

  else
  {
    v24 = OUTLINED_FUNCTION_44_21();
    v26 = v4 && v1 == v25;
    if (v26 || (OUTLINED_FUNCTION_5_5(v24, v25)) && v0 < 0)
    {
      memcpy(__dst, ((v0 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v12 = OUTLINED_FUNCTION_322(&v38, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      v18 = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Enumeration;
      v19 = &off_1F07E1688;
      goto LABEL_8;
    }
  }

  v27 = sub_19349AB64();
  v28 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
  OUTLINED_FUNCTION_64(v28, v29);
  OUTLINED_FUNCTION_19_1(v30, &type metadata for ToolKitToolAssistantTypeSchemaDefinition);
}

void sub_1936CC62C()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v2, sizeof(__dst));
  v5 = v1 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_23_37(v3, 29285) & 1) != 0)
  {
    if (__dst[1] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_121_7();
    v12 = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    v13 = &off_1F07E1648;
    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
  v18 = v4 + 256;
  v19 = v1 == v17 && v0 == v18;
  if (v19 || (OUTLINED_FUNCTION_5_5(v17, v18) & 1) != 0)
  {
    v49[0] = __dst[10];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40808, &qword_19397DF10);
    OUTLINED_FUNCTION_52_2(v20, v20, v21, v22, v23, v24, v25, v26, v49[0]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_34_21();
    v35 = v5 && v28 == v0;
    if (v35 || (v27 = OUTLINED_FUNCTION_18_3(21, v28), (v27 & 1) != 0))
    {
      if (!__dst[15])
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_247_0(v27, v28, v29, v30, v31, v32, v33, v34, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], *&__dst[11]);
      v12 = &type metadata for ToolKitToolTypeDisplayRepresentation;
      v13 = &off_1F07E18A8;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v6, v12, v13, v7, v8, v9, v10, v11, v49[0]);
      sub_193494798(v14, v15, v16);
      return;
    }

    v36 = sub_19349AB64();
    v37 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v36);
    OUTLINED_FUNCTION_9_3(v37, v38);
    *(v39 + 40) = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Entity;
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_28_3(v40);
    OUTLINED_FUNCTION_322(v41, v42, v43, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15]);
    OUTLINED_FUNCTION_26_0();

    sub_1936CC7C0(__dst, v49);
  }
}

void sub_1936CC834()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v2, sizeof(__dst));
  v5 = v1 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_23_37(v3, 29285) & 1) != 0)
  {
    if (__dst[1] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_121_7();
    v12 = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    v13 = &off_1F07E1648;
    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_196_2(1702060387);
  v18 = v5 && v0 == 0xE500000000000000;
  if (v18 || (OUTLINED_FUNCTION_1_31(v17) & 1) != 0)
  {
    v48[0] = __dst[10];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40810, &qword_19397DF18);
    OUTLINED_FUNCTION_52_2(v19, v19, v20, v21, v22, v23, v24, v25, v48[0]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_34_21();
    v34 = v5 && v27 == v0;
    if (v34 || (v26 = OUTLINED_FUNCTION_18_3(21, v27), (v26 & 1) != 0))
    {
      if (!__dst[15])
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_247_0(v26, v27, v28, v29, v30, v31, v32, v33, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], *&__dst[11]);
      v12 = &type metadata for ToolKitToolTypeDisplayRepresentation;
      v13 = &off_1F07E18A8;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v6, v12, v13, v7, v8, v9, v10, v11, v48[0]);
      sub_193494798(v14, v15, v16);
      return;
    }

    v35 = sub_19349AB64();
    v36 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v35);
    OUTLINED_FUNCTION_9_3(v36, v37);
    *(v38 + 40) = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Enumeration;
    v39 = swift_allocObject();
    v40 = OUTLINED_FUNCTION_28_3(v39);
    OUTLINED_FUNCTION_322(v40, v41, v42, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15]);
    OUTLINED_FUNCTION_26_0();

    sub_1936CCA34(__dst, v48);
  }
}

uint64_t objectdestroy_165Tm()
{
  OUTLINED_FUNCTION_309();
  if (!v1)
  {
  }

  if (*(v0 + 136))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

id sub_1936CCAA8()
{
  OUTLINED_FUNCTION_16_32();
  v5 = v4;
  v6 = *v0;
  v8 = v7 == 7040629 && v3 == 0xE300000000000000;
  if (v8 || (OUTLINED_FUNCTION_37_26(7040629) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v9)
    {
LABEL_7:
      v10 = sub_19349AB64();
      v11 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
      OUTLINED_FUNCTION_64(v11, v12);
      *(v13 + 40) = &type metadata for ToolKitToolSystemToolProtocol;
      *(v13 + 16) = v6;
      OUTLINED_FUNCTION_23_2(v14, v13);
    }

    v16 = *(v6 + 16);
    goto LABEL_16;
  }

  v17 = v2 == 0x656C62616F646E75 && v1 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_0_66(0x656C62616F646E75) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v18 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v19 = v2 == 0x536E6F6973736573 && v1 == 0xEF676E6974726174;
  if (v19 || (OUTLINED_FUNCTION_5_5(0x536E6F6973736573, 0xEF676E6974726174) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v20 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v22 = v2 == 0xD000000000000010 && v21 == v1;
  if (v22 || (OUTLINED_FUNCTION_5_5(0xD000000000000010, v21) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v23 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v25 = v2 == 0xD000000000000014 && v24 == v1;
  if (v25 || (OUTLINED_FUNCTION_18_3(20, v24) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v26 != 4)
    {
      goto LABEL_7;
    }

    LOBYTE(__dst[0]) = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = &type metadata for ToolKitToolSystemToolProtocol.ConditionallyEnabled;
    v28 = &off_1F07E16A8;
    return sub_193494798(v27, v28, v5);
  }

  OUTLINED_FUNCTION_38();
  v30 = v2 == 0xD000000000000015 && v29 == v1;
  if (v30 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v29) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v31 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v33 = v2 == 0xD000000000000013 && v32 == v1;
  if (v33 || (OUTLINED_FUNCTION_5_5(0xD000000000000013, v32) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v34 != 6)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v201 = 0xD000000000000010;
  OUTLINED_FUNCTION_38();
  v36 = v2 == 0xD000000000000011 && v35 == v1;
  if (v36 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v35) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v37 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v38 = v2 == 7632227 && v1 == 0xE300000000000000;
  if (v38 || (OUTLINED_FUNCTION_37_26(7632227) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v39 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v40 = v2 == 0x746F725079706F63 && v1 == 0xEC0000006C6F636FLL;
  if (v40 || (OUTLINED_FUNCTION_5_5(0x746F725079706F63, 0xEC0000006C6F636FLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v41 != 9)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v42 = OUTLINED_FUNCTION_311(1953718640);
  v43 = v8 && v1 == 0xE500000000000000;
  if (v43 || (OUTLINED_FUNCTION_1_31(v42) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v44 != 10)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v45 = v2 == 0x6C65636E6163 && v1 == 0xE600000000000000;
  if (v45 || (OUTLINED_FUNCTION_24_37(0x6C65636E6163) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v46 != 11)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v47 = v2 == 0x657A69736572 && v1 == 0xE600000000000000;
  if (v47 || (OUTLINED_FUNCTION_24_37(0x657A69736572) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v48 != 12)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v49 = v2 == 0x6C6C6F726373 && v1 == 0xE600000000000000;
  if (v49 || (OUTLINED_FUNCTION_24_37(0x6C6C6F726373) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v50 != 13)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v51 = v2 == 1868852853 && v1 == 0xE400000000000000;
  if (v51 || (OUTLINED_FUNCTION_27_28(1868852853) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v52 != 14)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v53 = v2 == 1836019578 && v1 == 0xE400000000000000;
  if (v53 || (OUTLINED_FUNCTION_27_28(1836019578) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v54 != 15)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v55 = v2 == 0x746E4565736F6C63 && v1 == 0xEB00000000797469;
  if (v55 || (OUTLINED_FUNCTION_5_5(0x746E4565736F6C63, 0xEB00000000797469) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v56 != 16)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v57 = v2 == 0x6E45657461657263 && v1 == 0xEC00000079746974;
  if (v57 || (OUTLINED_FUNCTION_5_5(0x6E45657461657263, 0xEC00000079746974) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v58 != 17)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_117_3();
  v60 = v59 + 20;
  v61 = v2 == 0x7469746E45747563 && v1 == v60;
  if (v61 || (OUTLINED_FUNCTION_5_5(0x7469746E45747563, v60) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v62 != 18)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v63 = v2 == 0x6E456574656C6564 && v1 == 0xEC00000079746974;
  if (v63 || (OUTLINED_FUNCTION_5_5(0x6E456574656C6564, 0xEC00000079746974) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v64 != 19)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v65 = v2 == 0x746163696C707564 && v1 == 0xEF797469746E4565;
  if (v65 || (OUTLINED_FUNCTION_5_5(0x746163696C707564, 0xEF797469746E4565) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v66 != 20)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v67 = OUTLINED_FUNCTION_169_6(0x69726F766166);
  v69 = v8 && v1 == v68;
  if (v69 || (OUTLINED_FUNCTION_5_5(v67, v68) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v70 != 21)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v71 = v2 == 0x69746E456E65706FLL && v1 == 0xEA00000000007974;
  if (v71 || (OUTLINED_FUNCTION_23_37(0x69746E456E65706FLL, 31092) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v72 != 22)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_158_2();
  v74 = v2 == 0x4577656976657270 && v1 == v73;
  if (v74 || (OUTLINED_FUNCTION_5_5(0x4577656976657270, v73) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v75 != 23)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v76 = v2 == 0x69746E4565766173 && v1 == 0xEA00000000007974;
  if (v76 || (OUTLINED_FUNCTION_23_37(0x69746E4565766173, 31092) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v77 != 24)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v79 = v2 == 0xD000000000000014 && v78 == v1;
  if (v79 || (OUTLINED_FUNCTION_18_3(20, v78) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v80 != 25)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_117_3();
  v83 = v82 + 10;
  v84 = v2 == v81 && v1 == v83;
  if (v84 || (OUTLINED_FUNCTION_5_5(v81, v83) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v85 != 26)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_104_10();
    v27 = &type metadata for ToolKitToolSystemToolProtocol.PlayVideo;
    v28 = &off_1F07E16B8;
    return sub_193494798(v27, v28, v5);
  }

  v86 = v2 == 0x6174536F69647561 && v1 == 0xED0000676E697472;
  if (v86 || (OUTLINED_FUNCTION_5_5(0x6174536F69647561, 0xED0000676E697472) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v87 != 27)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v88 = v2 == 0x6365526F69647561 && v1 == 0xEE00676E6964726FLL;
  if (v88 || (OUTLINED_FUNCTION_5_5(0x6365526F69647561, 0xEE00676E6964726FLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v89 != 28)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v91 = v2 == 0xD000000000000016 && v90 == v1;
  if (v91 || (OUTLINED_FUNCTION_5_5(0xD000000000000016, v90) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v92 != 29)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v93 = v2 == 0x7669447472617473 && v1 == 0xE900000000000065;
  if (v93 || (OUTLINED_FUNCTION_33_24(0x7669447472617473, 101) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v94 != 30)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v95 = v2 == 0x726F577472617473 && v1 == 0xEC00000074756F6BLL;
  if (v95 || (OUTLINED_FUNCTION_5_5(0x726F577472617473, 0xEC00000074756F6BLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v96 != 31)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v97 = v2 == 0x726F576573756170 && v1 == 0xEC00000074756F6BLL;
  if (v97 || (OUTLINED_FUNCTION_5_5(0x726F576573756170, 0xEC00000074756F6BLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v98 != 32)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_299();
  v100 = v2 == 0x6F57656D75736572 && v1 == v99;
  if (v100 || (OUTLINED_FUNCTION_5_5(0x6F57656D75736572, v99) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v101 != 33)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v102 = v2 == 0x72614D7265746E65 && v1 == 0xEB0000000070756BLL;
  if (v102 || (OUTLINED_FUNCTION_5_5(0x72614D7265746E65, 0xEB0000000070756BLL) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v103 != 34)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v104 = v2 == 0x6B72614D74697865 && v1 == 0xEA00000000007075;
  if (v104 || (OUTLINED_FUNCTION_5_5(0x6B72614D74697865, 0xEA00000000007075) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v105 != 35)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v107 = v2 == 0xD000000000000012 && v106 == v1;
  if (v107 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v106) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v108 != 36)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v110 = v2 == 0xD000000000000013 && v109 == v1;
  if (v110 || (OUTLINED_FUNCTION_5_5(0xD000000000000013, v109) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v111 != 37)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v112 = OUTLINED_FUNCTION_50_20();
  v113 = v2 == v112 && v1 == 0xE600000000000000;
  if (v113 || (OUTLINED_FUNCTION_24_37(v112) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v114 != 38)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v116 = v2 == 0xD000000000000016 && v115 == v1;
  if (v116 || (OUTLINED_FUNCTION_5_5(0xD000000000000016, v115) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v117 != 39)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v119 = v2 == 0xD00000000000001CLL && v118 == v1;
  if (v119 || (OUTLINED_FUNCTION_5_5(0xD00000000000001CLL, v118) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v120 != 40)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v122 = v2 == 0xD000000000000016 && v121 == v1;
  if (v122 || (OUTLINED_FUNCTION_5_5(0xD000000000000016, v121) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v123 != 41)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v125 = v2 == 0xD00000000000001CLL && v124 == v1;
  if (v125 || (OUTLINED_FUNCTION_5_5(0xD00000000000001CLL, v124) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v126 != 42)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_104_10();
    v27 = &type metadata for ToolKitToolSystemToolProtocol.ShowInAppStringSearchResults;
    v28 = &off_1F07E16C8;
    return sub_193494798(v27, v28, v5);
  }

  v127 = v2 == 0x7461705365766F6DLL && v1 == 0xEB000000006C6169;
  if (v127 || (OUTLINED_FUNCTION_5_5(0x7461705365766F6DLL, 0xEB000000006C6169) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v128 != 43)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v130 = v2 == 0xD000000000000014 && v129 == v1;
  if (v130 || (OUTLINED_FUNCTION_18_3(20, v129) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v131 != 44)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v132 = v2 == 0x676E697473 && v1 == 0xE500000000000000;
  if (v132 || (OUTLINED_FUNCTION_1_31(0x676E697473) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v133 != 45)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v134 = v2 == 0x656C67676F74 && v1 == 0xE600000000000000;
  if (v134 || (OUTLINED_FUNCTION_24_37(0x656C67676F74) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v135 != 46)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_84_1();
  v137 = v2 == 0x61436172656D6163 && v1 == v136;
  if (v137 || (OUTLINED_FUNCTION_5_5(0x61436172656D6163, v136) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v138 != 47)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_39_25();
  v140 = v8 && v139 == v1;
  if (v140 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v139) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v141 != 48)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v142 = OUTLINED_FUNCTION_85_17() & 0xFFFFFFFFFFFFLL | 0x7055000000000000;
  v144 = v2 == v142 && v1 == v143;
  if (v144 || (OUTLINED_FUNCTION_5_5(v142, v143) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v145 != 49)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_225_1();
    v27 = &type metadata for ToolKitToolSystemToolProtocol.EntityUpdating;
    v28 = &off_1F07E16D8;
    return sub_193494798(v27, v28, v5);
  }

  v146 = OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
  v148 = v2 == v146 && v1 == v147;
  if (v148 || (OUTLINED_FUNCTION_5_5(v146, v147) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v149 != 50)
    {
      goto LABEL_7;
    }

    v150 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x20);
    __dst[0] = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    __dst[1] = v150;
    v27 = &type metadata for ToolKitToolSystemToolProtocol.PropertyUpdater;
    v28 = &off_1F07E16E8;
    return sub_193494798(v27, v28, v5);
  }

  v151 = v2 == 0x6C69614D646E6573 && v1 == 0xE800000000000000;
  if (v151 || (OUTLINED_FUNCTION_0_66(0x6C69614D646E6573) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v152 != 51)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v154 = v2 == 0xD000000000000014 && v153 == v1;
  if (v154 || (OUTLINED_FUNCTION_18_3(20, v153) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v155 != 52)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_299();
  v157 = v2 == 0x4974694B69726973 && v1 == v156;
  if (v157 || (OUTLINED_FUNCTION_5_5(0x4974694B69726973, v156) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v158 != 53)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_225_1();
    v27 = &type metadata for ToolKitToolSystemToolProtocol.SiriKitIntent;
    v28 = &off_1F07E16F8;
    return sub_193494798(v27, v28, v5);
  }

  OUTLINED_FUNCTION_38();
  v160 = v2 == v201 && v159 == v1;
  if (v160 || (OUTLINED_FUNCTION_5_5(v201, v159) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v161 != 54)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_104_10();
    v27 = &type metadata for ToolKitToolSystemToolProtocol.IntentSideEffect;
    v28 = &off_1F07E1708;
    return sub_193494798(v27, v28, v5);
  }

  v162 = OUTLINED_FUNCTION_160_6();
  v164 = v8 && v1 == v163;
  if (v164 || (OUTLINED_FUNCTION_5_5(v162, v163) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v165 != 55)
    {
      goto LABEL_7;
    }

    memcpy(__dst, ((v6 & 0xFFFFFFFFFFFFFF8) + 16), sizeof(__dst));
    memcpy(v199, __dst, sizeof(v199));
    v27 = &type metadata for ToolKitToolSystemToolProtocol.AssistantSchema;
    v28 = &off_1F07E1718;
    return sub_193494798(v27, v28, v5);
  }

  OUTLINED_FUNCTION_38();
  v167 = v2 == 0xD000000000000012 && v166 == v1;
  if (v167 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v166) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v168 != 56)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v170 = v2 == 0xD000000000000014 && v169 == v1;
  if (v170 || (OUTLINED_FUNCTION_18_3(20, v169) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v171 != 57)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v173 = v2 == 0xD000000000000012 && v172 == v1;
  if (v173 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v172) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v174 != 58)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_117_3();
  v177 = v176 + 15;
  v178 = v2 == v175 && v1 == v177;
  if (v178 || (OUTLINED_FUNCTION_5_5(v175, v177) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v179 != 59)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_225_1();
    v27 = &type metadata for ToolKitToolSystemToolProtocol.AppIntent;
    v28 = &off_1F07E1728;
    return sub_193494798(v27, v28, v5);
  }

  OUTLINED_FUNCTION_8_17();
  v181 = v8 && v180 == v1;
  if (v181 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v180) & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v182 != 60)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v183 = v2 == 0x69736568746E7973 && v1 == 0xEF6C6F6F5464657ALL;
  if (!v183 && (OUTLINED_FUNCTION_5_5(0x69736568746E7973, 0xEF6C6F6F5464657ALL) & 1) == 0)
  {
    OUTLINED_FUNCTION_39_25();
    v186 = v8 && v185 == v1;
    if (v186 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v185) & 1) != 0)
    {
      OUTLINED_FUNCTION_5_61();
      if (v187 != 62)
      {
        goto LABEL_7;
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v189 = v2 == 0xD000000000000014 && v188 == v1;
      if (v189 || (OUTLINED_FUNCTION_18_3(20, v188) & 1) != 0)
      {
        OUTLINED_FUNCTION_5_61();
        if (v190 != 63)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v191 = OUTLINED_FUNCTION_98_13() | 0x7465536500000000;
        v193 = v2 == v191 && v1 == v192;
        if (!v193 && (OUTLINED_FUNCTION_5_5(v191, v192) & 1) == 0)
        {
          v195 = OUTLINED_FUNCTION_85_17() & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
          v197 = v2 == v195 && v1 == v196;
          if (!v197 && (OUTLINED_FUNCTION_5_5(v195, v196) & 1) == 0)
          {
            goto LABEL_7;
          }

          OUTLINED_FUNCTION_5_61();
          if (v198 != 65)
          {
            goto LABEL_7;
          }

LABEL_15:
          v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
          *&__dst[0] = v16;
          return sub_1934948FC();
        }

        OUTLINED_FUNCTION_5_61();
        if (v194 != 64)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_60:
    OUTLINED_FUNCTION_104_10();
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_5_61();
  if (v184 != 61)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_10();
  v27 = &type metadata for ToolKitToolSystemToolProtocol.SynthesizedToolProtocol;
  v28 = &off_1F07E1738;
  return sub_193494798(v27, v28, v5);
}

void sub_1936CDB68()
{
  OUTLINED_FUNCTION_46_8();
  v3 = v2;
  OUTLINED_FUNCTION_57_0();
  v4 = *v0;
  v5 = v1 == 0x5374736973726570 && v3 == 0xEC00000065746174;
  if (v5 || (OUTLINED_FUNCTION_274_1(0x5374736973726570, 0xEC00000065746174, v1) & 1) != 0)
  {
    if (v4 == 2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v6 = sub_19349AB64();
    v7 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v6);
    *v8 = v1;
    *(v8 + 8) = v3;
    *(v8 + 40) = &type metadata for ToolKitToolSystemToolProtocol.ConditionallyEnabled;
    *(v8 + 16) = v4;
    OUTLINED_FUNCTION_23_2(v7, v8);
  }

  OUTLINED_FUNCTION_47_12();
}

uint64_t sub_1936CDF94()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_191_2();
  v4 = v4 && v3 == 0xE300000000000000;
  if (v4 || (OUTLINED_FUNCTION_91_2(7040629, 0xE300000000000000) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v6 = v1 == 0x6645656469536F6ELL && v2 == 0xEC00000074636566;
    if (v6 || (OUTLINED_FUNCTION_91_2(0x6645656469536F6ELL, 0xEC00000074636566) & 1) != 0)
    {
      OUTLINED_FUNCTION_43_3();
      if (v4)
      {
        return sub_1934948FC();
      }
    }

    else
    {
      OUTLINED_FUNCTION_204_1();
      if (v1 == 0x6168436574617473 && v2 == v7)
      {
        OUTLINED_FUNCTION_42_10();
        if (v4)
        {
          return sub_1934948FC();
        }
      }

      else if (OUTLINED_FUNCTION_91_2(0x6168436574617473, v7))
      {
        OUTLINED_FUNCTION_211_0();
        if (v4)
        {
          return sub_1934948FC();
        }
      }
    }
  }

  v9 = sub_19349AB64();
  v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
  OUTLINED_FUNCTION_219_0(v10, v11);
  OUTLINED_FUNCTION_19_1(v12, &type metadata for ToolKitToolSystemToolProtocol.IntentSideEffect);
}

void sub_1936CE104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a5)(void *, void *)@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v8 = v6;
  v12 = memcpy(__dst, v8, 0x50uLL);
  v18 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v18 || (OUTLINED_FUNCTION_154(), v12 = sub_19393CA30(), (v12 & 1) != 0))
  {
    if (__dst[1] == 1)
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      v28[0] = __dst[0];
      v28[1] = __dst[1];
      v19 = v8[2];
      v29 = v8[1];
      v30 = v19;
      v20 = v8[4];
      v31 = v8[3];
      v32 = v20;
      OUTLINED_FUNCTION_77_2(v12, &type metadata for ToolKitToolAssistantSchemaIdentifier, &off_1F07E1648, v13, v14, v15, v16, v17, v27, __dst[0]);
      sub_193494798(v21, v22, v23);
    }
  }

  else
  {
    v24 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
    OUTLINED_FUNCTION_265_0();
    *v25 = a1;
    v25[1] = a2;
    v25[5] = a3;
    OUTLINED_FUNCTION_137_7();
    v26 = swift_allocObject();
    *(a6 + 16) = v26;
    memcpy((v26 + 16), __dst, 0x50uLL);
    OUTLINED_FUNCTION_179_4();

    v34(__dst, v28);
  }
}

uint64_t objectdestroy_8Tm()
{
  OUTLINED_FUNCTION_309();
  if (!v0)
  {
  }

  v1 = OUTLINED_FUNCTION_115_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1936CE500()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v3, 0x278uLL);
  v4 = v2 == 25705 && v1 == 0xE200000000000000;
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_252_0();
    if ((OUTLINED_FUNCTION_5_5(v5, v6) & 1) == 0)
    {
      OUTLINED_FUNCTION_108_12();
      v9 = v4 && v1 == 0xE400000000000000;
      if (v9 || (v10 = OUTLINED_FUNCTION_17_35(), (OUTLINED_FUNCTION_31_3(v10, v11, v12) & 1) != 0))
      {
        v7 = *(&__dst[1] + 1);
        if (*(&__dst[1] + 1))
        {
          v8 = *&__dst[1];
          goto LABEL_8;
        }

LABEL_23:
        OUTLINED_FUNCTION_36_4();
        goto LABEL_24;
      }

      v13 = OUTLINED_FUNCTION_152_8(0x6C6F6F74u);
      v14 = v4 && v1 == 0xE800000000000000;
      if (v14 || (OUTLINED_FUNCTION_0_66(v13) & 1) != 0)
      {
        if ((BYTE9(__dst[2]) & 1) == 0)
        {
          *v82 = *&__dst[2];
          v82[8] = BYTE8(__dst[2]) & 1;
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      v15 = OUTLINED_FUNCTION_11_41();
      v16 = v2 == v15 && v1 == 0xEA00000000007372;
      if (v16 || (OUTLINED_FUNCTION_5_5(v15, 0xEA00000000007372) & 1) != 0)
      {
        v17 = *&__dst[3];
LABEL_32:
        *v82 = v17;
        v18 = &unk_1EAE40878;
        v19 = &unk_19397DF80;
LABEL_33:
        __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
        goto LABEL_9;
      }

      v20 = OUTLINED_FUNCTION_107_11();
      v21 = v4 && v1 == 0xEA00000000006570;
      if (v21 || (OUTLINED_FUNCTION_23_37(v20, 25968) & 1) != 0)
      {
        OUTLINED_FUNCTION_66_21();
        if (v4)
        {
          goto LABEL_23;
        }

        *v82 = v22;
        v23 = &type metadata for ToolKitToolTypeInstance;
        v24 = &off_1F07E12F8;
LABEL_41:
        sub_193494798(v23, v24, v0);
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_38();
      v26 = v2 == 0xD000000000000010 && v25 == v1;
      if (v26 || (OUTLINED_FUNCTION_5_5(0xD000000000000010, v25) & 1) != 0)
      {
        v7 = *(&__dst[4] + 1);
        if (*(&__dst[4] + 1))
        {
          v8 = *&__dst[4];
          goto LABEL_8;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_38();
      v29 = v2 == 0xD000000000000011 && v28 == v1;
      if (v29 || (OUTLINED_FUNCTION_14_48(v27, v28) & 1) != 0)
      {
        if (!*(&__dst[11] + 1))
        {
          goto LABEL_23;
        }

        memcpy(v82, (v3 + 80), sizeof(v82));
        v83 = *(&__dst[11] + 1);
        v23 = &type metadata for ToolKitToolAppDefinition;
        v24 = &off_1F07E1868;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_38();
      v31 = v2 == 0xD000000000000012 && v30 == v1;
      if (v31 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v30) & 1) != 0)
      {
        v7 = *(&__dst[12] + 1);
        if (*(&__dst[12] + 1))
        {
          v8 = *&__dst[12];
          goto LABEL_8;
        }

        goto LABEL_23;
      }

      v32 = v2 == 0x69726F6765746163 && v1 == 0xEA00000000007365;
      if (v32 || (OUTLINED_FUNCTION_5_5(0x69726F6765746163, 0xEA00000000007365) & 1) != 0)
      {
        *v82 = *&__dst[13];
        v18 = &unk_1EAE408A0;
        v19 = &unk_19397DF98;
        goto LABEL_33;
      }

      v33 = OUTLINED_FUNCTION_50_20() & 0xFFFFFFFFFFFFLL | 0x654B000000000000;
      v35 = v2 == v33 && v1 == v34;
      if (v35 || (OUTLINED_FUNCTION_5_5(v33, v34) & 1) != 0)
      {
        v36 = *(&__dst[13] + 1);
LABEL_75:
        *v82 = v36;
        v18 = &qword_1EAE3ABB0;
        v19 = &qword_193950BB8;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_38();
      v38 = v2 == 0xD000000000000015 && v37 == v1;
      if (v38 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v37) & 1) != 0)
      {
        if (*(&__dst[14] + 1) == 1)
        {
          goto LABEL_23;
        }

        *v82 = __dst[14];
        *&v82[16] = __dst[15];
        v23 = &type metadata for ToolKitToolToolDefinition.Version1.Deprecation;
        v24 = &off_1F07E1858;
        goto LABEL_41;
      }

      v39 = OUTLINED_FUNCTION_170_4();
      v41 = v4 && v1 == v40;
      if (v41 || (OUTLINED_FUNCTION_5_5(v39, v40) & 1) != 0)
      {
        *v82 = *&__dst[16];
        v18 = &unk_1EAE40800;
        v19 = &unk_19397DF08;
        goto LABEL_33;
      }

      v42 = OUTLINED_FUNCTION_151_7();
      v43 = v4 && v1 == 0xE500000000000000;
      if (v43 || (OUTLINED_FUNCTION_1_31(v42) & 1) != 0)
      {
        *v82 = *(&__dst[16] + 1);
        v18 = &unk_1EAE40898;
        v19 = &unk_193985590;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_38();
      v45 = v2 == 0xD000000000000014 && v44 == v1;
      if (v45 || (OUTLINED_FUNCTION_5_5(0xD000000000000014, v44) & 1) != 0)
      {
        if ((BYTE9(__dst[17]) & 1) == 0)
        {
          *v82 = *&__dst[17];
          v82[8] = BYTE8(__dst[17]) & 1;
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_38();
      v48 = v2 == 0xD000000000000011 && v47 == v1;
      if (v48 || (OUTLINED_FUNCTION_14_48(v46, v47) & 1) != 0)
      {
        *v82 = *&__dst[18];
        v18 = &unk_1EAE407F8;
        v19 = &unk_19397DF00;
        goto LABEL_33;
      }

      v49 = OUTLINED_FUNCTION_41_22();
      v51 = v4 && v1 == v50;
      if (v51 || (OUTLINED_FUNCTION_5_5(v49, v50) & 1) != 0)
      {
        *v82 = *(&__dst[18] + 1);
        v18 = &unk_1EAE40890;
        v19 = &unk_19397DF90;
        goto LABEL_33;
      }

      v52 = v2 == 0x63496D6F74737563 && v1 == 0xEA00000000006E6FLL;
      if (v52 || (OUTLINED_FUNCTION_5_5(0x63496D6F74737563, 0xEA00000000006E6FLL) & 1) != 0)
      {
        OUTLINED_FUNCTION_66_21();
        if (v4)
        {
          goto LABEL_23;
        }

        *v82 = v53;
        v23 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon;
        v24 = &off_1F07E1828;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_8_17();
      v55 = v4 && v54 == v1;
      if (v55 || (OUTLINED_FUNCTION_5_5(0xD000000000000010, v54) & 1) != 0)
      {
        v17 = *(&__dst[19] + 1);
        goto LABEL_32;
      }

      v56 = v2 == 0x6F43656372756F73 && v1 == 0xEF72656E6961746ELL;
      if (v56 || (OUTLINED_FUNCTION_5_5(0x6F43656372756F73, 0xEF72656E6961746ELL) & 1) != 0)
      {
        v57 = *(&__dst[26] + 1);
        if (!*(&__dst[26] + 1))
        {
          goto LABEL_23;
        }

        v58 = (v3 + 320);
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v60 = v2 == 0xD000000000000014 && v59 == v1;
        if (!v60 && (OUTLINED_FUNCTION_5_5(0xD000000000000014, v59) & 1) == 0)
        {
          v61 = v2 == 0x696C696269736976 && v1 == 0xEF7367616C467974;
          if (v61 || (OUTLINED_FUNCTION_5_5(0x696C696269736976, 0xEF7367616C467974) & 1) != 0)
          {
            *v82 = *&__dst[34];
            v18 = &unk_1EAE40888;
            v19 = &unk_193985670;
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_38();
          v63 = v2 == 0xD000000000000016 && v62 == v1;
          if (v63 || (OUTLINED_FUNCTION_5_5(0xD000000000000016, v62) & 1) != 0)
          {
            v7 = *&__dst[35];
            if (*&__dst[35])
            {
              v8 = *(&__dst[34] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_38();
          v66 = v2 == 0xD000000000000011 && v65 == v1;
          if (v66 || (OUTLINED_FUNCTION_14_48(v64, v65) & 1) != 0)
          {
            v7 = *&__dst[36];
            if (*&__dst[36])
            {
              v8 = *(&__dst[35] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          v67 = OUTLINED_FUNCTION_43_17();
          v69 = v4 && v1 == v68;
          if (v69 || (OUTLINED_FUNCTION_5_5(v67, v68) & 1) != 0)
          {
            v7 = *&__dst[37];
            if (*&__dst[37])
            {
              v8 = *(&__dst[36] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_38();
          v71 = v2 == 0xD000000000000013 && v70 == v1;
          if (v71 || (OUTLINED_FUNCTION_5_5(0xD000000000000013, v70) & 1) != 0)
          {
            v7 = *&__dst[38];
            if (*&__dst[38])
            {
              v8 = *(&__dst[37] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_38();
          v73 = v2 == 0xD00000000000001CLL && v72 == v1;
          if (!v73 && (OUTLINED_FUNCTION_5_5(0xD00000000000001CLL, v72) & 1) == 0)
          {
            OUTLINED_FUNCTION_38();
            v75 = v2 == 0xD00000000000001FLL && v74 == v1;
            if (!v75 && (OUTLINED_FUNCTION_5_5(0xD00000000000001FLL, v74) & 1) == 0)
            {
              v76 = sub_19349AB64();
              v77 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v76);
              OUTLINED_FUNCTION_9_3(v77, v78);
              *(v79 + 40) = &type metadata for ToolKitToolToolDefinition.Version1;
              v80 = swift_allocObject();
              v81 = OUTLINED_FUNCTION_28_3(v80);
              memcpy(v81, __dst, 0x278uLL);
              OUTLINED_FUNCTION_26_0();

              sub_19349D51C(__dst, v82);
              goto LABEL_24;
            }

            *v82 = *&__dst[39];
            v18 = &unk_1EAE40880;
            v19 = &unk_19397DF88;
            goto LABEL_33;
          }

          v36 = *(&__dst[38] + 1);
          goto LABEL_75;
        }

        v57 = *(&__dst[33] + 1);
        if (!*(&__dst[33] + 1))
        {
          goto LABEL_23;
        }

        v58 = (v3 + 432);
      }

      memcpy(v82, v58, sizeof(v82));
      v83 = v57;
      v23 = &type metadata for ToolKitToolContainerDefinition;
      v24 = &off_1F07E1888;
      goto LABEL_41;
    }
  }

  v7 = *(&__dst[0] + 1);
  if (!*(&__dst[0] + 1))
  {
    goto LABEL_23;
  }

  v8 = *&__dst[0];
LABEL_8:
  *v82 = v8;
  *&v82[8] = v7;
LABEL_9:
  sub_1934948FC();
LABEL_24:
  OUTLINED_FUNCTION_27();
}