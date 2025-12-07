uint64_t sub_1DCC6F2C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DD0DEB3C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1E12A72C0](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        sub_1DCC6E8F0();

        sub_1DD0DECDC();
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
      }

      while (v2 != v4);
      return v7;
    }
  }

  return result;
}

uint64_t sub_1DCC6FABC()
{
  type metadata accessor for CATTemplateExecutor();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *(result + 32) = sub_1DCC6FBF0;
  *(result + 40) = 0;
  qword_1EDE57D40 = result;
  return result;
}

uint64_t sub_1DCC6FB0C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = (*(v0 + 32))();
  }

  return v1;
}

uint64_t sub_1DCC6FB54()
{
  v1 = (v0 + 24);
  if (*(v0 + 28))
  {
    v1 = MEMORY[0x1E699A088];
  }

  return *v1;
}

id sub_1DCC6FB74()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

void sub_1DCC6FBF0()
{
  v0 = sub_1DD0DB0FC();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE46630;
  sub_1DCB4E718(v7);
  v5 = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  RefreshableDeviceState.siriLocale.getter(v5);
  sub_1DCCE56A8(v4, v3, 0);
}

uint64_t sub_1DCC6FD14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

uint64_t sub_1DCC6FD30(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 80) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC6FD4C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 80);
  *(v0 + 48) = sub_1DCC6FB74();
  sub_1DCC677D8(v1);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DCC6FE0C;
  v4 = OUTLINED_FUNCTION_30_10();

  return sub_1DCC70910(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCC6FE0C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCC6FF50, 0, 0);
  }

  else
  {
    v9 = *(v5 + 48);

    OUTLINED_FUNCTION_69();

    return v10(v3);
  }
}

uint64_t sub_1DCC6FF50()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC6FFB0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 176) = a5;
  *(v6 + 184) = v5;
  *(v6 + 160) = a3;
  *(v6 + 168) = a4;
  *(v6 + 232) = a2;
  *(v6 + 152) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC6FFD0()
{
  if (*(v0 + 232) == 20)
  {
    v1 = OUTLINED_FUNCTION_2_36();
    sub_1DCD15EF0(v1, v2, 0x45636972656E6547, 0xEC000000726F7272);
  }

  v3 = sub_1DCC6FB0C();

  sub_1DCC70860(v4, v3);
}

uint64_t sub_1DCC70238()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 224) = v4;
  if (v4)
  {
    v5 = sub_1DCC707DC;
  }

  else
  {
    v5 = sub_1DCC7033C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC7033C()
{
  v50 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 144);

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = v4;
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  v9 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v10 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (os_log_type_enabled(v7, v8))
  {
    v48 = v8;
    v11 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v11 = 136316418;
    v12 = [v6 print];
    sub_1DD0DE2EC();

    OUTLINED_FUNCTION_39_8();
    v13 = OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_25_9(v13, v14, v15, v16);
    OUTLINED_FUNCTION_31_8();

    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    v17 = OUTLINED_FUNCTION_24_12([v6 print]);

    v18 = *(v17 + 16);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    OUTLINED_FUNCTION_24_12([v6 speak]);

    OUTLINED_FUNCTION_39_8();
    v19 = OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_25_9(v19, v20, v21, v22);
    OUTLINED_FUNCTION_31_8();

    *(v11 + 24) = v18;
    *(v11 + 32) = 2048;
    v23 = OUTLINED_FUNCTION_24_12([v6 speak]);

    v24 = *(v23 + 16);

    *(v11 + 34) = v24;
    v10 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;

    *(v11 + 42) = 2080;
    OUTLINED_FUNCTION_24_12([v6 captionPrint]);

    OUTLINED_FUNCTION_39_8();
    v25 = OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_25_9(v25, v26, v27, v28);
    OUTLINED_FUNCTION_31_8();

    *(v11 + 44) = v18;
    *(v11 + 52) = 2080;
    OUTLINED_FUNCTION_24_12([v6 captionSpeak]);

    OUTLINED_FUNCTION_39_8();
    v30 = v29;
    v32 = v31;

    v33 = sub_1DCB10E9C(v30, v32, &v49);
    v9 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;

    *(v11 + 54) = v33;
    _os_log_impl(&dword_1DCAFC000, v7, v48, "CAT.execute returns: print=%s (size=%ld), speak=%s (size=%ld), captionPrint=%s) captionSpeak=%s", v11, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v34 = *(v0 + 152);
  v35 = sub_1DCC677D8(*(v0 + 232));
  v37 = v36;
  v38 = [v6 v10[210]];
  v39 = sub_1DD0DE2EC();

  v40 = OUTLINED_FUNCTION_24_12([v6 v9[209]]);
  v41 = [v6 dialogId];
  v42 = sub_1DD0DE2EC();

  v43 = [v6 meta];
  v44 = sub_1DD0DDE6C();

  *v34 = v35;
  *(v34 + 8) = v37;
  *(v34 + 32) = v39;
  *(v34 + 40) = v40;
  *(v34 + 48) = xmmword_1DD0E1E40;
  *(v34 + 64) = v42;

  v45 = sub_1DCB73048(v35, v37, v42, v40, v39);

  *(v34 + 16) = v45;
  *(v34 + 24) = v44;
  OUTLINED_FUNCTION_29();

  return v46();
}

uint64_t sub_1DCC707DC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCC70860(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = a2;
  sub_1DCC72564(a1, sub_1DCC7252C, 0, isUniquelyReferenced_nonNull_native, &v5);
}

uint64_t sub_1DCC70910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC70930()
{
  OUTLINED_FUNCTION_33_8();
  *(v1 + 64) = 0x45636972656E6547;
  v0[1] = v0[14];
  v0[9] = 0xEC000000726F7272;
  v2 = sub_1DCB1C4D8();
  if (OUTLINED_FUNCTION_37_12(v2, MEMORY[0x1E69E6158], v3, v2))
  {
    v4 = OUTLINED_FUNCTION_2_36();
    sub_1DCD15EF0(v4, v5, 0x45636972656E6547, 0xEC000000726F7272);
  }

  v6 = sub_1DCC6FB0C();

  sub_1DCC70860(v7, v6);
}

uint64_t sub_1DCC70D68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = sub_1DCC70FD8;
  }

  else
  {
    v5 = sub_1DCC70E6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC70E6C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 144);

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "CATDialog.execute returns: %@", v8, 0xCu);
    sub_1DCB16D50(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_69();

  return v11(v5);
}

uint64_t sub_1DCC70FD8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCC71054(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v8 = a3;
    v9 = v7;
    v10 = a4;
  }

  else
  {
    v8 = a2;
    v9 = v7;
    v10 = a5;
  }

  return v10(v9, v8);
}

uint64_t sub_1DCC710FC(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 64) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC71114()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  *(v0 + 32) = sub_1DCC6FB74();
  sub_1DCC6DA40(v1);
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1DCC711D0;
  v4 = OUTLINED_FUNCTION_30_10();

  return sub_1DCC71374(v4, v5, v6, v7);
}

uint64_t sub_1DCC711D0()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCC71314, 0, 0);
  }

  else
  {
    v9 = *(v5 + 32);

    OUTLINED_FUNCTION_69();

    return v10(v3);
  }
}

uint64_t sub_1DCC71314()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC71374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC71390()
{
  v28 = v2;
  OUTLINED_FUNCTION_33_8();
  *(v1 + 64) = 0x45636972656E6547;
  v0[1] = v0[14];
  v0[9] = 0xEC000000726F7272;
  v3 = sub_1DCB1C4D8();
  if (OUTLINED_FUNCTION_37_12(v3, MEMORY[0x1E69E6158], v4, v3))
  {
    v5 = OUTLINED_FUNCTION_2_36();
    sub_1DCD15EF0(v5, v6, 0x45636972656E6547, 0xEC000000726F7272);
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v7 = v2[22];
  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);

  v9 = v7;
  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v2[23];
    v13 = v2[24];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1DCB10E9C(v12, v13, &v27);
    *(v14 + 12) = 2080;
    sub_1DD0DE8AC();
  }

  v15 = v2[25];
  OUTLINED_FUNCTION_8_28();
  v17 = v16 >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  while (1)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    do
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v19 >= v17)
      {

        if (qword_1EDE46628 != -1)
        {
          OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
        }

        sub_1DCB4E718(v0);
        __swift_destroy_boxed_opaque_existential_1Tm(v0);
        sub_1DCC6F3D0();
      }

      v9 = *(v15 + 64 + 8 * v19);
      ++v18;
    }

    while (!v9);
    v18 = v19;
LABEL_12:
    v20 = __clz(__rbit64(v9)) | (v18 << 6);
    v21 = (*(v15 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_1DCB0DF6C(*(v15 + 56) + 32 * v20, (v2 + 12));
    v2[10] = v23;
    v2[11] = v22;
    if (v23 == 0x656369766564 && v22 == 0xE600000000000000)
    {

      sub_1DCB16D50(v0, &qword_1ECCA2760, &unk_1DD0E6A30);
      goto LABEL_22;
    }

    v9 &= v9 - 1;
    v25 = sub_1DD0DF0AC();

    sub_1DCB16D50(v0, &qword_1ECCA2760, &unk_1DD0E6A30);
    if (v25)
    {
LABEL_22:

      v26 = v2[25];
      objc_opt_self();
      OUTLINED_FUNCTION_31_8();
      v2[27] = sub_1DD0DDF8C();
      sub_1DCDAC09C(v26);
    }
  }
}

uint64_t sub_1DCC718D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 240) = v4;
  if (v4)
  {
    v5 = sub_1DCC71A50;
  }

  else
  {
    v5 = sub_1DCC719D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC719D8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);

  OUTLINED_FUNCTION_69();

  return v4(v3);
}

uint64_t sub_1DCC71A50()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[29];
  v3 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCC71ACC(void *a1, uint64_t a2)
{
  v6 = 0;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_1DCCE5F64(v5, a2, &v6, v3, v4);
}

uint64_t sub_1DCC71B20()
{

  return v0;
}

uint64_t sub_1DCC71B48()
{
  sub_1DCC71B20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC71B7C()
{
  if (qword_1EDE49020 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  sub_1DD0DE77C();
  return v1;
}

uint64_t sub_1DCC71D68()
{
  if ((RefreshableDeviceState.isHomePod.getter() & 1) == 0 || MGGetSInt32Answer() == 7)
  {
    return 0;
  }

  if (qword_1EDE49020 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  sub_1DD0DE77C();
  return v1;
}

uint64_t sub_1DCC71E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A10, &qword_1DD0E7EE0);
  v33 = v4;
  result = sub_1DD0DEE5C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1DCC7243C(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_1DCB20B30(v22, v34);
    }

    else
    {
      sub_1DCB0DF6C(v22, v34);
    }

    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1DCB20B30(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1DCC720EC()
{
  OUTLINED_FUNCTION_16_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A18, &qword_1DD0E7EE8);
  v6 = OUTLINED_FUNCTION_18_12();
  if (!*(v4 + 16))
  {
LABEL_28:

LABEL_29:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_4_22();
  if (!v1)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v3[v5])
      {
        OUTLINED_FUNCTION_27_9();
        goto LABEL_9;
      }
    }

    if ((v19 & 1) == 0)
    {

      v0 = v18;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_32_7();
    v0 = v18;
    if (v16 != v17)
    {
      *v3 = -1 << v15;
    }

    else
    {
      OUTLINED_FUNCTION_38_10(v15);
    }

    *(v4 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29_8();
LABEL_9:
    OUTLINED_FUNCTION_14_20();
    if ((v8 & 1) == 0)
    {

      sub_1DD0DCF8C();
    }

    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    sub_1DD0DF20C();
    OUTLINED_FUNCTION_10_19();
    if (v9)
    {
      break;
    }

    OUTLINED_FUNCTION_36_12();
LABEL_20:
    OUTLINED_FUNCTION_3_31(v10);
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35_10();
  while (++v11 != v13 || (v12 & 1) == 0)
  {
    v14 = v11 == v13;
    if (v11 == v13)
    {
      v11 = 0;
    }

    v12 |= v14;
    if (*(v2 + 8 * v11) != -1)
    {
      OUTLINED_FUNCTION_34_10();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1DCC72268()
{
  OUTLINED_FUNCTION_16_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A20, &qword_1DD0E7EF0);
  v6 = OUTLINED_FUNCTION_18_12();
  if (!*(v4 + 16))
  {
LABEL_28:

LABEL_29:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_4_22();
  if (!v1)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v3[v5])
      {
        OUTLINED_FUNCTION_27_9();
        goto LABEL_9;
      }
    }

    if ((v19 & 1) == 0)
    {

      v0 = v18;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_32_7();
    v0 = v18;
    if (v16 != v17)
    {
      *v3 = -1 << v15;
    }

    else
    {
      OUTLINED_FUNCTION_38_10(v15);
    }

    *(v4 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29_8();
LABEL_9:
    OUTLINED_FUNCTION_14_20();
    if ((v8 & 1) == 0)
    {
    }

    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    sub_1DD0DF20C();
    OUTLINED_FUNCTION_10_19();
    if (v9)
    {
      break;
    }

    OUTLINED_FUNCTION_36_12();
LABEL_20:
    OUTLINED_FUNCTION_3_31(v10);
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35_10();
  while (++v11 != v13 || (v12 & 1) == 0)
  {
    v14 = v11 == v13;
    if (v11 == v13)
    {
      v11 = 0;
    }

    v12 |= v14;
    if (*(v2 + 8 * v11) != -1)
    {
      OUTLINED_FUNCTION_34_10();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1DCC723E4()
{
  result = qword_1EDE46360;
  if (!qword_1EDE46360)
  {
    sub_1DD0DCDBC();
  }

  return result;
}

uint64_t sub_1DCC7243C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD0E3FF0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DCC724A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCB0DF6C(a4, a1);

  return a2;
}

void sub_1DCC724E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC7252C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCC724A0((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1DCC72564(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1DCC72798(a1, a2, a3, v5);

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC72798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_1DCC727D4(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1DCB0DF6C(*(v3 + 56) + 32 * v10, v17);
    *&v18 = v13;
    *(&v18 + 1) = v12;
    sub_1DCB20B30(v17, &v19);

    v14 = *(&v18 + 1);
    v15 = v18;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v14)
    {
      v16 = v1[5];
      *&v17[0] = v15;
      *(&v17[0] + 1) = v14;
      v17[1] = v19;
      v17[2] = v20;
      v16(v17);
      sub_1DCB16D50(v17, &qword_1ECCA2760, &unk_1DD0E6A30);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t CombineAll5.init(_:_:_:_:_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_112();
  v22 = (*(v21 + 32))(a8);
  v37 = a7;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  OUTLINED_FUNCTION_23_9(v22, v23, &v37);
  OUTLINED_FUNCTION_7_24();
  (*(v24 + 32))(a8 + v25, a1, a9);
  OUTLINED_FUNCTION_7_24();
  (*(v26 + 32))(a8 + v27, a2, a10);
  OUTLINED_FUNCTION_7_24();
  (*(v28 + 32))(a8 + v29, a3, a11);
  OUTLINED_FUNCTION_7_24();
  (*(v30 + 32))(a8 + v31, a4, a12);
  v37 = a7;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a16;
  result = type metadata accessor for CombineAll5(0, &v37);
  v33 = (a8 + *(result + 108));
  *v33 = a5;
  v33[1] = a6;
  return result;
}

void static CombineAll5._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v166 = a7;
  v180 = a6;
  v181 = a2;
  v176 = a1;
  v177 = a12;
  v178 = a4;
  v186 = a2;
  v187 = a3;
  v182 = a3;
  v188 = a4;
  v189 = a5;
  v179 = a5;
  v190 = a6;
  v191 = a7;
  v192 = a8;
  v193 = a9;
  v161 = a8;
  v162[0] = a9;
  v194 = a10;
  v195 = a11;
  v162[1] = a10;
  v163 = a11;
  v196 = a12;
  v157 = type metadata accessor for CombineAll5(0, &v186);
  OUTLINED_FUNCTION_0_1();
  v155 = v16;
  v156 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v20);
  OUTLINED_FUNCTION_35_11(255, a8, a2);
  v21 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v21, v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v164 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_35_11(255, a9, a3);
  v25 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v25, v26, v27, v28);
  OUTLINED_FUNCTION_2_37();
  v29 = sub_1DD0DDAEC();
  v30 = v178;
  OUTLINED_FUNCTION_35_11(255, a10, v178);
  v31 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_37();
  v35 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_35_11(255, a11, a5);
  v36 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v36, v37, v38, v39);
  OUTLINED_FUNCTION_2_37();
  v40 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_35_11(255, a12, v180);
  v41 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v41, v42, v43, v44);
  OUTLINED_FUNCTION_2_37();
  v45 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_14_21(v45, &v168);
  v147 = v29;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(WitnessTable, &v167);
  v146 = v35;
  v47 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v47, &v164);
  v145 = v40;
  v48 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v48, &v163);
  v143 = swift_getWitnessTable();
  v186 = v29;
  v187 = v35;
  v188 = v40;
  v189 = v45;
  v190 = WitnessTable;
  v191 = v47;
  v192 = v48;
  v193 = v143;
  v49 = sub_1DD0DDA2C();
  v50 = v164;
  v51 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_22(v51, &v166);
  v144 = swift_getWitnessTable();
  v186 = v50;
  v187 = v49;
  v160 = v49;
  v188 = v51;
  v189 = v144;
  sub_1DD0DD9EC();
  OUTLINED_FUNCTION_39_9();
  v148 = v52;
  OUTLINED_FUNCTION_0_1();
  v150 = v53;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v56);
  v149 = type metadata accessor for _FlowPlanEvent(255, v166, v57, v58);
  v59 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_10(v59, v174);
  sub_1DD0DDACC();
  OUTLINED_FUNCTION_39_9();
  v151 = v60;
  OUTLINED_FUNCTION_0_1();
  v154 = v61;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_34_0();
  v65 = OUTLINED_FUNCTION_12_19(v64);
  OUTLINED_FUNCTION_27_10(v65, &v177);
  v152 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v153 = v66;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v69);
  OUTLINED_FUNCTION_0_1();
  v165 = v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_13_2(&v139 - v75);
  v76 = v181;
  v186 = v181;
  v187 = v182;
  v188 = v30;
  v78 = v179;
  v77 = v180;
  v189 = v179;
  v190 = v180;
  v81 = OUTLINED_FUNCTION_23_9(v79, v80, &v186);
  OUTLINED_FUNCTION_0_1();
  v83 = v82;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v84, v85);
  v87 = &v139 - v86;
  v168 = *(v83 + 16);
  v88 = v176;
  v168(&v139 - v86, v176, v81);
  v175 = v81[12];
  v89 = v81[16];
  v90 = v81[20];
  v91 = v81[24];
  OUTLINED_FUNCTION_1_29();
  v159 = v92(v87, v76);
  OUTLINED_FUNCTION_112();
  v167 = *(v93 + 8);
  v174[2] = v93 + 8;
  v94 = &v87[v91];
  v95 = v77;
  v167(v94, v77);
  OUTLINED_FUNCTION_112();
  v171 = *(v96 + 8);
  v172 = v96 + 8;
  v171(&v87[v90], v78);
  OUTLINED_FUNCTION_112();
  v169 = *(v97 + 8);
  v170 = v97 + 8;
  (v169)(&v87[v89]);
  v98 = v182;
  OUTLINED_FUNCTION_112();
  v173 = *(v99 + 8);
  v174[0] = v99 + 8;
  v173(v175 + v87, v98);
  OUTLINED_FUNCTION_112();
  v175 = *(v100 + 8);
  v174[1] = v100 + 8;
  v175(v87);
  v101 = v168;
  v158 = v83 + 16;
  v168(v87, v88, v81);
  v102 = v81[12];
  v140 = v81[16];
  v139 = v81[20];
  v103 = v81[24];
  OUTLINED_FUNCTION_1_29();
  v141 = v104(&v87[v102], v98);
  v105 = v167;
  v167(&v87[v103], v95);
  v106 = OUTLINED_FUNCTION_8_29(&v160);
  v171(v106, v179);
  OUTLINED_FUNCTION_8_29(&v161);
  v107 = v178;
  OUTLINED_FUNCTION_42_1();
  v169();
  OUTLINED_FUNCTION_19_12();
  v108();
  OUTLINED_FUNCTION_4_23();
  v109();
  v186 = v141;
  v101(v87, v176, v81);
  v141 = v81[12];
  v110 = v81[16];
  v111 = v81[20];
  v112 = v81[24];
  OUTLINED_FUNCTION_1_29();
  v113 = v107;
  v140 = v114(&v87[v110], v107);
  v105(&v87[v112], v95);
  v115 = &v87[v111];
  v116 = v179;
  v117 = v171;
  v171(v115, v179);
  v118 = v169;
  (v169)(&v87[v110], v113);
  OUTLINED_FUNCTION_8_29(v162);
  OUTLINED_FUNCTION_19_12();
  v119();
  OUTLINED_FUNCTION_4_23();
  v120();
  v185 = v140;
  OUTLINED_FUNCTION_32_8();
  v121();
  v141 = v81[12];
  v139 = v81[16];
  v122 = v81[20];
  OUTLINED_FUNCTION_1_29();
  v123 = v116;
  v140 = v124(&v87[v122], v116);
  v125 = v180;
  OUTLINED_FUNCTION_36_13();
  v126();
  v117(&v87[v122], v123);
  v127 = OUTLINED_FUNCTION_8_29(&v160);
  (v118)(v127, v178);
  v128 = OUTLINED_FUNCTION_8_29(v162);
  v129 = v174[0];
  v130 = v173;
  v173(v128, v182);
  OUTLINED_FUNCTION_4_23();
  v131();
  v184 = v140;
  OUTLINED_FUNCTION_32_8();
  v132();
  v168 = v81[12];
  v158 = v81[16];
  v133 = (*(v177 + 48))(&v87[v81[24]], v125);
  OUTLINED_FUNCTION_36_13();
  v134();
  OUTLINED_FUNCTION_29_9();
  v135();
  OUTLINED_FUNCTION_8_29(&v185);
  OUTLINED_FUNCTION_28_9();
  v136();
  v137 = OUTLINED_FUNCTION_8_29(&v197);
  v130(v137, v182);
  OUTLINED_FUNCTION_4_23();
  v138();
  v183 = v133;
  OUTLINED_FUNCTION_43_9();
  sub_1DD0DDA3C();
  v186 = v159;
  (*(v165 + 16))(v142, v129, v160);
  sub_1DD0DCF8C();
}

void sub_1DCC73A48(void (*a1)(char *, char *, char *, char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, char *, char *, char *)@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v111 = a8;
  v128 = a7;
  v122 = a6;
  v121 = a5;
  v126 = a4;
  v117 = a3;
  v115 = a2;
  v123 = a1;
  v108 = a9;
  v110 = a14;
  v112 = a15;
  v114 = a16;
  v118 = a17;
  v113 = a10;
  v116 = a11;
  v120 = a18;
  v129 = a13;
  v119 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  v97 = &v92 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v98 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v102 = &v92 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v105 = &v92 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v104 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v109 = &v92 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v107 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v92 - v32;
  v93 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v31, v34);
  v95 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v132 = type metadata accessor for _FlowPlanEvent(255, v26, v36, v37);
  *(&v132 + 1) = type metadata accessor for _FlowPlanEvent(255, v23, v38, v39);
  *&v133 = type metadata accessor for _FlowPlanEvent(255, v20, v40, v41);
  v42 = AssociatedTypeWitness;
  *(&v133 + 1) = type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v43, v44);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v125 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v46);
  v48 = &v92 - v47;
  v106 = v26;
  v51 = type metadata accessor for _FlowPlanEvent(0, v26, v49, v50);
  v52 = *(*(v51 - 8) + 16);
  v53 = v115;
  v115 = v51;
  v52(v48, v53);
  v54 = TupleTypeMetadata[12];
  v101 = v23;
  v57 = type metadata accessor for _FlowPlanEvent(0, v23, v55, v56);
  v58 = *(*(v57 - 8) + 16);
  v103 = v54;
  v58(&v48[v54], v117, v57);
  v59 = TupleTypeMetadata[16];
  v99 = v20;
  v62 = type metadata accessor for _FlowPlanEvent(0, v20, v60, v61);
  v63 = *(*(v62 - 8) + 16);
  v117 = v59;
  v63(&v48[v59], v126, v62);
  v126 = TupleTypeMetadata;
  v64 = TupleTypeMetadata[20];
  v67 = type metadata accessor for _FlowPlanEvent(0, v42, v65, v66);
  v68 = *(*(v67 - 8) + 16);
  v96 = v64;
  v68(&v48[v64], v121, v67);
  *&v132 = v128;
  *(&v132 + 1) = v111;
  *&v133 = v113;
  *(&v133 + 1) = v116;
  v134 = v119;
  v135 = v129;
  v136 = v110;
  v137 = v112;
  v138 = v114;
  v139 = v118;
  v140 = v120;
  v69 = type metadata accessor for CombineAll5(0, &v132);
  v70 = (v122 + *(v69 + 108));
  v71 = *v70;
  v72 = v70[1];
  v73 = v29;
  v76 = type metadata accessor for _FlowPlanEvent(0, v29, v74, v75);
  v77 = v124;
  sub_1DCC74758(v76, v33);
  if (v77)
  {
    (*(v125 + 8))(v48, v126);
    v141 = v77;
    v81 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {

      v130[0] = v132;
      v130[1] = v133;
      v131 = v134;
      sub_1DCAFF9E8(v130, v108);
      type metadata accessor for _FlowPlanEvent(0, v129, v82, v83);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v122 = v72;
    v123 = v71;
    v124 = v67;
    v128 = v33;
    v78 = v106;
    v92 = v73;
    sub_1DCC74758(v115, v109);
    sub_1DCC74758(v57, v105);
    v79 = v107;
    sub_1DCC74758(v62, v102);
    v80 = v78;
    v84 = v97;
    sub_1DCC74758(v124, v97);
    v85 = v104;
    v86 = v128;
    v87 = v102;
    v123(v128, v109, v105, v102, v84);
    v88 = v101;
    (*(v94 + 8))(v84, AssociatedTypeWitness);
    (*(v98 + 8))(v87, v99);
    (*(v100 + 8))(v105, v88);
    (*(v85 + 8))(v109, v80);
    (*(v79 + 8))(v86, v92);
    (*(v125 + 8))(v48, v126);
    v89 = v129;
    (*(v93 + 32))(v108, v95, v129);
    type metadata accessor for _FlowPlanEvent(0, v89, v90, v91);
    swift_storeEnumTagMultiPayload();
  }
}

