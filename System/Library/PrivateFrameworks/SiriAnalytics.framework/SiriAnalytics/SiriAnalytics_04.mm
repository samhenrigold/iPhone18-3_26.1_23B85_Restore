uint64_t sub_1D98BCB10()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);

  if (v1 != 1)
  {
  }

  v2 = OUTLINED_FUNCTION_21();

  return v3(v2);
}

uint64_t sub_1D98BCB84()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[21];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[18] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v0[10], v0[11], 0xD00000000000005ELL, 0x80000001D993A000, 0x29286C6C61, 0xE500000000000000);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_1D98BCCBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v7 = a4;

    return sub_1D98F1C38();
  }

  else
  {
    type metadata accessor for LogicalClockSummary(0);
    v9 = sub_1D992B7B4();

    return sub_1D98EF8B8(v6, a2, v9);
  }
}

uint64_t LogicalClocksService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *LogicalClocksXPCHandler.init(logicalClocks:)(char *a1)
{
  *&v1[OBJC_IVAR___SiriAnalyticsLogicalClocksXPCHandler_logicalClocks] = *&a1[OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LogicalClocksXPCHandler();

  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_1D98BCEA0()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D98BCF38;

  return sub_1D98E2CE4();
}

uint64_t sub_1D98BCF38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D98BD02C, 0, 0);
}

uint64_t sub_1D98BD02C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_30;
  }

  v53 = MEMORY[0x1E69E7CC0];
  result = sub_1D98682F0();
  v3 = 0;
  v42 = v1 & 0xC000000000000001;
  v43 = result;
  v40 = v1 + 32;
  v41 = v1 & 0xFFFFFFFFFFFFFF8;
  v39 = v1;
  while (v3 != v43)
  {
    if (v42)
    {
      result = MEMORY[0x1DA73A2C0](v3, v1);
      v4 = result;
    }

    else
    {
      if (v3 >= *(v41 + 16))
      {
        goto LABEL_35;
      }

      v4 = *(v40 + 8 * v3);
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_34;
    }

    v6 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
    v7 = sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    v9 = v8;
    v46 = swift_task_alloc();
    v49 = *(v9 + 16);
    v49(v46, v4 + v6, v7);
    v10 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs);
    if (v10)
    {
      v44 = v4;
      v45 = v3;
      v11 = v10 + 56;
      v12 = -1 << *(v10 + 32);
      if (-v12 < 64)
      {
        v13 = ~(-1 << -v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v10 + 56);
      v50 = swift_task_alloc();
      v15 = (63 - v12) >> 6;
      v52 = v9;
      result = swift_bridgeObjectRetain_n();
      v16 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      v48 = v7;
      v47 = v10;
      if (v14)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        if (v18 >= v15)
        {
          break;
        }

        v14 = *(v11 + 8 * v18);
        ++v16;
        if (v14)
        {
          v16 = v18;
          do
          {
LABEL_17:
            v51 = *(v52 + 72);
            v49(v50, *(v10 + 48) + v51 * (__clz(__rbit64(v14)) | (v16 << 6)), v7);
            v19 = swift_task_alloc();
            v20 = *(v52 + 32);
            v20(v19, v50, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_4();
              sub_1D98BDF20(0, v23 + 1, 1, v17, &unk_1ECB48AC0, &qword_1D9932730, v24, v25);
              v17 = v26;
            }

            v21 = *(v17 + 16);
            if (v21 >= *(v17 + 24) >> 1)
            {
              OUTLINED_FUNCTION_24_4();
              sub_1D98BDF20(v27, v21 + 1, 1, v17, &unk_1ECB48AC0, &qword_1D9932730, v28, v29);
              v17 = v30;
            }

            v14 &= v14 - 1;
            *(v17 + 16) = v21 + 1;
            OUTLINED_FUNCTION_28_4();
            v7 = v48;
            v20(v17 + v22 + v21 * v51, v19, v48);

            v10 = v47;
          }

          while (v14);
        }
      }

      v1 = v39;
      v4 = v44;
      v3 = v45;
    }

    else
    {
      v17 = 0;
    }

    v31 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_active);
    v32 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn);
    v33 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn);
    v34 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn + 8);
    v35 = objc_allocWithZone(type metadata accessor for LogicalClockSummary(0));
    LogicalClockSummary.init(clockIdentifier:derivativeClockIdentifiers:active:startedOn:endedOn:)(v46, v17, v31, v32, v33, v34);

    MEMORY[0x1DA739CE0](v36);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D992B7D4();
    }

    result = sub_1D992B7F4();
  }

LABEL_30:
  v37 = OUTLINED_FUNCTION_21();

  return v38(v37);
}

uint64_t sub_1D98BD518(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98BD5C0;

  return sub_1D98BCE8C();
}

uint64_t sub_1D98BD5C0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v4 = v3;
  OUTLINED_FUNCTION_16();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v0;
  OUTLINED_FUNCTION_16();
  *v9 = v8;

  if (v2)
  {
    type metadata accessor for LogicalClockSummary(0);
    v10 = sub_1D992B7A4();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v10);

  _Block_release(v11);
  v12 = *(v8 + 8);

  return v12();
}

id sub_1D98BD770(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D98BD848(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_35_3();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_48(a1, a2, a3, a4, a5, a6);
    v14 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_5_13();
    *(v14 + 2) = v12;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v14 != a4 || &v17[16 * v12] <= v16)
    {
      memmove(v16, v17, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BD920()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_11_8();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[8 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_33();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48B70, &unk_1D99327F0);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDA20()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_12_6();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B50, &qword_1D99327D0);
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_8_8();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 24 * v3);
  }
}

void sub_1D98BDB08()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
    v7 = OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_11_8();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDC04()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_12_6();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489E8, &unk_1D9932520);
    v7 = OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_11_8();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1D98BDCF4()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48B00, &unk_1D9932780);
    v8 = OUTLINED_FUNCTION_25_4(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_8();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v8 != v0 || &v11[48 * v2] <= v10)
    {
      memmove(v10, v11, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDDF8()
{
  OUTLINED_FUNCTION_9_8();
  if (v3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1D98BE82C(*(v0 + 16), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8);
  OUTLINED_FUNCTION_28_4();
  if (v1)
  {
    sub_1D98BEB14();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDF20(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_3();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1D98BE934(v15, v12, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_28_4();
  if (a1)
  {
    sub_1D98BEBEC(a4 + v17, v15, v16 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE018()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B30, &unk_1D9932540);
    v7 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_5_13();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE19C()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_12_6();
  if (v2)
  {
    OUTLINED_FUNCTION_48(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_5_13();
    v13[2] = v3;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v3] <= v15)
    {
      memmove(v15, v16, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v3);
  }
}

void sub_1D98BE254()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B98, &qword_1D9932810);
    v8 = OUTLINED_FUNCTION_25_4(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_8();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[5 * v2 + 4] <= v8 + 4)
    {
      v11 = OUTLINED_FUNCTION_33();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BA0, &qword_1D9932818);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE364()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    OUTLINED_FUNCTION_48(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_5_13();
    v13[2] = v2;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[2 * v2 + 4] <= v13 + 4)
    {
      v16 = OUTLINED_FUNCTION_33();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48AB0, &qword_1D9932720);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE4A8()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B38, &qword_1D99327B8);
    v8 = OUTLINED_FUNCTION_25_4(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_8();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v8 != v0 || &v11[48 * v2] <= v10)
    {
      memmove(v10, v11, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE5AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_3();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_48(a1, a2, a3, a4, a5, a6);
    v17 = OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_14_7(v17);
    OUTLINED_FUNCTION_11_8();
    v17[2] = v15;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_1D98BE6B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B80, &unk_1D9932800);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_14_7(v4);
  v4[2] = a1;
  v4[3] = 2 * (v5 / 24);
  return v4;
}

void *sub_1D98BE74C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B48, &qword_1D9933FF0);
  v4 = OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_14_7(v4);
  v4[2] = a1;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

void *sub_1D98BE7C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489E8, &unk_1D9932520);
  v4 = OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_14_7(v4);
  OUTLINED_FUNCTION_11_8();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1D98BE82C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AD0, &unk_1D9932750);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D98BE934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1D98BEA3C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEA5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEA80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEAA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEAC0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

void sub_1D98BEB14()
{
  OUTLINED_FUNCTION_27_4();
  if (v3 && (v4 = OUTLINED_FUNCTION_9_2(), __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), OUTLINED_FUNCTION_5(), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_6_12();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_9_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_6_12();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_1D98BEBEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_27_4();
  if (v8 && (a4(0), OUTLINED_FUNCTION_5(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_6_12();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_6_12();

    swift_arrayInitWithTakeFrontToBack();
  }
}

unint64_t sub_1D98BECA0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D98BED08(uint64_t a1)
{
  result = sub_1D992AE84();
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

uint64_t dispatch thunk of LogicalClocksService.all()()
{
  OUTLINED_FUNCTION_26();
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D98BEF98;

  return v4();
}

uint64_t sub_1D98BEF98()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_16();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_21();

  return v4(v3);
}

uint64_t dispatch thunk of LogicalClocksXPCHandler.all()()
{
  OUTLINED_FUNCTION_26();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D98BF360;

  return v5();
}

uint64_t sub_1D98BF1C8()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98BF270;

  return sub_1D98BD518(v2, v3);
}

uint64_t sub_1D98BF270()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_16();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return sub_1D992B614();
}

uint64_t sub_1D98BF3EC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D98BF40C, v1, 0);
}

uint64_t sub_1D98BF40C()
{
  v1 = sub_1D98BB068();
  if (v1)
  {
    v2 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 112), *(*(v0 + 64) + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B48, &qword_1D9933FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9932820;
    *(inited + 32) = v2;
    v4 = v2;
    sub_1D98B0BDC(inited);
    swift_setDeallocating();
    sub_1D989943C();
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    if (*(sub_1D98DCE30() + 24) == 1)
    {
      v5 = *(v0 + 56);
      v6 = sub_1D98BF59C(v5);
      sub_1D986A454(v6, v7, 0xD000000000000069, 0x80000001D993A1D0, 0x5F28646E65707061, 0xEA0000000000293ALL);
    }
  }

  v8 = *(v0 + 8);

  return v8(v1 & 1);
}

uint64_t sub_1D98BF59C(void *a1)
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D993A240);
  v2 = [a1 description];
  v3 = sub_1D992B624();
  v5 = v4;

  MEMORY[0x1DA739C30](v3, v5);

  MEMORY[0x1DA739C30](0xD000000000000018, 0x80000001D993A260);
  return 0;
}

uint64_t sub_1D98BF674()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D98BF6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_12_7(v6, v9);
  v7 = sub_1D992B874();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    sub_1D988C380(v3);
  }

  else
  {
    sub_1D992B864();
    (*(*(v7 - 8) + 8))(v3, v7);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D992B814();
    swift_unknownObjectRelease();
  }

  type metadata accessor for StagingReport();
  swift_task_create();
}

uint64_t sub_1D98BF868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v17 - v8;
  sub_1D988C450(a1, v17 - v8);
  v10 = sub_1D992B874();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1D988C380(v9);
  }

  else
  {
    sub_1D992B864();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_1D992B814();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_1D98BFA18()
{
  sub_1D992B514();
  sub_1D98C2AA4(&qword_1ED8BF418, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
  sub_1D98C2AEC();
  return sub_1D992BC44();
}

uint64_t sub_1D98BFAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_12_7(v10, v16);
  v11 = sub_1D992B874();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v5);
  }

  else
  {
    sub_1D992B864();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D988C380(a3);
    return OUTLINED_FUNCTION_16_7();
  }

  swift_getObjectType();
  sub_1D992B814();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D992B6B4();

  v14 = OUTLINED_FUNCTION_16_7();

  sub_1D988C380(a3);

  return v14;
}

id IngestionExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7, v3, a1);
  result = sub_1D98BFDB0(v9, a1);
  *a3 = result;
  return result;
}

id sub_1D98BFDB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  type metadata accessor for ConcreteConfiguration.ExportedObject(0, v8, v9, v10);
  (*(v4 + 16))(v7, a1, a2);
  v11 = sub_1D98C0074(v7);
  (*(v4 + 8))(a1, a2);
  return v11;
}

uint64_t dispatch thunk of IngestionExtension.ingest(dataPool:)()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = (*(v1 + 16) + **(v1 + 16));
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_1D98692C4;

  return v9(v6, v4, v2);
}

uint64_t sub_1D98BFFCC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D98C00A8(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

id sub_1D98C01A4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = MEMORY[0x1E69E7D40];
  sub_1D992B514();
  OUTLINED_FUNCTION_6();
  v35 = v8;
  v36 = v7;
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  sub_1D992B544();
  OUTLINED_FUNCTION_6();
  v33 = v14;
  v34 = v13;
  MEMORY[0x1EEE9AC00](*(v15 + 64));
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  *&v2[*((v5 & v4) + 0x70)] = 0;
  v19 = *((v5 & v4) + 0x50);
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v2[*((*v6 & *v2) + 0x60)], a1, v19);
  v21 = sub_1D992B314();
  signal(15, v21);
  sub_1D986E35C(0, &qword_1ED8BF3F0, 0x1E69E9630);
  sub_1D986E35C(0, &qword_1ED8BF400, 0x1E69E9610);
  v22 = sub_1D992BA44();
  v23 = sub_1D992BA84();

  *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x68)] = v23;
  v24 = *((v5 & v4) + 0x58);
  v38.receiver = v2;
  v38.super_class = type metadata accessor for ConcreteConfiguration.ExportedObject(0, v19, v24, v25);
  swift_unknownObjectRetain();
  v26 = objc_msgSendSuper2(&v38, sel_init);
  swift_getObjectType();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = v19;
  v28[3] = v24;
  v28[4] = v27;
  aBlock[4] = sub_1D98C2A80;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98F9B34;
  aBlock[3] = &block_descriptor_8;
  v29 = _Block_copy(aBlock);
  v30 = v26;

  sub_1D992B534();
  sub_1D98BFA18();
  sub_1D992BA94();
  _Block_release(v29);
  (*(v35 + 8))(v12, v36);
  (*(v33 + 8))(v18, v34);

  sub_1D992BAB4();
  swift_unknownObjectRelease();

  (*(v20 + 8))(a1, v19);
  return v30;
}

