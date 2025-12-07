uint64_t sub_1975DBC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = _s12DisplayEventVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    goto LABEL_12;
  }

  KeyPath = swift_getKeyPath();
  sub_1975DB5E4(KeyPath);

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
LABEL_12:
    sub_19755C820(v6, &qword_1EAF35260, &qword_1976202C8);
    return 2;
  }

  sub_1975DEC68(v6, v9);
  v11 = *v9 == a1 && v9[1] == a2;
  if (v11 || (sub_197616EF0() & 1) != 0)
  {
    sub_19758CA08();
    return 2;
  }

  sub_197615A00();
  *&v14 = -v13;
  v17 = v14;
  v15 = Double.seconds.getter(*&v14);
  sub_1975877EC(v15);
  sub_197617290();
  sub_1976172B0();
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = sub_1976172A0();
  sub_19758CA08();
  if (v16)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1975DBF4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = _s12DisplayEventVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1975E1230(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_19755C820(v4, &qword_1EAF35260, &qword_1976202C8);
  }

  else
  {
    sub_1975DEC68(v4, v7);
    v8 = *v7 == *(v0 + 16) && v7[1] == *(v0 + 24);
    if (v8 || (sub_197616EF0() & 1) != 0)
    {
      sub_19758CA08();
    }

    else
    {
      sub_197615A00();
      *&v12 = -v11;
      v15 = v12;
      v13 = Double.seconds.getter(*&v12);
      sub_1975877EC(v13);
      sub_197617290();
      sub_1976172B0();
      if (qword_1ED817510 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v14 = sub_1976172A0();
      sub_19758CA08();
      if (v14)
      {
        return 1;
      }
    }
  }

  swift_unownedRetainStrong();
  v9 = sub_1975811E0(sub_19757FEC8, v1);

  return v9;
}

uint64_t sub_1975DC1F8()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 4, v1);
  (*(v2 + 72))(v6, v1, v2);
  result = sub_19756D1E8(v6);
  if (v7 == 1)
  {
    swift_unownedRetainStrong();

    sub_19755A560((v0 + 4), v5);
    v4 = swift_allocObject();
    sub_19756EED8(v5, v4 + 16);
    sub_19756E7B0(&unk_197620258, v4);
  }

  return result;
}

uint64_t sub_1975DC2F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975DC310, 0, 0);
}

uint64_t sub_1975DC310()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  type metadata accessor for CoreTipRecord(0);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = *(v4 + 32);
  v6 = v5(v3, v4);
  sub_1975E74B8(v6, v7, v2, v8, v9, v10, v11, v12, v1, v28, v30, v32, v34, v35, v36, v37, v38, v39, v40, v41);
  v14 = v13;

  if (v14)
  {
    __swift_project_boxed_opaque_existential_1Tm(*(v29 + 56), *(v27 + 24));
    sub_1975782A0();
    __swift_project_boxed_opaque_existential_1Tm(*(v29 + 56), *(v27 + 24));
    sub_1975EB128();
  }

  else
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    }

    v17 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v17, qword_1ED816CA0);
    OUTLINED_FUNCTION_5_17();
    sub_197616A20();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_2_22();
    OUTLINED_FUNCTION_29_4();
    v18 = v5(v3, v4);
    MEMORY[0x19A8E2A50](v18);

    v19 = MEMORY[0x19A8E2A50](0xD000000000000044, 0x8000000197624D70);
    OUTLINED_FUNCTION_25_5(v19, v20, v21, v22, v23, v24, v25, v26, v27, v29, v31, v33);
  }

  OUTLINED_FUNCTION_3();

  return v15();
}

uint64_t CoreTip.invalidate(reason:)(uint64_t a1)
{
  v2 = a1;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v3);
  (*(v4 + 72))(v15, v3, v4);
  result = sub_19756D1E8(v15);
  if (v16 == 1)
  {
    v7 = v1[2];
    v6 = v1[3];
    v8 = v1[9];
    v9 = v1[10];
    if (qword_1ED817510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(__dst, &qword_1ED817518, 0x6AuLL);
    memcpy(v13, &qword_1ED817518, 0x6AuLL);
    sub_19757FBA0(__dst, v12);
    v10 = sub_19757F3C4(v7, v6, v8, v9);
    sub_19757FB70(__dst);
    if (v10 == 4)
    {
      CoreTip.status.getter(v13);
      if (LOBYTE(v13[0]) != 2)
      {
        LOBYTE(v13[0]) = 2;
        HIBYTE(v13[0]) = v2;
        sub_197582FAC(v13);
      }

      swift_unownedRetainStrong();

      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v6;
      *(v11 + 32) = v2;

      sub_19756E7B0(&unk_197620218, v11);
    }

    else
    {
      return sub_1975DC7B4(v2);
    }
  }

  return result;
}

uint64_t sub_1975DC7B4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  if ((a1 & 0xFE) == 2)
  {
    v7 = sub_1976165B0();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;

    sub_1975DB7FC(0, 0, v6, &unk_197620468, v8);
  }

  return result;
}

uint64_t sub_1975DC8A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975DC8D0, 0, 0);
}

uint64_t sub_1975DC8D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  type metadata accessor for CoreTipRecord(0);
  sub_1975E9024(v1, v2, v4, v3);
  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_1975DCA50()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
  }

  v1 = v0[2];
  v2 = type metadata accessor for logger(0);
  v0[3] = __swift_project_value_buffer(v2, qword_1ED816CA0);
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v3 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v3, 0xE800000000000000);
  v0[4] = *(v1 + 16);
  v0[5] = *(v1 + 24);
  MEMORY[0x19A8E2A50]();
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD000000000000042);
  sub_197558864(v8, v9, v4);

  v0[6] = sub_197616590();
  v0[7] = sub_197616580();
  OUTLINED_FUNCTION_42();
  v6 = sub_197616560();

  return MEMORY[0x1EEE6DFA0](sub_1975DCB98, v6, v5);
}

uint64_t sub_1975DCB98()
{
  OUTLINED_FUNCTION_1();

  CoreTip.hide()();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1975DCC38;

  return static Task.sleep<>(for:)();
}

uint64_t sub_1975DCC38()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1975DEFA8;
  }

  else
  {
    v4 = sub_1975DCD40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1975DCD40()
{
  v1 = v0[5];
  v2 = v0[4];
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v3 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v3, 0xE800000000000000);
  MEMORY[0x19A8E2A50](v2, v1);
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD00000000000002DLL);
  sub_197558864(v8, v9, v4);

  v0[9] = sub_197616580();
  OUTLINED_FUNCTION_42();
  v6 = sub_197616560();

  return MEMORY[0x1EEE6DFA0](sub_1975DCE44, v6, v5);
}

uint64_t sub_1975DCE44()
{
  OUTLINED_FUNCTION_1();

  CoreTip.show()();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t static CoreTip.invalidateTip(id:reason:datastore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_1975DCEC0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1975DCFC4;

  return sub_1975C4064();
}

uint64_t sub_1975DCFC4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_1975DD0D0;
  }

  else
  {

    v6 = sub_1975A9254;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1975DD0D0()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_1975DD12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 26) = a5;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  *(v5 + 80) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975DD308, 0, 0);
}

uint64_t sub_1975DD308()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 136);
  v3 = *(v0 + 120);
  v29 = *(v0 + 112);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  swift_getKeyPath();
  sub_197568038(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_197615640();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = type metadata accessor for CoreTipRecord(0);
  *(v0 + 32) = v8;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_197618C10;
  (*(v1 + 16))(v30 + v9, v2, v28);
  (*(v3 + 16))(v5, v27, v29);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v29);
  v10 = sub_197568038(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  v11 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v12 = swift_task_alloc();
  *v12 = v8;
  v12[1] = v10;
  swift_getKeyPath();

  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  swift_setAtWritableKeyPath();

  v13 = swift_task_alloc();
  *v13 = v8;
  v13[1] = v10;
  swift_getKeyPath();

  *(v0 + 25) = 0;
  swift_setAtWritableKeyPath();

  v14 = swift_task_alloc();
  *v14 = v8;
  v14[1] = v10;
  swift_getKeyPath();

  *(v0 + 40) = v11;
  swift_setAtWritableKeyPath();

  v15 = swift_task_alloc();
  *v15 = v8;
  v15[1] = v10;
  swift_getKeyPath();

  *(v0 + 48) = v30;
  swift_setAtWritableKeyPath();

  v16 = sub_197615C80();
  if (sub_197567E4C(v16))
  {
    sub_1975692BC(0, (v16 & 0xC000000000000001) == 0, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A8E31E0](0, v16);
    }

    else
    {
    }
  }

  else
  {

    swift_allocObject();
    OUTLINED_FUNCTION_42();

    v17 = OUTLINED_FUNCTION_22_7();
    CoreTipRecord.init(id:)(v17, v18);
    sub_197615CD0();
  }

  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v21 = *(v0 + 136);
  v22 = *(v0 + 26);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v23 = OUTLINED_FUNCTION_19_2();
  v24(v23);
  (*(v20 + 8))(v19, v21);
  sub_1975E92FC(v22);

  OUTLINED_FUNCTION_3();

  return v26();
}

uint64_t sub_1975DD860@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E8, &qword_1976192E0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  sub_197559AAC(&qword_1ED816CE0, &qword_1EAF34710, &unk_197622260, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35268, &unk_1976224A0);
  a4[4] = sub_1975710A4();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED816BF8, &qword_1EAF346E8, &qword_1976192E0, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848, MEMORY[0x1E6968D20]);
  v17 = v21;
  sub_1976156F0();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1975DDBE0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 104);
  v2 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v1[7]);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3, v2);
  sub_19756D1E8(v0 + 16);
  if (*(v0 + 62) == 1)
  {
    v5 = *(*(v0 + 104) + 88);
    swift_unownedRetainStrong();
    *(v0 + 112) = *(v5 + 64);

    sub_19755A560((v1 + 4), v0 + 64);
    v6 = swift_allocObject();
    *(v0 + 120) = v6;
    sub_19756EED8((v0 + 64), v6 + 16);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_1975DDD78;

    return sub_197572890();
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v9();
  }
}

uint64_t sub_1975DDD78()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_197598ED0, 0, 0);
}

uint64_t sub_1975DDE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1975DDEBC, 0, 0);
}

uint64_t sub_1975DDEBC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  type metadata accessor for CoreTipRecord(0);
  sub_1975E9648(v5, v2, v3, v4);
  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_1975DE05C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_19755CCE8;

  return sub_1975DC8A8(v3, v4, v5, v6);
}

uint64_t sub_1975DE108(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1975DE36C(a2);

  return v4;
}

uint64_t sub_1975DE1D4@<X0>(void (*a2)(uint64_t)@<X1>, _OWORD *x8_0@<X8>)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1975DE414(a2, x8_0);
}

uint64_t sub_1975DE2A0(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1975DE4D4(a2);

  return v4 & 1;
}

uint64_t sub_1975DE36C(void *(*a1)(uint64_t *__return_ptr, uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    return 2;
  }

  sub_197615D20();

  if (sub_197615C40())
  {
    sub_197615C50();
  }

  v3 = sub_19757FEE4(a1);

  return v3;
}

void (*sub_1975DE414@<X0>(void (*result)(uint64_t)@<X0>, _OWORD *a2@<X8>))(uint64_t)
{
  if (*(v2 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    v3 = result;

    v4 = sub_197615D20();

    if (sub_197615C40())
    {
      sub_197615C50();
    }

    v3(v4);
    sub_197615C90();
  }

  else
  {
    *a2 = xmmword_19761D220;
  }

  return result;
}

uint64_t sub_1975DE4D4(void *(*a1)(uint64_t *__return_ptr, uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    v4 = 1;
    return v4 & 1;
  }

  sub_197615D20();

  if (sub_197615C40())
  {
    sub_197615C50();
  }

  v4 = sub_19757FEE4(a1);

  if (!v2)
  {
    return v4 & 1;
  }

  return result;
}

uint64_t sub_1975DE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_1975DED18(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v15[0]);
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
  v14 = sub_197617320();
  MEMORY[0x19A8E2A50](v14);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  result = sub_197616C20();
  __break(1u);
  return result;
}

uint64_t sub_1975DE738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1975DEF80();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
    v12 = sub_197617320();
    MEMORY[0x19A8E2A50](v12);

    MEMORY[0x19A8E2A50](46, 0xE100000000000000);
    result = sub_197616C20();
    __break(1u);
  }

  return result;
}

uint64_t sub_1975DE8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_1975DED18(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v15[0]);
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
  v14 = sub_197617320();
  MEMORY[0x19A8E2A50](v14);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  result = sub_197616C20();
  __break(1u);
  return result;
}

uint64_t sub_1975DEA7C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_5_1(v8);
  *v9 = v10;
  v9[1] = sub_19755CCE8;

  return sub_1975DD12C(v4, v2, v5, v6, v7);
}

uint64_t sub_1975DEB34()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_1(v5);
  *v6 = v7;
  v6[1] = sub_19755CDC8;

  return sub_1975DDE9C(v4, v2, v0 + 16);
}

uint64_t sub_1975DEBD4()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19755CDC8;

  return sub_1975DC2F0(v3, v0 + 16);
}

uint64_t sub_1975DEC68(uint64_t a1, uint64_t a2)
{
  v4 = _s12DisplayEventVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975DECCC@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1975DE108(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void *sub_1975DED18@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1975DED64@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1975DE2A0(a1, a2, a3);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_1975DEDB4()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_1(v6);
  *v7 = v8;
  v7[1] = sub_19755CDC8;

  return sub_1975DCA30(v2, v3, v4, v5);
}

uint64_t sub_1975DEE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975DEECC()
{
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t sub_1975DEFAC(uint64_t a1)
{
  v3 = v2;
  sub_197615A60();
  OUTLINED_FUNCTION_1_31();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED817510 != -1)
  {
    v10 = OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_25_6(v10, v35);
  if (qword_1ED817578)
  {
    v12 = qword_1ED817570;
    v13 = qword_1ED817578;
  }

  else
  {
    v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v12 = qword_1ED81D210;
      v13 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v14 = sub_1975A5740();
      if (v15)
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      if (v15)
      {
        v13 = v15;
      }

      else
      {
        v13 = 0xE000000000000000;
      }
    }

    v11 = v32;
  }

  if (v12 == 0x6C7070612E6D6F63 && v13 == 0xEF64737069742E65)
  {
  }

  else
  {
    v17 = sub_197616EF0();

    if ((v17 & 1) == 0)
    {
      result = sub_1975A64CC();
      if (result)
      {
        v19 = v3[7];
        v20 = v3[8];
        __swift_project_boxed_opaque_existential_1Tm(v3 + 4, v19);
        (*(v20 + 72))(v33, v19, v20);
        sub_19756D1E8(v33);
        if ((v34 & 1) == 0)
        {
          static CoreTip.setLastTipDisplayed(id:date:)(v3[2], v3[3], a1);
        }

        v21 = v3[11];
        swift_unownedRetainStrong();
        v32 = *(v21 + 64);

        v22 = v3[2];
        v23 = v3[3];
        v30 = a1;
        v31 = v22;
        v24 = OUTLINED_FUNCTION_16_9();
        v25 = *(a1 + 72);

        v26 = OUTLINED_FUNCTION_29_5();
        v25(v26);
        (*(v6 + 16))(v11, v30, v1);
        OUTLINED_FUNCTION_24_7();
        v27 = swift_allocObject();
        *(v27 + 16) = v31;
        *(v27 + 24) = v23;
        (*(v6 + 32))(&v24[v27], v11, v1);
        v28 = (v27 + v8);
        v29 = v37[0];
        *v28 = v36;
        v28[1] = v29;
        *(v28 + 31) = *(v37 + 15);
        sub_19756E7B0(&unk_1976204C0, v27);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall CoreTip.hide()()
{
  if ((CoreTip.isHidden.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_18();
    v0 = OUTLINED_FUNCTION_7_14();
    v1(v0);
    sub_19756D1E8(v6);
    if (v6[46] == 1)
    {
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
      }

      v2 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v2, qword_1ED816CA0);
      OUTLINED_FUNCTION_6_13();
      sub_197616A20();

      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x19A8E2A50](0x1000000000000015);
      sub_197558864(v4, v5, v3);

      sub_1975D52E4(1);
      sub_1975E0AE4();
    }
  }
}

Swift::Void __swiftcall CoreTip.show()()
{
  if (CoreTip.isHidden.getter())
  {
    OUTLINED_FUNCTION_5_18();
    v0 = OUTLINED_FUNCTION_7_14();
    v1(v0);
    sub_19756D1E8(v6);
    if (v6[46] == 1)
    {
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
      }

      v2 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v2, qword_1ED816CA0);
      OUTLINED_FUNCTION_6_13();
      sub_197616A20();

      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x19A8E2A50](0x1000000000000016);
      sub_197558864(v4, v5, v3);

      sub_1975D52E4(0);
      sub_1975E0AE4();
    }
  }
}

uint64_t CoreTip.viewDidAppear(viewDisplayDate:viewPresentation:)(uint64_t a1, int a2)
{
  v4 = v3;
  v36 = a2;
  v35 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  sub_197615A60();
  OUTLINED_FUNCTION_1_31();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  sub_19755FA5C(a1, v8, &qword_1EAF34988, &qword_197620CA0);
  if (OUTLINED_FUNCTION_31_4(v8) == 1)
  {
    return sub_19755C404(v8, &qword_1EAF34988, &qword_197620CA0);
  }

  v34 = *(v10 + 32);
  v34(v17, v8, v2);
  v19 = v4[7];
  v20 = v4[8];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 4, v19);
  (*(v20 + 72))(v43, v19, v20);
  sub_19756D1E8(v43);
  if (v44 == 1)
  {
    v33 = v10 + 32;
    v21 = v4[7];
    v22 = v4[8];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 4, v21);
    (*(v22 + 72))(v41, v21, v22);
    sub_19756D1E8(v41);
    if ((v42 & 1) == 0)
    {
      static CoreTip.setLastTipDisplayed(id:date:)(v4[2], v4[3], v17);
    }

    CoreTip.status.getter(&v39);
    v23 = v36;
    if (v39 != 1)
    {
      if (qword_1ED815ED8 != -1)
      {
        OUTLINED_FUNCTION_0_33(&qword_1ED815ED8);
      }

      v24 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v24, qword_1ED815EE0);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_197616A20();
      v25 = OUTLINED_FUNCTION_2_22();
      MEMORY[0x19A8E2A50](v25, 0xE800000000000000);
      MEMORY[0x19A8E2A50](v4[2], v4[3]);
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x19A8E2A50](0xD000000000000030);
      CoreTip.status.getter(&v38);
      v37 = v38;
      v26 = CoreTip.Status.description.getter();
      MEMORY[0x19A8E2A50](v26);

      sub_197558864(v39, v40, v27);
    }

    if (!CoreTip.presentationStyle.getter() || (CoreTip.presentationStyle.getter() == 1 ? (v28 = v23 == 2) : (v28 = 0), v28))
    {
      sub_19758427C(v23);
    }

    swift_unownedRetainStrong();

    v30 = v4[2];
    v29 = v4[3];
    (*(v10 + 16))(v15, v17, v2);
    v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v29;
    v34(v32 + v31, v15, v2);

    sub_19756E7B0(&unk_197620480, v32);
  }

  return (*(v10 + 8))(v17, v2);
}

