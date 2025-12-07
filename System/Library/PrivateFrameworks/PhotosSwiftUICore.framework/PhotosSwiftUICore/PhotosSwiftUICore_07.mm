double sub_1C1048FB0()
{
  v0 = sub_1C12629F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C0FD7494(&v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBB8], v0);
  v7 = sub_1C12629D0();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 0.2;
  if (v7)
  {
    return 0.36;
  }

  return result;
}

uint64_t sub_1C10490FC()
{
  v0 = sub_1C12629F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C1265190();
  sub_1C0FD7494(v6);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBB8], v0);
  sub_1C12629D0();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  v8 = sub_1C12651E0();

  return v8;
}

uint64_t sub_1C1049274()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return swift_deallocObject();
}

void sub_1C1049378(uint64_t a1)
{
  sub_1C1011E54(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C10493E4()
{
  result = qword_1EBE91798;
  if (!qword_1EBE91798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917A0, &qword_1C12AA200);
    sub_1C0FDB6D4(&qword_1EBE91720, &qword_1EBE91710, &qword_1C12AA070, MEMORY[0x1E697BF80]);
    sub_1C1049540(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91798);
  }

  return result;
}

unint64_t sub_1C10494D0()
{
  result = qword_1EBE917A8;
  if (!qword_1EBE917A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE917A8);
  }

  return result;
}

uint64_t sub_1C1049540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1049588()
{
  result = qword_1EBE98310;
  if (!qword_1EBE98310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE98310);
  }

  return result;
}

unint64_t sub_1C10495CC()
{
  result = qword_1EBE91840;
  if (!qword_1EBE91840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91818, &qword_1C12AA380);
    sub_1C1049684();
    sub_1C0FDB6D4(&qword_1EBE91898, &qword_1EBE91838, &unk_1C12AA3A0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91840);
  }

  return result;
}

unint64_t sub_1C1049684()
{
  result = qword_1EBE91848;
  if (!qword_1EBE91848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917E0, &qword_1C12AA2E8);
    sub_1C104973C();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91848);
  }

  return result;
}

unint64_t sub_1C104973C()
{
  result = qword_1EBE91850;
  if (!qword_1EBE91850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917D8, &qword_1C12AA2E0);
    sub_1C10497F4();
    sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91850);
  }

  return result;
}

unint64_t sub_1C10497F4()
{
  result = qword_1EBE91858;
  if (!qword_1EBE91858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917D0, &qword_1C12AA2D8);
    sub_1C1049880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91858);
  }

  return result;
}

unint64_t sub_1C1049880()
{
  result = qword_1EBE91860;
  if (!qword_1EBE91860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917C8, &qword_1C12AA2D0);
    sub_1C1049938();
    sub_1C0FDB6D4(&qword_1EBE91890, &qword_1EBE91810, &unk_1C12AA370, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91860);
  }

  return result;
}

unint64_t sub_1C1049938()
{
  result = qword_1EBE91868;
  if (!qword_1EBE91868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917C0, &qword_1C12AA2C8);
    sub_1C10499C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91868);
  }

  return result;
}

unint64_t sub_1C10499C4()
{
  result = qword_1EBE91870;
  if (!qword_1EBE91870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917B8, &qword_1C12AA2C0);
    sub_1C1049A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91870);
  }

  return result;
}

unint64_t sub_1C1049A50()
{
  result = qword_1EBE91878;
  if (!qword_1EBE91878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917B0, &qword_1C12AA2B8);
    sub_1C1049B08();
    sub_1C0FDB6D4(&qword_1EDE7BA60, &qword_1EBE91888, &unk_1C12AA3B0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91878);
  }

  return result;
}

unint64_t sub_1C1049B08()
{
  result = qword_1EBE91880;
  if (!qword_1EBE91880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE917F0, &unk_1C12AA320);
    sub_1C1264060();
    sub_1C1263B20();
    sub_1C1049540(&qword_1EDE7BA80, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1C1049540(&qword_1EBE917E8, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91880);
  }

  return result;
}

void sub_1C1049C7C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v3);
  v5 = OUTLINED_FUNCTION_11_13();
  v6(v5);
  OUTLINED_FUNCTION_28_4("OneUpTrashButton");
  v7 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v8, v9, MEMORY[0x1E697F5F0]);
  v10 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_0_21();
  v16 = OUTLINED_FUNCTION_80(v12, v13, v14, v15);
  OUTLINED_FUNCTION_22_7(v16);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v7) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v18);
  OUTLINED_FUNCTION_53_0();
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v23);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v24);
  OUTLINED_FUNCTION_84(xmmword_1C12AA3C0);
  OUTLINED_FUNCTION_117(64);
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = 0;
  v0[15] = v1;
  v0[16] = v2;
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_4_18(v25);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C1049E88()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v3);
  v5 = OUTLINED_FUNCTION_11_13();
  v6(v5);
  v7 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v8, v9, MEMORY[0x1E697F5F0]);
  v10 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_0_21();
  v16 = OUTLINED_FUNCTION_80(v12, v13, v14, v15);
  OUTLINED_FUNCTION_22_7(v16);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v7) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v18);
  OUTLINED_FUNCTION_53_0();
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v23);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v24);
  OUTLINED_FUNCTION_84(xmmword_1C12AA3D0);
  OUTLINED_FUNCTION_117(49);
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = 0;
  v0[15] = v1;
  v0[16] = v2;
  OUTLINED_FUNCTION_20_11();
  *(v0 + v25) = xmmword_1C12AA3E0;
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A08C()
{
  OUTLINED_FUNCTION_23();
  v37 = v3;
  OUTLINED_FUNCTION_52_0();
  v4 = sub_1C1263A50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_116();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  v11 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v38 = v12;
  v39 = v11;
  v13 = OUTLINED_FUNCTION_24_5();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BE0, &qword_1C12AC0E8);
  *(swift_allocObject() + 16) = xmmword_1C12A8B40;
  sub_1C1263A40();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v15, v16, MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_128(v17, v18, v19, v20);
  sub_1C1266870();
  (*(v5 + 16))(v8, v1, v4);
  if (v37)
  {
    v21 = 0x69662E7472616568;
  }

  else
  {
    v21 = 0x7472616568;
  }

  if (v37)
  {
    v22 = 0xEA00000000006C6CLL;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  if (v37)
  {
    v23 = 49;
  }

  else
  {
    v23 = 48;
  }

  v24 = OUTLINED_FUNCTION_82();
  v25(v24, v4);
  v26 = type metadata accessor for OneUpBarButton(0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_92(KeyPath);
  v28 = v26[17];
  *(v0 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v31);
  v32 = v0 + v26[21];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  v33 = v0 + v26[22];
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_92(v34);
  *(v0 + 88) = v21;
  *(v0 + 96) = v22;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 16) = 48;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 120) = v39;
  *(v0 + 128) = v38;
  (*(v5 + 32))(v0 + v26[12], v8, v4);
  v35 = (v0 + v26[13]);
  *v35 = v23;
  v35[1] = 0xE100000000000000;
  v36 = (v0 + v26[14]);
  *v36 = 0xD000000000000013;
  v36[1] = 0x80000001C12AB9A0;
  OUTLINED_FUNCTION_12_9(v26[15]);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A4B8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_28_4("square.and.arrow.up");
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_41_2();
  v26 = v5;
  v6 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v7, v8, MEMORY[0x1E697F5F0]);
  v9 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_0_21();
  v15 = OUTLINED_FUNCTION_80(v11, v12, v13, v14);
  OUTLINED_FUNCTION_22_7(v15);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v6) = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v17);
  OUTLINED_FUNCTION_53_0();
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v23);
  *(v0 + 96) = v27;
  *(v0 + 104) = 0;
  *(v0 + 16) = 32;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD000000000000013;
  OUTLINED_FUNCTION_74();
  *v25 = v24;
  v25[1] = v26;
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A6E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_28_4("slider.horizontal.3");
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v3);
  v5 = OUTLINED_FUNCTION_11_13();
  v6(v5);
  v7 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v8, v9, MEMORY[0x1E697F5F0]);
  v10 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_0_21();
  v16 = OUTLINED_FUNCTION_80(v12, v13, v14, v15);
  OUTLINED_FUNCTION_22_7(v16);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v7) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v18);
  OUTLINED_FUNCTION_53_0();
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v23);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v24);
  *(v0 + 96) = v26;
  *(v0 + 104) = 0;
  *(v0 + 16) = 65;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD000000000000013;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  OUTLINED_FUNCTION_20_11();
  *(v0 + v25) = xmmword_1C12AA3F0;
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104A908()
{
  OUTLINED_FUNCTION_23();
  v4 = v3;
  v5 = sub_1C1263A50();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_91();
  v9 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v13 = OUTLINED_FUNCTION_90();
  v14 = type metadata accessor for OneUpBarButton(v13);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    v17 = 0xD000000000000012;
  }

  else
  {
    v17 = 0x7568742E646E6168;
  }

  if ((v4 & 1) == 0)
  {
    v16 = 0xED0000707573626DLL;
  }

  v39 = v16;
  v40 = v17;
  v41 = ~v4;
  v38 = (v4 & 1) == 0;
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  v18 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v36 = v19;
  v37 = v18;
  (*(v11 + 8))(v2, v9);
  v42 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v20, v21, MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  OUTLINED_FUNCTION_0_21();
  sub_1C0FDB6D4(v22, &unk_1EBE91920, &qword_1C12AAE60, v23);
  OUTLINED_FUNCTION_103(&v42);
  OUTLINED_FUNCTION_71();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(KeyPath);
  v25 = *(v14 + 68);
  *(v1 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_45_2(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_46_1(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v31);
  *(v1 + 96) = v39;
  *(v1 + 104) = 0;
  *(v1 + 16) = v38;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = v40;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = v37;
  *(v1 + 128) = v36;
  OUTLINED_FUNCTION_112();
  *(v1 + v32) = xmmword_1C12AA400;
  OUTLINED_FUNCTION_24_3(v1 + *(v14 + 60));
  if (v41)
  {
    v42 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_103(&v42);
  }

  else
  {
    sub_1C1263A20();
  }

  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v33, v34, &unk_1C12AA96C);
  sub_1C1264DA0();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v1, v35);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104AD04()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_4(v7, v65);
  v8 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  v12 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v14 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v21 = v20 - v19;
  if ((v3 & 1) == 0)
  {

    v40 = sub_1C1266420();
    v68 = v10;
    v41 = v8;
    v42 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v40, &dword_1C0F96000, v42, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v8 = v41;
    v10 = v68;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v43 = OUTLINED_FUNCTION_96();
    sub_1C0FA03F4(v43, v44);
    v18 = (*(v16 + 8))(v21, v14);
    if ((v70 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    OUTLINED_FUNCTION_104(v18, 0x80000001C126A8F0);
    v45 = static String.photosSwiftUICoreLocalized(_:)(v1);
    (*(v10 + 8))(v1, v8);
    sub_1C1263A50();
    OUTLINED_FUNCTION_122(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v46, v47, MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
    OUTLINED_FUNCTION_0_21();
    sub_1C0FDB6D4(v48, &unk_1EBE91920, &qword_1C12AAE60, v49);
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_51_0();
    sub_1C1266870();
    OUTLINED_FUNCTION_19_7();
    v51 = v0 + v50;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_36_4(KeyPath);
    *(v0 + v51) = swift_getKeyPath();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    OUTLINED_FUNCTION_70(v53);
    OUTLINED_FUNCTION_85();
    v54 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_5(v54);
    v55 = swift_getKeyPath();
    OUTLINED_FUNCTION_34_4(v55);
    v56 = swift_getKeyPath();
    OUTLINED_FUNCTION_32_3(v56);
    v57 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_4(v57);
    v58 = swift_getKeyPath();
    OUTLINED_FUNCTION_37_3(v58);
    v59 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v59);
    *(v0 + 88) = xmmword_1C12AA410;
    *(v0 + 104) = 0;
    *(v0 + 112) = 0;
    *(v0 + 16) = 16;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = 0;
    *(v0 + 120) = v45;
    goto LABEL_6;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  OUTLINED_FUNCTION_104(v18, 0x80000001C126A8F0);
  v22 = static String.photosSwiftUICoreLocalized(_:)(v1);
  v66 = v23;
  v67 = v22;
  v24 = *(v10 + 8);
  v25 = v24(v1, v8);
  OUTLINED_FUNCTION_104(v25, 0x80000001C126A8F0);
  v26 = static String.photosSwiftUICoreLocalized(_:)(v1);
  v24(v1, v8);
  sub_1C1263A50();
  OUTLINED_FUNCTION_122(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v27, v28, MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  OUTLINED_FUNCTION_0_21();
  sub_1C0FDB6D4(v29, &unk_1EBE91920, &qword_1C12AAE60, v30);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_44_3();
  sub_1C1266870();
  OUTLINED_FUNCTION_19_7();
  v32 = v0 + v31;
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(v33);
  *(v0 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_45_2(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_46_1(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_83(v39);
  *(v0 + 16) = 16;
  *(v0 + 72) = v67;
  *(v0 + 80) = v66;
  *(v0 + 64) = 0;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 120) = v26;
LABEL_6:
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_30_3();
  *v61 = 0xD000000000000017;
  v61[1] = v60;
  OUTLINED_FUNCTION_24_3(v0 + *(v12 + 60));
  sub_1C1057EB8(v0, v69);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v62, v63, &unk_1C12AA96C);
  OUTLINED_FUNCTION_75(v69);
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v0, v64);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104B328()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_27_4(v10, v80);
  v12 = type metadata accessor for OneUpBarButton(v11);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_116();
  sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v23 = v22 - v21;
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if (!__OFADD__(v8, v6))
      {
        if (v8 + v6)
        {
          v24 = 16;
        }

        else
        {
          v24 = 17;
        }

        v25 = OUTLINED_FUNCTION_94();
        v27 = sub_1C104B974(v25, v26);
        v83 = v28;
        v85 = v27;
        sub_1C1263A50();
        v88 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_1_15();
        sub_1C105AAA8(v29, v30, MEMORY[0x1E697F5F0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
        OUTLINED_FUNCTION_0_21();
        sub_1C0FDB6D4(v31, &unk_1EBE91920, &qword_1C12AAE60, v32);
        OUTLINED_FUNCTION_44_3();
        sub_1C1266870();
        OUTLINED_FUNCTION_113();
        KeyPath = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(KeyPath);
        v34 = v12[17];
        *(v0 + v34) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
        swift_storeEnumTagMultiPayload();
        v35 = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(v35);
        v36 = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(v36);
        v37 = swift_getKeyPath();
        OUTLINED_FUNCTION_40_3(v37);
        v38 = swift_getKeyPath();
        OUTLINED_FUNCTION_49_0(v38);
        v39 = swift_getKeyPath();
        OUTLINED_FUNCTION_50_0(v39);
        v40 = swift_getKeyPath();
        *&v41 = OUTLINED_FUNCTION_38_4(v40);
        *(v0 + 88) = v41;
        *(v0 + 104) = v41;
        *(v0 + 16) = v24;
LABEL_25:
        OUTLINED_FUNCTION_41_2();
        *(v0 + 72) = v85;
        *(v0 + 80) = v83;
        *(v0 + 64) = 0;
        *v0 = 0;
        *(v0 + 8) = 0;
        *(v0 + 120) = 0;
        *(v0 + 128) = 0;
        v74 = (v0 + v12[13]);
        *v74 = 0;
        v74[1] = 0;
        v75 = (v0 + v12[14]);
        *v75 = 0xD000000000000012;
        v75[1] = v76;
        OUTLINED_FUNCTION_24_3(v0 + v12[15]);
        sub_1C1057EB8(v0, v87);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_2_19();
        sub_1C105AAA8(v77, v78, &unk_1C12AA96C);
        OUTLINED_FUNCTION_88();
        sub_1C1263C20();
        OUTLINED_FUNCTION_3_19();
        sub_1C105AAF0(v0, v79);
        OUTLINED_FUNCTION_22_0();
        return;
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v84 = v20;
    v86 = v19;

    v42 = v4;
    v43 = v8;
    v44 = v6;
    v45 = sub_1C1266420();
    v46 = sub_1C1264410();
    v47 = v45;
    v6 = v44;
    v8 = v43;
    OUTLINED_FUNCTION_76(v47, &dword_1C0F96000, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v42, 0);
    (*(v84 + 8))(v23, v86);
    if ((v88 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (!__OFADD__(v8, v6))
  {
    v49 = OUTLINED_FUNCTION_94();
    v51 = sub_1C104B974(v49, v50);
    v83 = v52;
    v85 = v51;
    v54 = v8 > 0 || v6 > 0;
    v55 = !v54;
    v56 = 0x6275622E74786574;
    if (!v55)
    {
      v56 = 0xD000000000000010;
    }

    v81 = v56;
    if (v55)
    {
      v57 = 0xEB00000000656C62;
    }

    else
    {
      v57 = 0x80000001C126A910;
    }

    if (v8 + v6)
    {
      v58 = 16;
    }

    else
    {
      v58 = 17;
    }

    v82 = v58;
    sub_1C1263A50();
    v88 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v59, v60, MEMORY[0x1E697F5F0]);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
    OUTLINED_FUNCTION_0_21();
    v64 = sub_1C0FDB6D4(v62, &unk_1EBE91920, &qword_1C12AAE60, v63);
    OUTLINED_FUNCTION_79(&v88, v61, v64);
    OUTLINED_FUNCTION_72();
    v65 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v65);
    v66 = v12[17];
    *(v16 + v66) = swift_getKeyPath();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    OUTLINED_FUNCTION_107(v67);
    v68 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v68);
    v69 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v69);
    v70 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v70);
    v71 = swift_getKeyPath();
    OUTLINED_FUNCTION_49_0(v71);
    v72 = swift_getKeyPath();
    OUTLINED_FUNCTION_50_0(v72);
    v73 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v73);
    *(v16 + 88) = v81;
    *(v16 + 96) = v57;
    *(v16 + 104) = 0;
    *(v16 + 112) = 0;
    v0 = v16;
    *(v16 + 16) = v82;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1C104B974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1265E50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (a1 < 1)
  {
    if (a2 < 1)
    {
      sub_1C1265DF0();
      goto LABEL_7;
    }

    sub_1C1265E20();
    sub_1C1265E10();
    v12 = a2;
  }

  else
  {
    sub_1C1265E20();
    sub_1C1265E10();
    v12 = a1;
    if (a2 >= 1)
    {
      sub_1C1265E00();
      sub_1C1265E10();
      v12 = a2;
    }
  }

  sub_1C1265E00();
  sub_1C1265E10();
  sub_1C1265E40();
LABEL_7:
  v9 = static String.photosSwiftUICoreLocalized(_:)(v7);
  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_1C104BC24()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v88 = v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_4(v9, v82);
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v84 = v11;
  v85 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  v12 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  v20 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v26 = v25 - v24;
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if (v6)
      {
        v27 = 112;
      }

      else
      {
        v27 = 97;
      }

      LODWORD(v83) = v27;
      sub_1C1265DF0();
      v82 = static String.photosSwiftUICoreLocalized(_:)(v0);
      v29 = v28;
      (*(v84 + 8))(v0, v85);
      sub_1C1263A50();
      v89 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_1_15();
      sub_1C105AAA8(v30, v31, MEMORY[0x1E697F5F0]);
      v32 = OUTLINED_FUNCTION_4_4();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_0_21();
      v39 = OUTLINED_FUNCTION_110(v35, v36, v37, v38);
      OUTLINED_FUNCTION_79(&v89, v34, v39);
      OUTLINED_FUNCTION_19_7();
      v41 = (v19 + v40);
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_36_4(KeyPath);
      *&v41[v19] = swift_getKeyPath();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
      OUTLINED_FUNCTION_70(v43);
      OUTLINED_FUNCTION_85();
      v44 = swift_getKeyPath();
      OUTLINED_FUNCTION_33_5(v44);
      v45 = swift_getKeyPath();
      OUTLINED_FUNCTION_34_4(v45);
      v46 = swift_getKeyPath();
      OUTLINED_FUNCTION_32_3(v46);
      v47 = swift_getKeyPath();
      OUTLINED_FUNCTION_31_4(v47);
      v48 = swift_getKeyPath();
      OUTLINED_FUNCTION_37_3(v48);
      v49 = swift_getKeyPath();
      *&v50 = OUTLINED_FUNCTION_38_4(v49);
      *(v19 + 88) = v50;
      *(v19 + 104) = v50;
      *(v19 + 16) = v83;
      *(v19 + 72) = v82;
      *(v19 + 80) = v29;
      *(v19 + 64) = 0;
      v51 = (v19 + 120);
      *v19 = 0;
      *(v19 + 8) = 0;
      goto LABEL_12;
    }
  }

  else
  {

    v52 = sub_1C1266420();
    v53 = sub_1C1264410();
    v83 = v0;
    v54 = v6;
    v55 = v53;
    OUTLINED_FUNCTION_76(v52, &dword_1C0F96000, v56, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v6 = v54;
    v0 = v83;
    sub_1C12637D0();
    OUTLINED_FUNCTION_98();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v4, 0);
    (*(v22 + 8))(v26, v20);
    if ((v89 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v6)
  {
    v57 = 112;
  }

  else
  {
    v57 = 97;
  }

  sub_1C1263A50();
  v89 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v58, v59, MEMORY[0x1E697F5F0]);
  v60 = OUTLINED_FUNCTION_4_4();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  OUTLINED_FUNCTION_0_21();
  v67 = OUTLINED_FUNCTION_110(v63, v64, v65, v66);
  OUTLINED_FUNCTION_79(&v89, v62, v67);
  OUTLINED_FUNCTION_113();
  v68 = (v16 + v12[16]);
  v69 = swift_getKeyPath();
  OUTLINED_FUNCTION_36_4(v69);
  *&v68[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v70 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v70);
  v71 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v71);
  v72 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v72);
  v73 = swift_getKeyPath();
  OUTLINED_FUNCTION_49_0(v73);
  v74 = swift_getKeyPath();
  OUTLINED_FUNCTION_37_3(v74);
  v75 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v75);
  *(v16 + 88) = xmmword_1C12AA420;
  *(v16 + 104) = 0;
  *(v16 + 112) = 0;
  *(v16 + 16) = v57;
  v51 = (v16 + 120);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 64) = 0;
  v19 = v16;
