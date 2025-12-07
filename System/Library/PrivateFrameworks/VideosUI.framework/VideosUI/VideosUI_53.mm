uint64_t sub_1E3A637D0()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return OUTLINED_FUNCTION_6_5(sub_1E3A63810);
}

uint64_t sub_1E3A63810()
{
  v1 = v0[5];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    v9 = v0[1];

    return v9(v4 & 1, v3, v2);
  }

  else
  {
    v6 = v0[6];
    v7 = swift_task_alloc();
    v0[7] = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_1E3A63978;

    return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000012, 0x80000001E426E260, sub_1E3A64364, v7, &type metadata for SearchRACMenuConfiguration);
  }
}

uint64_t sub_1E3A63978()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

double sub_1E3A63A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0, &unk_1E42B57A0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v12, a1, v5);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v7 + 32))(v15 + v14, v12, v5);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_1E3A635F0(sub_1E3A64E5C, v15);

  return result;
}

uint64_t sub_1E3A63C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_6_5(sub_1E3A63C40);
}

uint64_t sub_1E3A63C40()
{
  v1 = (*(**(v0 + 56) + 184))();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v11 = *(v0 + 16);
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    v6 = *(v0 + 40);
    *(v5 + 16) = v2;
    *(v5 + 24) = v11;
    *(v5 + 40) = v4;
    *(v5 + 48) = v6;
    *(v5 + 64) = v3;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1E3A63DF0;
    v8 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 88, 0, 0, 0xD00000000000003FLL, 0x80000001E426E2C0, sub_1E3A6436C, v5, v8);
  }

  else
  {
    OUTLINED_FUNCTION_22_42("jsRACInterface is nil. Aborting configuration population");
    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_1E3A63DF0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3A63EF0()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_1E3A63F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a2;
  v24 = a7;
  v22 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a1, v11);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v16, v11);

  sub_1E3F17FC8(a3, a4, a5, v22, v24, sub_1E3A64D00, v19);

  return result;
}

uint64_t sub_1E3A640F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E324FBDC();
  (*(v6 + 16))(v9, v10, v4);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(a1, a2, &v17);
    _os_log_impl(&dword_1E323F000, v11, v12, "SearchRACManager - %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1E3A642AC()
{

  return v0;
}

uint64_t sub_1E3A642DC()
{
  sub_1E3A642AC();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_1E3A64310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E8C0;
  if (!qword_1EE24E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8C0);
  }

  return result;
}

unint64_t sub_1E3A64384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31580;
  if (!qword_1ECF31580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31580);
  }

  return result;
}

unint64_t sub_1E3A643DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31588;
  if (!qword_1ECF31588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31588);
  }

  return result;
}

unint64_t sub_1E3A64434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31590;
  if (!qword_1ECF31590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31590);
  }

  return result;
}

uint64_t sub_1E3A644D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3A6451C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31598;
  if (!qword_1ECF31598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31598);
  }

  return result;
}

unint64_t sub_1E3A64574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E8C8;
  if (!qword_1EE24E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8C8);
  }

  return result;
}

unint64_t sub_1E3A645CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E8D0;
  if (!qword_1EE24E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8D0);
  }

  return result;
}

uint64_t sub_1E3A64648(uint64_t a1)
{
  result = sub_1E41FE624();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRACMenuOption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRACMenuConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3A648A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE281878[0];
  if (!qword_1EE281878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE281878);
  }

  return result;
}

void *sub_1E3A64934()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3A64BD0(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3A64980(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E3A64BD0((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_1E3A649C0()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0(v0 + 16, v17);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 40) = 0;
  }

  OUTLINED_FUNCTION_5_0(v0 + 16, v16);
  if (swift_weakLoadStrong())
  {
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1E42074B4();
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    MEMORY[0x1E69109E0](0xD000000000000033, 0x80000001E426E390);
    OUTLINED_FUNCTION_17_59();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315A0, &qword_1E42B5788);
    sub_1E4207614();
    sub_1E3A640F4(0, 0xE000000000000000);
  }

  OUTLINED_FUNCTION_5_0(v0 + 16, v14);
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v12 = v1;
    OUTLINED_FUNCTION_5_0(v3 + 48, v13);
    v5 = *(v4 + 48);

    v6 = 0;
    v7 = *(v5 + 16);
    for (i = v5 + 40; ; i += 16)
    {
      if (v7 == v6)
      {

        v1 = v12;
        goto LABEL_11;
      }

      if (v6 >= *(v5 + 16))
      {
        break;
      }

      ++v6;
      v9 = *(i - 8);
      OUTLINED_FUNCTION_17_59();

      v9(v15);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_5_0(v1 + 16, v15);
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v11 = v10;
      swift_beginAccess();
      *(v11 + 48) = MEMORY[0x1E69E7CC0];
    }
  }
}

void *sub_1E3A64BD0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315A8, &unk_1E42B5790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3A64D00(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_5_0(*(v1 + 16) + 16, v6);
  if (swift_weakLoadStrong())
  {
    sub_1E42074B4();

    if (a1)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (a1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    MEMORY[0x1E69109E0](v3, v4);

    sub_1E3A640F4(0xD00000000000002BLL, 0x80000001E426E3D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  return sub_1E42063D4();
}

uint64_t sub_1E3A64E5C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0, &unk_1E42B57A0);
  if (a4)
  {
    if (qword_1EE2A2A98 != -1)
    {
      OUTLINED_FUNCTION_1_125(&qword_1EE2A2A98);
    }

    v11[0] = byte_1EE2AB0A8;
    v12 = qword_1EE2AB0B0;
    v13 = unk_1EE2AB0B8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0, &unk_1E42B57A0);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(*(v4 + 16) + 16, v11);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      Strong[2] = a1 & 1;
      Strong[3] = a2;
      Strong[4] = a3;
      sub_1E3A64FE4(a1, a2, a3, 0);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0, &unk_1E42B57A0);
  }

  return sub_1E42063D4();
}

double sub_1E3A64FE4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E3A64FF4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E39C9724;

  return sub_1E3A63124();
}

uint64_t sub_1E3A65088(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1E3A6517C;

  return v5(v2 + 16);
}

uint64_t sub_1E3A6517C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = v1[5];
  v5 = *v0;
  *v3 = *v0;

  v6 = v1[3];
  v7 = v1[4];
  *v4 = *(v2 + 16);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  v8 = v5[1];

  return v8();
}

uint64_t sub_1E3A652B8()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3A6534C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t *MetricsDiskManager.shared.unsafeMutableAddressor()
{
  if (qword_1EE2A08A0 != -1)
  {
    OUTLINED_FUNCTION_5_101(&qword_1EE2A08A0);
  }

  return &static MetricsDiskManager.shared;
}

id MetricsDiskManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricsDiskManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsDiskManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MetricsDiskManager.writeSession(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_126();
  OUTLINED_FUNCTION_17_60();
  sub_1E3A65690(a1, v4, v5, *(v1 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults), type metadata accessor for MetricsRenderSession, &qword_1ECF315D0, type metadata accessor for MetricsRenderSession, &protocol conformance descriptor for MetricsRenderSession);
}

void sub_1E3A65690(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v34[6] = a2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v34[5] = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v34 - v21;
  v34[17] = a1;
  if (a4)
  {
    v34[4] = a3;
    sub_1E41FDE54();
    swift_allocObject();
    v23 = a4;
    sub_1E41FDE44();
    a5(0);
    sub_1E3A66B68(a6, a7, a8);
    v29 = sub_1E41FDE34();
    v31 = v30;
    v32 = sub_1E41FE454();
    v33 = sub_1E4205ED4();
    [v23 setObject:v32 forKey:v33];

    sub_1E38DCCB0(v29, v31);
  }

  else
  {
    sub_1E324FBDC();
    v24 = OUTLINED_FUNCTION_3_50();
    v25(v24);
    v26 = sub_1E41FFC94();
    v27 = sub_1E42067F4();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_71(&dword_1E323F000, v28, v27, "UserDefaults for metrics does not exist");
      OUTLINED_FUNCTION_65_0();
    }

    (*(v17 + 8))(v22, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t MetricsDiskManager.writeEvent(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_77();
  OUTLINED_FUNCTION_17_60();
  sub_1E3A65690(a1, v4, v5, *(v1 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults), type metadata accessor for MetricsRenderEvent, &qword_1ECF315C8, type metadata accessor for MetricsRenderEvent, &protocol conformance descriptor for MetricsRenderEvent);
}

uint64_t MetricsDiskManager.eventsForSession(_:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB8))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults);
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      MEMORY[0x1E69109E0](v7, v8);

      OUTLINED_FUNCTION_3_104();
      sub_1E3A65E34(v9, 0xE600000000000000, v5, v10, &qword_1ECF315C0, type metadata accessor for MetricsRenderEvent, &protocol conformance descriptor for MetricsRenderEvent);
      v12 = v11;

      if (v12)
      {
        v13 = v12;
        MEMORY[0x1E6910BF0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        v2 = v15;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}

void sub_1E3A65E34(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v32 = a6;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  if (a3)
  {
    v18 = a3;
    v19 = sub_1E4205ED4();
    v20 = [v18 dataForKey_];

    if (v20)
    {
      v31 = v18;
      v21 = a7;
      v22 = sub_1E41FE464();
      v24 = v23;

      sub_1E41FDE24();
      swift_allocObject();
      sub_1E41FDE14();
      a4(0);
      sub_1E3A66B68(a5, v32, v21);
      sub_1E41FDE04();

      sub_1E38DCCB0(v22, v24);

      goto LABEL_8;
    }
  }

  sub_1E324FBDC();
  v25 = OUTLINED_FUNCTION_3_50();
  v26(v25);
  v27 = sub_1E41FFC94();
  v28 = sub_1E42067F4();
  if (os_log_type_enabled(v27, v28))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_71(&dword_1E323F000, v29, v28, "UserDefaults for metrics does not exist or decode data is nil");
    OUTLINED_FUNCTION_65_0();
  }

  (*(v13 + 8))(v16, v7);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

uint64_t MetricsDiskManager.sessionForEvent(_:)(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF8))();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_126();
  OUTLINED_FUNCTION_17_60();

  OUTLINED_FUNCTION_4_104();
  sub_1E3A65E34(v2, v9, v3, v4, v5, type metadata accessor for MetricsRenderSession, &protocol conformance descriptor for MetricsRenderSession);
  v7 = v6;

  return v7;
}

void MetricsDiskManager.allSessions()()
{
  v3 = *(v0 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults);
  if (v3)
  {
    v4 = [*(v0 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults) dictionaryRepresentation];
    v5 = sub_1E4205C64();

    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_15_70();
    v6 = 0;
    while (v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_6_87();
      if (sub_1E4206124())
      {
        OUTLINED_FUNCTION_4_104();
        v8 = OUTLINED_FUNCTION_123_1();
        sub_1E3A65E34(v8, v9, v3, v10, &qword_1ECF315B8, v11, v12);
        v14 = v13;

        if (v14)
        {
          v15 = v14;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_14_79();
          if (v16)
          {
            OUTLINED_FUNCTION_10_71();
          }

          OUTLINED_FUNCTION_123_1();
          sub_1E4206324();
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v2)
      {

        return;
      }

      v1 = *(v5 + 64 + 8 * v7);
      ++v6;
      if (v1)
      {
        v6 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void MetricsDiskManager.allEvents()()
{
  v3 = *(v0 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults);
  if (v3)
  {
    v4 = [*(v0 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults) dictionaryRepresentation];
    v5 = sub_1E4205C64();

    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_15_70();
    v6 = 0;
    while (v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_6_87();
      if (sub_1E4206124())
      {
        OUTLINED_FUNCTION_3_104();
        v8 = OUTLINED_FUNCTION_123_1();
        sub_1E3A65E34(v8, v9, v3, v10, &qword_1ECF315C0, v11, v12);
        v14 = v13;

        if (v14)
        {
          v15 = v14;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_14_79();
          if (v16)
          {
            OUTLINED_FUNCTION_10_71();
          }

          OUTLINED_FUNCTION_123_1();
          sub_1E4206324();
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v2)
      {

        return;
      }

      v1 = *(v5 + 64 + 8 * v7);
      ++v6;
      if (v1)
      {
        v6 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

id sub_1E3A6676C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  a3();

  a4(0);
  v7 = sub_1E42062A4();

  return v7;
}

Swift::Void __swiftcall MetricsDiskManager.clearAllData()()
{
  sub_1E3A66830(*(v0 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults));
  v1 = *(v0 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults);

  sub_1E3A66830(v1);
}

void sub_1E3A66830(void *a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = [v8 dictionaryRepresentation];
    v10 = sub_1E4205C64();

    OUTLINED_FUNCTION_4_4();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;

    v16 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v13 &= v13 - 1;

      v18 = sub_1E4205ED4();
      [v8 removeObjectForKey_];
    }

    while (v13);
    while (1)
    {
LABEL_4:
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v17 >= v15)
      {
        break;
      }

      v13 = *(v10 + 64 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E324FBDC();
    v20 = OUTLINED_FUNCTION_3_50();
    v21(v20);
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067F4();
    if (os_log_type_enabled(v22, v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_71(&dword_1E323F000, v24, v23, "UserDefaults for metrics does not exist or decode data is nil");
      OUTLINED_FUNCTION_65_0();
    }

    (*(v4 + 8))(v7, v1);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3A66B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30, &qword_1E429E820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3A66B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3A66BB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = 0;
  }

  sub_1E37C3ADC(v1);
  return v2;
}

uint64_t sub_1E3A66BF4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons);
  *(v1 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = a1;
  return sub_1E37C3B04(v2);
}

uint64_t (*sub_1E3A66C0C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3A66BB0();
  return sub_1E3A66C54;
}

uint64_t sub_1E3A66C54(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons);
  *(v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

void *sub_1E3A66CCC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount + 9) & 1) == 0)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v2;
    v5 = sub_1E3A675E4(v3);
    v6 = v5 == 0;
    if (v5)
    {
      v3 = sub_1E3A66DA4(v5);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *v1 = v3;
  v1[8] = v6;
  v1[9] = 0;
  return v3;
}

uint64_t sub_1E3A66DA4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1E4207384();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1E3A66DC4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E3A66DE4(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3A66CCC();
  *(a1 + 8) = v3 & 1;
  return sub_1E3A66E34;
}

uint64_t sub_1E3A66E34(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_1E3A66E5C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID + 5) & 1) == 0)
  {
    v19 = *v1;
    v20 = v1[1] & 1;
    return v19 | (v20 << 32);
  }

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = v3;
  v5 = v2;
  result = sub_1E3A67784(v4);
  if (!v7)
  {

LABEL_26:
    v21 = 0;
    LOBYTE(v22) = 1;
LABEL_78:
    v19 = v21;
    v20 = v22 & 1;
    *v1 = v21;
    *(v1 + 2) = v22 & 1;
    return v19 | (v20 << 32);
  }

  v8 = v7;
  v9 = HIBYTE(v7) & 0xF;
  v10 = result & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_26;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v13 = sub_1E37C4D2C(result, v8, 10);

    v22 = (v13 >> 32) & 1;
LABEL_76:
    v21 = v13;
    if (v22)
    {
      v21 = 0;
    }

    goto LABEL_78;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E4207524();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          LODWORD(v13) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v15 & v14)
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_3_105();
              if (!v15)
              {
                goto LABEL_74;
              }

              LODWORD(v13) = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_132();
              if (v15)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      goto LABEL_85;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        LODWORD(v13) = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_74;
            }

            v30 = 10 * v13;
            if (v30 != v30)
            {
              goto LABEL_74;
            }

            LODWORD(v13) = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_74;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_74:
      LODWORD(v13) = 0;
      v18 = 1;
      goto LABEL_75;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        LODWORD(v13) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v15 & v14)
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_3_105();
            if (!v15)
            {
              goto LABEL_74;
            }

            LODWORD(v13) = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_132();
            if (v15)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_65:
        v18 = 0;
LABEL_75:
        LOBYTE(v22) = v18;

        goto LABEL_76;
      }

      goto LABEL_74;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v9)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v15 & v14)
          {
            break;
          }

          OUTLINED_FUNCTION_3_105();
          if (!v15)
          {
            break;
          }

          LODWORD(v13) = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v15)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_4_105();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v15 & v14)
          {
            break;
          }

          OUTLINED_FUNCTION_3_105();
          if (!v15)
          {
            break;
          }

          LODWORD(v13) = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v15)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    goto LABEL_84;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_4_105();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v15 & v14)
        {
          break;
        }

        OUTLINED_FUNCTION_3_105();
        if (!v15)
        {
          break;
        }

        LODWORD(v13) = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v15)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_74;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1E3A6717C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E3A6719C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = sub_1E3A66E5C();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1E3A671EC;
}

uint64_t sub_1E3A671EC(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

uint64_t sub_1E3A672A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  *(v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = 1;
  v3 = v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount;
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID;
  *(v4 + 4) = 256;
  *v4 = 0;
  return a2(a1);
}

uint64_t sub_1E3A672F0()
{
  v0 = sub_1E39406CC();
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E3A67434(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 480))();
  return sub_1E37C4BF8;
}

unint64_t sub_1E3A674B4()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 512))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

void (*sub_1E3A67564(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 528))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3A675E4(void *a1)
{
  v1 = [a1 episodes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3A677E8();
  sub_1E3A6782C(&qword_1ECF315E0, sub_1E3A677E8, MEMORY[0x1E69E81B8]);
  v3 = sub_1E4206624();

  return v3;
}

uint64_t sub_1E3A67680(uint64_t a1)
{
  result = sub_1E3A6782C(&qword_1ECF315D8, type metadata accessor for LibSidebandShowMediaEntity, &unk_1E42AC898);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibSidebandShowMediaEntity(uint64_t a1)
{
  result = qword_1ECF54300;
  if (!qword_1ECF54300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A67784(void *a1)
{
  v1 = [a1 adamID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3A677E8()
{
  result = qword_1ECF300D0;
  if (!qword_1ECF300D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF300D0);
  }

  return result;
}

uint64_t sub_1E3A6782C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3A67874()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for LeagueStandingsLegendItemLayout();
    v1 = sub_1E3D94C68();
    *(v0 + 104) = v1;
  }

  return v1;
}

double sub_1E3A678DC(uint64_t a1)
{
  *(v1 + 104) = a1;

  return result;
}

uint64_t sub_1E3A67920(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 112, a2);
  *(v2 + 112) = a1;
  return result;
}

uint64_t sub_1E3A679D8(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 120, a3);
  *(v3 + 120) = a1;
  return result;
}

uint64_t sub_1E3A67A90(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v2 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_14_0(v2 + 120, v3);
  *(v2 + 120) = 0x402C000000000000;
  return v2;
}

uint64_t sub_1E3A67ADC(uint64_t a1)
{
  if (a1 == 260)
  {
    type metadata accessor for LeagueStandingsLegendItemLayout();
    return sub_1E3D94C68();
  }

  else
  {

    return sub_1E3C35CA4(a1);
  }
}

uint64_t sub_1E3A67B30()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1E3A67B9C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8, &unk_1E42CA7A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL;
  swift_beginAccess();
  sub_1E37E93E8(v1 + v13, v12, &qword_1ECF315E8, &unk_1E42CA7A0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
  {
    return sub_1E327D738(v12, a1);
  }

  sub_1E325F6F0(v12, &qword_1ECF315E8, &unk_1E42CA7A0);
  v14 = [*(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui_extrasURL];
  if (v14)
  {
    v15 = v14;
    sub_1E41FE3C4();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = sub_1E41FE414();
  __swift_storeEnumTagSinglePayload(v6, v16, 1, v18);
  sub_1E327D738(v6, a1);
  sub_1E37E93E8(a1, v9, &unk_1ECF363C0, &unk_1E42A9420);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  swift_beginAccess();
  sub_1E3A67DDC(v9, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_1E3A67DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8, &unk_1E42CA7A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A67E4C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8, &unk_1E42CA7A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1E327D738(a1, &v9 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL;
  swift_beginAccess();
  sub_1E3A67DDC(v5, v1 + v7);
  return swift_endAccess();
}

void (*sub_1E3A67F2C(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  sub_1E3A67B9C(v4);
  return sub_1E3A67FC8;
}

void sub_1E3A67FC8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1E37E93E8(*(a1 + 16), v2, &unk_1ECF363C0, &unk_1E42A9420);
    sub_1E3A67E4C(v2);
    sub_1E325F6F0(v3, &unk_1ECF363C0, &unk_1E42A9420);
  }

  else
  {
    sub_1E3A67E4C(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_1E3A68064()
{
  v1 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___isRental;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___isRental);
  if (v2 == 2)
  {
    LOBYTE(v2) = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) isRental];
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t (*sub_1E3A680C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E3A68064() & 1;
  return sub_1E3A68114;
}

uint64_t sub_1E3A6812C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID + 9) & 1) == 0)
  {
    return *v1;
  }

  result = sub_1E3A28F90();
  *v1 = result;
  v1[8] = v3 & 1;
  v1[9] = 0;
  return result;
}

uint64_t sub_1E3A68190(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E3A681B0(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3A6812C();
  *(a1 + 8) = v3 & 1;
  return sub_1E3A68200;
}

uint64_t sub_1E3A68200(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_1E3A68274@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) *a1];
  if (v4)
  {
    v5 = v4;
    sub_1E41FE584();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1E41FE5D4();

  return __swift_storeEnumTagSinglePayload(a2, v6, 1, v7);
}

uint64_t sub_1E3A6833C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___isRental) = 2;
  v5 = v1 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID;
  *v5 = 0;
  *(v5 + 8) = 256;

  return sub_1E39D8938(a1);
}