void sub_1DCC7465C(void (*a1)(char *, char *, char *, char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = v6[3];
  v7 = v6[5];
  v16 = v6[4];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  v11 = v6[9];
  v12 = v6[10];
  v13 = v6[11];
  v14 = v6[12];
  v25[0] = v6[2];
  v18 = v25[0];
  v25[1] = v17;
  v25[2] = v16;
  v25[3] = v7;
  v25[4] = v8;
  v25[5] = v9;
  v25[6] = v10;
  v25[7] = v11;
  v25[8] = v12;
  v25[9] = v13;
  v25[10] = v14;
  v15 = *(type metadata accessor for CombineAll5(0, v25) - 8);
  sub_1DCC73A48(a1, a2, a3, a4, a5, (v6 + ((*(v15 + 80) + 104) & ~*(v15 + 80))), v18, v17, a6, v16, v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCC74758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](a1, v3);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v7);
  }

  sub_1DCAFF9E8(v7, v12);
  sub_1DCC7A888();
  swift_allocError();
  sub_1DCB17CA0(v12, v10);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1DCC748AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v15, v16);
  v17 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v17, v18, v19);
  v20 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v20, v21, v22);
  v23 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v23, v24, v25);
  v26 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v26, v27, v28);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

unint64_t sub_1DCC74AE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t CombineAll6.init(_:_:_:_:_:_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18)
{
  OUTLINED_FUNCTION_112();
  v22 = (*(v21 + 32))(a8);
  v41 = a9;
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45 = a13;
  v46 = a14;
  OUTLINED_FUNCTION_22_13(v22, v23, &v41);
  OUTLINED_FUNCTION_7_24();
  (*(v24 + 32))(a8 + v25, a1, a10);
  OUTLINED_FUNCTION_7_24();
  (*(v26 + 32))(a8 + v27, a2, a11);
  OUTLINED_FUNCTION_7_24();
  (*(v28 + 32))(a8 + v29, a3, a12);
  OUTLINED_FUNCTION_7_24();
  (*(v30 + 32))(a8 + v31, a4, a13);
  OUTLINED_FUNCTION_7_24();
  (*(v32 + 32))(a8 + v33, a5, a14);
  v41 = a9;
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45 = a13;
  v46 = a14;
  v47 = a15;
  v48 = a16;
  v49 = a17;
  v50 = a18;
  result = type metadata accessor for CombineAll6(0, &v41);
  v35 = (a8 + *(result + 124));
  *v35 = a6;
  v35[1] = a7;
  return result;
}

uint64_t static CombineAll6._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v239 = a8;
  v260 = a7;
  v262 = a6;
  v263 = a5;
  v258 = a1;
  v250 = a14;
  v249 = a13;
  v248 = a12;
  v267 = a2;
  v268 = a3;
  v257 = a2;
  v261 = a3;
  v269 = a4;
  v270 = a5;
  v259 = a4;
  v271 = a6;
  v272 = a7;
  v273 = a8;
  v274 = a9;
  v231 = a9;
  v275 = a10;
  v276[0] = a11;
  v234 = a10;
  v235 = a11;
  v276[1] = a12;
  v276[2] = a13;
  v276[3] = a14;
  v229 = type metadata accessor for CombineAll6(0, &v267);
  OUTLINED_FUNCTION_0_1();
  v227 = v17;
  v228 = *(v18 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v21);
  OUTLINED_FUNCTION_34_11(255, a9, a2);
  v22 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v22, v23, v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v210 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11(255, a10, a3);
  v26 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v26, v27, v28, v29);
  OUTLINED_FUNCTION_2_37();
  v30 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_14_21(v30, &v235);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v234);
  v207 = swift_getWitnessTable();
  v267 = v210;
  v268 = v30;
  v269 = WitnessTable;
  v270 = v207;
  v32 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_34_11(255, a11, a4);
  v33 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v33, v34, v35, v36);
  OUTLINED_FUNCTION_2_37();
  v37 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11(255, v248, v263);
  v38 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v38, v39, v40, v41);
  OUTLINED_FUNCTION_2_37();
  v42 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11(255, v249, v262);
  v43 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v43, v44, v45, v46);
  OUTLINED_FUNCTION_2_37();
  v213 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11(255, v250, v260);
  v47 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent(v47, v48, v49, v50);
  OUTLINED_FUNCTION_2_37();
  v51 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_30_3(v51, v243);
  v215 = v37;
  v52 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v52, &v242);
  v214 = v42;
  v53 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v53, &v241);
  v54 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v54, &v238);
  v211 = swift_getWitnessTable();
  v267 = v37;
  v268 = v42;
  v269 = v213;
  v270 = v51;
  v271 = v52;
  v272 = v53;
  v273 = v54;
  v274 = v211;
  v55 = sub_1DD0DDA2C();
  v56 = MEMORY[0x1E695BC68];
  v57 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_22(v57, &v240);
  v212 = swift_getWitnessTable();
  v267 = v32;
  v268 = v55;
  v230 = v32;
  v233 = v55;
  v269 = v57;
  v270 = v212;
  v217 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_0_1();
  v220 = v58;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v61);
  v64 = type metadata accessor for _FlowPlanEvent(255, v239, v62, v63);
  OUTLINED_FUNCTION_40_11(v64, &v249);
  v218 = swift_getWitnessTable();
  sub_1DD0DDACC();
  OUTLINED_FUNCTION_39_9();
  v221 = v65;
  OUTLINED_FUNCTION_0_1();
  v225 = v66;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_34_0();
  v70 = OUTLINED_FUNCTION_12_19(v69);
  OUTLINED_FUNCTION_27_10(v70, &v253);
  v223 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v224 = v71;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v72, v73);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v74);
  v238 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v75, v76);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v77, v78);
  OUTLINED_FUNCTION_13_2(v203 - v79);
  v80 = v257;
  v81 = v262;
  v267 = v257;
  v268 = v261;
  v82 = v260;
  v269 = v259;
  v270 = v263;
  v271 = v262;
  v272 = v260;
  OUTLINED_FUNCTION_22_13(v83, v84, &v267);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = v203 - v87;
  OUTLINED_FUNCTION_0_1();
  v237 = v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v92, v93);
  OUTLINED_FUNCTION_13_2(v203 - v94);
  v96 = *(v95 + 16);
  v240 = v95 + 16;
  v244 = v96;
  v97 = v258;
  (v96)(v88, v258, v56);
  v256 = v56[12];
  v98 = v56[16];
  v99 = v56[20];
  v100 = v56[24];
  v101 = v56[28];
  OUTLINED_FUNCTION_1_29();
  v204 = v102(v88, v80);
  OUTLINED_FUNCTION_112();
  v247 = *(v103 + 8);
  v251 = v103 + 8;
  (v247)(&v88[v101], v82);
  OUTLINED_FUNCTION_112();
  v246 = *(v104 + 8);
  v252 = v104 + 8;
  (v246)(&v88[v100], v81);
  OUTLINED_FUNCTION_112();
  v241 = *(v105 + 8);
  v245 = v105 + 8;
  v241(&v88[v99]);
  OUTLINED_FUNCTION_112();
  v243[0] = *(v106 + 8);
  v255 = v106 + 8;
  (v243[0])(&v88[v98]);
  v107 = v261;
  OUTLINED_FUNCTION_112();
  v254 = *(v108 + 8);
  v243[1] = v108 + 8;
  v254(v256 + v88, v107);
  OUTLINED_FUNCTION_112();
  v256 = *(v109 + 8);
  v253 = v109 + 8;
  v256(v88);
  v267 = v204;
  v110 = v244;
  (v244)(v88, v97, v56);
  v111 = v56[12];
  v203[1] = v56[16];
  v112 = v56[20];
  OUTLINED_FUNCTION_1_29();
  v113 = v107;
  v204 = v114(&v88[v111], v107);
  OUTLINED_FUNCTION_28_9();
  v115();
  OUTLINED_FUNCTION_29_9();
  v246();
  v116 = v241;
  (v241)(&v88[v112], v263);
  v117 = OUTLINED_FUNCTION_8_29(&v229);
  v118 = v259;
  (v243[0])(v117, v259);
  v254(&v88[v111], v113);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_3_32();
  v119();
  v266 = v204;
  sub_1DD0DD9FC();
  v120 = OUTLINED_FUNCTION_5_26();
  v110(v120);
  v210 = v56[12];
  v121 = v56[16];
  v208 = v56[20];
  OUTLINED_FUNCTION_1_29();
  v122 = v118;
  v124 = v123(&v88[v121], v118);
  OUTLINED_FUNCTION_26_5(v124);
  OUTLINED_FUNCTION_28_9();
  v125();
  OUTLINED_FUNCTION_29_9();
  v246();
  v126 = OUTLINED_FUNCTION_8_29(&v234);
  v127 = v263;
  v116(v126, v263);
  v128 = v243[0];
  (v243[0])(&v88[v121], v122);
  v129 = OUTLINED_FUNCTION_8_29(&v236);
  v254(v129, v261);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_3_32();
  v130();
  v267 = v209;
  v131 = OUTLINED_FUNCTION_5_26();
  v244(v131);
  OUTLINED_FUNCTION_24_13();
  v132 = v56[20];
  v207 = v56[24];
  OUTLINED_FUNCTION_1_29();
  v133 = v127;
  v135 = v134(&v88[v132], v127);
  OUTLINED_FUNCTION_26_5(v135);
  v136 = v247;
  OUTLINED_FUNCTION_42_1();
  v136();
  OUTLINED_FUNCTION_8_29(&v233);
  v137 = v262;
  v138 = v246;
  OUTLINED_FUNCTION_29_9();
  v138();
  (v241)(&v88[v132], v133);
  v139 = OUTLINED_FUNCTION_8_29(&v234);
  v128(v139, v259);
  v140 = OUTLINED_FUNCTION_8_29(&v236);
  v254(v140, v261);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_3_32();
  v141();
  v266 = v209;
  v142 = OUTLINED_FUNCTION_5_26();
  v244(v142);
  OUTLINED_FUNCTION_24_13();
  v143 = v56[20];
  v144 = v56[24];
  OUTLINED_FUNCTION_1_29();
  v146 = v145(&v88[v144], v137);
  OUTLINED_FUNCTION_26_5(v146);
  v147 = v260;
  OUTLINED_FUNCTION_42_1();
  v136();
  OUTLINED_FUNCTION_29_9();
  v138();
  v148 = &v88[v143];
  v149 = v241;
  (v241)(v148, v263);
  OUTLINED_FUNCTION_8_29(&v234);
  OUTLINED_FUNCTION_31_9();
  v150();
  OUTLINED_FUNCTION_8_29(&v236);
  OUTLINED_FUNCTION_19_12();
  v151();
  OUTLINED_FUNCTION_41_9();
  v153 = *(v152 - 256);
  OUTLINED_FUNCTION_3_32();
  v154();
  v265 = v209;
  v155 = OUTLINED_FUNCTION_5_26();
  v244(v155);
  v244 = v56[12];
  v240 = v56[16];
  v156 = v56[20];
  v157 = v56[24];
  v158 = v56[28];
  OUTLINED_FUNCTION_1_29();
  v159 = v147;
  v161 = v160(&v88[v158], v147);
  OUTLINED_FUNCTION_42_1();
  v247();
  (v246)(&v88[v157], v262);
  v162 = v263;
  v149(&v88[v156], v263);
  OUTLINED_FUNCTION_8_29(&v271);
  OUTLINED_FUNCTION_31_9();
  v163();
  OUTLINED_FUNCTION_8_29(v276);
  OUTLINED_FUNCTION_19_12();
  v164();
  OUTLINED_FUNCTION_3_32();
  v165();
  v264 = v161;
  OUTLINED_FUNCTION_43_9();
  sub_1DD0DDA3C();
  (*(v237 + 16))(v205, v242, v230);
  v166 = v159;
  v167 = v233;
  (*(v238 + 16))(v206, v166, v233);
  sub_1DD0DD9FC();
  OUTLINED_FUNCTION_43_9();
  v169 = v226;
  v170 = v229;
  (*(v168 + 16))(v226, v258, v229);
  v171 = v167;
  v172 = (*(v167 + 80) + 120) & ~*(v167 + 80);
  v173 = swift_allocObject();
  v174 = v261;
  v173[2] = v153;
  v173[3] = v174;
  v173[4] = v259;
  v173[5] = v162;
  v175 = v260;
  v173[6] = v262;
  v173[7] = v175;
  v176 = v239;
  v177 = v231;
  v173[8] = v239;
  v173[9] = v177;
  v178 = OUTLINED_FUNCTION_20_12(v173);
  *(v178 + 14) = v179;
  (*(v171 + 32))(&v178[v172], v169, v170);
  v180 = swift_allocObject();
  v181 = v261;
  v180[2] = v153;
  v180[3] = v181;
  v183 = v262;
  v182 = v263;
  v180[4] = v259;
  v180[5] = v182;
  v184 = v260;
  v180[6] = v183;
  v180[7] = v184;
  v180[8] = v176;
  v180[9] = v177;
  v185 = OUTLINED_FUNCTION_20_12(v180);
  v185[14] = v186;
  v185[15] = sub_1DCC76FD0;
  v185[16] = v173;
  v187 = v216;
  v188 = v217;
  v189 = v236;
  sub_1DD0DDC7C();

  OUTLINED_FUNCTION_17_0();
  v190(v189, v188);
  v267 = 0;
  v268 = 0xE000000000000000;
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_74();
  v267 = v192;
  v268 = v191;
  v193 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v193);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v194 = v219;
  v195 = v221;
  sub_1DCF0E65C(v267, v268, v221, v222);

  OUTLINED_FUNCTION_17_0();
  v196(v187, v195);
  OUTLINED_FUNCTION_15_2();
  v197 = v223;
  swift_getWitnessTable();
  v198 = sub_1DD0DDBFC();
  OUTLINED_FUNCTION_17_0();
  v199(v194, v197);
  OUTLINED_FUNCTION_17_0();
  v200(v232, v233);
  OUTLINED_FUNCTION_17_0();
  v201(v242, v230);
  return v198;
}