uint64_t sub_1975DF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975DF984, 0, 0);
}

uint64_t sub_1975DF984()
{
  OUTLINED_FUNCTION_17_9();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  type metadata accessor for CoreTipRecord(0);
  v3 = OUTLINED_FUNCTION_22_7();
  sub_1975E79B8(v3, v4, v1, v2);
  if (sub_197615C20())
  {
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t CoreTip.viewDidDisappear(viewDisplayDate:viewDisplayDuration:)(uint64_t a1, double a2)
{
  v6 = sub_197615A60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v2[7];
  v10 = v2[8];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 4, v9);
  (*(v10 + 72))(v29, v9, v10);
  result = sub_19756D1E8(v29);
  if (v30 == 1)
  {
    if (CoreTip.presentationStyle.getter())
    {
      sub_19758427C(0);
    }

    v25 = a1;
    v26 = v6;
    v12 = _ss8DurationV10TipKitCoreE7secondsSivg_0();
    _ss8DurationV10TipKitCoreE7secondsSivg_0();
    if (v13 / 1.0e18 + v12 <= a2)
    {
      v14 = CoreTip.displayDuration.getter();
      sub_1975D53DC(v14 + a2);
    }

    swift_unownedRetainStrong();

    v15 = v2[3];
    v24 = v2[2];
    v16 = OUTLINED_FUNCTION_16_9();
    v17 = *(v3 + 72);

    v18 = OUTLINED_FUNCTION_29_5();
    v17(v18);
    v19 = v26;
    (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
    OUTLINED_FUNCTION_24_7();
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    *(v20 + 24) = v15;
    (*(v7 + 32))(&v16[v20], &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    *(v20 + v8) = a2;
    v21 = (v20 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
    *(v21 + 31) = *&v28[15];
    v22 = *v28;
    *v21 = v27;
    v21[1] = v22;
    sub_19756E7B0(&unk_197620490, v20);
  }

  return result;
}

uint64_t sub_1975DFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 88) = a5;
  *(v6 + 80) = a6;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975DFDA4, 0, 0);
}

uint64_t sub_1975DFDA4()
{
  v1 = v0[10];
  v2 = *(v0 + 9);
  v3 = *(v0 + 6);
  type metadata accessor for CoreTipRecord(0);
  v4 = OUTLINED_FUNCTION_22_7();
  sub_1975E8298(v4, v5, v2, v6, v7, v3, v1);
  if (sub_197615C20())
  {
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_1975DFF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975DFF50, 0, 0);
}

uint64_t sub_1975DFF50()
{
  OUTLINED_FUNCTION_17_9();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  type metadata accessor for CoreTipRecord(0);
  sub_1975E79B8(v3, v2, v1, v4);
  sub_1975E8298(v0[7], v0[8], v0[9], *(v0[10] + 32), *(v0[10] + 40), v0[6], 30.0);
  v7 = sub_197615C20();
  if (v7)
  {
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t CoreTip.actionButtonTapped(actionID:linkURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24[-v12 - 8];
  if (qword_1ED817510 != -1)
  {
    v11 = OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  result = OUTLINED_FUNCTION_25_6(v11, v26);
  if (byte_1ED817581 == 1)
  {
    OUTLINED_FUNCTION_16_9();
    v15 = OUTLINED_FUNCTION_29_5();
    v16(v15);
    result = sub_19756D1E8(v25);
    if (v25[45] == 1)
    {
      OUTLINED_FUNCTION_16_9();
      v17 = OUTLINED_FUNCTION_29_5();
      v18(v17);
      result = sub_19756D1E8(v24);
      if (v24[46] == 1)
      {
        swift_unownedRetainStrong();

        v20 = *(v3 + 16);
        v19 = *(v3 + 24);
        sub_19755FA5C(a3, v13, &qword_1EAF34610, &qword_197621E30);
        v21 = (*(v10 + 80) + 48) & ~*(v10 + 80);
        v22 = swift_allocObject();
        v22[2] = v20;
        v22[3] = v19;
        v22[4] = a1;
        v22[5] = a2;
        sub_1975D66B0(v13, v22 + v21);

        sub_19756E7B0(&unk_1976204A0, v22);
      }
    }
  }

  return result;
}

uint64_t sub_1975E02F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v7 = sub_197615F50();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975E0404, 0, 0);
}

uint64_t sub_1975E0404()
{
  OUTLINED_FUNCTION_17_9();
  v1 = v0[9];
  type metadata accessor for CoreTip(0);
  static CoreTip.modelIdentifiers.getter();
  OUTLINED_FUNCTION_25_0();
  sub_19756E674();

  if (OUTLINED_FUNCTION_31_4(v1) == 1)
  {
    sub_19755C404(v0[9], &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v2 = v0[8];
    v3 = OUTLINED_FUNCTION_21_8();
    v4(v3);
    v5 = OUTLINED_FUNCTION_27_5();
    v6(v5);
    v7 = OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_20_7(v7, v8, v9, v10, v11, MEMORY[0x1E69E7CC0]);
    v13 = v12;
    v14 = sub_19755C404(v2, &qword_1EAF34AB8, &qword_197622080);
    if (v13)
    {
      if (sub_19757E800(v14))
      {
        sub_1975A4444(v13, v0[5], v0[6], v0[7]);

        v15 = OUTLINED_FUNCTION_18_0();
        v16(v15);
      }

      else
      {
        (*(v0[11] + 8))(v0[12], v0[10]);
      }

      goto LABEL_10;
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  if (qword_1ED815ED8 != -1)
  {
    OUTLINED_FUNCTION_0_33(&qword_1ED815ED8);
  }

  v17 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v17, qword_1ED815EE0);
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v18 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v18, 0xE800000000000000);
  v19 = OUTLINED_FUNCTION_22_7();
  MEMORY[0x19A8E2A50](v19);
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD00000000000003FLL);
  sub_197558864(v23, v24, v20);

LABEL_10:

  OUTLINED_FUNCTION_3();

  return v21();
}

Swift::Void __swiftcall CoreTip.tipViewTapped()()
{
  v2 = v1;
  if (qword_1ED817510 != -1)
  {
    v0 = OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_25_6(v0, v12);
  if (byte_1ED817581 == 1)
  {
    OUTLINED_FUNCTION_5_18();
    v3 = OUTLINED_FUNCTION_7_14();
    v4(v3);
    sub_19756D1E8(v11);
    if (v11[45] == 1)
    {
      OUTLINED_FUNCTION_5_18();
      v5 = OUTLINED_FUNCTION_7_14();
      v6(v5);
      sub_19756D1E8(v10);
      if (v10[46] == 1)
      {
        swift_unownedRetainStrong();

        v8 = *(v1 + 16);
        v7 = *(v2 + 24);
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v7;

        sub_19756E7B0(&unk_1976204B0, v9);
      }
    }
  }
}

uint64_t sub_1975E0794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_197615F50();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975E089C, 0, 0);
}

uint64_t sub_1975E089C()
{
  OUTLINED_FUNCTION_17_9();
  v1 = v0[6];
  type metadata accessor for CoreTip(0);
  static CoreTip.modelIdentifiers.getter();
  OUTLINED_FUNCTION_25_0();
  sub_19756E674();

  if (OUTLINED_FUNCTION_31_4(v1) == 1)
  {
    sub_19755C404(v0[6], &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v2 = v0[5];
    v3 = OUTLINED_FUNCTION_21_8();
    v4(v3);
    v5 = OUTLINED_FUNCTION_27_5();
    v6(v5);
    v7 = OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_20_7(v7, v8, v9, v10, v11, MEMORY[0x1E69E7CC0]);
    v13 = v12;
    v14 = sub_19755C404(v2, &qword_1EAF34AB8, &qword_197622080);
    if (v13)
    {
      if (sub_19757E800(v14))
      {
        sub_1975A4634(v13);

        v15 = OUTLINED_FUNCTION_18_0();
        v16(v15);
      }

      else
      {
        v23 = OUTLINED_FUNCTION_18_0();
        v24(v23);
      }

      goto LABEL_10;
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  if (qword_1ED815ED8 != -1)
  {
    OUTLINED_FUNCTION_0_33(&qword_1ED815ED8);
  }

  v17 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v17, qword_1ED815EE0);
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v18 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v18, 0xE800000000000000);
  v19 = OUTLINED_FUNCTION_22_7();
  MEMORY[0x19A8E2A50](v19);
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD000000000000041);
  sub_197558864(v25, v26, v20);

LABEL_10:

  OUTLINED_FUNCTION_3();

  return v21();
}

uint64_t sub_1975E0AE4()
{
  v1 = v0;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v2 = qword_1ED817570;
    v3 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v2 = qword_1ED81D210;
      v3 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v4 = sub_1975A5740();
      if (v5)
      {
        v2 = v4;
      }

      else
      {
        v2 = 0;
      }

      if (v5)
      {
        v3 = v5;
      }

      else
      {
        v3 = 0xE000000000000000;
      }
    }
  }

  if (v2 == 0x6C7070612E6D6F63 && v3 == 0xEF64737069742E65)
  {
  }

  else
  {
    v7 = sub_197616EF0();

    if ((v7 & 1) == 0)
    {
      v9 = v1[7];
      v10 = v1[8];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v9);
      (*(v10 + 72))(v12, v9, v10);
      result = sub_19756D1E8(v12);
      if (v13 == 1)
      {
        swift_unownedRetainStrong();
        v11 = swift_allocObject();
        swift_weakInit();
        sub_1975DB6A8(sub_1975E1210, v11);
      }
    }
  }

  return result;
}

uint64_t sub_1975E0D04@<X0>(uint64_t a1@<X0>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (result)
  {
    sub_197580628(a1);
  }

  *a3 = v6 == 0;
  return result;
}

uint64_t sub_1975E0D88()
{
  sub_197615A60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23_6(v0);
  *v1 = v2;
  v1[1] = sub_1975E122C;
  v3 = OUTLINED_FUNCTION_4_27();

  return sub_1975DF960(v3, v4, v5, v6);
}

uint64_t sub_1975E0E64()
{
  OUTLINED_FUNCTION_17_9();
  v1 = sub_197615A60();
  OUTLINED_FUNCTION_20_0(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23_6(v5);
  *v6 = v7;
  v6[1] = sub_1975E122C;
  v8 = OUTLINED_FUNCTION_4_27();

  return sub_1975DFD78(v8, v9, v10, v11, v12, v4);
}

uint64_t sub_1975E0F78()
{
  OUTLINED_FUNCTION_17_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23_6(v3);
  *v4 = v5;
  v4[1] = sub_1975E122C;
  v6 = OUTLINED_FUNCTION_4_27();

  return sub_1975E02F8(v6, v7, v8, v1, v2, v9);
}

uint64_t sub_1975E1070()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23_6(v2);
  *v3 = v4;
  v3[1] = sub_1975D5948;
  v5 = OUTLINED_FUNCTION_18_0();

  return sub_1975E0794(v5, v6, v1);
}

uint64_t sub_1975E1110()
{
  v0 = sub_197615A60();
  OUTLINED_FUNCTION_20_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_23_6(v1);
  *v2 = v3;
  v2[1] = sub_1975E122C;
  v4 = OUTLINED_FUNCTION_4_27();

  return sub_1975DFF28(v4, v5, v6, v7, v8);
}

void sub_1975E1230(uint64_t a1@<X8>)
{
  if (qword_1ED8160E8 != -1)
  {
    OUTLINED_FUNCTION_2_23(&qword_1ED8160E8);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35270, &qword_1976204C8);
  v3 = __swift_project_value_buffer(v2, qword_1ED8160F0);
  os_unfair_lock_lock(v3);
  sub_197584170(v3 + *(v2 + 28), a1);

  os_unfair_lock_unlock(v3);
}

uint64_t (*static CoreTip.modelIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static CoreTip.modelIdentifiers.getter();
  return sub_1975E1350;
}

void sub_1975E1368()
{
  v22 = static CoreTip.tips.getter();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35288, &qword_1976204E0);
  OUTLINED_FUNCTION_3_26(v0);
  static CoreTip.tips.setter(v22);
  v23 = static CoreTip.modelIdentifiers.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C90, &qword_19761BF48);
  OUTLINED_FUNCTION_3_26(v1);
  static CoreTip.modelIdentifiers.setter(v23);
  v24 = sub_197559B4C(&qword_1ED816D40, &dword_1ED816B38, &qword_1ED816B40, sub_19758BCD4);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35290, &qword_1976204E8);
  v3 = OUTLINED_FUNCTION_3_26(v2);
  OUTLINED_FUNCTION_4_28(v3, v4, v5, v6, v7, v8, v9, v10, v20, v24);
  v25 = sub_197559B4C(&qword_1ED816D38, &dword_1ED816CC0, &qword_1ED816CC8, sub_19756EA18);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35298, &qword_1976204F0);
  v12 = OUTLINED_FUNCTION_3_26(v11);
  OUTLINED_FUNCTION_4_28(v12, v13, v14, v15, v16, v17, v18, v19, v21, v25);
}

uint64_t static CoreTipProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_197616EF0();
  }

  return v12 & 1;
}

uint64_t CoreTipProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);
  MEMORY[0x19A8E2A50](v2);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0x203A646928706954;
}

uint64_t CoreTip.Options.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreTip.Options.init(cloudSyncEnabled:hasRandomIdentifier:ignoresDisplayFrequency:maxDisplayCount:maxDisplayDuration:statusOverride:unmanagedTip:usesConstellation:usesCoreAnalytics:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12)
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v18 = qword_1ED817570;
    v19 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v18 = qword_1ED81D210;
      v19 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v20 = sub_1975A5740();
      if (v21)
      {
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }

      if (v21)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0xE000000000000000;
      }
    }
  }

  v22 = a12;
  v23 = a10 ^ 1;
  if (a10 == 2)
  {
    v23 = 1;
  }

  if (a8 == 4)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a12 == 2)
  {
    v22 = byte_1ED817581;
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
  *a9 = v18;
  *(a9 + 8) = v19;
  if ((a5 & 1) == 0)
  {
    v25 = a4;
  }

  *(a9 + 16) = (a1 == 2) | a1 & 1;
  *(a9 + 17) = a2 & 1;
  *(a9 + 18) = a3 & 1;
  *(a9 + 24) = v25;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7 & 1;
  *(a9 + 41) = a8;
  *(a9 + 42) = 0;
  *(a9 + 43) = a10 & 1;
  *(a9 + 44) = a11 & 1;
  *(a9 + 45) = v22 & 1;
  *(a9 + 46) = v24 & 1;
}

uint64_t sub_1975E1864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000197625210 == a2;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000197625230 == a2;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x8000000197625250 == a2;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C7073694478616DLL && a2 == 0xEF746E756F437961;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000197625270 == a2;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x764F737574617473 && a2 == 0xEE00656469727265;
              if (v11 || (sub_197616EF0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000197624770 == a2;
                if (v12 || (sub_197616EF0() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6567616E616D6E75 && a2 == 0xEC00000070695464;
                  if (v13 || (sub_197616EF0() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x8000000197625290 == a2;
                    if (v14 || (sub_197616EF0() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001976252B0 == a2;
                      if (v15 || (sub_197616EF0() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x5270695473657375 && a2 == 0xED000064726F6365)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_197616EF0();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1975E1C30(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6C7073694478616DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x764F737574617473;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6567616E616D6E75;
      break;
    case 9:
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x5270695473657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975E1DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975E1864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975E1DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1975E1C28();
  *a1 = result;
  return result;
}

uint64_t sub_1975E1E0C(uint64_t a1)
{
  v2 = sub_1975E21D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975E1E48(uint64_t a1)
{
  v2 = sub_1975E21D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.Options.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF352A0, &qword_1976204F8);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v8;
  v22 = *(v1 + 18);
  v9 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = v9;
  LODWORD(v9) = *(v1 + 40);
  v18 = *(v1 + 41);
  v19 = v9;
  LODWORD(v9) = *(v1 + 42);
  v17[4] = *(v1 + 43);
  v17[5] = v9;
  LODWORD(v9) = *(v1 + 44);
  v17[2] = *(v1 + 45);
  v17[3] = v9;
  v10 = *(v1 + 46);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v12, v11);
  sub_1975E21D8();
  sub_197617260();
  v38 = 0;
  v15 = v25;
  sub_197616E30();
  if (!v15)
  {
    LODWORD(v25) = v10;
    v37 = 1;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v36 = 2;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v35 = 3;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v34 = 4;
    OUTLINED_FUNCTION_2_24();
    sub_197616E50();
    v33 = 5;
    sub_197616E00();
    v32 = v18;
    v31 = 6;
    sub_1975E222C();
    OUTLINED_FUNCTION_2_24();
    sub_197616E20();
    v30 = 7;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v29 = 8;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v28 = 9;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v27 = 10;
    sub_197616E40();
    v26 = 11;
    sub_197616E40();
  }

  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_1975E21D8()
{
  result = qword_1EAF352A8;
  if (!qword_1EAF352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352A8);
  }

  return result;
}

unint64_t sub_1975E222C()
{
  result = qword_1EAF352B0;
  if (!qword_1EAF352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352B0);
  }

  return result;
}

uint64_t CoreTip.Options.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF352B8, &qword_197620500);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975E21D8();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v27[0]) = 0;
  v6 = sub_197616D90();
  v8 = v7;
  OUTLINED_FUNCTION_0_34(1);
  v24 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(2);
  v23 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(3);
  v22 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(4);
  v21 = sub_197616DB0();
  OUTLINED_FUNCTION_0_34(5);
  v20 = sub_197616D60();
  v40 = v9 & 1;
  LOBYTE(v25) = 6;
  sub_1975E2684();
  sub_197616D80();
  OUTLINED_FUNCTION_0_34(7);
  v19 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(8);
  v18 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(9);
  v17 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(10);
  v16 = sub_197616DA0();
  v41 = 11;
  v10 = sub_197616DA0();
  v23 &= 1u;
  v24 &= 1u;
  v11 = OUTLINED_FUNCTION_1_32();
  v12(v11);
  *&v25 = v6;
  *(&v25 + 1) = v8;
  v26[0] = v24;
  v26[1] = v23;
  v26[2] = v22 & 1;
  *&v26[8] = v21;
  *&v26[16] = v20;
  v13 = v40;
  v26[24] = v40;
  v26[25] = 0;
  v26[26] = v19 & 1;
  v26[27] = v18 & 1;
  v26[28] = v17 & 1;
  v26[29] = v16 & 1;
  v26[30] = v10 & 1;
  v14 = *v26;
  *a2 = v25;
  a2[1] = v14;
  *(a2 + 31) = *&v26[15];
  sub_1975B959C(&v25, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v27[0] = v6;
  v27[1] = v8;
  v28 = v24;
  v29 = v23;
  v30 = v22 & 1;
  v31 = v21;
  v32 = v20;
  v33 = v13;
  v34 = 0;
  v35 = v19 & 1;
  v36 = v18 & 1;
  v37 = v17 & 1;
  v38 = v16 & 1;
  v39 = v10 & 1;
  return sub_19756D1E8(v27);
}

unint64_t sub_1975E2684()
{
  result = qword_1EAF352C0;
  if (!qword_1EAF352C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352C0);
  }

  return result;
}

uint64_t sub_1975E2780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 47))
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

uint64_t sub_1975E27C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7OptionsV10CodingKeysOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7OptionsV10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975E298C()
{
  result = qword_1EAF352C8;
  if (!qword_1EAF352C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352C8);
  }

  return result;
}

unint64_t sub_1975E29E4()
{
  result = qword_1EAF352D0;
  if (!qword_1EAF352D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352D0);
  }

  return result;
}