uint64_t sub_1E3A68400()
{
  v0 = sub_1E39D8B04();
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL, &qword_1ECF315E8, &unk_1E42CA7A0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3A68628(uint64_t a1)
{
  result = sub_1E3A68650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3A68650()
{
  result = qword_1ECF315F0;
  if (!qword_1ECF315F0)
  {
    type metadata accessor for LibMPMovieMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF315F0);
  }

  return result;
}

uint64_t type metadata accessor for LibMPMovieMediaEntity(uint64_t a1)
{
  result = qword_1ECF54390;
  if (!qword_1ECF54390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A686FC(uint64_t a1)
{
  sub_1E3A687A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3A687A0(uint64_t a1)
{
  if (!qword_1ECF315F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF363C0, &unk_1E42A9420);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF315F8);
    }
  }
}

uint64_t sub_1E3A68804@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1E3A68884(a2, a1);
  v4 = sub_1E4203DA4();
  v6 = v5;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31600, &qword_1E42B5A70) + 36);
  sub_1E3A68F28(v2, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31608, &qword_1E42B5A78);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  return result;
}

uint64_t sub_1E3A68884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31610, &qword_1E42B5A80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31618, &qword_1E42B5A88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31620, &qword_1E42B5A90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31628, &qword_1E42B5A98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31630, &unk_1E42B5AA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = sub_1E4203D34();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v2;
  if (v25 == 11)
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
LABEL_4:
    sub_1E325F6F0(v20, &qword_1ECF2A258, &qword_1E42DE8A0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638, &unk_1E42B5AB0);
    OUTLINED_FUNCTION_2();
    (*(v27 + 16))(v5, v52, v26);
    swift_storeEnumTagMultiPayload();
    sub_1E3A69664();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v28, &qword_1ECF31638, &unk_1E42B5AB0, v29);
    OUTLINED_FUNCTION_3_106();
    return sub_1E4201F44();
  }

  sub_1E41263A0(v25, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v48 = v22;
  (*(v22 + 32))(v24, v20, v21);
  if (v2[8])
  {
    v31 = sub_1E4202734();
    v32 = &v8[*(v50 + 36)];
    (*(v48 + 16))(v32, v24, v21);
    v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658, &qword_1E42B5AC0) + 36)] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638, &unk_1E42B5AB0);
    OUTLINED_FUNCTION_2();
    (*(v33 + 16))(v8, v52);
    sub_1E37E93E8(v8, v11, &qword_1ECF31618, &qword_1E42B5A88);
    swift_storeEnumTagMultiPayload();
    sub_1E3A696F0();
    sub_1E3A697D4();
    sub_1E4201F44();
    v34 = v8;
    v35 = &qword_1ECF31618;
    v36 = &qword_1E42B5A88;
  }

  else
  {
    v37 = sub_1E3952BE8(v2[4], v2[5], v2[6], v2[7]);
    v38 = &v14[*(v51 + 36)];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A070, &qword_1E429CCE8);
    v40 = &v38[*(v39 + 52)];
    v47 = *(sub_1E4201534() + 20);
    v41 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v42 + 104))(v40 + v47, v41);
    *v40 = v37;
    v40[1] = v37;
    (*(v48 + 16))(v38, v24, v21);
    *&v38[*(v39 + 56)] = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638, &unk_1E42B5AB0);
    OUTLINED_FUNCTION_2();
    (*(v43 + 16))(v14, v52);
    sub_1E37E93E8(v14, v11, &qword_1ECF31628, &qword_1E42B5A98);
    swift_storeEnumTagMultiPayload();
    sub_1E3A696F0();
    sub_1E3A697D4();
    sub_1E4201F44();
    v34 = v14;
    v35 = &qword_1ECF31628;
    v36 = &qword_1E42B5A98;
  }

  sub_1E325F6F0(v34, v35, v36);
  sub_1E37E93E8(v17, v5, &qword_1ECF31630, &unk_1E42B5AA0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638, &unk_1E42B5AB0);
  sub_1E3A69664();
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v44, &qword_1ECF31638, &unk_1E42B5AB0, v45);
  OUTLINED_FUNCTION_3_106();
  sub_1E4201F44();
  sub_1E325F6F0(v17, &qword_1ECF31630, &unk_1E42B5AA0);
  return (*(v48 + 8))(v24, v21);
}

uint64_t sub_1E3A68F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0D0, &qword_1E42AB2E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32[-v10];
  v12 = *(a1 + 8);
  if (v12)
  {
    if (*(a1 + 64))
    {
      sub_1E3A694BC(a1, v33);
      v13 = 0.0;
    }

    else
    {
      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      sub_1E3A694BC(a1, v33);
      v13 = sub_1E3952BE8(v18, v17, v16, v15);
    }

    v19 = *(v4 + 20);
    v20 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v21 + 104))(v7 + v19, v20);
    *v7 = v13;
    v7[1] = v13;
    v22 = sub_1E38F08C4(v12);
    sub_1E4200BF4();
    sub_1E3A694F4(v7, v11);
    v23 = *v33 * 0.5;
    v24 = &v11[*(v8 + 68)];
    sub_1E3A694F4(v7, v24);
    *(v24 + *(sub_1E4201524() + 20)) = v23;
    v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0D8, &qword_1E42AB2E8) + 36);
    v26 = v33[1];
    *v25 = v33[0];
    *(v25 + 16) = v26;
    *(v25 + 32) = v34;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0E0, &qword_1E42AB2F0);
    *(v24 + *(v27 + 52)) = v22;
    *(v24 + *(v27 + 56)) = 256;
    sub_1E3A69558(v33, v32);

    v28 = sub_1E4203DA4();
    v30 = v29;
    sub_1E3A69348(a1);
    sub_1E3A695B4(v33);

    sub_1E3A69608(v7);
    v31 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0E8, &qword_1E42AB2F8) + 36));
    *v31 = v28;
    v31[1] = v30;
    sub_1E32C1EC0(v11, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

uint64_t sub_1E3A6929C(char a1, void *a2, uint64_t a3, char a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v9 = *a5;
  *&v13[23] = a5[1];
  *&v13[7] = v9;
  *(&__src[3] + 1) = *v13;
  v13[39] = *(a5 + 32);
  __dst[0] = a4 & 1;
  LOBYTE(__src[0]) = a1;
  __src[1] = a2;
  __src[2] = a3;
  LOBYTE(__src[3]) = a4 & 1;
  *(&__src[5] + 1) = *&v13[16];
  *(&__src[7] + 1) = *&v13[32];
  v10 = a2;
  MEMORY[0x1E690DE70](__src, a6, &type metadata for BackgroundMaterialViewModifier, a7);
  memcpy(__dst, __src, 0x41uLL);
  return sub_1E3A69348(__dst);
}

unint64_t sub_1E3A69378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE293130[0];
  if (!qword_1EE293130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE293130);
  }

  return result;
}

uint64_t sub_1E3A693D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_1E3A69428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E3A694F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201534();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A69608(uint64_t a1)
{
  v2 = sub_1E4201534();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3A69664()
{
  result = qword_1EE288F40;
  if (!qword_1EE288F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31630, &unk_1E42B5AA0);
    sub_1E3A696F0();
    sub_1E3A697D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F40);
  }

  return result;
}

unint64_t sub_1E3A696F0()
{
  result = qword_1EE289AB0;
  if (!qword_1EE289AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31628, &qword_1E42B5A98);
    sub_1E32752B0(&qword_1EE288948, &qword_1ECF31638, &unk_1E42B5AB0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE288758, &qword_1ECF2A070, &qword_1E429CCE8, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AB0);
  }

  return result;
}

unint64_t sub_1E3A697D4()
{
  result = qword_1EE289AA8;
  if (!qword_1EE289AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31618, &qword_1E42B5A88);
    sub_1E32752B0(&qword_1EE288948, &qword_1ECF31638, &unk_1E42B5AB0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE288890, &qword_1ECF2F658, &qword_1E42B5AC0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AA8);
  }

  return result;
}

unint64_t sub_1E3A698B8()
{
  result = qword_1EE289B08;
  if (!qword_1EE289B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31600, &qword_1E42B5A70);
    sub_1E3A69970();
    sub_1E32752B0(&qword_1EE2892F0, &qword_1ECF31608, &qword_1E42B5A78, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B08);
  }

  return result;
}

unint64_t sub_1E3A69970()
{
  result = qword_1EE288BD0;
  if (!qword_1EE288BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31640, &qword_1E42B5AC8);
    sub_1E3A69664();
    sub_1E32752B0(&qword_1EE288948, &qword_1ECF31638, &unk_1E42B5AB0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BD0);
  }

  return result;
}

uint64_t sub_1E3A69A5C()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1704);

  v3 = v2();
  (*(*v3 + 208))(0x4034000000000000, 0);

  v5 = *(v2)(v4);
  (*(v5 + 312))(0x4034000000000000, 0);

  v7 = *(*v1 + 1728);
  v8 = *v7(v6);
  (*(v8 + 1736))(0x3FF547AE147AE148, 0);

  v10 = (v2)(v9);
  sub_1E3C37CBC(v10, 23);

  v12 = v7(v11);
  sub_1E3C37CBC(v12, 39);

  return v1;
}

uint64_t sub_1E3A69C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31648, &qword_1E42B5B00);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31650, &qword_1E42B5B08) + 36));
  *v8 = sub_1E3A69DC0;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31658, &qword_1E42B5B10) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_1E3A69E54;
  v10[3] = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1E3A69DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1E327F454(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 8))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1E3A69E54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1E327F454(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 16))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1E3A69EF0()
{
  v0 = sub_1E3E6CDC8();
  v1 = (*(*v0 + 464))(v0);

  if (v1)
  {
    v2 = sub_1E32AE9B0(v1);
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {
LABEL_32:

        return;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E6911E60](i, v1);
        v4 = v5;
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v4 = *(v1 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      sub_1E3742F1C(v5, v6, v7);
      sub_1E4206254();
      sub_1E4206254();
      if (v23 == v21 && v24 == v22)
      {
        break;
      }

      v9 = sub_1E42079A4();

      if (v9)
      {
        goto LABEL_16;
      }
    }

LABEL_16:

    v11 = (*(*v4 + 464))(v10);
    if (v11)
    {
      v12 = v11;
      v13 = sub_1E32AE9B0(v11);
      for (j = 0; ; ++j)
      {
        if (v13 == j)
        {

          goto LABEL_32;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](j, v12);
        }

        else
        {
          if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_41;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v23 == v21 && v24 == v22)
        {
          break;
        }

        v16 = sub_1E42079A4();

        if (v16)
        {
          goto LABEL_34;
        }
      }

LABEL_34:

      v17 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31660, qword_1E42B5B18);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1E4297BE0;
        *(v20 + 56) = v17;
        *(v20 + 64) = &off_1F5D6D078;
        *(v20 + 32) = v19;

        return;
      }
    }
  }
}

uint64_t sub_1E3A6A380(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1E3A6A404()
{
  result = qword_1ECF31678;
  if (!qword_1ECF31678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31648, &qword_1E42B5B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31678);
  }

  return result;
}

uint64_t sub_1E3A6A468(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E3A6A4A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1E3A6A544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A6A5B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3A6A650(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E3A6A6C0())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_8_70();
  v0[6] = sub_1E4200664();
  return sub_1E3846A58;
}

uint64_t sub_1E3A6A760(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_1_8(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__isFetchDone, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E3A6A864())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__isFetchDone, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3A6A970;
}

uint64_t sub_1E3A6A988()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A6A9FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3A6AA48(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_1E3A6AA9C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E3A6AB0C())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_8_70();
  v0[6] = sub_1E4200664();
  return sub_1E3844B3C;
}

uint64_t sub_1E3A6ABAC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31688, &qword_1E42B5CB0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_1_8(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__seasonViewModels, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680, &qword_1E42B5CA8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E3A6ACB0())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31688, &qword_1E42B5CB0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__seasonViewModels, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680, &qword_1E42B5CA8);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3A6ADBC;
}

void sub_1E3A6ADD4(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3A6AE9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31690, &unk_1E42B5CB8);
  sub_1E32752B0(&qword_1ECF31698, &qword_1ECF31690, &unk_1E42B5CB8, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t sub_1E3A6AF30()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 280))(v4);
  v1 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_34_7(v4, v5);
    v1 = (*(v2 + 88))(v1);
  }

  sub_1E325F7A8(v4, &qword_1ECF2A778, &unk_1E429E340);
  return v1;
}

uint64_t sub_1E3A6AFE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity, a1);
  return sub_1E3A6B02C(v2 + v4, a2);
}

uint64_t sub_1E3A6B02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A778, &unk_1E429E340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A6B09C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity, v5);
  sub_1E3A6B0F4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3A6B0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A778, &unk_1E429E340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A6B1BC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  sub_1E3A6B20C(a1, v2);
  return v4;
}

uint64_t sub_1E3A6B20C(uint64_t a1, int a2)
{
  v3 = v2;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680, &qword_1E42B5CA8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34[-v15];
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v17 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__isFetchDone;
  LOBYTE(v40[0]) = 0;
  sub_1E4200634();
  (*(v13 + 32))(v3 + v17, v16, v11);
  v18 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__seasonViewModels;
  v19 = MEMORY[0x1E69E7CC0];
  v40[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB68, &qword_1E42A7B08);
  sub_1E4200634();
  (*(v7 + 32))(v3 + v18, v10, v5);
  v20 = v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_cancellables) = v19;
  *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_seasons) = v19;
  v21 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_eventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31690, &unk_1E42B5CB8);
  swift_allocObject();
  *(v3 + v21) = sub_1E4200544();
  sub_1E3A6B02C(a1, &v37);
  if (v38)
  {
    sub_1E3251BE8(&v37, v40);
    v22 = v35;
    *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly) = v35 & 1;
    sub_1E327F454(v40, &v37);
    v23 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
    OUTLINED_FUNCTION_11_3(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity, v36);
    sub_1E3A6B0F4(&v37, v3 + v23);
    swift_endAccess();
    sub_1E3A6BAD0();
    v24 = v41;
    v25 = v42;
    v26 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v38 = v24;
    v39 = *(v25 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    swift_weakInit();

    sub_1E41A3244(&v37, sub_1E3A6BCE0, v28);

    __swift_destroy_boxed_opaque_existential_1(&v37);
    if (v22)
    {
      v29 = [objc_opt_self() defaultCenter];
      [v29 addObserver:v3 selector:sel_handlePlaybackUIDidChangeNotification name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];
    }

    sub_1E325F7A8(a1, &qword_1ECF2A778, &unk_1E429E340);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_8_70();
    sub_1E325F7A8(v30, v31, v32);
    sub_1E325F7A8(&v37, &qword_1ECF2A778, &unk_1E429E340);
  }

  return v3;
}

uint64_t sub_1E3A6B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v23 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v16 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_5_0(a3 + 16, v25);
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_1E3A6D740;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_49;
  v19 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v10, v19);
  _Block_release(v19);

  (*(v23 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v22);
}

uint64_t sub_1E3A6B8F4()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 216))();
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_17:
  }

  v4 = 0;
  v9 = result + 32;
  while (v4 < *(v2 + 16))
  {
    v5 = *(v9 + 32 * v4 + 24);
    if (v5 >> 62)
    {
      result = sub_1E4207384();
      v6 = result;
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    if (v6 < 1)
    {
      goto LABEL_21;
    }

    swift_bridgeObjectRetain_n();

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v7, v5);
      }

      else
      {
      }

      ++v7;
      OUTLINED_FUNCTION_8();
      (*(v8 + 1088))();
    }

    while (v6 != v7);

    result = swift_bridgeObjectRelease_n();
