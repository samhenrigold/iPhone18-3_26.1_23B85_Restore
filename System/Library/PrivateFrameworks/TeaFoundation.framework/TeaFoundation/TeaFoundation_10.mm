uint64_t sub_1BF0C2C98()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_9();
  return v1();
}

uint64_t sub_1BF0C2CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  sub_1BF0C4AFC(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6[4] = swift_task_alloc();
  v8 = sub_1BF17923C();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 16) + **(a5 + 16));
  v10 = swift_task_alloc();
  v6[9] = v10;
  *v10 = v6;
  v10[1] = sub_1BF0C2EB0;

  return v12(ObjectType, a5);
}

uint64_t sub_1BF0C2EB0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

id sub_1BF0C2F98()
{
  v31 = v0;
  v1 = v0[10];
  v2 = v0[6];
  result = sub_1BEFE90AC(v1);
  v4 = result;
  v5 = 0;
  v28 = v1 & 0xFFFFFFFFFFFFFF8;
  v29 = v1 & 0xC000000000000001;
  v26 = v2;
  v27 = v1 + 32;
  v6 = (v2 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if (v29)
    {
      result = MEMORY[0x1BFB53020](v5, v0[10]);
    }

    else
    {
      if (v5 >= *(v28 + 16))
      {
        goto LABEL_20;
      }

      result = *(v27 + 8 * v5);
    }

    v8 = result;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v30[0] = result;
    sub_1BF0C31F8(v30, v11, v10);

    if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
    {
      OUTLINED_FUNCTION_7_15();
      result = sub_1BF0C4848(v12, &qword_1ED8EFC20, v13, MEMORY[0x1E69E6720]);
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[5];
      v17 = *v6;
      (*v6)(v14, v0[4], v16);
      v17(v15, v14, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6444(0, *(v7 + 16) + 1, 1, v7);
        v7 = v22;
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BF0A6444(v18 > 1, v19 + 1, 1, v7);
        v7 = v23;
      }

      v20 = v0[7];
      v21 = v0[5];
      *(v7 + 16) = v19 + 1;
      result = (v17)(v7 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19, v20, v21);
    }

    ++v5;
  }

  v24 = v0[2];

  *v24 = v7;

  OUTLINED_FUNCTION_9();

  return v25();
}

uint64_t sub_1BF0C31F8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2;
  v7 = sub_1BF1797DC();
  v8 = sub_1BF17AC9C();

  v32 = a3;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315394;
    v12 = *&v5[OBJC_IVAR___TFDiagnosticData_filename];
    v11 = *&v5[OBJC_IVAR___TFDiagnosticData_filename + 8];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v13 = sub_1BF01A7AC(v12, v11, &v33);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_1BF1791CC();
    v16 = sub_1BF01A7AC(v14, v15, &v33);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1BEFE0000, v7, v8, "Writing diagnostic data with filename=%s to diagnostic cache dir=%s", v9, 0x16u);
    swift_arrayDestroy();
    v17 = v10;
    a3 = v32;
    MEMORY[0x1BFB547B0](v17, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  v18 = &v5[OBJC_IVAR___TFDiagnosticData_filename];
  sub_1BF0C3558(*&v5[OBJC_IVAR___TFDiagnosticData_data], *&v5[OBJC_IVAR___TFDiagnosticData_data + 8], *&v5[OBJC_IVAR___TFDiagnosticData_filename], a3);
  if (v31)
  {
    v19 = v5;
    v20 = v6;
    v21 = sub_1BF1797DC();
    v22 = sub_1BF17ACBC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1BF01A7AC(*v18, v18[1], &v33);
      *(v23 + 12) = 2080;
      v25 = 1;
      v26 = sub_1BF1791CC();
      v28 = sub_1BF01A7AC(v26, v27, &v33);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1BEFE0000, v21, v22, "Failed to write diagnostic data with filename=%s to diagnostic cache dir=%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v24, -1, -1);
      MEMORY[0x1BFB547B0](v23, -1, -1);
    }

    else
    {

      v25 = 1;
    }

    a3 = v32;
  }

  else
  {
    v25 = 0;
  }

  v29 = sub_1BF17923C();
  return __swift_storeEnumTagSinglePayload(a3, v25, 1, v29);
}

uint64_t sub_1BF0C3558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v20[1] = a3;
  v20[2] = a1;
  v20[3] = a2;
  v6 = sub_1BF17912C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF0C4AFC(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v20 - v13;
  v15 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticDumpDir;
  v16 = sub_1BF17923C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14, v20[0] + v15, v16);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  (*(v7 + 104))(v10, *MEMORY[0x1E6968F70], v6);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17920C();
  v18 = v20[5];
  result = sub_1BF17938C();
  if (v18)
  {
    return (*(v17 + 8))(a5, v16);
  }

  return result;
}

uint64_t sub_1BF0C3788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a1;
  v6[8] = a6;
  v8 = sub_1BF17923C();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 24) + **(a5 + 24));
  v10 = swift_task_alloc();
  v6[12] = v10;
  *v10 = v6;
  v10[1] = sub_1BF0C390C;

  return v12(ObjectType, a5);
}

uint64_t sub_1BF0C390C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF0C39F4()
{
  OUTLINED_FUNCTION_13_2();
  sub_1BEFE6A78(v0[8] + OBJC_IVAR___TFDiagnosticFileCollector_diagnosticAttachmentResolver, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1BF0C3B34;
  v4 = v0[13];

  return v6(v4, v1, v2);
}

uint64_t sub_1BF0C3B34()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1BF0C3C34()
{
  v1 = 0;
  v2 = v0[15];
  v3 = v0[10];
  v4 = *(v2 + 16);
  v5 = v2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF17915C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0A6444(0, *(v6 + 16) + 1, 1, v6);
      v6 = v11;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1BF0A6444(v7 > 1, v8 + 1, 1, v6);
      v6 = v12;
    }

    v9 = v0[11];
    v10 = v0[9];
    *(v6 + 16) = v8 + 1;
    (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v9, v10);
    v5 += 16;
    ++v1;
  }

  v13 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v13 = v6;

  OUTLINED_FUNCTION_9();

  v14();
}

id DiagnosticFileCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticFileCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF0C3F78(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1BF0C403C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BEFF5DB0(result, 1, sub_1BF0A6888);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  sub_1BF0C4B60();
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BEFFA1B4((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BF0C4170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(type metadata accessor for ManualClock.WakeUp(0) - 8);
  v11 = *(v10 + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14 = v13 + v11 * a1;
  swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v14 + v11 * a3;
  if (v15)
  {
    v17 = *(v9 + 16);
    if (!__OFSUB__(v17, a2))
    {
      sub_1BF0A6F14(v13 + v11 * a2, v17 - a2, v14 + v11 * a3);
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v15);
      v20 = v18 + v15;
      if (!v19)
      {
        *(v9 + 16) = v20;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v11 * a3 < 1)
  {
LABEL_14:
    sub_1BF0C4848(a4, &qword_1EBDCBC40, type metadata accessor for ManualClock.WakeUp, MEMORY[0x1E69E6BC0]);
    return;
  }

  v22 = 0;
  while ((v22 & 1) == 0)
  {
    sub_1BF0C4520(a4, v14);
    v14 += v11;
    v22 = 1;
    if (v14 >= v16)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1BF0C42EC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  result = sub_1BF0C3F78(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v8 = *(v5 + 16);
LABEL_4:
    swift_unknownObjectRelease();
    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (*(v5 + i) != a2)
      {
        if (v9 != v8)
        {
          if (v8 >= v11)
          {
            goto LABEL_19;
          }

          v14 = *(v5 + i);
          v13 = *(v5 + 32 + 16 * v8);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BF107140(v5);
            v5 = v12;
          }

          *(v5 + 16 * v8 + 32) = v14;
          result = swift_unknownObjectRelease();
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_20;
          }

          *(v5 + i) = v13;
          result = swift_unknownObjectRelease();
          *a1 = v5;
        }

        ++v8;
      }

      ++v9;
    }

    goto LABEL_4;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BF0C4444()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4(v7);
  *v8 = v9;
  v8[1] = sub_1BF035DD0;

  return sub_1BF0C1FA8(v4, v2, v6, v5);
}

uint64_t sub_1BF0C4520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualClock.WakeUp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0C4584(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1BF0C4678;

  return v5(v2 + 16);
}

uint64_t sub_1BF0C4678()
{
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1BF0C479C()
{
  OUTLINED_FUNCTION_13_2();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_1BF035DD0;
  v7 = OUTLINED_FUNCTION_4_14();

  return sub_1BF0C2A88(v7, v8, v1, v3, v2);
}

uint64_t sub_1BF0C4848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1BF0C4AFC(0, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0C489C()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t sub_1BF0C4930()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_15_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v1[1] = sub_1BF035DD4;
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_17_4();

  return sub_1BF0C2CC4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BF0C49CC()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t sub_1BF0C4A60()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_15_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v1[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_17_4();

  return sub_1BF0C3788(v3, v4, v5, v6, v7, v8);
}

void sub_1BF0C4AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BF0C4B60()
{
  result = qword_1EBDCBA00;
  if (!qword_1EBDCBA00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCBA00);
  }

  return result;
}

TeaFoundation::CopyOnWriteStoragePropertyKeyword_optional __swiftcall CopyOnWriteStoragePropertyKeyword.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF17B57C();

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

uint64_t CopyOnWriteStoragePropertyKeyword.rawValue.getter()
{
  if (*v0)
  {
    return 7496054;
  }

  else
  {
    return 7628140;
  }
}

uint64_t sub_1BF0C4C70@<X0>(uint64_t *a1@<X8>)
{
  result = CopyOnWriteStoragePropertyKeyword.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t _COWBox._buffer.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _COWBox.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  sub_1BF17B2EC();
  v4 = sub_1BF17B2DC();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t _COWBox.wrappedValue.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  return (*(*(a2 - 8) + 16))(a3, &a1[v6], a2);
}

uint64_t sub_1BF0C4EE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = _COWBox.wrappedValue.read(v8, *a1);
  (*(*(v5 - 8) + 16))(a4);
  return (v6)(v8, 0);
}

uint64_t sub_1BF0C500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  type metadata accessor for _COWBox(0, v5, a3, a4);
  v6 = _COWBox.wrappedValue.modify(v9);
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(v9, 0);
}

uint64_t (*_COWBox.wrappedValue.modify(uint64_t a1))(uint64_t a1)
{
  _COWBox._makeUniqueBufferIfNeeded()();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

Swift::Void __swiftcall _COWBox._makeUniqueBufferIfNeeded()()
{
  v1 = v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF17B2EC();
    v2 = sub_1BF17B2DC();

    *v1 = v2;
  }
}

uint64_t _COWBox.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  _COWBox._makeUniqueBufferIfNeeded()();
  v5 = *v2;
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  (*(v8 + 24))(&v5[v6], a1, v7);
  swift_endAccess();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1BF0C52EC@<X0>(void *a2@<X8>)
{
  v3 = _COWBox.projectedValue.read();
  v5 = v4;

  result = (v3)(&v7, 0);
  *a2 = v5;
  return result;
}

uint64_t sub_1BF0C5370(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;

  type metadata accessor for _COWBox(0, v4, v6, v7);
  v8 = _COWBox.projectedValue.modify();
  *v9 = v5;

  return (v8)(&v11, 0);
}

uint64_t _COWBox.projectedValue.setter(uint64_t a1)
{

  _COWBox._makeUniqueBufferIfNeeded()();

  *v1 = a1;
  return result;
}

uint64_t sub_1BF0C5488@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E6B68];
  v7 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  return (*(*(*(v5 + *v6) - 8) + 16))(a3, &a2[v7]);
}

uint64_t static _COWBox<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a4;
  OUTLINED_FUNCTION_0_37();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v24 - v15;
  v18 = MEMORY[0x1E69E6B68];
  v19 = *(*v17 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v20 = *(v8 + 16);
  v20(v16, a1 + v19, a3);
  v21 = *(*a2 + *v18 + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v20(v12, &a2[v21], a3);
  LOBYTE(v20) = sub_1BF17A05C();
  v22 = *(v8 + 8);
  v22(v12, a3);
  v22(v16, a3);
  return v20 & 1;
}

uint64_t _COWBox<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  (*(v7 + 16))(v12, a2 + v14, a3);
  sub_1BF179F2C();
  return (*(v7 + 8))(v12, a3);
}

uint64_t _COWBox<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF17BB6C();
  _COWBox<>.hash(into:)(v7, a1, a2, a3);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0C5944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1BF17BB6C();
  _COWBox<>.hash(into:)(v7, *v3, *(a2 + 16), v5);
  return sub_1BF17BB9C();
}

uint64_t _COWBox<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_37();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v15 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  (*(v8 + 16))(v13, a2 + v15, a3);
  sub_1BF179EDC();
  return (*(v8 + 8))(v13, a3);
}

uint64_t _COWBox<>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  sub_1BEFE6A78(v9, v11);
  sub_1BF17A8BC();
  if (!v3)
  {
    v4 = _COWBox.init(wrappedValue:)(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

unint64_t sub_1BF0C5BB8()
{
  result = qword_1EBDCBC48[0];
  if (!qword_1EBDCBC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBC48);
  }

  return result;
}

uint64_t sub_1BF0C5C54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = _COWBox<>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CopyOnWriteStoragePropertyKeyword(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF0C5D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF0C5DE8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1, a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return Atomic.wrappedValue.setter(v3);
}

uint64_t XPCBlock.name.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t XPCBlock.init(_:arguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  result = a3();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = result;
  return result;
}

uint64_t sub_1BF0C5F54(uint64_t a1, int a2)
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

uint64_t sub_1BF0C5F94(uint64_t result, int a2, int a3)
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

double ISO8601Duration.timeInterval.getter()
{
  v0 = sub_1BF17965C();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_6_18();
  sub_1BF0C6DB4(0, v8, v9);
  OUTLINED_FUNCTION_68(v10);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  v15 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v32 - v24;
  sub_1BF17946C();
  sub_1BF17960C();
  sub_1BF17961C();
  (*(v2 + 8))(v7, v0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    (*(v17 + 8))(v25, v15);
    OUTLINED_FUNCTION_6_18();
    sub_1BF0C6B88(v14, v26, v27);
    return 0.0;
  }

  else
  {
    (*(v17 + 32))(v21, v14, v15);
    sub_1BF1793DC();
    v28 = v29;
    v30 = *(v17 + 8);
    v30(v21, v15);
    v30(v25, v15);
  }

  return v28;
}

uint64_t ISO8601Duration.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BF17907C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t ISO8601Duration.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_38();
  sub_1BF0C6DB4(0, v6, v7);
  OUTLINED_FUNCTION_68(v8);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = sub_1BF17907C();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  v20 = (v19 - v18);
  v21 = type metadata accessor for ISO8601Duration(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  if (a2)
  {
    sub_1BF0C651C(a1, a2);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      v30 = *(v15 + 32);
      v30(v20, v12, v13);
      v30(v26, v20, v13);
      sub_1BF0C6BDC(v26, a3);
      v29 = 0;
      return __swift_storeEnumTagSinglePayload(a3, v29, 1, v21);
    }

    OUTLINED_FUNCTION_0_38();
    sub_1BF0C6B88(v12, v27, v28);
  }

  v29 = 1;
  return __swift_storeEnumTagSinglePayload(a3, v29, 1, v21);
}