unint64_t sub_1975E2A3C()
{
  result = qword_1EAF352D8;
  if (!qword_1EAF352D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352D8);
  }

  return result;
}

uint64_t CoreTip.Status.description.getter()
{
  if (*v0 == 2)
  {
    v1 = v0[1];
    v2 = sub_197616A20();
    OUTLINED_FUNCTION_16_10(v2, v3, &type metadata for CoreTip.RecordStatus, v4, v5, v6, v7, v8, v18, *v20, *&v20[4], v20[6], 2, 0);
    v9 = MEMORY[0x19A8E2A50](0xD000000000000015, 0x80000001976252D0);
    if (v1 == 10)
    {
      v16 = 0;
    }

    else
    {
      v16 = v1;
    }

    OUTLINED_FUNCTION_16_10(v9, v10, &type metadata for CoreTip.InvalidationReason, v11, v12, v13, v14, v15, v19, *v21, *&v21[4], v21[6], v16, v22);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  }

  else
  {
    v23 = 0;
    sub_197616BC0();
  }

  return v23;
}

uint64_t static CoreTip.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 10)
  {
    if (v3 != 10)
    {
      return 0;
    }
  }

  else if (v3 == 10 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1975E2C30@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CoreTip.RecordStatus.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1975E2D0C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CoreTip.InvalidationReason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t CoreTip.PresentationStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_197617190();
  MEMORY[0x19A8E3940](a1);
  return sub_1976171F0();
}

unint64_t sub_1975E2E7C()
{
  result = qword_1EAF352E0;
  if (!qword_1EAF352E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352E0);
  }

  return result;
}

unint64_t sub_1975E2ED4()
{
  result = qword_1EAF352E8;
  if (!qword_1EAF352E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352E8);
  }

  return result;
}

unint64_t sub_1975E2F2C()
{
  result = qword_1EAF352F0;
  if (!qword_1EAF352F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352F0);
  }

  return result;
}

_BYTE *_s12RecordStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s18InvalidationReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18InvalidationReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s17PresentationStyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1975E32A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - v5;
  v7 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - v14;
  if (a1)
  {
    if (*(a1 + 16) && (v16 = sub_19755C610(0x4449706974, 0xE500000000000000), (v17 & 1) != 0) && (sub_1975586C0(*(a1 + 56) + 32 * v16, v28), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050), (swift_dynamicCast() & 1) != 0))
    {
      v19 = v27[0];
      v18 = v27[1];
      sub_197579604();

      if (v29)
      {
        v20 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v6, v20 ^ 1u, 1, v7);
        if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
        {
          v25 = *(v9 + 32);
          v25(v15, v6, v7);
          v25(v13, v15, v7);
          *a2 = v19;
          *(a2 + 1) = v18;
          v26 = _s12DisplayEventVMa(0);
          v25(&a2[*(v26 + 20)], v13, v7);
          v22 = a2;
          v23 = 0;
          v21 = v26;
          return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
        }
      }

      else
      {

        sub_19755C7C8(v28, &qword_1EAF34698, &qword_197619048);
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      }

      sub_19755C7C8(v6, &qword_1EAF34988, &qword_197620CA0);
    }

    else
    {
    }
  }

  v21 = _s12DisplayEventVMa(0);
  v22 = a2;
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
}

uint64_t sub_1975E35B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_197616D20();

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

uint64_t sub_1975E3604(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_197616EF0() & 1) == 0)
  {
    return 0;
  }

  _s12DisplayEventVMa(0);

  return sub_197615A30();
}

uint64_t sub_1975E3680(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF352F8, &qword_197620A78);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975E3C50();
  sub_197617260();
  v10[15] = 0;
  sub_197616E30();
  if (!v1)
  {
    _s12DisplayEventVMa(0);
    v10[14] = 1;
    sub_197615A60();
    sub_197567E98(&qword_1ED816D90, MEMORY[0x1E6969538]);
    sub_197616E60();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1975E3818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v20 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35300, &unk_197620A80);
  OUTLINED_FUNCTION_14();
  v22 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v10 = _s12DisplayEventVMa(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975E3C50();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = v10;
  v14 = v23;
  v26 = 0;
  *v13 = sub_197616D90();
  v13[1] = v15;
  v25 = 1;
  sub_197567E98(&qword_1ED816BA0, MEMORY[0x1E6969558]);
  sub_197616DC0();
  v16 = OUTLINED_FUNCTION_10_15();
  v17(v16);
  (*(v20 + 32))(v13 + *(v19 + 20), v7, v14);
  sub_1975E3CA4(v13, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1975E3D08(v13);
}

uint64_t sub_1975E3B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1975E35B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1975E3B48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19759B614(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1975E3B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975E35B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975E3BA4(uint64_t a1)
{
  v2 = sub_1975E3C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975E3BE0(uint64_t a1)
{
  v2 = sub_1975E3C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1975E3C50()
{
  result = qword_1ED816258;
  if (!qword_1ED816258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816258);
  }

  return result;
}

uint64_t sub_1975E3CA4(uint64_t a1, uint64_t a2)
{
  v4 = _s12DisplayEventVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975E3D08(uint64_t a1)
{
  v2 = _s12DisplayEventVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1975E3D64()
{
  result = qword_1EAF35308;
  if (!qword_1EAF35308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35308);
  }

  return result;
}

unint64_t sub_1975E3DB8()
{
  result = qword_1EAF35310;
  if (!qword_1EAF35310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35310);
  }

  return result;
}

_BYTE *_s12DisplayEventV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975E3EEC()
{
  result = qword_1EAF35318;
  if (!qword_1EAF35318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35318);
  }

  return result;
}

unint64_t sub_1975E3F44()
{
  result = qword_1ED816248;
  if (!qword_1ED816248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816248);
  }

  return result;
}

unint64_t sub_1975E3F9C()
{
  result = qword_1ED816250;
  if (!qword_1ED816250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816250);
  }

  return result;
}

uint64_t sub_1975E3FF8(uint64_t a1)
{
  sub_197568F10(a1);
  sub_197579604();

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1975E62E4(v3, &qword_1EAF34698);
  }

  return 0;
}

uint64_t sub_1975E40D8()
{

  OUTLINED_FUNCTION_18_0();
  return CoreTipRecord.id.setter();
}

uint64_t CoreTipRecord.id.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v0, v1);
  OUTLINED_FUNCTION_43_2();
  sub_197615B10();
}

uint64_t sub_1975E42E0(uint64_t a1)
{
  sub_197615A60();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, a1);
  return CoreTipRecord.dateCreated.setter(v5);
}

uint64_t CoreTipRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  v4 = sub_197560338(v2, v3);
  OUTLINED_FUNCTION_15_5(v4, v5, v6, v7, v8, v4, v9, v10, v13, v14, v15, v16, v17, v18);

  sub_197615A60();
  OUTLINED_FUNCTION_13();
  return (*(v11 + 8))(a1);
}

uint64_t sub_1975E452C()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTipRecord.content.getter();
  *v0 = result;
  return result;
}

void sub_1975E4554(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CoreTipRecord.content.setter(v1);
}

void CoreTipRecord.content.setter(void *a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  v4 = sub_197560338(v2, v3);
  OUTLINED_FUNCTION_15_5(v4, v5, v6, v7, v8, v4, v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1975E4620(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59();

  if (v12)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    result = OUTLINED_FUNCTION_31_5(v1, v2, v1, MEMORY[0x1E69E6370], v3, v4, v5, v6, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9), v11[0]);
    if (result)
    {
      return v10;
    }
  }

  else
  {
    sub_1975E62E4(v11, &qword_1EAF34698);
    return 0;
  }

  return result;
}

uint64_t CoreTipRecord.__allocating_init(id:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_22_7();
  CoreTipRecord.init(id:)(v1, v2);
  return v0;
}

uint64_t sub_1975E4710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197615E70();
}

uint64_t sub_1975E482C(uint64_t a1, char a2)
{
  if (a2)
  {

    OUTLINED_FUNCTION_22_7();
    CoreTipRecord.id.setter();
  }

  else
  {
    OUTLINED_FUNCTION_22_7();
    return CoreTipRecord.id.setter();
  }
}

uint64_t sub_1975E4898(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197560338(&qword_1ED816D90, MEMORY[0x1E6969530]);
  sub_197615E70();
}

void (*CoreTipRecord.dateCreated.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreTipRecord.dateCreated.getter();
  return sub_1975E4A60;
}

void sub_1975E4A60(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CoreTipRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CoreTipRecord.dateCreated.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*CoreTipRecord.lastDisplayed.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  CoreTipRecord.lastDisplayed.getter(v6);
  return sub_1975E4BAC;
}

void sub_1975E4BAC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_19758110C(v3, v2);
    CoreTipRecord.lastDisplayed.setter(v2);
    sub_1975E62E4(v3, &qword_1EAF34988);
  }

  else
  {
    CoreTipRecord.lastDisplayed.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1975E4C2C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197615DF0();
}

void (*CoreTipRecord.content.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreTipRecord.content.getter();
  return sub_1975E4D30;
}

void sub_1975E4D30(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CoreTipRecord.content.setter(v2);
  }

  else
  {
    CoreTipRecord.content.setter(*a1);
  }
}

uint64_t sub_1975E4DC4()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTipRecord.rules.getter();
  *v0 = result;
  return result;
}

uint64_t CoreTipRecord.rules.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  v2 = sub_197560338(v0, v1);
  OUTLINED_FUNCTION_15_5(v2, v3, v4, v5, v6, v2, v7, v8, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1975E4EB8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord(0);
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197567D64();
  sub_197615E60();
}

uint64_t (*CoreTipRecord.rules.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreTipRecord.rules.getter();
  return sub_1975E4FBC;
}

uint64_t sub_1975E4FBC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CoreTipRecord.rules.setter();
  }

  CoreTipRecord.rules.setter();
}

uint64_t sub_1975E5014()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTipRecord.status.getter();
  *v0 = result;
  return result;
}

uint64_t (*CoreTipRecord.status.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = CoreTipRecord.status.getter();
  return sub_1975E50D4;
}

uint64_t (*CoreTipRecord.invalidationReason.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = CoreTipRecord.invalidationReason.getter();
  return sub_1975E5144;
}