LABEL_13:
    if (++v4 == v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E3A6BAD0()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 280))(&v14);
  if (!v15)
  {
    return sub_1E325F7A8(&v14, &qword_1ECF2A778, &unk_1E429E340);
  }

  sub_1E3251BE8(&v14, v17);
  v2 = v18;
  OUTLINED_FUNCTION_34_7(v17, v18);
  (*(v3 + 32))(v2);
  OUTLINED_FUNCTION_111();
  (*(v4 + 152))();
  v5 = *(**sub_1E3B7B1C8() + 896);

  v5(&v12, v17);

  if (v13)
  {
    sub_1E3251BE8(&v12, &v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    v8 = *(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly);
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = *(v7 + 120);

    v10(v17, v8, sub_1E3A6D854, v9, v6, v7);

    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_1E325F7A8(&v12, &unk_1ECF2A740, &qword_1E42EF010);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_1E3A6BCE8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_seasons);
  v44 = *(v2 + 16);
  if (!v44)
  {
LABEL_28:
    OUTLINED_FUNCTION_111();
    (*(v41 + 224))();
    return;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly;
  v48 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_cancellables;
  v42 = v2 + 32;

  v6 = 0;
  v45 = v3;
  v43 = v5;
  while (v6 < *(v5 + 16))
  {
    v47 = v6;
    sub_1E327F454(v42 + 40 * v6, v52);
    OUTLINED_FUNCTION_34_7(v52, v53);
    v7 = OUTLINED_FUNCTION_9_72();
    v9 = v8(v7);
    v11 = v10;
    v12 = v53;
    OUTLINED_FUNCTION_34_7(v52, v53);
    v14 = (*(v13 + 32))(v12);
    v46 = sub_1E3A6C6EC(v9, v11, v14, v15);

    v16 = MEMORY[0x1E69E7CC0];
    v51 = MEMORY[0x1E69E7CC0];
    v17 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v18 = OUTLINED_FUNCTION_9_72();
    v20 = v19(v18, v17);
    if (!v20)
    {
      v20 = v16;
    }

    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;
      do
      {
        sub_1E327F454(v22, v50);
        v23 = sub_1E3A6C640(v50, v52);
        v24 = __swift_destroy_boxed_opaque_existential_1(v50);
        if (v23)
        {
          if (*(v1 + v4) == 1)
          {
            v25 = (*(*v23 + 936))(v24);
            if (v25)
            {
              v26 = *(v25 + 280);

              v27 = sub_1E40A0988();

              v49 = v27;
              OUTLINED_FUNCTION_4_0();
              v28 = swift_allocObject();
              swift_weakInit();
              v29 = swift_allocObject();
              *(v29 + 16) = v28;
              *(v29 + 24) = v1;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB8, &unk_1E42B5DF0);
              sub_1E32752B0(&qword_1EE28A1C0, &qword_1ECF2CEB8, &unk_1E42B5DF0, MEMORY[0x1E695BED8]);
              sub_1E4200844();

              OUTLINED_FUNCTION_11_3(v1 + v48, &v49);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
              sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90, MEMORY[0x1E69E6348]);
              sub_1E42004D4();
              swift_endAccess();
            }
          }

          MEMORY[0x1E6910BF0](v30);
          v31 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
          {
            OUTLINED_FUNCTION_35(v31);
            sub_1E42062F4();
          }

          sub_1E4206324();

          v16 = v51;
        }

        v22 += 40;
        --v21;
      }

      while (v21);
    }

    if (v16 >> 62)
    {
      if (sub_1E4207384())
      {
LABEL_18:
        OUTLINED_FUNCTION_34_7(v52, v53);
        v32 = OUTLINED_FUNCTION_9_72();
        v34 = v33(v32);
        v36 = v35;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v45;
        }

        else
        {
          v37 = sub_1E3A6D1F4(0, v45[2] + 1, 1, v45);
        }

        v39 = v37[2];
        v38 = v37[3];
        if (v39 >= v38 >> 1)
        {
          v37 = sub_1E3A6D1F4((v38 > 1), v39 + 1, 1, v37);
        }

        v37[2] = v39 + 1;
        v45 = v37;
        v40 = &v37[4 * v39];
        v40[4] = v34;
        v40[5] = v36;
        v40[6] = v46;
        v40[7] = v16;
        goto LABEL_25;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_25:
    v6 = v47 + 1;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v5 = v43;
    if (v47 + 1 == v44)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_1E3A6C1E0(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly) == 1 && a2 == 0)
  {
    v4 = result;
    v5 = *(result + 312);
    OUTLINED_FUNCTION_34_7((result + 288), v5);
    v7 = (*(v6 + 128))(v5);
    if (v7 == 2 || (v7 & 1) != 0)
    {
      v8 = (*(*v2 + 216))();
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = 0;
        v11 = (v8 + 56);
        v12 = MEMORY[0x1E69E7CC0];
        v44 = v4;
        while (1)
        {
          v13 = *(v11 - 2);
          v45 = *(v11 - 3);
          v14 = *(v11 - 1);
          v51 = *v11;
          v49 = v14;

          swift_bridgeObjectRetain_n();

          sub_1E3A6D324(&v51, v4);
          v16 = v51;
          v17 = v51 >> 62;
          if (v51 >> 62)
          {
            v40 = v15;
            v18 = sub_1E4207384();
            v15 = v40;
          }

          else
          {
            v18 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v19 = v18 - v15;
          if (v18 < v15)
          {
            break;
          }

          if (v15 < 0)
          {
            goto LABEL_68;
          }

          v50 = v15;
          if (v17)
          {
            v20 = sub_1E4207384();
          }

          else
          {
            v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v20 < v18)
          {
            goto LABEL_69;
          }

          v47 = v10;
          v21 = v9;
          v22 = -v19;
          if (__OFSUB__(0, v19))
          {
            goto LABEL_70;
          }

          v48 = v13;
          if (v17)
          {
            v23 = sub_1E4207384();
          }

          else
          {
            v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v24 = v23 - v19;
          if (__OFADD__(v23, v22))
          {
            goto LABEL_71;
          }

          v46 = v12;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v17)
          {
            v26 = 0;
          }

          else
          {
            v26 = isUniquelyReferenced_nonNull_bridgeObject;
          }

          if (v26 != 1 || (v27 = v16 & 0xFFFFFFFFFFFFFF8, v24 > *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
          {
            if (v17)
            {
              sub_1E4207384();
            }

            v16 = sub_1E4207514();
            v27 = v16 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = (v27 + 32 + 8 * v50);
          type metadata accessor for LibEpisodeViewModel(0);
          swift_arrayDestroy();
          v29 = v16 >> 62;
          if (v22)
          {
            if (v29)
            {
              v30 = sub_1E4207384();
            }

            else
            {
              v30 = *(v27 + 16);
            }

            v31 = v30 - v18;
            if (__OFSUB__(v30, v18))
            {
              goto LABEL_72;
            }

            v32 = (v27 + 32 + 8 * v18);
            if (v18 != v50 || v28 >= &v32[8 * v31])
            {
              memmove(v28, v32, 8 * v31);
            }

            if (v29)
            {
              v34 = sub_1E4207384();
            }

            else
            {
              v34 = *(v27 + 16);
            }

            if (__OFADD__(v34, v22))
            {
              goto LABEL_73;
            }

            *(v27 + 16) = v34 + v22;
          }

          if (v29)
          {
            v35 = sub_1E4207384();
          }

          else
          {
            v35 = *(v27 + 16);
          }

          v4 = v44;
          v36 = v21;
          v12 = v46;
          v10 = v47;
          if (v35)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1E3A6D1F4(0, v46[2] + 1, 1, v46);
            }

            v38 = v12[2];
            v37 = v12[3];
            if (v38 >= v37 >> 1)
            {
              v41 = OUTLINED_FUNCTION_35(v37);
              v12 = sub_1E3A6D1F4(v41, v38 + 1, 1, v12);
            }

            v12[2] = v38 + 1;
            v39 = &v12[4 * v38];
            v39[4] = v45;
            v39[5] = v48;
            v39[6] = v49;
            v39[7] = v16;
          }

          else
          {
          }

          v11 += 4;
          v9 = v36 - 1;
          if (!v9)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
LABEL_61:

        if (v12[2])
        {
          OUTLINED_FUNCTION_8();
          v43 = *(v42 + 224);

          v43(v12);
        }

        else
        {

          sub_1E4200524();
        }
      }
    }
  }
}

uint64_t sub_1E3A6C640(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LibEpisodeViewModel(0);
  sub_1E327F454(a1, v10);
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly);
  sub_1E327F454(a2, v9);
  v6 = sub_1E3D95C0C(v10, v5, v9);
  if (v6)
  {
    OUTLINED_FUNCTION_8();
    (*(v7 + 1096))();
  }

  return v6;
}

uint64_t sub_1E3A6C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibViewModel();

  v9 = sub_1E3B76C80(138, a1, a2, 0, 0, 0, 0);
  v10 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E6158];
  v56[0] = a3;
  v56[1] = a4;
  type metadata accessor for TextViewModel();

  if (sub_1E3C27638(23, v56, v9, 0, 0))
  {
    MEMORY[0x1E6910BF0]();
    v11 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
    {
      OUTLINED_FUNCTION_35(v11);
      sub_1E42062F4();
    }

    sub_1E4206324();
    v10 = v59;
  }

  if ([objc_opt_self() isRemoteServerConnected])
  {
    type metadata accessor for ButtonLayout();
    v12 = j__OUTLINED_FUNCTION_18();
    v13 = sub_1E3B050E8();
    v14 = j__OUTLINED_FUNCTION_18();
    v15 = sub_1E3BBD964(5, v12 & 1, v13, v14 & 1);
    (*(*v4 + 280))(&v53);
    if (v54)
    {
      sub_1E3251BE8(&v53, v56);
      v16 = v57;
      OUTLINED_FUNCTION_34_7(v56, v57);
      v18 = (*(v17 + 88))(v16);
      if (v19)
      {
        v20 = v18;
        v21 = v19;

        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
          sub_1E3280A90(0, &qword_1EE23B140, off_1E8728598);
          v24 = v57;
          v23 = v58;
          v25 = __swift_project_boxed_opaque_existential_1(v56, v57);
          v54 = v24;
          v55 = *(v23 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
          (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v25, v24);

          v27 = sub_1E37FAFF8();

          v28 = sub_1E3B76C80(60, a1, a2, v9, v15, v27, 0);
          if (v28)
          {
            v29 = v28;
            v30 = *(*v28 + 472);

            v30(MEMORY[0x1E69E7CC0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = sub_1E3C7CCAC(0);
            *(inited + 40) = v32;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 48) = 0xD000000000000018;
            *(inited + 56) = 0x80000001E4265EA0;
            v33 = sub_1E4205CB4();
            type metadata accessor for ImageViewModel();

            if (sub_1E3F5321C(39, v33, v29))
            {
              v35 = (*(*v29 + 480))(&v53);
              if (*v34)
              {
                v36 = v34;

                MEMORY[0x1E6910BF0](v37);
                sub_1E38C5A18(*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10));
                sub_1E4206324();
              }

              v35(&v53, 0);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
            v38 = swift_initStackObject();
            *(v38 + 16) = xmmword_1E4297BD0;
            *(v38 + 32) = sub_1E4205F14();
            *(v38 + 40) = v39;
            *(v38 + 48) = sub_1E4205F14();
            *(v38 + 56) = v40;
            *(v38 + 64) = sub_1E4205F14();
            *(v38 + 72) = v41;
            *(v38 + 80) = sub_1E4205F14();
            *(v38 + 88) = v42;
            *(v38 + 96) = sub_1E4205F14();
            *(v38 + 104) = v43;
            *(v38 + 112) = sub_1E4205F14();
            *(v38 + 120) = v44;
            v45 = sub_1E4205CB4();
            if ((*(*v29 + 576))())
            {
              v46 = sub_1E3797720(v45);

              OUTLINED_FUNCTION_8();
              (*(v47 + 184))(v46);
            }

            else
            {
            }

            MEMORY[0x1E6910BF0](v48);
            v51 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v51 >> 1)
            {
              OUTLINED_FUNCTION_35(v51);
              sub_1E42062F4();
            }

            sub_1E4206324();
            v10 = v59;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1E325F7A8(&v53, &qword_1ECF2A778, &unk_1E429E340);
  }

  if (!v9)
  {
LABEL_27:

    return v9;
  }

LABEL_21:
  OUTLINED_FUNCTION_111();
  v50 = *(v49 + 472);

  v50(v10);

  return v9;
}

uint64_t sub_1E3A6CD84()
{

  v1 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__isFetchDone;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__seasonViewModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680, &qword_1E42B5CA8);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  sub_1E325F7A8(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity, &qword_1ECF2A778, &unk_1E429E340);

  return v0;
}

uint64_t sub_1E3A6CE78()
{
  sub_1E3A6CD84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3A6CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF316A0;
  if (!qword_1ECF316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF316A0);
  }

  return result;
}

uint64_t sub_1E3A6CF28@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LibShowDetailsViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for LibShowDetailsViewModel(uint64_t a1)
{
  result = qword_1ECF545C0;
  if (!qword_1ECF545C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A6CFBC(uint64_t a1)
{
  sub_1E38C734C(319, &qword_1EE289F50, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1E3A6D0E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3A6D0E4(uint64_t a1)
{
  if (!qword_1ECF316A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB68, &qword_1E42A7B08);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF316A8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LibShowDetailsViewModel.Event(_BYTE *result, int a2, int a3)
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

void *sub_1E3A6D1F4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316B0, &qword_1E42B5DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316B8, &qword_1E42B5DE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3A6D324(unint64_t *a1, uint64_t a2)
{
  v4 = a1;
  v5 = *a1;

  sub_1E3A6D590(v5, a2);
  v8 = v6;
  if (v2)
  {
    goto LABEL_43;
  }

  if (v7)
  {
    sub_1E32AE9B0(v5);
LABEL_43:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v5 >> 62 ? sub_1E4207384() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_43;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E6911E60](v9, v5);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v11 = *(v5 + 8 * v9 + 32);
      }

      if (*(v11 + 264) == *(a2 + 264) && *(v11 + 272) == *(a2 + 272))
      {
      }

      else
      {
        v13 = sub_1E42079A4();

        if ((v13 & 1) == 0)
        {
          if (v8 != v9)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1E6911E60](v8, v5);
              v15 = MEMORY[0x1E6911E60](v9, v5);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_49;
              }

              v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v16)
              {
                goto LABEL_50;
              }

              if (v9 >= v16)
              {
                goto LABEL_51;
              }

              v14 = *(v5 + 32 + 8 * v8);
              v15 = *(v5 + 32 + 8 * v9);
            }

            v17 = v4;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1E37EFA58(v5);
              v18 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v18) = 0;
            }

            v19 = v5 & 0xFFFFFFFFFFFFFF8;
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

            if ((v5 & 0x8000000000000000) != 0 || v18)
            {
              v5 = sub_1E37EFA58(v5);
              v19 = v5 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v9 >= *(v19 + 16))
            {
              goto LABEL_48;
            }

            v4 = v17;
            *(v19 + 8 * v9 + 32) = v14;

            *v17 = v5;
          }

          v20 = __OFADD__(v8++, 1);
          if (v20)
          {
            goto LABEL_47;
          }
        }
      }

      v20 = __OFADD__(v9++, 1);
      if (v20)
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

void sub_1E3A6D590(unint64_t a1, uint64_t a2)
{
  v4 = sub_1E32AE9B0(a1);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      goto LABEL_17;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v6 = MEMORY[0x1E6911E60](v5, a1);
LABEL_6:
    if (*(v6 + 264) == *(a2 + 264) && *(v6 + 272) == *(a2 + 272))
    {

LABEL_17:

      return;
    }

    v8 = sub_1E42079A4();

    if (v8)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_19;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(a1 + 8 * v5 + 32);

    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

double sub_1E3A6D6A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      if (v3 == 4)
      {
        OUTLINED_FUNCTION_111();
        (*(v6 + 1088))();
      }
    }

    else
    {
      sub_1E3A6C1E0(Strong, 0);
    }
  }

  return result;
}

double sub_1E3A6D740()
{
  v1 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_5_0(v0[2] + 16, v12);
  if (swift_weakLoadStrong())
  {
    v5 = sub_1E3A6B164(v11);
    v6 = *(v4 + 24);
    if (v6)
    {
      v7 = *(v4 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
      v8 = *(v7 + 8);
      v9 = *(v8 + 96);

      v9(v1, v2, v6, v8);
    }

    (v5)(v11, 0);
    OUTLINED_FUNCTION_111();
    if ((*(v10 + 168))())
    {
      sub_1E3A6BCE8();
    }
  }

  return result;
}

double sub_1E3A6D854(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(v1 + 16, v8);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 176))(1);
  }

  OUTLINED_FUNCTION_5_0(v1 + 16, v7);
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_seasons) = a1;
  }

  OUTLINED_FUNCTION_15_0(v1 + 16, v5);
  if (swift_weakLoadStrong())
  {
    sub_1E3A6BCE8();
  }

  return result;
}

__n128 sub_1E3A6D93C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_15_0(v2 + 120, a1);
  v4 = *(v2 + 152);
  result = *(v2 + 120);
  v6 = *(v2 + 136);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1E3A6D980(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 120, a2);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 120) = *a1;
  *(v2 + 136) = v5;
  *(v2 + 152) = *(a1 + 32);
  return result;
}

__n128 sub_1E3A6DA08@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_15_0(v2 + 160, a1);
  v4 = *(v2 + 192);
  result = *(v2 + 160);
  v6 = *(v2 + 176);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1E3A6DA48(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 160, a2);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 160) = *a1;
  *(v2 + 176) = v5;
  *(v2 + 192) = *(a1 + 32);
  return result;
}