LABEL_12:
  *v51 = 0;
  v51[1] = 0;
  v76 = (v19 + v12[13]);
  *v76 = 0;
  *(v76 + 1) = 0;
  v77 = (v19 + v12[14]);
  *v77 = 0xD00000000000001CLL;
  *(v77 + 1) = 0x80000001C12AB960;
  OUTLINED_FUNCTION_24_3(v19 + v12[15]);
  sub_1C1057EB8(v19, v87);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v78, v79, &unk_1C12AA96C);
  v80 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_75(v80);
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v19, v81);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104C25C()
{
  OUTLINED_FUNCTION_23();
  v3 = v0;
  v143 = v4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE38, &qword_1C12AAFC0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v135 = v6;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91950, &qword_1C12AAFC8);
  OUTLINED_FUNCTION_0();
  v137 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v134 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v129 - v12;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91958, &unk_1C12AAFD0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  v141 = v14;
  v15 = OUTLINED_FUNCTION_49();
  v16 = type metadata accessor for OneUpBarButton(v15);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v129 - v22;
  v24 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_90();
  v28 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  v138 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v139 = v32;
  (*(v30 + 8))(v2, v28);
  v33 = *(v3 + 64);
  v34 = *(v3 + 72);
  v131 = v3;
  v132 = v26;
  v35 = *(v3 + 80);
  v133 = v24;
  if (v35 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    v36 = sub_1C1266420();
    v37 = sub_1C1264410();
    v130 = v16;
    v38 = v24;
    v39 = v37;
    OUTLINED_FUNCTION_78(v36, &dword_1C0F96000, v37, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_86();
    swift_getAtKeyPath();
    v40 = sub_1C0FF9034(v33, v34, 0);
    v16 = v130;
    (*(v26 + 8))(v1, v38, v40);
    v34 = *(&v145 + 1);
    v33 = v145;
  }

  v41 = MEMORY[0x1E69E7CC0];
  if (!v33 || (v42 = swift_getObjectType(), v43 = (*(v34 + 280))(v42, v34), swift_unknownObjectRelease(), (v43 & 1) == 0))
  {
    OUTLINED_FUNCTION_41_2();
    v130 = v72;
    v73 = v131;
    sub_1C0FE5654(v131, v20 + 24, &unk_1EBE91960, &qword_1C12C84C0);
    sub_1C1263A50();
    *&v145 = v41;
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v74, v75, MEMORY[0x1E697F5F0]);
    v76 = OUTLINED_FUNCTION_101();
    __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
    OUTLINED_FUNCTION_0_21();
    sub_1C0FDB6D4(v78, &unk_1EBE91920, &qword_1C12AAE60, v79);
    OUTLINED_FUNCTION_44_3();
    sub_1C1266870();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(KeyPath);
    v81 = v16[17];
    *(v20 + v81) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v82 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v82);
    v83 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v83);
    v84 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v84);
    v85 = swift_getKeyPath();
    OUTLINED_FUNCTION_49_0(v85);
    v86 = swift_getKeyPath();
    OUTLINED_FUNCTION_50_0(v86);
    v87 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v87);
    *(v20 + 88) = xmmword_1C12AA430;
    *(v20 + 104) = 0;
    *(v20 + 112) = 0;
    *(v20 + 16) = -2;
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 72) = 0;
    *(v20 + 80) = 0;
    *(v20 + 64) = 0;
    v88 = v139;
    *(v20 + 120) = v138;
    *(v20 + 128) = v88;
    v89 = (v20 + v16[13]);
    *v89 = 0;
    v89[1] = 0;
    v90 = (v20 + v16[14]);
    *v90 = 0xD000000000000012;
    v90[1] = v130;
    OUTLINED_FUNCTION_24_3(v20 + v16[15]);
    v91 = *(v73 + 40);
    v92 = *(v73 + 48);
    v93 = *(v73 + 56);
    if (v93 == 1)
    {
      swift_unknownObjectRetain();
      v94 = v92;
      v95 = v91;
    }

    else
    {

      v96 = sub_1C1266420();
      v97 = sub_1C1264410();
      OUTLINED_FUNCTION_78(v96, &dword_1C0F96000, v97, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_1C12637D0();
      swift_getAtKeyPath();
      v98 = OUTLINED_FUNCTION_101();
      sub_1C0FF9034(v98, v99, 0);
      v100 = OUTLINED_FUNCTION_82();
      v101(v100);
      v94 = *(&v145 + 1);
      v95 = v145;
    }

    if (v95)
    {
      ObjectType = swift_getObjectType();
      LOBYTE(v145) = -47;
      v103 = (*(v94 + 16))(&v145, ObjectType, v94);
      swift_unknownObjectRelease();
      v104 = v103 ^ 1;
    }

    else
    {
      v104 = 0;
    }

    v105 = swift_getKeyPath();
    v106 = swift_allocObject();
    *(v106 + 16) = v104 & 1;
    v107 = v135;
    sub_1C1057CF0(v20, v135);
    v108 = (v107 + *(v144 + 36));
    *v108 = v105;
    v108[1] = sub_1C1023064;
    v108[2] = v106;
    if (v93)
    {
      swift_unknownObjectRetain();
      if (v91)
      {
LABEL_15:
        v109 = swift_getObjectType();
        (*(v92 + 40))(&v145, v109, v92);
        swift_unknownObjectRelease();
LABEL_18:
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE28, &qword_1C12AB010);
        v116 = v134;
        v117 = v134 + *(v115 + 36);
        v118 = v146;
        *v117 = v145;
        *(v117 + 16) = v118;
        *(v117 + 32) = v147;
        *(v117 + 40) = 1;
        sub_1C0FE4040(v107, v116, &qword_1EBE8FE38, &qword_1C12AAFC0);
        v120 = v136;
        v119 = v137;
        v121 = v142;
        (*(v137 + 32))(v136, v116, v142);
        v122 = OUTLINED_FUNCTION_101();
        v123(v122);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_19();
        sub_1C105AAA8(v124, v125, &unk_1C12AA96C);
        v126 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
        v127 = sub_1C1057D54();
        v128 = sub_1C1057E3C();
        *&v145 = v144;
        *(&v145 + 1) = v126;
        *&v146 = v127;
        *(&v146 + 1) = v128;
        OUTLINED_FUNCTION_29_3();
        swift_getOpaqueTypeConformance2();
        sub_1C1263C20();
        (*(v119 + 8))(v120, v121);
        goto LABEL_19;
      }
    }

    else
    {

      v110 = sub_1C1266420();
      v111 = sub_1C1264410();
      OUTLINED_FUNCTION_78(v110, &dword_1C0F96000, v111, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_1C12637D0();
      swift_getAtKeyPath();
      v112 = OUTLINED_FUNCTION_101();
      v114 = sub_1C0FF9034(v112, v113, 0);
      (*(v132 + 8))(v1, v133, v114);
      v92 = *(&v145 + 1);
      if (v145)
      {
        goto LABEL_15;
      }
    }

    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    goto LABEL_18;
  }

  sub_1C1263A50();
  *&v145 = v41;
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v44, v45, MEMORY[0x1E697F5F0]);
  v46 = OUTLINED_FUNCTION_4_4();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
  OUTLINED_FUNCTION_0_21();
  v53 = OUTLINED_FUNCTION_110(v49, v50, v51, v52);
  OUTLINED_FUNCTION_79(&v145, v48, v53);
  OUTLINED_FUNCTION_71();
  v54 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v54);
  v55 = v16[17];
  *&v23[v55] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v56 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v56);
  v57 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v57);
  v58 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v58);
  v59 = swift_getKeyPath();
  OUTLINED_FUNCTION_49_0(v59);
  v60 = swift_getKeyPath();
  OUTLINED_FUNCTION_50_0(v60);
  v61 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v61);
  *(v23 + 88) = xmmword_1C12AA430;
  *(v23 + 13) = 0;
  *(v23 + 14) = 0;
  v23[16] = -47;
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 9) = 0;
  *(v23 + 10) = 0;
  *(v23 + 8) = 0;
  v62 = v139;
  *(v23 + 15) = v138;
  *(v23 + 16) = v62;
  OUTLINED_FUNCTION_112();
  v64 = &v23[v63];
  *v64 = 0xD000000000000012;
  *(v64 + 1) = 0x80000001C12AA7A0;
  v65 = &v23[v16[15]];
  *v65 = 0;
  v65[8] = 1;
  sub_1C1057EB8(v23, v141);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v66, v67, &unk_1C12AA96C);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
  v69 = sub_1C1057D54();
  v70 = sub_1C1057E3C();
  *&v145 = v144;
  *(&v145 + 1) = v68;
  *&v146 = v69;
  *(&v146 + 1) = v70;
  OUTLINED_FUNCTION_29_3();
  swift_getOpaqueTypeConformance2();
  sub_1C1263C20();
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v23, v71);
LABEL_19:
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104CDD0()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91940, &qword_1C12AAFB8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_91();
  v11 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  if (v2)
  {
    swift_unknownObjectRetain();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = 1;
    goto LABEL_7;
  }

  v43 = sub_1C1266420();
  v44 = sub_1C1264410();
  OUTLINED_FUNCTION_78(v43, &dword_1C0F96000, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

  sub_1C12637D0();
  OUTLINED_FUNCTION_86();
  swift_getAtKeyPath();
  v45 = sub_1C0FF9034(v6, v4, 0);
  (*(v13 + 8))(v17, v11, v45);
  v4 = v50;
  if (!v49)
  {
    goto LABEL_6;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  (*(v4 + 200))(ObjectType, v4);
  v20 = v19;
  swift_unknownObjectRelease();
  v21 = swift_getObjectType();
  v22 = (*(v20 + 32))(v21, v20);
  swift_unknownObjectRelease();
  v23 = 1;
  if (v22)
  {
    v48 = v22;
    OUTLINED_FUNCTION_41_2();
    v46 = v25;
    v47 = v24;
    sub_1C1263A50();
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0;
    v26 = type metadata accessor for OneUpBarButton(0);
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v27, v28, MEMORY[0x1E697F5F0]);
    v29 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_0_21();
    sub_1C0FDB6D4(v31, &unk_1EBE91920, &qword_1C12AAE60, v32);
    sub_1C1266870();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(KeyPath);
    v34 = v26[17];
    *(v0 + v34) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v35 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v35);
    v36 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v36);
    v37 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v37);
    v38 = swift_getKeyPath();
    OUTLINED_FUNCTION_49_0(v38);
    v39 = swift_getKeyPath();
    OUTLINED_FUNCTION_50_0(v39);
    v40 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v40);
    *(v0 + 96) = v46;
    *(v0 + 104) = 0;
    *(v0 + 16) = -2;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xD000000000000018;
    *(v0 + 64) = v48;
    *(v0 + 72) = 0;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xD00000000000001FLL;
    *(v0 + 128) = v47;
    v41 = (v0 + v26[13]);
    *v41 = 0;
    v41[1] = 0;
    v42 = (v0 + v26[14]);
    *v42 = 0xD00000000000001FLL;
    v42[1] = v47;
    OUTLINED_FUNCTION_24_3(v0 + v26[15]);
    *(v0 + *(v9 + 36)) = 257;
    sub_1C0FE4040(v0, v8, &unk_1EBE91940, &qword_1C12AAFB8);
    v23 = 0;
  }

LABEL_7:
  __swift_storeEnumTagSinglePayload(v8, v23, 1, v9);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104D20C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_28_4("chevron.backward");
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_41_2();
  v26 = v5;
  v6 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v7, v8, MEMORY[0x1E697F5F0]);
  v9 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_0_21();
  v15 = OUTLINED_FUNCTION_80(v11, v12, v13, v14);
  OUTLINED_FUNCTION_22_7(v15);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v6) = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v17);
  OUTLINED_FUNCTION_53_0();
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v23);
  *(v0 + 96) = v27;
  *(v0 + 104) = 0;
  *(v0 + 16) = 33;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD000000000000010;
  OUTLINED_FUNCTION_74();
  *v25 = v24 | 2;
  v25[1] = v26;
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104D430()
{
  OUTLINED_FUNCTION_23();
  v35 = v2;
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v4 = OUTLINED_FUNCTION_90();
  v5 = type metadata accessor for OneUpBarButton(v4);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = *v0;
  OUTLINED_FUNCTION_25_3();
  sub_1C1265DF0();
  if (v10 == 2)
  {
    v11 = "speaker.slash.fill";
    v34 = 0xD000000000000013;
  }

  else
  {
    v11 = "OneUp.AddAComment";
    v34 = 0xD000000000000012;
  }

  v12 = static String.photosSwiftUICoreLocalized(_:)(v1);
  v32 = v13;
  v33 = v12;
  v14 = OUTLINED_FUNCTION_47();
  v15(v14);
  sub_1C1263A50();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v16, v17, MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  OUTLINED_FUNCTION_0_21();
  sub_1C0FDB6D4(v18, &unk_1EBE91920, &qword_1C12AAE60, v19);
  OUTLINED_FUNCTION_51_0();
  sub_1C1266870();
  OUTLINED_FUNCTION_121();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(KeyPath);
  v21 = v5[17];
  *(v9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v23);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v24);
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_49_0(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_50_0(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v27);
  *(v9 + 96) = v11 | 0x8000000000000000;
  *(v9 + 104) = 0;
  *(v9 + 16) = 80;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = v34;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 112) = 0;
  *(v9 + 120) = v33;
  *(v9 + 128) = v32;
  v28 = (v9 + v5[13]);
  *v28 = 0;
  v28[1] = 0;
  *(v9 + v5[14]) = xmmword_1C12AA440;
  OUTLINED_FUNCTION_24_3(v9 + v5[15]);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = (v10 - 3) < 0xFFFFFFFE;
  sub_1C1057CF0(v9, v35);
  v31 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE38, &qword_1C12AAFC0) + 36));
  *v31 = v29;
  v31[1] = sub_1C1023A9C;
  v31[2] = v30;
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104D7E0(char a1@<W0>, void *a2@<X8>)
{
  v3 = 0x6C69662E79616C70;
  if (a1)
  {
    v3 = 0x69662E6573756170;
  }

  v27 = v3;
  if (a1)
  {
    v4 = 0xEA00000000006C6CLL;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  v26 = sub_1C104D9E0(a1);
  v6 = v5;
  v7 = sub_1C1263A50();
  v8 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v9, v10, MEMORY[0x1E697F5F0]);
  v11 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_80(v13, v14, v15, v16);
  OUTLINED_FUNCTION_44_3();
  sub_1C1266870();
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(a2 + v7) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v18);
  OUTLINED_FUNCTION_53_0();
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v23);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v24);
  a2[12] = v4;
  a2[13] = 0;
  OUTLINED_FUNCTION_117(176);
  a2[10] = 0;
  a2[11] = v27;
  a2[8] = 0;
  a2[9] = 0;
  a2[14] = 0;
  a2[15] = v26;
  a2[16] = v6;
  OUTLINED_FUNCTION_20_11();
  *(a2 + v25) = xmmword_1C12AA450;
  OUTLINED_FUNCTION_12_9(*(v8 + 60));
}

uint64_t sub_1C104D9E0(char a1)
{
  v1 = sub_1C1265E50();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1265DF0();
  v5 = static String.photosSwiftUICoreLocalized(_:)(v4);
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1C104DB0C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1C1265E50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v38 - v6;
  v8 = type metadata accessor for OneUpBarButton(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v40 = v1[1];
  if (v11 == 1)
  {
    v39 = 0x80000001C126A8D0;
    sub_1C1263A50();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C105AAA8(&qword_1EDE7BC70, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
    sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920, &qword_1C12AAE60, MEMORY[0x1E69E6328]);
    sub_1C1266870();
    *(v10 + 7) = 0;
    *(v10 + 40) = 0u;
    *(v10 + 24) = 0u;
    v12 = &v10[v8[16]];
    *v12 = swift_getKeyPath();
    v12[8] = 0;
    v13 = v8[17];
    *&v10[v13] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v14 = &v10[v8[18]];
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    v15 = &v10[v8[19]];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = &v10[v8[20]];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    v17 = &v10[v8[21]];
    *v17 = swift_getKeyPath();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v18 = &v10[v8[22]];
    *v18 = swift_getKeyPath();
    *(v18 + 4) = 0;
    v19 = &v10[v8[23]];
    KeyPath = swift_getKeyPath();
    v21 = 0;
    *v19 = KeyPath;
    v19[8] = 0;
    *(v10 + 12) = v39;
    *(v10 + 13) = 0;
    *(v10 + 14) = 0;
    v10[16] = v40;
    v22 = v10 + 120;
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 10) = 0;
    *(v10 + 11) = 0xD000000000000017;
    *(v10 + 8) = 0;
    *(v10 + 9) = 0;
  }

  else
  {
    sub_1C1265DF0();
    v23 = static String.photosSwiftUICoreLocalized(_:)(v5);
    v38 = v24;
    v39 = v23;
    (*(v3 + 8))(v5, v2);
    sub_1C1263A50();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C105AAA8(&qword_1EDE7BC70, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
    sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920, &qword_1C12AAE60, MEMORY[0x1E69E6328]);
    sub_1C1266870();
    *(v10 + 7) = 0;
    *(v10 + 40) = 0u;
    *(v10 + 24) = 0u;
    v25 = &v10[v8[16]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = v8[17];
    *&v10[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v27 = &v10[v8[18]];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = &v10[v8[19]];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    v29 = &v10[v8[20]];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = &v10[v8[21]];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    v30[16] = 0;
    v31 = &v10[v8[22]];
    *v31 = swift_getKeyPath();
    *(v31 + 4) = 0;
    v32 = &v10[v8[23]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    v10[16] = v40;
    v33 = v38;
    *(v10 + 9) = v39;
    *(v10 + 10) = v33;
    *(v10 + 8) = 0;
    v22 = v10 + 120;
    v21 = 0x4018000000000000;
    *v10 = 0;
    *(v10 + 1) = 0;
  }

  *v22 = 0;
  v22[1] = 0;
  v34 = &v10[v8[13]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v10[v8[14]];
  *v35 = 0xD000000000000014;
  *(v35 + 1) = 0x80000001C12AB200;
  v36 = &v10[v8[15]];
  *v36 = v21;
  v36[8] = v11;
  sub_1C1057EB8(v10, v7);
  swift_storeEnumTagMultiPayload();
  sub_1C105AAA8(qword_1EDE7E360, type metadata accessor for OneUpBarButton, &unk_1C12AA96C);
  sub_1C1263C20();
  return sub_1C105AAF0(v10, type metadata accessor for OneUpBarButton);
}

uint64_t sub_1C104E1A4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = 81;
  return result;
}

uint64_t sub_1C104E1BC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = -48;
  return result;
}

void sub_1C104E1D4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v3);
  v5 = OUTLINED_FUNCTION_11_13();
  v6(v5);
  OUTLINED_FUNCTION_28_4("OneUpAirplayButton");
  v7 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v8, v9, MEMORY[0x1E697F5F0]);
  v10 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_0_21();
  v16 = OUTLINED_FUNCTION_80(v12, v13, v14, v15);
  OUTLINED_FUNCTION_22_7(v16);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v7) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v18);
  OUTLINED_FUNCTION_53_0();
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v23);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v24);
  OUTLINED_FUNCTION_84(xmmword_1C12AA460);
  OUTLINED_FUNCTION_117(96);
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = 0;
  v0[15] = v1;
  v0[16] = v2;
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_4_18(v25);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104E3E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_28_4("OneUpDeleteButton");
  v5 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v6, v7, MEMORY[0x1E697F5F0]);
  v8 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_0_21();
  v14 = OUTLINED_FUNCTION_80(v10, v11, v12, v13);
  OUTLINED_FUNCTION_22_7(v14);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v5) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v16);
  OUTLINED_FUNCTION_53_0();
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v22);
  OUTLINED_FUNCTION_84(xmmword_1C12AA3C0);
  OUTLINED_FUNCTION_8_15(64);
  OUTLINED_FUNCTION_4_18(v23);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104E5E0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_28_4("OneUpRecoverButton");
  v5 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v6, v7, MEMORY[0x1E697F5F0]);
  v8 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_0_21();
  v14 = OUTLINED_FUNCTION_80(v10, v11, v12, v13);
  OUTLINED_FUNCTION_22_7(v14);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v5) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v16);
  OUTLINED_FUNCTION_53_0();
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v22);
  OUTLINED_FUNCTION_84(xmmword_1C12AA470);
  OUTLINED_FUNCTION_8_15(113);
  OUTLINED_FUNCTION_4_18(v23);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104E7E0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_28_4("OneUpRestoreButton");
  v5 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v6, v7, MEMORY[0x1E697F5F0]);
  v8 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_0_21();
  v14 = OUTLINED_FUNCTION_80(v10, v11, v12, v13);
  OUTLINED_FUNCTION_22_7(v14);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v5) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v16);
  OUTLINED_FUNCTION_53_0();
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v22);
  OUTLINED_FUNCTION_84(xmmword_1C12AA470);
  OUTLINED_FUNCTION_8_15(128);
  OUTLINED_FUNCTION_4_18(v23);
  OUTLINED_FUNCTION_22_0();
}

