uint64_t CoherenceDataManager.locationID(by:)(uint64_t a1)
{
  v1[106] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6888, &unk_1C96B8A60);
  OUTLINED_FUNCTION_7(v2);
  v1[107] = OUTLINED_FUNCTION_12_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6890, &qword_1C96C2A60);
  v1[108] = v3;
  OUTLINED_FUNCTION_7(v3);
  v1[109] = OUTLINED_FUNCTION_12_4();
  v4 = type metadata accessor for SyncedData(0);
  OUTLINED_FUNCTION_7(v4);
  v1[110] = OUTLINED_FUNCTION_12_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8, &unk_1C96BEA90);
  v1[111] = v5;
  OUTLINED_FUNCTION_9(v5);
  v1[112] = v6;
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[115] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_25_15(v7);

  return sub_1C95CCB5C(v9);
}

uint64_t sub_1C95CFF90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95D0074()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[107];
  v28 = v0[106];
  v29 = v0[108];
  v8 = *(v3 + 16);
  v8(v1, v5, v4);
  OUTLINED_FUNCTION_3_36();
  sub_1C95D0D4C(v5, v9);
  v8(v7, v1, v4);
  (*(v3 + 32))(v2, v7, v4);
  OUTLINED_FUNCTION_24_14(&qword_1EC3A67A8, &qword_1EC3A60A8, &unk_1C96BEA90);
  v27 = v6;
  sub_1C96A71F4();
  v10 = *(v29 + 36);
  OUTLINED_FUNCTION_19_20();
  sub_1C9469CB4(v11, &qword_1EC3A67A0, &qword_1C96C2A70, v12);
  for (i = 0; ; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0, &qword_1C96C2A70);
    sub_1C96A7944();
    memcpy(v0 + 2, v0 + 28, 0xD0uLL);
    result = sub_1C94EA54C((v0 + 2));
    if (result == 1)
    {
      v16 = v0[114];
      v17 = v0[112];
      v18 = v0[111];
      v19 = v0[109];
      *(v27 + v10) = i;
      memcpy(v0 + 54, v0 + 28, 0xD0uLL);
      sub_1C9470AFC((v0 + 54), &qword_1EC3A67D0, &qword_1C96B8A00);
      sub_1C9470AFC(v19, &qword_1EC3A6890, &qword_1C96C2A60);
      (*(v17 + 8))(v16, v18);
      v20 = 0;
      v21 = 0;
      goto LABEL_8;
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
      return result;
    }

    v15 = v0[106];
    memcpy(v0 + 80, v0 + 28, 0xD0uLL);
    if (i == v15)
    {
      break;
    }

    sub_1C9470AFC((v0 + 80), &qword_1EC3A6818, &qword_1C96B8A70);
  }

  v22 = v0[114];
  v23 = v0[112];
  v24 = v0[111];
  v25 = v0[109];
  *(v27 + v10) = v28 + 1;
  sub_1C9470AFC(v25, &qword_1EC3A6890, &qword_1C96C2A60);
  (*(v23 + 8))(v22, v24);

  v20 = v0[87];
  v21 = v0[88];
  sub_1C96A53C4();
  sub_1C95A038C((v0 + 87));
LABEL_8:

  v26 = v0[1];

  return v26(v20, v21);
}

uint64_t sub_1C95D03AC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C94B0C0C;

  return CoherenceDataManager.addLocation(_:displayContext:)(a1, a2, a3);
}

uint64_t sub_1C95D0460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C94B0CEC;

  return CoherenceDataManager.removeLocation(by:)(a1, a2, a3);
}

uint64_t sub_1C95D0514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return CoherenceDataManager.removeAll()();
}

uint64_t sub_1C95D05B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return CoherenceDataManager.moveLocation(from:to:)();
}

uint64_t sub_1C95D06D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C95D0768;

  return CoherenceDataManager.locationID(by:)(a1);
}

uint64_t sub_1C95D0768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11();

  return v4(v3);
}

uint64_t sub_1C95D08A0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  (*(v10 + 16))(v14, a1, a4);
  v16 = sub_1C95D09B4(v14, a2, v15, a4, a5);
  (*(v10 + 8))(a1, a4);
  return v16;
}

uint64_t sub_1C95D09B4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v10);
  v17 = a4;
  v18 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v12 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_cachedSyncedData;
  v13 = type metadata accessor for SyncedData(0);
  __swift_storeEnumTagSinglePayload(a3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30, &unk_1C96B89B0);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C9495214(&qword_1EDB7D0A8, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38, &qword_1C96AA2D0);
  sub_1C9469CB4(&qword_1EDB7CEA0, &qword_1EC3A4A38, &qword_1C96AA2D0, MEMORY[0x1E69E6328]);
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(a3 + v14) = sub_1C96A5124();
  sub_1C94670AC(&v16, a3 + 16);
  sub_1C94670AC(a2, a3 + 56);
  return a3;
}

uint64_t sub_1C95D0C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6848, &unk_1C96C2A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95D0C94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C95D0CF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C95D0D4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of CoherenceDataManagerType.addLocation(_:displayContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_26(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_30(v6);

  return v9(v8);
}

uint64_t dispatch thunk of CoherenceDataManagerType.removeLocation(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_26(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_30(v6);

  return v9(v8);
}

uint64_t dispatch thunk of CoherenceDataManagerType.removeAll()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38_1(a1, a2, a3);
  OUTLINED_FUNCTION_22_0();
  v11 = (v7 + *v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C94B0CEC;

  return v11(v6, v4, v3);
}

uint64_t dispatch thunk of CoherenceDataManagerType.moveLocation(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_26(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_30(v6);

  return v9(v8);
}

uint64_t dispatch thunk of CoherenceDataManagerType.locationID(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38_1(a1, a2, a3);
  OUTLINED_FUNCTION_22_0();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1C95D0768;

  return v10(v6, v4, v3);
}

uint64_t type metadata accessor for CoherenceDataManager(uint64_t a1)
{
  result = qword_1EDB7E970;
  if (!qword_1EDB7E970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C95D139C(uint64_t a1)
{
  sub_1C94940C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL static TemperatureScaleConfiguration.ColorStop.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C96A7DE4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C95D14F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C95D15BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D14F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95D15E4(uint64_t a1)
{
  v2 = sub_1C948B638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D1620(uint64_t a1)
{
  v2 = sub_1C948B638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TemperatureScaleConfiguration.ColorStop.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6898, &qword_1C96B8B80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948B638();
  sub_1C96A7F54();
  v12 = 0;
  v8 = v10;
  sub_1C96A7D24();
  if (!v8)
  {
    v11 = 1;
    sub_1C96A7D44();
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C95D1814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73706F7473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95D1888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D1814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C95D18B4(uint64_t a1)
{
  v2 = sub_1C9481A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D18F0(uint64_t a1)
{
  v2 = sub_1C9481A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemperatureScaleConfiguration.Gradient.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_119();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68A8, &qword_1C96B8B90);
  OUTLINED_FUNCTION_1();
  v27 = v26;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  OUTLINED_FUNCTION_6_38(v24);
  sub_1C9481A9C();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F54();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68B0, &qword_1C96B8B98);
  sub_1C9481AFC(&qword_1EDB7CEB0, sub_1C95D1AA4, MEMORY[0x1E69E6300]);
  sub_1C96A7D74();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95D1AA4()
{
  result = qword_1EDB7D600;
  if (!qword_1EDB7D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D600);
  }

  return result;
}

double static TemperatureScaleConfiguration.Gradient.default.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EDB7D638 != -1)
  {
    OUTLINED_FUNCTION_1_45();
    swift_once();
  }

  *a1 = qword_1EDB7D640;

  sub_1C96A53C4();
  return result;
}

double TemperatureScaleConfiguration.gradientValueRange(for:)(uint64_t a1)
{
  sub_1C95D1C68();
  v1 = [objc_opt_self() fahrenheit];
  v2 = sub_1C96A78B4();

  result = -84.44;
  if (v2)
  {
    return -120.0;
  }

  return result;
}

unint64_t sub_1C95D1C68()
{
  result = qword_1EDB7CD30;
  if (!qword_1EDB7CD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB7CD30);
  }

  return result;
}

void TemperatureScaleConfiguration.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_119();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68C8, &qword_1C96B8BB0);
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_6_38(v22);
  sub_1C948B51C();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F54();
  sub_1C95D1DD8();
  sub_1C96A7D74();

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95D1DD8()
{
  result = qword_1EDB7D628;
  if (!qword_1EDB7D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D628);
  }

  return result;
}

BOOL sub_1C95D1E38@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C94E3E9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C95D1E6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C947B858();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C95D1E94@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C94E3E9C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C95D1EC0(uint64_t a1)
{
  v2 = sub_1C948B51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D1EFC(uint64_t a1)
{
  v2 = sub_1C948B51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95D1F5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C95D1F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C95D1FE0()
{
  result = qword_1EC3A68D0;
  if (!qword_1EC3A68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A68D0);
  }

  return result;
}

unint64_t sub_1C95D2038()
{
  result = qword_1EC3A68D8;
  if (!qword_1EC3A68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A68D8);
  }

  return result;
}

unint64_t sub_1C95D2090()
{
  result = qword_1EC3A68E0;
  if (!qword_1EC3A68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A68E0);
  }

  return result;
}

uint64_t static OpenIntentHelpers.makeUrlComponents()(uint64_t a1)
{
  sub_1C96A43A4();
  sub_1C96A4384();
  MEMORY[0x1CCA89CE0](0xD000000000000011, 0x80000001C96D3360);
  MEMORY[0x1CCA89CF0](47, 0xE100000000000000);
  return sub_1C96A4324();
}

void static OpenIntentHelpers.parseLocation(_:into:)(void *a1)
{
  v2 = sub_1C96A4304();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  if (a1)
  {
    v7 = a1;
    v8 = [v7 location];
    if (v8)
    {
      v9 = v8;
      v45 = v2;
      [v8 coordinate];
      sub_1C96A7514();
      [v9 coordinate];
      sub_1C96A7514();
      v11 = OUTLINED_FUNCTION_14_23();
      if (*v10)
      {
        v12 = v10;
        sub_1C96A42F4();

        sub_1C9522924();
        v13 = *(*v12 + 16);
        sub_1C9522954(v13);
        OUTLINED_FUNCTION_7_30(v13 + 1);
        v16 = v45;
        v17(v14 + v15 * v13, v6, v45);
        v18 = OUTLINED_FUNCTION_10_29();
        v11(v18);
      }

      else
      {

        v27 = OUTLINED_FUNCTION_10_29();
        v11(v27);
        v16 = v2;
      }

      v29 = OUTLINED_FUNCTION_14_23();
      if (*v28)
      {
        v30 = v28;
        sub_1C96A42F4();

        sub_1C9522924();
        v31 = *(*v30 + 16);
        sub_1C9522954(v31);
        OUTLINED_FUNCTION_7_30(v31 + 1);
        v34(v32 + v33 * v31, v6, v16);
      }

      else
      {
      }

      v35 = OUTLINED_FUNCTION_10_29();
      v29(v35);
      sub_1C95D336C(v7);
      if (v36)
      {
        v38 = OUTLINED_FUNCTION_14_23();
        if (*v37)
        {
          v39 = v37;
          sub_1C96A42F4();

          sub_1C9522924();
          v40 = *(*v39 + 16);
          sub_1C9522954(v40);
          OUTLINED_FUNCTION_1_46(v40 + 1);
          v43(v41 + v42 * v40, v6, v16);
        }

        else
        {
        }

        v44 = OUTLINED_FUNCTION_10_29();
        v38(v44);
      }

      return;
    }
  }

  v20 = OUTLINED_FUNCTION_14_23();
  if (*v19)
  {
    v21 = v19;
    sub_1C96A42F4();
    sub_1C9522924();
    v22 = *(*v21 + 16);
    sub_1C9522954(v22);
    OUTLINED_FUNCTION_1_46(v22 + 1);
    v25(v23 + v24 * v22, v6, v2);
  }

  v26 = OUTLINED_FUNCTION_10_29();
  v20(v26);
}

unint64_t OpenIntentHelpers.L2KindView.stringValue.getter()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0x6F697469646E6F63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

WeatherCore::OpenIntentHelpers::L2KindView_optional __swiftcall OpenIntentHelpers.L2KindView.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OpenIntentHelpers.L2KindView.rawValue.getter()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
      result = 0x6F46796C72756F68;
      break;
    case 2:
      result = 0x6B694C736C656566;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C95D2670@<X0>(unint64_t *a1@<X8>)
{
  result = OpenIntentHelpers.L2KindView.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OpenIntentHelpers.init(path:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_9_30(a1, v3, v4, v2);
  v6 = (a1 + v5);
  v7 = OUTLINED_FUNCTION_11();
  result = sub_1C95D340C(v7, v8);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t OpenIntentHelpers.init(path:openedFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_9_30(a4, v9, v10, v8);
  v12 = (a4 + v11);
  result = sub_1C95D340C(a1, a4);
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t static OpenIntentHelpers.openedFromMainBundle(path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0, &qword_1C96B9220);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  sub_1C9470AA0(a1, &v18 - v6, &qword_1EC3A68F0, &qword_1C96B9220);
  v8 = [objc_opt_self() mainBundle];
  v9 = sub_1C9493F34(v8);
  v11 = v10;
  v12 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_9_30(a2, v13, v14, v12);
  v16 = (a2 + v15);
  result = sub_1C95D340C(v7, a2);
  *v16 = v9;
  v16[1] = v11;
  return result;
}

uint64_t OpenIntentHelpers.urlComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v78 = sub_1C96A4304();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v77 = v6 - v5;
  v7 = type metadata accessor for Location(0);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v75 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0, &qword_1C96B9220);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v83 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v23 = sub_1C96A43B4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  static OpenIntentHelpers.makeUrlComponents()(v30);
  v31 = (v1 + *(type metadata accessor for OpenIntentHelpers(0) + 20));
  if (v31[1])
  {
    v81 = v29;
    v79 = *v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CD8, &unk_1C96B9230);
    v80 = v19;
    *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
    v29 = v81;
    sub_1C96A42F4();
    v19 = v80;
    sub_1C96A4324();
  }

  sub_1C9470AA0(v1, v16, &qword_1EC3A68F0, &qword_1C96B9220);
  if (__swift_getEnumTagSinglePayload(v16, 1, v83) != 1)
  {
    sub_1C95D34E0(v16, v22, type metadata accessor for OpenIntentHelpers.Path);
    sub_1C95D347C(v22, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v3;
      v33 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F8, &qword_1C96B9228);
      OUTLINED_FUNCTION_5_33();
      v35 = v82;
      sub_1C95D34E0(&v19[v34], v82, v36);
      v37 = *(v35 + 48);
      v75 = v22;
      v76 = v23;
      if (v37 == 1)
      {
      }

      else
      {
        v39 = OUTLINED_FUNCTION_8_31();

        if ((v39 & 1) == 0)
        {
          v43 = v82;
          sub_1C956AE80();
          v44 = *(v43 + 32);
          v45 = *(v43 + 40);
          v46 = objc_allocWithZone(MEMORY[0x1E6985C40]);
          sub_1C96A53C4();
          [v46 initWithLatitude:v44 longitude:v45];
          OUTLINED_FUNCTION_13_29();
          v40 = sub_1C9550094(v47, v48, v49, v50);
          goto LABEL_15;
        }
      }

      v40 = 0;
LABEL_15:
      v83 = v32;
      static OpenIntentHelpers.parseLocation(_:into:)(v40);
      v51 = 0xEA00000000007974;
      v52 = 0x696C617551726961;
      switch(v33)
      {
        case 1:
        case 2:
          v52 = 0x6F697469646E6F63;
          v51 = 0xEA0000000000736ELL;
          break;
        case 3:
          v52 = 0xD000000000000015;
          v51 = 0x80000001C96CB210;
          break;
        default:
          break;
      }

      v63 = sub_1C95D2FFC(v52, v51, 0x2F6C69617465642FLL, 0xE800000000000000);
      v65 = v64;

      MEMORY[0x1CCA89CF0](v63, v65);
      v23 = v76;
      switch(v33)
      {
        case 0:
        case 1:
        case 3:
          OUTLINED_FUNCTION_11();
          v66 = sub_1C96A7DE4();

          if (v66)
          {
            goto LABEL_23;
          }

          goto LABEL_26;
        case 2:

LABEL_23:
          v68 = sub_1C96A4314();
          if (*v67)
          {
            v69 = v67;
            v70 = v77;
            sub_1C96A42F4();
            sub_1C9522924();
            v71 = *(*v69 + 16);
            sub_1C9522954(v71);
            v72 = *v69;
            *(v72 + 16) = v71 + 1;
            (*(v83 + 32))(v72 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v71, v70, v78);
          }

          v68(v85, 0);
LABEL_26:

          OUTLINED_FUNCTION_6_39();
          sub_1C948E9EC(v82, v73);
          OUTLINED_FUNCTION_4_43();
          v62 = v75;
          break;
        default:
          JUMPOUT(0);
      }

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_5_33();
    sub_1C95D34E0(v19, v12, v38);
    MEMORY[0x1CCA89CF0](47, 0xE100000000000000);
    if (*(v12 + 48) == 1)
    {
    }

    else
    {
      v41 = OUTLINED_FUNCTION_8_31();

      if ((v41 & 1) == 0)
      {
        sub_1C956AE80();
        v53 = v12[4];
        v54 = v12[5];
        v55 = objc_allocWithZone(MEMORY[0x1E6985C40]);
        sub_1C96A53C4();
        [v55 initWithLatitude:v53 longitude:v54];
        OUTLINED_FUNCTION_13_29();
        v42 = sub_1C9550094(v56, v57, v58, v59);
        goto LABEL_18;
      }
    }

    v42 = 0;
LABEL_18:
    static OpenIntentHelpers.parseLocation(_:into:)(v42);

    OUTLINED_FUNCTION_6_39();
    sub_1C948E9EC(v12, v60);
    OUTLINED_FUNCTION_4_43();
    v62 = v22;
LABEL_27:
    sub_1C948E9EC(v62, v61);
    return (*(v25 + 32))(v84, v29, v23);
  }

  sub_1C9470AFC(v16, &qword_1EC3A68F0, &qword_1C96B9220);
  MEMORY[0x1CCA89CF0](47, 0xE100000000000000);
  return (*(v25 + 32))(v84, v29, v23);
}

uint64_t sub_1C95D2FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C96A53C4();
  v5 = sub_1C96A71D4();
  sub_1C96A7164();
  return v5;
}