void sub_1E3A6DACC(uint64_t a1@<X8>)
{
  if (*(v1 + 241))
  {
    v3 = v13;
    (*(*v1 + 176))(v13);
    if (v14)
    {
      v3 = MEMORY[0x1E69DDCE0];
      v4 = *(MEMORY[0x1E69DDCE0] + 8);
      v5 = *(MEMORY[0x1E69DDCE0] + 16);
      v6 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v4 = *&v13[1];
      v5 = v13[2];
      v6 = *&v13[3];
    }

    v9 = *v3;
    type metadata accessor for LayoutGrid();
    (*(*v1 + 1560))();
    sub_1E3A25914();
    v10 = 0;
    if (v4 > v11)
    {
      v8 = v4;
    }

    else
    {
      v8 = v11;
    }

    *(v1 + 208) = v9;
    *(v1 + 216) = v8;
    *(v1 + 224) = v5;
    if (v6 > v12)
    {
      v7 = v6;
    }

    else
    {
      v7 = v12;
    }

    *(v1 + 232) = v7;
    *(v1 + 240) = 0;
  }

  else
  {
    v7 = *(v1 + 232);
    v5 = *(v1 + 224);
    v8 = *(v1 + 216);
    v9 = *(v1 + 208);
    v10 = *(v1 + 240);
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v10 & 1;
}

__n128 sub_1E3A6DC14(uint64_t a1)
{
  v2 = *(a1 + 32) & 1;
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v4;
  *(v1 + 240) = v2;
  return result;
}

void (*sub_1E3A6DC30(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E3A6DACC(v3);
  return sub_1E3A6DC94;
}

void sub_1E3A6DC94(void **a1)
{
  v1 = *a1;
  v2 = v1[5];
  v3 = *(v1 + 32);
  v4 = *(v1 + 1);
  *(v2 + 208) = *v1;
  *(v2 + 224) = v4;
  *(v2 + 240) = v3;
  free(v1);
}

void *sub_1E3A6DD04(uint64_t a1)
{
  v3 = (*(v1 + 1584))();
  swift_beginAccess();
  v3[25] = a1;

  OUTLINED_FUNCTION_9_2();
  v5 = (*(v4 + 1832))();
  if (!v5)
  {
    *v17 = 0u;
    v18 = 0u;
    goto LABEL_10;
  }

  v6 = (*(*v5 + 672))(v5);

  v15 = &type metadata for ViewModelKeys;
  v16 = &off_1F5D7BCA8;
  LOBYTE(v14) = 13;
  sub_1E3F9F164(&v14, v6, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v14);
  if (!*(&v18 + 1))
  {
LABEL_10:
    v11 = v17;
LABEL_11:
    sub_1E329505C(v11);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = sub_1E39BD118(0x7470697263736564, 0xEB000000006E6F69, v14);

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = sub_1E39BD118(0x74756F79616CLL, 0xE600000000000000, v7);

  if (!v8)
  {
    goto LABEL_12;
  }

  sub_1E3277E60(0x664F7265626D756ELL, 0xED000073656E694CLL, v8, &v14);

  if (!v15)
  {
    v11 = &v14;
    goto LABEL_11;
  }

  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v10 = 5;
    goto LABEL_13;
  }

  v9 = v17[0];
  v10 = [v17[0] unsignedIntegerValue];

LABEL_13:
  v12 = (*(*v3 + 1736))();
  (*(*v12 + 2056))(v10, 0);

  return v3;
}

uint64_t sub_1E3A6E044(uint64_t a1)
{
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 152) = 1;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 1;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 225) = 0u;
  *(v1 + 241) = 1;
  v2 = sub_1E3C2F9A0();
  v3 = *(* + 1736);
  v3();
  type metadata accessor for NSLineBreakMode();
  v5 = v4;
  sub_1E3C2FC98();
  v637[0] = v602[0];
  LOBYTE(v637[1]) = v602[1];
  sub_1E3C3DE00();
  v631[0] = v634[0];
  LOBYTE(v631[1]) = v634[1];
  sub_1E3C3DE00();
  LOBYTE(v622) = v628[1];
  sub_1E3C3DE00();
  LOBYTE(v609[1]) = v613[1];
  v6 = sub_1E3C3DE00();
  LOBYTE(v618) = v620;
  v14 = OUTLINED_FUNCTION_12_67(v6, v7, v8, v9, v10, v11, v12, v13, v462, v497, v531, v568, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v613[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v619, v618, v619, v620, v628[0], v622, v623, v624, v625, v626, 0);
  sub_1E3C2FCB8(v14, v15, v16, v17, v18, v19, v5, v20);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v29 = OUTLINED_FUNCTION_5_102(v21, v22, v23, v24, v25, v26, v27, v28, v463, v498, v532, v569, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v30(v29, 67);

  (v3)(v31);
  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  LOBYTE(v604) = 0;
  *v637 = xmmword_1E42B5E00;
  *v638 = xmmword_1E42B5E20;
  LOBYTE(v639) = 0;
  v634[0] = 0x4049000000000000;
  v634[1] = 0;
  v635[1] = 0;
  v635[0] = 0;
  LOBYTE(v636) = 0;
  *v631 = xmmword_1E42B5E00;
  *v632 = xmmword_1E42B5E30;
  LOBYTE(v633) = 0;
  type metadata accessor for UIEdgeInsets();
  v33 = v32;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_10_72();
  v42 = OUTLINED_FUNCTION_0_123(v34, v35, v36, v37, v38, v39, v40, v41, 0x4024000000000000, 0x4034000000000000, v533, v570, 0x4030000000000000, 0x4034000000000000, 0x4010000000000000, 0x4034000000000000, v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  sub_1E3C2FCB8(v42, v43, v44, v45, v46, &v621, v33, v47);
  OUTLINED_FUNCTION_9_73(v48, v49, v50, v51, v52, v53, v54, v55, v464, v499, v534, v571, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v64 = OUTLINED_FUNCTION_5_102(v56, v57, v58, v59, v60, v61, v62, v63, v465, v500, v535, v572, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v65(v64, 0);

  (v3)(v66);
  LOBYTE(__dst[0]) = 4;
  LOBYTE(v602[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v67, v68, v69, v70, v71, v72, v73, v74, v466, v501, v536, v573, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v83 = OUTLINED_FUNCTION_5_102(v75, v76, v77, v78, v79, v80, v81, v82, v467, v502, v537, v574, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v84(v83, 12);

  (v3)(v85);
  LOBYTE(__dst[0]) = 5;
  LOBYTE(v602[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v86, v87, v88, v89, v90, v91, v92, v93, v468, v503, v538, v575, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v102 = OUTLINED_FUNCTION_5_102(v94, v95, v96, v97, v98, v99, v100, v101, v469, v504, v539, v576, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v103(v102, 59);

  (v3)(v104);
  LOBYTE(__dst[0]) = 27;
  LOBYTE(v602[0]) = 17;
  LOBYTE(v637[0]) = 17;
  LOBYTE(v634[0]) = 15;
  LOBYTE(v631[0]) = 3;
  OUTLINED_FUNCTION_21_51();
  v105 = sub_1E3C3DE00();
  LOBYTE(v621) = v628[0];
  v113 = OUTLINED_FUNCTION_0_123(v105, v106, v107, v108, v109, v110, v111, v112, v470, v505, v540, v577, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  sub_1E3C2FCB8(v113, v114, v115, v116, v117, &v621, &qword_1F5D549D8, v118);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v127 = OUTLINED_FUNCTION_5_102(v119, v120, v121, v122, v123, v124, v125, v126, v471, v506, v541, v578, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v128(v127, 48);

  v129 = sub_1E39DFFC8();
  if (v129)
  {
    v3();
    LOBYTE(__dst[0]) = 5;
    LOBYTE(v602[0]) = 4;
    LOBYTE(v637[0]) = 4;
    sub_1E3C3DE00();
    LOBYTE(v631[0]) = v634[0];
    OUTLINED_FUNCTION_21_51();
    sub_1E3C3DE00();
    LOBYTE(v621) = v628[0];
    v130 = sub_1E3C3DE00();
    LOBYTE(v609[0]) = v613[0];
    v138 = OUTLINED_FUNCTION_1_127(v130, v131, v132, v133, v134, v135, v136, v137, v472, v507, v542, v579, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
    sub_1E3C2FCB8(v138, v139, v140, v631, &v621, v609, &unk_1F5D54B88, v141);
    OUTLINED_FUNCTION_4_106();
    OUTLINED_FUNCTION_14();
    v150 = OUTLINED_FUNCTION_5_102(v142, v143, v144, v145, v146, v147, v148, v149, v473, v508, v543, v580, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
    v151(v150, 55);
  }

  v152 = (v3)(v129);
  v153 = *sub_1E3E5FD88();
  v154 = *(*v152 + 680);
  v155 = v153;
  v154(v153);

  (v3)(v156);
  OUTLINED_FUNCTION_2_1();
  (*(v157 + 1328))(1);

  OUTLINED_FUNCTION_9_2();
  v159 = *(v158 + 1760);
  v160 = v159();
  *(&__dst[0] + 1) = 0;
  __dst[1] = xmmword_1E4296C50;
  LOBYTE(__dst[2]) = 0;
  LOBYTE(v604) = 0;
  __asm { FMOV            V1.2D, #16.0 }

  *v637 = xmmword_1E42B5E60;
  *v638 = _Q1;
  LOBYTE(v639) = 0;
  *v634 = xmmword_1E4296CE0;
  *v635 = xmmword_1E42B5E70;
  LOBYTE(v636) = 0;
  *v631 = xmmword_1E42B5E80;
  *v632 = xmmword_1E42B5E90;
  LOBYTE(v633) = 0;
  *v628 = xmmword_1E429D540;
  v629 = xmmword_1E42B5EA0;
  LOBYTE(v630) = 0;
  v173 = OUTLINED_FUNCTION_0_123(v160, v166, v167, v168, v169, v170, v171, v172, v472, v507, 0x4024000000000000, 0, 0x4018000000000000, 0xC008000000000000, 0x4026000000000000, 0x4030000000000000, v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, 0);
  sub_1E3C2FCB8(v173, v174, v175, v176, v177, v628, v33, v178);
  OUTLINED_FUNCTION_9_73(v179, v180, v181, v182, v183, v184, v185, v186, v474, v509, v544, v581, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v195 = OUTLINED_FUNCTION_5_102(v187, v188, v189, v190, v191, v192, v193, v194, v475, v510, v545, v582, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v196(v195, 0);

  (v159)(v197);
  __dst[0] = 0uLL;
  __dst[1] = *v546;
  LOBYTE(__dst[2]) = 0;
  LOBYTE(v604) = 0;
  *v637 = xmmword_1E42B5EB0;
  v638[1] = 0;
  v638[0] = 0;
  LOBYTE(v639) = 0;
  *v634 = xmmword_1E42B5EB0;
  v635[1] = 0;
  v635[0] = 0;
  LOBYTE(v636) = 0;
  *v631 = xmmword_1E4297490;
  v632[1] = 0;
  v632[0] = 0;
  LOBYTE(v633) = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_10_72();
  v206 = OUTLINED_FUNCTION_1_127(v198, v199, v200, v201, v202, v203, v204, v205, v476, v511, v546[0], v546[1], 0, 0xC01C000000000000, 0, 0, v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  sub_1E3C2FCB8(v206, v207, v208, &v621, v634, v631, v33, v209);
  OUTLINED_FUNCTION_9_73(v210, v211, v212, v213, v214, v215, v216, v217, v477, v512, v547, v583, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v226 = OUTLINED_FUNCTION_5_102(v218, v219, v220, v221, v222, v223, v224, v225, v478, v513, v548, v584, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v227(v226, 1);

  (v159)(v228);
  LOBYTE(__dst[0]) = 7;
  LOBYTE(v602[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v229, v230, v231, v232, v233, v234, v235, v236, v479, v514, v549, v585, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v245 = OUTLINED_FUNCTION_5_102(v237, v238, v239, v240, v241, v242, v243, v244, v480, v515, v550, v586, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v246(v245, 12);

  (v159)(v247);
  LOBYTE(__dst[0]) = 0;
  LOBYTE(v602[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v248, v249, v250, v251, v252, v253, v254, v255, v481, v516, v551, v587, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v264 = OUTLINED_FUNCTION_5_102(v256, v257, v258, v259, v260, v261, v262, v263, v482, v517, v552, v588, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v265(v264, 59);

  (v159)(v266);
  OUTLINED_FUNCTION_2_1();
  (*(v267 + 2056))(1, 0);

  (v159)(v268);
  OUTLINED_FUNCTION_2_1();
  (*(v269 + 2176))(4, 0);

  (v159)(v270);
  LOBYTE(__dst[0]) = 27;
  LOBYTE(v602[0]) = 21;
  LOBYTE(v637[0]) = 21;
  LOBYTE(v634[0]) = 15;
  LOBYTE(v631[0]) = 14;
  OUTLINED_FUNCTION_21_51();
  v271 = sub_1E3C3DE00();
  LOBYTE(v621) = v628[0];
  v279 = OUTLINED_FUNCTION_0_123(v271, v272, v273, v274, v275, v276, v277, v278, v483, v518, v553, v589, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  sub_1E3C2FCB8(v279, v280, v281, v282, v283, &v621, &qword_1F5D549D8, v284);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v293 = OUTLINED_FUNCTION_5_102(v285, v286, v287, v288, v289, v290, v291, v292, v484, v519, v554, v590, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v294(v293, 48);

  (v159)(v295);
  *&__dst[0] = *sub_1E3E60364();
  v296 = *&__dst[0];
  v602[0] = *sub_1E3E5FDEC();
  v297 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v298 = v602[0];
  OUTLINED_FUNCTION_20_56();
  v634[0] = v637[0];
  sub_1E3C3DE00();
  v628[0] = v631[0];
  sub_1E3C3DE00();
  v613[0] = v621;
  v299 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_2_101(v299, v300, v301, v302, v303, v304, v305, v306, v485, v520, v555, v591, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v609[0], v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v307 = __src[0];
  v308 = __src[1];
  v309 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v318 = OUTLINED_FUNCTION_5_102(v310, v311, v312, v313, v314, v315, v316, v317, v486, v521, v556, v592, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v319(v318, 21);

  *&__dst[0] = *sub_1E3E60548();
  v320 = *&__dst[0];
  sub_1E3C2FC98();
  v637[0] = v602[0];
  sub_1E3C3DE00();
  v631[0] = v634[0];
  OUTLINED_FUNCTION_21_51();
  sub_1E3C3DE00();
  v621 = v628[0];
  sub_1E3C3DE00();
  v609[0] = v613[0];
  v321 = sub_1E3C3DE00();
  v329 = OUTLINED_FUNCTION_12_67(v321, v322, v323, v324, v325, v326, v327, v328, v487, v522, v557, v593, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v619, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  sub_1E3C2FCB8(v329, v330, v331, v332, v333, v334, v297, v335);
  v336 = __src[0];
  v337 = __src[1];
  v338 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v347 = OUTLINED_FUNCTION_5_102(v339, v340, v341, v342, v343, v344, v345, v346, v488, v523, v558, v594, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v348(v347, 24);

  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  LOBYTE(v604) = 0;
  *v637 = xmmword_1E42B5EC0;
  *v638 = *v489;
  LOBYTE(v639) = 0;
  *v634 = xmmword_1E42B5ED0;
  *v635 = xmmword_1E42B5EE0;
  LOBYTE(v636) = 0;
  *v631 = xmmword_1E42A9D20;
  *v632 = xmmword_1E4298710;
  LOBYTE(v633) = 0;
  __asm { FMOV            V0.2D, #20.0 }

  *v628 = _Q0;
  v629 = _Q0;
  LOBYTE(v630) = 0;
  v358 = OUTLINED_FUNCTION_0_123(v350, v351, v352, v353, v354, v355, v356, v357, v489[0], v489[1], v559, v595, v489[0], v489[1], v489[0], v489[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, 0);
  sub_1E3C2FCB8(v358, v359, v360, v361, v362, v628, v33, v363);
  OUTLINED_FUNCTION_9_73(v364, v365, v366, v367, v368, v369, v370, v371, v490, v524, v560, v596, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v373 = *(v372 + 1600);
  v382 = OUTLINED_FUNCTION_5_102(v374, v375, v376, v377, v378, v379, v380, v381, v491, v525, v561, v597, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v383 = v373(v382, 1);
  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  LOBYTE(v604) = 1;
  *v637 = 0u;
  *v638 = 0u;
  LOBYTE(v639) = 1;
  *v634 = 0u;
  *v635 = 0u;
  LOBYTE(v636) = 1;
  *v631 = *v562;
  *v632 = *v562;
  LOBYTE(v633) = 0;
  *v628 = 0u;
  v629 = 0u;
  LOBYTE(v630) = 1;
  v391 = OUTLINED_FUNCTION_0_123(v383, v384, v385, v386, v387, v388, v389, v390, v492, v526, v562[0], v562[1], 0, 0, 0, 0, v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, 0);
  sub_1E3C2FCB8(v391, v392, v393, v394, v395, v628, v33, v396);
  OUTLINED_FUNCTION_9_73(v397, v398, v399, v400, v401, v402, v403, v404, v493, v527, v563, v598, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, *&__dst[0]);
  v405 = OUTLINED_FUNCTION_18();
  v413 = OUTLINED_FUNCTION_5_102(v405, v406, v407, v408, v409, v410, v411, v412, v494, v528, v564, v599, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v373(v413, 0);
  if (sub_1E39DFFC8())
  {
    v414.n128_u64[0] = 26.0;
    v415 = j__OUTLINED_FUNCTION_7_78(v414);
  }

  else
  {
    sub_1E39537A8();
  }

  *v634 = v415;
  v634[1] = v416;
  v635[0] = v417;
  v635[1] = v418;
  LOBYTE(v636) = 0;
  sub_1E39537A8();
  v631[0] = v419;
  v631[1] = v420;
  v632[0] = v421;
  v632[1] = v422;
  LOBYTE(v633) = 0;
  if (sub_1E39DFFC8())
  {
    v423.n128_u64[0] = 26.0;
    v424 = j__OUTLINED_FUNCTION_7_78(v423);
  }

  else
  {
    sub_1E39537A8();
  }

  *__dst = v424;
  *(&__dst[0] + 1) = v425;
  *&__dst[1] = v426;
  *(&__dst[1] + 1) = v427;
  LOBYTE(__dst[2]) = 0;
  sub_1E3C2FC98();
  *v637 = *v602;
  *v638 = *v603;
  LOBYTE(v639) = v604;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_10_72();
  sub_1E3C3DE00();
  *v609 = *v613;
  v610 = v614;
  LOBYTE(v611) = v615;
  sub_1E3C2FCB8(v634, v637, &v621, v631, v609, __dst, v33, __src);
  OUTLINED_FUNCTION_9_73(v428, v429, v430, v431, v432, v433, v434, v435, v495, v529, v565, v600, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, *&__dst[0]);
  v436 = OUTLINED_FUNCTION_18();
  v444 = OUTLINED_FUNCTION_5_102(v436, v437, v438, v439, v440, v441, v442, v443, v496, v530, v566, v601, v602[0], v602[1], v603[0], v603[1], v604, *(&v604 + 1), v605, v606, v607, v608, v609[0], v609[1], v610, *(&v610 + 1), v611, v612, v613[0], v613[1], v614, *(&v614 + 1), v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, __dst[0]);
  v373(v444, 17);
  OUTLINED_FUNCTION_9_2();
  (*(v445 + 552))(v637);
  v446 = v639;
  if (v639)
  {
    v447 = 0.0;
  }

  else
  {
    v447 = sub_1E3952BE8(*v637, *&v637[1], *v638, *&v638[1]);
  }

  (*(*v2 + 1304))(COERCE_DOUBLE(*&v447), v446 & 1);
  v448 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v449 = [objc_opt_self() blackColor];
  v450 = [v449 colorWithAlphaComponent_];

  [v448 setShadowColor_];
  [v448 setShadowOffset_];
  [v448 setShadowBlurRadius_];
  v602[0] = v448;
  v451 = sub_1E3280A90(0, &unk_1EE23AD60, 0x1E69DB7D8);
  v567 = v448;
  sub_1E3C3DE00();
  v621 = v628[0];
  sub_1E3C2FC98();
  v609[0] = v613[0];
  sub_1E3C3DE00();
  v617 = v619;
  sub_1E3C3DE00();
  v607 = v608;
  sub_1E3C3DE00();
  v605 = v606;
  sub_1E3C2FCB8(&v621, v609, &v617, &v607, v602, &v605, v451, __dst);
  v452 = __dst[0];
  v453 = __dst[1];
  v454 = __dst[2];
  *v602 = __dst[0];
  *v603 = __dst[1];
  v604 = __dst[2];
  v455 = OUTLINED_FUNCTION_18();
  (v373)(v602, 19, v455 & 1, v451);

  LOBYTE(v602[0]) = 4;
  LOBYTE(v628[0]) = 1;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_71();
  sub_1E3C3DE00();
  LOBYTE(v608) = v617;
  sub_1E3C3DE00();
  LOBYTE(v606) = v607;
  sub_1E3C2FCB8(v602, v613, &v619, v628, &v608, &v606, &unk_1F5D99680, __dst);
  LODWORD(v602[0]) = __dst[0];
  WORD2(v602[0]) = WORD2(__dst[0]);
  v456 = OUTLINED_FUNCTION_18();
  (v373)(v602, 12, v456 & 1, &unk_1F5D99680);
  __dst[0] = xmmword_1E42B5EF0;
  __dst[1] = xmmword_1E42B5EF0;
  LOBYTE(__dst[2]) = 0;
  (*(*v2 + 1792))(__dst);
  *v602 = xmmword_1E42B5F00;
  *v603 = xmmword_1E42B5F00;
  LOBYTE(v604) = 0;
  (*(*v2 + 1816))(v602);
  OUTLINED_FUNCTION_9_2();
  v458 = (*(v457 + 1760))();
  sub_1E3C37CBC(v458, 13);

  OUTLINED_FUNCTION_9_2();
  v460 = (*(v459 + 1736))();
  sub_1E3C37CBC(v460, 9);

  return v2;
}

double sub_1E3A6F398()
{

  return result;
}

uint64_t sub_1E3A6F3D0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3A6F410()
{
  v0 = sub_1E3A6F3D0();

  return MEMORY[0x1EEE6BDC0](v0, 242, 7);
}

uint64_t sub_1E3A6F464()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for LeagueStandingsCardHeaderLayout();
    v1 = sub_1E37BD150();
    *(v0 + 104) = v1;
  }

  return v1;
}

id sub_1E3A6F4CC(uint64_t *a1)
{
  v1 = *a1;
  v16[0] = xmmword_1E42B5F70;
  v16[1] = xmmword_1E4298720;
  v17 = 0;
  (*(*v1 + 184))(v16);
  sub_1E39537A8();
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v15 = 0;
  v6 = *(*v1 + 560);
  v6(v14);
  result = [objc_opt_self() isIpadInterface];
  if (result)
  {
    sub_1E39537A8();
    v12[0] = v8;
    v12[1] = v9;
    v12[2] = v10;
    v12[3] = v11;
    v13 = 0;
    return (v6)(v12);
  }

  return result;
}

uint64_t sub_1E3A6F5CC(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3A6F608(v1);
}

uint64_t sub_1E3A6F608(char a1)
{
  v2 = v1;
  *(v1 + 104) = 0;
  v4 = type metadata accessor for FlexibleGridLayout();
  v21[0] = sub_1E3B8B8C0();
  OUTLINED_FUNCTION_0_124();
  sub_1E41E1A64(v21, v5, v4, v23);

  *(v2 + 112) = *&v23[0];
  *(v2 + 120) = a1;
  v6 = sub_1E3C2F9A0();
  v7 = *(*v6 + 1712);
  swift_retain_n();
  v8 = v7();
  __asm { FMOV            V0.2D, #12.0 }

  v23[0] = _Q0;
  v23[1] = xmmword_1E4296C70;
  v24 = 0;
  (*(*v8 + 184))(v23);

  v15 = *(v7)(v14);
  (*(v15 + 312))(0x4046000000000000, 0);

  sub_1E3A6F8A8();
  sub_1E3952C94();
  v21[0] = v16;
  v21[1] = v17;
  v21[2] = v18;
  v21[3] = v19;
  v22 = 0;
  (*(*v6 + 184))(v21);

  return v6;
}

void sub_1E3A6F7F4()
{
  v1 = v0;
  *(v0 + 104) = 0;
  v2 = type metadata accessor for FlexibleGridLayout();
  v4 = sub_1E3B8B8C0();
  OUTLINED_FUNCTION_0_124();
  sub_1E41E1A64(&v4, v3, v2, &v5);

  *(v1 + 112) = v5;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3A6F8A8()
{
  v1 = (*(*v0 + 1712))();
  sub_1E3C37CBC(v1, 138);

  v2 = v0[14];

  return sub_1E3C37CBC(v2, 145);
}

uint64_t sub_1E3A6F940()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A6F994(char a1)
{
  if (a1)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1E3A6F9D4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746C7561666564;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3A6FA8C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3A6FAFC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A6FB78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A6F940();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A6FBA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A6F994(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1E3A6FBD4()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0(v0 + 104, v237);
  LOBYTE(__dst[0]) = 22;
  LOBYTE(v203[0]) = 25;
  LOBYTE(v231[0]) = 17;

  sub_1E3C2FC98();
  LOBYTE(v219[0]) = v224[0];
  sub_1E3C3DE00();
  LOBYTE(v238) = v194;
  sub_1E3C3DE00();
  LOBYTE(v210) = v233[0];
  sub_1E3C2FCB8(__dst, v219, &v238, v203, v231, &v210, &qword_1F5D549D8, __src);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_7_102();
  v3(v2, 96);

  v4 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v4);

  *&__dst[0] = 0;

  v187 = sub_1E3E5FD88();
  *&v203[0] = *v187;
  v5 = *&v203[0];
  v6 = sub_1E3755B54();
  v7 = v5;
  sub_1E3C2FC98();
  v224[0] = v231[0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_72();
  sub_1E3C3DE00();
  v233[0] = v238;
  sub_1E3C3DE00();
  v208[0] = *&v210;
  sub_1E3C2FCB8(__dst, v224, &v194, v203, v233, v208, v6, __src);
  v8 = __src[0];
  v9 = __src[1];
  v10 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v11 = OUTLINED_FUNCTION_7_102();
  v12(v11, 29);

  OUTLINED_FUNCTION_5_0(v0 + 98, v235);
  if (*(v0 + 98))
  {
    sub_1E42079A4();
  }

  v233[0] = sub_1E3952CA4();
  v233[1] = v13;
  v233[2] = v14;
  v233[3] = v15;
  v234 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
  }

  *&__dst[0] = sub_1E3952CA4();
  *(&__dst[0] + 1) = v16;
  *&__dst[1] = v17;
  *(&__dst[1] + 1) = v18;
  LOBYTE(__dst[2]) = 0;
  *&v203[0] = sub_1E3952CA4();
  *(&v203[0] + 1) = v19;
  *&v203[1] = v20;
  *(&v203[1] + 1) = v21;
  LOBYTE(v203[2]) = 0;
  v231[0] = sub_1E3952CA4();
  v231[1] = v22;
  v231[2] = v23;
  v231[3] = v24;
  LOBYTE(v231[4]) = 0;
  v224[0] = sub_1E3952CA4();
  v224[1] = v25;
  v224[2] = v26;
  v224[3] = v27;
  LOBYTE(v224[4]) = 0;
  type metadata accessor for UIEdgeInsets();
  v29 = v28;
  sub_1E3C3DE00();
  v194 = v219[0];
  v195 = v219[1];
  LOBYTE(v196) = v219[2];
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v30, v31, v32, v33, v231, v224, v29, v34);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v35 = OUTLINED_FUNCTION_7_102();
  v36(v35, 0);

  LOBYTE(v203[0]) = 10;
  LOBYTE(v231[0]) = 10;
  LOBYTE(v224[0]) = 11;
  LOBYTE(v219[0]) = 6;
  LOBYTE(v194) = 5;

  sub_1E3C3DE00();
  LOBYTE(v210) = v238;
  sub_1E3C2FCB8(&v210, v203, v231, v224, v219, &v194, &qword_1F5D54AF8, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v45 = OUTLINED_FUNCTION_9_74(v37, v38, v39, v40, v41, v42, v43, v44, v181, v187, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197, v198, v199, v200, v201, v202, v203[0]);
  v46(v45, 54);

  v229 = 2;
  v230 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_10_73();

    if ((&qword_1F5D54AF8 & 1) == 0)
    {
      v47 = 2;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v47 = 1;
LABEL_10:
  v227 = v47;
  v228 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_11_74();
    if ((&qword_1F5D54AF8 & 1) == 0)
    {
      v48 = 2;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v48 = 1;
LABEL_15:
  *&__dst[0] = v48;
  BYTE8(__dst[0]) = 0;
  *&v203[0] = 1;
  BYTE8(v203[0]) = 0;
  v224[0] = 1;
  LOBYTE(v224[1]) = 0;
  type metadata accessor for SymbolScale(0);
  v50 = v49;
  sub_1E3C3DE00();
  *&v194 = *&v219[0];
  BYTE8(v194) = BYTE8(v219[0]);
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v51, v52, v53, v54, &v194, v224, v50, v55);
  memcpy(__dst, v231, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v56 = OUTLINED_FUNCTION_7_102();
  v57(v56, 91);

  OUTLINED_FUNCTION_5_0(v0 + 112, v226);
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_10_73();

    if (v50)
    {
      v58 = 22;
    }

    else
    {
      v58 = 19;
    }
  }

  else
  {

    v58 = 22;
  }

  LOBYTE(v203[0]) = v58;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_11_74();
    if (v50)
    {
      v59 = 22;
    }

    else
    {
      v59 = 19;
    }
  }

  else
  {

    v59 = 22;
  }

  LOBYTE(v224[0]) = v59;
  LOBYTE(v219[0]) = 25;
  LOBYTE(v194) = 15;
  LOBYTE(v238) = 19;
  sub_1E3C3DE00();
  LOBYTE(v208[0]) = LOBYTE(v210);
  sub_1E3C2FCB8(v208, v203, v224, v219, &v194, &v238, &qword_1F5D549D8, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v68 = OUTLINED_FUNCTION_9_74(v60, v61, v62, v63, v64, v65, v66, v67, v182, v188, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197, v198, v199, v200, v201, v202, v203[0]);
  v69(v68, 48);

  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_10_73();

    if (&qword_1F5D549D8)
    {
      v70 = 5;
    }

    else
    {
      v70 = 3;
    }
  }

  else
  {

    v70 = 5;
  }

  LOBYTE(v203[0]) = v70;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_11_74();
    if (&qword_1F5D549D8)
    {
      v71 = 5;
    }

    else
    {
      v71 = 3;
    }
  }

  else
  {

    v71 = 5;
  }

  LOBYTE(v224[0]) = v71;
  sub_1E3C3DE00();
  LOBYTE(v194) = v219[0];
  sub_1E3C3DE00();
  LOBYTE(v210) = v238;
  sub_1E3C3DE00();
  LOBYTE(v206[0]) = v208[0];
  sub_1E3C3DE00();
  LOBYTE(v225[0]) = v204[0];
  sub_1E3C2FCB8(&v194, v203, v224, &v210, v206, v225, &unk_1F5D54B88, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v80 = OUTLINED_FUNCTION_9_74(v72, v73, v74, v75, v76, v77, v78, v79, v183, v189, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197, v198, v199, v200, v201, v202, v203[0]);
  v81(v80, 55);

  LOBYTE(v203[0]) = 5;

  sub_1E3C2FC98();
  LOBYTE(v219[0]) = v224[0];
  sub_1E3C3DE00();
  LOBYTE(v238) = v194;
  sub_1E3C3DE00();
  LOBYTE(v208[0]) = LOBYTE(v210);
  sub_1E3C3DE00();
  LOBYTE(v204[0]) = v206[0];
  sub_1E3C3DE00();
  LOBYTE(v222) = v225[0];
  sub_1E3C2FCB8(v203, v219, &v238, v208, v204, &v222, &qword_1F5D54AF8, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v90 = OUTLINED_FUNCTION_9_74(v82, v83, v84, v85, v86, v87, v88, v89, v184, v190, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197, v198, v199, v200, v201, v202, v203[0]);
  v91(v90, 54);

  v92 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v92);

  *&v203[0] = 0;
  v224[0] = *v191;
  v93 = v224[0];

  v94 = v93;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_15_72();
  sub_1E3C3DE00();
  v210 = *&v238;
  sub_1E3C3DE00();
  *&v206[0] = v208[0];
  sub_1E3C3DE00();
  v225[0] = *&v204[0];
  sub_1E3C2FCB8(v203, &v194, &v210, v224, v206, v225, v6, __dst);
  v95 = __dst[0];
  v96 = __dst[1];
  v97 = __dst[2];
  v203[0] = __dst[0];
  v203[1] = __dst[1];
  v203[2] = __dst[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v106 = OUTLINED_FUNCTION_9_74(v98, v99, v100, v101, v102, v103, v104, v105, v185, v191, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197, v198, v199, v200, v201, v202, v203[0]);
  v107(v106, 29);

  OUTLINED_FUNCTION_5_0(v0 + 120, v225);
  v222 = 0x4010000000000000;
  v223 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_12_68();
    sub_1E42079A4();
    OUTLINED_FUNCTION_10_73();

    if ((BYTE8(v97) & 1) == 0)
    {
      v108 = 0x4010000000000000;
      goto LABEL_40;
    }
  }

  else
  {

    OUTLINED_FUNCTION_12_68();
  }

  v108 = 0x4008000000000000;
LABEL_40:
  v220 = v108;
  v221 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_11_74();
    if ((BYTE8(v97) & 1) == 0)
    {
      v109 = 0x4010000000000000;
      goto LABEL_45;
    }
  }

  else
  {
  }

  v109 = 0x4008000000000000;
LABEL_45:
  *&__dst[0] = v109;
  BYTE8(__dst[0]) = 0;
  *&v203[0] = 0x4018000000000000;
  BYTE8(v203[0]) = 0;
  *&v219[0] = 0x4008000000000000;
  BYTE8(v219[0]) = 0;
  v110 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  *&v238 = v194;
  BYTE8(v238) = BYTE8(v194);
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v111, v112, v113, v114, &v238, v219, v110, v115);
  memcpy(__dst, v224, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v116 = OUTLINED_FUNCTION_7_102();
  v117(v116, 6);

  v217 = 0x403A000000000000;
  v218 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_10_73();

    if ((v110 & 1) == 0)
    {
      v118 = 0x403A000000000000;
      goto LABEL_50;
    }
  }

  else
  {
  }

  v118 = 0x4036000000000000;
LABEL_50:
  v215 = v118;
  v216 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_11_74();
    if ((v110 & 1) == 0)
    {
      v119 = 0x403A000000000000;
      goto LABEL_55;
    }
  }

  else
  {
  }

  v119 = 0x4036000000000000;
LABEL_55:
  *&__dst[0] = v119;
  BYTE8(__dst[0]) = 0;
  *&v203[0] = 0x4041000000000000;
  BYTE8(v203[0]) = 0;
  *&v194 = 0x4032000000000000;
  BYTE8(v194) = 0;
  v120 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v210 = *&v238;
  LOBYTE(v211) = BYTE8(v238);
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v121, v122, v123, v124, &v210, &v194, v120, v125);
  memcpy(__dst, v219, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v126 = OUTLINED_FUNCTION_7_102();
  v127(v126, 2);

  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_10_73();
  }

  else
  {
  }

  v210 = sub_1E3952CA4();
  v211 = v128;
  v212 = v129;
  v213 = v130;
  v214 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
  }

  *&v203[0] = sub_1E3952CA4();
  *(&v203[0] + 1) = v131;
  *&v203[1] = v132;
  *(&v203[1] + 1) = v133;
  LOBYTE(v203[2]) = 0;
  v194 = 0uLL;
  v195 = xmmword_1E42B5FC0;
  LOBYTE(v196) = 0;
  *&v238 = sub_1E3952CA4();
  *(&v238 + 1) = v134;
  *&v239 = v135;
  *(&v239 + 1) = v136;
  v240 = 0;
  v208[0] = COERCE_ID(sub_1E3952CA4());
  v208[1] = v137;
  v208[2] = v138;
  v208[3] = v139;
  v209 = 0;
  sub_1E3C3DE00();
  v204[0] = v206[0];
  v204[1] = v206[1];
  v205 = v207;
  sub_1E3C2FCB8(v204, &v210, v203, &v194, &v238, v208, v29, __dst);
  memcpy(v203, __dst, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v148 = OUTLINED_FUNCTION_9_74(v140, v141, v142, v143, v144, v145, v146, v147, v186, v192, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197, v198, v199, v200, v201, v202, v203[0]);
  v149(v148, 0);

  v150 = *(v0 + 120);
  v151 = *(MEMORY[0x1E69DDCE0] + 16);
  v238 = *MEMORY[0x1E69DDCE0];
  v239 = v151;
  v240 = 0;
  v152 = *(*v150 + 184);

  v152(&v238);

  *&v194 = *sub_1E3E60364();
  v153 = v194;
  v208[0] = *sub_1E3E5FDEC();
  v154 = v208[0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_17_61();
  OUTLINED_FUNCTION_14_80();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_16_65();
  OUTLINED_FUNCTION_8_72();
  sub_1E3C2FCB8(v155, v156, v157, &v199, v208, &v197, v6, v158);
  v159 = v203[0];
  v160 = v203[1];
  v161 = v203[2];
  v194 = v203[0];
  v195 = v203[1];
  v196 = v203[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v162 + 1600))(&v194, 21, v163 & 1, v6);

  *&v194 = 0;
  v208[0] = *v193;
  v164 = v208[0];

  v165 = v164;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_17_61();
  OUTLINED_FUNCTION_14_80();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_16_65();
  OUTLINED_FUNCTION_8_72();
  sub_1E3C2FCB8(v166, v167, v168, v208, &v199, &v197, v6, v169);
  v170 = v203[0];
  v171 = v203[1];
  v172 = v203[2];
  v194 = v203[0];
  v195 = v203[1];
  v196 = v203[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v173 + 1600))(&v194, 29, v174 & 1, v6);

  v175 = *(v1 + 120);

  v176 = *sub_1E3E603B8();
  v177 = *(*v175 + 752);
  v178 = v176;
  v177(v176);

  v179 = *(**(v1 + 120) + 1728);

  v179(0);

  return result;
}

void sub_1E3A70DC8(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 98);
  *(v1 + 98) = a1 & 1;
  OUTLINED_FUNCTION_5_0(v1 + 98, v10);
  if (*(v1 + 98))
  {
    v4 = 0x746C7561666564;
  }

  else
  {
    v4 = 0x6C6C616D73;
  }

  if (*(v1 + 98))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v3)
  {
    v6 = 0x746C7561666564;
  }

  else
  {
    v6 = 0x6C6C616D73;
  }

  if (v3)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      sub_1E3A6FBD4();
    }
  }
}

uint64_t sub_1E3A70EF8(char a1)
{
  *(v1 + 98) = 1;
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v1 + 112) = sub_1E383BCC0();
  v3 = type metadata accessor for ProgressLayout();
  *(v1 + 120) = sub_1E3FB3220(v3);
  v4 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_14_0(v4 + 98, v5);
  *(v4 + 98) = a1 & 1;

  sub_1E3A6FBD4();
  sub_1E3A70FA8();

  return v4;
}

double sub_1E3A70FA8()
{
  OUTLINED_FUNCTION_5_0(v0 + 104, v7);

  sub_1E3C37CBC(v1, 39);

  OUTLINED_FUNCTION_5_0(v0 + 112, v6);

  sub_1E3C37CBC(v2, 23);

  OUTLINED_FUNCTION_15_0(v0 + 120, v3);

  sub_1E3C37CBC(v4, 115);

  return result;
}

uint64_t sub_1E3A71074()
{
  *(v0 + 98) = 1;
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v0 + 112) = sub_1E383BCC0();
  v1 = type metadata accessor for ProgressLayout();
  *(v0 + 120) = sub_1E3FB3220(v1);
  v2 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_14_0(v2 + 98, v3);
  *(v2 + 98) = 1;

  sub_1E3A6FBD4();
  sub_1E3A70FA8();

  return v2;
}

uint64_t sub_1E3A7111C()
{
  v0 = sub_1E37DB800();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1E3A71150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF316C0;
  if (!qword_1ECF316C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF316C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackStatusLayout.Size(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3A712A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 528);

  v6(v7);

  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_40_13();
  sub_1E32752B0(v8, v9, v10, v11);
  OUTLINED_FUNCTION_45_26();

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_35_30();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A71434()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 336);

  v6(v7);

  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_40_13();
  sub_1E32752B0(v8, v9, v10, v11);
  OUTLINED_FUNCTION_45_26();

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_35_30();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A715C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = (v3 ^ 1) & v1;
  v20 = sub_1E324FBDC();
  (*(v14 + 16))(v18, v20, v12);
  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();
  if (os_log_type_enabled(v21, v22))
  {
    v29 = v11;
    v23 = v9;
    v24 = v7;
    v25 = v5;
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v19 & 1;
    _os_log_impl(&dword_1E323F000, v21, v22, "LibDocumentViewInteractor:: showAccountSettingsButton: %{BOOL}d", v26, 8u);
    v27 = v26;
    v5 = v25;
    v7 = v24;
    v9 = v23;
    v11 = v29;
    MEMORY[0x1E69143B0](v27, -1, -1);
  }

  (*(v14 + 8))(v18, v12);

  sub_1E3B705C4(v11, v9, v7, v5, v19 & 1);
  OUTLINED_FUNCTION_8();
  (*(v28 + 200))();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A717B0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_27_33();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle);
    OUTLINED_FUNCTION_8();
    v4 = *(v3 + 312);

    v4(v5);
    OUTLINED_FUNCTION_36_28();
    OUTLINED_FUNCTION_33_35();
    sub_1E3A715C4();

    sub_1E324FBDC();
    v6 = OUTLINED_FUNCTION_30_37();
    v7(v6);
    v8 = sub_1E41FFC94();
    v9 = sub_1E4206814();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      v10[1] = v2;
      OUTLINED_FUNCTION_44_28(&dword_1E323F000, v11, v12, "LibDocumentViewInteractor:: on receive isLibraryOnlyCountry %{BOOL}d");
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    else
    {
    }

    v13 = OUTLINED_FUNCTION_13_8();
    v14(v13);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A719A8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_27_33();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle);
    OUTLINED_FUNCTION_8();
    v4 = *(v3 + 504);

    v4(v5);
    OUTLINED_FUNCTION_36_28();
    OUTLINED_FUNCTION_33_35();
    sub_1E3A715C4();

    sub_1E324FBDC();
    v6 = OUTLINED_FUNCTION_30_37();
    v7(v6);
    v8 = sub_1E41FFC94();
    v9 = sub_1E4206814();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      v10[1] = v2;
      OUTLINED_FUNCTION_44_28(&dword_1E323F000, v11, v12, "LibDocumentViewInteractor:: on receive isOffline %{BOOL}d");
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    else
    {
    }

    v13 = OUTLINED_FUNCTION_13_8();
    v14(v13);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A71BD0()
{
}

uint64_t sub_1E3A71C5C(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1E3A71D24()
{
  OUTLINED_FUNCTION_31_1();
  v65 = v0;
  v67 = v1;
  v78 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __dst = v11;
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_6_89();
  sub_1E3A74D3C(v12, v13, &unk_1E42EB398);
  v14 = sub_1E4201754();
  v76 = v15;
  v77 = v14;
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_5_103();
  sub_1E3A74D3C(v16, v17, &unk_1E42BD340);
  v75 = sub_1E4201754();
  v63 = v18;
  v82 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316D0, &unk_1E42B60C0);
  sub_1E42038E4();
  v58 = v116;
  v59 = v115;
  type metadata accessor for LibDataSourceManager(0);
  OUTLINED_FUNCTION_15_73();
  sub_1E3A74D3C(v19, v20, &unk_1E42BF008);

  v71 = sub_1E42010C4();
  v74 = v21;
  type metadata accessor for LibMenuItem(0);
  sub_1E3A74D3C(&qword_1ECF316C8, type metadata accessor for LibMenuItem, &unk_1E42B6A60);

  v22 = sub_1E42010C4();
  v72 = v23;
  v73 = v22;
  if (sub_1E38BBD0C(*(v8 + 32), 10, v24))
  {
    type metadata accessor for CollectionEditableModel(0);
    v25 = OUTLINED_FUNCTION_51_1();
    sub_1E3845488(v25 & 1);
    j__OUTLINED_FUNCTION_18();
    sub_1E3AC5824();
    v61 = v27;
    v62 = v26;
    v56 = v28;
    v60 = v29;
  }

  else
  {
    v30 = sub_1E3AC5818();
    v31 = v30[1];
    v62 = *v30;
    v56 = *(v30 + 16);
    v60 = v30[3];

    v61 = v31;
  }

  if (v6)
  {
    v69 = v6;
    v70 = sub_1E3A7697C;
  }

  else
  {

    v69 = v8;
    v70 = sub_1E3A724B0;
  }

  v114 = 0;
  type metadata accessor for LibCommons();

  v32 = sub_1E41A3164(v8);
  v34 = v33;
  type metadata accessor for Metrics(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v36;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v38;
  *(inited + 120) = v37;
  *(inited + 96) = v32;
  *(inited + 104) = v34;

  v39 = sub_1E4205CB4();
  v57 = sub_1E3BA5560(v39, 1);
  if (v78)
  {
    v40 = v4;
  }

  else
  {
    v41 = (*(*v8 + 200))();
    v78 = v42;
    if (v42)
    {
      v40 = v41;
    }

    else
    {
      v40 = *(v8 + 40);
      v78 = *(v8 + 48);
    }
  }

  v66 = v65 & 1;
  v68 = v67 & 1;
  v43 = v8;
  v44 = *(v8 + 72);
  v45 = *(v43 + 80);
  type metadata accessor for LibDocumentViewInteractor(0);
  v46 = swift_allocObject();
  v47 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_showcaseValue;
  type metadata accessor for ShowcaseValue(0);

  *(v46 + v47) = sub_1E40AAAB8();
  v48 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_viewMetricsRecorder;
  type metadata accessor for ViewMetricsRecorder();
  *(v46 + v48) = sub_1E3FEFA68();
  v49 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle;
  *(v46 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_cancellables) = MEMORY[0x1E69E7CD0];
  v50 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarId;
  *(v46 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_dataSourceManager) = v10;
  v51 = (v46 + v50);
  *v51 = v44;
  v51[1] = v45;
  v52 = (v46 + v49);
  *v52 = v40;
  v52[1] = v78;
  type metadata accessor for NavigationBarObservableModel(0);

  *(v46 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarObservableModel) = sub_1E39EE6D8();
  v53 = sub_1E3B500B4();

  sub_1E3A712A4();
  sub_1E3A71434();

  v112 = 0;
  v115 = v71;
  v116 = v74;
  v117 = v73;
  v118 = v72;
  v119 = v77;
  v120 = v76;
  v121 = v75;
  v122 = v63;
  v123 = v70;
  v124 = v69;
  v79 = v114;
  v125 = v114;
  *v126 = *v113;
  *&v126[3] = *&v113[3];
  v127 = v59;
  v128 = v58;
  v129 = sub_1E38074D0;
  v130 = v53;
  v131 = 0;
  *&v132[3] = *&v111[3];
  *v132 = *v111;
  v133 = v62;
  v134 = v61;
  v135 = v56 & 1;
  *v136 = *v110;
  *&v136[3] = *&v110[3];
  v137 = v60;
  v138 = v66;
  *&v139[3] = *&v109[3];
  *v139 = *v109;
  v140 = v57;
  v141 = v68;
  v142 = v58;
  v143 = v59;

  sub_1E3A7254C();
  sub_1E42038E4();

  sub_1E325F6F0(&v143, &qword_1ECF316D0, &unk_1E42B60C0);
  sub_1E325F6F0(&v142, &qword_1ECF316D8, &qword_1E42B60D0);
  v54 = v82;
  v55 = v83;
  __src[0] = v71;
  __src[1] = v74;
  __src[2] = v73;
  __src[3] = v72;
  __src[4] = v77;
  __src[5] = v76;
  __src[6] = v75;
  __src[7] = v63;
  __src[8] = v70;
  __src[9] = v69;
  LOBYTE(__src[10]) = v79;
  HIDWORD(__src[10]) = *&v113[3];
  *(&__src[10] + 1) = *v113;
  __src[11] = v82;
  __src[12] = v83;
  __src[13] = sub_1E38074D0;
  __src[14] = v53;
  LOBYTE(__src[15]) = 0;
  HIDWORD(__src[15]) = *&v111[3];
  *(&__src[15] + 1) = *v111;
  __src[16] = v62;
  __src[17] = v61;
  LOBYTE(__src[18]) = v56 & 1;
  HIDWORD(__src[18]) = *&v110[3];
  *(&__src[18] + 1) = *v110;
  __src[19] = v60;
  LOBYTE(__src[20]) = v66;
  HIDWORD(__src[20]) = *&v109[3];
  *(&__src[20] + 1) = *v109;
  __src[21] = v57;
  LOBYTE(__src[22]) = v68;
  v82 = v71;
  v83 = v74;
  v84 = v73;
  v85 = v72;
  v86 = v77;
  v87 = v76;
  v88 = v75;
  v89 = v63;
  v90 = v70;
  v91 = v69;
  v92 = v79;
  *&v93[3] = *&v113[3];
  *v93 = *v113;
  v94 = v54;
  v95 = v55;
  v96 = sub_1E38074D0;
  v97 = v53;
  v98 = 0;
  *&v99[3] = *&v111[3];
  *v99 = *v111;
  v100 = v62;
  v101 = v61;
  v102 = v56 & 1;
  *&v103[3] = *&v110[3];
  *v103 = *v110;
  v104 = v60;
  v105 = v66;
  *&v106[3] = *&v109[3];
  *v106 = *v109;
  v107 = v57;
  v108 = v68;
  sub_1E37DABC0(__src, v80);
  sub_1E3A72A50(&v82);
  memcpy(__dst, __src, 0xB1uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A724B0()
{
  type metadata accessor for Route(0);

  j__OUTLINED_FUNCTION_18();
  v0 = OUTLINED_FUNCTION_67_0();
  return sub_1E3F4C85C(v0, v1, v2);
}

uint64_t type metadata accessor for LibDocumentViewInteractor(uint64_t a1)
{
  result = qword_1EE296490;
  if (!qword_1EE296490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E3A7254C()
{
  v1 = v0;
  OUTLINED_FUNCTION_111();
  if ((*(v2 + 504))() & 1) != 0 || (OUTLINED_FUNCTION_111(), ((*(v3 + 312))()) || (OUTLINED_FUNCTION_111(), ((*(v4 + 552))()))
  {
    OUTLINED_FUNCTION_111();
    v6 = (*(v5 + 456))();
    v7 = sub_1E32AE9B0(v6);

    if (v7 <= 1)
    {
      v9 = *(v0 + 24);
      if (sub_1E38BBD0C(*(v9 + 32), 10, v8))
      {
        OUTLINED_FUNCTION_12_6();
        if (((*(v10 + 256))() & 1) != 0 || (OUTLINED_FUNCTION_12_6(), (*(v11 + 312))(), v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158, &qword_1E42A8F28), OUTLINED_FUNCTION_0_32(), sub_1E32752B0(v13, v14, v15, v16), v17 = sub_1E4149048(v12), , (v17 & 1) == 0))
        {
          OUTLINED_FUNCTION_12_6();
          (*(v24 + 208))(0, 0);
        }

        else
        {
          result = [objc_opt_self() sharedInstance];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v19 = result;
          v20 = sub_1E3741090(0x5952415242494CLL, 0xE700000000000000, result);
          v22 = v21;

          OUTLINED_FUNCTION_12_6();
          (*(v23 + 208))(v20, v22);
        }

        OUTLINED_FUNCTION_12_6();
        v26 = (*(v25 + 200))();
        if (v27)
        {
          v28 = v26;
          v29 = v27;
        }

        else
        {
          v28 = *(v9 + 40);
          v29 = *(v9 + 48);
        }

        type metadata accessor for LibDocumentViewInteractor(0);
        OUTLINED_FUNCTION_3_108();
        sub_1E3A74D3C(v30, v31, &unk_1E42BD340);
        v32 = sub_1E4200BC4();
        v34 = *(v9 + 72);
        v33 = *(v9 + 80);
        v35 = (v32 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarId);
        *v35 = v34;
        v35[1] = v33;

        v36 = (v32 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle);
        *v36 = v28;
        v36[1] = v29;

        OUTLINED_FUNCTION_36();
        v38 = *(v37 + 504);

        v38(v39);

        OUTLINED_FUNCTION_36();
        v41 = *(v40 + 312);

        v41(v42);

        sub_1E3A715C4();
      }
    }
  }

  type metadata accessor for LibMenuItem(0);
  v43 = *(v1 + 24);
  if (sub_1E3A8BA7C(v43[32]))
  {
    v44 = (*(*v43 + 312))();
    v45 = v44 ? v44 : MEMORY[0x1E69E7CC0];
    v46 = sub_1E32AE9B0(v45);

    if (!v46)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v47 + 696))();
  OUTLINED_FUNCTION_67_0();
  sub_1E3B70934();
  v49 = v48;

  return v49;
}

uint64_t sub_1E3A72A80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95[14] = a1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316E0, &qword_1E42B60D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v95 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316E8, &qword_1E42B60E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v100 = v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316F0, &qword_1E42B60E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v101 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316F8, &qword_1E42B60F0);
  OUTLINED_FUNCTION_0_10();
  v95[3] = v11;
  v95[4] = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v95[2] = v13;
  v95[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31700, &qword_1E42B60F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v95[6] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31708, &qword_1E42B6100);
  OUTLINED_FUNCTION_0_10();
  v95[9] = v17;
  v95[10] = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v95[8] = v19;
  v95[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31710, &qword_1E42B6108);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v95[13] = v21;
  v95[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31718, &qword_1E42B6110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v95[11] = v23;
  v24 = sub_1E4202314();
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v95[1] = type metadata accessor for NavigationBarItems(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = *(v2 + 104);
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);
  v35 = type metadata accessor for LibDocumentViewInteractor(0);
  OUTLINED_FUNCTION_3_108();
  sub_1E3A74D3C(v36, v37, &unk_1E42BD340);
  v95[15] = v32;
  v95[16] = v35;
  v97 = v33;
  v96 = v34;
  v38 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarObservableModel);

  if ([objc_opt_self() isPad] && (*(v2 + 176) & 1) != 0)
  {
    sub_1E42022D4();
  }

  else if (*(v2 + 160))
  {
    sub_1E42022E4();
  }

  else
  {
    sub_1E42022F4();
  }

  v39 = j__OUTLINED_FUNCTION_18();
  v99 = v31;
  sub_1E39EFBA8(v38, v27, v39 & 1, 0, 0, 0);
  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31728, &qword_1E42B6118);
  sub_1E3A73CA0();
  OUTLINED_FUNCTION_13_79();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_47_24(v40);
  v41 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31730, &qword_1E42B6120) + 36)];
  *v41 = sub_1E3A74774;
  v41[1] = v27;
  v41[2] = 0;
  v41[3] = 0;
  OUTLINED_FUNCTION_13_79();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_47_24(v42);
  v43 = &v5[*(v103 + 36)];
  *v43 = 0;
  *(v43 + 1) = 0;
  *(v43 + 2) = sub_1E3A7477C;
  *(v43 + 3) = v27;
  v44 = *(v2 + 32);
  if (v44)
  {
    OUTLINED_FUNCTION_50_20();
    OUTLINED_FUNCTION_50_20();
    type metadata accessor for Route(0);
    v103 = v2;
    OUTLINED_FUNCTION_12_69();
    sub_1E3A74D3C(v45, v46, &unk_1E42DFC80);
    v47 = v44;
    v48 = sub_1E4200BC4();
    sub_1E4200BC4();

    v49 = sub_1E379D97C(v47, v48);
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v5;
    v57 = v100;
    sub_1E3741EA0(v56, v100, &qword_1ECF316E0, &qword_1E42B60D8);
    v58 = (v57 + *(v98 + 36));
    *v58 = v49;
    v58[1] = v51;
    v58[2] = v53;
    v58[3] = v55;
    v59 = v103;
    v60 = sub_1E4203DA4();
    v98 = v61;
    v62 = v101 + *(v102 + 36);
    v63 = sub_1E4203DA4();
    *v62 = v63;
    *(v62 + 8) = v64;
    v65 = *(v59 + 24);
    v66 = v65[32];
    v104[0] = v66;
    LOBYTE(v106[0]) = 13;
    sub_1E37DA4B8(v63, v64, v67);
    if (OUTLINED_FUNCTION_49_23())
    {
      goto LABEL_9;
    }

    v104[0] = v66;
    LOBYTE(v106[0]) = 0;
    if (OUTLINED_FUNCTION_49_23())
    {
      OUTLINED_FUNCTION_8();
      if (((*(v91 + 216))() & 1) == 0)
      {
LABEL_9:
        v68 = 0.0;
        if ((*(*v65 + 464))())
        {
          v69 = 1.0;
        }

        else
        {
          v69 = 0.0;
        }

        goto LABEL_12;
      }
    }

    else if (((*(*v65 + 464))() & 1) == 0 || ((*(*v65 + 256))() & 1) == 0)
    {
      goto LABEL_9;
    }

    v69 = 0.0;
    v68 = 1.0;
LABEL_12:
    v70 = objc_opt_self();
    v71 = [v70 sharedInstance];
    if (v71)
    {
      v72 = v71;
      v97 = v60;
      v73 = sub_1E3741090(0xD000000000000015, 0x80000001E4267120, v71);
      v75 = v74;

      v76 = [v70 sharedInstance];
      if (v76)
      {
        v77 = v76;
        v78 = sub_1E3741090(0xD000000000000017, 0x80000001E4267100, v76);
        v80 = v79;

        sub_1E39FA1A8(v73, v75, v78, v80, v107);
        v81 = v107[0];
        v82 = v107[1];
        v83 = v107[2];
        v84 = v107[3];
        LOBYTE(v80) = v108;
        memset(v106, 0, 40);
        OUTLINED_FUNCTION_8();
        v86 = v65[32];
        v87 = (*(v85 + 312))();
        OUTLINED_FUNCTION_36();
        v89 = (*(v88 + 872))();
        sub_1E414B880(v106, v86, v87 & 1, v89 & 1, v104);
        v105 = v69;
        sub_1E3743538(v104, v106, &qword_1ECF31798, &unk_1E42B62F0);
        *(v62 + 16) = v81;
        *(v62 + 24) = v82;
        *(v62 + 32) = v83;
        *(v62 + 40) = v84;
        *(v62 + 48) = v80;
        *(v62 + 56) = v68;
        sub_1E3743538(v106, v62 + 64, &qword_1ECF31798, &unk_1E42B62F0);

        sub_1E380E99C();
        sub_1E325F6F0(v104, &qword_1ECF31798, &unk_1E42B62F0);
        sub_1E325F6F0(v106, &qword_1ECF31798, &unk_1E42B62F0);

        sub_1E3264CE0(v83, v84);
        *(v62 + 160) = sub_1E4202744();
        v90 = v98;
        *(v62 + 168) = v97;
        *(v62 + 176) = v90;
        sub_1E3741EA0(v100, v101, &qword_1ECF316E8, &qword_1E42B60E0);
        sub_1E3A748F4();
        sub_1E3A74D3C(qword_1EE2770F0, type metadata accessor for NavigationBarItems, &unk_1E42B1D60);
        sub_1E39EF294();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_50_20();
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_6_89();
  sub_1E3A74D3C(v92, v93, &unk_1E42EB398);
  result = sub_1E4201744();
  __break(1u);
  return result;
}

void sub_1E3A73850()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0D8, &unk_1E42A8ED0);
  OUTLINED_FUNCTION_0_10();
  v22 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = v2[3];
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 856))(v5);
  (*(*v5 + 440))(v7);
  v8 = v2[4];
  if (v8)
  {
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_12_69();
    sub_1E3A74D3C(v9, v10, &unk_1E42DFC80);
    v11 = v8;
    sub_1E4200BC4();
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0x198))();

    (*(*v5 + 336))(v12);
    OUTLINED_FUNCTION_13_79();
    v13 = swift_allocObject();
    memcpy((v13 + 16), v2, 0xB1uLL);
    sub_1E37DABC0(v2, &v24);
    OUTLINED_FUNCTION_11_9();
    sub_1E32752B0(v14, v15, v16, v17);
    sub_1E42006A4();

    (*(v22 + 8))(v0, v23);
    OUTLINED_FUNCTION_36();
    (*(v18 + 296))();
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_6_89();
    v21 = sub_1E3A74D3C(v19, v20, &unk_1E42EB398);
    OUTLINED_FUNCTION_6_46(v21);
    __break(1u);
  }
}

void sub_1E3A73B90(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (*a2 && (v4 = *a1) != 0 && (v5 = sub_1E32AE9B0(*a2), v5 < sub_1E32AE9B0(v4)) && (v7 = sub_1E38BBD0C(*(*(a3 + 24) + 32), 10, v6), (v7 & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](v7);
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  else
  {
    sub_1E3A7254C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790, &qword_1E42B62E8);
    sub_1E4203904();
  }
}

void sub_1E3A73CA0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v115 = v2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A0, &unk_1E42B6300);
  OUTLINED_FUNCTION_0_10();
  v106 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v5);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A8, &qword_1E42EBDF0);
  OUTLINED_FUNCTION_0_10();
  v110 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317B0, &qword_1E42B6310);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317B8, &qword_1E42B6318);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317C0, &qword_1E42B6320);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317C8, &qword_1E42B6328);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v92 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317D0, &unk_1E42B6330);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v92 - v26;
  v117 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790, &qword_1E42B62E8);
  sub_1E42038F4();
  v28 = v120;
  if (v120)
  {
    v98 = v24;
    v100 = v15;
    v101 = v23;
    v102 = v20;
    v103 = v27;
    v104 = v13;
    v105 = v18;
    v29 = *(v1 + 136);
    v96 = *(v1 + 128);
    v95 = v29;
    v94 = *(v1 + 144);
    v93 = *(v1 + 152);
    v99 = v1;
    type metadata accessor for LibDocumentViewInteractor(0);
    OUTLINED_FUNCTION_3_108();
    sub_1E3A74D3C(v30, v31, &unk_1E42BD340);
    v32 = *(OUTLINED_FUNCTION_18_51() + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_showcaseValue);

    v33 = *(OUTLINED_FUNCTION_18_51() + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarObservableModel);

    v34 = *(OUTLINED_FUNCTION_18_51() + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_viewMetricsRecorder);

    v35 = v108;
    v36 = v93;
    sub_1E3E85A74(v28, v96, v95, v94, v93, v32, v33, v34, v108, 0);

    v38 = v28;
    v39 = v36;
    if (v36)
    {
      v40 = (*(*v36 + 456))(v37);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08, &qword_1E42B6340);
      OUTLINED_FUNCTION_46_24();
      OUTLINED_FUNCTION_19_58(&qword_1ECF317E8, &qword_1ECF317A0, &unk_1E42B6300);
      v40 = OUTLINED_FUNCTION_34_35();
      v52 = OUTLINED_FUNCTION_13_8();
      v53(v52);
    }

    v54 = v112;
    v55 = swift_allocObject();
    *(v55 + 16) = v38;
    v56 = v99;
    memcpy((v55 + 24), v99, 0xB1uLL);
    (*(v110 + 32))(v54, v35, v111);
    v57 = v109;
    *(v54 + *(v109 + 52)) = v40;
    v58 = (v54 + *(v57 + 56));
    *v58 = sub_1E3A753FC;
    v58[1] = v55;
    v59 = v116;
    v97 = v38;
    if (v39)
    {
      v60 = *(*v39 + 496);

      v61 = OUTLINED_FUNCTION_51_20();
      v62 = v60(v61);
    }

    else
    {

      OUTLINED_FUNCTION_51_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08, &qword_1E42B6340);
      OUTLINED_FUNCTION_46_24();
      OUTLINED_FUNCTION_19_58(&qword_1ECF317E8, &qword_1ECF317A0, &unk_1E42B6300);
      v62 = OUTLINED_FUNCTION_34_35();
      v63 = OUTLINED_FUNCTION_13_8();
      v64(v63);
    }

    OUTLINED_FUNCTION_13_79();
    v65 = swift_allocObject();
    memcpy((v65 + 16), v56, 0xB1uLL);
    v66 = v113;
    sub_1E3741EA0(v54, v113, &qword_1ECF317B0, &qword_1E42B6310);
    *(v66 + *(v59 + 52)) = v62;
    v67 = (v66 + *(v59 + 56));
    *v67 = sub_1E3A75BF8;
    v67[1] = v65;
    OUTLINED_FUNCTION_8();
    v69 = *(v68 + 312);
    v70 = OUTLINED_FUNCTION_51_20();
    v71 = v69(v70);
    if (v71)
    {
      v72 = v71;
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
    }

    v120 = v72;
    OUTLINED_FUNCTION_13_79();
    v73 = swift_allocObject();
    memcpy((v73 + 16), v56, 0xB1uLL);
    OUTLINED_FUNCTION_51_20();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8, &qword_1E42A8D60);
    OUTLINED_FUNCTION_1_33();
    v77 = sub_1E32752B0(v75, &qword_1ECF317B8, &qword_1E42B6318, v76);
    v78 = sub_1E3A74C88();
    v79 = v114;
    sub_1E4203524();

    sub_1E325F6F0(v66, &qword_1ECF317B8, &qword_1E42B6318);
    v80 = *(*v97 + 320);

    v80(v81);

    OUTLINED_FUNCTION_31_34();
    *(v82 - 256) = v74;
    v118 = v77;
    v119 = v78;
    v83 = OUTLINED_FUNCTION_17_62();
    v84 = v101;
    v85 = v104;
    sub_1E40A802C();

    (*(v100 + 8))(v79, v85);
    v86 = v102;
    v87 = v105;
    (*(v102 + 16))(v103, v84, v105);
    swift_storeEnumTagMultiPayload();
    v88 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
    *&v117 = v85;
    *(&v117 + 1) = v83;
    OUTLINED_FUNCTION_16_66();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v90, &qword_1ECF317D8, &qword_1E42F51B0, v91);
    OUTLINED_FUNCTION_38_24();
    sub_1E4201F44();

    (*(v86 + 8))(v84, v87);
  }

  else
  {
    *v27 = sub_1E4201B84();
    *(v27 + 1) = 0;
    v27[16] = 1;
    *(v27 + 3) = 0;
    v27[32] = 1;
    *(v27 + 5) = 0;
    v27[48] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317D8, &qword_1E42F51B0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFF8, &qword_1E42A8D60);
    OUTLINED_FUNCTION_1_33();
    v46 = sub_1E32752B0(v42, v43, v44, v45);
    sub_1E3A74C88();
    OUTLINED_FUNCTION_31_34();
    *(v47 - 256) = v41;
    v118 = v46;
    v119 = v48;
    v49 = OUTLINED_FUNCTION_17_62();
    *&v117 = v13;
    *(&v117 + 1) = v49;
    OUTLINED_FUNCTION_16_66();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v50, &qword_1ECF317D8, &qword_1E42F51B0, v51);
    OUTLINED_FUNCTION_38_24();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A747C4(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for LibLockupViewModel(0);
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1E3A748F4()
{
  result = qword_1ECF31738;
  if (!qword_1ECF31738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF316F0, &qword_1E42B60E8);
    sub_1E3A749AC();
    sub_1E32752B0(&qword_1EE289330, &qword_1ECF31768, &qword_1E42B6130, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31738);
  }

  return result;
}

unint64_t sub_1E3A749AC()
{
  result = qword_1ECF31740;
  if (!qword_1ECF31740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF316E8, &qword_1E42B60E0);
    v3 = sub_1E3A74A38();
    sub_1E389B90C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31740);
  }

  return result;
}

unint64_t sub_1E3A74A38()
{
  result = qword_1ECF31748;
  if (!qword_1ECF31748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF316E0, &qword_1E42B60D8);
    sub_1E3A74AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31748);
  }

  return result;
}

unint64_t sub_1E3A74AC4()
{
  result = qword_1ECF31750;
  if (!qword_1ECF31750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31730, &qword_1E42B6120);
    sub_1E32752B0(&qword_1ECF31758, &qword_1ECF31760, &qword_1E42B6128, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31750);
  }

  return result;
}

uint64_t sub_1E3A74B7C()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 256))();
  if (result)
  {
    return (*(*v1 + 472))(0, 0);
  }

  return result;
}