double sub_1C104E9E0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1C1052634(v30);
  sub_1C1263A50();
  v8 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v9, v10, MEMORY[0x1E697F5F0]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_128(v11, v12, v13, v14);
  v26 = v30[1];
  v27 = v30[0];
  OUTLINED_FUNCTION_71();
  *&v30[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  sub_1C1266870();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(KeyPath);
  v16 = v8[17];
  *(a5 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_45_2(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_46_1(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v22);
  *(a5 + 104) = 0;
  *(a5 + 112) = 0;
  *(a5 + 16) = -2;
  *(a5 + 88) = v26;
  *(a5 + 72) = v27;
  *(a5 + 64) = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 120) = a1;
  *(a5 + 128) = a2;
  v23 = (a5 + v8[13]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a5 + v8[14]);
  *v24 = a3;
  v24[1] = a4;
  OUTLINED_FUNCTION_24_3(a5 + v8[15]);

  return result;
}

void sub_1C104EC24()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_114();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_4(v6, v72);
  v76 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v15 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v21 = v20 - v19;
  if ((v2 & 1) == 0)
  {

    v45 = sub_1C1266420();
    v46 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v45, &dword_1C0F96000, v46, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    OUTLINED_FUNCTION_114();
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v4, 0);
    (*(v17 + 8))(v21, v15);
    if ((v78 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1265DF0();
    v75 = static String.photosSwiftUICoreLocalized(_:)(v12);
    (*(v8 + 8))(v12, v76);
    sub_1C1263A50();
    OUTLINED_FUNCTION_122(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v47, v48, MEMORY[0x1E697F5F0]);
    v49 = OUTLINED_FUNCTION_98();
    __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_127(v51, v52, v53, v54);
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_51_0();
    sub_1C1266870();
    OUTLINED_FUNCTION_19_7();
    v56 = v0 + v55;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_36_4(KeyPath);
    *(v0 + v56) = swift_getKeyPath();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    OUTLINED_FUNCTION_70(v58);
    OUTLINED_FUNCTION_85();
    v59 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_5(v59);
    v60 = swift_getKeyPath();
    OUTLINED_FUNCTION_34_4(v60);
    v61 = swift_getKeyPath();
    OUTLINED_FUNCTION_32_3(v61);
    v62 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_4(v62);
    v63 = swift_getKeyPath();
    OUTLINED_FUNCTION_37_3(v63);
    v64 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v64);
    *(v0 + 96) = 0x80000001C126AA30;
    *(v0 + 104) = 0;
    *(v0 + 16) = -112;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xD000000000000014;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 112) = 0;
    *(v0 + 120) = v75;
    goto LABEL_6;
  }

  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C1265DF0();
  v22 = static String.photosSwiftUICoreLocalized(_:)(v12);
  v73 = v23;
  v74 = v22;
  v24 = *(v8 + 8);
  v24(v12, v76);
  OUTLINED_FUNCTION_86();
  sub_1C1265DF0();
  v25 = static String.photosSwiftUICoreLocalized(_:)(v12);
  v24(v12, v76);
  sub_1C1263A50();
  OUTLINED_FUNCTION_122(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v26, v27, MEMORY[0x1E697F5F0]);
  v28 = OUTLINED_FUNCTION_98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_127(v30, v31, v32, v33);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_51_0();
  sub_1C1266870();
  OUTLINED_FUNCTION_19_7();
  v35 = v0 + v34;
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_36_4(v36);
  *(v0 + v35) = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_70(v37);
  OUTLINED_FUNCTION_85();
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_5(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_34_4(v39);
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_32_3(v40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_31_4(v41);
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_37_3(v42);
  v43 = swift_getKeyPath();
  *&v44 = OUTLINED_FUNCTION_38_4(v43);
  *(v0 + 88) = v44;
  *(v0 + 104) = v44;
  *(v0 + 16) = -112;
  *(v0 + 72) = v74;
  *(v0 + 80) = v73;
  *(v0 + 64) = 0;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 120) = v25;
LABEL_6:
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_30_3();
  *v66 = v67;
  v66[1] = v65;
  OUTLINED_FUNCTION_24_3(v0 + *(v13 + 60));
  sub_1C1057EB8(v0, v77);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v68, v69, &unk_1C12AA96C);
  v70 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_75(v70);
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v0, v71);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104F214()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v98 = v4;
  v6 = v5;
  v106 = v7;
  v8 = sub_1C1265E30();
  v9 = OUTLINED_FUNCTION_15(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91BF8, &qword_1C12AC108);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v104 = v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  v103 = v13;
  OUTLINED_FUNCTION_49();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v99 = v15;
  v100 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_119();
  v21 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91BD0, &unk_1C12AB7A0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v96 - v28;
  v97 = v6;
  if (v6 <= 1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_123();
      if ((v98 & 1) == 0)
      {
LABEL_7:
        OUTLINED_FUNCTION_125();
        v48 = static String.photosSwiftUICoreLocalized(_:)(v18);
        v50 = v49;
        v51 = OUTLINED_FUNCTION_73();
        v52(v51);
        v107 = v48;
        v108 = v50;
        v109 = 0u;
        v110 = 0u;
        v111 = 0;
        sub_1C104E9E0(0, 0, 0xD000000000000016, 0x80000001C12ABA50, v0);
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v82 = v98;

      v83 = sub_1C1266420();
      v84 = sub_1C1264410();
      OUTLINED_FUNCTION_78(v83, &dword_1C0F96000, v84, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v82, 0);
      (*(v23 + 8))(v1, v21);
      OUTLINED_FUNCTION_123();
      if ((v85 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_41_2();
    v107 = v87 - 6;
    v108 = v86;
    v109 = 0u;
    v110 = 0u;
    v111 = 1;
    OUTLINED_FUNCTION_125();
    v88 = static String.photosSwiftUICoreLocalized(_:)(v18);
    v90 = v89;
    v91 = OUTLINED_FUNCTION_73();
    v92(v91);
    sub_1C104E9E0(v88, v90, 0xD000000000000016, 0x80000001C12ABA50, v0);
    goto LABEL_13;
  }

  v96 = v27;
  if ((v3 & 1) == 0)
  {
    v53 = v98;

    v54 = sub_1C1266420();
    v55 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v54, &dword_1C0F96000, v55, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v53, 0);
    (*(v23 + 8))(v1, v21);
    if ((v107 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    OUTLINED_FUNCTION_41_2();
    v98 = v56;
    sub_1C1265E20();
    OUTLINED_FUNCTION_108();
    v107 = v97;
    OUTLINED_FUNCTION_126();
    sub_1C1265E10();
    sub_1C1265E40();
    v57 = static String.photosSwiftUICoreLocalized(_:)(v18);
    v97 = v58;
    v59 = OUTLINED_FUNCTION_73();
    v60(v59);
    sub_1C1263A50();
    v107 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v61, v62, MEMORY[0x1E697F5F0]);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
    OUTLINED_FUNCTION_0_21();
    v66 = sub_1C0FDB6D4(v64, &unk_1EBE91920, &qword_1C12AAE60, v65);
    OUTLINED_FUNCTION_79(&v107, v63, v66);
    OUTLINED_FUNCTION_72();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(KeyPath);
    v68 = v19[17];
    *(v0 + v68) = swift_getKeyPath();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    OUTLINED_FUNCTION_107(v69);
    v70 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v70);
    v71 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v71);
    v72 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v72);
    v73 = swift_getKeyPath();
    OUTLINED_FUNCTION_49_0(v73);
    v74 = swift_getKeyPath();
    OUTLINED_FUNCTION_50_0(v74);
    swift_getKeyPath();
    OUTLINED_FUNCTION_123();
    OUTLINED_FUNCTION_40_3(v75);
    *(v0 + 96) = v98;
    *(v0 + 104) = 0;
    *(v0 + 16) = -112;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = v76 - 2;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 112) = 0;
    *(v0 + 120) = v57;
    *(v0 + 128) = v97;
    goto LABEL_10;
  }

  if (v98)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1C1265E20();
  OUTLINED_FUNCTION_108();
  v107 = v97;
  OUTLINED_FUNCTION_126();
  sub_1C1265E10();
  sub_1C1265E40();
  v30 = static String.photosSwiftUICoreLocalized(_:)(v18);
  v32 = v31;
  v33 = OUTLINED_FUNCTION_73();
  v34(v33);
  sub_1C1263A50();
  v107 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v35, v36, MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  OUTLINED_FUNCTION_0_21();
  sub_1C0FDB6D4(v37, &unk_1EBE91920, &qword_1C12AAE60, v38);
  OUTLINED_FUNCTION_44_3();
  sub_1C1266870();
  OUTLINED_FUNCTION_72();
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v39);
  v40 = v19[17];
  *(v0 + v40) = swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_107(v41);
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v42);
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v43);
  v44 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v44);
  v45 = swift_getKeyPath();
  OUTLINED_FUNCTION_49_0(v45);
  v46 = swift_getKeyPath();
  OUTLINED_FUNCTION_50_0(v46);
  swift_getKeyPath();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_40_3(v47);
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 16) = -112;
  *(v0 + 72) = v30;
  *(v0 + 80) = v32;
  *(v0 + 64) = 0;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
LABEL_10:
  OUTLINED_FUNCTION_41_2();
  v77 = (v0 + v19[13]);
  *v77 = 0;
  v77[1] = 0;
  v78 = (v0 + v19[14]);
  *v78 = v80;
  v78[1] = v79;
  v81 = v0 + v19[15];
  *v81 = 0;
  *(v81 + 8) = 1;
  v29 = v96;
LABEL_14:
  sub_1C1057EB8(v0, v103);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v93, v94, &unk_1C12AA96C);
  sub_1C1263C20();
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v0, v95);
  sub_1C0FE5654(v29, v104, &unk_1EBE91BD0, &unk_1C12AB7A0);
  swift_storeEnumTagMultiPayload();
  sub_1C1059CA8();
  sub_1C1263C20();
  sub_1C0FD1A5C(v29, &unk_1EBE91BD0, &unk_1C12AB7A0);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C104FC04()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_27_4(v4, v81);
  v5 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_119();
  v9 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  v18 = *(v0 + 8);
  v19 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    v82 = v14;
    v84 = *(v0 + 8);

    v45 = sub_1C1266420();
    v46 = v7;
    v47 = v5;
    v48 = sub_1C1264410();
    OUTLINED_FUNCTION_76(v45, &dword_1C0F96000, v49, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v5 = v47;
    v7 = v46;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v19, 0);
    (*(v12 + 8))(v17, v82);
    v18 = v84;
    if ((v88 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    OUTLINED_FUNCTION_41_2();
    v86 = v50;
    LOBYTE(v88) = v51;
    v52 = OUTLINED_FUNCTION_89();
    sub_1C1050238(v52, v53);
    v54 = static String.photosSwiftUICoreLocalized(_:)(v2);
    (*(v7 + 8))(v2, v5);
    sub_1C1263A50();
    v88 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v55, v56, MEMORY[0x1E697F5F0]);
    v57 = OUTLINED_FUNCTION_4_4();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
    OUTLINED_FUNCTION_0_21();
    v64 = OUTLINED_FUNCTION_110(v60, v61, v62, v63);
    OUTLINED_FUNCTION_79(&v88, v59, v64);
    OUTLINED_FUNCTION_19_7();
    v66 = v1 + v65;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_36_4(KeyPath);
    *(v1 + v66) = swift_getKeyPath();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    OUTLINED_FUNCTION_70(v68);
    OUTLINED_FUNCTION_85();
    v69 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_5(v69);
    v70 = swift_getKeyPath();
    OUTLINED_FUNCTION_34_4(v70);
    v71 = swift_getKeyPath();
    OUTLINED_FUNCTION_32_3(v71);
    v72 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_4(v72);
    v73 = swift_getKeyPath();
    OUTLINED_FUNCTION_37_3(v73);
    v74 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v74);
    *(v1 + 96) = v86;
    *(v1 + 104) = 0;
    *(v1 + 16) = -111;
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0xD000000000000015;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 112) = 0;
    *(v1 + 120) = v54;
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  LOBYTE(v88) = v18;
  v20 = OUTLINED_FUNCTION_89();
  sub_1C1050238(v20, v21);
  v22 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v83 = v23;
  v85 = v22;
  v24 = *(v7 + 8);
  v24(v2, v5);
  v25 = OUTLINED_FUNCTION_89();
  sub_1C1050238(v25, v26);
  v27 = static String.photosSwiftUICoreLocalized(_:)(v2);
  v24(v2, v5);
  sub_1C1263A50();
  v88 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v28, v29, MEMORY[0x1E697F5F0]);
  v30 = OUTLINED_FUNCTION_98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_127(v32, v33, v34, v35);
  OUTLINED_FUNCTION_51_0();
  sub_1C1266870();
  OUTLINED_FUNCTION_19_7();
  v37 = v1 + v36;
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(v38);
  *(v1 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v39);
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_39_3(v41);
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_45_2(v42);
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_46_1(v43);
  v44 = swift_getKeyPath();
  OUTLINED_FUNCTION_83(v44);
  *(v1 + 16) = -111;
  *(v1 + 72) = v85;
  *(v1 + 80) = v83;
  *(v1 + 64) = 0;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 120) = v27;