uint64_t static OpenIntentHelpers.parseDate(_:into:)(uint64_t a1, uint64_t a2)
{
  v31[1] = a2;
  v3 = sub_1C96A4304();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  sub_1C9470AA0(a1, v11, &unk_1EC3A5430, &unk_1C96AAB30);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_1C9470AFC(v11, &unk_1EC3A5430, &unk_1C96AAB30);
  }

  v31[0] = v3;
  (*(v14 + 32))(v18, v11, v12);
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v20 setFormatOptions_];
  v21 = sub_1C96A4984();
  v22 = [v20 stringFromDate_];

  sub_1C96A7024();
  v24 = sub_1C96A4314();
  if (*v23)
  {
    v25 = v23;
    sub_1C96A42F4();

    sub_1C9522924();
    v26 = *(*v25 + 16);
    sub_1C9522954(v26);
    OUTLINED_FUNCTION_1_46(v26 + 1);
    v29(v27 + v28 * v26, v7, v31[0]);
  }

  else
  {
  }

  v30 = OUTLINED_FUNCTION_10_29();
  v24(v30);

  return (*(v14 + 8))(v18, v12);
}

uint64_t sub_1C95D336C(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    sub_1C96A7024();
  }

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C95D340C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0, &qword_1C96B9220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95D347C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenIntentHelpers.Path(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95D34E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

unint64_t sub_1C95D3540()
{
  result = qword_1EC3A6900;
  if (!qword_1EC3A6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6900);
  }

  return result;
}

void sub_1C95D35BC(uint64_t a1)
{
  sub_1C95D3640(319);
  if (v1 <= 0x3F)
  {
    sub_1C9461318();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C95D3640(uint64_t a1)
{
  if (!qword_1EC3A6918)
  {
    type metadata accessor for OpenIntentHelpers.Path(255);
    v1 = sub_1C96A7934();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC3A6918);
    }
  }
}

void sub_1C95D3698(uint64_t a1)
{
  type metadata accessor for Location(319);
  if (v1 <= 0x3F)
  {
    sub_1C95D370C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C95D370C(uint64_t a1)
{
  if (!qword_1EC3A6930)
  {
    type metadata accessor for Location(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC3A6930);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OpenIntentHelpers.L2KindView(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Bool __swiftcall LocationMatchHelper.isSameLocation(first:second:)(Swift::tuple_name_String_optional_coordinate___C_CLLocationCoordinate2D first, Swift::tuple_name_String_optional_coordinate___C_CLLocationCoordinate2D second)
{
  longitude = second.coordinate.longitude;
  latitude = second.coordinate.latitude;
  object = second.name.value._object;
  countAndFlagsBits = second.name.value._countAndFlagsBits;
  v6 = first.name.value._object;
  v7 = first.name.value._countAndFlagsBits;
  v8 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:first.coordinate.latitude longitude:first.coordinate.longitude];
  v9 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
  [v8 distanceFromLocation_];
  v11 = v10;

  v12.value._countAndFlagsBits = v7;
  v12.value._object = v6;
  v13.value._countAndFlagsBits = countAndFlagsBits;
  v13.value._object = object;
  return LocationMatchHelper.isSameLocation(firstName:secondName:distance:)(v12, v13, v11);
}

uint64_t type metadata accessor for PrecipitationNotificationPolicy(uint64_t a1)
{
  result = qword_1EC3A6938;
  if (!qword_1EC3A6938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C95D3A0C(uint64_t a1)
{
  sub_1C95D3A80(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PrecipitationNotificationFetchSchedule(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C95D3A80(uint64_t a1)
{
  if (!qword_1EC3A6948)
  {
    type metadata accessor for PrecipitationNotification(255);
    type metadata accessor for PrecipitationNotificationDeliverySchedule(255);
    type metadata accessor for PrecipitationNotificationFetchSchedule(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC3A6948);
    }
  }
}

uint64_t sub_1C95D3B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C96A7DE4(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1C96A7DE4();
    }
  }

  return result;
}

uint64_t sub_1C95D3BAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5555656369766564 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C615368736168 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C95D3C7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6960, &qword_1C96B94C8);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94AA4DC();
  sub_1C96A7F54();
  v16 = 0;
  sub_1C96A7D24();
  if (!v5)
  {
    v15 = 1;
    sub_1C96A7D24();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C95D3DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C96A7144();

  return sub_1C96A7144();
}

uint64_t sub_1C95D3E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C96A7EE4();
  sub_1C96A7144();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C95D3EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D3BAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95D3ED0(uint64_t a1)
{
  v2 = sub_1C94AA4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D3F0C(uint64_t a1)
{
  v2 = sub_1C94AA4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95D3F80(uint64_t a1)
{
  sub_1C96A7EE4();
  sub_1C96A7144();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

unint64_t sub_1C95D4004()
{
  result = qword_1EC3A6950;
  if (!qword_1EC3A6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6950);
  }

  return result;
}

unint64_t sub_1C95D405C()
{
  result = qword_1EC3A6968;
  if (!qword_1EC3A6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6968);
  }

  return result;
}

uint64_t StubAppConfigurationDataService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xD000000000001184;
  *(result + 32) = 0x80000001C96CCAF0;
  return result;
}

uint64_t StubAppConfigurationDataService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xD000000000001184;
  *(v0 + 32) = 0x80000001C96CCAF0;
  return result;
}

uint64_t StubAppConfigurationDataService.fetchConfiguration(with:)()
{
  v1 = sub_1C96A7084();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    sub_1C95D42BC();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5810, &qword_1C96B0950);
    swift_allocObject();
    return sub_1C96A5694();
  }

  else
  {
    sub_1C96A53C4();
    sub_1C96A7074();
    v6 = sub_1C96A7034();
    v8 = v7;

    result = (*(v2 + 8))(v4, v1);
    if (v8 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v9[0] = v6;
      v9[1] = v8;
      v9[2] = MEMORY[0x1E69E7CC0];
      v9[3] = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5810, &qword_1C96B0950);
      swift_allocObject();
      return sub_1C96A56A4();
    }
  }

  return result;
}

unint64_t sub_1C95D42BC()
{
  result = qword_1EC3A6970;
  if (!qword_1EC3A6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6970);
  }

  return result;
}

uint64_t StubAppConfigurationDataService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for StubAppConfigurationDataService.ServiceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C95D4470()
{
  result = qword_1EC3A6978;
  if (!qword_1EC3A6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6978);
  }

  return result;
}

id sub_1C95D44C4()
{
  v0 = [objc_allocWithZone(type metadata accessor for BeaufortUnitConverter()) init];
  v1 = objc_allocWithZone(MEMORY[0x1E696B078]);
  result = sub_1C95D4A58(7628386, 0xE300000000000000, v0);
  qword_1EDB77D18 = result;
  return result;
}

uint64_t NSUnitSpeed.isMillimetersPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747938669 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71(v4, v5, 0x6D6Du);
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

uint64_t NSUnitSpeed.isCentimetersPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747938659 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71(v4, v5, 0x6D63u);
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

uint64_t NSUnitSpeed.isInchesPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747938921 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71(v4, v5, 0x6E69u);
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

id sub_1C95D47B4(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v7 = objc_allocWithZone(MEMORY[0x1E696B078]);
  result = sub_1C95D4A58(a3, 0xE400000000000000, v6);
  *a4 = result;
  return result;
}

uint64_t NSUnitSpeed.isFeetPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747940454 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71(v4, v5, 0x7466u);
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

double sub_1C95D48DC(double a1)
{
  v1 = 0.0;
  if (a1 >= 0.0)
  {
    return fmin(pow(a1 / 0.836, 0.666666667), 17.0);
  }

  return v1;
}

double sub_1C95D4944(long double a1)
{
  v1 = 0.0;
  if (a1 >= 0.0)
  {
    if (a1 <= 17.0)
    {
      return pow(a1, 1.5) * 0.836;
    }

    else
    {
      return 58.5975772;
    }
  }

  return v1;
}

id sub_1C95D49FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C95D4A58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C96A7004();

  v6 = [v3 initWithSymbol:v5 converter:a3];

  return v6;
}

unint64_t sub_1C95D4AC0()
{
  result = qword_1EC3A69A0;
  if (!qword_1EC3A69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69A0);
  }

  return result;
}

double sub_1C95D4B28@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C96A4C14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80318 != -1)
  {
    swift_once();
  }

  UnitManager.refreshUnitsFromStorage()();
  sub_1C96A4BC4();
  v6 = UnitManager.visibility(locale:)();
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 kilometers];
  sub_1C946B5D0(0, &qword_1EDB7FDA0, 0x1E696B058);
  v10 = sub_1C96A78B4();

  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = [v7 miles];
    v13 = sub_1C96A78B4();

    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }
  }

  v24[7] = v11;
  v28.super.super.super.isa = UnitManager.precipitationRainfall(locale:)();
  UnitConfiguration.Precipitation.init(_:)(v28);
  v29.super.super.super.isa = UnitManager.pressure(locale:)();
  UnitConfiguration.Pressure.init(_:)(v29);
  v14 = UnitManager.temperature(locale:)();
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 celsius];
  sub_1C946B5D0(0, &qword_1EDB80068, 0x1E696B080);
  v18 = sub_1C96A78B4();

  if (v18)
  {

    v19 = 1;
  }

  else
  {
    v20 = [v15 fahrenheit];
    v21 = sub_1C96A78B4();

    if (v21)
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }
  }

  v24[4] = v19;
  v30.super.super.super.isa = UnitManager.windSpeed(locale:)();
  UnitConfiguration.WindSpeed.init(_:)(v30);
  sub_1C9683F34(v25);
  (*(v3 + 8))(v5, v2);
  v22 = v25[1];
  *a1 = v25[0];
  *(a1 + 16) = v22;
  result = *&v26;
  *(a1 + 32) = v26;
  *(a1 + 48) = v27;
  return result;
}

uint64_t sub_1C95D4E54()
{
  v17 = v0;
  sub_1C95D4B28(v0 + 16);
  if (qword_1EDB77DC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB77DD0);
  sub_1C95D59CC(v0 + 16, v0 + 72);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A7684();
  sub_1C95D5A28(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    sub_1C95D59CC(v0 + 16, v0 + 72);
    v6 = sub_1C9684C40();
    v8 = v7;
    sub_1C95D5A28(v0 + 16);
    v9 = sub_1C9484164(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1C945E000, v2, v3, "Producing preferred units from entities(for:). Units=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
    MEMORY[0x1CCA8E3D0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A69E8, &qword_1C96B9908);
  v10 = swift_allocObject();
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  *(v10 + 16) = xmmword_1C96AA1C0;
  *(v10 + 32) = v11;
  v13 = *(v0 + 48);
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  *(v10 + 80) = *(v0 + 64);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1C95D5050(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C95D50E0;

  return sub_1C95D4E40();
}

uint64_t sub_1C95D50E0(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_15();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t sub_1C95D51EC()
{
  result = qword_1EC3A69A8;
  if (!qword_1EC3A69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69A8);
  }

  return result;
}

unint64_t sub_1C95D5244()
{
  result = qword_1EC3A69B0;
  if (!qword_1EC3A69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69B0);
  }

  return result;
}

unint64_t sub_1C95D529C()
{
  result = qword_1EC3A69B8;
  if (!qword_1EC3A69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69B8);
  }

  return result;
}

uint64_t sub_1C95D52F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95D5A84;

  return sub_1C95D4B14();
}

uint64_t sub_1C95D537C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1C95D5978();
  *v5 = v2;
  v5[1] = sub_1C95D5430;

  return MEMORY[0x1EEDB3AE8](a1, a2, v6);
}

uint64_t sub_1C95D5430()
{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C95D5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C95D55D8;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1C95D55D8(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v4 = *v2;
  OUTLINED_FUNCTION_15();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

unint64_t sub_1C95D56D0()
{
  result = qword_1EC3A69C0;
  if (!qword_1EC3A69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69C0);
  }

  return result;
}

unint64_t sub_1C95D5724()
{
  result = qword_1EC3A69C8;
  if (!qword_1EC3A69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69C8);
  }

  return result;
}

unint64_t sub_1C95D577C()
{
  result = qword_1EC3A69D0;
  if (!qword_1EC3A69D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A69D8, qword_1C96B9818);
    sub_1C95D5724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69D0);
  }

  return result;
}

uint64_t sub_1C95D5800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1C95D4AC0();
  *v5 = v2;
  v5[1] = sub_1C95D5A7C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1C95D58B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C95D5430;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

unint64_t sub_1C95D5978()
{
  result = qword_1EC3A69E0;
  if (!qword_1EC3A69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69E0);
  }

  return result;
}

Swift::Void __swiftcall PredictedLocationsScheduleStoreType.recordRefresh()()
{
  v3 = v1;
  v4 = v0;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_72();
  (*(v3 + 32))(v2, v4, v3);
  (*(v6 + 8))();
}

Swift::Void __swiftcall PredictedLocationsScheduleStoreType.recordSuccessfulExecution()()
{
  v3 = v1;
  v4 = v0;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_72();
  (*(v3 + 48))(v2, v4, v3);
  (*(v6 + 8))();
}

uint64_t PredictedLocationsScheduleStore.Feature.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

uint64_t PredictedLocationsScheduleStore.__allocating_init(feature:)(char *a1)
{
  v2 = swift_allocObject();
  PredictedLocationsScheduleStore.init(feature:)(a1);
  return v2;
}

uint64_t PredictedLocationsScheduleStore.init(feature:)(char *a1)
{
  v2 = *a1;
  if (qword_1EDB7AB28 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB7AB30;
  if (qword_1EDB7AB30)
  {
    v4 = qword_1EDB7AB30;
  }

  else
  {
    if (qword_1EDB80350 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EDB80358;
    v3 = 0;
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_1C95D5DE4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000029;
    }

    if (a1 == 1)
    {
      v3 = "ationsSuccessfulExecution";
    }

    else
    {
      v3 = "intentDonations-";
    }
  }

  else
  {
    v3 = "nextPredictedLocationsRefresh";
    v2 = 0xD00000000000001DLL;
  }

  v4 = 0xD000000000000010;
  if (!*(v1 + 24))
  {
    v4 = 0x6163696669746F6ELL;
  }

  v6 = v4;
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](v2, v3 | 0x8000000000000000);

  return v6;
}

void PredictedLocationsScheduleStore.recordNextRefresh(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(v2 + 16);
  sub_1C94D63E8(a1, &v11 - v5);
  v8 = sub_1C96A4A54();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1C96A4984();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  sub_1C95D5DE4(1);
  v10 = sub_1C96A7004();

  [v7 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall PredictedLocationsScheduleStore.clearNextRefreshRecord()()
{
  v1 = *(v0 + 16);
  sub_1C95D5DE4(1);
  v2 = sub_1C96A7004();

  [v1 removeObjectForKey_];
}

void sub_1C95D6098(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1C96A4984();
  sub_1C95D5DE4(a2);
  v6 = sub_1C96A7004();

  [v4 setObject:v5 forKey:v6];
}

uint64_t sub_1C95D613C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1C95D5DE4(a1);
  v5 = sub_1C96A7004();

  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_1C96A79C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v7 = sub_1C96A4A54();
    v8 = swift_dynamicCast() ^ 1;
    v9 = a2;
    v10 = v7;
  }

  else
  {
    sub_1C95BA620(v14);
    v10 = sub_1C96A4A54();
    v9 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v8, 1, v10);
}

uint64_t PredictedLocationsScheduleStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

unint64_t sub_1C95D639C()
{
  result = qword_1EC3A69F0;
  if (!qword_1EC3A69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsScheduleStore.Feature(_BYTE *result, unsigned int a2, unsigned int a3)
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

WeatherCore::PredictedLocationsNotificationSubscription::Kind sub_1C95D6738@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = PredictedLocationsNotificationSubscription.Kind.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

BOOL static PredictedLocationsNotificationSubscription.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_1C95D67C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657265766573 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95D684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D67C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C95D6878(uint64_t a1)
{
  v2 = sub_1C95D6A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D68B4(uint64_t a1)
{
  v2 = sub_1C95D6A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedLocationsNotificationSubscription.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A69F8, &qword_1C96B9A20);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95D6A18();
  sub_1C96A7F54();
  sub_1C96A7CF4();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1C95D6A18()
{
  result = qword_1EC3A6A00;
  if (!qword_1EC3A6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A00);
  }

  return result;
}

uint64_t PredictedLocationsNotificationSubscription.hash(into:)()
{
  if (*v0 != 2)
  {
    sub_1C96A7F04();
  }

  return sub_1C96A7F04();
}

uint64_t PredictedLocationsNotificationSubscription.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  if (v1 != 2)
  {
    sub_1C96A7F04();
  }

  sub_1C96A7F04();
  return sub_1C96A7F24();
}

uint64_t PredictedLocationsNotificationSubscription.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A08, &qword_1C96B9A28);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95D6A18();
  sub_1C96A7F44();
  if (!v2)
  {
    v11 = sub_1C96A7C54();
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1C95D6C68(uint64_t a1)
{
  v2 = *v1;
  sub_1C96A7EE4();
  if (v2 != 2)
  {
    sub_1C96A7F04();
  }

  sub_1C96A7F04();
  return sub_1C96A7F24();
}

uint64_t PredictedLocationsNotificationSubscription.Kind.description.getter()
{
  v1 = 0x6E776F6E6B6E55;
  if (!*v0)
  {
    v1 = 1701736270;
  }

  if (*v0 == 1)
  {
    return 0x657265766553;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C95D6D70()
{
  result = qword_1EDB781B8;
  if (!qword_1EDB781B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB781B8);
  }

  return result;
}

unint64_t sub_1C95D6DC8()
{
  result = qword_1EC3A6A10;
  if (!qword_1EC3A6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A10);
  }

  return result;
}

unint64_t sub_1C95D6E1C()
{
  result = qword_1EDB781C0;
  if (!qword_1EDB781C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB781C0);
  }

  return result;
}

unint64_t sub_1C95D6E74()
{
  result = qword_1EDB781B0;
  if (!qword_1EDB781B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB781B0);
  }

  return result;
}