void sub_1DCC76008(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(void, void, void, void, void, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v154 = a8;
  v142 = a7;
  v141 = a6;
  v148 = a5;
  v138 = a4;
  v135 = a3;
  v132 = a2;
  v146 = a1;
  v128 = a9;
  v153 = a16;
  v152 = a17;
  v129 = a10;
  v130 = a11;
  v131 = a18;
  v134 = a19;
  v133 = a12;
  v136 = a13;
  v137 = a20;
  v140 = a21;
  v156 = a15;
  v139 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v110 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v21);
  v112 = &v109 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v149 = v23;
  v113 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v115 = &v109 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v150 = v26;
  v114 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = &v109 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v117 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v122 = &v109 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v120 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v127 = &v109 - v34;
  v35 = swift_getAssociatedTypeWitness();
  v126 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v151 = &v109 - v38;
  v109 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v111 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v159 = type metadata accessor for _FlowPlanEvent(255, v29, v41, v42);
  *(&v159 + 1) = type metadata accessor for _FlowPlanEvent(255, v26, v43, v44);
  *&v160 = type metadata accessor for _FlowPlanEvent(255, v23, v45, v46);
  *(&v160 + 1) = type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v47, v48);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v147 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v50);
  v52 = &v109 - v51;
  v125 = v35;
  v55 = type metadata accessor for _FlowPlanEvent(255, v35, v53, v54);
  v121 = v32;
  v58 = type metadata accessor for _FlowPlanEvent(255, v32, v56, v57);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v145 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v60);
  v62 = &v109 - v61;
  (*(*(v55 - 8) + 16))(&v109 - v61, v146, v55);
  v146 = TupleTypeMetadata2;
  v63 = *(*(v58 - 8) + 16);
  v124 = *(TupleTypeMetadata2 + 48);
  v64 = v132;
  v132 = v58;
  v63(&v62[v124], v64, v58);
  v118 = v29;
  v67 = type metadata accessor for _FlowPlanEvent(0, v29, v65, v66);
  v68 = *(*(v67 - 8) + 16);
  v69 = v135;
  v135 = v67;
  v68(v52, v69);
  v70 = TupleTypeMetadata[12];
  v73 = type metadata accessor for _FlowPlanEvent(0, v150, v71, v72);
  v74 = *(*(v73 - 8) + 16);
  v116 = v70;
  v74(&v52[v70], v138, v73);
  v75 = TupleTypeMetadata[16];
  v78 = type metadata accessor for _FlowPlanEvent(0, v149, v76, v77);
  v79 = *(*(v78 - 8) + 16);
  v123 = v75;
  v79(&v52[v75], v148, v78);
  v148 = TupleTypeMetadata;
  v80 = TupleTypeMetadata[20];
  v83 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v81, v82);
  v84 = *(*(v83 - 8) + 16);
  v138 = v52;
  v85 = &v52[v80];
  v86 = v151;
  v84(v85, v141, v83);
  *&v159 = v154;
  *(&v159 + 1) = v129;
  *&v160 = v130;
  *(&v160 + 1) = v133;
  v161 = v136;
  v162 = v139;
  v163 = v156;
  v164 = v153;
  v165 = v152;
  v166 = v131;
  v167 = v134;
  v168 = v137;
  v169 = v140;
  v87 = type metadata accessor for CombineAll6(0, &v159);
  v88 = (v142 + *(v87 + 124));
  v89 = *v88;
  v90 = v88[1];
  v91 = v143;
  sub_1DCC74758(v55, v86);
  v144 = v62;
  if (v91)
  {
    (*(v147 + 8))(v138, v148);
    (*(v145 + 8))(v144, v146);
    v170 = v91;
    v94 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {

      v157[0] = v159;
      v157[1] = v160;
      v158 = v161;
      sub_1DCAFF9E8(v157, v128);
      type metadata accessor for _FlowPlanEvent(0, v156, v95, v96);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v143 = v90;
    v152 = v89;
    v92 = v135;
    v153 = v83;
    v154 = v80;
    v93 = v127;
    sub_1DCC74758(v132, v127);
    v97 = v138;
    sub_1DCC74758(v92, v122);
    sub_1DCC74758(v73, v119);
    v98 = v121;
    sub_1DCC74758(v78, v115);
    v99 = v126;
    v100 = v117;
    v101 = v112;
    sub_1DCC74758(v153, v112);
    v102 = v120;
    v103 = v93;
    v104 = v115;
    v152(v151, v103, v122, v119, v115, v101);
    v105 = v125;
    (*(v110 + 8))(v101, AssociatedTypeWitness);
    (*(v113 + 8))(v104, v149);
    (*(v114 + 8))(v119, v150);
    (*(v100 + 8))(v122, v118);
    (*(v102 + 8))(v127, v98);
    (*(v99 + 8))(v151, v105);
    (*(v147 + 8))(v97, v148);
    (*(v145 + 8))(v144, v146);
    v106 = v156;
    (*(v109 + 32))(v128, v111, v156);
    type metadata accessor for _FlowPlanEvent(0, v106, v107, v108);
    swift_storeEnumTagMultiPayload();
  }
}

void sub_1DCC76FD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = v7[3];
  v18 = v7[5];
  v19 = v7[4];
  v8 = v7[7];
  v17 = v7[6];
  v9 = v7[8];
  v10 = v7[9];
  v12 = v7[10];
  v11 = v7[11];
  v13 = v7[12];
  v14 = v7[13];
  v15 = v7[14];
  v29[0] = v7[2];
  v21 = v29[0];
  v29[1] = v20;
  v29[2] = v19;
  v29[3] = v18;
  v29[4] = v17;
  v29[5] = v8;
  v29[6] = v9;
  v29[7] = v10;
  v29[8] = v12;
  v29[9] = v11;
  v29[10] = v13;
  v29[11] = v14;
  v29[12] = v15;
  v16 = *(type metadata accessor for CombineAll6(0, v29) - 8);
  sub_1DCC76008(a1, a2, a3, a4, a5, a6, v7 + ((*(v16 + 80) + 120) & ~*(v16 + 80)), v21, a7, v20, v19, v18, v17, v8, v9, v10, v12, v11, v13, v14, v15);
}

uint64_t sub_1DCC770E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v18, v19);
  v20 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v20, v21, v22);
  v23 = *(swift_getTupleTypeMetadata2() + 48);
  v24 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v24, v25, v26);
  v27 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v27, v28, v29);
  v30 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v30, v31, v32);
  v33 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v33, v34, v35);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + v23, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