uint64_t sub_1D98C0598(uint64_t a1)
{
  v1 = sub_1D992B514();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](*(v30 + 64));
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D992B544();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](*(v28 + 64));
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D992B504();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D992B564();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  if (qword_1ED8BF430 != -1)
  {
    swift_once();
  }

  sub_1D986A454(0xD000000000000022, 0x80000001D993A2B0, 0xD000000000000071, 0x80000001D993A2E0, 0x293A5F2874696E69, 0xE800000000000000);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = sub_1D98C0144();

    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
      sub_1D992B894();
    }
  }

  sub_1D986E35C(0, &qword_1ED8BF400, 0x1E69E9610);
  v26 = sub_1D992BA44();
  sub_1D992B554();
  *v9 = 500;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E7F38], v6);
  MEMORY[0x1DA739AC0](v13, v9);
  (*(v7 + 8))(v9, v6);
  v19 = *(v11 + 8);
  v19(v13, v10);
  aBlock[4] = sub_1D98C0ADC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98F9B34;
  aBlock[3] = &block_descriptor_37;
  v20 = _Block_copy(aBlock);
  sub_1D992B534();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D98C2AA4(&qword_1ED8BF418, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
  sub_1D98C2AEC();
  v21 = v27;
  v22 = v31;
  sub_1D992BC44();
  v23 = v26;
  MEMORY[0x1DA739F70](v15, v5, v21, v20);
  _Block_release(v20);

  (*(v30 + 8))(v21, v22);
  (*(v28 + 8))(v5, v29);
  return (v19)(v15, v10);
}

void sub_1D98C0ADC()
{
  if (qword_1ED8BF430 != -1)
  {
    swift_once();
  }

  sub_1D986A454(0xD000000000000019, 0x80000001D993A360, 0xD000000000000071, 0x80000001D993A2E0, 0x293A5F2874696E69, 0xE800000000000000);
  exit(0);
}

void sub_1D98C0B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = &v30[-v13];
  type metadata accessor for SandboxExtension();
  v15 = swift_allocObject();
  *(v15 + 24) = a3;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  *(v15 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BB8, &qword_1D9932A00);
  sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v16 + 64));
  OUTLINED_FUNCTION_13();
  (*(v19 + 16))(v18 - v17, a1);
  v20 = *MEMORY[0x1E696A388];

  v21 = v20;
  v30[12] = 0;
  v22 = sub_1D992B324();
  sub_1D988E70C();
  v23 = v15 | 0x8000000000000000;
  v24 = objc_allocWithZone(type metadata accessor for StagingReport());
  v25 = sub_1D988C7F4(1);
  v26 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v6;
  v27[5] = v22;
  v27[6] = v23;
  v27[7] = v25;
  v27[8] = a4;
  v27[9] = a5;
  v6;
  sub_1D98C19D8(v22, v23);
  v28 = v25;

  v29 = sub_1D98BFAD0(0, 0, v14, &unk_1D9932A10, v27);
  sub_1D98C0170(v29);
  sub_1D98C18BC(v22, v23);
}

uint64_t sub_1D98C0E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1D98C19D8(a5, a6);
  v10 = a7;

  return MEMORY[0x1EEE6DFA0](sub_1D98C0EBC, 0, 0);
}

uint64_t sub_1D98C0EBC()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D989EC44();
  v5 = swift_allocError();
  v0[8] = v5;
  *v6 = 1;
  OUTLINED_FUNCTION_128();
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  sub_1D98C19D8(v3, v1);
  v8 = v2;
  v9 = v4;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *(v10 + 16) = &unk_1D9932A20;
  *(v10 + 24) = v7;
  *(v10 + 32) = xmmword_1D9932890;
  *(v10 + 48) = v5;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1D98C102C;
  OUTLINED_FUNCTION_18_5();

  return MEMORY[0x1EEE6DD58](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D98C102C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v7 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D98C1144()
{
  OUTLINED_FUNCTION_18();
  (*(v0 + 48))(*(v0 + 40), 0);
  v1 = *(v0 + 40);
  sub_1D98C18BC(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_16_0();

  return v2();
}

void sub_1D98C11B8()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v5 = sub_1D992AC84();
  v4(v3, v5);

  v6 = v0[5];
  sub_1D98C18BC(v0[3], v0[4]);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_18_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D98C1270(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *MEMORY[0x1E69E7D40];
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v8 = *((v7 & v6) + 0x58);
  v9 = *((v7 & v6) + 0x50);
  v12 = (*(v8 + 16) + **(v8 + 16));
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1D98C13EC;

  return v12(v5 + 2, v9, v8);
}

uint64_t sub_1D98C13EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_1D98C1528(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = sub_1D992AD44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AD14();
  v11 = sub_1D992B624();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  v15 = a1;
  sub_1D98C0B78(v10, v11, v13, sub_1D98C2B50, v14);

  return (*(v8 + 8))(v10, v7);
}

id sub_1D98C16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConcreteConfiguration.ExportedObject(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D98C1734(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  OUTLINED_FUNCTION_14_8();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_8();
}

uint64_t sub_1D98C1824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D98C1880(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D98C18BC(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1D98C1908()
{
  OUTLINED_FUNCTION_13_6();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_13(v5);
  *v6 = v7;
  v6[1] = sub_1D98692C4;
  v8 = OUTLINED_FUNCTION_0_33();

  return sub_1D98C0E30(v8, v9, v10, v11, v1, v2, v3, v4);
}

uint64_t sub_1D98C19D8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1D98C1A24()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_13_6();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4_13(v2);
  *v3 = v4;
  v3[1] = sub_1D98692C4;
  v5 = OUTLINED_FUNCTION_0_33();

  return sub_1D98C1270(v5, v6, v7, v8, v1);
}

uint64_t sub_1D98C1AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98C1B68, 0, 0);
}

uint64_t sub_1D98C1B68()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  sub_1D992B874();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_128();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v5;

  sub_1D98BF868(v1, &unk_1D9932A40, v7);
  sub_1D988C380(v1);
  OUTLINED_FUNCTION_17_6();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;
  v9 = v2;
  sub_1D98BF868(v1, &unk_1D9932A50, v8);
  sub_1D988C380(v1);
  v10 = swift_task_alloc();
  v0[11] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BC8, &unk_1D9932A58);
  *v10 = v0;
  v10[1] = sub_1D98C1D00;

  return MEMORY[0x1EEE6DAB8](v0 + 2);
}

uint64_t sub_1D98C1D00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    *(v3 + 104) = *(v3 + 16);
    *(v3 + 25) = *(v3 + 24);
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98C1E0C()
{
  v1 = *(v0 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992B8D4();
  if (v1 == 255)
  {
    v2 = *(v0 + 72);
    swift_willThrow();
    v3 = v2;
    goto LABEL_5;
  }

  if (*(v0 + 25))
  {
    swift_willThrow();
LABEL_5:

    OUTLINED_FUNCTION_25();
    goto LABEL_7;
  }

  sub_1D98C25E0(*(v0 + 104), *(v0 + 25));

  OUTLINED_FUNCTION_16_0();
LABEL_7:

  return v4();
}

uint64_t sub_1D98C1F20(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_13(v10);
  *v11 = v12;
  v11[1] = sub_1D98692C4;

  return sub_1D98C1AC4(a1, a2, v5, v6, v7, v8, v9);
}

uint64_t sub_1D98C1FF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D989EB64;

  return v8(a1);
}

uint64_t sub_1D98C20E8()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_13_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v1[1] = sub_1D98692C4;
  v3 = OUTLINED_FUNCTION_0_33();

  return sub_1D98C1FF0(v3, v4, v5, v6);
}

uint64_t sub_1D98C2188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1D992BE04();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98C224C, 0, 0);
}

uint64_t sub_1D98C224C()
{
  OUTLINED_FUNCTION_18();
  sub_1D992BFF4();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D98C2308;

  return sub_1D98C2604();
}

uint64_t sub_1D98C2308()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = *v1;
  OUTLINED_FUNCTION_17();
  *v9 = v8;
  *(v10 + 72) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D98C2464(uint64_t a1)
{
  v2 = *(v1 + 32);
  swift_willThrow();
  v3 = v2;

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1D98C24E0()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1D98C253C()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_13_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v1[1] = sub_1D989EB64;
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_18_5();

  return sub_1D98C2188(v3, v4, v5, v6, v7, v8);
}

void sub_1D98C25E0(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1D98C25F8(result, a2 & 1);
  }
}

void sub_1D98C25F8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1D98C2604()
{
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1D992BDF4();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_5();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D98C26F8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D992BE04();
  v5 = sub_1D98C2AA4(&qword_1ED8BF508, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D992BFD4();
  sub_1D98C2AA4(&qword_1ED8BF510, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D992BE14();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D98C2888;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D98C2888()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_17();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_18_5();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_5();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D98C2A1C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D98C2AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D98C2AEC()
{
  result = qword_1ED8BF408;
  if (!qword_1ED8BF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48BD0, &unk_1D9932A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BF408);
  }

  return result;
}

uint64_t static DataClassificationTag.space.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BD8;
  return result;
}

uint64_t static DataClassificationTag.space.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BD8 = v1;
  return result;
}

uint64_t sub_1D98C2C68@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BD8;
  return result;
}

uint64_t sub_1D98C2CB4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BD8 = v1;
  return result;
}

unint64_t DataClassificationTag.predicate.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1D98907D8(v2);
}

uint64_t DataClassificationTag.init(classification:predicate:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  result = sub_1D986D53C(a1, a3);
  *(a3 + 40) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics12TagPredicateO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
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

uint64_t sub_1D98C2D78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D98C2DB8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t SensitiveConditionTag.init(conditionType:predicate:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t static SensitiveConditionTag.space.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BE0;
  return result;
}

uint64_t static SensitiveConditionTag.space.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BE0 = v1;
  return result;
}

uint64_t sub_1D98C2F10@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BE0;
  return result;
}

uint64_t sub_1D98C2F5C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BE0 = v1;
  return result;
}

unint64_t SensitiveConditionTag.predicate.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D98907D8(v2);
}

uint64_t static SensitiveConditionTag.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    v5 = v2;
    v6 = *(a1 + 8);
    sub_1D98907D8(v6);
    sub_1D98907D8(v2);
    v3 = static TagPredicate.== infix(_:_:)();
    sub_1D9890810(v5);
    sub_1D9890810(v6);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id TagShim.__allocating_init(conditionType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);

  return [v7 initWithConditionType:a1 start:a2 end:a3];
}

id TagShim.init(conditionType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = 0;
  v12 = objc_allocWithZone(type metadata accessor for TagShim(0));
  v13 = OUTLINED_FUNCTION_4_14(v12);
  sub_1D9890810(v11);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  swift_deallocPartialClassInstance();
  return v13;
}

id TagShim.__allocating_init(conditionType:start:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConditionType:a1 start:a2];
}

id TagShim.__allocating_init(conditionType:end:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConditionType:a1 end:a2];
}

id sub_1D98C32B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = 0;
  *(v11 + 32) = a3;
  v12 = objc_allocWithZone(type metadata accessor for TagShim(0));
  v13 = OUTLINED_FUNCTION_4_14(v12);
  sub_1D9890810(v11);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  swift_deallocPartialClassInstance();
  return v13;
}

id TagShim.__allocating_init(conditionTypeAffectingEntireClock:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithConditionTypeAffectingEntireClock_];
}

id TagShim.init(conditionTypeAffectingEntireClock:)(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = objc_allocWithZone(type metadata accessor for TagShim(0));
  sub_1D98907D8(0xA000000000000000);
  v11 = sub_1D98C3A7C(v5, v1, 0xA000000000000000, v10);
  sub_1D9890810(0xA000000000000000);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  swift_deallocPartialClassInstance();
  return v11;
}

id TagShim.__allocating_init(conditionType:componentId:componentName:joined:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1D992AE44();
  v11 = [v9 initWithConditionType:a1 componentId:v10 componentName:a3 joined:a4 & 1];

  sub_1D992AE84();
  OUTLINED_FUNCTION_0_4();
  (*(v12 + 8))(a2);
  return v11;
}

id TagShim.init(conditionType:componentId:componentName:joined:)(int a1, uint64_t a2, int a3, char a4)
{
  v26 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(v15 + 48);
  v20 = *(type metadata accessor for ComponentId(0) + 20);
  v21 = *(v11 - 8);
  (*(v21 + 16))(&v18[v20], a2, v11);
  *v18 = a3;
  v18[v19] = a4;
  v22 = objc_allocWithZone(type metadata accessor for TagShim(0));
  sub_1D98907D8(v16 | 0x2000000000000000);
  v23 = sub_1D98C3A7C(v10, v26, v16 | 0x2000000000000000, v22);
  (*(v21 + 8))(a2, v11);
  sub_1D9890810(v16 | 0x2000000000000000);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  swift_deallocPartialClassInstance();
  return v23;
}

id TagShim.__allocating_init(conditionType:requestId:joined:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1D992AE44();
  v9 = [v7 initWithConditionType:a1 requestId:v8 joined:a3 & 1];

  sub_1D992AE84();
  OUTLINED_FUNCTION_0_4();
  (*(v10 + 8))(a2);
  return v9;
}

id TagShim.init(conditionType:requestId:joined:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D992AE44();
  v9 = [v4 initWithConditionType:a1 componentId:v8 componentName:1 joined:a3 & 1];

  sub_1D992AE84();
  OUTLINED_FUNCTION_0_4();
  (*(v10 + 8))(a2);
  return v9;
}

id sub_1D98C3A7C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v9[3] = &type metadata for SensitiveConditionTag;
  v9[4] = &protocol witness table for SensitiveConditionTag;
  LODWORD(v9[0]) = a2;
  v9[1] = a3;
  sub_1D9879FF8(a1, a4 + OBJC_IVAR___SiriAnalyticsTagShim_identifier);
  sub_1D98B37DC(v9, a4 + OBJC_IVAR___SiriAnalyticsTagShim_underlying);
  v8.receiver = a4;
  v8.super_class = type metadata accessor for TagShim(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1D987625C(a1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t sub_1D98C3B24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 16))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D98C3B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D98C3BD8(void (*a1)(__int128 *__return_ptr, unint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v15 = *v7;
      sub_1D98907D8(v15);
      a1(&v12, &v15);
      if (v3)
      {
        break;
      }

      sub_1D9890810(v15);
      if (v13)
      {
        sub_1D986D53C(&v12, v14);
        sub_1D986D53C(v14, &v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D98BE254();
          v6 = v9;
        }

        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_1D98BE254();
          v6 = v10;
        }

        *(v6 + 16) = v8 + 1;
        sub_1D986D53C(&v12, v6 + 40 * v8 + 32);
      }

      else
      {
        sub_1D986B804(&v12, &qword_1ECB48BE8, &qword_1D9932CC8);
      }

      ++v7;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_1D9890810(v15);
  }

  return v6;
}