unint64_t sub_1E3A74C04()
{
  result = qword_1ECF31778;
  if (!qword_1ECF31778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D158, &qword_1E42A8F28);
    sub_1E3A74C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31778);
  }

  return result;
}

unint64_t sub_1E3A74C88()
{
  result = qword_1ECF31780;
  if (!qword_1ECF31780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFF8, &qword_1E42A8D60);
    sub_1E3A74D3C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel, &protocol conformance descriptor for ViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31780);
  }

  return result;
}

uint64_t sub_1E3A74D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3A74D84(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E38BBD0C(*(*(v3 + 40) + 32), *a1, a3);
  if (result)
  {
    sub_1E3A7254C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790, &qword_1E42B62E8);
    return sub_1E4203904();
  }

  return result;
}

uint64_t sub_1E3A74DF8(uint64_t a1)
{
  v2 = type metadata accessor for NavigationBarItems(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3A74E54(unint64_t *a1)
{
  v2 = v1;
  if (*(v1 + 64))
  {
    v3 = *a1;
    OUTLINED_FUNCTION_12_6();
    v5 = *(v4 + 216);

    v7 = v5(v6);

    v8 = objc_opt_self();
    if (([v8 isPad] & 1) != 0 && (sub_1E3A24FDC(v7) & 1) != 0 || objc_msgSend(v8, sel_isPhone)) && (sub_1E38BBD0C(*(*(v2 + 40) + 32), 0, v9))
    {
      v10 = sub_1E32AE9B0(v3);
      for (i = 0; v10 != i; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1E6911E60](i, v3);
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        sub_1E37D4BA4(v12, v13, v14);
        sub_1E4206254();
        sub_1E4206254();
        if (v25 == v23 && v26 == v24)
        {

          return;
        }

        v16 = sub_1E42079A4();

        if (v16)
        {
          return;
        }
      }

      v17 = [objc_opt_self() currentNavigationController];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 popViewControllerAnimated_];
      }
    }
  }

  else
  {
LABEL_25:
    type metadata accessor for AppEnvironment(0);
    OUTLINED_FUNCTION_5_103();
    v22 = sub_1E3A74D3C(v20, v21, &unk_1E42BD340);
    OUTLINED_FUNCTION_6_46(v22);
    __break(1u);
  }
}