uint64_t sub_1DCC77384(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCC7747C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCC774B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCC77514(void *a1)
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
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            swift_getTupleTypeLayout();
            swift_initStructMetadata();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1DCC776CC(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = a3[4];
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 80);
  v8 = *(v4 + 64) + v7;
  v9 = *(*(v5 - 8) + 80);
  v10 = v9;
  v11 = *(a3[5] - 8);
  v12 = *(v11 + 80);
  v13 = *(a3[6] - 8);
  v14 = *(v13 + 80);
  v15 = v14;
  if (((v7 | *(v4 + 80) | v9 | v12 | v14) & 0x1000F8) != 0 || ((((*(v11 + 64) + v14 + ((*(*(v5 - 8) + 64) + v12 + ((*(v6 + 64) + v9 + (v8 & ~v7)) & ~v9)) & ~v12)) & ~v14) + *(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    *a1 = *a2;
  }

  else
  {
    v38 = *(v11 + 64);
    v39 = a3[6];
    v17 = ~v7;
    v33 = *(v11 + 80);
    v34 = a3[5];
    v35 = ~v12;
    v31 = a3[4];
    v32 = *(*(v5 - 8) + 64);
    v19 = a3[3];
    v30 = *(v6 + 64);
    v20 = *(v5 - 8);
    v21 = *(v19 - 8);
    v36 = ((v38 + v14 + ((v32 + v12 + ((v30 + v9 + (v8 & v17)) & ~v9)) & v35)) & ~v14) + *(v13 + 64);
    (*(v4 + 16))(a1);
    v40 = a1;
    v22 = (a1 + v8) & v17;
    v23 = (a2 + v8) & v17;
    (*(v21 + 16))(v22, v23, v19);
    v24 = (v22 + v30 + v10) & ~v10;
    v25 = (v23 + v30 + v10) & ~v10;
    (*(v20 + 16))(v24, v25, v31);
    v26 = (v24 + v32 + v33) & v35;
    (*(v11 + 16))(v26, (v25 + v32 + v33) & v35, v34);
    (*(v13 + 16))((v26 + v38 + v15) & ~v15, (((v25 + v32 + v33) & v35) + v38 + v15) & ~v15, v39);
    v27 = ((a2 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    v28 = v27[1];
    v29 = ((v40 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v27;
    v29[1] = v28;
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC77A68(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8) + 8;
  (*v3)();
  v5 = *(a2[3] - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  v8 = *(v3 + 56) + v7;
  (*(v5 + 8))((v8 + a1) & ~v7);
  v9 = *(v6 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v9 + *(v10 + 80) + ((v8 + a1) & ~v7)) & ~*(v10 + 80);
  (*(v10 + 8))(v12);
  v13 = *(v11 + 56);
  v14 = *(a2[5] - 8);
  v15 = v14 + 8;
  v16 = (v13 + *(v14 + 80) + v12) & ~*(v14 + 80);
  (*(v14 + 8))(v16);
  (*(*(a2[6] - 8) + 8))((*(v15 + 56) + *(*(a2[6] - 8) + 80) + v16) & ~*(*(a2[6] - 8) + 80));
}

void sub_1DCC77C38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 16;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v35 = *(v4 + 48) + v9;
  (*(v7 + 16))((v35 + a1) & ~v9, (v35 + a2) & ~v9);
  v10 = *(v8 + 48);
  v11 = *(a3[4] - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v35 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v35 + a2) & ~v9)) & ~v13;
  (*(v11 + 16))(v15, v16);
  v17 = *(v12 + 48);
  v18 = *(a3[5] - 8);
  v19 = v18 + 16;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 16))(v22, v23);
  v24 = *(v19 + 48);
  v25 = *(a3[6] - 8);
  v26 = v25 + 16;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 16))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 48) + ((v28 + ((v21 + ((v14 + (v35 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  v30 = v29 + a1;
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  v33 = *v31;
  v32 = v31[1];
  v34 = (v30 & 0xFFFFFFFFFFFFFFF8);
  *v34 = v33;
  v34[1] = v32;
  sub_1DD0DCF8C();
}

void sub_1DCC77E44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 24;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v33 = *(v4 + 40) + v9;
  (*(v7 + 24))((v33 + a1) & ~v9, (v33 + a2) & ~v9);
  v10 = *(v8 + 40);
  v11 = *(a3[4] - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v33 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v33 + a2) & ~v9)) & ~v13;
  (*(v11 + 24))(v15, v16);
  v17 = *(v12 + 40);
  v18 = *(a3[5] - 8);
  v19 = v18 + 24;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 24))(v22, v23);
  v24 = *(v19 + 40);
  v25 = *(a3[6] - 8);
  v26 = v25 + 24;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 24))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 40) + ((v28 + ((v21 + ((v14 + (v33 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  v30 = ((v29 + a1) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  v32 = v31[1];
  *v30 = *v31;
  v30[1] = v32;
  sub_1DD0DCF8C();
}

__n128 sub_1DCC7805C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 32;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v33 = *(v4 + 32) + v9;
  (*(v7 + 32))((v33 + a1) & ~v9, (v33 + a2) & ~v9);
  v10 = *(v8 + 32);
  v11 = *(a3[4] - 8);
  v12 = v11 + 32;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v33 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v33 + a2) & ~v9)) & ~v13;
  (*(v11 + 32))(v15, v16);
  v17 = *(v12 + 32);
  v18 = *(a3[5] - 8);
  v19 = v18 + 32;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 32))(v22, v23);
  v24 = *(v19 + 32);
  v25 = *(a3[6] - 8);
  v26 = v25 + 32;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 32))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 32) + ((v28 + ((v21 + ((v14 + (v33 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  v30 = ((v29 + a1) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  result = *v31;
  *v30 = *v31;
  return result;
}

uint64_t sub_1DCC78260(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 40;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v31 = *(v4 + 24) + v9;
  (*(v7 + 40))((v31 + a1) & ~v9, (v31 + a2) & ~v9);
  v10 = *(v8 + 24);
  v11 = *(a3[4] - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v31 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v31 + a2) & ~v9)) & ~v13;
  (*(v11 + 40))(v15, v16);
  v17 = *(v12 + 24);
  v18 = *(a3[5] - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 40))(v22, v23);
  v24 = *(v19 + 24);
  v25 = *(a3[6] - 8);
  v26 = v25 + 40;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 40))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 24) + ((v28 + ((v21 + ((v14 + (v31 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  *((v29 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v29 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCC78470(uint64_t result, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(*(v4 - 8) + 84);
  v39 = a3[3];
  v6 = *(v39 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(*(v4 - 8) + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v37 = a3[5];
  v38 = a3[4];
  v9 = *(v38 - 8);
  v10 = *(v9 + 84);
  v11 = *(v37 - 8);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v11 + 84);
  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = a3[6];
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  if (v17 > v14)
  {
    v14 = *(v16 + 84);
  }

  v18 = *(*(v4 - 8) + 64);
  v19 = *(v6 + 80);
  v20 = *(*(v39 - 8) + 64);
  v21 = *(v9 + 80);
  v22 = *(*(v38 - 8) + 64);
  v23 = *(v11 + 80);
  v24 = *(v11 + 64);
  v25 = *(v16 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v24 + v25;
  v28 = ((v27 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25) + *(*(v15 - 8) + 64);
  if (v26 >= a2)
  {
LABEL_36:
    if (v14 < 0x7FFFFFFF)
    {
      v36 = *((result + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v36 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      return (v36 + 1);
    }

    else
    {
      if (v5 == v14)
      {
        v15 = v4;
      }

      else
      {
        result = (v18 + v19 + result) & ~v19;
        if (v7 == v14)
        {
          v5 = v7;
          v15 = v39;
        }

        else
        {
          result = (result + v20 + v21) & ~v21;
          if (v10 == v14)
          {
            v5 = v10;
            v15 = v38;
          }

          else
          {
            result = (result + v22 + v23) & ~v23;
            if (v13 == v14)
            {
              v5 = v13;
              v15 = v37;
            }

            else
            {
              result = (v27 + result) & ~v25;
              v5 = v17;
            }
          }
        }
      }

      return __swift_getEnumTagSinglePayload(result, v5, v15);
    }
  }

  else
  {
    v29 = ((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    if ((v29 & 0xFFFFFFF8) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = a2 - v26 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    switch(v32)
    {
      case 1:
        v33 = *(result + v29);
        if (!*(result + v29))
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      case 2:
        v33 = *(result + v29);
        if (!*(result + v29))
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      case 3:
        __break(1u);
        return result;
      case 4:
        v33 = *(result + v29);
        if (!v33)
        {
          goto LABEL_36;
        }

LABEL_33:
        v34 = v33 - 1;
        if ((v29 & 0xFFFFFFF8) != 0)
        {
          v34 = 0;
          v35 = *result;
        }

        else
        {
          v35 = 0;
        }

        result = v26 + (v35 | v34) + 1;
        break;
      default:
        goto LABEL_36;
    }
  }

  return result;
}

void sub_1DCC78828(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v46 = a4[3];
  v47 = a4[2];
  v6 = *(*(v47 - 8) + 84);
  v7 = *(v46 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(*(v47 - 8) + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v45 = a4[4];
  v10 = *(v45 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v14 = a4[5];
  v13 = a4[6];
  v44 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  v18 = *(v13 - 8);
  v19 = *(v18 + 84);
  if (v19 > v17)
  {
    v17 = *(v18 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(v7 + 80);
  v22 = *(*(v47 - 8) + 64) + v21;
  v23 = *(*(v46 - 8) + 64);
  v24 = *(v10 + 80);
  v25 = *(*(v45 - 8) + 64);
  v26 = *(v15 + 80);
  v27 = *(v18 + 80);
  v28 = *(*(v14 - 8) + 64) + v27;
  v29 = ((v28 + ((v25 + v26 + ((v23 + v24 + (v22 & ~v21)) & ~v24)) & ~v26)) & ~v27) + *(*(v13 - 8) + 64);
  v30 = ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v33 = 0;
  }

  else
  {
    if (((v29 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v31 = a3 - v20 + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  if (a2 <= v20)
  {
    v37 = ~v27;
    v38 = a1;
    switch(v33)
    {
      case 1:
        a1[v30] = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        break;
      case 2:
        *&a1[v30] = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        break;
      case 3:
LABEL_75:
        __break(1u);
        break;
      case 4:
        *&a1[v30] = 0;
        goto LABEL_42;
      default:
LABEL_42:
        if (a2)
        {
LABEL_43:
          if (v17 < 0x7FFFFFFF)
          {
            v42 = (&a1[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v42 = a2 & 0x7FFFFFFF;
              v42[1] = 0;
            }

            else
            {
              *v42 = (a2 - 1);
            }
          }

          else if (v17 >= a2)
          {
            if (v6 == v17)
            {
              v43 = a1;
              v13 = v47;
            }

            else
            {
              v43 = (&a1[v22] & ~v21);
              if (v8 == v17)
              {
                v6 = v8;
                v13 = v46;
              }

              else
              {
                v43 = (&v43[v23 + v24] & ~v24);
                if (v11 == v17)
                {
                  v6 = v11;
                  v13 = v45;
                }

                else
                {
                  v43 = (&v43[v25 + v26] & ~v26);
                  if (v16 == v17)
                  {
                    v6 = v16;
                    v13 = v44;
                  }

                  else
                  {
                    v43 = (&v43[v28] & v37);
                    v6 = v19;
                  }
                }
              }
            }

            __swift_storeEnumTagSinglePayload(v43, a2, v6, v13);
          }

          else
          {
            if (v29 <= 3)
            {
              v39 = ~(-1 << (8 * v29));
            }

            else
            {
              v39 = -1;
            }

            if (v29)
            {
              v40 = v39 & (~v17 + a2);
              if (v29 <= 3)
              {
                v41 = v29;
              }

              else
              {
                v41 = 4;
              }

              bzero(v38, v29);
              switch(v41)
              {
                case 2:
                  *v38 = v40;
                  break;
                case 3:
                  *v38 = v40;
                  v38[2] = BYTE2(v40);
                  break;
                case 4:
                  *v38 = v40;
                  break;
                default:
                  *v38 = v40;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v29 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v34 = a2 - v20;
    }

    else
    {
      v34 = 1;
    }

    v35 = a1;
    if (((v29 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v36 = ~v20 + a2;
      bzero(a1, ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *v35 = v36;
    }

    switch(v33)
    {
      case 1:
        *(v35 + v30) = v34;
        break;
      case 2:
        *(v35 + v30) = v34;
        break;
      case 3:
        goto LABEL_75;
      case 4:
        *(v35 + v30) = v34;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCC78CD0(void *a1)
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
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              swift_getTupleTypeLayout();
              swift_initStructMetadata();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1DCC78EC8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v44 = a3[2];
  v4 = *(v44 - 8);
  v46 = a3[3];
  v43 = *(v46 - 8);
  v5 = *(v43 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = *(v43 + 64);
  v8 = a3[4];
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v48 = v10;
  v11 = *(a3[5] - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = a3[7];
  v15 = *(a3[6] - 8);
  v16 = *(v15 + 80);
  v17 = *(v14 - 8);
  v18 = *(v17 + 80);
  v47 = *(v15 + 64);
  if (((((v47 + v18 + ((v13 + v16 + ((*(v9 + 64) + v12 + ((v7 + v10 + (v6 & ~v5)) & ~v10)) & ~v12)) & ~v16)) & ~v18) + *(v17 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18 && ((v5 | *(v4 + 80) | v10 | v12 | v16 | v18) & 0x1000F8) == 0)
  {
    v35 = *(*(v8 - 8) + 64);
    v20 = ~v5;
    v42 = *(v14 - 8);
    v33 = *(v11 + 80);
    v34 = ~v12;
    v37 = *(v15 + 80);
    v39 = ~v16;
    v41 = ~v18;
    v38 = a3[6];
    v31 = v8;
    v40 = ((v47 + v18 + ((v13 + v16 + ((v35 + v12 + ((v7 + v10 + (v6 & v20)) & ~v10)) & v34)) & v39)) & v41) + *(v17 + 64);
    v32 = a3[5];
    v36 = v18;
    (*(v4 + 16))(a1, a2, v44);
    v45 = a1;
    v21 = (a1 + v6) & v20;
    v22 = (a2 + v6) & v20;
    (*(v43 + 16))(v21, v22, v46);
    v23 = (v21 + v7 + v48) & ~v48;
    v24 = (v22 + v7 + v48) & ~v48;
    (*(v9 + 16))(v23, v24, v31);
    v25 = (v23 + v35 + v33) & v34;
    (*(v11 + 16))(v25, (v24 + v35 + v33) & v34, v32);
    v26 = (v25 + v13 + v37) & v39;
    v27 = (((v24 + v35 + v33) & v34) + v13 + v37) & v39;
    (*(v15 + 16))(v26, v27, v38);
    (*(v42 + 16))((v26 + v47 + v36) & v41, (v27 + v47 + v36) & v41, v14);
    v28 = ((a2 + v40 + 7) & 0xFFFFFFFFFFFFFFF8);
    v29 = v28[1];
    v30 = ((v45 + v40 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v28;
    v30[1] = v29;
  }

  else
  {
    *a1 = *a2;
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC79340(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8) + 8;
  (*v3)();
  v5 = *(a2[3] - 8);
  v6 = v5 + 8;
  v7 = (*(v3 + 56) + *(v5 + 80) + a1) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = *(a2[4] - 8);
  v9 = v8 + 8;
  v10 = (*(v6 + 56) + *(v8 + 80) + v7) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  v11 = *(v9 + 56);
  v12 = *(a2[5] - 8);
  v13 = v12 + 8;
  v14 = (v11 + *(v12 + 80) + v10) & ~*(v12 + 80);
  (*(v12 + 8))(v14);
  v15 = *(v13 + 56);
  v16 = *(a2[6] - 8);
  v17 = v16 + 8;
  v18 = (v15 + *(v16 + 80) + v14) & ~*(v16 + 80);
  (*(v16 + 8))(v18);
  (*(*(a2[7] - 8) + 8))((*(v17 + 56) + *(*(a2[7] - 8) + 80) + v18) & ~*(*(a2[7] - 8) + 80));
}

void sub_1DCC79568(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 16;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v44 = v9;
  v45 = *(v4 + 48) + v9;
  v10 = (v45 + a1) & ~v9;
  v11 = (v45 + a2) & ~v9;
  (*(v7 + 16))(v10, v11);
  v12 = *(v8 + 48);
  v13 = *(a3[4] - 8);
  v14 = v13 + 16;
  v15 = *(v13 + 80);
  v43 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 16))(v16, v17);
  v18 = *(v14 + 48);
  v19 = *(a3[5] - 8);
  v20 = v19 + 16;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 16))(v23, v24);
  v25 = *(v20 + 48);
  v26 = *(a3[6] - 8);
  v27 = v26 + 16;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 16))(v30, v31);
  v32 = *(v27 + 48);
  v33 = *(a3[7] - 8);
  v34 = v33 + 16;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 16))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 48) + ((v36 + ((v29 + ((v22 + ((v43 + (v45 & ~v44)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  v38 = v37 + a1;
  v39 = ((v37 + a2) & 0xFFFFFFFFFFFFFFF8);
  v41 = *v39;
  v40 = v39[1];
  v42 = (v38 & 0xFFFFFFFFFFFFFFF8);
  *v42 = v41;
  v42[1] = v40;
  sub_1DD0DCF8C();
}

void sub_1DCC797D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 24;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v42 = v9;
  v43 = *(v4 + 40) + v9;
  v10 = (v43 + a1) & ~v9;
  v11 = (v43 + a2) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40);
  v13 = *(a3[4] - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v41 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(v14 + 40);
  v19 = *(a3[5] - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 24))(v23, v24);
  v25 = *(v20 + 40);
  v26 = *(a3[6] - 8);
  v27 = v26 + 24;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 24))(v30, v31);
  v32 = *(v27 + 40);
  v33 = *(a3[7] - 8);
  v34 = v33 + 24;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 24))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 40) + ((v36 + ((v29 + ((v22 + ((v41 + (v43 & ~v42)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  v38 = ((v37 + a1) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + a2) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;
  sub_1DD0DCF8C();
}

__n128 sub_1DCC79A4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 32;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v42 = v9;
  v43 = *(v4 + 32) + v9;
  v10 = (v43 + a1) & ~v9;
  v11 = (v43 + a2) & ~v9;
  (*(v7 + 32))(v10, v11);
  v12 = *(v8 + 32);
  v13 = *(a3[4] - 8);
  v14 = v13 + 32;
  v15 = *(v13 + 80);
  v41 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 32))(v16, v17);
  v18 = *(v14 + 32);
  v19 = *(a3[5] - 8);
  v20 = v19 + 32;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 32))(v23, v24);
  v25 = *(v20 + 32);
  v26 = *(a3[6] - 8);
  v27 = v26 + 32;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 32))(v30, v31);
  v32 = *(v27 + 32);
  v33 = *(a3[7] - 8);
  v34 = v33 + 32;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 32))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 32) + ((v36 + ((v29 + ((v22 + ((v41 + (v43 & ~v42)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  v38 = ((v37 + a1) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + a2) & 0xFFFFFFFFFFFFFFF8);
  result = *v39;
  *v38 = *v39;
  return result;
}

uint64_t sub_1DCC79CB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 40;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v40 = v9;
  v41 = *(v4 + 24) + v9;
  v10 = (v41 + a1) & ~v9;
  v11 = (v41 + a2) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24);
  v13 = *(a3[4] - 8);
  v14 = v13 + 40;
  v15 = *(v13 + 80);
  v39 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 40))(v16, v17);
  v18 = *(v14 + 24);
  v19 = *(a3[5] - 8);
  v20 = v19 + 40;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 40))(v23, v24);
  v25 = *(v20 + 24);
  v26 = *(a3[6] - 8);
  v27 = v26 + 40;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 40))(v30, v31);
  v32 = *(v27 + 24);
  v33 = *(a3[7] - 8);
  v34 = v33 + 40;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 40))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 24) + ((v36 + ((v29 + ((v22 + ((v39 + (v41 & ~v40)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  *((v37 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v37 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCC79F20(uint64_t result, unsigned int a2, void *a3)
{
  v44 = a3[2];
  v4 = *(*(v44 - 8) + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(*(v44 - 8) + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 > v7)
  {
    v7 = *(v9 + 84);
  }

  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  if (v12 > v7)
  {
    v7 = *(v11 + 84);
  }

  v13 = *(a3[6] - 8);
  v14 = *(v13 + 84);
  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a3[7] - 8);
  v17 = *(*(v44 - 8) + 64);
  if (*(v16 + 84) <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(v5 + 80);
  v20 = *(*(a3[3] - 8) + 64);
  v21 = *(v9 + 80);
  v22 = *(*(a3[4] - 8) + 64);
  v23 = *(v11 + 80);
  v24 = *(*(v8 - 8) + 64);
  v25 = *(v13 + 80);
  v26 = *(*(a3[6] - 8) + 64);
  v27 = *(v16 + 80);
  if (v18 <= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = v17 + v19;
  v30 = v24 + v25;
  v31 = (v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v17 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25;
  v32 = v26 + v27;
  v33 = ((v26 + v27 + v31) & ~v27) + *(*(a3[7] - 8) + 64);
  if (v28 >= a2)
  {
LABEL_38:
    if (v18 < 0x7FFFFFFF)
    {
      v43 = *((result + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v43 >= 0xFFFFFFFF)
      {
        LODWORD(v43) = -1;
      }

      return (v43 + 1);
    }

    else
    {
      if (v4 == v18)
      {
        v6 = *(*(v44 - 8) + 84);
        v42 = a3[2];
      }

      else
      {
        result = (v29 + result) & ~v19;
        if (v6 == v18)
        {
          v42 = a3[3];
        }

        else
        {
          result = (result + v20 + v21) & ~v21;
          if (v10 == v18)
          {
            v6 = v10;
            v42 = a3[4];
          }

          else
          {
            result = (result + v22 + v23) & ~v23;
            if (v12 == v18)
            {
              v6 = v12;
              v42 = a3[5];
            }

            else
            {
              result = (v30 + result) & ~v25;
              if (v14 == v18)
              {
                v6 = v14;
                v42 = a3[6];
              }

              else
              {
                result = (v32 + result) & ~v27;
                v6 = *(v16 + 84);
                v42 = a3[7];
              }
            }
          }
        }
      }

      return __swift_getEnumTagSinglePayload(result, v6, v42);
    }
  }

  else
  {
    v34 = ((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v35 = a2 - v28;
    v36 = v34 & 0xFFFFFFF8;
    if ((v34 & 0xFFFFFFF8) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = v35 + 1;
    }

    if (v37 >= 0x10000)
    {
      LODWORD(v38) = 4;
    }

    else
    {
      LODWORD(v38) = 2;
    }

    if (v37 < 0x100)
    {
      LODWORD(v38) = 1;
    }

    if (v37 >= 2)
    {
      v38 = v38;
    }

    else
    {
      v38 = 0;
    }

    switch(v38)
    {
      case 1:
        v39 = *(result + v34);
        if (!v39)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 2:
        v39 = *(result + v34);
        if (!v39)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 3:
        __break(1u);
        return result;
      case 4:
        v39 = *(result + v34);
        if (!v39)
        {
          goto LABEL_38;
        }

LABEL_35:
        v40 = v39 - 1;
        if (v36)
        {
          v40 = 0;
          v41 = *result;
        }

        else
        {
          v41 = 0;
        }

        result = v28 + (v41 | v40) + 1;
        break;
      default:
        goto LABEL_38;
    }
  }

  return result;
}

void sub_1DCC7A360(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v52 = a4[2];
  v5 = *(*(v52 - 8) + 84);
  v51 = a4[3];
  v6 = *(v51 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(*(v52 - 8) + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v50 = a4[4];
  v9 = *(v50 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v49 = a4[5];
  v12 = *(v49 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v47 = a4[7];
  v48 = a4[6];
  v15 = *(v48 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  v18 = *(a4[7] - 8);
  v19 = *(v18 + 84);
  v20 = *(v6 + 80);
  v21 = *(*(v51 - 8) + 64);
  v22 = *(*(v52 - 8) + 64) + v20;
  v23 = *(v9 + 80);
  v24 = *(*(v50 - 8) + 64);
  v25 = *(v12 + 80);
  if (v19 <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = *(v18 + 84);
  }

  v27 = *(*(v49 - 8) + 64);
  v28 = *(v15 + 80);
  v29 = *(*(v48 - 8) + 64);
  v30 = *(v18 + 80);
  if (v26 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v26;
  }

  v32 = v27 + v28;
  v33 = v29 + v30;
  v34 = ((v29 + v30 + ((v27 + v28 + ((v24 + v25 + ((v21 + v23 + (v22 & ~v20)) & ~v23)) & ~v25)) & ~v28)) & ~v30) + *(v18 + 64);
  v35 = ((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v31 >= a3)
  {
    v38 = 0;
  }

  else
  {
    if (((v34 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v36 = a3 - v31 + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }
  }

  if (a2 <= v31)
  {
    switch(v38)
    {
      case 1:
        a1[v35] = 0;
        if (a2)
        {
          goto LABEL_47;
        }

        break;
      case 2:
        *&a1[v35] = 0;
        if (a2)
        {
          goto LABEL_47;
        }

        break;
      case 3:
LABEL_81:
        __break(1u);
        break;
      case 4:
        *&a1[v35] = 0;
        goto LABEL_46;
      default:
LABEL_46:
        if (a2)
        {
LABEL_47:
          if (v26 < 0x7FFFFFFF)
          {
            v44 = (&a1[v34 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v44 = a2 & 0x7FFFFFFF;
              v44[1] = 0;
            }

            else
            {
              *v44 = (a2 - 1);
            }
          }

          else if (v26 >= a2)
          {
            if (v5 == v26)
            {
              v45 = a1;
              v46 = v52;
            }

            else
            {
              v45 = (&a1[v22] & ~v20);
              if (v7 == v26)
              {
                v5 = v7;
                v46 = v51;
              }

              else
              {
                v45 = (&v45[v21 + v23] & ~v23);
                if (v10 == v26)
                {
                  v5 = v10;
                  v46 = v50;
                }

                else
                {
                  v45 = (&v45[v24 + v25] & ~v25);
                  if (v13 == v26)
                  {
                    v5 = v13;
                    v46 = v49;
                  }

                  else
                  {
                    v45 = (&v45[v32] & ~v28);
                    if (v16 == v26)
                    {
                      v5 = v16;
                      v46 = v48;
                    }

                    else
                    {
                      v45 = (&v45[v33] & ~v30);
                      v5 = v19;
                      v46 = v47;
                    }
                  }
                }
              }
            }

            __swift_storeEnumTagSinglePayload(v45, a2, v5, v46);
          }

          else
          {
            if (v34 <= 3)
            {
              v41 = ~(-1 << (8 * v34));
            }

            else
            {
              v41 = -1;
            }

            if (v34)
            {
              v42 = v41 & (~v26 + a2);
              if (v34 <= 3)
              {
                v43 = v34;
              }

              else
              {
                v43 = 4;
              }

              bzero(a1, v34);
              switch(v43)
              {
                case 2:
                  *a1 = v42;
                  break;
                case 3:
                  *a1 = v42;
                  a1[2] = BYTE2(v42);
                  break;
                case 4:
                  *a1 = v42;
                  break;
                default:
                  *a1 = v42;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v34 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v39 = a2 - v31;
    }

    else
    {
      v39 = 1;
    }

    if (((v34 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v40 = ~v31 + a2;
      bzero(a1, ((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v40;
    }

    switch(v38)
    {
      case 1:
        a1[v35] = v39;
        break;
      case 2:
        *&a1[v35] = v39;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v35] = v39;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1DCC7A888()
{
  result = qword_1ECCA2B30;
  if (!qword_1ECCA2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2B30);
  }

  return result;
}

void *CommandFailure.__allocating_init(errorCode:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  return result;
}

uint64_t CommandFailure.reason.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CommandFailure.errorDomain.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void *CommandFailure.underlyingError.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *CommandFailure.init(errorCode:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  return v3;
}

void *CommandFailure.__allocating_init(errorCode:reason:errorDomain:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_3();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *CommandFailure.init(errorCode:reason:errorDomain:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_1DCC7AA4C()
{
  v1 = 7104878;
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  if (v0[6])
  {
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  if (v0[7])
  {
    swift_getErrorValue();

    v1 = sub_1DD0DF18C();
    v7 = v6;
  }

  else
  {

    v7 = 0xE300000000000000;
  }

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD116080);
  v8 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v8);

  MEMORY[0x1E12A6780](0x6E6F73616572202CLL, 0xEB0000000022203ALL);
  MEMORY[0x1E12A6780](v2, v3);

  MEMORY[0x1E12A6780](0x44726F727265202CLL, 0xEF203A6E69616D6FLL);
  MEMORY[0x1E12A6780](v4, v5);

  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD1160A0);
  MEMORY[0x1E12A6780](v1, v7);

  MEMORY[0x1E12A6780](10530, 0xE200000000000000);
  return 0;
}

unint64_t sub_1DCC7AC74()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  sub_1DD0DEC1C();

  v3 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v3);

  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD116110);
  MEMORY[0x1E12A6780](v1, v2);

  MEMORY[0x1E12A6780](10530, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

uint64_t CommandFailure.deinit()
{

  return v0;
}

uint64_t CommandFailure.__deallocating_deinit()
{
  CommandFailure.deinit();
  OUTLINED_FUNCTION_0_3();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCC7AE08(uint64_t a1)
{
  result = sub_1DCC7AE30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCC7AE30()
{
  result = qword_1EDE49B80[0];
  if (!qword_1EDE49B80[0])
  {
    type metadata accessor for CommandFailure();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE49B80);
  }

  return result;
}

void *CommonConfirmationReturning.__allocating_init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *CommonConfirmationReturning.init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

void *CommonConfirmationReturning.__allocating_init(yesGroup:noGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CommonConfirmationReturning();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = 0;
  result[7] = 0;
  return result;
}

double sub_1DCC7B06C@<D0>(_BYTE *a1@<X0>, void *a3@<X8>)
{
  switch(*a1)
  {
    case 2:
      v4 = v3[2];
      if (!v4)
      {
        goto LABEL_9;
      }

      v5 = v3[3];
      goto LABEL_8;
    case 3:
      v4 = v3[4];
      if (!v4)
      {
        goto LABEL_9;
      }

      v5 = v3[5];
      goto LABEL_8;
    default:
      v4 = v3[6];
      if (v4)
      {
        v5 = v3[7];
LABEL_8:
        *a3 = v4;
        a3[1] = v5;
        swift_unknownObjectRetain();
      }

      else
      {
LABEL_9:
        result = 0.0;
        *a3 = xmmword_1DD0E2F10;
      }

      return result;
  }
}

uint64_t CommonConfirmationReturning.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CommonConfirmationReturning.__deallocating_deinit()
{
  CommonConfirmationReturning.deinit();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for CommonFlowFrameConstants(_BYTE *result, int a2, int a3)
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

void static CommonFlowGuard.ensuringDeviceIsAuthenticated.getter()
{
  v0 = 6;
  v2 = &type metadata for FeatureFlagDefinitions.Core;
  v3 = &off_1F585CB38;
  v1 = 0;
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)(&v0);
}

uint64_t (*CommonFlowGuard.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_1DCB80BB8;
  a5[1] = result;
  return result;
}

void sub_1DCC7B348()
{
  type metadata accessor for PersonalDomainCheckFlow();
  v0 = swift_allocObject();
  sub_1DCC7EBFC(v0);
}

void sub_1DCC7B3AC()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  type metadata accessor for HomePodSpeechProfileCheckFlow();
  memset(v0, 0, sizeof(v0));
  v1 = 0;
  swift_allocObject();
  sub_1DCD87AB0(v2, v0);
}

void sub_1DCC7B43C()
{
  v0 = type metadata accessor for DefaultActiveCallCheckStrategy();
  v10[3] = v0;
  v10[4] = &off_1F58529C0;
  v10[0] = swift_allocObject();
  sub_1DCB17D04(v10, v9);
  if (qword_1ECCA11C8 != -1)
  {
    swift_once();
  }

  sub_1DCB17D04(&qword_1ECCA1FE8, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  type metadata accessor for ActiveCallCheckFlow();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  MEMORY[0x1EEE9AC00](v2, v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  *(v1 + 48) = v0;
  *(v1 + 56) = &off_1F58529C0;
  *(v1 + 24) = v6;
  *(v1 + 16) = 0;
  sub_1DCAFF9E8(v8, v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  swift_allocObject();
  sub_1DCC4ABB8(v1);
}

uint64_t sub_1DCC7B610(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a1(&v6);
  v4 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  OUTLINED_FUNCTION_1_1();
  swift_allocObject();
  return a3(v4);
}

uint64_t static CommonFlowGuard.disallowInSharingMode(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7DE64;
  *(result + 24) = v1;
  *v0 = sub_1DCC7DEAC;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7DEDC;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F248;
  v0[1] = result;
  return result;
}

void static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)(uint64_t a1)
{
  sub_1DCC7DF20(a1, v4);
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v2 = swift_allocObject();
  v3 = v4[1];
  v2[1] = v4[0];
  v2[2] = v3;
  v2[3] = v4[2];
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringDeviceIsAuthenticated<A>(using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v12);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v7 + 32))(v14 + v13, v12, a1);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E304;
  *(result + 24) = v14;
  *a3 = sub_1DCC7F24C;
  a3[1] = result;
  return result;
}

void sub_1DCC7B9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  (*(v7 + 16))(v9, a1, a2);
  sub_1DD01DF10(v9, v10, a2, a3);
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E340;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F24C;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7F22C;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F24C;
  v0[1] = result;
  return result;
}

void sub_1DCC7BBC0(uint64_t a1)
{
  v3 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  sub_1DCB17D04(a1, v11);
  v4 = v12;
  v5 = v13;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  sub_1DD01DF10(v8, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  sub_1DD0DCF8C();
}

void sub_1DCC7BDC0(uint64_t a1)
{
  type metadata accessor for GuardedAuthenticationFlow();
  sub_1DCB17D04(a1, v5);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE46630;
  sub_1DCB4E718(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  v4[3] = type metadata accessor for RefreshableDeviceState();
  v4[4] = &protocol witness table for RefreshableDeviceState;
  v4[0] = v3;
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringPersonalRequestsAreEnabledWhenApplicable(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E348;
  *(result + 24) = v1;
  *v0 = sub_1DCC7E390;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E3C0;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F250;
  v0[1] = result;
  return result;
}

uint64_t sub_1DCC7BFF0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a4)(_BYTE *)@<X3>, uint64_t *a5@<X8>)
{
  sub_1DCB17D04(a1, v9);
  a2(0);
  swift_allocObject();
  result = a4(v9);
  *a5 = result;
  return result;
}

uint64_t sub_1DCC7C0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = OUTLINED_FUNCTION_4();
  v9 = v8(v7);
  sub_1DCB17D04(a1, v20);
  v10 = v21;
  v11 = v22;
  __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = OUTLINED_FUNCTION_9_19(v14, v19);
  v16(v15);
  v17 = a3(v4, v9, v10, v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
  *v3 = v17;
  return result;
}

uint64_t static CommonFlowGuard.ensuringAppIsPermittedByScreentime(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E404;
  *(result + 24) = v1;
  *v0 = sub_1DCC7E40C;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E43C;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F254;
  v0[1] = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringUserIdentity(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCC7E444(v1, v2);
  OUTLINED_FUNCTION_12_20();
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x41uLL);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E4A0;
  *(result + 24) = v3;
  *v0 = sub_1DCC7E4A8;
  v0[1] = result;
  return result;
}

void sub_1DCC7C464(uint64_t a1)
{
  sub_1DCC7E444(a1, v2);
  type metadata accessor for UserIdentityCheckFlow(0);
  swift_allocObject();
  sub_1DD06F01C(v2, 0);
}

uint64_t static CommonFlowGuard.ensuringAnyUserIdentity.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_12_20();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_7_25(v2, 257);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7F230;
  *(result + 24) = v2;
  *a1 = sub_1DCC7F258;
  a1[1] = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringKnownUserIdentity.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_12_20();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_7_25(v2, 256);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7F230;
  *(result + 24) = v2;
  *a1 = sub_1DCC7F258;
  a1[1] = result;
  return result;
}

void static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  OUTLINED_FUNCTION_88_0();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DCC7E4D8;
  *(v4 + 24) = a1;
  *a2 = sub_1DCC7E4E0;
  a2[1] = v4;

  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringNoActiveCall(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E510;
  *(result + 24) = v1;
  *v0 = sub_1DCC7E554;
  v0[1] = result;
  return result;
}

double static CommonFlowGuard.ensuringUnlockedApp(_:)()
{
  OUTLINED_FUNCTION_10_21();
  OUTLINED_FUNCTION_88_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  OUTLINED_FUNCTION_88_0();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DCC7E584;
  *(v4 + 24) = v3;
  *v2 = sub_1DCC7E58C;
  v2[1] = v4;

  return result;
}

uint64_t sub_1DCC7C790()
{
  OUTLINED_FUNCTION_10_21();
  type metadata accessor for ProtectedAppCheck(0);

  result = ProtectedAppCheck.__allocating_init(appID:strategy:)();
  *v0 = result;
  return result;
}

double static CommonFlowGuard.ensuringUnlockedApps(_:using:)()
{
  OUTLINED_FUNCTION_10_21();
  sub_1DCB17D04(v3, v7);
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  sub_1DCAFF9E8(v7, v4 + 32);
  OUTLINED_FUNCTION_88_0();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DCC7E5BC;
  *(v5 + 24) = v4;
  *v2 = sub_1DCC7F25C;
  v2[1] = v5;

  return result;
}

uint64_t sub_1DCC7C898@<X0>(uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProtectedAppCheck(0);
  sub_1DCB17D04(a3, v7);

  result = ProtectedAppCheck.__allocating_init(appID:strategy:)();
  *a4 = result;
  return result;
}

double static CommonFlowGuard.ensuringUnlockedApps(_:using:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DCB17D04(a2, v8);
  OUTLINED_FUNCTION_41_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1DCAFF9E8(v8, v5 + 24);
  OUTLINED_FUNCTION_88_0();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DCC7E5C8;
  *(v6 + 24) = v5;
  *a3 = sub_1DCC7F25C;
  a3[1] = v6;

  return result;
}

uint64_t sub_1DCC7C9BC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProtectedAppCheck(0);
  sub_1DCB17D04(a2, v6);

  result = ProtectedAppCheck.__allocating_init(appIDs:strategy:)();
  *a3 = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringCorrectICloudSharedId(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v6 = type metadata accessor for ACAccountICloudIdProvider();
  v17[3] = v6;
  v17[4] = &off_1F58601D8;
  v17[0] = swift_allocObject();
  type metadata accessor for ICloudIdValidator();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v17, v6);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = OUTLINED_FUNCTION_9_19(v10, v16);
  v12(v11);
  v13 = *v3;
  v7[7] = v6;
  v7[8] = &off_1F58601D8;
  v7[4] = v13;
  OUTLINED_FUNCTION_88_0();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v7[2] = sub_1DCC7E5D4;
  v7[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E5DC;
  *(result + 24) = v7;
  *v2 = sub_1DCC7E5E4;
  v2[1] = result;
  return result;
}

void sub_1DCC7CB94()
{
  type metadata accessor for ICloudIdValidatorFlow();
  v2 = 0u;
  v3 = 0u;
  v4 = 0;
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)@<X0>(char a1@<W0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E614;
  *(result + 24) = v4;
  *a2 = sub_1DCC7E61C;
  a2[1] = result;
  return result;
}

void sub_1DCC7CC80(uint64_t a1)
{
  v2 = a1;
  type metadata accessor for SiriLocationAccessGuardFlow();
  SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:)(v2);
}

uint64_t static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:strategy:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DCB17D04(a2, v7);
  OUTLINED_FUNCTION_41_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1DCAFF9E8(v7, v5 + 24);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E64C;
  *(result + 24) = v5;
  *a3 = sub_1DCC7F260;
  a3[1] = result;
  return result;
}

void sub_1DCC7CD64(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  type metadata accessor for SiriLocationAccessGuardFlow();
  sub_1DCB17D04(a2, v5);
  SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)(v4, v5);
}

uint64_t GuardFlow.__allocating_init<A>(withDefaultPersonalDomainsStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DCC7CE38();
  v6 = GuardFlow.__allocating_init(withGuards:)(v5);
  OUTLINED_FUNCTION_112();
  (*(v7 + 8))(a1, a2);
  return v6;
}

uint64_t sub_1DCC7CE38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B38, &qword_1DD0E8260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4000;
  v2 = OUTLINED_FUNCTION_6_23();
  v4 = v3(v2);
  OUTLINED_FUNCTION_21_6(v4, v5, &qword_1ECCA23A0, &qword_1DD0E83F0, v6, v7, v8, v9, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64]);
  if (*&__src[24])
  {
    v10 = sub_1DCAFF9E8(__src, __dst);
    v18 = OUTLINED_FUNCTION_19_13(v10, v11, v12, v13, v14, v15, v16, v17, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0]);
    sub_1DCB17D04(v18, v19);
    OUTLINED_FUNCTION_1_1();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_16_12(v20, v21, v22, v23, v24, v25, v26, v27, *v108);
    OUTLINED_FUNCTION_88_0();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1DCC7F22C;
    *(v28 + 24) = v0;
    *(inited + 32) = sub_1DCC7F24C;
    *(inited + 40) = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  sub_1DCB185D0(v111, &qword_1ECCA23A0, &qword_1DD0E83F0);
  v29 = OUTLINED_FUNCTION_6_23();
  v31 = v30(v29);
  OUTLINED_FUNCTION_21_6(v31, v32, &qword_1ECCA2B60, &qword_1DD0E83F8, v33, v34, v35, v36, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64]);
  if (*&__src[24])
  {
    v37 = sub_1DCAFF9E8(__src, __dst);
    v45 = OUTLINED_FUNCTION_19_13(v37, v38, v39, v40, v41, v42, v43, v44, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0]);
    sub_1DCB17D04(v45, v46);
    OUTLINED_FUNCTION_1_1();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_16_12(v47, v48, v49, v50, v51, v52, v53, v54, *v108);
    OUTLINED_FUNCTION_88_0();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1DCC7F244;
    *(v55 + 24) = v0;
    *(inited + 48) = sub_1DCC7F250;
    *(inited + 56) = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  sub_1DCB185D0(v111, &qword_1ECCA2B60, &qword_1DD0E83F8);
  v56 = OUTLINED_FUNCTION_6_23();
  v58 = v57(v56);
  OUTLINED_FUNCTION_21_6(v58, v59, &qword_1ECCA2B68, &qword_1DD0E8400, v60, v61, v62, v63, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64]);
  if (*&__src[24])
  {
    v64 = sub_1DCAFF9E8(__src, __dst);
    v72 = OUTLINED_FUNCTION_19_13(v64, v65, v66, v67, v68, v69, v70, v71, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0]);
    sub_1DCB17D04(v72, v73);
    OUTLINED_FUNCTION_1_1();
    v74 = swift_allocObject();
    OUTLINED_FUNCTION_16_12(v74, v75, v76, v77, v78, v79, v80, v81, *v108);
    OUTLINED_FUNCTION_88_0();
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1DCC7F240;
    *(v82 + 24) = v0;
    *(inited + 64) = sub_1DCC7F248;
    *(inited + 72) = v82;
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
  }

  sub_1DCB185D0(v111, &qword_1ECCA2B68, &qword_1DD0E8400);
  v83 = OUTLINED_FUNCTION_6_23();
  v85 = v84(v83);
  OUTLINED_FUNCTION_21_6(v85, v86, &qword_1ECCA2B70, &qword_1DD0E8408, v87, v88, v89, v90, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64]);
  if (*&__src[8] == 1)
  {
    *(inited + 80) = 0;
    *(inited + 88) = 0;
  }

  else
  {
    v91 = memcpy(__dst, __src, 0x41uLL);
    v99 = OUTLINED_FUNCTION_19_13(v91, v92, v93, v94, v95, v96, v97, v98, *v108, *&v108[8], *&v108[16], *&v108[24], *&v108[32], *&v108[40], *&v108[48], *&v108[56], *&v108[64], __dst[0]);
    sub_1DCC7E444(v99, v100);
    OUTLINED_FUNCTION_12_20();
    v101 = swift_allocObject();
    memcpy((v101 + 16), v108, 0x41uLL);
    OUTLINED_FUNCTION_88_0();
    v102 = swift_allocObject();
    *(v102 + 16) = sub_1DCC7F230;
    *(v102 + 24) = v101;
    *(inited + 80) = sub_1DCC7F258;
    *(inited + 88) = v102;
    sub_1DCB06F30(__dst);
  }

  result = sub_1DCB185D0(v111, &qword_1ECCA2B70, &qword_1DD0E8408);
  v104 = 0;
  v105 = MEMORY[0x1E69E7CC0];
  for (i = (inited + 32); ; i += 2)
  {
    if (v104 == 4)
    {
      swift_setDeallocating();
      sub_1DCC6576C();
      return v105;
    }

    if (v104 > 3)
    {
      break;
    }

    ++v104;
    if (*i)
    {
      sub_1DD0DCF8C();
    }
  }

  __break(1u);
  return result;
}

uint64_t static CommonGuardFlowUtils.makeGuardFlow(withDefaultPersonalDomainsStrategy:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B38, &qword_1DD0E8260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4010;
  OUTLINED_FUNCTION_13_16();
  v2 = OUTLINED_FUNCTION_5_27();
  v3(v2);
  sub_1DCB17C3C(v44, &v42, &qword_1ECCA2B40, &qword_1DD0E8268);
  if (v43)
  {
    sub_1DCAFF9E8(&v42, v41);
    sub_1DCB17D04(v41, v40);
    OUTLINED_FUNCTION_1_1();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_14_22(v4, v5, v6, v7, v8, v9, v10, v11, v40[0]);
    OUTLINED_FUNCTION_88_0();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1DCC7F23C;
    *(v12 + 24) = v0;
    *(inited + 32) = sub_1DCC7F24C;
    *(inited + 40) = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  sub_1DCB185D0(v44, &qword_1ECCA2B40, &qword_1DD0E8268);
  OUTLINED_FUNCTION_13_16();
  v13 = OUTLINED_FUNCTION_5_27();
  v14(v13);
  sub_1DCB17C3C(v44, &v42, &qword_1ECCA2B48, &qword_1DD0E8270);
  if (v43)
  {
    sub_1DCAFF9E8(&v42, v41);
    sub_1DCB17D04(v41, v40);
    OUTLINED_FUNCTION_1_1();
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_14_22(v15, v16, v17, v18, v19, v20, v21, v22, v40[0]);
    OUTLINED_FUNCTION_88_0();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1DCC7F238;
    *(v23 + 24) = v0;
    *(inited + 48) = sub_1DCC7F250;
    *(inited + 56) = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  sub_1DCB185D0(v44, &qword_1ECCA2B48, &qword_1DD0E8270);
  OUTLINED_FUNCTION_13_16();
  v24 = OUTLINED_FUNCTION_5_27();
  v25(v24);
  sub_1DCB17C3C(v44, &v42, &qword_1ECCA2B50, &qword_1DD0E8278);
  if (v43)
  {
    sub_1DCAFF9E8(&v42, v41);
    sub_1DCB17D04(v41, v40);
    OUTLINED_FUNCTION_1_1();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_14_22(v26, v27, v28, v29, v30, v31, v32, v33, v40[0]);
    OUTLINED_FUNCTION_88_0();
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1DCC7F234;
    *(v34 + 24) = v0;
    *(inited + 64) = sub_1DCC7F248;
    *(inited + 72) = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
  }

  result = sub_1DCB185D0(v44, &qword_1ECCA2B50, &qword_1DD0E8278);
  v36 = MEMORY[0x1E69E7CC0];
  v37 = -1;
  for (i = (inited + 32); ; i += 2)
  {
    if (v37 == 2)
    {
      swift_setDeallocating();
      sub_1DCC6576C();
      type metadata accessor for GuardFlow();
      return GuardFlow.__allocating_init(withGuards:)(v36);
    }

    if (++v37 > 2)
    {
      break;
    }

    if (*i)
    {
      sub_1DD0DCF8C();
    }
  }

  __break(1u);
  return result;
}

uint64_t static CommonGuardFlowUtils.makeGuardFlow(withDefaultPersonalDomainsStrategy:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  type metadata accessor for GuardFlow();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v3, v1);
  return GuardFlow.__allocating_init<A>(withDefaultPersonalDomainsStrategy:)(v7, v1, v2);
}

uint64_t PersonalDomainsCommonGuardStrategy.authenticationStrategy.getter()
{
  OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  result = swift_allocObject();
  *(result + 16) = 6;
  *(result + 24) = 0;
  *(result + 48) = &type metadata for FeatureFlagDefinitions.Core;
  *(result + 56) = &off_1F585CB38;
  v0[3] = v1;
  v0[4] = &protocol witness table for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy;
  *v0 = result;
  return result;
}

uint64_t PersonalDomainsCommonGuardStrategyAsync.authenticationStrategy.getter()
{
  OUTLINED_FUNCTION_4();
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v1 = swift_allocObject();
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  *(v1 + 48) = &type metadata for FeatureFlagDefinitions.Core;
  *(v1 + 56) = &off_1F585CB38;
  v2 = sub_1DCC7E190(v1);
  result = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v0[3] = result;
  v0[4] = &off_1F5876F20;
  *v0 = v2;
  return result;
}

uint64_t sub_1DCC7D89C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

double PersonalDomainsCommonGuardStrategyAsync.userIdentityStrategy.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1DD0E3FF0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

void sub_1DCC7D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  sub_1DCB17D04(a1, v19);
  v7 = v20;
  v8 = v21;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x1EEE9AC00](v9, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  sub_1DD01D850(v11, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  sub_1DCB17D04(a2, v19);
  sub_1DCB17D04(a3, v18);
  type metadata accessor for UnlockDeviceFlowAsync(0);
  swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
  MEMORY[0x1EEE9AC00](v13, v13);
  (*(v15 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD01F0F0();
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
  swift_allocObject();
  sub_1DCC4AC30(v17);
}

uint64_t sub_1DCC7DB50(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC7DB70, 0, 0);
}

uint64_t sub_1DCC7DB70()
{
  v1 = v0[9];
  if (*(v1 + 120))
  {
    v2 = v0[8];
    v3 = type metadata accessor for ExecuteResponse(0);
    v4 = *(v3 + 36);
    v5 = type metadata accessor for PluginAction(0);
    __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
    *v2 = 1;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 24) = 0;
    *(v2 + 48) = -4;
    v6 = (v2 + *(v3 + 40));
    *v6 = 0u;
    v6[1] = 0u;
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 72);
    __swift_project_boxed_opaque_existential_1((v1 + 40), v7);
    v9 = *(v1 + 104);
    v10 = *(v1 + 112);
    __swift_project_boxed_opaque_existential_1((v1 + 80), v9);
    (*(v10 + 8))(v9, v10);
    v11 = (*(v8 + 248))(v0 + 2, v7, v8);
    v12 = sub_1DCC4B20C((v0 + 2));
    v13 = v0[9];
    if ((v11 & 1) == 0)
    {
      *(v1 + 120) = 1;
      (*(v13 + 24))(v12);
      sub_1DD0DCF8C();
    }

    *(v13 + 16) = 0;
    static ExecuteResponse.complete()();
  }

  v14 = v0[1];

  return v14();
}

void *sub_1DCC7DD34()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  return v0;
}

uint64_t sub_1DCC7DD64()
{
  sub_1DCC7DD34();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC7DDBC()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DCBFA404;

  return sub_1DCC7DB50(v2);
}

uint64_t sub_1DCC7DF7C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v22 - v17;
  (*(v12 + 32))(&v22 - v17);
  type metadata accessor for GuardedAuthenticationFlow();
  v19 = swift_allocObject();
  (*(v12 + 16))(v15, v18, a6);
  v20 = sub_1DCC7E0F0(v15, a2, a3, a4, v19, a6, a7);
  (*(v12 + 8))(v18, a6);
  return v20;
}

uint64_t sub_1DCC7E0F0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 104) = a6;
  *(a5 + 112) = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a5 + 80));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  *(a5 + 16) = 1;
  *(a5 + 120) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  sub_1DCAFF9E8(a2, a5 + 40);
  return a5;
}

void *sub_1DCC7E190(uint64_t *a1)
{
  v17 = *a1;
  v18 = &protocol witness table for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy;
  v16[0] = a1;
  sub_1DCB17D04(v16, v15);
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v15, v2 + 16);
  sub_1DCB17D04(v16, &v14);
  OUTLINED_FUNCTION_1_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  return sub_1DD01C898(sub_1DCC7F18C, v2, sub_1DCD799A4, 0, &unk_1DD0E8460, v1, DynamicType);
}

void assignWithCopy for CommonFlowGuard(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_1DD0DCF8C();
}

_OWORD *assignWithTake for CommonFlowGuard(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CommonFlowGuard(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CommonFlowGuard(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonGuardFlowUtils(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for GuardedAuthenticationFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCC7E980()
{
  result = qword_1ECCA2B58;
  if (!qword_1ECCA2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2B58);
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{

  if (*(v0 + 32))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  }

  OUTLINED_FUNCTION_12_20();

  return swift_deallocObject();
}

uint64_t sub_1DCC7EA28(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v25);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  sub_1DCB17D04(&v25, v24);
  sub_1DCB17D04(a2, v23);
  sub_1DCAFF9E8(&v25, v22);
  sub_1DCAFF9E8(a2, v21);
  v13 = swift_allocObject();
  sub_1DCAFF9E8(v22, v13 + 16);
  sub_1DCAFF9E8(v21, v13 + 56);
  sub_1DCAFF9E8(a3, v13 + 96);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  MEMORY[0x1EEE9AC00](v14, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_1DCC7DF7C(v16, v23, sub_1DCC7F264, v13, a4, a5, a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v18;
}

void sub_1DCC7EBFC(uint64_t a1)
{
  v1 = &type metadata for DefaultPersonalDomainCheckFlowStrategy;
  v2 = &off_1F5867C90;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_allocObject();
  sub_1DD0DCACC();
}

uint64_t sub_1DCC7ED28(void *a1, uint64_t a2, uint64_t a3)
{
  v14[3] = type metadata accessor for LegacySiriKitOutputPublisher();
  v14[4] = &off_1F58668F0;
  v14[0] = a2;
  *(a3 + 16) = 0;
  sub_1DCB17D04(a1, &v11);
  v6 = type metadata accessor for ScreentimeCheckFlowStrategyAsyncAdapter();
  v7 = swift_allocObject();
  sub_1DCAFF9E8(&v11, v7 + 16);
  *(a3 + 48) = v6;
  *(a3 + 56) = &off_1F5872998;
  *(a3 + 24) = v7;
  sub_1DCB17D04(v14, &v11);
  v8 = type metadata accessor for OutputPublisherAsyncAdapter();
  v9 = swift_allocObject();
  sub_1DCAFF9E8(&v11, v9 + 16);
  v12 = v8;
  v13 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v11 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  sub_1DCAFF9E8(&v11, a3 + 64);
  return a3;
}

uint64_t sub_1DCC7EE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = &protocol witness table for RefreshableDeviceState;
  v31 = type metadata accessor for RefreshableDeviceState();
  *&v30 = a2;
  v28 = &type metadata for OutputPublishers;
  v29 = &off_1F5866A08;
  *&v27 = a3;
  v25 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v26 = &off_1F5876F20;
  *&v24 = a1;
  sub_1DCB17D04(&v24, v23);
  sub_1DCB17D04(&v30, v22);
  sub_1DCAFF9E8(&v24, v21);
  sub_1DCAFF9E8(&v30, v20);
  v6 = swift_allocObject();
  sub_1DCAFF9E8(v21, v6 + 16);
  sub_1DCAFF9E8(v20, v6 + 56);
  sub_1DCAFF9E8(&v27, v6 + 96);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  type metadata accessor for GuardedAuthenticationFlow();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
  MEMORY[0x1EEE9AC00](v13, v13);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_1DCC7F0C0(v11, *v15, sub_1DCC7F0B0, v6, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v17;
}

uint64_t sub_1DCC7F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 64) = type metadata accessor for RefreshableDeviceState();
  *(a5 + 72) = &protocol witness table for RefreshableDeviceState;
  *(a5 + 40) = a2;
  *(a5 + 104) = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  *(a5 + 112) = &off_1F5876F20;
  *(a5 + 80) = a1;
  *(a5 + 16) = 1;
  *(a5 + 120) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return a5;
}

uint64_t objectdestroy_213Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocObject();
}

uint64_t sub_1DCC7F194()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCBFA404;

  return sub_1DD01C904(v3, v0 + 16);
}

void sub_1DCC7F268(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C60, &qword_1DD0E8580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v30[5] = v30 - v8;
  v31 = sub_1DD0DD92C();
  v30[4] = *(v31 - 8);
  v10 = MEMORY[0x1EEE9AC00](v31, v9);
  v30[3] = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v30[7] = v30 - v13;
  v14 = sub_1DD0DD9DC();
  v30[9] = *(v14 - 8);
  v30[10] = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v30[8] = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v32 = v30 - v19;
  v20 = sub_1DD0DD94C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C78, &unk_1DD0E8590);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = sub_1DD0DD9BC();
  v30[6] = a3;
  v30[2] = v29;
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v29);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  *v24 = a1;
  (*(v21 + 104))(v24, *MEMORY[0x1E69D2930], v20);
  sub_1DD0DCF8C();
}

void static Transformer<>.transformer(contactResolver:contactResolverConfig:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v3 = OUTLINED_FUNCTION_99(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1DCC85B44(a1, v15, &qword_1ECCA2B88, &qword_1DD0E8498);
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85B44(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v10 = v15[1];
  *(v9 + 16) = v15[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v16;
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85AA8(v11, v12, v13, v14);
  sub_1DD0DC7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B90, &qword_1DD0E84A0);
  OUTLINED_FUNCTION_4_24();
}

uint64_t sub_1DCC7FBCC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB8, &qword_1DD0E84C8);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1DD0DBE9C();
  sub_1DCC85B44(v45, v43, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (v44)
  {
    v28 = v4;
    sub_1DCC85B44(v43, v42, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    sub_1DD0DBD9C();
    if (swift_dynamicCast())
    {
      v27 = v46;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_1DCC85B44(&v39, &v36, &qword_1ECCA2B98, &qword_1DD0E84A8);
      sub_1DCC85B44(v30, v11, &qword_1ECCA2B80, &qword_1DD0E8490);
      sub_1DCC85B44(v31, &v33, &qword_1ECCA2B88, &qword_1DD0E8498);
      v14 = (*(v29 + 80) + 56) & ~*(v29 + 80);
      v15 = swift_allocObject();
      v16 = v37;
      *(v15 + 16) = v36;
      *(v15 + 32) = v16;
      *(v15 + 48) = v38;
      sub_1DCC85AA8(v11, v15 + v14, &qword_1ECCA2B80, &qword_1DD0E8490);
      v17 = v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
      v18 = v34;
      *v17 = v33;
      *(v17 + 16) = v18;
      *(v17 + 32) = v35;
      sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
      sub_1DD0DCBAC();
    }

    sub_1DD0DBD1C();
    if (swift_dynamicCast())
    {
      v26[1] = v46;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_1DCC85B44(v31, &v36, &qword_1ECCA2B88, &qword_1DD0E8498);
      sub_1DCC85B44(v30, v11, &qword_1ECCA2B80, &qword_1DD0E8490);
      sub_1DCC85B44(&v39, &v33, &qword_1ECCA2B98, &qword_1DD0E84A8);
      v19 = (*(v29 + 80) + 56) & ~*(v29 + 80);
      v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v22 = v37;
      *(v21 + 16) = v36;
      *(v21 + 32) = v22;
      *(v21 + 48) = v38;
      sub_1DCC85AA8(v11, v21 + v19, &qword_1ECCA2B80, &qword_1DD0E8490);
      v23 = v21 + v20;
      v24 = v34;
      *v23 = v33;
      *(v23 + 16) = v24;
      *(v23 + 32) = v35;
      sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
      sub_1DD0DCBAC();
    }

    sub_1DCB185D0(v45, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    sub_1DCB185D0(v45, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  *v32 = 0;
  return sub_1DCB185D0(v43, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

void static Transformer<>.transformer(contactResolver:contactResolverConfig:referenceResolver:)()
{
  OUTLINED_FUNCTION_9_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v3 = OUTLINED_FUNCTION_99(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1DCC85B44(v0, v11, &qword_1ECCA2B98, &qword_1DD0E84A8);
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85B44(v5, v6, v7, v8);
  sub_1DCC85B44(v1, v10, &qword_1ECCA2B88, &qword_1DD0E8498);
  OUTLINED_FUNCTION_7_26();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_3_34(v9);
  OUTLINED_FUNCTION_5_28();
  sub_1DD0DBD9C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  OUTLINED_FUNCTION_4_24();
}

{
  OUTLINED_FUNCTION_9_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v3 = OUTLINED_FUNCTION_99(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1DCC85B44(v1, v11, &qword_1ECCA2B88, &qword_1DD0E8498);
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85B44(v5, v6, v7, v8);
  sub_1DCC85B44(v0, v10, &qword_1ECCA2B98, &qword_1DD0E84A8);
  OUTLINED_FUNCTION_7_26();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_3_34(v9);
  OUTLINED_FUNCTION_5_28();
  sub_1DD0DBD1C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  OUTLINED_FUNCTION_4_24();
}

void sub_1DCC80608()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0 - 8, v3);
  v5 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = sub_1DD0DC8CC();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_1DCC85B44(v16, v14, &qword_1ECCA2B88, &qword_1DD0E8498);
  sub_1DCC85B44(v8, v5, &qword_1ECCA2B80, &qword_1DD0E8490);
  v10 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v12 = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v15;
  sub_1DCC85AA8(v5, v11 + v10, &qword_1ECCA2B80, &qword_1DD0E8490);
  sub_1DD0DC7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B90, &qword_1DD0E84A0);
  sub_1DD0DCBAC();
}

void sub_1DCC808AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v66 = a4;
  v69 = a3;
  v62 = a5;
  v54 = sub_1DD0DBD5C();
  v61 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v7);
  v52[1] = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C48, &qword_1DD0E8568);
  MEMORY[0x1EEE9AC00](v53, v9);
  v58 = v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C50, &qword_1DD0E8570);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v52[2] = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v59 = v52 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v60 = v52 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C58, &qword_1DD0E8578);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v20);
  v55 = v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v52[3] = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v68 = v52 - v27;
  v63 = sub_1DD0DC82C();
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v28);
  v64 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = (v52 - v32);
  v34 = sub_1DD0DC8CC();
  v71 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v70 = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C60, &qword_1DD0E8580);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = v52 - v39;
  v41 = sub_1DD0DD9BC();
  MEMORY[0x1EEE9AC00](v41, v42);
  v43 = *a1;
  sub_1DCC85B44(a2, &v72, &qword_1ECCA2B98, &qword_1DD0E84A8);
  v67 = v43;
  if (v73)
  {
    sub_1DCAFF9E8(&v72, &v74);
    v44 = sub_1DD0DBA1C();
    sub_1DCC7F268(v44, &v74, v40);
  }

  sub_1DCB185D0(&v72, &qword_1ECCA2B98, &qword_1DD0E84A8);
  sub_1DCC85B44(v69, v33, &qword_1ECCA2B80, &qword_1DD0E8490);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v34);
  v47 = v70;
  v46 = v71;
  if (EnumTagSinglePayload == 1)
  {
    v48 = &qword_1ECCA2B80;
    v49 = &qword_1DD0E8490;
    v50 = v33;
  }

  else
  {
    (*(v71 + 32))(v70, v33, v34);
    sub_1DCC85B44(v66, &v72, &qword_1ECCA2B88, &qword_1DD0E8498);
    if (v73)
    {
      sub_1DCAFF9E8(&v72, &v74);
      v52[0] = 0;
      sub_1DD0DCF8C();
    }

    (*(v46 + 8))(v47, v34);
    v48 = &qword_1ECCA2B88;
    v49 = &qword_1DD0E8498;
    v50 = &v72;
  }

  sub_1DCB185D0(v50, v48, v49);
  if (qword_1EDE463E8 != -1)
  {
    swift_once();
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF0, &qword_1DD0E8520);
  __swift_project_value_buffer(v51, qword_1EDE57CC0);
  sub_1DD0DCBBC();
}

void sub_1DCC819B8(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1 - 8, v4);
  v6 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = sub_1DD0DC8CC();
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_1DCC85B44(v24, v22, &qword_1ECCA2B98, &qword_1DD0E84A8);
  sub_1DCC85B44(v9, v6, &qword_1ECCA2B80, &qword_1DD0E8490);
  sub_1DCC85B44(v26, v20, &qword_1ECCA2B88, &qword_1DD0E8498);
  v13 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = v22[1];
  *(v15 + 16) = v22[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v23;
  sub_1DCC85AA8(v6, v15 + v13, &qword_1ECCA2B80, &qword_1DD0E8490);
  v17 = v15 + v14;
  v18 = v20[1];
  *v17 = v20[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v21;
  sub_1DD0DBD9C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  sub_1DD0DCBAC();
}

void sub_1DCC81D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  __swift_allocate_value_buffer(v0, qword_1EDE464B8);
  __swift_project_value_buffer(v0, qword_1EDE464B8);
  sub_1DD0DBD1C();
  sub_1DD0DBD9C();
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC81D94@<X0>(void *a1@<X8>)
{
  sub_1DD0DC13C();
  swift_allocObject();
  v2 = sub_1DD0DC12C();
  sub_1DD0DBA1C();
  sub_1DD0DBE0C();

  if (!MEMORY[0x1E12A4450](v2))
  {
    sub_1DD0DCF1C();
  }

  sub_1DD0DBD9C();
  sub_1DD0DBEBC();
  if (!v4)
  {
    sub_1DD0DCF1C();
  }

  *a1 = v4;
  return result;
}

void sub_1DCC82098()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  MEMORY[0x1EEE9AC00](v7, v8);
  if (qword_1EDE464B0 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  __swift_project_value_buffer(v9, qword_1EDE464B8);
  sub_1DD0DCBBC();
}

uint64_t objectdestroy_2Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64) + v3 + 7;
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1DD0DC8CC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {
    OUTLINED_FUNCTION_112();
    (*(v8 + 8))(v0 + v3, v7);
  }

  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v6));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCC8259C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

void sub_1DCC825F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0 - 8, v3);
  v5 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - v7;
  v9 = sub_1DD0DC8CC();
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_1DCC85B44(v21, v17, &qword_1ECCA2B88, &qword_1DD0E8498);
  sub_1DCC85B44(v8, v5, &qword_1ECCA2B80, &qword_1DD0E8490);
  sub_1DCC85B44(v19, v15, &qword_1ECCA2B98, &qword_1DD0E84A8);
  v10 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v12 = v17[1];
  *(v11 + 16) = v17[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v18;
  sub_1DCC85AA8(v5, v11 + v10, &qword_1ECCA2B80, &qword_1DD0E8490);
  v13 = v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = v15[1];
  *v13 = v15[0];
  *(v13 + 16) = v14;
  *(v13 + 32) = v16;
  sub_1DD0DBD1C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  sub_1DD0DCBAC();
}

void sub_1DCC82900()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF8, &unk_1DD0E8528);
  __swift_allocate_value_buffer(v0, qword_1ECCD25C8);
  __swift_project_value_buffer(v0, qword_1ECCD25C8);
  sub_1DD0DC16C();
  sub_1DD0DBD1C();
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC82990@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD0DC06C();
  swift_allocObject();
  v2 = sub_1DD0DC05C();
  sub_1DD0DC15C();
  if (v3)
  {
    sub_1DD0DC04C();
  }

  if (sub_1DD0DC14C())
  {
    sub_1DD0DCF8C();
  }

  if (!MEMORY[0x1E12A4450](v2))
  {
    sub_1DD0DCF1C();
  }

  sub_1DD0DBD1C();
  sub_1DD0DBEBC();
  if (!v5)
  {
    sub_1DD0DCF1C();
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1DCC82CBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD116270 == a2;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000013 && 0x80000001DD116290 == a2)
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC() & 1;
  }
}

void sub_1DCC82D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD0, &qword_1DD0E8500);
  __swift_allocate_value_buffer(v0, qword_1EDE57CF0);
  __swift_project_value_buffer(v0, qword_1EDE57CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C18, &qword_1DD0E8548);
  sub_1DCB10E5C(0, &qword_1EDE46200, 0x1E696E948);
  sub_1DD0DCBAC();
}

id sub_1DCC82E18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*a1)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E696E948]);
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_6:
    result = sub_1DCC9DA1C(v15, v16, v17);
    goto LABEL_7;
  }

  sub_1DD0DC1BC();
  if (!v3)
  {
    v18 = sub_1DD0DC1CC();
    v20 = v19;
    sub_1DD0DBA1C();
    v21 = sub_1DD0DC6EC();
    v23 = v22;

    v24 = sub_1DCC82CBC(v21, v23);

    v25 = objc_allocWithZone(MEMORY[0x1E696E948]);
    v15 = v18;
    v16 = v20;
    v17 = v24;
    goto LABEL_6;
  }

  v4 = sub_1DD0DC1CC();
  v6 = v5;
  sub_1DD0DBA1C();
  v7 = sub_1DD0DC6EC();
  v9 = v8;

  v10 = sub_1DCC82CBC(v7, v9);

  v11 = sub_1DD0DDF8C();

  v12 = objc_allocWithZone(MEMORY[0x1E696E948]);
  result = sub_1DCC85944(v4, v6, v10, v11);
LABEL_7:
  *a2 = result;
  return result;
}

void sub_1DCC82F84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD8, &qword_1DD0E8508);
  __swift_allocate_value_buffer(v0, qword_1EDE57C90);
  __swift_project_value_buffer(v0, qword_1EDE57C90);
  type metadata accessor for INPersonRelationship(0);
  sub_1DD0DC54C();
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC83014@<X0>(uint64_t *a2@<X8>)
{
  sub_1DD0DC54C();
  swift_allocObject();
  v3 = sub_1DD0DC53C();
  sub_1DD0DDFBC();
  sub_1DD0DC52C();

  *a2 = v3;
  return result;
}

void sub_1DCC83084()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE0, &qword_1DD0E8510);
  __swift_allocate_value_buffer(v0, qword_1EDE57CA8);
  __swift_project_value_buffer(v0, qword_1EDE57CA8);
  sub_1DCB10E5C(0, &qword_1EDE46200, 0x1E696E948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C10, &qword_1DD0E8540);
  sub_1DD0DCBAC();
}

void sub_1DCC83130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE8, &qword_1DD0E8518);
  __swift_allocate_value_buffer(v0, qword_1EDE57CD8);
  __swift_project_value_buffer(v0, qword_1EDE57CD8);
  sub_1DD0DAD7C();
  sub_1DD0DC37C();
  sub_1DD0DCBAC();
}

void sub_1DCC831C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF0, &qword_1DD0E8520);
  __swift_allocate_value_buffer(v0, qword_1EDE57CC0);
  __swift_project_value_buffer(v0, qword_1EDE57CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC83268@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  if (a1[1])
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    v9 = sub_1DD0DDF8C();
    v10 = [v8 personNameComponentsFromString_];

    if (v10)
    {
      sub_1DD0DAD5C();

      v11 = sub_1DD0DAD7C();
      v12 = 0;
    }

    else
    {
      v11 = sub_1DD0DAD7C();
      v12 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v12, 1, v11);
    return sub_1DCC85AA8(v7, a2, &qword_1ECCA32B0, &qword_1DD0E8538);
  }

  else
  {
    v13 = sub_1DD0DAD7C();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
  }
}

void sub_1DCC833D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  __swift_allocate_value_buffer(v0, qword_1EDE57D08);
  __swift_project_value_buffer(v0, qword_1EDE57D08);
  sub_1DD0DBE3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  sub_1DD0DCBAC();
}

void sub_1DCC83470(uint64_t a1@<X8>)
{
  v67 = a1;
  v45 = sub_1DD0DAC2C();
  v44[2] = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v1);
  v44[1] = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C30, &qword_1DD0E8558);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v44[3] = v44 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C38, &qword_1DD0E8560);
  v47 = *(v49 - 8);
  v10 = MEMORY[0x1EEE9AC00](v49, v9);
  v48 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v71 = v44 - v13;
  v14 = sub_1DD0DC8FC();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v61 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DD0DC90C();
  v59 = *(v17 - 8);
  v60 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v58 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DD0DC92C();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v20);
  v70 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DD0DAFDC();
  MEMORY[0x1EEE9AC00](v50, v22);
  v57 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DD0DB15C();
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v56 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DD0DC93C();
  v54 = *(v27 - 8);
  v55 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v53 = v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1DD0DB18C();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v52 = v44 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DD0DB0FC();
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v51 = v44 - v40;
  MEMORY[0x1EEE9AC00](v39, v41);
  v42 = sub_1DD0DC89C();
  v64 = *(v42 - 8);
  v65 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  sub_1DD0DBE2C();

  v69 = sub_1DD0DBE1C();
  sub_1DD0DCF8C();
}

void sub_1DCC84118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  __swift_allocate_value_buffer(v0, qword_1EDE46440);
  __swift_project_value_buffer(v0, qword_1EDE46440);
  if (qword_1EDE46460 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDE57D08);
  sub_1DD0DCBBC();
}

void *sub_1DCC8421C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39[13] = a2;
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23C0, &qword_1DD0E4F68);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v39[15] = v39 - v4;
  v5 = sub_1DD0DAC2C();
  v39[11] = *(v5 - 8);
  v39[12] = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v39[16] = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v39 - v10;
  v12 = sub_1DD0DAFDC();
  v41 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v39[10] = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v39 - v17;
  v19 = sub_1DD0DB10C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DD0DB15C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, *MEMORY[0x1E6969868], v19);
  sub_1DD0DB11C();
  (*(v20 + 8))(v23, v19);
  sub_1DCC85B44(v40, v11, &qword_1ECCA9BA0, &qword_1DD0E6280);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v39[8] = v25;
    v39[9] = v24;
    v30 = v18;
    (*(v41 + 32))(v18, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C28, &qword_1DD0E8550);
    v31 = sub_1DD0DB14C();
    v40 = v12;
    v32 = v31;
    v33 = *(v31 - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1DD0E8470;
    v37 = v36 + v35;
    v38 = *(v33 + 104);
    v38(v37, *MEMORY[0x1E6969A68], v32);
    v38(v37 + v34, *MEMORY[0x1E6969A78], v32);
    v38(v37 + 2 * v34, *MEMORY[0x1E6969A48], v32);
    v38(v37 + 3 * v34, *MEMORY[0x1E6969AC0], v32);
    v38(v37 + 4 * v34, *MEMORY[0x1E6969A58], v32);
    v38(v37 + 5 * v34, *MEMORY[0x1E6969A88], v32);
    v38(v37 + 6 * v34, *MEMORY[0x1E6969A98], v32);
    sub_1DCC612CC(v36);
    v39[6] = v28;
    v39[7] = v30;
    sub_1DD0DB12C();

    sub_1DD0DC1AC();
    swift_allocObject();
    sub_1DD0DC19C();
    sub_1DD0DABCC();
    sub_1DD0DC18C();
    swift_allocObject();
    sub_1DD0DC19C();
    sub_1DD0DABDC();
    sub_1DD0DC18C();
    sub_1DD0DC3BC();
    swift_allocObject();
    sub_1DD0DC3AC();
    sub_1DD0DCF8C();
  }

  sub_1DCB185D0(v11, &qword_1ECCA9BA0, &qword_1DD0E6280);
  sub_1DCC859C8();
  swift_allocError();
  swift_willThrow();
  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_1DCC84DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC8, &qword_1DD0E84F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E8480;
  if (qword_1EDE46400 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA0, &qword_1DD0E84B0);
  v2 = __swift_project_value_buffer(v1, qword_1EDE46408);
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1DCC85674(&qword_1EDE46390, &qword_1ECCA2BA0, &qword_1DD0E84B0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 32));
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1Tm, v2, v1);
  if (qword_1EDE46468 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  v5 = __swift_project_value_buffer(v4, qword_1EDE46470);
  *(v0 + 96) = v4;
  *(v0 + 104) = sub_1DCC85674(&qword_1EDE463A8, &qword_1ECCA2BA8, &qword_1DD0E84B8);
  v6 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 72));
  (*(*(v4 - 8) + 16))(v6, v5, v4);
  if (qword_1EDE464B0 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  v8 = __swift_project_value_buffer(v7, qword_1EDE464B8);
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1DCC85674(&qword_1EDE463B8, &qword_1ECCA2BB0, &qword_1DD0E84C0);
  v9 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 112));
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  if (qword_1EDE46488 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB8, &qword_1DD0E84C8);
  v11 = __swift_project_value_buffer(v10, qword_1EDE46490);
  *(v0 + 176) = v10;
  *(v0 + 184) = sub_1DCC85674(&qword_1EDE463B0, &qword_1ECCA2BB8, &qword_1DD0E84C8);
  v12 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 152));
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  if (qword_1EDE46428 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD0, &qword_1DD0E8500);
  v14 = __swift_project_value_buffer(v13, qword_1EDE57CF0);
  *(v0 + 216) = v13;
  *(v0 + 224) = sub_1DCC85674(&qword_1EDE46398, &qword_1ECCA2BD0, &qword_1DD0E8500);
  v15 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 192));
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  if (qword_1EDE463D0 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD8, &qword_1DD0E8508);
  v17 = __swift_project_value_buffer(v16, qword_1EDE57C90);
  *(v0 + 256) = v16;
  *(v0 + 264) = sub_1DCC85674(&qword_1EDE46370, &qword_1ECCA2BD8, &qword_1DD0E8508);
  v18 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 232));
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  if (qword_1EDE463D8 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE0, &qword_1DD0E8510);
  v20 = __swift_project_value_buffer(v19, qword_1EDE57CA8);
  *(v0 + 296) = v19;
  *(v0 + 304) = sub_1DCC85674(&qword_1EDE46378, &qword_1ECCA2BE0, &qword_1DD0E8510);
  v21 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 272));
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  if (qword_1EDE463F0 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE8, &qword_1DD0E8518);
  v23 = __swift_project_value_buffer(v22, qword_1EDE57CD8);
  *(v0 + 336) = v22;
  *(v0 + 344) = sub_1DCC85674(&qword_1EDE46388, &qword_1ECCA2BE8, &qword_1DD0E8518);
  v24 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 312));
  (*(*(v22 - 8) + 16))(v24, v23, v22);
  if (qword_1EDE463E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF0, &qword_1DD0E8520);
  v26 = __swift_project_value_buffer(v25, qword_1EDE57CC0);
  *(v0 + 376) = v25;
  *(v0 + 384) = sub_1DCC85674(&qword_1EDE46380, &qword_1ECCA2BF0, &qword_1DD0E8520);
  v27 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 352));
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  if (qword_1EDE46438 != -1)
  {
    swift_once();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  v29 = __swift_project_value_buffer(v28, qword_1EDE46440);
  *(v0 + 416) = v28;
  *(v0 + 424) = sub_1DCC85674(&qword_1EDE463A0, &qword_1ECCA2BC0, qword_1DD0E84D0);
  v30 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 392));
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  if (qword_1ECCA1260 != -1)
  {
    swift_once();
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF8, &unk_1DD0E8528);
  v32 = __swift_project_value_buffer(v31, qword_1ECCD25C8);
  *(v0 + 456) = v31;
  *(v0 + 464) = sub_1DCC85674(&qword_1ECCA2C00, &qword_1ECCA2BF8, &unk_1DD0E8528);
  v33 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 432));
  result = (*(*(v31 - 8) + 16))(v33, v32, v31);
  off_1EDE48098 = v0;
  return result;
}