uint64_t sub_1BF0C6B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF0C6DB4(0, a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0C6BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO8601Duration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO8601Duration.init(hours:minutes:seconds:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_15(a1, &qword_1ED8ECA28);
  OUTLINED_FUNCTION_68(v2);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_7_16(v5, &qword_1EBDCAED8);
  OUTLINED_FUNCTION_68(v6);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  v11 = sub_1BF17965C();
  OUTLINED_FUNCTION_18_5(v10, v12, v13, v11);
  v14 = sub_1BF17969C();
  OUTLINED_FUNCTION_18_5(v1, v15, v16, v14);
  return OUTLINED_FUNCTION_14_11(v10, v1);
}

void sub_1BF0C6DB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL ISO8601Duration.isValid(startFrom:calendar:)(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1BF0C6DB4(0, &qword_1ED8EF860, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_68(v3);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_12_12();
  sub_1BF17961C();
  v6 = sub_1BF1794AC();
  v7 = __swift_getEnumTagSinglePayload(v1, 1, v6) != 1;
  sub_1BF0C6B88(v1, &qword_1ED8EF860, v2);
  return v7;
}

uint64_t ISO8601Duration.hash(into:)(uint64_t a1)
{
  sub_1BF17907C();
  OUTLINED_FUNCTION_5_13();
  sub_1BEFFCB0C(v1, v2, MEMORY[0x1E6968288]);

  return sub_1BF179F2C();
}

uint64_t ISO8601Duration.hashValue.getter()
{
  sub_1BF17BB6C();
  sub_1BF17907C();
  OUTLINED_FUNCTION_5_13();
  sub_1BEFFCB0C(v0, v1, MEMORY[0x1E6968288]);
  sub_1BF179F2C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0C6FDC(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF17907C();
  sub_1BEFFCB0C(&qword_1EBDCBCD0, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1BF179F2C();
  return sub_1BF17BB9C();
}

uint64_t ISO8601Duration.description.getter()
{
  MEMORY[0x1BFB51FF0](80, 0xE100000000000000);
  sub_1BF178FEC();
  if ((v0 & 1) == 0)
  {
    sub_1BF17B6FC();
    OUTLINED_FUNCTION_15_8();

    MEMORY[0x1BFB51FF0](89, 0xE100000000000000);
  }

  sub_1BF17900C();
  if ((v1 & 1) == 0)
  {
    sub_1BF17B6FC();
    OUTLINED_FUNCTION_15_8();

    MEMORY[0x1BFB51FF0](77, 0xE100000000000000);
  }

  sub_1BF178FAC();
  if ((v2 & 1) == 0)
  {
    sub_1BF17B6FC();
    OUTLINED_FUNCTION_15_8();

    MEMORY[0x1BFB51FF0](68, 0xE100000000000000);
  }

  sub_1BF178FCC();
  if ((v3 & 1) == 0 || (sub_1BF17902C(), (v4 & 1) == 0) || (sub_1BF17904C(), (v5 & 1) == 0))
  {
    MEMORY[0x1BFB51FF0](84, 0xE100000000000000);
    sub_1BF178FCC();
    if ((v6 & 1) == 0)
    {
      sub_1BF17B6FC();
      OUTLINED_FUNCTION_15_8();

      MEMORY[0x1BFB51FF0](72, 0xE100000000000000);
    }

    sub_1BF17902C();
    if ((v7 & 1) == 0)
    {
      sub_1BF17B6FC();
      OUTLINED_FUNCTION_15_8();

      MEMORY[0x1BFB51FF0](77, 0xE100000000000000);
    }

    sub_1BF17904C();
    if ((v8 & 1) == 0)
    {
      v9 = sub_1BF17B6FC();
      MEMORY[0x1BFB52000](v9);

      MEMORY[0x1BFB51FF0](83, 0xE100000000000000);
    }
  }

  if (sub_1BF17A1BC() == 1)
  {
    v10 = sub_1BF17B6FC();
    MEMORY[0x1BFB52000](v10);

    MEMORY[0x1BFB51FF0](68, 0xE100000000000000);
  }

  return 0;
}

uint64_t ISO8601Duration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  OUTLINED_FUNCTION_0_38();
  sub_1BF0C6DB4(0, v5, v6);
  OUTLINED_FUNCTION_68(v7);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_12_12();
  v10 = sub_1BF17907C();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_16_6();
  sub_1BF17BBBC();
  if (!v2)
  {
    v26 = v12;
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    OUTLINED_FUNCTION_16_6();
    v19 = sub_1BF17B89C();
    v21 = v20;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0C651C(v19, v21);
    if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
    {
      OUTLINED_FUNCTION_0_38();
      sub_1BF0C6B88(v3, v22, v23);
      sub_1BF17B1EC();

      MEMORY[0x1BFB52000](v19, v21);

      MEMORY[0x1BFB52000](0xD000000000000025, 0x80000001BF18D980);
      sub_1BF17B29C();
      swift_allocError();
      sub_1BF17B26C();

      swift_willThrow();
    }

    else
    {

      v24 = *(v26 + 32);
      v24(v17, v3, v10);
      v24(v18, v17, v10);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ISO8601Duration.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  ISO8601Duration.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF17B91C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

id sub_1BF0C76A8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BF17A07C();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_1BF0C771C()
{
  v0 = sub_1BF17AE0C();
  if (!v1)
  {
    return 8;
  }

  return sub_1BF0C7754(v0, v1);
}

uint64_t sub_1BF0C7754(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 80 && a2 == 0xE100000000000000;
  if (v3 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 89 && a2 == 0xE100000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 77 && a2 == 0xE100000000000000;
      if (v7 || (sub_1BF17B86C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 87 && a2 == 0xE100000000000000;
        if (v8 || (sub_1BF17B86C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 68 && a2 == 0xE100000000000000;
          if (v9 || (sub_1BF17B86C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 84 && a2 == 0xE100000000000000;
            if (v10 || (sub_1BF17B86C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 72 && a2 == 0xE100000000000000;
              if (v11 || (sub_1BF17B86C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 83 && a2 == 0xE100000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BF17B86C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BF0C7980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF0C7754(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BF0C79B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF0C795C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall ISO8601Duration.formatted()()
{
  if (qword_1EBDCAEF8 != -1)
  {
    OUTLINED_FUNCTION_9_15(&qword_1EBDCAEF8);
  }

  v0 = off_1EBDCAF00;
  os_unfair_lock_lock(off_1EBDCAF00 + 6);
  v1 = *(v0 + 2);
  if (*(v1 + 16) && (v2 = sub_1BF0820AC(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v5 setUnitsStyle_];
    [v5 setZeroFormattingBehavior_];
    [v5 setAllowedUnits_];
    v4 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v0 + 2);
    sub_1BF082BE0();
    *(v0 + 2) = v14;
  }

  os_unfair_lock_unlock(v0 + 6);
  v6 = sub_1BF178F8C();
  v7 = [v4 stringFromDateComponents_];

  if (v7)
  {
    v8 = sub_1BF17A0AC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = v8;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

Swift::String_optional __swiftcall ISO8601Duration.formatted(unitsStyle:)(NSDateComponentsFormatterUnitsStyle unitsStyle)
{
  if (qword_1EBDCAEF8 != -1)
  {
    OUTLINED_FUNCTION_9_15(&qword_1EBDCAEF8);
  }

  v2 = off_1EBDCAF00;
  os_unfair_lock_lock(off_1EBDCAF00 + 6);
  v3 = *(v2 + 2);
  if (*(v3 + 16) && (v4 = sub_1BF0820AC(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v7 setUnitsStyle_];
    [v7 setZeroFormattingBehavior_];
    [v7 setAllowedUnits_];
    v6 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 2);
    sub_1BF082BE0();
    *(v2 + 2) = v16;
  }

  os_unfair_lock_unlock(v2 + 6);
  v8 = sub_1BF178F8C();
  v9 = [v6 stringFromDateComponents_];

  if (v9)
  {
    v10 = sub_1BF17A0AC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = v10;
  v14 = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t ISO8601Duration.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ISO8601Duration.timeInterval.getter();
  v7 = sub_1BF17BC9C();

  return MEMORY[0x1EEDC6E68](a1, v7, v6, a2, a3);
}

uint64_t sub_1BF0C7D6C()
{
  sub_1BF0C7DD4(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  off_1EBDCAF00 = result;
  return result;
}

void sub_1BF0C7DD4(uint64_t a1)
{
  if (!qword_1EBDCA8D0)
  {
    sub_1BF0C7E3C(255);
    type metadata accessor for os_unfair_lock_s(255, v1, v2, v3);
    v4 = sub_1BF17B2EC();
    if (!v5)
    {
      atomic_store(v4, &qword_1EBDCA8D0);
    }
  }
}

void sub_1BF0C7E3C(uint64_t a1)
{
  if (!qword_1EBDCA948)
  {
    type metadata accessor for UnitsStyle();
    sub_1BEFF9AF8(255, &unk_1EBDCA918, 0x1E696AB70);
    sub_1BEFFCB0C(&qword_1EBDCA910, type metadata accessor for UnitsStyle, &unk_1BF17DE9C);
    v1 = sub_1BF179E9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCA948);
    }
  }
}

uint64_t getEnumTagSinglePayload for DateComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DateComponent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF0C8060()
{
  result = qword_1EBDCAD28;
  if (!qword_1EBDCAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAD28);
  }

  return result;
}

uint64_t DynamicLocale.deinit()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_currentLocale;
  sub_1BF1795CC();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DynamicLocale.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_currentLocale;
  sub_1BF1795CC();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1BF0C8248(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1BF1795CC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_5_14();
  v9 = (*(v6 + 16))(v2, v1 + OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_currentLocale, v4);
  LOBYTE(a1) = a1(v9);
  (*(v6 + 8))(v2, v4);
  return a1 & 1;
}

uint64_t sub_1BF0C8344()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0C8384()
{
  sub_1BEFE6EA8(0, &qword_1ED8EE990, MEMORY[0x1E69E7740]);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0C83E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF042FE0(0, a2, a3);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for DynamicLocale(uint64_t a1)
{
  result = qword_1EBDCBCE8;
  if (!qword_1EBDCBCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0C8498(uint64_t a1)
{
  result = sub_1BF1795CC();
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

id static Capabilities.hasExtendedColorDisplay()()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    return hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Capabilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Capabilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Capabilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Capabilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Capabilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF0C86C0()
{
  v0 = sub_1BF1795DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF17965C();
  __swift_allocate_value_buffer(v5, qword_1ED8EBA20);
  __swift_project_value_buffer(v5, qword_1ED8EBA20);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1BF1795EC();
  return (*(v1 + 8))(v4, v0);
}

void sub_1BF0C87E0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECA78 = v2;
  unk_1ED8ECA80 = v4;
}

void sub_1BF0C88B0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB00 = v2;
  unk_1ED8ECB08 = v4;
}

void sub_1BF0C8980()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECA98 = v2;
  unk_1ED8ECAA0 = v4;
}

void sub_1BF0C8A50()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB20 = v2;
  unk_1ED8ECB28 = v4;
}

void sub_1BF0C8B20()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECAE8 = v2;
  unk_1ED8ECAF0 = v4;
}

void sub_1BF0C8BF0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB60 = v2;
  unk_1ED8ECB68 = v4;
}

void sub_1BF0C8CC0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECA58 = v2;
  unk_1ED8ECA60 = v4;
}

void sub_1BF0C8D8C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECAB0 = v2;
  *algn_1ED8ECAB8 = v4;
}

uint64_t Date.makeRandomlyImprecise(within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v8 = sub_1BF17964C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_20_6();
  v13 = sub_1BF17965C();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v21, v22, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v23);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_25_4();
  result = -a1;
  if (__OFSUB__(0, a1))
  {
    __break(1u);
  }

  else
  {
    sub_1BF0C97A0(result, a1);
    sub_1BF17963C();
    (*(v10 + 104))(v3, *MEMORY[0x1E6969A98], v8);
    sub_1BF17962C();
    (*(v10 + 8))(v3, v8);
    (*(v15 + 8))(v20, v13);
    v27 = sub_1BF1794AC();
    OUTLINED_FUNCTION_4_16(v4);
    if (v28)
    {
      OUTLINED_FUNCTION_0_40();
      sub_1BF05AC80(v4, v29, v30);
      OUTLINED_FUNCTION_6_19();
      return (*(v31 + 16))(a2, v5, v27);
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
      return (*(v32 + 32))(a2, v4, v27);
    }
  }

  return result;
}

uint64_t Date.addSeconds(_:calendar:)()
{
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v5);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_7_17();
  v9(v8);
  OUTLINED_FUNCTION_15_9();
  v10 = OUTLINED_FUNCTION_10_8();
  v11(v10);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_34_1();
    result = OUTLINED_FUNCTION_4_16(v0);
    if (!v12)
    {
      OUTLINED_FUNCTION_0_40();
      return sub_1BF05AC80(v0, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    v15 = OUTLINED_FUNCTION_19_7();
    return v16(v15);
  }

  return result;
}

void Date.addMinutes(_:calendar:)()
{
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v5);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_7_17();
  v9(v8);
  OUTLINED_FUNCTION_15_9();
  v10 = OUTLINED_FUNCTION_10_8();
  v11(v10);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_23_4();
    if (v12)
    {
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_4_16(v0);
      if (!v12)
      {
        OUTLINED_FUNCTION_0_40();
        sub_1BF05AC80(v0, v13, v14);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    v15 = OUTLINED_FUNCTION_19_7();
    v16(v15);
  }
}

uint64_t sub_1BF0C93DC(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_16;
  }

  sub_1BF037534(0, &qword_1EBDCA8E8, sub_1BF0C991C, &type metadata for DateComponent);
  result = OUTLINED_FUNCTION_28_5();
  v3 = result;
  v20 = *(v1 + 16);
  if (!v20)
  {
LABEL_16:

    return v3;
  }

  v4 = 0;
  v5 = result + 56;
  v18 = v1;
  v19 = v1 + 32;
  while (v4 < *(v1 + 16))
  {
    v6 = *(v19 + v4);
    sub_1BF17BB6C();
    sub_1BF179F3C();

    result = sub_1BF17BB9C();
    v7 = -1 << *(v3 + 32);
    v8 = result & ~v7;
    v9 = v8 >> 6;
    v10 = *(v5 + 8 * (v8 >> 6));
    v11 = 1 << v8;
    if (((1 << v8) & v10) != 0)
    {
      v12 = ~v7;
      v13 = qword_1BF1825A8[v6];
      while (qword_1BF1825A8[*(*(v3 + 48) + v8)] != v13)
      {
        v14 = sub_1BF17B86C();
        result = swift_bridgeObjectRelease_n();
        if (v14)
        {
          goto LABEL_13;
        }

        v8 = (v8 + 1) & v12;
        v9 = v8 >> 6;
        v10 = *(v5 + 8 * (v8 >> 6));
        v11 = 1 << v8;
        if ((v10 & (1 << v8)) == 0)
        {
          goto LABEL_10;
        }
      }

      result = swift_bridgeObjectRelease_n();
    }

    else
    {
LABEL_10:
      *(v5 + 8 * v9) = v10 | v11;
      *(*(v3 + 48) + v8) = v6;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v17;
    }

LABEL_13:
    ++v4;
    v1 = v18;
    if (v4 == v20)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1BF0C95B4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1BF0C97FC(0), v2 = OUTLINED_FUNCTION_28_5(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_1BF17A0AC();
      sub_1BF17BB6C();
      v25 = v6;
      sub_1BF179F3C();
      v7 = sub_1BF17BB9C();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_1BF17A0AC();
        v15 = v14;
        if (v13 == sub_1BF17A0AC() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_1BF17B86C();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_1BF0C97A0(uint64_t a1, uint64_t a2)
{
  if (a2 - a1 != -1)
  {
    return sub_1BF0C9890(a2 - a1 + 1) + a1;
  }

  v3 = 0;
  MEMORY[0x1BFB547D0](&v3, 8);
  return v3;
}

void sub_1BF0C97FC(uint64_t a1)
{
  if (!qword_1EBDCA8D8)
  {
    type metadata accessor for URLResourceKey();
    sub_1BF05C0A4(&qword_1EBDCA938, type metadata accessor for URLResourceKey, &unk_1BF17DCD8);
    v1 = sub_1BF17B19C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCA8D8);
    }
  }
}

unint64_t sub_1BF0C9890(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB547D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB547D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF0C991C()
{
  result = qword_1EBDCAD30;
  if (!qword_1EBDCAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAD30);
  }

  return result;
}

uint64_t fetch(urlRequest:session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF0C9B3C(0, a2, a3, a4);
  swift_allocObject();
  return sub_1BF08A5A8();
}

void sub_1BF0C99CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1BF178C0C();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_1BF0C9CAC;
  v12[5] = v10;
  v15[4] = sub_1BF0C9F18;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BF0C0248;
  v15[3] = &block_descriptor_6;
  v13 = _Block_copy(v15);

  v14 = [a5 dataTaskWithRequest:v11 completionHandler:v13];
  _Block_release(v13);

  [v14 resume];
}

void sub_1BF0C9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EBDCA9E8)
  {
    v4 = type metadata accessor for Promise(0, MEMORY[0x1E6969080], a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EBDCA9E8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation17PromiseFetchErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0C9BB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0C9C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BF0C9C6C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

void sub_1BF0C9CB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, double), uint64_t a6, void (*a7)(uint64_t, unint64_t, __n128))
{
  v13 = sub_1BF17A12C();
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  if (a4)
  {
    a5(a4, v15.n128_f64[0]);
  }

  else if (a2 >> 60 == 15)
  {
    if (a3 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0) && (v17 = v16, [v16 statusCode] >= 400))
    {
      v23 = [v17 statusCode];
      sub_1BF0C9F24();
      v24 = swift_allocError();
      v25[1] = 0;
      v25[2] = 0;
      *v25 = v23;
      (a5)();
      v20 = v24;
    }

    else
    {
      sub_1BF0C9F24();
      v18 = swift_allocError();
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 1;
      (a5)();
      v20 = v18;
    }
  }

  else if (a3 && (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) != 0) && (v22 = v21, [v21 statusCode] >= 400))
  {
    v26 = [v22 statusCode];
    sub_1BF17A10C();
    v27 = sub_1BF17A0CC();
    v29 = v28;
    sub_1BF0C9F24();
    v30 = swift_allocError();
    *v31 = v26;
    v31[1] = v27;
    v31[2] = v29;
    (a5)();
  }

  else
  {
    a7(a1, a2, v15);
  }
}

unint64_t sub_1BF0C9F24()
{
  result = qword_1EBDCBCF8[0];
  if (!qword_1EBDCBCF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBCF8);
  }

  return result;
}

void sub_1BF0C9F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  sub_1BF17ACCC();
  switch(v5)
  {
    case 1:
      sub_1BF071C70(0);
      v6 = swift_allocObject();
      v7 = OUTLINED_FUNCTION_0_41(v6, xmmword_1BF17DEF0);
      goto LABEL_7;
    case 2:
      sub_1BF071C70(0);
      v24 = swift_allocObject();
      v25 = OUTLINED_FUNCTION_0_41(v24, xmmword_1BF17E820);
      sub_1BEFE6A78(v25, v26);
      v7 = OUTLINED_FUNCTION_2_24();
      goto LABEL_7;
    case 3:
      sub_1BF071C70(0);
      v14 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_41(v14, xmmword_1BF1805A0);
      sub_1BEFE6A78(v15, v16);
      v17 = OUTLINED_FUNCTION_2_24();
      sub_1BEFE6A78(v17, v18);
      v7 = a4 + 112;
      v8 = &v14[7];
      goto LABEL_7;
    case 4:
      sub_1BF071C70(0);
      v19 = swift_allocObject();
      v20 = OUTLINED_FUNCTION_0_41(v19, xmmword_1BF182690);
      sub_1BEFE6A78(v20, v21);
      v22 = OUTLINED_FUNCTION_2_24();
      sub_1BEFE6A78(v22, v23);
      sub_1BEFE6A78(a4 + 112, &v19[7]);
      v7 = a4 + 152;
      v8 = &v19[9].n128_i64[1];
      goto LABEL_7;
    case 5:
      sub_1BF071C70(0);
      v9 = swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_41(v9, xmmword_1BF17EBE0);
      sub_1BEFE6A78(v10, v11);
      v12 = OUTLINED_FUNCTION_2_24();
      sub_1BEFE6A78(v12, v13);
      sub_1BEFE6A78(a4 + 112, &v9[7]);
      sub_1BEFE6A78(a4 + 152, &v9[9].n128_i64[1]);
      v7 = a4 + 192;
      v8 = &v9[12];
LABEL_7:
      sub_1BEFE6A78(v7, v8);
      sub_1BF071C2C();
      sub_1BF17AE3C();
      v27 = OUTLINED_FUNCTION_1_29();
      sub_1BF1797CC(v27);

      break;
    default:
      sub_1BF071C2C();
      sub_1BF17AE3C();
      v28 = OUTLINED_FUNCTION_1_29();
      sub_1BF1797CC(v28);
      break;
  }
}

void simulateCrash(unless:_:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    sub_1BF0C9F7C(a2, a3, a4, a5);
  }
}

uint64_t Quantity.quantifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1BF0CA1E4(v2, v3, v4);
}

uint64_t sub_1BF0CA1E4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return v3;
}

uint64_t Quantity.description.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v2;
}

uint64_t sub_1BF0CA288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a3;
  v13 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v13;
  v14 = type metadata accessor for Quantity(0, a6, a3, a4);
  result = (*(*(a6 - 8) + 32))(a7 + v14[7], a2, a6);
  *(a7 + v14[8]) = v10;
  v16 = (a7 + v14[9]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t static Quantity.need<A>(_:without:)()
{
  OUTLINED_FUNCTION_0_42();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_1_30();
  v3 = OUTLINED_FUNCTION_2_25(v2);
  v4(v3);
  OUTLINED_FUNCTION_4_17();
  sub_1BF17B1EC();
  MEMORY[0x1BFB52000](0x206465654ELL, 0xE500000000000000);
  v5 = Quantifier.description.getter();
  MEMORY[0x1BFB52000](v5);

  MEMORY[0x1BFB52000](0x74756F6874697720, 0xE900000000000020);
  sub_1BF17B80C();
  return OUTLINED_FUNCTION_3_19();
}

uint64_t sub_1BF0CA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_42();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_1_30();
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  v19[0] = *v13;
  v19[1] = v14;
  v20 = v15;
  (*(v16 + 16))(v8);
  sub_1BF0CA1E4(v19[0], v14, v15);
  MEMORY[0x1BFB52000](a5, a6);
  v17 = Quantifier.description.getter();
  MEMORY[0x1BFB52000](v17);

  MEMORY[0x1BFB52000](32, 0xE100000000000000);
  sub_1BF17B80C();
  return sub_1BF0CA288(v19, v8, 0, 0, 0xE000000000000000, v6, v7);
}

uint64_t static Quantity.doesNotHave<A>(_:of:)()
{
  OUTLINED_FUNCTION_0_42();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_1_30();
  v3 = OUTLINED_FUNCTION_2_25(v2);
  v4(v3);
  OUTLINED_FUNCTION_4_17();
  sub_1BF17B1EC();
  MEMORY[0x1BFB52000](0x746F6E2073656F44, 0xEE00206576616820);
  v5 = Quantifier.description.getter();
  MEMORY[0x1BFB52000](v5);

  MEMORY[0x1BFB52000](32, 0xE100000000000000);
  sub_1BF17B80C();
  return OUTLINED_FUNCTION_3_19();
}

uint64_t sub_1BF0CA6C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF0CA760(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 17) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v18 + v8) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((((v7 + 17) & ~v7) + v8) & 0xFFFFFFFFFFFFFFF8) + 24;
    v11 = a2 - v9;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v9 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1BF0CA8B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64);
  v12 = ((((v10 + 17) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v10 + 17) & ~v10) + v11) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 17] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v19 + v11) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 8) = a2 & 0x7FFFFFFF;
              *(v20 + 16) = 0;
            }

            else
            {
              *(v20 + 16) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v10 + 17) & ~v10) + v11) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v10 + 17) & ~v10) + v11) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v10 + 17) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 24);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BF0CAAB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_20_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BF0C3FF4(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1BF17923C();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BF0CABA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_20_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1BF0C400C(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BF0CAC58(uint64_t a1)
{
  v8 = a1;
  v9 = sub_1BF126678(a1);
  v10 = *(*v2 + 16);
  if (__OFADD__(v10, v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BF0C4024(v10 + v9, 1);
  v1 = *v2;
  v11 = *(*v2 + 16);
  v3 = (*(*v2 + 24) >> 1) - v11;
  v12 = sub_1BF176654(&v49, *v2 + 40 * v11 + 32, v3, v8);
  if (v12 < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= 1)
  {
    v13 = *(v1 + 16);
    v14 = __CFADD__(v13, v12);
    v15 = __OFADD__(v13, v12);
    v16 = v13 + v12;
    if (v15)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v1 + 16) = v16;
  }

  if (v12 != v3)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  v6 = *(v1 + 16);
  v7 = v49;
  v16 = v50;
  v48 = *(v49 + 16);
  v14 = v50 >= v48;
  if (v50 == v48)
  {
    OUTLINED_FUNCTION_26_6();
    v17 = -1;
    goto LABEL_15;
  }

LABEL_13:
  if (v14)
  {
    goto LABEL_31;
  }

  v48 = v16 + 1;
  v18 = v7 + 40 * v16;
  v17 = *(v18 + 64);
  v3 = *(v18 + 48);
  v8 = *(v18 + 56);
  v5 = *(v18 + 32);
  v4 = *(v18 + 40);
  v19 = OUTLINED_FUNCTION_1_31();
  sub_1BF0CB03C(v19, v20, v21, v22, v17);
LABEL_15:
  v47 = v7 + 32;
LABEL_16:
  if (v17 == -1)
  {
    v43 = OUTLINED_FUNCTION_1_31();
    sub_1BF0CB108(v43, v44, v45, v46, 255);
    goto LABEL_7;
  }

  v23 = *(v1 + 24) >> 1;
  if (v23 < v6 + 1)
  {
    sub_1BF0A6DDC();
    v1 = v42;
    v23 = *(v42 + 24) >> 1;
  }

  for (i = v1 + 64; ; i = v1 + 64)
  {
    v25 = (i + 40 * v6);
    do
    {
      if (v17 == -1 || v6 >= v23)
      {
        *(v1 + 16) = v6;
        goto LABEL_16;
      }

      v27 = OUTLINED_FUNCTION_1_31();
      sub_1BF0CB03C(v27, v28, v29, v30, v17);
      v31 = OUTLINED_FUNCTION_1_31();
      sub_1BF0CB108(v31, v32, v33, v34, v17);
      *(v25 - 4) = v5;
      *(v25 - 3) = v4;
      *(v25 - 2) = v3;
      *(v25 - 1) = v8;
      *v25 = v17;
      v25 += 40;
      ++v6;
      v17 = -1;
      OUTLINED_FUNCTION_26_6();
    }

    while (v36 == v35);
    if (v36 >= v35)
    {
      break;
    }

    v37 = (v47 + 40 * v48);
    v17 = *(v37 + 32);
    v3 = v37[2];
    v8 = v37[3];
    v5 = *v37;
    v4 = v37[1];
    v38 = OUTLINED_FUNCTION_1_31();
    sub_1BF0CB03C(v38, v39, v40, v41, v17);
    ++v48;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1BF0CAE8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_1BF0CAEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1BF0CAF64(uint64_t a1)
{
  if (!qword_1ED8EAE68)
  {
    sub_1BEFF51F8(255, qword_1ED8EE0E0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for CallbackDefinition);
    v1 = sub_1BF17A65C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EAE68);
    }
  }
}

unint64_t sub_1BF0CAFE4()
{
  result = qword_1EBDCBD80;
  if (!qword_1EBDCBD80)
  {
    sub_1BF0CAF64(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBD80);
  }

  return result;
}

uint64_t sub_1BF0CB03C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01716C(a2);

      result = sub_1BF01716C(a3);
      break;
    case 2:
    case 3:
      sub_1BF01716C(result);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      goto LABEL_7;
    case 4:
    case 5:
      sub_1BF01716C(result);
LABEL_7:

      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF0CB108(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1BF0CB11C(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_1BF0CB11C(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:

      sub_1BF017214(a2);

      result = sub_1BF017214(a3);
      break;
    case 2:
    case 3:
      sub_1BF017214(result);

      goto LABEL_7;
    case 4:
    case 5:
      sub_1BF017214(result);
LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

id InterprocessDiagnosticDumpNotifier.__allocating_init(notificationName:diagnosticTempDir:log:)()
{
  OUTLINED_FUNCTION_1_32();
  v0 = OUTLINED_FUNCTION_0_44();
  return InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:log:)(v0, v1, v2, v3);
}

id InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1BF1797FC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF17923C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a3, v13, v16);
  v19 = a4;
  sub_1BF17980C();
  v20 = objc_allocWithZone(ObjectType);
  v21 = InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:logger:)(a1, a2, v18, v12);

  (*(v14 + 8))(a3, v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v21;
}

id InterprocessDiagnosticDumpNotifier.__allocating_init(notificationName:diagnosticTempDir:logger:)()
{
  OUTLINED_FUNCTION_1_32();
  v0 = OUTLINED_FUNCTION_0_44();
  return InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:logger:)(v0, v1, v2, v3);
}

id InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_interprocessDiagnosticDumpNotification];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_diagnosticTempDir;
  v13 = sub_1BF17923C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a3, v13);
  v15 = OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_logger;
  v16 = sub_1BF1797FC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v5[v15], a4, v16);
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v17 + 8))(a4, v16);
  (*(v14 + 8))(a3, v13);
  return v18;
}