LABEL_6:
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_30_3();
  *v77 = v75 + 6;
  v77[1] = v76;
  OUTLINED_FUNCTION_24_3(v1 + *(v9 + 60));
  sub_1C1057EB8(v1, v87);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v78, v79, &unk_1C12AA96C);
  OUTLINED_FUNCTION_75(v87);
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v1, v80);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1050238(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  sub_1C1266940();

  v4 = 0xE600000000000000;
  v5 = 0x676E69766153;
  if (v3 != 2)
  {
    v5 = 0x6465766153;
    v4 = 0xE500000000000000;
  }

  if (v3 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x64657661736E55;
  }

  if (v3 >= 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  MEMORY[0x1C68EF850](v6, v7);

  MEMORY[0x1C68EF850](46, 0xE100000000000000);
  v8 = sub_1C1050348(a1);
  MEMORY[0x1C68EF850](v8);

  return sub_1C1265E60();
}

unint64_t sub_1C1050348(uint64_t a1)
{
  result = 1835365449;
  switch(a1)
  {
    case 0:
    case 3:
      return result;
    case 1:
      v3 = 1953458256;
      goto LABEL_4;
    case 2:
      v3 = 1701079382;
LABEL_4:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    default:
      sub_1C1266940();

      v4 = sub_1C1266540();
      MEMORY[0x1C68EF850](v4);

      result = sub_1C1266B70();
      __break(1u);
      break;
  }

  return result;
}

void sub_1C1050450()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_28_4("OneUpEnterSelectButton");
  v5 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v6, v7, MEMORY[0x1E697F5F0]);
  v8 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_0_21();
  v14 = OUTLINED_FUNCTION_80(v10, v11, v12, v13);
  OUTLINED_FUNCTION_22_7(v14);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v5) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v16);
  OUTLINED_FUNCTION_53_0();
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v21);
  v22 = swift_getKeyPath();
  v23.n128_f64[0] = OUTLINED_FUNCTION_38_4(v22);
  OUTLINED_FUNCTION_118(v23);
  OUTLINED_FUNCTION_8_15(160);
  OUTLINED_FUNCTION_4_18(v24);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C1050644()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_105(v3);
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v4 = OUTLINED_FUNCTION_11_13();
  v5(v4);
  OUTLINED_FUNCTION_28_4("OneUpExitSelectButton");
  v6 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v7, v8, MEMORY[0x1E697F5F0]);
  v9 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_0_21();
  v15 = OUTLINED_FUNCTION_80(v11, v12, v13, v14);
  OUTLINED_FUNCTION_22_7(v15);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v6) = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v17);
  OUTLINED_FUNCTION_53_0();
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v22);
  v23 = swift_getKeyPath();
  v24.n128_f64[0] = OUTLINED_FUNCTION_38_4(v23);
  OUTLINED_FUNCTION_118(v24);
  OUTLINED_FUNCTION_8_15(160);
  OUTLINED_FUNCTION_4_18(v25);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C1050824()
{
  OUTLINED_FUNCTION_23();
  v89 = v2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91BB0, &qword_1C12AB790);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34();
  v88 = v4;
  OUTLINED_FUNCTION_49();
  v85 = sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v8 = OUTLINED_FUNCTION_91();
  v9 = type metadata accessor for OneUpBarButton(v8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_95();
  v18 = *v0;
  v19 = *(v0 + 1);
  LODWORD(v86) = v0[16];
  if (v86 != 1)
  {
    LODWORD(v83) = v18;

    v47 = sub_1C1266420();
    v48 = sub_1C1264410();
    v84 = v1;
    v49 = v48;
    OUTLINED_FUNCTION_78(v47, &dword_1C0F96000, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v1 = v84;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v50 = OUTLINED_FUNCTION_96();
    sub_1C0FA03F4(v50, v51);
    v52 = OUTLINED_FUNCTION_24_5();
    v53(v52);
    LOBYTE(v18) = v83;
    if ((v91 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    LOBYTE(v91) = v18;
    v92 = v19;
    v93 = v86;
    sub_1C1050F3C();
    OUTLINED_FUNCTION_41_2();
    v85 = v54;
    v86 = v55;
    sub_1C1263A50();
    v90 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_15();
    sub_1C105AAA8(v56, v57, MEMORY[0x1E697F5F0]);
    v58 = OUTLINED_FUNCTION_98();
    __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_127(v60, v61, v62, v63);
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_44_3();
    sub_1C1266870();
    OUTLINED_FUNCTION_19_7();
    v65 = (v13 + v64);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_36_4(KeyPath);
    *&v65[v13] = swift_getKeyPath();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    OUTLINED_FUNCTION_70(v67);
    OUTLINED_FUNCTION_85();
    v68 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_5(v68);
    v69 = swift_getKeyPath();
    OUTLINED_FUNCTION_34_4(v69);
    v70 = swift_getKeyPath();
    OUTLINED_FUNCTION_32_3(v70);
    v71 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_4(v71);
    v72 = swift_getKeyPath();
    OUTLINED_FUNCTION_37_3(v72);
    v73 = swift_getKeyPath();
    OUTLINED_FUNCTION_40_3(v73);
    *(v13 + 96) = 0x80000001C126AAB0;
    *(v13 + 104) = 0;
    *(v13 + 16) = -95;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0xD000000000000015;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    v74 = v85;
    *(v13 + 112) = 0;
    *(v13 + 120) = v74;
    OUTLINED_FUNCTION_30_3();
    *v76 = v75;
    v76[1] = v86;
    v77 = (v13 + v9[15]);
    *v77 = 0;
    v77[8] = 1;
    v16 = v13;
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = v18;
  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1C1266940();

  OUTLINED_FUNCTION_41_2();
  v91 = 0xD000000000000013;
  v92 = v21;
  v22 = OUTLINED_FUNCTION_24_5();
  MEMORY[0x1C68EF850](v22);

  sub_1C1265E60();
  v23 = static String.photosSwiftUICoreLocalized(_:)(v1);
  v83 = v24;
  v84 = v23;
  (*(v6 + 8))(v1, v85);
  LOBYTE(v91) = v20;
  v92 = v19;
  v93 = v86;
  v25 = sub_1C1050F3C();
  v27 = v26;
  OUTLINED_FUNCTION_41_2();
  v86 = v28;
  sub_1C1263A50();
  v90 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v29, v30, MEMORY[0x1E697F5F0]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  OUTLINED_FUNCTION_0_21();
  v34 = sub_1C0FDB6D4(v32, &unk_1EBE91920, &qword_1C12AAE60, v33);
  OUTLINED_FUNCTION_79(&v90, v31, v34);
  OUTLINED_FUNCTION_121();
  v35 = (v16 + v9[16]);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_36_4(v36);
  *&v35[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_40_3(v39);
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_49_0(v40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_37_3(v41);
  v42 = swift_getKeyPath();
  *&v43 = OUTLINED_FUNCTION_38_4(v42);
  *(v16 + 88) = v43;
  *(v16 + 104) = v43;
  *(v16 + 16) = -95;
  v44 = v83;
  *(v16 + 72) = v84;
  *(v16 + 80) = v44;
  *(v16 + 64) = 0;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 120) = v25;
  *(v16 + 128) = v27;
  v45 = (v16 + v9[13]);
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = (v16 + v9[14]);
  *v46 = 0xD00000000000001CLL;
  *(v46 + 1) = v86;
  OUTLINED_FUNCTION_24_3(v16 + v9[15]);
LABEL_6:
  v78 = v88;
  sub_1C1057EB8(v16, v88);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  sub_1C105AAA8(v79, v80, &unk_1C12AA96C);
  OUTLINED_FUNCTION_75(v78);
  OUTLINED_FUNCTION_3_19();
  sub_1C105AAF0(v16, v81);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1050F3C()
{
  v1 = sub_1C1265E50();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0xE600000000000000;
  v6 = 0x676E69766153;
  if (*v0 != 1)
  {
    v6 = 0x6465766153;
    v5 = 0xE500000000000000;
  }

  if (*v0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64657661736E55;
  }

  if (*v0)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1C1266940();

  v11 = 0xD000000000000013;
  v12 = 0x80000001C126AB10;
  MEMORY[0x1C68EF850](v7, v8);

  sub_1C1265E60();
  v9 = static String.photosSwiftUICoreLocalized(_:)(v4);
  (*(v2 + 8))(v4, v1);
  return v9;
}

void sub_1C10510C4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_105(v3);
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v4 = OUTLINED_FUNCTION_11_13();
  v5(v4);
  OUTLINED_FUNCTION_28_4("OneUpCancelEditingButton");
  v6 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v7, v8, MEMORY[0x1E697F5F0]);
  v9 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_0_21();
  v15 = OUTLINED_FUNCTION_80(v11, v12, v13, v14);
  OUTLINED_FUNCTION_22_7(v15);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v6) = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v17);
  OUTLINED_FUNCTION_53_0();
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v22);
  v23 = swift_getKeyPath();
  v24.n128_f64[0] = OUTLINED_FUNCTION_38_4(v23);
  OUTLINED_FUNCTION_118(v24);
  OUTLINED_FUNCTION_8_15(177);
  OUTLINED_FUNCTION_4_18(v25);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C10512A4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_52_0();
  sub_1C1265E50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_17();
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v1);
  v3 = OUTLINED_FUNCTION_11_13();
  v4(v3);
  OUTLINED_FUNCTION_28_4("OneUpDoneEditingButton");
  v5 = sub_1C1263A50();
  OUTLINED_FUNCTION_81(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1_15();
  sub_1C105AAA8(v6, v7, MEMORY[0x1E697F5F0]);
  v8 = OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_0_21();
  v14 = OUTLINED_FUNCTION_80(v10, v11, v12, v13);
  OUTLINED_FUNCTION_22_7(v14);
  OUTLINED_FUNCTION_6_14();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_5(KeyPath);
  *(v0 + v5) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_43_3(v16);
  OUTLINED_FUNCTION_53_0();
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_18_9(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_14_12(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_15(v21);
  v22 = swift_getKeyPath();
  v23.n128_f64[0] = OUTLINED_FUNCTION_38_4(v22);
  OUTLINED_FUNCTION_118(v23);
  OUTLINED_FUNCTION_8_15(192);
  OUTLINED_FUNCTION_4_18(v24);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1051494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v131 = sub_1C1265650();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v130 = v6 - v5;
  OUTLINED_FUNCTION_49();
  v114[2] = sub_1C1265900();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v114[1] = v9 - v8;
  OUTLINED_FUNCTION_49();
  v10 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v14 = *(a1 + 16);
  OUTLINED_FUNCTION_6_1();
  sub_1C0FDB6D4(v15, qword_1EBE90EF8, &qword_1C12AC0F0, v16);
  sub_1C1262E70();
  OUTLINED_FUNCTION_0();
  v116 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v134 = v19;
  v117 = v20;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v119 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_119();
  v120 = v23;
  v24 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v122 = v25;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  v136 = v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BE8, &unk_1C12AC0F8);
  v123 = v24;
  v28 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v125 = v29;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v31);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0, &qword_1C12A6E10);
  v127 = v28;
  v129 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v128 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_11_1(v114 - v35);
  v36 = *(a1 + 48);
  v135 = v2;
  v37 = v2 + v36;
  v38 = *v37;
  v115 = *(v37 + 8);
  v133 = v12;
  v121 = v10;
  v118 = &qword_1C12AC0F0;
  if (v115 == 1)
  {
    v43 = v38;
  }

  else
  {

    v39 = sub_1C1266420();
    v40 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v39, &dword_1C0F96000, v40, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_102();
    sub_1C0FA03F4(v38, 0);
    v41 = OUTLINED_FUNCTION_82();
    v42(v41, v10);
    v43 = v147;
  }

  v44 = v135;
  v45 = v135 + *(a1 + 40);
  v46 = *v45;
  v47 = *(v45 + 8);
  WitnessTable = swift_getWitnessTable();
  v147 = sub_1C1235004(v43 & 1, v46, v47, 0, 1, 0, 1);
  MEMORY[0x1EEE9AC00](v147);
  v48 = *(a1 + 24);
  v114[-4] = v14;
  v114[-3] = v48;
  WitnessTable = v44;
  v49 = sub_1C1022650();
  sub_1C121710C(sub_1C105AA48, &v114[-6], MEMORY[0x1E6981D78], v14, v49, v48, v134);

  v50 = v44 + *(a1 + 52);
  v51 = *v50;
  if (*(v50 + 8) == 1)
  {
    v52 = *v50;
  }

  else
  {

    v53 = sub_1C1266420();
    v54 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v53, &dword_1C0F96000, v54, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_86();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v51, 0);
    v55 = OUTLINED_FUNCTION_82();
    v56(v55, v121);
    v52 = v147;
  }

  v57 = v115;
  v58 = dbl_1C12AC128[v52];
  if (v115)
  {
    v59 = v38;
  }

  else
  {

    v60 = sub_1C1266420();
    v61 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v60, &dword_1C0F96000, v61, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_102();
    sub_1C0FA03F4(v38, 0);
    v62 = OUTLINED_FUNCTION_47();
    v63(v62);
    v59 = v147;
  }

  OUTLINED_FUNCTION_5_0();
  v145 = sub_1C0FDB6D4(v64, v65, v66, v67);
  v146 = v48;
  OUTLINED_FUNCTION_12_0();
  v68 = v117;
  v69 = swift_getWitnessTable();
  sub_1C1235090((v59 & 1) == 0, v68, v69, v58);
  OUTLINED_FUNCTION_8_11();
  v70 = OUTLINED_FUNCTION_5_5();
  v71(v70);
  if (v57)
  {
    if ((v38 & 1) == 0)
    {
LABEL_12:
      sub_1C1264460();
      goto LABEL_15;
    }
  }

  else
  {

    v72 = sub_1C1266420();
    v73 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v72, &dword_1C0F96000, v73, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_102();
    sub_1C0FA03F4(v38, 0);
    v74 = OUTLINED_FUNCTION_47();
    v75(v74);
    if ((v147 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_1C12644D0();
LABEL_15:
  v76 = v135;
  v77 = sub_1C105AA54();
  v143 = v69;
  v144 = v77;
  OUTLINED_FUNCTION_4_0();
  v78 = swift_getWitnessTable();
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v79 = OUTLINED_FUNCTION_24_5();
  v80(v79);
  v81 = v76 + *(a1 + 44);
  v82 = *v81;
  if (*(v81 + 8) != 1)
  {

    v83 = sub_1C1266420();
    v84 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v83, &dword_1C0F96000, v84, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_86();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v82, 0);
    v85 = OUTLINED_FUNCTION_47();
    v86(v85);
    if (v147 != 1)
    {
      goto LABEL_17;
    }

LABEL_19:
    sub_1C12658C0();
    goto LABEL_20;
  }

  if (v82)
  {
    goto LABEL_19;
  }

LABEL_17:
  v147 = sub_1C1265170();
LABEL_20:
  v147 = sub_1C1262C90();
  v87 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v89 = v130;
  (*(v88 + 104))(v130, v87);
  v141 = v78;
  v142 = MEMORY[0x1E697E5D8];
  v90 = v123;
  v91 = swift_getWitnessTable();
  v92 = sub_1C105AAA8(&qword_1EDE7B7B0, MEMORY[0x1E6981998], MEMORY[0x1E6981970]);
  sub_1C1009334();
  WitnessTable = v92;
  v93 = v136;
  sub_1C1264970();
  sub_1C105AAF0(v89, MEMORY[0x1E6981998]);

  OUTLINED_FUNCTION_8_11();
  v94(v93, v90);
  swift_getKeyPath();
  LOBYTE(v147) = 1;
  OUTLINED_FUNCTION_61_0();
  v99 = sub_1C0FDB6D4(v95, v96, v97, v98);
  v139 = v91;
  v140 = v99;
  v100 = swift_getWitnessTable();
  v101 = v124;
  sub_1C1264A30();

  OUTLINED_FUNCTION_8_11();
  v102 = OUTLINED_FUNCTION_94();
  v103(v102);
  OUTLINED_FUNCTION_0_0();
  v108 = sub_1C0FDB6D4(v104, v105, v106, v107);
  v137 = v100;
  v138 = v108;
  v109 = v129;
  swift_getWitnessTable();
  v110 = v126;
  sub_1C0FDBA4C();
  v111 = *(v128 + 8);
  v111(v101, v109);
  sub_1C0FDBA4C();
  return (v111)(v110, v109);
}

uint64_t sub_1C1052094(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1C1052190()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1052170();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C1052230()
{
  sub_1C1058F60();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C10522AC(char a1)
{
  if (!a1)
  {
    return 0x72616C75676572;
  }

  if (a1 == 1)
  {
    return 0x72616220706F74;
  }

  return 0x6373206F65646976;
}

uint64_t sub_1C1052310(unsigned __int8 a1)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1052360(uint64_t a1)
{
  v2 = *v1;
  sub_1C1266E90();
  sub_1C0FCF0E0(v4, v2);
  return sub_1C1266EE0();
}

uint64_t sub_1C10523AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1057A34();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C1052430(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C12637F0();
  return v3;
}

uint64_t sub_1C10524E0@<X0>(uint64_t a1@<X8>)
{
  result = OUTLINED_FUNCTION_6_13();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1052510()
{
  sub_1C1057C48();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1052594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FD233C();
  *a1 = result;
  return result;
}

uint64_t sub_1C10525BC()
{
  sub_1C1057BF4();
  sub_1C12637F0();
  return v1;
}

void sub_1C1052634(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 48);
  if (*(v1 + 48))
  {
    v7 = v1[2];
    v6 = v1[3];
    if (v5 == 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v7;
      v11 = v6;
    }

    else
    {
      v10 = v1[4];
      v11 = v1[5];

      v8 = v4;
      v9 = v3;
      v4 = v7;
      v3 = v6;
    }
  }

  else
  {
    v10 = 0;
    v8 = *v1;
    v9 = v3;
    v4 = v5;
    v11 = 0;
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v10;
  a1[5] = v11;
}

void sub_1C10526F4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C1263C40();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v133 = v9 - v8;
  OUTLINED_FUNCTION_49();
  v123 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v122 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11_1(v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91980, &qword_1C12AB018);
  OUTLINED_FUNCTION_15(v14);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v16);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91988, &qword_1C12AB020);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v18);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91990, &qword_1C12AB028);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v20);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91998, &qword_1C12AB030);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_1(v112 - v25);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919A0, &qword_1C12AB038);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v27);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919A8, &unk_1C12AB040);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34();
  v132 = v29;
  OUTLINED_FUNCTION_49();
  v119 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v118 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v34 = v33 - v32;
  v139 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = (v112 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v112 - v44;
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v42, qword_1EDE82FE0);
  sub_1C0FE5654(v46, v45, &qword_1EBE919B0, &qword_1C12A8810);
  v47 = sub_1C1262680();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v47);
  v134 = v4;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v45, &qword_1EBE919B0, &qword_1C12A8810);
  }

  else
  {
    sub_1C1057EB8(v1, v41);
    v49 = OUTLINED_FUNCTION_101();
    sub_1C1057EB8(v49, v50);
    sub_1C1262640();
    v51 = sub_1C1262670();
    v117 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v114 = v51;
      v52 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v142[0] = v113;
      *v52 = 136446466;
      v53 = v41[10];
      v116 = v6;
      v115 = v3;
      if (v53)
      {
        v54 = v41[9];
        v55 = v53;
      }

      else
      {
        if (v41[12])
        {
          v54 = v41[11];
          v55 = v41[12];
        }

        else
        {
          v54 = v41[15];
          v55 = v41[16];
          v112[1] = 0;
        }
      }

      v143[0] = v54;
      v143[1] = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60, &qword_1C12AB090);
      v59 = sub_1C1265ED0();
      v61 = v60;
      sub_1C105AAF0(v41, type metadata accessor for OneUpBarButton);
      v62 = sub_1C0FA0E80(v59, v61, v142);

      *(v52 + 4) = v62;
      *(v52 + 12) = 2082;
      sub_1C12003D0();
      sub_1C105AAF0(v38, type metadata accessor for OneUpBarButton);
      v63 = OUTLINED_FUNCTION_18();
      v66 = sub_1C0FA0E80(v63, v64, v65);

      *(v52 + 14) = v66;
      v67 = sub_1C1262630();
      v68 = v114;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v114, v117, v67, "OneUpBarButton", "OneUpBarButton %{public}s %{public}s", v52, 0x16u);
      v69 = v113;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v69, -1, -1);
      MEMORY[0x1C68F1630](v52, -1, -1);

      OUTLINED_FUNCTION_8_11();
      v70(v34, v119);
      v6 = v116;
    }

    else
    {

      OUTLINED_FUNCTION_8_11();
      v56(v34, v119);
      sub_1C105AAF0(v38, type metadata accessor for OneUpBarButton);
      v57 = OUTLINED_FUNCTION_18();
      sub_1C105AAF0(v57, v58);
    }

    (*(*(v47 - 8) + 8))(v45, v47);
  }

  v71 = v126;
  sub_1C105344C(v135);
  v72 = *(v1 + *(v139 + 76) + 8);
  if (v72 != 1)
  {

    v73 = sub_1C1266420();
    v74 = sub_1C1264410();
    OUTLINED_FUNCTION_76(v73, &dword_1C0F96000, v75, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v76 = v121;
    sub_1C12637D0();
    OUTLINED_FUNCTION_5_5();
    swift_getAtKeyPath();
    v77 = OUTLINED_FUNCTION_96();
    sub_1C0FA03F4(v77, v78);
    (*(v122 + 8))(v76, v123);
  }

  sub_1C12659A0();
  sub_1C1262C80();
  v79 = v136;
  sub_1C0FE4040(v135, v136, &qword_1EBE91980, &qword_1C12AB018);
  v80 = (v79 + *(v120 + 36));
  v81 = v142[1];
  *v80 = v142[0];
  v80[1] = v81;
  v80[2] = v142[2];
  if (!v72)
  {

    v82 = sub_1C1266420();
    v83 = sub_1C1264410();
    OUTLINED_FUNCTION_76(v82, &dword_1C0F96000, v84, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v85 = v121;
    sub_1C12637D0();
    OUTLINED_FUNCTION_5_5();
    swift_getAtKeyPath();
    v86 = OUTLINED_FUNCTION_96();
    sub_1C0FA03F4(v86, v87);
    OUTLINED_FUNCTION_8_11();
    v88(v85, v123);
  }

  sub_1C12659A0();
  OUTLINED_FUNCTION_96();
  sub_1C1263390();
  v89 = v138;
  sub_1C0FE4040(v136, v138, &qword_1EBE91988, &qword_1C12AB020);
  memcpy((v89 + *(v137 + 36)), v143, 0x70uLL);
  if (v1[16])
  {
    v90 = v6;
    v91 = v1[15];
    v92 = v1[16];
    v93 = v125;
  }

  else
  {
    v90 = v6;
    v92 = v1[10];
    v93 = v125;
    if (v92)
    {
      v91 = v1[9];
    }

    else
    {
      v91 = 0;
      v92 = 0xE000000000000000;
    }
  }

  v140 = v91;
  v141 = v92;
  sub_1C1057F1C();
  sub_1C0FDB9AC();

  v94 = v124;
  v95 = v138;
  sub_1C1264C80();

  sub_1C0FD1A5C(v95, &qword_1EBE91990, &qword_1C12AB028);
  v96 = v139;
  sub_1C1263170();
  sub_1C0FD1A5C(v94, &qword_1EBE91998, &qword_1C12AB030);
  v97 = (v1 + *(v96 + 52));
  v98 = v97[1];
  if (v98)
  {
    v99 = *v97;
    v100 = v98;
  }

  else
  {
    v99 = 0;
    v100 = 0xE000000000000000;
  }

  v140 = v99;
  v141 = v100;

  sub_1C1263160();

  sub_1C0FD1A5C(v93, &qword_1EBE91998, &qword_1C12AB030);

  v101 = v128;
  OUTLINED_FUNCTION_5_5();
  sub_1C1263180();

  sub_1C0FD1A5C(v71, &qword_1EBE91998, &qword_1C12AB030);
  v102 = sub_1C1053CE4();
  v103 = sub_1C1053ED4();
  v104 = v130;
  sub_1C0FE4040(v101, v130, &qword_1EBE91998, &qword_1C12AB030);
  v105 = v104 + *(v127 + 36);
  *v105 = v102;
  *(v105 + 8) = v103;
  *(v105 + 16) = 256;
  v106 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A38, &qword_1C12AB080);
  sub_1C1263400();
  v107 = sub_1C1053ED4();
  OUTLINED_FUNCTION_40_3(v107);
  sub_1C0FE4040(v104, v106, &qword_1EBE919A0, &qword_1C12AB038);
  v108 = v133;
  sub_1C1263460();
  sub_1C1058390();
  OUTLINED_FUNCTION_58();
  sub_1C105AAA8(v109, v110, MEMORY[0x1E697C650]);
  v111 = v134;
  sub_1C1264A50();
  (*(v90 + 8))(v108, v111);
  sub_1C0FD1A5C(v106, &qword_1EBE919A8, &unk_1C12AB040);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C105344C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A20, &qword_1C12AB070);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A68, &qword_1C12AB098);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91A08, &qword_1C12AB068);
  MEMORY[0x1EEE9AC00](v38);
  v9 = v35 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A70, &qword_1C12AB0A0);
  MEMORY[0x1EEE9AC00](v37);
  v11 = v35 - v10;
  v12 = type metadata accessor for OneUpBarButton(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C0FE5654(v1 + 24, &v50, &unk_1EBE91960, &qword_1C12C84C0);
  if (v51)
  {
    sub_1C0F9DDE4(&v50, v52);
    sub_1C0FDB0A8(v52, v40);
    sub_1C1057EB8(v1, v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v16 = swift_allocObject();
    sub_1C1057CF0(v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    v41 = sub_1C105ACEC;
    v42 = v16;
    sub_1C0FE5654(v40, v43, &qword_1EBE919E8, &qword_1C12AB058);
    v49 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919E8, &qword_1C12AB058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919F8, &qword_1C12AB060);
    sub_1C0FDB6D4(&qword_1EBE919E0, &qword_1EBE919E8, &qword_1C12AB058, &unk_1C12AB650);
    sub_1C0FDB6D4(&qword_1EBE919F0, &qword_1EBE919F8, &qword_1C12AB060, &unk_1C12AB600);
    sub_1C1263C20();
    sub_1C0FE5654(&v50, v11, &qword_1EBE919D8, &qword_1C12AB050);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919D8, &qword_1C12AB050);
    sub_1C10580C0();
    sub_1C10581A4();
    sub_1C1263C20();
    sub_1C0FD1A5C(&v50, &qword_1EBE919D8, &qword_1C12AB050);
    sub_1C0FD1A5C(v40, &qword_1EBE919E8, &qword_1C12AB058);
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  else
  {
    v35[0] = v7;
    v35[1] = v5;
    v35[2] = v2;
    v36 = v9;
    sub_1C0FD1A5C(&v50, &unk_1EBE91960, &qword_1C12C84C0);
    v18 = *(v1 + 16);
    if (v18 <= 0xFD)
    {
      sub_1C1057EB8(v1, v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v26 = swift_allocObject();
      sub_1C1057CF0(v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
      KeyPath = swift_getKeyPath();
      v43[0] = v18;
      v44 = sub_1C1058CE0;
      v45 = v26;
      v46 = KeyPath;
      v47 = 0;
      v48 = 0;
      v49 = 1;

      sub_1C1058CE4(KeyPath, 0, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919E8, &qword_1C12AB058);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919F8, &qword_1C12AB060);
      sub_1C0FDB6D4(&qword_1EBE919E0, &qword_1EBE919E8, &qword_1C12AB058, &unk_1C12AB650);
      sub_1C0FDB6D4(&qword_1EBE919F0, &qword_1EBE919F8, &qword_1C12AB060, &unk_1C12AB600);
      sub_1C1263C20();
      sub_1C0FE5654(&v50, v11, &qword_1EBE919D8, &qword_1C12AB050);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919D8, &qword_1C12AB050);
      sub_1C10580C0();
      sub_1C10581A4();
      sub_1C1263C20();

      sub_1C0FF9034(KeyPath, 0, 0);
      v28 = &v50;
      v29 = &qword_1EBE919D8;
      v30 = &qword_1C12AB050;
    }

    else
    {
      v19 = *(v1 + 64);
      if (v19)
      {
        v20 = *(v1 + 88);
        v21 = *(v1 + 96);
        v22 = v35[0];
        *v35[0] = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        swift_storeEnumTagMultiPayload();
        sub_1C1058230();
        sub_1C1058284();
        v23 = v19;

        v24 = v36;
        sub_1C1263C20();
      }

      else
      {
        sub_1C1057EB8(v1, v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
        v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
        v32 = swift_allocObject();
        v33 = sub_1C1057CF0(v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
        MEMORY[0x1EEE9AC00](v33);
        v35[-2] = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A78, &qword_1C12AB0A8);
        sub_1C10586A8();
        v34 = v4;
        sub_1C1265480();
        sub_1C0FE5654(v4, v35[0], &qword_1EBE91A20, &qword_1C12AB070);
        swift_storeEnumTagMultiPayload();
        sub_1C1058230();
        sub_1C1058284();
        v24 = v36;
        sub_1C1263C20();
        sub_1C0FD1A5C(v34, &qword_1EBE91A20, &qword_1C12AB070);
      }

      sub_1C0FE5654(v24, v11, &unk_1EBE91A08, &qword_1C12AB068);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919D8, &qword_1C12AB050);
      sub_1C10580C0();
      sub_1C10581A4();
      sub_1C1263C20();
      v28 = v24;
      v29 = &unk_1EBE91A08;
      v30 = &qword_1C12AB068;
    }

    return sub_1C0FD1A5C(v28, v29, v30);
  }
}

uint64_t sub_1C1053CE4()
{
  v1 = sub_1C1265900();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for OneUpBarButton(0) + 64);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v7, 0);
    (*(v3 + 8))(v5, v2);
    if (v11 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = sub_1C1265170();
    return sub_1C1262C90();
  }

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C12658C0();
  return sub_1C1262C90();
}