uint64_t sub_1DCC855E4()
{
  if (qword_1EDE48090 != -1)
  {
    result = swift_once();
  }

  if (*(off_1EDE48098 + 2))
  {
    sub_1DCB17CA0(off_1EDE48098 + 32, v1);
    sub_1DD0DCDFC();
  }

  return result;
}

uint64_t sub_1DCC85674(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DCC8572C()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC85774(uint64_t a1)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

id sub_1DCC857B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v17 = sub_1DD0DAD7C();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v17) != 1)
  {
    v18 = sub_1DD0DAD3C();
    (*(*(v17 - 8) + 8))(a2, v17);
  }

  if (a4)
  {
    v19 = sub_1DD0DDF8C();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = sub_1DD0DDF8C();
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = sub_1DD0DDF8C();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v11 initWithPersonHandle:a1 nameComponents:v18 displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 relationship:a10];

  return v22;
}

id sub_1DCC85944(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1DD0DDF8C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

unint64_t sub_1DCC859C8()
{
  result = qword_1ECCA2C20;
  if (!qword_1ECCA2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2C20);
  }

  return result;
}

uint64_t sub_1DCC85AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1DCC85AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCC85B44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DCC85B98(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  OUTLINED_FUNCTION_99(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  return a2(a1, v2 + 16, v2 + v10, v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
}

_BYTE *storeEnumTagSinglePayload for TransformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCC85D00()
{
  result = qword_1ECCA2C88;
  if (!qword_1ECCA2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2C88);
  }

  return result;
}

unint64_t CompanionCompatibilityCheckFlowStrategy.requirement.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DCC8808C(v2, v3);
}