void *CoreTipRecord.init(id:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v41 - v4;
  v5 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35320, &qword_197620CD0);
  OUTLINED_FUNCTION_0_35();
  v14 = sub_197560338(v12, v13);
  *(v2 + 56) = OUTLINED_FUNCTION_15_3(v14);
  __swift_allocate_boxed_opaque_existential_0((v2 + 24));
  sub_197615DC0();
  sub_19756985C(0, 0xE000000000000000, v2 + 24, v15, v16, v17, v18, v19, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  sub_197615A50();
  OUTLINED_FUNCTION_71((v2 + 24));
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();
  sub_197560338(&qword_1ED816D90, v20);
  sub_197615BE0();

  (*(v7 + 8))(v11, v5);
  v21 = v41;
  OUTLINED_FUNCTION_36();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v5);
  OUTLINED_FUNCTION_71((v2 + 24));
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_9();
  sub_197569718();
  sub_197615BE0();

  sub_1975E62E4(v21, &qword_1EAF34988);
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_11_13();
  KeyPath = swift_getKeyPath();
  LOWORD(v45) = 0;
  OUTLINED_FUNCTION_17_11(KeyPath);

  OUTLINED_FUNCTION_11_13();
  v26 = swift_getKeyPath();
  LOWORD(v45) = 1;
  OUTLINED_FUNCTION_17_11(v26);

  sub_197569928(0, v2 + 24, v27, v28, v29, v30, v31, v32, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v33 = sub_1976160B0();
  sub_1975699E4(v33, v2 + 24, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  sub_19756979C((v2 + 24), (v2 + 18));
  sub_197615B30();
  CoreTipRecord.id.setter();
  return v2;
}

uint64_t (*CoreTipRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t sub_1975E5660(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_5(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CoreTipRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore13CoreTipRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1975E5750(double a1, uint64_t a2)
{
  v14[7] = MEMORY[0x1E69E63B0];
  *&v14[4] = a1;
  sub_197568F10(a2);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_2_25(v4, v12);
  v6(v5);
  v7 = OUTLINED_FUNCTION_28_5();
  v8 = OUTLINED_FUNCTION_45(v7);
  sub_1975E6338(v8, v9, v2, &v13, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return sub_19757A368(v13);
}

uint64_t sub_1975E5838(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59();

  if (v7)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_38_2(v1, v2, v1, MEMORY[0x1E69E6530], v3))
    {
      return v5;
    }
  }

  else
  {
    sub_1975E62E4(v6, &qword_1EAF34698);
  }

  return 0;
}

uint64_t sub_1975E58DC(uint64_t a1)
{
  v12[7] = MEMORY[0x1E69E6530];
  v12[4] = a1;
  sub_197568F10(a1);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_5_20();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_2_25(v2, v11);
  v4(v3);
  OUTLINED_FUNCTION_48();
  sub_19757B50C(v5, v6, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return OUTLINED_FUNCTION_57();
}

void sub_1975E59BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_52(v13, v25);
  sub_197615A60();
  v14 = OUTLINED_FUNCTION_63();
  if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
  {
    v15 = sub_1975E62E4(v6, &qword_1EAF34988);
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    *(&v29 + 1) = v7;
    __swift_allocate_boxed_opaque_existential_0(&v28);
    OUTLINED_FUNCTION_18();
    v15 = (*(v16 + 32))();
  }

  v17 = sub_197568F10(v15);
  if (*(&v29 + 1))
  {
    v18 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_14();
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_6_0();
    v21 = OUTLINED_FUNCTION_62(v20);
    v22(v21);
    sub_197590034(v8, 0x696C457473726966, 0xED0000656C626967, v18, &v26, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v17 = v26;
  }

  else
  {
    sub_1975E62E4(&v28, &qword_1EAF34698);
    sub_19755C610(0x696C457473726966, 0xED0000656C626967);
    if (v23)
    {
      OUTLINED_FUNCTION_63();
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v17;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      OUTLINED_FUNCTION_69(v24);
      OUTLINED_FUNCTION_68();
      sub_19756A94C((*(v17 + 56) - 0x5FFFF35273B2D320), v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      sub_197616C10();
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    sub_1975E62E4(v27, &qword_1EAF34698);
  }

  sub_19757A368(v17);
  sub_1975E62E4(v10, &qword_1EAF34988);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_1975E5C70@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41_2();
  sub_197568F10(v5);
  sub_197579604();

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    v6 = sub_197615A60();
    v7 = OUTLINED_FUNCTION_44(v6);
    OUTLINED_FUNCTION_12_13(v1, v7 ^ 1u);
    if (!v8)
    {
      OUTLINED_FUNCTION_18();
      v9 = OUTLINED_FUNCTION_18_0();
      v10(v9);
      return OUTLINED_FUNCTION_70();
    }
  }

  else
  {
    sub_1975E62E4(v16, &qword_1EAF34698);
    v12 = sub_197615A60();
    OUTLINED_FUNCTION_36();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  }

  sub_197615A60();
  result = OUTLINED_FUNCTION_12_13(a1, 1);
  if (!v8)
  {
    return sub_1975E62E4(v1, &qword_1EAF34988);
  }

  return result;
}

void sub_1975E5DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_52(v12, v25);
  sub_197615A60();
  v13 = OUTLINED_FUNCTION_63();
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    v14 = sub_1975E62E4(v6, &qword_1EAF34988);
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    *(&v29 + 1) = v7;
    __swift_allocate_boxed_opaque_existential_0(&v28);
    OUTLINED_FUNCTION_18();
    v14 = (*(v15 + 32))();
  }

  v16 = sub_197568F10(v14);
  if (*(&v29 + 1))
  {
    v17 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_14();
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_6_0();
    v21 = v20 - v19;
    (*(v22 + 16))(v20 - v19);
    sub_197590034(v21, 0xD000000000000012, 0x80000001976253E0, v17, &v26, v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v16 = v26;
  }

  else
  {
    sub_1975E62E4(&v28, &qword_1EAF34698);
    sub_19755C610(0xD000000000000012, 0x80000001976253E0);
    if (v23)
    {
      OUTLINED_FUNCTION_63();
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v16;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      OUTLINED_FUNCTION_69(v24);
      OUTLINED_FUNCTION_68();
      sub_19756A94C((*(v16 + 56) + 32 * v7), v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      sub_197616C10();
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    sub_1975E62E4(v27, &qword_1EAF34698);
  }

  sub_19757A368(v16);
  sub_1975E62E4(v9, &qword_1EAF34988);
  OUTLINED_FUNCTION_75();
}

uint64_t CoreTipRecord.hashValue.getter()
{
  sub_197617190();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v0, v1);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975E6130(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

uint64_t sub_1975E62E4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_23_5(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13();
  (*(v5 + 8))(a1);
  return a1;
}

_OWORD *sub_1975E6338(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  v23[0] = a5;
  v8 = MEMORY[0x1E69E63B0];
  v24 = MEMORY[0x1E69E63B0];
  v9 = *a4;
  v10 = sub_19755C610(a1, a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if ((sub_197616BF0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_19755C610(a1, a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *a4;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    return sub_19756A94C(v23, v17);
  }

  else
  {
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v23, v8);
    MEMORY[0x1EEE9AC00](v19);
    v21 = (v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    sub_1975E6694(v12, a1, a2, v16, *v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }
}

_OWORD *sub_1975E6508(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x1E69E6370];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19756A94C(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1975E658C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x1E69E6530];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19756A94C(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1975E6610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_19756A94C(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_1975E6694(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x1E69E63B0];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19756A94C(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1975E6718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_19756A94C(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1975E67C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_19756A94C(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1)
{

  return sub_197616BF0();
}

uint64_t sub_1975E6930(uint64_t a1, uint64_t a2)
{
  result = sub_19757E800(a1);
  if (result)
  {
    sub_1975A4200(a1, a2);
    v5 = sub_1975F0838(a2);
    return sub_1975A3D48(a1, v5);
  }

  return result;
}

uint64_t sub_1975E698C(uint64_t a1, char a2, char a3)
{
  result = sub_19757E800(a1);
  if (result)
  {
    if (a2)
    {
      if (a2 == 1 && !a3)
      {
        result = sub_1975A3D48(a1, 15);
      }
    }

    else if (a3 == 1)
    {
      result = sub_1975A4770(a1);
    }

    if (a2 != a3)
    {

      return sub_1975A4430(a1);
    }
  }

  return result;
}

void sub_1975E6A30()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_14(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  OUTLINED_FUNCTION_5_2(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  OUTLINED_FUNCTION_0();
  v26 = v13;
  v27 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35350, &qword_197621208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B10, &qword_19761B8B8);
  OUTLINED_FUNCTION_0();
  v15 = OUTLINED_FUNCTION_8_17();
  v16 = OUTLINED_FUNCTION_9_14(v15, xmmword_197618C10);
  v17(v16);
  sub_19755F9FC(v0, v11, &qword_1EAF34B08, &qword_19761B888);
  v18 = sub_197568080(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  OUTLINED_FUNCTION_15_10(v18, MEMORY[0x1E69E7CC0]);
  v38 = v1;
  v39 = v18;
  swift_getKeyPath();
  v40 = 1;
  v41 = 0;
  OUTLINED_FUNCTION_2_26();

  v36 = v1;
  v37 = v18;
  swift_getKeyPath();
  v40 = v21[1];
  v41 = v22 & 1;
  OUTLINED_FUNCTION_2_26();

  v34 = v1;
  v35 = v18;
  swift_getKeyPath();
  LOBYTE(v40) = v23;
  OUTLINED_FUNCTION_2_26();

  v32 = v1;
  v33 = v18;
  swift_getKeyPath();
  v40 = v24;

  OUTLINED_FUNCTION_2_26();

  v30 = v1;
  v31 = v18;
  swift_getKeyPath();
  v40 = v25;

  OUTLINED_FUNCTION_2_26();

  v28 = v1;
  v29 = v18;
  swift_getKeyPath();
  v40 = v15;
  OUTLINED_FUNCTION_2_26();

  OUTLINED_FUNCTION_13_14();
  v19 = OUTLINED_FUNCTION_10_17();
  v20(v19);
  if (!v18)
  {
    sub_1976087D4(v1);
  }

  OUTLINED_FUNCTION_19_0();
}

void sub_1975E6D50()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_14(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0();
  v26 = v13;
  v27 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0();
  v15 = OUTLINED_FUNCTION_8_17();
  v16 = OUTLINED_FUNCTION_9_14(v15, xmmword_197618C10);
  v17(v16);
  sub_19755F9FC(v0, v11, &qword_1EAF34AC0, &qword_19761B6F0);
  v18 = sub_197568080(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_15_10(v18, MEMORY[0x1E69E7CC0]);
  v38 = v1;
  v39 = v18;
  swift_getKeyPath();
  v40 = 1;
  v41 = 0;
  OUTLINED_FUNCTION_2_26();

  v36 = v1;
  v37 = v18;
  swift_getKeyPath();
  v40 = v21[1];
  v41 = v22 & 1;
  OUTLINED_FUNCTION_2_26();

  v34 = v1;
  v35 = v18;
  swift_getKeyPath();
  LOBYTE(v40) = v23;
  OUTLINED_FUNCTION_2_26();

  v32 = v1;
  v33 = v18;
  swift_getKeyPath();
  v40 = v24;

  OUTLINED_FUNCTION_2_26();

  v30 = v1;
  v31 = v18;
  swift_getKeyPath();
  v40 = v25;

  OUTLINED_FUNCTION_2_26();

  v28 = v1;
  v29 = v18;
  swift_getKeyPath();
  v40 = v15;
  OUTLINED_FUNCTION_2_26();

  OUTLINED_FUNCTION_13_14();
  v19 = OUTLINED_FUNCTION_10_17();
  v20(v19);
  if (!v18)
  {
    sub_197595B38(v1);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975E7070(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v34 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_197618C10;
  (*(v18 + 16))(v20 + v19, a7, v17);
  sub_19755F9FC(a8, v13, &qword_1EAF346D8, &unk_197619120);
  v21 = sub_197568080(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  sub_197615D90();
  v45 = v8;
  v46 = v21;
  swift_getKeyPath();
  v47 = 1;
  v48 = 0;
  swift_setAtWritableKeyPath();

  v43 = v8;
  v44 = v21;
  swift_getKeyPath();
  v47 = v27;
  v48 = v28 & 1;
  swift_setAtWritableKeyPath();

  v41 = v8;
  v42 = v21;
  swift_getKeyPath();
  LOBYTE(v47) = v29;
  swift_setAtWritableKeyPath();

  v39 = v8;
  v40 = v21;
  swift_getKeyPath();
  v47 = v30;

  swift_setAtWritableKeyPath();

  v37 = v8;
  v38 = v21;
  swift_getKeyPath();
  v47 = v31;

  swift_setAtWritableKeyPath();

  v35 = v8;
  v36 = v21;
  KeyPath = swift_getKeyPath();
  v47 = v20;
  swift_setAtWritableKeyPath();

  v23 = v49;
  v24 = sub_197615C80();
  (*(v32 + 8))(v16, v33);
  if (!v23)
  {
    KeyPath = sub_19758761C(v24);
  }

  return KeyPath;
}

void sub_1975E74B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20();
  v39[0] = v20;
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v39 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v39 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_197619030;
  *(v35 + 32) = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_30();
  sub_197568080(v36, v37, MEMORY[0x1E6969548]);
  sub_197615640();
  v39[4] = v24;
  v39[5] = v22;
  sub_197615AE0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v38);
  sub_1975E7070(v39[0], 0, 1, 0, v35, MEMORY[0x1E69E7CC0], v34, v28);

  sub_19755C7C8(v28, &qword_1EAF346D8, &unk_197619120);
  (*(v31 + 8))(v34, v29);
  OUTLINED_FUNCTION_19_0();
}

void sub_1975E76FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20();
  v40[2] = v22;
  v40[0] = v20;
  v40[1] = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_5();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  OUTLINED_FUNCTION_0();
  v34 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v40 - v36;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_30();
  sub_197568080(v38, v39, MEMORY[0x1E6969548]);
  sub_197615640();
  v40[6] = v27;
  v40[7] = v25;
  sub_197615AE0();
  sub_1975C71A8();
  (*(v30 + 8))(v21, v28);
  (*(v34 + 8))(v37, v32);
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975E78E4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(sub_197615A60() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

uint64_t sub_1975E79B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a4;
  v89 = a3;
  v93 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v92 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v90 = v8 - v9;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v13 = OUTLINED_FUNCTION_5_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v88 = v14 - v15;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v20 = OUTLINED_FUNCTION_5_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  v27 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreTip(0);
  static CoreTip.modelIdentifiers.getter();
  v96 = a1;
  v97 = a2;
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_19755C404(v26, &qword_1EAF34AB8, &qword_197622080);
LABEL_7:
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_197616A20();

    v100 = 0xD000000000000012;
    v101 = 0x80000001976252F0;
    MEMORY[0x19A8E2A50](v96, v97);
    MEMORY[0x19A8E2A50](0xD000000000000016, 0x8000000197625500);
    v43 = v100;
    v44 = v101;
    sub_19759228C();
    swift_allocError();
    *v45 = v43;
    v45[1] = v44;
    return swift_willThrow();
  }

  (*(v29 + 32))(v32, v26, v27);
  (*(v29 + 16))(v23, v32, v27);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v27);
  OUTLINED_FUNCTION_9_15();
  sub_197584468();
  v37 = v36;
  v38 = v23;
  v39 = v37;
  v40 = sub_19755C404(v38, &qword_1EAF34AB8, &qword_197622080);
  v41 = v32;
  if (!v39)
  {
    (*(v29 + 8))(v32, v27);
    goto LABEL_7;
  }

  CoreTipRecord.lastDisplayed.getter(v40);
  v42 = v93;
  if (__swift_getEnumTagSinglePayload(v18, 1, v93))
  {
    sub_19755C404(v18, &qword_1EAF34988, &qword_197620CA0);
    goto LABEL_12;
  }

  v48 = v91;
  v47 = v92;
  (*(v92 + 16))(v91, v18, v42);
  sub_19755C404(v18, &qword_1EAF34988, &qword_197620CA0);
  sub_197615A00();
  *&v50 = -v49;
  v95 = v50;
  v51 = Double.seconds.getter(*&v50);
  sub_1975877EC(v51);
  sub_197617290();
  v42 = v93;
  sub_1976172B0();
  (*(v47 + 8))(v48, v42);
  if ((sub_1976172A0() & 1) == 0)
  {
LABEL_12:
    if (qword_1ED817510 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1ED817510);
    }

    swift_beginAccess();
    if (byte_1ED817549 == 1 || *(off_1ED817550 + 2) || (byte_1ED817558 & 1) != 0 || *(off_1ED817560 + 2) || byte_1ED817568)
    {
      (*(v29 + 8))(v41, v27);
    }

    v55 = *(v92 + 16);
    v56 = (v55)(v90, v89, v42);
    v57 = sub_197587914(v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1975BBEA4();
      v57 = v84;
    }

    v59 = *(v57 + 16);
    if (v59 >= *(v57 + 24) >> 1)
    {
      sub_1975BBEA4();
      v57 = v85;
    }

    *(v57 + 16) = v59 + 1;
    v60 = v93;
    (*(v92 + 32))(v57 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v59, v90, v93);
    sub_1975859D8(v57, v61, v62, v63, v64, v65);
    v67 = sub_1975785C8(v66);
    v73 = __OFADD__(v67, 1);
    v74 = v67 + 1;
    if (v73)
    {
      __break(1u);
    }

    else
    {
      sub_197585DDC(v74, v68, v69, v70, v71, v72);
      KeyPath = swift_getKeyPath();
      v76 = v88;
      (v55)(v88, v89, v60);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v60);
      sub_19758781C(KeyPath, v76);

      sub_19755C404(v76, &qword_1EAF34988, &qword_197620CA0);
      v55 = v87;
      if (qword_1ED816C98 == -1)
      {
LABEL_26:
        v80 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v80, qword_1ED816CA0);
        v98 = 0;
        v99 = 0xE000000000000000;
        sub_197616A20();

        v98 = 0x203A646928706954;
        v99 = 0xE800000000000000;
        MEMORY[0x19A8E2A50](v96, v97);
        v81 = MEMORY[0x19A8E2A50](0xD000000000000024, 0x8000000197625520);
        v102 = sub_1975785C8(v81);
        v82 = sub_197616E80();
        MEMORY[0x19A8E2A50](v82);

        sub_197558864(v98, v99, v83);

        return (*(v29 + 8))(v55, v27);
      }
    }

    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    goto LABEL_26;
  }

  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
  }

  v52 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v52, qword_1ED816CA0);
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_197616A20();
  OUTLINED_FUNCTION_2_27();
  MEMORY[0x19A8E2A50](v96, v97);
  MEMORY[0x19A8E2A50](0xD000000000000011, 0x8000000197625550);
  v98 = _ss8DurationV10TipKitCoreE7secondsSivg_0();
  v53 = sub_197616E80();
  MEMORY[0x19A8E2A50](v53);

  MEMORY[0x19A8E2A50](0xD000000000000025, 0x8000000197625570);
  sub_197558864(v100, v101, v54);

  return (*(v29 + 8))(v41, v27);
}

void sub_1975E8298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, double a7)
{
  LODWORD(v129) = a5;
  v126 = a4;
  v130 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v12 = OUTLINED_FUNCTION_5_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v127 = v13 - v14;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v15);
  v124 = v122 - v16;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v17);
  v125 = v122 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v20 = OUTLINED_FUNCTION_5_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v122 - v25;
  v27 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for CoreTip(0);
  static CoreTip.modelIdentifiers.getter();
  v133 = a1;
  v33 = a2;
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_19755C404(v26, &qword_1EAF34AB8, &qword_197622080);
LABEL_14:
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_197616A20();

    v137 = 0xD000000000000012;
    v138 = 0x80000001976252F0;
    MEMORY[0x19A8E2A50](v133, a2);
    MEMORY[0x19A8E2A50](0xD000000000000019, 0x8000000197625460);
    v42 = v137;
    v43 = v138;
    sub_19759228C();
    swift_allocError();
    *v44 = v42;
    v44[1] = v43;
    swift_willThrow();
    return;
  }

  (*(v29 + 32))(v32, v26, v27);
  (*(v29 + 16))(v23, v32, v27);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v27);
  OUTLINED_FUNCTION_9_15();
  sub_197584468();
  v38 = v37;
  sub_19755C404(v23, &qword_1EAF34AB8, &qword_197622080);
  if (!v38)
  {
    (*(v29 + 8))(v32, v27);
    goto LABEL_14;
  }

  v39 = a6;
  v40 = v38;
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  swift_beginAccess();
  v41 = v131;
  if (byte_1ED817549 == 1 || *(off_1ED817550 + 2) || (byte_1ED817558 & 1) != 0 || *(off_1ED817560 + 2) || byte_1ED817568)
  {
    (*(v29 + 8))(v32, v27);
LABEL_12:

    return;
  }

  v45 = OUTLINED_FUNCTION_12_14();
  v46 = OUTLINED_FUNCTION_12_14();
  v122[1] = v29;
  v123 = v39;
  v122[0] = v32;
  if (v47 / 1.0e18 + v45 <= a7)
  {
    goto LABEL_20;
  }

  v48 = sub_197587914(v46);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v130;
  v122[-2] = v130;
  v50 = sub_1975F73D8(sub_1975E8E60, &v122[-4], v48);
  v131 = v41;

  if (!v50)
  {
    v41 = v131;
    v40 = v38;
LABEL_20:
    v59 = OUTLINED_FUNCTION_12_14();
    v60 = OUTLINED_FUNCTION_12_14();
    v62 = v33;
    v63 = v133;
    if (v61 / 1.0e18 + v59 <= a7)
    {
      v64 = sub_19757F490(v60);
      sub_1975E5750(v64 + a7, v65);
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
      }

      v66 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v66, qword_1ED816CA0);
      OUTLINED_FUNCTION_4_31();
      sub_197616A20();
      OUTLINED_FUNCTION_2_27();
      MEMORY[0x19A8E2A50](v63, v33);
      v67 = MEMORY[0x19A8E2A50](0xD00000000000001CLL, 0x80000001976254A0);
      sub_19757F490(v67);
      sub_1976166C0();
      sub_197558864(v135, v136, v68);
    }

    if ((v129 & 1) == 0)
    {
      v69 = *&v126;
      if (sub_19757F490(v60) >= v69)
      {
        v60 = sub_1975E92FC(9);
        if (v41)
        {
          goto LABEL_41;
        }
      }
    }

    v70 = sub_1975785C8(v60);
    v71 = sub_19757F6B4(v70);
    if (v70 >= v71)
    {
      v71 = sub_1975E92FC(4);
      v72 = v130;
      if (v41)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v72 = v130;
    }

    v73 = sub_1975879D8(v71);
    if (v73)
    {
      if (qword_1ED816B18 != -1)
      {
        v73 = swift_once();
      }

      if (qword_1ED81D1C0)
      {
        v73 = sub_197613860(v63, v33);
      }
    }

    v74 = sub_19757E800(v73);
    if (v74 & 1) != 0 && (sub_19757E800(v74))
    {
      sub_1975A3CEC(v40);
    }

    v75 = v127;
    sub_19757E684(v127);
    v76 = sub_197615A60();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v76);
    sub_19755C404(v75, &qword_1EAF34988, &qword_197620CA0);
    if (EnumTagSinglePayload == 1)
    {
      sub_1975EA4C4(v63, v62, v72, v123);
      if (v41)
      {
        goto LABEL_41;
      }

      v132 = v40;
    }

    else
    {
      v132 = v40;
    }

    v91 = v62;
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    }

    v114 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v114, qword_1ED816CA0);
    OUTLINED_FUNCTION_4_31();
    sub_197616A20();

    v135 = 0x203A646928706954;
    v136 = 0xE800000000000000;
    MEMORY[0x19A8E2A50](v63, v62);
    MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197625480);
LABEL_54:
    sub_197558864(v135, v136, v113);

    v115 = static CoreTip.tips.getter();
    v116 = sub_197580F6C(v63, v91, v115);

    if (v116)
    {
      v118 = sub_19757F490(v117);
      sub_1975D53DC(v118);

      v119 = OUTLINED_FUNCTION_3_28();
      v120(v119);
      return;
    }

LABEL_41:
    v78 = OUTLINED_FUNCTION_3_28();
    v79(v78);
    goto LABEL_12;
  }

  v129 = v122;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v122[-2] = v49;
  v132 = v38;
  v53 = sub_197587914(v52);
  v54 = v131;
  v55 = sub_1975E78E4(sub_1975E8E80, &v122[-4], v53);
  if (v56)
  {
    v57 = sub_197615A60();
    v58 = v125;
    __swift_storeEnumTagSinglePayload(v125, 1, 1, v57);
    goto LABEL_47;
  }

  v80 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1975E8DEC();
    v53 = v121;
  }

  v131 = v54;
  v81 = *(v53 + 16);
  if (v80 < v81)
  {
    v82 = v81 - 1;
    v83 = sub_197615A60();
    v84 = *(v83 - 8);
    v85 = *(v84 + 72);
    v86 = v53 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + v85 * v80;
    v87 = v80;
    v58 = v125;
    (*(v84 + 32))(v125, v86, v83);
    sub_1975BC360(v86 + v85, v82 - v87, v86);
    *(v53 + 16) = v82;
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v83);
LABEL_47:
    v91 = v33;
    sub_19755C404(v58, &qword_1EAF34988, &qword_197620CA0);
    sub_1975859D8(v53, v92, v93, v94, v95, v96);
    v98 = sub_1975785C8(v97);
    v104 = __OFSUB__(v98, 1);
    v105 = v98 - 1;
    v63 = v133;
    if (v104)
    {
      __break(1u);
    }

    else
    {
      sub_197585DDC(v105, v99, v100, v101, v102, v103);
      KeyPath = swift_getKeyPath();
      v107 = sub_197587914(KeyPath);
      v108 = v124;
      sub_1975A0E9C(v107, v124);

      sub_19758781C(KeyPath, v108);

      sub_19755C404(v108, &qword_1EAF34988, &qword_197620CA0);
      if (qword_1ED816C98 == -1)
      {
LABEL_49:
        v109 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v109, qword_1ED816CA0);
        OUTLINED_FUNCTION_4_31();
        sub_197616A20();
        OUTLINED_FUNCTION_2_27();
        MEMORY[0x19A8E2A50](v63, v33);
        MEMORY[0x19A8E2A50](0xD00000000000001ALL, 0x80000001976254C0);
        v110 = sub_197617280();
        MEMORY[0x19A8E2A50](v110);

        v111 = MEMORY[0x19A8E2A50](0xD00000000000001ELL, 0x80000001976254E0);
        v134 = sub_1975785C8(v111);
        v112 = sub_197616E80();
        MEMORY[0x19A8E2A50](v112);

        goto LABEL_54;
      }
    }

    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    goto LABEL_49;
  }

  __break(1u);
}