Swift::Void __swiftcall InterprocessDiagnosticDumpNotifier.triggerDiagnosticFileDump()()
{
  sub_1BF0CB6A4();
  v1 = *(v0 + OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_interprocessDiagnosticDumpNotification);
  v2 = *(v0 + OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_interprocessDiagnosticDumpNotification + 8);

  sub_1BF0CB9E0(v1, v2);
}

void sub_1BF0CB6A4()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1BF17916C();
  v25[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v25];

  if (v2)
  {
    v3 = v25[0];
  }

  else
  {
    v4 = v25[0];
    v5 = sub_1BF17911C();

    swift_willThrow();
    v6 = v5;
    v7 = sub_1BF1797DC();
    v8 = sub_1BF17ACBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1BEFE0000, v7, v8, "Failed to clear diagnostic file dir; error=%@", v9, 0xCu);
      sub_1BF085B60(v10);
      MEMORY[0x1BFB547B0](v10, -1, -1);
      MEMORY[0x1BFB547B0](v9, -1, -1);
    }

    else
    {
    }
  }

  v13 = sub_1BF17916C();
  v25[0] = 0;
  v14 = [v0 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v25];

  if (v14)
  {
    v15 = v25[0];
  }

  else
  {
    v16 = v25[0];
    v17 = sub_1BF17911C();

    swift_willThrow();
    v18 = v17;
    v19 = sub_1BF1797DC();
    v20 = sub_1BF17ACBC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v17;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1BEFE0000, v19, v20, "Failed to create diagnostic file dir; error=%@", v21, 0xCu);
      sub_1BF085B60(v22);
      MEMORY[0x1BFB547B0](v22, -1, -1);
      MEMORY[0x1BFB547B0](v21, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1BF0CB9E0(uint64_t a1, uint64_t a2)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = sub_1BF17A07C();
  CFNotificationCenterPostNotification(v2, v3, 0, 0, 1u);
}

id InterprocessDiagnosticDumpNotifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InterprocessDiagnosticDumpNotifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InterprocessDiagnosticDumpNotifier(uint64_t a1)
{
  result = qword_1EBDCBDA0;
  if (!qword_1EBDCBDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0CBC54(uint64_t a1)
{
  result = sub_1BF17923C();
  if (v2 <= 0x3F)
  {
    result = sub_1BF1797FC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t static Random.string(chars:)(uint64_t a1)
{
  v1 = a1;
  v2 = arc4random_uniform(HIDWORD(a1));
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_8_18();
    while (1)
    {
      result = sub_1BF17A1BC();
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(result))
      {
        goto LABEL_13;
      }

      arc4random_uniform(result);
      sub_1BF17A1FC();
      v5 = sub_1BF17A2EC();
      v7 = v6;
      v8 = *(v11 + 16);
      if (v8 >= *(v11 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_18();
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1BF02027C();
    sub_1BF01B738();
    v10 = sub_1BF179F7C();

    return v10;
  }

  return result;
}

uint64_t static Random.colorHEX()()
{
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BF00DD60();
  v4 = sub_1BF17A1BC();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v4))
  {
    v5 = arc4random_uniform(v4);
    v6 = OUTLINED_FUNCTION_3_21(v5);
    OUTLINED_FUNCTION_5_17(v6);
    OUTLINED_FUNCTION_0_45();
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_2_27();
LABEL_4:
  v8 = OUTLINED_FUNCTION_1_33();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v8))
  {
    v9 = arc4random_uniform(v8);
    v10 = OUTLINED_FUNCTION_3_21(v9);
    OUTLINED_FUNCTION_5_17(v10);
    OUTLINED_FUNCTION_0_45();
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_2_27();
LABEL_7:
  v11 = OUTLINED_FUNCTION_1_33();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v11))
  {
    v12 = arc4random_uniform(v11);
    v13 = OUTLINED_FUNCTION_3_21(v12);
    OUTLINED_FUNCTION_5_17(v13);
    OUTLINED_FUNCTION_0_45();
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_2_27();
LABEL_10:
  v14 = OUTLINED_FUNCTION_1_33();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v14))
  {
    v15 = arc4random_uniform(v14);
    v16 = OUTLINED_FUNCTION_3_21(v15);
    OUTLINED_FUNCTION_5_17(v16);
    OUTLINED_FUNCTION_0_45();
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

  __break(1u);
LABEL_31:
  OUTLINED_FUNCTION_2_27();
LABEL_13:
  v17 = OUTLINED_FUNCTION_1_33();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v17))
  {
    v18 = arc4random_uniform(v17);
    v19 = OUTLINED_FUNCTION_3_21(v18);
    OUTLINED_FUNCTION_5_17(v19);
    OUTLINED_FUNCTION_0_45();
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_34:
  OUTLINED_FUNCTION_2_27();
LABEL_16:
  v20 = OUTLINED_FUNCTION_1_33();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v20))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = arc4random_uniform(v20);
  v22 = OUTLINED_FUNCTION_3_21(v21);
  OUTLINED_FUNCTION_5_17(v22);
  OUTLINED_FUNCTION_0_45();
  if (v7)
  {
LABEL_37:
    OUTLINED_FUNCTION_2_27();
  }

  *(v28 + 16) = v2;
  v23 = v28 + 16 * v3;
  *(v23 + 32) = v0;
  *(v23 + 40) = v1;
  sub_1BF02027C();
  sub_1BF01B738();
  v24 = sub_1BF179F7C();
  v26 = v25;

  MEMORY[0x1BFB52000](v24, v26);

  return 35;
}

uint64_t static Random.data()()
{
  v0 = sub_1BF17A12C();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Random.string(chars:)(0x3200000019);
  sub_1BF17A10C();
  v7 = sub_1BF17A0BC();
  v9 = v8;

  result = (*(v2 + 8))(v6, v0);
  if (v9 >> 60 != 15)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t static Random.sentence(words:)(uint64_t a1)
{
  v1 = a1;
  v2 = arc4random_uniform(HIDWORD(a1));
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_8_18();
    do
    {
      v4 = static Random.string(chars:)(0x800000003);
      v6 = v5;
      v7 = *(v11 + 16);
      if (v7 >= *(v11 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_18();
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v6;
      --v3;
    }

    while (v3);
  }

  sub_1BF02027C();
  sub_1BF01B738();
  v9 = sub_1BF179F7C();

  return v9;
}

double static Random.double(seed:allowNegative:)(uint32_t a1, char a2)
{
  v4 = arc4random_uniform(a1);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = arc4random_uniform(a1);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v6 / v8;
  if ((a2 & 1) != 0 && (arc4random_uniform(2u) & 1) == 0)
  {
    return -v9;
  }

  return v9;
}

uint64_t static Random.uint(seed:)(uint32_t a1)
{
  LODWORD(result) = arc4random_uniform(a1);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void static Random.date(withinLastDays:)(uint64_t a1)
{
  v4 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_19();
  if (__OFSUB__(0, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BF1793EC();
  sub_1BF1793DC();
  OUTLINED_FUNCTION_9_18();
  if (!(v13 ^ v14 | v12))
  {
    goto LABEL_8;
  }

  if (v11 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 < 4294967300.0)
  {
    arc4random_uniform(v11);
    sub_1BF1793EC();
    v15 = *(v6 + 8);
    v15(v1, v4);
    v15(v2, v4);
    return;
  }

LABEL_10:
  __break(1u);
}

void static Random.date(withinNextDays:)(uint64_t a1)
{
  v3 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_10_19();
  sub_1BF1793EC();
  sub_1BF1793DC();
  OUTLINED_FUNCTION_9_18();
  if (!(v12 ^ v13 | v11))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v10 < 4294967300.0)
  {
    arc4random_uniform(v10);
    sub_1BF1793EC();
    v14 = *(v5 + 8);
    v14(v1, v3);
    v14(v2, v3);
    return;
  }

LABEL_7:
  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for Random(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF0CC6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF047B30(a1, v13);
  v14 = sub_1BF17A77C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1BF00CAB0(v13);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1BF17A6AC();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t Sequence.uniqueByPtr<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  (*(v10 + 16))(v9 - v8, v5);
  v11 = sub_1BF17A3DC();

  return v11;
}

uint64_t sub_1BF0CC99C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t *a4)
{
  v6 = a2(a1);
  if (!v4)
  {
    v8 = v6;
    if (sub_1BF0D8F70(v6, *a4))
    {
      swift_unknownObjectRelease();
      v7 = 0;
    }

    else
    {
      sub_1BF16FBE0(&v10, v8);
      swift_unknownObjectRelease();
      v7 = 1;
    }
  }

  return v7 & 1;
}

uint64_t sub_1BF0CCA78(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a4;
  v41 = a8;
  v11 = sub_1BF17AE6C();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  v38 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v36 - v21;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v36 - v26;
  v28 = v42;
  a2(a1, v25);
  if (!v28)
  {
    v37 = v18;
    v42 = v22;
    v31 = v38;
    v30 = v39;
    if (__swift_getEnumTagSinglePayload(v14, 1, a6) == 1)
    {
      (*(v30 + 8))(v14, v11);
LABEL_7:
      v29 = 1;
      return v29 & 1;
    }

    (*(v31 + 32))(v27, v14, a6);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v32 = sub_1BF17A98C();

    if ((v32 & 1) == 0)
    {
      (*(v31 + 16))(v37, v27, a6);
      sub_1BF17A9AC();
      v33 = v42;
      sub_1BF17A94C();
      v34 = *(v31 + 8);
      v34(v33, a6);
      v34(v27, a6);
      goto LABEL_7;
    }

    (*(v31 + 8))(v27, a6);
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 16))(v8 - v7, v3, a1);
  v10 = sub_1BF17A3DC();

  return v10;
}

uint64_t Sequence.groupedBy<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_1BF17A65C();
  sub_1BF179CEC();
  sub_1BF179E9C();
  sub_1BF17A3EC();
  return v7;
}

uint64_t sub_1BF0CD094(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v28 = a4;
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v28 - v14;
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v28 - v24;
  v29 = a2;
  (v30)(a2, v23);
  v30 = a1;
  sub_1BF17A65C();
  sub_1BF179EAC();
  v26 = v32;
  if (!v32)
  {
    v26 = sub_1BF17A56C();
  }

  v33 = v26;
  (*(v12 + 16))(v15, v29, AssociatedTypeWitness);
  sub_1BF17A5DC();
  (*(v16 + 16))(v20, v25, a6);
  v32 = v33;
  sub_1BF179E9C();
  sub_1BF179EBC();
  return (*(v16 + 8))(v25, a6);
}

uint64_t sub_1BF0CD32C()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF0CD3B0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t Sequence<>.concurrentMap<A>(_:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_31_7(v1, v2, v3, v4, v5);
  v0[10] = swift_getTupleTypeMetadata2();
  v6 = sub_1BF17AE6C();
  v0[11] = v6;
  OUTLINED_FUNCTION_6_3(v6);
  v0[12] = v7;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v8 = sub_1BF17AE6C();
  v0[15] = v8;
  OUTLINED_FUNCTION_6_3(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_40();
  v10 = sub_1BF17B4FC();
  v0[18] = v10;
  OUTLINED_FUNCTION_6_3(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_24();
  v12 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF0CD594()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_46();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_49_3(v5);
  OUTLINED_FUNCTION_46();
  v6 = swift_allocObject();
  *(v2 + 168) = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = &unk_1BF1828A8;
  v6[6] = v0;

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_14_13(v7);
  *v1 = v2;
  OUTLINED_FUNCTION_45_3();

  return Sequence<>.unorderedConcurrentMap<A>(_:)(&unk_1BF1828B8, v6, v8, v9, v10);
}

uint64_t sub_1BF0CD6A8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = v3[20];
  v5 = v3[19];
  v6 = v3[18];
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v10 + 184) = v9;

  (*(v5 + 8))(v4, v6);
  v11 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF0CD808()
{
  v2 = v0[10];
  v3 = v0[7];
  v4 = OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
  sub_1BF17A5AC();
  v6 = sub_1BF17A64C();
  v54 = v6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF17A4EC();

  OUTLINED_FUNCTION_33_5();
  while (1)
  {
    v8 = sub_1BF17A5AC();
    v9 = v0[10];
    if (v7 == v8)
    {
      v10 = v0[13];
      v11 = 1;
    }

    else
    {
      v12 = sub_1BF17A58C();
      OUTLINED_FUNCTION_44_1(v12);
      if (v2)
      {
        v13 = OUTLINED_FUNCTION_52_3();
        v16 = (*(v14 + 16))(v13, v15 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v7);
      }

      else
      {
        result = sub_1BF17B23C();
        if (*(*v1 + 64) != 8)
        {
          __break(1u);
          return result;
        }

        v43 = OUTLINED_FUNCTION_29_6(result);
        v44(v43);
        v16 = swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_43_2(v16, v17, v18, v19, v20);
      v10 = v7;
      v11 = 0;
    }

    __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    v21 = OUTLINED_FUNCTION_50_2();
    v22(v21);
    v23 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_51_2(v23, v24, v9);
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_25_6();
    (*(v26 + 32))(v9, v27 + v28, v7);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v7);
    OUTLINED_FUNCTION_39_0();
    sub_1BF17A65C();
    v32 = sub_1BF17A55C();
    OUTLINED_FUNCTION_58_2(v32, v33, v34, v35, v36, v37, v38, v39, v49, v50, v51, v53, v54);
    v40 = OUTLINED_FUNCTION_19_8();
    v41(v40);
    v7 = v55;
  }

  v45 = v0[6];
  v52 = *(v0 + 7);

  v0[3] = v6;
  v46 = swift_task_alloc();
  *(v46 + 16) = v45;
  *(v46 + 24) = v52;
  OUTLINED_FUNCTION_54();
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A38C();
  swift_bridgeObjectRelease_n();

  v47 = OUTLINED_FUNCTION_34_3();

  return v48(v47);
}

uint64_t sub_1BF0CDB40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1BF0CDC48;

  return v9(a1, a3);
}

uint64_t sub_1BF0CDC48()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v2 + 8);
  v5 = *(v1 + 16);

  return v4(v5);
}

uint64_t sub_1BF0CDD48(uint64_t a1, char *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 16) = a1;
  v12 = *a2;
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  *(v10 + 24) = v15;
  *v15 = v10;
  v15[1] = sub_1BF0CDEE8;

  return v17(a1 + v14, v12, &a2[v13]);
}

uint64_t sub_1BF0CDEE8()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_9();

  return v7();
}

uint64_t Sequence<>.unorderedConcurrentMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF0CE000()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_22_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 80) = v2;
  *v2 = v3;
  v2[1] = sub_1BF0CE0C8;
  v4 = OUTLINED_FUNCTION_24_9();

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BF0CE0C8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF0CE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_26_1();
  (*(v12[22] + 8))(v12[23], v12[21]);

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1BF0CE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[11] = *(a7 - 8);
  v8[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[13] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[14] = v11;
  v8[15] = *(v11 + 64);
  v8[16] = swift_task_alloc();
  sub_1BF00974C(0);
  v8[17] = swift_task_alloc();
  sub_1BF17AE6C();
  v8[18] = swift_task_alloc();
  v12 = sub_1BF17A71C();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  sub_1BF17AE6C();
  v8[22] = swift_task_alloc();
  v8[23] = *(a6 - 8);
  v8[24] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v8[25] = v13;
  v8[26] = *(v13 - 8);
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0CE5A8, 0, 0);
}