uint64_t static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v5 + 32) = a2;
  *(v5 + 33) = 0;
  v6 = OUTLINED_FUNCTION_68();
  sub_1DCC8808C(v6, v7);
  return v5;
}

uint64_t static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:shouldOutputErrorDialog:)(unint64_t *a1, char a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = a2;
  *(v7 + 33) = a3;
  sub_1DCC8808C(v5, v6);
  return v7;
}

uint64_t CompanionCompatibilityCheckFlowStrategy.__deallocating_deinit()
{
  sub_1DCC880C4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC85FC8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return result;
}

void sub_1DCC8600C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC860C0()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_1DCC8614C;

  return sub_1DCC869AC();
}

uint64_t sub_1DCC8614C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  *(v1 + 88) = v0;

  v2 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DCC8623C()
{
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 72) + 24);
  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  sub_1DCC8808C(v21, v22);
  v3 = CompanionDeviceInfoRequirement.supports(companion:)(v1);
  sub_1DCC880C4(v21, v22);
  if (v3)
  {
    v4 = *(v0 + 72);

    swift_beginAccess();
    *(v4 + 16) = 0;
LABEL_3:
    static ExecuteResponse.complete()();
LABEL_6:
    OUTLINED_FUNCTION_29();

    return v11();
  }

  v5 = *(v0 + 72);
  swift_beginAccess();
  *(v5 + 16) = 1;
  if (*(v2 + 32) == 1)
  {
    v6 = *(v0 + 64);

    v7 = type metadata accessor for ExecuteResponse(0);
    v8 = *(v7 + 36);
    v9 = type metadata accessor for PluginAction(0);
    __swift_storeEnumTagSinglePayload(v6 + v8, 1, 1, v9);
    *v6 = 3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = 0;
    *(v6 + 48) = 0x80;
    v10 = (v6 + *(v7 + 40));
    *v10 = 0u;
    v10[1] = 0u;
    goto LABEL_6;
  }

  if (*(v2 + 33) != 1)
  {

    goto LABEL_3;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v13 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v15))
  {
    v16 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v16);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v17, v18, "[CompanionCompatibilityCheckFlow] returns false and we will output error diaglog");
    OUTLINED_FUNCTION_80();
  }

  v19 = swift_task_alloc();
  *(v0 + 96) = v19;
  *v19 = v0;
  v19[1] = sub_1DCC864AC;
  v20 = *(v0 + 88);

  return sub_1DCC86D68(v20);
}