uint64_t sub_1C1053ED4()
{
  v1 = sub_1C1265650();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0 + *(type metadata accessor for OneUpBarButton(0) + 80);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v9, 0);
    (*(v5 + 8))(v7, v4);
    if (v14[15] != 1)
    {
LABEL_7:
      sub_1C10585BC();
      return sub_1C1265740();
    }
  }

  if (!*(v0 + 80))
  {
    goto LABEL_7;
  }

  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1C12639D0();
  (*(*(v12 - 8) + 104))(v3, v11, v12);
  sub_1C105AAA8(&qword_1EDE76B70, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  return sub_1C1265740();
}

uint64_t sub_1C105413C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C12637E0();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AB0, &unk_1C12AB0C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AA0, &qword_1C12AB0B8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A90, &qword_1C12AB0B0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1C1055F2C(v2, v8);
  v39 = v2;
  sub_1C124DD30(sub_1C1058D4C, v38);
  sub_1C0FD1A5C(v8, &qword_1EBE91AB0, &unk_1C12AB0C0);
  v16 = sub_1C1264460();
  v17 = type metadata accessor for OneUpBarButton(0);
  sub_1C12628A0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v10 + 32))(v15, v12, v9);
  v26 = &v15[*(v13 + 36)];
  *v26 = v16;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = v2 + *(v17 + 80);
  v28 = *v27;
  if (*(v27 + 8) == 1)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_1C1266420();
    v29 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v28, 0);
    (*(v35 + 8))(v5, v36);
    if (v40 != 1)
    {
LABEL_6:
      v30 = -3.0;
      goto LABEL_7;
    }
  }

  v30 = 0.0;
  if (!*(v2 + 80))
  {
    goto LABEL_6;
  }

LABEL_7:
  v31 = v37;
  sub_1C0FE4040(v15, v37, &qword_1EBE91A90, &qword_1C12AB0B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A78, &qword_1C12AB0A8);
  v33 = v31 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = 0;
  return result;
}

uint64_t sub_1C1054500(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(result + 8);

    v1(v3);

    return sub_1C0FCF004(v1, v2);
  }

  return result;
}

uint64_t sub_1C105455C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v21[0] = sub_1C10597CC();
  v21[15] = v4;
  v21[16] = &type metadata for PhotosMenuContent;
  v21[17] = v5;
  v21[18] = v21[0];
  v6 = sub_1C1264760();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  v10 = sub_1C1263190();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  v21[10] = v4;
  v21[11] = v5;
  v21[12] = v3;
  v21[4] = v4;
  v21[5] = v5;
  v21[6] = v3;
  sub_1C1264750();
  sub_1C119E8D0(v6);
  (*(v7 + 8))(v9, v6);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1C1059838();
  v21[13] = WitnessTable;
  v21[14] = v18;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_1C0FDBA4C();
  return (v19)(v16, v10);
}

double sub_1C1054800@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for OneUpBarButton.MenuButton(0, a2, a3, a5);
  (*(*(v9 - 8) + 16))(v13, a1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = v13[1];
  *(v10 + 32) = v13[0];
  *(v10 + 48) = v11;
  result = *&v14;
  *(v10 + 64) = v14;
  *(v10 + 80) = v15;
  *a4 = sub_1C105988C;
  a4[1] = v10;
  return result;
}

uint64_t sub_1C10548C0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1C1054910(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 40))(v7);
  sub_1C0FDBA4C();
  v11 = *(v3 + 8);
  v11(v5, a2);
  sub_1C0FDBA4C();
  return (v11)(v9, a2);
}

uint64_t sub_1C1054A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v54 = sub_1C12637E0();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  sub_1C12654A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91B40, &qword_1C12AB748);
  v6 = sub_1C1263190();
  v55 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v50 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91970, &unk_1C12A5EE0);
  v9 = sub_1C1263190();
  v65 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C105833C();
  v74 = WitnessTable;
  v75 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1C0FDB6D4(&qword_1EDE7BCA8, &unk_1EBE91B40, &qword_1C12AB748, MEMORY[0x1E697EC18]);
  v72 = v14;
  v73 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1C0FDB6D4(&unk_1EDE7B8D0, &unk_1EBE91970, &unk_1C12A5EE0, MEMORY[0x1E6980B30]);
  v50[1] = v16;
  v70 = v16;
  v71 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C1057E3C();
  v62 = v9;
  v63 = v11;
  *&v67[0] = v9;
  *(&v67[0] + 1) = v11;
  v59 = v18;
  *&v67[1] = v18;
  *(&v67[1] + 1) = v19;
  v58 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  v61 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v56 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = v50 - v23;
  v24 = *v2;
  v25 = *(v2 + 3);
  v26 = *(v2 + 4);
  v27 = v2[40];
  LOBYTE(v67[0]) = *v2;
  *(v67 + 8) = *(v2 + 8);
  *(&v67[1] + 1) = v25;
  v68 = v26;
  v69 = v27;
  v53 = v8;
  sub_1C10551D8(v51, v8);
  if (v27 == 1)
  {
    v28 = v5;
    v29 = v52;
    v30 = v54;
    swift_unknownObjectRetain();
    v31 = v26;
    if (!v25)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1C1266420();
  v33 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v34 = sub_1C0FF9034(v25, v26, 0);
  v29 = v52;
  v28 = v5;
  v35 = v5;
  v30 = v54;
  (*(v52 + 8))(v35, v34);
  v31 = *(&v67[0] + 1);
  if (*&v67[0])
  {
LABEL_3:
    ObjectType = swift_getObjectType();
    LOBYTE(v67[0]) = v24;
    (*(v31 + 16))(v67, ObjectType, v31);
    swift_unknownObjectRelease();
  }

LABEL_5:
  v36 = v64;
  v37 = v53;
  sub_1C1264FD0();
  (*(v55 + 8))(v37, v6);
  if (!v27)
  {

    sub_1C1266420();
    v39 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v40 = sub_1C0FF9034(v25, v26, 0);
    (*(v29 + 8))(v28, v30, v40);
    v26 = *(&v67[0] + 1);
    if (*&v67[0])
    {
      goto LABEL_7;
    }

LABEL_9:
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  if (!v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v38 = swift_getObjectType();
  (*(v26 + 40))(v67, v38, v26);
  swift_unknownObjectRelease();
LABEL_10:
  v42 = v62;
  v41 = v63;
  v43 = v59;
  v44 = v58;
  j__OUTLINED_FUNCTION_15_6();
  v45 = v56;
  sub_1C0FD07AC();
  sub_1C0FD1A5C(v67, &qword_1EBE8FE30, &unk_1C12A1CC0);
  (*(v65 + 8))(v36, v42);
  *&v67[0] = v42;
  *(&v67[0] + 1) = v41;
  *&v67[1] = v43;
  *(&v67[1] + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v46 = v57;
  v47 = v61;
  sub_1C0FDBA4C();
  v48 = *(v60 + 8);
  v48(v45, v47);
  sub_1C0FDBA4C();
  return (v48)(v46, v47);
}

uint64_t sub_1C10551D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_1C12654A0();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_1C1263190();
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91B40, &qword_1C12AB748);
  v11 = sub_1C1263190();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v34 - v14;
  v15 = v2[1];
  v50 = *v2;
  v51[0] = v15;
  *(v51 + 9) = *(v2 + 25);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v5;
  v17 = v2[1];
  *(v16 + 32) = *v2;
  *(v16 + 48) = v17;
  *(v16 + 57) = *(v2 + 25);
  (*(*(a1 - 8) + 16))(v49, &v50, a1);
  sub_1C1265480();
  v18 = v35;
  sub_1C119E864(v6);
  (*(v36 + 8))(v8, v6);
  v42 = v4;
  v43 = v5;
  v44 = &v50;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91B50, &qword_1C12AB750);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1C105833C();
  v47 = WitnessTable;
  v48 = v21;
  v22 = swift_getWitnessTable();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91B58, &qword_1C12AB758);
  v24 = sub_1C10598B0();
  v25 = sub_1C1059968();
  v49[0] = v23;
  v49[1] = &type metadata for OneUpChromeAction;
  v49[2] = v24;
  v49[3] = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C10A0734(v9, v19, v22, OpaqueTypeConformance2, v27, v28);
  v29 = v37;
  sub_1C1264F60();
  (*(v39 + 8))(v18, v9);
  v30 = sub_1C0FDB6D4(&qword_1EDE7BCA8, &unk_1EBE91B40, &qword_1C12AB748, MEMORY[0x1E697EC18]);
  v45 = v22;
  v46 = v30;
  swift_getWitnessTable();
  v31 = v38;
  sub_1C0FDBA4C();
  v32 = *(v40 + 8);
  v32(v29, v11);
  sub_1C0FDBA4C();
  return (v32)(v31, v11);
}

uint64_t sub_1C10556C8(char *a1)
{
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 24);
  v13 = a1[40];
  v6 = v12;
  if (v13 == 1)
  {
    v7 = *(&v12 + 1);
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v12, &unk_1EBE91B70, &qword_1C12AB768);
    (*(v3 + 8))(v5, v2);
    v6 = v10[1];
    v7 = v10[2];
  }

  sub_1C105585C(&v11, v6, v7);
  return swift_unknownObjectRelease();
}

char *sub_1C105585C(char *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *result;
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = v4;
    return (*(a3 + 32))(&v6, ObjectType, a3);
  }

  return result;
}

double sub_1C1055A24(char *a1)
{
  sub_1C1265150();
  sub_1C12651E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91B58, &qword_1C12AB758);
  sub_1C10598B0();
  sub_1C1059968();
  sub_1C1264CA0();

  return result;
}

double sub_1C1055B00(uint64_t a1)
{
  sub_1C1265170();
  sub_1C1264390();

  return result;
}

void *sub_1C1055B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C1266700();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1C12666F0();
  if (a4)
  {
    sub_1C0FDE8F8(0, &qword_1EDE7B5F0, 0x1E69DCAB8);

    v14 = sub_1C1055D74(a3, a4);
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() configurationWithScale_];
      v17 = [v15 imageWithSymbolConfiguration_];
    }

    sub_1C12666E0();
  }

  sub_1C0FDE8F8(0, &qword_1EBE91BB8, 0x1E69DC738);
  (*(v8 + 16))(v10, v13, v7);
  v18 = sub_1C1266710();
  [v18 setMenu_];
  [v18 setShowsMenuAsPrimaryAction_];
  (*(v8 + 8))(v13, v7);
  return v18;
}

id sub_1C1055D74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1265E70();

  v3 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v3;
}

id sub_1C1055DD8(void *a1)
{
  [a1 setMenu_];

  return [a1 setShowsMenuAsPrimaryAction_];
}

uint64_t sub_1C1055E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10599BC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C1055EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10599BC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C1055F04(uint64_t a1)
{
  sub_1C10599BC();
  sub_1C1263BD0();
  __break(1u);
}

uint64_t sub_1C1055F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AD0, &qword_1C12AB0D0);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v30 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AF0, &qword_1C12AB0E0);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v30 - v5;
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OneUpBarButton(0);
  v12 = v11;
  v13 = a1 + *(v11 + 80);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1C1266420();
    v15 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v14, 0);
    v11 = (*(v8 + 8))(v10, v7);
    if (v36 != 1)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 80))
  {
    MEMORY[0x1EEE9AC00](v11);
    *(&v30 - 4) = v17;
    *(&v30 - 3) = v16;
    *(&v30 - 2) = a1;
    MEMORY[0x1EEE9AC00](v18);
    *(&v30 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AF8, &qword_1C12AB0E8);
    sub_1C1058D74();
    sub_1C10589C0();
    sub_1C1265380();
    v19 = v31;
    v20 = v34;
    (*(v31 + 16))(v6, v4, v34);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE91AC8, &qword_1EBE91AD0, &qword_1C12AB0D0, MEMORY[0x1E697D658]);
    sub_1C1263C20();
    return (*(v19 + 8))(v4, v20);
  }

LABEL_7:
  v23 = *(a1 + 88);
  v22 = *(a1 + 96);
  v24 = a1 + *(v12 + 76);
  v25 = *v24;
  v26 = *(v24 + 8);

  if (v26 != 1)
  {
    sub_1C1058D54(v25, 0);
    sub_1C1266420();
    v27 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v25, 0);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v25) = v35;
  }

  v28 = sub_1C105652C();
  v29 = sub_1C105677C();
  *v6 = v23;
  *(v6 + 1) = v22;
  v6[16] = v25;
  *(v6 + 3) = v28;
  *(v6 + 4) = v29;
  *(v6 + 40) = *(a1 + 104);
  swift_storeEnumTagMultiPayload();
  sub_1C0FDB6D4(&qword_1EBE91AC8, &qword_1EBE91AD0, &qword_1C12AB0D0, MEMORY[0x1E697D658]);
  sub_1C10589C0();
  return sub_1C1263C20();
}

double sub_1C1056434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = PXFontWithTextStyleAndWeight();
  v7 = sub_1C105652C();
  v8 = sub_1C105677C();
  KeyPath = swift_getKeyPath();

  v10 = sub_1C1264460();
  sub_1C12628A0();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = 4;
  *(a3 + 48) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 64) = v10;
  *(a3 + 72) = v11;
  *(a3 + 80) = v12;
  *(a3 + 88) = v13;
  *(a3 + 96) = v14;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = a1;
  *(a3 + 128) = a2;

  return result;
}

id sub_1C105652C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OneUpBarButton(0);
  v6 = v0 + *(v5 + 92);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
    if (v7)
    {
      return v7;
    }
  }

  else
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v10 = sub_1C105861C(v7, 0);
    (*(v2 + 8))(v4, v1, v10);
    v7 = v16;
    if (v16)
    {
      return v7;
    }
  }

  v11 = *(v0 + *(v5 + 72) + 8);

  if ((v11 & 1) == 0)
  {
    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v13 = sub_1C1222F4C();

  if (v13)
  {
    return [objc_opt_self() whiteColor];
  }

  else
  {
    return 0;
  }
}

double sub_1C105677C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OneUpBarButton(0);
  v6 = v0 + *(v5 + 88);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 9) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return *v6;
    }
  }

  else
  {

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v11 = sub_1C1058610(v7, v8, 0);
    (*(v2 + 8))(v4, v1, v11);
    if (v16 != 1)
    {
      return v15;
    }
  }

  v12 = *(v0 + *(v5 + 72) + 8);

  if ((v12 & 1) == 0)
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v9 = sub_1C12235E4();

  return v9;
}

__n128 sub_1C10569C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v10 = a1 + *(type metadata accessor for OneUpBarButton(0) + 76);
  v11 = *v10;
  v12 = *(v10 + 8);

  if (v12 != 1)
  {
    sub_1C1058D54(v11, 0);
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v11, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v11) = v17[15];
  }

  v14 = sub_1C105652C();
  v15 = sub_1C105677C();
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  result = *(a1 + 104);
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1C1056B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C12629F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v25 - v10;
  v11 = sub_1C12637E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OneUpBarButton(0);
  v15 = *(a2 + *(v27 + 72) + 8);

  if ((v15 & 1) == 0)
  {
    sub_1C1266420();
    v26 = v11;
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v26);
  }

  v17 = sub_1C1222F4C();

  if (v17 & 1) != 0 || (v18 = v28, sub_1C0FD7494(v28), v19 = v29, (*(v7 + 104))(v29, *MEMORY[0x1E697DBA8], v6), v20 = sub_1C12629D0(), v21 = *(v7 + 8), v21(v19, v6), v21(v18, v6), (v20))
  {
    v22 = sub_1C1265190();
  }

  else
  {
    v22 = sub_1C1265130();
  }

  v23 = v22;
  sub_1C0FE5654(a1, a3, &qword_1EBE91AB0, &unk_1C12AB0C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AE8, &qword_1C12AB0D8);
  *(a3 + *(result + 36)) = v23;
  return result;
}

void *sub_1C1056E7C@<X0>(void *a1@<X8>)
{
  v17 = *v1;
  v3 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    v4 = v17;
    v5 = *(v1 + 16);
    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    if (v5 == 1)
    {
      v7 = 6;
    }

    else
    {
      v7 = 5;
    }

    v8 = *(v1 + 3);
    v9 = *(v1 + 4);
    KeyPath = swift_getKeyPath();
    v11 = *(v1 + 5);
    v12 = *(v1 + 6);
    sub_1C0FE5654(&v17, v18, &qword_1EBE91A60, &qword_1C12AB090);
    v13 = v8;
    sub_1C12659A0();
    sub_1C1262C80();
    __src[0] = v4;
    __src[1] = v3;
    __src[2] = v7;
    __src[3] = v6;
    __src[4] = v8;
    __src[5] = v9;
    __src[6] = KeyPath;
    LOBYTE(__src[7]) = 0;
    *(&__src[7] + 1) = 257;
    __src[8] = v11;
    __src[9] = v12;
    sub_1C1059C14(__src);
  }

  else
  {
    sub_1C1059A10(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91B88, &qword_1C12AB778);
  sub_1C1059A1C();
  sub_1C1263C20();
  return memcpy(a1, v18, 0x81uLL);
}

uint64_t sub_1C1057050()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1052510();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C10570B0()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C10525BC();
  *v0 = result;
  return result;
}

uint64_t sub_1C10570D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1C10525F8(v1);
}