uint64_t sub_1D98C3D44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_1D9889568(), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    if (v7)
    {
    }
  }

  else
  {
    v7 = Metastore.componentIdComprehension(for:)(a1);
    if (v7)
    {

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_11();
      v14 = v7;
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_11();
      v14 = 0;
    }

    sub_1D989E2CC(v14, a1, v8, v9, v10, v11, v12, v13, v16, v17, v19, v20);
    *(v2 + 16) = v18;
  }

  return v7;
}

uint64_t sub_1D98C3E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v4[2] = a3;
  v4[3] = a2;
  sub_1D98B6408(sub_1D98B99F4, v4, a1);
  result = v5;
  if (!*(v5 + 16))
  {

    return 0;
  }

  return result;
}

unint64_t sub_1D98C3E84(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a1;
  v11 = *(a1 + 1);
  if ((sub_1D992BB74() & 1) == 0)
  {
    goto LABEL_10;
  }

  v92 = a4;
  v91 = v10;
  v90 = v5;
  v98 = a3;
  v12 = sub_1D992AE84();
  v89 = v73;
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v93 = v16;
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v73 - v21;
  sub_1D9879FF8(a2, v73 - v21);
  if (__swift_getEnumTagSinglePayload(v22, 1, v12) == 1)
  {
    sub_1D986B804(v22, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_4:
    a3 = v98;
LABEL_9:
    v10 = v91;
LABEL_10:
    sub_1D98907D8(v11);
    v26 = v11;
    goto LABEL_11;
  }

  v86 = *(v14 + 32);
  v87 = v14 + 32;
  v86(v17, v22, v12);
  a3 = v98;
  if ((sub_1D992AE54() & 1) == 0)
  {
    (*(v14 + 8))(v17, v12);
    goto LABEL_9;
  }

  v81 = v17;
  v80 = v14;
  MEMORY[0x1EEE9AC00](&v99);
  v24 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v94 = v11;
  MEMORY[0x1EEE9AC00](v73);
  v25 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D990EE94(v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v12) == 1)
  {
    (*(v80 + 8))(v81, v12);
    sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
    goto LABEL_4;
  }

  v79 = v73;
  v86(v24, v25, v12);
  v37 = v24;
  v38 = v81;
  v39 = sub_1D98C3D44(v81);
  v10 = v91;
  if (!v39)
  {
    v66 = v12;
    v67 = *(v80 + 8);
    v67(v37, v66);
    v67(v38, v66);
    a3 = v98;
    goto LABEL_10;
  }

  v85 = v12;
  v77 = v39;
  v40 = sub_1D98D6BC8(v37);
  if (qword_1ED8BD6E0 != -1)
  {
    swift_once();
  }

  v88 = qword_1ECB49640;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0x6F697469646E6F63, 0xEF203A657079546ELL);
  v41 = sub_1D992BB54();
  MEMORY[0x1DA739C30](v41);

  MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D993A400);
  sub_1D98A19C4();
  v78 = v37;
  v42 = v85;
  v43 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v43);

  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D993A420);
  v97[0] = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BF0, &unk_1D9932CD0);
  v44 = sub_1D992B6A4();
  MEMORY[0x1DA739C30](v44);

  sub_1D986A454(v94, *(&v94 + 1), 0xD00000000000005BLL, 0x80000001D993A440, 0xD000000000000031, 0x80000001D993A4A0);

  if (v40)
  {
    v76 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
    v45 = swift_allocObject();
    v46 = v45;
    *(v45 + 16) = xmmword_1D992FCB0;
    *(v45 + 32) = v11;
    v47 = *(v40 + 16);
    v48 = v80;
    if (v47)
    {
      v73[0] = v45;
      v74 = a5;
      v75 = v11;
      sub_1D98907D8(v11);
      *&v94 = MEMORY[0x1E69E7CC0];
      sub_1D98B9CEC(0, v47, 0);
      v49 = v94;
      v51 = *(v48 + 16);
      v50 = v48 + 16;
      v83 = v51;
      v52 = (*(v50 + 64) + 32) & ~*(v50 + 64);
      v73[1] = v40;
      v53 = v40 + v52;
      v84 = v50;
      v54 = *(v50 + 56);
      v82 = v54;
      do
      {
        MEMORY[0x1EEE9AC00](v54);
        v56 = v73 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        v57 = v85;
        v83(v56, v53, v85);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
        v88 = swift_allocBox();
        v60 = v59;
        v61 = *(v58 + 48);
        *v59 = 1;
        v62 = type metadata accessor for ComponentId(0);
        v86(&v60[*(v62 + 20)], v56, v57);
        v60[v61] = 1;
        *&v94 = v49;
        v64 = *(v49 + 16);
        v63 = *(v49 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1D98B9CEC((v63 > 1), v64 + 1, 1);
          v49 = v94;
        }

        v65 = v88 | 0x2000000000000000;
        *(v49 + 16) = v64 + 1;
        *(v49 + 8 * v64 + 32) = v65;
        v54 = v82;
        v53 += v82;
        --v47;
      }

      while (v47);

      v10 = v91;
      v11 = v75;
      a5 = v74;
      v48 = v80;
      v68 = v81;
      v46 = v73[0];
    }

    else
    {
      sub_1D98907D8(v11);

      v49 = MEMORY[0x1E69E7CC0];
      v68 = v81;
    }

    v70 = swift_allocObject();
    *&v94 = v46;
    sub_1D98EBF2C(v49);

    v71 = *(v48 + 8);
    v72 = v85;
    v71(v78, v85);
    v71(v68, v72);
    *(v70 + 16) = v94;
    v26 = v70 | 0x4000000000000000;
    a2 = v76;
    a3 = v98;
  }

  else
  {

    v69 = *(v80 + 8);
    v69(v78, v42);
    v69(v81, v42);
    sub_1D98907D8(v11);
    v26 = v11;
    a3 = v98;
  }

LABEL_11:
  v97[0] = v26;
  sub_1D98907D8(v26);
  sub_1D98C4818(v97, a3, a2, &v94);
  sub_1D9890810(v26);
  if (*(&v95 + 1))
  {
    sub_1D986D53C(&v94, v97);
    sub_1D98B37DC(v97, &v94 + 8);
    LODWORD(v94) = v10;
    sub_1D987B960();
    v27 = *(*a5 + 16);
    sub_1D987B9F0(v27);
    __swift_destroy_boxed_opaque_existential_1(v97);
    v28 = *a5;
    *(v28 + 16) = v27 + 1;
    v29 = (v28 + 48 * v27);
    v30 = v94;
    v31 = v96;
    v29[3] = v95;
    v29[4] = v31;
    v29[2] = v30;
  }

  else
  {
    sub_1D986B804(&v94, &qword_1ECB48BE8, &qword_1D9932CC8);
  }

  *&v94 = v11;
  if (sub_1D98C500C())
  {
    return sub_1D9890810(v26);
  }

  v33 = sub_1D98B3ED0(&unk_1F5518268);
  sub_1D987B960();
  v34 = *(*a5 + 16);
  sub_1D987B9F0(v34);
  result = sub_1D9890810(v26);
  v35 = *a5;
  *(v35 + 16) = v34 + 1;
  v36 = v35 + 48 * v34;
  *(v36 + 32) = v10;
  *(v36 + 40) = v33;
  *(v36 + 64) = &type metadata for MessageInAnyEventTypes;
  *(v36 + 72) = &off_1F551A668;
  return result;
}