uint64_t sub_1DCC864AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC86590()
{
  OUTLINED_FUNCTION_42();

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t CompanionDeviceInfoRequirement.supports(companion:)(void *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    if (!a1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v10 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v10, qword_1EDE57E00);
      v11 = sub_1DD0DD8EC();
      v12 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_26;
      }

      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v13);
      v14 = "[CompanionCompatibilityCheckFlow] Strategy requires any known companion, but none was found: FAIL";
      goto LABEL_24;
    }

    return 1;
  }

  if (v3 != 1)
  {
    v15 = *(v1 + 8);
    if ((v3(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v17 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v17, qword_1EDE57E00);
      sub_1DCC8808C(v3, v15);
      v18 = a1;
      v11 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6DC();

      if (!os_log_type_enabled(v11, v19))
      {

        sub_1DCC880C4(v3, v15);
        return 0;
      }

      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v20 = 136315394;
      OUTLINED_FUNCTION_88_0();
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      *(v21 + 24) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C90, &qword_1DD0E8678);
      v22 = sub_1DD0DE02C();
      v24 = sub_1DCB10E9C(v22, v23, &v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C98, &qword_1DD0E8680);
      v26 = sub_1DD0DE02C();
      v28 = sub_1DCB10E9C(v26, v27, &v31);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1DCAFC000, v11, v19, "[CompanionCompatibilityCheckFlow] Predicate %s does not pass for companion %s: FAIL", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      goto LABEL_25;
    }

    return 1;
  }

  if (a1)
  {
    v4 = qword_1EDE4F900;
    v5 = a1;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v8))
    {
      v9 = OUTLINED_FUNCTION_50_0();
      *v9 = 0;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "[CompanionCompatibilityCheckFlow] Strategy requires companion with peer-to-peer handoff, and we found a companion. Assume companion always supports peerToPeerHandoff", v9, 2u);
      OUTLINED_FUNCTION_80();
    }

    return 1;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v29 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_26;
  }

  v30 = OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_46(v30);
  v14 = "[CompanionCompatibilityCheckFlow] Strategy requires companion with peer-to-peer handoff, but none was found: FAIL";
LABEL_24:
  _os_log_impl(&dword_1DCAFC000, v11, v12, v14, 0, 2u);
LABEL_25:
  OUTLINED_FUNCTION_80();
LABEL_26:

  return 0;
}

uint64_t sub_1DCC869AC()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v0;
  v2 = type metadata accessor for IdentifiedUser(0);
  v1[3] = v2;
  OUTLINED_FUNCTION_20_0(v2);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC86D68(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCC86D90()
{
  v5 = v0;
  v1 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA2CA8, &qword_1DD0FBA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 0x656369766564;
  *(inited + 40) = 0xE600000000000000;
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  v3 = OUTLINED_FUNCTION_68();
  sub_1DCCDE224(v3, v4);
}

uint64_t sub_1DCC87048()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC87144()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  *(v1 + 312) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v4);
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  *(v1 + 272) = swift_task_alloc();
  v6 = type metadata accessor for AceOutput(0);
  *(v1 + 280) = v6;
  OUTLINED_FUNCTION_20_0(v6);
  *(v1 + 288) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC87240()
{
  OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1((*(v0 + 248) + 72), *(*(v0 + 248) + 96));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_1DCC87300;
  v3 = *(v0 + 240);
  v4 = *(v0 + 312);

  return sub_1DCF66E08(v0 + 16, v4, v3, 0);
}

uint64_t sub_1DCC87300()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1DCC87774;
  }

  else
  {
    v4 = sub_1DCC87408;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DCC87408()
{
  v7 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  (*(v4 + 96))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 160) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCC87658()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1DCC87A94;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 200));
    v6 = sub_1DCC87A10;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1DCC87774()
{
  v15 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = sub_1DD0DD8FC();
  v4 = __swift_project_value_buffer(v3, qword_1EDE57E00);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v6 = OUTLINED_FUNCTION_68();
  sub_1DCBCF6C8(v6, v7);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DCB16DB0(*(v0 + 256), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v9))
    {
      v10 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v10 = 136315650;
      v11 = sub_1DD0DEC3C();
      v13 = sub_1DCB10E9C(v11, v12, &v14);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2048;
      *(v10 + 14) = 157;
      *(v10 + 22) = 2080;
      *(v10 + 24) = sub_1DCB10E9C(0xD000000000000034, 0x80000001DD1164B0, &v14);
      _os_log_impl(&dword_1DCAFC000, v8, v9, "FatalError at %s:%lu - %s", v10, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v5 + 8))(*(v0 + 256), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000034, 0x80000001DD1164B0);
}

uint64_t sub_1DCC87A10()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_25();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCC87A94()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_25();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));

  OUTLINED_FUNCTION_29();

  return v1();
}

void *CompanionCompatibilityCheckFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);

  return v0;
}

uint64_t CompanionCompatibilityCheckFlow.__deallocating_deinit()
{
  CompanionCompatibilityCheckFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC87C30()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCC860C0();
}

uint64_t sub_1DCC87CC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC85F94();
  *a1 = result;
  return result;
}

uint64_t sub_1DCC87D10(void *a1)
{
  if (CompanionDeviceInfoRequirement.supports(companion:)(a1))
  {
    v2 = CompanionDeviceInfoRequirement.supports(companion:)(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1DCC87D94@<X0>(__int128 *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *v4;
  v10 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *a4 = a3;
  a4[1] = v7;
  sub_1DCC8808C(v9, *(&v9 + 1));

  return sub_1DCC8808C(v10, *(&v10 + 1));
}

uint64_t sub_1DCC87E18(void *a1)
{
  if (CompanionDeviceInfoRequirement.supports(companion:)(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = CompanionDeviceInfoRequirement.supports(companion:)(a1);
  }

  return v2 & 1;
}

unint64_t static CompanionDeviceInfoRequirement.not(_:)@<X0>(uint64_t *a1@<X0>, BOOL (**a2)(void *a1)@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_88_0();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = sub_1DCC88180;
  a2[1] = v5;
  v6 = OUTLINED_FUNCTION_68();

  return sub_1DCC8808C(v6, v7);
}

void sub_1DCC87F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = &type metadata for OutputPublishers;
  v11 = &off_1F5866A08;
  *&v9 = a2;
  v7 = type metadata accessor for RefreshableDeviceState();
  v8 = &protocol witness table for RefreshableDeviceState;
  v6 = a3;
  *(a4 + 16) = 0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_allocObject();
  sub_1DD0DCACC();
}

unint64_t sub_1DCC8808C(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

unint64_t sub_1DCC880C4(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1DCC880D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t objectdestroy_4Tm()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  if (*(v0 + 32) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1DCC88188(uint64_t a1)
{
  result = sub_1DCC881B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCC881B0()
{
  result = qword_1ECCA2CA0;
  if (!qword_1ECCA2CA0)
  {
    type metadata accessor for CompanionCompatibilityCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2CA0);
  }

  return result;
}

uint64_t dispatch thunk of CompanionCompatibilityCheckFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v7 = (*(*v0 + 184) + **(*v0 + 184));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v3);
}

void *destroy for CompanionDeviceInfoRequirement(void *result)
{
  if (*result >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

_OWORD *sub_1DCC883F8(_OWORD *a1, void *a2)
{
  v2 = a1;
  if (*a2 >= 0xFFFFFFFFuLL)
  {
    v3 = a2[1];
    *v2 = *a2;
    v2[1] = v3;
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  return a1;
}

unint64_t *assignWithCopy for CompanionDeviceInfoRequirement(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v6 = a2[1];
      *a1 = v4;
      a1[1] = v6;
      sub_1DD0DCF8C();
    }
  }

  else
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;
      sub_1DD0DCF8C();
    }
  }

  *a1 = *a2;
  return a1;
}

unint64_t *assignWithTake for CompanionDeviceInfoRequirement(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v6 = a2[1];
      *a1 = v4;
      a1[1] = v6;
      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  a1[1] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for CompanionDeviceInfoRequirement(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompanionDeviceInfoRequirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DCC88608(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DCC88620(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCC88654()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t sub_1DCC88738(uint64_t a1)
{
  result = type metadata accessor for ParameterClause(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DCC88840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC88654();
}

double sub_1DCC888D8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v8 = type metadata accessor for ComposedRequestFlow.State(0, v5, v6, v7);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v24, &v1[v4], v8);
  if (v25 == 2)
  {
    v21 = *&v24[32];
    v22 = *&v24[16];
    *a1 = *v24;
    *(a1 + 16) = v22;
    v23 = *(v1 + 4);
    *(a1 + 32) = *(v1 + 3);
    *(a1 + 40) = v23;
    *(a1 + 48) = v21;
    *(a1 + 56) = 0;
  }

  else
  {
    if (v25 == 4)
    {
      v20 = v24[8];
      *a1 = *v24;
      *(a1 + 8) = v20;
      v14 = 1;
    }

    else
    {
      if (v25 != 5 || *v24 != 2 || (v13 = vorrq_s8(*&v24[8], *&v24[24]), *&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL))))
      {
        v15 = type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError(0, v5, v6, v11);
        OUTLINED_FUNCTION_1_31();
        WitnessTable = swift_getWitnessTable();
        v17 = OUTLINED_FUNCTION_34(v15, WitnessTable);
        v19 = v18;
        v10(v18, &v1[v4], v8);
        v19[41] = 0;
        *a1 = v17;
        *(a1 + 8) = 0;
        *(a1 + 56) = 1;
        (*(v9 + 8))(v24, v8);
        return result;
      }

      *(a1 + 48) = 0;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      v14 = 2;
    }

    *(a1 + 56) = v14;
  }

  return result;
}

void sub_1DCC88AE4()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC88D00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v6 = type metadata accessor for ComposedRequestFlow.State(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1DCC88AE4();
}

uint64_t sub_1DCC88E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, __int128 *a10)
{
  v17 = swift_allocObject();
  sub_1DCC88EAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

char *sub_1DCC88EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, __int128 *a10)
{
  v16 = *v10;
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = a3;
  sub_1DCC8BC94(a4, &v10[qword_1ECCD25E0]);
  OUTLINED_FUNCTION_66();
  v18 = *(v16 + 80);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[*(v17 + 120)], a5, v18);
  OUTLINED_FUNCTION_66();
  *&v10[*(v20 + 128)] = a6;
  OUTLINED_FUNCTION_66();
  sub_1DCB17CA0(a7, &v10[*(v21 + 136)]);
  OUTLINED_FUNCTION_66();
  *&v10[*(v22 + 144)] = a8;
  OUTLINED_FUNCTION_66();
  sub_1DCB17CA0(a9, &v10[*(v23 + 152)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a10, &v10[*(v24 + 160)]);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  (*(v19 + 8))(a5, v18);
  OUTLINED_FUNCTION_5_29();
  sub_1DCB28430(a4, v25);
  OUTLINED_FUNCTION_66();
  v27 = &v10[*(v26 + 168)];
  *v27 = 12589;
  *(v27 + 1) = 0xE200000000000000;
  OUTLINED_FUNCTION_66();
  v29 = &v10[*(v28 + 176)];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  v29[40] = 5;
  return v10;
}

void sub_1DCC8908C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = &unk_1DD0E8AC8;
  v10[7] = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8919C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCC89238(a1);
}

uint64_t sub_1DCC89238(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC89280, 0, 0);
}

uint64_t sub_1DCC89280()
{
  v86 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(*v2 + 176);
  swift_beginAccess();
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = type metadata accessor for ComposedRequestFlow.State(0, v4, v5, v6);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(v0 + 16, v2 + v3, v7);
  v10 = *(v0 + 16);
  *(v0 + 216) = v10;
  switch(*(v0 + 56))
  {
    case 0:
      v11 = *(v0 + 32);
      *(v0 + 104) = *(v0 + 16);
      *(v0 + 120) = v11;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v12 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
      v13 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v15);
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v16, v17, "ComposedRequestFlow got subflow result.");
        OUTLINED_FUNCTION_62();
      }

      sub_1DCC89DD4(v0 + 104);
    case 2:

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v34 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
      v35 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v37);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v38, v39, "ComposedRequestFlow complete. Exiting.");
        OUTLINED_FUNCTION_62();
      }

      static ExecuteResponse.complete()();
      sub_1DCC8BC14(v0 + 16);
      goto LABEL_42;
    case 3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v18 = sub_1DD0DD8FC();
      *(v0 + 224) = OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
      v19 = v10;
      v20 = sub_1DD0DD8EC();
      v21 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v80 = v23;
        *v22 = 136315138;
        swift_getErrorValue();
        v24 = sub_1DD0DF18C();
        v26 = sub_1DCB10E9C(v24, v25, &v80);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_1DCAFC000, v20, v21, "ComposedRequestFlow attempting to send error dialog for error: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x1E12A8390](v23, -1, -1);
        MEMORY[0x1E12A8390](v22, -1, -1);
      }

      v27 = *(v0 + 200);
      v28 = (v27 + *(*v27 + 160));
      v29 = v28[3];
      v30 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v31 = swift_task_alloc();
      *(v0 + 232) = v31;
      *(v31 + 16) = v27;
      *(v31 + 24) = v10;
      v32 = swift_task_alloc();
      *(v0 + 240) = v32;
      *v32 = v0;
      v32[1] = sub_1DCC899B8;

      return sub_1DCB63BBC(v0 + 64, &unk_1DD0E8A90, v31, v29, v30);
    case 4:
      (*(v8 + 8))(v0 + 16, v7);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v40 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v40, qword_1EDE57E00);
      v41 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_31;
      }

      v43 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v43);
      v46 = "ComposedRequestFlow is in an error state. Exiting.";
      goto LABEL_30;
    case 5:
      v47 = *(v0 + 24);
      v48 = *(v0 + 32) | *(v0 + 40) | *(v0 + 48);
      if (!(v48 | v10 | v47))
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v70 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v70, qword_1EDE57E00);
        v71 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_8_5();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v73);
          OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v74, v75, "ComposedRequestFlow started.");
          OUTLINED_FUNCTION_62();
        }

        sub_1DCC89CA4();
      }

      if (v10 != 2 || v48 | v47)
      {
        goto LABEL_32;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v49 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v49, qword_1EDE57E00);
      v41 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (!os_log_type_enabled(v41, v50))
      {
        goto LABEL_31;
      }

      v51 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v51);
      v46 = "ComposedRequestFlow was cancelled. Exiting.";