uint64_t sub_1E3A751A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1E3A751E4(uint64_t result, int a2, int a3)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3A75264()
{
  sub_1E3A7254C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790, &qword_1E42B62E8);
  return sub_1E4203904();
}

void sub_1E3A752C8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v7 = v2;
  v8 = v1;
  v5 = v1;
  v6 = v2;
  sub_1E3743538(&v8, &v4, &qword_1ECF316D0, &unk_1E42B60C0);
  sub_1E3743538(&v7, &v4, &qword_1ECF316D8, &qword_1E42B60D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790, &qword_1E42B62E8);
  sub_1E42038F4();
  if (v4)
  {
    sub_1E325F6F0(&v8, &qword_1ECF316D0, &unk_1E42B60C0);
    sub_1E325F6F0(&v7, &qword_1ECF316D8, &qword_1E42B60D0);
  }

  else
  {
    v3 = sub_1E3A7254C();
    v5 = v1;
    v6 = v2;
    v4 = v3;
    sub_1E4203904();
    sub_1E325F6F0(&v8, &qword_1ECF316D0, &unk_1E42B60C0);
    sub_1E325F6F0(&v7, &qword_1ECF316D8, &qword_1E42B60D0);
  }
}

void sub_1E3A753FC(uint64_t *a1)
{
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = *a1;
  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 464))();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v60 = v4;
  v10 = MEMORY[0x1E69E7CC0];
  v75[0] = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v8);
  OUTLINED_FUNCTION_42_33();
  v63 = v10;
  while (v4 != v5)
  {
    if (v2)
    {
      MEMORY[0x1E6911E60](v5, v9);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_104;
      }
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_103;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v63 = v75[0];
      ++v5;
    }

    else
    {

      ++v5;
    }
  }

  v11 = 0;
  v61 = v63 & 0xC000000000000001;
  v62 = sub_1E32AE9B0(v63);
  v66 = v10;
  v64 = v6;