__n128 PromiseMenuElementsSource.init(id:promise:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore18MenuElementsSource_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C10572C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 81))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1C105731C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for OneUpBarButton(uint64_t a1)
{
  result = qword_1EDE7E350;
  if (!qword_1EDE7E350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C105747C(uint64_t a1)
{
  sub_1C10578BC(319, &qword_1EDE768F0, &qword_1EBE90BA0, qword_1C12A8220, MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C105A44C(319, &qword_1EDE78A30, &type metadata for OneUpChromeAction, MEMORY[0x1E69E6720]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1C10578BC(319, &qword_1EDE78A18, &qword_1EBE91910, &qword_1C12AA8E8, MEMORY[0x1E69E6720]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1C1057800(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1C105A44C(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
            if (v13 > 0x3F)
            {
              return v12;
            }

            v12 = sub_1C1263A50();
            if (v14 > 0x3F)
            {
              return v12;
            }

            sub_1C105A44C(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
            v2 = v15;
            if (v16 > 0x3F)
            {
              return v2;
            }

            sub_1C1057868(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
            if (v17 > 0x3F)
            {
              return v12;
            }

            sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
            if (v18 > 0x3F)
            {
              return v12;
            }

            sub_1C105A44C(319, &qword_1EDE775D8, &type metadata for OneUpBarButtonClass, MEMORY[0x1E697DCC0]);
            if (v19 > 0x3F)
            {
              return v12;
            }

            sub_1C10578BC(319, &qword_1EDE775C0, &qword_1EBE91918, &qword_1C12AA8F0, MEMORY[0x1E697DCC0]);
            v2 = v20;
            if (v21 <= 0x3F)
            {
              sub_1C105A44C(319, &qword_1EDE775F0, &type metadata for OneUpBarButton.EDRGainBehavior, MEMORY[0x1E697DCC0]);
              v2 = v22;
              if (v23 <= 0x3F)
              {
                sub_1C105A44C(319, &qword_1EDE775E8, &type metadata for OneUpBarButton.ForegroundColorBehavior, MEMORY[0x1E697DCC0]);
                v2 = v24;
                if (v25 <= 0x3F)
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

  return v2;
}

void sub_1C1057800(uint64_t a1)
{
  if (!qword_1EDE76968)
  {
    sub_1C0FDE8F8(255, &unk_1EDE76970, 0x1E69DCC60);
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76968);
    }
  }
}

void sub_1C1057868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C10578BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C1057920(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1057970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1C10579C4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1C1057A34()
{
  result = qword_1EDE7D480;
  if (!qword_1EDE7D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D480);
  }

  return result;
}

unint64_t sub_1C1057BF4()
{
  result = qword_1EDE76F58;
  if (!qword_1EDE76F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F58);
  }

  return result;
}

unint64_t sub_1C1057C48()
{
  result = qword_1EDE76F90;
  if (!qword_1EDE76F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F90);
  }

  return result;
}

unint64_t sub_1C1057C9C()
{
  result = qword_1EDE7D3E8;
  if (!qword_1EDE7D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D3E8);
  }

  return result;
}

uint64_t sub_1C1057CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpBarButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1057D54()
{
  result = qword_1EDE7BF60;
  if (!qword_1EDE7BF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE38, &qword_1C12AAFC0);
    sub_1C105AAA8(qword_1EDE7E360, type metadata accessor for OneUpBarButton, &unk_1C12AA96C);
    sub_1C0FDB6D4(&unk_1EDE7B8D0, &unk_1EBE91970, &unk_1C12A5EE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF60);
  }

  return result;
}

unint64_t sub_1C1057E3C()
{
  result = qword_1EDE7B5A8;
  if (!qword_1EDE7B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B5A8);
  }

  return result;
}

uint64_t sub_1C1057EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpBarButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1057F1C()
{
  result = qword_1EBE919B8;
  if (!qword_1EBE919B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91990, &qword_1C12AB028);
    sub_1C1057FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE919B8);
  }

  return result;
}

unint64_t sub_1C1057FA8()
{
  result = qword_1EBE919C0;
  if (!qword_1EBE919C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91988, &qword_1C12AB020);
    sub_1C1058034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE919C0);
  }

  return result;
}

unint64_t sub_1C1058034()
{
  result = qword_1EBE919C8;
  if (!qword_1EBE919C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91980, &qword_1C12AB018);
    sub_1C10580C0();
    sub_1C10581A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE919C8);
  }

  return result;
}

unint64_t sub_1C10580C0()
{
  result = qword_1EBE919D0;
  if (!qword_1EBE919D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE919D8, &qword_1C12AB050);
    sub_1C0FDB6D4(&qword_1EBE919E0, &qword_1EBE919E8, &qword_1C12AB058, &unk_1C12AB650);
    sub_1C0FDB6D4(&qword_1EBE919F0, &qword_1EBE919F8, &qword_1C12AB060, &unk_1C12AB600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE919D0);
  }

  return result;
}

unint64_t sub_1C10581A4()
{
  result = qword_1EBE91A00;
  if (!qword_1EBE91A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91A08, &qword_1C12AB068);
    sub_1C1058230();
    sub_1C1058284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A00);
  }

  return result;
}

unint64_t sub_1C1058230()
{
  result = qword_1EDE78BC0;
  if (!qword_1EDE78BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78BC0);
  }

  return result;
}

unint64_t sub_1C1058284()
{
  result = qword_1EBE91A18;
  if (!qword_1EBE91A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91A20, &qword_1C12AB070);
    sub_1C0FDB6D4(&qword_1EBE91A28, &qword_1EBE91A30, &qword_1C12AB078, MEMORY[0x1E697D680]);
    sub_1C105833C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A18);
  }

  return result;
}

unint64_t sub_1C105833C()
{
  result = qword_1EDE7D3F8[0];
  if (!qword_1EDE7D3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7D3F8);
  }

  return result;
}

unint64_t sub_1C1058390()
{
  result = qword_1EBE91A40;
  if (!qword_1EBE91A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE919A8, &unk_1C12AB040);
    sub_1C1058448();
    sub_1C0FDB6D4(&qword_1EDE76D70, &qword_1EBE91A38, &qword_1C12AB080, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A40);
  }

  return result;
}

unint64_t sub_1C1058448()
{
  result = qword_1EBE91A48;
  if (!qword_1EBE91A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE919A0, &qword_1C12AB038);
    sub_1C1058500();
    sub_1C0FDB6D4(&unk_1EDE76DA0, &qword_1EBE91A58, &qword_1C12AB088, MEMORY[0x1E6980458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A48);
  }

  return result;
}

unint64_t sub_1C1058500()
{
  result = qword_1EBE91A50;
  if (!qword_1EBE91A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91998, &qword_1C12AB030);
    sub_1C1057F1C();
    sub_1C105AAA8(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A50);
  }

  return result;
}

unint64_t sub_1C10585BC()
{
  result = qword_1EDE76C58;
  if (!qword_1EDE76C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76C58);
  }

  return result;
}

double sub_1C1058610(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

double sub_1C105861C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C1058628()
{
  v1 = type metadata accessor for OneUpBarButton(0);
  OUTLINED_FUNCTION_15(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C1054500(v3);
}

unint64_t sub_1C10586A8()
{
  result = qword_1EBE91A80;
  if (!qword_1EBE91A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91A78, &qword_1C12AB0A8);
    sub_1C1058760();
    sub_1C0FDB6D4(&unk_1EDE7BB90, &qword_1EBE91358, &qword_1C12A8590, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A80);
  }

  return result;
}

unint64_t sub_1C1058760()
{
  result = qword_1EBE91A88;
  if (!qword_1EBE91A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91A90, &qword_1C12AB0B0);
    sub_1C10587EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A88);
  }

  return result;
}

unint64_t sub_1C10587EC()
{
  result = qword_1EBE91A98;
  if (!qword_1EBE91A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91AA0, &qword_1C12AB0B8);
    sub_1C1058884();
    sub_1C1058A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91A98);
  }

  return result;
}

unint64_t sub_1C1058884()
{
  result = qword_1EBE91AA8;
  if (!qword_1EBE91AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91AB0, &unk_1C12AB0C0);
    sub_1C1058908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91AA8);
  }

  return result;
}

unint64_t sub_1C1058908()
{
  result = qword_1EBE91AB8;
  if (!qword_1EBE91AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91AC0, &qword_1C12CDBF0);
    sub_1C0FDB6D4(&qword_1EBE91AC8, &qword_1EBE91AD0, &qword_1C12AB0D0, MEMORY[0x1E697D658]);
    sub_1C10589C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91AB8);
  }

  return result;
}

unint64_t sub_1C10589C0()
{
  result = qword_1EBE91AD8;
  if (!qword_1EBE91AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91AD8);
  }

  return result;
}

unint64_t sub_1C1058A14()
{
  result = qword_1EBE91AE0;
  if (!qword_1EBE91AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91AE8, &qword_1C12AB0D8);
    sub_1C1058884();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91AE0);
  }

  return result;
}

uint64_t objectdestroy_97Tm()
{
  v1 = type metadata accessor for OneUpBarButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  if (*v2)
  {
  }

  if (*(v2 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 24));
  }

  v3 = v1[12];
  sub_1C1263A50();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v2 + v3);

  v5 = OUTLINED_FUNCTION_69(v1[16]);
  sub_1C0FA03F4(v5, v6);
  v7 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  v9 = OUTLINED_FUNCTION_69(v1[19]);
  sub_1C0FA03F4(v9, v10);
  v11 = OUTLINED_FUNCTION_69(v1[20]);
  sub_1C0FA03F4(v11, v12);
  sub_1C0FF9034(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));
  sub_1C1058610(*(v2 + v1[22]), *(v2 + v1[22] + 8), *(v2 + v1[22] + 9));
  v13 = OUTLINED_FUNCTION_69(v1[23]);
  sub_1C105861C(v13, v14);

  return swift_deallocObject();
}

double sub_1C1058CE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C1058CF0()
{
  v1 = OUTLINED_FUNCTION_52_0();
  v2 = type metadata accessor for OneUpBarButton(v1);
  OUTLINED_FUNCTION_15(v2);
  return sub_1C105413C(v0);
}

double sub_1C1058D54(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C1058D74()
{
  result = qword_1EDE77280;
  if (!qword_1EDE77280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91AF8, &qword_1C12AB0E8);
    sub_1C1058E2C();
    sub_1C0FDB6D4(&qword_1EDE7BC80, &qword_1EBE91B08, &qword_1C12AB0F8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77280);
  }

  return result;
}

unint64_t sub_1C1058E2C()
{
  result = qword_1EDE7BF48;
  if (!qword_1EDE7BF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91B00, &qword_1C12AB0F0);
    sub_1C1058EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF48);
  }

  return result;
}

unint64_t sub_1C1058EB8()
{
  result = qword_1EDE7C170;
  if (!qword_1EDE7C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C170);
  }

  return result;
}

unint64_t sub_1C1058F0C()
{
  result = qword_1EDE7C700;
  if (!qword_1EDE7C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C700);
  }

  return result;
}

unint64_t sub_1C1058F60()
{
  result = qword_1EDE7CB38;
  if (!qword_1EDE7CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpAllPhotosButton(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OneUpAllPhotosButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_1C10591A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10591E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1C1059224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1059288(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1C10592DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C105934C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1059388(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C10593C8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1C105942C()
{
  result = qword_1EBE91B10;
  if (!qword_1EBE91B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91B18, &qword_1C12AB3B0);
    sub_1C10594B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91B10);
  }

  return result;
}

unint64_t sub_1C10594B0()
{
  result = qword_1EBE91B20;
  if (!qword_1EBE91B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91940, &qword_1C12AAFB8);
    sub_1C105AAA8(qword_1EDE7E360, type metadata accessor for OneUpBarButton, &unk_1C12AA96C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91B20);
  }

  return result;
}

unint64_t sub_1C105956C()
{
  result = qword_1EBE91B28;
  if (!qword_1EBE91B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91B30, &qword_1C12AB3B8);
    sub_1C105AAA8(qword_1EDE7E360, type metadata accessor for OneUpBarButton, &unk_1C12AA96C);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE38, &qword_1C12AAFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
    sub_1C1057D54();
    sub_1C1057E3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91B28);
  }

  return result;
}

unint64_t sub_1C1059698()
{
  result = qword_1EDE82E18[0];
  if (!qword_1EDE82E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE82E18);
  }

  return result;
}

unint64_t sub_1C10597CC()
{
  result = qword_1EDE82AF0;
  if (!qword_1EDE82AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82AF0);
  }

  return result;
}

unint64_t sub_1C1059838()
{
  result = qword_1EDE7D7B8;
  if (!qword_1EDE7D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D7B8);
  }

  return result;
}

unint64_t sub_1C10598B0()
{
  result = qword_1EDE7BED0;
  if (!qword_1EDE7BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91B58, &qword_1C12AB758);
    sub_1C0FDB6D4(&qword_1EDE7C048, &unk_1EBE91B60, &qword_1C12AB760, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BED0);
  }

  return result;
}

unint64_t sub_1C1059968()
{
  result = qword_1EDE7D7A8;
  if (!qword_1EDE7D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D7A8);
  }

  return result;
}

unint64_t sub_1C10599BC()
{
  result = qword_1EBE91B80;
  if (!qword_1EBE91B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91B80);
  }

  return result;
}

unint64_t sub_1C1059A1C()
{
  result = qword_1EDE7BD60;
  if (!qword_1EDE7BD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91B88, &qword_1C12AB778);
    sub_1C1059AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD60);
  }

  return result;
}

unint64_t sub_1C1059AA8()
{
  result = qword_1EDE7BDE8;
  if (!qword_1EDE7BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91B90, &qword_1C12AB780);
    sub_1C1059B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDE8);
  }

  return result;
}

unint64_t sub_1C1059B34()
{
  result = qword_1EDE7BF38;
  if (!qword_1EDE7BF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91BA0, &qword_1C12AB788);
    sub_1C1059BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF38);
  }

  return result;
}

unint64_t sub_1C1059BC0()
{
  result = qword_1EDE7C158;
  if (!qword_1EDE7C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C158);
  }

  return result;
}

unint64_t sub_1C1059C1C()
{
  result = qword_1EDE7BC08;
  if (!qword_1EDE7BC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91BC0, &qword_1C12AB798);
    sub_1C1059A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC08);
  }

  return result;
}

unint64_t sub_1C1059CA8()
{
  result = qword_1EDE76F08;
  if (!qword_1EDE76F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91BD0, &unk_1C12AB7A0);
    sub_1C105AAA8(qword_1EDE7E360, type metadata accessor for OneUpBarButton, &unk_1C12AA96C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F08);
  }

  return result;
}

unint64_t sub_1C1059D5C()
{
  result = qword_1EDE7C298[0];
  if (!qword_1EDE7C298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C298);
  }

  return result;
}