LABEL_30:
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v44, v45, v46);
      OUTLINED_FUNCTION_62();
LABEL_31:

      static ExecuteResponse.complete()();
LABEL_42:
      OUTLINED_FUNCTION_29();

      return v76();
    default:
LABEL_32:
      v78 = v9;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v52 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v52, qword_1EDE57E00);
      v53 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_8_5();
      log = v53;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_50_0();
        *v55 = 0;
        _os_log_impl(&dword_1DCAFC000, log, v10, "ComposedRequestFlow called in unexpected state. Exiting.", v55, 2u);
        MEMORY[0x1E12A8390](v55, -1, -1);
      }

      v57 = type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError(0, v4, v5, v56);
      OUTLINED_FUNCTION_1_31();
      WitnessTable = swift_getWitnessTable();
      v59 = OUTLINED_FUNCTION_34(v57, WitnessTable);
      v61 = v60;
      v62 = v78(v60, v2 + v3, v7);
      *(v61 + 41) = 0;
      OUTLINED_FUNCTION_17_12(v62, v63, v64, v65, v66, v67, v68, v69, v77, v78, log, v59, SHIDWORD(v59), v81, v82, v83, v84, v85);
  }
}

uint64_t sub_1DCC899B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 248) = v0;

  if (v0)
  {
    v6 = sub_1DCC89BB4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 64));

    v6 = sub_1DCC89AD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1DCC89AD0(uint64_t a1)
{
  v12 = v1;
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v5, v6, "ComposedRequestFlow successfully sent error dialog. Exiting.");
    OUTLINED_FUNCTION_62();
  }

  v7 = *(v1 + 216);

  v9 = v7;
  v10 = 1;
  v11 = 4;
  v8 = v7;
  sub_1DCC88D00(&v9);
}

void sub_1DCC89BB4()
{
  v11 = v0;

  v1 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v4, v5, "ComposedRequestFlow failed to send error dialog. Exiting.");
    OUTLINED_FUNCTION_62();
  }

  v6 = *(v0 + 248);

  v8 = v6;
  v9 = 0;
  v10 = 4;
  v7 = v6;
  sub_1DCC88D00(&v8);
}

void sub_1DCC89CA4()
{
  v0 = sub_1DCC8A7C4();
  if (v1)
  {
    v3 = v0;
    LOBYTE(v4) = 0;
    v6 = 4;
    v2 = v0;
    sub_1DCC88D00(&v3);
  }

  v3 = 1;
  v4 = 0u;
  v5 = 0u;
  v6 = 5;
  sub_1DCC88D00(&v3);
}

uint64_t sub_1DCC8A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  v10 = (*(v6 + 24) + **(v6 + 24));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DCB4AD3C;

  return v10(a1, a3, v7, v6);
}

uint64_t sub_1DCC8A7C4()
{
  v1 = *v0;
  v2 = type metadata accessor for ParameterClause(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCC8BC94(v0 + qword_1ECCD25E0, v6);
  sub_1DCB541FC(&v6[*(v3 + 28)], v10);
  if (qword_1EDE4F518 != -1)
  {
    swift_once();
  }

  v11 = sub_1DCD3B154();
  if (v11)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "ComposedRequestFlow found a flow for the input", v15, 2u);
      MEMORY[0x1E12A8390](v15, -1, -1);
    }

    sub_1DCB28430(v10, type metadata accessor for Parse);
    return v11;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "ComposedRequestFlow failed to find flow for input", v20, 2u);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError(0, *(v1 + 80), *(v1 + 88), v21);
    swift_getWitnessTable();
    v16 = swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 512;
    sub_1DCB28430(v10, type metadata accessor for Parse);
  }

  return v16;
}

void sub_1DCC8AB7C(uint64_t a1)
{
  sub_1DCB192E4(a1, v1);
  v1[40] = 0;
  sub_1DCC88D00(v1);
}

uint64_t sub_1DCC8ABAC(uint64_t a1, void (*a2)(_BYTE *))
{
  sub_1DCB0DF6C(a1, v4);
  a2(v4);
  return sub_1DCC8BC14(v4);
}

void sub_1DCC8ADC8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(*v4 + 176);
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_12_21();
  v12 = type metadata accessor for ComposedRequestFlow.State(v8, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v47, v4 + v7, v12);
  if (v48 == 1)
  {
    v49[0] = *v47;
    v49[1] = *&v47[16];
    switch(a4)
    {
      case 1:
        goto LABEL_5;
      case 2:
        *v47 = a1;
        v47[8] = a2 & 1;
        v48 = 4;
        v34 = a1;
        goto LABEL_11;
      case 3:
        *v47 = 2;
        memset(&v47[8], 0, 32);
        v35 = 5;
        goto LABEL_10;
      default:
        if (a3 != 5 && a3)
        {
          v36 = OUTLINED_FUNCTION_12_21();
          v40 = type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError(v36, v37, v38, v39);
          OUTLINED_FUNCTION_1_31();
          WitnessTable = swift_getWitnessTable();
          v42 = OUTLINED_FUNCTION_34(v40, WitnessTable);
          *v43 = a3;
          *(v43 + 41) = 1;
          *v47 = v42;
          v47[8] = 0;
          v35 = 4;
LABEL_10:
          v48 = v35;
        }

        else
        {
LABEL_5:
          sub_1DCB192E4(v49, v47);
          OUTLINED_FUNCTION_66();
          *&v47[32] = *(*(v4 + *(v15 + 144)) + 24);
          v48 = 2;
          v16 = *&v47[32];
        }

LABEL_11:
        sub_1DCC88D00(v47);
    }
  }

  (*(v13 + 8))(v47, v12);
  v17 = OUTLINED_FUNCTION_12_21();
  v21 = type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError(v17, v18, v19, v20);
  OUTLINED_FUNCTION_1_31();
  v22 = swift_getWitnessTable();
  v23 = OUTLINED_FUNCTION_34(v21, v22);
  v25 = v24;
  v26 = v14(v24, v4 + v7, v12);
  *(v25 + 41) = 0;
  OUTLINED_FUNCTION_17_12(v26, v27, v28, v29, v30, v31, v32, v33, v44, a2, a3, v23, SHIDWORD(v23), v47[8], *&v47[16], *&v47[24], *&v47[32], v48);
}

uint64_t *sub_1DCC8B078()
{
  v1 = *v0;

  OUTLINED_FUNCTION_5_29();
  sub_1DCB28430(v0 + v2, v3);
  OUTLINED_FUNCTION_66();
  v5 = *(v1 + 80);
  (*(*(v5 - 8) + 8))(v0 + *(v4 + 120), v5);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v6 + 136)));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v7 + 152)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v8 + 160)));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v10 = *(v9 + 176);
  type metadata accessor for ComposedRequestFlow.State(0, v5, *(v1 + 88), v11);
  OUTLINED_FUNCTION_13_1();
  (*(v12 + 8))(v0 + v10);
  return v0;
}

uint64_t sub_1DCC8B204()
{
  sub_1DCC8B078();

  return swift_deallocClassInstance();
}

void sub_1DCC8B274(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 5)
  {
    v2 = *a1 + 5;
  }

  switch(v2)
  {
    case 0u:
    case 1u:
      if (*(a1 + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      break;
    case 2u:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v3 = *(a1 + 32);

      goto LABEL_9;
    case 3u:
    case 4u:
      v3 = *a1;

LABEL_9:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCC8B33C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 40);
  if (v4 >= 5)
  {
    v4 = *a2 + 5;
  }

  switch(v4)
  {
    case 0u:
      v5 = a2[3];
      if (v5 < 0xFFFFFFFF)
      {
        v14 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v14;
      }

      else
      {
        *(a1 + 24) = v5;
        (**(v5 - 8))(a1, a2);
      }

      *(a1 + 40) = 0;
      return a1;
    case 1u:
      v12 = a2[3];
      if (v12 < 0xFFFFFFFF)
      {
        v15 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v15;
      }

      else
      {
        *(a1 + 24) = v12;
        (**(v12 - 8))(a1, a2);
      }

      v8 = 1;
      goto LABEL_17;
    case 2u:
      v9 = a2[3];
      if (v9)
      {
        *(a1 + 24) = v9;
        (**(v9 - 8))(a1, a2);
      }

      else
      {
        v16 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v16;
      }

      v17 = a2[4];
      *(a1 + 32) = v17;
      *(a1 + 40) = 2;
      v18 = v17;
      return a1;
    case 3u:
      v10 = *a2;
      v11 = *a2;
      *a1 = v10;
      v8 = 3;
      goto LABEL_17;
    case 4u:
      v6 = *a2;
      v7 = *a2;
      *a1 = v6;
      *(a1 + 8) = *(a2 + 8);
      v8 = 4;
LABEL_17:
      *(a1 + 40) = v8;
      break;
    default:
      v13 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 25) = *(a2 + 25);
      break;
  }

  return a1;
}

uint64_t sub_1DCC8B508(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 5)
    {
      v4 = *a1 + 5;
    }

    switch(v4)
    {
      case 0u:
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 3u:
      case 4u:

        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 5)
    {
      v5 = *a2 + 5;
    }

    switch(v5)
    {
      case 0u:
        v6 = a2[3];
        if (v6 < 0xFFFFFFFF)
        {
          v16 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v16;
        }

        else
        {
          *(a1 + 24) = v6;
          (**(v6 - 8))(a1, a2);
        }

        *(a1 + 40) = 0;
        return a1;
      case 1u:
        v13 = a2[3];
        if (v13 < 0xFFFFFFFF)
        {
          v17 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v17;
        }

        else
        {
          *(a1 + 24) = v13;
          (**(v13 - 8))(a1, a2);
        }

        v9 = 1;
        goto LABEL_27;
      case 2u:
        v10 = a2[3];
        if (v10)
        {
          *(a1 + 24) = v10;
          (**(v10 - 8))(a1, a2);
        }

        else
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v18;
        }

        v19 = a2[4];
        *(a1 + 32) = v19;
        *(a1 + 40) = 2;
        v20 = v19;
        return a1;
      case 3u:
        v11 = *a2;
        v12 = v11;
        *a1 = v11;
        v9 = 3;
        goto LABEL_27;
      case 4u:
        v7 = *a2;
        v8 = *a2;
        *a1 = v7;
        *(a1 + 8) = *(a2 + 8);
        v9 = 4;
LABEL_27:
        *(a1 + 40) = v9;
        break;
      default:
        v14 = *a2;
        v15 = *(a2 + 1);
        *(a1 + 25) = *(a2 + 25);
        *a1 = v14;
        *(a1 + 16) = v15;
        break;
    }
  }

  return a1;
}

uint64_t sub_1DCC8B75C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 5)
    {
      v4 = *a1 + 5;
    }

    switch(v4)
    {
      case 0u:
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 3u:
      case 4u:

        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 5)
    {
      v5 = *a2 + 5;
    }

    switch(v5)
    {
      case 0u:
        v6 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v6;
        *(a1 + 40) = 0;
        return a1;
      case 1u:
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
        v7 = 1;
        goto LABEL_19;
      case 2u:
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        v7 = 2;
        goto LABEL_19;
      case 3u:
        *a1 = *a2;
        v7 = 3;
        goto LABEL_19;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = 4;
LABEL_19:
        *(a1 + 40) = v7;
        break;
      default:
        v11 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v11;
        *(a1 + 25) = *(a2 + 25);
        break;
    }
  }

  return a1;
}

uint64_t sub_1DCC8B8C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC8B8FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC8B948(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 5)
  {
    return (*a1 + 5);
  }

  return result;
}

uint64_t sub_1DCC8B964(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1DCC8BA40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCC89238(a1);
}

uint64_t sub_1DCC8BB00(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCC8BB78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCC8A648(v6, v2, v1);
}

uint64_t sub_1DCC8BC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCC8BC7C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DCC8BC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterClause(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCC8BD00()
{
  result = qword_1ECCA2E38[0];
  if (!qword_1ECCA2E38[0])
  {
    sub_1DD0DCE2C();
  }

  return result;
}

uint64_t sub_1DCC8BD5C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCC8919C(v3);
}

uint64_t sub_1DCC8BDE4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCCBEEE0();
}

void sub_1DCC8BEA8(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3 >= 5)
    {
      v3 = *a1 + 5;
    }

    switch(v3)
    {
      case 0u:
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        v4 = *(a1 + 32);

        goto LABEL_12;
      case 3u:
      case 4u:
        v4 = *a1;

LABEL_12:

        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCC8BF8C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 41);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 41) = 1;
  }

  else if (v4)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 26) = *(a2 + 26);
  }

  else
  {
    v5 = *(a2 + 40);
    if (v5 >= 5)
    {
      v5 = *a2 + 5;
    }

    switch(v5)
    {
      case 0u:
        v6 = a2[3];
        if (v6 < 0xFFFFFFFF)
        {
          v16 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v16;
        }

        else
        {
          *(a1 + 24) = v6;
          (**(v6 - 8))(a1, a2);
        }

        *(a1 + 40) = 0;
        break;
      case 1u:
        v14 = a2[3];
        if (v14 < 0xFFFFFFFF)
        {
          v17 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v17;
        }

        else
        {
          *(a1 + 24) = v14;
          (**(v14 - 8))(a1, a2);
        }

        v10 = 1;
        goto LABEL_23;
      case 2u:
        v11 = a2[3];
        if (v11)
        {
          *(a1 + 24) = v11;
          (**(v11 - 8))(a1, a2);
        }

        else
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v18;
        }

        v19 = a2[4];
        *(a1 + 32) = v19;
        *(a1 + 40) = 2;
        v20 = v19;
        break;
      case 3u:
        v12 = *a2;
        v13 = *a2;
        *a1 = v12;
        v10 = 3;
        goto LABEL_23;
      case 4u:
        v8 = *a2;
        v9 = *a2;
        *a1 = v8;
        *(a1 + 8) = *(a2 + 8);
        v10 = 4;
LABEL_23:
        *(a1 + 40) = v10;
        break;
      default:
        v15 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v15;
        *(a1 + 25) = *(a2 + 25);
        break;
    }

    *(a1 + 41) = 0;
  }

  return a1;
}

uint64_t sub_1DCC8C1A4(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 41);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (!v4)
    {
      v8 = *(a1 + 40);
      if (v8 >= 5)
      {
        v8 = *a1 + 5;
      }

      switch(v8)
      {
        case 0u:
        case 1u:
          if (*(a1 + 24) >= 0xFFFFFFFFuLL)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 2u:
          if (*(a1 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 3u:
        case 4u:

          break;
        default:
          break;
      }
    }

    v5 = *(a2 + 41);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v9 = *a2;
      v10 = a2[1];
      *(a1 + 26) = *(a2 + 26);
      *a1 = v9;
      *(a1 + 16) = v10;
    }

    else
    {
      v6 = *(a2 + 40);
      if (v6 >= 5)
      {
        v6 = *a2 + 5;
      }

      switch(v6)
      {
        case 0u:
          v7 = *(a2 + 3);
          if (v7 < 0xFFFFFFFF)
          {
            v20 = a2[1];
            *a1 = *a2;
            *(a1 + 16) = v20;
          }

          else
          {
            *(a1 + 24) = v7;
            (**(v7 - 8))(a1, a2);
          }

          *(a1 + 40) = 0;
          break;
        case 1u:
          v17 = *(a2 + 3);
          if (v17 < 0xFFFFFFFF)
          {
            v21 = a2[1];
            *a1 = *a2;
            *(a1 + 16) = v21;
          }

          else
          {
            *(a1 + 24) = v17;
            (**(v17 - 8))(a1, a2);
          }

          v13 = 1;
          goto LABEL_36;
        case 2u:
          v14 = *(a2 + 3);
          if (v14)
          {
            *(a1 + 24) = v14;
            (**(v14 - 8))(a1, a2);
          }

          else
          {
            v22 = a2[1];
            *a1 = *a2;
            *(a1 + 16) = v22;
          }

          v23 = *(a2 + 4);
          *(a1 + 32) = v23;
          *(a1 + 40) = 2;
          v24 = v23;
          break;
        case 3u:
          v15 = *a2;
          v16 = v15;
          *a1 = v15;
          v13 = 3;
          goto LABEL_36;
        case 4u:
          v11 = *a2;
          v12 = *a2;
          *a1 = v11;
          *(a1 + 8) = *(a2 + 8);
          v13 = 4;
LABEL_36:
          *(a1 + 40) = v13;
          break;
        default:
          v18 = *a2;
          v19 = a2[1];
          *(a1 + 25) = *(a2 + 25);
          *a1 = v18;
          *(a1 + 16) = v19;
          break;
      }

      *(a1 + 41) = 0;
    }
  }

  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DCC8C474(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 41);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (!v4)
    {
      v8 = *(a1 + 40);
      if (v8 >= 5)
      {
        v8 = *a1 + 5;
      }

      switch(v8)
      {
        case 0u:
        case 1u:
          if (*(a1 + 24) >= 0xFFFFFFFFuLL)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 2u:
          if (*(a1 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 3u:
        case 4u:

          break;
        default:
          break;
      }
    }

    v5 = *(a2 + 41);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 26) = *(a2 + 26);
    }

    else
    {
      v6 = *(a2 + 40);
      if (v6 >= 5)
      {
        v6 = *a2 + 5;
      }

      switch(v6)
      {
        case 0u:
          v7 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v7;
          *(a1 + 40) = 0;
          break;
        case 1u:
          v12 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v12;
          v10 = 1;
          goto LABEL_28;
        case 2u:
          v11 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v11;
          *(a1 + 32) = *(a2 + 32);
          v10 = 2;
          goto LABEL_28;
        case 3u:
          *a1 = *a2;
          v10 = 3;
          goto LABEL_28;
        case 4u:
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          v10 = 4;
LABEL_28:
          *(a1 + 40) = v10;
          break;
        default:
          v14 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v14;
          *(a1 + 25) = *(a2 + 25);
          break;
      }

      *(a1 + 41) = 0;
    }
  }

  return a1;
}