uint64_t sub_1975E8E00(uint64_t a1, uint64_t a2)
{
  sub_197615A60();
  sub_1975E8EB0();
  return sub_1976161A0() & 1;
}

unint64_t sub_1975E8EB0()
{
  result = qword_1ED8167B8;
  if (!qword_1ED8167B8)
  {
    sub_197615A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8167B8);
  }

  return result;
}

unint64_t sub_1975E8F08()
{
  result = qword_1ED8157A0;
  if (!qword_1ED8157A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35360, &qword_1976213F0);
    sub_1975826D0();
    sub_19758275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8157A0);
  }

  return result;
}

void *sub_1975E8F94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1975BC0A4(*(a1 + 16), 0);
  sub_1975EA294();
  v4 = v3;
  sub_1975A4D3C(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1975E9024(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24[-v10];
  v12 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CoreTip(0);
  static CoreTip.modelIdentifiers.getter();
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19756E748(v11);
  }

  else
  {
    (*(v14 + 32))(v17, v11, v12);
    (*(v14 + 16))(v9, v17, v12);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
    OUTLINED_FUNCTION_9_15();
    sub_197584468();
    v19 = v18;
    sub_19756E748(v9);
    if (v19)
    {
      sub_1975E92FC(v25);
      (*(v14 + 8))(v17, v12);
    }

    (*(v14 + 8))(v17, v12);
  }

  OUTLINED_FUNCTION_1_10();
  sub_197616A20();

  v26 = 0xD000000000000025;
  v27 = 0x8000000197625670;
  MEMORY[0x19A8E2A50](a1, a2);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  v21 = v26;
  v22 = v27;
  sub_19759228C();
  swift_allocError();
  *v23 = v21;
  v23[1] = v22;
  return swift_willThrow();
}

uint64_t sub_1975E92FC(uint64_t a1)
{
  if (a1 == 3)
  {
    v4 = sub_1975E5838(a1);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
LABEL_12:
      v21 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v21, qword_1ED816CA0);
      sub_197616A20();
      v22 = MEMORY[0x19A8E2A50](0x203A646928706954, 0xE800000000000000);
      CoreTipRecord.id.getter(v22, v23, v24, v25, v26, v27, v28, v29, 0, 0xE000000000000000, v57, v58, v59, v60, v61, v62, v63, v64);
      MEMORY[0x19A8E2A50]();

      MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x80000001976255E0);
      HIBYTE(v58) = a1;
      sub_197616BC0();
      sub_197558864(v55, v56, v30);

      goto LABEL_13;
    }

    sub_1975E58DC(v6);
    result = sub_197615C20();
    if (result)
    {
      result = sub_197615C70();
      if (v2)
      {
        return result;
      }
    }

    if (sub_19757E800(result))
    {
      sub_1975A410C(v1);
    }
  }

  if (CoreTipRecord.status.getter() != 2)
  {
    CoreTipRecord.status.setter();
    CoreTipRecord.invalidationReason.setter();
    v8 = type metadata accessor for CoreTip(0);
    CoreTipRecord.id.getter(v8, v9, v10, v11, v12, v13, v14, v15, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    v17 = v16;
    v19 = v18;
    v20 = CoreTipRecord.status.getter();
    sub_19757EBE4(v17, v19, v20, a1);

    if (sub_197615C20())
    {
      result = sub_197615C70();
      if (v2)
      {
        return result;
      }
    }

    result = sub_1975E6930(v1, a1);
    if (v2)
    {
      return result;
    }

    if (qword_1ED816C98 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (sub_197592490())
  {
    v31 = [objc_opt_self() standardUserDefaults];
    CoreTipRecord.id.getter(v31, v32, v33, v34, v35, v36, v37, v38, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_1975E9D50(0xD000000000000016, 0x8000000197625600, v39, v40, sub_1975EA398);
  }

  v41 = type metadata accessor for CoreTip(0);
  CoreTipRecord.id.getter(v41, v42, v43, v44, v45, v46, v47, v48, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v50 = v49;
  v52 = v51;
  v53 = static CoreTip.tips.getter();
  v54 = sub_197580F6C(v50, v52, v53);

  if (v54)
  {
    sub_19757FF94();
  }

  return result;
}

uint64_t sub_1975E9648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v44 - v11;
  v13 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreTip(0);
  v19 = *(a4 + 32);
  v47 = a3;
  v48 = a1;
  v51 = a4;
  v45 = v19;
  v46 = a4 + 32;
  v19(a3, a4);
  static CoreTip.modelIdentifiers.getter();
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_19756E748(v12);
LABEL_8:
    v30 = v51;
    OUTLINED_FUNCTION_1_10();
    sub_197616A20();

    v49 = 0xD000000000000020;
    v50 = 0x8000000197625620;
    v31 = v45(v47, v30);
    MEMORY[0x19A8E2A50](v31);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v32 = v49;
    v33 = v50;
    sub_19759228C();
    swift_allocError();
    *v34 = v32;
    v34[1] = v33;
    return swift_willThrow();
  }

  (*(v15 + 32))(v18, v12, v13);
  (*(v15 + 16))(v10, v18, v13);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  OUTLINED_FUNCTION_9_15();
  sub_197584468();
  v21 = v20;
  sub_19756E748(v10);
  if (!v21)
  {
    v28 = OUTLINED_FUNCTION_7_16();
    v29(v28);
    goto LABEL_8;
  }

  v22 = CoreTipRecord.status.getter();
  if (v22 == 2)
  {
    v26 = v44[1];
    sub_1975E9ADC(v22, v23, v24, v25);
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_7_16();
      v39(v27, v38);
    }

    else
    {
      v37 = v47;
      sub_1975782A0();
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
      }

      v41 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v41, qword_1ED816CA0);
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();

      v49 = 0x203A646928706954;
      v50 = 0xE800000000000000;
      v42 = v45(v37, v51);
      MEMORY[0x19A8E2A50](v42);

      MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197625650);
      sub_197558864(v49, v50, v43);

      return (*(v15 + 8))(v18, v13);
    }
  }

  else
  {
    v35 = OUTLINED_FUNCTION_7_16();
    v36(v35);
  }
}

void sub_1975E9D84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  sub_1975578B4(a1, a2);
  if (!v5)
  {
    v5 = sub_197589344(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;
  a3(&v8);
  sub_1975E8F94(v8);
  v6 = sub_197616450();

  v7 = sub_1976161B0();
  [v3 setObject:v6 forKey:v7];
}

uint64_t sub_1975E9E58(uint64_t a1, unint64_t a2, unint64_t a3)
{

  sub_197575220(&v6, a2, a3);
}

uint64_t sub_1975E9EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19761479C(a2, a3);
}

void *sub_1975E9F00(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_21:
    *result = a4;
    result[1] = v5;
    result[2] = ~v6;
    result[3] = v11;
    result[4] = v8;
    return v4;
  }

  v4 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v6) >> 6;
    while (1)
    {
      if (v10 >= v4)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v8)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v8 = 0;
            v4 = v10;
            goto LABEL_19;
          }

          v8 = *(v5 + 8 * v14);
          ++v11;
          if (v8)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1975586C0(*(a4 + 56) + 32 * v16, &v26);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      v22 = v26;
      v21 = v27;
      v29 = v26;
      v30 = v27;
      v28 = v25;
      *v9 = v25;
      v9[1] = v22;
      v9[2] = v21;
      if (v13 == v4)
      {
        break;
      }

      v9 += 3;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v6 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1975EA098()
{
  OUTLINED_FUNCTION_6_15();
  v4 = v1 + 64;
  OUTLINED_FUNCTION_0_36();
  if (!v6)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_17:
    OUTLINED_FUNCTION_2_28(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_35();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_3_29();
      if (v12)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1975EA184()
{
  OUTLINED_FUNCTION_6_15();
  v5 = v2 + 64;
  OUTLINED_FUNCTION_0_36();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_17:
    OUTLINED_FUNCTION_2_28(v9);
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_35();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      *v1 = *(*(v0 + 56) + ((v12 << 9) | (8 * v13)));
      if (v11 == v8)
      {

        v9 = v12;
        goto LABEL_17;
      }

      ++v1;

      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1975EA294()
{
  OUTLINED_FUNCTION_6_15();
  v4 = v1 + 56;
  OUTLINED_FUNCTION_0_36();
  if (!v6)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_17:
    OUTLINED_FUNCTION_2_28(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_35();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_3_29();
      if (v12)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1975EA4C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v58 = a4;
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  v17 = sub_197615F50();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreTip(0);
  static CoreTip.modelIdentifiers.getter();
  v64 = a1;
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_19755C404(v16, &qword_1EAF34AB8, &qword_197622080);
LABEL_8:
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_197616A20();

    v62 = 0xD000000000000023;
    v63 = 0x80000001976256A0;
    v29 = OUTLINED_FUNCTION_8_19();
    MEMORY[0x19A8E2A50](v29);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v30 = v62;
    v31 = v63;
    sub_19759228C();
    swift_allocError();
    *v32 = v30;
    v32[1] = v31;
    return swift_willThrow();
  }

  (*(v18 + 32))(v20, v16, v17);
  (*(v18 + 16))(v14, v20, v17);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  sub_197584468();
  v22 = v21;
  sub_19755C404(v14, &qword_1EAF34AB8, &qword_197622080);
  if (!v22)
  {
    (*(v18 + 8))(v20, v17);
    goto LABEL_8;
  }

  v53 = v17;
  v58 = v20;
  v59 = v18;
  v23 = static CoreTip.tips.getter();
  v24 = OUTLINED_FUNCTION_8_19();
  v26 = sub_197580F6C(v24, v25, v23);

  if (!v26)
  {
    v28 = sub_197615A60();
    v27 = v57;
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v28);
LABEL_10:
    sub_19755C404(v27, &qword_1EAF34988, &qword_197620CA0);
    v34 = v56;
    sub_19757E684(v56);
    sub_197615A60();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v28);
    sub_19755C404(v34, &qword_1EAF34988, &qword_197620CA0);
    if (EnumTagSinglePayload == 1)
    {
      if (qword_1ED817510 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_1ED817510);
      }

      swift_beginAccess();
      if ((byte_1ED817549 & 1) == 0 && !*(off_1ED817550 + 2) && (byte_1ED817558 & 1) == 0 && !((*(off_1ED817560 + 2) != 0) | byte_1ED817568 & 1))
      {
        v41 = v55;
        (*(*(v28 - 8) + 16))(v55, v54, v28);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v28);
        sub_1975E59BC(v41, v42, v43, v44, v45, v46);
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_3_2();
          swift_once();
        }

        v47 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v47, qword_1ED816CA0);
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_197616A20();

        OUTLINED_FUNCTION_9_12();
        v60 = v48;
        v61 = v49;
        v50 = OUTLINED_FUNCTION_8_19();
        MEMORY[0x19A8E2A50](v50);
        MEMORY[0x19A8E2A50](0xD000000000000018, 0x80000001976256D0);
        sub_197558864(v60, v61, v51);
      }
    }

    goto LABEL_14;
  }

  v27 = v57;
  sub_19758117C(v57);

  v28 = sub_197615A60();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    goto LABEL_10;
  }

  sub_19755C404(v27, &qword_1EAF34988, &qword_197620CA0);
LABEL_14:
  v36 = static CoreTip.tips.getter();
  v37 = OUTLINED_FUNCTION_8_19();
  v39 = sub_197580F6C(v37, v38, v36);

  if (v39)
  {
    v40 = v55;
    sub_19757E684(v55);
    sub_197587A7C(v40);

    return (*(v59 + 8))(v58, v53);
  }

  else
  {
    (*(v59 + 8))(v58, v53);
  }
}

