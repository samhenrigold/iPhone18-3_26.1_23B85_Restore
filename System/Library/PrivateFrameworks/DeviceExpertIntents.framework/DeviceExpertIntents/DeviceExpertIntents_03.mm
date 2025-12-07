uint64_t sub_1DA325C98()
{
  if (static DeviceExpertPreferences.shouldForceContextualRewriteInLowPowerMode.getter())
  {
    return 0;
  }

  if (qword_1EE109938 != -1)
  {
    swift_once();
  }

  sub_1DA31A8A4(&v2);
  if (v2 == 2)
  {
    return 0;
  }

  if (v2)
  {
    v1 = sub_1DA34D160();

    return v1 & 1;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1DA325D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA325DC0, 0, 0);
}

uint64_t sub_1DA325DC0()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = type metadata accessor for ContextualRewriteResult(0);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_1DA325EB8;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, v3, v3, 0, 0, &unk_1DA352398, v4, v3);
}

uint64_t sub_1DA325EB8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15();

    return v10();
  }
}

uint64_t sub_1DA325FD8()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA326034()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_9(v2);
  *v3 = v4;
  v3[1] = sub_1DA323DD0;
  v5 = OUTLINED_FUNCTION_5_13();

  return sub_1DA325D98(v5, v6, v7, v8, v1);
}

uint64_t sub_1DA3260D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6010, &unk_1DA3523A0);
  v6[8] = swift_task_alloc();
  v7 = sub_1DA34BFB0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA326218, 0, 0);
}

uint64_t sub_1DA326218()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  sub_1DA34CD30();
  OUTLINED_FUNCTION_29_5();
  (*(v3 + 16))(v2, v5, v4);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v6;
  (*(v3 + 32))(&v8[v7], v2, v4);

  sub_1DA326C90(v1, &unk_1DA3523B8, v8);
  sub_1DA2E7E4C(v1, &qword_1ECBA5B98, &qword_1DA34F440);
  OUTLINED_FUNCTION_29_5();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v12;
  v9[5] = v13;
  sub_1DA326C90(v1, &unk_1DA3523C8, v9);
  sub_1DA2E7E4C(v1, &qword_1ECBA5B98, &qword_1DA34F440);
  v10 = swift_task_alloc();
  v0[14] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6018, &qword_1DA3523D0);
  *v10 = v0;
  v10[1] = sub_1DA326428;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1DA326428()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA326524()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 64);
  v2 = type metadata accessor for ContextualRewriteResult(0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DA327E50(v1, *(v0 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
    sub_1DA34CD50();

    OUTLINED_FUNCTION_15();

    return v4();
  }

  return result;
}

uint64_t sub_1DA32660C()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA32667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1DA2E8A9C;

  return sub_1DA32671C(a1, a5);
}

uint64_t sub_1DA32671C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA326748()
{
  OUTLINED_FUNCTION_59();
  v1 = *(sub_1DA34BA80() + 16);

  if (v1)
  {
    if (qword_1EE109790 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE10E038;

    return MEMORY[0x1EEE6DFA0](sub_1DA326934, v2, 0);
  }

  else
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    v3 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v3, qword_1EE109080);
    v4 = sub_1DA34C8C0();
    v5 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_6();
    }

    v12 = *(v0 + 16);
    v11 = *(v0 + 24);

    sub_1DA34BFB0();
    OUTLINED_FUNCTION_2_16();
    (*(v13 + 16))(v12, v11);
    if (qword_1EE109470 != -1)
    {
      OUTLINED_FUNCTION_12_7(&qword_1EE109470);
    }

    v14 = *(v0 + 16);
    v15 = v14 + *(type metadata accessor for ContextualRewriteResult(0) + 20);
    v16 = byte_1EE1094A8;
    v18 = xmmword_1EE109488;
    v17 = xmmword_1EE109498;
    *v15 = xmmword_1EE109478;
    *(v15 + 16) = v18;
    *(v15 + 32) = v17;
    *(v15 + 48) = v16;
    OUTLINED_FUNCTION_15();

    return v19();
  }
}

uint64_t sub_1DA326934()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 40) = sub_1DA310E4C() & 1;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA326998()
{
  OUTLINED_FUNCTION_59();
  if (*(v0 + 40) == 1)
  {
    if (qword_1EE109A28 != -1)
    {
      swift_once();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 32) = v1;
    *v1 = v2;
    v1[1] = sub_1DA326BB0;

    return sub_1DA314F34();
  }

  else
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    v4 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v4, qword_1EE109080);
    v5 = sub_1DA34C8C0();
    v6 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_6();
    }

    v13 = *(v0 + 16);
    v12 = *(v0 + 24);

    sub_1DA34BFB0();
    OUTLINED_FUNCTION_2_16();
    (*(v14 + 16))(v13, v12);
    if (qword_1EE109430 != -1)
    {
      OUTLINED_FUNCTION_0_18(&qword_1EE109430);
    }

    v15 = *(v0 + 16);
    v16 = v15 + *(type metadata accessor for ContextualRewriteResult(0) + 20);
    v17 = byte_1EE109468;
    v19 = xmmword_1EE109448;
    v18 = xmmword_1EE109458;
    *v16 = xmmword_1EE109438;
    *(v16 + 16) = v19;
    *(v16 + 32) = v18;
    *(v16 + 48) = v17;
    OUTLINED_FUNCTION_15();

    return v20();
  }
}

uint64_t sub_1DA326BB0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1DA326C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  sub_1DA302E18(a1, v17 - v8);
  v10 = sub_1DA34CD30();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1DA2E7E4C(v9, &qword_1ECBA5B98, &qword_1DA34F440);
  }

  else
  {
    sub_1DA34CD20();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_1DA34CCF0();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  type metadata accessor for ContextualRewriteResult(0);
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

uint64_t sub_1DA326E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1DA34CF80();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA326F0C, 0, 0);
}

uint64_t sub_1DA326F0C()
{
  OUTLINED_FUNCTION_16();
  sub_1DA34D1B0();
  v1 = OUTLINED_FUNCTION_28_4();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DA326FB8;
  v3 = v0[2];
  v2 = v0[3];

  return v5(v3, v2, 0, 0, 1);
}

uint64_t sub_1DA326FB8()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  *(v10 + 64) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA327110()
{
  OUTLINED_FUNCTION_59();
  sub_1DA327EB4();
  swift_allocError();
  swift_willThrow();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA327198()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA3271F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = sub_1DA34C830();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3272C4, 0, 0);
}

uint64_t sub_1DA3272C4()
{
  OUTLINED_FUNCTION_2_6();
  v1 = sub_1DA34C850();
  v2 = sub_1DA34CDF0();
  result = sub_1DA34CE10();
  if (result)
  {
    v4 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_1DA34C810();
        _os_signpost_emit_with_name_impl(&dword_1DA2E0000, v1, v2, v6, v4, "", v5, 2u);
        OUTLINED_FUNCTION_6();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  sub_1DA34C8A0();
  swift_allocObject();
  *(v0 + 104) = sub_1DA34C890();
  v11 = (v7 + *v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 112) = v8;
  *v8 = v9;
  v8[1] = sub_1DA3274C4;
  v10 = *(v0 + 24);

  return v11(v10);
}

uint64_t sub_1DA3274C4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3275C0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA327628()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA327690@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA327724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DA34CF70();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DA327824, 0, 0);
}

uint64_t sub_1DA327824()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1DA34CF80();
  v5 = sub_1DA327F08(&qword_1EE108FD0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1DA34D190();
  sub_1DA327F08(&qword_1EE108FD8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1DA34CF90();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DA3279B4;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1DA3279B4()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_15();

    return v14();
  }
}

uint64_t sub_1DA327B54()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA327BB8(uint64_t a1)
{
  v2 = type metadata accessor for ContextualRewriteResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA327C14()
{
  OUTLINED_FUNCTION_2_6();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_9(v9);
  *v10 = v11;
  v10[1] = sub_1DA323DD0;

  return sub_1DA3260D8(v4, v2, v5, v6, v8, v7);
}

uint64_t sub_1DA327CD0()
{
  OUTLINED_FUNCTION_2_6();
  sub_1DA34BFB0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v1[1] = sub_1DA323DD0;
  v3 = OUTLINED_FUNCTION_5_13();

  return sub_1DA32667C(v3, v4, v5, v6, v7);
}

uint64_t sub_1DA327DAC()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_9(v2);
  *v3 = v4;
  v3[1] = sub_1DA2E8A9C;
  v5 = OUTLINED_FUNCTION_5_13();

  return sub_1DA326E4C(v5, v6, v7, v8, v1);
}

uint64_t sub_1DA327E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualRewriteResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA327EB4()
{
  result = qword_1EE109798[0];
  if (!qword_1EE109798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE109798);
  }

  return result;
}

uint64_t sub_1DA327F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for RewriteTimeoutError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA328000()
{
  result = qword_1ECBA6020;
  if (!qword_1ECBA6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6020);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_11_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DA300D78(0xD000000000000028, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_8()
{

  JUMPOUT(0x1DA74B3A0);
}

unint64_t OUTLINED_FUNCTION_21_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1DA300D78(0xD000000000000028, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_23_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  return sub_1DA3386C0(v2, v3, v4, v5, v6);
}

BOOL OUTLINED_FUNCTION_25_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_4()
{
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t sub_1DA32820C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6040, &qword_1DA352558);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v26 - v3);
  v33 = type metadata accessor for AttributionItem(0);
  OUTLINED_FUNCTION_0();
  v29 = v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v31 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v26 - v9;
  v10 = sub_1DA34BA40();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = *(a1 + 16);

  v18 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  while (v17 != v18)
  {
    (*(v12 + 16))(v15, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v10);
    sub_1DA328514(v4);
    (*(v12 + 8))(v15, v10);
    if (__swift_getEnumTagSinglePayload(v4, 1, v33) == 1)
    {
      sub_1DA2E7E4C(v4, &qword_1ECBA6040, &qword_1DA352558);
      ++v18;
    }

    else
    {
      sub_1DA2FC9FC(v4, v30);
      sub_1DA2FC9FC(v30, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA2FBF54();
        v32 = v23;
      }

      v19 = *(v32 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v32 + 24) >> 1)
      {
        v27 = *(v32 + 16);
        v28 = v19 + 1;
        sub_1DA2FBF54();
        v19 = v27;
        v20 = v28;
        v32 = v24;
      }

      ++v18;
      v21 = v31;
      v22 = v32;
      *(v32 + 16) = v20;
      sub_1DA2FC9FC(v21, v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19);
    }
  }

  return v32;
}

uint64_t sub_1DA328514@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DA34BC60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA34BD00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  sub_1DA34BA30();
  v16 = sub_1DA34BA20();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    v25 = a1;
    sub_1DA3094C0(v15, v13, &qword_1ECBA5818, &unk_1DA352560);
    v22 = *(v16 - 8);
    v23 = (*(v22 + 88))(v13, v16);
    if (v23 == *MEMORY[0x1E69BCCC0])
    {
      (*(v22 + 96))(v13, v16);
      (*(v3 + 32))(v5, v13, v2);
      sub_1DA329108(v25);
      (*(v3 + 8))(v5, v2);
      return sub_1DA2E7E4C(v15, &qword_1ECBA5818, &unk_1DA352560);
    }

    if (v23 == *MEMORY[0x1E69BCCC8])
    {
      (*(v22 + 96))(v13, v16);
      (*(v7 + 32))(v9, v13, v6);
      sub_1DA3289CC(v9, v25);
      (*(v7 + 8))(v9, v6);
      return sub_1DA2E7E4C(v15, &qword_1ECBA5818, &unk_1DA352560);
    }

    (*(v22 + 8))(v13, v16);
    a1 = v25;
  }

  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v17 = sub_1DA34C8E0();
  __swift_project_value_buffer(v17, qword_1EE109060);
  v18 = sub_1DA34C8C0();
  v19 = sub_1DA34CDA0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DA2E0000, v18, v19, "Unrecognized attribution type", v20, 2u);
    MEMORY[0x1DA74B3A0](v20, -1, -1);
  }

  v21 = type metadata accessor for AttributionItem(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v21);
  return sub_1DA2E7E4C(v15, &qword_1ECBA5818, &unk_1DA352560);
}

void *sub_1DA328944()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_1DA328974()
{
  sub_1DA328944();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA3289CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a1;
  v67 = a2;
  v2 = sub_1DA34C080();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v50 - v5;
  v65 = sub_1DA34C0C0();
  v63 = *(v65 - 8);
  v6 = MEMORY[0x1EEE9AC00](v65);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v58 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6048, &unk_1DA352570);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_1DA34B970();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1DA34B7F0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DA34CB20();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_1DA34B830();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34CB10();
  if (qword_1ECBA5790 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v15, qword_1ECBAD2A0);
  (*(v16 + 16))(v18, v24, v15);
  sub_1DA34B960();
  sub_1DA34B840();
  v25 = sub_1DA2F13AC(v23);
  v55 = v26;
  v56 = v25;
  (*(v21 + 8))(v23, v20);
  v27 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
  v53 = v28;
  v54 = v27;
  sub_1DA34BC40();
  sub_1DA34B660();

  v29 = sub_1DA34B680();
  if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
  {
    sub_1DA2E7E4C(v13, &qword_1ECBA6048, &unk_1DA352570);
  }

  else
  {
    v30 = sub_1DA34B650();
    v32 = v31;
    (*(*(v29 - 8) + 8))(v13, v29);
    if (v32)
    {
      v51 = v32;
      goto LABEL_8;
    }
  }

  v30 = 0;
  v51 = 0xE000000000000000;
LABEL_8:
  v52 = v30;
  v50 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
  v34 = v33;
  if (qword_1ECBA5798 != -1)
  {
    swift_once();
  }

  v35 = sub_1DA34B8C0();
  __swift_project_value_buffer(v35, qword_1ECBA6028);
  v36 = v66;
  __swift_storeEnumTagSinglePayload(v66, 1, 1, v35);
  v37 = v58;
  sub_1DA34C0A0();
  sub_1DA2E7E4C(v36, &qword_1ECBA59B0, &qword_1DA34EA70);
  v38 = v60;
  sub_1DA34C070();
  v39 = v59;
  sub_1DA34C090();
  (*(v61 + 8))(v38, v62);
  v40 = v64;
  sub_1DA34C060();
  v41 = v63;
  v42 = *(v63 + 8);
  v43 = v65;
  v42(v39, v65);
  v42(v37, v43);
  sub_1DA34BC40();
  sub_1DA34B8B0();

  v44 = v67;
  *v67 = v50;
  v44[1] = v34;
  v45 = v55;
  v44[2] = v56;
  v44[3] = v45;
  v46 = v53;
  v44[4] = v54;
  v44[5] = v46;
  v47 = v51;
  v44[6] = v52;
  v44[7] = v47;
  v48 = type metadata accessor for AttributionItem(0);
  (*(v41 + 16))(v44 + *(v48 + 32), v40, v43);
  sub_1DA2FA2E0(v36);
  sub_1DA2FCA60();
  sub_1DA34C010();
  sub_1DA2E7E4C(v36, &qword_1ECBA59B0, &qword_1DA34EA70);
  v42(v40, v43);
  return __swift_storeEnumTagSinglePayload(v44, 0, 1, v48);
}

uint64_t sub_1DA329108@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v68 = sub_1DA34C080();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6048, &unk_1DA352570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v62 - v12;
  v13 = sub_1DA34C0C0();
  v70 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v62 - v18;
  v19 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v20 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
  v22 = sub_1DA2E6FFC(v20, v21);

  sub_1DA34BB50();
  sub_1DA34B660();

  v23 = sub_1DA34B680();
  if (__swift_getEnumTagSinglePayload(v5, 1, v23) == 1)
  {
    sub_1DA2E7E4C(v5, &qword_1ECBA6048, &unk_1DA352570);
    v24 = 0;
    v25 = 0;
    if (!v22)
    {
LABEL_3:

      v26 = v72;
      goto LABEL_7;
    }
  }

  else
  {
    v24 = sub_1DA34B670();
    v25 = v27;
    (*(*(v23 - 8) + 8))(v5, v23);
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  v63 = v13;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v28 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
  v30 = v29;
  v31 = sub_1DA34BC40();
  v32 = v64;
  sub_1DA2E72E4(v28, v30, v31, v33, v24, v25);

  v34 = sub_1DA34B8C0();
  if (__swift_getEnumTagSinglePayload(v32, 1, v34) != 1)
  {
    v42 = v19;
    v43 = v72;
    (*(*(v34 - 8) + 32))(v72, v32, v34);
    __swift_project_boxed_opaque_existential_1((v42 + 16), *(v42 + 40));

    sub_1DA34C0B0();
    v26 = v43;

    __swift_storeEnumTagSinglePayload(v43, 0, 1, v34);
    v41 = v9;
    v13 = v63;
    v36 = v69;
    v35 = v70;
    goto LABEL_11;
  }

  sub_1DA2E7E4C(v32, &qword_1ECBA59B0, &qword_1DA34EA70);
  v26 = v72;
  v13 = v63;
LABEL_7:
  v36 = v69;
  v35 = v70;
  if (qword_1ECBA5798 != -1)
  {
    swift_once();
  }

  v37 = sub_1DA34B8C0();
  __swift_project_value_buffer(v37, qword_1ECBA6028);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v37);
  sub_1DA34C0A0();
  sub_1DA2E7E4C(v9, &qword_1ECBA59B0, &qword_1DA34EA70);
  v38 = v67;
  sub_1DA34C070();
  v39 = v65;
  sub_1DA34C090();
  (*(v66 + 8))(v38, v68);
  sub_1DA34C060();
  v40 = *(v35 + 8);
  v40(v39, v13);
  v40(v36, v13);
  sub_1DA34BB50();
  sub_1DA34B8B0();

  v41 = v9;