uint64_t sub_1BF0CE5A8()
{
  v1 = *(v0 + 112);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 40), *(v0 + 64));
  sub_1BF17A32C();
  v18 = v1;
  while (1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 104);
    swift_getAssociatedConformanceWitness();
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 176);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    v19 = *(v0 + 48);
    v20 = *(v0 + 64);
    v9 = sub_1BF17A77C();
    v21 = *(v0 + 72);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
    v10 = *(v18 + 32);
    v10(v6, v4, v7);
    v11 = (*(v18 + 80) + 72) & ~*(v18 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v20;
    *(v12 + 40) = v21;
    *(v12 + 56) = v19;
    *(v12 + 64) = v8;
    v10(v12 + v11, v6, v7);
    v13 = sub_1BF17A72C();

    sub_1BF0CC6A0(v5, &unk_1BF1828E0, v12, v13);
    sub_1BF00CAB0(v5);
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  OUTLINED_FUNCTION_54();
  *(v0 + 16) = sub_1BF17A56C();
  sub_1BF17A6FC();
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 224) = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_10_20(v14);

  return MEMORY[0x1EEE6D8A8](v16);
}

uint64_t sub_1BF0CE828()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF0CE90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_26_1();
  v13 = v12[9];
  v14 = OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_51_2(v14, v15, v13);
  if (v16)
  {
    v17 = v12[3];
    (*(v12[20] + 8))(v12[21], v12[19]);
    *v17 = v12[2];

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_23_1();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_46_3();
    v28(v27);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5DC();
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v12[28] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_10_20(v29);
    OUTLINED_FUNCTION_23_1();

    return MEMORY[0x1EEE6D8A8](v31);
  }
}

uint64_t sub_1BF0CEA70()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_32_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_20_8(v1);
  OUTLINED_FUNCTION_35_4();

  return sub_1BF0CDB40(v3, v4, v5, v6);
}

uint64_t sub_1BF0CEAFC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_34_3();

  return v4(v3);
}

uint64_t sub_1BF0CEBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4(v10);
  *v11 = v12;
  v11[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_35_4();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1BF0CEC84()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v1[1] = sub_1BF035DD4;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_35_4();

  return sub_1BF0CE294(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF0CED1C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_39_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68(AssociatedTypeWitness);
  OUTLINED_FUNCTION_55_3();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_16_8(v2);
  OUTLINED_FUNCTION_23_1();

  return sub_1BF047E90(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BF0CEE04(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_1BF035DD0;

  return sub_1BF02B7F8(a1, v3);
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF0CEEE8, 0, 0);
}

uint64_t sub_1BF0CEEE8()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_1BF179CFC();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1BF17A65C();
  *v4 = v0;
  v4[1] = sub_1BF0CF00C;
  v6 = v0[5];
  v7 = v0[4];

  return MEMORY[0x1EEE6DB28](v0 + 2, v0 + 3, &unk_1BF182918, v3, v7, v5, v6);
}

uint64_t sub_1BF0CF00C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1BF0CF128;
  }

  else
  {

    v2 = sub_1BF0532DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BF0CF128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF0CF18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[4] = AssociatedTypeWitness;
  v4[5] = *(AssociatedTypeWitness - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0CF264, 0, 0);
}

uint64_t sub_1BF0CF264()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1BF17A65C();
  sub_1BF17A5DC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BF0CF30C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1BF0CF3BC;

  return sub_1BF0CF18C(a1, a2, v7, v6);
}

uint64_t sub_1BF0CF3BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CodingSafeArray.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CodingSafeArray.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBBC();
  if (!v5)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    type metadata accessor for SafeishArray(0, a2, a3, a4);
    swift_getWitnessTable();
    sub_1BF17B8DC();
    v11 = v13[6];
    __swift_destroy_boxed_opaque_existential_1(v13);
    *a5 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodingSafeArray.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17BBFC();
  v5[6] = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1BF17A65C();
  swift_getWitnessTable();
  sub_1BF17B95C();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1BF0CF75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BF0CF7B0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BF17A31C();
  }

  __break(1u);
  return result;
}

uint64_t VersionQualifier.name.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

TeaFoundation::VersionQualifier __swiftcall VersionQualifier.init(name:version:)(TeaFoundation::VersionQualifier name, TeaFoundation::VersionNumber_optional version)
{
  v3 = *version.value.numbers._rawValue;
  *v2 = name.name;
  v2[1]._countAndFlagsBits = v3;
  name.version = version;
  return name;
}

TeaFoundation::VersionQualifier __swiftcall VersionQualifier.init(_:_:)(TeaFoundation::VersionQualifier result, Swift::OpaquePointer_optional a2)
{
  *v2 = result.name;
  v2[1]._countAndFlagsBits = a2.value._rawValue;
  result.version = a2;
  return result;
}

TeaFoundation::VersionQualifier __swiftcall VersionQualifier.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  sub_1BF0CFA10(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = countAndFlagsBits;
  v35 = object;
  v33[0] = 45;
  v33[1] = 0xE100000000000000;
  v9 = sub_1BF1795CC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_1BF013170();
  sub_1BF17AF7C();
  v11 = v10;
  v13 = v12;
  result.name._countAndFlagsBits = sub_1BF0CFA68(v8);
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v18 = sub_1BF17A31C();
    v19 = MEMORY[0x1BFB51F50](v18);
    v21 = v20;

    v22 = sub_1BF0CF7B0(v11, countAndFlagsBits, object);
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = MEMORY[0x1BFB51F50](v22, v24, v26, v28);
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    *&result.name._countAndFlagsBits = VersionNumber.init(_:)(v32);
    v17 = v34;
    object = v21;
    countAndFlagsBits = v19;
  }

  *v4 = countAndFlagsBits;
  v4[1] = object;
  v4[2] = v17;
  result.version.value.numbers._rawValue = v15;
  *(&result.name._object + 1) = *(&v14 + 1);
  *(&result.name._object + 5) = *(&v14 + 5);
  HIBYTE(result.name._object) = HIBYTE(v14);
  result.version.is_nil = v16;
  return result;
}

void sub_1BF0CFA10(uint64_t a1)
{
  if (!qword_1ED8EE408)
  {
    sub_1BF1795CC();
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EE408);
    }
  }
}

uint64_t sub_1BF0CFA68(uint64_t a1)
{
  sub_1BF0CFA10(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall VersionQualifier.init(_:)(TeaFoundation::VersionQualifier_optional *__return_ptr retstr, Swift::String_optional a2)
{
  if (a2.value._object)
  {
    VersionQualifier.init(_:)(a2.value);
    v3 = v6;
    v4 = v7;
    v5 = v8;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  retstr->value.name._countAndFlagsBits = v3;
  retstr->value.name._object = v4;
  retstr->value.version.value.numbers._rawValue = v5;
}

uint64_t static VersionQualifier.beta(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 1635018082;
  a2[1] = 0xE400000000000000;
  a2[2] = a1;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t VersionQualifier.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v4 = *v0;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](45, 0xE100000000000000);
    v2 = VersionNumber.description.getter();
    MEMORY[0x1BFB52000](v2);

    return v4;
  }

  else
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return v1;
}

uint64_t static VersionQualifier.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (OUTLINED_FUNCTION_0_46(), (sub_1BF17B86C() & 1) != 0))
  {
    if (v2)
    {
      v5 = v2;
    }

    else
    {
      v5 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v10 = v5;
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v9 = v6;
    v7 = static VersionNumber.< infix(_:_:)(&v10, &v9);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return v7;
  }

  else
  {
    OUTLINED_FUNCTION_0_46();

    return sub_1BF17B86C();
  }
}

BOOL static VersionQualifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1BF17B86C(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      v9 = v2;
      if (v3)
      {
        v8 = v3;
        v7 = static VersionNumber.== infix(_:_:)(&v9, &v8);
        swift_bridgeObjectRetain_n();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

        return (v7 & 1) != 0;
      }
    }

    else if (!v3)
    {

      return 1;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return 0;
  }

  return result;
}

unint64_t sub_1BF0CFE34()
{
  result = qword_1EBDCBDB0;
  if (!qword_1EBDCBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDB0);
  }

  return result;
}

uint64_t static CacheMaxAge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t CacheMaxAge.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x69736E6972746E69;
    }

    else
    {
      return 0x72657665726F66;
    }
  }

  else
  {
    sub_1BF07D51C();
    v2 = sub_1BF179D2C();
    MEMORY[0x1BFB52000](v2);

    MEMORY[0x1BFB52000](41, 0xE100000000000000);
    return 678977901;
  }
}

uint64_t getEnumTagSinglePayload for CacheMaxAge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheMaxAge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BF0CFFF4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0D0010(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t withEagerCancellation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF044920, 0, 0);
}

uint64_t sub_1BF0D0064()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF0D00D4()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF0D0130()
{
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_1_34(v1, v2, v3, v4);
  if (v5)
  {
    v6 = v5;
    *(v0 + 16) = *(v0 + 72);
    v7 = *(v0 + 32);
    v8 = sub_1BEFF79E8();
    sub_1BF0D01E4(v0 + 16, v6, v7, v8, MEMORY[0x1E69E7288]);
  }

  else
  {
  }

  OUTLINED_FUNCTION_9();

  return v9();
}

uint64_t sub_1BF0D01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1BF0D0278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1BF046750(a1, a2, sub_1BF0D0428, a4);
  if (result)
  {
    v6 = result;
    sub_1BF17A6EC();
    sub_1BF0D03D0();
    v7 = swift_allocError();
    sub_1BF179D0C();
    v9 = v7;
    v8 = sub_1BEFF79E8();
    return sub_1BF0D01E4(&v9, v6, a2, v8, MEMORY[0x1E69E7288]);
  }

  return result;
}

uint64_t sub_1BF0D0328(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF0D037C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1BF0D03D0()
{
  result = qword_1ED8ECC30[0];
  if (!qword_1ED8ECC30[0])
  {
    sub_1BF17A6EC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8ECC30);
  }

  return result;
}

void *sub_1BF0D0428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a1 + 16) = 1;
  *a2 = *(a1 + 8);
  return sub_1BF0D0464(a1);
}

void *sub_1BF0D0464(void *result)
{
  result[1] = 0;
  if (*result)
  {

    sub_1BF17A7DC();
  }

  return result;
}

uint64_t PromiseDebouncer.__allocating_init(interval:queue:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  PromiseDebouncer.init(interval:queue:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall PromiseDebouncer.cancel()()
{
  v1 = *v0;

  UnfairLock.lock()();

  v2 = qword_1ED8EA998;
  if (*(v0 + qword_1ED8EA998))
  {

    sub_1BF179C3C();
  }

  *(v0 + v2) = 0;

  swift_beginAccess();
  sub_1BF1794FC();
  type metadata accessor for OnlyOnceDeferredPromise(0, *(v1 + 80), v3, v4);
  OUTLINED_FUNCTION_0_47();
  sub_1BEFE7288(v5, v6, MEMORY[0x1E69695B8]);
  sub_1BF179E3C();
  v7 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BF179E1C();
  swift_getWitnessTable();
  sub_1BF17A41C();

  sub_1BF021498(v0);
}

uint64_t sub_1BF0D0714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v8 = sub_1BF1794FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v47 = v10;
    v15 = qword_1ED8EA9A0;

    UnfairLock.lock()();

    sub_1BF1794EC();
    v16 = qword_1ED8EA9A8;
    swift_beginAccess();
    (*(v9 + 40))(v14 + v16, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    swift_endAccess();
    os_unfair_lock_unlock(*(*(v14 + v15) + 16));
    MEMORY[0x1EEE9AC00](v17, v18);
    *(&v40 - 4) = a5;
    *(&v40 - 3) = a2;
    *(&v40 - 2) = a3;
    v43 = firstly<A>(closure:)(sub_1BF0D1114);
    v50 = qword_1ED8EA990;
    v19 = *(v14 + qword_1ED8EA990);
    v20 = *(v9 + 16);
    v48 = v9 + 16;
    v49 = v20;
    v21 = v51;
    v20(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v8);
    v41 = v8;
    v44 = *(v9 + 80);
    v22 = (v44 + 24) & ~v44;
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    v24 = *(v9 + 32);
    v45 = a5;
    v46 = v24;
    v24(v23 + v22, v12, v8);
    v27 = type metadata accessor for PromiseDebouncer(0, a5, v25, v26);
    v42 = v27;
    v28 = v21;
    v29 = v19;
    Promise.then<A, B>(on:disposeOn:closure:)(v29, v14, sub_1BF0D1144, v23, MEMORY[0x1E69E7CA8] + 8, v27);

    v30 = *(v14 + v50);
    v31 = v41;
    v49(v12, v28, v41);
    v32 = swift_allocObject();
    v33 = v46;
    *(v32 + 16) = v45;
    v33(v32 + v22, v12, v31);
    v34 = v30;
    Promise.error<A>(on:disposeOn:closure:)();
    v43 = v35;

    v36 = *(v14 + v50);
    v49(v12, v51, v31);
    v37 = swift_allocObject();
    v38 = v46;
    *(v37 + 16) = v45;
    v38(v37 + v22, v12, v31);
    v39 = v36;
    Promise.always<A>(on:disposeOn:closure:)();
  }

  return result;
}

void sub_1BF0D0B3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;

  UnfairLock.lock()();

  swift_beginAccess();
  sub_1BF1794FC();
  type metadata accessor for OnlyOnceDeferredPromise(0, *(v4 + 80), v5, v6);
  sub_1BEFE7288(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BF179EAC();
  swift_endAccess();
  if (v7)
  {
    OnlyOnceDeferredPromise.resolve(_:)();
  }

  sub_1BF021498(a2);
}

void sub_1BF0D0C80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;

  UnfairLock.lock()();

  swift_beginAccess();
  sub_1BF1794FC();
  type metadata accessor for OnlyOnceDeferredPromise(0, *(v4 + 80), v5, v6);
  sub_1BEFE7288(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BF179EAC();
  swift_endAccess();
  if (v7)
  {
    OnlyOnceDeferredPromise.reject(_:)();
  }

  sub_1BF021498(a2);
}

void sub_1BF0D0DB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_1BF1794FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];

  UnfairLock.lock()();

  (*(v6 + 16))(v9, a2, v5);
  v13 = 0;
  swift_beginAccess();
  type metadata accessor for OnlyOnceDeferredPromise(255, *(v4 + 80), v10, v11);
  sub_1BEFE7288(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BF179E9C();
  sub_1BF179EBC();
  swift_endAccess();
  sub_1BF021498(a1);
}