uint64_t sub_1C1059E00(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t sub_1C1059E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1059EA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_65(-1);
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_65(*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_65(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_65(-1);
  }
}

uint64_t sub_1C1059EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1C1059F40(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C105A44C(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C105A44C(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C105A44C(319, &qword_1EDE77558, MEMORY[0x1E6980D10], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C105A44C(319, &qword_1EDE775D8, &type metadata for OneUpBarButtonClass, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C105A0D4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    if (v5 < 0xFE)
    {
      v16 = *(((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C105A230(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            v17 = ((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v17 + 8) = 0;
              *v17 = (a2 - 255);
            }

            else
            {
              *(v17 + 8) = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C105A44C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C105A4AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_65(-1);
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_65(*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_65(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_65(-1);
  }
}

uint64_t sub_1C105A4E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C105A540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_65(-1);
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_65(*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_65(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_65(-1);
  }
}

uint64_t sub_1C105A5AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_65(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
      return OUTLINED_FUNCTION_65((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_65((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_65((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_65(v8);
}

_BYTE *sub_1C105A630(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C105A70C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_65(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_65((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_65((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_65((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_65(v8);
}

_BYTE *sub_1C105A7A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C105AA54()
{
  result = qword_1EDE7D7C8;
  if (!qword_1EDE7D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D7C8);
  }

  return result;
}

uint64_t sub_1C105AAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C105AAF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C105AB48()
{
  result = qword_1EDE77490;
  if (!qword_1EDE77490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C08, &qword_1C12AC110);
    sub_1C105AAA8(qword_1EDE7E360, type metadata accessor for OneUpBarButton, &unk_1C12AA96C);
    sub_1C105AAA8(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77490);
  }

  return result;
}

unint64_t sub_1C105AC34()
{
  result = qword_1EBE91C10;
  if (!qword_1EBE91C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C18, &unk_1C12AC118);
    sub_1C1059CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91C10);
  }

  return result;
}

void OUTLINED_FUNCTION_30_3()
{
  *(v1 + 128) = v2;
  v3 = (v1 + *(v0 + 52));
  *v3 = 0;
  v3[1] = 0;
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

double OUTLINED_FUNCTION_38_4(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  return 0.0;
}

uint64_t OUTLINED_FUNCTION_39_3(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

double OUTLINED_FUNCTION_70(uint64_t a1)
{

  swift_storeEnumTagMultiPayload();
  return result;
}

double OUTLINED_FUNCTION_71()
{
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

double OUTLINED_FUNCTION_72()
{
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

void OUTLINED_FUNCTION_74()
{
  v0[8] = 0;
  v0[9] = 0;
  v0[14] = 0;
  v0[15] = v1;
  v0[16] = v2;
  v4 = (v0 + *(v3 + 52));
  *v4 = 0;
  v4[1] = 0;
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1)
{

  return sub_1C1263C20();
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C1262620();
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C1266870();
}

uint64_t OUTLINED_FUNCTION_80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C0FDB6D4(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_81@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return type metadata accessor for OneUpBarButton(0);
}

double OUTLINED_FUNCTION_83(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  result = 0.0;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  return result;
}

void OUTLINED_FUNCTION_84(__n128 a1)
{
  *(v1 + 88) = a1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
}

uint64_t OUTLINED_FUNCTION_92(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1)
{

  return sub_1C1266870();
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2)
{

  return sub_1C1265DF0();
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1)
{

  return sub_1C1265DF0();
}

uint64_t OUTLINED_FUNCTION_106()
{

  return sub_1C12637E0();
}

double OUTLINED_FUNCTION_107(uint64_t a1)
{

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t OUTLINED_FUNCTION_108()
{

  return sub_1C1265E10();
}

double OUTLINED_FUNCTION_109()
{

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t OUTLINED_FUNCTION_110(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C0FDB6D4(a1, v4, v5, a4);
}

void OUTLINED_FUNCTION_112()
{
  v2 = (v0 + *(v1 + 52));
  *v2 = 0;
  v2[1] = 0;
}

double OUTLINED_FUNCTION_113()
{
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

void OUTLINED_FUNCTION_117(char a1@<W8>)
{
  *(v1 + 16) = a1;
  *v1 = 0;
  *(v1 + 8) = 0;
}

double OUTLINED_FUNCTION_121()
{
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_125()
{

  return sub_1C1265DF0();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return sub_1C1265E00();
}

uint64_t OUTLINED_FUNCTION_127(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C0FDB6D4(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_128(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C0FDB6D4(a1, v4, v5, a4);
}

uint64_t PhotosEventCell.init(_:uiContext:displaySubtitle:useCollageStyle:itemAspectRatio:systemImageNameReplacingTitle:content:placeholder:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v30 = *a2;
  __src[0] = a12;
  *&__src[1] = a13;
  *&__src[3] = a14;
  __src[5] = a15;
  __src[6] = a16;
  v21 = type metadata accessor for PhotosEventCell(0, __src);
  v22 = v21[26];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v22), __src, 0xD1uLL);
  v23 = a8 + v21[27];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a8 + v21[28];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v21[29];
  *(a8 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  v26 = swift_storeEnumTagMultiPayload();
  v27 = a7(v26);
  a10(v27);
  *(a8 + v21[20]) = a3;
  *(a8 + v21[21]) = a4;
  *(a8 + v21[22]) = a9;
  result = (*(*(a12 - 8) + 32))(a8, a1, a12);
  *(a8 + v21[19]) = v30;
  v29 = (a8 + v21[25]);
  *v29 = a5;
  v29[1] = a6;
  return result;
}

uint64_t sub_1C105B428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 104);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E27C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C105B644(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C105B798@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosIsDragTarget.getter();
  *a1 = result & 1;
  return result;
}

void sub_1C105B7F0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 112);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C105B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 116), &v15 - v10, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosEventCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v219 = a2;
  v2 = *(a1 + 24);
  v213 = a1;
  v222 = v2;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C28, &qword_1C12AC240);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v225 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  sub_1C1263190();
  v228 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  v227 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_29_4();
  sub_1C1263190();
  v226 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v4 = sub_1C1263190();
  *&v221 = *(a1 + 56);
  v297 = v221;
  v298 = MEMORY[0x1E697F568];
  OUTLINED_FUNCTION_3_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  v218 = v5;
  v295 = WitnessTable;
  v296 = sub_1C10239B0(v6, &qword_1EBE91C28, &qword_1C12AC240, v7);
  v8 = OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_10_5();
  v217 = sub_1C10239B0(v9, &unk_1EBE91C30, &qword_1C12B2020, v10);
  v293 = v8;
  v294 = v217;
  OUTLINED_FUNCTION_26_6();
  v11 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v216 = sub_1C10239B0(v12, &unk_1EBE92EC0, &qword_1C12A8E00, v13);
  v291 = v11;
  v292 = v216;
  v14 = OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_10();
  v215 = sub_1C10239B0(v15, &qword_1EBE91C40, &unk_1C12A7010, v16);
  v289 = v14;
  v290 = v215;
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v214 = sub_1C10239B0(v18, &unk_1EBE92ED0, &unk_1C12A8E80, v19);
  v287 = v17;
  v288 = v214;
  OUTLINED_FUNCTION_31_5();
  v20 = OUTLINED_FUNCTION_11_0();
  v224 = type metadata accessor for PhotosDetailsPresentationSourceView(v20, v4, v21, v22);
  v23 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v192 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1_3();
  v191 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_0();
  v190 = v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C48, &unk_1C12AC248);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_29_4();
  sub_1C1263190();
  v29 = sub_1C1263190();
  v285 = WitnessTable;
  v286 = sub_1C10239B0(&unk_1EBE91C50, &qword_1EBE91C48, &unk_1C12AC248, v218);
  v283 = OUTLINED_FUNCTION_32_4();
  v284 = v217;
  OUTLINED_FUNCTION_26_6();
  v281 = swift_getWitnessTable();
  v282 = v216;
  v279 = OUTLINED_FUNCTION_30_4();
  v280 = v215;
  v277 = OUTLINED_FUNCTION_31_5();
  v278 = v214;
  OUTLINED_FUNCTION_28_2();
  swift_getWitnessTable();
  v30 = OUTLINED_FUNCTION_11_0();
  v31 = v29;
  v32 = v220;
  v226 = type metadata accessor for PhotosDetailsPresentationSourceView(v30, v31, v33, v34);
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v189 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_3();
  v188 = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_14_0();
  v187 = v39;
  OUTLINED_FUNCTION_49();
  v227 = v40;
  v228 = v23;
  v41 = v213;
  v42 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v211 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1_3();
  v210 = v45;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14_0();
  v209 = v47;
  *&v48 = v222;
  v201 = *(v213 + 32);
  *(&v48 + 1) = v201;
  *&v49 = v221;
  v200 = *(v213 + 64);
  *(&v49 + 1) = v200;
  v246[1] = v49;
  v246[0] = v48;
  type metadata accessor for PhotosMajorMinorGrid(255, v246);
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v50 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  v197 = swift_getWitnessTable();
  v198 = v50;
  v51 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v204 = v52;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v53);
  v202 = &v181[-v54];
  OUTLINED_FUNCTION_13_0();
  v55 = swift_getWitnessTable();
  v205 = v51;
  v199 = v55;
  type metadata accessor for PhotosDetailsPresentationSourceView(0, v51, v55, v56);
  OUTLINED_FUNCTION_0();
  v206 = v57;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v58);
  v203 = &v181[-v59];
  OUTLINED_FUNCTION_49();
  WitnessTable = v60;
  v61 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v208 = v62;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_1_3();
  v207 = v64;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_14_0();
  v214 = v66;
  OUTLINED_FUNCTION_49();
  sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v195 = v68;
  v196 = v67;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  v194 = v70 - v69;
  OUTLINED_FUNCTION_49();
  v215 = v61;
  v218 = v42;
  sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v216 = v72;
  v217 = v71;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v73);
  v225 = &v181[-v74];
  OUTLINED_FUNCTION_49();
  v75 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v193 = v76;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  v212 = v79 - v78;
  v80 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v181[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v181[-v85];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v181[-v88];
  swift_getWitnessTable();
  View.photosTrace.getter();
  v90 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v89, 1, v90) == 1)
  {
    v91 = sub_1C0F9E27C(v89, &qword_1EBE919B0);
  }

  else
  {
    v185 = v90;
    v186 = v75;
    v92 = *(v80 + 16);
    v93 = OUTLINED_FUNCTION_28_2();
    v92(v93);
    (v92)(v83, v32, v41);
    sub_1C1262640();
    v94 = sub_1C1262670();
    v95 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v96 = swift_slowAlloc();
      v183 = v94;
      v182 = v95;
      v97 = v96;
      v184 = swift_slowAlloc();
      *&v246[0] = v184;
      *v97 = 136446466;
      v98 = (*(*(v41 + 48) + 16))(*(v41 + 16));
      v99 = v41;
      v101 = v100;
      v102 = *(v80 + 8);
      v103 = v86;
      v104 = v99;
      v102(v103, v99);
      v105 = sub_1C0FA0E80(v98, v101, v246);

      *(v97 + 4) = v105;
      *(v97 + 12) = 2082;
      v41 = v104;
      v106 = OUTLINED_FUNCTION_26_6();
      v108 = View.photosChangedProperties.getter(v106, v107);
      v110 = v109;
      v102(v83, v41);
      v32 = v220;
      v111 = sub_1C0FA0E80(v108, v110, v246);

      *(v97 + 14) = v111;
      v112 = v212;
      v113 = sub_1C1262630();
      v114 = v183;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v183, v182, v113, "PhotosEventCell", "PhotosEventCell %{public}s %{public}s", v97, 0x16u);
      v115 = v184;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v115, -1, -1);
      MEMORY[0x1C68F1630](v97, -1, -1);

      (*(v193 + 8))(v112, v186);
    }

    else
    {

      (*(v193 + 8))(v212, v186);
      v116 = *(v80 + 8);
      v116(v83, v41);
      v116(v86, v41);
    }

    v91 = (*(*(v185 - 8) + 8))(v89);
  }

  v117 = v227;
  if (*(v32 + *(v41 + 84)) == 1)
  {
    sub_1C105B428(v41, v246);
    v118 = v250;
    v119 = v194;
    sub_1C105B94C(v41, v194);
    v120 = sub_1C105B644(v41);
    v121 = v120;
    if (v118 & 1) != 0 || (v120)
    {
      v122 = v32;
      v242 = v247;
      v243 = v248;
      v244 = v249;
      sub_1C1012620(v247, v248, v249, *(&v249 + 1));
      sub_1C10C37D8(v119, v121 & 1);
      v123 = v134;
      v124.n128_f64[0] = sub_1C1001C84(v242, v243, v244, *(&v244 + 1));
    }

    else
    {
      v122 = v32;
      v123 = sub_1C1265170();
    }

    (*(v195 + 8))(v119, v196, v124);
    v135 = sub_1C100C7D0(v246);
    MEMORY[0x1EEE9AC00](v135);
    v136 = *(v41 + 16);
    v137 = v222;
    *&v181[-80] = v136;
    *&v181[-72] = v137;
    v138 = *(v41 + 40);
    v222 = *(v41 + 48);
    v139 = v222;
    *&v181[-64] = v201;
    *&v181[-56] = v138;
    v140 = v221;
    *&v181[-48] = v139;
    *&v181[-40] = v140;
    *&v181[-32] = v200;
    *&v181[-24] = v123;
    *&v181[-16] = v122;
    sub_1C1009330(v198, v197, v141, v142, v143, v144);
    v145 = v202;
    sub_1C12655B0();
    v241 = 2;
    v240 = 1;
    sub_1C105B428(v41, &v242);
    v146 = v242;
    v147 = v243;
    v221 = v244;
    v148 = v245;

    sub_1C100C7D0(&v242);
    v237[0] = v146;
    v237[1] = v147;
    v238 = v221;
    v239 = v148;
    v220 = v123;

    v149 = v203;
    v150 = v205;
    View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v241, v123, 0, v205, v199, v203);

    (*(v204 + 8))(v145, v150);
    *(&v238 + 1) = v136;
    v239 = v222;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v237);
    (*(*(v136 - 8) + 16))(boxed_opaque_existential_1, v122, v136);
    v152 = WitnessTable;
    v153 = swift_getWitnessTable();
    v154 = v207;
    View.selectionStyle(for:)(v237, v152, v153);
    (*(v206 + 8))(v149, v152);
    __swift_destroy_boxed_opaque_existential_0Tm(v237);
    v155 = sub_1C100D614();
    v235 = v153;
    v236 = v155;
    OUTLINED_FUNCTION_3_3();
    v156 = v215;
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v222 = *(v208 + 8);
    (v222)(v154, v156);
    sub_1C0FDBA4C();
    v233 = swift_getWitnessTable();
    v234 = v155;
    v157 = swift_getWitnessTable();
    v231 = swift_getWitnessTable();
    v232 = v155;
    v158 = swift_getWitnessTable();
    v229 = v157;
    v230 = v158;
    OUTLINED_FUNCTION_19_0();
    swift_getWitnessTable();
    sub_1C1112D68();

    v159 = v222;
    (v222)(v154, v156);
    v159(v214, v156);
  }

  else
  {
    if (MEMORY[0x1C68F0CE0](v91))
    {
      v125 = v188;
      sub_1C105D768(v41, v188);
      OUTLINED_FUNCTION_0_22();
      v126 = swift_getWitnessTable();
      v127 = sub_1C100D614();
      v253 = v126;
      v254 = v127;
      swift_getWitnessTable();
      v128 = v187;
      OUTLINED_FUNCTION_47();
      sub_1C0FDBA4C();
      v129 = *(v189 + 8);
      v130 = OUTLINED_FUNCTION_47();
      v129(v130);
      sub_1C0FDBA4C();
      v251 = swift_getWitnessTable();
      v252 = v127;
      swift_getWitnessTable();
      v131 = v209;
      OUTLINED_FUNCTION_47();
      sub_1C1112D68();
      (v129)(v125, v117);
      v132 = v128;
      v133 = v117;
    }

    else
    {
      v160 = v191;
      sub_1C105E060(v41, v191);
      v222 = &unk_1C12AF200;
      v161 = swift_getWitnessTable();
      v162 = sub_1C100D614();
      v275 = v161;
      v276 = v162;
      v163 = v228;
      swift_getWitnessTable();
      v164 = v190;
      OUTLINED_FUNCTION_24_7();
      sub_1C0FDBA4C();
      v129 = *(v192 + 8);
      (v129)(v160, v163);
      OUTLINED_FUNCTION_24_7();
      sub_1C0FDBA4C();
      v273 = swift_getWitnessTable();
      v274 = v162;
      swift_getWitnessTable();
      v131 = v209;
      OUTLINED_FUNCTION_47();
      sub_1C1112E18();
      (v129)(v160, v163);
      v132 = v164;
      v133 = v163;
    }

    (v129)(v132, v133);
    OUTLINED_FUNCTION_0_22();
    v165 = swift_getWitnessTable();
    v166 = sub_1C100D614();
    v271 = v165;
    v272 = v166;
    OUTLINED_FUNCTION_9_0();
    v167 = swift_getWitnessTable();
    v269 = swift_getWitnessTable();
    v270 = v166;
    v168 = swift_getWitnessTable();
    v267 = v167;
    v268 = v168;
    OUTLINED_FUNCTION_19_0();
    v169 = v218;
    swift_getWitnessTable();
    v170 = v210;
    OUTLINED_FUNCTION_24_7();
    sub_1C0FDBA4C();
    v265 = swift_getWitnessTable();
    v266 = v166;
    swift_getWitnessTable();
    sub_1C1112E18();
    v171 = *(v211 + 8);
    v171(v170, v169);
    v171(v131, v169);
  }

  OUTLINED_FUNCTION_0_22();
  v172 = swift_getWitnessTable();
  v173 = sub_1C100D614();
  v263 = v172;
  v264 = v173;
  OUTLINED_FUNCTION_9_0();
  v174 = swift_getWitnessTable();
  v261 = swift_getWitnessTable();
  v262 = v173;
  v175 = swift_getWitnessTable();
  v259 = swift_getWitnessTable();
  v260 = v173;
  v176 = swift_getWitnessTable();
  v257 = v175;
  v258 = v176;
  OUTLINED_FUNCTION_7_16();
  v177 = swift_getWitnessTable();
  v255 = v174;
  v256 = v177;
  v178 = v217;
  swift_getWitnessTable();
  v179 = v225;
  sub_1C0FDBA4C();
  return (*(v216 + 8))(v179, v178);
}

void sub_1C105CFCC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a6;
  v40 = a7;
  v51 = a1;
  v52 = a9;
  v74 = a4;
  v75 = a5;
  v76 = a8;
  v77 = a10;
  v44 = type metadata accessor for PhotosMajorMinorGrid(0, &v74);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v39 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v46 = sub_1C1263190();
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v39 - v16;
  v41 = sub_1C1263190();
  v50 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v39 - v19;
  v74 = a3;
  v75 = a4;
  v20 = a5;
  v21 = v39;
  v76 = a5;
  v77 = v39;
  v22 = v40;
  v78 = v40;
  v79 = a8;
  v80 = a10;
  v23 = type metadata accessor for PhotosEventCell(0, &v74);
  v24 = sub_1C105D4F0(v23);
  v25 = *(a2 + *(v23 + 88));
  v61 = a3;
  v62 = a4;
  v63 = v20;
  v64 = v21;
  v65 = v22;
  v66 = a8;
  v67 = a10;
  v68 = a2;
  v53 = a3;
  v54 = a4;
  v55 = v20;
  v56 = v21;
  v57 = v22;
  v58 = a8;
  v59 = a10;
  v60 = a2;
  v26 = v45;
  sub_1C100E648(v24, 3, sub_1C1061D28, sub_1C1061D40, a4, v20, v45, v25, 4.0, 8.0, 3.0, a8, a10);
  LOBYTE(v74) = 1;
  v27 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_1C1061D74();
  v29 = v42;
  sub_1C12649C0();
  (*(v47 + 8))(v26, v27);
  sub_1C105B428(v23, &v74);
  sub_1C100C7D0(&v74);
  v30 = sub_1C10239B0(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v73[4] = WitnessTable;
  v73[5] = v30;
  v31 = v46;
  v32 = swift_getWitnessTable();
  v33 = v43;
  sub_1C1264FA0();
  (*(v49 + 8))(v29, v31);
  v73[2] = v32;
  v73[3] = MEMORY[0x1E697E5D8];
  v34 = v41;
  v35 = swift_getWitnessTable();
  v36 = v48;
  sub_1C0FDBA4C();
  v37 = v50;
  v38 = *(v50 + 8);
  v38(v33, v34);
  v72 = v51;
  v73[0] = &v72;
  (*(v37 + 16))(v33, v36, v34);
  v73[1] = v33;

  v71[0] = MEMORY[0x1E69815C0];
  v71[1] = v34;
  v69 = MEMORY[0x1E6981580];
  v70 = v35;
  sub_1C119EE80(v73, 2, v71);
  v38(v36, v34);
  v38(v33, v34);
}

BOOL sub_1C105D4F0(uint64_t a1)
{
  sub_1C105B7F0(a1, &v6);
  v3 = *(v1 + *(a1 + 76));
  v4 = v6 != 5 || v3 == 2;
  return !v4 && (v3 & 1) == 0;
}

uint64_t sub_1C105D548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = v11;
  v16[5] = v12;
  v16[6] = v13;
  type metadata accessor for PhotosEventCell(0, v16);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_1C105D658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  v17[6] = v14;
  type metadata accessor for PhotosEventCell(0, v17);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_1C105D768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v59 = *(a1 + 24);
  v3 = sub_1C1263190();
  *&v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = v48 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C48, &unk_1C12AC248);
  v49 = v3;
  v5 = sub_1C1263190();
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = v48 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v50 = v5;
  v7 = sub_1C1263190();
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v48 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v9 = sub_1C1263190();
  v64 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = v48 - v10;
  v92 = *(a1 + 56);
  v11 = v92;
  v93 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v48[1] = WitnessTable;
  v13 = sub_1C10239B0(&unk_1EBE91C50, &qword_1EBE91C48, &unk_1C12AC248, MEMORY[0x1E697EC18]);
  v90 = WitnessTable;
  v91 = v13;
  v14 = swift_getWitnessTable();
  v48[2] = v14;
  v15 = sub_1C10239B0(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v88 = v14;
  v89 = v15;
  *&v67 = v7;
  v16 = swift_getWitnessTable();
  v17 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v52 = v16;
  v86 = v16;
  v87 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v84 = v18;
  v85 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v82 = v20;
  v83 = v21;
  v22 = swift_getWitnessTable();
  v65 = v9;
  v51 = v22;
  v24 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v9, v22, v23);
  v56 = *(v24 - 8);
  v57 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v54 = v48 - v25;
  v27 = v59;
  v26 = v60;
  v28 = v55;
  sub_1C12649E0();
  sub_1C1265960();
  v29 = *(a1 + 16);
  v69 = v29;
  v70 = v27;
  v71 = *(a1 + 32);
  v59 = *(a1 + 48);
  v72 = v59;
  v73 = v11;
  v74 = *(a1 + 64);
  v75 = v26;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C88, &qword_1C12AC3C8);
  sub_1C10239B0(&qword_1EBE91C90, &qword_1EBE91C88, &qword_1C12AC3C8, MEMORY[0x1E6981880]);
  v31 = v58;
  v32 = v49;
  v33 = v53;
  sub_1C1264F60();
  (*(v62 + 8))(v28, v32);
  LOBYTE(v97[0]) = 1;
  sub_1C1061D74();
  v34 = v50;
  sub_1C12649C0();
  (*(v61 + 8))(v31, v34);
  sub_1C105B428(a1, v94);
  memcpy(v81, v95, sizeof(v81));
  sub_1C100D690(v94, v97);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDE82B08;
  v36 = qword_1EDE82B10;
  v62 = xmmword_1EDE82B18;
  v37 = qword_1EDE82B28;

  sub_1C100C7D0(v94);

  *&v97[0] = v35;
  *(&v97[0] + 1) = v36;
  v97[1] = v62;
  *&v97[2] = v37;
  memcpy(&v97[2] + 8, v81, 0xA8uLL);
  v38 = v63;
  v39 = v67;
  View.cellStyle(for:)(v97, v52, v63);
  memcpy(v96, v97, sizeof(v96));
  sub_1C100C7D0(v96);
  (*(v66 + 8))(v33, v39);
  v80 = 2;
  v79 = 2;
  sub_1C105B428(a1, v97);
  v40 = v97[0];
  v67 = v97[1];
  v41 = *&v97[2];

  sub_1C100C7D0(v97);
  v76 = v40;
  v77 = v67;
  v78 = v41;
  v42 = v54;
  v43 = v65;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v80, 0, 0, v65, v51, v54);

  (*(v64 + 8))(v38, v43);
  *(&v77 + 1) = v29;
  v78 = v59;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
  (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v30, v29);
  v45 = v57;
  v46 = swift_getWitnessTable();
  View.selectionStyle(for:)(&v76, v45, v46);
  (*(v56 + 8))(v42, v45);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v76);
}

uint64_t sub_1C105E060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v59 = *(a1 + 24);
  v3 = sub_1C1263190();
  *&v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = v48 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C28, &qword_1C12AC240);
  v49 = v3;
  v5 = sub_1C1263190();
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = v48 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v50 = v5;
  v7 = sub_1C1263190();
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v48 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v9 = sub_1C1263190();
  v64 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = v48 - v10;
  v92 = *(a1 + 56);
  v11 = v92;
  v93 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v48[1] = WitnessTable;
  v13 = sub_1C10239B0(&qword_1EDE76FB0, &qword_1EBE91C28, &qword_1C12AC240, MEMORY[0x1E697EC18]);
  v90 = WitnessTable;
  v91 = v13;
  v14 = swift_getWitnessTable();
  v48[2] = v14;
  v15 = sub_1C10239B0(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v88 = v14;
  v89 = v15;
  *&v67 = v7;
  v16 = swift_getWitnessTable();
  v17 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v52 = v16;
  v86 = v16;
  v87 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v84 = v18;
  v85 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v82 = v20;
  v83 = v21;
  v22 = swift_getWitnessTable();
  v65 = v9;
  v51 = v22;
  v24 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v9, v22, v23);
  v56 = *(v24 - 8);
  v57 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v54 = v48 - v25;
  v27 = v59;
  v26 = v60;
  v28 = v55;
  sub_1C12649E0();
  sub_1C1265960();
  v29 = *(a1 + 16);
  v69 = v29;
  v70 = v27;
  v71 = *(a1 + 32);
  v59 = *(a1 + 48);
  v72 = v59;
  v73 = v11;
  v74 = *(a1 + 64);
  v75 = v26;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91D40, &qword_1C12AC4B0);
  sub_1C10239B0(&qword_1EDE76BB8, &unk_1EBE91D40, &qword_1C12AC4B0, MEMORY[0x1E6981880]);
  v31 = v58;
  v32 = v49;
  v33 = v53;
  sub_1C1264F60();
  (*(v62 + 8))(v28, v32);
  LOBYTE(v97[0]) = 1;
  sub_1C1061D74();
  v34 = v50;
  sub_1C12649C0();
  (*(v61 + 8))(v31, v34);
  sub_1C105B428(a1, v94);
  memcpy(v81, v95, sizeof(v81));
  sub_1C100D690(v94, v97);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDE82B08;
  v36 = qword_1EDE82B10;
  v62 = xmmword_1EDE82B18;
  v37 = qword_1EDE82B28;

  sub_1C100C7D0(v94);

  *&v97[0] = v35;
  *(&v97[0] + 1) = v36;
  v97[1] = v62;
  *&v97[2] = v37;
  memcpy(&v97[2] + 8, v81, 0xA8uLL);
  v38 = v63;
  v39 = v67;
  View.cellStyle(for:)(v97, v52, v63);
  memcpy(v96, v97, sizeof(v96));
  sub_1C100C7D0(v96);
  (*(v66 + 8))(v33, v39);
  v80 = 2;
  v79 = 2;
  sub_1C105B428(a1, v97);
  v40 = v97[0];
  v67 = v97[1];
  v41 = *&v97[2];

  sub_1C100C7D0(v97);
  v76 = v40;
  v77 = v67;
  v78 = v41;
  v42 = v54;
  v43 = v65;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v80, 0, 0, v65, v51, v54);

  (*(v64 + 8))(v38, v43);
  *(&v77 + 1) = v29;
  v78 = v59;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
  (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v30, v29);
  v45 = v57;
  v46 = swift_getWitnessTable();
  View.selectionStyle(for:)(&v76, v45, v46);
  (*(v56 + 8))(v42, v45);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v76);
}

uint64_t sub_1C105E990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v78 = a7;
  v79 = a8;
  v76 = a4;
  v77 = a6;
  v75 = a3;
  v85 = a9;
  v86 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CA0, &qword_1C12AC3D8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = (&v67 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CA8, &qword_1C12AC3E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = (&v67 - v13);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CB0, &qword_1C12AC3E8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CB8, &unk_1C12AC3F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v84 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v67 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
  MEMORY[0x1EEE9AC00](v73);
  v22 = &v67 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC8, &qword_1C12AC400);
  MEMORY[0x1EEE9AC00](v74);
  v82 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v67 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1C1266790();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v67 - v34;
  v36 = *(a5 + 72);
  v80 = a2;
  v81 = a5;
  v36(a2, v33);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, AssociatedTypeWitness);
  (*(v32 + 8))(v35, v31);
  if (qword_1EBE8FCA8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v73, qword_1EBE93F58);
  sub_1C0FE5654(v38, v22, &qword_1EBE91CC0, &qword_1C12B6EB0);
  if (EnumTagSinglePayload == 1)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 1.0;
  }

  sub_1C0FE4040(v22, v26, &qword_1EBE91CC0, &qword_1C12B6EB0);
  *&v26[*(v74 + 36)] = v39;
  sub_1C0FE4040(v26, v29, &qword_1EBE91CC8, &qword_1C12AC400);
  v41 = v80;
  v40 = v81;
  __src[0] = v80;
  __src[1] = v75;
  __src[2] = v76;
  __src[3] = v81;
  __src[4] = v77;
  __src[5] = v78;
  __src[6] = v79;
  v42 = type metadata accessor for PhotosEventCell(0, __src);
  v43 = (v86 + *(v42 + 100));
  v44 = v43[1];
  v45 = v29;
  if (v44)
  {
    v46 = *v43;
    v47 = sub_1C1265960();
    v48 = v68;
    *v68 = v47;
    *(v48 + 8) = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D18, &unk_1C12AC430);
    sub_1C105F290(v46, v44, EnumTagSinglePayload != 1, v48 + *(v50 + 44));
    sub_1C1265960();
    sub_1C1263390();
    v51 = v67;
    sub_1C0FE4040(v48, v67, &qword_1EBE91CA8, &qword_1C12AC3E0);
    memcpy((v51 + *(v71 + 36)), __src, 0x70uLL);
    v52 = v69;
    sub_1C0FE4040(v51, v69, &qword_1EBE91CB0, &qword_1C12AC3E8);
    sub_1C0FE5654(v52, v72, &qword_1EBE91CB0, &qword_1C12AC3E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CE8, &qword_1C12AC420);
    sub_1C1061E34();
    sub_1C1061EEC();
    v53 = v83;
    sub_1C1263C20();
    sub_1C0F9E27C(v52, &qword_1EBE91CB0);
  }

  else
  {
    (*(v40 + 40))(v41, v40);
    v53 = v83;
    if (!v54)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CD0, &qword_1C12AC408);
      v60 = v53;
      v61 = 1;
      goto LABEL_11;
    }

    v55 = sub_1C1265960();
    v57 = v56;
    sub_1C105F514(EnumTagSinglePayload != 1, v88);
    memcpy(v90, v88, 0x79uLL);
    memcpy(__src, v88, 0x79uLL);
    sub_1C0FE5654(v90, v87, &qword_1EBE91CE0, &qword_1C12AC418);
    sub_1C0F9E27C(__src, &qword_1EBE91CE0);

    memcpy(v88, v90, 0x79uLL);
    sub_1C1265960();
    sub_1C1263390();
    memcpy(&v89[7], v87, 0x70uLL);
    v58 = v72;
    *v72 = v55;
    v58[1] = v57;
    memcpy(v58 + 2, v88, 0x79uLL);
    memcpy(v58 + 137, v89, 0x77uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CE8, &qword_1C12AC420);
    sub_1C1061E34();
    sub_1C1061EEC();
    sub_1C1263C20();
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CD0, &qword_1C12AC408);
  v60 = v53;
  v61 = 0;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v60, v61, 1, v59);
  v62 = v82;
  sub_1C0FE5654(v29, v82, &qword_1EBE91CC8, &qword_1C12AC400);
  v63 = v84;
  sub_1C0FE5654(v53, v84, &qword_1EBE91CB8, &unk_1C12AC3F0);
  v64 = v85;
  sub_1C0FE5654(v62, v85, &qword_1EBE91CC8, &qword_1C12AC400);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CD8, &qword_1C12AC410);
  sub_1C0FE5654(v63, v64 + *(v65 + 48), &qword_1EBE91CB8, &unk_1C12AC3F0);
  sub_1C0F9E27C(v53, &qword_1EBE91CB8);
  sub_1C0F9E27C(v45, &qword_1EBE91CC8);
  sub_1C0F9E27C(v63, &qword_1EBE91CB8);
  return sub_1C0F9E27C(v62, &qword_1EBE91CC8);
}