LABEL_11:
  v44 = sub_1DA34BC40();
  v69 = v45;
  v70 = v44;
  v46 = sub_1DA34BC10();
  v67 = v47;
  v68 = v46;
  v48 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
  v66 = v49;
  v50 = sub_1DA34BC10();
  v52 = v51;
  v53 = *(v35 + 16);
  v53(v36, v73, v13);
  sub_1DA3094C0(v26, v41, &qword_1ECBA59B0, &qword_1DA34EA70);
  v54 = v71;
  v56 = v68;
  v55 = v69;
  *v71 = v70;
  v54[1] = v55;
  v57 = v66;
  v58 = v67;
  v54[2] = v56;
  v54[3] = v58;
  v54[4] = v48;
  v54[5] = v57;
  v54[6] = v50;
  v54[7] = v52;
  v59 = type metadata accessor for AttributionItem(0);
  v53(v54 + *(v59 + 32), v36, v13);
  sub_1DA2FA2E0(v41);
  sub_1DA2FCA60();
  sub_1DA34C010();
  sub_1DA2E7E4C(v41, &qword_1ECBA59B0, &qword_1DA34EA70);
  v60 = *(v35 + 8);
  v60(v36, v13);
  sub_1DA2E7E4C(v72, &qword_1ECBA59B0, &qword_1DA34EA70);
  v60(v73, v13);
  return __swift_storeEnumTagSinglePayload(v54, 0, 1, v59);
}

uint64_t sub_1DA329818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1DA34B8C0();
  __swift_allocate_value_buffer(v3, qword_1ECBA6028);
  v4 = __swift_project_value_buffer(v3, qword_1ECBA6028);
  sub_1DA34B8B0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CoreAnalyticsLogger.sendEvent(_:payload:)(Swift::String _, Swift::OpaquePointer payload)
{
  v2 = sub_1DA34CB30();
  sub_1DA306F34();
  v3 = sub_1DA34CAA0();
  AnalyticsSendEvent();
}

uint64_t sub_1DA3299C0()
{
  type metadata accessor for AnalyticsManager();
  result = swift_allocObject();
  *(result + 40) = &type metadata for CoreAnalyticsLogger;
  *(result + 48) = &protocol witness table for CoreAnalyticsLogger;
  qword_1ECBA6050 = result;
  return result;
}

void *AnalyticsManager.__allocating_init(backend:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_20();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_0_20(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_17();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t static AnalyticsManager.shared.getter()
{
  if (qword_1ECBA57A0 != -1)
  {
    swift_once();
  }
}

void *AnalyticsManager.init(backend:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_20();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_0_20(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_17();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t AnalyticsManager.send(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DA329D04(v4, v1, v2, v3);
}

uint64_t AnalyticsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1DA329C94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  return a2;
}

uint64_t sub_1DA329D04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v28[3] = a3;
  v28[4] = a4;
  v9 = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  if (static DeviceExpertPreferences.shouldSendAnalytics.getter())
  {
    sub_1DA32A118(boxed_opaque_existential_0, v9, a3, a4);
    if (qword_1EE109038 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA34C8E0();
    __swift_project_value_buffer(v11, qword_1EE109040);
    sub_1DA2EEF28(v28, v27);

    v12 = sub_1DA34C8C0();
    v13 = sub_1DA34CDB0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136315394;
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      v15 = (*(a4 + 8))(a3, a4);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v18 = sub_1DA300D78(v15, v17, &v26);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_1DA306F34();
      v19 = sub_1DA34CAB0();
      v21 = sub_1DA300D78(v19, v20, &v26);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_1DA2E0000, v12, v13, "Sending analytics event %s with payload %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74B3A0](v25, -1, -1);
      MEMORY[0x1DA74B3A0](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    v22 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    v23 = (*(a4 + 8))(a3, a4);
    (*(v22 + 8))(v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsLogger(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA32A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(a4 + 24))(a3, a4);
  (*(a4 + 16))(a3, a4);
  v10 = sub_1DA34CB30();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v9;
  sub_1DA30F908(v10, 0x5F6E6F6973736573, 0xEA00000000006469, isUniquelyReferenced_nonNull_native);
  v12 = v15;
  (*(v6 + 8))(v8, a3);
  return v12;
}

void *OUTLINED_FUNCTION_2_17()
{

  return sub_1DA329C94(v3, v0, v1, v2);
}

void *sub_1DA32A2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v94 = a4;
  v95 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v79 - v8;
  v9 = type metadata accessor for TextRun(0);
  v99 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = sub_1DA34B9B0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v100 = v18 - v17;
  v88 = sub_1DA34BF90();
  OUTLINED_FUNCTION_0();
  v87 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v79 - v22;
  v23 = sub_1DA34BED0();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_1();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v79 - v31;
  sub_1DA34BEE0();
  sub_1DA34B980();
  v33 = *(v25 + 8);
  v34 = OUTLINED_FUNCTION_29_6();
  v33(v34);
  Array<A>.asTextRuns()();
  v84 = v35;

  sub_1DA34BEE0();
  sub_1DA34BE10();
  v36 = OUTLINED_FUNCTION_29_6();
  v33(v36);
  Array<A>.asTextRuns()();
  v83 = v37;

  v96 = a1;
  sub_1DA34BEE0();
  v38 = sub_1DA34BA50();
  v82 = v23;
  v81 = v25 + 8;
  v80 = v33;
  (v33)(v29, v23);
  v39 = *(v38 + 16);
  if (v39)
  {
    v79 = v32;
    v111 = MEMORY[0x1E69E7CC0];
    result = sub_1DA3489D4(0, v39, 0);
    v41 = 0;
    v42 = v111;
    v103 = v38 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v104 = v39;
    v101 = (v15 + 8);
    v102 = v15 + 16;
    v43 = v100;
    v97 = v15;
    v98 = v13;
    v105 = v38;
    while (v41 < *(v38 + 16))
    {
      v44 = *(v15 + 72);
      v108 = v41;
      (*(v15 + 16))(v43, v103 + v44 * v41, v13);
      v45 = sub_1DA34B980();
      v46 = *(v45 + 16);
      if (v46)
      {
        v107 = v42;
        v110 = MEMORY[0x1E69E7CC0];
        sub_1DA34826C(0, v46, 0);
        v47 = v110;
        v109 = sub_1DA34BA10();
        OUTLINED_FUNCTION_12();
        v49 = *(v48 + 16);
        v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v106 = v45;
        v51 = v45 + v50;
        v52 = *(v48 + 72);
        v53 = v99;
        do
        {
          v49(v12, v51, v109);
          v110 = v47;
          v54 = v12;
          v56 = *(v47 + 16);
          v55 = *(v47 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1DA34826C(v55 > 1, v56 + 1, 1);
            v53 = v99;
            v47 = v110;
          }

          *(v47 + 16) = v56 + 1;
          sub_1DA32E8DC(v54, v47 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56);
          v51 += v52;
          --v46;
          v12 = v54;
        }

        while (v46);

        v43 = v100;
        v13 = v98;
        result = (*v101)(v100, v98);
        v42 = v107;
        v15 = v97;
      }

      else
      {

        result = (*v101)(v43, v13);
        v47 = MEMORY[0x1E69E7CC0];
      }

      v111 = v42;
      v58 = *(v42 + 16);
      v57 = *(v42 + 24);
      v59 = v108;
      if (v58 >= v57 >> 1)
      {
        result = sub_1DA3489D4((v57 > 1), v58 + 1, 1);
        v42 = v111;
      }

      v41 = v59 + 1;
      *(v42 + 16) = v58 + 1;
      *(v42 + 8 * v58 + 32) = v47;
      v38 = v105;
      if (v41 == v104)
      {

        v107 = v42;
        v32 = v79;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v107 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1DA34BEE0();
    _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV10parametersSaySSGSgvg_0();
    v60 = v82;
    v61 = v80;
    (v80)(v32, v82);
    Array<A>.asTextRuns()();
    v109 = v62;

    sub_1DA34B9C0();
    Array<A>.asTextRuns()();
    v108 = v63;

    sub_1DA34BEE0();
    v64 = v85;
    sub_1DA34BEA0();
    v61(v32, v60);
    v65 = v87;
    v66 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x1E69BCDB8], v88);
    sub_1DA32E940(&unk_1EE109F08);
    sub_1DA34CC40();
    sub_1DA34CC40();
    v67 = *(v65 + 8);
    v68 = OUTLINED_FUNCTION_29_6();
    v67(v68);
    (v67)(v64, v66);
    LODWORD(v106) = v111 != v110;
    v69 = v95;
    v70 = v92;
    sub_1DA32B41C(v95, v92);
    v71 = type metadata accessor for ListStyleAnswerSnippetModel(0);
    v72 = *(v71 + 36);
    v73 = type metadata accessor for AttributionModel(0);
    v74 = v89;
    __swift_storeEnumTagSinglePayload(v89, 1, 1, v73);
    v75 = v90;
    sub_1DA32B41C(v74, v90);
    v76 = v94;
    sub_1DA34C0D0();
    sub_1DA32B48C(v74);
    v111 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA34C0D0();
    OUTLINED_FUNCTION_16_6();
    v111 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6098, &unk_1DA352658);
    sub_1DA34C0D0();
    OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_16_6();
    *(v76 + *(v71 + 44)) = v106;
    sub_1DA32B41C(v70, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_12();
    (*(v77 + 8))(v76 + v72);
    sub_1DA32B41C(v74, v75);
    OUTLINED_FUNCTION_29_6();
    sub_1DA34C0D0();
    sub_1DA32B48C(v74);
    v111 = v93;
    type metadata accessor for FlowContext();
    sub_1DA34C0D0();
    sub_1DA32B48C(v69);
    sub_1DA34BFB0();
    OUTLINED_FUNCTION_12();
    (*(v78 + 8))(v96);
    return sub_1DA32B48C(v70);
  }

  return result;
}

uint64_t ListStyleAnswerSnippetModel.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  return v1;
}

uint64_t (*ListStyleAnswerSnippetModel.title.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.intro.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t type metadata accessor for ListStyleAnswerSnippetModel(uint64_t a1)
{
  result = qword_1EE10A590;
  if (!qword_1EE10A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListStyleAnswerSnippetModel.intro.setter()
{
  OUTLINED_FUNCTION_27_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*ListStyleAnswerSnippetModel.intro.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.steps.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t ListStyleAnswerSnippetModel.steps.setter()
{
  OUTLINED_FUNCTION_27_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*ListStyleAnswerSnippetModel.steps.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.outro.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t ListStyleAnswerSnippetModel.outro.setter()
{
  OUTLINED_FUNCTION_27_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*ListStyleAnswerSnippetModel.outro.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.disclaimer.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t ListStyleAnswerSnippetModel.disclaimer.setter()
{
  OUTLINED_FUNCTION_27_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*ListStyleAnswerSnippetModel.disclaimer.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

void *ListStyleAnswerSnippetModel.attributionModel.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA32B2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1DA32B41C(a1, &v6 - v3);
  return ListStyleAnswerSnippetModel.attributionModel.setter(v4);
}

uint64_t ListStyleAnswerSnippetModel.attributionModel.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DA32B41C(a1, &v5 - v3);
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  sub_1DA34C100();
  return sub_1DA32B48C(a1);
}

uint64_t sub_1DA32B41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA32B48C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*ListStyleAnswerSnippetModel.attributionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t ListStyleAnswerSnippetModel.context.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t ListStyleAnswerSnippetModel.context.setter()
{
  OUTLINED_FUNCTION_27_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*ListStyleAnswerSnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.listStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ListStyleAnswerSnippetModel(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ListStyleAnswerSnippetModel.listStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ListStyleAnswerSnippetModel(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_1DA32B73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726564726FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726564726F6E75 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

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

uint64_t sub_1DA32B80C(char a1)
{
  if (a1)
  {
    return 0x65726564726F6E75;
  }

  else
  {
    return 0x6465726564726FLL;
  }
}

uint64_t sub_1DA32B85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA32B73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA32B884(uint64_t a1)
{
  v2 = sub_1DA32BC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32B8C0(uint64_t a1)
{
  v2 = sub_1DA32BC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA32B900(uint64_t a1)
{
  v2 = sub_1DA32BD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32B93C(uint64_t a1)
{
  v2 = sub_1DA32BD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA32B978(uint64_t a1)
{
  v2 = sub_1DA32BCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32B9B4(uint64_t a1)
{
  v2 = sub_1DA32BCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ListStyleAnswerSnippetModel.ListStyle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34_2();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6060, &qword_1DA352628);
  OUTLINED_FUNCTION_0();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_17_2();
  v46 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6068, &qword_1DA352630);
  OUTLINED_FUNCTION_0();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6070, &qword_1DA352638);
  OUTLINED_FUNCTION_0();
  v37 = v36;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DA32BC5C();
  sub_1DA34D250();
  v42 = (v37 + 8);
  if (v41)
  {
    sub_1DA32BCB0();
    v43 = v46;
    sub_1DA34D0B0();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_1DA32BD04();
    sub_1DA34D0B0();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  OUTLINED_FUNCTION_33_3();
}

unint64_t sub_1DA32BC5C()
{
  result = qword_1EE10A600[0];
  if (!qword_1EE10A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A600);
  }

  return result;
}

unint64_t sub_1DA32BCB0()
{
  result = qword_1ECBA6078;
  if (!qword_1ECBA6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6078);
  }

  return result;
}

unint64_t sub_1DA32BD04()
{
  result = qword_1EE10A5E8;
  if (!qword_1EE10A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5E8);
  }

  return result;
}

uint64_t ListStyleAnswerSnippetModel.ListStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

void ListStyleAnswerSnippetModel.ListStyle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34_2();
  a22 = v24;
  a23 = v25;
  v71 = v23;
  v27 = v26;
  v68 = v28;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6080, &qword_1DA352640);
  OUTLINED_FUNCTION_0();
  v67 = v29;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v63 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6088, &qword_1DA352648);
  OUTLINED_FUNCTION_0();
  v66 = v34;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v63 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6090, &qword_1DA352650);
  OUTLINED_FUNCTION_0();
  v69 = v39;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v63 - v41;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DA32BC5C();
  v43 = v71;
  sub_1DA34D240();
  if (v43)
  {
    goto LABEL_10;
  }

  v64 = v33;
  v65 = v37;
  v71 = v27;
  v44 = v70;
  v45 = sub_1DA34D0A0();
  v46 = sub_1DA30DDC8(v45, 0);
  if (v48 == v49 >> 1)
  {
    v70 = v46;
LABEL_9:
    v59 = sub_1DA34CEF0();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DF8, &qword_1DA3501A0);
    *v61 = &type metadata for ListStyleAnswerSnippetModel.ListStyle;
    sub_1DA34D020();
    sub_1DA34CEE0();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v42, v38);
    v27 = v71;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_11:
    OUTLINED_FUNCTION_33_3();
    return;
  }

  v63[1] = 0;
  if (v48 < (v49 >> 1))
  {
    v50 = *(v47 + v48);
    v51 = sub_1DA30EAD0(v48 + 1);
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    if (v53 == v55 >> 1)
    {
      if (v50)
      {
        a13 = 1;
        sub_1DA32BCB0();
        v56 = v32;
        OUTLINED_FUNCTION_26_5(&type metadata for ListStyleAnswerSnippetModel.ListStyle.UnorderedCodingKeys, &a13);
        v57 = v68;
        v58 = v69;
        swift_unknownObjectRelease();
        (*(v67 + 8))(v56, v44);
      }

      else
      {
        a12 = 0;
        sub_1DA32BD04();
        v62 = v65;
        OUTLINED_FUNCTION_26_5(&type metadata for ListStyleAnswerSnippetModel.ListStyle.OrderedCodingKeys, &a12);
        v57 = v68;
        v58 = v69;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v62, v64);
      }

      (*(v58 + 8))(v42, v53);
      *v57 = v50;
      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_11;
    }

    v70 = v51;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t ListStyleAnswerSnippetModel.init(title:intro:steps:outro:disclaimer:listStyle:attributionModel:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a7;
  v32 = a8;
  v29 = a4;
  v30 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v21 = *a6;
  v22 = type metadata accessor for ListStyleAnswerSnippetModel(0);
  v23 = *(v22 + 36);
  v24 = type metadata accessor for AttributionModel(0);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v24);
  sub_1DA32B41C(v20, v17);
  sub_1DA34C0D0();
  sub_1DA32B48C(v20);
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v33 = a2;
  OUTLINED_FUNCTION_23_6();
  v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6098, &unk_1DA352658);
  sub_1DA34C0D0();
  v33 = v29;
  OUTLINED_FUNCTION_23_6();
  v33 = v30;
  OUTLINED_FUNCTION_23_6();
  *(a9 + *(v22 + 44)) = v21;
  v25 = v31;
  sub_1DA32B41C(v31, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12();
  (*(v26 + 8))(a9 + v23);
  sub_1DA32B41C(v20, v17);
  sub_1DA34C0D0();
  sub_1DA32B48C(v20);
  v33 = v32;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  return sub_1DA32B48C(v25);
}

BOOL ListStyleAnswerSnippetModel.hasTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  OUTLINED_FUNCTION_35_1();
  return OUTLINED_FUNCTION_30_5();
}

BOOL ListStyleAnswerSnippetModel.hasIntro.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  OUTLINED_FUNCTION_35_1();
  return OUTLINED_FUNCTION_30_5();
}

BOOL ListStyleAnswerSnippetModel.hasOutro.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  OUTLINED_FUNCTION_35_1();
  return OUTLINED_FUNCTION_30_5();
}

BOOL ListStyleAnswerSnippetModel.hasDisclaimer.getter()
{
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  OUTLINED_FUNCTION_35_1();
  return OUTLINED_FUNCTION_30_5();
}

uint64_t ListStyleAnswerSnippetModel.selectableComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA352610;
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for [A];
  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  sub_1DA34C0F0();
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6098, &unk_1DA352658);
  *(v0 + 104) = &protocol witness table for [A];
  *(v0 + 72) = v3;
  sub_1DA34C0F0();
  *(v0 + 136) = v1;
  *(v0 + 144) = &protocol witness table for [A];
  *(v0 + 112) = v3;
  return v0;
}

uint64_t sub_1DA32C774(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v4 = sub_1DA34C0F0();
  v12 = OUTLINED_FUNCTION_22_5(v4, v5, v6, v7, v8, v9, v10, v11, v58, v63);
  v13 = a1(v12);

  if (v13 & 1) != 0 || (v14 = type metadata accessor for ListStyleAnswerSnippetModel(0), v15 = OUTLINED_FUNCTION_24_3(v14), v23 = OUTLINED_FUNCTION_22_5(v15, v16, v17, v18, v19, v20, v21, v22, v59, v64), v24 = a1(v23), , (v24) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0), v25 = sub_1DA34C0F0(), v33 = OUTLINED_FUNCTION_22_5(v25, v26, v27, v28, v29, v30, v31, v32, v60, v65), v34 = a2(v33), v35 = , (v34) || (v36 = OUTLINED_FUNCTION_24_3(v35), v44 = OUTLINED_FUNCTION_22_5(v36, v37, v38, v39, v40, v41, v42, v43, v61, v66), v45 = a1(v44), v46 = , (v45))
  {
    v47 = 1;
  }

  else
  {
    v49 = OUTLINED_FUNCTION_24_3(v46);
    v57 = OUTLINED_FUNCTION_22_5(v49, v50, v51, v52, v53, v54, v55, v56, v62, v67);
    v47 = a1(v57);
  }

  return v47 & 1;
}

uint64_t sub_1DA32C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7370657473 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F7274756FLL && a2 == 0xE500000000000000;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1DA34D160() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001DA354F50 == a2;
            if (v10 || (sub_1DA34D160() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
              if (v11 || (sub_1DA34D160() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6C7974537473696CLL && a2 == 0xE900000000000065)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DA34D160();

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

unint64_t sub_1DA32CB3C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6F72746E69;
      break;
    case 2:
      result = 0x7370657473;
      break;
    case 3:
      result = 0x6F7274756FLL;
      break;
    case 4:
      result = 0x6D69616C63736964;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x747865746E6F63;
      break;
    case 7:
      result = 0x6C7974537473696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA32CC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA32C8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA32CC44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA32CB34();
  *a1 = result;
  return result;
}

uint64_t sub_1DA32CC6C(uint64_t a1)
{
  v2 = sub_1DA32D9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32CCA8(uint64_t a1)
{
  v2 = sub_1DA32D9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ListStyleAnswerSnippetModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_34_2();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60A0, &qword_1DA352668);
  OUTLINED_FUNCTION_0();
  v36 = v35;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v52 - v38;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_1DA32D9BC();
  sub_1DA34D250();
  a17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_1_6();
  sub_1DA32DE78(v40);
  OUTLINED_FUNCTION_6_12(v31, &a17);
  if (!v28)
  {
    v41 = type metadata accessor for ListStyleAnswerSnippetModel(0);
    v42 = *(v41 + 20);
    a16 = 1;
    OUTLINED_FUNCTION_6_12(v31 + v42, &a16);
    v52 = v41;
    v43 = *(v41 + 24);
    a15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA32DF4C(v44);
    OUTLINED_FUNCTION_17_7(v31 + v43, &a15);
    v45 = v52;
    v46 = *(v52 + 28);
    a14 = 3;
    OUTLINED_FUNCTION_6_12(v31 + v46, &a14);
    v47 = *(v45 + 32);
    a13 = 4;
    OUTLINED_FUNCTION_6_12(v31 + v47, &a13);
    v48 = *(v45 + 36);
    a12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA32DBF8(v49);
    OUTLINED_FUNCTION_17_7(v31 + v48, &a12);
    v50 = *(v52 + 40);
    a11 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA32DD54(v51);
    OUTLINED_FUNCTION_17_7(v31 + v50, &a11);
    v53 = 7;
    sub_1DA32DE24();
    sub_1DA34D120();
  }

  (*(v36 + 8))(v39, v34);
  OUTLINED_FUNCTION_33_3();
}

void ListStyleAnswerSnippetModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_34_2();
  a26 = v28;
  a27 = v29;
  v128 = v27;
  v31 = v30;
  v112 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0();
  v122 = v34;
  v123 = v33;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17_2();
  v113 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_0();
  v131 = v38;
  v132 = v37;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_17_2();
  v114 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  OUTLINED_FUNCTION_0();
  v118 = v42;
  v119 = v41;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_17_2();
  v117 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_0();
  v125 = v46;
  v126 = v45;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_3_1();
  v115 = v47 - v48;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v116 = &v112 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v112 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v124 = &v112 - v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60A8, &qword_1DA352670);
  OUTLINED_FUNCTION_0();
  v120 = v57;
  v121 = v56;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v112 - v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_3_1();
  v64 = v62 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v112 - v66;
  type metadata accessor for ListStyleAnswerSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_1_4();
  v71 = v70 - v69;
  v133 = v72;
  v73 = *(v72 + 36);
  v74 = type metadata accessor for AttributionModel(0);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v74);
  sub_1DA32B41C(v67, v64);
  v130 = v73;
  v75 = v71;
  sub_1DA34C0D0();
  sub_1DA32B48C(v67);
  v76 = v31[3];
  v129 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v76);
  sub_1DA32D9BC();
  v127 = v60;
  v77 = v128;
  sub_1DA34D240();
  if (v77)
  {
    __swift_destroy_boxed_opaque_existential_1(v129);
    (*(v131 + 8))(v71 + v130, v132);
  }

  else
  {
    a17 = 0;
    OUTLINED_FUNCTION_2_4();
    v79 = sub_1DA32DE78(v78);
    v80 = v126;
    v81 = v121;
    sub_1DA34D090();
    v82 = v75;
    v83 = v75;
    v84 = *(v125 + 32);
    v84(v83, v124, v80);
    a16 = 1;
    OUTLINED_FUNCTION_25_5(v80, &a16, v81, v80, v79);
    v128 = v79;
    v85 = v133;
    v84(v82 + *(v133 + 20), v54, v80);
    a15 = 2;
    OUTLINED_FUNCTION_2_4();
    v87 = sub_1DA32DF4C(v86);
    v88 = v117;
    v89 = v119;
    OUTLINED_FUNCTION_25_5(v119, &a15, v81, v119, v87);
    v124 = v84;
    v90 = v85;
    (*(v118 + 32))(v82 + *(v85 + 24), v88, v89);
    a14 = 3;
    v91 = v116;
    v92 = v121;
    v93 = v128;
    sub_1DA34D090();
    v94 = v91;
    v95 = v126;
    v96 = v124;
    (v124)(v82 + *(v90 + 28), v94, v126);
    a13 = 4;
    OUTLINED_FUNCTION_25_5(v95, &a13, v92, v95, v93);
    LODWORD(v128) = 1;
    v97 = v133;
    v98 = OUTLINED_FUNCTION_28_5(*(v133 + 32));
    v96(v98);
    a12 = 5;
    OUTLINED_FUNCTION_2_4();
    v100 = sub_1DA32DBF8(v99);
    v101 = v114;
    v102 = v132;
    OUTLINED_FUNCTION_25_5(v132, &a12, v92, v132, v100);
    (*(v131 + 40))(v82 + v130, v101, v102);
    a11 = 6;
    OUTLINED_FUNCTION_2_4();
    v104 = sub_1DA32DD54(v103);
    v105 = v92;
    v106 = v113;
    v107 = v123;
    OUTLINED_FUNCTION_25_5(v123, &a11, v105, v123, v104);
    (*(v122 + 32))(v82 + *(v97 + 40), v106, v107);
    v134 = 7;
    v108 = sub_1DA32DFB0();
    v109 = v121;
    OUTLINED_FUNCTION_25_5(&type metadata for ListStyleAnswerSnippetModel.ListStyle, &v134, v121, &type metadata for ListStyleAnswerSnippetModel.ListStyle, v108);
    v110 = OUTLINED_FUNCTION_9_6();
    v111(v110, v109);
    *(v82 + *(v97 + 44)) = a10;
    sub_1DA32E004(v82, v112);
    __swift_destroy_boxed_opaque_existential_1(v129);
    sub_1DA32E068(v82);
  }

  OUTLINED_FUNCTION_33_3();
}