uint64_t PromiseDebouncer.deinit()
{
  v1 = qword_1ED8EA9A8;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PromiseDebouncer.__deallocating_deinit()
{
  PromiseDebouncer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0D10A0()
{
  v1 = v0[2];
  v2 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v2);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1BF0D0714(v4, v5, v6, v7, v1);
}

void sub_1BF0D1144(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v5);
  sub_1BF0D0B3C(a1, a2, v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));
}

void sub_1BF0D11C4(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v5);
  v7 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  sub_1BF0D0C80(a1, a2, v7);
}

void sub_1BF0D1240(uint64_t *a1)
{
  v3 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v3);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  sub_1BF0D0DB4(a1, v5);
}

uint64_t BackgroundFetchJournalEntry.reason.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSBackgroundFetchJournalEntry_reason);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t BackgroundFetchJournalEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TSBackgroundFetchJournalEntry_date;
  v4 = sub_1BF1794AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id BackgroundFetchJournalEntry.init(reason:date:)()
{
  OUTLINED_FUNCTION_0_48();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR___TSBackgroundFetchJournalEntry_reason];
  *v5 = v3;
  *(v5 + 1) = v2;
  v6 = OBJC_IVAR___TSBackgroundFetchJournalEntry_date;
  v7 = sub_1BF1794AC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], v0, v7);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(v0, v7);
  return v9;
}

id BackgroundFetchJournalEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundFetchJournalEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BackgroundFetchJournalEntry(uint64_t a1)
{
  result = qword_1EBDCBDC0;
  if (!qword_1EBDCBDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0D18A8(uint64_t a1)
{
  result = sub_1BF1794AC();
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

uint64_t sub_1BF0D1A04()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t DeviceStorageManagerType.purgeUrgency.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  (*(a2 + 8))(a1);
  sub_1BF0D1AA0(a3);
}

void sub_1BF0D1AA0(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  *a1 = *(v2 + 32);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF0D1B00()
{
  v1 = v0;
  v2 = *(v0 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v3 = *(v1 + 32);
  os_unfair_lock_unlock(*(v2 + 16));
  return v3;
}

uint64_t DeviceStorageManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DeviceStorageManager.init()();
  return v0;
}

uint64_t sub_1BF0D1BC4(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v3 = 0;
    sub_1BF179D4C();
  }

  return 0;
}

uint64_t sub_1BF0D1E3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v7 = v5(a2, v6);

  return v7;
}

uint64_t sub_1BF0D1EA4(int a1, uint64_t a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v3 = 0;
    sub_1BF179D4C();
  }

  return 0;
}

void sub_1BF0D2178(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v19 = MEMORY[0x1E69E7CC0];
  v4 = sub_1BEFE90AC(v3);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  *(a1 + 24) = v19;

  v6 = *(a1 + 24);
  v7 = sub_1BEFE90AC(v6);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB53020](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = *(v10 + 24);

    ++v8;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6AB4();
        v9 = v16;
      }

      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        sub_1BF0A6AB4();
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = Strong;
      *(v15 + 40) = v13;
      v8 = v11;
    }
  }

  *a2 = v9;
}

uint64_t DeviceStorageManager.deinit()
{

  return v0;
}