unint64_t sub_1C95D6ECC()
{
  result = qword_1EC3A6A18;
  if (!qword_1EC3A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedLocationsNotificationSubscription(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PredictedLocationsNotificationSubscription(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PredictedLocationsNotificationSubscription.Kind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PredictedLocationsNotificationSubscription.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsNotificationSubscription.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C95D718C()
{
  result = qword_1EC3A6A20;
  if (!qword_1EC3A6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A20);
  }

  return result;
}

unint64_t sub_1C95D71E4()
{
  result = qword_1EC3A6A28;
  if (!qword_1EC3A6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A28);
  }

  return result;
}

unint64_t sub_1C95D723C()
{
  result = qword_1EC3A6A30;
  if (!qword_1EC3A6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A30);
  }

  return result;
}

uint64_t PrecipitationNotificationConfiguration.now.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t PrecipitationNotificationConfiguration.backoffTimerExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrecipitationNotificationConfiguration(0) + 20);
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PrecipitationNotificationConfiguration(uint64_t a1)
{
  result = qword_1EC3A6A38;
  if (!qword_1EC3A6A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationNotificationConfiguration.init(now:backoffTimerExpiration:changingConditionInterval:reschedulingInterval:backoffTimerInterval:locationDecimalPrecision:primaryChanceThreshold:secondaryChanceThreshold:intensityThreshold:chanceIntensityMultipleThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>)
{
  v22 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v24 = *(v23 + 32);
  v24(a4, a1, v22);
  v25 = type metadata accessor for PrecipitationNotificationConfiguration(0);
  result = (v24)(a4 + v25[5], a2, v22);
  *(a4 + v25[6]) = a5;
  *(a4 + v25[7]) = a6;
  *(a4 + v25[8]) = a7;
  *(a4 + v25[9]) = a3;
  *(a4 + v25[10]) = a8;
  *(a4 + v25[11]) = a9;
  *(a4 + v25[12]) = a10;
  *(a4 + v25[13]) = a11;
  return result;
}

uint64_t PrecipitationNotificationConfiguration.reschedulingDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1C94D63E8(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C9505BC8(v6);
    type metadata accessor for PrecipitationNotificationConfiguration(0);
    return sub_1C96A4974();
  }

  else
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
    type metadata accessor for PrecipitationNotificationConfiguration(0);
    sub_1C96A4974();
    sub_1C9508894();
    v16 = sub_1C96A6F74();
    v17 = *(v8 + 8);
    if (v16)
    {
      v17(v13, v7);
      v18 = a2;
      v19 = v10;
    }

    else
    {
      v17(v10, v7);
      v18 = a2;
      v19 = v13;
    }

    return (v15)(v18, v19, v7);
  }
}

uint64_t sub_1C95D7894(uint64_t a1)
{
  result = sub_1C96A4A54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void **sub_1C95D7A0C(void *a1)
{
  [a1 activate];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  aBlock[4] = sub_1C95D7FE8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C963E29C;
  aBlock[3] = &block_descriptor_12;
  v4 = _Block_copy(aBlock);
  sub_1C96A3D04();

  v5 = [a1 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  sub_1C96A79C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A48, &qword_1C96B9F58);
  if (swift_dynamicCast())
  {
    v3 = v22;
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_73();
      swift_once();
    }

    v6 = sub_1C96A6154();
    __swift_project_value_buffer(v6, qword_1EDB7AC48);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A76A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C945E000, v7, v8, "XPC connection successfully received remote proxy object", v9, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_73();
      swift_once();
    }

    v10 = sub_1C96A6154();
    __swift_project_value_buffer(v10, qword_1EDB7AC48);
    v11 = sub_1C96A6134();
    v12 = sub_1C96A7684();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      if (qword_1EDB7C728 != -1)
      {
        swift_once();
      }

      v15 = sub_1C96A51A4();
      __swift_project_value_buffer(v15, qword_1EDB7C730);
      v16 = sub_1C96A5194();
      v18 = sub_1C9484164(v16, v17, aBlock);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1C945E000, v11, v12, "Remote object proxy interface mismatch for: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    swift_beginAccess();
    v19 = *v3;
    if (!*v3)
    {
      sub_1C95D8118();
      swift_allocError();
    }

    swift_willThrow();
    v20 = v19;
  }

  return v3;
}

id sub_1C95D7DBC(void *a1, uint64_t a2)
{
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC48);
  v5 = a1;
  v6 = sub_1C96A6134();
  v7 = sub_1C96A7684();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136446466;
    if (qword_1EDB7C728 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A51A4();
    __swift_project_value_buffer(v10, qword_1EDB7C730);
    v11 = sub_1C96A5194();
    v13 = sub_1C9484164(v11, v12, v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
    v15 = sub_1C96A70A4();
    v17 = sub_1C9484164(v15, v16, v20);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v6, v7, "Failed to get synchronous remote object proxy for: %{public}s with error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
  }

  swift_beginAccess();
  v18 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1C95D8030(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_73();
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC48);
  oslog = sub_1C96A6134();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C945E000, oslog, v5, a2, v6, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }
}

unint64_t sub_1C95D8118()
{
  result = qword_1EC3A6A50;
  if (!qword_1EC3A6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsServiceConnection.PredictedLocationsServiceConnectionError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C95D8220()
{
  result = qword_1EC3A6A58;
  if (!qword_1EC3A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A58);
  }

  return result;
}

uint64_t AppConfigurationSettingsProvider.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94670AC(a1, v2 + 16);
  return v2;
}

uint64_t AppConfigurationSettingsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t AppConfiguration.lastRefreshed.getter()
{
  OUTLINED_FUNCTION_40_0();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_11();

  return v1(v0);
}

uint64_t AppConfiguration.lastRefreshed.setter(uint64_t a1)
{
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

void AppConfiguration.appStoreReview.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = type metadata accessor for AppConfiguration(v2);
  v4 = OUTLINED_FUNCTION_54_5(v1 + *(v3 + 44));
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
}

double AppConfiguration.endpoints.getter()
{
  type metadata accessor for AppConfiguration(0);

  sub_1C96A53C4();
  return result;
}

uint64_t AppConfiguration.features.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  result = type metadata accessor for AppConfiguration(v2);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *v0 = v5;
  v0[1] = v4;
  return result;
}

double AppConfiguration.geocode.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = (v1 + *(type metadata accessor for AppConfiguration(v2) + 56));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *v0 = *v3;
  v0[1] = v4;
  v0[2] = v6;
  v0[3] = v5;
  sub_1C96A53C4();

  sub_1C96A53C4();
  return result;
}

double AppConfiguration.historicalFacts.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  *v0 = *(v1 + *(type metadata accessor for AppConfiguration(v2) + 60));

  sub_1C96A53C4();
  return result;
}

uint64_t AppConfiguration.locationsConfiguration.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = type metadata accessor for AppConfiguration(v2);
  return sub_1C948CBE4(v1 + *(v3 + 64), v0);
}

double AppConfiguration.namedNetworkConfigurations.getter()
{
  type metadata accessor for AppConfiguration(0);

  sub_1C96A53C4();
  return result;
}

uint64_t AppConfiguration.network.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = (v1 + *(type metadata accessor for AppConfiguration(v2) + 76));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *v0 = v9[0];
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  return sub_1C94B694C(v9, &v8);
}

uint64_t AppConfiguration.notifications.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = *(type metadata accessor for AppConfiguration(v2) + 84);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x70uLL);
  return sub_1C94BDC2C(__dst, &v5);
}

void *AppConfiguration.predictedLocations.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = (v1 + *(type metadata accessor for AppConfiguration(v2) + 92));

  return memcpy(v0, v3, 0x88uLL);
}

double AppConfiguration.widgetPrivacy.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = v1 + *(type metadata accessor for AppConfiguration(v2) + 96);
  result = *(v3 + 32);
  v5 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = result;
  return result;
}

double AppConfiguration.reportWeather.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = (v1 + *(type metadata accessor for AppConfiguration(v2) + 104));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;

  sub_1C96A53C4();
  return result;
}

double AppConfiguration.weatherDataService.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = (v1 + *(type metadata accessor for AppConfiguration(v2) + 120));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;

  sub_1C96A53C4();
  return result;
}

__n128 AppConfiguration.weatherMenu.getter()
{
  v1 = OUTLINED_FUNCTION_40_0();
  v2 = type metadata accessor for AppConfiguration(v1);
  OUTLINED_FUNCTION_42_7(*(v2 + 124));
  result = *(v3 + 32);
  v5 = *(v3 + 48);
  *(v0 + 32) = result;
  *(v0 + 48) = v5;
  return result;
}

uint64_t AppConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A70, &qword_1C96BA170);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  sub_1C96A7F54();
  LOBYTE(v101[0]) = 0;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_26_9();
  v12 = sub_1C946E298(v11);
  OUTLINED_FUNCTION_9_31(v3, v101, v13, v14, v12);
  if (!v2)
  {
    v15 = type metadata accessor for AppConfiguration(0);
    OUTLINED_FUNCTION_7_31(1);
    LOBYTE(v101[0]) = 2;
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D54();
    OUTLINED_FUNCTION_7_31(3);
    OUTLINED_FUNCTION_7_31(4);
    OUTLINED_FUNCTION_7_31(5);
    OUTLINED_FUNCTION_7_31(6);
    v16 = OUTLINED_FUNCTION_54_5(v3 + v15[11]);
    LOBYTE(v101[0]) = v17;
    *&v101[1] = v16;
    v101[2] = v18;
    v101[3] = v19;
    v100[0] = 7;
    sub_1C95D987C();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v101[0] = *(v3 + v15[12]);
    v100[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A78, &qword_1C96BA178);
    v20 = sub_1C95D98D0();
    OUTLINED_FUNCTION_9_31(v101, v100, v21, v22, v20);
    v23 = (v3 + v15[13]);
    v24 = *v23;
    LOBYTE(v23) = v23[1];
    LOBYTE(v101[0]) = v24;
    BYTE1(v101[0]) = v23;
    v100[0] = 9;
    sub_1C95D9984();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v25 = (v3 + v15[14]);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v103 = v25[3];
    v101[0] = v26;
    v101[1] = v27;
    v101[2] = v28;
    v101[3] = v103;
    v100[0] = 10;
    sub_1C95D99D8();
    OUTLINED_FUNCTION_48_5();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    v101[0] = *(v3 + v15[15]);
    v100[0] = 11;
    sub_1C95D9A2C();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    v103 = v15[16];
    v102[0] = 12;
    type metadata accessor for LocationsConfiguration(0);
    OUTLINED_FUNCTION_18_23();
    v31 = sub_1C946E298(v30);
    OUTLINED_FUNCTION_9_31(v3 + v103, v102, v32, v33, v31);
    v34 = v15[17];
    memcpy(v101, (v3 + v34), sizeof(v101));
    memcpy(v100, (v3 + v34), sizeof(v100));
    v99[167] = 13;
    sub_1C94B7A74(v101, v99);
    sub_1C95D9A80();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    memcpy(v99, v100, 0xA0uLL);
    sub_1C94BD530(v99);
    v98 = *(v3 + v15[18]);
    v97 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A68, &qword_1C96BA168);
    v35 = sub_1C9478FAC(&unk_1EDB7CEC0);
    OUTLINED_FUNCTION_9_31(&v98, &v97, v36, v37, v35);
    v96[0] = OUTLINED_FUNCTION_49_5(v15[19]);
    v96[1] = v38;
    v40 = v39[3];
    v42 = *v39;
    v41 = v39[1];
    v96[2] = v39[2];
    v96[3] = v40;
    v92 = v42;
    v93 = v41;
    v43 = v39[3];
    v94 = v39[2];
    v95 = v43;
    v91 = 15;
    sub_1C94B694C(v96, v86);
    sub_1C94F0754();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v90[0] = v92;
    v90[1] = v93;
    v90[2] = v94;
    v90[3] = v95;
    sub_1C94BDA7C(v90);
    v44 = (v3 + v15[20]);
    v45 = *v44;
    v46 = v44[1];
    LOBYTE(v44) = v44[2];
    v89[117] = v45;
    v89[118] = v46;
    v89[119] = v44;
    v89[116] = 16;
    sub_1C95D9B28();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v47 = v15[21];
    memcpy(v89, (v3 + v47), 0x70uLL);
    memcpy(v88, (v3 + v47), sizeof(v88));
    v87[119] = 17;
    sub_1C94BDC2C(v89, v86);
    sub_1C95D9B7C();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    memcpy(v87, v88, 0x70uLL);
    sub_1C94BDE74(v87);
    memcpy(v86, (v3 + v15[23]), 0x88uLL);
    v85 = 18;
    sub_1C95D9BD0();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v81[0] = OUTLINED_FUNCTION_49_5(v15[22]);
    v81[1] = v48;
    v81[2] = *(v49 + 32);
    *(&v81[2] + 10) = *(v49 + 42);
    LOBYTE(v79[0]) = 19;
    sub_1C95D9C24();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v50 = v3 + v15[24];
    v51 = *(v50 + 32);
    v52 = *(v50 + 16);
    v81[0] = *v50;
    v81[1] = v52;
    *&v81[2] = v51;
    LOBYTE(v79[0]) = 28;
    sub_1C95D9C78();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v53 = v3 + v15[25];
    v54 = *v53;
    v55 = *(v53 + 8);
    v56 = *(v53 + 16);
    v57 = *(v53 + 24);
    LOBYTE(v53) = *(v53 + 32);
    *&v81[0] = v54;
    *(&v81[0] + 1) = v55;
    *&v81[1] = v56;
    *(&v81[1] + 1) = v57;
    LOBYTE(v81[2]) = v53;
    LOBYTE(v79[0]) = 20;
    sub_1C95D9CCC();
    OUTLINED_FUNCTION_48_5();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    v58 = (v3 + v15[26]);
    v59 = v58[1];
    *&v81[0] = *v58;
    *(&v81[0] + 1) = v59;
    LOBYTE(v79[0]) = 21;
    sub_1C95D9D20();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    *&v81[0] = *(v3 + v15[27]);
    LOBYTE(v79[0]) = 22;
    sub_1C95D9D74();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    LOBYTE(v81[0]) = 23;
    sub_1C948720C();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();
    v81[0] = OUTLINED_FUNCTION_49_5(v15[29]);
    v81[1] = v60;
    LOBYTE(v79[0]) = 24;
    sub_1C95D9DC8();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v61 = (v3 + v15[30]);
    v62 = v61[1];
    v83 = *v61;
    v84 = v62;
    v82 = 25;
    sub_1C95D9E1C();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    memcpy(v81, (v3 + v15[32]), sizeof(v81));
    v80 = 27;
    sub_1C95D9E70();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v79[0] = OUTLINED_FUNCTION_49_5(v15[31]);
    v79[1] = v63;
    v65 = *(v64 + 48);
    v79[2] = *(v64 + 32);
    v79[3] = v65;
    v78 = 26;
    sub_1C95D9EC4();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    *&v79[0] = *(v3 + v15[33]);
    v78 = 29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A80, &qword_1C96BA180);
    v66 = sub_1C95D9F18();
    OUTLINED_FUNCTION_9_31(v79, &v78, v67, v68, v66);
    LOBYTE(v79[0]) = 30;
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D24();
    *&v79[0] = *(v3 + v15[35]);
    v78 = 31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A48, &qword_1C96AA2F8);
    OUTLINED_FUNCTION_21_21();
    v70 = sub_1C95DA0FC(v69);
    OUTLINED_FUNCTION_9_31(v79, &v78, v71, v72, v70);
    *&v79[0] = *(v3 + v15[36]);
    v78 = 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A50, &unk_1C96AA300);
    OUTLINED_FUNCTION_21_21();
    v74 = sub_1C95D9FF0(v73);
    OUTLINED_FUNCTION_9_31(v79, &v78, v75, v76, v74);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C95D9484(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C96A7E04();

  if (v2 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C95D9508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C95D9484(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C95D9538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C94755F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C95D9564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D94D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95D958C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95D94DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C95D95B4(uint64_t a1)
{
  v2 = sub_1C946DAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D95F0(uint64_t a1)
{
  v2 = sub_1C946DAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95D96C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A98, &unk_1C96BA460);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = sub_1C96A7B74();
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  sub_1C96A7B64();
  result = OUTLINED_FUNCTION_23_1(v8, 1, v9);
  if (!v12)
  {
    return (*(*(v9 - 8) + 32))(v10, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C95D97E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A7B74();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_1C95D987C()
{
  result = qword_1EDB7D908;
  if (!qword_1EDB7D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D908);
  }

  return result;
}

unint64_t sub_1C95D98D0()
{
  result = qword_1EDB7CEE0;
  if (!qword_1EDB7CEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6A78, &qword_1C96BA178);
    sub_1C946E298(&unk_1EDB7E3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CEE0);
  }

  return result;
}

unint64_t sub_1C95D9984()
{
  result = qword_1EDB7E330;
  if (!qword_1EDB7E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E330);
  }

  return result;
}

unint64_t sub_1C95D99D8()
{
  result = qword_1EDB7E870;
  if (!qword_1EDB7E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E870);
  }

  return result;
}

unint64_t sub_1C95D9A2C()
{
  result = qword_1EDB7D888;
  if (!qword_1EDB7D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D888);
  }

  return result;
}

unint64_t sub_1C95D9A80()
{
  result = qword_1EDB7EE30;
  if (!qword_1EDB7EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE30);
  }

  return result;
}

unint64_t sub_1C95D9AD4()
{
  result = qword_1EDB7DB70;
  if (!qword_1EDB7DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB70);
  }

  return result;
}

unint64_t sub_1C95D9B28()
{
  result = qword_1EDB7EDD8;
  if (!qword_1EDB7EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDD8);
  }

  return result;
}

unint64_t sub_1C95D9B7C()
{
  result = qword_1EDB7D980;
  if (!qword_1EDB7D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D980);
  }

  return result;
}

unint64_t sub_1C95D9BD0()
{
  result = qword_1EDB7D5C8;
  if (!qword_1EDB7D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5C8);
  }

  return result;
}

unint64_t sub_1C95D9C24()
{
  result = qword_1EDB7E820;
  if (!qword_1EDB7E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E820);
  }

  return result;
}

unint64_t sub_1C95D9C78()
{
  result = qword_1EDB7D958;
  if (!qword_1EDB7D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D958);
  }

  return result;
}

unint64_t sub_1C95D9CCC()
{
  result = qword_1EDB7D4A8;
  if (!qword_1EDB7D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4A8);
  }

  return result;
}

unint64_t sub_1C95D9D20()
{
  result = qword_1EDB7FC60;
  if (!qword_1EDB7FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC60);
  }

  return result;
}