double sub_1D98C4818@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for ComponentId(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = type metadata accessor for MessageGroupIdentifier(0);
  OUTLINED_FUNCTION_9(v15);
  MEMORY[0x1EEE9AC00](*(v16 + 64));
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v70 - v19;
  v21 = *a1;
  switch(v21 >> 61)
  {
    case 1uLL:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
      v33 = swift_projectBox();
      v34 = *(v33 + *(v32 + 48));
      sub_1D988EE2C(v33, v20);
      sub_1D988EE2C(v20, v18);
      sub_1D98C5154(v18, v14);
      v35 = *(v10 + 20);
      sub_1D992AE84();
      OUTLINED_FUNCTION_6();
      MEMORY[0x1EEE9AC00](*(v36 + 64));
      OUTLINED_FUNCTION_13();
      (*(v39 + 16))(v38 - v37, v14 + v35);
      v40 = objc_allocWithZone(sub_1D992B1A4());
      v41 = sub_1D992B184();
      v42 = v41;
      if ((v34 & 1) == 0)
      {
        *(a4 + 24) = &type metadata for MessageHasComponentId;
        *(a4 + 32) = &off_1F5517078;
        *a4 = v41;
        goto LABEL_16;
      }

      if (!sub_1D98C3D44(a2))
      {

LABEL_32:
        OUTLINED_FUNCTION_2_20();
        OUTLINED_FUNCTION_1_22();
        goto LABEL_33;
      }

      if (!sub_1D98D6B60(v42))
      {

        goto LABEL_32;
      }

      sub_1D98D7290();
      v44 = v43;

      *(a4 + 24) = &type metadata for MessageInComponentIdSet;
      *(a4 + 32) = &off_1F5516FA0;

      *a4 = v44;
LABEL_16:
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_1_22();
      return *&v23;
    case 2uLL:
      *(a4 + 24) = &type metadata for CompositeMessagePredicate;
      *(a4 + 32) = &off_1F551A658;
      OUTLINED_FUNCTION_11_9();
      v26 = swift_allocObject();
      OUTLINED_FUNCTION_10_8(v26);
      MEMORY[0x1EEE9AC00](v27);
      OUTLINED_FUNCTION_6_14();
      v28 = OUTLINED_FUNCTION_12_8();

      *(v20 + 2) = v28;
      v20[56] = 0;
      return *&v23;
    case 3uLL:
      *(a4 + 24) = &type metadata for CompositeMessagePredicate;
      *(a4 + 32) = &off_1F551A658;
      OUTLINED_FUNCTION_11_9();
      v29 = swift_allocObject();
      OUTLINED_FUNCTION_10_8(v29);
      MEMORY[0x1EEE9AC00](v30);
      OUTLINED_FUNCTION_6_14();
      v31 = OUTLINED_FUNCTION_12_8();

      *(v20 + 2) = v31;
      v20[56] = 1;
      return *&v23;
    case 4uLL:
      v24 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v71 = v24;
      sub_1D98907D8(v24);
      sub_1D98C4818(&v71, a2, a3, &v72);
      if (v73)
      {
        sub_1D986D53C(&v72, v74);
        *(a4 + 24) = &type metadata for CompositeMessagePredicate;
        *(a4 + 32) = &off_1F551A658;
        OUTLINED_FUNCTION_11_9();
        v25 = swift_allocObject();
        *a4 = v25;
        sub_1D98B37DC(v74, v25 + 16);
        *(v25 + 56) = 2;
        sub_1D9890810(v24);
        __swift_destroy_boxed_opaque_existential_1(v74);
      }

      else
      {
        sub_1D9890810(v24);
        sub_1D986B804(&v72, &qword_1ECB48BE8, &qword_1D9932CC8);
LABEL_33:
        *(a4 + 32) = 0;
        *&v23 = 0;
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      return *&v23;
    case 5uLL:
      if (v21 == 0xA000000000000000)
      {
        *(a4 + 24) = type metadata accessor for MessageOnClock(0);
        *(a4 + 32) = &off_1F5517580;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
        sub_1D992AE84();
        OUTLINED_FUNCTION_5();
        v48 = *(v47 + 16);

        v48(boxed_opaque_existential_1, a2, v46);
      }

      else
      {
        if (!*(v5 + 8))
        {
          goto LABEL_25;
        }

        v49 = sub_1D992AE84();
        OUTLINED_FUNCTION_6();
        v51 = v50;
        MEMORY[0x1EEE9AC00](*(v52 + 64));
        OUTLINED_FUNCTION_13();
        v55 = v54 - v53;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_9(v56);
        MEMORY[0x1EEE9AC00](((*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
        OUTLINED_FUNCTION_8_9(v58, v70);
        if (OUTLINED_FUNCTION_4_15() == 1)
        {
          (*(v51 + 16))(v55, a2, v49);
          if (OUTLINED_FUNCTION_4_15() != 1)
          {
            sub_1D986B804(v10, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          (*(v51 + 32))(v55, v10, v49);
        }

        v59 = sub_1D98B3974();
        (*(v51 + 8))(v55, v49);
        if (!v59)
        {
LABEL_25:
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
        v60 = sub_1D992AE84();
        OUTLINED_FUNCTION_6();
        v62 = v61;
        v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1D992FCB0;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_9(v65);
        MEMORY[0x1EEE9AC00](((*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
        OUTLINED_FUNCTION_8_9(v67, v70);
        if (OUTLINED_FUNCTION_4_15() == 1)
        {
          (*(v62 + 16))(v64 + v63, a2, v60);
          if (OUTLINED_FUNCTION_4_15() != 1)
          {
            sub_1D986B804(v10, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          (*(v62 + 32))(v64 + v63, v10, v60);
        }

        v74[0] = v64;
        sub_1D98EB9B4();
        sub_1D98B399C();
        *(a4 + 24) = &type metadata for MessageInClockIdSet;
        *(a4 + 32) = &off_1F551A648;
        *a4 = v68;
      }

      return *&v23;
    default:
      v22 = *(v21 + 32);
      v23 = *(v21 + 16);
      *(a4 + 24) = &type metadata for MessageInTimestampRange;
      *(a4 + 32) = &off_1F5516F68;
      *a4 = v23;
      *(a4 + 16) = v22;
      return *&v23;
  }
}

uint64_t sub_1D98C500C()
{
  switch(*v1 >> 61)
  {
    case 2:
      result = OUTLINED_FUNCTION_13_7();
      v4 = 0;
      while (1)
      {
        if (v2 == v4)
        {
          goto LABEL_14;
        }

        if (v4 >= *(v0 + 16))
        {
          break;
        }

        v5 = v4 + 1;
        OUTLINED_FUNCTION_7_11();
        result = sub_1D98C500C();
        v4 = v5;
        if (result)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_18;
    case 3:
      result = OUTLINED_FUNCTION_13_7();
      v7 = 0;
      break;
    case 4:
      OUTLINED_FUNCTION_7_11();
      v6 = sub_1D98C500C() ^ 1;
      return v6 & 1;
    case 5:
      v6 = (*v1 & 0xFFFFFFFFFFFFFFF7) == 0xA000000000000000;
      return v6 & 1;
    default:
      goto LABEL_15;
  }

  while (1)
  {
    if (v2 == v7)
    {
LABEL_14:

LABEL_15:
      v6 = 0;
      return v6 & 1;
    }

    if (v7 >= *(v0 + 16))
    {
      break;
    }

    v8 = v7 + 1;
    OUTLINED_FUNCTION_7_11();
    result = sub_1D98C500C();
    v7 = v8;
    if (result)
    {
LABEL_13:

      v6 = 1;
      return v6 & 1;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D98C5154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentId(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C51B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_13_7()
{
}

unint64_t sub_1D98C5248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 16);
  if (v5)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D986C620(0, v5, 0);
    v7 = (a3 + 49);
    do
    {
      v9 = *(v7 - 1);
      if (*v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x4C554E20544F4E20;
      }

      if (*v7)
      {
        v11 = 0xE000000000000000;
      }

      else
      {
        v11 = 0xE90000000000004CLL;
      }

      v23 = *(v7 - 17);
      v8 = *(v7 - 9);
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA739C30](32, 0xE100000000000000);
      v12 = 0xE400000000000000;
      v13 = 1415071060;
      switch(v9)
      {
        case 1:
          v12 = 0xE700000000000000;
          v13 = 0x434952454D554ELL;
          break;
        case 2:
          v12 = 0xE700000000000000;
          v13 = 0x52454745544E49;
          break;
        case 3:
          v13 = 1279346002;
          break;
        case 4:
          v13 = 1112493122;
          break;
        default:
          break;
      }

      MEMORY[0x1DA739C30](v13, v12);

      MEMORY[0x1DA739C30](v10, v11);

      v15 = *(v24 + 16);
      v14 = *(v24 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D986C620(v14 > 1, v15 + 1, 1);
      }

      *(v24 + 16) = v15 + 1;
      v16 = v24 + 16 * v15;
      *(v16 + 32) = v23;
      *(v16 + 40) = v8;
      v7 += 24;
      --v5;
    }

    while (v5);
    v4 = a1;
    v3 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v17 = sub_1D992B5E4();
  v19 = v18;

  sub_1D992BD64();

  MEMORY[0x1DA739C30](v4, v3);
  MEMORY[0x1DA739C30](0x202020200A2820, 0xE700000000000000);
  MEMORY[0x1DA739C30](v17, v19);

  MEMORY[0x1DA739C30](3877130, 0xE300000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1D98C5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v14 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs;
  *(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs) = 0;
  v15 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
  v16 = sub_1D992AE84();
  v17 = *(*(v16 - 8) + 32);
  v17(v9 + v15, a1, v16);
  v17(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_bootSessionUUID, a2, v16);
  *(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn) = a3;
  v18 = v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn;
  *v18 = a4;
  *(v18 + 8) = a5 & 1;
  v19 = v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_lastEvent;
  *v19 = a6;
  *(v19 + 8) = a7 & 1;
  *(v9 + v14) = a8;
  *(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_active) = a9;
  return v9;
}

uint64_t sub_1D98C5648()
{
  v1 = v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn;
  if (*(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn + 8) == 1)
  {
    v1 = v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_lastEvent;
  }

  return *v1;
}

uint64_t sub_1D98C5680()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
  v2 = sub_1D992AE84();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_bootSessionUUID, v2);

  return v0;
}

uint64_t sub_1D98C5720()
{
  sub_1D98C5680();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogicalClockRecord(uint64_t a1)
{
  result = qword_1ED8BD7F0;
  if (!qword_1ED8BD7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98C57CC(uint64_t a1)
{
  result = sub_1D992AE84();
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

BOOL sub_1D98C588C(uint64_t a1, char a2)
{
  if ((sub_1D992AE54() & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    sub_1D98C5960(&v14);
    if (v16)
    {
      return 0;
    }

    v10 = v14;
    v11 = v15;
    v12 = *(a1 + *(type metadata accessor for MonotonicTimestamp(0) + 20));
    return v12 >= v10 && v11 >= v12;
  }

  sub_1D98C59A8(&v14);
  v5 = v14;
  v6 = v16;
  v7 = *(a1 + *(type metadata accessor for MonotonicTimestamp(0) + 20));
  if (!v6)
  {
    return v7 >= v5 && v15 >= v7;
  }

  v8 = v7 >= v5;
  v9 = v5 >= v7;
  if (v6 == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1D98C5960@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn);
  result = sub_1D98C5648();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1D98C59A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D98C5648();
  v4 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn;
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn);
  result = v4 + 300000000000;
  if (v4 >= 0xFFFFFFBA269B4800)
  {
    __break(1u);
LABEL_4:
    v4 = *(v1 + v4);
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1D98C5A38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1D98C5A78(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1D98C5AFC(uint64_t a1)
{
  result = type metadata accessor for DbResource(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BiomeResource(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DendriteStreamResource(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D98C5C0C(uint64_t a1)
{
  if (!qword_1ECB48060)
  {
    type metadata accessor for SASandboxExtensionResource(255);
    v1 = sub_1D992BC04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB48060);
    }
  }
}

void sub_1D98C5C64(uint64_t a1)
{
  if (!qword_1ECB48090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48BF8, &qword_1D9932DE8);
    v1 = sub_1D992BC04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB48090);
    }
  }
}

void sub_1D98C5CF0(uint64_t a1)
{
  sub_1D992AD44();
  if (v1 <= 0x3F)
  {
    sub_1D98C5C0C(319);
    if (v2 <= 0x3F)
    {
      sub_1D98C5C64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for BiomeIdentifier(_BYTE *result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_15();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_13(*(v2 + 24));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_15();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_23_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 24) = v0;
  }
}

void sub_1D98C5F80(uint64_t a1)
{
  sub_1D992AD44();
  if (v1 <= 0x3F)
  {
    sub_1D98C5C0C(319);
    if (v2 <= 0x3F)
    {
      sub_1D98C5C64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D98C601C@<X0>(uint64_t a1@<X8>)
{
  v6 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v8 = OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v10 = OUTLINED_FUNCTION_6_15();
  v11 = type metadata accessor for DbResource(v10);
  OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  OUTLINED_FUNCTION_13();
  v13 = OUTLINED_FUNCTION_5_14();
  type metadata accessor for ResourceType(v13);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v14 + 64));
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11_10(v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D98C69F4(v4, v1, type metadata accessor for DendriteStreamResource);
      sub_1D992AD44();
      OUTLINED_FUNCTION_5();
      (*(v22 + 16))(a1, v1);
      v18 = v1;
      v21 = type metadata accessor for DendriteStreamResource;
      return sub_1D98C6A54(v18, v21);
    }

    v1 = type metadata accessor for BiomeResource;
    sub_1D98C69F4(v4, v2, type metadata accessor for BiomeResource);
    sub_1D992AD44();
    OUTLINED_FUNCTION_5();
    (*(v17 + 16))(a1, v2);
    v18 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1D98C69F4(v4, v3, v19);
    sub_1D992AD44();
    OUTLINED_FUNCTION_5();
    (*(v20 + 16))(a1, v3);
    v18 = v3;
  }

  v21 = v1;
  return sub_1D98C6A54(v18, v21);
}

uint64_t sub_1D98C6250()
{
  v2 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v4 = OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  OUTLINED_FUNCTION_13();
  v6 = OUTLINED_FUNCTION_5_14();
  v7 = type metadata accessor for DbResource(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  sub_1D98C6990(v0, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D98C69F4(v15, v0, type metadata accessor for DendriteStreamResource);
      v17 = *(v0 + *(v2 + 20));
      v18 = v0;
      v20 = type metadata accessor for DendriteStreamResource;
      goto LABEL_7;
    }

    v0 = type metadata accessor for BiomeResource;
    sub_1D98C69F4(v15, v1, type metadata accessor for BiomeResource);
    v17 = *(v1 + *(v4 + 24));
    v18 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1D98C69F4(v15, v11, v19);
    v17 = *(v11 + *(v7 + 20));
    v18 = v11;
  }

  v20 = v0;
LABEL_7:
  sub_1D98C6A54(v18, v20);
  return v17;
}

uint64_t sub_1D98C6448@<X0>(uint64_t a1@<X8>)
{
  v6 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v8 = OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v10 = OUTLINED_FUNCTION_6_15();
  v11 = type metadata accessor for DbResource(v10);
  OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  OUTLINED_FUNCTION_13();
  v13 = OUTLINED_FUNCTION_5_14();
  type metadata accessor for ResourceType(v13);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v14 + 64));
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11_10(v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = type metadata accessor for DbResource;
    sub_1D98C69F4(v4, v3, type metadata accessor for DbResource);
    sub_1D992AD04();
    v18 = v3;
LABEL_6:
    v19 = v20;
    return sub_1D98C6A54(v18, v19);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = type metadata accessor for DendriteStreamResource;
    sub_1D98C69F4(v4, v1, type metadata accessor for DendriteStreamResource);
    sub_1D992AD44();
    OUTLINED_FUNCTION_5();
    (*(v21 + 16))(a1, v1);
    v18 = v1;
    goto LABEL_6;
  }

  sub_1D98C69F4(v4, v2, type metadata accessor for BiomeResource);
  sub_1D992AD44();
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(a1, v2);
  v18 = v2;
  v19 = type metadata accessor for BiomeResource;
  return sub_1D98C6A54(v18, v19);
}

uint64_t sub_1D98C6664@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  OUTLINED_FUNCTION_13();
  v7 = OUTLINED_FUNCTION_6_15();
  v8 = type metadata accessor for BiomeResource(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = type metadata accessor for DbResource(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v14 + 64));
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v18 + 64));
  OUTLINED_FUNCTION_13();
  v21 = v20 - v19;
  sub_1D98C6990(v3, v20 - v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D98C69F4(v21, v2, type metadata accessor for DendriteStreamResource);
      sub_1D98C6AAC(v2 + *(v5 + 24), a1);
      v23 = v2;
      v25 = type metadata accessor for DendriteStreamResource;
      return sub_1D98C6A54(v23, v25);
    }

    v5 = type metadata accessor for BiomeResource;
    sub_1D98C69F4(v21, v12, type metadata accessor for BiomeResource);
    sub_1D98C6AAC(v12 + *(v8 + 28), a1);
    v23 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1D98C69F4(v21, v17, v24);
    sub_1D98C6AAC(v17 + *(v13 + 24), a1);
    v23 = v17;
  }

  v25 = v5;
  return sub_1D98C6A54(v23, v25);
}

BOOL sub_1D98C6864(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D992BF04();

  return v2 != 0;
}

BOOL sub_1D98C68D4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D98C6864(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D98C6908@<X0>(void *a1@<X8>)
{
  result = sub_1D98C68AC();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D98C693C()
{
  result = qword_1ECB48C00;
  if (!qword_1ECB48C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C00);
  }

  return result;
}

uint64_t sub_1D98C6990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C69F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D98C6A54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D98C6AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C08, &unk_1D9932EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id MessageTopicsShim.init(fbfStorage:messageTailing:rawStream:messageStore:)(void *a1, char *a2, char *a3, char *a4)
{
  v5 = v4;
  v29 = a4;
  v30 = a1;
  v10 = *&a2[OBJC_IVAR___SiriAnalyticsTailToOSLog_underlying];
  v11 = *&a3[OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying];
  type metadata accessor for DiagnosticOutputTopic();
  v12 = swift_allocObject();
  v13 = v11;

  swift_defaultActor_initialize();
  *(v12 + 112) = v10;
  *(v12 + 120) = v11;
  sub_1D98B37DC(a1 + OBJC_IVAR___SiriAnalyticsFBFStorage_underlying, &v36);
  type metadata accessor for DirectUploadTopic();
  v14 = swift_allocObject();

  swift_defaultActor_initialize();
  sub_1D986D53C(&v36, v14 + 112);
  *(v14 + 152) = v12;
  v15 = *&a4[OBJC_IVAR___SiriAnalyticsMessageStore_underlying];
  v16 = type metadata accessor for MessageStoreConcrete();
  v37 = v16;
  v38 = &off_1F5519A38;
  *&v36 = v15;
  type metadata accessor for PackagedUploadTopic();
  v17 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v36, v16);
  MEMORY[0x1EEE9AC00](*(*(v16 - 8) + 64));
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v34 = v16;
  v35 = &off_1F5519A38;
  *&v33 = v21;

  swift_defaultActor_initialize();
  sub_1D986D53C(&v33, v17 + 112);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  type metadata accessor for OnDeviceSyndicationTopic();
  swift_allocObject();
  v22 = sub_1D98D4324();
  v23 = &v5[OBJC_IVAR___SiriAnalyticsMessageTopics_underlying];
  *v23 = v14;
  v23[1] = v17;
  v23[2] = v22;
  v23[3] = v12;
  v24 = type metadata accessor for DirectUploadTopicShim();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___SiriAnalyticsDirectUploadTopic_underlying] = v14;
  v32.receiver = v25;
  v32.super_class = v24;

  *&v5[OBJC_IVAR___SiriAnalyticsMessageTopics_directUpload] = objc_msgSendSuper2(&v32, sel_init);
  v26 = type metadata accessor for MessageTopicsShim();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, sel_init);

  return v27;
}

id MessageTopicsShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessageTopicsShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageTopicsShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D98C705C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D98C709C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D98C70EC(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v14 - v6;
  v8 = type metadata accessor for MonotonicTimestamp(0);
  MEMORY[0x1EEE9AC00](*(*(v8 - 8) + 64));
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D98C7934(v3, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1D98C78CC(v7);
  }

  else
  {
    sub_1D98ACCA0(v7, v10);
    MEMORY[0x1EEE9AC00](v12);
    *(&v14 - 2) = v10;
    *(&v14 - 1) = a1;
    sub_1D992B9C4();
    result = sub_1D98C7A84(v10);
    if (v2)
    {
      return result;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  *(&v14 - 2) = v3;
  *(&v14 - 1) = a1;
  return sub_1D992B9C4();
}

id sub_1D98C72AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MonotonicTimestamp(0);
  [a2 writeUint64:*(a1 + *(v4 + 20)) forTag:1];
  sub_1D992B9F4();
  return [a2 writeUint32:*(a1 + *(v4 + 24)) forTag:3];
}

uint64_t sub_1D98C7384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v13[-v6];
  v8 = type metadata accessor for MonotonicTimestamp(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v14 = a1;
  v15 = v7;
  v16 = &v17;
  v17 = 0;
  sub_1D98C7878();
  sub_1D992B964();
  if (!v2)
  {
    v9 = v17;
    if (v17)
    {
      sub_1D98C7934(v7, a2);
      *(a2 + *(type metadata accessor for StagingPoolEntry(0) + 20)) = v9;
      return sub_1D98C78CC(v7);
    }

    v11 = sub_1D992B484();
    sub_1D98C7AE0(&qword_1ECB479C0, MEMORY[0x1E6999BC0], MEMORY[0x1E6999BD8]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x1E6999BA8], v11);
    swift_willThrow();
  }

  return sub_1D98C78CC(v7);
}

uint64_t sub_1D98C75B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v10 - v6;
  result = static MonotonicTimestamp.read(from:)(a2, &v10 - v6);
  if (!v2)
  {
    v9 = type metadata accessor for MonotonicTimestamp(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    return sub_1D98C79DC(v7, a1);
  }

  return result;
}

id sub_1D98C7678(void **a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CF568]) init];
  v5 = *a1;
  *a1 = v4;

  result = *a1;
  if (*a1)
  {
    return [result readFrom_];
  }

  return result;
}

unint64_t sub_1D98C7878()
{
  result = qword_1ECB47E00;
  if (!qword_1ECB47E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47E00);
  }

  return result;
}

uint64_t sub_1D98C78CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98C7934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C79DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C7A84(uint64_t a1)
{
  v2 = type metadata accessor for MonotonicTimestamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98C7AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s9ProtoTagsOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98C7C08()
{
  result = qword_1ECB48C20;
  if (!qword_1ECB48C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C20);
  }

  return result;
}

id static StagingPool.vended(containerURL:sandboxExtension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BB8, &qword_1D9932A00);
  v7 = *(sub_1D992AD44() - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  (*(v9 + 16))(&v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v10 = *MEMORY[0x1E696A388];
  v14[12] = 0;
  v11 = sub_1D992B324();
  sub_1D988E70C();
  if (v3)
  {
  }

  *a3 = v11;
  a3[1] = a2 | 0x8000000000000000;
  v13 = objc_allocWithZone(type metadata accessor for StagingReport());

  result = sub_1D988C7F4(1);
  a3[2] = result;
  return result;
}

void StagingPool.add(timestamp:message:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for StagingPoolEntry(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 wrapAsAnyEvent];
  if (v9)
  {
    v10 = v9;
    sub_1D98C7934(a1, v8);
    *&v8[*(v5 + 20)] = v10;
    v11 = v10;

    sub_1D992B374();
    sub_1D98C89B8(v8);

    if (!v2)
    {
      v12 = type metadata accessor for MonotonicTimestamp(0);
      if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
      {
        sub_1D988C9F8();
      }

      else
      {
        sub_1D988C9BC();
      }
    }
  }

  else
  {
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_1_17();
      swift_once();
    }

    sub_1D98DCEB4(0xD00000000000001ALL, 0x80000001D993A660, 0xD000000000000068, 0x80000001D993A680, 0xD000000000000017, 0x80000001D993A6F0);
  }
}

uint64_t sub_1D98C7F7C()
{

  sub_1D992B3A4();
}

uint64_t sub_1D98C80C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98C80E4()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for SandboxExtension();
  v6 = sub_1D988E2FC(v5, v4, v3, v1, v2 + OBJC_IVAR____TtC13SiriAnalytics15StagingPoolHost_stagingContainerURL, 0);
  v7 = *(v6 + 2);
  v8 = *(v6 + 3);

  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_1D98C8284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  a6;
  v12 = swift_task_alloc();
  v6[4] = v12;
  *v12 = v6;
  v12[1] = sub_1D98C8360;

  return sub_1D98C80C8(a1, a2, a3, a4);
}

uint64_t sub_1D98C8360(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;
  OUTLINED_FUNCTION_17();
  *v8 = v7;

  if (v4)
  {
    v9 = sub_1D992AC84();

    v10 = 0;
    v11 = v9;
  }

  else
  {
    v10 = sub_1D992B614();

    v9 = 0;
    v11 = v10;
  }

  v12 = *(v5 + 24);
  v12[2](v12, v10, v9);

  _Block_release(v12);
  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_1D98C84E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98C84FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13SiriAnalytics15StagingPoolHost_stagingContainerURL;
  sub_1D992AD44();
  OUTLINED_FUNCTION_5();
  (*(v4 + 16))(v2, v1 + v3);
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D98C8644(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = sub_1D992AD44();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[5] = v6;
  v2[6] = _Block_copy(a1);
  a2;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_1D98C8764;

  return sub_1D98C84E8(v6);
}

uint64_t sub_1D98C8764()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_17();
  *v7 = v6;

  v8 = sub_1D992ACD4();
  (*(v3 + 8))(v2, v4);
  (v1)[2](v1, v8);

  _Block_release(v1);

  OUTLINED_FUNCTION_25();

  return v9();
}

id sub_1D98C891C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StagingPoolHost(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98C89B8(uint64_t a1)
{
  v2 = type metadata accessor for StagingPoolEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98C8A20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D98C8A60(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t type metadata accessor for StagingPoolHost(uint64_t a1)
{
  result = qword_1ECB47EA8;
  if (!qword_1ECB47EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98C8B04(uint64_t a1)
{
  result = sub_1D992AD44();
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

uint64_t sub_1D98C8B94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 16))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D98C8C04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D98C8C80(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1D98C8CA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98C8D54;

  return sub_1D98C8644(v2, v3);
}

uint64_t sub_1D98C8D54()
{
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D98C8E3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D98C8F10;

  return sub_1D98C8284(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1D98C8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_5_15(v11, v19);
  v12 = sub_1D992B874();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D986DEE4(v5, &qword_1ECB48BB0, &qword_1D9930970);
  }

  else
  {
    sub_1D992B864();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);
    OUTLINED_FUNCTION_0_0();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1D992B814();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D992B6B4();
  OUTLINED_FUNCTION_0_0();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  v17 = swift_task_create();

  sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);

  return v17;
}

uint64_t sub_1D98C91CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_5_15(v11, v19);
  v12 = sub_1D992B874();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D986DEE4(v5, &qword_1ECB48BB0, &qword_1D9930970);
  }

  else
  {
    sub_1D992B864();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);
    OUTLINED_FUNCTION_0_0();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1D992B814();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D992B6B4();
  OUTLINED_FUNCTION_0_0();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
  v16 = swift_task_create();

  sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);

  return v16;
}

char *MessageProcessingStrategy.init(messageStaging:)(char *a1)
{
  *&v1[OBJC_IVAR___SiriAnalyticsMessageProcessingStrategy_messageStagingProvider] = *&a1[OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MessageProcessingStrategy();

  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id MessageProcessingStrategy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessageProcessingStrategy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageProcessingStrategy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98C96AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98C973C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98C97CC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98C9860(uint64_t a1, uint64_t a2)
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000040, 0x80000001D993A8C0);
  MEMORY[0x1DA739C30](a1, a2);
  MEMORY[0x1DA739C30](15138, 0xE200000000000000);
  return 0;
}

id FBFStorageShim.__allocating_init(applicationIdentifier:telemetry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___SiriAnalyticsFBFStorage_underlying];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 3) = &type metadata for FBFStorage;
  *(v8 + 4) = &off_1F551A260;
  *(v8 + 2) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id FBFStorageShim.init(applicationIdentifier:telemetry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___SiriAnalyticsFBFStorage_underlying];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 3) = &type metadata for FBFStorage;
  *(v4 + 4) = &off_1F551A260;
  *(v4 + 2) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for FBFStorageShim();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1D98C9A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98C9A9C()
{

  v1 = sub_1D992BF04();

  if (v1 > 3)
  {
    sub_1D98C9DC4();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v9();
  }

  else
  {
    v2 = (*(v0 + 40) + OBJC_IVAR___SiriAnalyticsFBFStorage_underlying);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    *(v0 + 64) = v1;
    v10 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *v5 = v0;
    v5[1] = sub_1D98C9C80;
    v6 = *(v0 + 16);

    return v10(v6, v0 + 64, v3, v4);
  }
}

uint64_t sub_1D98C9C80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D98C9DA0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v5();
  }
}

unint64_t sub_1D98C9DC4()
{
  result = qword_1ECB47EC8;
  if (!qword_1ECB47EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47EC8);
  }

  return result;
}

uint64_t sub_1D98C9EB0(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1D992B624();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1D98C9F9C;

  return sub_1D98C9A84(v10, v7, v9);
}

uint64_t sub_1D98C9F9C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[4];
  if (v2)
  {
    v10 = sub_1D992AC84();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v11 = v8[1];

  return v11();
}

id FBFStorageShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBFStorageShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBFStorageShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of OffDeviceStorage.store(_:topic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D98692C4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FBFStorageShim.store(_:topic:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D989EB64;

  return v11(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for FBFStorageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D98CA58C(uint64_t a1, int a2)
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

uint64_t sub_1D98CA5CC(uint64_t result, int a2, int a3)
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

unint64_t sub_1D98CA620()
{
  result = qword_1ECB48C48;
  if (!qword_1ECB48C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C48);
  }

  return result;
}

uint64_t sub_1D98CA674(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 72) = *a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98CA694()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v8 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v8;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1D98CA7B8;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x3A5F2865726F7473, 0xEF293A6369706F74, sub_1D98CB180, v4, v6);
}

uint64_t sub_1D98CA7B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (v0)
  {
    v6 = sub_1D98CA8E8;
  }

  else
  {

    v6 = sub_1D98CA8C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D98CA8E8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v0();
}

void sub_1D98CA944(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = a4;
  v23 = a5;
  v21 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v20 - v10;
  v12 = [objc_opt_self() sharedLogger];
  v13 = sub_1D992B614();

  (*(v9 + 16))(v11, v21, v8);
  v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 2) = v22;
  *(v15 + 3) = v16;
  *(v15 + 4) = a6;
  *(v15 + 5) = a2;
  (*(v9 + 32))(&v15[v14], v11, v8);
  aBlock[4] = sub_1D98CB194;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98CAE80;
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);
  v18 = a6;
  v19 = a2;

  [v12 reportSiriInstrumentationEvent:v19 forBundleID:v13 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1D98CABE4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = a1;
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D993A990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
    sub_1D992BE24();
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD00000000000006ALL, 0x80000001D993A9B0, 0x3A5F2865726F7473, 0xEF293A6369706F74);

    sub_1D98CADAC(a1, a5, a2, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
    return sub_1D992B824();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
    return sub_1D992B834();
  }
}