LABEL_15:
  if (v11 == v62)
  {

    v76 = v10;
    v45 = sub_1E32AE9B0(v66);
    v46 = 0;
    for (i = v45; ; v45 = i)
    {
      while (1)
      {
        if (v46 == v45)
        {

          v56 = sub_1E3A747C4(v76);

          if (v56)
          {
            OUTLINED_FUNCTION_13_79();
            v57 = swift_allocObject();
            memcpy((v57 + 16), (v60 + 24), 0xB1uLL);
            OUTLINED_FUNCTION_36();
            v59 = *(v58 + 456);
            sub_1E37DABC0(v60 + 24, v75);
            v59(v56, sub_1E3A768C4, v57);
          }

          return;
        }

        if ((v66 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x1E6911E60](v46, v66);
        }

        else
        {
          if (v46 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_107;
          }

          v47 = *(v66 + 32 + 8 * v46);
        }

        v12 = __OFADD__(v46++, 1);
        if (v12)
        {
          goto LABEL_106;
        }

        if (*(v6 + 16))
        {
          break;
        }

LABEL_88:
      }

      v48 = *(v47 + 16);
      v49 = *(v47 + 24);
      sub_1E4207B44();
      sub_1E4207B64();
      if (v49)
      {

        OUTLINED_FUNCTION_40_13();
        sub_1E4206014();
      }

      sub_1E4207BA4();
      OUTLINED_FUNCTION_21_52();
      if ((v50 & 1) == 0)
      {

        goto LABEL_88;
      }

      v51 = *(v6 + 48);
      while (1)
      {
        v52 = (v51 + 16 * v75);
        v53 = v52[1];
        if (!v53)
        {
          if (!v49)
          {
            goto LABEL_90;
          }

          goto LABEL_85;
        }

        if (v49)
        {
          v54 = *v52 == v48 && v53 == v49;
          if (v54 || (sub_1E42079A4() & 1) != 0)
          {
            break;
          }
        }

LABEL_85:
        OUTLINED_FUNCTION_24_37();
        if ((v55 & 1) == 0)
        {

          goto LABEL_91;
        }
      }

LABEL_90:
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_53();
      sub_1E4207594();
      sub_1E4207554();
LABEL_91:
      v6 = v64;
    }
  }

  sub_1E34AF4E4(v11, v61 == 0, v63);
  if (v61)
  {
    MEMORY[0x1E6911E60](v11, v63);
  }

  else
  {
  }

  v12 = __OFADD__(v11++, 1);
  if (v12)
  {
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_8();
  v14 = (*(v13 + 1040))();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  v16 = sub_1E32AE9B0(v15);
  v17 = 0;
  v69 = v15 & 0xFFFFFFFFFFFFFF8;
  v70 = v15 & 0xC000000000000001;
  v65 = v15;
  v18 = v10;
  v67 = v16;
  while (1)
  {
    if (v17 == v16)
    {

      v75[0] = v66;

      sub_1E379738C(v18);

      v66 = v75[0];
      v6 = v64;
      goto LABEL_15;
    }

    if (v70)
    {
      MEMORY[0x1E6911E60](v17, v65);
    }

    else
    {
      if (v17 >= *(v69 + 16))
      {
        goto LABEL_97;
      }
    }

    v12 = __OFADD__(v17++, 1);
    if (v12)
    {
      break;
    }

    v74 = v18;
    OUTLINED_FUNCTION_111();
    v20 = (*(v19 + 872))();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = v21 >> 62;
    if (v21 >> 62)
    {
      v23 = sub_1E4207384();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v18 >> 62;
    if (v18 >> 62)
    {
      v25 = OUTLINED_FUNCTION_52_20();
    }

    else
    {
      v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v25 + v23;
    if (__OFADD__(v25, v23))
    {
      goto LABEL_98;
    }

    v73 = v23;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v28 == 1 && (v29 = v74 & 0xFFFFFFFFFFFFFF8, v30 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1, v30 >= v26))
    {
      v18 = v74;
    }

    else
    {
      if (v24)
      {
        OUTLINED_FUNCTION_52_20();
      }

      v18 = sub_1E4207514();
      v29 = v18 & 0xFFFFFFFFFFFFFF8;
      v30 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v31 = *(v29 + 16);
    if (v22)
    {
      v36 = v29;
      v37 = sub_1E4207384();
      v29 = v36;
      v32 = v37;
      if (!v37)
      {
        goto LABEL_51;
      }

LABEL_47:
      v33 = v30 - v31;
      v34 = v73;
      if (v33 < v73)
      {
        goto LABEL_100;
      }

      v71 = v18;
      v35 = v29 + 8 * v31 + 32;
      v68 = v29;
      if (v22)
      {
        if (v32 < 1)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_0_32();
        sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, v38);
        for (j = 0; j != v32; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          v40 = sub_1E3797EB0(v75, j, v21);
          v42 = *v41;

          (v40)(v75, 0);
          *(v35 + 8 * j) = v42;
        }

        v34 = v73;
        v10 = MEMORY[0x1E69E7CC0];
        v16 = v67;
      }

      else
      {
        type metadata accessor for ViewModel();
        swift_arrayInitWithCopy();
      }

      v18 = v71;
      if (v34 > 0)
      {
        v43 = *(v68 + 16);
        v12 = __OFADD__(v43, v34);
        v44 = v43 + v34;
        if (v12)
        {
          goto LABEL_101;
        }

        *(v68 + 16) = v44;
        v18 = v71;
      }
    }

    else
    {
      v32 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_47;
      }

LABEL_51:

      if (v73 > 0)
      {
        goto LABEL_99;
      }
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
}

void sub_1E3A75BF8(uint64_t *a1)
{
  v4 = v1;
  v5 = *a1;
  *v104 = *(v1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790, &qword_1E42B62E8);
  sub_1E42038F4();
  v6 = v103[0];
  if (!v103[0])
  {
    return;
  }

  v85 = v5;
  v81 = v4;
  OUTLINED_FUNCTION_8();
  v7 += 58;
  v8 = *v7;
  v9 = v7;

  v11 = v8(v10);

  if (!v11)
  {
    goto LABEL_129;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v104[0] = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v11);
  OUTLINED_FUNCTION_42_33();
  v84 = v12;
  while (v9 != v6)
  {
    if (v2)
    {
      MEMORY[0x1E6911E60](v6, v11);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_134;
      }
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_133;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v84 = v104[0];
      ++v6;
    }

    else
    {

      ++v6;
    }
  }

  v13 = 0;
  v82 = v84 & 0xC000000000000001;
  v83 = sub_1E32AE9B0(v84);
  v14 = v12;
LABEL_16:
  v87 = v14;
  if (v13 == v83)
  {

    v103[0] = v12;
    v49 = sub_1E32AE9B0(v14);
    v50 = v14;
    v51 = v49;
    v52 = 0;
    v53 = v50 & 0xC000000000000001;
    v54 = v50 & 0xFFFFFFFFFFFFFF8;
    v99 = v49;
    v101 = v50 + 32;
    v96 = v50 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v52 == v51)
          {

            v65 = sub_1E3A747C4(v103[0]);

            if (v65)
            {
              v66 = sub_1E32AE9B0(v65);
              if (!v66)
              {
LABEL_126:
                v68 = 0;
                goto LABEL_127;
              }

              v67 = v66;
              v68 = 0;
              v69 = 0;
              v70 = v65 & 0xC000000000000001;
              v102 = v65 & 0xFFFFFFFFFFFFFF8;
              v95 = v66;
              v97 = v65;
              v93 = v65 & 0xC000000000000001;
              while (1)
              {
                if (v70)
                {
                  MEMORY[0x1E6911E60](v69, v65);
                }

                else
                {
                  if (v69 >= *(v102 + 16))
                  {
                    goto LABEL_142;
                  }
                }

                v15 = __OFADD__(v69++, 1);
                if (v15)
                {
                  goto LABEL_140;
                }

                OUTLINED_FUNCTION_8();
                (*(v71 + 1496))(v104);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  break;
                }

                __swift_destroy_boxed_opaque_existential_1(v103);
                OUTLINED_FUNCTION_8();
                v73 = *(v72 + 464);

                v75 = v73(v74);

                if (!v75)
                {
                  break;
                }

                v76 = sub_1E32AE9B0(v75);
                for (i = 0; ; ++i)
                {
                  if (v76 == i)
                  {

                    v67 = v95;
                    v65 = v97;
                    v70 = v93;
LABEL_116:
                    v15 = __OFADD__(v68++, 1);
                    if (v15)
                    {
                      goto LABEL_141;
                    }

                    goto LABEL_117;
                  }

                  if ((v75 & 0xC000000000000001) != 0)
                  {
                    v78 = MEMORY[0x1E6911E60](i, v75);
                  }

                  else
                  {
                    if (i >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_136;
                    }

                    v78 = *(v75 + 8 * i + 32);
                  }

                  if (__OFADD__(i, 1))
                  {
                    goto LABEL_135;
                  }

                  if (*v78 == _TtC8VideosUI31LibDownloadingEpisodesViewModel)
                  {
                    break;
                  }
                }

                swift_beginAccess();
                v79 = *(v78 + 288);

                v15 = __OFADD__(v68, v79);
                v68 += v79;
                if (v15)
                {
                  goto LABEL_143;
                }

                v67 = v95;
                v65 = v97;
                v70 = v93;
LABEL_117:
                if (v69 == v67)
                {
LABEL_127:

                  if (*(v81 + 168))
                  {
                    OUTLINED_FUNCTION_8();
                    (*(v80 + 560))(v68);
                  }

                  goto LABEL_129;
                }
              }

              goto LABEL_116;
            }

LABEL_129:

            return;
          }

          if (v53)
          {
            v55 = MEMORY[0x1E6911E60](v52, v87);
          }

          else
          {
            if (v52 >= *(v54 + 16))
            {
              goto LABEL_139;
            }

            v55 = *(v101 + 8 * v52);
          }

          v15 = __OFADD__(v52++, 1);
          if (v15)
          {
            goto LABEL_138;
          }

          if (*(v85 + 16))
          {
            break;
          }
        }

        v56 = *(v55 + 16);
        v57 = *(v55 + 24);
        sub_1E4207B44();
        sub_1E4207B64();
        if (v57)
        {

          OUTLINED_FUNCTION_40_13();
          sub_1E4206014();
        }

        sub_1E4207BA4();
        OUTLINED_FUNCTION_21_52();
        if (v59)
        {
          break;
        }
      }

      v60 = *(v58 + 48);
      while (1)
      {
        v61 = (v60 + 16 * v104);
        v62 = v61[1];
        if (!v62)
        {
          if (!v57)
          {
            goto LABEL_91;
          }

          goto LABEL_87;
        }

        if (v57)
        {
          v63 = *v61 == v56 && v62 == v57;
          if (v63 || (sub_1E42079A4() & 1) != 0)
          {
            break;
          }
        }

LABEL_87:
        OUTLINED_FUNCTION_24_37();
        if ((v64 & 1) == 0)
        {

          goto LABEL_92;
        }
      }

LABEL_91:
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_53();
      sub_1E4207594();
      sub_1E4207554();