uint64_t DeviceStorageManager.__deallocating_deinit()
{
  DeviceStorageManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

Swift::Int __swiftcall DeviceStorageManager.availableSpace(for:)(TeaFoundation::DeviceStorageDataClass a1)
{
  v1 = a1;
  v2 = sub_1BF1790EC();
  OUTLINED_FUNCTION_1();
  v53 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v51 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v48 - v12;
  sub_1BF014FAC(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v48 - v15;
  v17 = sub_1BF17912C();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v54 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v28 = *v1;
  v29 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v30 = sub_1BF17A4DC();

  if (!*(v30 + 16))
  {

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v49 = v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  (*(v19 + 104))(v23, *MEMORY[0x1E6968F58], v17);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v24);
  sub_1BF17920C();
  sub_1BF014FAC(0, &qword_1EBDCA898, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  if (v28)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    if (v28 == 1)
    {
      v32 = *MEMORY[0x1E695DD50];
      *(inited + 32) = *MEMORY[0x1E695DD50];
      v33 = v32;
      sub_1BF0C95B4(inited);
      v34 = v51;
      sub_1BF17914C();
      v35 = v49;

      v36 = v34;
      sub_1BF1790CC();
    }

    else
    {
      v43 = *MEMORY[0x1E695DD60];
      *(inited + 32) = *MEMORY[0x1E695DD60];
      v44 = v43;
      sub_1BF0C95B4(inited);
      v34 = v52;
      sub_1BF17914C();
      v35 = v49;

      v36 = v34;
      sub_1BF1790BC();
    }

    OUTLINED_FUNCTION_2_28();
    v41 = v34;
    v42 = v35;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    v37 = *MEMORY[0x1E695DD58];
    *(inited + 32) = *MEMORY[0x1E695DD58];
    v38 = v37;
    sub_1BF0C95B4(inited);
    v39 = v50;
    sub_1BF17914C();

    v36 = v39;
    sub_1BF1790DC();
    OUTLINED_FUNCTION_2_28();
    v41 = v39;
    v42 = v49;
  }

  v40(v41, v42);
  v45 = OUTLINED_FUNCTION_1_35();
  v46(v45);
  if (inited)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v36;
}

uint64_t DeviceStorageManager.add(purgeable:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for DisposablePurgeable();
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_1BF009D14(v8, a2);
  v10 = *(v4 + 32);

  UnfairLock.lock()();
  sub_1BF0D29DC(v4, v9);
  os_unfair_lock_unlock(*(v10 + 16));

  a3[3] = v7;
  a3[4] = &off_1F3DBDED0;
  *a3 = v9;
  return result;
}

uint64_t sub_1BF0D29DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x1BFB52290](v3);
  sub_1BF005F5C(*((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  return swift_endAccess();
}

unint64_t sub_1BF0D2AEC()
{
  result = qword_1EBDCBDD0;
  if (!qword_1EBDCBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDD0);
  }

  return result;
}

unint64_t sub_1BF0D2B44()
{
  result = qword_1EBDCBDD8;
  if (!qword_1EBDCBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDD8);
  }

  return result;
}

_BYTE *sub_1BF0D2BD0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t URLHandlerManager.__allocating_init()()
{
  v0 = swift_allocObject();
  URLHandlerManager.init()();
  return v0;
}

uint64_t URLHandlerManager.add<A>(handler:)()
{
  OUTLINED_FUNCTION_5_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = OUTLINED_FUNCTION_0_49(v4, v18);
  v6(v5);
  v7 = *(v1 + 80);
  v8 = OUTLINED_FUNCTION_4_19();
  v11 = sub_1BF10E858(v8, v9, v10);
  OUTLINED_FUNCTION_2_29(v11, v12, v13);
  type metadata accessor for AnyURLHandler(255, v7, v14, v15);
  OUTLINED_FUNCTION_12_1();
  v16 = sub_1BF17A65C();
  OUTLINED_FUNCTION_7_20(v16);
  return swift_endAccess();
}

{
  OUTLINED_FUNCTION_5_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = OUTLINED_FUNCTION_0_49(v4, v18);
  v6(v5);
  v7 = *(v1 + 80);
  v8 = OUTLINED_FUNCTION_4_19();
  v11 = sub_1BF10E8C8(v8, v9, v10);
  OUTLINED_FUNCTION_2_29(v11, v12, v13);
  type metadata accessor for AnyAsyncURLHandler(255, v7, v14, v15);
  OUTLINED_FUNCTION_12_1();
  v16 = sub_1BF17A65C();
  OUTLINED_FUNCTION_7_20(v16);
  return swift_endAccess();
}

uint64_t URLHandlerManager.handle(url:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v101 = a2;
  v106 = 0;
  v6 = *(*v4 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v90[1] = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v102 = v90 - v12;
  v13 = OUTLINED_FUNCTION_40();
  v100 = type metadata accessor for URLHandlerContext(v13, v14, v15, v16);
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_1_16();
  v94 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v98 = (v90 - v24);
  v25 = type metadata accessor for URLHandlerMatch(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  OUTLINED_FUNCTION_1_16();
  v95 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v99 = v90 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v90 - v33;
  sub_1BF17923C();
  OUTLINED_FUNCTION_2_3();
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39, a1, v37);
  type metadata accessor for URLHandlerMatcher(0);
  swift_allocObject();
  v105 = URLHandlerMatcher.init(url:)(v39);
  swift_beginAccess();
  v93 = v4;
  v41 = v4[4];
  v104 = v6;
  v44 = type metadata accessor for AnyURLHandlerProcessor(0, v6, v42, v43);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v45 = sub_1BF17A4EC();
  v109 = v45;
  OUTLINED_FUNCTION_8_19();
  v46 = sub_1BF17A5AC();
  v91 = v8;
  v92 = v18;
  if (v45 != v46)
  {
    v47 = v41 + 32;
    v97 = (v8 + 16);
    v96 = (v18 + 8);
    WitnessTable = 24;
    while (1)
    {
      OUTLINED_FUNCTION_8_19();
      v49 = sub_1BF17A58C();
      sub_1BF17A51C();
      if ((v49 & 1) == 0)
      {
        break;
      }

      v50 = (v47 + 24 * v45);
      v51 = *v50;
      v52 = v50[1];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      sub_1BF17A62C();
      v3 = v106;
      URLHandlerMatcher.match(for:)(v51, v34);
      if (v3)
      {

        v106 = 0;
      }

      else
      {
        v103 = v52;
        v53 = v47;
        v54 = v99;
        sub_1BF0D3BA4(v34, v99);
        v55 = v102;
        v56 = v104;
        (*v97)(v102, v101, v104);
        v106 = 0;
        v3 = v34;
        v57 = v98;
        v58 = v54;
        v47 = v53;
        v59 = v55;
        WitnessTable = 24;
        URLHandlerContext.init(match:clientContext:)(v58, v59, v56, v98);
        sub_1BF10E938(v57, v51, v103);

        v60 = v57;
        v34 = v3;
        (*v96)(v60, v100);
        OUTLINED_FUNCTION_3_22();
        sub_1BF0D3C8C(v3, v61);
      }

      OUTLINED_FUNCTION_8_19();
      v62 = sub_1BF17A5AC();
      v45 = v109;
      if (v109 == v62)
      {
        goto LABEL_8;
      }
    }

    sub_1BF17B23C();
    __break(1u);
    goto LABEL_24;
  }

LABEL_8:

  v47 = v93;
  swift_beginAccess();
  WitnessTable = *(v47 + 16);
  type metadata accessor for AnyURLHandler(0, v104, v63, v64);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v65 = sub_1BF17A4EC();
  v108 = v65;
  if (v65 != sub_1BF17A5AC())
  {
    v66 = (WitnessTable + 32);
    v103 = (v91 + 16);
    v98 = (v92 + 8);
    v47 = v95;
    v67 = v94;
    while (1)
    {
      v44 = sub_1BF17A58C();
      sub_1BF17A51C();
      if ((v44 & 1) == 0)
      {
        break;
      }

      v68 = &v66[24 * v65];
      v69 = *v68;
      v70 = v68[1];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      sub_1BF17A62C();
      v3 = v106;
      URLHandlerMatcher.match(for:)(v69, v47);
      v106 = v3;
      if (v3)
      {

        v106 = 0;
      }

      else
      {
        v3 = v66;
        v71 = v99;
        sub_1BF0D3BA4(v47, v99);
        v72 = v102;
        v73 = v104;
        (*v103)(v102, v101, v104);
        v74 = v71;
        v66 = v3;
        v75 = v72;
        v47 = v95;
        URLHandlerContext.init(match:clientContext:)(v74, v75, v73, v67);
        v76 = OUTLINED_FUNCTION_8_19();
        LOBYTE(v73) = sub_1BF10E960(v76, v77, v70);

        (*v98)(v67, v100);
        OUTLINED_FUNCTION_3_22();
        sub_1BF0D3C8C(v47, v78);
        if (v73)
        {

          goto LABEL_22;
        }
      }

      v79 = sub_1BF17A5AC();
      v65 = v108;
      if (v108 == v79)
      {

        v47 = v93;
        goto LABEL_17;
      }
    }

LABEL_24:
    sub_1BF17B23C();
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_20;
  }

LABEL_17:
  swift_beginAccess();
  v107 = *(v47 + 24);
  v3 = type metadata accessor for AnyAsyncURLHandler(255, v104, v80, v81);
  v44 = sub_1BF17A65C();
  WitnessTable = swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {

    return 0;
  }

  if (qword_1ED8EFB98 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  v83 = *(v47 + 24);
  v106 = qword_1ED8EFC18;
  v107 = v83;
  v84 = v91;
  v85 = v102;
  v86 = v104;
  (*(v91 + 16))(v102, v101, v104);
  v87 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v86;
  *(v88 + 24) = v89;
  (*(v84 + 32))(v88 + v87, v85, v86);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  whenFirst<A, B, C>(on:providers:provide:where:)(v106, &v107, sub_1BF0D3B68, v88, sub_1BF01877C, 0, v3, v44, MEMORY[0x1E69E6370], WitnessTable);

LABEL_22:

  return 1;
}

uint64_t sub_1BF0D3808(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v32 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for URLHandlerContext(0, v9, v8, v9);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v10);
  v12 = v29 - v11;
  sub_1BF0D3C34(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URLHandlerMatch(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v29 - v23;
  v26 = *a1;
  v25 = a1[1];
  v29[1] = a1[2];
  v30 = v25;
  URLHandlerMatcher.match(for:)(v26, v16);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  sub_1BF0D3CEC(v16, v24);
  sub_1BF0D3BA4(v24, v20);
  (*(v32 + 16))(v7, v34, a4);
  URLHandlerContext.init(match:clientContext:)(v20, v7, a4, v12);
  v27 = sub_1BF10E98C(v12, v26, v30);
  (*(v31 + 8))(v12, v33);
  sub_1BF0D3C8C(v24, type metadata accessor for URLHandlerMatch);
  return v27;
}

uint64_t URLHandlerManager.deinit()
{

  return v0;
}

uint64_t URLHandlerManager.__deallocating_deinit()
{
  URLHandlerManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF0D3BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHandlerMatch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF0D3C34(uint64_t a1)
{
  if (!qword_1EBDCABE0)
  {
    type metadata accessor for URLHandlerMatch(255);
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCABE0);
    }
  }
}

uint64_t sub_1BF0D3C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF0D3CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHandlerMatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0D3D50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF17A0AC();
  v4 = v3;
  v5 = sub_1BF17A0AC();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_36(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1BF0D3DC8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7463656A626FLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7463656A626FLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7961727261;
      break;
    case 2:
      v5 = 0x676E69727473;
      break;
    case 3:
      v5 = 0x7265626D756ELL;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1819242338;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1819047278;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x7961727261;
      break;
    case 2:
      v2 = 0x676E69727473;
      break;
    case 3:
      v2 = 0x7265626D756ELL;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1819047278;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_36(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1BF0D3F1C()
{
  OUTLINED_FUNCTION_4_20();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BF17B86C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BF0D3F88(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x75614C7265746661;
    }

    if (v2 == 1)
    {
      v4 = 0x80000001BF18C430;
    }

    else
    {
      v4 = 0xEE00676E6968636ELL;
    }
  }

  else
  {
    v4 = 0x80000001BF18C410;
    v3 = 0xD000000000000013;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x75614C7265746661;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001BF18C430;
    }

    else
    {
      v6 = 0xEE00676E6968636ELL;
    }
  }

  else
  {
    v6 = 0x80000001BF18C410;
    v5 = 0xD000000000000013;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_36(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1BF0D406C(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000072;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_4_20();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_36(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1BF0D40F8(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000006E6FLL;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_4_20();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_36(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1BF0D4188()
{
  OUTLINED_FUNCTION_4_20();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BF17B86C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BF0D41F4(char a1, char a2)
{
  if (qword_1BF1831A0[a1] == qword_1BF1831A0[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BF17B86C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

TeaFoundation::EventTriggerBehavior sub_1BF0D4280@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = EventTriggerBehavior.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF0D42C0@<X0>(uint64_t *a1@<X8>)
{
  result = EventTriggerBehavior.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0D42F4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t EventManager.__allocating_init()()
{
  v0 = swift_allocObject();
  EventManager.init()();
  return v0;
}

uint64_t sub_1BF0D4374(uint64_t a1)
{
  sub_1BEFFB114();
  v1 = sub_1BF17A98C();

  return v1 & 1;
}

uint64_t sub_1BF0D43EC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1BF17A56C();
  if (sub_1BF17A5AC())
  {
    v4 = sub_1BF02C7D0(v3, v2, *(v1 + 88));
  }

  else
  {

    v4 = MEMORY[0x1E69E7CD0];
  }

  return sub_1BF0D42F4(v4);
}

uint64_t EventManager.deinit()
{

  return v0;
}

uint64_t EventManager.__deallocating_deinit()
{
  EventManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BF0D4500()
{
  result = qword_1EBDCBDE0;
  if (!qword_1EBDCBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDE0);
  }

  return result;
}

unint64_t sub_1BF0D4558()
{
  result = qword_1EBDCBDE8;
  if (!qword_1EBDCBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDE8);
  }

  return result;
}

uint64_t sub_1BF0D4630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((sub_1BF17A2AC() & 1) == 0)
  {
    return (*(a4 + 8))(a1, a2, a3, a3, a4);
  }

  return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
}

uint64_t NSProcessInfo.environmentVariable<A>(forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1BEFFF260();
  v8 = v7;
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 environment];

  v11 = sub_1BF179D5C();
  v12 = sub_1BF0898CC(v6, v8, v11);
  v14 = v13;

  if (v14)
  {
    sub_1BF0D4630(v12, v14, a1, a2, a3);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_0_50();

    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

uint64_t sub_1BF0D48B8()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  v4[2] = *(v1 + 104);
  v4[3] = v3;
  v4[4] = v2;
  sub_1BEFFDAA8(0, &qword_1EBDCBDF0, type metadata accessor for WeakPoolObject);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BF0D4A90;
  *(v6 + 24) = v4;
  *(v5 + 16) = sub_1BF0D4A9C;
  *(v5 + 24) = v6;

  return v5;
}

uint64_t sub_1BF0D499C@<X0>(void (*a1)(double)@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_1BF17AE6C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v13 - v9;
  a1(v8);
  v11 = sub_1BF17AE5C();
  result = (*(v6 + 8))(v10, v5);
  *a3 = v11;
  return result;
}

void *sub_1BF0D4A9C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1BF0D4AE4(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF0D4B54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (!a2)
  {
    return 0;
  }

  v6 = ((*(*(*(a3 + 24) - 8) + 64) + v4) & ~v4) + v5;
  if (a2 < 0xFF)
  {
    goto LABEL_20;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v11 < 2)
    {
LABEL_20:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_20;
  }

LABEL_12:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 255;
}

void sub_1BF0D4CB8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t dispatch thunk of RequestSigning.signature(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF0D5008;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1BF0D5008(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1BF0D5188(uint64_t a1)
{
  sub_1BF0B5EA4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReferenceEncodingPool();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BF0D524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BF0B5EA4(0);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ReferenceEncodingContainer(0, a3, v9, v10);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_1BF0D52D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Reference(0, v6, a3, a4);
  v8 = (a1 + *(v7 + 32));
  v9 = v8[1];
  v17 = *v8;
  v18 = v9;
  v20 = 0;
  sub_1BF0B5EA4(0);
  sub_1BF0D5440();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17B69C();

  if (!v4)
  {
    v16 = v6;
    v11 = a1 + *(v7 + 28);
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v17 = *v11;
    v18 = v12;
    v19 = v14;
    v20 = 1;
    sub_1BF0D5494();
    sub_1BF17B69C();
    v15 = v8[1];
    v17 = *v8;
    v18 = v15;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v14)
    {
      sub_1BF175DD8(a1, &v17, v13, v16);
    }

    else
    {
      sub_1BF175D00(a1, &v17, v13, v12, v16);
    }
  }

  return result;
}

unint64_t sub_1BF0D5440()
{
  result = qword_1ED8EABB8[0];
  if (!qword_1ED8EABB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EABB8);
  }

  return result;
}

unint64_t sub_1BF0D5494()
{
  result = qword_1ED8EA3F0;
  if (!qword_1ED8EA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA3F0);
  }

  return result;
}

uint64_t ts_debug_log(_:log:)(uint64_t (*a1)(void), uint64_t a2, NSObject *a3)
{
  v5 = sub_1BF17ACAC();
  result = os_log_type_enabled(a3, v5);
  if (result)
  {
    v7 = sub_1BF17ACAC();
    sub_1BF071C70(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BF17DEF0;
    v9 = a1();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1BF071CD8();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1BF1797CC("%@", 2, 2, &dword_1BEFE0000, a3, v7, v8);
  }

  return result;
}

uint64_t sub_1BF0D5620()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1EBDCCE30);
  OUTLINED_FUNCTION_3_24();
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1ED8EFC00);
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_1_39();
}

uint64_t ReferenceType.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF17B91C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t ReferenceType.hashValue.getter()
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

uint64_t ReferenceType.description.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t SignpostEntry.object.getter@<X0>(uint64_t a2@<X8>)
{
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t SignpostEntry.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t SignpostEntry.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t SignpostEntry.comment.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v2;
}

uint64_t sub_1BF0D59D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  (*(v16 + 32))(a8, a1);
  v19 = type metadata accessor for SignpostEntry(0, a7, v17, v18);
  *(a8 + v19[7]) = a2;
  v20 = v19[8];
  v21 = sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  v23 = *(v22 + 32);
  v23(a8 + v20, a3, v21);
  result = (v23)(a8 + v19[9], a4, v21);
  v25 = (a8 + v19[10]);
  *v25 = a5;
  v25[1] = a6;
  return result;
}

double SignpostEntry.shortDescription.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 + 16);
  v5 = sub_1BF17AE6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - v8;
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF07CD5C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF1805A0;
  strcpy((inited + 32), "timeInterval");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v14 = SignpostEntry.timeInterval.getter(a1);
  v15 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v14;
  *(inited + 72) = v15;
  *(inited + 80) = 0x746E656D6D6F63;
  *(inited + 88) = 0xE700000000000000;
  v16 = (v2 + *(a1 + 40));
  v17 = v16[1];
  v18 = MEMORY[0x1E69E6158];
  *(inited + 96) = *v16;
  *(inited + 104) = v17;
  *(inited + 120) = v18;
  *(inited + 128) = 0x74736F706E676973;
  *(inited + 136) = 0xE900000000000073;
  v19 = *(v2 + *(a1 + 28));
  type metadata accessor for Signpost(255, v4, v20, v21);
  *(inited + 168) = sub_1BF17A65C();
  *(inited + 144) = v19;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v22 = sub_1BF179DAC();
  ShortDescription.init(name:_:)(0x7972746E45, 0xE500000000000000, v22, &v39);
  (*(v6 + 16))(v9, v2, v5);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v25 = v36;
    v26 = v35;
    (*(v36 + 32))(v35, v9, v4);
    v38[3] = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v25 + 16))(boxed_opaque_existential_0, v26, v4);
    type metadata accessor for ShortDescription(0, a1, v28, v29);
    ShortDescription.subscript.setter(v38, 0x7463656A626FLL, 0xE600000000000000);
    (*(v25 + 8))(v26, v4);
  }

  v30 = v39;
  v31 = type metadata accessor for ShortDescription(0, a1, v23, v24);
  v32 = v37;
  *(v37 + 24) = v31;
  *(v32 + 32) = &protocol witness table for ShortDescription<A>;
  *v32 = v30;
  result = *&v40;
  *(v32 + 8) = v40;
  return result;
}

uint64_t sub_1BF0D5E60(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF0D5E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ShortDescribable.description.getter(a1, WitnessTable);
}

uint64_t sub_1BF0D5EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1BF17AE6C();
  if (v5 <= 0x3F)
  {
    type metadata accessor for Signpost(255, v1, v3, v4);
    result = sub_1BF17A65C();
    if (v6 <= 0x3F)
    {
      result = sub_1BF1794AC();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF0D5FB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  result = sub_1BF1794AC();
  v10 = *(result - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  v15 = *(v10 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
LABEL_33:
    if (v8 != v13)
    {
      v23 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((v23 + v15 + 8) & ~v15, v11, result);
      }

      else
      {
        v24 = *v23;
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }

    if (v7 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v16 = ((*(*(result - 8) + 64) + ((*(*(result - 8) + 64) + v15 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    case 2:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }

LABEL_29:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        LODWORD(v17) = *a1;
      }

      result = v13 + (v17 | v22) + 1;
      break;
    default:
      goto LABEL_33;
  }

  return result;
}

void sub_1BF0D6214(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1BF1794AC();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v10 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 64);
  if (!v9)
  {
    ++v17;
  }

  v18 = *(v13 + 80);
  v19 = ((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a3 - v16 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v12 = v21;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v16)
  {
    switch(v12)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_38;
      default:
LABEL_38:
        if (!a2)
        {
          return;
        }

LABEL_39:
        if (v10 == v16)
        {
          v24 = (a2 + 1);
          v25 = a1;
          v14 = v9;
          v11 = v7;
        }

        else
        {
          v26 = ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v27 = (a2 - 1);
            }

            *v26 = v27;
            return;
          }

          v25 = ((v26 + v18 + 8) & ~v18);
          v24 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v24, v14, v11);
        break;
    }
  }

  else
  {
    if (((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v16 + a2;
      bzero(a1, v19);
      *a1 = v23;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v19) = v22;
        break;
      case 2:
        *(a1 + v19) = v22;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v19) = v22;
        break;
      default:
        return;
    }
  }
}

void -= infix<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  v29 = OUTLINED_FUNCTION_25_7(v4, v5, v2, v0);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v27 = v16;
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_17_2();
  v18 = sub_1BF17A4EC();
  v33 = v18;
  OUTLINED_FUNCTION_17_2();
  if (v18 == sub_1BF17A5AC())
  {
LABEL_2:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v28 = v13 + 16;
  v19 = (v7 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_17_2();
    v20 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = OUTLINED_FUNCTION_16_9();
    v22(v21);
LABEL_6:
    OUTLINED_FUNCTION_17_7();
    sub_1BF17A62C();
    sub_1BF179E9C();
    sub_1BF179D7C();
    (*v19)(v11, v29);
    (*(v13 + 8))(v17, v3);
    OUTLINED_FUNCTION_17_2();
    if (v33 == sub_1BF17A5AC())
    {
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_17_7();
  v23 = sub_1BF17B23C();
  if (v27 == 8)
  {
    v32 = v23;
    v24 = OUTLINED_FUNCTION_16_9();
    v25(v24);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1BF0D6728(uint64_t a1)
{
  v103 = type metadata accessor for AuthToken(0);
  v2 = OUTLINED_FUNCTION_6_3(v103);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  OUTLINED_FUNCTION_1_16();
  v93 = v5;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_10_21();
  v92 = v8;
  v106 = sub_1BF17923C();
  v9 = OUTLINED_FUNCTION_6_3(v106);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  OUTLINED_FUNCTION_1_16();
  v97 = v13;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_10_21();
  v98 = v16;
  OUTLINED_FUNCTION_3_25();
  sub_1BF0D7A44(0, v17, v18);
  v20 = OUTLINED_FUNCTION_68(v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_1_16();
  v95 = v22;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v87 - v25;
  OUTLINED_FUNCTION_2_32();
  sub_1BF0D7A44(0, v27, v28);
  v30 = OUTLINED_FUNCTION_68(v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_1_16();
  v101 = v32;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_10_21();
  v107 = v35;
  sub_1BF0D7A98(0);
  v100 = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_2_0();
  v108 = (v40 - v39);
  v41 = a1 + 64;
  OUTLINED_FUNCTION_9_20();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  v94 = (v11 + 32);
  v90 = (v11 + 16);
  v88 = v11;
  v91 = (v11 + 8);
  v105 = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v47 = 0;
  v96 = MEMORY[0x1E69E7CC8];
  v99 = v46;
  v89 = v26;
  while (v44)
  {
    v48 = v26;
LABEL_7:
    v50 = __clz(__rbit64(v44)) | (v47 << 6);
    v51 = *(v105 + 56);
    v52 = (*(v105 + 48) + 16 * v50);
    v53 = *v52;
    v54 = v52[1];
    v104 = *(v102 + 72);
    v55 = *(v100 + 48);
    v56 = v108;
    sub_1BF0A8AC8(v51 + v104 * v50, v108 + v55);
    *v56 = v53;
    v56[1] = v54;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v57 = v107;
    sub_1BF1791FC();
    sub_1BF0A8AC8(v56 + v55, v48);
    OUTLINED_FUNCTION_127();
    v58 = v103;
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v103);
    v62 = v101;
    sub_1BF0D7B04(v57, v101, &qword_1ED8EFC20, MEMORY[0x1E6968FB0]);
    v63 = v106;
    if (__swift_getEnumTagSinglePayload(v62, 1, v106) == 1)
    {
      OUTLINED_FUNCTION_3_25();
      sub_1BF0D7B68();
      sub_1BF0D7B68();
      sub_1BF0D7B68();
      v26 = v48;
    }

    else
    {
      v64 = v98;
      (*v94)(v98, v62, v63);
      v65 = v48;
      v26 = v48;
      v66 = v95;
      sub_1BF0D7B04(v65, v95, &qword_1ED8E9CB8, type metadata accessor for AuthToken);
      if (__swift_getEnumTagSinglePayload(v66, 1, v58) == 1)
      {
        (*v91)(v64, v63);
        sub_1BF0D7B68();
        OUTLINED_FUNCTION_2_32();
        sub_1BF0D7B68();
      }

      else
      {
        v67 = v92;
        sub_1BF0A8A64(v66, v92);
        v68 = *v90;
        (*v90)(v97, v64, v63);
        sub_1BF0A8AC8(v67, v93);
        v69 = v96;
        swift_isUniquelyReferenced_nonNull_native();
        v109 = v69;
        sub_1BF082148();
        if (__OFADD__(*(v69 + 16), (v71 & 1) == 0))
        {
          goto LABEL_26;
        }

        v72 = v70;
        v73 = v71;
        sub_1BF0D7C0C(0);
        if (sub_1BF17B43C())
        {
          sub_1BF082148();
          v76 = v106;
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_28;
          }

          v72 = v74;
        }

        else
        {
          v76 = v106;
        }

        v77 = v109;
        v96 = v109;
        if (v73)
        {
          v78 = OUTLINED_FUNCTION_20_9();
          sub_1BF0D7C88(v78, v79);
        }

        else
        {
          *(v109 + 8 * (v72 >> 6) + 64) |= 1 << v72;
          v68(*(v77 + 48) + *(v88 + 72) * v72, v97, v76);
          v80 = OUTLINED_FUNCTION_20_9();
          sub_1BF0A8A64(v80, v81);
          v82 = *(v77 + 16);
          v83 = __OFADD__(v82, 1);
          v84 = v82 + 1;
          if (v83)
          {
            goto LABEL_27;
          }

          *(v77 + 16) = v84;
        }

        v85 = *v91;
        (*v91)(v97, v76);
        OUTLINED_FUNCTION_6_23();
        sub_1BF0D7BB8();
        v85(v98, v76);
        OUTLINED_FUNCTION_3_25();
        v26 = v89;
        sub_1BF0D7B68();
        OUTLINED_FUNCTION_2_32();
      }

      sub_1BF0D7B68();
    }

    v46 = v99;
    v44 &= v44 - 1;
    sub_1BF0D7BB8();
  }

  while (1)
  {
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v49 >= v46)
    {

      return v96;
    }

    v44 = *(v41 + 8 * v49);
    ++v47;
    if (v44)
    {
      v48 = v26;
      v47 = v49;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF0D6E28(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v72 = a5;
  v73 = a6;
  v74 = a4;
  v75 = a3;
  v65 = *(a8 - 8);
  v66 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v64 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v63 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v69 = v61 - v19;
  v67 = v20;
  v21 = sub_1BF17AE6C();
  v71 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v61 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v61 - v31;
  v70 = a7;
  v33 = sub_1BF17AE6C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v61 - v40;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = v76;
  result = (v75)(v41, v32, a2, a2 + *(TupleTypeMetadata2 + 48));
  if (!v43)
  {
    v74 = v24;
    v75 = v28;
    v76 = 0;
    v45 = v69;
    v46 = v71;
    (*(v34 + 16))(v37, v41, v33);
    v47 = v70;
    if (__swift_getEnumTagSinglePayload(v37, 1, v70) == 1)
    {
      (*(v46 + 8))(v32, v21);
      v48 = *(v34 + 8);
      v48(v41, v33);
      return (v48)(v37, v33);
    }

    else
    {
      v72 = v41;
      v73 = v33;
      v49 = v68;
      v50 = v45;
      (*(v68 + 32))(v45, v37, v47);
      v51 = v46;
      v52 = *(v46 + 16);
      v53 = v75;
      v52(v75, v32, v21);
      v54 = v67;
      if (__swift_getEnumTagSinglePayload(v53, 1, v67) == 1)
      {
        (*(v49 + 8))(v50, v47);
        v55 = *(v51 + 8);
        v55(v32, v21);
        (*(v34 + 8))(v72, v73);
        return (v55)(v53, v21);
      }

      else
      {
        v61[1] = a10;
        v62 = v21;
        v57 = v64;
        v56 = v65;
        (*(v65 + 32))(v64, v53, v54);
        v58 = *(v49 + 16);
        v75 = v32;
        v58(v63, v50, v47);
        v59 = v49;
        v60 = v74;
        (*(v56 + 16))(v74, v57, v54);
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v54);
        sub_1BF179E9C();
        sub_1BF179EBC();
        (*(v56 + 8))(v57, v54);
        (*(v59 + 8))(v50, v47);
        (*(v71 + 8))(v75, v62);
        return (*(v34 + 8))(v72, v73);
      }
    }
  }

  return result;
}

uint64_t sub_1BF0D73A0()
{
  v1 = OUTLINED_FUNCTION_14_1();
  v2 = type metadata accessor for AuthToken(v1);
  v3 = OUTLINED_FUNCTION_6_3(v2);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v51 - v10;
  sub_1BF0D7CEC(0);
  v56 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v60 = v16 - v15;
  v17 = v0 + 64;
  OUTLINED_FUNCTION_9_20();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v58 = v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC8];
  v52 = v22;
  v53 = v0 + 64;
  v54 = v11;
  v55 = v7;
  if (v20)
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v20)) | (v23 << 6);
      v27 = v58;
      v28 = *(v58 + 48);
      sub_1BF17923C();
      OUTLINED_FUNCTION_12();
      v30 = v28 + *(v29 + 72) * v26;
      v31 = v60;
      (*(v29 + 16))(v60, v30);
      v32 = *(v27 + 56);
      v59 = *(v57 + 72);
      v33 = *(v56 + 48);
      sub_1BF0A8AC8(v32 + v59 * v26, v31 + v33);
      v34 = sub_1BF17913C();
      v36 = v35;
      sub_1BF0A8AC8(v31 + v33, v11);
      sub_1BF0A8AC8(v11, v7);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v61 = v24;
      v37 = sub_1BF014CA8();
      if (__OFADD__(*(v24 + 16), (v38 & 1) == 0))
      {
        break;
      }

      v39 = v37;
      v7 = v38;
      sub_1BF0D7D60(0);
      if (sub_1BF17B43C())
      {
        v40 = sub_1BF014CA8();
        if ((v7 & 1) != (v41 & 1))
        {
          goto LABEL_20;
        }

        v39 = v40;
      }

      v24 = v61;
      if (v7)
      {
        v42 = OUTLINED_FUNCTION_12_15();
        sub_1BF0D7C88(v42, v43);
      }

      else
      {
        *(v61 + 8 * (v39 >> 6) + 64) |= 1 << v39;
        v44 = (*(v24 + 48) + 16 * v39);
        *v44 = v34;
        v44[1] = v36;
        v45 = OUTLINED_FUNCTION_12_15();
        sub_1BF0A8A64(v45, v46);
        v47 = *(v24 + 16);
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_19;
        }

        *(v24 + 16) = v49;
      }

      v20 &= v20 - 1;
      OUTLINED_FUNCTION_6_23();
      v11 = v54;
      sub_1BF0D7BB8();

      sub_1BF0D7BB8();
      v22 = v52;
      v17 = v53;
      if (!v20)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return v24;
      }

      v20 = *(v17 + 8 * v25);
      ++v23;
      if (v20)
      {
        v23 = v25;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF0D7700(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a3;
  v37 = a1;
  v13 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v34 - v15;
  v36 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a7;
  v35 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v34 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = v40;
  result = v39(v28, v20, a2, a2 + *(TupleTypeMetadata2 + 48));
  if (!v30)
  {
    v40 = a10;
    v32 = v35;
    (*(v35 + 16))(v24, v28, v38);
    v33 = v36;
    (*(v36 + 16))(v16, v20, a8);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, a8);
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*(v33 + 8))(v20, a8);
    return (*(v32 + 8))(v28, v38);
  }

  return result;
}

void sub_1BF0D7A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF0D7A98(uint64_t a1)
{
  if (!qword_1ED8E9C78)
  {
    type metadata accessor for AuthToken(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8E9C78);
    }
  }
}

uint64_t sub_1BF0D7B04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BF0D7A44(0, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF0D7B68()
{
  v1 = OUTLINED_FUNCTION_14_1();
  sub_1BF0D7A44(v1, v2, v3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1BF0D7BB8()
{
  v1 = OUTLINED_FUNCTION_14_1();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1BF0D7C0C(uint64_t a1)
{
  if (!qword_1ED8E9C08)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken(255);
    sub_1BF0A8200();
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9C08);
    }
  }
}

uint64_t sub_1BF0D7C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BF0D7CEC(uint64_t a1)
{
  if (!qword_1ED8EAD00)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EAD00);
    }
  }
}

void sub_1BF0D7D60(uint64_t a1)
{
  if (!qword_1ED8E9BD0)
  {
    type metadata accessor for AuthToken(255);
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9BD0);
    }
  }
}