void sub_1D98CADAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = a5;
    v7 = sub_1D992AC84();
    v8 = sub_1D98CAEEC(v7);
    v9 = sub_1D98CB230(a2);
    if (v10 >> 60 == 15)
    {
      v13 = 0;
      [v6 trackFBFError:v8 forEventData:0];
    }

    else
    {
      v11 = v9;
      v12 = v10;
      v13 = sub_1D992AD74();
      sub_1D9866358(v11, v12);
      [v6 trackFBFError:v8 forEventData:v13];
    }
  }
}

void sub_1D98CAE80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D98CAEEC(void *a1)
{
  type metadata accessor for FLError(0);
  sub_1D98CB294();
  sub_1D992AC54();

  result = 1;
  switch(v3)
  {
    case -9:
      result = 39;
      break;
    case -8:
      result = 38;
      break;
    case -7:
      result = 7;
      break;
    case -6:
      result = 6;
      break;
    case -5:
      result = 5;
      break;
    case -4:
      result = 4;
      break;
    case -3:
      result = 3;
      break;
    case -2:
      result = 2;
      break;
    case -1:
      return result;
    case 0:
      goto LABEL_6;
    case 1:
      result = 8;
      break;
    case 2:
      result = 9;
      break;
    case 3:
      result = 10;
      break;
    case 4:
      result = 11;
      break;
    case 5:
      result = 12;
      break;
    case 6:
      result = 13;
      break;
    case 7:
      result = 14;
      break;
    case 8:
      result = 15;
      break;
    case 9:
      result = 16;
      break;
    case 10:
      result = 17;
      break;
    case 11:
      result = 18;
      break;
    case 12:
      result = 19;
      break;
    case 13:
      result = 20;
      break;
    case 14:
      result = 21;
      break;
    case 15:
      result = 22;
      break;
    case 16:
      result = 23;
      break;
    case 17:
      result = 24;
      break;
    case 18:
      result = 25;
      break;
    case 19:
      result = 26;
      break;
    case 20:
      result = 27;
      break;
    case 21:
      result = 28;
      break;
    case 22:
      result = 29;
      break;
    case 23:
      result = 30;
      break;
    case 24:
      result = 31;
      break;
    case 25:
      result = 32;
      break;
    case 26:
      result = 33;
      break;
    case 27:
      result = 34;
      break;
    case 28:
      result = 35;
      break;
    default:
      if (v3 == 100)
      {
        result = 36;
      }

      else if (v3 == 101)
      {
        result = 37;
      }

      else
      {
LABEL_6:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1D98CB0C0(uint64_t a1, _BYTE *a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D989EB64;

  return sub_1D98CA674(a1, a2, v6, v7, v8);
}

uint64_t sub_1D98CB194(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return sub_1D98CABE4(a1, v3, v4, v5, v6);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D98CB230(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D992AD84();

  return v3;
}

unint64_t sub_1D98CB294()
{
  result = qword_1ECB48298;
  if (!qword_1ECB48298)
  {
    type metadata accessor for FLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48298);
  }

  return result;
}

uint64_t sub_1D98CB2EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D989EB64;

  return sub_1D98C9EB0(v2, v3, v5, v4);
}

uint64_t sub_1D98CB3AC()
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v0 = type metadata accessor for DbResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB418@<X0>(uint64_t a1@<X8>)
{
  sub_1D992ACE4();
  v2 = type metadata accessor for BiomeResource(0);
  v3 = a1 + *(v2 + 28);
  *(v3 + 24) = &type metadata for UnifiedMessageStreamAccessDemand;
  *(v3 + 32) = &off_1F5516D80;
  v4 = a1 + *(v2 + 24);
  *v4 = 1;
  *(v4 + 8) = 0;
  type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB4C0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v2 = type metadata accessor for BiomeResource(0);
  v3 = a1 + *(v2 + 28);
  *(v3 + 24) = &type metadata for RawUnifiedMessageStreamAccessDemand;
  *(v3 + 32) = &off_1F551A2E0;
  v4 = a1 + *(v2 + 24);
  *v4 = 2;
  *(v4 + 8) = 0;
  type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB560()
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v0 = type metadata accessor for DbResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB5CC()
{
  sub_1D992ACE4();
  v0 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB648()
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v0 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    sub_1D98CB4C0(a2);
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_1D98CB418(a2);
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = 1;
LABEL_7:
  v4 = type metadata accessor for ResourceType(0);

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

uint64_t sub_1D98CB72C()
{
  v1 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v1 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v32 = v3 - v2;
  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  v33 = "Migrating outdated resources";
  v34 = qword_1ED8BFBC8;
  sub_1D986A454(0xD00000000000001CLL, 0x80000001D993AA20, 0xD000000000000059, 0x80000001D993AA40, 0x286574617267696DLL, 0xE900000000000029);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C58, &qword_1D9933460);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487D0, &qword_1D99318D8);
  v28 = *(v4 - 8);
  v29 = v4 - 8;
  v5 = *(v28 + 72);
  v6 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9931220;
  v30 = v7;
  v8 = v7 + v6;
  sub_1D992ACE4();
  sub_1D992ACE4();
  v27 = *(v4 + 48);
  v31 = 0xD000000000000010;
  sub_1D992ACE4();
  sub_1D992ACE4();
  v27 = *(v4 + 48);
  sub_1D992ACE4();
  v31 = v0;
  sub_1D992ACE4();
  MEMORY[0x1EEE9AC00](((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v27 - v9;
  v11 = 3;
  do
  {
    sub_1D98CC7FC(v8, v10);
    type metadata accessor for PersistentStorage();
    sub_1D98F90D4();
    sub_1D986B804(v10, &qword_1ECB487D0, &qword_1D99318D8);
    v8 += v5;
    --v11;
  }

  while (v11);
  swift_setDeallocating();
  sub_1D9899484();
  OUTLINED_FUNCTION_9_9();
  sub_1D986A454(v12, v13, v14, v15, v16, v17);
  type metadata accessor for PersistentStorage();
  v18 = v32;
  sub_1D98CB560();
  v19 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v21 = v20;
  MEMORY[0x1EEE9AC00](*(v22 + 64));
  OUTLINED_FUNCTION_13();
  v25 = v24 - v23;
  sub_1D98C601C(v24 - v23);
  sub_1D98876F0(v18);
  sub_1D98F9590();
  return (*(v21 + 8))(v25, v19);
}

uint64_t sub_1D98CBC84(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7)
{
  v39 = a5;
  v40 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C60, &qword_1D9933468);
  MEMORY[0x1EEE9AC00](((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = &v39 - v13;
  v15 = type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v16 + 64));
  OUTLINED_FUNCTION_13();
  v19 = v18 - v17;
  sub_1D98CB6B4(a1, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1D986B804(v14, &qword_1ECB48C60, &qword_1D9933468);
    v20 = sub_1D98CC86C();
    OUTLINED_FUNCTION_10_9(&type metadata for DataVaultError, v20);
    *v21 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1D98CC8C0(v14, v19);
    sub_1D98C6664(&v41);
    if (v42)
    {
      sub_1D986D53C(&v41, v43);
      v22 = v44;
      v23 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      if ((*(v23 + 8))(a2, a7 & 1, v22, v23))
      {
        type metadata accessor for SandboxExtension();
        v24 = sub_1D992AD44();
        OUTLINED_FUNCTION_6();
        v26 = v25;
        MEMORY[0x1EEE9AC00](*(v27 + 64));
        OUTLINED_FUNCTION_13();
        v30 = v29 - v28;
        sub_1D98C6448(v29 - v28);
        v31 = v46;
        v32 = sub_1D988E2FC(a3, a4, v39, v40, v30, 1);
        if (!v31)
        {
          v38 = v32;
          (*(v26 + 8))(v30, v24);
          sub_1D98876F0(v19);
          v19 = *(v38 + 2);

          __swift_destroy_boxed_opaque_existential_1(v43);
          return v19;
        }

        (*(v26 + 8))(v30, v24);
        sub_1D98876F0(v19);
      }

      else
      {
        v35 = sub_1D98CC86C();
        OUTLINED_FUNCTION_10_9(&type metadata for DataVaultError, v35);
        *v36 = 2;
        swift_willThrow();
        sub_1D98876F0(v19);
      }

      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      sub_1D986B804(&v41, &qword_1ECB48C08, &unk_1D9932EF0);
      v33 = sub_1D98CC86C();
      OUTLINED_FUNCTION_10_9(&type metadata for DataVaultError, v33);
      *v34 = 1;
      swift_willThrow();
      sub_1D98876F0(v19);
    }
  }

  return v19;
}

uint64_t sub_1D98CC100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C60, &qword_1D9933468);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v15 - v5;
  v7 = type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  sub_1D98CB6B4(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D986B804(v6, &qword_1ECB48C60, &qword_1D9933468);
    v12 = sub_1D98CC86C();
    OUTLINED_FUNCTION_10_9(&type metadata for DataVaultError, v12);
    *v13 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_1D98CC8C0(v6, v11);
    sub_1D98C6448(a2);
    return sub_1D98876F0(v11);
  }
}

id DataVault.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataVault.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataVault(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1D98CC4BC(uint64_t a1, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](0x80000001D993AC50);
    OUTLINED_FUNCTION_2_23();
    if (sub_1D990B078(sub_1D98CCC18, v3, a1))
    {
      return 1;
    }

    else
    {
      if (qword_1ED8BF440 != -1)
      {
        OUTLINED_FUNCTION_1_7(&qword_1ED8BF440);
      }

      if (byte_1ED8BFBD1 == 1)
      {
        MEMORY[0x1EEE9AC00](0x80000001D993ACE0);
        OUTLINED_FUNCTION_2_23();
        return sub_1D990B078(sub_1D98CCC38, v5, a1);
      }

      else
      {
        if (qword_1ECB480C0 != -1)
        {
          OUTLINED_FUNCTION_4_16(&qword_1ECB480C0);
        }

        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000036, 0x80000001D993AC70);
        MEMORY[0x1DA739C30](0x65736C6166, 0xE500000000000000);
        sub_1D986A454(0, 0xE000000000000000, 0xD000000000000059, 0x80000001D993AA40, 0xD000000000000023, 0x80000001D993ACB0);

        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_1D98CC6A8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1ED8BF440 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_1ED8BF440);
    }

    if (byte_1ED8BFBD1 == 1)
    {
      MEMORY[0x1EEE9AC00](0xD000000000000027);
      OUTLINED_FUNCTION_2_23();
      return sub_1D990B078(sub_1D98CCC38, v3, a1);
    }

    else
    {
      if (qword_1ECB480C0 != -1)
      {
        OUTLINED_FUNCTION_4_16(&qword_1ECB480C0);
      }

      sub_1D986A454(0xD000000000000034, 0x80000001D993AD10, 0xD000000000000059, 0x80000001D993AA40, 0xD000000000000023, 0x80000001D993ACB0);
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98CC7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487D0, &qword_1D99318D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D98CC86C()
{
  result = qword_1ECB48C68;
  if (!qword_1ECB48C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C68);
  }

  return result;
}

uint64_t sub_1D98CC8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DataVault(uint64_t a1)
{
  result = qword_1ED8BD8F8;
  if (!qword_1ED8BD8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataVaultError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98CCB34()
{
  result = qword_1ECB48C70;
  if (!qword_1ECB48C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C70);
  }

  return result;
}

uint64_t sub_1D98CCBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D992BF64() & 1;
  }
}

uint64_t static XPCMessageEnvelope.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECB48C80 = a1;
  return result;
}

uint64_t sub_1D98CCDBC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48C80;
  return result;
}