void sub_1975EAB60(uint64_t a1)
{
  v2 = v1;
  sub_19755FF40(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  if ((sub_197615E90() & 1) == 0)
  {
    if (sub_19757649C())
    {

      sub_1975D3A98();
    }

    v4 = type metadata accessor for CoreRule();
    v5 = sub_19757536C();
    CoreRuleRecord.id.getter(v5, v6, v7, v8, v9, v10, v11, v12, v62, v65, v68, v71, v74, v76, v81, v83, v85, v87);
    v15 = sub_19757F524(v13, v14, v5);

    if (v15)
    {
      CoreRuleRecord.id.getter(v16, v17, v18, v19, v20, v21, v22, v23, v63, v66, v69, v72, v75, v77, v82, v84, v86, v88);
      v25 = v24;
      v27 = v26;
      v78 = sub_19757536C();
      sub_19761479C(v25, v27);

      sub_19757AAD8(v78);
    }

    v28 = sub_1975D3C58(v16);
    v70 = a1;
    if (v28)
    {
      v29 = v28;
      v30 = sub_197567E4C(v28);
      if (v30)
      {
        v35 = v30;
        v64 = v4;
        v67 = v1;
        v79 = MEMORY[0x1E69E7CC0];
        sub_197553D0C(0, v30 & ~(v30 >> 63), 0, v31, v32, v33, v34);
        if (v35 < 0)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v36 = 0;
        v37 = v79;
        v73 = v29 & 0xC000000000000001;
        v38 = v29;
        do
        {
          if (v73)
          {
            MEMORY[0x19A8E31E0](v36, v29);
          }

          else
          {
          }

          CoreRuleRecord.id.getter(v39, v40, v41, v42, v43, v44, v45, v46, v64, v67, v70, v73, v75, v79, v82, v84, v86, v88);
          v48 = v47;
          v50 = v49;

          v79 = v37;
          v56 = *(v37 + 16);
          v55 = *(v37 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_197553D0C(v55 > 1, v56 + 1, 1, v51, v52, v53, v54);
          }

          ++v36;
          *(v37 + 16) = v56 + 1;
          v57 = v37 + 16 * v56;
          *(v57 + 32) = v48;
          *(v57 + 40) = v50;
          v29 = v38;
        }

        while (v35 != v36);

        v2 = v67;
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      if (*(v37 + 16))
      {
        v80 = sub_19757536C();
        sub_1975EAF40(v37);

        sub_19757AAD8(v80);
      }

      else
      {
      }
    }

    v58 = sub_1975D3C58(v28);
    if (!v58)
    {
LABEL_33:
      sub_1975FF5C0();
      return;
    }

    v59 = v58;
    v60 = sub_197567E4C(v58);
    for (i = 0; ; ++i)
    {
      if (v60 == i)
      {

        goto LABEL_33;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8E31E0](i, v59);
      }

      else
      {
        if (i >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      type metadata accessor for CoreRuleRecord(0);
      sub_19755FF40(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
      if ((sub_197615E90() & 1) == 0)
      {
        sub_1975FF5C0();
        if (v2)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }
}

uint64_t sub_1975EAF40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_19761479C(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void *sub_1975EB024(uint64_t a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_19755FF40(a3, a4, a5);
  if (sub_197615DD0())
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v6 = 0xD000000000000036;
    v6[1] = 0x8000000197625740;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1975EB128()
{
  OUTLINED_FUNCTION_5_22();
  type metadata accessor for CoreTip(0);
  v0 = sub_197580E74();
  CoreTipRecord.id.getter(v0, v1, v2, v3, v4, v5, v6, v7, v70, v75, v80, v84, v88, v93, v98, v103, v108, v113);
  if (!*(v0 + 16))
  {

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_6_17();
  v10 = sub_19755C610(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_5:

    v13 = 4;
    goto LABEL_6;
  }

  v13 = *(*(v0 + 56) + 2 * v10);

LABEL_6:
  result = CoreTipRecord.status.getter();
  if (v13 == 4 || v13 != result)
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    }

    v15 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v15, qword_1ED816CA0);
    sub_197616A20();
    OUTLINED_FUNCTION_4_32();
    CoreTipRecord.id.getter(v16, v17, v18, v19, v20, v21, v22, v23, v71, v76, 0, 0xE000000000000000, v89, v94, v99, v104, v109, v114);
    MEMORY[0x19A8E2A50]();

    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD000000000000028);
    v24 = sub_197580E74();
    CoreTipRecord.id.getter(v24, v25, v26, v27, v28, v29, v30, v31, v72, v77, v81, v85, v90, v95, v100, v105, v110, v115);
    if (*(v24 + 16))
    {
      v34 = sub_19755C610(v32, v33);
      v36 = v35;

      if (v36)
      {
        v37 = *(*(v24 + 56) + 2 * v34);

        goto LABEL_15;
      }
    }

    else
    {
    }

    HIBYTE(v37) = 0;
LABEL_15:
    HIBYTE(v78) = HIBYTE(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35388, &qword_197621440);
    v38 = sub_197616200();
    MEMORY[0x19A8E2A50](v38);

    OUTLINED_FUNCTION_8_20();
    BYTE6(v78) = CoreTipRecord.status.getter();
    sub_197616BC0();
    OUTLINED_FUNCTION_6_17();
    sub_197558864(v39, v40, v41);

    CoreTipRecord.id.getter(v42, v43, v44, v45, v46, v47, v48, v49, v73, v78, v82, v86, v91, v96, v101, v106, v111, v116);
    v51 = v50;
    v53 = v52;
    v54 = CoreTipRecord.status.getter();
    v55 = CoreTipRecord.invalidationReason.getter();
    sub_19757EBE4(v51, v53, v54, v55);

    CoreTipRecord.id.getter(v56, v57, v58, v59, v60, v61, v62, v63, v74, v79, v83, v87, v92, v97, v102, v107, v112, v117);
    v65 = v64;
    v67 = v66;
    v68 = static CoreTip.tips.getter();
    v69 = sub_197580F6C(v65, v67, v68);

    if (v69)
    {
      sub_19757FF94();
    }
  }

  return result;
}

uint64_t sub_1975EB408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!*(a2 + 16))
  {
    return sub_197577DBC(2);
  }

  result = sub_1975D3C58(a1);
  if (result)
  {
    v14 = result;
    MEMORY[0x1EEE9AC00](result);
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a2;
    v15[5] = v7;
    v15[6] = a3;
    v15[7] = a4;
    sub_197576710(sub_1975EB6B4, v15, v14);
  }

  return result;
}

uint64_t sub_1975EB4F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v30 = a3;
  v31 = a6;
  v9 = *a1;
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  if (v10)
  {
    while (1)
    {
      sub_19755A560(v11, &v32);
      v12 = v34;
      v13 = v35;
      __swift_project_boxed_opaque_existential_1Tm(&v32, v34);
      v14 = (*(v13 + 24))(v12, v13);
      v16 = v15;
      CoreRuleRecord.id.getter(v14, v15, v17, v18, v19, v20, v21, v22, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v36[2]);
      if (v14 == v24 && v16 == v23)
      {
        break;
      }

      v26 = sub_197616EF0();

      if (v26)
      {
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v32);
      v11 += 40;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    sub_1975558C4(&v32, v36);
    v27 = v37;
    v28 = v38;
    __swift_project_boxed_opaque_existential_1Tm(v36, v37);
    (*(v28 + 40))(&v39, v27, v28);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    if (*(&v40 + 1))
    {
      sub_1975558C4(&v39, v42);
      sub_197576F6C(v9, v42, a4, a5, v31, v43);
      return __swift_destroy_boxed_opaque_existential_0Tm(v42);
    }
  }

  else
  {
LABEL_8:
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
  }

  return sub_197577AD0(&v39);
}

uint64_t Date.subtracting(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_33();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();

  return _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
}

uint64_t Date.adding(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_33();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();

  return _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
}

uint64_t Date.durationUntilNow.getter(uint64_t a1)
{
  sub_197615A00();
  v2 = Double.seconds.getter(-v1);
  v3 = sub_1975877EC(v2);
  OUTLINED_FUNCTION_0_38(v11, v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  sub_197617290();
  OUTLINED_FUNCTION_2_31();

  return sub_1976172B0();
}

uint64_t Date.durationSinceNow.getter(uint64_t a1)
{
  sub_197615A00();
  v2 = Double.seconds.getter(v1);
  v3 = sub_1975877EC(v2);
  OUTLINED_FUNCTION_0_38(v11, v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  sub_197617290();
  OUTLINED_FUNCTION_2_31();

  return sub_1976172B0();
}

uint64_t static Date.epoch.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED816488 != -1)
  {
    swift_once();
  }

  v2 = sub_197615A60();
  v3 = __swift_project_value_buffer(v2, qword_1ED816490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Date.byAdding(calendarComponent:count:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_33();
  v4 = sub_197615AA0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_37();
  sub_197615A80();
  return (*(v6 + 8))(v3, v4);
}

uint64_t static Date.bySubtracting(calendarComponent:count:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_33();
  v5 = sub_197615AA0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  result = OUTLINED_FUNCTION_1_37();
  if (a2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    sub_197615A80();
    return (*(v7 + 8))(v3, v5);
  }

  return result;
}

uint64_t sub_1975EBB28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, char *, void, void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a2;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v25 - v10);
  v12 = *(v9 + 48);
  v13 = (&v25 + *(v9 + 64) - v10);
  *v11 = sub_197615F80();
  v11[1] = v14;
  v15 = sub_197615D10();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v11 + v12, a1, v15);
  *v13 = sub_197615F60();
  v13[1] = v17;
  sub_1975EBD48(v11, v8);
  v18 = *(v5 + 48);
  v19 = v29;
  v20 = v28(*v8, *(v8 + 1), &v8[v18], *&v8[*(v5 + 64)], *&v8[*(v5 + 64) + 8]);
  v29 = v19;
  if (v19)
  {
    sub_1975EBDB8(v11);

    return (*(v16 + 8))(&v8[v18], v15);
  }

  else
  {
    v22 = v20;

    (*(v16 + 8))(&v8[v18], v15);
    if (v22)
    {
      v23 = v26;
      sub_1975EBE20(v11, v26);
      v24 = 0;
    }

    else
    {
      sub_1975EBDB8(v11);
      v24 = 1;
      v23 = v26;
    }

    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v5);
  }
}

uint64_t sub_1975EBD48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975EBDB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975EBE20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DeviceProfile.subscript.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  sub_19758C664(v1 + v5, v4);
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  return sub_19758CA58(v4, v6);
}

uint64_t sub_1975EBF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_9();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  v19 = v4 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  v20 = type metadata accessor for DeviceProfile.ProfileContent(0);
  v21 = v19 + *(v20 + 36);
  v22 = _s12DisplayEventVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v36 = a2;
  if (EnumTagSinglePayload)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    if (qword_1ED816488 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v12, qword_1ED816490);
    v25 = *(v14 + 16);
    v25(v18, v24, v12);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_19755C7C8(v11, &qword_1EAF34988, &qword_197620CA0);
    }
  }

  else
  {
    v25 = *(v14 + 16);
    v25(v11, v21 + *(v22 + 20), v12);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    (*(v14 + 32))(v18, v11, v12);
  }

  v26 = v37;
  v27 = sub_1976159F0();
  result = (*(v14 + 8))(v18, v12);
  if (v27)
  {
    v25(v3 + *(v22 + 20), v26, v12);
    v30 = v35;
    v29 = v36;
    *v3 = v35;
    v3[1] = v29;
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v22);
    OUTLINED_FUNCTION_43_0(v19, &v38);
    v31 = *(v20 + 36);

    sub_1975ED0DC(v3, v19 + v31);
    swift_endAccess();
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v32 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v32, qword_1ED816CA0);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_197616A20();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD000000000000035);
    MEMORY[0x19A8E2A50](v30, v29);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864(v38, v39, v33);
  }

  return result;
}

void sub_1975EC338()
{
  v1 = type metadata accessor for DeviceProfile.ProfileContent(0);
  v2 = OUTLINED_FUNCTION_5_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v5 = v4 - v3;
  v6 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  sub_19758C664(v0 + v6, v5);
  v7 = sub_1975ECB70(v5);
  v9 = v8;
  OUTLINED_FUNCTION_0_32();
  sub_19758CA58(v5, v10);
  if (v9 >> 60 == 15)
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v11 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v11, qword_1ED816CA0);
    OUTLINED_FUNCTION_13_12();
    sub_197558864(0xD000000000000026, v12, v13);
  }

  else
  {
    sub_1975ED2F4(v7, v9);
    sub_197576558(v7, v9);
  }
}

void sub_1975EC474(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  if (*(*(v5 + *(type metadata accessor for DeviceProfile.ProfileContent(0) + 48)) + 16))
  {

    sub_19755C610(a1, a2);
    v7 = v6;

    if (v7)
    {
      OUTLINED_FUNCTION_43_0(v5, &v8);
      sub_1975ED21C(a1, a2);
      swift_endAccess();
      sub_1975EC338();
    }
  }
}

void sub_1975EC548(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v43 = _s12DisplayEventVMa(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = (v13 - v12);
  v15 = type metadata accessor for DeviceProfile.ProfileContent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v19 = (v18 - v17);
  v44 = v3;
  v20 = (v3 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content);
  swift_beginAccess();
  sub_19758C664(v20, v19);
  v21 = static DeviceProfile.ProfileContent.== infix(_:_:)(v19, a1);
  OUTLINED_FUNCTION_0_32();
  sub_19758CA58(v19, v22);
  if ((v21 & 1) == 0)
  {
    v23 = a2 == 0x6C7070612E6D6F63 && a3 == 0xEF64737069742E65;
    if (v23 || (OUTLINED_FUNCTION_14_8(), (sub_197616EF0() & 1) != 0))
    {
      v20[1] = a1[1];
      v20[v15[10]] = a1[v15[10]];
      if (qword_1ED817298 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1ED817298);
      }

      if (byte_1ED8172A4)
      {
        v24 = 1;
      }

      else
      {
        v24 = *a1;
      }

      OUTLINED_FUNCTION_43_0(v20, v45);
      *v20 = v24;
      *&v20[v15[11]] = *&a1[v15[11]];
      *&v20[v15[12]] = *&a1[v15[12]];
      v25 = v15[6];

      sub_1975ED14C(&a1[v25], &v20[v25]);
      v26 = v15[7];
      v28 = *&a1[v26];
      v27 = *&a1[v26 + 8];
      v29 = &v20[v26];
      *v29 = v28;
      *(v29 + 1) = v27;
      v30 = v15[8];

      sub_1975ED14C(&a1[v30], &v20[v30]);
      swift_endAccess();
    }

    v31 = *&a1[v15[12]];

    sub_1975F0A54(v32, v31);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      *&v20[v15[12]] = v31;
    }

    sub_19755F9FC(&a1[v15[9]], v10, &qword_1EAF35260, &qword_1976202C8);
    v35 = v43;
    if (__swift_getEnumTagSinglePayload(v10, 1, v43) == 1)
    {
      sub_19755C7C8(v10, &qword_1EAF35260, &qword_1976202C8);
    }

    else
    {
      sub_1975ED1BC(v10, v14, _s12DisplayEventVMa);
      sub_1975EBF74(*v14, v14[1], v14 + *(v35 + 20));
      sub_19758CA58(v14, _s12DisplayEventVMa);
    }

    if (qword_1ED817510 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1ED817510);
    }

    OUTLINED_FUNCTION_35();
    swift_beginAccess();
    if (qword_1ED817578)
    {
      v36 = qword_1ED817570;
      v37 = qword_1ED817578;
    }

    else
    {
      if (qword_1ED8174D8 != -1)
      {
        swift_once();
      }

      if (qword_1ED81D218)
      {
        v36 = qword_1ED81D210;
        v37 = qword_1ED81D218;
      }

      else
      {
        type metadata accessor for CFBundle(0);
        v38 = sub_1975A5740();
        if (v39)
        {
          v36 = v38;
          v37 = v39;
        }

        else
        {
          v36 = 0;
          v37 = 0xE000000000000000;
        }
      }
    }

    OUTLINED_FUNCTION_14_8();
    if (v36 == v40 && v37 == 0xEF64737069742E65)
    {
    }

    else
    {
      v42 = sub_197616EF0();

      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    sub_1975EC338();
  }
}

void sub_1975EC9F0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_9();
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  if (byte_1ED817580 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1ED817298);
    }

    if ((byte_1ED8172A5 & 1) == 0)
    {
      v4 = _s12DisplayEventVMa(0);
      __swift_storeEnumTagSinglePayload(v0, 1, 1, v4);
      v5 = v1 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
      OUTLINED_FUNCTION_43_0(v5, v10);
      v6 = type metadata accessor for DeviceProfile.ProfileContent(0);
      sub_1975ED0DC(v0, v5 + *(v6 + 36));
      swift_endAccess();
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_3_2();
        swift_once();
      }

      v7 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v7, qword_1ED816CA0);
      OUTLINED_FUNCTION_13_12();
      sub_197558864(0xD00000000000002ALL, v8, v9);
    }
  }
}

uint64_t sub_1975ECB70(uint64_t a1)
{
  sub_1976156A0();
  swift_allocObject();
  sub_197615690();
  type metadata accessor for DeviceProfile.ProfileContent(0);
  sub_197584F28(&qword_1ED815E68, type metadata accessor for DeviceProfile.ProfileContent, &protocol conformance descriptor for DeviceProfile.ProfileContent);
  v1 = sub_197615680();

  return v1;
}

uint64_t DeviceProfile.deinit()
{
  v1 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_url;
  sub_197615970();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);

  OUTLINED_FUNCTION_0_32();
  sub_19758CA58(v0 + v3, v4);
  return v0;
}

uint64_t DeviceProfile.__deallocating_deinit()
{
  DeviceProfile.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static DeviceProfile.updateTipsdData(_:)(uint64_t a1)
{
  v1 = type metadata accessor for DeviceProfile.ProfileContent(0);
  v2 = OUTLINED_FUNCTION_5_2(v1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED81D1D0;
  if (qword_1ED81D1D0)
  {

    sub_1975F103C(v9, v7);
    v10 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
    OUTLINED_FUNCTION_35();
    swift_beginAccess();
    sub_19758C664(v8 + v10, v5);
    LOBYTE(v10) = static DeviceProfile.ProfileContent.== infix(_:_:)(v5, v7);
    OUTLINED_FUNCTION_0_32();
    sub_19758CA58(v5, v11);
    if (v10)
    {
      OUTLINED_FUNCTION_0_32();
      sub_19758CA58(v7, v12);
    }

    else
    {
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_3_2();
        swift_once();
      }

      v15 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v15, qword_1ED816CA0);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000035, 0x8000000197625850);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      v16 = sub_1976160A0();
      v21 = v16;
      sub_197616BC0();

      sub_197558864(v22, v23, v17);

      sub_1975EC548(v7, 0x6C7070612E6D6F63, 0xEF64737069742E65);
      OUTLINED_FUNCTION_13_12();
      sub_197558864(0xD000000000000025, v18, v19);

      OUTLINED_FUNCTION_0_32();
      return sub_19758CA58(v7, v20);
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v14 = 0xD00000000000003CLL;
    v14[1] = 0x8000000197625810;
    return swift_willThrow();
  }
}

uint64_t sub_1975ED0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975ED14C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975ED1BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1975ED21C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_19755C610(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 26;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35398, &qword_1976214B0);
  sub_197616BF0();

  v7 = *(*(v9 + 56) + v6);
  sub_197616C10();
  *v3 = v9;
  return v7;
}

uint64_t sub_1975ED2F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_197615970();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v11 = OUTLINED_FUNCTION_5_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1976165B0();
  OUTLINED_FUNCTION_36();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = OUTLINED_FUNCTION_19_7();
  v20(v19);
  v21 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v18;
  *(v22 + 5) = a1;
  *(v22 + 6) = a2;
  (*(v6 + 32))(&v22[v21], &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1975766B8(a1, a2);
  sub_1975FB620(0, 0, v13, &unk_197621510, v22);

  return sub_19755C404(v13, &qword_1EAF35140, &qword_197621F80);
}

uint64_t sub_1975ED4EC()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_10(&qword_1ED817518, v4);
  if (qword_1ED817578)
  {
    v0 = qword_1ED817570;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v0 = qword_1ED81D210;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v1 = sub_1975A5740();
      if (v2)
      {
        v0 = v1;
      }

      else
      {
        v0 = 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1975ED5D8()
{
  sub_19755404C(0, &qword_1ED816710, 0x1E696ABB0);
  v0 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_1ED816718 != -1)
  {
    swift_once();
  }

  sub_197616830();

  v1 = sub_1975ED4EC();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  sub_197616820();
  OUTLINED_FUNCTION_4_34();
  sub_1975EFCF0(v5, 255, v6, MEMORY[0x1E6969F10]);
  return sub_197616CF0();
}

uint64_t sub_1975ED718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975ED73C, 0, 0);
}

uint64_t sub_1975ED73C()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_197615580();
  if (v1 && (v2 = v1, v0[7] = 0x7265646E6573, v0[8] = 0xE600000000000000, sub_1976169C0(), v3 = sub_1975ED864((v0 + 2), v2), v5 = v4, , sub_19755C404((v0 + 2), &qword_1EAF34BE8, &qword_19761BB78), v5))
  {
    if (v3 == v0[10] && v5 == v0[11])
    {

      v8 = 0;
    }

    else
    {
      v7 = sub_197616EF0();

      v8 = v7 ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = v0[1];

  return v9(v8 & 1);
}

uint64_t sub_1975ED864(uint64_t a1, uint64_t a2)
{
  sub_1975EDB5C(a1, &v5);
  if (*(&v6 + 1))
  {
    v8[0] = v5;
    v8[1] = v6;
    v9 = v7;
    sub_197586610(a2, &v5, v8);
    sub_197587DC0(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_19755C404(&v5, &qword_1EAF34BE8, &qword_19761BB78);
  }

  return 0;
}

uint64_t sub_1975ED924()
{
  if (*(v0 + 112))
  {

    sub_197616660();
  }

  *(v0 + 112) = 0;

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1975ED9A0()
{
  sub_1975ED924();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1975ED9CC()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1975EDA70;

  return sub_1975ED718(v3, v5, v4);
}

uint64_t sub_1975EDA70()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1975EDB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BE8, &qword_19761BB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975EDBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1975EDBF0, 0, 0);
}

uint64_t sub_1975EDBF0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(*(v0 + 72) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1975EDC98, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v2();
  }
}