unint64_t sub_1DA32D9BC()
{
  result = qword_1EE10A5B8;
  if (!qword_1EE10A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5B8);
  }

  return result;
}

unint64_t sub_1DA32DA10(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA32E940(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DA98()
{
  result = qword_1EE109F50;
  if (!qword_1EE109F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6098, &unk_1DA352658);
    sub_1DA32DA10(&unk_1EE109F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F50);
  }

  return result;
}

unint64_t sub_1DA32DB48()
{
  result = qword_1EE109F58;
  if (!qword_1EE109F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6098, &unk_1DA352658);
    sub_1DA32DA10(&unk_1EE109F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F58);
  }

  return result;
}

unint64_t sub_1DA32DBF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    sub_1DA32DCCC(&unk_1EE10A850);
    sub_1DA32DCCC(&unk_1EE10A858);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DCCC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5840, "lt");
    sub_1DA32E940(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DD54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA32E940(&unk_1EE10AC10);
    sub_1DA32E940(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DE24()
{
  result = qword_1EE10A5C0;
  if (!qword_1EE10A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5C0);
  }

  return result;
}

unint64_t sub_1DA32DE78(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA32DA10(&unk_1EE109F68);
    sub_1DA32DA10(&unk_1EE109F70);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DF4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6058, &qword_1DA352DC0);
    sub_1DA32DA98();
    sub_1DA32DB48();
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DFB0()
{
  result = qword_1EE109250;
  if (!qword_1EE109250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109250);
  }

  return result;
}

uint64_t sub_1DA32E004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListStyleAnswerSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA32E068(uint64_t a1)
{
  v2 = type metadata accessor for ListStyleAnswerSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA32E0C8()
{
  result = qword_1ECBA60B0;
  if (!qword_1ECBA60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA60B0);
  }

  return result;
}

uint64_t sub_1DA32E1D4(uint64_t a1)
{
  sub_1DA3063E8(319, &qword_1EE10AC50, &qword_1ECBA58C0, &qword_1DA34DF10);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC38, &qword_1ECBA6098, &unk_1DA352658);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1DA3063E8(319, &qword_1EE10AC88, &qword_1ECBA5840, "lt");
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1DA2F33D8(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ListStyleAnswerSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ListStyleAnswerSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DA32E470(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA32E570()
{
  result = qword_1ECBA60B8;
  if (!qword_1ECBA60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA60B8);
  }

  return result;
}

unint64_t sub_1DA32E5C8()
{
  result = qword_1ECBA60C0;
  if (!qword_1ECBA60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA60C0);
  }

  return result;
}

unint64_t sub_1DA32E620()
{
  result = qword_1EE10A5A8;
  if (!qword_1EE10A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5A8);
  }

  return result;
}

unint64_t sub_1DA32E678()
{
  result = qword_1EE10A5B0;
  if (!qword_1EE10A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5B0);
  }

  return result;
}

unint64_t sub_1DA32E6D0()
{
  result = qword_1EE10A5D8;
  if (!qword_1EE10A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5D8);
  }

  return result;
}

unint64_t sub_1DA32E728()
{
  result = qword_1EE10A5E0;
  if (!qword_1EE10A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5E0);
  }

  return result;
}

unint64_t sub_1DA32E780()
{
  result = qword_1EE10A5C8;
  if (!qword_1EE10A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5C8);
  }

  return result;
}

unint64_t sub_1DA32E7D8()
{
  result = qword_1EE10A5D0;
  if (!qword_1EE10A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5D0);
  }

  return result;
}

unint64_t sub_1DA32E830()
{
  result = qword_1EE10A5F0;
  if (!qword_1EE10A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5F0);
  }

  return result;
}

unint64_t sub_1DA32E888()
{
  result = qword_1EE10A5F8;
  if (!qword_1EE10A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5F8);
  }

  return result;
}

uint64_t sub_1DA32E8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextRun(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA32E940(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for ListStyleAnswerSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  *(v1 - 96) = v0;

  return sub_1DA34C0D0();
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_23_6()
{

  return sub_1DA34C0D0();
}

void *OUTLINED_FUNCTION_24_3(uint64_t a1, ...)
{

  return sub_1DA34C0F0();
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_26_5(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return type metadata accessor for ListStyleAnswerSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_35_1()
{
}

uint64_t sub_1DA32EB54()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1EE109040);
  OUTLINED_FUNCTION_1_21();
  return sub_1DA34C8D0();
}

uint64_t sub_1DA32EBEC()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1ECBA60C8);
  __swift_project_value_buffer(v0, qword_1ECBA60C8);
  return sub_1DA34C8D0();
}

uint64_t sub_1DA32EC90()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1EE109060);
  OUTLINED_FUNCTION_1_21();
  return OUTLINED_FUNCTION_0_21();
}

uint64_t sub_1DA32ED08()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1EE109080);
  OUTLINED_FUNCTION_1_21();
  return OUTLINED_FUNCTION_0_21();
}

uint64_t sub_1DA32ED80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA34C8E0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return sub_1DA34C8D0();
}

uint64_t sub_1DA32EE68(char a1)
{
  if (a1)
  {
    v1 = 0xEC00000064657463;
  }

  else
  {
    v1 = 0xE900000000000064;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32EF04(unsigned __int8 a1, char a2)
{
  v2 = 0x6E65657263536E6FLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656572635366666FLL;
    }

    else
    {
      v4 = 0x676E697373696DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE90000000000006ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x6E65657263536E6FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656572635366666FLL;
    }

    else
    {
      v2 = 0x676E697373696DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v4);
  }

  return v8 & 1;
}