uint64_t sub_1D98CCE08(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48C80 = v1;
  return result;
}

uint64_t XPCMessageEnvelope.payload.getter()
{
  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload);
  sub_1D987BA38(v1, *(v0 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload + 8));
  return v1;
}

id XPCMessageEnvelope.init(eventTypeId:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_eventTypeId] = a1;
  v4 = &v3[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for XPCMessageEnvelope();
  return objc_msgSendSuper2(&v6, sel_init);
}

id XPCMessageEnvelope.init(coder:)(void *a1)
{
  v3 = OUTLINED_FUNCTION_0_36();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_eventTypeId] = v4;
  v5 = OUTLINED_FUNCTION_1_0();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_1D992BC24();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {

    sub_1D98A1A10(v12);
LABEL_9:
    type metadata accessor for XPCMessageEnvelope();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload] = v9[1];
  v9[0].receiver = v1;
  v9[0].super_class = type metadata accessor for XPCMessageEnvelope();
  v7 = [(objc_super *)v9 init];

  return v7;
}

void sub_1D98CD1A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_eventTypeId);
  v4 = OUTLINED_FUNCTION_0_36();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = sub_1D992AD74();
  v6 = OUTLINED_FUNCTION_1_0();
  [a1 encodeObject:v5 forKey:v6];
}

id XPCMessageEnvelope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCMessageEnvelope.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCMessageEnvelope();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DataClassificationTag.remoteRequest(requestIdentifier:optedInToSiriDataSharing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = &type metadata for RemoteRequestDataClassification;
  *(a3 + 32) = sub_1D98CD56C();
  *a3 = a2;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 1;
  v15 = type metadata accessor for ComponentId(0);
  result = (*(v7 + 32))(&v13[*(v15 + 20)], v9, v6);
  v13[v14] = 1;
  *(a3 + 40) = v11 | 0x2000000000000000;
  return result;
}

unint64_t sub_1D98CD56C()
{
  result = qword_1ECB48C98;
  if (!qword_1ECB48C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C98);
  }

  return result;
}

unint64_t sub_1D98CD5C0(uint64_t a1)
{
  result = sub_1D98CD5E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D98CD5E8()
{
  result = qword_1ECB48CA0;
  if (!qword_1ECB48CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteRequestDataClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
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

_BYTE *storeEnumTagSinglePayload for RemoteRequestDataClassification(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D98CD7C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 33))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 2) & 0x1E | (*(a1 + 32) >> 7)) ^ 0x1F;
      if (v2 >= 0x1E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D98CD810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1D98CD8A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1D98CD944()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1D98CD9C4()
{
  sub_1D98CD944();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98CDA34(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream) = 0;
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_internalTelemetry) = 0;
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask) = 0;
  v5 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_streamURL;
  v6 = sub_1D992AD44();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_internalTelemetry) = a2;
  return v2;
}

uint64_t sub_1D98CDAE4()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98CDBE0()
{

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D98CDC68()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  *(v1 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D98CDCF8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask;
  if (*(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask);
  }

  else
  {
    v4 = v0[3];
    v5 = sub_1D992B874();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v6 = sub_1D98CE624();
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v6;
    v7[4] = v1;
    swift_retain_n();
    v3 = sub_1D98C8F14(0, 0, v4, &unk_1D9933A10, v7);
  }

  v0[4] = v3;
  *(v1 + v2) = v3;

  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D98CDE6C;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1D98CDE6C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98CDF68()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D98CDFEC()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream;
  if (*(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream))
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
      v1 = *(v0 + 40);
    }

LABEL_4:
    OUTLINED_FUNCTION_4_1();
    sub_1D986A454(v5, v3 | 0x8000000000000000, 0xD000000000000075, v4 | 0x8000000000000000, v6, v7);
    goto LABEL_14;
  }

  type metadata accessor for PersistentStorage();
  v8 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_streamURL;
  if (sub_1D98F8F10(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_streamURL))
  {
    v9 = *(v0 + 40);
    v10 = sub_1D992AD44();
    v11 = *(v10 - 8);
    v12 = swift_task_alloc();
    (*(v11 + 16))(v12, v1 + v8, v10);
    v13 = *(v9 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_internalTelemetry);
    type metadata accessor for MessageStagingStream();
    swift_allocObject();
    v14 = v13;
    v15 = sub_1D98F61A0(v12, v13);

    *(v1 + v2) = v15;

    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    v1 = *(v0 + 40);
    goto LABEL_4;
  }

  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  if (*(sub_1D98DCE30() + 24) == 1)
  {

    sub_1D98CE3BC();
    OUTLINED_FUNCTION_4_1();
    sub_1D98DCEB4(v16, v17, 0xD000000000000075, 0x80000001D993AEB0, v18, v19);
  }

  v1 = *(v0 + 40);
LABEL_14:
  *(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask) = 0;

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_1D98CE3BC()
{
  sub_1D992BD64();

  sub_1D992AD44();
  sub_1D9887904();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_1D98CE464()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_streamURL;
  v2 = sub_1D992AD44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98CE4FC()
{
  sub_1D98CE464();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for MessageStagingProvider(uint64_t a1)
{
  result = qword_1ECB47CA8;
  if (!qword_1ECB47CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98CE57C(uint64_t a1)
{
  result = sub_1D992AD44();
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

unint64_t sub_1D98CE624()
{
  result = qword_1ECB47CB8;
  if (!qword_1ECB47CB8)
  {
    type metadata accessor for MessageStagingProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CB8);
  }

  return result;
}

uint64_t sub_1D98CE67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D988D0F4;

  return sub_1D98CDFCC(a1, v4, v5, v6);
}

uint64_t sub_1D98CE740(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48CA8, &qword_1D9933A90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9933A20;
  *(v4 + 56) = &type metadata for DataSharingOptOutDataCollectionPolicy;
  *(v4 + 64) = &off_1F551AAA8;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 96) = &type metadata for PersistentIdentifiersDataCollectionPolicy;
  *(v4 + 104) = &off_1F551B600;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  swift_unknownObjectRetain();

  return v4;
}

uint64_t sub_1D98CE7E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D98CE800, 0, 0);
}

uint64_t sub_1D98CE800()
{
  v1 = v0[3];
  v2 = v1[2];
  v0[4] = v2;
  if (v2)
  {
    v0[5] = 0;
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    OUTLINED_FUNCTION_1_23();
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_0_37(v3);

    return v5(v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D98CE930()
{

  return MEMORY[0x1EEE6DFA0](sub_1D98CEA2C, 0, 0);
}

uint64_t sub_1D98CEA2C()
{
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[5] = v1;
    __swift_project_boxed_opaque_existential_1((v0[3] + 40 * v1 + 32), *(v0[3] + 40 * v1 + 56));
    OUTLINED_FUNCTION_1_23();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_0_37(v4);

    return v6(v5);
  }
}

uint64_t sub_1D98CEB68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D988AED8;

  return sub_1D98CE7E0(a1, v4);
}

uint64_t sub_1D98CEC3C(uint64_t a1)
{
  sub_1D98CEE80();
  result = sub_1D992B964();
  if (!v1)
  {
    v3 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6999BA8], v3);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D98CEDF4()
{
  result = qword_1ECB47B90;
  if (!qword_1ECB47B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B90);
  }

  return result;
}