uint64_t ScenePhaseManager.insertObserver(_:before:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v10 = sub_1BEFE90AC(v9);
  if (!v10)
  {
    return ScenePhaseManager.addObserver(_:)(a2, a4);
  }

  v11 = v10;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a3)
      {

        v16 = _s13TeaFoundation18DisposableObserverCMa_0();
        swift_allocObject();
        v17 = swift_unknownObjectRetain();
        v18 = sub_1BF009D14(v17, a2);
        swift_beginAccess();
        sub_1BF04C6E8(i, *(v5 + 16));

        sub_1BF0C4130(i, i, v18);
        result = swift_endAccess();
        a4[3] = v16;
        a4[4] = &off_1F3DBE6D8;
        *a4 = v18;
        return result;
      }
    }

    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 == v11)
    {

      return ScenePhaseManager.addObserver(_:)(a2, a4);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t ScenePhaseManager.removeObserver(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BEFE90AC(v3);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_unknownObjectRelease();
      if (v8 == a1)
      {

        swift_beginAccess();
        sub_1BF0BDF3C(i);
        swift_endAccess();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t ScenePhaseManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ScenePhase.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF0D8210()
{
  result = qword_1EBDCBDF8;
  if (!qword_1EBDCBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScenePhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for HttpMethod(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0D8450()
{
  result = qword_1EBDCBE00;
  if (!qword_1EBDCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBE00);
  }

  return result;
}

void sub_1BF0D8518(uint64_t a1, void *a2)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = sub_1BF17A77C();
    v8 = a2;
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_1BF17A75C();
    v9 = v8;
    v10 = sub_1BF17A74C();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_1BF089AC0();
  }
}

uint64_t sub_1BF0D8628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_1BF17A75C();
  v4[8] = sub_1BF17A74C();
  v6 = sub_1BF17A6AC();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BF0D86C0, v6, v5);
}

uint64_t sub_1BF0D86C0()
{
  sub_1BEFE6A78(v0[7] + OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_resolver, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = type metadata accessor for DiagnosticFileCollector(0);
  v4 = (*(v2 + 16))(v3, v3, v1, v2);
  v0[11] = v4;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v5 = sub_1BF1797DC();
    v6 = sub_1BF17AC9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BEFE0000, v5, v6, "Received diagnostic dump notification; collecting files from providers", v7, 2u);
      MEMORY[0x1BFB547B0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1BF0D8884;

    return DiagnosticFileCollector.collectDiagnosticFiles()();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1BF0D8884()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BF0D89B8, v3, v2);
}

uint64_t sub_1BF0D89B8()
{
  v1 = *(v0 + 88);

  sub_1BF0D8A24(v2);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1BF0D8A24(uint64_t a1)
{
  v1 = sub_1BF1797DC();
  v2 = sub_1BF17AC9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BEFE0000, v1, v2, "Posting diagnostic files notification", v3, 2u);
    MEMORY[0x1BFB547B0](v3, -1, -1);
  }

  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = sub_1BF17A07C();
  CFNotificationCenterPostNotification(v4, v5, 0, 0, 1u);
}

void sub_1BF0D8B24(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1BF0D8518(a1, a2);
}

id DiagnosticFileCollectionCoordinator.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id DiagnosticFileCollectionCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BF0D8D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BF0CF3BC;

  return sub_1BF0D8628(a1, v4, v5, v6);
}

uint64_t sub_1BF0D8E3C(char a1, void *a2)
{
  if (a2[2] && (sub_1BF17BB6C(), sub_1BF0C795C(a1), sub_1BF179F3C(), , sub_1BF17BB9C(), OUTLINED_FUNCTION_1_40(), v6 = v5 & ~v4, ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) != 0))
  {
    v7 = ~v4;
    v8 = qword_1BF183840[a1];
    while (qword_1BF183840[*(a2[6] + v6)] != v8)
    {
      v9 = sub_1BF17B86C();
      swift_bridgeObjectRelease_n();
      if ((v9 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          continue;
        }
      }

      return v9 & 1;
    }

    swift_bridgeObjectRelease_n();
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_1BF0D8F74(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  OUTLINED_FUNCTION_1_40();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1BF17B86C();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_1BF0D9058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_1BF17BB5C();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

BOOL sub_1BF0D90E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF1794FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BEFE72D0(qword_1ED8F0138, MEMORY[0x1E69695B8]);
  v18 = a1;
  sub_1BF179F1C();
  v9 = a2 + 56;
  v19 = a2;
  OUTLINED_FUNCTION_1_40();
  v12 = ~v11;
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v9 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_1BEFE72D0(&qword_1ED8F0130, MEMORY[0x1E69695C8]);
    v16 = sub_1BF17A05C();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

Swift::Bool __swiftcall Quantifier.matches(_:)(Swift::Int a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v5 = v2 < a1;
      goto LABEL_12;
    case 2:
      v5 = v2 > a1 || *(v1 + 8) < a1;
LABEL_12:
      v4 = !v5;
      break;
    case 3:
      v6 = v2 == a1;
LABEL_8:
      v4 = v6;
      break;
    case 4:
      v4 = sub_1BF0D9058(a1, v2);
      break;
    case 5:
      v4 = 1;
      switch(v2)
      {
        case 1:
          v4 = a1 > 0;
          break;
        case 2:
          v4 = a1 < 1;
          break;
        case 3:
          v4 = a1 & 1;
          break;
        case 4:
          v6 = (a1 & 1) == 0;
          goto LABEL_8;
        default:
          return v4 & 1;
      }

      break;
    default:
      v4 = v2 <= a1;
      break;
  }

  return v4 & 1;
}

uint64_t Quantifier.description.getter()
{
  switch(*(v0 + 16))
  {
    case 1:
      v1 = 0x2074736F6D207461;
      goto LABEL_7;
    case 2:
      sub_1BF17B1EC();

      strcpy(v6, "anywhere from ");
      HIBYTE(v6[1]) = -18;
      v4 = sub_1BF17B6FC();
      MEMORY[0x1BFB52000](v4);

      MEMORY[0x1BFB52000](544175136, 0xE400000000000000);
      goto LABEL_9;
    case 3:
      v1 = 0x20796C7463617865;
LABEL_7:
      v2 = 0xE800000000000000;
      goto LABEL_8;
    case 4:
      strcpy(v6, "one of ");
      v6[1] = 0xE700000000000000;
      v3 = sub_1BF17A8FC();
      goto LABEL_10;
    case 5:
      result = 7958113;
      switch(*v0)
      {
        case 1:
          result = 1701670771;
          break;
        case 2:
          result = 1701736302;
          break;
        case 3:
          result = 6579311;
          break;
        case 4:
          result = 1852143205;
          break;
        default:
          return result;
      }

      return result;
    default:
      v1 = 0x747361656C207461;
      v2 = 0xE900000000000020;
LABEL_8:
      v6[0] = v1;
      v6[1] = v2;
LABEL_9:
      v3 = sub_1BF17B6FC();
LABEL_10:
      MEMORY[0x1BFB52000](v3);

      return v6[0];
  }
}