unint64_t sub_1C95D9D74()
{
  result = qword_1EDB7D5F0;
  if (!qword_1EDB7D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5F0);
  }

  return result;
}

unint64_t sub_1C95D9DC8()
{
  result = qword_1EDB7FC38;
  if (!qword_1EDB7FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC38);
  }

  return result;
}

unint64_t sub_1C95D9E1C()
{
  result = qword_1EDB7FBD0;
  if (!qword_1EDB7FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBD0);
  }

  return result;
}

unint64_t sub_1C95D9E70()
{
  result = qword_1EDB7E998;
  if (!qword_1EDB7E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E998);
  }

  return result;
}

unint64_t sub_1C95D9EC4()
{
  result = qword_1EDB7FC10;
  if (!qword_1EDB7FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC10);
  }

  return result;
}

unint64_t sub_1C95D9F18()
{
  result = qword_1EDB7CED0;
  if (!qword_1EDB7CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6A80, &qword_1C96BA180);
    sub_1C95D9F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CED0);
  }

  return result;
}

unint64_t sub_1C95D9F9C()
{
  result = qword_1EDB7E308;
  if (!qword_1EDB7E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E308);
  }

  return result;
}

unint64_t sub_1C95D9FF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A50, &unk_1C96AA300);
    result = OUTLINED_FUNCTION_67_4(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C95DA048(uint64_t a1)
{
  v2 = type metadata accessor for EndpointConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C95DA0A8()
{
  result = qword_1EC3A6A90;
  if (!qword_1EC3A6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A90);
  }

  return result;
}

unint64_t sub_1C95DA0FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A48, &qword_1C96AA2F8);
    result = OUTLINED_FUNCTION_67_4(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_1C96A7C74();
}

uint64_t OUTLINED_FUNCTION_68_1@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = v11;
  a1[1] = v12;
  a1[2] = a11;
  a1[3] = v13;
}

uint64_t sub_1C95DA1D8()
{
  v0 = sub_1C96A45A4();
  __swift_allocate_value_buffer(v0, qword_1EDB94A40);
  v1 = __swift_project_value_buffer(v0, qword_1EDB94A40);
  *v1 = type metadata accessor for BundleLookup();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1C95DA274@<X0>(double a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6340, &unk_1C96B56A8);
  OUTLINED_FUNCTION_7(v13);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AB8, &unk_1C96BA488);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  *a4 = sub_1C96A6344();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC0, &qword_1C96BA498);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8, &qword_1C96BA4A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a4[1] = sub_1C96A6344();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a4[2] = sub_1C96A6344();
  v56 = v53;
  v57 = v54;
  sub_1C96A3D04();
  sub_1C96A6364();

  v56 = a5;
  v57 = a6;
  type metadata accessor for CLLocationCoordinate2D(0);
  sub_1C95DBBC4(&unk_1EDB7CD80, MEMORY[0x1E69E19B0]);
  sub_1C95DBBC4(&qword_1EDB7AB18, MEMORY[0x1E69E19A8]);
  sub_1C96A6284();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6348, &unk_1C96BA7B0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v47);
  sub_1C96A6364();

  v48 = sub_1C96A4A54();
  v49 = *(v48 - 8);
  v50 = v55;
  (*(v49 + 16))(v12, v55, v48);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v48);
  sub_1C96A6364();

  return (*(v49 + 8))(v50, v48);
}

uint64_t static CurrentLocationRawEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a001_2;
  sub_1C96A53C4();
  return v0;
}

uint64_t static CurrentLocationRawEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a001_2 = a1;
  qword_1EC3A6AB0 = a2;
}

double sub_1C95DA864@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A6AB0;
  *a1 = *a001_2;
  a1[1] = v2;
  sub_1C96A53C4();
  return result;
}

uint64_t sub_1C95DA8B4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a001_2 = v2;
  qword_1EC3A6AB0 = v1;
  sub_1C96A53C4();
}

uint64_t CurrentLocationRawEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AB8, &unk_1C96BA488);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  *a1 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC0, &qword_1C96BA498);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8, &qword_1C96BA4A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  a1[1] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  result = sub_1C96A6344();
  a1[2] = result;
  return result;
}

uint64_t sub_1C95DABC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1702125924 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

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

uint64_t sub_1C95DACD4(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x616E6964726F6F63;
  }

  return 1702125924;
}

uint64_t sub_1C95DAD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95DABC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95DAD4C(uint64_t a1)
{
  v2 = sub_1C95DB004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95DAD88(uint64_t a1)
{
  v2 = sub_1C95DB004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentLocationRawEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AD0, &qword_1C96BA4A8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v11 = *v1;
  v10 = v1[1];
  v24 = v1[2];
  v25 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95DB004();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v27 = v11;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v12, v13, &unk_1C96AB0A0, v14);
  OUTLINED_FUNCTION_8_5();
  sub_1C96A7D74();

  if (!v2)
  {
    v15 = v24;
    v27 = v25;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8, &qword_1C96BA4A0);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v16, v17, &qword_1C96BA4A0, v18);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
    v27 = v15;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v19, v20, &unk_1C96AB0B0, v21);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C95DB004()
{
  result = qword_1EC3A6AD8;
  if (!qword_1EC3A6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6AD8);
  }

  return result;
}

uint64_t CurrentLocationRawEntity.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AE8, &qword_1C96BA4B0);
  OUTLINED_FUNCTION_1();
  v51 = v4;
  v52 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AB8, &unk_1C96BA488);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  v56 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC0, &qword_1C96BA498);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8, &qword_1C96BA4A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  v54 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v40 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1C95DB004();
  v41 = v53;
  sub_1C96A7F44();
  if (!v41)
  {
    v42 = v51;
    v57 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8, &unk_1C96AB0A0);
    OUTLINED_FUNCTION_11_9();
    v43 = v7;
    sub_1C96A7CB4();

    v45 = v58;
    v57 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A6AF0, &qword_1EC3A6AC8, &qword_1C96BA4A0);
    OUTLINED_FUNCTION_11_9();
    sub_1C96A7CB4();

    v46 = v58;
    v57 = 2;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_11_9();
    v47 = v52;
    sub_1C96A7CB4();
    (*(v42 + 8))(v43, v47);

    v48 = v58;
    v49 = v50;
    *v50 = v45;
    v49[1] = v46;
    v49[2] = v48;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

unint64_t sub_1C95DB570()
{
  result = qword_1EDB7BB90;
  if (!qword_1EDB7BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB90);
  }

  return result;
}

unint64_t sub_1C95DB5C8()
{
  result = qword_1EDB7BBA8;
  if (!qword_1EDB7BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BBA8);
  }

  return result;
}

unint64_t sub_1C95DB620()
{
  result = qword_1EDB7BB80;
  if (!qword_1EDB7BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB80);
  }

  return result;
}

unint64_t sub_1C95DB674()
{
  result = qword_1EDB7BB88;
  if (!qword_1EDB7BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB88);
  }

  return result;
}

unint64_t sub_1C95DB6CC()
{
  result = qword_1EDB7BBA0;
  if (!qword_1EDB7BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BBA0);
  }

  return result;
}

unint64_t sub_1C95DB748()
{
  result = qword_1EDB7BB98;
  if (!qword_1EDB7BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB98);
  }

  return result;
}

uint64_t sub_1C95DB79C(uint64_t a1)
{
  v2 = sub_1C95A6260();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95DB7E8(uint64_t a1)
{
  v2 = sub_1C95A6260();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95DB834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95A6260();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95DB8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95A6260();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95DB918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95A6260();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95DB96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95A6260();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationRawEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95DBAC0()
{
  result = qword_1EC3A6AF8;
  if (!qword_1EC3A6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6AF8);
  }

  return result;
}

unint64_t sub_1C95DBB18()
{
  result = qword_1EC3A6B00;
  if (!qword_1EC3A6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B00);
  }

  return result;
}

unint64_t sub_1C95DBB70()
{
  result = qword_1EC3A6B08;
  if (!qword_1EC3A6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B08);
  }

  return result;
}

uint64_t sub_1C95DBBC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C95DBC10()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3C3D60);
  __swift_project_value_buffer(v6, qword_1EC3C3D60);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t sub_1C95DBE28()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3C3D78);
  __swift_project_value_buffer(v0, qword_1EC3C3D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00, &qword_1C96B2380);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50, &unk_1C96BACE0);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50, &unk_1C96BACE0, MEMORY[0x1E69E6328]);
  return sub_1C96A79E4();
}

uint64_t sub_1C95DBF80()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BF0, &qword_1C96BACA0);
  v2 = sub_1C95E0D48();
  v3 = sub_1C9469CB4(&qword_1EC3A6BF8, &qword_1EC3A6BF0, &qword_1C96BACA0, MEMORY[0x1E695A700]);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1C95DC070, 0, v1, v2, v3);
}

uint64_t sub_1C95DC070@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C00, &qword_1C96BACA8);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C08, &qword_1C96BACB0);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v19 - v10;
  v30 = 5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C10, &qword_1C96BACB8);
  v21 = sub_1C95E0D48();
  sub_1C95E090C();
  sub_1C9469CB4(&qword_1EC3A6C18, &qword_1EC3A6C10, &qword_1C96BACB8, MEMORY[0x1E695A498]);
  v22 = v11;
  sub_1C96A4094();
  sub_1C9469CB4(&qword_1EC3A6C20, &qword_1EC3A6C08, &qword_1C96BACB0, MEMORY[0x1E695A670]);
  v12 = v6;
  sub_1C96A3FF4();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  sub_1C96A40D4();
  sub_1C9469CB4(&qword_1EC3A6C28, &qword_1EC3A6C00, &qword_1C96BACA8, MEMORY[0x1E695A710]);
  v14 = v25;
  v15 = v26;
  sub_1C96A3FF4();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_1C96A3FE4();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_1C95DC454@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C30, &qword_1C96BACC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C38, &qword_1C96BACC8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C10, &qword_1C96BACB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1C95E0D48();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C40, &unk_1C96BACD0);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  sub_1C96A3F14();
  v10 = sub_1C9469CB4(&qword_1EC3A6C18, &qword_1EC3A6C10, &qword_1C96BACB8, MEMORY[0x1E695A498]);
  MEMORY[0x1CCA89910](v6, &unk_1F49064C0, v3, v10);
  v11 = *(v4 + 8);
  v11(v6, v3);
  MEMORY[0x1CCA89900](v9, &unk_1F49064C0, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_1C95DC73C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C30, &qword_1C96BACC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C38, &qword_1C96BACC8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C10, &qword_1C96BACB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1C95E0D48();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C40, &unk_1C96BACD0);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  sub_1C96A3F14();
  v10 = sub_1C9469CB4(&qword_1EC3A6C18, &qword_1EC3A6C10, &qword_1C96BACB8, MEMORY[0x1E695A498]);
  MEMORY[0x1CCA89910](v6, &unk_1F49064C0, v3, v10);
  v11 = *(v4 + 8);
  v11(v6, v3);
  MEMORY[0x1CCA89900](v9, &unk_1F49064C0, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_1C95DCA80()
{
  v35 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v33 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v34 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40, &unk_1C96BC780);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708, &qword_1C96AF8B0);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = sub_1C96A4C14();
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v15 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = sub_1C96A6FF4();
  v23 = OUTLINED_FUNCTION_7(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  v24 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE8, &qword_1C96BAC68);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_1EDB94A40);
  v26 = *(v17 + 16);
  v26(v21, v25, v15);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_7_32();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v26(v21, v25, v15);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_7_32();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v24);
  v36[0] = 0;
  v27 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v27);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v27);
  (*(v33 + 104))(v34, *MEMORY[0x1E695A500], v35);
  sub_1C95E0A0C();
  v28 = sub_1C96A3C94();
  sub_1C954DDE0();
  return v28;
}

uint64_t sub_1C95DCED0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C95DCEF0, 0, 0);
}

uint64_t sub_1C95DCEF0()
{
  v8 = v0;
  sub_1C96A3C64();
  switch(*(v0 + 32))
  {
    case 1:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_1EDB80318);
      }

      v7 = 2;
      UnitManager.setPreferredDistanceUnit(_:)(&v7);
      break;
    case 2:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_1EDB80318);
      }

      v6 = 2;
      UnitManager.setPreferredPrecipitationUnit(_:)(&v6);
      break;
    case 3:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_1EDB80318);
      }

      v5 = 5;
      UnitManager.setPreferredPressureUnit(_:)(&v5);
      break;
    case 4:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_1EDB80318);
      }

      v3 = 5;
      UnitManager.setPreferredWindSpeedUnit(_:)(&v3);
      break;
    case 5:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_1EDB80318);
      }

      UnitManager.resetPreferredUnits()();
      break;
    default:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16(&qword_1EDB80318);
      }

      v4 = 2;
      UnitManager.setPreferredTemperatureUnit(_:)(&v4);
      break;
  }

  sub_1C9488854();
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD000000000000020, 0x80000001C96D39C0);
  sub_1C96A3BB4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C95DD15C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1C95DD204(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C94B9278;

  return sub_1C95DCED0(a1, v4);
}

uint64_t sub_1C95DD2A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C95DCA80();
  *a1 = result;
  return result;
}

uint64_t sub_1C95DD2CC(uint64_t a1, __n128 a2)
{
  v3 = sub_1C95E0D48();

  return MEMORY[0x1EEDB2D90](a1, v3);
}

uint64_t sub_1C95DD308()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  sub_1C95DCA80();
  v3 = sub_1C95E0D48();
  OUTLINED_FUNCTION_3_39(v3, sub_1C95DD5F8, v4, sub_1C95DDA74);
  v29 = sub_1C96A3E04();
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_117();
  v5(v6);
  v7 = sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39(v7, sub_1C95DDB08, v8, sub_1C95DDF84);
  v9 = sub_1C96A3E04();
  v10 = OUTLINED_FUNCTION_117();
  v5(v10);
  v11 = sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39(v11, sub_1C95DDFB4, v12, sub_1C95DE430);
  v13 = sub_1C96A3E04();
  v14 = OUTLINED_FUNCTION_117();
  v5(v14);
  v15 = sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39(v15, sub_1C95DE46C, v16, sub_1C95DE8E8);
  v17 = sub_1C96A3E04();
  v18 = OUTLINED_FUNCTION_117();
  v5(v18);
  v19 = sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39(v19, sub_1C95DE918, v20, sub_1C95DED94);
  v21 = sub_1C96A3E04();
  v22 = OUTLINED_FUNCTION_117();
  v5(v22);
  v30 = sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39(v30, sub_1C95DEDCC, v23, sub_1C95DF248);
  v24 = sub_1C96A3E04();
  v25 = OUTLINED_FUNCTION_117();
  v5(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0, &qword_1C96BCBF0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C96BA7C0;
  *(v26 + 32) = v29;
  *(v26 + 40) = v9;
  *(v26 + 48) = v13;
  *(v26 + 56) = v17;
  *(v26 + 64) = v21;
  *(v26 + 72) = v24;
  v27 = sub_1C96A3DF4();

  return v27;
}

uint64_t sub_1C95DD5F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0, &qword_1C96BAC50);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8, &qword_1C96BAC58);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0, &qword_1C96BAC60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

void *sub_1C95DDA8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95DCA24();
  *a1 = v3;
  return result;
}

uint64_t sub_1C95DDB08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0, &qword_1C96BAC50);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8, &qword_1C96BAC58);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0, &qword_1C96BAC60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DDFB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0, &qword_1C96BAC50);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8, &qword_1C96BAC58);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0, &qword_1C96BAC60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DE46C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0, &qword_1C96BAC50);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8, &qword_1C96BAC58);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0, &qword_1C96BAC60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DE918()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0, &qword_1C96BAC50);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8, &qword_1C96BAC58);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0, &qword_1C96BAC60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DEDCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0, &qword_1C96BAC50);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8, &qword_1C96BAC58);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0, &qword_1C96BAC60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DF260(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C96A3D94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  swift_getKeyPath();
  sub_1C95E090C();
  sub_1C96A3D04();

  sub_1C95E0D48();
  sub_1C96A3D84();
  v9 = sub_1C96A3D74();
  (*(v4 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0, &qword_1C96BCC20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C96AA1C0;
  *(v10 + 32) = v9;
  v11 = sub_1C96A3D64();

  return v11;
}

uint64_t sub_1C95DF3C0()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  sub_1C95E0D48();
  sub_1C96A3CE4();
  v1 = sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_117();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0, &unk_1C96BCBE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v1;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C95DF4F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8, &unk_1C96B2320);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C96AA1C0;
  *(v3 + 32) = v2;
  v4 = sub_1C96A3D44();

  return v4;
}

uint64_t sub_1C95DF568()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708, &qword_1C96AF8B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v4, qword_1EC3A6B10);
  __swift_project_value_buffer(v4, qword_1EC3A6B10);
  sub_1C96A4594();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_1C96A3FC4();
}

uint64_t sub_1C95DF694(__n128 a1)
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48(&qword_1EC3A46F8);
  }

  v1 = sub_1C96A3FD4();

  return __swift_project_value_buffer(v1, qword_1EC3A6B10);
}

uint64_t static UnitKind.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48(&qword_1EC3A46F8);
  }

  v3 = sub_1C96A3FD4();
  v4 = __swift_project_value_buffer(v3, qword_1EC3A6B10);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t static UnitKind.typeDisplayRepresentation.setter(uint64_t a1, __n128 a2)
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48(&qword_1EC3A46F8);
  }

  v3 = sub_1C96A3FD4();
  v4 = __swift_project_value_buffer(v3, qword_1EC3A6B10);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t (*static UnitKind.typeDisplayRepresentation.modify(uint64_t a1, __n128 a2))(uint64_t a1)
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48(&qword_1EC3A46F8);
  }

  v2 = sub_1C96A3FD4();
  __swift_project_value_buffer(v2, qword_1EC3A6B10);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C95DF900@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = sub_1C95DF694(a2);
  swift_beginAccess();
  v4 = sub_1C96A3FD4();
  return (*(*(v4 - 8) + 16))(a1, v3, v4);
}