id sub_1D98CEE48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 readBOOL];
  *v2 = 0;
  return result;
}

unint64_t sub_1D98CEE80()
{
  result = qword_1ECB47B88;
  if (!qword_1ECB47B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B88);
  }

  return result;
}

unint64_t sub_1D98CEED4()
{
  result = qword_1ECB47B98;
  if (!qword_1ECB47B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B98);
  }

  return result;
}

uint64_t sub_1D98CEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D98CEF68, 0, 0);
}

uint64_t sub_1D98CEF68()
{
  OUTLINED_FUNCTION_18();
  v3 = v0[2];
  if (v3 >> 62)
  {
    v4 = sub_1D992BC94();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[4] = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v0[5] = 0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](0);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      OUTLINED_FUNCTION_14_9(v6);
      OUTLINED_FUNCTION_0_38();
      sub_1D98D0A94(v9, v10, v11, &unk_1D9933B7C);
      OUTLINED_FUNCTION_7_13();
      sub_1D992B814();
      v4 = OUTLINED_FUNCTION_3_14();
    }

    return MEMORY[0x1EEE6DFA0](v4, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_1D98CF070()
{
  OUTLINED_FUNCTION_18();
  sub_1D98CFDCC(*(v0 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1D98CF0D8, 0, 0);
}

uint64_t sub_1D98CF0D8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  if (v1 + 1 == v2)
  {
    OUTLINED_FUNCTION_25();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v7)
    {
      v8 = *(v6 + 8 * v5 + 32);
    }

    else
    {
      v8 = MEMORY[0x1DA73A2C0](v5);
    }

    OUTLINED_FUNCTION_14_9(v8);
    OUTLINED_FUNCTION_0_38();
    sub_1D98D0A94(v9, v10, v11, &unk_1D9933B7C);
    OUTLINED_FUNCTION_7_13();
    sub_1D992B814();
    v12 = OUTLINED_FUNCTION_3_14();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1D98CF1B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_16(v1);

  return sub_1D98CEF48(v2, v3, v4, v5, v6);
}

void *sub_1D98CF2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v6);
  result = MEMORY[0x1EEE9AC00](((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v14 - v9;
  v11 = *(v3 + OBJC_IVAR___SiriAnalyticsTailToOSLog_underlying);
  if (v11)
  {
    v12 = sub_1D992B874();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v11;

    sub_1D98C8F14(0, 0, v10, a3, v13);
  }

  return result;
}

uint64_t sub_1D98CF39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D98CF3BC, 0, 0);
}

uint64_t sub_1D98CF3BC()
{
  OUTLINED_FUNCTION_18();
  v3 = v0[2];
  if (v3 >> 62)
  {
    v4 = sub_1D992BC94();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[4] = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v0[5] = 0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](0);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      OUTLINED_FUNCTION_14_9(v6);
      OUTLINED_FUNCTION_0_38();
      sub_1D98D0A94(v9, v10, v11, &unk_1D9933B7C);
      OUTLINED_FUNCTION_7_13();
      sub_1D992B814();
      v4 = OUTLINED_FUNCTION_4_17();
    }

    return MEMORY[0x1EEE6DFA0](v4, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_1D98CF4C4()
{
  OUTLINED_FUNCTION_18();
  sub_1D98CFFE0(*(v0 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1D98CF52C, 0, 0);
}

uint64_t sub_1D98CF52C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  if (v1 + 1 == v2)
  {
    OUTLINED_FUNCTION_25();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v7)
    {
      v8 = *(v6 + 8 * v5 + 32);
    }

    else
    {
      v8 = MEMORY[0x1DA73A2C0](v5);
    }

    OUTLINED_FUNCTION_14_9(v8);
    OUTLINED_FUNCTION_0_38();
    sub_1D98D0A94(v9, v10, v11, &unk_1D9933B7C);
    OUTLINED_FUNCTION_7_13();
    sub_1D992B814();
    v12 = OUTLINED_FUNCTION_4_17();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98CF650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_16(v1);

  return sub_1D98CF39C(v2, v3, v4, v5, v6);
}

uint64_t sub_1D98CF720(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, void (*a6)(uint64_t))
{
  sub_1D986E35C(0, a4, a5);
  v8 = sub_1D992B7B4();
  v9 = a1;
  a6(v8);
}

id TailToOSLogShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TailToOSLogShim.init()(uint64_t a1)
{
  v2 = OBJC_IVAR___SiriAnalyticsTailToOSLog_underlying;
  type metadata accessor for TailToOSLog();
  swift_allocObject();
  sub_1D98CF8C8();
  *&v1[v2] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TailToOSLogShim();
  return objc_msgSendSuper2(&v5, sel_init);
}

id TailToOSLogShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TailToOSLogShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D98CF8C8()
{
  v1 = sub_1D992BA34();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = sub_1D992BB04();
  MEMORY[0x1EEE9AC00](*(*(v8 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v9 = sub_1D992B544();
  OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](*(v10 + 64));
  OUTLINED_FUNCTION_13();
  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  v11 = byte_1ED8BFBD1;
  if (qword_1ECB47D48 != -1)
  {
    swift_once();
  }

  v12 = qword_1ECB496B8;
  v13 = sub_1D992B614();
  v14 = [v12 BOOLForKey_];

  if ((v11 & v14) == 1)
  {
    sub_1D986E35C(0, &qword_1ECB47928, 0x1E69E9620);
    sub_1D992B524();
    sub_1D98D0A94(&qword_1ECB47930, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D18, &qword_1D9933BA8);
    sub_1D98D0A30();
    sub_1D992BC44();
    (*(v3 + 104))(v7, *MEMORY[0x1E69E8098], v1);
    *(v0 + 16) = sub_1D992BB14();
    if (qword_1ECB47AE8 != -1)
    {
      OUTLINED_FUNCTION_1_24(&qword_1ECB47AE8);
    }

    OUTLINED_FUNCTION_7_14();
    sub_1D986A454(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    if (qword_1ECB47AE8 != -1)
    {
      OUTLINED_FUNCTION_1_24(&qword_1ECB47AE8);
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000030, 0x80000001D993B060);
    if (v11)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v11)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x1DA739C30](v21, v22);

    MEMORY[0x1DA739C30](0xD00000000000001DLL, 0x80000001D993B0A0);
    if (v14)
    {
      v23 = 1702195828;
    }

    else
    {
      v23 = 0x65736C6166;
    }

    if (v14)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    MEMORY[0x1DA739C30](v23, v24);

    OUTLINED_FUNCTION_7_14();
    sub_1D986A454(v25, v26, v27, v28, v29, v30);

    type metadata accessor for TailToOSLog();
    swift_deallocPartialClassInstance();
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98CFDCC(void *a1)
{
  v2 = [a1 logicalTimestamp];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 nanoSecondsSinceBoot];
    v5 = [v3 clockIdentifier];
    v6 = sub_1D992AE84();
    v18[1] = v18;
    OUTLINED_FUNCTION_6();
    v8 = v7;
    v10 = v9[8];
    MEMORY[0x1EEE9AC00](v9);
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1D992AE64();

    v12 = [a1 messageUUID];
    MEMORY[0x1EEE9AC00](v13);
    sub_1D992AE64();

    v14 = [a1 underlyingMessage];
    sub_1D98D07B8(v4, v18 - v11, v18 - v11, v14);

    v15 = *(v8 + 8);
    v15(v18 - v11, v6);
    v15(v18 - v11, v6);
    OUTLINED_FUNCTION_7();
  }

  else
  {
    sub_1D98D0268([a1 underlyingMessage]);
    OUTLINED_FUNCTION_7();
  }
}

void sub_1D98CFFE0(void *a1)
{
  v1 = [a1 unwrap];
  if (v1)
  {
    v2 = v1;
    sub_1D98D0268(v1);
  }
}

void sub_1D98D003C()
{
  v0 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v22 - v8;
  sub_1D992B084();
  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    sub_1D987625C(v9);
    v10 = sub_1D992B054();
    if (v10)
    {
      v11 = v10;
      sub_1D98D0268(v10);

      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  (*(v2 + 32))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v0);
  v12 = sub_1D992B0B4();
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = sub_1D992B154();

  v15 = sub_1D992B0B4();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992B134();

  v19 = sub_1D992B054();
  if (!v19)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v20 = v19;
  sub_1D98D07B8(v14, v18, v5, v19);

  v21 = *(v2 + 8);
  v21(v18, v0);
  v21(v5, v0);
}

void sub_1D98D0268(void *a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_7_13();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 metadata];
    if (v5 && (v6 = v5, v7 = [v5 timestamp], v6, v7))
    {
      v42 = [v7 timestampInNanoseconds];

      v45 = v41;
      v46 = sub_1D992AE84();
      OUTLINED_FUNCTION_6();
      v44 = v8;
      v10 = v9[8];
      MEMORY[0x1EEE9AC00](v9);
      v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v11);
      v13 = *(v12 + 64);
      MEMORY[0x1EEE9AC00](((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = v41 - v14;
      v16 = [v3 metadata];
      if (!v16 || (v17 = v16, v18 = [v16 timestamp], v17, !v18) || (v19 = objc_msgSend(v18, sel_clockIdentifier), v18, !v19))
      {

        __swift_storeEnumTagSinglePayload(v15, 1, 1, v46);
        goto LABEL_11;
      }

      sub_1D992BA04();

      v20 = v46;
      if (__swift_getEnumTagSinglePayload(v15, 1, v46) == 1)
      {

LABEL_11:
        sub_1D987625C(v15);
        goto LABEL_12;
      }

      v26 = v15;
      v27 = *(v44 + 32);
      v27(v43, v26, v20);
      v41[1] = v41;
      MEMORY[0x1EEE9AC00](v41);
      v28 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v41);
      v29 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = [v3 metadata];
      if (!v30 || (v31 = v30, v32 = [v30 eventId], v31, !v32))
      {

        v34 = v46;
        (*(v44 + 8))(v43, v46);
        __swift_storeEnumTagSinglePayload(v29, 1, 1, v34);
        goto LABEL_27;
      }

      sub_1D992BA04();

      v33 = v46;
      if (__swift_getEnumTagSinglePayload(v29, 1, v46) == 1)
      {
        (*(v44 + 8))(v43, v33);

LABEL_27:
        sub_1D987625C(v29);
        goto LABEL_12;
      }

      v27(v28, v29, v33);
      v47 = &unk_1F552B1B8;
      v35 = swift_dynamicCastObjCProtocolConditional();
      if (v35)
      {
        v36 = [v35 innerEvent];
        if (v36)
        {
          v37 = v36;
          v38 = v43;
          sub_1D98D07B8(v42, v43, v28, v36);

          v39 = *(v44 + 8);
          v39(v28, v33);
          v39(v38, v33);
          goto LABEL_21;
        }
      }

      v40 = *(v44 + 8);
      v40(v28, v33);
      v40(v43, v33);
    }

    else
    {
    }
  }

LABEL_12:
  v21 = sub_1D98D09CC(a1);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 8200315;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  if (qword_1ECB47AE8 != -1)
  {
    OUTLINED_FUNCTION_1_24(&qword_1ECB47AE8);
  }

  swift_getObjectType();
  v48 = sub_1D992C104();
  v49 = v25;
  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  MEMORY[0x1DA739C30](v23, v24);

  sub_1D986A454(v48, v49, 0xD000000000000061, 0x80000001D993AFB0, 0x293A5F286C696174, 0xE800000000000000);

LABEL_21:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98D07B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = sub_1D98D09CC(a4);
  v6 = v5;
  if (qword_1ECB47AE8 != -1)
  {
    OUTLINED_FUNCTION_1_24(&qword_1ECB47AE8);
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 8200315;
  }

  sub_1D992BD64();
  v9 = sub_1D992BF34();
  v11 = v10;

  MEMORY[0x1DA739C30](15392, 0xE200000000000000);
  sub_1D992AE84();
  sub_1D98A19C4();
  v12 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v12);

  MEMORY[0x1DA739C30](540680254, 0xE400000000000000);
  swift_getObjectType();
  v13 = sub_1D992C104();
  MEMORY[0x1DA739C30](v13);

  MEMORY[0x1DA739C30](60, 0xE100000000000000);
  v14 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v14);

  MEMORY[0x1DA739C30](8254, 0xE200000000000000);
  MEMORY[0x1DA739C30](v8, v7);

  sub_1D986A454(v9, v11, 0xD000000000000061, 0x80000001D993AFB0, 0xD000000000000034, 0x80000001D993B020);
}

uint64_t sub_1D98D09CC(void *a1)
{
  v1 = [a1 formattedJsonBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D992B624();

  return v3;
}

unint64_t sub_1D98D0A30()
{
  result = qword_1ECB47998;
  if (!qword_1ECB47998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48D18, &qword_1D9933BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47998);
  }

  return result;
}

uint64_t sub_1D98D0A94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D98D0AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = 0xE000000000000000;
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a3 + 49);
  do
  {
    v6 = *(v5 - 17);
    v7 = *(v5 - 9);
    v8 = *(v5 - 1);
    v9 = *v5;

    sub_1D992BD64();

    strcpy(v17, "ALTER TABLE ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x1DA739C30](a1, a2);
    MEMORY[0x1DA739C30](0x4C4F432044444120, 0xEC000000204E4D55);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x4C554E20544F4E20;
    }

    if (v9)
    {
      v11 = 0xE000000000000000;
    }

    else
    {
      v11 = 0xE90000000000004CLL;
    }

    v16 = v6;

    MEMORY[0x1DA739C30](32, 0xE100000000000000);
    v12 = 0xE400000000000000;
    v13 = 1415071060;
    switch(v8)
    {
      case 1:
        v12 = 0xE700000000000000;
        v13 = 0x434952454D554ELL;
        break;
      case 2:
        v12 = 0xE700000000000000;
        v13 = 0x52454745544E49;
        break;
      case 3:
        v13 = 1279346002;
        break;
      case 4:
        v13 = 1112493122;
        break;
      default:
        break;
    }

    MEMORY[0x1DA739C30](v13, v12);

    MEMORY[0x1DA739C30](v10, v11);

    MEMORY[0x1DA739C30](v16, v7);

    MEMORY[0x1DA739C30](2619, 0xE200000000000000);
    MEMORY[0x1DA739C30](v17[0], v17[1]);

    v5 += 24;
    --v3;
  }

  while (v3);
  return v18;
}