uint64_t sub_1DA32EFFC(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000007475;
  }

  else
  {
    v1 = 0xE90000000000006ELL;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F094(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000007265626DLL;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F128(unsigned __int8 a1, char a2)
{
  v2 = 0x6465646461;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6564646120746F6ELL;
    }

    else
    {
      v4 = 0x64656C696166;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6465646461;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6564646120746F6ELL;
    }

    else
    {
      v2 = 0x64656C696166;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v4);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F214(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F2A0(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F697473657571;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6E6F697473657571;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x64695F616E71;
      break;
    case 2:
      v5 = 0xD000000000000011;
      v3 = 0x80000001DA3549F0;
      break;
    case 3:
      v5 = 0x5F747865746E6F63;
      v3 = 0xEC00000073676174;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x64695F616E71;
      break;
    case 2:
      v2 = 0xD000000000000011;
      v6 = 0x80000001DA3549F0;
      break;
    case 3:
      v2 = 0x5F747865746E6F63;
      v6 = 0xEC00000073676174;
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
    v8 = OUTLINED_FUNCTION_38_1(v5);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F3E8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x657A696E6167726FLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000072;
  }

  else
  {
    v4 = 0x80000001DA354950;
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x657A696E6167726FLL;
  }

  if (a2)
  {
    v6 = 0x80000001DA354950;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F484()
{
  SettingContextType.rawValue.getter();
  v1 = v0;
  v3 = v2;
  SettingContextType.rawValue.getter();
  if (v1 == v5 && v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_38_1(v1);
  }

  return v7 & 1;
}

uint64_t sub_1DA32F50C(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000006465;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F5A0(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F62C(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000006465;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F6BC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0x696669746E656469;
  v6 = 0xEA00000000007265;
  switch(v4)
  {
    case 1:
      v6 = 0xE500000000000000;
      v5 = 0x656C746974;
      break;
    case 2:
      v5 = 0x746E6F4379646F62;
      v6 = 0xEF61746144746E65;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x65676175676E616CLL;
      break;
    case 4:
      v5 = 0xD00000000000001BLL;
      v6 = 0x80000001DA354490;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x747865746E6F63;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE500000000000000;
      v3 = 0x656C746974;
      break;
    case 2:
      v3 = 0x746E6F4379646F62;
      v2 = 0xEF61746144746E65;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x65676175676E616CLL;
      break;
    case 4:
      v3 = 0xD00000000000001BLL;
      v2 = 0x80000001DA354490;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x747865746E6F63;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA34D160();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F880(char a1)
{
  if (a1)
  {
    v1 = 0xEA0000000000746ELL;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F910(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6710895;
  }

  else
  {
    v3 = 28271;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_1DA32F990(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6261736964;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6261736964;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_1DA32FA24(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000012;
  v3 = "icememos";
  v4 = "icememos";
  v5 = a1;
  v6 = 0xD000000000000012;
  switch(v5)
  {
    case 1:
      v4 = "minimum_os_version";
      v6 = 0xD000000000000016;
      break;
    case 2:
      v4 = "minimum_hardware_model";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "specific_app_involved";
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "minimum_os_version";
      v2 = 0xD000000000000016;
      break;
    case 2:
      v3 = "minimum_hardware_model";
      v2 = 0xD000000000000015;
      break;
    case 3:
      v3 = "specific_app_involved";
      v2 = 0xD000000000000018;
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
    v8 = OUTLINED_FUNCTION_38_1(v6);
  }

  return v8 & 1;
}

uint64_t sub_1DA32FB40(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000070;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA32FBD0(char a1, char a2)
{
  v3 = sub_1DA308D50(a1);
  v5 = v4;
  if (v3 == sub_1DA308D50(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_1DA32FC48(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v9 = sub_1DA34CB80();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DA34B5D0();
  result = MEMORY[0x1EEE9AC00](v10);
  v12 = a1[1];
  v44 = *a1;
  v45 = v12;
  v46 = a1[2];
  if (qword_1EE109E70 != -1)
  {
    result = swift_once();
  }

  if (byte_1EE10E058 == 1)
  {
    v40 = a3;
    sub_1DA34B610();
    swift_allocObject();
    sub_1DA34B600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6100, &qword_1DA352D88);
    v13 = swift_allocObject();
    if (a5)
    {
      *(v13 + 16) = xmmword_1DA34DA00;
      sub_1DA34B5C0();
    }

    else
    {
      *(v13 + 16) = xmmword_1DA34DC80;
    }

    sub_1DA34B5B0();
    v41 = v13;
    sub_1DA33ACBC(&qword_1EE109F40, 255, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6108, &unk_1DA352D90);
    sub_1DA33AA2C();
    sub_1DA34CE90();
    sub_1DA34B5E0();
    sub_1DA33AA90();
    v14 = sub_1DA34B5F0();
    v16 = v15;
    sub_1DA34CB70();
    v17 = sub_1DA34CB60();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      if (a5)
      {
        v21 = 2618;
      }

      else
      {
        v21 = 8250;
      }

      if (a4)
      {
        v41 = v40;
        v42 = a4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F0, &unk_1DA352C30);
        v41 = sub_1DA34CBA0();
        v42 = v31;
        MEMORY[0x1DA74A690](0x4E4F534A20, 0xE500000000000000);
      }

      MEMORY[0x1DA74A690](v21, 0xE200000000000000);

      MEMORY[0x1DA74A690](v19, v20);

      v33 = v41;
      v32 = v42;

      v22 = sub_1DA34C8C0();
      v34 = sub_1DA34CD90();

      if (!os_log_type_enabled(v22, v34))
      {
        sub_1DA2E62C4(v14, v16);

LABEL_22:
      }

      v35 = swift_slowAlloc();
      v28 = v16;
      v36 = swift_slowAlloc();
      v41 = v36;
      *v35 = 136315138;
      v37 = sub_1DA300D78(v33, v32, &v41);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_1DA2E0000, v22, v34, "%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1DA74B3A0](v36, -1, -1);
      v30 = v35;
    }

    else
    {
      v22 = sub_1DA34C8C0();
      v23 = sub_1DA34CDA0();
      if (!os_log_type_enabled(v22, v23))
      {
        v38 = v14;
        v39 = v16;
        goto LABEL_21;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v43 = &unk_1F55E2958;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F0, &unk_1DA352C30);
      v26 = sub_1DA34CBA0();
      v28 = v16;
      v29 = sub_1DA300D78(v26, v27, &v41);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1DA2E0000, v22, v23, "Failed to convert %s JSON data to string", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1DA74B3A0](v25, -1, -1);
      v30 = v24;
    }

    MEMORY[0x1DA74B3A0](v30, -1, -1);
    v38 = v14;
    v39 = v28;
LABEL_21:
    sub_1DA2E62C4(v38, v39);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1DA330318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DA34BFB0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t DeviceExpertTellMeGeneratedFlow.__allocating_init(outputPublisher:assistantSupportClient:analyticsManager:biomeEventSender:siriKitEventSender:tipKitEventSender:responseGenerator:deviceState:enableSuggestions:enableContextualRewrite:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, __int128 *a7, __int128 *a8, __int16 a9)
{
  v16 = swift_allocObject();
  DeviceExpertTellMeGeneratedFlow.init(outputPublisher:assistantSupportClient:analyticsManager:biomeEventSender:siriKitEventSender:tipKitEventSender:responseGenerator:deviceState:enableSuggestions:enableContextualRewrite:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, SHIBYTE(a9));
  return v16;
}

uint64_t DeviceExpertTellMeGeneratedFlow.init(outputPublisher:assistantSupportClient:analyticsManager:biomeEventSender:siriKitEventSender:tipKitEventSender:responseGenerator:deviceState:enableSuggestions:enableContextualRewrite:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, __int128 *a7, __int128 *a8, char a9, char a10)
{
  v11 = v10;
  v19 = sub_1DA34C680();
  v20 = OUTLINED_FUNCTION_15_3(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  *(v10 + 312) = 0u;
  *(v10 + 328) = 0u;
  *(v10 + 296) = 0u;
  sub_1DA2EEF28(a1, v10 + 16);
  *(v10 + 56) = a2;
  type metadata accessor for DeviceExpertCATsSimple(0);

  sub_1DA34C670();
  *(v10 + 64) = sub_1DA34C630();
  *(v10 + 248) = a3;
  sub_1DA2EEF28(a4, v10 + 72);
  sub_1DA2EEF28(a5, v10 + 112);
  sub_1DA2EEF28(a6, v10 + 152);
  sub_1DA34C3F0();

  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for LocalizedResourceProvider();
  OUTLINED_FUNCTION_121();
  v21 = swift_allocObject();
  sub_1DA2E5B48(&v24, v21 + 16);
  *(v11 + 192) = v21;
  sub_1DA2E5B48(a7, v11 + 200);
  sub_1DA2E5B48(a8, v11 + 256);
  *(v11 + 240) = a9;
  *(v11 + 241) = a10;
  return v11;
}

uint64_t sub_1DA330610()
{
  type metadata accessor for DeviceExpertTellMeGeneratedFlow();
  sub_1DA33ACBC(&qword_1ECBA60E0, v0, type metadata accessor for DeviceExpertTellMeGeneratedFlow, &protocol conformance descriptor for DeviceExpertTellMeGeneratedFlow);
  OUTLINED_FUNCTION_12_5();
  return sub_1DA34C140();
}

uint64_t sub_1DA3306BC()
{
  OUTLINED_FUNCTION_16();
  v1[70] = v0;
  v1[69] = v2;
  v3 = sub_1DA34C8E0();
  v1[71] = v3;
  OUTLINED_FUNCTION_0_12(v3);
  v1[72] = v4;
  v1[73] = OUTLINED_FUNCTION_76();
  v5 = sub_1DA34C1A0();
  v1[74] = v5;
  OUTLINED_FUNCTION_0_12(v5);
  v1[75] = v6;
  v1[76] = OUTLINED_FUNCTION_76();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  OUTLINED_FUNCTION_15_3(v7);
  v1[77] = OUTLINED_FUNCTION_76();
  v8 = sub_1DA34C290();
  v1[78] = v8;
  OUTLINED_FUNCTION_0_12(v8);
  v1[79] = v9;
  v1[80] = OUTLINED_FUNCTION_76();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60E8, &unk_1DA352C00);
  v1[81] = v10;
  OUTLINED_FUNCTION_15_3(v10);
  v1[82] = OUTLINED_FUNCTION_76();
  v11 = sub_1DA34C3B0();
  v1[83] = v11;
  OUTLINED_FUNCTION_0_12(v11);
  v1[84] = v12;
  v1[85] = OUTLINED_FUNCTION_76();
  v13 = sub_1DA34C280();
  v1[86] = v13;
  OUTLINED_FUNCTION_0_12(v13);
  v1[87] = v14;
  v1[88] = OUTLINED_FUNCTION_129();
  v1[89] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5910, &unk_1DA34E238);
  OUTLINED_FUNCTION_15_3(v15);
  v1[90] = OUTLINED_FUNCTION_76();
  v16 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  v1[91] = v16;
  OUTLINED_FUNCTION_15_3(v16);
  v1[92] = OUTLINED_FUNCTION_129();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  OUTLINED_FUNCTION_15_3(v17);
  v1[97] = OUTLINED_FUNCTION_129();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v18 = type metadata accessor for SnippetResponseComponents(0);
  v1[105] = v18;
  OUTLINED_FUNCTION_15_3(v18);
  v1[106] = OUTLINED_FUNCTION_76();
  v19 = type metadata accessor for ContextualRewriteResult(0);
  v1[107] = v19;
  OUTLINED_FUNCTION_15_3(v19);
  v1[108] = OUTLINED_FUNCTION_129();
  v1[109] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  OUTLINED_FUNCTION_15_3(v20);
  v1[110] = OUTLINED_FUNCTION_129();
  v1[111] = swift_task_alloc();
  v21 = sub_1DA34BFB0();
  v1[112] = v21;
  OUTLINED_FUNCTION_0_12(v21);
  v1[113] = v22;
  v1[114] = OUTLINED_FUNCTION_129();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v23 = sub_1DA34BFD0();
  v1[117] = v23;
  OUTLINED_FUNCTION_0_12(v23);
  v1[118] = v24;
  v1[119] = OUTLINED_FUNCTION_76();
  v25 = sub_1DA34BFF0();
  v1[120] = v25;
  OUTLINED_FUNCTION_0_12(v25);
  v1[121] = v26;
  v1[122] = OUTLINED_FUNCTION_76();
  v27 = sub_1DA34B940();
  v1[123] = v27;
  OUTLINED_FUNCTION_0_12(v27);
  v1[124] = v28;
  v1[125] = OUTLINED_FUNCTION_76();
  v29 = sub_1DA34C540();
  v1[126] = v29;
  OUTLINED_FUNCTION_0_12(v29);
  v1[127] = v30;
  v1[128] = OUTLINED_FUNCTION_76();
  v31 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1DA330C1C()
{
  OUTLINED_FUNCTION_59();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  *(v0 + 1032) = __swift_project_value_buffer(*(v0 + 568), qword_1EE109060);
  v1 = sub_1DA34C8C0();
  v2 = sub_1DA34CD90();
  if (OUTLINED_FUNCTION_25_4(v2))
  {
    v3 = OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_9_3(v3);
    OUTLINED_FUNCTION_18_6();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_6_9();
  }

  sub_1DA34C530();
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE10E038;

  return MEMORY[0x1EEE6DFA0](sub_1DA330D38, v9, 0);
}

uint64_t sub_1DA330D38()
{
  OUTLINED_FUNCTION_59();
  sub_1DA311144(*(v0 + 1024));
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DA330DBC()
{
  v68 = v0;
  sub_1DA34C1F0();
  OUTLINED_FUNCTION_123(v0 + 26);
  OUTLINED_FUNCTION_68_1();
  v1 = sub_1DA34C300();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
  }

  else
  {
    sub_1DA34B930();
    v3 = sub_1DA34B920();
    v4 = v5;
    v6 = OUTLINED_FUNCTION_68_1();
    v7(v6);
  }

  v0[131] = v4;
  v0[130] = v3;
  v8 = v0[70];
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  v9 = *(v8 + 296);
  v0[132] = v9;
  if (v9 && (v10 = v0[70], v11 = v10[38], (v0[133] = v11) != 0))
  {
    v12 = v10[17];
    v13 = v10[18];
    v64 = v10;
    __swift_project_boxed_opaque_existential_1(v10 + 14, v12);
    v14 = *(v13 + 16);
    v15 = v9;
    v66 = v11;
    v14(v15, v12, v13);
    v16 = v15;
    v17 = sub_1DA34C8C0();
    v18 = sub_1DA34CD90();

    v65 = v16;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_37();
      v20 = swift_slowAlloc();
      v67 = v20;
      *v19 = 136315138;
      v21 = sub_1DA34C7E0();
      v23 = sub_1DA300D78(v21, v22, &v67);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1DA2E0000, v17, v18, "DeviceExpertTellMeGeneratedFlow#execute - Search request utterance %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v24 = v0[122];
    v25 = v0[121];
    v26 = v0[120];
    v27 = v0[119];
    v28 = v0[118];
    v29 = v0[117];
    sub_1DA34C740();
    sub_1DA34BFE0();
    (*(v25 + 8))(v24, v26);
    v30 = sub_1DA34B980();
    v0[134] = v30;
    (*(v28 + 8))(v27, v29);
    if (!*(v30 + 16))
    {

      v42 = sub_1DA34C8C0();
      v43 = sub_1DA34CDA0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_11_2();
        *v44 = 0;
        _os_log_impl(&dword_1DA2E0000, v42, v43, "DeviceExpertTellMeGeneratedFlow#execute() No results available", v44, 2u);
        OUTLINED_FUNCTION_15_8();
      }

      v45 = v0[80];
      v46 = v0[79];
      v47 = v0[78];
      v48 = v0[77];
      v49 = v0[76];
      v50 = v0[75];
      v63 = v0[74];

      v51 = v64[18];
      __swift_project_boxed_opaque_existential_1(v64 + 14, v64[17]);
      sub_1DA34C1E0();
      (*(v46 + 104))(v45, *MEMORY[0x1E69CFDD0], v47);
      sub_1DA34C410();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
      (*(v50 + 104))(v49, *MEMORY[0x1E69CFC70], v63);
      sub_1DA3070C4(v45, v48, v49, 0);
      (*(v51 + 8))();

      sub_1DA34C2B0();

      sub_1DA3343E8();
      OUTLINED_FUNCTION_1_22();

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_96();

      __asm { BRAA            X1, X16 }
    }

    v31 = sub_1DA34C8C0();
    v32 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v32))
    {
      v33 = OUTLINED_FUNCTION_37();
      *v33 = 134217984;
      *(v33 + 4) = *(v30 + 16);

      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_6_9();
    }

    else
    {
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[135] = v58;
    *v58 = v59;
    v58[1] = sub_1DA3314EC;
    OUTLINED_FUNCTION_96();

    sub_1DA33453C(v60, v61);
  }

  else
  {
    v39 = sub_1DA34C8C0();
    v40 = sub_1DA34CDA0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_11_2();
      *v41 = 0;
      _os_log_impl(&dword_1DA2E0000, v39, v40, "DeviceExpertTellMeGeneratedFlow#execute() Invalid pommes response or experience. Error executing request", v41, 2u);
      OUTLINED_FUNCTION_6();
    }

    sub_1DA34CFC0();
    OUTLINED_FUNCTION_96();
  }
}

uint64_t sub_1DA3314EC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3315D0()
{
  v80 = v0;
  v2 = v0[112];
  v3 = v0[111];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v2);
  v5 = v0[134];
  if (EnumTagSinglePayload == 1)
  {

    sub_1DA2EF188(v3, &qword_1ECBA57C8, &unk_1DA34DA10);

    v6 = sub_1DA34C8C0();
    v7 = sub_1DA34CDA0();
    v8 = OUTLINED_FUNCTION_25_4(v7);
    v9 = v0[134];
    if (v8)
    {
      v10 = OUTLINED_FUNCTION_37();
      *v10 = 134217984;
      v11 = *(v9 + 16);

      *(v10 + 4) = v11;

      _os_log_impl(&dword_1DA2E0000, v6, v2, "DeviceExpertTellMeGeneratedFlow#execute() Unable to determine best result from candidates (%ld)", v10, 0xCu);
      OUTLINED_FUNCTION_15_8();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v76 = v0[133];
    v77 = v0[132];
    v21 = v0[80];
    v22 = v0[79];
    v23 = v0[78];
    v24 = v0[77];
    v25 = v0[76];
    v26 = v0[75];
    v75 = v0[74];
    v27 = v0[70];
    v28 = v27[18];
    __swift_project_boxed_opaque_existential_1(v27 + 14, v27[17]);
    sub_1DA34C1E0();
    (*(v22 + 104))(v21, *MEMORY[0x1E69CFDD0], v23);
    sub_1DA34C410();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    (*(v26 + 104))(v25, *MEMORY[0x1E69CFC70], v75);
    sub_1DA3070C4(v21, v24, v25, 1);
    (*(v28 + 8))();

    sub_1DA34C2B0();

    sub_1DA3343E8();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_35_2();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X1, X16 }
  }

  v12 = v0[116];
  v13 = v0[113];
  v14 = v0[70];

  (*(v13 + 32))(v12, v3, v2);
  if (*(v14 + 240) == 1)
  {
    v15 = swift_task_alloc();
    v0[136] = v15;
    *v15 = v0;
    v15[1] = sub_1DA331DAC;
    OUTLINED_FUNCTION_115();

    return sub_1DA33BD24(v16, v17, v18);
  }

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  __swift_project_value_buffer(v0[71], qword_1EE109080);
  v35 = sub_1DA34C8C0();
  v36 = sub_1DA34CD90();
  if (OUTLINED_FUNCTION_25_4(v36))
  {
    OUTLINED_FUNCTION_37();
    v12 = OUTLINED_FUNCTION_130();
    *&v78[0] = v12;
    v37 = OUTLINED_FUNCTION_52_1(4.8149e-34);
    *(v5 + 4) = sub_1DA300D78(v37, 0xE900000000000029, v78);
    OUTLINED_FUNCTION_18_6();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_6_9();
  }

  OUTLINED_FUNCTION_118();
  v43 = v12[2];
  v0[137] = v43;
  v44 = OUTLINED_FUNCTION_122();
  (v43)(v44);
  OUTLINED_FUNCTION_50_1();
  v43();
  if (qword_1EE109470 != -1)
  {
    OUTLINED_FUNCTION_12_7(&qword_1EE109470);
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_79_0(v45);
  if (!v46)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    __swift_project_value_buffer(v0[71], qword_1EE109080);
    v50 = sub_1DA34C8C0();
    v51 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v51))
    {
      OUTLINED_FUNCTION_37();
      v52 = OUTLINED_FUNCTION_130();
      *&v78[0] = v52;
      v53 = OUTLINED_FUNCTION_52_1(4.8149e-34);
      *(v5 + 4) = sub_1DA300D78(v53, 0xE900000000000029, v78);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6_9();
    }

    if (qword_1EE109E70 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
    }

    OUTLINED_FUNCTION_2_7();
    if (!v46)
    {
      goto LABEL_35;
    }

    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
    }

    v59 = qword_1EE10E060;
    v60 = OUTLINED_FUNCTION_100();
    v61 = [v2 stringForKey_];

    if (v61)
    {
      sub_1DA34CB40();
      OUTLINED_FUNCTION_89_0();

      OUTLINED_FUNCTION_68_1();
    }

    else
    {
LABEL_35:
      sub_1DA34BFA0();
      v62 = static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter();
      v63 = OUTLINED_FUNCTION_81_0();
      sub_1DA31A60C(v63, v64, v62);
      OUTLINED_FUNCTION_132();

      if (!v2)
      {
LABEL_38:
        OUTLINED_FUNCTION_29_7();
        swift_allocObject();
        v65 = OUTLINED_FUNCTION_93();
        OUTLINED_FUNCTION_133(v65);

        sub_1DA34BFA0();
        v66 = *(v1 + 16);
        v78[0] = *v1;
        v78[1] = v66;
        v78[2] = *(v1 + 32);
        v79 = *(v1 + 48);
        type metadata accessor for FlowContext();
        OUTLINED_FUNCTION_117();
        swift_allocObject();
        v67 = OUTLINED_FUNCTION_75_0();
        v0[141] = OUTLINED_FUNCTION_126(v67, v68, v69, v70, v71);
        swift_task_alloc();
        OUTLINED_FUNCTION_47();
        v0[142] = v72;
        *v72 = v73;
        OUTLINED_FUNCTION_13_7(v72);
        OUTLINED_FUNCTION_115();

        return sub_1DA2E8B8C();
      }

      OUTLINED_FUNCTION_110();
    }

    sub_1DA34BB20();
    goto LABEL_38;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[139] = v47;
  *v47 = v48;
  OUTLINED_FUNCTION_48_1(v47);
  OUTLINED_FUNCTION_115();

  return sub_1DA324EA8();
}

uint64_t sub_1DA331DAC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA331E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_144();
  a25 = v30;
  a26 = v31;
  a24 = v28;
  OUTLINED_FUNCTION_118();
  v32 = *(v29 + 16);
  v28[137] = v32;
  v33 = OUTLINED_FUNCTION_122();
  (v32)(v33);
  OUTLINED_FUNCTION_50_1();
  v32();
  if (qword_1EE109470 != -1)
  {
    OUTLINED_FUNCTION_12_7(&qword_1EE109470);
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_79_0(v34);
  if (!v35)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    __swift_project_value_buffer(v28[71], qword_1EE109080);
    v40 = sub_1DA34C8C0();
    v41 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v41))
    {
      OUTLINED_FUNCTION_37();
      v42 = OUTLINED_FUNCTION_130();
      a9 = v42;
      v43 = OUTLINED_FUNCTION_52_1(4.8149e-34);
      *(v27 + 4) = sub_1DA300D78(v43, 0xE900000000000029, &a9);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6_9();
    }

    if (qword_1EE109E70 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
    }

    OUTLINED_FUNCTION_2_7();
    if (!v35)
    {
      goto LABEL_20;
    }

    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
    }

    v49 = qword_1EE10E060;
    v50 = OUTLINED_FUNCTION_100();
    v51 = [v26 stringForKey_];

    if (v51)
    {
      sub_1DA34CB40();
      OUTLINED_FUNCTION_89_0();

      OUTLINED_FUNCTION_68_1();
    }

    else
    {
LABEL_20:
      sub_1DA34BFA0();
      v52 = static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter();
      v53 = OUTLINED_FUNCTION_81_0();
      sub_1DA31A60C(v53, v54, v52);
      OUTLINED_FUNCTION_132();

      if (!v26)
      {
LABEL_23:
        OUTLINED_FUNCTION_29_7();
        swift_allocObject();
        v55 = OUTLINED_FUNCTION_93();
        OUTLINED_FUNCTION_133(v55);

        sub_1DA34BFA0();
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_117();
        swift_allocObject();
        v56 = OUTLINED_FUNCTION_75_0();
        v28[141] = OUTLINED_FUNCTION_126(v56, v57, v58, v59, v60);
        swift_task_alloc();
        OUTLINED_FUNCTION_47();
        v28[142] = v61;
        *v61 = v62;
        OUTLINED_FUNCTION_13_7(v61);
        OUTLINED_FUNCTION_84_0();

        return sub_1DA2E8B8C();
      }

      OUTLINED_FUNCTION_110();
    }

    sub_1DA34BB20();
    goto LABEL_23;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v28[139] = v36;
  *v36 = v37;
  OUTLINED_FUNCTION_48_1(v36);
  OUTLINED_FUNCTION_84_0();

  return sub_1DA324EA8();
}

uint64_t sub_1DA3321A8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA33228C()
{
  OUTLINED_FUNCTION_144();
  v1 = v0[137];
  v2 = v0[112];
  v3 = v0[109];
  OUTLINED_FUNCTION_3_15();
  sub_1DA33AC64(v3, v4);
  v5 = OUTLINED_FUNCTION_102();
  v6(v5);
  v7 = OUTLINED_FUNCTION_75_0();
  sub_1DA33AC04(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_81_0();
  v1(v10);
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_1EE109E70);
  }

  OUTLINED_FUNCTION_2_7();
  if (!v11)
  {
    goto LABEL_9;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE109E78);
  }

  v12 = qword_1EE10E060;
  v13 = OUTLINED_FUNCTION_100();
  v14 = [v2 stringForKey_];

  if (v14)
  {
    sub_1DA34CB40();
    OUTLINED_FUNCTION_89_0();

    OUTLINED_FUNCTION_68_1();
  }

  else
  {
LABEL_9:
    sub_1DA34BFA0();
    v15 = static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter();
    v16 = OUTLINED_FUNCTION_81_0();
    sub_1DA31A60C(v16, v17, v15);
    OUTLINED_FUNCTION_132();

    if (!v2)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_110();
  }

  sub_1DA34BB20();
LABEL_12:
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_133(v18);

  sub_1DA34BFA0();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_117();
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_75_0();
  v0[141] = OUTLINED_FUNCTION_126(v19, v20, v21, v22, v23);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[142] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_13_7(v24);
  OUTLINED_FUNCTION_84_0();

  return sub_1DA2E8B8C();
}

uint64_t sub_1DA3324B0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA332594()
{
  v90 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 808);
  v4 = *(v0 + 728);
  v5 = *(*(v0 + 840) + 20);
  *(v0 + 1224) = v5;
  sub_1DA2F00BC(v1 + v5, v2);
  v6 = OUTLINED_FUNCTION_81_0();
  sub_1DA2F00BC(v6, v7);
  sub_1DA2F00BC(v2, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1DA2F00BC(*(v0 + 824), *(v0 + 816));
    if (OUTLINED_FUNCTION_134() != 1)
    {
      sub_1DA2EF188(*(v0 + 808), &qword_1ECBA5848, qword_1DA34DF20);
    }
  }

  else
  {
    v8 = *(v0 + 816);
    v9 = *(v0 + 728);
    OUTLINED_FUNCTION_2_18();
    sub_1DA33AC04(v10, v8, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  }

  sub_1DA2F00BC(*(v0 + 816), *(v0 + 800));
  if (OUTLINED_FUNCTION_134() == 1)
  {
    v12 = *(v0 + 800);

    sub_1DA2EF188(v12, &qword_1ECBA5848, qword_1DA34DF20);
    v13 = sub_1DA34C8C0();
    v14 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_25_4(v14))
    {
      v15 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v15);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_6_9();
    }

    v79 = *(v0 + 1064);
    v80 = *(v0 + 1056);
    v84 = *(v0 + 920);
    v85 = *(v0 + 928);
    v82 = *(v0 + 904);
    v83 = *(v0 + 896);
    v81 = *(v0 + 872);
    v86 = *(v0 + 848);
    v21 = *(v0 + 640);
    v22 = *(v0 + 632);
    v23 = *(v0 + 616);
    v24 = *(v0 + 608);
    v25 = *(v0 + 600);
    v77 = *(v0 + 624);
    v78 = *(v0 + 592);
    v26 = *(v0 + 560);

    v27 = v26[18];
    __swift_project_boxed_opaque_existential_1(v26 + 14, v26[17]);
    sub_1DA34C1E0();
    (*(v22 + 104))(v21, *MEMORY[0x1E69CFDD0], v77);
    sub_1DA34C410();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    (*(v25 + 104))(v24, *MEMORY[0x1E69CFC70], v78);
    sub_1DA3070C4(v21, v23, v24, 2);
    (*(v27 + 8))();

    sub_1DA34C2B0();

    OUTLINED_FUNCTION_50_1();
    sub_1DA2EF188(v32, v33, v34);
    OUTLINED_FUNCTION_50_1();
    sub_1DA2EF188(v35, v36, v37);
    OUTLINED_FUNCTION_50_1();
    sub_1DA2EF188(v38, v39, v40);
    OUTLINED_FUNCTION_3_15();
    sub_1DA33AC64(v81, v41);
    v42 = *(v82 + 8);
    v42(v84, v83);
    v42(v85, v83);
    OUTLINED_FUNCTION_7_9();
    sub_1DA33AC64(v86, v43);
    sub_1DA3343E8();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_35_2();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_96();

    __asm { BRAA            X1, X16 }
  }

  v46 = *(v0 + 792);
  v47 = *(v0 + 728);
  OUTLINED_FUNCTION_2_18();
  sub_1DA33AC04(v48, v49, v50);
  v51 = OUTLINED_FUNCTION_102();
  sub_1DA2F00BC(v51, v52);
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    sub_1DA2EF188(*(v0 + 792), &qword_1ECBA5848, qword_1DA34DF20);
  }

  else
  {
    v53 = *(v0 + 760);
    v54 = OUTLINED_FUNCTION_102();
    sub_1DA30CD4C(v54, v55);
    OUTLINED_FUNCTION_68_1();
    v56 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
    OUTLINED_FUNCTION_19_8();
    sub_1DA33AC64(v53, v57);
    v58 = OUTLINED_FUNCTION_81_0();
    sub_1DA33AC64(v58, v59);
    if (v56 == 2)
    {
LABEL_17:
      v67 = *(v0 + 896);
      v68 = *(v0 + 880);
      v69 = *(v0 + 560);
      (*(v0 + 1096))(v68, *(v0 + 920), v67);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v67);
      FeedbackModel.init(result:)(v68, &v87);
      v70 = v88;
      v71 = v89;
      v72 = v69[39];
      v73 = v69[40];
      v69[39] = v87;
      *(v69 + 20) = v70;
      v69[42] = v71;
      sub_1DA338A04(v72, v73);
      goto LABEL_18;
    }
  }

  sub_1DA2F00BC(*(v0 + 824), *(v0 + 784));
  if (OUTLINED_FUNCTION_134() == 1)
  {
    sub_1DA2EF188(*(v0 + 784), &qword_1ECBA5848, qword_1DA34DF20);
    goto LABEL_18;
  }

  v60 = *(v0 + 752);
  v61 = OUTLINED_FUNCTION_102();
  sub_1DA30CD4C(v61, v62);
  OUTLINED_FUNCTION_68_1();
  v63 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  OUTLINED_FUNCTION_19_8();
  sub_1DA33AC64(v60, v64);
  v65 = OUTLINED_FUNCTION_81_0();
  sub_1DA33AC64(v65, v66);
  if (v63 == 2)
  {
    goto LABEL_17;
  }