LABEL_92:
      v54 = v96;
      v51 = v99;
    }
  }

  sub_1E34AF4E4(v13, v82 == 0, v84);
  if (v82)
  {
    MEMORY[0x1E6911E60](v13, v84);
  }

  else
  {
  }

  v15 = __OFADD__(v13++, 1);
  if (v15)
  {
    goto LABEL_137;
  }

  OUTLINED_FUNCTION_8();
  v17 = (*(v16 + 1040))();
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v12;
  }

  v19 = sub_1E32AE9B0(v18);
  v91 = v18 & 0xFFFFFFFFFFFFFF8;
  v92 = v18 & 0xC000000000000001;
  v86 = v18;
  v90 = v18 + 32;
  v20 = 0;
  v21 = v12;
  v88 = v19;
  while (1)
  {
    do
    {
      while (1)
      {
        if (v20 == v19)
        {

          v104[0] = v87;

          sub_1E379738C(v21);

          v14 = v104[0];
          goto LABEL_16;
        }

        if (v92)
        {
          v23 = MEMORY[0x1E6911E60](v20, v86);
          v22 = v23;
        }

        else
        {
          if (v20 >= *(v91 + 16))
          {
            goto LABEL_122;
          }

          v22 = *(v90 + 8 * v20);
        }

        v15 = __OFADD__(v20++, 1);
        if (v15)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v100 = v21;
        v24 = (*(*v22 + 872))(v23);
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v12;
        }

        v26 = v25 >> 62;
        if (v25 >> 62)
        {
          v27 = sub_1E4207384();
        }

        else
        {
          v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v28 = v21 >> 62;
        if (v21 >> 62)
        {
          v29 = OUTLINED_FUNCTION_52_20();
        }

        else
        {
          v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = v29 + v27;
        if (__OFADD__(v29, v27))
        {
          goto LABEL_123;
        }

        v98 = v27;

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v32 = v28 ? 0 : isUniquelyReferenced_nonNull_bridgeObject;
        if (v32 == 1 && (v33 = v100 & 0xFFFFFFFFFFFFFF8, v34 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1, v34 >= v30))
        {
          v21 = v100;
        }

        else
        {
          if (v28)
          {
            OUTLINED_FUNCTION_52_20();
          }

          v21 = sub_1E4207514();
          v33 = v21 & 0xFFFFFFFFFFFFFF8;
          v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        }

        v35 = *(v33 + 16);
        if (v26)
        {
          break;
        }

        v36 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_48;
        }

LABEL_52:

        if (v98 > 0)
        {
          goto LABEL_124;
        }
      }

      v40 = v33;
      v41 = sub_1E4207384();
      v33 = v40;
      v36 = v41;
      if (!v41)
      {
        goto LABEL_52;
      }

LABEL_48:
      v37 = v34 - v35;
      v38 = v98;
      if (v37 < v98)
      {
        goto LABEL_125;
      }

      v94 = v21;
      v39 = v33 + 8 * v35 + 32;
      v89 = v33;
      if (v26)
      {
        if (v36 < 1)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_0_32();
        sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, v42);
        for (j = 0; j != v36; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          v44 = sub_1E3797EB0(v104, j, v25);
          v46 = *v45;

          (v44)(v104, 0);
          *(v39 + 8 * j) = v46;
        }

        v38 = v98;
        v12 = MEMORY[0x1E69E7CC0];
        v19 = v88;
      }

      else
      {
        type metadata accessor for ViewModel();
        swift_arrayInitWithCopy();
      }

      v21 = v94;
    }

    while (v38 <= 0);
    v47 = *(v89 + 16);
    v15 = __OFADD__(v47, v38);
    v48 = v47 + v38;
    if (v15)
    {
      break;
    }

    *(v89 + 16) = v48;
    v21 = v94;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1E3A76690(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *a2;
  if ((sub_1E38BBD0C(*(*(v4 + 40) + 32), 10, a3) & 1) != 0 && !sub_1E32AE9B0(v5))
  {
    v6 = *(v4 + 64);
    if (v6)
    {
      v7 = *(*v6 + 216);

      v9 = v7(v8);

      if ([objc_opt_self() isPad] & 1) == 0 || (sub_1E3A2511C(v9) & 1) == 0 || (OUTLINED_FUNCTION_8(), ((*(v10 + 864))()))
      {
        v11 = [objc_opt_self() currentNavigationController];
        if (v11)
        {
          v12 = v11;
          v16 = [v11 popViewControllerAnimated_];
        }
      }
    }

    else
    {
      type metadata accessor for AppEnvironment(0);
      OUTLINED_FUNCTION_5_103();
      v15 = sub_1E3A74D3C(v13, v14, &unk_1E42BD340);
      OUTLINED_FUNCTION_6_46(v15);
      __break(1u);
    }
  }
}

uint64_t objectdestroyTm_21()
{

  sub_1E3264CE0(*(v0 + 80), *(v0 + 88));

  sub_1E3264CE0(*(v0 + 120), *(v0 + 128));

  OUTLINED_FUNCTION_13_79();

  return swift_deallocObject();
}

uint64_t sub_1E3A768C4()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 312))();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1E32AE9B0(v4);

  if (!v5)
  {
    return (*(*v1 + 264))(1);
  }

  return result;
}

void sub_1E3A76980(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE90, &unk_1E42A8970) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24[-v16 - 8];
  v18 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0(v3 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate, v24);
  v19 = *(v14 + 56);
  sub_1E329E324(v3 + v18, v17);
  sub_1E329E324(a1, &v17[v19]);
  OUTLINED_FUNCTION_23_25(v17);
  if (v20)
  {
    OUTLINED_FUNCTION_23_25(&v17[v19]);
    if (v20)
    {
      sub_1E325F6F0(v17, &unk_1ECF28E20, &unk_1E42986D0);
      return;
    }

    goto LABEL_9;
  }

  sub_1E329E324(v17, v2);
  OUTLINED_FUNCTION_23_25(&v17[v19]);
  if (v20)
  {
    (*(v7 + 8))(v2, v5);
LABEL_9:
    sub_1E325F6F0(v17, &qword_1ECF2CE90, &unk_1E42A8970);
LABEL_10:
    sub_1E3A76C24();
    return;
  }

  (*(v7 + 32))(v11, &v17[v19], v5);
  sub_1E3274AF8(&qword_1EE28A458, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v21 = sub_1E4205E84();
  v22 = *(v7 + 8);
  v22(v11, v5);
  v22(v2, v5);
  sub_1E325F6F0(v17, &unk_1ECF28E20, &unk_1E42986D0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }
}

void sub_1E3A76C24()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) == 1)
  {
    sub_1E3A77CF8();

    sub_1E3A7756C();
  }
}

uint64_t sub_1E3A76C68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate, v5);
  return sub_1E329E324(v1 + v3, a1);
}

uint64_t sub_1E3A76CB8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_27_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate, v17);
  sub_1E329E324(v1 + v8, v2);
  OUTLINED_FUNCTION_11_3(v1 + v8, v16);
  sub_1E329EFA0(a1, v1 + v8);
  swift_endAccess();
  sub_1E3A76980(v2);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v9, v10, v11);
  OUTLINED_FUNCTION_77();
  return sub_1E325F6F0(v12, v13, v14);
}

void (*sub_1E3A76D90(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate, v3);
  sub_1E329E324(v1 + v8, v7);
  return sub_1E3A76E5C;
}

void sub_1E3A76E5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1E329E324(v4, v3);
    sub_1E3A76CB8(v3);
    sub_1E325F6F0(v4, &unk_1ECF28E20, &unk_1E42986D0);
  }

  else
  {
    sub_1E3A76CB8(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3A76EE8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3A76F38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix, &v12);
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  v8 = (v2 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix, v13);
  v9 = v8[1];
  if (!v9)
  {
    if (!v6)
    {
    }

LABEL_10:
    sub_1E3A76C24();
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v10 = *v8 == v7 && v9 == v6;
  if (!v10 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1E3A76FF4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_5_0(v4, v3);
  v5 = v4[1];
  v3[3] = *v4;
  v3[4] = v5;

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A77074(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_1E3A76F38(v3, v4);
  }

  else
  {
    sub_1E3A76F38(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t sub_1E3A770EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A77160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1E3A771B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);

  return sub_1E3A771FC(v1, v2, v3);
}

uint64_t sub_1E3A771FC(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3A77280()
{
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter__rentalExpirationInfo, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8, &qword_1E42B6398);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3A772EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31800, &qword_1E42B63A0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_77();
  v2();
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter__rentalExpirationInfo, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8, &qword_1E42B6398);
  sub_1E4200654();
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_27_0();
  return v4(v3);
}

uint64_t sub_1E3A77404()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor, v3);
  return *(v0 + v1);
}

void sub_1E3A77440(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor, &v6);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor, v7);
  if (v4 != *(v1 + v5))
  {
    sub_1E3A76C24();
  }
}

void (*sub_1E3A774B4(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor, v3);
  *(v3 + 32) = *(v1 + v4);
  return sub_1E3A7752C;
}

void sub_1E3A7752C(uint64_t a1)
{
  v1 = *a1;
  sub_1E3A77440(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E3A7756C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v74 = v10;
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v67 - v13;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v71 = (v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  (*(*v0 + 152))();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
  {
    (*(v23 + 32))(v27, v20, v21);
    v33 = [objc_opt_self() sharedInstance];
    v34 = v33;
    if ((*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isContentAvailable) & 1) == 0)
    {
      if (v33)
      {
        v52 = sub_1E3741090(0x494156415F544F4ELL, 0xED0000454C42414CLL, v33);
        v40 = v53;
      }

      else
      {
        v40 = 0;
        v52 = 0;
      }

      LOBYTE(v44) = 1;
LABEL_28:
      v66 = (*(*v1 + 248))();
      sub_1E3A771FC(v52, v40, v66 & v44 & 1);

      return (*(v23 + 8))(v27, v21);
    }

    v35 = type metadata accessor for RentalExpirationPresenter(0);
    v36 = (*(*v0 + 176))(v35);
    sub_1E3A7851C(v27, v36, v37);
    v70 = v38;
    v40 = v39;
    v42 = v41;
    LODWORD(v44) = v43;

    if (v34)
    {
      v45 = OUTLINED_FUNCTION_8_73();
      v47 = sub_1E3741090(v45, v46, v34);
      if (*(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload))
      {
        if (!v48)
        {
          goto LABEL_24;
        }

        if (v70 == v47 && v48 == v40)
        {
        }

        else
        {
          v50 = sub_1E42079A4();
          v69 = v40;
          v51 = v50;

          if ((v51 & 1) == 0)
          {
            v40 = v69;
LABEL_24:
            if (v42 >= 1 && *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) == 1)
            {
              v55 = v42;
              sub_1E3A77CF8();
              v56 = swift_allocObject();
              swift_weakInit();
              aBlock[4] = sub_1E3A78D38;
              aBlock[5] = v56;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1E378AEA4;
              aBlock[3] = &block_descriptor_50;
              v67 = _Block_copy(aBlock);
              v76 = MEMORY[0x1E69E7CC0];
              sub_1E3274AF8(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              v69 = v40;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
              sub_1E378AD28();
              v68 = v44;
              sub_1E42072E4();
              sub_1E4204054();
              swift_allocObject();
              v57 = sub_1E4204024();

              *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator) = v57;

              sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
              v58 = sub_1E4206A04();
              v59 = v72;
              sub_1E4204004();
              v71 = v34;
              v60 = v73;
              v61.n128_f64[0] = v55;
              sub_1E4204074(v61);
              v62 = *(v74 + 8);
              v63 = v59;
              v44 = v75;
              v62(v63, v75);
              sub_1E4206994();
              v40 = v69;

              v64 = v60;
              v34 = v71;
              v65 = v44;
              LOBYTE(v44) = v68;
              v62(v64, v65);
            }

            v52 = v70;
            goto LABEL_28;
          }
        }

        v70 = sub_1E3741090(0x57454E4552, 0xE500000000000000, v34);
        v40 = v54;
        goto LABEL_24;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload))
    {
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  sub_1E325F6F0(v20, &unk_1ECF28E20, &unk_1E42986D0);
  v28 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v28, v2);
  v29 = sub_1E41FFC94();
  v30 = sub_1E42067F4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1E323F000, v29, v30, "RentalExpirationPresenter::expiration date is invalid.", v31, 2u);
    MEMORY[0x1E69143B0](v31, -1, -1);
  }

  return (*(v4 + 8))(v8, v2);
}

double sub_1E3A77CF8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator))
  {

    sub_1E4204034();
  }

  *(v0 + v1) = 0;

  return result;
}

double sub_1E3A77D64(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring);
  *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) = a1;
  if (v2 != *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring))
  {
    if (*(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring))
    {
      sub_1E3A7756C();
    }

    else
    {
      return sub_1E3A77CF8();
    }
  }

  return result;
}

uint64_t sub_1E3A77D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v14 = swift_allocObject();
  sub_1E3A77E1C(a1, a2, a3, v10, v9, v8, v7);
  return v14;
}

uint64_t sub_1E3A77E1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v35 = a6;
  v36 = a7;
  v37 = a5;
  v34 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8, &qword_1E42B6398);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  v17 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  v18 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v7 + v17, 1, 1, v18);
  v19 = (v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter__rentalExpirationInfo;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F0, &qword_1E42B6348);
  sub_1E4200634();
  (*(v15 + 32))(v7 + v20, v8, v13);
  v21 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor) = 0;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) = 0;
  v22 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload) = 0;
  v23 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isContentAvailable;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isContentAvailable) = 0;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator) = 0;
  v24 = *(v18 - 8);
  v25 = v31;
  (*(v24 + 16))(v12, v31, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  OUTLINED_FUNCTION_11_3(v7 + v17, v39);
  sub_1E32ABDC0(v12, v7 + v17);
  swift_endAccess();
  OUTLINED_FUNCTION_3_0(v19, v39);
  v26 = v33;
  *v19 = v32;
  v19[1] = v26;

  OUTLINED_FUNCTION_3_0(v7 + v21, v38);
  v27 = v35;
  *(v7 + v21) = v34;
  *(v7 + v22) = v27;
  v28 = v37;
  *(v7 + v23) = v36;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_shouldCheckIfExpiringSoon) = v28;
  sub_1E3A7756C();
  (*(v24 + 8))(v25, v18);
  return v7;
}

uint64_t sub_1E3A780C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_shouldCheckIfExpiringSoon) != 1)
  {
    return 1;
  }

  (*(*v0 + 152))(v3);
  v6 = sub_1E41FE5D4();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v7 = sub_1E41FE514();
    v8 = OUTLINED_FUNCTION_27_0();
    v9(v8);
  }

  v10 = [objc_opt_self() shouldShowLabelForDownloadExpirationDate_];

  return v10;
}

uint64_t sub_1E3A781FC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator))
  {

    sub_1E4204034();
  }

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate, &unk_1ECF28E20, &unk_1E42986D0);

  v2 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter__rentalExpirationInfo;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8, &qword_1E42B6398);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v1 + v2);

  return v1;
}

uint64_t sub_1E3A782CC()
{
  sub_1E3A781FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A78334@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RentalExpirationPresenter(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for RentalExpirationPresenter(uint64_t a1)
{
  result = qword_1EE295FB0;
  if (!qword_1EE295FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A783C8(uint64_t a1)
{
  sub_1E3273C28(319);
  if (v1 <= 0x3F)
  {
    sub_1E3A784B8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3A784B8(uint64_t a1)
{
  if (!qword_1EE289FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF317F0, &qword_1E42B6348);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289FB0);
    }
  }
}

void sub_1E3A7851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E41FE094();
  OUTLINED_FUNCTION_0_10();
  v90 = v10;
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FE6D4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1E41FE734();
  OUTLINED_FUNCTION_0_10();
  v88 = v22;
  v89 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  (*(v16 + 104))(v20, *MEMORY[0x1E6969868], v14);
  sub_1E41FE6E4();
  (*(v16 + 8))(v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31808, &unk_1E42B6450);
  v26 = sub_1E41FE724();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  v30 = *(v29 + 72);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1E4298AD0;
  v33 = v32 + v31;
  v34 = *(v28 + 104);
  v34(v33, *MEMORY[0x1E6969A48], v26);
  v34(v33 + v30, *MEMORY[0x1E6969A58], v26);
  v34(v33 + 2 * v30, *MEMORY[0x1E6969A88], v26);
  v34(v33 + 3 * v30, *MEMORY[0x1E6969A98], v26);
  v35 = v13;
  sub_1E3A78D84(v32);
  sub_1E41FE5C4();
  v87 = v25;
  sub_1E41FE6F4();

  (*(v4 + 8))(v8, v92);
  v36 = sub_1E41FE044();
  v37 = v36;
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  v40 = sub_1E41FE054();
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  v43 = sub_1E41FE074();
  v44 = v43;
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  v47 = sub_1E41FE084();
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  v50 = 0x544E554F43;
  if (a3)
  {
    v50 = a2;
  }

  v95 = v50;
  if (a3)
  {
    v51 = a3;
  }

  else
  {
    v51 = 0xE500000000000000;
  }

  sub_1E41FE554();
  if (v54 <= 0.0)
  {
    v55 = [objc_opt_self() sharedInstance];
    if (v55)
    {
      v56 = v55;
      v57 = OUTLINED_FUNCTION_8_73();
      sub_1E3741090(v57, v58, v56);
      v60 = v59;

      if (v60)
      {
LABEL_21:

        v62 = v90;
        v61 = v91;
        v64 = v88;
        v63 = v89;
        v65 = v87;
LABEL_63:
        (*(v62 + 8))(v35, v61);
        (*(v64 + 8))(v65, v63);
        return;
      }

      goto LABEL_85;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v39 >= 2)
  {
    if ((v42 * 60) >> 64 == (60 * v42) >> 63)
    {
      v73 = 3600 * v42;
      if ((60 * v42 * 60) >> 64 == (3600 * v42) >> 63)
      {
        v74 = 60 * v46;
        if ((v46 * 60) >> 64 == (60 * v46) >> 63)
        {
          v69 = __OFADD__(v73, v74);
          v75 = v73 + v74;
          if (!v69)
          {
            if (v39 <= 5)
            {
              if (__OFADD__(v49, 5))
              {
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }

              if (__OFADD__(v75, v49 + 5))
              {
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
                goto LABEL_84;
              }
            }

            v72 = 0x535941445FLL;
            if (v42 <= 0 && v46 <= 0 && v49 < 1)
            {
              v71 = 0xE500000000000000;
              goto LABEL_60;
            }

            v37 = v39 + 1;
            if (!__OFADD__(v39, 1))
            {
              v71 = 0xE500000000000000;
LABEL_49:
              if (v37 < 1)
              {
                goto LABEL_21;
              }

LABEL_60:

              MEMORY[0x1E69109E0](v72, v71);
              v78 = [objc_opt_self() sharedInstance];
              if (v78)
              {
                v79 = v78;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
                v80 = swift_allocObject();
                *(v80 + 16) = xmmword_1E4298880;
                *(v80 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
                sub_1E3A790C8(v95, v51, v80, v79);
                v82 = v81;

                if (v82)
                {

                  v62 = v90;
                  v61 = v91;
                  v64 = v88;
                  v63 = v89;
                  v65 = v87;
                  goto LABEL_63;
                }

                goto LABEL_87;
              }

LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  if (v39 == 1 || v42 >= 1)
  {
    v67 = 24 * v39;
    if ((v39 * 24) >> 64 == (24 * v39) >> 63)
    {
      v37 = v42 + v67;
      if (!__OFADD__(v42, v67))
      {
        v68 = 60 * v46;
        if ((v46 * 60) >> 64 == (60 * v46) >> 63)
        {
          v69 = __OFADD__(v68, v49);
          v70 = v68 + v49;
          if (!v69)
          {
            if (!__OFADD__(v70, 5))
            {
              v71 = 0xE600000000000000;
              v72 = 0x5352554F485FLL;
              goto LABEL_49;
            }

            goto LABEL_78;
          }

LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v46 > 0 || (TVAppFeature.isEnabled.getter(10, v52, v53) & 1) != 0 && v49 >= 1)
  {
    if (!__OFADD__(v49, 5))
    {
      if (v46 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v44;
      }

      v72 = 0x534554554E494D5FLL;
      v71 = 0xE800000000000000;
      goto LABEL_60;
    }

    goto LABEL_82;
  }

  if (v49 < 1)
  {
    goto LABEL_21;
  }

  v83 = [objc_opt_self() sharedInstance];
  if (!v83)
  {
    goto LABEL_88;
  }

  v84 = v83;
  sub_1E3741090(0xD000000000000019, 0x80000001E426EA90, v83);
  v86 = v85;

  if (v86)
  {
    if (!__OFADD__(v49, 5))
    {
      goto LABEL_21;
    }

    goto LABEL_83;
  }

LABEL_89:
  __break(1u);
}