uint64_t sub_1C95DF97C(uint64_t a1, __n128 a2)
{
  v3 = sub_1C95DF694(a2);
  swift_beginAccess();
  v4 = sub_1C96A3FD4();
  (*(*(v4 - 8) + 24))(v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C95DFA00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700, &qword_1C96BCBC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v52 = v40 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708, &qword_1C96AF8B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v40 - v3;
  v5 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C96A45A4();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v45 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v56);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C60, &qword_1C96BACF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C68, &qword_1C96BACF8);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v50 = *(*(v14 - 8) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C96BA7C0;
  v17 = v16 + v15;
  v54 = v14;
  v43 = *(v14 + 48);
  v44 = v16;
  *(v16 + v15) = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v18 = v55;
  v47 = __swift_project_value_buffer(v55, qword_1EDB94A40);
  v19 = v53 + 16;
  v51 = *(v53 + 16);
  v20 = v45;
  v51(v45, v47, v18);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v56);
  v48 = sub_1C96A3E84();
  v21 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v48);
  sub_1C96A3EA4();
  v53 = v19;
  v49 = v17;
  v43 = *(v54 + 48);
  *(v17 + v50) = 1;
  sub_1C96A6FA4();
  v22 = v47;
  v51(v20, v47, v18);
  v46 = v7;
  sub_1C96A4BC4();
  v40[0] = v13;
  sub_1C96A45D4();
  v41 = v4;
  v23 = v56;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v56);
  v24 = v48;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v48);
  sub_1C96A3EA4();
  v26 = v49;
  v25 = v50;
  v27 = *(v54 + 48);
  v42 = (v49 + 2 * v50);
  v43 = v27;
  *v42 = 2;
  v40[1] = v11;
  sub_1C96A6FA4();
  v28 = v51;
  v51(v20, v22, v55);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v29 = v41;
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v23);
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v24);
  sub_1C96A3EA4();
  v30 = (v26 + 3 * v25);
  v31 = v54;
  v43 = *(v54 + 48);
  *v30 = 3;
  sub_1C96A6FA4();
  v32 = v45;
  v33 = v47;
  v28(v45, v47, v55);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v34 = v56;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v56);
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v48);
  sub_1C96A3EA4();
  v35 = v50;
  v43 = *(v31 + 48);
  *(v49 + 4 * v50) = 4;
  sub_1C96A6FA4();
  v36 = v55;
  v51(v32, v33, v55);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v34);
  v37 = v52;
  v38 = v48;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v48);
  sub_1C96A3EA4();
  *(v49 + 5 * v35) = 5;
  sub_1C96A6FA4();
  v51(v32, v47, v36);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v56);
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  sub_1C96A3EA4();
  sub_1C96A3EB4();
  sub_1C95E0B60();
  result = sub_1C96A6F04();
  qword_1EC3A6B28 = result;
  return result;
}

uint64_t *sub_1C95E0268()
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51(&qword_1EC3A4700);
  }

  return &qword_1EC3A6B28;
}

double static UnitKind.caseDisplayRepresentations.getter()
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51(&qword_1EC3A4700);
  }

  swift_beginAccess();
  sub_1C96A53C4();
  return result;
}

uint64_t static UnitKind.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51(&qword_1EC3A4700);
  }

  swift_beginAccess();
  qword_1EC3A6B28 = a1;
}

uint64_t (*static UnitKind.caseDisplayRepresentations.modify())(uint64_t a1)
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51(&qword_1EC3A4700);
  }

  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1C95E03F4@<D0>(void *a1@<X8>)
{
  sub_1C95E0268();
  swift_beginAccess();
  *a1 = qword_1EC3A6B28;
  sub_1C96A53C4();
  return result;
}

uint64_t sub_1C95E0448(uint64_t *a1)
{
  v1 = *a1;
  sub_1C96A53C4();
  sub_1C95E0268();
  swift_beginAccess();
  qword_1EC3A6B28 = v1;
}

WeatherCore::UnitKind_optional __swiftcall UnitKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UnitKind.rawValue.getter()
{
  result = 0x74617265706D6574;
  switch(*v0)
  {
    case 1:
      result = 0x65636E6174736964;
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = 0x6572757373657270;
      break;
    case 4:
      result = 1684957559;
      break;
    case 5:
      result = 7105633;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C95E05C4()
{
  result = qword_1EC3A6B30;
  if (!qword_1EC3A6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B30);
  }

  return result;
}

unint64_t sub_1C95E061C()
{
  result = qword_1EC3A6B38;
  if (!qword_1EC3A6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B38);
  }

  return result;
}

unint64_t sub_1C95E06B8()
{
  result = qword_1EC3A6B40;
  if (!qword_1EC3A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B40);
  }

  return result;
}

uint64_t sub_1C95E0730@<X0>(uint64_t *a1@<X8>)
{
  result = UnitKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C95E075C()
{
  result = qword_1EC3A6B48;
  if (!qword_1EC3A6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B48);
  }

  return result;
}

unint64_t sub_1C95E07B4()
{
  result = qword_1EC3A6B50;
  if (!qword_1EC3A6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B50);
  }

  return result;
}

unint64_t sub_1C95E080C()
{
  result = qword_1EC3A6B58;
  if (!qword_1EC3A6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B58);
  }

  return result;
}

unint64_t sub_1C95E0864()
{
  result = qword_1EC3A6B60;
  if (!qword_1EC3A6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B60);
  }

  return result;
}

unint64_t sub_1C95E08B8()
{
  result = qword_1EC3A6B68;
  if (!qword_1EC3A6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B68);
  }

  return result;
}

unint64_t sub_1C95E090C()
{
  result = qword_1EC3A6B70;
  if (!qword_1EC3A6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B70);
  }

  return result;
}

unint64_t sub_1C95E0964()
{
  result = qword_1EC3A6B78;
  if (!qword_1EC3A6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B78);
  }

  return result;
}

unint64_t sub_1C95E0A0C()
{
  result = qword_1EC3A6B80;
  if (!qword_1EC3A6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B80);
  }

  return result;
}

uint64_t sub_1C95E0A60(uint64_t a1)
{
  v2 = sub_1C95E0A0C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1C95E0AB0()
{
  result = qword_1EC3A6B88;
  if (!qword_1EC3A6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B88);
  }

  return result;
}

unint64_t sub_1C95E0B08()
{
  result = qword_1EC3A6B90;
  if (!qword_1EC3A6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B90);
  }

  return result;
}

unint64_t sub_1C95E0B60()
{
  result = qword_1EC3A6B98;
  if (!qword_1EC3A6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B98);
  }

  return result;
}

uint64_t sub_1C95E0BB8(uint64_t a1)
{
  v2 = sub_1C95E0964();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for UnitKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C95E0D48()
{
  result = qword_1EC3A6BC8;
  if (!qword_1EC3A6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6BC8);
  }

  return result;
}

unint64_t sub_1C95E0D9C()
{
  result = qword_1EC3A6C48;
  if (!qword_1EC3A6C48)
  {
    sub_1C96A3B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6C48);
  }

  return result;
}

uint64_t PredictedLocationsAuthorizationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  PredictedLocationsAuthorizationManager.init()();
  return v0;
}

uint64_t sub_1C95E0E50()
{
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
  }

  v1 = sub_1C96A6154();
  *(v0 + 16) = __swift_project_value_buffer(v1, qword_1EDB7AC48);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Will await routine manager continuation", v4, 2u);
    OUTLINED_FUNCTION_26();
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1C95E0FC8;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 32, 0, 0, 0xD00000000000001FLL, 0x80000001C96D3B70, sub_1C95E117C, 0, v6);
}

uint64_t sub_1C95E0FC8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C95E10B4, 0, 0);
}

uint64_t sub_1C95E10B4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Did finish await for routine manager continuation", v5, 2u);
    OUTLINED_FUNCTION_26();
  }

  v6 = *(v1 + 8);

  return v6(v2);
}

void sub_1C95E117C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80, &qword_1C96BADE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7AC48);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C945E000, v7, v8, "Will call routine manager", v9, 2u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  v10 = [objc_opt_self() defaultManager];
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v5, v2);
  aBlock[4] = sub_1C95E2888;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C95E1744;
  aBlock[3] = &block_descriptor_22_0;
  v13 = _Block_copy(aBlock);

  [v10 fetchRoutineStateWithHandler_];
  _Block_release(v13);
}

uint64_t sub_1C95E1404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80, &qword_1C96BADE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v15 = a1 == 2 && a2 == 0;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7AC48);
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_1C945E000, v17, v18, "Routine manager supplied state %{BOOL}d", v19, 8u);
    MEMORY[0x1CCA8E3D0](v19, -1, -1);
  }

  v20 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  (*(v7 + 16))(v10, a3, v6);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v7 + 32))(v22 + v21, v10, v6);
  *(v22 + v21 + v8) = v15;
  sub_1C951C258();
}

uint64_t sub_1C95E16A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C95E16C4, 0, 0);
}

uint64_t sub_1C95E16C4()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = *(v0 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80, &qword_1C96BADE8);
  sub_1C96A7394();
  OUTLINED_FUNCTION_17();

  return v1();
}

void sub_1C95E1744(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1C96A3D04();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C95E17BC()
{
  v29 = sub_1C96A6624();
  v0 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - v4;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  v28[1] = __swift_project_value_buffer(v6, qword_1EDB7AC48);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C945E000, v7, v8, "Will sync await routine manager continuation", v9, 2u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  v10 = dispatch_semaphore_create(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = [objc_opt_self() defaultManager];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  aBlock[4] = sub_1C95E2880;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C95E1744;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);
  sub_1C96A3D04();
  v15 = v10;

  [v12 fetchRoutineStateWithHandler_];
  _Block_release(v14);

  sub_1C96A6614();
  sub_1C96A6684();
  v16 = *(v0 + 8);
  v17 = v29;
  v16(v2, v29);
  v18 = sub_1C96A7814();
  v16(v5, v17);
  v19 = sub_1C96A6134();
  v20 = sub_1C96A76A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v30 = v18 & 1;
    v23 = sub_1C96A70A4();
    v25 = sub_1C9484164(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1C945E000, v19, v20, "Did finish waiting for routine manager, timeoutResult=%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }

  swift_beginAccess();
  v26 = *(v11 + 16);

  return v26;
}

uint64_t sub_1C95E1BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 == 2 && a2 == 0;
  swift_beginAccess();
  *(a3 + 16) = v5;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7AC48);
  sub_1C96A3D04();
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_beginAccess();
    *(v9 + 4) = *(a3 + 16);

    _os_log_impl(&dword_1C945E000, v7, v8, "Routine manager supplied state %{BOOL}d", v9, 8u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  else
  {
  }

  return sub_1C96A7834();
}

uint64_t sub_1C95E1D10()
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CC10 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  return v1;
}

unint64_t sub_1C95E1D94()
{
  result = qword_1EDB7ACD8;
  if (!qword_1EDB7ACD8)
  {
    sub_1C96A5B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7ACD8);
  }

  return result;
}

uint64_t sub_1C95E1DEC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  sub_1C96A5B14();
  sub_1C95E1D94();
  v4 = sub_1C96A7374();

  return MEMORY[0x1EEE6DFA0](sub_1C95E1F10, v4, v3);
}

uint64_t sub_1C95E1F10()
{
  v16 = v0;

  v2 = *(v0 + 48);
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB7AC48);
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = OUTLINED_FUNCTION_5_35();
    switch(v2)
    {
      case 1:
        v8 = 0xD000000000000012;
        v1 = 0x80000001C96D3AA0;
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_8_33();
        break;
      case 3:
        OUTLINED_FUNCTION_1_49();
        v8 = v10 + 6;
        break;
      case 4:
        OUTLINED_FUNCTION_1_49();
        v8 = v9 + 7;
        break;
      default:
        break;
    }

    v11 = sub_1C9484164(v8, v1, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C945E000, v4, v5, "Did async fetch predicted locations authorization: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v12 = *(v0 + 24);
  **(v0 + 16) = v2;
  os_unfair_lock_lock((v12 + 16));

  *(v12 + 24) = 0;
  os_unfair_lock_unlock((v12 + 16));
  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_1C95E20F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1C96A5B24();
  sub_1C96A5B14();
  sub_1C95E1D94();
  v5 = sub_1C96A7374();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C95E2190, v5, v4);
}

uint64_t sub_1C95E2190()
{
  OUTLINED_FUNCTION_18();
  if (qword_1EDB7B0E0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1EDB7B0E0);
  }

  if (byte_1EDB7B0E9 == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_1C95E228C;

    return sub_1C95E0E34();
  }

  else
  {

    **(v0 + 16) = 1;
    OUTLINED_FUNCTION_17();

    return v3();
  }
}

uint64_t sub_1C95E228C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  *(*v0 + 72) = v2;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C95E23B0, v4, v3);
}

uint64_t sub_1C95E23B0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);

  if (v1 == 1)
  {
    if (sub_1C95E1D10())
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    v2 = 3;
  }

  **(v0 + 16) = v2;
  OUTLINED_FUNCTION_17();

  return v3();
}

WeatherCore::PredictedLocationsAuthorization __swiftcall PredictedLocationsAuthorizationManager.syncFetchAuthorization()()
{
  v2 = v0;
  sub_1C95E2604(&v15);
  v3 = v15;
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_75(&qword_1EDB7AC40);
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC48);
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = OUTLINED_FUNCTION_5_35();
    switch(v3)
    {
      case 1:
        v9 = 0xD000000000000012;
        v1 = 0x80000001C96D3AA0;
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_8_33();
        break;
      case 3:
        OUTLINED_FUNCTION_1_49();
        v9 = v11 + 6;
        break;
      case 4:
        OUTLINED_FUNCTION_1_49();
        v9 = v10 + 7;
        break;
      default:
        break;
    }

    v12 = sub_1C9484164(v9, v1, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Did sync fetch predicted locations authorization: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  *v2 = v3;
  return result;
}

void sub_1C95E2604(char *a1@<X8>)
{
  if (qword_1EDB7B0E0 != -1)
  {
    swift_once();
  }

  if (byte_1EDB7B0E9 == 1)
  {
    if (sub_1C95E17BC())
    {
      if (sub_1C95E1D10())
      {
        v2 = 2;
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 3;
    }
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

Swift::Bool __swiftcall PredictedLocationsAuthorizationManager.isFeatureAvailable()()
{
  if (qword_1EDB7B0E0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1EDB7B0E0);
  }

  return byte_1EDB7B0E9;
}

uint64_t PredictedLocationsAuthorizationManager.__deallocating_deinit()
{
  sub_1C95E27B0(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1C95E27B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C70, &qword_1C96BAD08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C95E2888(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80, &qword_1C96BADE8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C95E1404(a1, a2, v6);
}

uint64_t sub_1C95E2914()
{
  OUTLINED_FUNCTION_39();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80, &qword_1C96BADE8) - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_32(v5);

  return sub_1C95E16A0(v7, v8, v9, v2, v3);
}

uint64_t sub_1C95E2A24(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  v5 = (result + 40);
  if (v4)
  {
    while (1)
    {
      v6 = *v5;
      v7[0] = *(v5 - 1);
      v7[1] = v6;
      sub_1C96A53C4();
      sub_1C95E647C(v7, a2);
      if (v2)
      {
        break;
      }

      v5 += 2;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1C95E2AB4(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C95E2B3C()
{
  sub_1C94FB1A8(v0 + 16);
  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1C95E2B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
  *v9 = a1;
  v9[1] = a2;
  sub_1C96A53C4();

  v10 = v4[2];
  v11 = v4[3];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  sub_1C94AA668(v10, v11);
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A41F4();
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  sub_1C95EB0D8();
  v12 = sub_1C96A41E4();
  v14 = v13;

  sub_1C96A4874();
  v15 = sub_1C96A46E4();
  sub_1C95E76AC(v15);

  if (qword_1EDB7ABF8 != -1)
  {
    OUTLINED_FUNCTION_0_76(&qword_1EDB7ABF8);
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7AC00);
  sub_1C96A3D04();
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v21 = sub_1C96A4744();
    v23 = sub_1C9484164(v21, v22, v24);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1C945E000, v17, v18, "Saved data protection data to file %{private,mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  sub_1C9482F3C(v12, v14);

  sub_1C95E7818();
  OUTLINED_FUNCTION_18_3();
}

void sub_1C95E2F64(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_1C96A3D04();
  sub_1C96A50E4();
  v7 = *(a1 + 24);
  v8 = OUTLINED_FUNCTION_17_25();
  sub_1C94AA6AC(v8, v9, v10, v11);
  sub_1C96A50F4();
  if (v7)
  {
    v12 = OUTLINED_FUNCTION_17_25();
    sub_1C94AA668(v12, v13);
    a2(1, 0);

    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    v15 = sub_1C94AA700();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1C95EB194;
    v17[4] = v6;
    OUTLINED_FUNCTION_4_46();
    OUTLINED_FUNCTION_5_36();
    v20[2] = v18;
    v20[3] = &block_descriptor_61;
    v19 = _Block_copy(v20);
    sub_1C96A3D04();

    [v15 wc:v19 synchronizeWithCompletionHandler:?];
    _Block_release(v19);

    OUTLINED_FUNCTION_18_3();
  }
}

uint64_t sub_1C95E3118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C96A6564();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C96A65E4();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);

    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = a1;
    aBlock[4] = sub_1C95EB1F8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_67;
    v17 = _Block_copy(aBlock);
    sub_1C96A3D04();
    sub_1C96A3D04();
    v18 = a1;
    sub_1C96A6594();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
    sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, MEMORY[0x1E69E6328]);
    sub_1C96A79E4();
    v19 = v20;
    MEMORY[0x1CCA8D100](0, v14, v11, v17);
    _Block_release(v17);

    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v21);
  }

  return result;
}

void sub_1C95E3444(uint64_t a1, void (*a2)(_BOOL8, void *), uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-1] - v7;
  v9 = type metadata accessor for DataProtectionData(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4)
    {
      if (qword_1EDB7ABF8 != -1)
      {
        swift_once();
      }

      v14 = sub_1C96A6154();
      __swift_project_value_buffer(v14, qword_1EDB7AC00);
      v15 = a4;
      v16 = sub_1C96A6134();
      v17 = sub_1C96A7684();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v33 = a4;
        v34[0] = v19;
        *v18 = 136446210;
        v20 = a4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8, &unk_1C96B44E0);
        v21 = sub_1C96A70A4();
        v23 = sub_1C9484164(v21, v22, v34);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1C945E000, v16, v17, "Failed to update heart beat and clean up orphan data due to %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1CCA8E3D0](v19, -1, -1);
        MEMORY[0x1CCA8E3D0](v18, -1, -1);
      }

      sub_1C95EB204();
      v24 = swift_allocError();
      *v25 = 0;
      goto LABEL_8;
    }

    sub_1C96A3D04();
    sub_1C96A50E4();

    v28 = *(v13 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID + 8);
    if (!v28)
    {
      sub_1C96A3D04();
      sub_1C96A50F4();

      sub_1C95EB204();
      v24 = swift_allocError();
      *v32 = 2;
LABEL_8:
      a2(0, v24);

      return;
    }

    v29 = *(v13 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
    sub_1C96A53C4();
    sub_1C95E8678(v11);
    v34[0] = v29;
    v34[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
    sub_1C96A6C04();

    v30 = type metadata accessor for DataProtectionValue(0);
    v31 = __swift_getEnumTagSinglePayload(v8, 1, v30) != 1;
    sub_1C9470AFC(v8, &qword_1EC3A6C98, &unk_1C96BAF88);
    sub_1C96A3D04();
    sub_1C96A50F4();

    a2(v31, 0);

    sub_1C95EAF44(v11, type metadata accessor for DataProtectionData);
  }

  else
  {
    sub_1C95EB204();
    v26 = swift_allocError();
    *v27 = 1;
    a2(0, v26);
  }
}