LABEL_18:
  v74 = swift_task_alloc();
  *(v0 + 1144) = v74;
  *v74 = v0;
  v74[1] = sub_1DA332C44;
  OUTLINED_FUNCTION_96();

  return sub_1DA334F38();
}

uint64_t sub_1DA332C44()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1152) = v3;

  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA332D30()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 776);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v61 = *(v0 + 1224);
  v5 = *(v0 + 696);
  v62 = *(v0 + 688);
  v63 = *(v0 + 720);
  v65 = *(v0 + 656);
  v6 = *(v0 + 560);
  v64 = v6 + 25;
  v66 = *(v0 + 648);
  v67 = *(v0 + 728);
  sub_1DA34C2C0();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1DA34C270();
  v11 = v6[39];
  *(v0 + 1160) = v11;
  v12 = v6[40];
  *(v0 + 1168) = v12;
  v13 = v6[41];
  *(v0 + 1176) = v13;
  v14 = v6[42];
  *(v0 + 1184) = v14;
  sub_1DA338978(v11, v12);
  sub_1DA2F00BC(v1 + v61, v2);
  (*(v5 + 16))(v4, v3, v62);
  v15 = swift_task_alloc();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = v1;
  *(v15 + 48) = v63;
  *(v15 + 56) = 2;
  *(v15 + 64) = v2;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  *&v17 = v13;
  *(&v17 + 1) = v14;
  *(v15 + 88) = v17;
  *(v15 + 72) = v16;
  *(v15 + 104) = v64;
  sub_1DA34C320();

  v18 = *(v66 + 48);
  sub_1DA2F00BC(v1, v65);
  sub_1DA2F00BC(v2, v65 + v18);
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v65, 1, v67);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65 + v18, 1, v67);
  v20 = EnumTagSinglePayload;
  if (v5 == 1)
  {
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_123((*(v0 + 560) + 200));
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 1216) = v21;
      *v21 = v22;
      v21[1] = sub_1DA333E74;
      OUTLINED_FUNCTION_141();

      return MEMORY[0x1EEE39990](v23);
    }

    v35 = *(v0 + 744);
    v36 = *(v0 + 728);
    v37 = *(v0 + 560);
    OUTLINED_FUNCTION_2_18();
    sub_1DA33AC04(v65 + v18, v35, v38);
    OUTLINED_FUNCTION_123((v37 + 200));
    *(v0 + 352) = v36;
    OUTLINED_FUNCTION_18_7();
    *(v0 + 360) = sub_1DA33ACBC(v39, 255, v40, &protocol conformance descriptor for TellMeGeneratedSnippetModels);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
    sub_1DA30CD4C(v35, boxed_opaque_existential_0);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 1208) = v42;
    *v42 = v43;
    OUTLINED_FUNCTION_137(v42);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_18();
  sub_1DA33AC04(v25, v26, v27);
  if (v20 == 1)
  {
    v28 = *(v0 + 744);
    v29 = *(v0 + 728);
    OUTLINED_FUNCTION_123((*(v0 + 560) + 200));
    *(v0 + 392) = v29;
    OUTLINED_FUNCTION_18_7();
    *(v0 + 400) = sub_1DA33ACBC(v30, 255, v31, &protocol conformance descriptor for TellMeGeneratedSnippetModels);
    v32 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
    sub_1DA30CD4C(v28, v32);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 1200) = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_137(v33);
LABEL_9:
    OUTLINED_FUNCTION_141();

    return MEMORY[0x1EEE39988](v44);
  }

  v46 = *(v0 + 744);
  v47 = *(v0 + 736);
  v48 = *(v0 + 728);
  v49 = *(v0 + 560);
  OUTLINED_FUNCTION_2_18();
  sub_1DA33AC04(v65 + v18, v47, v50);
  OUTLINED_FUNCTION_123((v49 + 200));
  *(v0 + 432) = v48;
  OUTLINED_FUNCTION_18_7();
  v53 = sub_1DA33ACBC(v51, 255, v52, &protocol conformance descriptor for TellMeGeneratedSnippetModels);
  *(v0 + 440) = v53;
  v54 = __swift_allocate_boxed_opaque_existential_0((v0 + 408));
  sub_1DA30CD4C(v47, v54);
  *(v0 + 472) = v48;
  *(v0 + 480) = v53;
  v55 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
  sub_1DA30CD4C(v46, v55);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 1192) = v56;
  *v56 = v57;
  v56[1] = sub_1DA333254;
  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE39980](v58);
}