uint64_t sub_1D98D0D10(uint64_t *a1, int a2)
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

uint64_t sub_1D98D0D50(uint64_t result, int a2, int a3)
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

id sub_1D98D0D9C()
{
  v0 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v1 = [v0 Ledger];
  swift_unknownObjectRelease();
  v2 = [v1 TaskStatus];
  swift_unknownObjectRelease();
  v3 = [v2 source];
  return v2;
}

uint64_t sub_1D98D0E54(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000018;
  v3 = "CT:SiriAnalytics-1\n";
  v4 = "CT:SiriAnalytics-1\n";
  v5 = a1;
  v6 = 0xD000000000000018;
  switch(v5)
  {
    case 1:
      v4 = "com.apple.siri.telemetry";
      break;
    case 2:
      v4 = "com.apple.siri.unordered";
      v6 = 0xD00000000000001DLL;
      break;
    case 3:
      v4 = "com.apple.siri.ordered.joined";
      v6 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "com.apple.siri.telemetry";
      break;
    case 2:
      v3 = "com.apple.siri.unordered";
      v2 = 0xD00000000000001DLL;
      break;
    case 3:
      v3 = "com.apple.siri.ordered.joined";
      v2 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D992BF64();
  }

  return v8 & 1;
}

BOOL sub_1D98D0F74(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

uint64_t sub_1D98D0FD4(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = *v2;
  v5 = *v2 <= a1 && *(v2 + 8) >= a1;
  v6 = v5;
  v5 = v4 >= a1;
  v7 = v4 <= a1;
  v8 = v5;
  if (*(v2 + 16) != 1)
  {
    v7 = v8;
  }

  if (*(v2 + 16))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void *sub_1D98D101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_1D992BB34();
  if (result)
  {
    v7 = result;
    sub_1D992B1A4();
    v8 = a5;
    v9 = sub_1D992BBD4();

    return (v9 & 1);
  }

  return result;
}

void *sub_1D98D108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1D992BB34();
  if (result)
  {
    v6 = result;
    sub_1D98E8704();
    v8 = v7;

    return (v8 & 1);
  }

  return result;
}

uint64_t sub_1D98D10D8()
{
  sub_1D992AE84();
  OUTLINED_FUNCTION_3_15();
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_2_24();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_5_17(v5, v11);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_1D987625C(v2);
    v1 = 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_4_18();
    v7(v6);
    sub_1D992AE54();
    v8 = OUTLINED_FUNCTION_6_18();
    v9(v8);
  }

  return v1 & 1;
}

uint64_t sub_1D98D1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  sub_1D992AE84();
  OUTLINED_FUNCTION_3_15();
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  OUTLINED_FUNCTION_2_24();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_5_17(v10, v16);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_1D987625C(v6);
    v7 = 0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_4_18();
    v12(v11);
    sub_1D98E8494();
    v13 = OUTLINED_FUNCTION_6_18();
    v14(v13);
  }

  return v7 & 1;
}

uint64_t sub_1D98D1338(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1D98D1950(v5, v22);
  if (v23)
  {
    if (v23 != 1)
    {
      sub_1D986D53C(v22, v19);
      v16 = v20;
      v17 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v15 = (*(v17 + 8))(a1, a2 & 1, a3, a4, v16, v17) ^ 1;
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v15 & 1;
    }

    v10 = *&v22[0];
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_1_25();
    v12 = sub_1D98D0F74(sub_1D98D1988, v11, v10);
  }

  else
  {
    v13 = *&v22[0];
    MEMORY[0x1EEE9AC00](0);
    OUTLINED_FUNCTION_1_25();
    v12 = sub_1D990B128(sub_1D98D19D0, v14, v13);
  }

  v15 = v12;

  return v15 & 1;
}

uint64_t sub_1D98D1494(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  return (*(v10 + 8))(a2, a3 & 1, a4, a5, v9, v10) & 1;
}

uint64_t sub_1D98D152C(int a1, int a2, uint64_t a3, id a4, uint64_t a5)
{
  v6 = [a4 getAnyEventType];

  return sub_1D98E8654(v6, a5);
}

uint64_t sub_1D98D1578(void *a1)
{
  v1 = a1;
  v2 = DUSchemaDUEvent.componentName.getter();

  return v2;
}

uint64_t DUSchemaDUEvent.componentName.getter()
{
  v1.super_class = MEMORY[0x1E69CEAC8];
  LODWORD(result) = objc_msgSendSuper2(&v1, sel_componentName);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

id DUSchemaDUEvent.getComponentId()()
{
  v4.super_class = MEMORY[0x1E69CEAC8];
  v1 = objc_msgSendSuper2(&v4, sel_getComponentId);
  if (!v1)
  {
    v2 = [v0 speechAudioRecord];
    v1 = [v2 interactionId];
  }

  return v1;
}

id sub_1D98D1678(void *a1)
{
  v1 = a1;
  v2 = DUSchemaDUEvent.getComponentId()();

  return v2;
}

uint64_t type metadata accessor for MessageOnClock(uint64_t a1)
{
  result = qword_1ECB48D20;
  if (!qword_1ECB48D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98D1730(uint64_t a1)
{
  result = sub_1D992AE84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimestampRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TimestampRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D98D1880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98D18BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D98D1908(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t static DataClassificationTag.searchRequest(requestIdentifier:optedInToSearchSharing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = &type metadata for SearchRequestDataClassification;
  *(a3 + 32) = sub_1D98D1B7C();
  *a3 = a2;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 1;
  v15 = type metadata accessor for ComponentId(0);
  result = (*(v7 + 32))(&v13[*(v15 + 20)], v9, v6);
  v13[v14] = 1;
  *(a3 + 40) = v11 | 0x2000000000000000;
  return result;
}

unint64_t sub_1D98D1B7C()
{
  result = qword_1ECB47B58;
  if (!qword_1ECB47B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B58);
  }

  return result;
}

uint64_t static DataClassificationTag.searchRequest(componentName:uuid:joined:optedInToSearchSharing:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = &type metadata for SearchRequestDataClassification;
  *(a5 + 32) = sub_1D98D1B7C();
  *a5 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(type metadata accessor for ComponentId(0) + 20);
  v16 = sub_1D992AE84();
  result = (*(*(v16 - 8) + 16))(&v13[v15], a2, v16);
  *v13 = a1;
  v13[v14] = a3;
  *(a5 + 40) = v11 | 0x2000000000000000;
  return result;
}

unint64_t sub_1D98D1CB0(uint64_t a1)
{
  result = sub_1D98D1CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D98D1CD8()
{
  result = qword_1ECB47B60;
  if (!qword_1ECB47B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRequestDataClassification(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D98D1E08()
{
  OUTLINED_FUNCTION_12_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  sub_1D988C450(v2, v1);
  v7 = sub_1D992B874();
  v8 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, v9, v7);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v1);
  }

  else
  {
    sub_1D992B864();
    OUTLINED_FUNCTION_17_7();
    (*(v11 + 8))(v1, v7);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = v12;
    sub_1D992B814();
    OUTLINED_FUNCTION_14_10();
    if (v4)
    {
LABEL_6:
      sub_1D992B6B4();
      OUTLINED_FUNCTION_0_0();
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      *(v14 + 24) = v0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
      OUTLINED_FUNCTION_18_6();
      if (v15)
      {
        OUTLINED_FUNCTION_10_10();
      }

      OUTLINED_FUNCTION_9_10(v15);
      OUTLINED_FUNCTION_21_4(v16, v17, v18);
      OUTLINED_FUNCTION_20_4();

      return v13;
    }
  }

  else
  {
    v13 = 0;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
  OUTLINED_FUNCTION_18_6();
  if (v20)
  {
    OUTLINED_FUNCTION_11_12();
  }

  return swift_task_create();
}

uint64_t sub_1D98D2028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  sub_1D988C450(a3, v5);
  v12 = sub_1D992B874();
  v13 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v5);
  }

  else
  {
    sub_1D992B864();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = v17;
    sub_1D992B814();
    OUTLINED_FUNCTION_14_10();
    if (a2)
    {
LABEL_6:
      sub_1D992B6B4();
      OUTLINED_FUNCTION_0_0();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v16 | v18)
      {
        OUTLINED_FUNCTION_10_10();
      }

      else
      {
        v20 = 0;
      }

      OUTLINED_FUNCTION_9_10(v20);
      swift_task_create();
      OUTLINED_FUNCTION_20_4();

      return v18;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_0();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v16 | v18)
  {
    OUTLINED_FUNCTION_11_12();
  }

  return swift_task_create();
}

uint64_t sub_1D98D2268()
{
  OUTLINED_FUNCTION_12_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  sub_1D988C450(v2, v1);
  v7 = sub_1D992B874();
  v8 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, v9, v7);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v1);
  }

  else
  {
    sub_1D992B864();
    OUTLINED_FUNCTION_17_7();
    (*(v11 + 8))(v1, v7);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = v12;
    sub_1D992B814();
    OUTLINED_FUNCTION_14_10();
    if (v4)
    {
LABEL_6:
      sub_1D992B6B4();
      OUTLINED_FUNCTION_0_0();
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      *(v14 + 24) = v0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D40, &qword_1D9933F28);
      OUTLINED_FUNCTION_18_6();
      if (v15)
      {
        OUTLINED_FUNCTION_10_10();
      }

      OUTLINED_FUNCTION_9_10(v15);
      OUTLINED_FUNCTION_21_4(v16, v17, v18);
      OUTLINED_FUNCTION_20_4();

      return v13;
    }
  }

  else
  {
    v13 = 0;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D40, &qword_1D9933F28);
  OUTLINED_FUNCTION_18_6();
  if (v20)
  {
    OUTLINED_FUNCTION_11_12();
  }

  return swift_task_create();
}

id SiriAnalyticsFirstUnlockObserver.__allocating_init(queue:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_20_4();
  return SiriAnalyticsFirstUnlockObserver.init(queue:)(v2);
}

id SiriAnalyticsFirstUnlockObserver.init(queue:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver_queue] = a1;
  type metadata accessor for FirstUnlockObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver_wrappedActor] = sub_1D98AF0C0(a1);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriAnalyticsFirstUnlockObserver();
  v3 = a1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D98D2590(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  sub_1D992B874();
  v7 = OUTLINED_FUNCTION_10();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = a1;
  v11[6] = a2;

  sub_1D98D2028(0, 0, v2, &unk_1D9933EC0, v11);

  return sub_1D988C380(v2);
}

uint64_t sub_1D98D26A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_1D992B514();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = sub_1D992B544();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98D27C4, 0, 0);
}

uint64_t sub_1D98D27C4()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v0[22] = *(Strong + OBJC_IVAR____TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver_wrappedActor);

    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_1D98D28D0;

    return sub_1D98AF8E4();
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v4();
  }
}

uint64_t sub_1D98D28D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98D29D8, 0, 0);
}

uint64_t sub_1D98D29D8()
{
  v1 = v0[20];
  v2 = v0[19];
  v12 = v0[21];
  v13 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  OUTLINED_FUNCTION_0_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v0[6] = sub_1D98D32F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D98F9B34;
  v0[5] = &block_descriptor_10;
  v9 = _Block_copy(v0 + 2);

  sub_1D992B534();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1D98D3338();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
  sub_1D98C2AEC();
  sub_1D992BC44();
  MEMORY[0x1DA739FA0](0, v1, v4, v9);
  _Block_release(v9);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v1, v13);

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_1D98D2BC4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_13(v8);
  *v9 = v10;
  v9[1] = sub_1D989EB64;

  return sub_1D98D26A4(a1, v3, v4, v5, v6, v7);
}

id SiriAnalyticsFirstUnlockObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriAnalyticsFirstUnlockObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAnalyticsFirstUnlockObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98D2E64()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 16) = v1;
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1D98D2F54;

  return v5(v0 + 32);
}

uint64_t sub_1D98D2F54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1D98D3054(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D98D2F54;

  return v5(v2 + 32);
}

uint64_t sub_1D98D3148()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98D31D8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98D3268()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D98D3338()
{
  result = qword_1ED8BF418;
  if (!qword_1ED8BF418)
  {
    sub_1D992B514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BF418);
  }

  return result;
}

uint64_t RuntimeService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t RuntimeService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98D33D8()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_10_11();
  v1[20] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D98D34C0;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  OUTLINED_FUNCTION_5_18(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_4_19();
  [v4 fetchKillSwitchEnabledWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D98D34C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D98D3624;
  }

  else
  {
    v5 = sub_1D98D35C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98D35C0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D98D3624()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 160);
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_1ECB480B0);
  }

  v2 = *(v0 + 168);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  OUTLINED_FUNCTION_2_25();
  sub_1D98DCEB4(v3, v4, v5, v6, 0xD000000000000011, v7);

  v8 = OUTLINED_FUNCTION_8_11();

  return v9(v8);
}

uint64_t sub_1D98D3734(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1D98F1C38();
  }

  else
  {
    v8 = *v5;

    return sub_1D98EF8BC(v8, v4);
  }
}

uint64_t sub_1D98D37D0(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 176) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98D37E8()
{
  v1 = *(v0 + 176);
  v2 = sub_1D988CFCC();
  *(v0 + 160) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D98D3920;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D98D3734;
  *(v0 + 104) = &block_descriptor_3_0;
  *(v0 + 112) = v3;
  [v2 setKillSwitchEnabled:v1 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D98D3920()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D98D3A20;
  }

  else
  {
    v5 = sub_1D98D431C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98D3A20()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 160);
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_1ECB480B0);
  }

  v2 = *(v0 + 168);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  OUTLINED_FUNCTION_2_25();
  sub_1D98DCEB4(v3, v4, v5, v6, 0xD000000000000015, v7);

  v8 = OUTLINED_FUNCTION_8_11();

  return v9(v8);
}

uint64_t sub_1D98D3B44()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_10_11();
  v1[20] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D98D3C2C;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  OUTLINED_FUNCTION_5_18(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_4_19();
  [v4 purgeStagedMessagesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D98D3C2C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D98D3D2C;
  }

  else
  {
    v5 = sub_1D98D431C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}