void sub_1C95E386C(uint64_t a1)
{
  sub_1C96A50E4();
  if (qword_1EDB7ABF8 != -1)
  {
    OUTLINED_FUNCTION_0_76(&qword_1EDB7ABF8);
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7AC00);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_29();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Update heat beat and clean up orphan data", v5, 2u);
    OUTLINED_FUNCTION_26();
  }

  v6 = *(v1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID + 8);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
    sub_1C96A53C4();
    sub_1C96A50F4();
    v8 = sub_1C94AA700();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v7;
    v10[4] = v6;
    OUTLINED_FUNCTION_4_46();
    OUTLINED_FUNCTION_5_36();
    v16[2] = v11;
    v16[3] = &block_descriptor_14;
    v12 = _Block_copy(v16);

    [v8 wc:v12 synchronizeWithCompletionHandler:?];
    _Block_release(v12);
  }

  else
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A7684();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_29();
      *v15 = 0;
      _os_log_impl(&dword_1C945E000, v13, v14, "Can't update heart beat due to missing deviceUUID", v15, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_1C96A50F4();
  }
}

uint64_t sub_1C95E3A88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C96A6564();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C96A65E4();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);

    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    v16[5] = a4;
    aBlock[4] = sub_1C95EAEB8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_24_1;
    v17 = _Block_copy(aBlock);
    v18 = a1;
    sub_1C96A3D04();
    sub_1C96A53C4();
    sub_1C96A6594();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
    sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, MEMORY[0x1E69E6328]);
    sub_1C96A79E4();
    v19 = v20;
    MEMORY[0x1CCA8D100](0, v14, v11, v17);
    _Block_release(v17);

    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v21);
  }

  return result;
}

void sub_1C95E3DB4(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v148 = a4;
  v147 = a3;
  v149 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130, &unk_1C96BAF60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v133 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5128, &unk_1C96ACCF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v156 = &v133 - v9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
  v145 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v146 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5150, &qword_1C96ACD18);
  v154 = *(v11 - 8);
  v155 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v157 = (&v133 - v12);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C90, &qword_1C96BAF80);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v151 = &v133 - v15;
  v16 = sub_1C96A4A54();
  v150 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v133 - v23;
  v25 = type metadata accessor for DataProtectionValue(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v133 - v29;
  v31 = type metadata accessor for DataProtectionData(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  MEMORY[0x1EEE9AC00](v32);
  if (*&a1 != 0.0)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v35 = sub_1C96A6154();
    __swift_project_value_buffer(v35, qword_1EDB7AC00);
    v36 = a1;
    v157 = sub_1C96A6134();
    v37 = sub_1C96A7684();

    if (os_log_type_enabled(v157, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v162 = v39;
      *v38 = 136446210;
      v159 = a1;
      v40 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8, &unk_1C96B44E0);
      v41 = sub_1C96A70A4();
      v43 = sub_1C9484164(v41, v42, &v162);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1C945E000, v157, v37, "Failed to update heart beat and clean up orphan data due to %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1CCA8E3D0](v39, -1, -1);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
    }

    else
    {
      v55 = v157;
    }

    return;
  }

  v141 = &v133 - v33;
  v136 = v27;
  v44 = v21;
  v137 = v24;
  v138 = v30;
  v140 = v18;
  v139 = v16;
  v153 = v25;
  v142 = v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v46 = Strong;
  v135 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_lock;
  sub_1C96A3D04();
  sub_1C96A50E4();

  sub_1C95E8678(v141);
  v159 = v147;
  v160 = v148;
  sub_1C96A6C04();
  v47 = v153;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v153);
  v149 = v46;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C9470AFC(v21, &qword_1EC3A6C98, &unk_1C96BAF88);
    v49 = *(v46 + 3);
    v50 = v138;
    if (!v49)
    {
      v115 = v137;
      __swift_storeEnumTagSinglePayload(v137, 1, 1, v47);
      sub_1C9470AFC(v115, &qword_1EC3A6C98, &unk_1C96BAF88);
      if (qword_1EDB7ABF8 != -1)
      {
        swift_once();
      }

      v116 = sub_1C96A6154();
      __swift_project_value_buffer(v116, qword_1EDB7AC00);
      v117 = sub_1C96A6134();
      v118 = sub_1C96A76A4();
      v119 = os_log_type_enabled(v117, v118);
      v74 = v154;
      v60 = v139;
      v76 = v140;
      if (v119)
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_1C945E000, v117, v118, "Skip heart beat update due to missing dataProtectionValue", v120, 2u);
        v121 = v120;
        v72 = v151;
        MEMORY[0x1CCA8E3D0](v121, -1, -1);

        v73 = v155;
        v66 = v150;
      }

      else
      {

        v73 = v155;
        v66 = v150;
        v72 = v151;
      }

      goto LABEL_26;
    }

    v134 = v5;
    v52 = *(v46 + 4);
    v51 = *(v46 + 5);
    v53 = *(v149 + 2);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v54 = v137;
    sub_1C9570100(v53, v49, v52, v51, v137);
  }

  else
  {
    v134 = v5;
    v56 = v136;
    sub_1C95EAFF8(v44, v136, type metadata accessor for DataProtectionValue);
    v54 = v137;
    sub_1C95EAFF8(v56, v137, type metadata accessor for DataProtectionValue);
    v50 = v138;
  }

  __swift_storeEnumTagSinglePayload(v54, 0, 1, v47);
  sub_1C95EAFF8(v54, v50, type metadata accessor for DataProtectionValue);
  v57 = v140;
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A49E4();
  v59 = v58;
  v60 = v139;
  (*(v150 + 8))(v57, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
  sub_1C96A66E4();
  if (v59 - *&v159 <= 86400.0)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v77 = sub_1C96A6154();
    __swift_project_value_buffer(v77, qword_1EDB7AC00);
    v78 = sub_1C96A6134();
    v79 = sub_1C96A76A4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = v50;
      v82 = swift_slowAlloc();
      v158[0] = v82;
      *v80 = 136446210;
      swift_beginAccess();
      sub_1C96A66E4();
      swift_endAccess();
      v83 = sub_1C96A7514();
      v85 = sub_1C9484164(v83, v84, v158);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_1C945E000, v78, v79, "Skip heart beat update due to last update is %{public}s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1CCA8E3D0](v82, -1, -1);
      MEMORY[0x1CCA8E3D0](v80, -1, -1);

      v86 = v81;
    }

    else
    {

      v86 = v50;
    }

    sub_1C95EAF44(v86, type metadata accessor for DataProtectionValue);
    v72 = v151;
    v5 = v134;
    v74 = v154;
    v73 = v155;
    v66 = v150;
    v76 = v140;
  }

  else
  {
    *&v159 = v59;
    sub_1C96A66F4();
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v61 = sub_1C96A6154();
    __swift_project_value_buffer(v61, qword_1EDB7AC00);
    v62 = v148;
    sub_1C96A53C4();
    v63 = sub_1C96A6134();
    v64 = sub_1C96A76A4();

    v65 = os_log_type_enabled(v63, v64);
    v66 = v150;
    if (v65)
    {
      v67 = swift_slowAlloc();
      *&v68 = COERCE_DOUBLE(swift_slowAlloc());
      v159 = v68;
      *v67 = 136446466;
      *(v67 + 4) = sub_1C9484164(v147, v62, &v159);
      *(v67 + 12) = 2082;
      v69 = sub_1C96A7514();
      v71 = sub_1C9484164(v69, v70, &v159);

      *(v67 + 14) = v71;
      _os_log_impl(&dword_1C945E000, v63, v64, "Update heart beat %{public}s with timestamp %{public}s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v68, -1, -1);
      MEMORY[0x1CCA8E3D0](v67, -1, -1);
    }

    v72 = v151;
    v74 = v154;
    v73 = v155;
    v75 = v138;
    sub_1C95E5304(v138);
    sub_1C95EAF44(v75, type metadata accessor for DataProtectionValue);
    v5 = v134;
    v76 = v140;
    v60 = v139;
  }

LABEL_26:
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A49E4();
  v88 = v87;
  (*(v66 + 8))(v76, v60);
  v89 = v142;
  sub_1C95E8678(v142);
  v90 = v144;
  *v72 = sub_1C95E6188(&v72[*(v144 + 48)], v89) & 1;
  v91 = v143;
  sub_1C9470AA0(v72, v143, &qword_1EC3A6C90, &qword_1C96BAF80);
  LODWORD(v148) = *v91;
  sub_1C95EAF44(&v91[*(v90 + 48)], type metadata accessor for DataProtectionData);
  sub_1C9470AA0(v72, v91, &qword_1EC3A6C90, &qword_1C96BAF80);
  sub_1C95EAEC4(&v91[*(v90 + 48)], v89);
  (*(v145 + 16))(v146, v89, v152);
  sub_1C9469CB4(&qword_1EDB7ABA8, &qword_1EC3A5120, &unk_1C96BAF70, MEMORY[0x1E69951F8]);
  sub_1C96A71F4();
  sub_1C9469CB4(&qword_1EDB7ABB8, &qword_1EC3A5150, &qword_1C96ACD18, MEMORY[0x1E69951E8]);
  v150 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v92 = v156;
  while (1)
  {
    sub_1C96A7944();
    if (__swift_getEnumTagSinglePayload(v92, 1, v5) == 1)
    {
      break;
    }

    sub_1C951A67C(v92, v7);
    v93 = *v7;
    v94 = v7[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
    sub_1C96A66E4();
    if (*&v159 + 31536000.0 < v88)
    {
      sub_1C96A53C4();
      sub_1C9470AFC(v7, &qword_1EC3A5130, &unk_1C96BAF60);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v95 = v150;
      }

      else
      {
        sub_1C94FB3F4();
        v95 = v99;
      }

      v96 = *(v95 + 16);
      v97 = v96 + 1;
      v74 = v154;
      if (v96 >= *(v95 + 24) >> 1)
      {
        v150 = v96 + 1;
        sub_1C94FB3F4();
        v97 = v150;
        v95 = v100;
      }

      *(v95 + 16) = v97;
      v150 = v95;
      v98 = v95 + 16 * v96;
      *(v98 + 32) = v93;
      *(v98 + 40) = v94;
      v73 = v155;
      goto LABEL_27;
    }

    sub_1C9470AFC(v7, &qword_1EC3A5130, &unk_1C96BAF60);
    v73 = v155;
    v92 = v156;
    v74 = v154;
  }

  (*(v74 + 8))(v157, v73);
  if ((*(v150 + 16) != 0) | v148 & 1)
  {
    v101 = v141;
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v102 = sub_1C96A6154();
    __swift_project_value_buffer(v102, qword_1EDB7AC00);
    v103 = sub_1C96A6134();
    v104 = sub_1C96A76A4();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = COERCE_DOUBLE(swift_slowAlloc());
      *&v159 = v106;
      *v105 = 136446210;
      v107 = v142;
      swift_beginAccess();
      v161 = sub_1C96A6BA4();
      v108 = sub_1C96A7DB4();
      v110 = sub_1C9484164(v108, v109, &v159);

      *(v105 + 4) = v110;
      _os_log_impl(&dword_1C945E000, v103, v104, "Data count before remove expired device uuid %{public}s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(*&v106);
      MEMORY[0x1CCA8E3D0](*&v106, -1, -1);
      MEMORY[0x1CCA8E3D0](v105, -1, -1);
    }

    else
    {

      v107 = v142;
    }

    sub_1C95E2A24(v150, v107);

    v112 = *(v149 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 32);
    v113 = __swift_project_boxed_opaque_existential_1((v149 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider), *(v149 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 24));
    v114 = MEMORY[0x1EEE9AC00](v113);
    *(&v133 - 2) = v107;
    (*(v112 + 24))(&v159, sub_1C95EAF28, v114);
    v122 = v159;
    v123 = v160;
    v124 = sub_1C94AA700();
    sub_1C95E68D0(v122, v123, 0xD000000000000011, 0x80000001C96D3D80);

    sub_1C9482F3C(v122, v123);
    v125 = sub_1C96A6134();
    v126 = sub_1C96A76A4();
    if (os_log_type_enabled(v125, v126))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v161 = v129;
      *v128 = 136446210;
      swift_beginAccess();
      v158[3] = sub_1C96A6BA4();
      v130 = sub_1C96A7DB4();
      v132 = sub_1C9484164(v130, v131, &v161);

      *(v128 + 4) = v132;
      _os_log_impl(&dword_1C945E000, v125, v126, "Data count after remove expired device uuid %{public}s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x1CCA8E3D0](v129, -1, -1);
      MEMORY[0x1CCA8E3D0](v128, -1, -1);
    }

    v111 = v151;
  }

  else
  {

    v111 = v151;
    v101 = v141;
  }

  sub_1C96A50F4();
  sub_1C9470AFC(v111, &qword_1EC3A6C90, &qword_1C96BAF80);
  sub_1C95EAF44(v101, type metadata accessor for DataProtectionData);

  sub_1C95EAF44(v142, type metadata accessor for DataProtectionData);
}