uint64_t sub_1DA333254()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = v1;
  OUTLINED_FUNCTION_2_12();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 448));
  __swift_destroy_boxed_opaque_existential_1((v2 + 408));
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3337F0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = v1;
  OUTLINED_FUNCTION_2_12();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 368));
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA333D74()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = v1;
  OUTLINED_FUNCTION_2_12();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 328));
  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA333E74()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3343E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_1DA34CD30();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE10E038;
  v5 = sub_1DA33ACBC(&qword_1EE109788, 255, type metadata accessor for TokenGeneratorActor, &unk_1DA350DC4);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  sub_1DA302998(0, 0, v2, &unk_1DA350E20, v6);
}

uint64_t sub_1DA33453C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1DA34BFB0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA33460C, 0, 0);
}

uint64_t sub_1DA33460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_144();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  if (*(v26[3] + 16))
  {
    a14 = v26[3];

    sub_1DA338ADC(&a14);
    v33 = a14;
    v26[9] = a14;
    v34 = *(v33 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v36 = v26[6];
      a14 = MEMORY[0x1E69E7CC0];
      sub_1DA34CF40();
      v37 = *(v36 + 16);
      v36 += 16;
      a10 = v33;
      v38 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      a11 = *(v36 + 56);
      a12 = v37;
      a13 = v36;
      v39 = (v36 - 8);
      do
      {
        v40 = v26[8];
        v41 = v26[5];
        a12(v40, v38, v41);
        sub_1DA34BD10();
        sub_1DA34BF20();
        v42 = objc_allocWithZone(sub_1DA34C980());
        sub_1DA34C970();
        (*v39)(v40, v41);
        sub_1DA34CF20();
        sub_1DA34CF50();
        sub_1DA34CF60();
        sub_1DA34CF30();
        v38 += a11;
        --v34;
      }

      while (v34);
      v35 = a14;
    }

    v26[10] = v35;
    if (sub_1DA323DCC())
    {
      sub_1DA323DE0();
      if ((v35 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1DA74A960](0, v35);
      }

      else
      {
        v43 = *(v35 + 32);
      }

      v44 = v43;
      v26[11] = v43;
      if (sub_1DA34C960())
      {
        v45 = swift_task_alloc();
        v26[12] = v45;
        *v45 = v26;
        v45[1] = sub_1DA33497C;
        OUTLINED_FUNCTION_84_0();

        return MEMORY[0x1EEE49B00](v46);
      }
    }

    else
    {
    }

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v48 = sub_1DA34C8E0();
    __swift_project_value_buffer(v48, qword_1EE109060);
    v49 = sub_1DA34C8C0();
    v50 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v50))
    {
      v51 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v51);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_6_9();
    }

    v58 = v26[2];
    v57 = v26[3];

    sub_1DA330318(v57, v58);
  }

  else
  {
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_84_0();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DA33497C()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v3[13] = v7;
  v3[14] = v8;
  v3[15] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA334AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_60();
  a18 = v21;
  v24 = *(v21 + 112);
  if (v24)
  {
    if (qword_1EE109058 != -1)
    {
LABEL_27:
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v25 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_46_1(v25, qword_1EE109060);

    v26 = sub_1DA34C8C0();
    sub_1DA34CD90();
    OUTLINED_FUNCTION_77_0();

    if (OUTLINED_FUNCTION_73())
    {
      v27 = *(v21 + 104);
      v28 = OUTLINED_FUNCTION_37();
      v29 = swift_slowAlloc();
      a9 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DA300D78(v27, v24, &a9);
      _os_log_impl(&dword_1DA2E0000, v26, v20, "DeviceExpertTellMeGeneratedFlow#findBestResults - %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_23();
    }

    v30 = 0;
    v31 = *(v21 + 48);
    v32 = *(*(v21 + 72) + 16);
    while (1)
    {
      if (v32 == v30)
      {
        v51 = *(v21 + 88);
        v52 = *(v21 + 40);

        OUTLINED_FUNCTION_21();
        v54 = v52;
        goto LABEL_23;
      }

      v33 = *(v21 + 72);
      if (v30 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v35 = *(v21 + 104);
      v34 = *(v21 + 112);
      (*(v31 + 16))(*(v21 + 56), v33 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, *(v21 + 40));
      if (sub_1DA34BD10() == v35 && v34 == v36)
      {
        break;
      }

      v20 = sub_1DA34D160();

      if (v20)
      {
        goto LABEL_21;
      }

      (*(v31 + 8))(*(v21 + 56), *(v21 + 40));
      ++v30;
    }

LABEL_21:

    v47 = *(v21 + 40);
    v55 = *(v21 + 16);

    OUTLINED_FUNCTION_50_1();
    v56();
    v49 = v55;
    v50 = 0;
  }

  else
  {

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v38 = sub_1DA34C8E0();
    __swift_project_value_buffer(v38, qword_1EE109060);
    v39 = sub_1DA34C8C0();
    v40 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_25_4(v40))
    {
      v41 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v41);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_6_9();
    }

    v47 = *(v21 + 40);
    v48 = *(v21 + 16);

    v49 = v48;
    v50 = 1;
  }

  v53 = 1;
  v54 = v47;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v49, v50, v53, v54);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
}

uint64_t sub_1DA334DDC()
{
  OUTLINED_FUNCTION_2_6();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v1 = sub_1DA34C8E0();
  v2 = OUTLINED_FUNCTION_46_1(v1, qword_1EE109060);
  v3 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  v4 = OUTLINED_FUNCTION_73();
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  if (v4)
  {
    OUTLINED_FUNCTION_37();
    v7 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v8);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v9, v10, "DeviceExpertTellMeGeneratedFlow#findBestResults - Error evaluating best result: %@");
    sub_1DA2EF188(v7, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  else
  {
  }

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);

  OUTLINED_FUNCTION_15();

  return v15();
}

uint64_t sub_1DA334F38()
{
  OUTLINED_FUNCTION_16();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for TroubleshootingSnippetModel(0);
  OUTLINED_FUNCTION_15_3(v3);
  v1[11] = OUTLINED_FUNCTION_76();
  v4 = type metadata accessor for TipSnippetModel(0);
  v1[12] = v4;
  OUTLINED_FUNCTION_15_3(v4);
  v1[13] = OUTLINED_FUNCTION_76();
  v5 = type metadata accessor for SummarizedAnswerSnippetModel(0);
  v1[14] = v5;
  OUTLINED_FUNCTION_15_3(v5);
  v1[15] = OUTLINED_FUNCTION_76();
  v6 = type metadata accessor for ListStyleAnswerSnippetModel(0);
  v1[16] = v6;
  OUTLINED_FUNCTION_15_3(v6);
  v1[17] = OUTLINED_FUNCTION_76();
  v7 = type metadata accessor for LearnMoreSnippetModel(0);
  OUTLINED_FUNCTION_15_3(v7);
  v1[18] = OUTLINED_FUNCTION_76();
  v8 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  v1[19] = v8;
  OUTLINED_FUNCTION_15_3(v8);
  v1[20] = OUTLINED_FUNCTION_76();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA335060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  sub_1DA30CD4C(v10[9], v10[20]);
  OUTLINED_FUNCTION_102();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_131(v10[20]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      sub_1DA34C0F0();
      sub_1DA346FE8();
      OUTLINED_FUNCTION_89_0();

      v10[21] = v11;
      v28 = swift_task_alloc();
      v10[22] = v28;
      *v28 = v10;
      v29 = sub_1DA335538;
      goto LABEL_19;
    case 2u:
      OUTLINED_FUNCTION_131(v10[20]);
      v10[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      sub_1DA34C0F0();
      sub_1DA346FE8();
      OUTLINED_FUNCTION_89_0();

      v10[26] = v11;
      v28 = swift_task_alloc();
      v10[27] = v28;
      *v28 = v10;
      v29 = sub_1DA335774;
      goto LABEL_19;
    case 3u:
      OUTLINED_FUNCTION_131(v10[20]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      sub_1DA34C0F0();
      sub_1DA346FE8();
      OUTLINED_FUNCTION_89_0();

      v10[40] = v11;
      v28 = swift_task_alloc();
      v10[41] = v28;
      *v28 = v10;
      v29 = sub_1DA335ECC;
LABEL_19:
      v28[1] = v29;
      OUTLINED_FUNCTION_68_1();
      goto LABEL_20;
    case 5u:
      OUTLINED_FUNCTION_131(v10[20]);
      objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
      sub_1DA34C0F0();
      sub_1DA33DB8C(v10[3]);

      v30 = OUTLINED_FUNCTION_12_5();
      sub_1DA2F8590(v30, v31);
      v10[44] = v32;
      v33 = swift_task_alloc();
      v10[45] = v33;
      *v33 = v10;
      OUTLINED_FUNCTION_103(v33);
      OUTLINED_FUNCTION_12_5();
LABEL_20:
      OUTLINED_FUNCTION_65();

      return sub_1DA337924(v38, v39, v40);
    case 6u:
      OUTLINED_FUNCTION_131(v10[20]);
      v34 = swift_task_alloc();
      v10[48] = v34;
      *v34 = v10;
      OUTLINED_FUNCTION_103(v34);
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_65();

      return sub_1DA338488(v35, v36);
    default:
      OUTLINED_FUNCTION_4_18();
      result = sub_1DA33AC64(v12, v13);
      v15 = 0;
      v16 = *(v11 + 16);
      v17 = v16;
      break;
  }

  while (v16 != v15)
  {
    if (v15 >= v17)
    {
      __break(1u);
      return result;
    }

    v18 = *(v11 + 8 * v15++ + 32);
    if (v18)
    {
      v19 = v18;
      OUTLINED_FUNCTION_114();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DA34CC80();
      }

      result = sub_1DA34CCB0();
      v17 = *(v11 + 16);
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, v11, a10);
}

uint64_t sub_1DA335538()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 184) = v6;
  *(v7 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA335654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_60();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v16)
  {
LABEL_13:
    v14 = OUTLINED_FUNCTION_65_1(v15 > 1);
  }

  v17 = *(v12 + 144);
  OUTLINED_FUNCTION_124(v14, *(v12 + 184));
  OUTLINED_FUNCTION_61_1();
  sub_1DA33AC64(v17, v18);
  OUTLINED_FUNCTION_119();
  while (v13)
  {
    OUTLINED_FUNCTION_116();
    if (v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_49_1();
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_28_6();
      if (v16)
      {
        OUTLINED_FUNCTION_33_4();
      }

      OUTLINED_FUNCTION_75_0();
      sub_1DA34CCB0();
    }
  }

  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_97();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1DA335774()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 224) = v6;
  *(v7 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA335890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v15)
  {
    v13 = OUTLINED_FUNCTION_65_1(v14 > 1);
  }

  OUTLINED_FUNCTION_124(v13, v12[28]);
  v12[30] = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  sub_1DA34C0F0();
  v16 = *(v12[6] + 16);
  if (v16)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DA348A4C(0, v16, 0);
    v17 = 32;
    v18 = v31;
    do
    {

      sub_1DA346FE8();
      v20 = v19;
      v22 = v21;

      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DA348A4C((v23 > 1), v24 + 1, 1);
      }

      *(v31 + 16) = v24 + 1;
      v25 = v31 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v12[31] = v18;
  v26 = swift_task_alloc();
  v12[32] = v26;
  *v26 = v12;
  v26[1] = sub_1DA335A58;
  OUTLINED_FUNCTION_27();

  return sub_1DA337DE8(v27, v28);
}

uint64_t sub_1DA335A58()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 264) = v7;
  *(v3 + 272) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA335B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v13)
  {
    v11 = OUTLINED_FUNCTION_65_1(v12 > 1);
  }

  v14 = v10[25];
  OUTLINED_FUNCTION_124(v11, v10[33]);
  v10[35] = v10[2];
  sub_1DA34C0F0();
  sub_1DA346FE8();
  OUTLINED_FUNCTION_89_0();

  v10[36] = v14;
  v15 = swift_task_alloc();
  v10[37] = v15;
  *v15 = v10;
  OUTLINED_FUNCTION_103(v15);
  v16 = OUTLINED_FUNCTION_68_1();

  return sub_1DA337924(v16, v17, 0);
}