__n128 sub_1C105F290@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20, &qword_1C12BEA30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D28, &qword_1C12AC440);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v27 = a1;
  v28 = a2;
  v29 = 1;
  v25 = 394245;
  v26 = 17367552;
  v15 = qword_1EDE7AF08;

  if (v15 != -1)
  {
    swift_once();
  }

  v24[3] = word_1EDE7AF16;
  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C(v27, v28);
  if (a3)
  {
    v16 = sub_1C1265190();
  }

  else
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDE7B870;
  }

  (*(v9 + 32))(v14, v11, v8);
  *&v14[*(v12 + 36)] = v16;
  v17 = sub_1C1264470();
  sub_1C0FE4040(v14, a4, &qword_1EBE91D28, &qword_1C12AC440);
  v18 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91D30, &qword_1C12AC448) + 36);
  *v18 = v17;
  *(v18 + 8) = xmmword_1C12AC160;
  __asm { FMOV            V0.2D, #12.0 }

  *(v18 + 24) = result;
  *(v18 + 40) = 0;
  return result;
}

double sub_1C105F514@<D0>(char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1C0FDB9AC();

  v6 = sub_1C12648F0();
  v8 = v7;
  v10 = v9;
  sub_1C11D2C40(v6);
  v22 = sub_1C1264870();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1C0FDB8E8(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  if (a3)
  {
    v18 = sub_1C1265190();
  }

  else
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDE7B870;
  }

  v19 = swift_getKeyPath();
  v20 = sub_1C1264470();
  *a4 = v22;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 2;
  *(a4 + 48) = 0;
  *(a4 + 56) = v18;
  *(a4 + 64) = v19;
  *(a4 + 72) = 0;
  *(a4 + 80) = v20;
  result = 12.0;
  *(a4 + 88) = xmmword_1C12AC170;
  *(a4 + 104) = xmmword_1C12AC170;
  *(a4 + 120) = 0;
  return result;
}

uint64_t sub_1C105F6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  *a9 = sub_1C1265960();
  a9[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  return a12(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1C105F75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v111 = a8;
  v110 = a7;
  v109 = a6;
  v108 = a4;
  v107 = a3;
  v116 = a9;
  v97 = sub_1C1264680();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v93 = &v91 - v14;
  v94 = sub_1C1264700();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D60, &qword_1C12AC4C8);
  MEMORY[0x1EEE9AC00](v105);
  v17 = &v91 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20, &qword_1C12BEA30);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v91 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D28, &qword_1C12AC440);
  MEMORY[0x1EEE9AC00](v98);
  v20 = &v91 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91D30, &qword_1C12AC448);
  MEMORY[0x1EEE9AC00](v106);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D68, &qword_1C12AC4D0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v115 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v114 = &v91 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = sub_1C1266790();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v91 - v33;
  (*(a5 + 72))(a2, a5, v32);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, AssociatedTypeWitness);
  (*(v31 + 8))(v34, v30);
  if (qword_1EDE812F8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  v37 = *v36;
  v112 = *(v36 + 16);
  v113 = v37;
  v38 = *(v36 + 32);
  v39 = *(v36 + 40);
  v120 = a2;
  v121 = v107;
  v122 = v108;
  v123 = a5;
  v124 = v109;
  v125 = v110;
  v126 = v111;
  v40 = (a1 + *(type metadata accessor for PhotosEventCell(0, &v120) + 100));
  v41 = v40[1];
  if (v41)
  {
    v120 = *v40;
    v121 = v41;
    LOBYTE(v122) = 1;
    v118 = 394245;
    v119 = 17367552;
    v42 = qword_1EDE7AF08;

    if (v42 != -1)
    {
      swift_once();
    }

    v117 = word_1EDE7AF16;
    v43 = v99;
    PhotosPrefetchableImage(_:font:symbolVariant:)();
    sub_1C100DC0C(v120, v121);
    v44 = v114;
    v104 = EnumTagSinglePayload;
    v103 = v39;
    if (EnumTagSinglePayload == 1)
    {
      if (qword_1EDE7B868 != -1)
      {
        swift_once();
      }

      v45 = qword_1EDE7B870;
    }

    else
    {
      v45 = sub_1C1265190();
    }

    (*(v100 + 32))(v20, v43, v101);
    *&v20[*(v98 + 36)] = v45;
    v70 = sub_1C1264470();
    sub_1C0FE4040(v20, v22, &qword_1EBE91D28, &qword_1C12AC440);
    v71 = &v22[*(v106 + 36)];
    *v71 = v70;
    *(v71 + 8) = xmmword_1C12AC160;
    __asm { FMOV            V0.2D, #12.0 }

    *(v71 + 24) = _Q0;
    v71[40] = 0;
    v77 = v102;
    sub_1C0FE4040(v22, v102, &unk_1EBE91D30, &qword_1C12AC448);
    sub_1C0FE5654(v77, v17, &unk_1EBE91D30, &qword_1C12AC448);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CE0, &qword_1C12AC418);
    sub_1C1061FCC(&qword_1EDE771F0, &unk_1EBE91D30, &qword_1C12AC448, sub_1C106204C);
    sub_1C1061FCC(&qword_1EDE7BD20, &qword_1EBE91CE0, &qword_1C12AC418, sub_1C10621F8);
    sub_1C1263C20();
    sub_1C0F9E27C(v77, &unk_1EBE91D30);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D70, &qword_1C12AC4D8);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v78);
    LOBYTE(v39) = v103;
    EnumTagSinglePayload = v104;
  }

  else
  {
    v46 = (*(a5 + 40))(a2, a5);
    if (v47)
    {
      v103 = v39;
      v120 = v46;
      v121 = v47;
      sub_1C0FDB9AC();
      v48 = sub_1C12648F0();
      v50 = v49;
      v52 = v51;
      v111 = v53;
      v54 = v92;
      v55 = v91;
      v56 = v94;
      (*(v92 + 104))(v91, *MEMORY[0x1E6980F30], v94);
      v57 = sub_1C1264590();
      v58 = v93;
      __swift_storeEnumTagSinglePayload(v93, 1, 1, v57);
      sub_1C12645B0();
      sub_1C1264640();
      sub_1C0F9E27C(v58, &qword_1EBE96550);
      (*(v54 + 8))(v55, v56);
      v59 = v96;
      v60 = v95;
      v61 = v97;
      (*(v96 + 104))(v95, *MEMORY[0x1E6980EA8], v97);
      sub_1C12646C0();

      (*(v59 + 8))(v60, v61);
      v110 = sub_1C1264870();
      v63 = v62;
      v65 = v64;
      v67 = v66;

      sub_1C0FDB8E8(v48, v50, v52 & 1);

      KeyPath = swift_getKeyPath();
      v104 = EnumTagSinglePayload;
      if (EnumTagSinglePayload == 1)
      {
        if (qword_1EDE7B868 != -1)
        {
          swift_once();
        }

        v69 = qword_1EDE7B870;
      }

      else
      {
        v69 = sub_1C1265190();
      }

      LOBYTE(v118) = v65 & 1;
      LOBYTE(v117) = 0;
      v80 = swift_getKeyPath();
      v81 = v118;
      v82 = v117;
      v83 = sub_1C1264470();
      LOBYTE(v120) = 0;
      *v17 = v110;
      *(v17 + 1) = v63;
      v17[16] = v81;
      *(v17 + 3) = v67;
      *(v17 + 4) = KeyPath;
      *(v17 + 5) = 2;
      v17[48] = v82;
      *(v17 + 7) = v69;
      *(v17 + 8) = v80;
      v17[72] = 0;
      v17[80] = v83;
      *(v17 + 88) = xmmword_1C12AC180;
      *(v17 + 104) = xmmword_1C12AC170;
      v17[120] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CE0, &qword_1C12AC418);
      sub_1C1061FCC(&qword_1EDE771F0, &unk_1EBE91D30, &qword_1C12AC448, sub_1C106204C);
      sub_1C1061FCC(&qword_1EDE7BD20, &qword_1EBE91CE0, &qword_1C12AC418, sub_1C10621F8);
      v44 = v114;
      sub_1C1263C20();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D70, &qword_1C12AC4D8);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v84);
      EnumTagSinglePayload = v104;
      LOBYTE(v39) = v103;
    }

    else
    {
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D70, &qword_1C12AC4D8);
      v44 = v114;
      __swift_storeEnumTagSinglePayload(v114, 1, 1, v79);
    }
  }

  if (EnumTagSinglePayload == 1)
  {
    v85 = 0.0;
  }

  else
  {
    v85 = 1.0;
  }

  v86 = v115;
  sub_1C0FE5654(v44, v115, &qword_1EBE91D68, &qword_1C12AC4D0);
  v87 = v116;
  v88 = v112;
  *v116 = v113;
  v87[1] = v88;
  *(v87 + 4) = v38;
  *(v87 + 40) = v39;
  *(v87 + 6) = v85;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D78, &unk_1C12AC4E0);
  sub_1C0FE5654(v86, v87 + *(v89 + 48), &qword_1EBE91D68, &qword_1C12AC4D0);
  sub_1C0F9E27C(v44, &qword_1EBE91D68);
  return sub_1C0F9E27C(v86, &qword_1EBE91D68);
}

uint64_t PhotosEventCell<>.init(_:uiContext:displaySubtitle:useCollageStyle:itemAspectRatio:systemImageNameReplacingTitle:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10)
{
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v20 = *v19;
  (*(v15 + 16))(v17 - v16, a1, v21);
  v34[0] = v20;
  v33[0] = a6;
  v33[1] = MEMORY[0x1E6981E70];
  v33[2] = a7;
  v33[3] = a10;
  v33[4] = MEMORY[0x1E6981E60];
  type metadata accessor for PhotosCollectionKeyAssetsView(255, v33);
  type metadata accessor for PhotosAssetView(255);
  v22 = sub_1C1263C30();
  v23 = type metadata accessor for PhotosThumbnailPlaceholderView(0);
  swift_getWitnessTable();
  sub_1C10611C4(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
  OUTLINED_FUNCTION_19_0();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1C10611C4(qword_1EDE804D0, type metadata accessor for PhotosThumbnailPlaceholderView, &protocol conformance descriptor for PhotosThumbnailPlaceholderView);
  *&v28 = a7;
  *(&v28 + 1) = a10;
  *&v27 = v22;
  *(&v27 + 1) = v23;
  PhotosEventCell.init(_:uiContext:displaySubtitle:useCollageStyle:itemAspectRatio:systemImageNameReplacingTitle:content:placeholder:)(v18, v34, a2, a3, a4, a5, sub_1C10611AC, a8, a9, sub_1C1060D28, 0, a6, v27, v28, WitnessTable, v25);
  return (*(v15 + 8))(a1, a6);
}

uint64_t sub_1C10606C0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a3;
  v53 = a2;
  v52 = a1;
  v58 = a7;
  v10 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v48[-v14];
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61[0] = a4;
  v61[1] = MEMORY[0x1E6981E70];
  v61[2] = a5;
  v61[3] = a6;
  v50 = a6;
  v61[4] = MEMORY[0x1E6981E60];
  v19 = type metadata accessor for PhotosCollectionKeyAssetsView(0, v61);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48[-v24];
  v57 = v10;
  v26 = sub_1C1263C30();
  v55 = *(v26 - 8);
  v56 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v54 = &v48[-v28];
  if (v52)
  {
    (*(v15 + 16))(v18, v53, a4, v27);
    LOBYTE(v61[0]) = v49 & 1;
    v29 = v50;
    v30 = sub_1C10DFCA0();
    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = v32;
    *(&v47 + 1) = v29;
    *&v47 = a5;
    PhotosCollectionKeyAssetsView.init(model:overlayStyle:placeholderSymbolContainerWidthRatio:accessoryContent:)(v18, v61, 0, 1, sub_1C1061D20, a4, MEMORY[0x1E6981E70], v22, v47, MEMORY[0x1E6981E60]);
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v34 = *(v20 + 8);
    v34(v22, v19);
    sub_1C0FDBA4C();
    sub_1C10611C4(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
    v35 = v54;
    sub_1C1112D68();
    v34(v22, v19);
    v34(v25, v19);
  }

  else
  {
    (*(a5 + 72))(v61, a4, a5, v27);
    v36 = v61[0];
    v37 = sub_1C1200D04();
    [v37 setNetworkAccessAllowed_];
    *(v12 + 19) = swift_getKeyPath();
    v12[160] = 0;
    v38 = v57;
    v39 = *(v57 + 48);
    *&v12[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v40 = &v12[*(v38 + 52)];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    v41 = &v12[*(v38 + 56)];
    *v41 = swift_getKeyPath();
    v41[8] = 0;
    *v12 = 0;
    *(v12 + 4) = 0;
    *(v12 + 5) = 0;
    v12[48] = 1;
    v12[8] = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 34) = 256;
    *(v12 + 52) = 0;
    *(v12 + 60) = 0;
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = v36;
    *(v12 + 12) = 0;
    *(v12 + 13) = v37;
    *(v12 + 7) = 0u;
    *(v12 + 8) = 0u;
    v12[144] = 2;
    v42 = v51;
    sub_1C0FF7598(v12, v51);
    swift_getWitnessTable();
    sub_1C10611C4(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
    v35 = v54;
    sub_1C1112E18();
    sub_1C0FF753C(v42);
  }

  WitnessTable = swift_getWitnessTable();
  v44 = sub_1C10611C4(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
  v59 = WitnessTable;
  v60 = v44;
  v45 = v56;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v55 + 8))(v35, v45);
}

double sub_1C1060D28@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t PhotosEventCellFactory.__allocating_init(capacity:)()
{
  v0 = swift_allocObject();
  type metadata accessor for ColorFactory();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t PhotosEventCellFactory.init(capacity:)()
{
  type metadata accessor for ColorFactory();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

void sub_1C1060E04(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-1] - v4;
  OUTLINED_FUNCTION_17_2(0x2320656C746954);
  OUTLINED_FUNCTION_47();
  v6 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v6);

  v7 = __src[0];
  v8 = __src[1];
  OUTLINED_FUNCTION_17_2(0x656C746974627553);
  OUTLINED_FUNCTION_47();
  v9 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v9);

  v10 = __src[0];
  v11 = __src[1];
  v12 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  type metadata accessor for PhotosMockCollection(0);
  swift_allocObject();
  LOWORD(v23) = 0;
  PhotosMockCollection.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(0, 0, v7, v8, v10, v11, v5, 0, MEMORY[0x1E69E7CC0], v23, v24, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], BYTE1(__src[10]));
  v14 = v13;
  v15 = sub_1C1265110();
  *a2 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91C60, &qword_1C12AC270);
  v17 = v16[26];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a2 + v17), __src, 0xD1uLL);
  v18 = a2 + v16[27];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a2 + v16[28];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v16[29];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *(a2 + 24) = v15;
  *(a2 + 32) = 0x3FF0000000000000;
  *(a2 + 40) = 0;
  v21 = v16[24];
  *(a2 + v21) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(a2 + 10) = 0;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 8) = 258;
  v22 = (a2 + v16[25]);
  *v22 = 0;
  v22[1] = 0;
}