uint64_t sub_1C95E5304(uint64_t a1)
{
  v3 = type metadata accessor for DataProtectionValue(0);
  MEMORY[0x1EEE9AC00](v3);
  v112 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v102 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v102 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v102 - v18;
  v20 = type metadata accessor for DataProtectionData(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C95E8678(v22);
  v109 = v1;
  v23 = sub_1C95E78FC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  v25 = v117;
  v26 = v118;
  v27 = a1;
  sub_1C96A66E4();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
  v113 = v22;
  v28 = v3;
  sub_1C96A6C04();

  if (__swift_getEnumTagSinglePayload(v19, 1, v3))
  {
    sub_1C9470AFC(v19, &qword_1EC3A6C98, &unk_1C96BAF88);

    v29 = a1;
LABEL_3:
    v30 = v111;
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v31 = sub_1C96A6154();
    v32 = __swift_project_value_buffer(v31, qword_1EDB7AC00);
    v33 = v106;
    sub_1C95EAF9C(v29, v106, type metadata accessor for DataProtectionValue);
    sub_1C95EAF9C(v29, v30, type metadata accessor for DataProtectionValue);
    v114 = v32;
    v34 = sub_1C96A6134();
    v35 = sub_1C96A76A4();
    v36 = os_log_type_enabled(v34, v35);
    v110 = v24;
    if (v36)
    {
      v103 = v35;
      v37 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v116[0] = v102;
      *v37 = 141558787;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_1C96A66E4();
      sub_1C95EAF44(v33, type metadata accessor for DataProtectionValue);
      v38 = sub_1C9484164(v117, v118, v116);

      *(v37 + 14) = v38;
      *(v37 + 22) = 2160;
      *(v37 + 24) = 1752392040;
      *(v37 + 32) = 2081;
      sub_1C96A66E4();
      v40 = v117;
      v39 = v118;
      swift_beginAccess();
      v119 = v40;
      v120 = v39;
      v41 = v104;
      sub_1C96A6C04();

      if (__swift_getEnumTagSinglePayload(v41, 1, v28))
      {
        sub_1C9470AFC(v41, &qword_1EC3A6C98, &unk_1C96BAF88);
        swift_endAccess();
        v42 = 0;
        v43 = 0;
      }

      else
      {
        sub_1C96A66E4();
        v42 = v119;
        v43 = v120;
        sub_1C9470AFC(v41, &qword_1EC3A6C98, &unk_1C96BAF88);
        swift_endAccess();
      }

      v117 = v42;
      v118 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430, &qword_1C96AC0D0);
      v55 = sub_1C96A70A4();
      v57 = v56;
      sub_1C95EAF44(v111, type metadata accessor for DataProtectionValue);
      v58 = sub_1C9484164(v55, v57, v116);

      *(v37 + 34) = v58;
      _os_log_impl(&dword_1C945E000, v34, v103, "HashSalt or last access date is different, update the protection date. salt: %{private,mask.hash}s - %{private,mask.hash}s", v37, 0x2Au);
      v59 = v102;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v59, -1, -1);
      MEMORY[0x1CCA8E3D0](v37, -1, -1);
    }

    else
    {

      sub_1C95EAF44(v30, type metadata accessor for DataProtectionValue);
      sub_1C95EAF44(v33, type metadata accessor for DataProtectionValue);
    }

    v60 = v113;
    v61 = v107;
    sub_1C95EAF9C(v29, v107, type metadata accessor for DataProtectionValue);
    v62 = v112;
    sub_1C95EAF9C(v29, v112, type metadata accessor for DataProtectionValue);
    v63 = sub_1C96A6134();
    v64 = sub_1C96A76A4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v116[0] = v113;
      *v65 = 141558787;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2081;
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
      sub_1C96A66E4();
      v66 = sub_1C96A7514();
      v68 = v67;
      sub_1C95EAF44(v61, type metadata accessor for DataProtectionValue);
      v69 = sub_1C9484164(v66, v68, v116);

      *(v65 + 14) = v69;
      *(v65 + 22) = 2160;
      *(v65 + 24) = 1752392040;
      *(v65 + 32) = 2081;
      sub_1C96A66E4();
      v71 = v117;
      v70 = v118;
      v72 = v60;
      swift_beginAccess();
      v119 = v71;
      v120 = v70;
      v73 = v105;
      sub_1C96A6C04();
      v74 = v73;

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v28);
      v76 = v28;
      if (EnumTagSinglePayload)
      {
        sub_1C9470AFC(v74, &qword_1EC3A6C98, &unk_1C96BAF88);
        swift_endAccess();
        v77 = 0;
      }

      else
      {
        v79 = v74;
        sub_1C96A66E4();
        v77 = v119;
        sub_1C9470AFC(v79, &qword_1EC3A6C98, &unk_1C96BAF88);
        swift_endAccess();
      }

      v78 = v109;
      v117 = v77;
      LOBYTE(v118) = EnumTagSinglePayload != 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0, &qword_1C96B03B8);
      v80 = sub_1C96A70A4();
      v82 = v81;
      sub_1C95EAF44(v112, type metadata accessor for DataProtectionValue);
      v83 = sub_1C9484164(v80, v82, v116);

      *(v65 + 34) = v83;
      _os_log_impl(&dword_1C945E000, v63, v64, "HashSalt or last access date is different, update the protection date. accessDate: %{private,mask.hash}s - %{private,mask.hash}s", v65, 0x2Au);
      v84 = v113;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v84, -1, -1);
      MEMORY[0x1CCA8E3D0](v65, -1, -1);

      v28 = v76;
    }

    else
    {

      sub_1C95EAF44(v62, type metadata accessor for DataProtectionValue);
      sub_1C95EAF44(v61, type metadata accessor for DataProtectionValue);
      v78 = v109;
      v72 = v60;
    }

    sub_1C96A66E4();
    v85 = v117;
    v86 = v118;
    v87 = v108;
    sub_1C95EAF9C(v29, v108, type metadata accessor for DataProtectionValue);
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v28);
    v119 = v85;
    v120 = v86;
    swift_beginAccess();
    sub_1C96A6C14();
    swift_endAccess();
    v88 = *(v78 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 32);
    v89 = __swift_project_boxed_opaque_existential_1((v78 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider), *(v78 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 24));
    v90 = MEMORY[0x1EEE9AC00](v89);
    *(&v102 - 2) = v72;
    (*(v88 + 24))(&v117, sub_1C95EB274, v90);
    v91 = v117;
    v92 = v118;
    sub_1C94874C0(v117, v118);
    v93 = sub_1C96A6134();
    v94 = sub_1C96A76A4();
    sub_1C9482F3C(v91, v92);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v117 = v96;
      *v95 = 136446210;
      v119 = MEMORY[0x1CCA8A1F0](v91, v92);
      v97 = sub_1C96A7DB4();
      v99 = sub_1C9484164(v97, v98, &v117);

      *(v95 + 4) = v99;
      _os_log_impl(&dword_1C945E000, v93, v94, "Merged data size %{public}s bytes", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x1CCA8E3D0](v96, -1, -1);
      MEMORY[0x1CCA8E3D0](v95, -1, -1);
    }

    v100 = sub_1C94AA700();
    sub_1C95E68D0(v91, v92, 0xD000000000000011, 0x80000001C96D3D80);

    sub_1C9482F3C(v91, v92);
    v54 = v72;
    return sub_1C95EAF44(v54, type metadata accessor for DataProtectionData);
  }

  sub_1C96A66E4();
  v45 = v117;
  v44 = v118;
  sub_1C9470AFC(v19, &qword_1EC3A6C98, &unk_1C96BAF88);
  if (v25 == v45 && v26 == v44)
  {

    v29 = v27;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v47 = sub_1C96A7DE4();

    v29 = v27;
    if (v23 || (v47 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v48 = v113;
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v49 = sub_1C96A6154();
  __swift_project_value_buffer(v49, qword_1EDB7AC00);
  v50 = sub_1C96A6134();
  v51 = sub_1C96A76A4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v117 = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    *(v52 + 14) = sub_1C9484164(0x65736C6166, 0xE500000000000000, &v117);
    _os_log_impl(&dword_1C945E000, v50, v51, "Skip merge with ubiquitous key value store due to no hashSalt, or lastAccessDate is too close. with shouldUpdateTimestamp: %{private,mask.hash}s", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1CCA8E3D0](v53, -1, -1);
    MEMORY[0x1CCA8E3D0](v52, -1, -1);
  }

  v54 = v48;
  return sub_1C95EAF44(v54, type metadata accessor for DataProtectionData);
}

uint64_t sub_1C95E6188(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for DataProtectionData(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v13 = sub_1C95E6954(v3, a2, &v25);
  if (v13)
  {
    sub_1C95EAF9C(a2, v12, type metadata accessor for DataProtectionData);
    sub_1C95E6E88(v9);
    (*(v7 + 40))(v12, v9, v6);
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB7AC00);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A76A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446210;
      swift_beginAccess();
      v23 = v25;
      v19 = sub_1C96A7DB4();
      v21 = sub_1C9484164(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1C945E000, v15, v16, "Prune data protection data from size %{public}s bytes", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
      MEMORY[0x1CCA8E3D0](v17, -1, -1);
    }

    sub_1C95EAFF8(v12, a1, type metadata accessor for DataProtectionData);
  }

  else
  {
    sub_1C95EAF9C(a2, a1, type metadata accessor for DataProtectionData);
  }

  return v13 & 1;
}

uint64_t sub_1C95E647C(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31[-v7];
  v9 = type metadata accessor for DataProtectionValue(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31[-v13];
  v16 = *a1;
  v15 = a1[1];
  swift_beginAccess();
  v36 = v16;
  v37 = v16;
  v38 = v15;
  sub_1C96A53C4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
  sub_1C96A6C04();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C9470AFC(v8, &qword_1EC3A6C98, &unk_1C96BAF88);
    return swift_endAccess();
  }

  else
  {
    v35 = v5;
    sub_1C95EAFF8(v8, v14, type metadata accessor for DataProtectionValue);
    swift_endAccess();
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v19 = sub_1C96A6154();
    __swift_project_value_buffer(v19, qword_1EDB7AC00);
    sub_1C95EAF9C(v14, v11, type metadata accessor for DataProtectionValue);
    sub_1C96A53C4();
    v20 = sub_1C96A6134();
    v21 = sub_1C96A76A4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v17;
      v23 = v22;
      v33 = swift_slowAlloc();
      v39[0] = v33;
      *v23 = 136446466;
      v24 = v36;
      *(v23 + 4) = sub_1C9484164(v36, v15, v39);
      *(v23 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
      v32 = v21;
      sub_1C96A66E4();
      v25 = sub_1C96A7514();
      v27 = v26;
      sub_1C95EAF44(v11, type metadata accessor for DataProtectionValue);
      v28 = sub_1C9484164(v25, v27, v39);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1C945E000, v20, v32, "Remove expired device uuid %{public}s, last access timestamp: %{public}s", v23, 0x16u);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v29, -1, -1);
      MEMORY[0x1CCA8E3D0](v23, -1, -1);
    }

    else
    {

      sub_1C95EAF44(v11, type metadata accessor for DataProtectionValue);
      v24 = v36;
    }

    v37 = v24;
    v38 = v15;
    swift_beginAccess();
    v30 = v35;
    sub_1C96A6B74();
    swift_endAccess();
    sub_1C9470AFC(v30, &qword_1EC3A6C98, &unk_1C96BAF88);
    return sub_1C95EAF44(v14, type metadata accessor for DataProtectionValue);
  }
}

void sub_1C95E68D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C94874C0(a1, a2);
  v5 = sub_1C96A7E24();
  v6 = sub_1C96A7004();
  [v4 setObject:v5 forKey:{v6, a1, a2}];
  swift_unknownObjectRelease();
}

uint64_t sub_1C95E6954(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v20[2] = a2;
  (*(v7 + 24))(&v22, sub_1C95EB054, v20, MEMORY[0x1E6969080], v6, v7);
  v9 = v22;
  v8 = v23;
  v10 = MEMORY[0x1CCA8A1F0](v22, v23);
  swift_beginAccess();
  *a3 = v10;
  if (MEMORY[0x1CCA8A1F0](v9, v8) <= 10000)
  {
    sub_1C9482F3C(v9, v8);
    return 0;
  }

  else
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EDB7AC00);
    v12 = sub_1C96A6134();
    v13 = sub_1C96A76A4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      swift_beginAccess();
      v20[3] = *a3;
      v16 = sub_1C96A7DB4();
      v18 = sub_1C9484164(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1C945E000, v12, v13, "Data protection data size %{public}s bytes, skip pruning", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    sub_1C9482F3C(v9, v8);

    return 1;
  }
}

uint64_t sub_1C95E6CFC@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_1C96A6C24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E6995280], v4, v6);
  type metadata accessor for DataProtectionData(0);
  sub_1C946F908(&qword_1EDB7CA48, type metadata accessor for DataProtectionData, &unk_1C96ACF20);
  v9 = sub_1C96A6D14();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v9;
  v13 = v10;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t sub_1C95E6E88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130, &unk_1C96BAF60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v25 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5128, &unk_1C96ACCF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v25 - v15);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5150, &qword_1C96ACD18);
  v25[0] = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v18 = v25 - v17;
  v19 = type metadata accessor for DataProtectionValue(0);
  sub_1C946F908(&qword_1EDB7C160, type metadata accessor for DataProtectionValue, &unk_1C96B2F40);
  v26 = v19;
  v27 = a1;
  sub_1C96A6BE4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
  v28 = v18;
  v25[1] = v20;
  sub_1C96A6B84();
  while (1)
  {
    sub_1C96A6BB4();
    if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
    {
      break;
    }

    v21 = *(v5 + 48);
    v22 = v16[1];
    *v13 = *v16;
    v13[1] = v22;
    sub_1C95EAFF8(v16 + v21, v13 + v21, type metadata accessor for DataProtectionValue);
    sub_1C9470AA0(v13, v10, &qword_1EC3A5130, &unk_1C96BAF60);
    v23 = *(v5 + 48);
    sub_1C9470AA0(v13, v7, &qword_1EC3A5130, &unk_1C96BAF60);
    sub_1C95EAFF8(&v7[*(v5 + 48)], v4, type metadata accessor for DataProtectionValue);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v26);
    sub_1C96A6C14();
    sub_1C9470AFC(v13, &qword_1EC3A5130, &unk_1C96BAF60);

    sub_1C95EAF44(&v10[v23], type metadata accessor for DataProtectionValue);
  }

  return (*(v25[0] + 8))(v28, v29);
}

uint64_t CRDTDictionary.shallowCopy()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C96A7934();
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v7;
  v8 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v42 - v17;
  OUTLINED_FUNCTION_15_4();
  v18 = sub_1C96A7934();
  OUTLINED_FUNCTION_7(v18);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v58 = *(a1 + 32);
  v22 = *(a1 + 48);
  *&v23 = v8;
  *(&v23 + 1) = v4;
  v60 = v23;
  v61 = v58;
  v62 = v22;
  v56 = sub_1C96A6BC4();
  OUTLINED_FUNCTION_1();
  v42 = v24;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - v26;
  v53 = a2;
  sub_1C96A6BE4();
  v54 = a1;
  v55 = v27;
  sub_1C96A6B84();
  v59 = v8;
  v46 = v8 - 8;
  v52 = v4;
  v45 = v4 - 8;
  v44 = v11 + 16;
  v43 = (v11 + 8);
  v47 = v21;
  v28 = (v11 + 16);
  while (1)
  {
    sub_1C96A6BB4();
    if (__swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v29 = *(TupleTypeMetadata2 + 48);
    *&v58 = *(v59 - 8);
    v30 = TupleTypeMetadata2;
    v31 = v48;
    (*(v58 + 32))(v48, v21, v59);
    v32 = v52;
    v33 = *(v52 - 8);
    v34 = *(v33 + 32);
    v34(&v31[v29], &v21[v29], v52);
    v35 = *v28;
    v36 = v49;
    (*v28)(v49, v31, v30);
    v57 = *(v30 + 48);
    v37 = v50;
    v35(v50, v31, v30);
    v38 = v51;
    v34(v51, &v37[*(v30 + 48)], v32);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v32);
    sub_1C96A6C14();
    v39 = v31;
    TupleTypeMetadata2 = v30;
    (*v43)(v39, v30);
    v40 = v37;
    v21 = v47;
    (*(v58 + 8))(v40, v59);
    (*(v33 + 8))(&v36[v57], v32);
  }

  return (*(v42 + 8))(v55, v56);
}

id sub_1C95E76AC(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C96A7364();
  if (!*MEMORY[0x1E695E300])
  {
    __break(1u);
  }

  sub_1C96A7024();
  v3 = sub_1C96A7004();

  v12[0] = 0;
  v4 = [a1 setResourceValue:v2 forKey:v3 error:v12];

  v5 = v12[0];
  if (!v4)
  {
LABEL_6:
    v11 = v5;
    sub_1C96A4584();

    return swift_willThrow();
  }

  v6 = v12[0];
  v7 = sub_1C96A7364();
  result = *MEMORY[0x1E695E308];
  if (*MEMORY[0x1E695E308])
  {
    sub_1C96A7024();
    v9 = sub_1C96A7004();

    v12[0] = 0;
    v10 = [a1 setResourceValue:v7 forKey:v9 error:v12];

    v5 = v12[0];
    if (v10)
    {
      return v12[0];
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1C95E7818()
{
  v0 = sub_1C94AA700();
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_1C95EB12C;
  v3[5] = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1C9539FC4;
  v3[3] = &block_descriptor_42;
  v2 = _Block_copy(v3);

  [v0 wc:v2 synchronizeWithCompletionHandler:?];
  _Block_release(v2);
}

BOOL sub_1C95E78FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
  sub_1C96A6C04();

  v3 = type metadata accessor for DataProtectionValue(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    sub_1C9470AFC(v2, &qword_1EC3A6C98, &unk_1C96BAF88);
    return 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
    sub_1C96A66E4();
    v5 = v6;
    sub_1C9470AFC(v2, &qword_1EC3A6C98, &unk_1C96BAF88);
    sub_1C96A66E4();
    return v6 - v5 > 86400.0;
  }
}

uint64_t sub_1C95E7A94@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C96A6C24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  type metadata accessor for DataProtectionData(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  swift_beginAccess();
  sub_1C95EAF9C(a2, v16, type metadata accessor for DataProtectionData);
  (*(v8 + 104))(v12, *MEMORY[0x1E6995280], v6);
  sub_1C946F908(&qword_1EDB7CA48, type metadata accessor for DataProtectionData, &unk_1C96ACF20);
  v17 = sub_1C96A6D14();
  if (v3)
  {
    (*(v8 + 8))(v12, v6);
    return OUTLINED_FUNCTION_7_33();
  }

  else
  {
    v20 = v17;
    v21 = v18;
    (*(v8 + 8))(v12, v6);
    result = OUTLINED_FUNCTION_7_33();
    *a3 = v20;
    a3[1] = v21;
  }

  return result;
}

uint64_t sub_1C95E7C88(void *a1, uint64_t a2)
{
  v4 = sub_1C96A6564();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A65E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    aBlock[4] = sub_1C95EB184;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_48_0;
    v14 = _Block_copy(aBlock);
    v15 = a1;
    sub_1C96A3D04();
    sub_1C96A6594();
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
    sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, MEMORY[0x1E69E6328]);
    sub_1C96A79E4();
    v16 = v18;
    MEMORY[0x1CCA8D100](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v17);
  }

  return result;
}