uint64_t sub_1975EDC98()
{
  OUTLINED_FUNCTION_25();
  sub_1975EDF60(v0[10], v0[11], v0[12]);
  v0[14] = 0;

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_1975EDD4C()
{

  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v2, qword_1ED816CA0);
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001ELL, 0x8000000197625AF0);
  swift_getErrorValue();
  sub_197616EB0();
  sub_197558864(0, 0xE000000000000000, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1975EDE6C()
{
  v2 = sub_197615970();
  OUTLINED_FUNCTION_5_2(v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_19755CDC8;
  v7 = OUTLINED_FUNCTION_17_12();

  return sub_1975EDBCC(v7, v8, v9, v10, v3, v4, v11);
}

void sub_1975EDF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19755404C(0, &qword_1ED815E20, 0x1E696ABF8);
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = 1;
  sub_197608064(a3, 0, sub_1975EFA94, v17);
  if (!v3)
  {
    sub_19755404C(0, &qword_1ED816710, 0x1E696ABB0);
    v7 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_1ED816718 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED81D1C8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353A0, &qword_197621518);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197618C10;
    v18 = 0x7265646E6573;
    v19 = 0xE600000000000000;
    v10 = MEMORY[0x1E69E6158];
    sub_1976169C0();
    v11 = sub_1975ED4EC();
    *(inited + 96) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    v13 = sub_1976160B0();
    sub_1975EFAB4(v8, 0, v13, v7);

    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v14, qword_1ED816CA0);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_197616A20();

    v18 = 0xD000000000000018;
    v19 = 0x8000000197625B10;
    v15 = sub_197615920();
    MEMORY[0x19A8E2A50](v15);

    sub_197558864(v18, v19, v16);
  }
}

uint64_t sub_1975EE1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1975EE1EC, 0, 0);
}

uint64_t sub_1975EE1EC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(v0[5] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1975EE2CC;
    v3 = v0[6];

    return sub_1975EE3C8(v3);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_1975EE2CC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_1975EE3C8(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v2[23] = swift_task_alloc();
  v3 = sub_197615970();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35390, &qword_1976214A8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = type metadata accessor for DeviceProfile.ProfileContent(0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v4 = sub_197615590();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353A8, &qword_197621538);
  v2[37] = swift_task_alloc();
  sub_197616810();
  v2[38] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B0, &qword_197621540);
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B8, &qword_197621548);
  v2[42] = v6;
  v2[43] = *(v6 - 8);
  v2[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975EE6E8, v1, 0);
}

uint64_t sub_1975EE6E8()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  sub_1975ED5D8();
  MEMORY[0x19A8E3450](v3);
  sub_197616820();
  OUTLINED_FUNCTION_4_34();
  sub_1975EFCF0(v4, 255, v5, MEMORY[0x1E6969F10]);
  OUTLINED_FUNCTION_19_7();
  sub_197616690();
  sub_197616CA0();
  (*(v2 + 8))(v1, v3);
  sub_197616CE0();
  v0[45] = sub_1975EFCF0(&qword_1ED816530, v6, _s11FileHandlerCMa, &unk_1976214CC);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[46] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_1_38(v7);

  return sub_1975EF268(v9, v10, v11);
}

uint64_t sub_1975EE880()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (!v0)
  {
    v8 = *(v3 + 176);

    return MEMORY[0x1EEE6DFA0](sub_1975EE97C, v8, 0);
  }

  return result;
}

uint64_t sub_1975EE97C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
LABEL_4:
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

    OUTLINED_FUNCTION_3();

    return v3();
  }

  (*(*(v0 + 280) + 32))(*(v0 + 288), v1, v2);
  if (sub_197616680())
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    goto LABEL_4;
  }

  v5 = sub_197615580();
  if (v5 && (v6 = v5, *(v0 + 104) = 0x7265646E6573, *(v0 + 112) = 0xE600000000000000, sub_1976169C0(), v7 = sub_1975ED864(v0 + 16, v6), v9 = v8, , sub_19755C404(v0 + 16, &qword_1EAF34BE8, &qword_19761BB78), v9))
  {
    if (qword_1ED817510 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1ED817510);
    }

    OUTLINED_FUNCTION_10(&qword_1ED817518, v0 + 56);
    if (qword_1ED817578)
    {
      v10 = qword_1ED817570;
      v11 = qword_1ED817578;
    }

    else
    {
      if (qword_1ED8174D8 != -1)
      {
        OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
      }

      if (qword_1ED81D218)
      {
        v10 = qword_1ED81D210;
        v11 = qword_1ED81D218;
      }

      else
      {
        type metadata accessor for CFBundle(0);
        v14 = sub_1975A5740();
        if (v15)
        {
          v10 = v14;
        }

        else
        {
          v10 = 0;
        }

        if (v15)
        {
          v11 = v15;
        }

        else
        {
          v11 = 0xE000000000000000;
        }
      }
    }

    if (v7 == v10 && v9 == v11)
    {
    }

    else
    {
      v17 = sub_197616EF0();

      if ((v17 & 1) == 0)
      {
        if (qword_1ED816850 != -1)
        {
          swift_once();
        }

        v18 = qword_1ED81D1D0;
        if (qword_1ED81D1D0)
        {
          v80 = v7;
          v19 = *(v0 + 256);
          v20 = *(v0 + 232);
          v21 = *(v0 + 208);
          v76 = *(*(v0 + 200) + 16);
          v76(v21, *(v0 + 168), *(v0 + 192));
          v22 = v20[6];
          v23 = sub_197615A60();
          v79 = v22;
          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
          v27 = (v19 + v20[7]);
          *v27 = 0;
          v27[1] = 0;
          v78 = v20[8];
          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
          v31 = v20[9];
          _s12DisplayEventVMa(0);
          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
          *(v19 + v20[10]) = 3;
          v36 = v20[11];

          OUTLINED_FUNCTION_19_7();
          *(v19 + v36) = sub_1976160B0();
          v37 = v20[12];
          OUTLINED_FUNCTION_19_7();
          *(v19 + v37) = sub_1976160B0();
          v38 = [objc_opt_self() defaultManager];
          LOBYTE(v21) = sub_19755F398(v21);

          if (v21)
          {
            v75 = *(v0 + 232);
            v40 = *(v0 + 208);
            v39 = *(v0 + 216);
            v42 = *(v0 + 192);
            v41 = *(v0 + 200);
            v43 = *(v0 + 184);
            v76(v43, v40, v42);
            __swift_storeEnumTagSinglePayload(v43, 0, 1, v42);
            sub_19758B004(v43, 1, 0);
            (*(v41 + 8))(v40, v42);
            sub_19755C404(v43, &qword_1EAF34610, &qword_197621E30);
            if (__swift_getEnumTagSinglePayload(v39, 1, v75) != 1)
            {
              v57 = *(v0 + 248);
              v56 = *(v0 + 256);
              v58 = *(v0 + 224);
              v77 = *(v0 + 232);
              sub_1975EFC30(*(v0 + 216), v57);
              sub_19755C404(v19 + v79, &qword_1EAF34988, &qword_197620CA0);
              sub_19755C404(v19 + v78, &qword_1EAF34988, &qword_197620CA0);
              sub_19755C404(v19 + v31, &qword_1EAF35260, &qword_1976202C8);

              sub_1975EFC30(v57, v56);
              sub_19758C664(v56, v58);
              __swift_storeEnumTagSinglePayload(v58, 0, 1, v77);
              sub_1975EFC94(v56);
              v51 = v80;
LABEL_44:
              v59 = *(v0 + 224);
              if (__swift_getEnumTagSinglePayload(v59, 1, *(v0 + 232)) == 1)
              {
                v60 = OUTLINED_FUNCTION_15_11();
                v61(v60);

                sub_19755C404(v59, &qword_1EAF35390, &qword_1976214A8);
              }

              else
              {
                v62 = *(v0 + 264);
                v63 = *(v0 + 240);
                sub_1975EFC30(v59, v62);
                v64 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
                OUTLINED_FUNCTION_10(v18 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content, v0 + 80);
                sub_19758C664(v18 + v64, v63);
                LOBYTE(v64) = static DeviceProfile.ProfileContent.== infix(_:_:)(v63, v62);
                sub_1975EFC94(v63);
                if (v64)
                {
                  v66 = *(v0 + 280);
                  v65 = *(v0 + 288);
                  v68 = *(v0 + 264);
                  v67 = *(v0 + 272);

                  sub_1975EFC94(v68);
                  (*(v66 + 8))(v65, v67);
                }

                else
                {
                  sub_1975EC548(*(v0 + 264), v51, v9);
                  if (qword_1ED816C98 != -1)
                  {
                    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
                  }

                  v69 = *(v0 + 280);
                  v70 = *(v0 + 288);
                  v72 = *(v0 + 264);
                  v71 = *(v0 + 272);
                  v73 = type metadata accessor for logger(0);
                  __swift_project_value_buffer(v73, qword_1ED816CA0);
                  *(v0 + 136) = 0;
                  *(v0 + 144) = 0xE000000000000000;
                  sub_197616A20();

                  *(v0 + 120) = 0xD000000000000022;
                  *(v0 + 128) = 0x8000000197625B30;
                  MEMORY[0x19A8E2A50](v51, v9);

                  sub_197558864(*(v0 + 120), *(v0 + 128), v74);

                  sub_1975EFC94(v72);
                  (*(v69 + 8))(v70, v71);
                }
              }

              goto LABEL_38;
            }

            sub_19755C404(*(v0 + 216), &qword_1EAF35390, &qword_1976214A8);
          }

          else
          {
            (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
          }

          v51 = v80;
          v52 = *(v0 + 232);
          sub_19755C404(v19 + v79, &qword_1EAF34988, &qword_197620CA0);
          sub_19755C404(v19 + v78, &qword_1EAF34988, &qword_197620CA0);
          sub_19755C404(v19 + v31, &qword_1EAF35260, &qword_1976202C8);

          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
          goto LABEL_44;
        }
      }
    }

    v44 = OUTLINED_FUNCTION_15_11();
    v45(v44);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_15_11();
    v13(v12);
  }

LABEL_38:
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 368) = v46;
  *v46 = v47;
  v48 = OUTLINED_FUNCTION_1_38(v46);

  return sub_1975EF268(v48, v49, v50);
}

uint64_t sub_1975EF268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353A8, &qword_197621538);
  v4[10] = swift_task_alloc();
  v6 = sub_197615590();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_197616560();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[14] = v7;
  v4[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1975EF3A0, v7, v9);
}

uint64_t sub_1975EF3A0()
{
  OUTLINED_FUNCTION_25();
  v0[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B8, &qword_197621548);
  v0[17] = sub_197616CC0();
  sub_197616810();
  OUTLINED_FUNCTION_5_23();
  sub_1975EFCF0(v1, 255, v2, MEMORY[0x1E6969F00]);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[18] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_32(v3);

  return MEMORY[0x1EEE6D8D0](v5);
}

uint64_t sub_1975EF480()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = sub_1975EF75C;
  }

  else
  {
    (*(v3 + 136))();
    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = sub_1975EF594;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1975EF594()
{
  v2 = v0[10];
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_19755C404(v2, &qword_1EAF353A8, &qword_197621538);
    OUTLINED_FUNCTION_36();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);

    OUTLINED_FUNCTION_3();

    return v7();
  }

  else
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = *(v10 + 32);
    v0[19] = v11;
    v0[20] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v9, v2, v1);
    v12 = sub_197616CA0();
    v0[21] = v13;
    v16 = (v12 + *v12);
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_1975EF7E0;
    v15 = v0[13];

    return v16(v15);
  }
}

uint64_t sub_1975EF75C()
{
  OUTLINED_FUNCTION_1();
  (*(v0 + 136))();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_1975EF7E0()
{
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v7 + 184) = v6;

  v8 = *(v1 + 120);
  v9 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1975EF920, v9, v8);
}

uint64_t sub_1975EF920()
{
  OUTLINED_FUNCTION_25();
  if (*(v0 + 184) == 1)
  {
    (*(v0 + 152))(*(v0 + 48), *(v0 + 104), *(v0 + 88));
    __swift_storeEnumTagSinglePayload(*(v0 + 48), 0, 1, *(v0 + 88));

    OUTLINED_FUNCTION_3();

    return v1();
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B8, &qword_197621548);
    *(v0 + 136) = sub_197616CC0();
    sub_197616810();
    OUTLINED_FUNCTION_5_23();
    sub_1975EFCF0(v3, 255, v4, MEMORY[0x1E6969F00]);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    *(v0 + 144) = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_2_32(v5);

    return MEMORY[0x1EEE6D8D0](v7);
  }
}

void sub_1975EFAB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1976160A0();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_1975EFB50()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_5_2(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_19755CCE8;
  v4 = OUTLINED_FUNCTION_17_12();

  return sub_1975EE1CC(v4, v5, v6, v7, v8);
}

uint64_t sub_1975EFC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceProfile.ProfileContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975EFC94(uint64_t a1)
{
  v2 = type metadata accessor for DeviceProfile.ProfileContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975EFCF0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s19IneligibilityReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s19IneligibilityReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1975EFED4()
{
  OUTLINED_FUNCTION_4_35();
  v2 = v0(v1);
  OUTLINED_FUNCTION_0_39(v2, v3, v4);

  return sub_1976171F0();
}

uint64_t sub_1975EFFA8()
{
  OUTLINED_FUNCTION_4_35();
  v0(v3, v1);
  return sub_1976171F0();
}

uint64_t sub_1975F0000(uint64_t a1, char a2)
{
  v2 = sub_1975A4D54(a2);
  OUTLINED_FUNCTION_2_33(v2, v3);
}

uint64_t sub_1975F0040(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_3_31();
      break;
    default:
      break;
  }

  sub_197616260();
}

uint64_t sub_1975F0144(uint64_t a1, char a2)
{
  sub_197616260();
}

uint64_t sub_1975F01E8()
{
  v0 = CoreTip.ConstellationContent.Color.rawValue.getter();
  OUTLINED_FUNCTION_2_33(v0, v1);
}

uint64_t sub_1975F0234(uint64_t a1, char a2)
{
  sub_197616260();
}

uint64_t sub_1975F0298(uint64_t a1, char a2)
{
  sub_197616260();
}

uint64_t sub_1975F0300(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_3_31();
      break;
    default:
      break;
  }

  sub_197616260();
}

uint64_t sub_1975F0398(uint64_t a1, char a2)
{
  sub_197616260();
}

uint64_t sub_1975F040C(uint64_t a1, char a2)
{
  sub_197616260();
}

uint64_t sub_1975F052C(uint64_t a1, char a2)
{
  sub_197617190();
  sub_197616260();

  return sub_1976171F0();
}

uint64_t sub_1975F05CC(uint64_t a1, char a2)
{
  sub_197617190();
  sub_197616260();

  return sub_1976171F0();
}

uint64_t sub_1975F0648(uint64_t a1, char a2)
{
  sub_197617190();
  sub_197616260();

  return sub_1976171F0();
}

uint64_t sub_1975F06D8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_39(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_0_39(v3, v4, v5);

  return sub_1976171F0();
}

uint64_t sub_1975F0724(uint64_t a1, unsigned __int8 a2)
{
  sub_197617190();
  MEMORY[0x19A8E3940](a2);
  return sub_1976171F0();
}

uint64_t sub_1975F0780(uint64_t a1)
{
  OUTLINED_FUNCTION_1_39(a1);
  v1(v4, v2);
  return sub_1976171F0();
}

uint64_t sub_1975F07F0(uint64_t a1)
{
  OUTLINED_FUNCTION_1_39(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_0_39(v3, v4, v5);

  return sub_1976171F0();
}

unint64_t sub_1975F084C(unint64_t result)
{
  if (result >= 0x1A)
  {
    return 26;
  }

  return result;
}

unint64_t sub_1975F0880@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1975F084C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1975F08B0()
{
  result = qword_1EAF353C0;
  if (!qword_1EAF353C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353C0);
  }

  return result;
}

unint64_t sub_1975F09B4()
{
  result = qword_1EAF353C8;
  if (!qword_1EAF353C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353C8);
  }

  return result;
}