uint64_t sub_1DA335C84()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 304) = v7;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA335DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_60();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v16)
  {
LABEL_13:
    v14 = OUTLINED_FUNCTION_65_1(v15 > 1);
  }

  v17 = *(v12 + 136);
  OUTLINED_FUNCTION_124(v14, *(v12 + 304));
  OUTLINED_FUNCTION_6_13();
  sub_1DA33AC64(v17, v18);
  OUTLINED_FUNCTION_119();
  while (v13)
  {
    OUTLINED_FUNCTION_116();
    if (v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_49_1();
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_28_6();
      if (v16)
      {
        OUTLINED_FUNCTION_33_4();
      }

      OUTLINED_FUNCTION_75_0();
      sub_1DA34CCB0();
    }
  }

  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_97();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1DA335ECC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 336) = v6;
  *(v7 + 344) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA335FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_60();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v16)
  {
LABEL_13:
    v14 = OUTLINED_FUNCTION_65_1(v15 > 1);
  }

  v17 = *(v12 + 120);
  OUTLINED_FUNCTION_124(v14, *(v12 + 336));
  OUTLINED_FUNCTION_64_1();
  sub_1DA33AC64(v17, v18);
  OUTLINED_FUNCTION_119();
  while (v13)
  {
    OUTLINED_FUNCTION_116();
    if (v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_49_1();
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_28_6();
      if (v16)
      {
        OUTLINED_FUNCTION_33_4();
      }

      OUTLINED_FUNCTION_75_0();
      sub_1DA34CCB0();
    }
  }

  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_97();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1DA336108()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 368) = v6;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA336224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_60();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v16)
  {
LABEL_13:
    v14 = OUTLINED_FUNCTION_65_1(v15 > 1);
  }

  v17 = *(v12 + 104);
  OUTLINED_FUNCTION_124(v14, *(v12 + 368));
  OUTLINED_FUNCTION_63_1();
  sub_1DA33AC64(v17, v18);
  OUTLINED_FUNCTION_119();
  while (v13)
  {
    OUTLINED_FUNCTION_116();
    if (v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_49_1();
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_28_6();
      if (v16)
      {
        OUTLINED_FUNCTION_33_4();
      }

      OUTLINED_FUNCTION_75_0();
      sub_1DA34CCB0();
    }
  }

  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_97();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1DA336344()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v4;
  *(v2 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA336448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_60();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v16)
  {
LABEL_13:
    v14 = OUTLINED_FUNCTION_65_1(v15 > 1);
  }

  v17 = *(v12 + 88);
  OUTLINED_FUNCTION_124(v14, *(v12 + 392));
  OUTLINED_FUNCTION_62_1();
  sub_1DA33AC64(v17, v18);
  OUTLINED_FUNCTION_119();
  while (v13)
  {
    OUTLINED_FUNCTION_116();
    if (v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_49_1();
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_28_6();
      if (v16)
      {
        OUTLINED_FUNCTION_33_4();
      }

      OUTLINED_FUNCTION_75_0();
      sub_1DA34CCB0();
    }
  }

  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_97();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1DA336568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_1();
  sub_1DA33AC64(v12, v13);
  v14 = *(v10 + 192);
  if (qword_1EE109058 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v15 = sub_1DA34C8E0();
  v16 = OUTLINED_FUNCTION_46_1(v15, qword_1EE109060);
  v17 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  if (OUTLINED_FUNCTION_73())
  {
    OUTLINED_FUNCTION_37();
    v18 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v19);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#getDialogResults - Error calling catProvider: %@");
    sub_1DA2EF188(v18, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_16_7();
  while (v11)
  {
    if (!v22)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_31_3();
    if (v23)
    {
      v24 = v23;
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_15_9();
      if (v26)
      {
        OUTLINED_FUNCTION_66_1(v25 > 1);
      }

      OUTLINED_FUNCTION_12_5();
      sub_1DA34CCB0();
      OUTLINED_FUNCTION_88_0();
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1DA336728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_6_13();
  sub_1DA33AC64(v12, v13);
  v14 = *(v10 + 232);
  if (qword_1EE109058 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v15 = sub_1DA34C8E0();
  v16 = OUTLINED_FUNCTION_46_1(v15, qword_1EE109060);
  v17 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  if (OUTLINED_FUNCTION_73())
  {
    OUTLINED_FUNCTION_37();
    v18 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v19);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#getDialogResults - Error calling catProvider: %@");
    sub_1DA2EF188(v18, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_16_7();
  while (v11)
  {
    if (!v22)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_31_3();
    if (v23)
    {
      v24 = v23;
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_15_9();
      if (v26)
      {
        OUTLINED_FUNCTION_66_1(v25 > 1);
      }

      OUTLINED_FUNCTION_12_5();
      sub_1DA34CCB0();
      OUTLINED_FUNCTION_88_0();
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1DA3368E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_6_13();
  sub_1DA33AC64(v12, v13);
  v14 = *(v10 + 272);
  if (qword_1EE109058 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v15 = sub_1DA34C8E0();
  v16 = OUTLINED_FUNCTION_46_1(v15, qword_1EE109060);
  v17 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  if (OUTLINED_FUNCTION_73())
  {
    OUTLINED_FUNCTION_37();
    v18 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v19);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#getDialogResults - Error calling catProvider: %@");
    sub_1DA2EF188(v18, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_16_7();
  while (v11)
  {
    if (!v22)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_31_3();
    if (v23)
    {
      v24 = v23;
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_15_9();
      if (v26)
      {
        OUTLINED_FUNCTION_66_1(v25 > 1);
      }

      OUTLINED_FUNCTION_12_5();
      sub_1DA34CCB0();
      OUTLINED_FUNCTION_88_0();
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1DA336AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_6_13();
  sub_1DA33AC64(v12, v13);
  v14 = *(v10 + 312);
  if (qword_1EE109058 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v15 = sub_1DA34C8E0();
  v16 = OUTLINED_FUNCTION_46_1(v15, qword_1EE109060);
  v17 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  if (OUTLINED_FUNCTION_73())
  {
    OUTLINED_FUNCTION_37();
    v18 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v19);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#getDialogResults - Error calling catProvider: %@");
    sub_1DA2EF188(v18, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_16_7();
  while (v11)
  {
    if (!v22)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_31_3();
    if (v23)
    {
      v24 = v23;
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_15_9();
      if (v26)
      {
        OUTLINED_FUNCTION_66_1(v25 > 1);
      }

      OUTLINED_FUNCTION_12_5();
      sub_1DA34CCB0();
      OUTLINED_FUNCTION_88_0();
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1DA336C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_64_1();
  sub_1DA33AC64(v12, v13);
  v14 = *(v10 + 344);
  if (qword_1EE109058 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v15 = sub_1DA34C8E0();
  v16 = OUTLINED_FUNCTION_46_1(v15, qword_1EE109060);
  v17 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  if (OUTLINED_FUNCTION_73())
  {
    OUTLINED_FUNCTION_37();
    v18 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v19);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#getDialogResults - Error calling catProvider: %@");
    sub_1DA2EF188(v18, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_16_7();
  while (v11)
  {
    if (!v22)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_31_3();
    if (v23)
    {
      v24 = v23;
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_15_9();
      if (v26)
      {
        OUTLINED_FUNCTION_66_1(v25 > 1);
      }

      OUTLINED_FUNCTION_12_5();
      sub_1DA34CCB0();
      OUTLINED_FUNCTION_88_0();
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1DA336E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_63_1();
  sub_1DA33AC64(v12, v13);
  v14 = *(v10 + 376);
  if (qword_1EE109058 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v15 = sub_1DA34C8E0();
  v16 = OUTLINED_FUNCTION_46_1(v15, qword_1EE109060);
  v17 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  if (OUTLINED_FUNCTION_73())
  {
    OUTLINED_FUNCTION_37();
    v18 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v19);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#getDialogResults - Error calling catProvider: %@");
    sub_1DA2EF188(v18, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_16_7();
  while (v11)
  {
    if (!v22)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_31_3();
    if (v23)
    {
      v24 = v23;
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_15_9();
      if (v26)
      {
        OUTLINED_FUNCTION_66_1(v25 > 1);
      }

      OUTLINED_FUNCTION_12_5();
      sub_1DA34CCB0();
      OUTLINED_FUNCTION_88_0();
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1DA336FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_62_1();
  sub_1DA33AC64(v12, v13);
  v14 = *(v10 + 400);
  if (qword_1EE109058 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v15 = sub_1DA34C8E0();
  v16 = OUTLINED_FUNCTION_46_1(v15, qword_1EE109060);
  v17 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  if (OUTLINED_FUNCTION_73())
  {
    OUTLINED_FUNCTION_37();
    v18 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v19);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#getDialogResults - Error calling catProvider: %@");
    sub_1DA2EF188(v18, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_16_7();
  while (v11)
  {
    if (!v22)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_31_3();
    if (v23)
    {
      v24 = v23;
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_15_9();
      if (v26)
      {
        OUTLINED_FUNCTION_66_1(v25 > 1);
      }

      OUTLINED_FUNCTION_12_5();
      sub_1DA34CCB0();
      OUTLINED_FUNCTION_88_0();
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1DA3371A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA3371C8, 0, 0);
}

uint64_t sub_1DA3371C8()
{
  OUTLINED_FUNCTION_16();
  sub_1DA2EEF28(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1DA337224(uint64_t a1)
{
  sub_1DA34C3D0();
  OUTLINED_FUNCTION_0();
  v42 = v3;
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  v7 = sub_1DA34C3E0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v41 - v12);
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v14 = sub_1DA34C8E0();
  __swift_project_value_buffer(v14, qword_1EE109060);
  v15 = sub_1DA34C8C0();
  v16 = sub_1DA34CD90();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_11_2();
    *v17 = 0;
    _os_log_impl(&dword_1DA2E0000, v15, v16, "DeviceExpertTellMeGeneratedFlow#onInput", v17, 2u);
    OUTLINED_FUNCTION_6();
  }

  sub_1DA34C3C0();
  if ((*(v9 + 88))(v13, v7) == *MEMORY[0x1E69D0138])
  {
    (*(v9 + 96))(v13, v7);
    v18 = *v13;
    v19 = sub_1DA34C7D0();
    if (sub_1DA323DCC())
    {
      sub_1DA323DE0();
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1DA74A960](0, v19);
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;

      sub_1DA34C750();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = v41;
        v25 = *(v41 + 296);
        *(v41 + 296) = v18;

        v26 = *(v24 + 304);
        *(v24 + 304) = v23;

        return 1;
      }
    }

    else
    {
    }

    v38 = sub_1DA34C8C0();
    v39 = sub_1DA34CDA0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_11_2();
      *v40 = 0;
      _os_log_impl(&dword_1DA2E0000, v38, v39, "DeviceExpertTellMeGeneratedFlow#onInput - Unexpected experience in pommes", v40, 2u);
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    (*(v9 + 8))(v13, v7);
    v29 = v42;
    v28 = v43;
    (*(v42 + 16))(v6, a1, v43);
    v30 = sub_1DA34C8C0();
    v31 = sub_1DA34CDA0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_37();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      sub_1DA34C3C0();
      v34 = sub_1DA34CBA0();
      v36 = v35;
      (*(v29 + 8))(v6, v28);
      v37 = sub_1DA300D78(v34, v36, &v44);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1DA2E0000, v30, v31, "DeviceExpertTellMeGeneratedFlow#onInput - Parse is of unexpected type: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      (*(v29 + 8))(v6, v28);
    }
  }

  return 0;
}

uint64_t DeviceExpertTellMeGeneratedFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  sub_1DA33A6F8(v0 + 200);

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  sub_1DA338A04(*(v0 + 312), *(v0 + 320));
  return v0;
}

uint64_t DeviceExpertTellMeGeneratedFlow.__deallocating_deinit()
{
  DeviceExpertTellMeGeneratedFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA337778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA32392C;

  return MEMORY[0x1EEE391E8](a1, a2, a3);
}

uint64_t sub_1DA33784C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA2E8A9C;

  return sub_1DA3306BC();
}

uint64_t sub_1DA3378E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceExpertTellMeGeneratedFlow();

  return MEMORY[0x1EEE391F0](v3, a2);
}

uint64_t sub_1DA337924(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 96) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_1DA34C600();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA337A24, 0, 0);
}

uint64_t sub_1DA337A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  v11 = v10[3];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v14 = v10[7];
    v13 = v10[8];
    v16 = v10[5];
    v15 = v10[6];

    sub_1DA34C5F0();
    (*(v14 + 16))(v16, v13, v15);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v15);
    v17 = swift_task_alloc();
    v10[9] = v17;
    *v17 = v10;
    v17[1] = sub_1DA337B8C;
    OUTLINED_FUNCTION_65();

    return sub_1DA3082D4();
  }

  else
  {
LABEL_8:

    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_65();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_1DA337B8C()
{
  OUTLINED_FUNCTION_2_6();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 80) = v0;

  v7 = *(v4 + 40);
  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  sub_1DA2EF188(v7, &qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA337CE4()
{
  OUTLINED_FUNCTION_16();
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = OUTLINED_FUNCTION_14_7();

  return v2(v1);
}

uint64_t sub_1DA337D68()
{
  OUTLINED_FUNCTION_16();
  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1DA337DE8(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1DA34C600();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA337EAC, 0, 0);
}

uint64_t sub_1DA337EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  v13 = *(v12 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_1DA338630(1, *(v13 + 16));
    v16 = v15[2];
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v46 = MEMORY[0x1E69E7CC0];
      sub_1DA348A8C(0, v16, 0);
      v18 = v46;
      v19 = *(v46 + 16);
      v20 = 4;
      do
      {
        v21 = v15[v20];
        v22 = *(v46 + 24);
        if (v19 >= v22 >> 1)
        {
          sub_1DA348A8C((v22 > 1), v19 + 1, 1);
        }

        *(v46 + 16) = v19 + 1;
        *(v46 + 8 * v19 + 32) = v21;
        ++v20;
        ++v19;
        --v16;
      }

      while (v16);

      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    *(v12 + 56) = v18;
    v32 = *(v12 + 40);
    v33 = *(v12 + 16);
    sub_1DA3489F4(0, v14, 0);
    v34 = v33 + 40;
    do
    {

      sub_1DA34C5F0();
      v36 = *(v17 + 16);
      v35 = *(v17 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1DA3489F4(v35 > 1, v36 + 1, 1);
      }

      *(v12 + 64) = v17;
      v37 = *(v12 + 48);
      v38 = *(v12 + 32);
      *(v17 + 16) = v36 + 1;
      (*(v32 + 32))(v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v36, v37, v38);
      v34 += 16;
      --v14;
    }

    while (v14);
    if (*(v12 + 88) == 1)
    {
      v39 = swift_task_alloc();
      *(v12 + 72) = v39;
      *v39 = v12;
      v39[1] = sub_1DA3381BC;
      OUTLINED_FUNCTION_27();

      return sub_1DA30864C(v40, v41);
    }

    else
    {

      v43 = swift_task_alloc();
      *(v12 + 80) = v43;
      *v43 = v12;
      v43[1] = sub_1DA338330;
      OUTLINED_FUNCTION_27();

      return sub_1DA308010(v44);
    }
  }

  else
  {

    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_27();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_1DA3381BC()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    v9 = OUTLINED_FUNCTION_139();

    return v10(v9);
  }
}

uint64_t sub_1DA338330()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    v9 = OUTLINED_FUNCTION_139();

    return v10(v9);
  }
}

uint64_t sub_1DA338488(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3384AC, 0, 0);
}

uint64_t sub_1DA3384AC()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DA338544;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1DA32446C(v3, v2);
}

uint64_t sub_1DA338544()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_60_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void *sub_1DA338630(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_1DA2FC70C(v2 + 1, 0);
        if (sub_1DA33A040(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3386C0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = sub_1DA34C870();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = sub_1DA34C830();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v20 = sub_1DA34C850();
  sub_1DA34C880();
  v26 = sub_1DA34CDE0();
  result = sub_1DA34CE10();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v15 + 8))(v19, v13);
  }

  if ((a4 & 1) == 0)
  {
    v22 = a2;
    if (a2)
    {
LABEL_9:

      sub_1DA34C8B0();

      if ((*(v8 + 88))(v12, v6) == *MEMORY[0x1E69E93E8])
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v12, v6);
        v23 = "";
      }

      v24 = OUTLINED_FUNCTION_11_2();
      *v24 = 0;
      v25 = sub_1DA34C810();
      _os_signpost_emit_with_name_impl(&dword_1DA2E0000, v20, v26, v25, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_6();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (HIDWORD(a2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      v22 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1DA338924(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1DA338948@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA338978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DA338A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DA338A48()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DA2E8A9C;

  return sub_1DA3371A8(v3, v0 + 16);
}

uint64_t sub_1DA338ADC(uint64_t *a1)
{
  v2 = *(sub_1DA34BFB0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA33A0DC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1DA338B84(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1DA338B84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DA34D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DA34BFB0();
        v6 = sub_1DA34CCA0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DA34BFB0() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1DA338F4C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DA338CB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DA338CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DA34BFB0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v40 = v19;
      v41 = a3;
      v38 = v21;
      v39 = v20;
      v22 = v20;
      v23 = v19;
      do
      {
        v24 = v48;
        v25 = v46;
        v46(v48, v21, v8);
        v26 = v49;
        v25(v49, v23, v8);
        sub_1DA34BD60();
        v28 = v27;
        sub_1DA34BD60();
        v30 = v29;
        v31 = *v18;
        (*v18)(v26, v8);
        result = v31(v24, v8);
        if (v30 >= v28)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return result;
        }

        v32 = *v43;
        v33 = v45;
        (*v43)(v45, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v32)(v23, v33, v8);
        v23 += v42;
        v21 += v42;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v41 + 1;
      v19 = v40 + v36;
      v20 = v39 - 1;
      v21 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DA338F4C(char **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v130 = a1;
  v6 = sub_1DA34BFB0();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v133 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v143 = &v128 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v149 = &v128 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v148 = &v128 - v14;
  v138 = v13;
  v139 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v149 = *v130;
    if (!v149)
    {
      goto LABEL_145;
    }

    a3 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v141;
    if (isUniquelyReferenced_nonNull_native)
    {
      v120 = a3;
LABEL_106:
      a3 = (v120 + 16);
      v121 = *(v120 + 2);
      while (v121 >= 2)
      {
        if (!*v139)
        {
          goto LABEL_142;
        }

        v122 = v120;
        v123 = &v120[16 * v121];
        v124 = *v123;
        v125 = (a3 + 16 * v121);
        v126 = v125[1];
        sub_1DA339934(&(*v139)[*(v138 + 72) * *v123], &(*v139)[*(v138 + 72) * *v125], &(*v139)[*(v138 + 72) * v126], v149);
        if (v16)
        {
          break;
        }

        if (v126 < v124)
        {
          goto LABEL_130;
        }

        if (v121 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v123 = v124;
        *(v123 + 1) = v126;
        v127 = *a3 - v121;
        if (*a3 < v121)
        {
          goto LABEL_132;
        }

        v121 = *a3 - 1;
        memmove(v125, v125 + 2, 16 * v127);
        *a3 = v121;
        v120 = v122;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v120 = sub_1DA339E4C(a3);
    goto LABEL_106;
  }

  v128 = a4;
  v16 = 0;
  v146 = (v13 + 8);
  v147 = v13 + 16;
  v145 = (v13 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v19 = v18;
      v20 = *(v13 + 72);
      v21 = &(*v139)[v20 * v16];
      v144 = *v139;
      v22 = v144;
      v23 = *(v13 + 16);
      v24 = v148;
      v137 = v17;
      v140 = v15;
      v23(v148, &v144[v20 * v16], v6);
      v25 = &v22[v20 * v18];
      v26 = v149;
      v136 = v23;
      v23(v149, v25, v6);
      sub_1DA34BD60();
      v28 = v27;
      sub_1DA34BD60();
      v30 = v29;
      v31 = *(v138 + 8);
      v32 = v26;
      a3 = v146;
      v31(v32, v6);
      v135 = v31;
      v31(v24, v6);
      v33 = v140;
      v17 = v137;
      v129 = v19;
      v34 = v19 + 2;
      v142 = v20;
      v35 = &v144[v20 * (v19 + 2)];
      while (1)
      {
        v36 = v34;
        v37 = v16 + 1;
        if (v37 >= v33)
        {
          break;
        }

        LODWORD(v144) = v30 < v28;
        v38 = v148;
        v39 = v136;
        (v136)(v148, v35, v6, v17);
        v40 = v37;
        v41 = v149;
        v39(v149, v21, v6);
        sub_1DA34BD60();
        v43 = v42;
        sub_1DA34BD60();
        v45 = v44;
        v46 = v41;
        v16 = v40;
        a3 = v146;
        v47 = v135;
        (v135)(v46, v6);
        v47(v38, v6);
        v33 = v140;
        v17 = v137;
        v35 = &v142[v35];
        v21 += v142;
        v34 = v36 + 1;
        if (((v144 ^ (v45 >= v43)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = v33;
LABEL_9:
      if (v30 >= v28)
      {
        v13 = v138;
      }

      else
      {
        v18 = v129;
        if (v16 < v129)
        {
          goto LABEL_136;
        }

        if (v129 >= v16)
        {
          v13 = v138;
          goto LABEL_32;
        }

        if (v33 >= v36)
        {
          v48 = v36;
        }

        else
        {
          v48 = v33;
        }

        a3 = v142 * (v48 - 1);
        v49 = v129;
        v50 = v142 * v48;
        v51 = v129 * v142;
        v52 = v16;
        do
        {
          if (v49 != --v52)
          {
            v53 = *v139;
            if (!*v139)
            {
              goto LABEL_143;
            }

            v144 = *v145;
            (v144)(v133, &v53[v51], v6, v17);
            v54 = v51 < a3 || &v53[v51] >= &v53[v50];
            if (v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v144)(&v53[a3], v133, v6);
          }

          ++v49;
          a3 -= v142;
          v50 -= v142;
          v51 += v142;
        }

        while (v49 < v52);
        v17 = v137;
        v13 = v138;
      }

      v18 = v129;
    }

LABEL_32:
    v55 = v139[1];
    if (v16 < v55)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_135;
      }

      if (v16 - v18 < v128)
      {
        break;
      }
    }

LABEL_48:
    if (v16 < v18)
    {
      goto LABEL_134;
    }

    v74 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v74;
    }

    else
    {
      sub_1DA2FC504(0, *(v74 + 16) + 1, 1, v74);
      v17 = v117;
    }

    a3 = *(v17 + 16);
    v75 = *(v17 + 24);
    v76 = a3 + 1;
    if (a3 >= v75 >> 1)
    {
      sub_1DA2FC504(v75 > 1, a3 + 1, 1, v17);
      v17 = v118;
    }

    *(v17 + 16) = v76;
    v77 = v17 + 32;
    v78 = (v17 + 32 + 16 * a3);
    *v78 = v18;
    v78[1] = v16;
    v144 = *v130;
    if (!v144)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v140 = v16;
      while (1)
      {
        v79 = v76 - 1;
        v80 = (v77 + 16 * (v76 - 1));
        v81 = (v17 + 16 * v76);
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v82 = *(v17 + 32);
          v83 = *(v17 + 40);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_69:
          if (v85)
          {
            goto LABEL_121;
          }

          v97 = *v81;
          v96 = v81[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_124;
          }

          v101 = v80[1];
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_129;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v76 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v76 < 2)
        {
          goto LABEL_123;
        }

        v104 = *v81;
        v103 = v81[1];
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_84:
        if (v100)
        {
          goto LABEL_126;
        }

        v106 = *v80;
        v105 = v80[1];
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_128;
        }

        if (v107 < v99)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v79 - 1 >= v76)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_138;
        }

        if (!*v139)
        {
          goto LABEL_141;
        }

        v16 = v17;
        a3 = v77 + 16 * (v79 - 1);
        v111 = *a3;
        v112 = v79;
        v113 = (v77 + 16 * v79);
        v114 = v113[1];
        v115 = v141;
        sub_1DA339934(&(*v139)[*(v138 + 72) * *a3], &(*v139)[*(v138 + 72) * *v113], &(*v139)[*(v138 + 72) * v114], v144);
        v141 = v115;
        if (v115)
        {
          goto LABEL_114;
        }

        if (v114 < v111)
        {
          goto LABEL_116;
        }

        v116 = *(v16 + 16);
        if (v112 > v116)
        {
          goto LABEL_117;
        }

        *a3 = v111;
        *(a3 + 8) = v114;
        if (v112 >= v116)
        {
          goto LABEL_118;
        }

        v76 = v116 - 1;
        memmove(v113, v113 + 2, 16 * (v116 - 1 - v112));
        v17 = v16;
        *(v16 + 16) = v116 - 1;
        v16 = v140;
        if (v116 <= 2)
        {
          goto LABEL_98;
        }
      }

      v86 = v77 + 16 * v76;
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_119;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_120;
      }

      v93 = v81[1];
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_122;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_125;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = v80[1];
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_133;
        }

        if (v84 < v110)
        {
          v79 = v76 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v13 = v138;
    v15 = v139[1];
    if (v16 >= v15)
    {
      goto LABEL_103;
    }
  }

  v56 = v18 + v128;
  if (__OFADD__(v18, v128))
  {
    goto LABEL_137;
  }

  if (v56 >= v55)
  {
    v56 = v139[1];
  }

  if (v56 < v18)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v16 == v56)
  {
    goto LABEL_48;
  }

  v137 = v17;
  v57 = *v139;
  v58 = *(v13 + 72);
  v144 = *(v13 + 16);
  v59 = &v57[v58 * (v16 - 1)];
  v60 = -v58;
  v129 = v18;
  v61 = (v18 - v16);
  v142 = v57;
  v131 = v58;
  v62 = &v57[v16 * v58];
  v132 = v56;
LABEL_41:
  v140 = v16;
  v134 = v62;
  v135 = v61;
  v136 = v59;
  while (1)
  {
    v63 = v148;
    v64 = v144;
    (v144)(v148, v62, v6);
    v65 = v149;
    v64(v149, v59, v6);
    sub_1DA34BD60();
    v67 = v66;
    sub_1DA34BD60();
    v69 = v68;
    v70 = *v146;
    (*v146)(v65, v6);
    v71 = v63;
    a3 = v6;
    v70(v71, v6);
    if (v69 >= v67)
    {
LABEL_46:
      v16 = v140 + 1;
      v59 = &v136[v131];
      v61 = v135 - 1;
      v62 = &v134[v131];
      if (v140 + 1 == v132)
      {
        v16 = v132;
        v17 = v137;
        v18 = v129;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v142)
    {
      break;
    }

    v72 = *v145;
    v73 = v143;
    (*v145)(v143, v62, v6);
    swift_arrayInitWithTakeFrontToBack();
    v72(v59, v73, v6);
    v59 += v60;
    v62 += v60;
    v54 = __CFADD__(v61++, 1);
    if (v54)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1DA339934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = a4;
  v8 = sub_1DA34BFB0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v66 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v65 = v56 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v15;
  v69 = a1;
  v68 = v60;
  v63 = (v12 + 8);
  v64 = (v12 + 16);
  v20 = v17 / v15;
  v56[1] = v4;
  if (v19 >= v17 / v15)
  {
    v61 = a1;
    sub_1DA2FC8E8(a2, v17 / v15, v60);
    v33 = v60;
    v34 = v60 + v20 * v15;
    v35 = -v15;
    v36 = v34;
    v58 = -v15;
LABEL_37:
    v62 = a2 + v35;
    v37 = a3;
    v56[0] = v36;
    v59 = a2;
    while (1)
    {
      if (v34 <= v33)
      {
        v69 = a2;
        v67 = v36;
        goto LABEL_59;
      }

      if (a2 <= v61)
      {
        break;
      }

      v57 = v36;
      v38 = v37 + v35;
      v39 = v34 + v35;
      v40 = v65;
      v41 = *v64;
      v42 = v34;
      (*v64)(v65, v34 + v35, v8);
      v43 = v66;
      v41(v66, v62, v8);
      sub_1DA34BD60();
      v45 = v44;
      sub_1DA34BD60();
      v47 = v46;
      v48 = *v63;
      (*v63)(v43, v8);
      v48(v40, v8);
      if (v47 < v45)
      {
        v52 = v37 < v59 || v38 >= v59;
        a3 = v37 + v35;
        if (v52)
        {
          v53 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v53;
          v36 = v57;
          v35 = v58;
          v33 = v60;
          v34 = v42;
        }

        else
        {
          v54 = v57;
          v35 = v58;
          v36 = v57;
          v55 = v62;
          v33 = v60;
          v34 = v42;
          a2 = v62;
          if (v37 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
            v34 = v42;
            v33 = v60;
            a2 = v55;
            v36 = v54;
          }
        }

        goto LABEL_37;
      }

      v49 = v37 < v42 || v38 >= v42;
      v50 = v37 + v35;
      v51 = v59;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 += v35;
        v34 = v39;
        v36 = v39;
        v33 = v60;
        v35 = v58;
        a2 = v51;
      }

      else
      {
        v36 = v39;
        v16 = v42 == v37;
        v37 += v35;
        v34 = v39;
        v33 = v60;
        v35 = v58;
        a2 = v59;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v60;
          v37 = v50;
          v34 = v39;
          v36 = v39;
        }
      }
    }

    v69 = a2;
    v67 = v56[0];
  }

  else
  {
    v62 = a3;
    sub_1DA2FC8E8(a1, (a2 - a1) / v15, v60);
    v21 = v60;
    v61 = v60 + v19 * v15;
    v67 = v61;
    v22 = v66;
    while (v21 < v61 && a2 < v62)
    {
      v24 = v65;
      v25 = *v64;
      (*v64)(v65, a2, v8);
      v25(v22, v21, v8);
      sub_1DA34BD60();
      v27 = v26;
      sub_1DA34BD60();
      v29 = v28;
      v30 = *v63;
      (*v63)(v22, v8);
      v30(v24, v8);
      if (v29 >= v27)
      {
        if (a1 < v21 || a1 >= v21 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v68 = v21 + v15;
        v21 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v69 = a1;
    }
  }

LABEL_59:
  sub_1DA339E60(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_1DA339E60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1DA34BFB0();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DA339F40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AF8, &qword_1DA34EF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1DA33A040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA33A0F0(const void *a1, void *a2)
{
  v24[3] = &unk_1F55E2B20;
  v24[4] = &off_1F55E2B48;
  OUTLINED_FUNCTION_117();
  v4 = swift_allocObject();
  v24[0] = v4;
  memcpy((v4 + 16), a1, 0x52uLL);
  sub_1DA33A954(a1, __dst);
  if (static DeviceExpertPreferences.shouldSendAnalytics.getter())
  {
    memcpy(__dst, (v4 + 16), 0x52uLL);
    v5 = sub_1DA33A9B0(__dst);
    if (qword_1EE109038 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA34C8E0();
    __swift_project_value_buffer(v6, qword_1EE109040);
    sub_1DA2EEF28(v24, v23);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CDB0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v11 = *v10;
      v12 = v10[1];

      __swift_destroy_boxed_opaque_existential_1(v23);
      v13 = sub_1DA300D78(v11, v12, &v22);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      sub_1DA306F34();
      v14 = sub_1DA34CAB0();
      v16 = sub_1DA300D78(v14, v15, &v22);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1DA2E0000, v7, v8, "Sending analytics event %s with payload %s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    v17 = __dst[0];
    v18 = __dst[1];
    v19 = a2[5];
    v20 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v19);
    (*(v20 + 8))(v17, v18, v5, v19, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DA33A394(const void *a1, void *a2)
{
  v25[3] = &type metadata for ContentViewedEvent;
  v25[4] = &off_1F55E0C90;
  v4 = swift_allocObject();
  v25[0] = v4;
  memcpy((v4 + 16), a1, 0x8AuLL);
  sub_1DA33AAE4(a1, __dst);
  if (static DeviceExpertPreferences.shouldSendAnalytics.getter())
  {
    memcpy(__dst, (v4 + 16), 0x8AuLL);
    v5 = sub_1DA33AB40(__dst);
    if (qword_1EE109038 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA34C8E0();
    __swift_project_value_buffer(v6, qword_1EE109040);
    sub_1DA2EEF28(v25, v24);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CDB0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315394;
      v11 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v12 = *v11;
      v13 = v11[1];

      __swift_destroy_boxed_opaque_existential_1(v24);
      v14 = sub_1DA300D78(v12, v13, &v23);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      sub_1DA306F34();
      v15 = sub_1DA34CAB0();
      v17 = sub_1DA300D78(v15, v16, &v23);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1DA2E0000, v7, v8, "Sending analytics event %s with payload %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74B3A0](v10, -1, -1);
      MEMORY[0x1DA74B3A0](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    v18 = __dst[0];
    v19 = __dst[1];
    v20 = a2[5];
    v21 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v20);
    (*(v21 + 8))(v18, v19, v5, v20, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t dispatch thunk of DeviceExpertTellMeGeneratedFlow.execute()()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v7 = (*(*v0 + 296) + **(*v0 + 296));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DA2E8A9C;

  return v7(v3);
}

uint64_t sub_1DA33A904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DA33A9B0(uint64_t a1)
{
  v1 = sub_1DA33FFC8();
  v2 = sub_1DA34CB30();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v2, 0x5F6E6F6973736573, 0xEA00000000006469, isUniquelyReferenced_nonNull_native);
  return v1;
}

unint64_t sub_1DA33AA2C()
{
  result = qword_1EE109020;
  if (!qword_1EE109020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6108, &unk_1DA352D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109020);
  }

  return result;
}

unint64_t sub_1DA33AA90()
{
  result = qword_1EE109540;
  if (!qword_1EE109540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109540);
  }

  return result;
}

uint64_t sub_1DA33AB40(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DA33AAE4(__src, v7);
  v2 = sub_1DA306964();
  memcpy(v7, __dst, 0x8AuLL);
  sub_1DA33A650(v7);
  v3 = sub_1DA34CB30();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v3, 0x5F6E6F6973736573, 0xEA00000000006469, isUniquelyReferenced_nonNull_native);
  return v2;
}

uint64_t sub_1DA33AC04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DA33AC64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DA33ACBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DA33AD04()
{
  OUTLINED_FUNCTION_59();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DA323DD0;

  return sub_1DA3116F0();
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v3 = *(v0 + 156);
  v4 = *(v0 + 928);
  *(v1 - 176) = *(v0 + 904);
  *(v1 - 168) = v4;
  v5 = *(v0 + 872);
  *(v1 - 184) = *(v0 + 848);
  v6 = v5 + v3;
  v7 = *(v6 + 16);
  *(v1 - 144) = *v6;
  *(v1 - 128) = v7;
  *(v1 - 112) = *(v6 + 32);
  *(v1 - 96) = *(v6 + 48);

  return sub_1DA2EFB04();
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  v3 = v0[80];
  *(v1 - 184) = v0[82];
  *(v1 - 176) = v3;
  v4 = v0[76];
  *(v1 - 168) = v0[77];
  *(v1 - 160) = v4;
  *(v1 - 152) = v0[73];
}

uint64_t OUTLINED_FUNCTION_10_11()
{
  v2 = v0[106];
  *(v1 - 176) = v0[115];
  *(v1 - 168) = v2;
  result = v0[85];
  *(v1 - 184) = v0[74];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_8@<X0>(char a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q1>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v18 + 16) = 0xD00000000000001BLL;
  *(v18 + 24) = (a2 - 32) | 0x8000000000000000;
  *(v18 + 32) = v17;
  *(v18 + 40) = v21;
  *(v18 + 48) = a17;
  *(v18 + 56) = a16;
  *(v18 + 64) = a15;
  *(v18 + 72) = a14;
  *(v18 + 80) = a11 & 1;
  *(v18 + 81) = a13;
  *(v18 + 88) = a5;
  *(v18 + 96) = v19;
  *(v18 + 120) = a3;
  *(v18 + 136) = *(v22 - 112);
  *(v18 + 152) = *(v22 - 96);
  *(v18 + 153) = a1 & 1;
  v24 = *(v20 + 248);

  return sub_1DA33A394((v18 + 16), v24);
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return MEMORY[0x1EEE39070](v1 - 144, &unk_1DA352C28, v0);
}

uint64_t OUTLINED_FUNCTION_22_6()
{
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return type metadata accessor for SnippetModelProvider();
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return sub_1DA34CC80();
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1)
{

  return sub_1DA34D160();
}

uint64_t OUTLINED_FUNCTION_58_1(void *a1, uint64_t a2)
{

  return sub_1DA32FC48((v3 + 160), v2, a1, a2, 1);
}

uint64_t OUTLINED_FUNCTION_65_1(uint64_t a1)
{

  return sub_1DA34CC80();
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1)
{

  return sub_1DA34CC80();
}

__n128 OUTLINED_FUNCTION_79_0@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 48) = *(v1 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return type metadata accessor for FlowContext();
}

uint64_t OUTLINED_FUNCTION_90_0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));

  return sub_1DA34C1E0();
}

void *OUTLINED_FUNCTION_93()
{

  return sub_1DA2E8B7C(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_1DA3070C4(v1, v0, v2, 3);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_1DA34CB30();
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1)
{
  v2 = sub_1DA2E5B48((v1 + 288), a1 + 16);

  return MEMORY[0x1EEE39BB8](v2);
}

id OUTLINED_FUNCTION_113(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_114()
{

  JUMPOUT(0x1DA74A6E0);
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1, uint64_t a2)
{

  return sub_1DA34CCB0();
}

uint64_t OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return FlowContext.init(sessionId:clusterId:rewriteSummary:)(a1, a2, v5, v6, a5);
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _OWORD *a23)
{
  *a23 = *(v23 + 176);

  return sub_1DA33A6A4(a23);
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _OWORD *a22)
{
  *a22 = *(v22 + 160);

  return sub_1DA33A6A4(a22);
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_130()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1)
{

  return sub_1DA33AC04(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_132()
{
}

uint64_t OUTLINED_FUNCTION_133(uint64_t a1)
{
  *(v1 + 1120) = a1;
}

uint64_t OUTLINED_FUNCTION_134()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_135(uint64_t a1)
{
  *(v1 - 160) = a1;

  return swift_allocObject();
}

void OUTLINED_FUNCTION_136()
{

  JUMPOUT(0x1DA74A6E0);
}

uint64_t sub_1DA33BA48(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x4C6465726564726FLL;
      break;
    case 2:
      result = 0x65726564726F6E75;
      break;
    case 3:
      result = 0x65676173736170;
      break;
    case 4:
      result = 0x726F4D6E7261656CLL;
      break;
    case 5:
      result = 7367028;
      break;
    case 6:
      result = 0x73656C62756F7274;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA33BB2C(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1DA33BB5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA33BB2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA33BB88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA33BB3C(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA33BC94()
{
  result = qword_1ECBA6110;
  if (!qword_1ECBA6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6110);
  }

  return result;
}

uint64_t sub_1DA33BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1DA34BFB0();
  v4[7] = v5;
  OUTLINED_FUNCTION_0_12(v5);
  v4[8] = v6;
  v4[9] = OUTLINED_FUNCTION_76();
  v7 = sub_1DA34C6E0();
  v4[10] = v7;
  OUTLINED_FUNCTION_0_12(v7);
  v4[11] = v8;
  v4[12] = OUTLINED_FUNCTION_76();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6118, &qword_1DA352EE0);
  v4[13] = OUTLINED_FUNCTION_76();
  v9 = sub_1DA34B940();
  v4[14] = v9;
  OUTLINED_FUNCTION_0_12(v9);
  v4[15] = v10;
  v4[16] = OUTLINED_FUNCTION_76();

  return MEMORY[0x1EEE6DFA0](sub_1DA33BEA0, 0, 0);
}