void sub_1C95E7FA4(void *a1, uint64_t a2)
{
  v3 = sub_1C96A6564();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C96A65E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EDB7AC00);
    v12 = a1;
    v25 = sub_1C96A6134();
    v13 = sub_1C96A7684();

    if (os_log_type_enabled(v25, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      aBlock[6] = a1;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8, &unk_1C96B44E0);
      v17 = sub_1C96A70A4();
      v19 = sub_1C9484164(v17, v18, aBlock);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C945E000, v25, v13, "Failed merge data due to %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    else
    {
      v22 = v25;
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = *(Strong + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);
      aBlock[4] = sub_1C95EB18C;
      aBlock[5] = Strong;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C946FCF8;
      aBlock[3] = &block_descriptor_51;
      v24 = _Block_copy(aBlock);
      sub_1C96A3D04();
      sub_1C96A6594();
      v26 = MEMORY[0x1E69E7CC0];
      v23[1] = sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
      sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, MEMORY[0x1E69E6328]);
      sub_1C96A79E4();
      v21 = v24;
      MEMORY[0x1CCA8D100](0, v10, v6, v24);
      _Block_release(v21);
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_1C95E8414(void *a1)
{
  v2 = sub_1C96A4A54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataProtectionValue(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  v9 = a1[3];
  if (v9)
  {
    v11 = a1[4];
    v10 = a1[5];
    v12 = a1[2];
    *&v8[*(v6 + 28)] = MEMORY[0x1E69E7CC8];
    v19 = v12;
    v20 = v9;
    sub_1C94AA6AC(v12, v9, v11, v10);
    sub_1C96A53C4();
    sub_1C96A66C4();
    v18 = v2;
    v19 = v11;
    v20 = v10;
    sub_1C96A53C4();
    sub_1C96A66C4();

    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    sub_1C96A49E4();
    v14 = v13;
    (*(v3 + 8))(v5, v18);
    v19 = v14;
    sub_1C96A66C4();
    sub_1C95E5304(v8);
    sub_1C95EAF44(v8, type metadata accessor for DataProtectionValue);
  }

  v15 = sub_1C94AA700();
  [v15 synchronize];

  return sub_1C96A50F4();
}

uint64_t sub_1C95E8678@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for DataProtectionData(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C94AA700();
  v5 = sub_1C96A7004();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_1C96A4854();
    v9 = v8;

    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A6154();
    v11 = __swift_project_value_buffer(v10, qword_1EDB7AC00);
    sub_1C94874C0(v7, v9);
    v12 = sub_1C96A6134();
    v13 = sub_1C96A76A4();
    sub_1C9482F3C(v7, v9);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[1] = v11;
      v16 = v15;
      v29 = v15;
      *v14 = 136446210;
      v28 = MEMORY[0x1CCA8A1F0](v7, v9);
      v17 = sub_1C96A7DB4();
      v19 = sub_1C9484164(v17, v18, &v29);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C945E000, v12, v13, "DataProtectionData from encryptedStore with data size: %{public}s bytes", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    sub_1C94874C0(v7, v9);
    sub_1C946F908(&qword_1EDB7CA48, type metadata accessor for DataProtectionData, &unk_1C96ACF20);
    sub_1C96A6D24();
    sub_1C9482F3C(v7, v9);
    return sub_1C95EAFF8(v3, v27, type metadata accessor for DataProtectionData);
  }

  else
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v20 = sub_1C96A6154();
    __swift_project_value_buffer(v20, qword_1EDB7AC00);
    v21 = sub_1C96A6134();
    v22 = sub_1C96A76A4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C945E000, v21, v22, "There is no data in encryptedStore, create a default data", v23, 2u);
      MEMORY[0x1CCA8E3D0](v23, -1, -1);
    }

    type metadata accessor for DataProtectionValue(0);
    sub_1C946F908(&qword_1EDB7C160, type metadata accessor for DataProtectionValue, &unk_1C96B2F40);
    v24 = v27;
    result = sub_1C96A6BE4();
    *(v24 + *(v1 + 20)) = MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C95E8C28(uint64_t a1)
{
  v2 = sub_1C96A6564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A65E4();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A42E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = sub_1C96A42D4();
  if (!v12)
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_12;
  }

  v13 = v12;
  aBlock[6] = sub_1C96A7024();
  aBlock[7] = v14;
  sub_1C96A7A34();
  sub_1C94FA794(aBlock, v13);

  sub_1C950C50C(aBlock);
  if (!*(&v34 + 1))
  {
LABEL_12:
    sub_1C9470AFC(&v33, &qword_1EC3A4A90, &qword_1C96B0AA0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0, &qword_1C96B3F70);
  if (swift_dynamicCast())
  {
    v28 = v3;
    if (*(aBlock[0] + 16) == 1)
    {
      v15 = *(aBlock[0] + 40);
      v27 = *(aBlock[0] + 32);
      sub_1C96A53C4();

      if (v27 == 0xD000000000000011 && 0x80000001C96D3D80 == v15)
      {

LABEL_20:
        v27 = *(v29 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);
        v22 = swift_allocObject();
        swift_weakInit();
        (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
        v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = v22;
        (*(v10 + 32))(v24 + v23, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        aBlock[4] = sub_1C95EB070;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C946FCF8;
        aBlock[3] = &block_descriptor_31;
        v25 = _Block_copy(aBlock);
        sub_1C96A3D04();
        sub_1C96A6594();
        *&v33 = MEMORY[0x1E69E7CC0];
        sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
        sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, MEMORY[0x1E69E6328]);
        sub_1C96A79E4();
        MEMORY[0x1CCA8D100](0, v8, v5, v25);
        _Block_release(v25);
        (*(v28 + 8))(v5, v2);
        (*(v30 + 8))(v8, v31);

        return;
      }

      v17 = sub_1C96A7DE4();

      if (v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

LABEL_13:
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v18 = sub_1C96A6154();
  __swift_project_value_buffer(v18, qword_1EDB7AC00);
  v19 = sub_1C96A6134();
  v20 = sub_1C96A76A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C945E000, v19, v20, "Skip UBKVS update, unrelated", v21, 2u);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }
}

void sub_1C95E9200(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C95E9260(a1, a2);

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1C95E9260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C95E92D4();
  }

  return result;
}

uint64_t sub_1C95E92D4()
{
  v1 = v0;
  v2 = sub_1C96A6564();
  v127 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v125 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1C96A65E4();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v122 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5128, &unk_1C96ACCF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v122 - v9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
  v137 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v138 = &v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5150, &qword_1C96ACD18);
  v139 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v122 - v13;
  v135 = sub_1C96A4A54();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DataProtectionValue(0);
  MEMORY[0x1EEE9AC00](v153);
  v129 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v122 - v17;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130, &unk_1C96BAF60);
  MEMORY[0x1EEE9AC00](v155);
  v150 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v152 = (&v122 - v20);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6CA0, &qword_1C96BAF98);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v22 = &v122 - v21;
  v142 = 0;
  v23 = type metadata accessor for DataProtectionData(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v136 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v147 = &v122 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v145 = &v122 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v122 - v30;
  v144 = *(v0 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_lock);
  sub_1C96A50E4();
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v140 = v12;
  v141 = v10;
  v146 = v7;
  v32 = sub_1C96A6154();
  v149 = __swift_project_value_buffer(v32, qword_1EDB7AC00);
  v33 = sub_1C96A6134();
  v34 = sub_1C96A76A4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1C945E000, v33, v34, "DataProtectionInformationManager receives NSUbiquitousKeyValueStoreExternallyNotification", v35, 2u);
    MEMORY[0x1CCA8E3D0](v35, -1, -1);
  }

  sub_1C95E8678(v31);
  v36 = sub_1C9469CB4(&qword_1EDB7ABA0, &qword_1EC3A5120, &unk_1C96BAF70, MEMORY[0x1E6995200]);
  v37 = v148;
  v38 = sub_1C96A75D4();
  v39 = MEMORY[0x1E69E7CC0];
  v128 = v2;
  if (v38)
  {
    v40 = v38;
    v163 = MEMORY[0x1E69E7CC0];
    sub_1C94D5558(0, v38 & ~(v38 >> 63), 0);
    v39 = v163;
    v41 = v22;
    v42 = v31;
    sub_1C96A75C4();
    if (v40 < 0)
    {
      __break(1u);
LABEL_39:

      sub_1C9470AFC(v42, &qword_1EC3A5130, &unk_1C96BAF60);
      result = (*(v139 + 8))(v154, v37);
      __break(1u);
      return result;
    }

    v130 = v1;
    v151 = v36;
    do
    {
      v43 = sub_1C96A7624();
      v44 = v152;
      sub_1C9470AA0(v45, v152, &qword_1EC3A5130, &unk_1C96BAF60);
      v43(&aBlock, 0);
      aBlock = 0;
      v158 = 0xE000000000000000;
      MEMORY[0x1CCA8CB00](*v44, v44[1]);
      MEMORY[0x1CCA8CB00](2112032, 0xE300000000000000);
      sub_1C96A7B54();
      MEMORY[0x1CCA8CB00](10, 0xE100000000000000);
      v47 = aBlock;
      v46 = v158;
      sub_1C9470AFC(v44, &qword_1EC3A5130, &unk_1C96BAF60);
      v163 = v39;
      v49 = *(v39 + 16);
      v48 = *(v39 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1C94D5558((v48 > 1), v49 + 1, 1);
        v39 = v163;
      }

      *(v39 + 16) = v49 + 1;
      v50 = v39 + 16 * v49;
      *(v50 + 32) = v47;
      *(v50 + 40) = v46;
      sub_1C96A7604();
      --v40;
    }

    while (v40);
    (*(v131 + 8))(v41, v132);
    v1 = v130;
  }

  v51 = v153;
  v52 = v145;
  sub_1C95EAF9C(v31, v145, type metadata accessor for DataProtectionData);
  sub_1C96A53C4();
  v53 = sub_1C96A6134();
  v54 = sub_1C96A76A4();

  v55 = os_log_type_enabled(v53, v54);
  v153 = v39;
  if (v55)
  {
    v56 = v1;
    v57 = v51;
    v58 = v52;
    v59 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    aBlock = v152;
    *v59 = 136446723;
    v163 = sub_1C96A6BA4();
    v60 = sub_1C96A7DB4();
    v61 = v31;
    v63 = v62;
    v64 = v58;
    v51 = v57;
    v1 = v56;
    sub_1C95EAF44(v64, type metadata accessor for DataProtectionData);
    v65 = sub_1C9484164(v60, v63, &aBlock);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2160;
    *(v59 + 14) = 1752392040;
    *(v59 + 22) = 2081;
    v66 = MEMORY[0x1CCA8CC40](v39, MEMORY[0x1E69E6158]);
    v68 = sub_1C9484164(v66, v67, &aBlock);

    *(v59 + 24) = v68;
    v31 = v61;
    _os_log_impl(&dword_1C945E000, v53, v54, "Data protection content[%{public}s]: %{private,mask.hash}s", v59, 0x20u);
    v69 = v152;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v69, -1, -1);
    MEMORY[0x1CCA8E3D0](v59, -1, -1);
  }

  else
  {

    sub_1C95EAF44(v52, type metadata accessor for DataProtectionData);
  }

  v70 = v1[3];
  if (v70)
  {
    v72 = v1[4];
    v71 = v1[5];
    v73 = v1[2];
    v74 = v143;
    *(v143 + *(v51 + 28)) = MEMORY[0x1E69E7CC8];
    aBlock = v73;
    v158 = v70;
    sub_1C94AA6AC(v73, v70, v72, v71);
    sub_1C96A53C4();
    sub_1C96A66C4();
    aBlock = v72;
    v158 = v71;
    sub_1C96A53C4();
    sub_1C96A66C4();

    v75 = v133;
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    sub_1C96A49E4();
    v77 = v76;
    (*(v134 + 8))(v75, v135);
    aBlock = v77;
    sub_1C96A66C4();
    sub_1C95E5304(v74);
    sub_1C95EAF44(v74, type metadata accessor for DataProtectionValue);
    v78 = v147;
    sub_1C95E8678(v147);
    v79 = v136;
    sub_1C95EAF9C(v78, v136, type metadata accessor for DataProtectionData);
    v80 = sub_1C96A6134();
    v81 = sub_1C96A76A4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v82 = 141558275;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2081;
      v84 = v148;
      v163 = sub_1C96A6BA4();
      v85 = sub_1C96A7DB4();
      v86 = v79;
      v87 = v31;
      v89 = v88;
      sub_1C95EAF44(v86, type metadata accessor for DataProtectionData);
      v90 = sub_1C9484164(v85, v89, &aBlock);
      v31 = v87;

      *(v82 + 14) = v90;
      _os_log_impl(&dword_1C945E000, v80, v81, "Updated data protection data contains: %{private,mask.hash}s entries:", v82, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1CCA8E3D0](v83, -1, -1);
      MEMORY[0x1CCA8E3D0](v82, -1, -1);

      v2 = v142;
    }

    else
    {

      sub_1C95EAF44(v79, type metadata accessor for DataProtectionData);
      v2 = v142;
      v84 = v148;
    }

    v91 = v141;
    (*(v137 + 16))(v138, v147, v84);
    sub_1C9469CB4(&qword_1EDB7ABA8, &qword_1EC3A5120, &unk_1C96BAF70, MEMORY[0x1E69951F8]);
    sub_1C96A71F4();
    sub_1C9469CB4(&qword_1EDB7ABB8, &qword_1EC3A5150, &qword_1C96ACD18, MEMORY[0x1E69951E8]);
    v37 = v140;
    while (1)
    {
      sub_1C96A7944();
      if (__swift_getEnumTagSinglePayload(v91, 1, v155) == 1)
      {
        break;
      }

      v42 = v150;
      sub_1C951A67C(v91, v150);
      sub_1C95EA908(v42);
      if (v2)
      {
        goto LABEL_39;
      }

      sub_1C9470AFC(v42, &qword_1EC3A5130, &unk_1C96BAF60);
    }

    (*(v139 + 8))(v154, v37);
    sub_1C95EAF44(v147, type metadata accessor for DataProtectionData);
  }

  else
  {
  }

  v92 = *(v1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID + 8);
  v93 = v146;
  if (!v92 || v1[3])
  {
    sub_1C96A50F4();
    v94 = sub_1C96A6134();
    v95 = sub_1C96A76A4();
    if (!os_log_type_enabled(v94, v95))
    {
LABEL_30:

      return sub_1C95EAF44(v31, type metadata accessor for DataProtectionData);
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "dataProtectionEntry already exist skip update.";
LABEL_29:
    _os_log_impl(&dword_1C945E000, v94, v95, v97, v96, 2u);
    MEMORY[0x1CCA8E3D0](v96, -1, -1);
    goto LABEL_30;
  }

  aBlock = *(v1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
  v158 = v92;
  sub_1C96A6C04();
  if (__swift_getEnumTagSinglePayload(v93, 1, v51) == 1)
  {
    sub_1C9470AFC(v93, &qword_1EC3A6C98, &unk_1C96BAF88);
    sub_1C96A50F4();
    v94 = sub_1C96A6134();
    v95 = sub_1C96A76A4();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_30;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "NSUbiquitousKeyValueStore doesn't contain data protection value for this device, skip update.";
    goto LABEL_29;
  }

  v155 = v31;
  v99 = v129;
  sub_1C95EAFF8(v93, v129, type metadata accessor for DataProtectionValue);
  v100 = v143;
  sub_1C95EAF9C(v99, v143, type metadata accessor for DataProtectionValue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  v102 = aBlock;
  v101 = v158;
  sub_1C96A66E4();
  sub_1C95EAF44(v100, type metadata accessor for DataProtectionValue);
  v104 = aBlock;
  v103 = v158;
  v105 = v1[2];
  v106 = v1[3];
  v1[2] = v102;
  v1[3] = v101;
  v1[4] = v104;
  v1[5] = v103;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C94AA668(v105, v106);
  v107 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_observers;
  swift_beginAccess();
  v108 = *(v1 + v107);
  sub_1C96A53C4();
  sub_1C95E2B70(v102, v101, v104, v103);
  sub_1C96A53C4();
  sub_1C96A53C4();
  v109 = sub_1C96A6134();
  v110 = sub_1C96A76A4();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v156 = v112;
    aBlock = v102;
    *v111 = 141558275;
    *(v111 + 4) = 1752392040;
    *(v111 + 12) = 2081;
    v158 = v101;
    v159 = v104;
    v160 = v103;
    v113 = sub_1C96A70A4();
    v115 = sub_1C9484164(v113, v114, &v156);

    *(v111 + 14) = v115;
    _os_log_impl(&dword_1C945E000, v109, v110, "Updated data protection entry:%{private,mask.hash}s", v111, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    MEMORY[0x1CCA8E3D0](v112, -1, -1);
    MEMORY[0x1CCA8E3D0](v111, -1, -1);
  }

  else
  {
  }

  sub_1C96A50F4();
  v116 = swift_allocObject();
  swift_weakInit();
  v117 = swift_allocObject();
  *(v117 + 16) = v116;
  *(v117 + 24) = v108;
  v161 = sub_1C95EB0D0;
  v162 = v117;
  aBlock = MEMORY[0x1E69E9820];
  v158 = 1107296256;
  v159 = sub_1C946FCF8;
  v160 = &block_descriptor_38;
  v118 = _Block_copy(&aBlock);
  sub_1C96A3D04();
  v119 = v123;
  sub_1C96A6594();
  v156 = MEMORY[0x1E69E7CC0];
  sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, MEMORY[0x1E69E6328]);
  v120 = v125;
  v121 = v128;
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v119, v120, v118);
  _Block_release(v118);
  (*(v127 + 8))(v120, v121);
  (*(v124 + 8))(v119, v126);
  sub_1C95EAF44(v129, type metadata accessor for DataProtectionValue);
  sub_1C95EAF44(v155, type metadata accessor for DataProtectionData);
}

void sub_1C95EA908(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130, &unk_1C96BAF60);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C96A6154();
  __swift_project_value_buffer(v12, qword_1EDB7AC00);
  sub_1C9470AA0(a1, v11, &qword_1EC3A5130, &unk_1C96BAF60);
  sub_1C9470AA0(a1, v8, &qword_1EC3A5130, &unk_1C96BAF60);
  v13 = sub_1C96A6134();
  v14 = sub_1C96A76A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    v26 = v25[0];
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1C951A67C(v11, v5);
    v25[1] = v1;
    v16 = *v5;
    v17 = v5[1];
    sub_1C95EAF44(v5 + *(v3 + 48), type metadata accessor for DataProtectionValue);
    v18 = sub_1C9484164(v16, v17, &v26);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2082;
    sub_1C9470AA0(v8, v5, &qword_1EC3A5130, &unk_1C96BAF60);

    v19 = v5 + *(v3 + 48);
    type metadata accessor for DataProtectionValue(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
    sub_1C96A66E4();
    sub_1C95EAF44(v19, type metadata accessor for DataProtectionValue);
    v20 = sub_1C96A7514();
    v22 = v21;
    sub_1C9470AFC(v8, &qword_1EC3A5130, &unk_1C96BAF60);
    v23 = sub_1C9484164(v20, v22, &v26);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_1C945E000, v13, v14, "Device ID: %{private,mask.hash}s - timestamp: %{public}s)", v15, 0x20u);
    v24 = v25[0];
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v24, -1, -1);
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
  }

  else
  {

    sub_1C9470AFC(v8, &qword_1EC3A5130, &unk_1C96BAF60);
    sub_1C9470AFC(v11, &qword_1EC3A5130, &unk_1C96BAF60);
  }
}

void sub_1C95EAC90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1C946D04C();
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        return;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA8D440](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        sub_1C96A3D04();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C95E2AB4(v4);
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1C95EAD7C()
{
  sub_1C94AA668(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_storeURL;
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider));

  return v0;
}

uint64_t sub_1C95EAE4C()
{
  sub_1C95EAD7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C95EAEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataProtectionData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95EAF44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C95EAF9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C95EAFF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

void sub_1C95EB070()
{
  v1 = sub_1C96A42E4();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1C95E9200(v3, v4);
}

unint64_t sub_1C95EB0D8()
{
  result = qword_1EC3A6CA8;
  if (!qword_1EC3A6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CA8);
  }

  return result;
}

uint64_t objectdestroy_34Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  v4 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t objectdestroy_17Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1C95EB204()
{
  result = qword_1EC3A6CB0;
  if (!qword_1EC3A6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CB0);
  }

  return result;
}

uint64_t static WeatherAlertEntity.version.getter()
{
  swift_beginAccess();
  sub_1C96A53C4();
  return OUTLINED_FUNCTION_117();
}

uint64_t static WeatherAlertEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a004_1 = a1;
  qword_1EC3A6CC0 = a2;
}

uint64_t (*static WeatherAlertEntity.version.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1C95EB3CC@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A6CC0;
  *a1 = *a004_1;
  a1[1] = v2;
  sub_1C96A53C4();
  return result;
}

uint64_t sub_1C95EB41C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a004_1 = v2;
  qword_1EC3A6CC0 = v1;
  sub_1C96A53C4();
}

uint64_t WeatherAlertEntity.boundingBox.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51E8, &qword_1C96BAFA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C96AC330;
  result = sub_1C96A6354();
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 32) = v8;
  result = sub_1C96A6354();
  if (v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v0 + 40) = v6;
  result = sub_1C96A6354();
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 48) = v4;
  result = sub_1C96A6354();
  if ((v3 & 1) == 0)
  {
    *(v0 + 56) = v2;
    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}