void sub_1975F0A54(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    OUTLINED_FUNCTION_1_40();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v14 = v10 | (v4 << 6);
      v15 = (a1[6] + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(a1[7] + v14);

      v19 = sub_19755C610(v16, v17);
      v21 = v20;

      if ((v21 & 1) == 0 || *(a2[7] + v19) != v18)
      {
        return;
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return;
      }

      ++v11;
      if (a1[v4 + 8])
      {
        OUTLINED_FUNCTION_9();
        v7 = v13 & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1975F0BEC(void *a1, void *a2, void (*a3)(int64_t, __int128 *), uint64_t a4, void (*a5)(__int128 *))
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v8 = 0;
    OUTLINED_FUNCTION_1_40();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v27 = v14;
    while (v11)
    {
      OUTLINED_FUNCTION_12_15();
LABEL_11:
      v19 = v15 | (v8 << 6);
      v20 = (a1[6] + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      a3(a1[7] + 32 * v19, &v32);
      v28 = v32;
      v29 = v33;

      if (!v21)
      {
        return;
      }

      v32 = v28;
      v33 = v29;
      v23 = sub_19755C610(v22, v21);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        a5(&v32);
        return;
      }

      a3(a2[7] + 32 * v23, v31);
      v26 = v27(v31, &v32);
      a5(v31);
      a5(&v32);
      if ((v26 & 1) == 0)
      {
        return;
      }
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        return;
      }

      ++v16;
      if (a1[v8 + 8])
      {
        OUTLINED_FUNCTION_9();
        v11 = v18 & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1975F0D7C(uint64_t a1)
{
  sub_1975F3024(a1, v29, &qword_1EAF34340, &unk_19761C8E0);
  if (!v30)
  {
    sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
LABEL_15:
    v16 = 3;
    goto LABEL_16;
  }

  v2 = sub_1975F3024(v29, v28, &qword_1EAF34340, &unk_19761C8E0);
  v9 = OUTLINED_FUNCTION_27_6(v2, v3, v4, MEMORY[0x1E69E6530], v5, v6, v7, v8, v22, v25, v28[0]);
  if (!v9)
  {
    if (OUTLINED_FUNCTION_27_6(v9, v10, v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v23, v26, v28[0]))
    {
      v17 = v24 == 0x737265735577656ELL && v27 == 0xE800000000000000;
      if (v17 || (OUTLINED_FUNCTION_22_9(0x737265735577656ELL, 0xE800000000000000) & 1) != 0)
      {
        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        v16 = 0;
        goto LABEL_16;
      }

      v19 = v24 == 0x7265646172677075 && v27 == 0xE900000000000073;
      if (v19 || (OUTLINED_FUNCTION_22_9(0x7265646172677075, 0xE900000000000073) & 1) != 0)
      {
        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        v16 = 1;
        goto LABEL_16;
      }

      if (v24 == 0x7265686374697773 && v27 == 0xE900000000000073)
      {

        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_22_9(0x7265686374697773, 0xE900000000000073);

        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
        if ((v21 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      v16 = 2;
      goto LABEL_16;
    }

    sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    goto LABEL_15;
  }

  sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
  v16 = v23;
  if (v23 >= 3)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
LABEL_16:
  sub_19755C7C8(v29, &qword_1EAF34340, &unk_19761C8E0);
  return v16;
}

uint64_t sub_1975F0FE4()
{
  type metadata accessor for DeviceProfile.ProfileContent(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  return sub_197616200();
}

uint64_t sub_1975F103C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v139 = v132 - v5;
  v6 = _s12DisplayEventVMa(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v143 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v11 = OUTLINED_FUNCTION_5_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v12 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v132 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v132 - v19;
  v21 = type metadata accessor for DeviceProfile.ProfileContent(0);
  v22 = v21[6];
  v23 = sub_197615A60();
  v141 = v22;
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v142 = v21[8];
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v133 = v21[9];
  v140 = v6;
  __swift_storeEnumTagSinglePayload(a2 + v133, 1, 1, v6);
  v32 = v21[11];
  v33 = sub_1976160B0();
  v135 = v32;
  v134 = v33;
  *(a2 + v32) = v33;
  v34 = v21[12];
  v35 = sub_1976160B0();
  v137 = v34;
  v136 = v35;
  *(a2 + v34) = v35;
  if (qword_1ED817298 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    if (byte_1ED8172A4)
    {
      v36 = 1;
    }

    else
    {
      swift_getKeyPath();
      AnyKeyPath.stringValue.getter();
      sub_197579604();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      OUTLINED_FUNCTION_20_8();
      if (swift_dynamicCast())
      {
        if (v147 == 2)
        {
          v36 = 2;
        }

        else
        {
          v36 = v147 == 1;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    *a2 = v36;
    swift_getKeyPath();
    v37 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v37, v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
    OUTLINED_FUNCTION_20_8();
    *&v145 = v39;
    if (swift_dynamicCast())
    {
      v40 = v147;
    }

    else
    {
      v40 = 0;
    }

    *(a2 + 1) = v40 & 1;
    swift_getKeyPath();
    v41 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v41, v42);

    if (v151)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      v44 = swift_allocObject();
      sub_19756A94C(&v149, (v44 + 16));
    }

    else
    {

      sub_19755C7C8(&v149, &qword_1EAF34698, &qword_197619048);
      v44 = 0;
      v43 = 0;
      *(&v149 + 1) = 0;
      v150 = 0;
    }

    *&v149 = v44;
    v151 = v43;
    v45 = sub_1975F0D7C(&v149);
    if (v45 == 3)
    {
      v46 = 0;
    }

    else
    {
      v46 = v45;
    }

    *(a2 + v21[10]) = v46;
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v23);
    sub_19758C390(v20, &v141[a2], &qword_1EAF34988, &qword_197620CA0);
    swift_getKeyPath();
    v50 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v50, v51);

    OUTLINED_FUNCTION_20_8();
    v52 = swift_dynamicCast();
    v54 = *(&v147 + 1);
    v53 = v147;
    if (!v52)
    {
      v53 = 0;
      v54 = 0;
    }

    v55 = (a2 + v21[7]);
    *v55 = v53;
    *(v55 + 1) = v54;
    swift_getKeyPath();
    v56 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v56, v57);

    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v23);
      OUTLINED_FUNCTION_18();
      (*(v61 + 32))(v18, v14, v23);
      v62 = 0;
    }

    else
    {
      v62 = 1;
      OUTLINED_FUNCTION_4_36();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
      sub_19755C7C8(v14, &qword_1EAF34988, &qword_197620CA0);
    }

    v67 = v142;
    __swift_storeEnumTagSinglePayload(v18, v62, 1, v23);
    sub_19758C390(v18, &v67[a2], &qword_1EAF34988, &qword_197620CA0);
    swift_getKeyPath();
    v68 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v68, v69);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
    OUTLINED_FUNCTION_20_8();
    if (!swift_dynamicCast())
    {
      break;
    }

    v70 = v147;
    v21 = v143;
    if (!v147)
    {
      goto LABEL_40;
    }

    v132[1] = v14;
    v142 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35410, &qword_197621B30);
    v71 = sub_197616C70();
    v18 = 0;
    v20 = (v70 + 64);
    OUTLINED_FUNCTION_1_40();
    a2 = v73 & v72;
    v75 = (v74 + 63) >> 6;
    v141 = (v76 + 64);
    v138 = v70;
    if ((v73 & v72) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_12_15();
LABEL_32:
        v14 = v77 | (v18 << 6);
        v81 = (*(v70 + 48) + 16 * v14);
        v23 = *v81;
        v21 = v81[1];
        sub_1975F2FCC(*(v70 + 56) + 32 * v14, &v149);
        v82 = v151;
        __swift_project_boxed_opaque_existential_1Tm(&v149, v151);
        *(&v148 + 1) = v82;
        __swift_allocate_boxed_opaque_existential_0(&v147);
        OUTLINED_FUNCTION_18();
        (*(v83 + 16))();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
        if (!swift_dynamicCast() || (v84 = sub_1975F084C(v146), v84 == 26))
        {
          v84 = 1;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v149);
        OUTLINED_FUNCTION_16_12();
        v85 = (v71[6] + 16 * v14);
        *v85 = v23;
        v85[1] = v21;
        *(v71[7] + v14) = v84;
        v86 = v71[2];
        v87 = __OFADD__(v86, 1);
        v88 = v86 + 1;
        if (v87)
        {
          goto LABEL_64;
        }

        v71[2] = v88;
        v70 = v138;
      }

      while (a2);
    }

    v78 = v18;
    a2 = v142;
    while (1)
    {
      v18 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v18 >= v75)
      {

        *(a2 + v137) = v71;
        v21 = v143;
        goto LABEL_40;
      }

      ++v78;
      if (*&v20[8 * v18])
      {
        OUTLINED_FUNCTION_9();
        a2 = v80 & v79;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v21 = v143;
LABEL_40:
  swift_getKeyPath();
  v89 = AnyKeyPath.stringValue.getter();
  OUTLINED_FUNCTION_21_10(v89, v90);

  OUTLINED_FUNCTION_20_8();
  if (swift_dynamicCast())
  {
    v91 = v147;
  }

  else
  {
    v91 = 0;
  }

  v92 = v139;
  sub_1975E32A8(v91, v139);
  v93 = v140;
  if (__swift_getEnumTagSinglePayload(v92, 1, v140) == 1)
  {
    sub_19755C7C8(v92, &qword_1EAF35260, &qword_1976202C8);
  }

  else
  {
    sub_1975DEC68(v92, v21);
    sub_197615A00();
    *&v95 = -v94;
    v145 = v95;
    v96 = Double.seconds.getter(*&v95);
    sub_1975877EC(v96);
    sub_197617290();
    sub_1976172B0();
    if (sub_1976172A0())
    {
      v97 = v133;
      sub_19755C7C8(a2 + v133, &qword_1EAF35260, &qword_1976202C8);
      sub_1975DEC68(v21, a2 + v97);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v93);
    }

    else
    {
      OUTLINED_FUNCTION_6_18();
      sub_1975F2E4C(v21, v101);
    }
  }

  swift_getKeyPath();
  v102 = AnyKeyPath.stringValue.getter();
  v14 = v103;
  OUTLINED_FUNCTION_21_10(v102, v103);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
  OUTLINED_FUNCTION_20_8();
  result = swift_dynamicCast();
  if (result)
  {
    v105 = v147;
    if (v147)
    {
      v142 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35408, &qword_197621B28);
      v20 = sub_197616C70();
      v23 = 0;
      v106 = v105 + 64;
      OUTLINED_FUNCTION_1_40();
      a2 = v108 & v107;
      v18 = (v109 + 63) >> 6;
      v141 = (v110 + 16);
      v143 = v110;
      if ((v108 & v107) != 0)
      {
        do
        {
          OUTLINED_FUNCTION_12_15();
LABEL_57:
          v14 = v111 | (v23 << 6);
          v115 = *(v105 + 56);
          v116 = v105;
          v117 = (*(v105 + 48) + 16 * v14);
          v118 = v117[1];
          *&v145 = *v117;
          sub_1975F2FCC(v115 + 32 * v14, &v149);
          v119 = v151;
          v21 = __swift_project_boxed_opaque_existential_1Tm(&v149, v151);
          v120 = sub_197616860();
          v144 = v132;
          OUTLINED_FUNCTION_5_2(v120);
          OUTLINED_FUNCTION_11();
          MEMORY[0x1EEE9AC00](v121);
          v123 = v132 - v122;
          OUTLINED_FUNCTION_18();
          (*(v124 + 16))(v123, v21, v119);
          OUTLINED_FUNCTION_3_10();
          __swift_storeEnumTagSinglePayload(v125, v126, v127, v119);

          sub_19759C95C(v123, v119, &v147);
          __swift_destroy_boxed_opaque_existential_0Tm(&v149);
          OUTLINED_FUNCTION_16_12();
          v20 = v143;
          v128 = (*(v143 + 6) + 16 * v14);
          *v128 = v145;
          v128[1] = v118;
          v129 = (*(v20 + 7) + 32 * v14);
          *v129 = v147;
          v129[1] = v148;
          v130 = *(v20 + 2);
          v87 = __OFADD__(v130, 1);
          v131 = v130 + 1;
          if (v87)
          {
            goto LABEL_65;
          }

          *(v20 + 2) = v131;
          v105 = v116;
        }

        while (a2);
      }

      v112 = v23;
      a2 = v142;
      while (1)
      {
        v23 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          goto LABEL_63;
        }

        if (v23 >= v18)
        {

          *(a2 + v135) = v20;
          return result;
        }

        ++v112;
        if (*(v106 + 8 * v23))
        {
          OUTLINED_FUNCTION_9();
          a2 = v114 & v113;
          goto LABEL_57;
        }
      }
    }
  }

  return result;
}

uint64_t static DeviceProfile.ProfileContent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = _s12DisplayEventVMa(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v88 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v89 = (v84 - v10);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353D0, &qword_197621670);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v84 - v12;
  v14 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v92 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v21 = OUTLINED_FUNCTION_5_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v91 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v84 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35138, &qword_19761F2F8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v84 - v33;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_12;
  }

  v84[0] = v13;
  v84[1] = v4;
  v86 = type metadata accessor for DeviceProfile.ProfileContent(0);
  v87 = a2;
  v35 = v86[6];
  v36 = *(v27 + 48);
  v85 = a1;
  OUTLINED_FUNCTION_29_7(&a1[v35], v34);
  v37 = &v87[v35];
  v38 = v87;
  OUTLINED_FUNCTION_29_7(v37, &v34[v36]);
  OUTLINED_FUNCTION_3_32(v34);
  if (v39)
  {
    OUTLINED_FUNCTION_3_32(&v34[v36]);
    if (v39)
    {
      sub_19755C7C8(v34, &qword_1EAF34988, &qword_197620CA0);
      goto LABEL_15;
    }

LABEL_10:
    v40 = &qword_1EAF35138;
    v41 = &qword_19761F2F8;
    v42 = v34;
LABEL_11:
    sub_19755C7C8(v42, v40, v41);
    goto LABEL_12;
  }

  sub_1975F3024(v34, v26, &qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_3_32(&v34[v36]);
  if (v39)
  {
    (*(v92 + 8))(v26, v14);
    goto LABEL_10;
  }

  v45 = v92;
  (*(v92 + 32))(v19, &v34[v36], v14);
  OUTLINED_FUNCTION_0_40();
  sub_1975F2D90(v46, v47, MEMORY[0x1E6969550]);
  v48 = sub_1976161A0();
  v49 = *(v45 + 8);
  v49(v19, v14);
  v49(v26, v14);
  v38 = v87;
  sub_19755C7C8(v34, &qword_1EAF34988, &qword_197620CA0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v51 = v85;
  v50 = v86;
  v52 = v86[7];
  v53 = &v85[v52];
  v54 = *&v85[v52 + 8];
  v55 = &v38[v52];
  v56 = *(v55 + 1);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_12;
    }

    v57 = *v53 == *v55 && v54 == v56;
    if (!v57 && (sub_197616EF0() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v56)
  {
    goto LABEL_12;
  }

  v58 = v50[8];
  v59 = *(v27 + 48);
  OUTLINED_FUNCTION_29_7(&v51[v58], v31);
  v60 = v87;
  OUTLINED_FUNCTION_29_7(&v87[v58], v31 + v59);
  OUTLINED_FUNCTION_3_32(v31);
  if (v39)
  {
    OUTLINED_FUNCTION_3_32(v31 + v59);
    v61 = v84[0];
    if (v39)
    {
      sub_19755C7C8(v31, &qword_1EAF34988, &qword_197620CA0);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v62 = v91;
  sub_1975F3024(v31, v91, &qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_3_32(v31 + v59);
  v61 = v84[0];
  if (v63)
  {
    (*(v92 + 8))(v62, v14);
LABEL_32:
    v40 = &qword_1EAF35138;
    v41 = &qword_19761F2F8;
    v42 = v31;
    goto LABEL_11;
  }

  v64 = v92;
  (*(v92 + 32))(v19, v31 + v59, v14);
  OUTLINED_FUNCTION_0_40();
  sub_1975F2D90(v65, v66, MEMORY[0x1E6969550]);
  v67 = v62;
  v68 = sub_1976161A0();
  v69 = *(v64 + 8);
  v69(v19, v14);
  v69(v67, v14);
  v60 = v87;
  sub_19755C7C8(v31, &qword_1EAF34988, &qword_197620CA0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_34:
  v70 = v86[9];
  v71 = *(v90 + 48);
  sub_1975F3024(&v51[v70], v61, &qword_1EAF35260, &qword_1976202C8);
  sub_1975F3024(&v60[v70], v61 + v71, &qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_30_7(v61);
  if (!v39)
  {
    v72 = v89;
    sub_1975F3024(v61, v89, &qword_1EAF35260, &qword_1976202C8);
    OUTLINED_FUNCTION_30_7(v61 + v71);
    if (!v73)
    {
      v75 = v61 + v71;
      v76 = v88;
      sub_1975DEC68(v75, v88);
      v77 = *v72 == *v76 && v72[1] == v76[1];
      if (v77 || (sub_197616EF0() & 1) != 0)
      {
        v78 = sub_197615A30();
        sub_1975F2E4C(v76, _s12DisplayEventVMa);
        sub_1975F2E4C(v72, _s12DisplayEventVMa);
        sub_19755C7C8(v61, &qword_1EAF35260, &qword_1976202C8);
        if ((v78 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_50;
      }

      sub_1975F2E4C(v76, _s12DisplayEventVMa);
      sub_1975F2E4C(v72, _s12DisplayEventVMa);
      v40 = &qword_1EAF35260;
      v41 = &qword_1976202C8;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_6_18();
    sub_1975F2E4C(v72, v74);
LABEL_42:
    v40 = &qword_1EAF353D0;
    v41 = &qword_197621670;
LABEL_43:
    v42 = v61;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_7(v61 + v71);
  if (!v39)
  {
    goto LABEL_42;
  }

  sub_19755C7C8(v61, &qword_1EAF35260, &qword_1976202C8);
LABEL_50:
  v79 = v86;
  v80 = v86[10];
  v81 = v51[v80];
  v82 = v60[v80];
  if (v81 == 3)
  {
    if (v82 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v81 != v82)
  {
    goto LABEL_12;
  }

  sub_1975F0BEC(*&v51[v86[11]], *&v60[v86[11]], sub_19759F898, sub_1975CC8B8, sub_19759425C);
  if (v83)
  {
    sub_1975F0A54(*&v51[v79[12]], *&v60[v79[12]]);
    return v43 & 1;
  }

LABEL_12:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1975F23E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697265707865 && a2 == 0xEE00706D6143746ELL;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 3487349 && a2 == 0xE300000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x8000000197625B60 == a2;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x8000000197625B80 == a2;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000197625BA0 == a2;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x8000000197625BC0 == a2;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6570795472657375 && a2 == 0xE800000000000000;
              if (v11 || (sub_197616EF0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000197625BE0 == a2;
                if (v12 || (sub_197616EF0() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x626967696C656E69 && a2 == 0xEE0073706954656CLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_197616EF0();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1975F26C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975F23E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975F26EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1975F26BC();
  *a1 = result;
  return result;
}

uint64_t sub_1975F2714(uint64_t a1)
{
  v2 = sub_19758BF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975F2750(uint64_t a1)
{
  v2 = sub_19758BF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceProfile.ProfileContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353D8, &qword_197621678);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19758BF10();
  sub_197617260();
  LOBYTE(v18) = *v3;
  v19 = 0;
  sub_1975F2C20();
  OUTLINED_FUNCTION_3_18();
  sub_197616E60();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_3_18();
    sub_197616E40();
    v11 = type metadata accessor for DeviceProfile.ProfileContent(0);
    LOBYTE(v18) = 2;
    sub_197615A60();
    OUTLINED_FUNCTION_0_40();
    sub_1975F2D90(v12, v13, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    LOBYTE(v18) = 3;
    OUTLINED_FUNCTION_3_18();
    sub_197616DF0();
    LOBYTE(v18) = 4;
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    LOBYTE(v18) = 5;
    _s12DisplayEventVMa(0);
    OUTLINED_FUNCTION_7_17();
    sub_1975F2D90(v14, v15, &unk_197620A50);
    OUTLINED_FUNCTION_8_21();
    sub_197616E20();
    LOBYTE(v18) = v3[v11[10]];
    v19 = 6;
    sub_1975F2C74();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v18 = *&v3[v11[11]];
    v19 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34398, &qword_197618398);
    sub_1975F2DD8(&qword_1ED815E28, sub_19759ECEC);
    OUTLINED_FUNCTION_8_21();
    sub_197616E60();
    v18 = *&v3[v11[12]];
    v19 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353E0, &qword_197621680);
    sub_1975F2CC8(&qword_1ED815718, sub_1975F2D3C);
    OUTLINED_FUNCTION_8_21();
    sub_197616E60();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1975F2C20()
{
  result = qword_1ED815E60;
  if (!qword_1ED815E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E60);
  }

  return result;
}

unint64_t sub_1975F2C74()
{
  result = qword_1ED815E58;
  if (!qword_1ED815E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E58);
  }

  return result;
}

uint64_t sub_1975F2CC8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF353E0, &qword_197621680);
    a2();
    result = OUTLINED_FUNCTION_26_7();
    atomic_store(result, a1);
  }

  return result;
}